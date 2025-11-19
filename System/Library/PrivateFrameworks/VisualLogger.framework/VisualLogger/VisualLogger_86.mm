void sub_2717D6C6C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    free(v3);
  }

  *(v1 + 8) = 0;
  _Unwind_Resume(exception_object);
}

uint64_t sub_2717D6C8C(uint64_t result, _DWORD *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2[1])
  {
    v2 = *a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *a2;
  if (v2)
  {
    v3 = 0;
  }

  *memptr = 2;
  *&memptr[4] = v3;
  v4 = 2 * (v3 != 0);
  v5 = HIDWORD(v3);
  if (HIDWORD(v3))
  {
    v6 = (v4 * *&memptr[4]);
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 & 0x1FFFFFFFFLL | ((v6 >> 1) << 33);
  v8 = __PAIR64__(*&memptr[4], 2);
  *memptr = 1;
  *&memptr[4] = v7;
  v9 = *memptr;
  *result = v8;
  *(result + 8) = HIDWORD(v3);
  *(result + 12) = v9;
  *(result + 20) = v6;
  *(result + 24) = v3;
  *(result + 32) = v7;
  *(result + 40) = 0;
  *(result + 52) = 0;
  if (HIDWORD(v8))
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = HIDWORD(v3);
  }

  v13 = 2 * v6;
  if ((v13 & (v13 - 1)) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13 - 1;
  }

  v15 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v16 = v15 | (v15 >> 4) | ((v15 | (v15 >> 4)) >> 8);
  v17 = v16 | (v16 >> 16) | ((v16 | (v16 >> 16)) >> 32);
  if (v17 + 1 > 8)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 8;
  }

  *(result + 56) = 2 * (v12 * v6);
  *(result + 64) = 0;
  *(result + 72) = v18;
  if (v12 * v6)
  {
    v19 = result;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v18, 2 * (v12 * v6), 0x63222AC6uLL);
    result = v19;
    if (v20)
    {
      sub_2718084E8(v20, *(v19 + 72), 2 * (v12 * v6));
    }

    *(v19 + 64) = *memptr;
  }

  if (v5)
  {
    v21 = v11;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v8;
  }

  *(result + 80) = v22;
  *(result + 88) = v12;
  *(result + 92) = (2 * v9) & 0xFFFFFFFEFFFFFFFELL;
  *(result + 100) = 2 * v6;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2717D6E58(uint64_t result, _DWORD *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a2[1])
  {
    v2 = *a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *a2;
  if (v2)
  {
    v3 = 0;
  }

  *memptr = 2;
  *&memptr[4] = v3;
  v4 = 2 * (v3 != 0);
  v5 = HIDWORD(v3);
  if (HIDWORD(v3))
  {
    v6 = (v4 * *&memptr[4]);
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 & 0x1FFFFFFFFLL | ((v6 >> 1) << 33);
  v8 = __PAIR64__(*&memptr[4], 2);
  *memptr = 1;
  *&memptr[4] = v7;
  v9 = *memptr;
  *result = v8;
  *(result + 8) = HIDWORD(v3);
  *(result + 12) = v9;
  *(result + 20) = v6;
  *(result + 24) = v3;
  *(result + 32) = v7;
  *(result + 40) = 0;
  *(result + 52) = 0;
  if (HIDWORD(v8))
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = HIDWORD(v3);
  }

  v13 = 4 * v6;
  v14 = v13 - 1;
  v2 = (v13 & (v13 - 1)) == 0;
  v15 = 3;
  if (v2)
  {
    v15 = v14;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  *(result + 56) = 4 * (v12 * v6);
  *(result + 64) = 0;
  *(result + 72) = v19;
  if (v12 * v6)
  {
    v20 = result;
    *memptr = 0;
    v21 = malloc_type_posix_memalign(memptr, v19, 4 * (v12 * v6), 0x63222AC6uLL);
    result = v20;
    if (v21)
    {
      sub_2718084E8(v21, *(v20 + 72), 4 * (v12 * v6));
    }

    *(v20 + 64) = *memptr;
  }

  if (v5)
  {
    v22 = v11;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v8;
  }

  *(result + 80) = v23;
  *(result + 88) = v12;
  *(result + 92) = (4 * v9) & 0xFFFFFFFCFFFFFFFCLL;
  *(result + 100) = 4 * v6;
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2717D7028(uint64_t result, _DWORD *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2[1])
  {
    v2 = *a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *a2;
  if (v2)
  {
    v3 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v3;
  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  v5 = HIDWORD(*&memptr[4]);
  if (HIDWORD(*&memptr[4]))
  {
    v6 = (v4 * *&memptr[4]);
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 | (v6 << 32);
  v8 = __PAIR64__(*&memptr[4], 3);
  *memptr = 1;
  *&memptr[4] = v7;
  v9 = *memptr;
  *result = v8;
  *(result + 8) = v5;
  *(result + 12) = v9;
  *(result + 20) = v6;
  *(result + 24) = v3;
  *(result + 32) = v7;
  *(result + 40) = 0;
  *(result + 52) = 0;
  if (HIDWORD(v8))
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v5;
  }

  v13 = 2 * v6;
  if ((v13 & (v13 - 1)) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13 - 1;
  }

  v15 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v16 = v15 | (v15 >> 4) | ((v15 | (v15 >> 4)) >> 8);
  v17 = v16 | (v16 >> 16) | ((v16 | (v16 >> 16)) >> 32);
  if (v17 + 1 > 8)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 8;
  }

  *(result + 56) = 2 * (v12 * v6);
  *(result + 64) = 0;
  *(result + 72) = v18;
  if (v12 * v6)
  {
    v19 = result;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v18, 2 * (v12 * v6), 0x63222AC6uLL);
    result = v19;
    if (v20)
    {
      sub_2718084E8(v20, *(v19 + 72), 2 * (v12 * v6));
    }

    *(v19 + 64) = *memptr;
  }

  if (v5)
  {
    v21 = v11;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v8;
  }

  *(result + 80) = v22;
  *(result + 88) = v12;
  *(result + 92) = (2 * v9) & 0xFFFFFFFEFFFFFFFELL;
  *(result + 100) = 2 * v6;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2717D71EC(uint64_t result, _DWORD *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2[1])
  {
    v2 = *a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *a2;
  if (v2)
  {
    v3 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v3;
  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  v5 = HIDWORD(*&memptr[4]);
  if (HIDWORD(*&memptr[4]))
  {
    v6 = (v4 * *&memptr[4]);
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 | (v6 << 32);
  v8 = __PAIR64__(*&memptr[4], 3);
  *memptr = 1;
  *&memptr[4] = v7;
  v9 = *memptr;
  *result = __PAIR64__(v3, 3);
  *(result + 8) = v5;
  *(result + 12) = v9;
  *(result + 20) = v6;
  *(result + 24) = v3;
  *(result + 32) = v7;
  *(result + 40) = 0;
  *(result + 52) = 0;
  if (__PAIR64__(v3, 3) >> 32)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v5;
  }

  v13 = 4 * v6;
  if ((v13 & (v13 - 1)) != 0)
  {
    v14 = 3;
  }

  else
  {
    v14 = v13 - 1;
  }

  v15 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v16 = v15 | (v15 >> 4) | ((v15 | (v15 >> 4)) >> 8);
  v17 = v16 | (v16 >> 16) | ((v16 | (v16 >> 16)) >> 32);
  if (v17 + 1 > 8)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 8;
  }

  *(result + 56) = 4 * (v12 * v6);
  *(result + 64) = 0;
  *(result + 72) = v18;
  if (v12 * v6)
  {
    v19 = result;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v18, 4 * (v12 * v6), 0x63222AC6uLL);
    result = v19;
    if (v20)
    {
      sub_2718084E8(v20, *(v19 + 72), 4 * (v12 * v6));
    }

    *(v19 + 64) = *memptr;
  }

  if (v5)
  {
    v21 = v11;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v8;
  }

  *(result + 80) = v22;
  *(result + 88) = v12;
  *(result + 92) = (4 * v9) & 0xFFFFFFFCFFFFFFFCLL;
  *(result + 100) = 4 * v6;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2717D73B0(uint64_t result, _DWORD *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2[1])
  {
    v2 = *a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *a2;
  if (v2)
  {
    v3 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v3;
  v4 = 4 * (v3 != 0);
  v5 = HIDWORD(v3);
  if (HIDWORD(v3))
  {
    v6 = (v4 * *&memptr[4]);
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
  v8 = __PAIR64__(*&memptr[4], 4);
  *memptr = 1;
  *&memptr[4] = v7;
  v9 = *memptr;
  *result = v8;
  *(result + 8) = HIDWORD(v3);
  *(result + 12) = v9;
  *(result + 20) = v6;
  *(result + 24) = v3;
  *(result + 32) = v7;
  *(result + 40) = 0;
  *(result + 52) = 0;
  if (HIDWORD(v8))
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = HIDWORD(v3);
  }

  v13 = 2 * v6;
  if ((v13 & (v13 - 1)) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13 - 1;
  }

  v15 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v16 = v15 | (v15 >> 4) | ((v15 | (v15 >> 4)) >> 8);
  v17 = v16 | (v16 >> 16) | ((v16 | (v16 >> 16)) >> 32);
  if (v17 + 1 > 8)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 8;
  }

  *(result + 56) = 2 * (v12 * v6);
  *(result + 64) = 0;
  *(result + 72) = v18;
  if (v12 * v6)
  {
    v19 = result;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v18, 2 * (v12 * v6), 0x63222AC6uLL);
    result = v19;
    if (v20)
    {
      sub_2718084E8(v20, *(v19 + 72), 2 * (v12 * v6));
    }

    *(v19 + 64) = *memptr;
  }

  if (v5)
  {
    v21 = v11;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v8;
  }

  *(result + 80) = v22;
  *(result + 88) = v12;
  *(result + 92) = (2 * v9) & 0xFFFFFFFEFFFFFFFELL;
  *(result + 100) = 2 * v6;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2717D757C(uint64_t result, _DWORD *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a2[1])
  {
    v2 = *a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *a2;
  if (v2)
  {
    v3 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v3;
  v4 = 4 * (v3 != 0);
  v5 = HIDWORD(v3);
  if (HIDWORD(v3))
  {
    v6 = (v4 * *&memptr[4]);
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
  v8 = __PAIR64__(*&memptr[4], 4);
  *memptr = 1;
  *&memptr[4] = v7;
  v9 = *memptr;
  *result = v8;
  *(result + 8) = HIDWORD(v3);
  *(result + 12) = v9;
  *(result + 20) = v6;
  *(result + 24) = v3;
  *(result + 32) = v7;
  *(result + 40) = 0;
  *(result + 52) = 0;
  if (HIDWORD(v8))
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = HIDWORD(v3);
  }

  v13 = 4 * v6;
  v14 = v13 - 1;
  v2 = (v13 & (v13 - 1)) == 0;
  v15 = 3;
  if (v2)
  {
    v15 = v14;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  *(result + 56) = 4 * (v12 * v6);
  *(result + 64) = 0;
  *(result + 72) = v19;
  if (v12 * v6)
  {
    v20 = result;
    *memptr = 0;
    v21 = malloc_type_posix_memalign(memptr, v19, 4 * (v12 * v6), 0x63222AC6uLL);
    result = v20;
    if (v21)
    {
      sub_2718084E8(v21, *(v20 + 72), 4 * (v12 * v6));
    }

    *(v20 + 64) = *memptr;
  }

  if (v5)
  {
    v22 = v11;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v8;
  }

  *(result + 80) = v23;
  *(result + 88) = v12;
  *(result + 92) = (4 * v9) & 0xFFFFFFFCFFFFFFFCLL;
  *(result + 100) = 4 * v6;
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2717E9568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  v56 = *(v54 - 144);
  if (v56)
  {
    *(v54 - 136) = v56;
    operator delete(v56);
  }

  sub_271312A04(&a23);
  _Unwind_Resume(a1);
}

double sub_2717EA580(__int16 *a1, uint64_t a2)
{
  v7 = 0;
  sub_2717EA664(&v4, v6, a1);
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v9 = &v8;
  (off_2881349A0[v7])(&v4, &v9, v6);
  if (v7 != -1)
  {
    (off_288134970[v7])(&v9, v6);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

void sub_2717EA63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EA650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EA664(uint64_t a1, uint64_t a2, __int16 *a3)
{
  _H0 = *a3;
  __asm { FCVT            S0, H0; __val }

  std::to_string(&v16, _S0);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v16;
  }

  else
  {
    v10 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  v12 = &v10[-1].__r_.__value_.__r.__words[2] + 7;
  while (size)
  {
    v13 = v12[size--];
    if (v13 != 48)
    {
      if ((*(&v16.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_11;
      }

LABEL_14:
      if (size == v16.__r_.__value_.__l.__size_ - 1)
      {
        goto LABEL_15;
      }

LABEL_17:
      operator new();
    }
  }

  size = -1;
  if ((*(&v16.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (size != HIBYTE(v16.__r_.__value_.__r.__words[2]) - 1)
  {
    goto LABEL_17;
  }

LABEL_15:
  v17[0] = a2;
  v17[1] = &v16;
  v17[2] = a2;
  v17[3] = &v16;
  v17[4] = &v16;
  v14 = *(a2 + 24);
  if (v14 == -1)
  {
    sub_2711308D4();
  }

  __p = v17;
  (off_2881349B8[v14])(&__p, a2);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_2717EA95C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717EA9D4(uint64_t a1, __int128 *a2)
{
  sub_2717EAABC(**a1, a2, **(*a1 + 8));
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(v4 + 32);
  v6 = *v4;
  v7 = *(v4 + 8);
  v8 = **v4 + 1;
  **v4 = v8;
  if (v8 == *v7)
  {
    v9 = *(v6 + 1) + 1;
    *v6 = 0;
    *(v6 + 1) = v9;
    if (v9 == v7[1])
    {
      return;
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = strlen(*(**(v4 + 16) + 8 * v10));
  sub_271120E64(v3, *(**(v4 + 16) + 8 * v10), v11);
  v12 = *v4;
  v13 = **(v4 + 24);

  sub_2713556A8(v5, v3, v12, v10, v13);
}

void sub_2717EAABC(void *a1, __int128 *a2, unsigned int a3)
{
  v9 = -1;
  if (*(a2 + 23) < 0)
  {
    v3 = a1;
    v4 = a3;
    sub_271127178(&v7, *a2, *(a2 + 1));
    a1 = v3;
    a3 = v4;
  }

  else
  {
    v7 = *a2;
    v8 = *(a2 + 2);
  }

  *__p = v7;
  v6 = v8;
  sub_2717F9DEC(a1, __p, a3);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2717EAB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EAB74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2717EAB90(float *a1, uint64_t a2)
{
  v7 = 0;
  sub_2711CDE78(&v4, v6, a1);
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v9 = &v8;
  (off_2881349A0[v7])(&v4, &v9, v6);
  if (v7 != -1)
  {
    (off_288134970[v7])(&v9, v6);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

void sub_2717EAC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EAC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_2717EAC74(_BYTE *result, unsigned int a2, unint64_t **a3, uint64_t a4)
{
  v5 = a3;
  if (result)
  {
    v6 = result;
    v7 = 0;
    v9 = *a3;
    v32 = (a3 + 1);
    do
    {
      v13 = *(a4 + 23);
      if (v13 >= 0)
      {
        v14 = a4;
      }

      else
      {
        v14 = *a4;
      }

      if (v13 >= 0)
      {
        v15 = *(a4 + 23);
      }

      else
      {
        v15 = *(a4 + 8);
      }

      if (v15 >= 1)
      {
        v16 = &v14[v15];
        v17 = v15;
        result = v14;
        do
        {
          result = memchr(result, 46, v17);
          if (!result)
          {
            break;
          }

          if (*result == 46)
          {
            if (result == v16)
            {
              break;
            }

            v18 = result - v14;
            v10 = v5;
            if (result - v14 != -1)
            {
              v19 = *v9;
              if (*v9 <= v18)
              {
                v19 = (result - v14);
              }

              *v9 = v19;
              v20 = *(a4 + 23);
              if ((v20 & 0x80u) != 0)
              {
                v20 = *(a4 + 8);
              }

              v15 = v20 + ~v18;
              v10 = v32;
            }

            goto LABEL_4;
          }

          ++result;
          v17 = v16 - result;
        }

        while (v16 - result >= 1);
      }

      v10 = v5;
LABEL_4:
      v11 = *v10;
      v12 = *v11;
      if (*v11 <= v15)
      {
        v12 = v15;
      }

      *v11 = v12;
      a4 += 24 * a2;
      ++v7;
    }

    while (v7 != v6);
  }

  v21 = *(a4 + 23);
  if (v21 >= 0)
  {
    v22 = a4;
  }

  else
  {
    v22 = *a4;
  }

  if (v21 >= 0)
  {
    v23 = *(a4 + 23);
  }

  else
  {
    v23 = *(a4 + 8);
  }

  if (v23 >= 1)
  {
    v24 = &v22[v23];
    v25 = v23;
    result = v22;
    do
    {
      result = memchr(result, 46, v25);
      if (!result)
      {
        break;
      }

      if (*result == 46)
      {
        if (result != v24)
        {
          v26 = result - v22;
          if (result - v22 != -1)
          {
            v28 = *v5++;
            v27 = v28;
            v29 = *v28;
            if (*v28 <= v26)
            {
              v29 = (result - v22);
            }

            *v27 = v29;
            v30 = *(a4 + 23);
            if ((v30 & 0x80u) != 0)
            {
              v30 = *(a4 + 8);
            }

            v23 = v30 + ~v26;
          }
        }

        break;
      }

      ++result;
      v25 = v24 - result;
    }

    while (v24 - result >= 1);
  }

  v31 = **v5;
  if (v31 <= v23)
  {
    v31 = v23;
  }

  **v5 = v31;
  return result;
}

void sub_2717EAE60(uint64_t a1, uint64_t a2)
{
  sub_2717FA20C(**a1, a2, **(*a1 + 8), *(*(*a1 + 8) + 8));
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(v4 + 32);
  v6 = *v4;
  v7 = *(v4 + 8);
  v8 = **v4 + 1;
  **v4 = v8;
  if (v8 == *v7)
  {
    v9 = *(v6 + 1) + 1;
    *v6 = 0;
    *(v6 + 1) = v9;
    if (v9 == v7[1])
    {
      return;
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = strlen(*(**(v4 + 16) + 8 * v10));
  sub_271120E64(v3, *(**(v4 + 16) + 8 * v10), v11);
  v12 = *v4;
  v13 = **(v4 + 24);

  sub_2713556A8(v5, v3, v12, v10, v13);
}

void sub_2717EAF4C(uint64_t a1, unsigned __int8 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_2717F9FFC(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_271120E64(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_2715F3874(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_2717EB078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717EB0A8(uint64_t a1, unsigned __int16 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_2717F9FFC(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_271120E64(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_2715F3874(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_2717EB1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_2717EB204(__int16 **a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v13 = 0;
  sub_2717EA664(&v10, v12, v4);
  if (v13 == -1)
  {
    sub_2711308D4();
  }

  v15 = &v14;
  (off_2881349A0[v13])(&v10, &v15, v12);
  if (v13 != -1)
  {
    (off_288134970[v13])(&v15, v12);
  }

  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  v6 = v10;
  *(v5 + 16) = v11;
  *v5 = v6;
  v7 = *a1;
  v8 = *a2;
  v13 = 0;
  sub_2717EA664(&v10, v12, v7 + 1);
  if (v13 == -1)
  {
    sub_2711308D4();
  }

  v15 = &v14;
  (off_2881349A0[v13])(&v10, &v15, v12);
  if (v13 != -1)
  {
    (off_288134970[v13])(&v15, v12);
  }

  if (*(v8 + 47) < 0)
  {
    operator delete(*(v8 + 24));
  }

  result = *&v10;
  *(v8 + 24) = v10;
  *(v8 + 40) = v11;
  return result;
}

void sub_2717EB364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EB378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EB38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EB3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EB3B4(void ****a1, __int128 **a2)
{
  v4 = *a1;
  sub_2717EAABC(***a1, *a2, *(**a1)[1]);
  v6 = v4[1];
  v5 = v4[2];
  v7 = v6[4];
  v8 = *v6;
  v9 = v6[1];
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == *(v9 + 1))
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == *(v9 + 2))
      {
        goto LABEL_8;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(*v6[2] + 8 * v13));
  sub_271120E64(v5, *(*v6[2] + 8 * v13), v14);
  sub_2715F3874(v7, v5, *v6, v13, *v6[3]);
LABEL_8:
  v15 = *a1;
  sub_2717EAABC(**v15, (*a2 + 24), *(*v15)[1]);
  v17 = v15[1];
  v16 = v15[2];
  v18 = v17[4];
  v19 = *v17;
  v20 = v17[1];
  v21 = **v17 + 1;
  **v17 = v21;
  if (v21 == *v20)
  {
    v22 = *(v19 + 1) + 1;
    *v19 = 0;
    *(v19 + 1) = v22;
    if (v22 == *(v20 + 1))
    {
      v23 = *(v19 + 2) + 1;
      *(v19 + 1) = 0;
      *(v19 + 2) = v23;
      if (v23 == *(v20 + 2))
      {
        return;
      }

      v24 = 2;
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = strlen(*(*v17[2] + 8 * v24));
  sub_271120E64(v16, *(*v17[2] + 8 * v24), v25);
  v26 = *v17;
  v27 = *v17[3];

  sub_2715F3874(v18, v16, v26, v24, v27);
}

double sub_2717EB598(float **a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v13 = 0;
  sub_2711CDE78(&v10, v12, v4);
  if (v13 == -1)
  {
    sub_2711308D4();
  }

  v15 = &v14;
  (off_2881349A0[v13])(&v10, &v15, v12);
  if (v13 != -1)
  {
    (off_288134970[v13])(&v15, v12);
  }

  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  v6 = v10;
  *(v5 + 16) = v11;
  *v5 = v6;
  v7 = *a1;
  v8 = *a2;
  v13 = 0;
  sub_2711CDE78(&v10, v12, v7 + 1);
  if (v13 == -1)
  {
    sub_2711308D4();
  }

  v15 = &v14;
  (off_2881349A0[v13])(&v10, &v15, v12);
  if (v13 != -1)
  {
    (off_288134970[v13])(&v15, v12);
  }

  if (*(v8 + 47) < 0)
  {
    operator delete(*(v8 + 24));
  }

  result = *&v10;
  *(v8 + 24) = v10;
  *(v8 + 40) = v11;
  return result;
}

void sub_2717EB6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EB70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EB720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EB734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_2717EB748(_BYTE *result, uint64_t a2)
{
  v3 = result;
  v4 = (result + 8);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  if (v7 >= 1)
  {
    v8 = &v6[v7];
    v9 = v7;
    result = v6;
    do
    {
      result = memchr(result, 46, v9);
      if (!result)
      {
        break;
      }

      if (*result == 46)
      {
        if (result == v8)
        {
          break;
        }

        v10 = result - v6;
        v11 = v3;
        if (result - v6 != -1)
        {
          v12 = **v3;
          if (v12 <= v10)
          {
            v12 = (result - v6);
          }

          **v3 = v12;
          v13 = *(a2 + 23);
          if ((v13 & 0x80u) != 0)
          {
            v13 = *(a2 + 8);
          }

          v7 = v13 + ~v10;
          v11 = v4;
        }

        goto LABEL_21;
      }

      ++result;
      v9 = v8 - result;
    }

    while (v8 - result >= 1);
  }

  v11 = v3;
LABEL_21:
  v14 = *v11;
  v15 = *v14;
  if (*v14 <= v7)
  {
    v15 = v7;
  }

  *v14 = v15;
  v16 = *(a2 + 47);
  if (v16 >= 0)
  {
    v17 = (a2 + 24);
  }

  else
  {
    v17 = *(a2 + 24);
  }

  v18 = *(a2 + 32);
  if (v16 >= 0)
  {
    v19 = *(a2 + 47);
  }

  else
  {
    v19 = *(a2 + 32);
  }

  if (v19 >= 1)
  {
    v20 = &v17[v19];
    v21 = v19;
    result = v17;
    do
    {
      result = memchr(result, 46, v21);
      if (!result)
      {
        break;
      }

      if (*result == 46)
      {
        if (result == v20)
        {
          break;
        }

        v22 = result - v17;
        if (result - v17 == -1)
        {
          break;
        }

        v23 = **v3;
        if (v23 <= v22)
        {
          v23 = (result - v17);
        }

        **v3 = v23;
        v24 = *(a2 + 47);
        if ((v24 & 0x80u) != 0)
        {
          v24 = *(a2 + 32);
        }

        v19 = v24 + ~v22;
        goto LABEL_43;
      }

      ++result;
      v21 = v20 - result;
    }

    while (v20 - result >= 1);
  }

  v4 = v3;
LABEL_43:
  v25 = **v4;
  if (v25 <= v19)
  {
    v25 = v19;
  }

  **v4 = v25;
  return result;
}

void sub_2717EB900(uint64_t a1, uint64_t a2)
{
  sub_2717FA20C(**a1, a2, **(*a1 + 8), *(*(*a1 + 8) + 8));
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(v4 + 32);
  v6 = *v4;
  v7 = *(v4 + 8);
  v8 = **v4 + 1;
  **v4 = v8;
  if (v8 == *v7)
  {
    v9 = *(v6 + 1) + 1;
    *v6 = 0;
    *(v6 + 1) = v9;
    if (v9 == v7[1])
    {
      v10 = *(v6 + 2) + 1;
      *(v6 + 1) = 0;
      *(v6 + 2) = v10;
      if (v10 == v7[2])
      {
        return;
      }

      v11 = 2;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = strlen(*(**(v4 + 16) + 8 * v11));
  sub_271120E64(v3, *(**(v4 + 16) + 8 * v11), v12);
  v13 = *v4;
  v14 = **(v4 + 24);

  sub_2715F3874(v5, v3, v13, v11, v14);
}

void sub_2717EBA0C(uint64_t a1, unsigned __int8 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_2717F9FFC(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_271120E64(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_2715F3874(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_2717EBB38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717EBB68(uint64_t a1, unsigned __int16 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_2717F9FFC(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_271120E64(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_2715F3874(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_2717EBC94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_2717EBCC4(__int16 **a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v15 = 0;
  sub_2717EA664(&v12, v14, v4);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  v6 = v12;
  *(v5 + 16) = v13;
  *v5 = v6;
  v7 = *a1;
  v8 = *a2;
  v15 = 0;
  sub_2717EA664(&v12, v14, v7 + 1);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v8 + 47) < 0)
  {
    operator delete(*(v8 + 24));
  }

  *(v8 + 24) = v12;
  *(v8 + 40) = v13;
  v9 = *a1;
  v10 = *a2;
  v15 = 0;
  sub_2717EA664(&v12, v14, v9 + 2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  result = *&v12;
  *(v10 + 48) = v12;
  *(v10 + 64) = v13;
  return result;
}

void sub_2717EBEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EBEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EBED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EBEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EBF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EBF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2717EBF28(uint64_t result, uint64_t *a2)
{
  v2 = *(a2 + 3);
  v3 = *(a2 + 4);
  if (*(a2 + 2))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || v3 == 0)
  {
    return result;
  }

  v6 = v2 - 1;
  v7 = *a2;
  v8 = *result;
  v9 = **result;
  v10 = 3 * *(a2 + 6);
  v11 = v3 - 1;
  if (v11)
  {
    v12 = *(a2 + 7);
    if (v6)
    {
      v13 = 0;
      v14 = (v7 + 47);
      result = 24 * *(a2 + 6);
      do
      {
        v15 = v14;
        v16 = v6;
        do
        {
          v17 = *(v15 - 24);
          if ((v17 & 0x80u) != 0)
          {
            v17 = *(v15 - 39);
          }

          if (v9 <= v17)
          {
            v9 = v17;
          }

          *v8 = v9;
          v18 = *v15;
          if ((v18 & 0x80u) != 0)
          {
            v18 = *(v15 - 15);
          }

          if (v9 <= v18)
          {
            v9 = v18;
          }

          *v8 = v9;
          v19 = v15[24];
          if ((v19 & 0x80u) != 0)
          {
            v19 = *(v15 + 9);
          }

          if (v9 <= v19)
          {
            v9 = v19;
          }

          *v8 = v9;
          v15 += result;
          --v16;
        }

        while (v16);
        v20 = *(v15 - 24);
        if ((v20 & 0x80u) != 0)
        {
          v20 = *(v15 - 39);
        }

        if (v9 <= v20)
        {
          v9 = v20;
        }

        *v8 = v9;
        v21 = *v15;
        if ((v21 & 0x80u) != 0)
        {
          v21 = *(v15 - 15);
        }

        if (v9 <= v21)
        {
          v9 = v21;
        }

        *v8 = v9;
        v22 = v15[24];
        v23 = *(v15 + 9);
        if ((v22 & 0x80u) == 0)
        {
          v23 = v22;
        }

        if (v9 <= v23)
        {
          v9 = v23;
        }

        *v8 = v9;
        v7 += 24 * v12;
        ++v13;
        v14 += 24 * v12;
      }

      while (v13 != v11);
      goto LABEL_54;
    }

    v24 = 24 * v12;
    do
    {
      v25 = *(v7 + 23);
      if ((v25 & 0x80u) != 0)
      {
        v25 = *(v7 + 8);
      }

      if (v9 <= v25)
      {
        v9 = v25;
      }

      *v8 = v9;
      v26 = *(v7 + 47);
      if ((v26 & 0x80u) != 0)
      {
        v26 = *(v7 + 32);
      }

      if (v9 <= v26)
      {
        v9 = v26;
      }

      *v8 = v9;
      v27 = *(v7 + 71);
      if ((v27 & 0x80u) != 0)
      {
        v27 = *(v7 + 56);
      }

      if (v9 <= v27)
      {
        v9 = v27;
      }

      *v8 = v9;
      v7 += v24;
      --v11;
    }

    while (v11);
  }

  if (v6)
  {
LABEL_54:
    v28 = 8 * v10;
    do
    {
      v29 = *(v7 + 23);
      if ((v29 & 0x80u) != 0)
      {
        v29 = *(v7 + 8);
      }

      if (v9 <= v29)
      {
        v9 = v29;
      }

      *v8 = v9;
      v30 = *(v7 + 47);
      if ((v30 & 0x80u) != 0)
      {
        v30 = *(v7 + 32);
      }

      if (v9 <= v30)
      {
        v9 = v30;
      }

      *v8 = v9;
      v31 = *(v7 + 71);
      if ((v31 & 0x80u) != 0)
      {
        v31 = *(v7 + 56);
      }

      if (v9 <= v31)
      {
        v9 = v31;
      }

      *v8 = v9;
      v7 += v28;
      --v6;
    }

    while (v6);
  }

  v32 = *(v7 + 23);
  if ((v32 & 0x80u) != 0)
  {
    v32 = *(v7 + 8);
  }

  if (v9 > v32)
  {
    v32 = v9;
  }

  *v8 = v32;
  v33 = *(v7 + 47);
  if ((v33 & 0x80u) != 0)
  {
    v33 = *(v7 + 32);
  }

  if (v32 <= v33)
  {
    v32 = v33;
  }

  *v8 = v32;
  v34 = *(v7 + 71);
  v35 = *(v7 + 56);
  if ((v34 & 0x80u) == 0)
  {
    v35 = v34;
  }

  if (v32 > v35)
  {
    v35 = v32;
  }

  *v8 = v35;
  return result;
}

void sub_2717EC1B8(void ****a1, __int128 **a2)
{
  v4 = *a1;
  sub_2717EAABC(***a1, *a2, *(**a1)[1]);
  v6 = v4[1];
  v5 = v4[2];
  v7 = v6[4];
  v8 = *v6;
  v9 = v6[1];
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == *(v9 + 1))
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == *(v9 + 2))
      {
        goto LABEL_8;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(*v6[2] + 8 * v13));
  sub_271120E64(v5, *(*v6[2] + 8 * v13), v14);
  sub_2715F3874(v7, v5, *v6, v13, *v6[3]);
LABEL_8:
  v15 = *a1;
  sub_2717EAABC(***a1, (*a2 + 24), *(**a1)[1]);
  v17 = v15[1];
  v16 = v15[2];
  v18 = v17[4];
  v19 = *v17;
  v20 = v17[1];
  v21 = **v17 + 1;
  **v17 = v21;
  if (v21 == *v20)
  {
    v22 = *(v19 + 1) + 1;
    *v19 = 0;
    *(v19 + 1) = v22;
    if (v22 == *(v20 + 1))
    {
      v23 = *(v19 + 2) + 1;
      *(v19 + 1) = 0;
      *(v19 + 2) = v23;
      if (v23 == *(v20 + 2))
      {
        goto LABEL_15;
      }

      v24 = 2;
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = strlen(*(*v17[2] + 8 * v24));
  sub_271120E64(v16, *(*v17[2] + 8 * v24), v25);
  sub_2715F3874(v18, v16, *v17, v24, *v17[3]);
LABEL_15:
  v26 = *a1;
  sub_2717EAABC(**v26, *a2 + 3, *(*v26)[1]);
  v28 = v26[1];
  v27 = v26[2];
  v29 = v28[4];
  v30 = *v28;
  v31 = v28[1];
  v32 = **v28 + 1;
  **v28 = v32;
  if (v32 == *v31)
  {
    v33 = *(v30 + 1) + 1;
    *v30 = 0;
    *(v30 + 1) = v33;
    if (v33 == *(v31 + 1))
    {
      v34 = *(v30 + 2) + 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = v34;
      if (v34 == *(v31 + 2))
      {
        return;
      }

      v35 = 2;
    }

    else
    {
      v35 = 1;
    }
  }

  else
  {
    v35 = 0;
  }

  v36 = strlen(*(*v28[2] + 8 * v35));
  sub_271120E64(v27, *(*v28[2] + 8 * v35), v36);
  v37 = *v28;
  v38 = *v28[3];

  sub_2715F3874(v29, v27, v37, v35, v38);
}

uint64_t sub_2717EC460(uint64_t *a1, uint64_t a2)
{
  v23 = 0;
  v24 = 0;
  v22[0] = &v24;
  v22[1] = &v23;
  v3 = *(a2 + 12);
  v4 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || v4 == 0)
  {
    v7 = 0;
    v8 = 1;
    goto LABEL_22;
  }

  v9 = v3 - 1;
  v10 = *a2;
  v11 = 3 * *(a2 + 24);
  v12 = v4 - 1;
  if (v4 != 1)
  {
    v13 = *(a2 + 28);
    if (v3 != 1)
    {
      v14 = 0;
      v15 = 24 * v13;
      do
      {
        v16 = v10;
        v17 = v9;
        do
        {
          sub_271355428(v22, v16);
          v16 += 8 * v11;
          --v17;
        }

        while (v17);
        sub_271355428(v22, v16);
        v10 += v15;
        ++v14;
      }

      while (v14 != v12);
      goto LABEL_20;
    }

    v18 = 24 * v13;
    do
    {
      sub_271355428(v22, v10);
      v10 += v18;
      --v12;
    }

    while (v12);
  }

  for (; v9; --v9)
  {
LABEL_20:
    sub_271355428(v22, v10);
    v10 += 8 * v11;
  }

  sub_271355428(v22, v10);
  v7 = v24;
  v8 = v23 + 1;
LABEL_22:
  v19 = v8 + v7;
  v20 = *a1;
  if (*a1 >= v19)
  {
    v20 = v19;
  }

  if (v19)
  {
    result = v20;
  }

  else
  {
    result = 1;
  }

  a1[2];
  return result;
}

double sub_2717EC5CC(float **a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v15 = 0;
  sub_2711CDE78(&v12, v14, v4);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  v6 = v12;
  *(v5 + 16) = v13;
  *v5 = v6;
  v7 = *a1;
  v8 = *a2;
  v15 = 0;
  sub_2711CDE78(&v12, v14, v7 + 1);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v8 + 47) < 0)
  {
    operator delete(*(v8 + 24));
  }

  *(v8 + 24) = v12;
  *(v8 + 40) = v13;
  v9 = *a1;
  v10 = *a2;
  v15 = 0;
  sub_2711CDE78(&v12, v14, v9 + 2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  result = *&v12;
  *(v10 + 48) = v12;
  *(v10 + 64) = v13;
  return result;
}

void sub_2717EC7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EC7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EC7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EC7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EC808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EC81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2717EC830(uint64_t result, uint64_t *a2, void **a3, _BYTE *a4)
{
  *a2 = a4;
  if (*(result + 12))
  {
    v4 = 0;
    do
    {
      *a2 = a4;
      v5 = *a3;
      v6 = **a3;
      v7 = *v6;
      if (v7 <= *a4)
      {
        LOBYTE(v7) = *a4;
      }

      *v6 = v7;
      v8 = v5[1];
      v9 = *a4;
      if (v9 >= *v8)
      {
        LOBYTE(v9) = *v8;
      }

      *v8 = v9;
      v10 = *a3;
      v11 = *a2;
      v12 = **a3;
      v13 = *v12;
      if (v13 <= *(*a2 + 1))
      {
        LOBYTE(v13) = *(*a2 + 1);
      }

      *v12 = v13;
      v14 = v10[1];
      v15 = *(v11 + 1);
      if (v15 >= *v14)
      {
        LOBYTE(v15) = *v14;
      }

      *v14 = v15;
      v16 = *a3;
      v17 = *a2;
      v18 = **a3;
      v19 = *v18;
      if (v19 <= *(*a2 + 2))
      {
        LOBYTE(v19) = *(*a2 + 2);
      }

      *v18 = v19;
      v20 = v16[1];
      v21 = *(v17 + 2);
      if (v21 >= *v20)
      {
        LOBYTE(v21) = *v20;
      }

      *v20 = v21;
      v22 = *a3;
      v23 = *a2;
      v24 = **a3;
      v25 = *v24;
      if (v25 <= *(*a2 + 3))
      {
        LOBYTE(v25) = *(*a2 + 3);
      }

      *v24 = v25;
      v26 = v22[1];
      v27 = *(v23 + 3);
      if (v27 >= *v26)
      {
        LOBYTE(v27) = *v26;
      }

      *v26 = v27;
      a4 += *(result + 16);
      ++v4;
    }

    while (v4 < *(result + 12));
  }

  *a2 = a4;
  v28 = *a3;
  v29 = **a3;
  v30 = *v29;
  if (v30 <= *a4)
  {
    LOBYTE(v30) = *a4;
  }

  *v29 = v30;
  v31 = v28[1];
  v32 = *a4;
  if (v32 >= *v31)
  {
    LOBYTE(v32) = *v31;
  }

  *v31 = v32;
  v33 = *a3;
  v34 = *a2;
  v35 = **a3;
  v36 = *v35;
  if (v36 <= *(*a2 + 1))
  {
    LOBYTE(v36) = *(*a2 + 1);
  }

  *v35 = v36;
  v37 = v33[1];
  v38 = *(v34 + 1);
  if (v38 >= *v37)
  {
    LOBYTE(v38) = *v37;
  }

  *v37 = v38;
  v39 = *a3;
  v40 = *a2;
  v41 = **a3;
  v42 = *v41;
  if (v42 <= *(*a2 + 2))
  {
    LOBYTE(v42) = *(*a2 + 2);
  }

  *v41 = v42;
  v43 = v39[1];
  v44 = *(v40 + 2);
  if (v44 >= *v43)
  {
    LOBYTE(v44) = *v43;
  }

  *v43 = v44;
  v45 = *a3;
  v46 = *a2;
  v47 = **a3;
  v48 = *v47;
  if (v48 <= *(*a2 + 3))
  {
    LOBYTE(v48) = *(*a2 + 3);
  }

  *v47 = v48;
  v49 = v45[1];
  v50 = *(v46 + 3);
  if (v50 >= *v49)
  {
    LOBYTE(v50) = *v49;
  }

  *v49 = v50;
  return result;
}

void sub_2717ECA18(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  v4 = a4;
  *a2 = a4;
  if (*(a1 + 12))
  {
    v8 = 0;
    do
    {
      *a2 = v4;
      sub_2717ECB04(*a3, *v4);
      sub_2717ECB04(*a3, *(*a2 + 1));
      sub_2717ECB04(*a3, *(*a2 + 2));
      sub_2717ECB04(*a3, *(*a2 + 3));
      v4 += *(a1 + 16);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }

  *a2 = v4;
  sub_2717ECB04(*a3, *v4);
  sub_2717ECB04(*a3, *(*a2 + 1));
  sub_2717ECB04(*a3, *(*a2 + 2));
  v9 = *a3;
  v10 = *(*a2 + 3);

  sub_2717ECB04(v9, v10);
}

void sub_2717ECB04(uint64_t a1, unsigned __int8 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_2717F9FFC(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_271120E64(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_2715F3874(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_2717ECC30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2717ECC60(uint64_t result, void *a2, void **a3, unsigned __int16 *a4)
{
  *a2 = a4;
  v4 = *(result + 12);
  v6 = **a3;
  v5 = (*a3)[1];
  if (v4)
  {
    v7 = 2 * *(result + 16);
    do
    {
      v8 = *v6;
      if (v8 <= *a4)
      {
        LOWORD(v8) = *a4;
      }

      *v6 = v8;
      v9 = *a4;
      if (v9 >= *v5)
      {
        LOWORD(v9) = *v5;
      }

      *v5 = v9;
      v10 = *v6;
      if (v10 <= a4[1])
      {
        LOWORD(v10) = a4[1];
      }

      *v6 = v10;
      v11 = a4[1];
      if (v11 >= *v5)
      {
        LOWORD(v11) = *v5;
      }

      *v5 = v11;
      v12 = *v6;
      if (v12 <= a4[2])
      {
        LOWORD(v12) = a4[2];
      }

      *v6 = v12;
      v13 = a4[2];
      if (v13 >= *v5)
      {
        LOWORD(v13) = *v5;
      }

      *v5 = v13;
      v14 = *v6;
      if (v14 <= a4[3])
      {
        LOWORD(v14) = a4[3];
      }

      *v6 = v14;
      v15 = a4[3];
      if (v15 >= *v5)
      {
        LOWORD(v15) = *v5;
      }

      *v5 = v15;
      a4 = (a4 + v7);
      --v4;
    }

    while (v4);
  }

  *a2 = a4;
  v16 = *v6;
  if (v16 <= *a4)
  {
    LOWORD(v16) = *a4;
  }

  *v6 = v16;
  v17 = *a4;
  if (v17 >= *v5)
  {
    LOWORD(v17) = *v5;
  }

  *v5 = v17;
  v18 = *v6;
  if (v18 <= a4[1])
  {
    LOWORD(v18) = a4[1];
  }

  *v6 = v18;
  v19 = a4[1];
  if (v19 >= *v5)
  {
    LOWORD(v19) = *v5;
  }

  *v5 = v19;
  v20 = *v6;
  if (v20 <= a4[2])
  {
    LOWORD(v20) = a4[2];
  }

  *v6 = v20;
  v21 = a4[2];
  if (v21 >= *v5)
  {
    LOWORD(v21) = *v5;
  }

  *v5 = v21;
  v22 = *v6;
  if (v22 <= a4[3])
  {
    LOWORD(v22) = a4[3];
  }

  *v6 = v22;
  v23 = a4[3];
  if (v23 >= *v5)
  {
    LOWORD(v23) = *v5;
  }

  *v5 = v23;
  return result;
}

void sub_2717ECDD0(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int16 *a4)
{
  v4 = a4;
  *a2 = a4;
  if (*(a1 + 12))
  {
    v8 = 0;
    do
    {
      *a2 = v4;
      sub_2717ECEBC(*a3, *v4);
      sub_2717ECEBC(*a3, *(*a2 + 2));
      sub_2717ECEBC(*a3, *(*a2 + 4));
      sub_2717ECEBC(*a3, *(*a2 + 6));
      v4 += *(a1 + 16);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }

  *a2 = v4;
  sub_2717ECEBC(*a3, *v4);
  sub_2717ECEBC(*a3, *(*a2 + 2));
  sub_2717ECEBC(*a3, *(*a2 + 4));
  v9 = *a3;
  v10 = *(*a2 + 6);

  sub_2717ECEBC(v9, v10);
}

void sub_2717ECEBC(uint64_t a1, unsigned __int16 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_2717F9FFC(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_271120E64(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_2715F3874(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_2717ECFE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_2717ED018(__int16 **a1, __int16 *a2, uint64_t a3)
{
  *a1 = a2;
  a1[2] = a3;
  v15 = 0;
  sub_2717EA664(&v12, v14, a2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v12;
  *(a3 + 16) = v13;
  v5 = *a1;
  v6 = a1[2];
  v15 = 0;
  sub_2717EA664(&v12, v14, v5 + 1);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v6 + 47) < 0)
  {
    operator delete(*(v6 + 3));
  }

  *(v6 + 12) = v12;
  *(v6 + 5) = v13;
  v7 = *a1;
  v8 = a1[2];
  v15 = 0;
  sub_2717EA664(&v12, v14, v7 + 2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v8 + 71) < 0)
  {
    operator delete(*(v8 + 6));
  }

  *(v8 + 3) = v12;
  *(v8 + 8) = v13;
  v9 = *a1;
  v10 = a1[2];
  v15 = 0;
  sub_2717EA664(&v12, v14, v9 + 3);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 9));
  }

  result = *&v12;
  *(v10 + 36) = v12;
  *(v10 + 11) = v13;
  return result;
}

void sub_2717ED28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717ED2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717ED2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717ED2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717ED2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717ED2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717ED304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717ED318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2717ED32C(uint64_t result, uint64_t *a2)
{
  v2 = *(a2 + 3);
  v3 = *(a2 + 4);
  if (*(a2 + 2))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || v3 == 0)
  {
    return result;
  }

  v6 = v2 - 1;
  v7 = *a2;
  v8 = *result;
  v9 = **result;
  v10 = 3 * *(a2 + 6);
  v11 = v3 - 1;
  if (v11)
  {
    v12 = *(a2 + 7);
    if (v6)
    {
      v13 = 0;
      v14 = (v7 + 95);
      result = 24 * *(a2 + 6);
      do
      {
        v15 = v14;
        v16 = v6;
        do
        {
          v17 = *(v15 - 72);
          if ((v17 & 0x80u) != 0)
          {
            v17 = *(v15 - 87);
          }

          if (v9 <= v17)
          {
            v9 = v17;
          }

          *v8 = v9;
          v18 = *(v15 - 48);
          if ((v18 & 0x80u) != 0)
          {
            v18 = *(v15 - 63);
          }

          if (v9 <= v18)
          {
            v9 = v18;
          }

          *v8 = v9;
          v19 = *(v15 - 24);
          if ((v19 & 0x80u) != 0)
          {
            v19 = *(v15 - 39);
          }

          if (v9 <= v19)
          {
            v9 = v19;
          }

          *v8 = v9;
          v20 = *v15;
          if ((v20 & 0x80u) != 0)
          {
            v20 = *(v15 - 15);
          }

          if (v9 <= v20)
          {
            v9 = v20;
          }

          *v8 = v9;
          v15 += result;
          --v16;
        }

        while (v16);
        v21 = *(v15 - 72);
        if ((v21 & 0x80u) != 0)
        {
          v21 = *(v15 - 87);
        }

        if (v9 <= v21)
        {
          v9 = v21;
        }

        *v8 = v9;
        v22 = *(v15 - 48);
        if ((v22 & 0x80u) != 0)
        {
          v22 = *(v15 - 63);
        }

        if (v9 <= v22)
        {
          v9 = v22;
        }

        *v8 = v9;
        v23 = *(v15 - 24);
        if ((v23 & 0x80u) != 0)
        {
          v23 = *(v15 - 39);
        }

        if (v9 <= v23)
        {
          v9 = v23;
        }

        *v8 = v9;
        v24 = *v15;
        v25 = *(v15 - 15);
        if ((v24 & 0x80u) == 0)
        {
          v25 = v24;
        }

        if (v9 <= v25)
        {
          v9 = v25;
        }

        *v8 = v9;
        v7 += 24 * v12;
        ++v13;
        v14 += 24 * v12;
      }

      while (v13 != v11);
      goto LABEL_66;
    }

    v26 = 24 * v12;
    do
    {
      v27 = *(v7 + 23);
      if ((v27 & 0x80u) != 0)
      {
        v27 = *(v7 + 8);
      }

      if (v9 <= v27)
      {
        v9 = v27;
      }

      *v8 = v9;
      v28 = *(v7 + 47);
      if ((v28 & 0x80u) != 0)
      {
        v28 = *(v7 + 32);
      }

      if (v9 <= v28)
      {
        v9 = v28;
      }

      *v8 = v9;
      v29 = *(v7 + 71);
      if ((v29 & 0x80u) != 0)
      {
        v29 = *(v7 + 56);
      }

      if (v9 <= v29)
      {
        v9 = v29;
      }

      *v8 = v9;
      v30 = *(v7 + 95);
      if ((v30 & 0x80u) != 0)
      {
        v30 = *(v7 + 80);
      }

      if (v9 <= v30)
      {
        v9 = v30;
      }

      *v8 = v9;
      v7 += v26;
      --v11;
    }

    while (v11);
  }

  if (v6)
  {
LABEL_66:
    v31 = 8 * v10;
    do
    {
      v32 = *(v7 + 23);
      if ((v32 & 0x80u) != 0)
      {
        v32 = *(v7 + 8);
      }

      if (v9 > v32)
      {
        v32 = v9;
      }

      *v8 = v32;
      v33 = *(v7 + 47);
      if ((v33 & 0x80u) != 0)
      {
        v33 = *(v7 + 32);
      }

      if (v32 <= v33)
      {
        v32 = v33;
      }

      *v8 = v32;
      v34 = *(v7 + 71);
      if ((v34 & 0x80u) != 0)
      {
        v34 = *(v7 + 56);
      }

      if (v32 <= v34)
      {
        v32 = v34;
      }

      *v8 = v32;
      v9 = *(v7 + 95);
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v7 + 80);
      }

      if (v32 > v9)
      {
        v9 = v32;
      }

      *v8 = v9;
      v7 += v31;
      --v6;
    }

    while (v6);
  }

  v35 = *(v7 + 23);
  if ((v35 & 0x80u) != 0)
  {
    v35 = *(v7 + 8);
  }

  if (v9 > v35)
  {
    v35 = v9;
  }

  *v8 = v35;
  v36 = *(v7 + 47);
  if ((v36 & 0x80u) != 0)
  {
    v36 = *(v7 + 32);
  }

  if (v35 <= v36)
  {
    v35 = v36;
  }

  *v8 = v35;
  v37 = *(v7 + 71);
  if ((v37 & 0x80u) != 0)
  {
    v37 = *(v7 + 56);
  }

  if (v35 <= v37)
  {
    v35 = v37;
  }

  *v8 = v35;
  v38 = *(v7 + 95);
  v39 = *(v7 + 80);
  if ((v38 & 0x80u) == 0)
  {
    v39 = v38;
  }

  if (v35 > v39)
  {
    v39 = v35;
  }

  *v8 = v39;
  return result;
}

void sub_2717ED65C(void ****a1, __int128 **a2)
{
  v4 = *a1;
  sub_2717EAABC(***a1, *a2, *(**a1)[1]);
  v6 = v4[1];
  v5 = v4[2];
  v7 = v6[4];
  v8 = *v6;
  v9 = v6[1];
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == *(v9 + 1))
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == *(v9 + 2))
      {
        goto LABEL_8;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(*v6[2] + 8 * v13));
  sub_271120E64(v5, *(*v6[2] + 8 * v13), v14);
  sub_2715F3874(v7, v5, *v6, v13, *v6[3]);
LABEL_8:
  v15 = *a1;
  sub_2717EAABC(***a1, (*a2 + 24), *(**a1)[1]);
  v17 = v15[1];
  v16 = v15[2];
  v18 = v17[4];
  v19 = *v17;
  v20 = v17[1];
  v21 = **v17 + 1;
  **v17 = v21;
  if (v21 == *v20)
  {
    v22 = *(v19 + 1) + 1;
    *v19 = 0;
    *(v19 + 1) = v22;
    if (v22 == *(v20 + 1))
    {
      v23 = *(v19 + 2) + 1;
      *(v19 + 1) = 0;
      *(v19 + 2) = v23;
      if (v23 == *(v20 + 2))
      {
        goto LABEL_15;
      }

      v24 = 2;
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = strlen(*(*v17[2] + 8 * v24));
  sub_271120E64(v16, *(*v17[2] + 8 * v24), v25);
  sub_2715F3874(v18, v16, *v17, v24, *v17[3]);
LABEL_15:
  v26 = *a1;
  sub_2717EAABC(***a1, *a2 + 3, *(**a1)[1]);
  v28 = v26[1];
  v27 = v26[2];
  v29 = v28[4];
  v30 = *v28;
  v31 = v28[1];
  v32 = **v28 + 1;
  **v28 = v32;
  if (v32 == *v31)
  {
    v33 = *(v30 + 1) + 1;
    *v30 = 0;
    *(v30 + 1) = v33;
    if (v33 == *(v31 + 1))
    {
      v34 = *(v30 + 2) + 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = v34;
      if (v34 == *(v31 + 2))
      {
        goto LABEL_22;
      }

      v35 = 2;
    }

    else
    {
      v35 = 1;
    }
  }

  else
  {
    v35 = 0;
  }

  v36 = strlen(*(*v28[2] + 8 * v35));
  sub_271120E64(v27, *(*v28[2] + 8 * v35), v36);
  sub_2715F3874(v29, v27, *v28, v35, *v28[3]);
LABEL_22:
  v37 = *a1;
  sub_2717EAABC(**v37, (*a2 + 72), *(*v37)[1]);
  v39 = v37[1];
  v38 = v37[2];
  v40 = v39[4];
  v41 = *v39;
  v42 = v39[1];
  v43 = **v39 + 1;
  **v39 = v43;
  if (v43 == *v42)
  {
    v44 = *(v41 + 1) + 1;
    *v41 = 0;
    *(v41 + 1) = v44;
    if (v44 == *(v42 + 1))
    {
      v45 = *(v41 + 2) + 1;
      *(v41 + 1) = 0;
      *(v41 + 2) = v45;
      if (v45 == *(v42 + 2))
      {
        return;
      }

      v46 = 2;
    }

    else
    {
      v46 = 1;
    }
  }

  else
  {
    v46 = 0;
  }

  v47 = strlen(*(*v39[2] + 8 * v46));
  sub_271120E64(v38, *(*v39[2] + 8 * v46), v47);
  v48 = *v39;
  v49 = *v39[3];

  sub_2715F3874(v40, v38, v48, v46, v49);
}

uint64_t sub_2717ED9C8(uint64_t *a1, uint64_t a2)
{
  v23 = 0;
  v24 = 0;
  v22[0] = &v24;
  v22[1] = &v23;
  v3 = *(a2 + 12);
  v4 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || v4 == 0)
  {
    v7 = 0;
    v8 = 1;
    goto LABEL_22;
  }

  v9 = v3 - 1;
  v10 = *a2;
  v11 = 3 * *(a2 + 24);
  v12 = v4 - 1;
  if (v4 != 1)
  {
    v13 = *(a2 + 28);
    if (v3 != 1)
    {
      v14 = 0;
      v15 = 24 * v13;
      do
      {
        v16 = v10;
        v17 = v9;
        do
        {
          sub_2717EDE48(v22, v16);
          v16 += 8 * v11;
          --v17;
        }

        while (v17);
        sub_2717EDE48(v22, v16);
        v10 += v15;
        ++v14;
      }

      while (v14 != v12);
      goto LABEL_20;
    }

    v18 = 24 * v13;
    do
    {
      sub_2717EDE48(v22, v10);
      v10 += v18;
      --v12;
    }

    while (v12);
  }

  for (; v9; --v9)
  {
LABEL_20:
    sub_2717EDE48(v22, v10);
    v10 += 8 * v11;
  }

  sub_2717EDE48(v22, v10);
  v7 = v24;
  v8 = v23 + 1;
LABEL_22:
  v19 = v8 + v7;
  v20 = *a1;
  if (*a1 >= v19)
  {
    v20 = v19;
  }

  if (v19)
  {
    result = v20;
  }

  else
  {
    result = 1;
  }

  a1[2];
  return result;
}

double sub_2717EDB34(float **a1, float *a2, uint64_t a3)
{
  *a1 = a2;
  a1[2] = a3;
  v15 = 0;
  sub_2711CDE78(&v12, v14, a2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v12;
  *(a3 + 16) = v13;
  v5 = *a1;
  v6 = a1[2];
  v15 = 0;
  sub_2711CDE78(&v12, v14, v5 + 1);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v6 + 47) < 0)
  {
    operator delete(*(v6 + 3));
  }

  *(v6 + 6) = v12;
  *(v6 + 5) = v13;
  v7 = *a1;
  v8 = a1[2];
  v15 = 0;
  sub_2711CDE78(&v12, v14, v7 + 2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v8 + 71) < 0)
  {
    operator delete(*(v8 + 6));
  }

  *(v8 + 3) = v12;
  *(v8 + 8) = v13;
  v9 = *a1;
  v10 = a1[2];
  v15 = 0;
  sub_2711CDE78(&v12, v14, v9 + 3);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 9));
  }

  result = *&v12;
  *(v10 + 18) = v12;
  *(v10 + 11) = v13;
  return result;
}

void sub_2717EDDA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EDDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EDDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EDDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EDDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EDE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EDE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EDE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_2717EDE48(_BYTE *result, uint64_t a2)
{
  v3 = result;
  v4 = (result + 8);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  if (v7 >= 1)
  {
    v8 = &v6[v7];
    v9 = v7;
    result = v6;
    do
    {
      result = memchr(result, 46, v9);
      if (!result)
      {
        break;
      }

      if (*result == 46)
      {
        if (result == v8)
        {
          break;
        }

        v10 = result - v6;
        v11 = v3;
        if (result - v6 != -1)
        {
          v12 = **v3;
          if (v12 <= v10)
          {
            v12 = (result - v6);
          }

          **v3 = v12;
          v13 = *(a2 + 23);
          if ((v13 & 0x80u) != 0)
          {
            v13 = *(a2 + 8);
          }

          v7 = v13 + ~v10;
          v11 = v4;
        }

        goto LABEL_21;
      }

      ++result;
      v9 = v8 - result;
    }

    while (v8 - result >= 1);
  }

  v11 = v3;
LABEL_21:
  v14 = *v11;
  v15 = *v14;
  if (*v14 <= v7)
  {
    v15 = v7;
  }

  *v14 = v15;
  v16 = *(a2 + 47);
  if (v16 >= 0)
  {
    v17 = (a2 + 24);
  }

  else
  {
    v17 = *(a2 + 24);
  }

  v18 = *(a2 + 32);
  if (v16 >= 0)
  {
    v19 = *(a2 + 47);
  }

  else
  {
    v19 = *(a2 + 32);
  }

  if (v19 >= 1)
  {
    v20 = &v17[v19];
    v21 = v19;
    result = v17;
    do
    {
      result = memchr(result, 46, v21);
      if (!result)
      {
        break;
      }

      if (*result == 46)
      {
        if (result == v20)
        {
          break;
        }

        v22 = result - v17;
        v23 = v3;
        if (result - v17 != -1)
        {
          v24 = **v3;
          if (v24 <= v22)
          {
            v24 = (result - v17);
          }

          **v3 = v24;
          v25 = *(a2 + 47);
          if ((v25 & 0x80u) != 0)
          {
            v25 = *(a2 + 32);
          }

          v19 = v25 + ~v22;
          v23 = v4;
        }

        goto LABEL_43;
      }

      ++result;
      v21 = v20 - result;
    }

    while (v20 - result >= 1);
  }

  v23 = v3;
LABEL_43:
  v26 = *v23;
  v27 = *v26;
  if (*v26 <= v19)
  {
    v27 = v19;
  }

  *v26 = v27;
  v28 = *(a2 + 71);
  if (v28 >= 0)
  {
    v29 = (a2 + 48);
  }

  else
  {
    v29 = *(a2 + 48);
  }

  v30 = *(a2 + 56);
  if (v28 >= 0)
  {
    v31 = *(a2 + 71);
  }

  else
  {
    v31 = *(a2 + 56);
  }

  if (v31 >= 1)
  {
    v32 = &v29[v31];
    v33 = v31;
    result = v29;
    do
    {
      result = memchr(result, 46, v33);
      if (!result)
      {
        break;
      }

      if (*result == 46)
      {
        if (result == v32)
        {
          break;
        }

        v34 = result - v29;
        v35 = v3;
        if (result - v29 != -1)
        {
          v36 = **v3;
          if (v36 <= v34)
          {
            v36 = (result - v29);
          }

          **v3 = v36;
          v37 = *(a2 + 71);
          if ((v37 & 0x80u) != 0)
          {
            v37 = *(a2 + 56);
          }

          v31 = v37 + ~v34;
          v35 = v4;
        }

        goto LABEL_65;
      }

      ++result;
      v33 = v32 - result;
    }

    while (v32 - result >= 1);
  }

  v35 = v3;
LABEL_65:
  v38 = *v35;
  v39 = *v38;
  if (*v38 <= v31)
  {
    v39 = v31;
  }

  *v38 = v39;
  v40 = *(a2 + 95);
  if (v40 >= 0)
  {
    v41 = (a2 + 72);
  }

  else
  {
    v41 = *(a2 + 72);
  }

  v42 = *(a2 + 80);
  if (v40 >= 0)
  {
    v43 = *(a2 + 95);
  }

  else
  {
    v43 = *(a2 + 80);
  }

  if (v43 >= 1)
  {
    v44 = &v41[v43];
    v45 = v43;
    result = v41;
    do
    {
      result = memchr(result, 46, v45);
      if (!result)
      {
        break;
      }

      if (*result == 46)
      {
        if (result == v44)
        {
          break;
        }

        v46 = result - v41;
        if (result - v41 == -1)
        {
          break;
        }

        v47 = **v3;
        if (v47 <= v46)
        {
          v47 = (result - v41);
        }

        **v3 = v47;
        v48 = *(a2 + 95);
        if ((v48 & 0x80u) != 0)
        {
          v48 = *(a2 + 80);
        }

        v43 = v48 + ~v46;
        goto LABEL_87;
      }

      ++result;
      v45 = v44 - result;
    }

    while (v44 - result >= 1);
  }

  v4 = v3;
LABEL_87:
  v49 = **v4;
  if (v49 <= v43)
  {
    v49 = v43;
  }

  **v4 = v49;
  return result;
}

void sub_2717EE190(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  *a2 = a4;
  if (*(a1 + 12))
  {
    v8 = 0;
    do
    {
      *a2 = v4;
      sub_2717EB900(*a3, v4);
      sub_2717EB900(*a3, *a2 + 24);
      sub_2717EB900(*a3, *a2 + 48);
      sub_2717EB900(*a3, *a2 + 72);
      v4 += 24 * *(a1 + 16);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }

  *a2 = v4;
  sub_2717EB900(*a3, v4);
  sub_2717EB900(*a3, *a2 + 24);
  sub_2717EB900(*a3, *a2 + 48);
  v9 = *a3;
  v10 = *a2 + 72;

  sub_2717EB900(v9, v10);
}

void sub_2717EE280(uint64_t a1, unsigned __int8 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_2717F9FFC(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_271120E64(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_2715F3874(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_2717EE3AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717EE3DC(uint64_t a1, unsigned __int16 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_2717F9FFC(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_271120E64(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_2715F3874(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_2717EE508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_2717EE538(__int16 **a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v15 = 0;
  sub_2717EA664(&v12, v14, v4);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  v6 = v12;
  *(v5 + 16) = v13;
  *v5 = v6;
  v7 = *a1;
  v8 = *a2;
  v15 = 0;
  sub_2717EA664(&v12, v14, v7 + 1);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v8 + 47) < 0)
  {
    operator delete(*(v8 + 24));
  }

  *(v8 + 24) = v12;
  *(v8 + 40) = v13;
  v9 = *a1;
  v10 = *a2;
  v15 = 0;
  sub_2717EA664(&v12, v14, v9 + 2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  result = *&v12;
  *(v10 + 48) = v12;
  *(v10 + 64) = v13;
  return result;
}

void sub_2717EE724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EE738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EE74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EE760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EE774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EE788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

double sub_2717EE79C(float **a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v15 = 0;
  sub_2711CDE78(&v12, v14, v4);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  v6 = v12;
  *(v5 + 16) = v13;
  *v5 = v6;
  v7 = *a1;
  v8 = *a2;
  v15 = 0;
  sub_2711CDE78(&v12, v14, v7 + 1);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v8 + 47) < 0)
  {
    operator delete(*(v8 + 24));
  }

  *(v8 + 24) = v12;
  *(v8 + 40) = v13;
  v9 = *a1;
  v10 = *a2;
  v15 = 0;
  sub_2711CDE78(&v12, v14, v9 + 2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  result = *&v12;
  *(v10 + 48) = v12;
  *(v10 + 64) = v13;
  return result;
}

void sub_2717EE988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EE99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EE9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EE9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EE9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EE9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EEA00(uint64_t a1, unsigned __int16 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_2717F9FFC(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_271120E64(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_2715F3874(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_2717EEB2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_2717EEB5C(__int16 **a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v15 = 0;
  sub_2717EA664(&v12, v14, v4);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  v6 = v12;
  *(v5 + 16) = v13;
  *v5 = v6;
  v7 = *a1;
  v8 = *a2;
  v15 = 0;
  sub_2717EA664(&v12, v14, v7 + 1);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v8 + 47) < 0)
  {
    operator delete(*(v8 + 24));
  }

  *(v8 + 24) = v12;
  *(v8 + 40) = v13;
  v9 = *a1;
  v10 = *a2;
  v15 = 0;
  sub_2717EA664(&v12, v14, v9 + 2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  result = *&v12;
  *(v10 + 48) = v12;
  *(v10 + 64) = v13;
  return result;
}

void sub_2717EED48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EED5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EED70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EED84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EED98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EEDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

double sub_2717EEDC0(float **a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v15 = 0;
  sub_2711CDE78(&v12, v14, v4);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  v6 = v12;
  *(v5 + 16) = v13;
  *v5 = v6;
  v7 = *a1;
  v8 = *a2;
  v15 = 0;
  sub_2711CDE78(&v12, v14, v7 + 1);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v8 + 47) < 0)
  {
    operator delete(*(v8 + 24));
  }

  *(v8 + 24) = v12;
  *(v8 + 40) = v13;
  v9 = *a1;
  v10 = *a2;
  v15 = 0;
  sub_2711CDE78(&v12, v14, v9 + 2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  result = *&v12;
  *(v10 + 48) = v12;
  *(v10 + 64) = v13;
  return result;
}

void sub_2717EEFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EEFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EEFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EEFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EEFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EF010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EF024(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  v4 = a4;
  *a2 = a4;
  if (*(a1 + 12))
  {
    v8 = 0;
    do
    {
      *a2 = v4;
      sub_2717EF110(*a3, *v4);
      sub_2717EF110(*a3, *(*a2 + 1));
      sub_2717EF110(*a3, *(*a2 + 2));
      sub_2717EF110(*a3, *(*a2 + 3));
      v4 += *(a1 + 16);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }

  *a2 = v4;
  sub_2717EF110(*a3, *v4);
  sub_2717EF110(*a3, *(*a2 + 1));
  sub_2717EF110(*a3, *(*a2 + 2));
  v9 = *a3;
  v10 = *(*a2 + 3);

  sub_2717EF110(v9, v10);
}

void sub_2717EF110(uint64_t a1, unsigned __int8 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_2717F9FFC(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_271120E64(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_2715F3874(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_2717EF23C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717EF26C(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int16 *a4)
{
  v4 = a4;
  *a2 = a4;
  if (*(a1 + 12))
  {
    v8 = 0;
    do
    {
      *a2 = v4;
      sub_2717EF358(*a3, *v4);
      sub_2717EF358(*a3, *(*a2 + 2));
      sub_2717EF358(*a3, *(*a2 + 4));
      sub_2717EF358(*a3, *(*a2 + 6));
      v4 += *(a1 + 16);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }

  *a2 = v4;
  sub_2717EF358(*a3, *v4);
  sub_2717EF358(*a3, *(*a2 + 2));
  sub_2717EF358(*a3, *(*a2 + 4));
  v9 = *a3;
  v10 = *(*a2 + 6);

  sub_2717EF358(v9, v10);
}

void sub_2717EF358(uint64_t a1, unsigned __int16 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_2717F9FFC(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_271120E64(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_2715F3874(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_2717EF484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_2717EF4B4(__int16 **a1, __int16 *a2, uint64_t a3)
{
  *a1 = a2;
  a1[2] = a3;
  v15 = 0;
  sub_2717EA664(&v12, v14, a2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v12;
  *(a3 + 16) = v13;
  v5 = *a1;
  v6 = a1[2];
  v15 = 0;
  sub_2717EA664(&v12, v14, v5 + 1);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v6 + 47) < 0)
  {
    operator delete(*(v6 + 3));
  }

  *(v6 + 12) = v12;
  *(v6 + 5) = v13;
  v7 = *a1;
  v8 = a1[2];
  v15 = 0;
  sub_2717EA664(&v12, v14, v7 + 2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v8 + 71) < 0)
  {
    operator delete(*(v8 + 6));
  }

  *(v8 + 3) = v12;
  *(v8 + 8) = v13;
  v9 = *a1;
  v10 = a1[2];
  v15 = 0;
  sub_2717EA664(&v12, v14, v9 + 3);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 9));
  }

  result = *&v12;
  *(v10 + 36) = v12;
  *(v10 + 11) = v13;
  return result;
}

void sub_2717EF728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EF73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EF750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EF764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EF778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EF78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EF7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EF7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

double sub_2717EF7C8(float **a1, float *a2, uint64_t a3)
{
  *a1 = a2;
  a1[2] = a3;
  v15 = 0;
  sub_2711CDE78(&v12, v14, a2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v12;
  *(a3 + 16) = v13;
  v5 = *a1;
  v6 = a1[2];
  v15 = 0;
  sub_2711CDE78(&v12, v14, v5 + 1);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v6 + 47) < 0)
  {
    operator delete(*(v6 + 3));
  }

  *(v6 + 6) = v12;
  *(v6 + 5) = v13;
  v7 = *a1;
  v8 = a1[2];
  v15 = 0;
  sub_2711CDE78(&v12, v14, v7 + 2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v8 + 71) < 0)
  {
    operator delete(*(v8 + 6));
  }

  *(v8 + 3) = v12;
  *(v8 + 8) = v13;
  v9 = *a1;
  v10 = a1[2];
  v15 = 0;
  sub_2711CDE78(&v12, v14, v9 + 3);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 9));
  }

  result = *&v12;
  *(v10 + 18) = v12;
  *(v10 + 11) = v13;
  return result;
}

void sub_2717EFA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EFA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EFA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EFA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EFA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EFAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EFAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EFAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717EFADC(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  v4 = a4;
  *a2 = a4;
  if (*(a1 + 12))
  {
    v8 = 0;
    do
    {
      *a2 = v4;
      sub_2717EFBC8(*a3, *v4);
      sub_2717EFBC8(*a3, *(*a2 + 1));
      sub_2717EFBC8(*a3, *(*a2 + 2));
      sub_2717EFBC8(*a3, *(*a2 + 3));
      v4 += *(a1 + 16);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }

  *a2 = v4;
  sub_2717EFBC8(*a3, *v4);
  sub_2717EFBC8(*a3, *(*a2 + 1));
  sub_2717EFBC8(*a3, *(*a2 + 2));
  v9 = *a3;
  v10 = *(*a2 + 3);

  sub_2717EFBC8(v9, v10);
}

void sub_2717EFBC8(uint64_t a1, unsigned __int8 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_2717F9FFC(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_271120E64(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_2715F3874(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_2717EFCF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717EFD24(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int16 *a4)
{
  v4 = a4;
  *a2 = a4;
  if (*(a1 + 12))
  {
    v8 = 0;
    do
    {
      *a2 = v4;
      sub_2717EFE10(*a3, *v4);
      sub_2717EFE10(*a3, *(*a2 + 2));
      sub_2717EFE10(*a3, *(*a2 + 4));
      sub_2717EFE10(*a3, *(*a2 + 6));
      v4 += *(a1 + 16);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }

  *a2 = v4;
  sub_2717EFE10(*a3, *v4);
  sub_2717EFE10(*a3, *(*a2 + 2));
  sub_2717EFE10(*a3, *(*a2 + 4));
  v9 = *a3;
  v10 = *(*a2 + 6);

  sub_2717EFE10(v9, v10);
}

void sub_2717EFE10(uint64_t a1, unsigned __int16 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_2717F9FFC(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_271120E64(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_2715F3874(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_2717EFF3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_2717EFF6C(__int16 **a1, __int16 *a2, uint64_t a3)
{
  *a1 = a2;
  a1[2] = a3;
  v15 = 0;
  sub_2717EA664(&v12, v14, a2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v12;
  *(a3 + 16) = v13;
  v5 = *a1;
  v6 = a1[2];
  v15 = 0;
  sub_2717EA664(&v12, v14, v5 + 1);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v6 + 47) < 0)
  {
    operator delete(*(v6 + 3));
  }

  *(v6 + 12) = v12;
  *(v6 + 5) = v13;
  v7 = *a1;
  v8 = a1[2];
  v15 = 0;
  sub_2717EA664(&v12, v14, v7 + 2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v8 + 71) < 0)
  {
    operator delete(*(v8 + 6));
  }

  *(v8 + 3) = v12;
  *(v8 + 8) = v13;
  v9 = *a1;
  v10 = a1[2];
  v15 = 0;
  sub_2717EA664(&v12, v14, v9 + 3);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 9));
  }

  result = *&v12;
  *(v10 + 36) = v12;
  *(v10 + 11) = v13;
  return result;
}

void sub_2717F01E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F01F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F0208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F021C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F0230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F0244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F0258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F026C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

double sub_2717F0280(float **a1, float *a2, uint64_t a3)
{
  *a1 = a2;
  a1[2] = a3;
  v15 = 0;
  sub_2711CDE78(&v12, v14, a2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v12;
  *(a3 + 16) = v13;
  v5 = *a1;
  v6 = a1[2];
  v15 = 0;
  sub_2711CDE78(&v12, v14, v5 + 1);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v6 + 47) < 0)
  {
    operator delete(*(v6 + 3));
  }

  *(v6 + 6) = v12;
  *(v6 + 5) = v13;
  v7 = *a1;
  v8 = a1[2];
  v15 = 0;
  sub_2711CDE78(&v12, v14, v7 + 2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v8 + 71) < 0)
  {
    operator delete(*(v8 + 6));
  }

  *(v8 + 3) = v12;
  *(v8 + 8) = v13;
  v9 = *a1;
  v10 = a1[2];
  v15 = 0;
  sub_2711CDE78(&v12, v14, v9 + 3);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 9));
  }

  result = *&v12;
  *(v10 + 18) = v12;
  *(v10 + 11) = v13;
  return result;
}

void sub_2717F04F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F0508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F051C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F0530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F0544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F0558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F056C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F0580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F0594(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  v4 = a4;
  *a2 = a4;
  if (*(a1 + 12))
  {
    v8 = 0;
    do
    {
      *a2 = v4;
      sub_2717F0680(*a3, *v4);
      sub_2717F0680(*a3, *(*a2 + 1));
      sub_2717F0680(*a3, *(*a2 + 2));
      sub_2717F0680(*a3, *(*a2 + 3));
      v4 += *(a1 + 16);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }

  *a2 = v4;
  sub_2717F0680(*a3, *v4);
  sub_2717F0680(*a3, *(*a2 + 1));
  sub_2717F0680(*a3, *(*a2 + 2));
  v9 = *a3;
  v10 = *(*a2 + 3);

  sub_2717F0680(v9, v10);
}

void sub_2717F0680(uint64_t a1, unsigned __int8 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_2717F9FFC(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_271120E64(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_2715F3874(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_2717F07AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717F07DC(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int16 *a4)
{
  v4 = a4;
  *a2 = a4;
  if (*(a1 + 12))
  {
    v8 = 0;
    do
    {
      *a2 = v4;
      sub_2717F08C8(*a3, *v4);
      sub_2717F08C8(*a3, *(*a2 + 2));
      sub_2717F08C8(*a3, *(*a2 + 4));
      sub_2717F08C8(*a3, *(*a2 + 6));
      v4 += *(a1 + 16);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }

  *a2 = v4;
  sub_2717F08C8(*a3, *v4);
  sub_2717F08C8(*a3, *(*a2 + 2));
  sub_2717F08C8(*a3, *(*a2 + 4));
  v9 = *a3;
  v10 = *(*a2 + 6);

  sub_2717F08C8(v9, v10);
}

void sub_2717F08C8(uint64_t a1, unsigned __int16 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_2717F9FFC(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_271120E64(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_2715F3874(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_2717F09F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_2717F0A24(__int16 **a1, __int16 *a2, uint64_t a3)
{
  *a1 = a2;
  a1[2] = a3;
  v15 = 0;
  sub_2717EA664(&v12, v14, a2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v12;
  *(a3 + 16) = v13;
  v5 = *a1;
  v6 = a1[2];
  v15 = 0;
  sub_2717EA664(&v12, v14, v5 + 1);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v6 + 47) < 0)
  {
    operator delete(*(v6 + 3));
  }

  *(v6 + 12) = v12;
  *(v6 + 5) = v13;
  v7 = *a1;
  v8 = a1[2];
  v15 = 0;
  sub_2717EA664(&v12, v14, v7 + 2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v8 + 71) < 0)
  {
    operator delete(*(v8 + 6));
  }

  *(v8 + 3) = v12;
  *(v8 + 8) = v13;
  v9 = *a1;
  v10 = a1[2];
  v15 = 0;
  sub_2717EA664(&v12, v14, v9 + 3);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 9));
  }

  result = *&v12;
  *(v10 + 36) = v12;
  *(v10 + 11) = v13;
  return result;
}

void sub_2717F0C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F0CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F0CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F0CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F0CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F0CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F0D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F0D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

double sub_2717F0D38(float **a1, float *a2, uint64_t a3)
{
  *a1 = a2;
  a1[2] = a3;
  v15 = 0;
  sub_2711CDE78(&v12, v14, a2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v12;
  *(a3 + 16) = v13;
  v5 = *a1;
  v6 = a1[2];
  v15 = 0;
  sub_2711CDE78(&v12, v14, v5 + 1);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v6 + 47) < 0)
  {
    operator delete(*(v6 + 3));
  }

  *(v6 + 6) = v12;
  *(v6 + 5) = v13;
  v7 = *a1;
  v8 = a1[2];
  v15 = 0;
  sub_2711CDE78(&v12, v14, v7 + 2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v8 + 71) < 0)
  {
    operator delete(*(v8 + 6));
  }

  *(v8 + 3) = v12;
  *(v8 + 8) = v13;
  v9 = *a1;
  v10 = a1[2];
  v15 = 0;
  sub_2711CDE78(&v12, v14, v9 + 3);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 9));
  }

  result = *&v12;
  *(v10 + 18) = v12;
  *(v10 + 11) = v13;
  return result;
}

void sub_2717F0FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F0FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F0FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F0FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F0FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F1010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F1024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F1038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F104C(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  v4 = a4;
  *a2 = a4;
  if (*(a1 + 12))
  {
    v8 = 0;
    do
    {
      *a2 = v4;
      sub_2717F1138(*a3, *v4);
      sub_2717F1138(*a3, *(*a2 + 1));
      sub_2717F1138(*a3, *(*a2 + 2));
      sub_2717F1138(*a3, *(*a2 + 3));
      v4 += *(a1 + 16);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }

  *a2 = v4;
  sub_2717F1138(*a3, *v4);
  sub_2717F1138(*a3, *(*a2 + 1));
  sub_2717F1138(*a3, *(*a2 + 2));
  v9 = *a3;
  v10 = *(*a2 + 3);

  sub_2717F1138(v9, v10);
}

void sub_2717F1138(uint64_t a1, unsigned __int8 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_2717F9FFC(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_271120E64(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_2715F3874(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_2717F1264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717F1294(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int16 *a4)
{
  v4 = a4;
  *a2 = a4;
  if (*(a1 + 12))
  {
    v8 = 0;
    do
    {
      *a2 = v4;
      sub_2717F1380(*a3, *v4);
      sub_2717F1380(*a3, *(*a2 + 2));
      sub_2717F1380(*a3, *(*a2 + 4));
      sub_2717F1380(*a3, *(*a2 + 6));
      v4 += *(a1 + 16);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }

  *a2 = v4;
  sub_2717F1380(*a3, *v4);
  sub_2717F1380(*a3, *(*a2 + 2));
  sub_2717F1380(*a3, *(*a2 + 4));
  v9 = *a3;
  v10 = *(*a2 + 6);

  sub_2717F1380(v9, v10);
}

void sub_2717F1380(uint64_t a1, unsigned __int16 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_2717F9FFC(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_271120E64(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_2715F3874(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_2717F14AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_2717F14DC(__int16 **a1, __int16 *a2, uint64_t a3)
{
  *a1 = a2;
  a1[2] = a3;
  v15 = 0;
  sub_2717EA664(&v12, v14, a2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v12;
  *(a3 + 16) = v13;
  v5 = *a1;
  v6 = a1[2];
  v15 = 0;
  sub_2717EA664(&v12, v14, v5 + 1);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v6 + 47) < 0)
  {
    operator delete(*(v6 + 3));
  }

  *(v6 + 12) = v12;
  *(v6 + 5) = v13;
  v7 = *a1;
  v8 = a1[2];
  v15 = 0;
  sub_2717EA664(&v12, v14, v7 + 2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v8 + 71) < 0)
  {
    operator delete(*(v8 + 6));
  }

  *(v8 + 3) = v12;
  *(v8 + 8) = v13;
  v9 = *a1;
  v10 = a1[2];
  v15 = 0;
  sub_2717EA664(&v12, v14, v9 + 3);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 9));
  }

  result = *&v12;
  *(v10 + 36) = v12;
  *(v10 + 11) = v13;
  return result;
}

void sub_2717F1750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F1764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F1778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F178C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F17A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F17B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F17C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F17DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

double sub_2717F17F0(float **a1, float *a2, uint64_t a3)
{
  *a1 = a2;
  a1[2] = a3;
  v15 = 0;
  sub_2711CDE78(&v12, v14, a2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v12;
  *(a3 + 16) = v13;
  v5 = *a1;
  v6 = a1[2];
  v15 = 0;
  sub_2711CDE78(&v12, v14, v5 + 1);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v6 + 47) < 0)
  {
    operator delete(*(v6 + 3));
  }

  *(v6 + 6) = v12;
  *(v6 + 5) = v13;
  v7 = *a1;
  v8 = a1[2];
  v15 = 0;
  sub_2711CDE78(&v12, v14, v7 + 2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v8 + 71) < 0)
  {
    operator delete(*(v8 + 6));
  }

  *(v8 + 3) = v12;
  *(v8 + 8) = v13;
  v9 = *a1;
  v10 = a1[2];
  v15 = 0;
  sub_2711CDE78(&v12, v14, v9 + 3);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_2881349A0[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288134970[v15])(&v17, v14);
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 9));
  }

  result = *&v12;
  *(v10 + 18) = v12;
  *(v10 + 11) = v13;
  return result;
}

void sub_2717F1A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F1A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F1A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F1AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F1AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F1AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F1ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F1AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2717F1B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  memcpy(&v16, (a2 - 8 + 4 * a3), 4 * a3 - (4 * a3 - 8));
  *a1 = v16;
  memcpy(&__dst, (a4 - 4 + 4 * a5), 4 * a5 - (4 * a5 - 4));
  *(a1 + 8) = __dst * a6;
  if (a3 != a5)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/Size.cpp", 37, "shape.size() == value_stride.size()", 0x23uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "shape.size() == value_stride.size()", 35, "", 0);
        return a1;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_11;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "shape.size() == value_stride.size()", 35, "", 0);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_11:
    abort();
  }

  return a1;
}

void *sub_2717F1CC4(void *result)
{
  *result = &unk_288109288;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_2717F1D58(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    if (v6)
    {
      sub_2717F9390(*(a1 + 8));
    }
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *(a1 + 16);
  *(a1 + 8) = v7;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void *sub_2717F1E54(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        if (!v4)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    if (v4)
    {
LABEL_5:
      sub_2717F9390(a1[1]);
    }
  }

LABEL_6:
  *a1 = &unk_288109288;
  v5 = a1[2];
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

void sub_2717F1F6C(void *a1)
{
  sub_2717F1E54(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717F1FA4(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 252, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_18;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, "", 0);
    }

    while (v7 != v8);
    if (byte_28087C430)
    {
      goto LABEL_12;
    }

LABEL_18:
    abort();
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = *(a1 + 8);
  v13 = v11;
  if (atomic_load_explicit((v11 + 104), memory_order_acquire) != -1)
  {
    v15 = &v13;
    v14 = &v15;
    std::__call_once((v11 + 104), &v14, sub_2717F5DD4);
  }

  return *(*(v11 + 112) + 8 * a2);
}

uint64_t sub_2717F217C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    if (v6)
    {
      sub_2717F948C(*(a1 + 8));
    }
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *(a1 + 16);
  *(a1 + 8) = v7;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void *sub_2717F2278(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        if (!v4)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    if (v4)
    {
LABEL_5:
      sub_2717F948C(a1[1]);
    }
  }

LABEL_6:
  *a1 = &unk_288109288;
  v5 = a1[2];
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

void sub_2717F2390(void *a1)
{
  sub_2717F2278(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2717F23C8(int a1, CFTypeRef cf, int a3)
{
  if (cf)
  {
    if (a3)
    {
      v3 = cf;
      CFRetain(cf);
      cf = v3;
    }
  }

  sub_271580FAC(&v4, cf);
}

void sub_2717F2654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_27112F828(&a11);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_2717F2670(_DWORD *a1, int a2)
{
  v2 = a2;
  if (a1[1] * *a1)
  {
    sub_2717F66E4(a1, a2);
  }

  v4 = 0;
  v6[0] = v3;
  v6[1] = "given IOSurface size ";
  v6[2] = v3;
  v6[3] = "given IOSurface size ";
  v6[4] = "given IOSurface size ";
  __dst = v6;
  sub_2712B31F0(&__dst);
  sub_2717F5FD8();
}

void sub_2717F3054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39)
{
  if (a38 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717F3170()
{
  v1 = *(v0 - 112);
  *(v0 - 112) = 0;
  if (v1)
  {
    sub_27184D728(v0 - 112, v1);
  }

  JUMPOUT(0x2717F3150);
}

void *sub_2717F319C(void *result)
{
  *result = &unk_288109288;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_2717F3230(void *a1)
{
  *a1 = &unk_288109288;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

size_t sub_2717F32D8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 134, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, "", 0);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
LABEL_19:
      qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return IOSurfaceGetPlaneCount(v6);
  }

LABEL_20:
  v6 = 0;

  return IOSurfaceGetPlaneCount(v6);
}

size_t sub_2717F3514(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 150, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, "", 0);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
LABEL_19:
      qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return IOSurfaceGetWidth(v6);
  }

LABEL_20:
  v6 = 0;

  return IOSurfaceGetWidth(v6);
}

size_t sub_2717F3750(uint64_t a1, size_t planeIndex)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 155, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_17;
      }

      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_22;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "IsValid()", 9, "", 0);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
LABEL_17:
      qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
      v7 = *(a1 + 8);
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_18:
      v8 = 0;
      goto LABEL_19;
    }

LABEL_22:
    abort();
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_6:
  v8 = *v7;
  v9 = *(v7 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v8 = v10;
    }
  }

LABEL_19:

  return IOSurfaceGetWidthOfPlane(v8, planeIndex);
}

size_t sub_2717F3958(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 160, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, "", 0);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
LABEL_19:
      qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return IOSurfaceGetHeight(v6);
  }

LABEL_20:
  v6 = 0;

  return IOSurfaceGetHeight(v6);
}

size_t sub_2717F3B94(uint64_t a1, size_t planeIndex)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 165, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_17;
      }

      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_22;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "IsValid()", 9, "", 0);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
LABEL_17:
      qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
      v7 = *(a1 + 8);
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_18:
      v8 = 0;
      goto LABEL_19;
    }

LABEL_22:
    abort();
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_6:
  v8 = *v7;
  v9 = *(v7 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v8 = v10;
    }
  }

LABEL_19:

  return IOSurfaceGetHeightOfPlane(v8, planeIndex);
}

size_t sub_2717F3D9C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 195, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, "", 0);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
LABEL_19:
      qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return IOSurfaceGetBytesPerElement(v6);
  }

LABEL_20:
  v6 = 0;

  return IOSurfaceGetBytesPerElement(v6);
}

size_t sub_2717F3FD8(uint64_t a1, size_t planeIndex)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 200, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_17;
      }

      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_22;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "IsValid()", 9, "", 0);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
LABEL_17:
      qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
      v7 = *(a1 + 8);
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_18:
      v8 = 0;
      goto LABEL_19;
    }

LABEL_22:
    abort();
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_6:
  v8 = *v7;
  v9 = *(v7 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v8 = v10;
    }
  }

LABEL_19:

  return IOSurfaceGetBytesPerElementOfPlane(v8, planeIndex);
}

size_t sub_2717F41E0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 205, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, "", 0);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
LABEL_19:
      qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return IOSurfaceGetBytesPerRow(v6);
  }

LABEL_20:
  v6 = 0;

  return IOSurfaceGetBytesPerRow(v6);
}

size_t sub_2717F441C(uint64_t a1, size_t planeIndex)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 210, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_17;
      }

      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_22;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "IsValid()", 9, "", 0);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
LABEL_17:
      qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
      v7 = *(a1 + 8);
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_18:
      v8 = 0;
      goto LABEL_19;
    }

LABEL_22:
    abort();
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_6:
  v8 = *v7;
  v9 = *(v7 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v8 = v10;
    }
  }

LABEL_19:

  return IOSurfaceGetBytesPerRowOfPlane(v8, planeIndex);
}

uint64_t sub_2717F4624(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 215, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, "", 0);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
LABEL_19:
      qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return IOSurfaceGetPixelFormat(v6);
  }

LABEL_20:
  v6 = 0;

  return IOSurfaceGetPixelFormat(v6);
}

uint64_t sub_2717F4860(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/src/IOSurfaceRef.cpp", 246, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_18;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, "", 0);
    }

    while (v7 != v8);
    if (byte_28087C430)
    {
      goto LABEL_12;
    }

LABEL_18:
    abort();
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = *(a1 + 8);
  v13 = v11;
  if (atomic_load_explicit((v11 + 104), memory_order_acquire) != -1)
  {
    v15 = &v13;
    v14 = &v15;
    std::__call_once((v11 + 104), &v14, sub_2717F5DD4);
  }

  return *(*(v11 + 112) + 8 * a2);
}

void sub_2717F4A38(void *a1, uint64_t a2)
{
  v13 = a1;
  sub_271120E64(a1, "IOSurface<", 10);
  v3 = *(a2 + 8);
  if (v3)
  {
    v5 = *v3;
    v4 = v3[1];
    if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v15 = 0;
      if (v5)
      {
LABEL_5:
        operator new();
      }
    }

    else
    {
      v15 = 0;
      if (v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  __p[0] = v14;
  __p[1] = "nullptr";
  __p[2] = v14;
  __p[3] = "nullptr";
  __p[4] = "nullptr";
  __dst = __p;
  sub_2711316E8(&__dst);
  if (v15 != -1)
  {
    __p[0] = &__dst;
    (off_288134A00[v15])(v11, __p, v14);
    if (v15 != -1)
    {
      (off_2881349E8[v15])(__p, v14);
    }

    if ((v12 & 0x80u) == 0)
    {
      v6 = v11;
    }

    else
    {
      v6 = v11[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v7 = v12;
    }

    else
    {
      v7 = v11[1];
    }

    sub_271120E64(v13, v6, v7);
    sub_271120E64(v13, ">{", 2);
    __dst = sub_2717F4860(a2, 0);
    v8 = sub_2711D3E90(&v13, &__dst);
    sub_271120E64(*v8, ", ", 2);
    sub_271120E64(*v8, "size: ", 6);
    v9 = sub_2717F3514(a2);
    v10 = sub_2717F3958(a2);
    v17 = v9;
    v18 = v10;
    sub_2717F5FD8();
  }

  sub_2711308D4();
}

void sub_2717F5C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  MEMORY[0x2743BF050](v9, 0x10B2C40EED050F3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717F5C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a29 < 0)
  {
    operator delete(__p);
    sub_271130878(&a20);
    _Unwind_Resume(a1);
  }

  sub_271130878(&a20);
  _Unwind_Resume(a1);
}

void sub_2717F5D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v17 = a17;
  a17 = 0;
  if (v17)
  {
    sub_27184D728(&a17, v17);
  }

  JUMPOUT(0x2717F5D98);
}

void sub_2717F5D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717F5DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    JUMPOUT(0x2717F5DC8);
  }

  JUMPOUT(0x2717F5DCCLL);
}

void sub_2717F5DD4(__IOSurface *****a1)
{
  v1 = **a1;
  v2 = *v1;
  v3 = **v1;
  if (v3)
  {
    if (!(IOSurfaceGetPlaneCount(v3) >> 61))
    {
      operator new();
    }

    sub_271135560();
  }

  v4 = v2[14];
  if (v4)
  {
    v2[15] = v4;
    operator delete(v4);
    v2[14] = 0;
    v2[15] = 0;
    v2[16] = 0;
  }

  v2[14] = 0;
  v2[15] = 0;
  v2[16] = 0;
}

void sub_2717F5EE8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288105AF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2717F5F3C(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    *(a1 + 144) = v2;
    operator delete(v2);
  }

  std::mutex::~mutex((a1 + 64));
  v3 = *(a1 + 32);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_2717F61F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = a9;
  a9 = 0;
  if (!v17)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27184D728(&a9, v17);
  _Unwind_Resume(exception_object);
}

uint64_t sub_2717F6264(int a1, unsigned int a2)
{
  if (a1 <= 1278226487)
  {
    if (a1 > 875704421)
    {
      if (a1 > 875836533)
      {
        if (a1 != 875836534)
        {
          v2 = 1094862674;
          v3 = 0x4000000004;
          if (a2 >= 2)
          {
            v4 = 0;
          }

          else
          {
            v4 = 0x4000000004;
          }

          v5 = v4 & 0x4000000000;
          v6 = 1111970369;
          goto LABEL_48;
        }
      }

      else if (a1 != 875704422 && a1 != 875704438 && a1 != 875836518)
      {
        return 0;
      }

      v37 = xmmword_2718B7610;
      if (a2 <= 2)
      {
        return *(&v37 + a2);
      }

      else
      {
        return 0;
      }
    }

    if (a1 <= 843264055)
    {
      if (a1 == 24)
      {
        v35 = 0xC000000003;
        if (a2 >= 2)
        {
          v35 = 0;
        }

        return v35 & 0xC0000000FFLL;
      }

      else
      {
        v7 = 0x4000000004;
        if (a2 >= 2)
        {
          v7 = 0;
        }

        v8 = 0xC000000003;
        if (a2 >= 2)
        {
          v8 = 0;
        }

        if (a1 == 842285639)
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        if (a1 == 842285639)
        {
          v10 = v8 & 0xC000000000;
        }

        else
        {
          v10 = 0;
        }

        if (a1 == 32)
        {
          v11 = v7 & 0x4000000000;
        }

        else
        {
          LOBYTE(v7) = v9;
          v11 = v10;
        }

        return v11 | v7;
      }
    }

    if (a1 != 843264056)
    {
      v13 = 843264102;
      v14 = 0x8000000008;
      if (a2 >= 2)
      {
        v14 = 0;
      }

      v15 = v14 & 0x8000000000;
      v16 = 843264104;
      v17 = 0x4000000004;
      if (a2 >= 2)
      {
        v17 = 0;
      }

      v18 = v17 & 0x4000000000;
      goto LABEL_73;
    }

LABEL_102:
    v34 = 0x4000000002;
    goto LABEL_107;
  }

  if (a1 <= 1647392358)
  {
    if (a1 > 1380401728)
    {
      if (a1 == 1380401729)
      {
        v36 = 0x4000000004;
        if (a2 >= 2)
        {
          v36 = 0;
        }

        return v36 & 0x40000000FFLL;
      }

      v13 = 1380410945;
      v14 = 0x10000000010;
      if (a2 >= 2)
      {
        v14 = 0;
      }

      v15 = v14 & 0x10000000000;
      v16 = 1380411457;
      goto LABEL_70;
    }

    if (a1 != 1278226488)
    {
      v2 = 1278226534;
      if (a2 >= 2)
      {
        v4 = 0;
      }

      else
      {
        v4 = 0x4000000004;
      }

      v5 = v4 & 0x4000000000;
      v6 = 1278226536;
      v3 = 0x4000000002;
      goto LABEL_48;
    }

    v34 = 0x4000000001;
LABEL_107:
    if (a2 >= 2)
    {
      v34 = 0;
    }

    return v34 & 0x40000000FFLL;
  }

  if (a1 <= 1717855599)
  {
    if (a1 != 1647392359)
    {
      v13 = 1647589490;
      v14 = 0xC000000006;
      if (a2 >= 2)
      {
        v14 = 0;
      }

      v15 = v14 & 0xC000000000;
      v16 = 1647719521;
LABEL_70:
      v17 = 0x8000000008;
      if (a2 >= 2)
      {
        v17 = 0;
      }

      v18 = v17 & 0x8000000000;
LABEL_73:
      v23 = a1 == v16;
      if (a1 == v16)
      {
        v24 = v17;
      }

      else
      {
        v24 = 0;
      }

      if (v23)
      {
        v25 = v18;
      }

      else
      {
        v25 = 0;
      }

      v26 = a1 == v13;
      if (a1 == v13)
      {
        v27 = v14;
      }

      else
      {
        v27 = v24;
      }

      if (v26)
      {
        v28 = v15;
      }

      else
      {
        v28 = v25;
      }

      return v28 | v27;
    }

    goto LABEL_102;
  }

  if (a1 <= 1751410031)
  {
    v2 = 1717855600;
    v3 = 0x4000000004;
    if (a2 >= 2)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0x4000000004;
    }

    v5 = v4 & 0x4000000000;
    v6 = 1717856627;
LABEL_48:
    if (a2 >= 2)
    {
      v3 = 0;
    }

    if (a1 == v6)
    {
      v19 = v3 & 0x4000000000;
    }

    else
    {
      LOBYTE(v3) = 0;
      v19 = 0;
    }

    v20 = a1 == v2;
    if (a1 == v2)
    {
      v21 = v4;
    }

    else
    {
      v21 = v3;
    }

    if (v20)
    {
      v22 = v5;
    }

    else
    {
      v22 = v19;
    }

    return v22 | v21;
  }

  v29 = 0x4000000002;
  if (a2 >= 2)
  {
    v30 = 0;
  }

  else
  {
    v30 = 0x4000000002;
  }

  if (a2 >= 2)
  {
    v29 = 0;
  }

  if (a1 == 1751411059)
  {
    v31 = v29 & 0x4000000000;
  }

  else
  {
    LOBYTE(v29) = 0;
    v31 = 0;
  }

  if (a1 == 1751410032)
  {
    v32 = v30;
  }

  else
  {
    v32 = v29;
  }

  if (a1 == 1751410032)
  {
    v33 = v30 & 0x4000000000;
  }

  else
  {
    v33 = v31;
  }

  return v33 | v32;
}

void sub_2717F66E4(uint64_t a1, int a2)
{
  v4[10] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v4[0] = 0;
  v4[1] = 0;
  __p = v4;
  sub_271810FE4();
}

void sub_2717F7B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  __cxa_guard_abort(&qword_28087C090);
  sub_27112F828(&a15);
  sub_27112F828(v28);
  _Unwind_Resume(a1);
}

void sub_2717F7E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_27112F828(v24);
    _Unwind_Resume(a1);
  }

  sub_27112F828(v24);
  _Unwind_Resume(a1);
}

