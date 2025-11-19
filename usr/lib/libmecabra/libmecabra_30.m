BOOL sub_299373CA0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v5) >> 3) <= a2)
  {
    return 1;
  }

  v6 = (*(v5 + 24 * a2) + 48 * a3);
  v7 = (*(v5 + 24 * a4) + 48 * a5);
  v8 = *(v6 + 46);
  if (v8 != 255)
  {
    v9 = *(v7 + 46);
    if (v9 != 255 && v8 != v9 && *(v6 + 47) == *(v7 + 47))
    {
      return 0;
    }
  }

  if (v6[4] != 1)
  {
    return 1;
  }

  v11 = *(v6 + 23);
  if (v11 < 0)
  {
    if (v6[1] != 1)
    {
      return 1;
    }

    v12 = **v6;
  }

  else
  {
    if (v11 != 1)
    {
      return 1;
    }

    v12 = *v6;
  }

  if (v12 != 12387)
  {
    if (v12 == 12435)
    {
      v15 = v7[22];
      if (!v7[22])
      {
        if (*(v7 + 23) < 0)
        {
          v7 = *v7;
        }

        v15 = *v7;
      }

      if ((atomic_load_explicit(&qword_2A14613F8, memory_order_acquire) & 1) == 0)
      {
        v18 = v15;
        v17 = __cxa_guard_acquire(&qword_2A14613F8);
        v15 = v18;
        if (v17)
        {
          qword_2A14613F0 = L"'aeinouyxa";
          __cxa_guard_release(&qword_2A14613F8);
          v15 = v18;
        }
      }

      for (i = 0; i != 16; i += 2)
      {
        if (*(qword_2A14613F0 + i) == v15)
        {
          break;
        }
      }

      return i == 16;
    }

    return 1;
  }

  return *(v6 + 22) == v7[22];
}

void sub_299373E34(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_299374948(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      v8 = v3;
      sub_29925A03C(&v8);
    }

    a1[1] = v7;
  }
}

uint64_t sub_299373EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    sub_299374B14(&v9, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v7 -= 3;
        v10 = v7;
        sub_29925A03C(&v10);
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

uint64_t sub_299373F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 8);
  sub_2993752B8(v11, a3);
  v5 = v4 + 24 * a2;
  v7 = *v5;
  v6 = *(v5 + 8);
  sub_2993752B8(v12, v11);
  v8 = sub_299374C30(v7, v6, v12);
  sub_299374B88(v5, v8, *(v5 + 8));
  sub_299375350(v12);
  result = sub_299375350(v11);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299374014(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_299375350(va1);
  sub_299375350(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299374044(uint64_t a1)
{
  *a1 = &unk_2A1F74930;
  v3 = (a1 + 8);
  sub_299259FC8(&v3);
  return MEMORY[0x29C29BFB0](a1, 0x10A1C407F0BD61ELL);
}

void sub_2993740B0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_299374114(a1, a2);
  }

  sub_2993740FC();
}

void sub_299374114(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_29919600C();
}

void sub_29937416C(uint64_t a1, __int128 **a2, __int128 **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_2992726D0(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_2993740B0(a1, v10);
    }

    sub_2993740FC();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    v12 = sub_299374590(a2, a3, v8);
    v13 = *(a1 + 8);
    while (v13 != v12)
    {
      v13 -= 3;
      v14 = v13;
      sub_29925A03C(&v14);
    }

    *(a1 + 8) = v12;
  }

  else
  {
    sub_299374590(a2, (a2 + v11), v8);
    *(a1 + 8) = sub_2993742D4(a1, (a2 + v11), a3, *(a1 + 8));
  }
}

void *sub_2993742D4(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v8 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_299374384(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 4));
      v6 += 3;
      v4 = v8 + 3;
      v8 += 3;
    }

    while (v6 != a3);
  }

  return v4;
}

uint64_t sub_299374384(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_29937440C(result, a4);
  }

  return result;
}

void sub_2993743EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29925A03C(&a9);
  _Unwind_Resume(a1);
}

void sub_29937440C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_29925A258(a1, a2);
  }

  sub_299212A8C();
}

char *sub_299374458(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v13 = __dst;
  v14 = __dst;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_29922C89C(v4, *v6, *(v6 + 1));
        v8 = v14;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      v9 = *(v6 + 24);
      *(v4 + 5) = *(v6 + 5);
      *(v4 + 24) = v9;
      v6 += 3;
      v4 = v8 + 48;
      v14 = v8 + 48;
    }

    while (v6 != a3);
  }

  v12 = 1;
  sub_29925A3AC(v11);
  return v4;
}

uint64_t sub_29937452C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 8);
    v4 = **(a1 + 16);
    while (v4 != v3)
    {
      v4 -= 3;
      v5 = v4;
      sub_29925A03C(&v5);
    }
  }

  return a1;
}

uint64_t *sub_299374590(__int128 **a1, __int128 **a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        sub_299374604(a3, *v5, v5[1], 0xAAAAAAAAAAAAAAABLL * (v5[1] - *v5));
      }

      v5 += 3;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

void sub_299374604(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) < a4)
  {
    sub_2993747B8(a1);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      sub_29937440C(a1, v10);
    }

    sub_299212A8C();
  }

  v11 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_2993747F8(v8, v6);
        v14 = *(v6 + 5);
        *(v8 + 24) = *(v6 + 24);
        *(v8 + 40) = v14;
        v6 += 3;
        v8 += 48;
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 25);
      v11 -= 6;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v12 = (v11 + a2 - v8);
    if (v11 != v8)
    {
      do
      {
        sub_2993747F8(v8, v6);
        v13 = *(v6 + 5);
        *(v8 + 24) = *(v6 + 24);
        *(v8 + 40) = v13;
        v6 += 3;
        v8 += 48;
      }

      while (v6 != v12);
      v11 = a1[1];
    }

    a1[1] = sub_299374458(a1, v12, a3, v11);
  }
}

void sub_2993747B8(uint64_t a1)
{
  if (*a1)
  {
    sub_29925A090(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void **sub_2993747F8(void **result, void **a2)
{
  if (result != a2)
  {
    if (*(result + 23) < 0)
    {
      v3 = a2[1];
      if (*(a2 + 23) >= 0)
      {
        v4 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v4 = v3;
      }

      return sub_2993748BC(result, a2, v4);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      return sub_299374848(result, *a2, a2[1]);
    }

    else
    {
      v2 = *a2;
      result[2] = a2[2];
      *result = v2;
    }
  }

  return result;
}

_BYTE *sub_299374848(_BYTE *__dst, void *__src, unint64_t a3)
{
  v5 = a3 > 0xA;
  v6 = a3 - 10;
  if (v5)
  {
    v7 = __dst[23];
    sub_29922C6D8(__dst, 0xAuLL, v6);
  }

  __dst[23] = a3;
  if (a3)
  {
    memmove(__dst, __src, 2 * a3);
  }

  *&__dst[2 * a3] = 0;
  return __dst;
}

void **sub_2993748BC(void **a1, void *__src, unint64_t a3)
{
  v5 = a1[2] & 0x7FFFFFFFFFFFFFFFLL;
  if (v5 <= a3)
  {
    v7 = a1[1];
    sub_29922C6D8(a1, v5 - 1, a3 - v5 + 1);
  }

  v6 = *a1;
  a1[1] = a3;
  if (a3)
  {
    memmove(v6, __src, 2 * a3);
  }

  *(v6 + a3) = 0;
  return a1;
}

void sub_299374948(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2993740FC();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_299374114(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_299374AB4(v18);
  }
}

uint64_t sub_299374AB4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    sub_29925A03C(&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_299374B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      sub_2993747B8(a4);
      *a4 = *v5;
      *(a4 + 16) = *(v5 + 16);
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      v5 += 24;
      a4 += 24;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void **sub_299374B88(uint64_t a1, void **a2, void **a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        sub_2993747F8(v7, v4);
        v8 = v4[5];
        *(v7 + 3) = *(v4 + 3);
        v7[5] = v8;
        v4 += 6;
        v7 += 6;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v9 = *(v6 - 25);
      v6 -= 6;
      if (v9 < 0)
      {
        operator delete(*v6);
      }
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t sub_299374C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (1)
    {
      v7 = *(a3 + 24);
      if (!v7)
      {
LABEL_15:
        sub_2991A2240();
      }

      if ((*(*v7 + 48))(v7, v3))
      {
        break;
      }

      v3 += 48;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 48; i != a2; i += 48)
      {
        v9 = *(a3 + 24);
        if (!v9)
        {
          goto LABEL_15;
        }

        if (((*(*v9 + 48))(v9, i) & 1) == 0)
        {
          sub_2993747F8(v3, i);
          v10 = *(i + 40);
          *(v3 + 24) = *(i + 24);
          *(v3 + 40) = v10;
          v3 += 48;
        }
      }
    }
  }

  return v3;
}

unint64_t *sub_299374D28(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2993740FC();
    }

    v13 = a2 - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v12;
    }

    v38 = a1;
    if (v15)
    {
      sub_299374114(a1, v15);
    }

    v23 = (8 * (v13 >> 3));
    v34 = 0;
    v35 = v23;
    v36 = v23;
    v37 = 0;
    v24 = &v23[3 * a5];
    v25 = 24 * a5;
    do
    {
      *v23 = 0;
      v23[1] = 0;
      v23[2] = 0;
      sub_299374384(v23, *v7, v7[1], 0xAAAAAAAAAAAAAAABLL * ((v7[1] - *v7) >> 4));
      v23 += 3;
      v7 += 3;
      v25 -= 24;
    }

    while (v25);
    v26 = v35;
    memcpy(v24, v5, a1[1] - v5);
    v27 = *a1;
    v28 = &v24[a1[1] - v5];
    a1[1] = v5;
    v29 = v5 - v27;
    v30 = v26 - (v5 - v27);
    memcpy(v30, v27, v29);
    v31 = *a1;
    *a1 = v30;
    a1[1] = v28;
    v32 = a1[2];
    a1[2] = v37;
    v36 = v31;
    v37 = v32;
    v34 = v31;
    v35 = v31;
    sub_299374AB4(&v34);
    return v26;
  }

  v16 = v10 - a2;
  if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
  {
    v22 = 3 * a5;
    sub_299374FDC(a1, a2, a1[1], a2 + 24 * a5);
    v21 = &v7[v22];
    v20 = v7;
    goto LABEL_18;
  }

  v39 = a1[1];
  v40 = v10;
  v34 = a1;
  v35 = &v39;
  v36 = &v40;
  v18 = v10;
  LOBYTE(v37) = 0;
  if ((a3 + v16) != a4)
  {
    v18 = v10;
    v19 = (a3 + v16);
    do
    {
      *v18 = 0;
      v18[1] = 0;
      v18[2] = 0;
      sub_299374384(v18, *v19, v19[1], 0xAAAAAAAAAAAAAAABLL * ((v19[1] - *v19) >> 4));
      v19 += 3;
      v18 = (v40 + 24);
      v40 += 24;
    }

    while (v19 != a4);
  }

  a1[1] = v18;
  if (v16 >= 1)
  {
    sub_299374FDC(a1, v5, v10, v5 + 24 * a5);
    v20 = v7;
    v21 = (v7 + v16);
LABEL_18:
    sub_2993750A4(v20, v21, v5);
  }

  return v5;
}

void sub_299374FB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29937452C(va);
  *(v2 + 8) = v3;
  _Unwind_Resume(a1);
}

__n128 sub_299374FDC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  if (v5 >= a3)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v6 = (a2 + v4 - a4);
    v7 = *(a1 + 8);
    do
    {
      v7->n128_u64[0] = 0;
      v7->n128_u64[1] = 0;
      v7[1].n128_u64[0] = 0;
      result = *v6;
      *v7 = *v6;
      v7[1].n128_u64[0] = v6[1].n128_u64[0];
      v6->n128_u64[0] = 0;
      v6->n128_u64[1] = 0;
      v6[1].n128_u64[0] = 0;
      v6 = (v6 + 24);
      v7 = (v7 + 24);
    }

    while (v6 < a3);
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v9 = 0;
    v10 = a4 - v4;
    do
    {
      v11 = v5 + v9;
      v12 = v4 + v9;
      sub_2993747B8(v4 + v9 - 24);
      result = *(v5 + v9 - 24);
      *(v12 - 24) = result;
      *(v12 - 8) = *(v5 + v9 - 8);
      *(v11 - 24) = 0;
      *(v11 - 16) = 0;
      *(v11 - 8) = 0;
      v9 -= 24;
    }

    while (v10 != v9);
  }

  return result;
}

void sub_2993750A4(__int128 **a1, __int128 **a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        sub_299374604(a3, *v5, v5[1], 0xAAAAAAAAAAAAAAABLL * (v5[1] - *v5));
      }

      v5 += 3;
      a3 += 3;
    }

    while (v5 != a2);
  }
}

uint64_t sub_299375188(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F749A8;
  a2[1] = v2;
  return result;
}

uint64_t sub_2993751B4(uint64_t a1, _WORD **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  v6 = *a2;
  if (*v6)
  {
    v7 = 0;
    do
    {
      v8 = v7 + 1;
    }

    while (v6[++v7]);
  }

  else
  {
    v8 = 0;
  }

  return sub_29922CC38(v5, v6, v8, a5);
}

uint64_t sub_2993751EC(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F74A18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299375238(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2993752B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_299375350(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_2993753D0(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = 0;
  v4 = 0;
  v5 = 0;
  (*(*a2 + 16))(__p, a2);
  operator new();
}

void sub_299375758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_299376ECC(&a25, 0);
  if (__p)
  {
    (*(*__p + 8))(__p);
  }

  a25 = v25 - 120;
  sub_299376E44(&a25);
  _Unwind_Resume(a1);
}

void sub_299375814(float ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v45 = **(a2 + 8);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*a4)
  {
    v5 = a3;
    v44 = 0;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      if (*v5 == v7)
      {
        break;
      }

      __src = 0;
      v56 = 0;
      v57 = 0;
      __p = 0;
      v53 = 0;
      v54 = 0;
      v8 = v7 - v6;
      if (*(a4 + 8) >= (v8 >> 3))
      {
        v9 = v8 >> 3;
      }

      else
      {
        v9 = *(a4 + 8);
      }

      if (v9)
      {
        if (!(v9 >> 61))
        {
          v58[4] = &__src;
          sub_29921EA5C(v9);
        }

        sub_299212A8C();
      }

      v10 = *(a4 + 16);
      (*(**(a2 + 16) + 80))(v50);
      v43 = __src;
      if (v56 != __src)
      {
        v11 = 0;
        do
        {
          (*(**(a2 + 16) + 96))(&v51);
          v12 = *(a4 + 16);
          if (v12)
          {
            v13 = 0;
            v46 = v11;
            do
            {
              v14 = (v50[0] + 8 * v12 * v11 + 8 * v13);
              v15 = *v14;
              v16 = *(v14 + 1);
              v17 = *(*(*(a2 + 16) + 8) + 8);
              v18 = (*(*v17 + 512))(v17, *v14);
              v20 = v18;
              v21 = v19;
              if ((v45 & 0x2000) != 0 || !v19)
              {
LABEL_19:
                if (!sub_299358910(*(*(a2 + 16) + 8), v15))
                {
                  v24 = 0;
                  v25 = v21 + v20;
                  while (1)
                  {
                    v26 = &(&off_29EF13658)[v24];
                    v27 = (&off_29EF13658)[v24 + 1];
                    if (!v27)
                    {
                      break;
                    }

                    if (v21 >= v27)
                    {
                      v28 = *v26;
                      v29 = **v26;
                      v30 = v21;
                      v31 = v20;
                      do
                      {
                        v32 = v30 - v27;
                        if (v32 == -1)
                        {
                          break;
                        }

                        v33 = memchr(v31, v29, v32 + 1);
                        if (!v33)
                        {
                          break;
                        }

                        v34 = v33;
                        if (!memcmp(v33, v28, v27))
                        {
                          if (v34 == v25 || v34 - v20 == -1)
                          {
                            break;
                          }

                          goto LABEL_20;
                        }

                        v31 = v34 + 1;
                        v30 = (v25 - (v34 + 1));
                      }

                      while (v30 >= v27);
                    }

                    v24 += 2;
                    if (v24 == 30)
                    {
                      if (v44 != *a4 - 1 || sub_299251220(v20, v21))
                      {
                        if (v44)
                        {
                          goto LABEL_39;
                        }

                        if (v21 != 3 || (*v20 == 38626 ? (v37 = *(v20 + 2) == 129) : (v37 = 0), !v37))
                        {
                          v38 = *(a5 + 24);
                          v58[0] = v20;
                          v58[1] = v21;
                          if (!v38)
                          {
                            sub_2991A2240();
                          }

                          if ((*(*v38 + 48))(v38, v58))
                          {
LABEL_39:
                            v35 = v16 + *v43[v46];
                            if (*a1 == a1[1] || (v35 / ***a1) <= *(a4 + 24))
                            {
                              (*(*v51 + 16))(&v49);
                              v36 = v43[v46];
                              operator new();
                            }
                          }
                        }
                      }

                      break;
                    }
                  }
                }
              }

              else
              {
                v22 = v19;
                v23 = v18;
                while (*v23 < 0)
                {
                  ++v23;
                  v22 = (v22 - 1);
                  if (!v22)
                  {
                    goto LABEL_19;
                  }
                }
              }

LABEL_20:
              ++v13;
              v11 = v46;
              v12 = *(a4 + 16);
            }

            while (v13 < v12);
          }

          v39 = v51;
          v51 = 0;
          if (v39)
          {
            (*(*v39 + 8))(v39);
          }

          ++v11;
          v43 = __src;
          v5 = a3;
        }

        while (v11 < (v56 - __src) >> 3);
      }

      if (v50[0])
      {
        v50[1] = v50[0];
        operator delete(v50[0]);
      }

      if (__p)
      {
        v53 = __p;
        operator delete(__p);
      }

      v58[0] = &__src;
      sub_299376E44(v58);
      ++v44;
    }

    while (v44 < *a4);
  }
}

void sub_299376228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t *__p, uint64_t *a26, uint64_t a27, uint64_t a28)
{
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  __p = &a28;
  sub_299376E44(&__p);
  a28 = a12;
  sub_299376E44(&a28);
  _Unwind_Resume(a1);
}

void *sub_2993763B8(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 3;
  if (v4 >= 2)
  {
    v5 = 0;
    v16 = *v2;
    *v2 = 0;
    v6 = v2;
    do
    {
      v7 = &v6[v5 + 1];
      v8 = (2 * v5) | 1;
      v9 = 2 * v5 + 2;
      if (v9 < v4)
      {
        v10 = sub_299377050(*v7, v6[v5 + 2]);
        v11 = v10 ? 8 : 0;
        v7 = (v7 + v11);
        if (v10)
        {
          v8 = v9;
        }
      }

      v12 = *v7;
      *v7 = 0;
      sub_299376ECC(v6, v12);
      v6 = v7;
      v5 = v8;
    }

    while (v8 <= ((v4 - 2) >> 1));
    v13 = (v3 - 8);
    if ((v3 - 8) == v7)
    {
      sub_299376ECC(v7, v16);
    }

    else
    {
      v14 = *v13;
      *v13 = 0;
      sub_299376ECC(v7, v14);
      sub_299376ECC((v3 - 8), v16);
      sub_299376F7C(v2, (v7 + 1), v7 + 1 - v2);
    }

    v3 = *(a1 + 8);
  }

  result = sub_299376ECC((v3 - 8), 0);
  *(a1 + 8) = v3 - 8;
  return result;
}

void sub_2993764F0(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45[4] = *MEMORY[0x29EDCA608];
  memset(v45, 0, 24);
  v8 = *a2;
  if (a2[1] != *a2)
  {
    v9 = *(a1 + 16);
    v10 = (*(**v8 + 32))();
    v11 = (*(**(*(v9 + 8) + 8) + 512))(*(*(v9 + 8) + 8), v10);
    v13 = v12;
    (*(**v8 + 16))(__p);
    sub_299251220(v11, v13);
    operator new();
  }

  sub_2993770BC(v43, a5);
  sub_299375814(v44, a1, v45, a4, v43);
  sub_29921F0A8(v43);
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (a3)
  {
    do
    {
      v14 = v44[0];
      if (v44[0] == v44[1])
      {
        break;
      }

      if (*(*v44[0] + 40) == 1)
      {
        sub_2993581C0(*(*(a1 + 16) + 8), &v40);
        v15 = std::string::insert(&v40, 0, " ", 1uLL);
        v16 = *&v15->__r_.__value_.__l.__data_;
        v39 = v15->__r_.__value_.__r.__words[2];
        *__p = v16;
        v15->__r_.__value_.__l.__size_ = 0;
        v15->__r_.__value_.__r.__words[2] = 0;
        v15->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        sub_2993581C0(*(*(a1 + 16) + 8), __p);
      }

      v17 = *v14;
      v19 = *(a6 + 8);
      v18 = *(a6 + 16);
      if (v19 >= v18)
      {
        v21 = (v19 - *a6) >> 5;
        if ((v21 + 1) >> 59)
        {
          sub_299212A8C();
        }

        v22 = v18 - *a6;
        v23 = v22 >> 4;
        if (v22 >> 4 <= (v21 + 1))
        {
          v23 = v21 + 1;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFE0)
        {
          v24 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v23;
        }

        v42 = a6;
        if (v24)
        {
          sub_299376DA8(v24);
        }

        v26 = 32 * v21;
        v40.__r_.__value_.__r.__words[0] = 0;
        v40.__r_.__value_.__l.__size_ = v26;
        v27 = 0;
        v40.__r_.__value_.__r.__words[2] = v26;
        v41 = 0;
        if (SHIBYTE(v39) < 0)
        {
          sub_2991A110C(v26, __p[0], __p[1]);
          v30 = v40.__r_.__value_.__r.__words[2];
          size = v40.__r_.__value_.__l.__size_;
          v27 = v41;
        }

        else
        {
          v28 = *__p;
          *(v26 + 16) = v39;
          *v26 = v28;
          size = v26;
          v30 = v26;
        }

        *(v26 + 24) = *v17;
        v25 = v30 + 32;
        v31 = *(a6 + 8) - *a6;
        v32 = size - v31;
        memcpy((size - v31), *a6, v31);
        v33 = *a6;
        *a6 = v32;
        *(a6 + 8) = v25;
        v34 = *(a6 + 16);
        *(a6 + 16) = v27;
        v40.__r_.__value_.__r.__words[2] = v33;
        v41 = v34;
        v40.__r_.__value_.__r.__words[0] = v33;
        v40.__r_.__value_.__l.__size_ = v33;
        sub_2992CA0B4(&v40);
      }

      else
      {
        if (SHIBYTE(v39) < 0)
        {
          sub_2991A110C(*(a6 + 8), __p[0], __p[1]);
        }

        else
        {
          v20 = *__p;
          *(v19 + 16) = v39;
          *v19 = v20;
        }

        *(v19 + 24) = *v17;
        v25 = v19 + 32;
      }

      *(a6 + 8) = v25;
      sub_2993763B8(v44);
      if (SHIBYTE(v39) < 0)
      {
        operator delete(__p[0]);
      }
    }

    while (a3 > (*(a6 + 8) - *a6) >> 5);
  }

  v40.__r_.__value_.__r.__words[0] = v44;
  sub_299376E44(&v40);
  v40.__r_.__value_.__r.__words[0] = v45;
  sub_299376E44(&v40);
  v35 = *MEMORY[0x29EDCA608];
}

