/**
 * @brief 7セグメント・ディスプレイ・デコーダ(16進版)
 */
module Seg7Hex(input logic [3:0] data,
	       output logic [6:0] segments,
	       output logic [7:0] AN);

   always_comb
     begin
	AN = 8'b11111110;
	case(data)
	  //               gfe_dcba
	  0: segments = 7'b100_0000;
	  1: segments = 7'b111_1001;
	  2: segments = 7'b010_0100;
	  3: segments = 7'b011_0000;
	  4: segments = 7'b001_1001;
	  5: segments = 7'b001_0010;
	  6: segments = 7'b000_0010;
	  7: segments = 7'b101_1000;
	  8: segments = 7'b000_0000;
	  9: segments = 7'b001_0000;
          10: segments = 7'b000_1000;
          11: segments = 7'b000_0011;
          12: segments = 7'b100_0110;
          13: segments = 7'b010_0001;
          14: segments = 7'b000_0110;
          15: segments = 7'b000_1110;
	  default: segments = 7'b111_1111;
	endcase // case (data)
     end // always_comb

endmodule // sevenseg