CFIndex sub_2717F7FAC@<X0>(CFIndex result@<X0>, std::string *a2@<X8>)
{
  v4 = *result;
  v3 = *(result + 8);
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v5 = result;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    result = v5;
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else if (!v4)
  {
    goto LABEL_7;
  }

  value = 0;
  result = CFDictionaryGetValueIfPresent(*result, @"IOSurfaceName", &value);
  if (result)
  {
    return sub_2718098EC(value, a2);
  }

LABEL_7:
  a2->__r_.__value_.__s.__data_[0] = 0;
  a2[1].__r_.__value_.__s.__data_[0] = 0;
  return result;
}

uint64_t *sub_2717F8080(uint64_t *a1, uint64_t *a2)
{
  sub_2717F810C(a2, &__p);
  sub_2717F8BC0(a1, @"IOSurfaceName", &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_2717F80F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717F810C(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087C010, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087C010))
  {
    sub_2717F8230();
  }

  v4 = &xmmword_28087C098;
  v5 = byte_28087C0AF;
  if (byte_28087C0AF < 0)
  {
    v5 = *(&xmmword_28087C098 + 1);
    v4 = xmmword_28087C098;
  }

  v9[0] = v4;
  v9[1] = v5;
  v9[2] = "; ";
  v9[3] = 2;
  v6 = *(a1 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if ((v6 & 0x80u) != 0)
  {
    v6 = a1[1];
  }

  v9[4] = v7;
  v9[5] = v6;
  v9[6] = "; X/X";
  v9[7] = 5;
  sub_271131230(v9, &v10, 0, 0, a2);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2717F8230()
{
  v1 = *MEMORY[0x277D85DE8];
  sub_271809438(__p);
  sub_27180923C(__p);
}

void sub_2717F875C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a30 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a30 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(a25);
  _Unwind_Resume(exception_object);
}

uint64_t sub_2717F88C4(uint64_t a1, int *a2)
{
  v5 = 0;
  v7 = v4;
  v8 = "Unsupported pixel format value ";
  v9 = v4;
  v10 = "Unsupported pixel format value ";
  v11 = "Unsupported pixel format value ";
  v6.__r_.__value_.__r.__words[0] = &v7;
  sub_27115F008(&v6);
  std::to_string(&v6, *a2);
  v7 = v4;
  v8 = &v6;
  v9 = v4;
  v10 = &v6;
  v11 = &v6;
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v7;
  (off_288134A78[v5])(&v12, v4);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v7 = &v6;
  result = (off_288134A90[v5])(&v7, v4);
  if (v5 != -1)
  {
    return (off_288134A60[v5])(&v7, v4);
  }

  return result;
}

void sub_2717F89E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_2717F8A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271137AE8(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2717F89F0);
}

