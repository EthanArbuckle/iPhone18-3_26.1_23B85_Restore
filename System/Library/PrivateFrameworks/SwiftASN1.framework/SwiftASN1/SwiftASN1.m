void sub_4C00F(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  LOBYTE(v54) = v54 + 77;
  *(a1 + 6750592) += v55;
  *(v54 + 77) += a2;
  *(v56 + 7537024) += BYTE1(v56);
  __asm { retn    180h }
}

char sub_4C094(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  LOBYTE(v55) = v55 + 77;
  *(a1 + 6750593) += v56;
  *(v55 + 77) += a2;
  *(v57 + 7537025) += BYTE1(v57);
  return v55;
}

void sub_4D639(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v4) = *a2;
  _RSI = a2 + 1;
  *(2 * v4) += v4;
  v7 = 67110889;
  BYTE1(v7) = a4 + 7;
  __outdword(7u, v7);
  MEMORY[0xFFFFFFFFD9B27E4C] -= 23;
  __asm { outsd }

  *(2 * v7) -= 23;
  *(2 * a4 + 0x1ACEC00) -= 23;
  LOBYTE(v7) = *_RSI++;
  *(v7 + 77) += _RSI;
  LOBYTE(v7) = *_RSI;
  *v5 += _RSI + 1;
  __asm { jmp     fword ptr [rcx+rax-1337FFFCh] }
}