void sub_2993769B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_29921F0A8(&a27);
  a31 = v31 - 128;
  sub_299376E44(&a31);
  _Unwind_Resume(a1);
}

void sub_299376AB0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v27 = *MEMORY[0x29EDCA608];
  v6 = sub_2993652F8(0xAu);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_2993652F8(0xAu);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v16 = (*(*a2 + 56))(a2);
      v17 = "Montreal";
      if (v16 == 1)
      {
        v17 = "RNNLM";
      }

      *__p = 136315138;
      *&__p[4] = v17;
      _os_log_debug_impl(&dword_29918C000, v7, OS_LOG_TYPE_DEBUG, "[Prediction Engine: %s]", __p, 0xCu);
    }

    memset(&v22, 0, sizeof(v22));
    v8 = *(a1 + 8);
    for (i = *(a1 + 16); v8 != i; ++v8)
    {
      std::to_string(&v21, *v8);
      v10 = std::string::append(&v21, " ", 1uLL);
      v11 = *&v10->__r_.__value_.__l.__data_;
      *&__p[16] = *(&v10->__r_.__value_.__l + 2);
      *__p = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      if (__p[23] >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = *__p;
      }

      if (__p[23] >= 0)
      {
        v13 = __p[23];
      }

      else
      {
        v13 = *&__p[8];
      }

      std::string::append(&v22, v12, v13);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }
    }

    v14 = sub_2993652F8(0xAu);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_2993581C0(a2[1], &v21);
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v21;
      }

      else
      {
        v18 = v21.__r_.__value_.__r.__words[0];
      }

      v19 = &v22;
      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v19 = v22.__r_.__value_.__r.__words[0];
      }

      v20 = *a1;
      *__p = 136315906;
      *&__p[4] = a3;
      *&__p[12] = 2080;
      *&__p[14] = v18;
      *&__p[22] = 2080;
      v24 = v19;
      v25 = 2048;
      v26 = v20;
      _os_log_debug_impl(&dword_29918C000, v14, OS_LOG_TYPE_DEBUG, "%s: %s (%sprob:%f)", __p, 0x2Au);
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  v15 = *MEMORY[0x29EDCA608];
}

void sub_299376D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299376DA8(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_299376DF0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_299376ECC((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_299376E44(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        sub_299376ECC(--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_299376ECC(void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_299376F18(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

void *sub_299376F18(void *a1)
{
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void *sub_299376F7C(void *result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v4 = result;
    v5 = v3 >> 1;
    v6 = &result[v3 >> 1];
    v8 = (a2 - 8);
    v7 = *(a2 - 8);
    result = sub_299377050(*v6, v7);
    if (result)
    {
      *v8 = 0;
      v9 = *v6;
      do
      {
        v10 = v6;
        *v6 = 0;
        sub_299376ECC(v8, v9);
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = &v4[v5];
        v9 = *v6;
        v8 = v10;
      }

      while (sub_299377050(*v6, v7));

      return sub_299376ECC(v10, v7);
    }
  }

  return result;
}

BOOL sub_299377050(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return *a1 < *a2;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = *(a1 + 16) - v2;
  v5 = v4 >> 2;
  v6 = (*(a2 + 16) - v3) >> 2;
  if (v6 >= v4 >> 2)
  {
    v7 = v4 >> 2;
  }

  else
  {
    v7 = (*(a2 + 16) - v3) >> 2;
  }

  if (v7 < 1)
  {
    return v5 < v6;
  }

  else
  {
    while (1)
    {
      v8 = *v2 < *v3;
      if (*v2 != *v3)
      {
        break;
      }

      ++v2;
      ++v3;
      if (!--v7)
      {
        return v5 < v6;
      }
    }
  }

  return v8;
}

uint64_t sub_2993770BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_299377154(uint64_t a1)
{
  result = (*(*a1 + 24))(a1);
  if (result)
  {
    if ((*(*a1 + 56))(a1))
    {
      return 1;
    }

    else
    {
      v3 = *(*a1 + 216);

      return v3(a1);
    }
  }

  return result;
}

uint64_t sub_29937720C(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = v1 - *a1;
  if (v3 == 4)
  {
    if (*v2 == 1)
    {
      return 1;
    }
  }

  else if (v3 >= 9)
  {
    v2 = v1 - 2;
  }

  for (i = *(a1 + 8); i != v2; --i)
  {
    v5 = *(i - 1);
    if (i == v1 && v5 == 502)
    {
      break;
    }

    if (v5 >= 0x258)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_299377274(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 1;
  }

  v4 = *(v2 - 4);
  v5 = sub_299384558(a2, *(v2 - 4));
  if (!v5 && (*(*a2 + 40))(a2, v4, 0, 0) >= -7.0)
  {
    return 1;
  }

  return v5;
}

uint64_t sub_299377308(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  result = LMLanguageModelTokenIDisUnknown();
  if (result)
  {
    return !sub_299384558(a1, a2);
  }

  return result;
}

uint64_t sub_299377348(int **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 == *a1)
  {
    return 0;
  }

  v6 = v3 - 1;
  v7 = 1;
  while (*v6 == 1)
  {
LABEL_6:
    result = 0;
    v9 = v7 & (v6-- != v2);
    v7 = 0;
    if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  if (sub_299377308(a2, *v6))
  {
    v2 = *a1;
    goto LABEL_6;
  }

  return 1;
}

void sub_2993773F4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1F74A78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_299377448(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_299377470(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  v3 = sub_29928A270(a2);
  CFArrayAppendValue(*(a1 + 8), v3);
}

void sub_2993774CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = sub_2993B2710(*(*(a1 + 16) + 4));
  sub_2993B2928(v9, *(a2 + 8));
  v10 = 1;
  (*(*v9 + 24))(v9, *(a2 + 8), 1);
  v11 = *(*(a1 + 16) + 40);
  v12 = sub_29922EBB4();
  v13 = v12;
  if ((*(*a3 + 239) & 1) == 0)
  {
    if (a5 == 9)
    {
      v10 = sub_2992364F0(v12);
    }

    else
    {
      v10 = 0;
    }
  }

  if (sub_299377708(*(*(a1 + 16) + 64), v13, v10))
  {
    operator new();
  }

  operator new();
}

void sub_299377694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

CFStringRef sub_299377708(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 && *(a1 + 104) == 1 && a3 && (*(a1 + 105) & 1) == 0)
  {
    return CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @" %@", a2);
  }

  else
  {
    return 0;
  }
}

void sub_299377768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = (*(*a2 + 56))(a2);
  v10 = *(*(a1 + 16) + 40);
  v11 = *v9;
  v12 = v9[1];
  v13 = sub_29922EBB4();
  if (a5 != 14 || !CEMStringIsSingleEmoji())
  {
    if (*(a2 + 8) == 8)
    {
      v14 = *(a1 + 16);
      v15 = *(v14 + 72);
      if (v15)
      {
        v16 = *(v15 + 8);
        if (*(v16 + 5) != 1 || (v17 = *(v16 + 40)) == 0)
        {
          v17 = *(v16 + 32);
        }
      }

      else
      {
        v17 = 0;
      }

      sub_29939D674(a2, v17, (*(v14 + 64) + 48));
      if (*(a2 + 104) >= 2uLL)
      {
        operator new();
      }
    }

    if (*(*a3 + 239))
    {
      v18 = 1;
    }

    else if (a5 == 9)
    {
      v18 = sub_2992364F0(v13);
    }

    else
    {
      v18 = 0;
    }

    if (sub_299377708(*(*(a1 + 16) + 64), v13, v18))
    {
      operator new();
    }

    operator new();
  }

  if (v13)
  {
    CFRelease(v13);
  }
}

void sub_299377BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = *MEMORY[0x29EDCA608];
  *(a1 + 16) = 0;
  *a1 = &unk_2A1F74AC8;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = a3;
  sub_299308180(a1 + 56, 0, 0);
  sub_2993A1948(a1 + 80, a2, a1, a4, a5, a6);
}

void sub_299377EB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299381EE4(va);
  sub_29921B8CC(v2 + 1248, *v3);
  sub_2992530BC((v2 + 1232), 0);
  sub_2992530BC((v2 + 1208), 0);
  sub_2992530BC((v2 + 1184), 0);
  sub_2992530BC((v2 + 1160), 0);
  sub_2992530BC((v2 + 1136), 0);
  sub_2992530BC((v2 + 1112), 0);
  v5 = *(v2 + 1080);
  if (v5)
  {
    *(v2 + 1088) = v5;
    operator delete(v5);
  }

  sub_299382A7C((v2 + 960));
  sub_2993A2468(v2 + 80);
  sub_29930830C((v2 + 56));
  sub_29937EDC0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299377FC4(uint64_t a1)
{
  *a1 = &unk_2A1F74AC8;
  v2 = *(a1 + 1064);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 952);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 1296);
  if (v4)
  {
    CFRelease(v4);
  }

  sub_29921B8CC(a1 + 1248, *(a1 + 1256));
  sub_2992530BC((a1 + 1232), 0);
  sub_2992530BC((a1 + 1208), 0);
  sub_2992530BC((a1 + 1184), 0);
  sub_2992530BC((a1 + 1160), 0);
  sub_2992530BC((a1 + 1136), 0);
  sub_2992530BC((a1 + 1112), 0);
  v5 = *(a1 + 1080);
  if (v5)
  {
    *(a1 + 1088) = v5;
    operator delete(v5);
  }

  sub_299382A7C((a1 + 960));
  sub_2993A2468(a1 + 80);
  sub_29930830C((a1 + 56));
  v7 = (a1 + 16);
  sub_29937EDC0(&v7);
  return a1;
}

void sub_299378104(uint64_t a1)
{
  sub_299377FC4(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29937813C(uint64_t a1, char **a2, uint64_t a3)
{
  v6 = (**a2)(a2);
  v7 = *a2;
  if (v6 == 2)
  {
    v8 = *v7;
    v9 = __dynamic_cast(a2, &unk_2A1F6F680, &unk_2A1F6E330, 0);
    v10 = (a3 & 1) != 0 || v9[16] == 2;
    sub_299378364(a1, v9, v10);
    goto LABEL_11;
  }

  if (!(*v7)(a2))
  {
    goto LABEL_8;
  }

  if ((**a2)(a2) != 1)
  {
    if ((**a2)(a2) == 3)
    {
      v15 = **a2;
      v16 = __dynamic_cast(a2, &unk_2A1F6F680, &unk_2A1F6F7F8, 0);
      sub_2993785C0(a1, v16);
    }

    goto LABEL_11;
  }

  if (*(a1 + 1328) != 1)
  {
LABEL_8:
    sub_299378404(a1, a2);
LABEL_11:
    v13 = 1;
    goto LABEL_12;
  }

  v11 = **a2;
  v12 = __dynamic_cast(a2, &unk_2A1F6F680, &unk_2A1F6F810, 0);
  v13 = sub_29937850C(a1, v12, a3);
LABEL_12:
  sub_299378634(a1, a2, a3);
  return v13;
}

void sub_299378364(uint64_t a1, uint64_t a2, int a3)
{
  sub_2993786F0(a1, 2);
  if (!*(a1 + 1272))
  {
    sub_299320418(*(a1 + 1320), a2);
  }

  sub_2993AD344(a1 + 80, a2, a3);
  if (a3)
  {
    v6 = *(a1 + 872);
    if (v6 >= 1)
    {
      sub_2992F601C(a1 + 16, 2, v6);

      sub_299378B9C(a1);
    }
  }
}

char *sub_299378404(uint64_t a1, uint64_t a2)
{
  sub_2993A3F74(a1 + 80, a2, *(*(a1 + 8) + 24));
  v4 = *(a1 + 96);
  if (*(a1 + 88) == v4 || (*(*(v4 - 8) + 168) - 1) >= 2)
  {
    v5 = (*(*a2 + 8))(a2);
    sub_2992F5D88((a1 + 16), 0, v5);
  }

  sub_299320710(*(a1 + 1320));
  if (*(*(a1 + 8) + 32) != 1)
  {
    sub_299378B9C(a1);
  }

  result = sub_29930AF10();
  if (*result == 1 && (result[9] & 8) != 0)
  {
    v7 = *(**(a1 + 952) + 88);

    return v7();
  }

  return result;
}

uint64_t sub_29937850C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a2 + 8))(a2);
  sub_2992F5D88(a1 + 2, 1, v6);
  sub_2993786F0(a1, 1);
  v7 = sub_2993AD430(a1 + 10, a2, a3);
  if (v7)
  {
    if (a3)
    {
      v8 = a1[109];
      if (v8 >= 1)
      {
        sub_2992F601C((a1 + 2), 1, v8);
        sub_299378B9C(a1);
      }
    }
  }

  return v7;
}

void sub_2993785C0(void *a1, uint64_t a2)
{
  sub_299379160(a1);
  sub_2993AC530(a1 + 10, a2);
  sub_299320710(a1[165]);
  v4 = a1[109];
  if (v4 >= 1)
  {
    sub_2992F601C((a1 + 2), 2, v4);

    sub_299378B9C(a1);
  }
}

_DWORD *sub_299378634(uint64_t a1, char **a2, char a3)
{
  result = (**a2)(a2);
  if (result != 2 || (v7 = **a2, result = __dynamic_cast(a2, &unk_2A1F6F680, &unk_2A1F6E330, 0), result[16] == 2) && (a3 & 1) == 0)
  {
    *(a1 + 1313) = 1;
  }

  return result;
}

void sub_2993786F0(uint64_t a1, int a2)
{
  v4 = a1 + 80;
  v5 = 832;
  if (a2 == 2)
  {
    v5 = 824;
  }

  v6 = *(v4 + v5);
  if (v6)
  {
    v7 = (*(*v6 + 32))(v6) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 944);
  if (v8)
  {
    LODWORD(v8) = *(v8 + 16) != *(v8 + 8);
  }

  if (((v7 | v8) & 1) == 0)
  {
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    if (v9 == v10)
    {
      goto LABEL_15;
    }

    v11 = 0;
    do
    {
      v12 = *v9++;
      v11 += (*(*v12 + 32))(v12);
    }

    while (v9 != v10);
    if (!v11 || (v13 = *(a1 + 24), *(a1 + 16) != v13) && ((*(**(v13 - 8) + 24))(*(v13 - 8)) & 1) != 0)
    {
LABEL_15:
      v24 = 0;
      v14 = *(*(a1 + 8) + 64);
      if (!v14 || ((*(*v14 + 24))(v14) & 1) != 0 || (v15 = *(*(a1 + 8) + 64), v16 = *(v15 + 72), v16 == *(v15 + 80)) || (v17 = *v16) == 0)
      {
        v20 = 0;
      }

      else
      {
        v18 = **v17;
        v19 = __dynamic_cast(v17, &unk_2A1F64300, &unk_2A1F752F0, 0);
        v20 = v19;
        if (v19)
        {
          v21 = (*(*v19 + 232))(v19);
          (*(*v20 + 432))(__p, v20, 0);
          v20 = sub_299279BF8(__p);
          v24 = v20;
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          goto LABEL_24;
        }
      }

      v21 = 0;
LABEL_24:
      sub_2993AC5F8(v4, v21, v20, a2);
      if (v20)
      {
        CFRelease(v20);
      }

      return;
    }

    v22 = (*(**(a1 + 952) + 104))(*(a1 + 952));
    if (v22)
    {

      sub_2993AC5CC(v4, (v22 + 32), a2);
    }
  }
}

void sub_2993789C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, const void *a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_299229F00(&a12, 0);
  _Unwind_Resume(a1);
}

__CFArray *sub_2993789FC(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  v6 = (*(*a3 + 56))(a3);
  (*(*a3 + 432))(&__p, a3, 1);
  v7 = (*(*a3 + 560))(a3);
  v8 = __p;
  if (!v6 || __p == v13 || (v13 - __p) >> 1 != (v7[1] - *v7) >> 2)
  {
    v10 = 0;
    if (!__p)
    {
      return v10;
    }

LABEL_9:
    v13 = v8;
    operator delete(v8);
    return v10;
  }

  v9 = sub_299279BF8(&__p);
  v10 = sub_2993ACB8C(a1 + 80, a2, v6, v9, v7);
  if (v9)
  {
    CFRelease(v9);
  }

  v8 = __p;
  if (__p)
  {
    goto LABEL_9;
  }

  return v10;
}

void sub_299378B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  sub_299229F00(&a9, 0);
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_299378B9C(uint64_t a1)
{
  *(a1 + 1312) = 0;
  sub_299366EDC(*(a1 + 48));
  v2 = *(a1 + 576);
  (*(**(a1 + 952) + 16))(*(a1 + 952), v2);
  v3 = *(a1 + 1280);
  if (v3 != 0xFFFF && v2 <= v3)
  {
    v5 = v2 - 1;
    if (!v2)
    {
      v5 = 0xFFFFLL;
    }

    *(a1 + 1280) = v5;
  }

  v6 = *(a1 + 96) - *(a1 + 88);
  if (v6)
  {
    v7 = *(a1 + 16);
    v8 = *(*(a1 + 8) + 24);
    v42 = ((v6 << 29) - 0x100000000) >> 32;
    v9 = *(a1 + 24);
    if (v7 == v9)
    {
      v12 = -1;
    }

    else
    {
      v10 = 0;
      do
      {
        v11 = *v7++;
        v10 += (*(*v11 + 32))(v11);
      }

      while (v7 != v9);
      v12 = v10 - 1;
    }

    v13 = v42;
    *(a1 + 1288) = v42 == v12;
    *(a1 + 1152) = 1;
    CFArrayRemoveAllValues(*(a1 + 1160));
    *(a1 + 1104) = 1;
    CFArrayRemoveAllValues(*(a1 + 1112));
    if ((v8 & 0x800) != 0)
    {
      v38 = (*(a1 + 48) + 72);

      sub_299379858(a1, v38, v42, 1);
    }

    else
    {
      if (v2 <= v42)
      {
        v41 = v12;
        do
        {
          v14 = *(a1 + 24);
          if (*(a1 + 16) == v14 || !(*(**(v14 - 8) + 24))(*(v14 - 8)))
          {
            v17 = v13 == v12 && v2 == v13;
            *(a1 + 1288) = v17;
            sub_299365ED4(*(a1 + 48), &__p);
            sub_299379858(a1, &__p, v2, 1);
            if (__p)
            {
              v44 = __p;
              operator delete(__p);
            }

            sub_299365D74(*(a1 + 48), &__p);
            sub_299379858(a1, &__p, v2, 0);
            if (__p)
            {
              v44 = __p;
              operator delete(__p);
            }

            v15 = v2 + 1;
            if ((v2 & 0x80000000) == 0)
            {
              v18 = *(a1 + 88);
              if ((v2 & 0x7FFFFFFF) < (*(a1 + 96) - v18) >> 3)
              {
                v20 = *(v18 + 8 * (v2 & 0x7FFFFFFF)) + 104;
                v19 = *v20;
                if (*(v20 + 8) != *v20)
                {
                  v21 = *v19;
                  if (*v19)
                  {
                    v22 = 1;
                    do
                    {
                      if ((*(*v21 + 64))(v21) != 7)
                      {
                        v23 = (*(*v21 + 64))(v21);
                        if (v23 == 6)
                        {
                          v24 = 5;
                        }

                        else
                        {
                          v24 = 4;
                        }

                        v25 = (*(*v21 + 32))(v21);
                        v26 = (*(*v21 + 112))(v21);
                        v27 = *(*(a1 + 8) + 48);
                        LODWORD(__p) = 0;
                        sub_299321FD8(v27, *v26, v26[1], &__p);
                        v28 = __p;
                        if (!__p)
                        {
                          v29 = v26[1];
                          if (v29)
                          {
                            v30 = *v26;
                            while (1)
                            {
                              v32 = *v30++;
                              v31 = v32;
                              if (v32 > 0xFFuLL || (*(MEMORY[0x29EDCA600] + 4 * v31 + 60) & 0x400) == 0)
                              {
                                break;
                              }

                              if (!--v29)
                              {
                                goto LABEL_47;
                              }
                            }

                            if (v23 == 6)
                            {
                              v28 = 502;
                            }

                            else
                            {
                              v28 = 0;
                            }
                          }

                          else
                          {
LABEL_47:
                            v28 = 501;
                          }
                        }

                        v33 = *(a1 + 952);
                        v34 = (*(*v21 + 104))(v21);
                        v35 = (*(*v21 + 112))(v21);
                        (*(*v33 + 48))(v33, v34, v25, v24, v35, v28, v2 + 1);
                      }

                      v21 = sub_2993A33CC(a1 + 80, v2, v22++);
                    }

                    while (v21);
                    v13 = v42;
                  }

                  v12 = v41;
                }
              }
            }
          }

          else
          {
            *(a1 + 1288) = v2 == v13;
            *(*(a1 + 8) + 80) = v2 == v13;
            sub_299365ED4(*(a1 + 48), &__p);
            sub_299379858(a1, &__p, v2, 1);
            if (__p)
            {
              v44 = __p;
              operator delete(__p);
            }

            v15 = v2 + 1;
          }

          v2 = v15;
        }

        while (v15 <= v13);
      }

      v36 = *(a1 + 8);
      if (!*(v36 + 98) && *(a1 + 1288) == 1 && (*(v36 + 27) & 8) == 0)
      {
        if (*(a1 + 16) == *(a1 + 24))
        {
          v37 = 0;
        }

        else
        {
          v37 = *(a1 + 40) ^ 1;
        }

        (*(**(a1 + 952) + 96))(*(a1 + 952));
        if ((v37 & 1) == 0)
        {
          sub_299379AAC(a1);
          sub_299379C60(a1);
        }

        v39 = *(a1 + 16);
        v40 = *(a1 + 24);
        while (v39 != v40)
        {
          if ((*(**v39 + 56))() == 1)
          {
            goto LABEL_72;
          }

          v39 += 8;
        }

        sub_299379F08(a1);
        sub_29937A6BC(a1, (*(a1 + 48) + 72));
LABEL_72:
        if ((v37 & 1) == 0)
        {
          sub_29937ABB4(a1);
        }
      }
    }
  }
}

void sub_29937913C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299379160(uint64_t a1)
{
  *(a1 + 1312) = 0;
  sub_2992F5C7C((a1 + 16));
  *(a1 + 40) = 1;
  (*(**(a1 + 952) + 16))(*(a1 + 952), 0);
  sub_299382C74(a1 + 960, *(a1 + 960));
  *(a1 + 992) = 0u;
  sub_29930B9C8(a1 + 1008);
  sub_2993A2620(a1 + 80, 0, 1);
  *(a1 + 1072) = 0;
  *(a1 + 1088) = *(a1 + 1080);
  *(a1 + 1128) = 1;
  CFArrayRemoveAllValues(*(a1 + 1136));
  *(a1 + 1152) = 1;
  CFArrayRemoveAllValues(*(a1 + 1160));
  *(a1 + 1176) = 1;
  CFArrayRemoveAllValues(*(a1 + 1184));
  *(a1 + 1200) = 1;
  CFArrayRemoveAllValues(*(a1 + 1208));
  sub_29921B8CC(a1 + 1248, *(a1 + 1256));
  *(a1 + 1248) = a1 + 1256;
  *(a1 + 1256) = 0u;
  *(a1 + 1224) = 1;
  CFArrayRemoveAllValues(*(a1 + 1232));
  *(a1 + 1104) = 1;
  CFArrayRemoveAllValues(*(a1 + 1112));
  *(a1 + 1280) = 0xFFFFLL;
  *(a1 + 616) = 1;
  sub_29931FE84(*(a1 + 1320));
  v2 = *(a1 + 1296);

  CFSetRemoveAllValues(v2);
}