uint64_t sub_2717F8B14(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 16)
    {
      v6 = *(v4 - 8);
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }

  return a1;
}

uint64_t sub_2717F8BC0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v9 = a3;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    a3 = v9;
    if (v4)
    {
LABEL_4:
      v5 = *(a3 + 23);
      if (v5 >= 0)
      {
        v6 = a3;
      }

      else
      {
        v6 = *a3;
      }

      if (v5 >= 0)
      {
        v7 = *(a3 + 23);
      }

      else
      {
        v7 = *(a3 + 8);
      }

      v8 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v6, v7, 0x8000100u, 0);
      sub_2715CB2C0(&v11, v8);
    }
  }

  else if (v4)
  {
    goto LABEL_4;
  }

  return 0;
}

void sub_2717F8DE0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1 && (atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    if (v2)
    {
LABEL_4:
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      sub_271809D88(&value, Mutable);
    }
  }

  else if (v2)
  {
    goto LABEL_4;
  }
}

void sub_2717F916C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va1);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2717F9188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2717F919C(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 24) + 1;
  *(a1 + 24) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 && !*(a1 + 32))
      {
LABEL_5:
        v4 = (a1 + 40);

        goto LABEL_7;
      }
    }

    else if (v3 != 2 || *(a1 + 32))
    {
      goto LABEL_5;
    }

    IOSurfaceUnlock(*a1, v3, (a1 + 20));
    *(a1 + 16) = 0;
  }

  if (*(a1 + 32))
  {
    v5 = 2;
  }

  else
  {
    if (!*(a1 + 24))
    {
      goto LABEL_5;
    }

    v5 = 1;
  }

  IOSurfaceLock(*a1, v5, (a1 + 20));
  *(a1 + 16) = v5;
  v4 = (a1 + 40);

