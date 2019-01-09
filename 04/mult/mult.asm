// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

@2
M=0	// init RAM[2] for sum
@1
D=M
@i
M=D	// set i=RAM[1] for loop

(LOOP)
@i
D=M
@END
D;JEQ		//if i=0 end loop
@0
D=M	// get RAM[1]
@2
M=D+M	// and add to RAM[2]
@i
M=M-1	// i = i-1
@LOOP
0;JMP	// go back to loop start
(END)

@END
0;JMP