void sub_29937928C(uint64_t a1, unsigned int a2, int a3, void *a4)
{
  sub_2993717E4(*(a1 + 8), a2, a3, a4);
  sub_299365A58(*(a1 + 48));
  sub_2993A28A4((a1 + 80), *(a1 + 8), a4);
  v6 = *(a1 + 1320);

  sub_299320328(v6, a4);
}

uint64_t sub_2993792E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v31 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    goto LABEL_22;
  }

  v7 = *a3;
  v8 = *a4;
  if (*a3)
  {
    v9 = *(v7 + 8);
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v9 = 0;
    if (!v8)
    {
LABEL_22:
      result = 1;
      goto LABEL_23;
    }
  }

  result = 1;
  if (v9)
  {
    v11 = *(v8 + 8);
    if (v11)
    {
      if (*(v7 + 41) & 1) != 0 && (*(v8 + 41))
      {
        if (v9 <= 2)
        {
          v12 = *(v7 + 16);
        }

        else
        {
          v12 = (*(v7 + 16) + 2 * v9 - 4);
        }

        if (v9 >= 2)
        {
          v13 = 2;
        }

        else
        {
          v13 = v9;
        }

        if (v11 >= 2)
        {
          v14 = 2;
        }

        else
        {
          v14 = *(v8 + 8);
        }

        v29[0] = 0;
        v29[1] = v29;
        v29[2] = 0x2000000000;
        v30 = 0;
        v27[0] = 0;
        v27[1] = v27;
        v27[2] = 0x2000000000;
        v28 = 0;
        v22[0] = MEMORY[0x29EDCA5F8];
        v22[1] = 0x40000000;
        v23 = sub_29937EE14;
        v24 = &unk_29EF139D8;
        v25 = v27;
        v26 = v29;
        if (sub_29937EE14(v22, v14, *(v8 + 32)))
        {
          _Block_object_dispose(v27, 8);
          _Block_object_dispose(v29, 8);
          goto LABEL_22;
        }

        v15 = v23(v22, v13, *(v7 + 32) + 4 * *(v7 + 8) - 4 * v13);
        _Block_object_dispose(v27, 8);
        _Block_object_dispose(v29, 8);
        if (v15)
        {
          goto LABEL_22;
        }

        v21 = &v21;
        MEMORY[0x2A1C7C4A8](v16);
        v19 = (&v22[-1] - v18);
        memcpy(&v22[-1] - v18, v12, 2 * v13);
        memcpy(&v19[v13], *(v8 + 16), 2 * v14);
        if (v11 == 1)
        {
          if (a4[2] + a2 == (*(a1 + 96) - *(a1 + 88)) >> 3)
          {
            v20 = a4[2];
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }

        result = sub_2993AD50C(a1 + 80, a2 - v13, v19, v14 + v13, v20);
      }
    }
  }

LABEL_23:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_299379578(uint64_t a1, uint64_t a2)
{
  *(a1 + 1152) = 1;
  CFArrayRemoveAllValues(*(a1 + 1160));
  v4 = *(*(a1 + 48) + 304);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 0x40000000;
  v6[2] = sub_299379614;
  v6[3] = &unk_29EF13748;
  v6[4] = a1;
  sub_2993736D8(v4, a2, v6);
  return a1 + 1152;
}

void sub_299379614(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v4 = CFStringCreateWithCharacters(0, *(a2 + 16), *(a2 + 24));
  valuePtr = &unk_2A1F73CB8;
  v8 = 0;
  v9 = 0;
  Length = CFStringGetLength(v4);
  v12 = 0xFFFFFFFFLL;
  v11 = 64;
  memset(v3, 0, sizeof(v3));
  v5 = v3;
  v6 = 0;
  operator new();
}

void sub_2993797BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_299379858(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  v8 = *(a1 + 8);
  if (!*(v8 + 98))
  {
    v14 = *(v8 + 64);
    if (!v14 || (v15 = *(v14 + 8)) == 0 || sub_299225D3C(v15, kMecabraContextOptionPrivateMode) != *MEMORY[0x29EDB8F00])
    {
      __p = 0;
      v24 = 0;
      v25 = 0;
      sub_299367070(&__p, *a2, a2[1], (a2[1] - *a2) >> 3);
      goto LABEL_20;
    }

    v8 = *(a1 + 8);
  }

  v9 = *(v8 + 64);
  if (v9)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      if (sub_299225D3C(v10, kMecabraContextOptionPrivateMode) == *MEMORY[0x29EDB8F00])
      {
        sub_29937B414(&__p, *a2, a2[1]);
        goto LABEL_20;
      }

      v8 = *(a1 + 8);
    }
  }

  if (*(v8 + 98))
  {
    v11 = *a2;
    v12 = a2[1];
    if (*a2 != v12)
    {
      while ((*(**v11 + 16))() != 17)
      {
        v11 += 8;
        if (v11 == v12)
        {
          v11 = v12;
          break;
        }
      }

      v12 = a2[1];
    }

    if (v11 != v12)
    {
      v13 = *v11;
      operator new();
    }
  }

  __p = 0;
  v24 = 0;
  v25 = 0;
LABEL_20:
  v16 = __p;
  if (__p != v24)
  {
    v17 = *(a1 + 8);
    v18 = v17[6];
    if ((v18 & 0x800) != 0)
    {
      v19 = (*v17 == 5) << 16;
    }

    else
    {
      v19 = 0;
    }

    v20 = *(a1 + 1064);
    v21[0] = MEMORY[0x29EDCA5F8];
    v21[1] = 0x40000000;
    v21[2] = sub_29937B6E0;
    v21[3] = &unk_29EF13768;
    v22 = a4;
    v21[4] = a1;
    v21[5] = &__p;
    sub_29936F6E4(v20, &__p, a3, a4 & 0xFEFFFFFF | (((v18 >> 14) & 1) << 24) | v19, v21);
    v16 = __p;
  }

  if (v16)
  {
    v24 = v16;
    operator delete(v16);
  }
}

void sub_299379A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299379AAC(uint64_t a1)
{
  *(a1 + 1104) = 1;
  CFArrayRemoveAllValues(*(a1 + 1112));
  if (sub_29937D0F8(a1))
  {
    v2 = (*(**(a1 + 952) + 104))(*(a1 + 952));
    if ((*(v2 + 9) & 1) == 0)
    {
      v3 = v2;
      sub_29937D1C4(a1, (v2 + 32), 0);
      if (!CFArrayGetCount(*(a1 + 1112)) && *(v3 + 8) == 1)
      {
        __p = 0;
        v10 = 0;
        v11 = 0;
        v4 = (*(**(a1 + 952) + 72))(*(a1 + 952), 0, &unk_2A1F74B80);
        if (v4)
        {
          do
          {
            if ((*(*v4 + 8) - 1) >= 2)
            {
              v5 = **(*v4 + 16);
              if (!v5)
              {
                v10 = __p;
                goto LABEL_16;
              }

              v6 = *(v5 + 8);
              for (i = (*(v5 + 16) + 2 * v6 - 2); (--v6 & 0x8000000000000000) == 0; i = v8)
              {
                v8 = i - 2;
                sub_299258250(&__p, __p, i);
              }
            }

            v4 = v4[1];
          }

          while (v4);
          if (__p != v10)
          {
            goto LABEL_17;
          }
        }

LABEL_16:
        sub_2993A354C(a1 + 80, (v3 + 56), &__p);
LABEL_17:
        sub_29937D1C4(a1, &__p, 1);
        if (__p)
        {
          v10 = __p;
          operator delete(__p);
        }
      }
    }
  }
}

void sub_299379C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299379C60(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1[6];
  if ((v2 & 0x8014800) != 0)
  {
    return;
  }

  if (*v1 == 5)
  {
    if ((v2 & 0x400000) == 0)
    {
      return;
    }

    goto LABEL_24;
  }

  v4 = (*(**(a1 + 952) + 104))(*(a1 + 952));
  v5 = (*(**(a1 + 952) + 104))(*(a1 + 952));
  v6 = *(v5 + 32);
  v7 = *(v5 + 40);
  v8 = (v7 - v6) >> 1;
  if (v7 - v6 != 2)
  {
    if (v8 > 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (*v6 != -1)
  {
LABEL_10:
    if (*(v4 + 8) != 1)
    {
      return;
    }

LABEL_11:
    v23 = 0;
    v24 = 0;
    __p = 0;
    sub_299215EC0(&__p, v6, v7, (v7 - v6) >> 1);
    sub_2993A3420(a1 + 80, &__p, v8, &v25);
    if (__p)
    {
      v23 = __p;
      operator delete(__p);
    }

    v9 = v25;
    v10 = v26;
    v11 = v26 - v25;
    if (v11 < 3)
    {
      goto LABEL_21;
    }

    if (v25 == v26)
    {
      goto LABEL_28;
    }

    v12 = 0;
    v13 = v25;
    do
    {
      if ((*(*(*v13 + 8) + 8) & 1) != 0 || sub_2993B0110(*v13))
      {
        ++v12;
      }

      ++v13;
    }

    while (v13 != v10);
    if (vcvtd_n_f64_u64(v11, 1uLL) >= v12)
    {
LABEL_28:
      v14 = 0;
      if (!v9)
      {
LABEL_23:
        if ((v14 & 1) == 0)
        {
          return;
        }

        goto LABEL_24;
      }
    }

    else
    {
LABEL_21:
      v14 = 1;
      if (!v9)
      {
        goto LABEL_23;
      }
    }

    v26 = v9;
    operator delete(v9);
    goto LABEL_23;
  }

LABEL_24:
  v15 = **(a1 + 8);
  sub_299365E08(*(a1 + 48), &v25);
  v16 = *(a1 + 1064);
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 1174405120;
  v17[2] = sub_29937D804;
  v17[3] = &unk_2A1F74B30;
  v17[4] = a1;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  sub_299367070(&v18, v25, v26, v26 - v25);
  v21 = v15 == 5;
  sub_2993704F4(v16, &v25, v15 == 5, v17);
  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }
}

void sub_299379EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299379F08(uint64_t a1)
{
  v54 = *MEMORY[0x29EDCA608];
  if ((*(*(a1 + 8) + 24) & 4) != 0)
  {
    goto LABEL_37;
  }

  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2000000000;
  v43 = 1;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2000000000;
  v41[3] = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2000000000;
  v40[3] = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2000000000;
  v39[3] = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2000000000;
  v38[3] = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3802000000;
  v36[3] = sub_29937C370;
  v36[5] = 0;
  v37 = 0;
  v36[4] = sub_29937C380;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2000000000;
  v35 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2000000000;
  v33 = 1;
  v2 = *(a1 + 952);
  v30[4] = a1;
  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 0x40000000;
  v31[2] = sub_29937CA4C;
  v31[3] = &unk_29EF13820;
  v31[4] = a1;
  v29[12] = a1;
  v30[0] = MEMORY[0x29EDCA5F8];
  v30[1] = 0x40000000;
  v30[2] = sub_29937CA5C;
  v30[3] = &unk_29EF13840;
  v29[0] = MEMORY[0x29EDCA5F8];
  v29[1] = 0x40000000;
  v29[2] = sub_29937CA6C;
  v29[3] = &unk_29EF13868;
  v29[4] = v42;
  v29[5] = v40;
  v29[6] = v41;
  v29[7] = v39;
  v29[8] = v38;
  v29[9] = v32;
  v29[10] = v34;
  v29[11] = v36;
  (*(*v2 + 24))(v2, a1 + 1248, v31, v30, v29);
  v3 = *(a1 + 24);
  if (*(a1 + 16) != v3 && *(a1 + 40) == 1)
  {
    v4 = (*(**(v3 - 8) + 48))(*(v3 - 8));
    v5 = v4;
    if (v4)
    {
      Length = CFStringGetLength(v4);
      v9 = *(a1 + 624);
      if (v9)
      {
        v10 = objc_msgSend_prefixes(**v9, v6, v7);
        sub_2993F66CC(v10, v11, v12, &v49);
      }

      else
      {
        v50 = 0;
        v49 = 0;
        v51 = 0;
      }

      Mutable = CFSetCreateMutable(0, 0, MEMORY[0x29EDB9030]);
      v48 = Mutable;
      theSet = *(a1 + 1296);
      v14 = (*(**(a1 + 952) + 104))(*(a1 + 952));
      *(a1 + 1200) = 1;
      CFArrayRemoveAllValues(*(a1 + 1208));
      *(a1 + 1224) = 1;
      CFArrayRemoveAllValues(*(a1 + 1232));
      v15 = v49;
      v16 = v50;
      if (v49 != v50)
      {
        theString = v5;
        v17 = 0;
        do
        {
          v18 = CFStringGetLength(*(v15 + 2));
          v19 = v18;
          if (v18 <= 64 && Length <= 64)
          {
            v20 = *(v14 + 56);
            v21 = *(v14 + 64);
            if (v20 != v21)
            {
              while (*v20 != *(v15 + 1))
              {
                if (++v20 == v21)
                {
                  goto LABEL_19;
                }
              }
            }

            if (v20 == v21)
            {
LABEL_19:
              v17 |= CFSetContainsValue(theSet, *(v15 + 2)) != 0;
            }

            else
            {
              v22 = *(v15 + 2);
              if (v18 == Length)
              {
                sub_29937E3F8(a1, v22);
                sub_29937E4DC(a1, theString, theString, *(v15 + 2));
              }

              if (sub_29937E3F8(a1, v22) >= -8.5)
              {
                v55.location = 0;
                v55.length = Length;
                CFStringGetCharacters(theString, v55, buffer);
                v56.location = 0;
                v56.length = v19;
                CFStringGetCharacters(*(v15 + 2), v56, v53);
                v23 = *(v15 + 1);
                *&v47 = v53;
                *(&v47 + 1) = v19;
                v45[0] = 0;
                v45[1] = CFStringCreateWithCharacters(0, buffer, v23);
                v45[2] = v23;
                v46 = xmmword_29941F0A0;
                sub_29939E7C8(v44, 5, &v47, 0, v45);
                operator new();
              }
            }
          }

          v15 += 72;
        }

        while (v15 != v16);
        if (v17)
        {
          goto LABEL_28;
        }
      }

      Count = CFSetGetCount(theSet);
      if (Count == CFArrayGetCount(*(a1 + 1208)))
      {
        *(a1 + 1200) = 0;
        if (!Mutable)
        {
LABEL_32:
          if (v49)
          {
            v50 = v49;
            operator delete(v49);
          }

          goto LABEL_34;
        }
      }

      else
      {
LABEL_28:
        v25 = *(a1 + 1296);
        if (v25)
        {
          CFRelease(v25);
        }

        *(a1 + 1296) = CFRetain(Mutable);
        if (!Mutable)
        {
          goto LABEL_32;
        }
      }

      CFRelease(Mutable);
      goto LABEL_32;
    }
  }

LABEL_34:
  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);
  if (v37)
  {
    sub_2991A893C(v37);
  }

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v40, 8);
  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v42, 8);
LABEL_37:
  v26 = *MEMORY[0x29EDCA608];
}

void sub_29937A574(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2991EDA10(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29937A6BC(uint64_t a1, uint64_t *a2)
{
  v4 = *(*(a1 + 8) + 24);
  __p = 0;
  v55 = 0;
  v56 = 0;
  sub_299215EC0(&__p, *(a1 + 664), *(a1 + 672), (*(a1 + 672) - *(a1 + 664)) >> 1);
  v5 = *(a1 + 96) - *(a1 + 88);
  *(a1 + 616) = v5 == 8;
  v52 = v4;
  v6 = v4 & 0x4000;
  v8 = __p;
  v7 = v55;
  v9 = *(a1 + 24);
  if (*(a1 + 16) == v9)
  {
    if (!v6)
    {
      goto LABEL_20;
    }

    goto LABEL_9;
  }

  v10 = (*(**(v9 - 8) + 24))(*(v9 - 8));
  if (v6)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
LABEL_9:
    if ((v52 & 0x8000) == 0 && v7 != v8)
    {
      v12 = __p;
      if (__p != v55)
      {
        v13 = __p + 2;
        if (__p + 2 != v55)
        {
          v14 = *__p;
          v15 = __p + 2;
          do
          {
            v17 = *v15;
            v15 += 2;
            v16 = v17;
            v18 = v14 >= v17;
            if (v14 <= v17)
            {
              v14 = v16;
            }

            if (!v18)
            {
              v12 = v13;
            }

            v13 = v15;
          }

          while (v15 != v55);
        }
      }

      if (v5 >> 3 <= *v12 + 2)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_20;
  }

  if (v10)
  {
    goto LABEL_24;
  }

LABEL_20:
  v19 = *(a1 + 1088);
  v20 = *(a1 + 1080);
  if (v7 - v8 != v19 - v20 || (v52 & 4) != 0)
  {
    goto LABEL_24;
  }

  v34 = __p;
  if (__p == v55)
  {
    v22 = 0;
  }

  else
  {
    if (v20 == v19)
    {
LABEL_24:
      v22 = 1;
      goto LABEL_25;
    }

    do
    {
      v35 = *(a1 + 1080);
      while (*v35 != *v34)
      {
        if (++v35 == v19)
        {
          goto LABEL_24;
        }
      }

      v22 = 0;
      v34 += 2;
    }

    while (v34 != v55);
  }

LABEL_25:
  v23 = *(a1 + 24);
  if (*(a1 + 16) != v23 && ((*(**(v23 - 8) + 24))(*(v23 - 8)) & 1) != 0 || (v52 & 0x2000) != 0 || **(a1 + 8) == 5 || (v24 = (*(**(a1 + 952) + 104))(*(a1 + 952)), v25 = *(v24 + 64), v25 == *(v24 + 56)))
  {
    if (!v22)
    {
      goto LABEL_79;
    }

    v27 = *(a1 + 1080);
    v26 = -1;
    goto LABEL_37;
  }

  v26 = *(v25 - 8) - 1;
  v27 = *(a1 + 1080);
  v28 = *(a1 + 1088);
  v29 = v27;
  if (v27 != v28)
  {
    v29 = *(a1 + 1080);
    while (*v29 != v26)
    {
      if (++v29 == v28)
      {
        goto LABEL_37;
      }
    }
  }

  if (v29 == v28)
  {
    v42 = 1;
  }

  else
  {
    v42 = v22;
  }

  if (v42)
  {
LABEL_37:
    v30 = a1 + 1080;
    *(a1 + 1088) = v27;
    if ((a1 + 1080) != &__p)
    {
      sub_299223494((a1 + 1080), __p, v55, (v55 - __p) >> 1);
    }

    if (v26 != 0xFFFF)
    {
      v31 = *(a1 + 1088);
      v32 = *(a1 + 1096);
      if (v31 >= v32)
      {
        v36 = *v30;
        v37 = v31 - *v30;
        v38 = v37 >> 1;
        if (v37 >> 1 <= -2)
        {
          sub_299212A8C();
        }

        v39 = v32 - v36;
        if (v39 <= v38 + 1)
        {
          v40 = v38 + 1;
        }

        else
        {
          v40 = v39;
        }

        v18 = v39 >= 0x7FFFFFFFFFFFFFFELL;
        v41 = 0x7FFFFFFFFFFFFFFFLL;
        if (!v18)
        {
          v41 = v40;
        }

        if (v41)
        {
          sub_299212A48(a1 + 1080, v41);
        }

        v43 = (2 * v38);
        v30 = &v43[-(v37 >> 1)];
        *v43 = v26;
        v33 = v43 + 1;
        memcpy(v30, v36, v37);
        v44 = *(a1 + 1080);
        *(a1 + 1080) = v30;
        *(a1 + 1088) = v33;
        *(a1 + 1096) = 0;
        if (v44)
        {
          operator delete(v44);
        }
      }

      else
      {
        *v31 = v26;
        v33 = v31 + 1;
      }

      *(a1 + 1088) = v33;
    }

    *(a1 + 1128) = 1;
    CFArrayRemoveAllValues(*(a1 + 1136));
    v45 = *(a1 + 1080);
    if (*(a1 + 1088) != v45)
    {
      v46 = 0xFFFFFFFFLL;
      if (v6)
      {
        v30 = (*(a1 + 648) - *(a1 + 640)) >> 3;
        if (v30 >= 2)
        {
          if (sub_2993A94BC(a1 + 80, 0, *v45 + 1))
          {
            v46 = 0x258 / v30;
          }

          else
          {
            v46 = 0xFFFFFFFFLL;
          }
        }
      }

      v47 = *(a1 + 1080);
      v48 = *(a1 + 1088);
      if (v47 != v48)
      {
        v49 = (v6 << 10) | 0x101;
        do
        {
          v50 = *v47;
          if ((v52 & 4) == 0 || ((*(a1 + 96) - *(a1 + 88)) >> 3) - 1 <= v50)
          {
            v51 = *(a1 + 1064);
            v53[0] = MEMORY[0x29EDCA5F8];
            v53[1] = 0x40000000;
            v53[2] = sub_29937CCBC;
            v53[3] = &unk_29EF13888;
            v53[4] = a1;
            v53[5] = a2;
            v53[6] = v46;
            v30 = v30 & 0xFFFFFFFF00000000 | v49;
            sub_29936F6E4(v51, a2, v50, v30, v53);
          }

          ++v47;
        }

        while (v47 != v48);
      }
    }
  }

LABEL_79:
  *(a1 + 616) = 1;
  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }
}

void sub_29937AB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29937ABB4(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  if ((*(*(a1 + 8) + 25) & 0x40) != 0)
  {
    LOBYTE(v20) = 0;
    v4 = 0;
    if (sub_29937E900(a1, 0, 0))
    {
      v5 = *(a1 + 24);
      if (*(a1 + 16) == v5 || *(a1 + 40) != 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = (*(**(v5 - 8) + 48))(*(v5 - 8));
      }

      LOBYTE(v20) = 0;
      v9 = *(a1 + 1320);
      v22 = &unk_2A1F74DB0;
      v23 = a1;
      theString[0] = &v20;
      theString[1] = &v22;
      sub_29931F1CC(v9, v6, 0, 2, &v22, 0);
      sub_29924AA10(&v22);
      if (sub_29937E900(a1, 1, 0))
      {
        LOBYTE(v20) = 1;
        v10 = *(a1 + 1320);
        v22 = &unk_2A1F74DB0;
        v23 = a1;
        theString[0] = &v20;
        theString[1] = &v22;
        sub_29931F1CC(v10, v6, 0, 2, &v22, 1);
        sub_29924AA10(&v22);
        v4 = CFArrayGetCount(*(a1 + 1232)) != 0;
      }

      else
      {
        v4 = 0;
      }

      if (sub_29937E900(a1, 1, 0))
      {
        LOBYTE(v20) = 0;
        v11 = *(a1 + 1320);
        v22 = &unk_2A1F74DB0;
        v23 = a1;
        theString[0] = &v20;
        theString[1] = &v22;
        sub_29931F1CC(v11, v6, 5, 1, &v22, 0);
        sub_29924AA10(&v22);
      }
    }

    result = CFArrayGetCount(*(a1 + 1232));
    if (result)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 1232), 0);
      v15 = objc_msgSend_rawCandidate(ValueAtIndex, v13, v14);
      result = (*(*v15 + 392))(v15);
      if (v4)
      {
        v17 = 1;
      }

      else
      {
        v18 = v16;
        result = (*(**(a1 + 952) + 104))(*(a1 + 952));
        v17 = v18 + *(result + 16) > 3.0;
      }

      *(a1 + 1312) = v17;
    }
  }

  else
  {
    v2 = *(a1 + 24);
    if (*(a1 + 16) == v2 || *(a1 + 40) != 1 || (v3 = (*(**(v2 - 8) + 48))(*(v2 - 8))) == 0 || CFStringGetLength(v3) == 1)
    {
      sub_29931FF38(*(a1 + 1320));
    }

    result = sub_29937E900(a1, 1, 1);
    if (result)
    {
      v20 = 0uLL;
      v21 = 0;
      v8 = *(a1 + 1320);
      theString[1] = 0;
      operator new();
    }
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29937B398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29937EC70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29937B414(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_299367070(a1, a2, a3, (a3 - a2) >> 3);
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    while (1)
    {
      v7 = *v5;
      result = (*(**v5 + 16))(*v5);
      if (result == 10)
      {
        break;
      }

      result = (*(*v7 + 16))(v7);
      if (result == 11)
      {
        break;
      }

      result = (*(*v7 + 16))(v7);
      if (result == 9)
      {
        break;
      }

      result = (*(*v7 + 16))(v7);
      if (result == 14)
      {
        break;
      }

      if (++v5 == v6)
      {
        v5 = v6;
        goto LABEL_17;
      }
    }

    if (v5 != v6)
    {
      for (i = v5 + 1; i != v6; ++i)
      {
        v9 = *i;
        result = (*(**i + 16))(*i);
        if (result != 10)
        {
          result = (*(*v9 + 16))(v9);
          if (result != 11)
          {
            result = (*(*v9 + 16))(v9);
            if (result != 9)
            {
              result = (*(*v9 + 16))(v9);
              if (result != 14)
              {
                *v5++ = *i;
              }
            }
          }
        }
      }
    }
  }

LABEL_17:
  if (v5 != a1[1])
  {
    v10 = a1[1];
    a1[1] = v5;
  }

  return result;
}

