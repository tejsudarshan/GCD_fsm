`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:56:07 03/10/2022
// Design Name:   GCD_datapath
// Module Name:   C:/.Xilinx/GCD/test.v
// Project Name:  GCD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: GCD_datapath
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

reg[15:0]data_in;
reg clk, start;
wire done;
reg[15:0]A,B;

GCD_datapath DP(gt,lt,ldA,ldB,sel1,sel2,sel_in,data_in,clk);
controller CON(gt,lt,ldA,ldB,sel1,sel2,sel_in,eq,start,done);

initial
begin
 clk=1'b0;
 #3 start=1'b1;
 #1000 ;
 end

always #5 clk=~clk;
initial 
 begin
    #12 data_in =143;
	 #10 data_in = 78;
 end
	// initial 
	 //begin
	 //$monitor ($time, "%d %b",Aout,done);
	 //$dumpfile ("gcd.vcd");$dumpvars (0,test);
	 //end
      
endmodule

