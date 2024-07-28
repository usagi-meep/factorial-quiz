section .data
	x dd 7			; number to calculate factorial of

section .bss
	result resd 1		; uninitialized variable for answer

section .text
	global _start

_start:
	mov dword [result], 1	; initialize result with 1
	mov ecx, [x]		; initialize counter with x value
	mov eax, 1		; initialize eax with 1

return:
	mul ecx			; eax = eax * ecx
	mov [result], eax	; update value of result
	loop return		; auto decrement and jnz

	;Exit
	mov eax, 1
	xor ebx, ebx
	int 0x80