void sub_29937B654(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29937B674(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 != 17)
  {
    return 1;
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 98);
  if (!*(v3 + 98))
  {
    return 1;
  }

  sub_2993B2710(*(v3 + 4));
  v6 = *(a3 + 8);
  if (v6)
  {
      ;
    }

    LODWORD(v6) = *v6;
  }

  return v4 == v6;
}

void sub_29937B6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v60 = v5;
  if (*(a1 + 48) != 1)
  {
    v10 = (a2 + 56 * (a3 - 1));
    v11 = *(a2 + 64);
    v12 = v10[1];
    if (v12)
    {
      if (!*v10)
      {
        v59 = 0;
        goto LABEL_64;
      }

      v5 = *(a1 + 40);
      v13 = v12 + 1 == (*(**v10 + 40))(*v10);
    }

    else
    {
      v13 = 1;
    }

    v59 = v13;
LABEL_64:
    if ((*(*(v6 + 8) + 24) & 0x4001) == 0 && v11 >= 0)
    {
      v41 = *(v6 + 88);
      if ((v11 & 0x7FFFFFFF) < ((*(v6 + 96) - v41) >> 3))
      {
        v43 = *(v41 + 8 * (v11 & 0x7FFFFFFF)) + 104;
        v42 = *v43;
        if (*(v43 + 8) != *v43)
        {
          v44 = *v42 == 0;
        }
      }
    }

    v46 = v10[4];
    for (i = v10[5]; v46 != i; v46 += 32)
    {
      v47 = (*(**(*v5 + 8 * *v46) + 16))(*(*v5 + 8 * *v46));
      if (v47 - 9 >= 8)
      {
        v48 = v47 > 7 || ((1 << v47) & 0xA1) == 0;
        if (v48 && !v59)
        {
          continue;
        }
      }

      if (v46[25] == 1)
      {
        sub_2992A8B8C(*(*(v6 + 8) + 24), v47, 0);
        operator new[]();
      }
    }

    return;
  }

  v58 = *(*(v6 + 8) + 24);
  v7 = a2 + 56 * a3;
  v51 = *(a2 + 64);
  v8 = *(v7 - 48);
  if (v8)
  {
    v9 = v8 - (*(**(v7 - 56) + 40))(*(v7 - 56)) + 1;
  }

  else
  {
    v9 = 0;
  }

  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3802000000;
  v68[3] = sub_29937C370;
  v68[5] = 0;
  v69 = 0;
  v68[4] = sub_29937C380;
  v14 = *(v7 - 24);
  v15 = *(v7 - 16);
  v50 = a2 + 56 * a3;
  if (v14 != v15)
  {
    v57 = 0;
    LOBYTE(v56) = 0;
    v16 = 0;
    v55 = 0;
    v52 = 1;
    do
    {
      v17 = *(*v5 + 8 * *v14);
      v18 = (*(*v17 + 16))(v17);
      v19 = v18;
      if (!v9 || v18 - 9 < 8 || (v18 <= 7 ? (v20 = ((1 << v18) & 0xA1) == 0) : (v20 = 1), !v20))
      {
        if (v14[25] == 1)
        {
          v21 = sub_2992A8B8C(*(*(v6 + 8) + 24), v18, 0);
          if (!v16)
          {
            v22 = *(v6 + 1272);
            v16 = sub_299382AD4(v6 + 1008);
            sub_299396DA0(v16, a2, a3, v22, (v58 >> 14) & 1, (v6 + 960));
            v23 = *(v16 + 5);
            v24 = (*(*(v6 + 8) + 25) & 0x40) != 0 && sub_2993A94BC(v6 + 80, v9, *(v16 + 6));
            v25 = *(v16 + 5);
            v56 = (v23 >> 2) & 1;
            v26 = (4 * v25) & 8;
            if (v9)
            {
              v26 = 0;
            }

            v55 = (v25 >> 1) & 6 | v24 | v26 | (*(v16 + 1) == 1) & (v25 >> 4);
          }

          if (v19 > 0x11 || ((1 << v19) & 0x20056) == 0)
          {
            if (v52)
            {
              if ((*(**(a2 + 56) + 64))(*(a2 + 56)) == 4)
              {
                v30 = v57;
                if (*(*(a2 + 56) + 120))
                {
                  v30 = v57 | 2;
                }

                v57 = v30;
              }

              v31 = (*(**(v50 - 56) + 64))(*(v50 - 56));
              v32 = *(v50 - 56);
              if (v31 == 4)
              {
                v33 = v57;
                if (v32[16])
                {
                  v33 = v57 | 4;
                }

                v57 = v33;
              }

              v34 = (*(*v32 + 72))(v32);
              v35 = v57;
              if (v34 == 7)
              {
                v35 = v57 | 0x10;
              }

              v57 = v35;
            }

            if ((v58 & 0x4000) != 0 && *(*(*(v6 + 96) - 8) + 16) != *(*(*(v6 + 96) - 8) + 8))
            {
              v36 = *(v16 + 5);
              if ((v36 & 2) != 0 || (v36 & 4) != 0 && *(v16 + 1) == 1)
              {
                v37 = v57;
                if (!*(*(*(v6 + 88) + 8 * v51) + 164))
                {
                  v37 = v57 | 0x20;
                }

                v57 = v37;
              }
            }

            v38 = 0xFFFFFFFFLL;
            if (v56)
            {
              v38 = 10;
            }

            v67[0] = 0;
            v67[1] = v67;
            v67[2] = 0x2000000000;
            v67[3] = 0;
            v39 = *(v6 + 952);
            v64[0] = MEMORY[0x29EDCA5F8];
            v64[1] = 0x40000000;
            v64[2] = sub_29937C390;
            v64[3] = &unk_29EF13790;
            v66 = v9 == 0;
            v64[6] = v6;
            v64[7] = v16;
            v65 = v21;
            v64[4] = v68;
            v64[5] = v67;
            v64[8] = v17;
            v64[9] = v38;
            (*(*v39 + 32))(v39, v17, v14 + 8, v9 == 0, v51 + 1, v16, v55, v57, v64);
            _Block_object_dispose(v67, 8);
            v52 = 0;
          }

          else if (*(v6 + 1288) == 1)
          {
            v29 = *(v6 + 16);
            v28 = *(v6 + 24);
            while (1)
            {
              if (v29 == v28)
              {
                v61[0] = MEMORY[0x29EDCA5F8];
                v61[1] = 0x40000000;
                v61[2] = sub_29937C4B8;
                v61[3] = &unk_29EF137B8;
                v61[4] = v68;
                v61[5] = v6;
                v61[6] = v16;
                v62 = v19;
                v63 = v21;
                (*(*v17 + 64))(v17, v14 + 8, v61);
                v5 = v60;
                goto LABEL_58;
              }

              if ((*(**v29 + 56))() == 1)
              {
                break;
              }

              v29 += 8;
            }

            v5 = v60;
          }
        }
      }

LABEL_58:
      v14 += 32;
    }

    while (v14 != v15);
  }

  _Block_object_dispose(v68, 8);
  if (v69)
  {
    sub_2991A893C(v69);
  }
}

void sub_29937C08C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 160), 8);
  v3 = *(v1 - 112);
  if (v3)
  {
    sub_2991A893C(v3);
  }

  _Unwind_Resume(a1);
}

BOOL sub_29937C110(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(*(a1 + 8) + 24);
  if ((v4 & 0x4000) != 0)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      LODWORD(v5) = (*(v5 + 28) >> 5) & 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  if (a3)
  {
    if (v5)
    {
      return 0;
    }

    if ((v4 & 0x4000) != 0 && (*(a2 + 8) - 4) <= 2)
    {
      v12 = *((*(**(a1 + 952) + 104))(*(a1 + 952)) + 24);
      return v12 && v12 == a2;
    }

    if (CFArrayGetCount(*(a1 + 1184)) >= 6 && *(a2 + 8) != 8)
    {
      v16 = **(a2 + 16);
      if (!v16 || *(v16 + 8) <= 2uLL)
      {
        v17 = (*(*a2 + 16))(a2);
        if ((v4 & 0x4000) != 0)
        {
          v18 = 10111;
        }

        else
        {
          v18 = 11001;
        }

        return v17 < v18;
      }
    }

    return 1;
  }

  v7 = **(a2 + 16);
  if (!v7)
  {
    return 1;
  }

  v8 = *(v7 + 8);
  if ((*(v7 + 40) & 0x10) == 0 || *(v7 + 56) >= 1.0)
  {
    v14 = v5 ^ 1;
    if (v8 != 1)
    {
      v14 = 1;
    }

    if ((v14 & 1) == 0)
    {
      v15 = *(a1 + 96) - *(a1 + 88);
      result = v15 < 9;
      if (v15 > 8 || (v4 & 0x4000) == 0)
      {
        return result;
      }

LABEL_42:
      if ((*(v7 + 40) & 0x88) == 0x80)
      {
        v17 = (*(*a2 + 16))(a2);
        v18 = 10001;
        return v17 < v18;
      }

      return 1;
    }

LABEL_41:
    if ((v4 & 0x4000) == 0)
    {
      return 1;
    }

    goto LABEL_42;
  }

  if (v8 == 1 || ((*(*a2 + 40))(a2) & 0x802) != 0)
  {
    return 0;
  }

  if (*(a2 + 8) == 8)
  {
    goto LABEL_41;
  }

  v9 = v4 & 0x4000;
  v10 = (*(*a2 + 16))(a2);
  result = v10 < 0x2711;
  if (v10 <= 0x2710 && v9 != 0)
  {
    goto LABEL_42;
  }

  return result;
}

__n128 sub_29937C370(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void sub_29937C380(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_2991A893C(v1);
  }
}

void sub_29937C390(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(a1 + 84) == 1)
  {
    v4 = *(a1 + 48);
    if (*(v4 + 1288) == 1 && sub_29937C110(*(a1 + 48), a2, 0))
    {
      v7 = *(*(a1 + 32) + 8);
      if (!*(v7 + 40))
      {
        v8 = *(v4 + 8);
        sub_299381F64();
      }

      v9 = *(a1 + 80);
      v10 = (*(**(a1 + 64) + 16))(*(a1 + 64));
      sub_299377768(v4 + 1152, a2, v7 + 40, v9, v10);
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 24) + 1;
      *(v11 + 24) = v12;
      if (v12 == *(a1 + 72))
      {
        *a3 = 1;
      }
    }
  }
}

BOOL sub_29937C4B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  result = sub_29937B674(v4, *(a1 + 56), a2);
  if (result)
  {
    v6 = *(*(a1 + 32) + 8);
    if (!*(v6 + 40))
    {
      v7 = *(v4 + 8);
      sub_299381F64();
    }

    v9 = *(a1 + 56);
    v8 = *(a1 + 60);

    sub_2993774CC(v4 + 1152, a2, v6 + 40, v8, v9);
  }

  return result;
}

uint64_t sub_29937C580(uint64_t result)
{
  if (*(result + 52) == 1 && *(*(result + 32) + 1288) == 1)
  {
    operator new();
  }

  return result;
}

BOOL sub_29937C698(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  result = sub_29937B674(v4, *(a1 + 56), a2);
  if (result)
  {
    v7 = *(a1 + 56);
    v6 = *(a1 + 60);

    sub_2993774CC(v4 + 1152, a2, a1 + 40, v6, v7);
  }

  return result;
}

uint64_t sub_29937C70C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_29937C728(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_2991A893C(v1);
  }
}

uint64_t sub_29937C738(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v4 = *(result + 56);
  if ((*(result + 96) & 1) == 0)
  {
    v6 = *(*(result + 32) + 8);
    if (!*(v6 + 40))
    {
      v9 = *(v4 + 8);
      sub_299381F64();
    }

    v10 = *(result + 97);
    v7 = *(result + 88);
    v8 = (*(**(result + 72) + 16))(*(result + 72));
    if (v10 != 1)
    {
      v11 = v4 + 1128;
LABEL_19:

      sub_2993774CC(v11, a2, v6 + 40, v7, v8);
    }

LABEL_10:
    v11 = v4 + 1152;
    goto LABEL_19;
  }

  if (*(result + 97) != 1)
  {
    if (*(result + 80) != 0xFFFFFFFFLL)
    {
      v12 = *a2;
      v13 = *(result + 92);
      if (v13)
      {
        v14 = *(v12 + 4);
        if ((v14 & 0x80) != 0)
        {
          goto LABEL_36;
        }

        if ((v13 & 2) == 0)
        {
          if ((v13 & 8) != 0)
          {
            if ((~v14 & 0x300) != 0)
            {
              goto LABEL_37;
            }
          }

          else if ((v13 & 4) == 0 || (v14 & 0x200) == 0)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }

        if ((v14 & 0x400) != 0)
        {
LABEL_36:
          *(*(*(result + 40) + 8) + 24) = 0;
        }
      }

      else
      {
        if ((v13 & 2) != 0)
        {
          v15 = *(v12 + 4);
          if ((v13 & 0x10) != 0)
          {
            if ((v15 & 0x2000) == 0)
            {
              goto LABEL_37;
            }
          }

          else if ((v15 & 0x40) == 0)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }

        if ((v13 & 8) == 0)
        {
          if ((v13 & 4) == 0)
          {
            goto LABEL_37;
          }

          LOWORD(v12) = *(v12 + 4);
          if ((v12 & 0x20) == 0)
          {
            goto LABEL_37;
          }

LABEL_32:
          if ((v13 & 0x20) != 0 && v12 < 0)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }

        LODWORD(v12) = *(v12 + 4);
        if ((~v12 & 0x210) == 0)
        {
          goto LABEL_32;
        }
      }
    }

LABEL_37:
    if (*(*(*(result + 40) + 8) + 24) == 1)
    {
      v16 = *(*(result + 32) + 8);
      if (!*(v16 + 40))
      {
        v17 = *(v4 + 8);
        sub_299381F64();
      }

      v18 = *(result + 88);
      v19 = (*(**(result + 72) + 16))(*(result + 72));
      sub_2993774CC(v4 + 1128, a2, v16 + 40, v18, v19);
    }

    *a3 = 1;
    return result;
  }

  if (!*(*(*(result + 32) + 8) + 40))
  {
    v5 = *(v4 + 8);
    sub_299381F64();
  }

  if ((*(*a2 + 4) & 8) == 0)
  {
    v6 = *(*(result + 32) + 8);
    v7 = *(result + 88);
    v8 = (*(**(result + 72) + 16))(*(result + 72));
    goto LABEL_10;
  }

  return result;
}

void sub_29937CA6C(void *a1, uint64_t a2, _BYTE *a3)
{
  v6 = a1[12];
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    *(v6 + 1176) = 1;
    CFArrayRemoveAllValues(*(v6 + 1184));
    CFSetRemoveAllValues(*(v6 + 1296));
    *(*(a1[4] + 8) + 24) = 0;
  }

  if (a2 && *(v6 + 1264) && sub_29937C110(v6, a2, 1))
  {
    v7 = *(a2 + 16);
    v8 = *(a1[5] + 8);
    if (v7 != *(v8 + 24))
    {
      *(v8 + 24) = v7;
      *(*(a1[6] + 8) + 24) = *v7;
      v9 = *(*(a1[6] + 8) + 24);
      if (v9)
      {
        v10 = (*(v9 + 40) & 4) == 0;
        v11 = 10;
        if (v10)
        {
          v11 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v11 = 0xFFFFFFFFLL;
      }

      *(*(a1[7] + 8) + 24) = v11;
      *(*(a1[8] + 8) + 24) = 0;
      *(*(a1[9] + 8) + 24) = 1;
      *(*(a1[10] + 8) + 24) = *(*(a1[6] + 8) + 24) == 0;
    }

    if (*(*(a1[9] + 8) + 24) == 1)
    {
      v12 = *(v6 + 8);
      operator new();
    }

    sub_299377768(v6 + 1176, a2, *(a1[11] + 8) + 40, *(v7 + 32), *(v7 + 36));
    if ((*(*(a1[10] + 8) + 24) & 1) == 0)
    {
      *(*(a1[9] + 8) + 24) = 1;
    }

    v13 = *(a1[8] + 8);
    v14 = *(v13 + 24) + 1;
    *(v13 + 24) = v14;
    if (v14 == *(*(a1[7] + 8) + 24))
    {
      *a3 = 1;
    }
  }
}

void sub_29937CCA4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_29937CCBC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = *(v5 + 1272);
  v9 = (*(*(v5 + 8) + 24) >> 14) & 1;
  v10 = sub_299382AD4(v5 + 1008);
  v30 = sub_299396DA0(v10, a2, a3, v8, v9, (v5 + 960));
  if ((*(v30 + 40) & 0x10) != 0 && a3 == 2 && *(v30 + 56) < 1.0)
  {
    v17 = (*(**(v5 + 952) + 104))(*(v5 + 952));
    if (v17)
    {
      v18 = *(v17 + 32);
      if (v18 != *(v17 + 40) && *(v30 + 8) && *v18 != **(v30 + 16))
      {
        return;
      }
    }
  }

  v29 = 0;
  v11 = a2 + 56 * a3;
  v12 = *(*(v5 + 8) + 24);
  v13 = *(v30 + 40);
  if ((v12 & 0x4000) != 0 && v7 != 0xFFFFFFFF && (v13 & 4) == 0)
  {
    v14 = *(a2 + 64) + 1;
    v15 = *(v5 + 24);
    if (*(v5 + 16) == v15 || *(v5 + 40) != 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = (*(**(v15 - 8) + 48))(*(v15 - 8));
    }

    v29 = v14 == CFStringGetLength(v16);
  }

  if ((v13 & 4) != 0)
  {
    v19 = 20;
  }

  else
  {
    v19 = v7;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2000000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2000000000;
  v41 = 1;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3802000000;
  v36[3] = sub_29937C370;
  v36[5] = 0;
  v37 = 0;
  v36[4] = sub_29937C380;
  v20 = *(v11 - 24);
  v21 = *(v11 - 16);
  if (v20 != v21)
  {
    v22 = (v12 >> 18) & 0x10 | (v12 >> 14) & 1 | v13 & 4 | (8 * ((v13 >> 1) & 1)) | (v13 >> 2) & 2;
    do
    {
      v23 = *(*v6 + 8 * *v20);
      v24 = (*(*v23 + 16))(v23) - 9;
      if (v24 < 9 && ((0x127u >> v24) & 1) != 0)
      {
        v25 = 0;
      }

      else
      {
        if ((v39[3] & 1) == 0)
        {
          goto LABEL_29;
        }

        v25 = 1;
      }

      v26 = *(*(v5 + 8) + 24);
      v27 = (*(*v23 + 16))(v23);
      if (v20[25] == 1)
      {
        v28 = sub_2992A8B8C(v26, v27, 0);
        v31[0] = MEMORY[0x29EDCA5F8];
        v31[1] = 0x40000000;
        v31[2] = sub_29937C738;
        v31[3] = &unk_29EF13800;
        v34 = v25;
        v35 = v29;
        v31[8] = v30;
        v31[9] = v23;
        v31[10] = v19;
        v32 = v28;
        v33 = v22;
        v31[4] = v36;
        v31[5] = &v38;
        v31[6] = &v42;
        v31[7] = v5;
        (*(*v23 + 64))(v23, v20 + 8, v31);
        if (v43[3] >= v19)
        {
          break;
        }
      }

LABEL_29:
      v20 += 32;
    }

    while (v20 != v21);
  }

  _Block_object_dispose(v36, 8);
  if (v37)
  {
    sub_2991A893C(v37);
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
}

void sub_29937D0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31)
{
  _Block_object_dispose(&a25, 8);
  if (a31)
  {
    sub_2991A893C(a31);
  }

  _Block_object_dispose((v31 - 168), 8);
  _Block_object_dispose((v31 - 136), 8);
  _Unwind_Resume(a1);
}

BOOL sub_29937D0F8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (*(a1 + 16) != v2 && ((*(**(v2 - 8) + 24))(*(v2 - 8)) & 1) != 0)
  {
    return 0;
  }

  if ((*(*(a1 + 8) + 24) & 0x8004800) != 0 || CFArrayGetCount(*(a1 + 1160)) > 0xA)
  {
    return 0;
  }

  v3 = *(a1 + 664);
  v4 = *(a1 + 672) == v3 ? 1 : *v3 + 1;
  return (*(a1 + 96) - *(a1 + 88)) >> 3 != v4 && (*(*(a1 + 8) + 25) & 0x40) == 0;
}

void sub_29937D1C4(void *a1, uint64_t *a2, char a3)
{
  if (*a2 != a2[1])
  {
    v6 = a1[6];
    v7 = *(a1[1] + 64);
    if (v7 && (v8 = *(v7 + 8)) != 0 && sub_299225D3C(v8, kMecabraContextOptionPrivateMode) == *MEMORY[0x29EDB8F00])
    {
      sub_29937B414(&v22, *(v6 + 192), *(v6 + 200));
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      sub_299367070(&v22, *(v6 + 192), *(v6 + 200), (*(v6 + 200) - *(v6 + 192)) >> 3);
    }

    v9 = v22;
    if (v22 != v23)
    {
      v10 = (*(a1[1] + 24) >> 14) & 1;
      v11 = (a1[12] - a1[11]) >> 3;
      v21[0] = 0;
      v21[1] = v21;
      v21[2] = 0x2000000000;
      v21[3] = 0xFFEFFFFFFFFFFFFFLL;
      v19[0] = 0;
      v19[1] = v19;
      v19[2] = 0x2000000000;
      v20 = -1;
      v18[0] = 0;
      v18[1] = v18;
      v18[2] = 0x2000000000;
      v18[3] = 0;
      v16[0] = 0;
      v16[1] = v16;
      v16[2] = 0x2000000000;
      v17 = 0;
      v12 = a1[133];
      v13[0] = MEMORY[0x29EDCA5F8];
      v13[1] = 0x40000000;
      v13[2] = sub_29937D3E4;
      v13[3] = &unk_29EF138F8;
      v14 = v10;
      v13[8] = a1;
      v13[9] = v11;
      v13[4] = v19;
      v13[5] = v21;
      v13[6] = v16;
      v13[7] = v18;
      v15 = a3;
      sub_299370100(v12, &v22, a2, v13);
      _Block_object_dispose(v16, 8);
      _Block_object_dispose(v18, 8);
      _Block_object_dispose(v19, 8);
      _Block_object_dispose(v21, 8);
      v9 = v22;
    }

    if (v9)
    {
      v23 = v9;
      operator delete(v9);
    }
  }
}