LABEL_7:
  std::mutex::unlock(v4);
}

void sub_2717F9298(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 32) + 1;
  *(a1 + 32) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      if (*(a1 + 24) && !v2)
      {
        goto LABEL_7;
      }
    }

    else if (v3 != 2 || v2 != 0)
    {
      goto LABEL_7;
    }

    IOSurfaceUnlock(*a1, v3, (a1 + 20));
    *(a1 + 16) = 0;
    v2 = *(a1 + 32);
  }

  if (v2)
  {
    v6 = 2;
    goto LABEL_17;
  }

  if (!*(a1 + 24))
  {
LABEL_7:
    v5 = (a1 + 40);

    goto LABEL_9;
  }

  v6 = 1;
LABEL_17:
  IOSurfaceLock(*a1, v6, (a1 + 20));
  *(a1 + 16) = v6;
  v5 = (a1 + 40);

LABEL_9:
  std::mutex::unlock(v5);
}

void sub_2717F9390(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 24) - 1;
  *(a1 + 24) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 && !*(a1 + 32))
      {
LABEL_5:
        v4 = (a1 + 40);

        goto LABEL_7;
      }
    }

    else if (v3 != 2 || *(a1 + 32))
    {
      goto LABEL_5;
    }

    IOSurfaceUnlock(*a1, v3, (a1 + 20));
    *(a1 + 16) = 0;
  }

  if (*(a1 + 32))
  {
    v5 = 2;
  }

  else
  {
    if (!*(a1 + 24))
    {
      goto LABEL_5;
    }

    v5 = 1;
  }

  IOSurfaceLock(*a1, v5, (a1 + 20));
  *(a1 + 16) = v5;
  v4 = (a1 + 40);

