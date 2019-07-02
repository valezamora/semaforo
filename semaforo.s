.data
varA: .word 
varB: .word 
varC: .word
varD: .word

# A - registro 1
# B - registro 2
# C - registro 3
# D - registro 4

.text 

.global main

.loop
    # A
    MOV r1, #1
    b wait
    MOV r1, #0

    # B
    MOV r2, #1
    b wait
    MOV r2, #0

    # C
    MOV r3, #1
    b wait
    MOV r3, #0

    # D
    MOV r4, #1
    b wait
    MOV r4, #0

# continuar el loop
    B loop

.wait   ldr     r2, =7000000
.timer
subs    r5, #1
bne     timer
str     r1, [r0, #GPSET0]
ldr     r6, =7000000