void sub_29937D398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v12 - 136), 8);
  _Block_object_dispose((v12 - 104), 8);
  v14 = *(v12 - 72);
  if (v14)
  {
    *(v12 - 64) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29937D3E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, _BYTE *a7)
{
  v13 = result;
  v14 = *(result + 64);
  v15 = *(a2 + 8);
  if (v15 && (result = (*(**a2 + 40))(), v15 != result - 1) || (v16 = *a5) == 0 || (*(v16 + 4) & 0x800) != 0)
  {
    if ((*(*(*(v13 + 48) + 8) + 24) & 1) == 0 && (*(v13 + 81) & 1) == 0)
    {
      v25 = *(v14 + 1272);
      v31 = a7;
      v26 = *(v13 + 80);
      v27 = sub_299382AD4(v14 + 1008);
      v28 = v26;
      a7 = v31;
      sub_299397210(v27, a2, a3, a4, v25, v28, (v14 + 960));
      result = (*(**(v14 + 952) + 56))(*(v14 + 952), *(v13 + 72), v27, a6, a5, 1, &unk_2A1F74B10);
      ++*(*(*(v13 + 56) + 8) + 24);
    }
  }

  else if (a6 == 9 || *(v16 + 6) < *(*(*(v13 + 32) + 8) + 24))
  {
    v30 = a7;
    v17 = *(v14 + 1272);
    v18 = *(v13 + 80);
    v29 = *(v16 + 6);
    v19 = sub_299382AD4(v14 + 1008);
    v20 = v17;
    a7 = v30;
    sub_299397210(v19, a2, a3, a4, v20, v18, (v14 + 960));
    v21 = *(v14 + 952);
    v22 = *(v13 + 72);
    v32[0] = MEMORY[0x29EDCA5F8];
    v32[1] = 0x40000000;
    v32[2] = sub_29937D66C;
    v32[3] = &unk_29EF138B0;
    v36 = v14;
    v37 = v19;
    v38 = a6;
    v33 = *(v13 + 40);
    v40 = a6 == 9;
    v23 = *(v13 + 32);
    v39 = v29;
    v24 = *(v13 + 56);
    v34 = v23;
    v35 = v24;
    result = (*(*v21 + 56))(v21, v22, v19, a6, a5, 0, v32);
  }

  if (*(*(*(v13 + 56) + 8) + 24) >= 0x33uLL)
  {
    *a7 = 1;
  }

  return result;
}

void sub_29937D66C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 72);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (*(v5 + 5) != 1 || (v6 = *(v5 + 40)) == 0)
    {
      v6 = *(v5 + 32);
    }
  }

  else
  {
    v6 = 0;
  }

  if (sub_29939D674(a2, v6, (*(v3 + 64) + 48)) > *(*(*(a1 + 32) + 8) + 24))
  {
    operator new();
  }
}

void sub_29937D7D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2991A893C(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29937D804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3802000000;
  v22[3] = sub_29937C370;
  v22[5] = 0;
  v23 = 0;
  v22[4] = sub_29937C380;
  v4 = a2 + 56 * a3;
  v5 = *(v4 - 24);
  v6 = *(v4 - 16);
  if (v5 != v6)
  {
    v9 = 0;
    v10 = v5 + 8;
    do
    {
      v11 = v10 - 8;
      v12 = *(*(a1 + 40) + 8 * *(v10 - 8));
      v13 = *(*(v3 + 8) + 24);
      v14 = (*(*v12 + 16))(v12);
      v15 = sub_2992A8B8C(v13, v14, 0);
      if (*(v10 + 17) == 1)
      {
        v16 = v15;
        if (!v9)
        {
          v17 = *(v3 + 1272);
          v9 = sub_299382AD4(v3 + 1008);
          sub_299396DA0(v9, a2, a3, v17, 0, (v3 + 960));
        }

        v19[0] = MEMORY[0x29EDCA5F8];
        v19[1] = 0x40000000;
        v19[2] = sub_29937DA30;
        v19[3] = &unk_29EF13920;
        v21 = *(a1 + 64);
        v19[4] = v22;
        v19[5] = v3;
        v20 = v16;
        v19[6] = v9;
        v19[7] = v12;
        v19[8] = a3;
        (*(*v12 + 64))(v12, v10, v19);
      }

      v10 += 32;
    }

    while (v11 + 32 != v6);
  }

  _Block_object_dispose(v22, 8);
  if (v23)
  {
    sub_2991A893C(v23);
  }
}

void sub_29937DA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27)
{
  _Block_object_dispose(&a21, 8);
  if (a27)
  {
    sub_2991A893C(a27);
  }

  _Unwind_Resume(a1);
}

void sub_29937DA30(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (*(a1 + 76) == 1)
  {
    if ((*(*a2 + 4) & 0x2000) != 0)
    {
      return;
    }
  }

  else if ((*(*a2 + 4) & 0x40) != 0)
  {
    return;
  }

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v5 = *(v4 + 8);
    sub_299381F64();
  }

  v6 = sub_2993B2710(*(*(v4 + 8) + 4));
  v7 = *(*a2 + 6);
  if (*(a1 + 76) == 1 && *(*(a1 + 48) + 8) == 2)
  {
    v7 = (v7 * 0.9);
  }

  sub_29939E3C4(&v11, *a2, *(a2 + 8), v6, 0, *(v4 + 8), 0, 0);
  *&v11 = &unk_2A1F76A68;
  v14 = v7;
  v8 = *(*(a1 + 32) + 8);
  v9 = *(a1 + 72);
  v10 = (*(**(a1 + 56) + 16))(*(a1 + 56));
  sub_299377768(v4 + 1152, &v11, v8 + 40, v9, v10);
  if ((*(a1 + 64) - 6) <= 0xFFFFFFFFFFFFFFFALL)
  {
    *(v4 + 1312) = 1;
  }

  *&v11 = &unk_2A1F76968;
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_29937DBF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29937DC28(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = a1 + 40;
  *(v2 + 16) = 0;
  return sub_299367070(v2, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 3);
}

void sub_29937DC44(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_29937DC5C(void *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x4002000000;
  v22 = sub_29937DE7C;
  v23 = sub_29937DEA0;
  __p = 0;
  v25 = 0;
  v26 = 0;
  if (!a2)
  {
    goto LABEL_8;
  }

  v5 = a1[2];
  v6 = a1[3];
  while (v5 != v6)
  {
    if (!(*(**v5 + 56))())
    {
      goto LABEL_8;
    }

    v5 += 8;
  }

  if (a1[103])
  {
    v7 = a1[110] < 1;
  }

  else
  {
LABEL_8:
    v7 = 0;
  }

  v8 = a1[119];
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 0x40000000;
  v17[2] = sub_29937DEB8;
  v17[3] = &unk_29EF13948;
  v18 = v7;
  v17[4] = &v19;
  v17[5] = a1;
  (*(*v8 + 80))(v8, v17);
  if (v7)
  {
    v9 = v20[5];
    v10 = v20[6];
    v11 = 126 - 2 * __clz((v10 - v9) >> 4);
    if (v10 == v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    sub_29937EE9C(v9, v10, v12, 1);
  }

  v13 = v20;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v14 = v13[5];
  v15 = v13[6];
  v16 = v15 - v14;
  if (v15 != v14)
  {
    if (!((v16 >> 4) >> 60))
    {
      sub_2992A3CC4(v16 >> 4);
    }

    sub_299212A8C();
  }

  _Block_object_dispose(&v19, 8);
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }
}

void sub_29937DE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose(&a17, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_29937DE7C(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_29937DEA0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_29937DEB8(uint64_t a1, void *a2, __n128 a3)
{
  v3 = a3.n128_f64[0];
  if (*(a1 + 48) != 1)
  {
    v11 = *(*(a1 + 32) + 8);
    goto LABEL_33;
  }

  v6 = *(a1 + 40);
  __dst = 0;
  v42 = 0;
  v43 = 0;
  if (a2)
  {
    v7 = a2;
    do
    {
      v8 = *(*v7 + 16);
      if (v8)
      {
        sub_299218EBC(&__dst, __dst, *(*v8 + 16), (*(*v8 + 16) + 2 * *(*v8 + 8)), *(*v8 + 8));
      }

      v7 = v7[1];
    }

    while (v7);
    v9 = __dst;
    v10 = v42;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v13 = v10 - v9;
  v12 = v13 == 0;
  v14 = v13 >> 1;
  v15 = 0;
  if (!v12)
  {
    v16 = v9;
    v17 = v14;
    do
    {
      v18 = *v16;
      v16 += 2;
      v15 = v18 + 542 * v15;
      --v17;
    }

    while (v17);
  }

  v19 = *(v6 + 808);
  v20 = 5.0;
  if (!*&v19)
  {
    goto LABEL_29;
  }

  v21 = vcnt_s8(v19);
  v21.i16[0] = vaddlv_u8(v21);
  if (v21.u32[0] > 1uLL)
  {
    v22 = v15;
    if (*&v19 <= v15)
    {
      v22 = v15 % *&v19;
    }
  }

  else
  {
    v22 = (*&v19 - 1) & v15;
  }

  v23 = *(*(v6 + 800) + 8 * v22);
  if (!v23 || (v24 = *v23) == 0)
  {
LABEL_29:
    v26 = 0;
    if (!v9)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  while (1)
  {
    v25 = *(v24 + 1);
    if (v25 == v15)
    {
      break;
    }

    if (v21.u32[0] > 1uLL)
    {
      if (v25 >= *&v19)
      {
        v25 %= *&v19;
      }
    }

    else
    {
      v25 &= *&v19 - 1;
    }

    if (v25 != v22)
    {
      goto LABEL_29;
    }

LABEL_28:
    v24 = *v24;
    if (!v24)
    {
      goto LABEL_29;
    }
  }

  if (*(v24 + 2) != v15)
  {
    goto LABEL_28;
  }

  v20 = -(v24[3] - v14 * -0.35);
  v26 = 1;
  if (v9)
  {
LABEL_30:
    v42 = v9;
    operator delete(v9);
  }

LABEL_31:
  if (v26)
  {
    v11 = *(*(a1 + 32) + 8);
    v3 = v20 + v3;
LABEL_33:
    v28 = v11[6];
    v27 = v11[7];
    if (v28 >= v27)
    {
      v30 = v11[5];
      v31 = v28 - v30;
      v32 = (v28 - v30) >> 4;
      v33 = v32 + 1;
      if ((v32 + 1) >> 60)
      {
        sub_299212A8C();
      }

      v34 = v27 - v30;
      if (v34 >> 3 > v33)
      {
        v33 = v34 >> 3;
      }

      if (v34 >= 0x7FFFFFFFFFFFFFF0)
      {
        v35 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v35 = v33;
      }

      if (v35)
      {
        sub_2992A3CC4(v35);
      }

      v37 = v32;
      v38 = 16 * v32;
      *v38 = a2;
      *(v38 + 8) = v3;
      v29 = 16 * v32 + 16;
      v39 = (v38 - 16 * v37);
      memcpy(v39, v30, v31);
      v40 = v11[5];
      v11[5] = v39;
      v11[6] = v29;
      v11[7] = 0;
      if (v40)
      {
        operator delete(v40);
      }
    }

    else
    {
      *v28 = a2;
      *(v28 + 8) = v3;
      v29 = v28 + 16;
    }

    v11[6] = v29;
  }

  else
  {
    v36 = *(**(v6 + 952) + 120);

    a3.n128_f64[0] = v20 + v3;
    v36(a3);
  }
}

void sub_29937E184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29937E1C4(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    return 1;
  }

  while (1)
  {
    v2 = *a2;
    if (*a2)
    {
      v3 = *(v2 + 16);
      if (v3)
      {
        v4 = *v3;
        if (v4)
        {
          if ((*(v4 + 40) & 0x10) != 0 && *(v4 + 56) < 1.0)
          {
            break;
          }
        }
      }

      if ((*(v2 + 8) - 9) < 2)
      {
        break;
      }
    }

    a2 = a2[1];
    if (!a2)
    {
      return 1;
    }
  }

  return 0;
}

void sub_29937E220(uint64_t a1, int a2)
{
  sub_2992F5CE8((a1 + 16), a2);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *v3++;
      v5 += (*(*v6 + 32))(v6);
    }

    while (v3 != v4);
  }

  sub_2993A2620(a1 + 80, v5, 1);
}

const __CFArray *sub_29937E2B8(void *a1, unint64_t a2)
{
  v10[4] = *MEMORY[0x29EDCA608];
  v4 = a1[3];
  if (a1[2] == v4 || !(*(**(v4 - 8) + 24))(*(v4 - 8)))
  {
    v7 = a1[133];
    v8 = *MEMORY[0x29EDCA608];

    return sub_299370EB4(v7, a2);
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
    v10[0] = &unk_2A1F74D30;
    v10[1] = a1;
    v10[2] = &Mutable;
    v10[3] = v10;
    sub_2993AC2F4((a1 + 10), a2, v10);
    sub_299223AD0(v10);
    result = Mutable;
    v6 = *MEMORY[0x29EDCA608];
  }

  return result;
}

void sub_29937E3E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299223AD0(va);
  _Unwind_Resume(a1);
}

double sub_29937E3F8(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 72);
  v3 = -20.0;
  if (v2)
  {
    v4 = *(v2 + 40);
    if (v4)
    {
      sub_299210C88(*(v2 + 40));
      v7 = atomic_load(v4 + 10);
      if (v7 == 2)
      {
        v8 = *v4;
        if (v8)
        {
          v9 = (*(*v8 + 16))(v8, a2);
          if (v9)
          {
            (*(*v8 + 40))(v8, v9, 0, 0);
          }

          else
          {
            v10 = -20.0;
          }

          return v10 + *(a1 + 1304);
        }
      }
    }
  }

  return v3;
}

void sub_29937E4DC(int a1, CFStringRef prefix, const __CFString *a3, CFStringRef theString)
{
  if (prefix && a3 && !CFStringHasPrefix(theString, prefix))
  {
    v6 = *MEMORY[0x29EDB8ED8];
    Length = CFStringGetLength(a3);
    MutableCopy = CFStringCreateMutableCopy(v6, Length, a3);
    CFStringLowercase(MutableCopy, 0);
    CFStringCompare(a3, MutableCopy, 0);
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  sub_299276A84(prefix);
}

void sub_29937E7C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  MEMORY[0x29C29BFB0](v27, 0x10E1C403F77FCFDLL);
  sub_299219AB4(&a10, 0);
  if (a12)
  {
    sub_2991A893C(a12);
  }

  a13 = &unk_2A1F76968;
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  sub_2993BA1E4(&a24);
  if (v26)
  {
    MEMORY[0x29C29BF70](v26, v24);
  }

  if (v25)
  {
    MEMORY[0x29C29BF70](v25, v24);
  }

  v30 = *(v28 - 112);
  if (v30)
  {
    MEMORY[0x29C29BF70](v30, v24);
  }

  _Unwind_Resume(a1);
}

BOOL sub_29937E900(uint64_t a1, int a2, char a3)
{
  if ((*(*(a1 + 8) + 24) & 0x8000800) != 0)
  {
    return 0;
  }

  v8 = *(a1 + 24);
  if (*(a1 + 16) == v8 || *(a1 + 40) != 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = (*(**(v8 - 8) + 48))(*(v8 - 8));
  }

  Length = CFStringGetLength(v9);
  v3 = Length - 2 < 0x18;
  if (Length - 2 <= 0x17 && a2)
  {
    if (Length < 5)
    {
      return 0;
    }

    Count = CFArrayGetCount(*(a1 + 1232));
    v3 = Count == 0;
    if (Count || (a3 & 1) != 0)
    {
      return v3;
    }

    if (CFArrayGetCount(*(a1 + 1160)) > 9)
    {
      return 0;
    }

    v3 = 1;
    if (CFArrayGetCount(*(a1 + 1160)))
    {
      v12 = 0;
      v13 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 1160), v13);
        if (!MecabraCandidateIsAutocorrectionCandidate(ValueAtIndex, v15, v16))
        {
          v19 = objc_msgSend_rawCandidate(ValueAtIndex, v17, v18);
          if (v19)
          {
            v20 = (((*(*v19 + 104))(v19) >> 9) & 1) == 0;
          }

          else
          {
            v20 = 1;
          }

          v12 += v20;
        }

        ++v13;
      }

      while (v13 < CFArrayGetCount(*(a1 + 1160)));
      return v12 < 2;
    }
  }

  return v3;
}

uint64_t sub_29937EA74(uint64_t a1)
{
  v7[4] = *MEMORY[0x29EDCA608];
  if (sub_299320490(*(a1 + 1320)) && (*(a1 + 1313) & 1) == 0)
  {
    v6 = 0;
    v3 = *(a1 + 1320);
    v7[0] = &unk_2A1F74E30;
    v7[1] = &v6;
    v7[2] = a1;
    v7[3] = v7;
    sub_299320504(v3, 2, v7, 0.7, -6.5);
    sub_29924AA10(v7);
    v2 = v6;
  }

  else
  {
    v2 = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return v2 & 1;
}

void sub_29937EB3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29924AA10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29937EB50(void *a1, CFTypeRef *a2, const void **a3, char *a4, double *a5)
{
  v11 = a1[1];
  v10 = a1[2];
  if (v11 >= v10)
  {
    v14 = (v11 - *a1) >> 5;
    if ((v14 + 1) >> 59)
    {
      sub_299212A8C();
    }

    v15 = v10 - *a1;
    v16 = v15 >> 4;
    if (v15 >> 4 <= (v14 + 1))
    {
      v16 = v14 + 1;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFE0)
    {
      v17 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v16;
    }

    sub_299380060(v18, v17, v14, a1);
    sub_29937FFE8(*v19, *a2, *a3, *a4, *a5);
    *v19 += 32;
    sub_2993800D8(a1, v18);
    v13 = a1[1];
    result = sub_2993801B8(v18);
  }

  else
  {
    result = sub_29937FFE8(a1[1], *a2, *a3, *a4, *a5);
    v13 = v11 + 32;
    a1[1] = v11 + 32;
  }

  a1[1] = v13;
  return result;
}

void sub_29937EC50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2993801B8(va);
  _Unwind_Resume(a1);
}

const void ***sub_29937EC70(const void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 4;
        sub_299219AB4(v3 - 3, 0);
        sub_299219AB4(v5, 0);
        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_29937ECE8(void *a1, int a2, uint64_t a3)
{
  v3 = a1[6];
  v4 = a1[133];
  v5 = *(a1[1] + 24);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 0x40000000;
  v7[2] = sub_29937ED7C;
  v7[3] = &unk_29EF139B0;
  v7[4] = a3;
  return sub_29936F6E4(v4, (v3 + 168), a2, (v5 << 10) & 0x1000000, v7);
}

uint64_t sub_29937ED7C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2 + 56 * (a3 - 1);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  while (v4 != v5)
  {
    if (*(v4 + 25) == 1)
    {
      return (*(*(result + 32) + 16))();
    }

    v4 += 32;
  }

  return result;
}

void sub_29937EDC0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2992F5C7C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