LABEL_7:
  std::mutex::unlock(v4);
}

void sub_2717F948C(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 32) - 1;
  *(a1 + 32) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      if (*(a1 + 24) && !v2)
      {
        goto LABEL_7;
      }
    }

    else if (v3 != 2 || v2 != 0)
    {
      goto LABEL_7;
    }

    IOSurfaceUnlock(*a1, v3, (a1 + 20));
    *(a1 + 16) = 0;
    v2 = *(a1 + 32);
  }

  if (v2)
  {
    v6 = 2;
    goto LABEL_17;
  }

  if (!*(a1 + 24))
  {
LABEL_7:
    v5 = (a1 + 40);

    goto LABEL_9;
  }

  v6 = 1;
LABEL_17:
  IOSurfaceLock(*a1, v6, (a1 + 20));
  *(a1 + 16) = v6;
  v5 = (a1 + 40);

LABEL_9:
  std::mutex::unlock(v5);
}

void *sub_2717F9584(void *a1, unsigned int *a2)
{
  __p[240] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087C320, memory_order_acquire) & 1) == 0)
  {
    v26 = a1;
    v27 = __cxa_guard_acquire(&qword_28087C320);
    a1 = v26;
    if (v27)
    {
      memcpy(__p, "800L", 0x780uLL);
      sub_2717F9C28(&qword_28087C308, __p, 80);
      __cxa_guard_release(&qword_28087C320);
      a1 = v26;
    }
  }

  v3 = qword_28087C310;
  if (!qword_28087C310)
  {
    goto LABEL_10;
  }

  v4 = *a2;
  v5 = &qword_28087C310;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= v4;
    v8 = v6 < v4;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 == &qword_28087C310 || v4 < *(v5 + 8))
  {
LABEL_10:
    v5 = &qword_28087C310;
  }

  if ((atomic_load_explicit(&qword_28087C320, memory_order_acquire) & 1) == 0)
  {
    v28 = a1;
    v29 = __cxa_guard_acquire(&qword_28087C320);
    a1 = v28;
    if (v29)
    {
      memcpy(__p, "800L", 0x780uLL);
      sub_2717F9C28(&qword_28087C308, __p, 80);
      __cxa_guard_release(&qword_28087C320);
      a1 = v28;
    }
  }

  if (v5 == &qword_28087C310)
  {
    v31 = *a2;
    v30 = sub_271120E64(a1, "Unknown pixel format '", 22);
    __p[1] = 0;
    __p[2] = 0x100000000000000;
    v10 = (&v31 + 3);
    __p[0] = HIBYTE(v31);
    v11 = 1;
    if ((&v31 + 3) == &v31)
    {
      v18 = 0;
    }

    else
    {
      do
      {
        v13 = *(v10 - 1);
        v10 = (v10 - 1);
        v12 = v13;
        v14 = SHIBYTE(__p[2]);
        if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
        {
          v14 = __p[1];
          v16 = ((__p[2] & 0x7FFFFFFFFFFFFFFFLL) - 1);
          if (v16 == __p[1])
          {
            if ((__p[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
            {
              sub_271120DA8();
            }

LABEL_22:
            operator new();
          }

          v15 = __p[0];
        }

        else
        {
          v15 = __p;
          if (SHIBYTE(__p[2]) == 22)
          {
            goto LABEL_22;
          }
        }

        *(v14 + v15) = v12;
        v17 = v14 + 1;
        if (SHIBYTE(__p[2]) < 0)
        {
          __p[1] = v17;
        }

        else
        {
          HIBYTE(__p[2]) = v17 & 0x7F;
        }

        *(v17 + v15) = 0;
      }

      while (v10 != &v31);
      v11 = HIBYTE(__p[2]);
      v18 = __p[1];
    }

    if ((v11 & 0x80u) == 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    if ((v11 & 0x80u) == 0)
    {
      v20 = v11;
    }

    else
    {
      v20 = v18;
    }

    v21 = sub_271120E64(v30, v19, v20);
    v22 = sub_271120E64(v21, "' (=", 4);
    v23 = MEMORY[0x2743BE7F0](v22, *a2);
    result = sub_271120E64(v23, ")", 1);
    if (SHIBYTE(__p[2]) < 0)
    {
      v24 = result;
      operator delete(__p[0]);
      result = v24;
    }
  }

  else
  {
    result = sub_271120E64(a1, v5[5], v5[6]);
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}