BOOL sub_29937EE14(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = (a3 + 3);
    v4 = 1;
    v5 = a2;
    v6 = 1;
    do
    {
      v8 = *v3;
      v3 += 4;
      v7 = v8;
      v9 = a1 + 32;
      if ((v8 & 2) == 0)
      {
        v9 = a1 + 40;
        if ((v7 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      *(*(*v9 + 8) + 24) = 1;
LABEL_7:
      if (*(*(*(a1 + 40) + 8) + 24) == 1 && (*(*(*(a1 + 32) + 8) + 24) & 1) != 0)
      {
        break;
      }

      v6 = v4++ < a2;
      --v5;
    }

    while (v5);
  }

  else
  {
    return 0;
  }

  return v6;
}

double *sub_29937EE9C(double *result, double *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v82 = *(a2 - 1);
        v83 = v8[1];
        if (v82 < v83)
        {
          v84 = *v8;
          *v8 = *(a2 - 2);
          *(a2 - 2) = v84;
          v8[1] = v82;
          *(a2 - 1) = v83;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v89 = v8 + 3;
      v90 = v8[3];
      v91 = v8 + 1;
      v92 = v8[1];
      v93 = v8[5];
      if (v90 >= v92)
      {
        if (v93 < v90)
        {
          v140 = *(v8 + 2);
          v141 = *(v8 + 4);
          *(v8 + 2) = v141;
          *(v8 + 4) = v140;
          v8[3] = v93;
          v8[5] = v90;
          if (v93 < v92)
          {
            v142 = *v8;
            *v8 = v141;
            *(v8 + 2) = v142;
            goto LABEL_188;
          }

LABEL_189:
          v93 = v90;
        }
      }

      else
      {
        v94 = *v8;
        if (v93 < v90)
        {
          *v8 = v8[4];
          *(v8 + 4) = v94;
          goto LABEL_187;
        }

        *v8 = v8[2];
        *(v8 + 2) = v94;
        v8[1] = v90;
        v8[3] = v92;
        if (v93 < v92)
        {
          v8[2] = v8[4];
          *(v8 + 4) = v94;
          v91 = v8 + 3;
LABEL_187:
          v89 = v8 + 5;
          v90 = v92;
LABEL_188:
          *v91 = v93;
          *v89 = v92;
          goto LABEL_189;
        }
      }

      v151 = *(a2 - 1);
      if (v151 >= v93)
      {
        return result;
      }

      v152 = *(v8 + 4);
      v8[4] = *(a2 - 2);
      *(a2 - 2) = v152;
      v8[5] = v151;
      *(a2 - 1) = v93;
      v137 = v8[5];
      v153 = v8[3];
      if (v137 >= v153)
      {
        return result;
      }

      v154 = *(v8 + 2);
      v155 = *(v8 + 4);
      *(v8 + 2) = v155;
      *(v8 + 4) = v154;
      v8[3] = v137;
      v8[5] = v153;
      v138 = v8[1];
      if (v137 >= v138)
      {
        return result;
      }

      v156 = *v8;
      *v8 = v155;
      *(v8 + 2) = v156;
LABEL_194:
      v8[1] = v137;
      v8[3] = v138;
      return result;
    }

    if (v9 == 5)
    {

      return sub_29937FA54(v8, v8 + 2, v8 + 4, v8 + 6, a2 - 2);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v95 = v8 + 2;
      v97 = v8 == a2 || v95 == a2;
      if (a4)
      {
        if (!v97)
        {
          v98 = 0;
          v99 = v8;
          do
          {
            v100 = v99[3];
            v101 = v99[1];
            v99 = v95;
            if (v100 < v101)
            {
              v102 = *v95;
              v103 = v98;
              while (1)
              {
                v104 = (v8 + v103);
                v104[2] = *(v8 + v103);
                v104[3] = *(v8 + v103 + 8);
                if (!v103)
                {
                  break;
                }

                v103 -= 16;
                if (v100 >= *(v104 - 1))
                {
                  v105 = v8 + v103 + 16;
                  goto LABEL_131;
                }
              }

              v105 = v8;
LABEL_131:
              *v105 = v102;
              *(v105 + 8) = v100;
            }

            v95 = v99 + 2;
            v98 += 16;
          }

          while (v99 + 2 != a2);
        }
      }

      else if (!v97)
      {
        v143 = v8 + 3;
        do
        {
          v144 = v7[3];
          v145 = v7[1];
          v7 = v95;
          if (v144 < v145)
          {
            v146 = *v95;
            v147 = v143;
            do
            {
              v148 = v147;
              *(v147 - 1) = *(v147 - 3);
              v149 = *(v147 - 2);
              v147 -= 2;
              *v148 = v149;
            }

            while (v144 < *(v148 - 4));
            *(v147 - 1) = v146;
            *v147 = v144;
          }

          v95 = v7 + 2;
          v143 += 2;
        }

        while (v7 + 2 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v106 = (v9 - 2) >> 1;
      v107 = v106;
      do
      {
        v108 = v107;
        if (v106 >= v107)
        {
          v109 = (2 * v107) | 1;
          v110 = &v8[2 * v109];
          if (2 * v108 + 2 < v9 && v110[1] < v110[3])
          {
            v110 += 2;
            v109 = 2 * v108 + 2;
          }

          v111 = &v8[2 * v108];
          v112 = v110[1];
          v113 = v111[1];
          if (v112 >= v113)
          {
            v114 = *v111;
            do
            {
              v115 = v111;
              v111 = v110;
              *v115 = *v110;
              v115[1] = v112;
              if (v106 < v109)
              {
                break;
              }

              v116 = 2 * v109;
              v109 = (2 * v109) | 1;
              v110 = &v8[2 * v109];
              v117 = v116 + 2;
              if (v117 < v9 && v110[1] < v110[3])
              {
                v110 += 2;
                v109 = v117;
              }

              v112 = v110[1];
            }

            while (v112 >= v113);
            *v111 = v114;
            v111[1] = v113;
          }
        }

        v107 = v108 - 1;
      }

      while (v108);
      while (2)
      {
        v118 = 0;
        v119 = *v8;
        v120 = v8[1];
        v121 = v8;
        do
        {
          v122 = &v121[2 * v118];
          v123 = v122 + 2;
          v124 = (2 * v118) | 1;
          v118 = 2 * v118 + 2;
          if (v118 >= v9)
          {
            v118 = v124;
          }

          else
          {
            v125 = v122[3];
            v126 = v122[5];
            v127 = v122 + 4;
            if (v125 >= v126)
            {
              v118 = v124;
            }

            else
            {
              v123 = v127;
            }
          }

          *v121 = *v123;
          v121[1] = v123[1];
          v121 = v123;
        }

        while (v118 <= ((v9 - 2) >> 1));
        if (v123 != a2 - 2)
        {
          *v123 = *(a2 - 2);
          v123[1] = *(a2 - 1);
          *(a2 - 2) = v119;
          *(a2 - 1) = v120;
          v128 = (v123 - v8 + 16) >> 4;
          v129 = v128 < 2;
          v130 = v128 - 2;
          if (!v129)
          {
            v131 = v130 >> 1;
            v132 = &v8[2 * v131];
            v133 = v132[1];
            v120 = v123[1];
            if (v133 < v120)
            {
              v134 = *v123;
              do
              {
                v135 = v123;
                v123 = v132;
                *v135 = *v132;
                v135[1] = v133;
                if (!v131)
                {
                  break;
                }

                v131 = (v131 - 1) >> 1;
                v132 = &v8[2 * v131];
                v133 = v132[1];
              }

              while (v133 < v120);
              *v123 = v134;
LABEL_164:
              v123[1] = v120;
            }
          }

          a2 -= 2;
          v129 = v9-- <= 2;
          if (v129)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v123 = v119;
      goto LABEL_164;
    }

    v10 = &v8[2 * (v9 >> 1)];
    v11 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v12 = v10[1];
      v13 = v8[1];
      if (v12 >= v13)
      {
        if (v11 < v12)
        {
          v18 = *v10;
          *v10 = *(a2 - 2);
          *(a2 - 2) = v18;
          v10[1] = v11;
          *(a2 - 1) = v12;
          v19 = v10[1];
          v20 = v8[1];
          if (v19 < v20)
          {
            v21 = *v8;
            *v8 = *v10;
            *v10 = v21;
            v8[1] = v19;
            v10[1] = v20;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v11 < v12)
        {
          *v8 = *(a2 - 2);
          *(a2 - 2) = v14;
          v8[1] = v11;
          goto LABEL_27;
        }

        *v8 = *v10;
        *v10 = v14;
        v8[1] = v12;
        v10[1] = v13;
        v26 = *(a2 - 1);
        if (v26 < v13)
        {
          *v10 = *(a2 - 2);
          *(a2 - 2) = v14;
          v10[1] = v26;
LABEL_27:
          *(a2 - 1) = v13;
        }
      }

      v27 = v10 - 2;
      v28 = *(v10 - 1);
      v29 = v8[3];
      v30 = *(a2 - 3);
      if (v28 >= v29)
      {
        if (v30 < v28)
        {
          v32 = *v27;
          *v27 = *(a2 - 4);
          *(a2 - 4) = v32;
          *(v10 - 1) = v30;
          *(a2 - 3) = v28;
          v33 = *(v10 - 1);
          v34 = v8[3];
          if (v33 < v34)
          {
            v35 = *(v8 + 2);
            v8[2] = *v27;
            *v27 = v35;
            v8[3] = v33;
            *(v10 - 1) = v34;
          }
        }
      }

      else
      {
        v31 = *(v8 + 2);
        if (v30 < v28)
        {
          v8[2] = *(a2 - 4);
          *(a2 - 4) = v31;
          v8[3] = v30;
          goto LABEL_39;
        }

        v8[2] = *v27;
        *v27 = v31;
        v8[3] = v28;
        *(v10 - 1) = v29;
        v37 = *(a2 - 3);
        if (v37 < v29)
        {
          *v27 = *(a2 - 4);
          *(a2 - 4) = v31;
          *(v10 - 1) = v37;
LABEL_39:
          *(a2 - 3) = v29;
        }
      }

      v38 = v10[3];
      v39 = v8[5];
      v40 = *(a2 - 5);
      if (v38 >= v39)
      {
        if (v40 < v38)
        {
          v42 = *(v10 + 2);
          v10[2] = *(a2 - 6);
          *(a2 - 6) = v42;
          v10[3] = v40;
          *(a2 - 5) = v38;
          v43 = v10[3];
          v44 = v8[5];
          if (v43 < v44)
          {
            v45 = *(v8 + 4);
            v8[4] = v10[2];
            *(v10 + 2) = v45;
            v8[5] = v43;
            v10[3] = v44;
          }
        }
      }

      else
      {
        v41 = *(v8 + 4);
        if (v40 < v38)
        {
          v8[4] = *(a2 - 6);
          *(a2 - 6) = v41;
          v8[5] = v40;
          goto LABEL_48;
        }

        v8[4] = v10[2];
        *(v10 + 2) = v41;
        v8[5] = v38;
        v10[3] = v39;
        v46 = *(a2 - 5);
        if (v46 < v39)
        {
          v10[2] = *(a2 - 6);
          *(a2 - 6) = v41;
          v10[3] = v46;
LABEL_48:
          *(a2 - 5) = v39;
        }
      }

      v47 = v10[1];
      v48 = *(v10 - 1);
      v49 = v10[3];
      if (v47 >= v48)
      {
        v50 = *v10;
        if (v49 >= v47)
        {
LABEL_55:
          v48 = v47;
        }

        else
        {
          v51 = v10[2];
          *v10 = v51;
          v10[2] = v50;
          v10[1] = v49;
          v10[3] = v47;
          if (v49 >= v48)
          {
            v48 = v49;
            v50 = v51;
          }

          else
          {
            v50 = *v27;
            *v27 = v51;
            *v10 = v50;
            *(v10 - 1) = v49;
            v10[1] = v48;
          }
        }
      }

      else
      {
        v50 = *v27;
        if (v49 < v47)
        {
          *v27 = v10[2];
          v10[2] = v50;
          *(v10 - 1) = v49;
          v10[3] = v48;
          v50 = *v10;
          goto LABEL_55;
        }

        *v27 = *v10;
        *v10 = v50;
        *(v10 - 1) = v47;
        v10[1] = v48;
        if (v49 < v48)
        {
          v70 = v10[2];
          *v10 = v70;
          v10[2] = v50;
          v10[1] = v49;
          v10[3] = v48;
          v48 = v49;
          v50 = v70;
        }
      }

      v52 = *v8;
      *v8 = v50;
      *v10 = v52;
      v53 = *(v8 + 1);
      v8[1] = v48;
      *(v10 + 1) = v53;
      goto LABEL_57;
    }

    v15 = v8[1];
    v16 = v10[1];
    if (v15 >= v16)
    {
      if (v11 < v15)
      {
        v22 = *v8;
        *v8 = *(a2 - 2);
        *(a2 - 2) = v22;
        v8[1] = v11;
        *(a2 - 1) = v15;
        v23 = v8[1];
        v24 = v10[1];
        if (v23 < v24)
        {
          v25 = *v10;
          *v10 = *v8;
          *v8 = v25;
          v10[1] = v23;
          v8[1] = v24;
        }
      }

      goto LABEL_57;
    }

    v17 = *v10;
    if (v11 < v15)
    {
      *v10 = *(a2 - 2);
      *(a2 - 2) = v17;
      v10[1] = v11;
LABEL_36:
      *(a2 - 1) = v16;
      goto LABEL_57;
    }

    *v10 = *v8;
    *v8 = v17;
    v10[1] = v15;
    v8[1] = v16;
    v36 = *(a2 - 1);
    if (v36 < v16)
    {
      *v8 = *(a2 - 2);
      *(a2 - 2) = v17;
      v8[1] = v36;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    if (a4)
    {
      v54 = *v8;
      v55 = v8[1];
LABEL_60:
      v56 = 0;
      do
      {
        v57 = v8[v56 + 3];
        v56 += 2;
      }

      while (v57 < v55);
      v58 = &v8[v56];
      v59 = a2;
      if (v56 == 2)
      {
        v62 = a2;
        while (v58 < v62)
        {
          v60 = v62 - 2;
          v63 = *(v62 - 1);
          v62 -= 2;
          if (v63 < v55)
          {
            goto LABEL_70;
          }
        }

        v60 = v62;
      }

      else
      {
        do
        {
          v60 = v59 - 2;
          v61 = *(v59 - 1);
          v59 -= 2;
        }

        while (v61 >= v55);
      }

LABEL_70:
      v8 = v58;
      if (v58 < v60)
      {
        v64 = v60;
        do
        {
          v65 = *v8;
          *v8 = *v64;
          *v64 = v65;
          v66 = *(v8 + 1);
          v8[1] = v64[1];
          *(v64 + 1) = v66;
          do
          {
            v67 = v8[3];
            v8 += 2;
          }

          while (v67 < v55);
          do
          {
            v68 = *(v64 - 1);
            v64 -= 2;
          }

          while (v68 >= v55);
        }

        while (v8 < v64);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 2);
        v7[1] = *(v8 - 1);
      }

      *(v8 - 2) = v54;
      *(v8 - 1) = v55;
      if (v58 < v60)
      {
        goto LABEL_81;
      }

      v69 = sub_29937FC30(v7, v8 - 2);
      result = sub_29937FC30(v8, a2);
      if (result)
      {
        a2 = v8 - 2;
        if (v69)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v69)
      {
LABEL_81:
        result = sub_29937EE9C(v7, v8 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v55 = v8[1];
      v54 = *v8;
      if (*(v8 - 1) < v55)
      {
        goto LABEL_60;
      }

      if (v55 >= *(a2 - 1))
      {
        v73 = v8 + 2;
        do
        {
          v8 = v73;
          if (v73 >= a2)
          {
            break;
          }

          v74 = v73[1];
          v73 += 2;
        }

        while (v55 >= v74);
      }

      else
      {
        v71 = v8;
        do
        {
          v8 = v71 + 2;
          v72 = v71[3];
          v71 += 2;
        }

        while (v55 >= v72);
      }

      v75 = a2;
      if (v8 < a2)
      {
        v76 = a2;
        do
        {
          v75 = v76 - 2;
          v77 = *(v76 - 1);
          v76 -= 2;
        }

        while (v55 < v77);
      }

      while (v8 < v75)
      {
        v78 = *v8;
        *v8 = *v75;
        *v75 = v78;
        v79 = *(v8 + 1);
        v8[1] = v75[1];
        *(v75 + 1) = v79;
        do
        {
          v80 = v8[3];
          v8 += 2;
        }

        while (v55 >= v80);
        do
        {
          v81 = *(v75 - 1);
          v75 -= 2;
        }

        while (v55 < v81);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 2);
        v7[1] = *(v8 - 1);
      }

      a4 = 0;
      *(v8 - 2) = v54;
      *(v8 - 1) = v55;
    }
  }

  v85 = v8[3];
  v86 = v8[1];
  v87 = *(a2 - 1);
  if (v85 >= v86)
  {
    if (v87 >= v85)
    {
      return result;
    }

    v136 = *(v8 + 2);
    v8[2] = *(a2 - 2);
    *(a2 - 2) = v136;
    v8[3] = v87;
    *(a2 - 1) = v85;
    v137 = v8[3];
    v138 = v8[1];
    if (v137 >= v138)
    {
      return result;
    }

    v139 = *v8;
    *v8 = v8[2];
    v8[2] = v139;
    goto LABEL_194;
  }

  v88 = *v8;
  if (v87 >= v85)
  {
    *v8 = v8[2];
    v8[2] = v88;
    v8[1] = v85;
    v8[3] = v86;
    v150 = *(a2 - 1);
    if (v150 >= v86)
    {
      return result;
    }

    v8[2] = *(a2 - 2);
    *(a2 - 2) = v88;
    v8[3] = v150;
  }

  else
  {
    *v8 = *(a2 - 2);
    *(a2 - 2) = v88;
    v8[1] = v87;
  }

  *(a2 - 1) = v86;
  return result;
}

double *sub_29937FA54(double *result, double *a2, double *a3, double *a4, double *a5)
{
  v5 = a2[1];
  v6 = result[1];
  v7 = a3[1];
  if (v5 >= v6)
  {
    if (v7 >= v5)
    {
      v5 = a3[1];
    }

    else
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      a2[1] = v7;
      a3[1] = v5;
      v10 = a2[1];
      v11 = result[1];
      if (v10 < v11)
      {
        v12 = *result;
        *result = *a2;
        *a2 = v12;
        result[1] = v10;
        a2[1] = v11;
        v5 = a3[1];
      }
    }
  }

  else
  {
    v8 = *result;
    if (v7 < v5)
    {
      *result = *a3;
      *a3 = v8;
      result[1] = v7;
LABEL_9:
      a3[1] = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v8;
    result[1] = v5;
    a2[1] = v6;
    v5 = a3[1];
    if (v5 < v6)
    {
      *a2 = *a3;
      *a3 = v8;
      a2[1] = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  v13 = a4[1];
  if (v13 < v5)
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    a3[1] = v13;
    a4[1] = v5;
    v15 = a3[1];
    v16 = a2[1];
    if (v15 < v16)
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      a2[1] = v15;
      a3[1] = v16;
      v18 = a2[1];
      v19 = result[1];
      if (v18 < v19)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
        result[1] = v18;
        a2[1] = v19;
      }
    }
  }

  v21 = a5[1];
  v22 = a4[1];
  if (v21 < v22)
  {
    v23 = *a4;
    *a4 = *a5;
    *a5 = v23;
    a4[1] = v21;
    a5[1] = v22;
    v24 = a4[1];
    v25 = a3[1];
    if (v24 < v25)
    {
      v26 = *a3;
      *a3 = *a4;
      *a4 = v26;
      a3[1] = v24;
      a4[1] = v25;
      v27 = a3[1];
      v28 = a2[1];
      if (v27 < v28)
      {
        v29 = *a2;
        *a2 = *a3;
        *a3 = v29;
        a2[1] = v27;
        a3[1] = v28;
        v30 = a2[1];
        v31 = result[1];
        if (v30 < v31)
        {
          v32 = *result;
          *result = *a2;
          *a2 = v32;
          result[1] = v30;
          a2[1] = v31;
        }
      }
    }
  }

  return result;
}

BOOL sub_29937FC30(double *a1, double *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[3];
      v7 = a1[1];
      v8 = *(a2 - 1);
      if (v6 < v7)
      {
        v9 = *a1;
        if (v8 >= v6)
        {
          *a1 = a1[2];
          a1[2] = v9;
          a1[1] = v6;
          a1[3] = v7;
          v32 = *(a2 - 1);
          if (v32 >= v7)
          {
            return 1;
          }

          a1[2] = *(a2 - 2);
          *(a2 - 2) = v9;
          a1[3] = v32;
        }

        else
        {
          *a1 = *(a2 - 2);
          *(a2 - 2) = v9;
          a1[1] = v8;
        }

        *(a2 - 1) = v7;
        return 1;
      }

      if (v8 >= v6)
      {
        return 1;
      }

      v22 = *(a1 + 2);
      a1[2] = *(a2 - 2);
      *(a2 - 2) = v22;
      a1[3] = v8;
      *(a2 - 1) = v6;
      v23 = a1[3];
      v24 = a1[1];
      if (v23 >= v24)
      {
        return 1;
      }

      v25 = *a1;
      *a1 = a1[2];
      *(a1 + 2) = v25;
LABEL_54:
      a1[1] = v23;
      a1[3] = v24;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_29937FA54(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

    v16 = a1 + 3;
    v17 = a1[3];
    v18 = a1 + 1;
    v19 = a1[1];
    v20 = a1[5];
    if (v17 >= v19)
    {
      if (v20 >= v17)
      {
        goto LABEL_50;
      }

      v29 = *(a1 + 2);
      v30 = *(a1 + 4);
      *(a1 + 2) = v30;
      *(a1 + 4) = v29;
      a1[3] = v20;
      a1[5] = v17;
      if (v20 >= v19)
      {
        goto LABEL_49;
      }

      v31 = *a1;
      *a1 = v30;
      a1[2] = v31;
    }

    else
    {
      v21 = *a1;
      if (v20 >= v17)
      {
        *a1 = a1[2];
        a1[2] = v21;
        a1[1] = v17;
        a1[3] = v19;
        if (v20 >= v19)
        {
          goto LABEL_50;
        }

        a1[2] = a1[4];
        a1[4] = v21;
        v18 = a1 + 3;
      }

      else
      {
        *a1 = a1[4];
        a1[4] = v21;
      }

      v16 = a1 + 5;
      v17 = v19;
    }

    *v18 = v20;
    *v16 = v19;
LABEL_49:
    v20 = v17;
LABEL_50:
    v42 = *(a2 - 1);
    if (v42 >= v20)
    {
      return 1;
    }

    v43 = *(a1 + 4);
    a1[4] = *(a2 - 2);
    *(a2 - 2) = v43;
    a1[5] = v42;
    *(a2 - 1) = v20;
    v23 = a1[5];
    v44 = a1[3];
    if (v23 >= v44)
    {
      return 1;
    }

    v45 = *(a1 + 2);
    v46 = *(a1 + 4);
    *(a1 + 2) = v46;
    *(a1 + 4) = v45;
    a1[3] = v23;
    a1[5] = v44;
    v24 = a1[1];
    if (v23 >= v24)
    {
      return 1;
    }

    v47 = *a1;
    *a1 = v46;
    a1[2] = v47;
    goto LABEL_54;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = a1[1];
    if (v3 < v4)
    {
      v5 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v5;
      a1[1] = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v10 = a1[3];
  v11 = a1 + 1;
  v12 = a1[1];
  v13 = a1 + 5;
  v14 = a1[5];
  if (v10 < v12)
  {
    v15 = *a1;
    if (v14 >= v10)
    {
      *a1 = a1[2];
      a1[2] = v15;
      a1[1] = v10;
      a1[3] = v12;
      if (v14 >= v12)
      {
        goto LABEL_34;
      }

      a1[2] = a1[4];
      a1[4] = v15;
      v11 = a1 + 3;
    }

    else
    {
      *a1 = a1[4];
      a1[4] = v15;
    }

    goto LABEL_33;
  }

  if (v14 < v10)
  {
    v26 = *(a1 + 2);
    v27 = *(a1 + 4);
    *(a1 + 2) = v27;
    *(a1 + 4) = v26;
    a1[3] = v14;
    a1[5] = v10;
    if (v14 < v12)
    {
      v28 = *a1;
      *a1 = v27;
      a1[2] = v28;
      v13 = a1 + 3;
LABEL_33:
      *v11 = v14;
      *v13 = v12;
    }
  }

LABEL_34:
  v33 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v34 = 0;
  v35 = 0;
  v36 = a1 + 4;
  while (1)
  {
    v37 = v33[1];
    if (v37 < v36[1])
    {
      v38 = *v33;
      v39 = v34;
      while (1)
      {
        v40 = (a1 + v39);
        v40[6] = *(a1 + v39 + 32);
        v40[7] = *(a1 + v39 + 40);
        if (v39 == -32)
        {
          break;
        }

        v39 -= 16;
        if (v37 >= v40[3])
        {
          v41 = a1 + v39 + 48;
          goto LABEL_42;
        }
      }

      v41 = a1;
LABEL_42:
      *v41 = v38;
      *(v41 + 8) = v37;
      if (++v35 == 8)
      {
        return v33 + 2 == a2;
      }
    }

    v36 = v33;
    v34 += 16;
    v33 += 2;
    if (v33 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_29937FFE8(uint64_t a1, CFTypeRef cf, const void *a3, char a4, double a5)
{
  *a1 = CFRetain(cf);
  *(a1 + 8) = CFRetain(a3);
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  return a1;
}

void *sub_299380060(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    sub_29919600C();
  }

  *result = 0;
  result[1] = 32 * a3;
  result[2] = 32 * a3;
  result[3] = 0;
  return result;
}

void sub_2993800D8(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = a2[1] + *a1 - v5;
    v8 = *a1;
    do
    {
      v9 = *v8;
      *v8 = 0;
      *v7 = v9;
      v10 = v8[1];
      v8[1] = 0;
      *(v7 + 8) = v10;
      *(v7 + 16) = *(v8 + 1);
      v8 += 4;
      v7 += 32;
    }

    while (v8 != v5);
    do
    {
      sub_299219AB4(v4 + 1, 0);
      sub_299219AB4(v4, 0);
      v4 += 4;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

uint64_t sub_2993801B8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 32);
    *(a1 + 16) = i - 32;
    sub_299219AB4((i - 24), 0);
    sub_299219AB4(v4, 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **sub_299380224(const void **a1)
{
  sub_299219AB4(a1 + 1, 0);
  sub_299219AB4(a1, 0);
  return a1;
}

void sub_299380260(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  while (2)
  {
    v6 = a2;
    v184 = (a2 - 32);
    j = a1;
    while (1)
    {
      while (1)
      {
        a1 = j;
        v8 = (v6 - j) >> 5;
        if (v8 > 2)
        {
          switch(v8)
          {
            case 3uLL:

              sub_299381308(j, j + 32, v184);
              return;
            case 4uLL:

              sub_299381624(j, j + 32, j + 64, v184);
              return;
            case 5uLL:

              sub_299381834(j, j + 32, j + 64, j + 96, v184);
              return;
          }
        }

        else
        {
          if (v8 < 2)
          {
            return;
          }

          v6 = a2;
          if (v8 == 2)
          {
            v75 = *(a2 - 8);
            v76 = *(j + 24);
            if (v75 > v76 || v75 == v76 && (Length = CFStringGetLength(*v184), Length < CFStringGetLength(*j)))
            {
              v78 = *j;
              v79 = *(j + 8);
              *(j + 8) = 0;
              *j = 0;
              *theStringf = *(j + 16);
              v80 = *(a2 - 32);
              *(a2 - 32) = 0;
              sub_299219AB4(j, v80);
              v82 = *(a2 - 24);
              v81 = a2 - 24;
              *v81 = 0;
              sub_299219AB4((j + 8), v82);
              *(j + 16) = *(a2 - 16);
              sub_299219AB4(v184, v78);
              sub_299219AB4((a2 - 24), v79);
              *(v81 + 8) = *theStringf;
            }

            return;
          }
        }

        if (v8 <= 23)
        {
          if (a4)
          {
            if (j != v6)
            {
              v83 = (j + 32);
              if (j + 32 != a2)
              {
                v84 = 0;
                v85 = j;
                do
                {
                  v86 = v85;
                  v85 = v83;
                  v87 = *(v86 + 56);
                  v88 = *(v86 + 24);
                  if (v87 > v88 || v87 == v88 && (v89 = CFStringGetLength(*v83), v89 < CFStringGetLength(*v86)))
                  {
                    v90 = *(v86 + 32);
                    v91 = *(v86 + 40);
                    *(v86 + 32) = 0;
                    *(v86 + 40) = 0;
                    theStringb = v90;
                    theString_8 = v91;
                    v203 = *(v86 + 48);
                    v92 = *v86;
                    *v86 = 0;
                    sub_299219AB4(v85, v92);
                    v93 = *(v86 + 8);
                    *(v86 + 8) = 0;
                    sub_299219AB4((v85 + 8), v93);
                    *(v85 + 16) = *(v86 + 16);
                    if (v86 == a1)
                    {
                      v101 = (v86 + 16);
LABEL_130:
                      v97 = theStringb;
                      v102 = a1;
                    }

                    else
                    {
                      v94 = v84;
                      while (1)
                      {
                        v95 = a1 + v94;
                        v96 = *(a1 + v94 - 8);
                        if (*(&v203 + 1) <= v96)
                        {
                          v97 = theStringb;
                          if (*(&v203 + 1) != v96)
                          {
                            break;
                          }

                          v98 = CFStringGetLength(theStringb);
                          if (v98 >= CFStringGetLength(*(v95 - 32)))
                          {
                            break;
                          }
                        }

                        v99 = *(v95 - 32);
                        *(v95 - 32) = 0;
                        sub_299219AB4((a1 + v94), v99);
                        v100 = *(v95 - 24);
                        *(v95 - 24) = 0;
                        sub_299219AB4((v95 + 8), v100);
                        *(v95 + 16) = *(v95 - 16);
                        v94 -= 32;
                        if (!v94)
                        {
                          v101 = (a1 + 16);
                          goto LABEL_130;
                        }
                      }

                      v102 = (a1 + v94);
                      v101 = (a1 + v94 + 16);
                    }

                    sub_299219AB4(v102, v97);
                    sub_299219AB4(v102 + 1, theString_8);
                    *v101 = v203;
                  }

                  v83 = (v85 + 32);
                  v84 += 32;
                }

                while (v85 + 32 != a2);
              }
            }
          }

          else if (j != v6)
          {
            v167 = (j + 32);
            if (j + 32 != a2)
            {
              v168 = (j + 48);
              do
              {
                v169 = a1;
                a1 = v167;
                v170 = *(v169 + 56);
                v171 = *(v169 + 24);
                if (v170 > v171 || v170 == v171 && (v172 = CFStringGetLength(*v167), v172 < CFStringGetLength(*v169)))
                {
                  v173 = *a1;
                  *a1 = 0;
                  v174 = *(v169 + 40);
                  *(v169 + 40) = 0;
                  theStringd = v173;
                  theString_8b = v174;
                  v206 = *(v169 + 48);
                  v175 = *(v169 + 56);
                  for (i = v168; ; i -= 2)
                  {
                    v177 = *(i - 6);
                    *(i - 6) = 0;
                    sub_299219AB4(i - 2, v177);
                    v178 = *(i - 5);
                    *(i - 5) = 0;
                    sub_299219AB4(i - 1, v178);
                    *i = *(i - 2);
                    v179 = *(i - 7);
                    if (v175 <= v179)
                    {
                      if (v175 != v179)
                      {
                        break;
                      }

                      v180 = CFStringGetLength(theStringd);
                      if (v180 >= CFStringGetLength(*(i - 10)))
                      {
                        break;
                      }
                    }
                  }

                  sub_299219AB4(i - 6, theStringd);
                  sub_299219AB4(i - 5, theString_8b);
                  *(i - 2) = v206;
                }

                v167 = (a1 + 32);
                v168 += 2;
              }

              while (a1 + 32 != a2);
            }
          }

          return;
        }

        if (!a3)
        {
          if (j != v6)
          {
            v103 = (v8 - 2) >> 1;
            v185 = v103;
            do
            {
              v104 = v103;
              if (v185 >= v103)
              {
                v105 = (2 * v103) | 1;
                v106 = a1 + 32 * v105;
                if (2 * v103 + 2 < v8)
                {
                  v107 = *(v106 + 24);
                  v108 = *(v106 + 56);
                  if (v107 > v108 || v107 == v108 && (v109 = CFStringGetLength(*v106), v109 < CFStringGetLength(*(v106 + 32))))
                  {
                    v106 += 32;
                    v105 = 2 * v104 + 2;
                  }
                }

                v110 = a1 + 32 * v104;
                v111 = *(v106 + 24);
                v112 = *(v110 + 24);
                if (v111 <= v112)
                {
                  if (v111 != v112 || (v113 = CFStringGetLength(*v106), v113 >= CFStringGetLength(*v110)))
                  {
                    v114 = *v110;
                    *v110 = 0;
                    theStringc = v114;
                    v115 = *(v110 + 8);
                    *(v110 + 8) = 0;
                    theString_8a = v115;
                    v204 = *(v110 + 16);
                    v116 = *v106;
                    *v106 = 0;
                    sub_299219AB4((a1 + 32 * v104), v116);
                    v117 = *(v106 + 8);
                    *(v106 + 8) = 0;
                    sub_299219AB4((v110 + 8), v117);
                    v118 = (v106 + 16);
                    *(v110 + 16) = *(v106 + 16);
                    v119 = v106;
                    while (v185 >= v105)
                    {
                      v120 = 2 * v105;
                      v105 = (2 * v105) | 1;
                      v119 = a1 + 32 * v105;
                      v121 = v120 + 2;
                      if (v120 + 2 < v8)
                      {
                        v122 = *(v119 + 24);
                        v123 = *(v119 + 56);
                        if (v122 > v123 || v122 == v123 && (v124 = CFStringGetLength(*v119), v124 < CFStringGetLength(*(v119 + 32))))
                        {
                          v119 += 32;
                          v105 = v121;
                        }
                      }

                      v125 = *(v119 + 24);
                      if (v125 > *(&v204 + 1) || v125 == *(&v204 + 1) && (v126 = CFStringGetLength(*v119), v126 < CFStringGetLength(theStringc)))
                      {
                        v119 = v106;
                        break;
                      }

                      v127 = *v119;
                      *v119 = 0;
                      sub_299219AB4(v106, v127);
                      v128 = *(v119 + 8);
                      *(v119 + 8) = 0;
                      sub_299219AB4((v106 + 8), v128);
                      v118 = (v119 + 16);
                      *(v106 + 16) = *(v119 + 16);
                      v106 = v119;
                    }

                    sub_299219AB4(v119, theStringc);
                    sub_299219AB4((v119 + 8), theString_8a);
                    *v118 = v204;
                  }
                }
              }

              v103 = v104 - 1;
            }

            while (v104);
            do
            {
              v129 = 0;
              v130 = a2;
              v131 = *a1;
              v132 = *(a1 + 16);
              *a1 = 0;
              *(a1 + 8) = 0;
              *cf = v131;
              v190 = v132;
              v133 = a1;
              do
              {
                v134 = v133;
                v135 = v133 + 32 * v129;
                v133 = v135 + 32;
                v136 = 2 * v129;
                v129 = (2 * v129) | 1;
                v137 = v136 + 2;
                if (v136 + 2 < v8)
                {
                  v138 = (v135 + 64);
                  v139 = *(v135 + 56);
                  v140 = *(v135 + 88);
                  if (v139 > v140 || v139 == v140 && (v141 = CFStringGetLength(*v133), v141 < CFStringGetLength(*v138)))
                  {
                    v133 = v138;
                    v129 = v137;
                  }
                }

                v142 = *v133;
                *v133 = 0;
                sub_299219AB4(v134, v142);
                v143 = *(v133 + 8);
                *(v133 + 8) = 0;
                sub_299219AB4((v134 + 8), v143);
                *(v134 + 16) = *(v133 + 16);
              }

              while (v129 <= ((v8 - 2) >> 1));
              v144 = (a2 - 32);
              a2 -= 32;
              if (v133 == v130 - 32)
              {
                sub_299219AB4(v133, cf[0]);
                sub_299219AB4((v133 + 8), cf[1]);
                *(v133 + 16) = v190;
              }

              else
              {
                v145 = *(v130 - 32);
                *(v130 - 32) = 0;
                sub_299219AB4(v133, v145);
                v147 = *(v130 - 24);
                v146 = v130 - 24;
                *v146 = 0;
                sub_299219AB4((v133 + 8), v147);
                *(v133 + 16) = *(v146 + 8);
                sub_299219AB4(v144, cf[0]);
                sub_299219AB4(v146, cf[1]);
                *(v146 + 8) = v190;
                v148 = (v133 - a1 + 32) >> 5;
                v149 = v148 - 2;
                if (v148 >= 2)
                {
                  v150 = v149 >> 1;
                  v151 = a1 + 32 * (v149 >> 1);
                  v152 = *(v151 + 24);
                  v153 = *(v133 + 24);
                  if (v152 > v153 || v152 == v153 && (v154 = CFStringGetLength(*v151), v154 < CFStringGetLength(*v133)))
                  {
                    v156 = *v133;
                    v155 = *(v133 + 8);
                    *v133 = 0;
                    *(v133 + 8) = 0;
                    v205 = *(v133 + 16);
                    v157 = *v151;
                    *v151 = 0;
                    sub_299219AB4(v133, v157);
                    v158 = *(v151 + 8);
                    *(v151 + 8) = 0;
                    sub_299219AB4((v133 + 8), v158);
                    v159 = (v151 + 16);
                    *(v133 + 16) = *(v151 + 16);
                    if (v149 >= 2)
                    {
                      while (1)
                      {
                        v161 = v150 - 1;
                        v150 = (v150 - 1) >> 1;
                        v160 = a1 + 32 * v150;
                        v162 = *(v160 + 24);
                        if (v162 <= *(&v205 + 1))
                        {
                          if (v162 != *(&v205 + 1))
                          {
                            break;
                          }

                          v163 = CFStringGetLength(*v160);
                          if (v163 >= CFStringGetLength(v156))
                          {
                            break;
                          }
                        }

                        v164 = *v160;
                        *v160 = 0;
                        sub_299219AB4(v151, v164);
                        v165 = *(v160 + 8);
                        *(v160 + 8) = 0;
                        sub_299219AB4((v151 + 8), v165);
                        v159 = (v160 + 16);
                        *(v151 + 16) = *(v160 + 16);
                        v151 = a1 + 32 * v150;
                        if (v161 <= 1)
                        {
                          goto LABEL_179;
                        }
                      }
                    }

                    v160 = v151;
LABEL_179:
                    sub_299219AB4(v160, v156);
                    sub_299219AB4((v160 + 8), v155);
                    *v159 = v205;
                  }
                }
              }
            }

            while (v8-- > 2);
          }

          return;
        }

        v9 = j + 32 * (v8 >> 1);
        if (v8 < 0x81)
        {
          sub_299381308(a1 + 32 * (v8 >> 1), a1, v184);
        }

        else
        {
          sub_299381308(a1, a1 + 32 * (v8 >> 1), v184);
          sub_299381308(a1 + 32, v9 - 32, a2 - 64);
          sub_299381308(a1 + 64, a1 + 32 + 32 * (v8 >> 1), a2 - 96);
          sub_299381308(v9 - 32, a1 + 32 * (v8 >> 1), a1 + 32 + 32 * (v8 >> 1));
          v10 = *a1;
          v11 = *(a1 + 8);
          *(a1 + 8) = 0;
          *a1 = 0;
          *theStringe = *(a1 + 16);
          v12 = *v9;
          *v9 = 0;
          sub_299219AB4(a1, v12);
          v13 = *(v9 + 8);
          *(v9 + 8) = 0;
          sub_299219AB4((a1 + 8), v13);
          *(a1 + 16) = *(v9 + 16);
          sub_299219AB4((a1 + 32 * (v8 >> 1)), v10);
          sub_299219AB4((v9 + 8), v11);
          *(v9 + 16) = *theStringe;
        }

        --a3;
        if (a4)
        {
          break;
        }

        v14 = *(a1 - 8);
        v15 = *(a1 + 24);
        if (v14 > v15)
        {
          break;
        }

        if (v14 == v15)
        {
          v16 = CFStringGetLength(*(a1 - 32));
          if (v16 < CFStringGetLength(*a1))
          {
            break;
          }
        }

        v50 = *a1;
        v49 = *(a1 + 16);
        *(a1 + 8) = 0;
        *a1 = 0;
        v183 = v50;
        *theStringa = v50;
        v202 = v49;
        v51 = *(&v49 + 1);
        v52 = *(v6 - 8);
        if (*(&v202 + 1) > v52 || *(&v202 + 1) == v52 && (v53 = CFStringGetLength(v50), v53 < CFStringGetLength(*v184)))
        {
          v54 = *(a1 + 56);
          if (v51 <= v54)
          {
            v57 = (a1 + 88);
            do
            {
              if (v51 == v54)
              {
                v58 = CFStringGetLength(v183);
                if (v58 < CFStringGetLength(*(v57 - 7)))
                {
                  break;
                }
              }

              v59 = *v57;
              v57 += 4;
              v54 = v59;
            }

            while (v51 <= v59);
            j = (v57 - 7);
          }

          else
          {
            j = a1 + 32;
          }
        }

        else
        {
          for (j = a1 + 32; j < v6; j += 32)
          {
            v55 = *(j + 24);
            if (v51 > v55)
            {
              break;
            }

            if (v51 == v55)
            {
              v56 = CFStringGetLength(v183);
              if (v56 < CFStringGetLength(*j))
              {
                break;
              }
            }
          }
        }

        k = v6;
        if (j < v6)
        {
          for (k = a2 - 32; ; k -= 32)
          {
            v61 = *(k + 24);
            if (v51 <= v61)
            {
              if (v51 != v61)
              {
                break;
              }

              v62 = CFStringGetLength(v183);
              if (v62 >= CFStringGetLength(*k))
              {
                break;
              }
            }
          }
        }

        while (j < k)
        {
          v63 = *j;
          v64 = *(j + 8);
          *(j + 8) = 0;
          *j = 0;
          *cfb = *(j + 16);
          v65 = *k;
          *k = 0;
          sub_299219AB4(j, v65);
          v66 = *(k + 8);
          *(k + 8) = 0;
          sub_299219AB4((j + 8), v66);
          *(j + 16) = *(k + 16);
          sub_299219AB4(k, v63);
          sub_299219AB4((k + 8), v64);
          *(k + 16) = *cfb;
          v67 = *(j + 56);
          if (*(&v202 + 1) <= v67)
          {
            v68 = (j + 88);
            do
            {
              if (*(&v202 + 1) == v67)
              {
                v69 = CFStringGetLength(theStringa[0]);
                if (v69 < CFStringGetLength(*(v68 - 7)))
                {
                  break;
                }
              }

              v70 = *v68;
              v68 += 4;
              v67 = v70;
            }

            while (*(&v202 + 1) <= v70);
            j = (v68 - 7);
          }

          else
          {
            j += 32;
          }

          do
          {
            do
            {
              k -= 32;
              v71 = *(k + 24);
            }

            while (*(&v202 + 1) > v71);
            if (*(&v202 + 1) != v71)
            {
              break;
            }

            v72 = CFStringGetLength(theStringa[0]);
          }

          while (v72 < CFStringGetLength(*k));
        }

        if (j - 32 != a1)
        {
          v73 = *(j - 32);
          *(j - 32) = 0;
          sub_299219AB4(a1, v73);
          v74 = *(j - 24);
          *(j - 24) = 0;
          sub_299219AB4((a1 + 8), v74);
          *(a1 + 16) = *(j - 16);
        }

        sub_299219AB4((j - 32), theStringa[0]);
        sub_299219AB4((j - 24), theStringa[1]);
        *(j - 16) = v202;
LABEL_52:
        a4 = 0;
      }

      v17 = 0;
      v18 = *a1;
      v19 = *(a1 + 16);
      *(a1 + 8) = 0;
      *a1 = 0;
      *theString = v18;
      v201 = v19;
      v20 = *(&v19 + 1);
      v21 = v18;
      while (1)
      {
        v22 = *(a1 + v17 + 56);
        if (v22 <= v20)
        {
          if (v22 != v20)
          {
            break;
          }

          v23 = CFStringGetLength(*(a1 + v17 + 32));
          if (v23 >= CFStringGetLength(v21))
          {
            break;
          }
        }

        v17 += 32;
      }

      v182 = a3;
      v24 = a1 + v17 + 32;
      if (v17)
      {
        v25 = *(v6 - 8);
        v26 = a2 - 40;
        v27 = a2 - 32;
        if (v25 <= v20)
        {
          do
          {
            if (v25 == v20)
            {
              v28 = CFStringGetLength(*(v26 + 8));
              if (v28 < CFStringGetLength(v21))
              {
                break;
              }
            }

            v29 = *v26;
            v26 -= 32;
            v25 = v29;
          }

          while (v29 <= v20);
LABEL_28:
          v27 = v26 + 8;
        }
      }

      else
      {
        v27 = v6;
        if (v24 < v6)
        {
          v27 = a2 - 32;
          v30 = *(a2 - 8);
          if (v30 <= v20)
          {
            v26 = a2 - 40;
            v27 = a2 - 32;
            while (1)
            {
              v45 = (v26 + 8);
              if (v30 == v20)
              {
                v46 = CFStringGetLength(*v45);
                v47 = v46 < CFStringGetLength(v21) || v24 >= v45;
                if (v47)
                {
                  goto LABEL_28;
                }
              }

              else if (v24 >= v45)
              {
                break;
              }

              v27 -= 32;
              v48 = *v26;
              v26 -= 32;
              v30 = v48;
              if (v48 > v20)
              {
                goto LABEL_28;
              }
            }
          }
        }
      }

      j = v24;
      if (v24 < v27)
      {
        v31 = v27;
        do
        {
          v32 = *j;
          v33 = *(j + 8);
          *(j + 8) = 0;
          *j = 0;
          *cfa = *(j + 16);
          v34 = *v31;
          *v31 = 0;
          sub_299219AB4(j, v34);
          v35 = *(v31 + 8);
          *(v31 + 8) = 0;
          sub_299219AB4((j + 8), v35);
          *(j + 16) = *(v31 + 16);
          sub_299219AB4(v31, v32);
          sub_299219AB4((v31 + 8), v33);
          *(v31 + 16) = *cfa;
          do
          {
            do
            {
              j += 32;
              v36 = *(j + 24);
            }

            while (v36 > *(&v201 + 1));
            if (v36 != *(&v201 + 1))
            {
              break;
            }

            v37 = CFStringGetLength(*j);
          }

          while (v37 < CFStringGetLength(theString[0]));
          v38 = *(v31 - 8);
          if (v38 <= *(&v201 + 1))
          {
            v39 = v31 - 40;
            do
            {
              if (v38 == *(&v201 + 1))
              {
                v40 = CFStringGetLength(*(v39 + 8));
                if (v40 < CFStringGetLength(theString[0]))
                {
                  break;
                }
              }

              v41 = *v39;
              v39 -= 32;
              v38 = v41;
            }

            while (v41 <= *(&v201 + 1));
            v31 = v39 + 8;
          }

          else
          {
            v31 -= 32;
          }
        }

        while (j < v31);
      }

      if (j - 32 != a1)
      {
        v42 = *(j - 32);
        *(j - 32) = 0;
        sub_299219AB4(a1, v42);
        v43 = *(j - 24);
        *(j - 24) = 0;
        sub_299219AB4((a1 + 8), v43);
        *(a1 + 16) = *(j - 16);
      }

      sub_299219AB4((j - 32), theString[0]);
      sub_299219AB4((j - 24), theString[1]);
      *(j - 16) = v201;
      v6 = a2;
      v47 = v24 >= v27;
      a3 = v182;
      if (!v47)
      {
LABEL_51:
        sub_299380260(a1, j - 32, v182, a4 & 1);
        goto LABEL_52;
      }

      v44 = sub_299381AE4(a1, j - 32);
      if (sub_299381AE4(j, a2))
      {
        break;
      }

      if (!v44)
      {
        goto LABEL_51;
      }
    }

    a2 = j - 32;
    if (!v44)
    {
      continue;
    }

    break;
  }
}

void sub_299381290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_299380224(va);
  _Unwind_Resume(a1);
}

__n128 sub_299381308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result.n128_u64[0] = *(a2 + 24);
  v7 = *(a1 + 24);
  if (result.n128_f64[0] > v7 || result.n128_f64[0] == v7 && (v8 = CFStringGetLength(*a2), v9 = CFStringGetLength(*a1), result.n128_u64[0] = *(a2 + 24), v8 < v9))
  {
    v10 = *(a3 + 24);
    if (v10 > result.n128_f64[0] || v10 == result.n128_f64[0] && (Length = CFStringGetLength(*a3), Length < CFStringGetLength(*a2)))
    {
      v12 = *a1;
      v13 = *(a1 + 8);
      *(a1 + 8) = 0;
      *a1 = 0;
      v40 = *(a1 + 16);
      v14 = *a3;
      *a3 = 0;
      sub_299219AB4(a1, v14);
      v16 = (a3 + 8);
      v15 = *(a3 + 8);
      *(a3 + 8) = 0;
      sub_299219AB4((a1 + 8), v15);
      *(a1 + 16) = *(a3 + 16);
      v17 = a3;
      v18 = v12;
LABEL_19:
      sub_299219AB4(v17, v18);
      sub_299219AB4(v16, v13);
      result = v40;
      *(a3 + 16) = v40;
      return result;
    }

    v31 = *a1;
    v32 = *(a1 + 8);
    *(a1 + 8) = 0;
    *a1 = 0;
    v43 = *(a1 + 16);
    v33 = *a2;
    *a2 = 0;
    sub_299219AB4(a1, v33);
    v34 = *(a2 + 8);
    *(a2 + 8) = 0;
    sub_299219AB4((a1 + 8), v34);
    *(a1 + 16) = *(a2 + 16);
    sub_299219AB4(a2, v31);
    sub_299219AB4((a2 + 8), v32);
    result.n128_u64[1] = *(&v43 + 1);
    *(a2 + 16) = v43;
    result.n128_u64[0] = *(a3 + 24);
    v35 = *(a2 + 24);
    if (result.n128_f64[0] > v35 || result.n128_f64[0] == v35 && (v36 = CFStringGetLength(*a3), v36 < CFStringGetLength(*a2)))
    {
      v37 = *a2;
      v13 = *(a2 + 8);
      *a2 = 0;
      *(a2 + 8) = 0;
      v40 = *(a2 + 16);
      v38 = *a3;
      *a3 = 0;
      sub_299219AB4(a2, v38);
      v16 = (a3 + 8);
      v39 = *(a3 + 8);
      *(a3 + 8) = 0;
      sub_299219AB4((a2 + 8), v39);
      *(a2 + 16) = *(a3 + 16);
      v17 = a3;
      v18 = v37;
      goto LABEL_19;
    }
  }

  else
  {
    v19 = *(a3 + 24);
    if (v19 > result.n128_f64[0] || v19 == result.n128_f64[0] && (v20 = CFStringGetLength(*a3), v20 < CFStringGetLength(*a2)))
    {
      v21 = *a2;
      v22 = *(a2 + 8);
      *(a2 + 8) = 0;
      *a2 = 0;
      v41 = *(a2 + 16);
      v23 = *a3;
      *a3 = 0;
      sub_299219AB4(a2, v23);
      v24 = *(a3 + 8);
      *(a3 + 8) = 0;
      sub_299219AB4((a2 + 8), v24);
      *(a2 + 16) = *(a3 + 16);
      sub_299219AB4(a3, v21);
      sub_299219AB4((a3 + 8), v22);
      result.n128_u64[1] = *(&v41 + 1);
      *(a3 + 16) = v41;
      result.n128_u64[0] = *(a2 + 24);
      v25 = *(a1 + 24);
      if (result.n128_f64[0] > v25 || result.n128_f64[0] == v25 && (v26 = CFStringGetLength(*a2), v26 < CFStringGetLength(*a1)))
      {
        v27 = *a1;
        v28 = *(a1 + 8);
        *(a1 + 8) = 0;
        *a1 = 0;
        v42 = *(a1 + 16);
        v29 = *a2;
        *a2 = 0;
        sub_299219AB4(a1, v29);
        v30 = *(a2 + 8);
        *(a2 + 8) = 0;
        sub_299219AB4((a1 + 8), v30);
        *(a1 + 16) = *(a2 + 16);
        sub_299219AB4(a2, v27);
        sub_299219AB4((a2 + 8), v28);
        result = v42;
        *(a2 + 16) = v42;
      }
    }
  }

  return result;
}

__n128 sub_299381624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_299381308(a1, a2, a3);
  result.n128_u64[0] = *(a4 + 24);
  v9 = *(a3 + 24);
  if (result.n128_f64[0] > v9 || result.n128_f64[0] == v9 && (v10 = CFStringGetLength(*a4), v10 < CFStringGetLength(*a3)))
  {
    v11 = *a3;
    v12 = *(a3 + 8);
    *(a3 + 8) = 0;
    *a3 = 0;
    v27 = *(a3 + 16);
    v13 = *a4;
    *a4 = 0;
    sub_299219AB4(a3, v13);
    v14 = *(a4 + 8);
    *(a4 + 8) = 0;
    sub_299219AB4((a3 + 8), v14);
    *(a3 + 16) = *(a4 + 16);
    sub_299219AB4(a4, v11);
    sub_299219AB4((a4 + 8), v12);
    result.n128_u64[1] = *(&v27 + 1);
    *(a4 + 16) = v27;
    result.n128_u64[0] = *(a3 + 24);
    v15 = *(a2 + 24);
    if (result.n128_f64[0] > v15 || result.n128_f64[0] == v15 && (v16 = CFStringGetLength(*a3), v16 < CFStringGetLength(*a2)))
    {
      v17 = *a2;
      v18 = *(a2 + 8);
      *(a2 + 8) = 0;
      *a2 = 0;
      v28 = *(a2 + 16);
      v19 = *a3;
      *a3 = 0;
      sub_299219AB4(a2, v19);
      v20 = *(a3 + 8);
      *(a3 + 8) = 0;
      sub_299219AB4((a2 + 8), v20);
      *(a2 + 16) = *(a3 + 16);
      sub_299219AB4(a3, v17);
      sub_299219AB4((a3 + 8), v18);
      result.n128_u64[1] = *(&v28 + 1);
      *(a3 + 16) = v28;
      result.n128_u64[0] = *(a2 + 24);
      v21 = *(a1 + 24);
      if (result.n128_f64[0] > v21 || result.n128_f64[0] == v21 && (Length = CFStringGetLength(*a2), Length < CFStringGetLength(*a1)))
      {
        v23 = *a1;
        v24 = *(a1 + 8);
        *(a1 + 8) = 0;
        *a1 = 0;
        v29 = *(a1 + 16);
        v25 = *a2;
        *a2 = 0;
        sub_299219AB4(a1, v25);
        v26 = *(a2 + 8);
        *(a2 + 8) = 0;
        sub_299219AB4((a1 + 8), v26);
        *(a1 + 16) = *(a2 + 16);
        sub_299219AB4(a2, v23);
        sub_299219AB4((a2 + 8), v24);
        result = v29;
        *(a2 + 16) = v29;
      }
    }
  }

  return result;
}

__n128 sub_299381834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_299381624(a1, a2, a3, a4);
  result.n128_u64[0] = *(a5 + 24);
  v11 = *(a4 + 24);
  if (result.n128_f64[0] > v11 || result.n128_f64[0] == v11 && (v12 = CFStringGetLength(*a5), v12 < CFStringGetLength(*a4)))
  {
    v13 = *a4;
    v14 = *(a4 + 8);
    *(a4 + 8) = 0;
    *a4 = 0;
    v35 = *(a4 + 16);
    v15 = *a5;
    *a5 = 0;
    sub_299219AB4(a4, v15);
    v16 = *(a5 + 8);
    *(a5 + 8) = 0;
    sub_299219AB4((a4 + 8), v16);
    *(a4 + 16) = *(a5 + 16);
    sub_299219AB4(a5, v13);
    sub_299219AB4((a5 + 8), v14);
    result.n128_u64[1] = *(&v35 + 1);
    *(a5 + 16) = v35;
    result.n128_u64[0] = *(a4 + 24);
    v17 = *(a3 + 24);
    if (result.n128_f64[0] > v17 || result.n128_f64[0] == v17 && (v18 = CFStringGetLength(*a4), v18 < CFStringGetLength(*a3)))
    {
      v19 = *a3;
      v20 = *(a3 + 8);
      *(a3 + 8) = 0;
      *a3 = 0;
      v36 = *(a3 + 16);
      v21 = *a4;
      *a4 = 0;
      sub_299219AB4(a3, v21);
      v22 = *(a4 + 8);
      *(a4 + 8) = 0;
      sub_299219AB4((a3 + 8), v22);
      *(a3 + 16) = *(a4 + 16);
      sub_299219AB4(a4, v19);
      sub_299219AB4((a4 + 8), v20);
      result.n128_u64[1] = *(&v36 + 1);
      *(a4 + 16) = v36;
      result.n128_u64[0] = *(a3 + 24);
      v23 = *(a2 + 24);
      if (result.n128_f64[0] > v23 || result.n128_f64[0] == v23 && (v24 = CFStringGetLength(*a3), v24 < CFStringGetLength(*a2)))
      {
        v25 = *a2;
        v26 = *(a2 + 8);
        *(a2 + 8) = 0;
        *a2 = 0;
        v37 = *(a2 + 16);
        v27 = *a3;
        *a3 = 0;
        sub_299219AB4(a2, v27);
        v28 = *(a3 + 8);
        *(a3 + 8) = 0;
        sub_299219AB4((a2 + 8), v28);
        *(a2 + 16) = *(a3 + 16);
        sub_299219AB4(a3, v25);
        sub_299219AB4((a3 + 8), v26);
        result.n128_u64[1] = *(&v37 + 1);
        *(a3 + 16) = v37;
        result.n128_u64[0] = *(a2 + 24);
        v29 = *(a1 + 24);
        if (result.n128_f64[0] > v29 || result.n128_f64[0] == v29 && (Length = CFStringGetLength(*a2), Length < CFStringGetLength(*a1)))
        {
          v31 = *a1;
          v32 = *(a1 + 8);
          *(a1 + 8) = 0;
          *a1 = 0;
          v38 = *(a1 + 16);
          v33 = *a2;
          *a2 = 0;
          sub_299219AB4(a1, v33);
          v34 = *(a2 + 8);
          *(a2 + 8) = 0;
          sub_299219AB4((a1 + 8), v34);
          *(a1 + 16) = *(a2 + 16);
          sub_299219AB4(a2, v31);
          sub_299219AB4((a2 + 8), v32);
          result = v38;
          *(a2 + 16) = v38;
        }
      }
    }
  }

  return result;
}

BOOL sub_299381AE4(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 5;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = (a2 - 32);
        v6 = *(a2 - 8);
        v7 = *(a1 + 24);
        if (v6 > v7 || v6 == v7 && (Length = CFStringGetLength(*v5), Length < CFStringGetLength(*a1)))
        {
          v9 = *a1;
          v10 = *(a1 + 8);
          *(a1 + 8) = 0;
          *a1 = 0;
          *theStringa = *(a1 + 16);
          v11 = *(a2 - 32);
          *(a2 - 32) = 0;
          sub_299219AB4(a1, v11);
          v13 = *(a2 - 24);
          v12 = a2 - 24;
          *v12 = 0;
          sub_299219AB4((a1 + 8), v13);
          *(a1 + 16) = *(v12 + 8);
          sub_299219AB4(v5, v9);
          sub_299219AB4(v12, v10);
          *(v12 + 8) = *theStringa;
        }

        return 1;
      }

      goto LABEL_13;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_299381308(a1, a1 + 32, a2 - 32);
      return 1;
    case 4:
      sub_299381624(a1, a1 + 32, a1 + 64, a2 - 32);
      return 1;
    case 5:
      sub_299381834(a1, a1 + 32, a1 + 64, a1 + 96, a2 - 32);
      return 1;
  }

LABEL_13:
  v14 = a1 + 64;
  sub_299381308(a1, a1 + 32, a1 + 64);
  v15 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    v18 = *(v15 + 24);
    v19 = *(v14 + 24);
    if (v18 > v19 || v18 == v19 && (v20 = CFStringGetLength(*v15), v20 < CFStringGetLength(*v14)))
    {
      v21 = *v15;
      v22 = *(v15 + 16);
      *v15 = 0;
      *(v15 + 8) = 0;
      *theString = v21;
      v38 = v22;
      v23 = *v14;
      *v14 = 0;
      sub_299219AB4(v15, v23);
      v24 = *(v14 + 8);
      *(v14 + 8) = 0;
      sub_299219AB4((v15 + 8), v24);
      *(v15 + 16) = *(v14 + 16);
      v25 = v16;
      while (1)
      {
        v26 = a1 + v25;
        v27 = *(a1 + v25 + 56);
        if (*(&v38 + 1) <= v27)
        {
          v28 = theString[0];
          if (*(&v38 + 1) != v27)
          {
            break;
          }

          v29 = CFStringGetLength(theString[0]);
          if (v29 >= CFStringGetLength(*(v26 + 32)))
          {
            break;
          }
        }

        v30 = *(v26 + 32);
        *(v26 + 32) = 0;
        sub_299219AB4((v26 + 64), v30);
        v31 = *(v26 + 40);
        *(v26 + 40) = 0;
        sub_299219AB4((v26 + 72), v31);
        *(v26 + 80) = *(v26 + 48);
        v25 -= 32;
        if (v25 == -64)
        {
          v28 = theString[0];
          v32 = (a1 + 16);
          v33 = a1;
          goto LABEL_25;
        }
      }

      v34 = a1 + v25;
      v32 = (a1 + v25 + 80);
      v33 = (v34 + 64);
LABEL_25:
      sub_299219AB4(v33, v28);
      sub_299219AB4(v33 + 1, theString[1]);
      *v32 = v38;
      if (++v17 == 8)
      {
        return v15 + 32 == a2;
      }
    }

    v14 = v15;
    v16 += 32;
    v15 += 32;
    if (v15 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_299381E58(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F74BD8;
  a2[1] = v2;
  return result;
}

uint64_t sub_299381E98(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F74C48))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299381EE4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_299381FF4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_29938202C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1F74C68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_299382110(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29938214C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299382184(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_2993821B4(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F74D08))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_299382268(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F74D30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2993822A8(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F74D90))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_299382368(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F74DB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

CFIndex sub_299382398(CFIndex result, const __CFString **a2, CFStringRef *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *a3;
  if (*a2)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = result;
    v8 = *a4;
    v9 = *(result + 8);
    Length = CFStringGetLength(*a3);
    v11 = *(v9 + 24);
    if (*(v9 + 16) == v11 || *(v9 + 40) != 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = (*(**(v11 - 8) + 48))(*(v11 - 8));
    }

    result = CFStringGetLength(v12);
    if (Length)
    {
      if (**(v7 + 16) & 1) != 0 || (v13 = result, sub_29937E3F8(v9, v4), (**(v7 + 16)))
      {
        result = CFStringHasSuffix(v4, @"'");
        if (!result)
        {
          result = CFStringHasSuffix(v4, @"'s");
          if (!result)
          {
            MutableCopy = CFStringCreateMutableCopy(0, 0, v5);
            v17.length = CFStringGetLength(v5) - 2;
            v17.location = 1;
            CFStringFindAndReplace(MutableCopy, @" ", &stru_2A1F7E6E8, v17, 0);
            sub_29937E4DC(v9, MutableCopy, v5, v4);
          }
        }
      }

      else
      {
        if (v13 >= Length)
        {

          sub_29937E4DC(v9, v5, v5, v4);
        }

        v16.location = 0;
        v16.length = v13;
        result = CFStringCreateWithSubstring(*MEMORY[0x29EDB8ED8], v5, v16);
        if (result)
        {
          sub_29937E4DC(v9, result, v5, v4);
        }
      }
    }
  }

  return result;
}

void sub_2993825A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993825D4(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F74E10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_299382694(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F74E30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2993826C4(uint64_t a1, uint64_t *a2, const __CFString **a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *a4;
  v7 = *(a1 + 16);
  if (sub_29937E3F8(v7, *a2) >= -8.5)
  {
    sub_29937E4DC(v7, 0, v5, v4);
  }
}

uint64_t sub_299382740(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F74E90))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_299382808(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F74EB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_299382840(uint64_t result, const __CFString **a2, const void **a3, double *a4)
{
  v4 = *a2;
  v5 = *a3;
  if (*a2)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return result;
  }

  v7 = result;
  v8 = *(result + 8);
  v9 = *(result + 24);
  if (*v9 == 1)
  {
    v10 = *a4;
    result = CFStringHasSuffix(v4, @"'");
    if (result)
    {
      return result;
    }

    result = CFStringHasSuffix(v4, @"'s");
    if (result)
    {
      return result;
    }

    v12 = v7 + 16;
    v11 = *(v7 + 16);
    v9 = *(v12 + 8);
    if (*v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = *(result + 16);
  }

  v10 = sub_29937E3F8(v8, v4);
LABEL_12:
  v14 = v11[1];
  v13 = v11[2];
  if (v14 >= v13)
  {
    v16 = (v14 - *v11) >> 5;
    if ((v16 + 1) >> 59)
    {
      sub_299212A8C();
    }

    v17 = v13 - *v11;
    v18 = v17 >> 4;
    if (v17 >> 4 <= (v16 + 1))
    {
      v18 = v16 + 1;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFE0)
    {
      v19 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18;
    }

    sub_299380060(v20, v19, v16, v11);
    sub_29937FFE8(*v21, v4, v5, *v9, v10);
    *v21 += 32;
    sub_2993800D8(v11, v20);
    v15 = v11[1];
    result = sub_2993801B8(v20);
  }

  else
  {
    result = sub_29937FFE8(v11[1], v4, v5, *v9, v10);
    v15 = v14 + 32;
    v11[1] = v14 + 32;
  }

  v11[1] = v15;
  return result;
}

void sub_2993829B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2993801B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993829D0(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F74F10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_299382A1C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 1024;
  a1[4] = 0;
  a1[5] = 0;
  sub_299382CDC(a1 + 6, 256);
  return a1;
}

void sub_299382A64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299382C20(va);
  _Unwind_Resume(a1);
}

void **sub_299382A7C(void **a1)
{
  sub_299382C74(a1, *a1);
  a1[4] = 0;
  a1[5] = 0;
  sub_29930B9C8((a1 + 6));
  sub_29930F2E8((a1 + 6));
  v3 = a1;
  sub_299382C20(&v3);
  return a1;
}

char *sub_299382AD4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = &v4[-v2];
    if (v3 != &v4[-v2] >> 6)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v5 = *(a1 + 40) << 6;
  }

  v6 = malloc_type_malloc(v5, 0x1030040F03CD2BDuLL);
  v4 = v6;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v8 >= v7)
  {
    v10 = *a1;
    v11 = v8 - *a1;
    v12 = v11 >> 3;
    v13 = (v11 >> 3) + 1;
    if (v13 >> 61)
    {
      sub_299212A8C();
    }

    v14 = v7 - v10;
    if (v14 >> 2 > v13)
    {
      v13 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (!(v15 >> 61))
      {
        operator new();
      }

      sub_29919600C();
    }

    *(8 * v12) = v6;
    v9 = 8 * v12 + 8;
    memcpy(0, v10, v11);
    *a1 = 0;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    *v8 = v6;
    v9 = (v8 + 1);
  }

  *(a1 + 8) = v9;
  *(a1 + 24) = v4;
LABEL_19:
  ++*(a1 + 48);
  *(a1 + 32) = v4 + 64;
  return v4;
}

void sub_299382C20(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_299382C74(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_299382C74(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      result = MEMORY[0x29C29BF70](result, 0x1000C8077774924);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

void *sub_299382CDC(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[5] = a2;
  sub_29930B9C8(a1);
  return a1;
}

void sub_299382D10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299382D2C(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 104) = 0u;
  v3 = (a1 + 104);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  v5 = 0;
  sub_299266D00((a1 + 80), &v5);
  v5 = 0;
  sub_299266D00(v3, &v5);
  return a1;
}

void sub_299382DB0(_Unwind_Exception *exception_object)
{
  v4 = v2;
  v6 = *v4;
  if (*v4)
  {
    v1[14] = v6;
    operator delete(v6);
  }

  v7 = v1[10];
  if (v7)
  {
    v1[11] = v7;
    operator delete(v7);
  }

  v8 = v1[7];
  if (v8)
  {
    v1[8] = v8;
    operator delete(v8);
  }

  v9 = v1[4];
  if (v9)
  {
    v1[5] = v9;
    operator delete(v9);
  }

  v10 = *v3;
  if (*v3)
  {
    v1[2] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

_WORD *sub_299382E10(uint64_t a1, uint64_t a2, const void **a3, const void **a4, void *a5, unint64_t a6)
{
  v6 = a4;
  v9 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *(a1 + 8)) >> 3);
  if (v9 >= a6)
  {
    v10 = a6;
  }

  else
  {
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *(a1 + 8)) >> 3);
  }

  v11 = v9 - v10;
  v12 = *(*(a1 + 104) + 8 * v11);
  v13 = *(a1 + 56);
  v14 = (*(a1 + 64) - v13) >> 1;
  v15 = v14 - v12;
  v38 = v14;
  v39 = v13;
  if (!v13)
  {
    v15 = 0;
  }

  v16 = *(*(a1 + 80) + 8 * v11);
  v17 = *(a1 + 32);
  if (v14 <= v12)
  {
    v15 = 0;
  }

  v41 = v15;
  v18 = (*(a1 + 40) - v17) >> 1;
  v19 = v18 - v16;
  v37 = *(a1 + 32);
  if (!v17)
  {
    v19 = 0;
  }

  v33 = (*(a1 + 40) - v17) >> 1;
  if (v18 <= v16)
  {
    v19 = 0;
  }

  v43 = v19;
  if (a2)
  {
    v35 = (*(*a2 + 544))(a2);
    v44 = v20;
    v36 = (*(*a2 + 552))(a2);
    v22 = v21;
    v23 = (*(*a2 + 304))(a2);
    v24 = v23[1] - *v23;
    v25 = 0xCCCCCCCCCCCCCCCDLL * (v24 >> 3);
    v26 = v25 + v10;
    if (v24)
    {
      v27 = 0;
      do
      {
        (*(*a2 + 560))(a2, v27);
        (*(*a2 + 560))(a2, v27++);
      }

      while (v25 != v27);
    }

    v6 = a4;
    v28 = v44;
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v28 = 0;
    v22 = 0;
    v26 = v10;
  }

  sub_299256F7C(a5, v26);
  sub_299218E20(a3, v28 + v43);
  sub_299218E20(v6, v22 + v41);
  sub_2992A08E0(&__p, (*(a1 + 16) - 40 * v10), *(a1 + 16), a5);
  if (a2)
  {
    v29 = (*(*a2 + 304))(a2);
    v46 = 0;
    v47 = 0;
    __p = 0;
    sub_29921E8E0(&__p, *v29, v29[1], 0xCCCCCCCCCCCCCCCDLL * ((v29[1] - *v29) >> 3));
    sub_2992A08E0(&v48, __p, v46, a5);
    if (__p)
    {
      v46 = __p;
      operator delete(__p);
    }
  }

  if (v38 <= v12)
  {
    v30 = 0;
  }

  else
  {
    v30 = (v39 + 2 * v12);
  }

  if (v33 <= v16)
  {
    v31 = 0;
  }

  else
  {
    v31 = (v37 + 2 * v16);
  }

  sub_29925493C(&__p, v31, &v31[v43], a3);
  sub_29925493C(&__p, v35, &v35[v28], a3);
  sub_29925493C(&__p, v30, &v30[v41], v6);
  return sub_29925493C(&__p, v36, &v36[v22], v6);
}

void sub_29938319C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2993831B8(void *a1)
{
  v1 = a1[2];
  v2 = v1 - a1[1];
  if (!v2 || *(v1 - 16) != 1)
  {
    return 0;
  }

  v3 = *(a1[10] + 8 * (0xCCCCCCCCCCCCCCCDLL * (v2 >> 3) - 1));
  v4 = a1[4];
  v5 = a1[5] - v4;
  v6 = (v4 + 2 * v3);
  if (v3 >= v5 >> 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return sub_299281A24(*v7);
}

void sub_299383210(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 304))(a2);
  sub_299256DFC((a1 + 8), *v4, 0xCCCCCCCCCCCCCCCDLL * ((*(v4 + 8) - *v4) >> 3));
  v5 = (*(*a2 + 544))(a2);
  v7 = v6;
  v8 = (*(*a2 + 552))(a2);
  v10 = v9;
  sub_299217A18((a1 + 32), v5, v7);
  sub_299217A18((a1 + 56), v8, v10);
  if (*(v4 + 8) != *v4)
  {
    v11 = 0;
    v12 = (*(a1 + 40) - *(a1 + 32)) >> 1;
    v13 = (*(a1 + 64) - *(a1 + 56)) >> 1;
    do
    {
      v14 = *(*(a1 + 88) - 8);
      v15 = v14 + (*(*a2 + 568))(a2, v11);
      if (v15 >= v12)
      {
        v15 = v12;
      }

      v19 = v15;
      v16 = *(*(a1 + 112) - 8);
      v17 = v16 + (*(*a2 + 320))(a2, v11);
      if (v17 >= v13)
      {
        v17 = v13;
      }

      v18 = v17;
      sub_299266D00((a1 + 80), &v19);
      sub_299266D00((a1 + 104), &v18);
      ++v11;
    }

    while (v11 < 0xCCCCCCCCCCCCCCCDLL * ((*(v4 + 8) - *v4) >> 3));
  }
}