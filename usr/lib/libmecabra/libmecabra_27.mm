void sub_299342344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, void *a62, uint64_t a63)
{
  __cxa_guard_abort(&qword_2A14611F0);
  sub_29933B324(&a38);
  if (a60 < 0)
  {
    operator delete(__p);
  }

  if (a67 < 0)
  {
    operator delete(a62);
  }

  if (a72 < 0)
  {
    operator delete(a69);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a75);
  }

  sub_299273B40(&STACK[0x218]);
  _Unwind_Resume(a1);
}

BOOL sub_299342610(void *a1)
{
  if (!a1[1])
  {
    return 0;
  }

  v2 = 0;
  v3 = MEMORY[0x29EDCA600];
  do
  {
    v4 = *(*a1 + 2 * v2);
    if (v4 <= 0x7F)
    {
      v5 = *(v3 + 4 * v4 + 60) & 0x40000;
    }

    else
    {
      v5 = __maskrune(v4, 0x40000uLL);
    }

    result = v5 != 0;
    if (!v5)
    {
      break;
    }

    ++v2;
  }

  while (v2 < a1[1]);
  return result;
}

uint64_t sub_2993426A0(unsigned __int16 **a1)
{
  v1 = a1[1];
  if (v1)
  {
    v2 = 2 * v1;
    v3 = *a1;
    result = 1;
    do
    {
      v5 = *v3;
      if (v5 > 0xFF00)
      {
        v6 = v5 - 65281;
        v7 = v6 > 0x1E;
        v8 = (1 << v6) & 0x40002801;
        if (!v7 && v8 != 0)
        {
          return result;
        }
      }

      else if (v5 - 12289 < 2 || v5 == 44 || v5 == 46)
      {
        return result;
      }

      ++v3;
      v2 -= 2;
    }

    while (v2);
  }

  return 0;
}

BOOL sub_299342724(unsigned __int16 *a1, unint64_t a2, unsigned int a3)
{
  if ((atomic_load_explicit(&qword_2A1462290, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1462290))
  {
    sub_299255778(0);
    qword_2A1462288 = &qword_2A1461DC0;
    __cxa_guard_release(&qword_2A1462290);
  }

  if (*(qword_2A1462288 + 88) <= a3 && *(qword_2A1462288 + 90) >= a3)
  {
    return 0;
  }

  if (a3 > 0x64F)
  {
    return 1;
  }

  v6 = word_299409CC8[a3];
  if (v6 != 409 && v6 != 407)
  {
    return 1;
  }

  if (a2 > 5)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 2 * a2;
  do
  {
    v12 = *a1;
    if ((v12 - 12353) < 0x56 || v12 == 12540 || v12 == 12316)
    {
      ++v10;
    }

    else if ((v12 - 12449) < 0x5A || v12 == 12540 || v12 == 12316)
    {
      ++v9;
    }

    else
    {
      Code = ublock_getCode(v12);
      if ((Code - 58) <= 0x25 && ((1 << (Code - 58)) & 0x3000203003) != 0)
      {
        ++v8;
      }
    }

    ++a1;
    v11 -= 2;
  }

  while (v11);
  result = 1;
  if (a2 != v10 && a2 != v9 && (a2 > 3 || a2 != v8))
  {
    return a2 == v8 + v10 && v8 != 0;
  }

  return result;
}

uint64_t sub_299342904(_WORD *a1, uint64_t a2)
{
  v4 = (*(*a2 + 544))(a2);
  v5 = 0;
  v6 = 0;
  v7 = a1 + 64;
  __p = 0;
  v20 = 0;
  v8 = a1 + 65;
  v21 = 0;
  v9 = a1 + 66;
  v17 = a1 + 67;
  while (v5 < (*(*a2 + 48))(a2))
  {
    v10 = (*(*a2 + 568))(a2, v5);
    if (v10 < 2)
    {
      v14 = *v4++;
      v13 = v14;
      v18 = v14;
      if (*v7 != 12290)
      {
        v15 = v7;
        if (v13 == 46)
        {
          goto LABEL_21;
        }

        v15 = v7;
        if (v13 == 12290)
        {
          goto LABEL_21;
        }

        v15 = v7;
        if (v13 == 65294)
        {
          goto LABEL_21;
        }
      }

      if (*v8 != 12289 && ((v15 = v8, v13 == 44) || (v15 = v8, v13 == 12289) || (v15 = v8, v13 == 65292)) || *v9 != -255 && (v15 = v9, v13 == 65281) || *v17 != -225 && (v15 = v17, v13 == 65311))
      {
LABEL_21:
        sub_29922E664(&__p, v15);
        v6 = 1;
      }

      else
      {
        sub_29922E664(&__p, &v18);
      }
    }

    else
    {
      v11 = v10;
      v12 = &v4[v11];
      do
      {
        sub_29922E664(&__p, v4++);
        --v11;
      }

      while (v11 * 2);
      v4 = v12;
    }

    ++v5;
  }

  if (v6)
  {
    operator new();
  }

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_299342DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299342E20(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_2992C8D94(v2);
  }

  result = *(a1 + 32);
  if (result)
  {

    return sub_2992C8D94(result);
  }

  return result;
}

void sub_299342E70(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_299342F08(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v5 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v5;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  if (*(a3 + 23) < 0)
  {
    sub_29922C89C((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v6;
  }

  if (*(a3 + 47) < 0)
  {
    sub_29922C89C((a1 + 48), *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v7 = *(a3 + 24);
    *(a1 + 64) = *(a3 + 5);
    *(a1 + 48) = v7;
  }

  if (*(a3 + 71) < 0)
  {
    sub_29922C89C((a1 + 72), *(a3 + 6), *(a3 + 7));
  }

  else
  {
    v8 = a3[3];
    *(a1 + 88) = *(a3 + 8);
    *(a1 + 72) = v8;
  }

  if (*(a3 + 95) < 0)
  {
    sub_29922C89C((a1 + 96), *(a3 + 9), *(a3 + 10));
  }

  else
  {
    v9 = *(a3 + 72);
    *(a1 + 112) = *(a3 + 11);
    *(a1 + 96) = v9;
  }

  if (*(a3 + 119) < 0)
  {
    sub_29922C89C((a1 + 120), *(a3 + 12), *(a3 + 13));
  }

  else
  {
    v10 = a3[6];
    *(a1 + 136) = *(a3 + 14);
    *(a1 + 120) = v10;
  }

  v11 = *(a3 + 15);
  *(a1 + 152) = *(a3 + 64);
  *(a1 + 144) = v11;
  return a1;
}

void sub_299343020(_Unwind_Exception *exception_object)
{
  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29934309C(unint64_t a1)
{
  if (a1 < 0x19999999999999ALL)
  {
    operator new();
  }

  sub_29919600C();
}

char *sub_2993430F4(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29922C89C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_29922C89C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_29922C89C(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_29922C89C(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_29922C89C(__dst + 96, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(__dst + 14) = *(a2 + 14);
    *(__dst + 6) = v8;
  }

  if (*(a2 + 143) < 0)
  {
    sub_29922C89C(__dst + 120, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    *(__dst + 17) = *(a2 + 17);
    *(__dst + 120) = v9;
  }

  v10 = *(a2 + 18);
  *(__dst + 76) = *(a2 + 76);
  *(__dst + 18) = v10;
  return __dst;
}

void sub_29934321C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299343298(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 160;
    sub_299342E70(i - 160);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2993432E8(void ***a1)
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
        v4 -= 160;
        sub_299342E70(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29934336C(uint64_t a1)
{
  v3 = (a1 + 24);
  sub_299212B90(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_2993433BC(void *__dst, __int128 *a2, uint64_t *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29922C89C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  sub_299308CE0((__dst + 3), *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return __dst;
}

void sub_299343438(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_299343454(_BOOL8 result, uint64_t a2)
{
  xmmword_2A14611F8 = 0u;
  *&qword_2A1461208 = 0u;
  dword_2A1461218 = 1065353216;
  if (a2)
  {
    v2 = result;
    v12 = (result + 48 * a2);
    do
    {
      v3 = sub_29923AF34(&xmmword_2A14611F8, v2);
      v4 = v3;
      v5 = *(&xmmword_2A14611F8 + 1);
      if (!*(&xmmword_2A14611F8 + 1))
      {
        goto LABEL_19;
      }

      v6 = vcnt_s8(*(&xmmword_2A14611F8 + 8));
      v6.i16[0] = vaddlv_u8(v6);
      v7 = v6.u32[0];
      if (v6.u32[0] > 1uLL)
      {
        v8 = v3;
        if (v3 >= *(&xmmword_2A14611F8 + 1))
        {
          v8 = v3 % *(&xmmword_2A14611F8 + 1);
        }
      }

      else
      {
        v8 = (*(&xmmword_2A14611F8 + 1) - 1) & v3;
      }

      v9 = *(xmmword_2A14611F8 + 8 * v8);
      if (!v9 || (v10 = *v9) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v11 = *(v10 + 1);
        if (v11 == v4)
        {
          break;
        }

        if (v7 > 1)
        {
          if (v11 >= v5)
          {
            v11 %= v5;
          }
        }

        else
        {
          v11 &= v5 - 1;
        }

        if (v11 != v8)
        {
          goto LABEL_19;
        }

LABEL_18:
        v10 = *v10;
        if (!v10)
        {
          goto LABEL_19;
        }
      }

      result = sub_29923AF78(&xmmword_2A14611F8, v10 + 8, v2);
      if (!result)
      {
        goto LABEL_18;
      }

      v2 += 24;
    }

    while (v2 != v12);
  }

  return result;
}

void sub_299343934(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299218CD8(va);
  sub_29934397C(&xmmword_2A14611F8);
  _Unwind_Resume(a1);
}

uint64_t sub_29934397C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_29921856C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_2993439DC(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_299343A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_299212B90(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_299343A98(uint64_t a1, _WORD *a2, const void **a3)
{
  if (*a2)
  {
    v5 = 0;
    do
    {
      v6 = v5 + 1;
    }

    while (a2[++v5]);
  }

  else
  {
    v6 = 0;
  }

  if (*(a3 + 23) >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = a3[1];
  }

  result = sub_2992137FC(a1, v8 + v6);
  if (*(result + 23) >= 0)
  {
    v10 = result;
  }

  else
  {
    v10 = *result;
  }

  if (v6)
  {
    result = memmove(v10, a2, 2 * v6);
  }

  if (v8)
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    result = memmove(&v10[2 * v6], v11, 2 * v8);
  }

  *&v10[2 * v6 + 2 * v8] = 0;
  return result;
}

BOOL sub_299343B68(void *a1, unsigned __int16 *a2)
{
  v4 = sub_29923AF34(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = *(v11 + 1);
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  result = sub_29923AF78(a1, v11 + 8, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_299344058(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2993440BC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993440BC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_299344108(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_299344108(uint64_t a1)
{
  v2 = (a1 + 24);
  sub_2993432E8(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t sub_299344150(uint64_t a1)
{
  sub_29934418C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29934418C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_299344108((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

int64_t sub_2993441D0@<X0>(int64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (result >= 1)
  {
    if (result <= 0x555555555555555)
    {
      sub_29920D924(a2, result);
    }

    sub_29920D90C();
  }

  return result;
}

void sub_299344414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  sub_29920D97C(&a9);
  sub_29920D9E8(&a15);
  _Unwind_Resume(a1);
}

void sub_29934478C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    MEMORY[0x29C29BF70](a13, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993447E4(uint64_t a1, const __CFString *a2, int64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(a1 + 16) = 0;
  *a1 = &unk_2A1F72C68;
  *(a1 + 8) = 0;
  *(a1 + 24) = &unk_2A1F72D38;
  *(a1 + 32) = a6;
  *(a1 + 40) = 0;
  sub_2993441D0(a3, (a1 + 48));
  sub_299344450(a2);
}

void sub_2993448C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_29920D9E8(&a9);
  sub_299219AB4(v9, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993448EC(uint64_t a1)
{
  v1 = (*(*a1 + 120))(a1);
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    return 0;
  }

  return v2;
}

uint64_t sub_299344958(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 48);
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 56) - v2) >> 4);
  v4 = v2 + 48 * a2;
  if (v3 >= a2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299344AC4(uint64_t a1)
{
  *a1 = &unk_2A1F72C68;
  *(a1 + 24) = &unk_2A1F72D38;
  v3 = (a1 + 48);
  sub_29920D9E8(&v3);
  sub_299219AB4((a1 + 40), 0);
  return a1;
}

uint64_t sub_299344B48(uint64_t a1)
{
  *a1 = &unk_2A1F72C68;
  *(a1 + 24) = &unk_2A1F72D38;
  v3 = (a1 + 48);
  sub_29920D9E8(&v3);
  sub_299219AB4((a1 + 40), 0);
  return MEMORY[0x29C29BFB0](a1, 0x10E1C408D75F3D8);
}

BOOL sub_299344C6C(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  for (result = 1; v3 < a2[1] + *a2; ++v3)
  {
    v6 = (1 << u_charType(*(a1 + 2 * v3))) & 0x80020E;
    result = v6 != 0;
    if (!v6)
    {
      break;
    }
  }

  return result;
}

void sub_299344CEC(uint64_t a1, unsigned __int16 *__src, unsigned __int16 *a3, uint64_t a4, const void **a5)
{
  if (a4)
  {
    v6 = a4;
    do
    {
      v13 = 0;
      v10 = *a3;
      if (__src)
      {
        v11 = *a3;
      }

      else
      {
        v11 = 0;
      }

      v13 = sub_2993F5A44(*(a1 + 32), __src, v11, 0);
      sub_2992141C0(a5, &v13);
      v12 = *a3++;
      __src += v12;
      --v6;
    }

    while (v6);
  }
}

void sub_299344D7C(uint64_t a1, uint64_t *a2, __int16 a3, __int16 a4, int a5, const UniChar *a6, int a7, int a8, double a9, uint64_t a10)
{
  v19 = *sub_299237120();
  v20 = a8 & 0x2000000;
  if (a5 || v20)
  {
    v28 = a3;
    if (v20)
    {
      v21 = 1;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      v22 = -3.0;
    }

    else
    {
      v22 = -2.0;
    }

    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x2000000000;
    v42[3] = 0;
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x2000000000;
    v41[3] = 0;
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x4002000000;
    v37[3] = sub_299345010;
    v37[4] = sub_299345034;
    __p = 0;
    v39 = 0;
    v40 = 0;
    sub_29920DED0(&__p, *a2, a2[1], (a2[1] - *a2) >> 2);
    v23 = a4;
    if (a7 < 1)
    {
      v24 = 0;
    }

    else
    {
      v24 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x29EDB8ED8], a6, a7, *MEMORY[0x29EDB8EE8]);
    }

    v25 = *(a1 + 32);
    v26 = *a2;
    v27 = (a2[1] - *a2) >> 2;
    v29[0] = MEMORY[0x29EDCA5F8];
    v29[1] = 0x40000000;
    v29[2] = sub_29934504C;
    v29[3] = &unk_29EF130E0;
    *&v29[8] = v22;
    v31 = a7;
    v35 = v20 >> 25;
    v36 = v19;
    v29[9] = v24;
    v29[10] = a10;
    *&v29[11] = a9;
    v29[12] = a6;
    v32 = v28;
    v33 = v23;
    v34 = a5;
    v30 = a8;
    v29[4] = v37;
    v29[5] = v42;
    v29[6] = v41;
    v29[7] = a1;
    sub_299384450(v25, v26, v27, 8, 1, v29);
    if (v24)
    {
      CFRelease(v24);
    }

    _Block_object_dispose(v37, 8);
    if (__p)
    {
      v39 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(v41, 8);
    _Block_object_dispose(v42, 8);
  }
}

void sub_299344FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  _Block_object_dispose(&a26, 8);
  if (__p)
  {
    a32 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v32 - 168), 8);
  _Block_object_dispose((v32 - 136), 8);
  _Unwind_Resume(a1);
}

__n128 sub_299345010(void *a1, uint64_t a2)
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

void sub_299345034(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_29934504C(uint64_t a1, _DWORD *a2, uint64_t a3, double a4, uint64_t a5, _BYTE *a6)
{
  v34 = *MEMORY[0x29EDCA608];
  if (a3 < 1 || *a2 < 0x1F4u || *(a1 + 64) >= a4)
  {
    goto LABEL_48;
  }

  v10 = *(a1 + 56);
  v11 = sub_2993F52EC(*(v10 + 32));
  v12 = sub_299327878(*(v10 + 16), v11);
  v13 = v12;
  if (v12)
  {
    Length = CFStringGetLength(v12);
  }

  else
  {
    Length = 0;
  }

  v15 = *(a1 + 108);
  if (Length >= (v15 & ~(v15 >> 31)))
  {
    v16 = v15 & ~(v15 >> 31);
  }

  else
  {
    v16 = Length;
  }

  if (v13)
  {
    v17 = v11 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    if ((v18 = *(a1 + 72)) == 0 || !v16 || ((v19.location = 0, v19.length = v16, Length <= v15) ? (v20 = CFStringCompareWithOptions(*(a1 + 72), v13, v19, 0)) : (v20 = CFStringCompareWithOptions(v13, v18, v19, 0)), v20 == kCFCompareEqualTo))
    {
      if ((*(a1 + 116) & 1) == 0)
      {
        sub_299233090(v10, v13);
      }

      sub_2992141C0((*(*(a1 + 32) + 8) + 40), a2);
      v21 = *(*(*(a1 + 32) + 8) + 48) - *(*(*(a1 + 32) + 8) + 40) < 5uLL || sub_2993F60EC(*(v10 + 32), 2, (*(*(*(a1 + 32) + 8) + 48) - 8), 2) > -2.5;
      v22 = Length - *(a1 + 108);
      if (*(a1 + 117))
      {
        v17 = Length == *(a1 + 108);
        if (v22 < 0 || !v21)
        {
          goto LABEL_37;
        }
      }

      else if (((sub_299281E24(v11) ^ 1) & v21) != 1 || v22 < 0)
      {
        goto LABEL_37;
      }

      if ((*(a1 + 116) & 1) != 0 || sub_299345480(v11))
      {
        v24 = log(v22 + 1.0);
        v25 = *(a1 + 80);
        *buf = v24 * 0.0 + *(a1 + 88) + a4;
        sub_29934554C(v25, buf, (*(*(a1 + 32) + 8) + 40));
      }

LABEL_37:
      if (!sub_299281B44(v11))
      {
        if ((*(a1 + 108) - v16) >= 1)
        {
          v26 = *(a1 + 96) + 2 * v16;
LABEL_42:
          v27 = *(a1 + 104);
          v32 = *(a1 + 80);
          sub_299344D7C(v10, *(*(a1 + 32) + 8) + 40, (*(a1 + 110) + Length), *(a1 + 112), (*(a1 + 114) - 1), v26, *(a1 + 88) + a4);
          goto LABEL_43;
        }

        if ((*(a1 + 116) & 1) == 0)
        {
          v26 = 0;
          goto LABEL_42;
        }
      }

LABEL_43:
      *(*(*(a1 + 32) + 8) + 48) -= 4;
      ++*(*(*(a1 + 40) + 8) + 24);
    }
  }

  v28 = sub_2993652F8(0xAu);
  os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v11)
  {
    CFRelease(v11);
  }

LABEL_48:
  v29 = *(*(a1 + 48) + 8);
  v30 = *(v29 + 24) + 1;
  *(v29 + 24) = v30;
  if (v30 > 0x20 || *(*(*(a1 + 40) + 8) + 24) > *(a1 + 112))
  {
    *a6 = 1;
  }

  v31 = *MEMORY[0x29EDCA608];
}

void sub_29934542C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_299219AB4(va, 0);
  sub_299219AB4(va1, 0);
  _Unwind_Resume(a1);
}

CFIndex sub_299345480(const __CFString *a1)
{
  result = CFStringGetLength(a1);
  if (result)
  {
    if (CFStringGetCharacterAtIndex(a1, result - 1) == 12387)
    {
      return 0;
    }

    else
    {
      if ((atomic_load_explicit(&qword_2A1461228, memory_order_acquire) & 1) == 0)
      {
        if (__cxa_guard_acquire(&qword_2A1461228))
        {
          qword_2A1461220 = CFSetCreate(0, off_2A145F610, 3, MEMORY[0x29EDB9030]);
          __cxa_guard_release(&qword_2A1461228);
        }
      }

      return CFSetContainsValue(qword_2A1461220, a1) == 0;
    }
  }

  return result;
}

uint64_t sub_29934554C(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 5;
    if ((v8 + 1) >> 59)
    {
      sub_299212A8C();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 4;
    if (v9 >> 4 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v21 = a1;
    if (v11)
    {
      if (!(v11 >> 59))
      {
        operator new();
      }

      sub_29919600C();
    }

    v12 = (32 * v8);
    v17 = 0;
    v18 = v12;
    v19 = 32 * v8;
    v20 = 0;
    *v12 = *a2;
    v12[2] = 0;
    v12[3] = 0;
    v12[1] = 0;
    sub_29920DED0(32 * v8 + 8, *a3, a3[1], (a3[1] - *a3) >> 2);
    v7 = (v19 + 32);
    v13 = *(a1 + 8) - *a1;
    v14 = v18 - v13;
    memcpy(v18 - v13, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v7;
    v16 = *(a1 + 16);
    *(a1 + 16) = v20;
    v19 = v15;
    v20 = v16;
    v17 = v15;
    v18 = v15;
    result = sub_299347370(&v17);
  }

  else
  {
    *v5 = *a2;
    v5[2] = 0;
    v5[3] = 0;
    v5[1] = 0;
    result = sub_29920DED0((v5 + 1), *a3, a3[1], (a3[1] - *a3) >> 2);
    v7 = v5 + 4;
    *(a1 + 8) = v5 + 4;
  }

  *(a1 + 8) = v7;
  return result;
}

void sub_2993456B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299347370(va);
  _Unwind_Resume(a1);
}

void sub_2993456D0(uint64_t a1, uint64_t *a2, const __CFString *a3, const __CFString *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, unint64_t a9, uint64_t a10, uint64_t a11, const __CFString *a12, unsigned int a13)
{
  v59 = *MEMORY[0x29EDCA608];
  *sub_299237120();
  if (*(a8[1] - 4) != 2)
  {
    v42 = a4;
    v44 = 0;
    range = 0;
    __p = 0;
    v50 = 0;
    v51 = 0;
    v18 = *a2;
    v19 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3);
    str = a3;
    if (v19 - a10 > a9)
    {
      v20 = 0;
      v21 = 0;
      v22 = a10 + a9 - v19;
      v23 = 40 * a9;
      do
      {
        v24 = (v18 + v23);
        v26 = *v24;
        v25 = v24[1];
        v27 = *(v24 + 4);
        *&buf[32] = v27;
        *buf = v26;
        *&buf[16] = v25;
        buf[38] = 2;
        buf[37] = BYTE5(v27) | 1;
        *buf = 0;
        sub_2992DD840(&__p, buf);
        v18 = *a2;
        v28 = *a2 + v23;
        v20 += *(v28 + 28);
        v21 += *(v28 + 24);
        v23 += 40;
      }

      while (!__CFADD__(v22++, 1));
      v44 = v20;
      range = v21;
    }

    theString = CFStringCreateMutable(0, 0);
    Mutable = CFStringCreateMutable(0, 0);
    v30 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) - a10;
    v31 = *a8;
    if (v30 >= (a8[1] - *a8) >> 2)
    {
LABEL_19:
      if (sub_29921788C(a7, a13) >= 1)
      {
        v56 = 0;
        v57 = 0;
        sub_299276A84(a12);
      }

      v60.location = 0;
      v60.length = range;
      v37 = CFStringCreateWithSubstring(0, str, v60);
      v52 = v37;
      v61.location = 0;
      v61.length = v44;
      v38 = CFStringCreateWithSubstring(0, v42, v61);
      v57 = v38;
      MutableCopy = CFStringCreateMutableCopy(0, 0, v37);
      v56 = MutableCopy;
      v40 = CFStringCreateMutableCopy(0, 0, v38);
      v55 = v40;
      CFStringAppend(MutableCopy, theString);
      CFStringAppend(v40, Mutable);
      v54 = 0;
      sub_299276A84(MutableCopy);
    }

    while (1)
    {
      v53 = 0;
      v52 = 0;
      v32 = *(v31 + 4 * v30);
      v33 = sub_2993F52EC(*(a1 + 32));
      v53 = v33;
      v34 = sub_299327878(*(a1 + 16), v33);
      v52 = v34;
      if (sub_299281B44(v33))
      {
        break;
      }

      Length = CFStringGetLength(v33);
      if (v34)
      {
        v36 = CFStringGetLength(v34);
      }

      else
      {
        v36 = 0;
      }

      CFStringAppend(theString, v33);
      if (v34)
      {
        CFStringAppend(Mutable, v34);
      }

      *&buf[36] = 131328;
      memset(&buf[4], 0, 32);
      *&buf[24] = Length;
      *&buf[28] = v36;
      *buf = 0;
      sub_2992DD840(&__p, buf);
      if (v34)
      {
        CFRelease(v34);
      }

      if (v33)
      {
        CFRelease(v33);
      }

      ++v30;
      v31 = *a8;
      if (v30 >= (a8[1] - *a8) >> 2)
      {
        goto LABEL_19;
      }
    }

    if (v34)
    {
      CFRelease(v34);
    }

    if (v33)
    {
      CFRelease(v33);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (theString)
    {
      CFRelease(theString);
    }

    if (__p)
    {
      v50 = __p;
      operator delete(__p);
    }
  }

  v41 = *MEMORY[0x29EDCA608];
}

void sub_299345D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, uint64_t a33, char a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_299345F40(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v7 = a7;
  v110 = *MEMORY[0x29EDCA608];
  v104[0] = a3;
  v104[1] = a4;
  v102 = a5;
  v103 = a6;
  *a7 = &unk_2A1F65118;
  *(a7 + 8) = 0u;
  *(a7 + 24) = 0u;
  *(a7 + 40) = 1065353216;
  *(a7 + 48) = 0;
  *(a7 + 56) = 0;
  *(a7 + 64) = 0;
  if (!a2)
  {
    goto LABEL_86;
  }

  if (!*(a1 + 32))
  {
    goto LABEL_86;
  }

  if ((*(*a2 + 408))(a2) == 1)
  {
    goto LABEL_86;
  }

  v91 = sub_299237120();
  if ((*v91 & 1) == 0 && (*(*(a1 + 8) + 3) & 2) == 0)
  {
    goto LABEL_86;
  }

  (*(*a2 + 528))(a2, 10, "[MJNP::expandPhrasesWithLanguageModel] Handling n-gram expansion from", 1);
  v9 = v103;
  v85 = v102;
  if ((**(a1 + 8) & 0x20) != 0 && v103)
  {
    do
    {
      v10 = *(v102 - 2 + 2 * v9);
      v11 = v10 - 97;
      v12 = (v10 + 191);
      if (v11 >= 0x1A && v12 > 0x19)
      {
        break;
      }

      --v9;
    }

    while (v9);
  }

  if (!v102)
  {
    v9 = 0;
  }

  v86 = v9;
  v92 = (*(*a2 + 304))(a2);
  v82 = (v7 + 48);
  v14 = 0;
  v15 = 0;
  v84 = *MEMORY[0x29EDB8ED8];
  v83 = *MEMORY[0x29EDB8EE8];
  while (0xCCCCCCCCCCCCCCCDLL * ((v92[1] - *v92) >> 3) > v15)
  {
    if (!v15 && (**(a1 + 8) & 0x2000000) != 0)
    {
      goto LABEL_74;
    }

    v93 = v15;
    v90 = v14;
    __src = (*(*a2 + 544))(a2);
    v87 = v16;
    v107 = 0;
    v106 = 0uLL;
    v18 = *v92;
    v17 = v92[1];
    v19 = (*(*a2 + 304))(a2);
    v20 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - v18) >> 3);
    if (v20 == v93)
    {
      LOWORD(v21) = 0;
      goto LABEL_26;
    }

    v22 = v19;
    v21 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v94 = v20 - v93;
    v26 = v20 + v90;
    v27 = 37;
    do
    {
      v28 = sub_2992C77D8(a2, v25);
      v30 = v29;
      v31 = sub_2992C71F4(a2, v25);
      v33 = (*(**(a1 + 24) + 32))(*(a1 + 24), v28, v30, v31, v32);
      v24 |= (*(*v22 + v27) & 2) >> 1;
      if ((v24 & 1) == 0 && (v33 & 4) == 0)
      {
        v64 = sub_2993652F8(0xAu);
        if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_69;
        }

        v65 = sub_2992C77D8(a2, v25);
        v67 = v66;
        v68 = sub_2992C71F4(a2, v25);
        v70 = v69;
        v71 = CFStringCreateWithCharactersNoCopy(v84, v65, v67, v83);
        v99 = v71;
        v72 = CFStringCreateWithCharactersNoCopy(v84, v68, v70, v83);
        __p = v72;
        v73 = sub_2993652F8(0xAu);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          *&buf[4] = v71;
          *&buf[12] = 2112;
          *&buf[14] = v72;
          _os_log_debug_impl(&dword_29918C000, v73, OS_LOG_TYPE_DEBUG, "[MJNP::getAndCheckContextSurfaceAndReadingFromCandidate] %@ %@ is an invalid context word.", buf, 0x16u);
          if (!v72)
          {
LABEL_67:
            if (v71)
            {
              CFRelease(v71);
            }

LABEL_69:
            if (!v23)
            {
              goto LABEL_70;
            }

LABEL_26:
            if (v86 >= v21)
            {
              v34 = (v85 + 2 * v21);
            }

            else
            {
              v34 = 0;
            }

            v35 = *v91;
            memset(buf, 0, sizeof(buf));
            sub_299344CEC(a1, __src, v106, -v93 - 0x3333333333333333 * ((v92[1] - *v92) >> 3), buf);
            v36 = v35 == 0;
            v37 = 2;
            if (v36)
            {
              v38 = v93 != 0;
            }

            else
            {
              v38 = 2;
            }

            v99 = 0;
            v100 = 0;
            v101 = 0;
            v7 = a7;
            if (*(*&buf[8] - 4) >= 0x1F4u)
            {
              v39 = **(a1 + 8);
              if (!sub_299281A24(__src[v87 - 1]))
              {
                v40 = sub_2993F62C8(*(a1 + 32), *buf, (*&buf[8] - *buf) >> 2);
                v41 = (v86 - v21);
                sub_299344D7C(a1, buf, 0, 3, v38, v34, v41, v39, v40, &v99);
                v42 = v103 - v86;
                __p = 0;
                v97 = 0;
                v98 = 0;
                sub_299218E20(&__p, (v41 & ~(v41 >> 31)) + (v103 - v86));
                if (v41 >= 1 && v34)
                {
                  v43 = (v86 - v21);
                  do
                  {
                    sub_29922E664(&__p, v34++);
                    --v43;
                  }

                  while (v43);
                }

                v44 = v42;
                if (v44 >= 1)
                {
                  v45 = (v102 + 2 * v103 - 2 * v42);
                  do
                  {
                    sub_29922E664(&__p, v45++);
                    --v44;
                  }

                  while (v44);
                }

                v46 = CFStringCreateWithCharacters(0, __p, (v97 - __p) >> 1);
                v47 = v100;
                if (v99 != v100)
                {
                  p_info = &v99->info;
                  while (1)
                  {
                    if (*v91 != 1)
                    {
LABEL_54:
                      v57 = *(p_info - 1);
                      v58 = **(a1 + 8);
                      v59 = (*(*a2 + 304))(a2);
                      v60 = (*(*a2 + 24))(a2);
                      v61 = (*(*a2 + 232))(a2);
                      v62 = (*(*a2 + 112))(a2);
                      LODWORD(v81) = 88;
                      sub_2993456D0(a1, v59, v60, v61, v62, v104, &v102, p_info, 0, v93, v81, v46, v58);
                      goto LABEL_55;
                    }

                    v49 = p_info[1];
                    if (*p_info != v49)
                    {
                      break;
                    }

LABEL_55:
                    v63 = p_info + 3;
                    p_info += 4;
                    if (v63 == v47)
                    {
                      goto LABEL_56;
                    }
                  }

                  v51 = *v92;
                  v50 = v92[1];
                  v105 = 0;
                  v52 = *(v49 - 4);
                  v53 = sub_2993F52EC(*(a1 + 32));
                  v54 = *p_info;
                  v55 = p_info[1];
                  v105 = v53;
                  if (0xCCCCCCCCCCCCCCCDLL * ((v50 - v51) >> 3) + 1 == (v55 - v54) >> 2 && *buf != *&buf[8] && !memcmp(v54, *buf, (*&buf[8] - *buf) >> 2) && (sub_299281E24(v53) & 1) != 0)
                  {
                    v56 = 0;
                    if (!v53)
                    {
LABEL_53:
                      if (v56)
                      {
                        goto LABEL_54;
                      }

                      goto LABEL_55;
                    }
                  }

                  else
                  {
                    v56 = 1;
                    if (!v53)
                    {
                      goto LABEL_53;
                    }
                  }

                  CFRelease(v53);
                  goto LABEL_53;
                }

LABEL_56:
                if (v46)
                {
                  CFRelease(v46);
                }

                if (__p)
                {
                  v97 = __p;
                  operator delete(__p);
                }

                v37 = 0;
              }
            }

            __p = &v99;
            sub_2993473D4(&__p);
            if (*buf)
            {
              *&buf[8] = *buf;
              operator delete(*buf);
            }

            goto LABEL_71;
          }
        }

        else if (!v72)
        {
          goto LABEL_67;
        }

        CFRelease(v72);
        goto LABEL_67;
      }

      *buf = (*(*a2 + 568))(a2, v25);
      sub_29922E664(&v106, buf);
      v21 += (*(*a2 + 320))(a2, v25++);
      v23 = v25 >= v94;
      v27 += 40;
    }

    while (v26 != v25);
    if ((v24 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_70:
    v37 = 4;
    v7 = a7;
LABEL_71:
    if (v106)
    {
      *(&v106 + 1) = v106;
      operator delete(v106);
    }

    v14 = v90;
    v15 = v93;
    if ((v37 | 4) == 4)
    {
LABEL_74:
      ++v15;
      --v14;
      if (v15 == 3)
      {
        break;
      }

      continue;
    }

    break;
  }

  *&v106 = &unk_2A1F65CF8;
  *(&v106 + 1) = sub_2992ACF40;
  v108 = &v106;
  sub_2992AB9D4(v7, &v106);
  sub_29922D72C(&v106);
  v74 = sub_2993652F8(0xBu);
  v75 = os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG);
  v76 = *(v7 + 56) - *(v7 + 48);
  if (!v75)
  {
    goto LABEL_84;
  }

  if (v76 >= 0x19)
  {
    v77 = 3;
    do
    {
      v78 = sub_2993652F8(0xBu);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
      {
        v79 = (*(**(*v82 + 8 * v77) + 24))(*(*v82 + 8 * v77));
        LODWORD(v106) = 138412290;
        *(&v106 + 4) = v79;
        _os_log_debug_impl(&dword_29918C000, v78, OS_LOG_TYPE_DEBUG, "Pruning %@ (n-gram expansion)", &v106, 0xCu);
      }

      ++v77;
      v76 = *(v7 + 56) - *(v7 + 48);
    }

    while (v77 < v76 >> 3);
LABEL_84:
    if (v76 >= 0x21)
    {
      sub_2992AC44C(v7, 3uLL);
    }
  }

LABEL_86:
  v80 = *MEMORY[0x29EDCA608];
}

void sub_299346998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, void *__p, uint64_t a35, uint64_t a36, char a37)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_299346AAC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const UniChar *a5@<X4>, CFIndex a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a7;
  v104 = *MEMORY[0x29EDCA608];
  v100[0] = a3;
  v100[1] = a4;
  v98 = a5;
  v99 = a6;
  *a7 = &unk_2A1F65118;
  *(a7 + 8) = 0u;
  *(a7 + 24) = 0u;
  *(a7 + 40) = 1065353216;
  *(a7 + 56) = 0;
  *(a7 + 64) = 0;
  *(a7 + 48) = 0;
  if (!*(a1 + 32) || a2[2] == a2[1] || sub_2993831B8(a2))
  {
    goto LABEL_73;
  }

  v11 = sub_299237120();
  v12 = 4;
  if (!a4)
  {
    v12 = 8;
  }

  v79 = v12;
  v13 = v11[164];
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v14 = a2[1];
  v15 = a2[2];
  v16 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - v14) >> 3);
  v82 = a1;
  v17 = *(*(a1 + 32) + 32);
  v80 = v13;
  v18 = (v16 - (v17 + v13)) & ~((v16 - (v17 + v13)) >> 63);
  if (v16 <= v18)
  {
    v30 = 0;
    v31 = 0;
    v33 = 0;
    v32 = 0;
LABEL_23:
    v34 = *(a2[10] + 8 * v18);
    v35 = a2[4];
    v36 = a2[5] - v35;
    v37 = (v35 + 2 * v34);
    if (v34 >= v36 >> 1)
    {
      v38 = 0;
    }

    else
    {
      v38 = v37;
    }

    v39 = v18;
    if (v38)
    {
      v40 = v32;
    }

    else
    {
      v40 = 0;
    }

    v41 = *(a2[13] + 8 * v39);
    v42 = a2[7];
    v43 = a2[8] - v42;
    v44 = (v42 + 2 * v41);
    if (v41 >= v43 >> 1)
    {
      v45 = 0;
    }

    else
    {
      v45 = v44;
    }

    if (v45)
    {
      v46 = v33;
    }

    else
    {
      v46 = 0;
    }

    v89 = 0;
    v90 = 0;
    v91 = 0;
    v47 = (v14 + 40 * v39);
    v48 = v30;
    if (v47 != v15)
    {
      do
      {
        sub_2992DD840(&v89, v47);
        v47 = (v47 + 40);
      }

      while (v47 != v15);
      v48 = v95;
    }

    v49 = v31 - v30;
    __p = 0;
    v87 = 0;
    v88 = 0;
    v50 = v82;
    sub_299344CEC(v82, v38, v48, v49, &__p);
    v51 = sub_2993F62C8(*(v82 + 32), __p, (v87 - __p) >> 2);
    v83 = 0;
    v84 = 0;
    v85 = 0;
    sub_299344D7C(v50, &__p, 0, 3, v80, v98, v99, **(v50 + 8), v51, &v83);
    v52 = CFStringCreateWithCharacters(0, v45, v46);
    v53 = CFStringCreateWithCharacters(0, v38, v40);
    v54 = CFStringCreateWithCharacters(0, v98, v99);
    v55 = v83;
    if (v84 != v83)
    {
      v56 = 0;
      v57 = 0;
      do
      {
        v58 = v55 + v56;
        v60 = *(v58 + 8);
        v59 = *(v58 + 16);
        if (v60 != v59)
        {
          v61 = *(v59 - 4);
          v62 = sub_2993F52EC(*(v50 + 32));
          v63 = v62;
          if (v62)
          {
            Length = CFStringGetLength(v62);
            if (Length && CFStringGetCharacterAtIndex(v63, Length - 1) != 12387)
            {
              if ((atomic_load_explicit(&qword_2A1461228, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461228))
              {
                qword_2A1461220 = CFSetCreate(0, off_2A145F610, 3, MEMORY[0x29EDB9030]);
                __cxa_guard_release(&qword_2A1461228);
                v50 = v82;
              }

              v65 = CFSetContainsValue(qword_2A1461220, v63) == 0;
            }

            else
            {
              v65 = 0;
            }

            CFRelease(v63);
            if (v65)
            {
              v66 = *(v83 + v56);
              LODWORD(v76) = 66;
              sub_2993456D0(v50, &v89, v53, v52, 0, v100, &v98, (v83 + v56 + 8), (v87 - __p) >> 2, 0, v76, v54, **(v50 + 8));
            }
          }
        }

        ++v57;
        v55 = v83;
        v56 += 32;
      }

      while (v57 < (v84 - v83) >> 5);
    }

    *buf = &unk_2A1F65CF8;
    *&buf[8] = sub_2992ACF40;
    v103 = buf;
    sub_2992AB9D4(v7, buf);
    sub_29922D72C(buf);
    v67 = *(v7 + 48);
    v68 = 0;
    if (*(v7 + 56) != v67)
    {
      do
      {
        if ((*(**(v67 + 8 * v68) + 392))(*(v67 + 8 * v68)) < -100.0)
        {
          break;
        }

        ++v68;
        v67 = *(v7 + 48);
        v69 = *(v7 + 56) - v67;
        v70 = v79 >= v69 >> 3 ? v69 >> 3 : v79;
      }

      while (v68 < v70);
    }

    sub_2992AC44C(v7, v68);
    if (v54)
    {
      CFRelease(v54);
    }

    if (v53)
    {
      CFRelease(v53);
    }

    if (v52)
    {
      CFRelease(v52);
    }

    *buf = &v83;
    sub_2993473D4(buf);
    if (__p)
    {
      v87 = __p;
      operator delete(__p);
    }

    if (v89)
    {
      v90 = v89;
      operator delete(v89);
    }

    goto LABEL_69;
  }

  v77 = (v16 - (v17 + v13)) & ~((v16 - (v17 + v13)) >> 63);
  v78 = v7;
  v19 = 0;
  v20 = 0;
  v21 = 40 * v18;
  while (1)
  {
    v22 = *(a2[10] + 8 * v18);
    v23 = a2[4];
    if (v22 >= (a2[5] - v23) >> 1)
    {
      chars = 0;
      v24 = 0;
    }

    else
    {
      chars = (v23 + 2 * v22);
      v24 = v23 ? *(v14 + v21 + 24) : 0;
    }

    v25 = *(a2[13] + 8 * v18);
    v26 = a2[7];
    if (v25 >= (a2[8] - v26) >> 1)
    {
      v27 = 0;
      v28 = 0;
    }

    else
    {
      v27 = (v26 + 2 * v25);
      v28 = v26 ? *(v14 + v21 + 28) : 0;
    }

    if (v18 + *(*(v82 + 32) + 32) > 0xCCCCCCCCCCCCCCCDLL * ((v15 - v14) >> 3))
    {
      v29 = (*(**(v82 + 24) + 32))(*(v82 + 24), v27, v28, chars, v24);
      if ((v29 & 4) == 0)
      {
        break;
      }
    }

    *buf = v24;
    sub_29922E664(&v95, buf);
    *buf = v28;
    sub_29922E664(&v92, buf);
    v20 += v24;
    v19 += v28;
    ++v18;
    v14 = a2[1];
    v15 = a2[2];
    v21 += 40;
    if (v18 >= 0xCCCCCCCCCCCCCCCDLL * ((v15 - v14) >> 3))
    {
      v30 = v95;
      v31 = v96;
      v32 = v20;
      v33 = v19;
      v18 = v77;
      v7 = v78;
      goto LABEL_23;
    }
  }

  v72 = sub_2993652F8(0xAu);
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    v73 = CFStringCreateWithCharacters(0, v27, v28);
    v89 = v73;
    v74 = CFStringCreateWithCharacters(0, chars, v24);
    __p = v74;
    v75 = sub_2993652F8(0xAu);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      *&buf[4] = v73;
      *&buf[12] = 2112;
      *&buf[14] = v74;
      v102 = 1024;
      LODWORD(v103) = v29;
      _os_log_debug_impl(&dword_29918C000, v75, OS_LOG_TYPE_DEBUG, "getAndCheckContextSurfaceAndReadingFromHistory: %@ %@ (attr: %d) is an invalid context word.", buf, 0x1Cu);
      if (!v74)
      {
LABEL_78:
        if (v73)
        {
          CFRelease(v73);
        }

        goto LABEL_69;
      }
    }

    else if (!v74)
    {
      goto LABEL_78;
    }

    CFRelease(v74);
    goto LABEL_78;
  }

LABEL_69:
  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

LABEL_73:
  v71 = *MEMORY[0x29EDCA608];
}

void sub_2993471F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, const void *a22, const void *a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  __cxa_guard_abort(&qword_2A1461228);
  sub_299219AB4(&a21, 0);
  sub_299219AB4(&a22, 0);
  sub_299219AB4(&a23, 0);
  *(v36 - 144) = &a24;
  sub_2993473D4((v36 - 144));
  if (__p)
  {
    a30 = __p;
    operator delete(__p);
  }

  if (a32)
  {
    a33 = a32;
    operator delete(a32);
  }

  if (a35)
  {
    a36 = a35;
    operator delete(a35);
  }

  v38 = *(v36 - 200);
  if (v38)
  {
    *(v36 - 192) = v38;
    operator delete(v38);
  }

  sub_29921D794(a16);
  _Unwind_Resume(a1);
}

uint64_t sub_299347370(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 32;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2993473D4(void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v4 -= 32;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_299347460(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_299347500(_Unwind_Exception *exception_object)
{
  v3 = v1[1];
  v1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29934756C(uint64_t *a1)
{
  sub_2993EEE54(a1[2]);
  std::mutex::~mutex((a1 + 3));
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    v3 = sub_2993EEDEC(v2);
    MEMORY[0x29C29BFB0](v3, 0x10E0C400F5837B5);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void sub_299347628(uint64_t a1, CFArrayRef theArray)
{
  if (theArray && CFArrayGetCount(theArray))
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v5 = Count;
      if ((Count & 1) == 0)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], Count, MEMORY[0x29EDB9000]);
        if (v5 >= 1)
        {
          v7 = 0;
          v8 = *MEMORY[0x29EDB8F80];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
            if (ValueAtIndex != v8)
            {
              v10 = ValueAtIndex;
              if (CFStringGetLength(ValueAtIndex))
              {
                length = CFStringGetRangeOfComposedCharactersAtIndex(v10, 0).length;
                if (length < CFStringGetLength(v10))
                {
                  CFArrayAppendValue(Mutable, v10);
                  CFArrayAppendValue(Mutable, v10);
                }
              }
            }

            v7 += 2;
          }

          while (v7 < v5);
        }

        if (Mutable)
        {
          if (CFArrayGetCount(Mutable))
          {
            std::mutex::lock((a1 + 24));
            operator new();
          }

          CFRelease(Mutable);
        }
      }
    }
  }

  else
  {

    sub_299347884(a1);
  }
}

void sub_299347884(uint64_t *a1)
{
  std::mutex::lock((a1 + 3));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::mutex::unlock((a1 + 3));
}

void sub_299347920(uint64_t *a1)
{
  v6 = (a1 + 3);
  v7 = 0;
  if (sub_2993479E4(&v6))
  {
    v2 = a1[1];
    if (v2)
    {
      v3 = atomic_load((v2 + 97));
      if ((v3 & 1) == 0)
      {
        v4 = atomic_load((v2 + 96));
        if (v4)
        {
          v5 = *a1;
          *a1 = a1[1];
          a1[1] = 0;
          if (v5)
          {
            (*(*v5 + 8))(v5);
          }
        }
      }
    }
  }

  if (v7 == 1)
  {
    std::mutex::unlock(v6);
  }
}

void sub_2993479C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993479E4(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      result = std::mutex::try_lock(v2);
      *(a1 + 8) = result;
      return result;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::try_lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::try_lock: already locked");
  return sub_299347A40();
}

void sub_299347A40(uint64_t *a1, const __CFString *a2, uint64_t *a3, uint64_t a4)
{
  sub_299347920(a1);
  if (*a1)
  {
    v9 = *a3;
    v8 = a3[1];
    if (v8 != *a3)
    {
      v10 = 0;
      do
      {
        v11 = *(v9 + 8 * v10);
        if ((v11 - 10) < 0xFFFFFFFFFFFFFFF7)
        {
          break;
        }

        if (a4 == -1 || v11 == a4)
        {
          sub_299276BDC(a2, &__p);
          if (__p)
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }

          v13 = *a1;
          v14[0] = MEMORY[0x29EDCA5F8];
          v14[1] = 0x40000000;
          v14[2] = sub_299347B98;
          v14[3] = &unk_29EF13100;
          v14[4] = a1;
          v14[5] = v11;
          sub_2992A2B00(v13, __p + 2 * (((v16 - __p) >> 1) - v11), v12, v14);
          if (__p)
          {
            v16 = __p;
            operator delete(__p);
          }

          v9 = *a3;
          v8 = a3[1];
        }

        ++v10;
      }

      while (v10 < (v8 - v9) >> 3);
    }
  }
}

void sub_299347B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299347B98(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) > *(a1 + 40))
  {
    v4 = *(a1 + 32);
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = *(a1 + 40);
    }

    else
    {
      v6 = 0;
    }

    v7 = CFStringCreateWithCharacters(0, v5, v6);
    v8 = *(a2 + 24);
    v9 = *(a1 + 40);
    v10 = sub_299278EC8(v7);
    v11 = v8 - v9;
    if (v10)
    {
      if (v11 <= 3)
      {
        v12 = *(a1 + 40);
LABEL_10:
        v13 = *(a2 + 16);
        v14 = (v13 + 2 * v12);
        if (v13)
        {
          v15 = v8 - v9;
        }

        else
        {
          v15 = 0;
        }

        CFStringCreateWithCharacters(0, (v13 + 2 * v12), v15);
        v16 = (2 * v15);
        if (v16)
        {
          v17 = 0;
          do
          {
            v18 = *v14++;
            v17 = (1025 * (v17 + v18)) ^ ((1025 * (v17 + v18)) >> 6);
            --v16;
          }

          while (v16);
        }

        v19 = *(v4 + 16);
        operator new();
      }
    }

    else
    {
      v12 = *(a1 + 40);
      if (v12 > 2 || v11 <= 2)
      {
        goto LABEL_10;
      }
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }
}

void sub_299347D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va, a9);
  if (a9)
  {
    sub_2991A893C(a9);
  }

  MEMORY[0x29C29BFB0](v9, 0x10A1C4025EE9B24);
  sub_299219AB4(va, 0);
  sub_299219AB4((v10 - 56), 0);
  _Unwind_Resume(a1);
}

void sub_299347E94(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_299347ECC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1F72E08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299347F2C(void *a1, int a2)
{
  v2 = sub_299347F68(a1, a2);
  v3 = sub_2993E158C(*(v2 + 56));
  return v3 | sub_2993E158C(*(v2 + 64));
}

uint64_t sub_299347F68(void *a1, int a2)
{
  if (a2 == 2)
  {
    result = a1[4];
    if (!result)
    {
      v6 = a1[1];
      operator new();
    }
  }

  else if (a2 == 1)
  {
    result = a1[3];
    if (!result)
    {
      v5 = a1[1];
      operator new();
    }
  }

  else if (a2)
  {
    return 0;
  }

  else
  {
    result = a1[2];
    if (!result)
    {
      v4 = a1[1];
      operator new();
    }
  }

  return result;
}

void sub_2993480B0(void *a1, const void *a2, int a3)
{
  v5 = sub_299347F68(a1, a3);
  sub_2992522C8(v5, a2);
  if (a3 == 2)
  {
    operator new();
  }
}

void sub_2993481C4(void *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  switch(a2)
  {
    case 2:
      v3 = a1[4];
      goto LABEL_5;
    case 1:
      v3 = a1[3];
      goto LABEL_5;
    case 0:
      v3 = a1[2];
LABEL_5:
      sub_299252F14(v3, a3);
      return;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

uint64_t sub_2993481FC(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_299252124(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_299348248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, __CFArray *a11)
{
  v11 = MEMORY[0x2A1C7C4A8]();
  v162 = v17;
  v200 = *MEMORY[0x29EDCA608];
  if (v18 != 2037345641)
  {
LABEL_7:
    result = 4294960183;
    goto LABEL_8;
  }

  if (v12 > 0xC8)
  {
    result = 4294960179;
    goto LABEL_8;
  }

  v20 = v11;
  v21 = 0;
  while (*&aKoyhdnihsnihuk[v21 + 20] != v14)
  {
    v21 += 4;
    if (v21 == 12)
    {
      goto LABEL_7;
    }
  }

  v174 = 0;
  *s = 0;
  v154 = v11;
  if (!v15)
  {
    if (v14 == 1025515552)
    {
      v184 = 0u;
      v185 = 0u;
      v160 = -1;
      v182 = 0u;
      v183 = 0u;
      v166 = 0;
      v140 = 1;
      v144 = -1;
      v143 = -1;
      v142 = -1;
      goto LABEL_39;
    }

LABEL_76:
    result = 4294960178;
    goto LABEL_8;
  }

  for (i = 0; i != v15; ++i)
  {
    v24 = 0;
    while (*(v16 + 4 * i) != *&aKoyhdnihsnihuk[4 * v24])
    {
      if (++v24 == 5)
      {
        goto LABEL_7;
      }
    }

    if (*(s + v24))
    {
LABEL_245:
      result = 4294960185;
      goto LABEL_8;
    }

    *(s + v24) = 1;
  }

  if (v14 != 1025515552)
  {
    goto LABEL_76;
  }

  v25 = 0;
  v26 = 1;
  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  v166 = 0;
  v142 = -1;
  v143 = -1;
  v144 = -1;
  v160 = -1;
  v27 = 255;
  do
  {
    v28 = *(v16 + 4 * v25);
    result = 4294960184;
    if (v28 <= 1751740018)
    {
      if (v28 == 1718971253)
      {
        if (v144 != -1)
        {
          goto LABEL_245;
        }

        *(&v182 + v25) = &v186;
        v181[v25] = 0;
        v144 = v26 - 1;
      }

      else
      {
        if (v28 != 1751740004)
        {
          goto LABEL_8;
        }

        if (v143 != -1)
        {
          goto LABEL_245;
        }

        *(&v182 + v25) = &v168;
        v181[v25] = 2;
        v143 = v26 - 1;
      }
    }

    else
    {
      switch(v28)
      {
        case 1751740019:
          if (v27 != 255)
          {
            goto LABEL_245;
          }

          *(&v182 + v25) = &v169;
          v181[v25] = 2;
          v27 = (v26 - 1);
          break;
        case 1835360622:
          if (v142 != -1)
          {
            goto LABEL_245;
          }

          *(&v182 + v25) = &v167[1];
          v181[v25] = 4;
          v142 = v26 - 1;
          break;
        case 1752788843:
          if (v160 != -1)
          {
            goto LABEL_245;
          }

          *(&v182 + v25) = v188;
          v160 = v26 - 1;
          break;
        default:
          goto LABEL_8;
      }
    }

    v25 = v26++;
  }

  while (v25 < v15);
  v140 = v27 == 255;
  v20 = v154;
LABEL_39:
  v29 = 0;
  v168 = 0;
  memset(v167, 0, sizeof(v167));
  v164 = 0;
  v165 = 0;
  v30 = v12 >> 1;
  v31 = v12 >> 1;
  v161 = v12;
  while (v31)
  {
    v32 = *(v13 + v29 * 2);
    v189[v29++] = v32;
    --v31;
    if (!v32)
    {
      if (v31)
      {
        bzero(&v189[v29], (v12 & 0xFE) - v29 * 2);
        v12 = v161;
      }

      break;
    }
  }

  *(v189 + v12) = 0;
  v169 = 30;
  if (*(v20 + 82) <= 5u)
  {
    LODWORD(v35) = 0;
    LODWORD(v141) = 0;
    v167[0] = 0;
  }

  else
  {
    sub_2993F7500(*(v20 + 84) + 160, v189, v12, v180, v167);
    if (v167[0] && (v33 = sub_2993496F8(v180, v167[0], 9u, v172, 8u)) != 0)
    {
      v34 = v33;
      LODWORD(v141) = 0;
      LODWORD(v35) = 0;
      v36 = 0;
      bytes = v182;
      do
      {
        if (sub_29934978C(v36, v180, v167[0], &__dst, &v166, v172) == -11)
        {
          goto LABEL_73;
        }

        if (v160 != -1)
        {
          v37 = v35;
          v35 = v178;
          v38 = 7 * v178;
          v39 = v166;
          v40 = v166 - v38 - 9 + (((v166 - v38 - 9) & 0x8000u) >> 15);
          v41 = v40 >> 1;
          v42 = v40 >> 1;
          v43 = 2 * v41;
          v44 = &v179[v38];
          v45 = v188;
          while (v42)
          {
            v46 = *v44++;
            *v45++ = v46;
            v43 -= 2;
            --v42;
            if (!v46)
            {
              if (v42)
              {
                bzero(v45, v43);
              }

              break;
            }
          }

          v181[v160] = v39 - 7 * v35 - 9;
          LODWORD(v35) = v37;
        }

        if (v144 != -1)
        {
          if (v178 && v178 <= 0x49u)
          {
            v47 = 7 * v178;
            v181[v144] = v47;
            memmove(*(&v182 + v144), v179, v47);
          }

          else
          {
            v181[v144] = 0;
          }
        }

        if (v143 != -1)
        {
          **(&v182 + v143) = bswap32(*&v177[1]) >> 16;
        }

        if (v142 != -1)
        {
          **(&v182 + v142) = bswap32(*&v177[3]);
        }

        if (!v140)
        {
          if (v178)
          {
            v48 = 7;
          }

          else
          {
            v48 = 30;
          }

          v169 = v48;
        }

        v35 = (v35 + 1);
        if (v35 <= v162)
        {
LABEL_73:
          v12 = v161;
        }

        else
        {
          sub_299349818(bytes, v181[0], a11);
          v141 = (v141 + 1);
          v12 = v161;
          if (a9 - 1 < v141)
          {
            goto LABEL_244;
          }
        }

        ++v36;
      }

      while (v36 != v34);
    }

    else
    {
      LODWORD(v35) = 0;
      LODWORD(v141) = 0;
      v12 = v161;
    }
  }

  v139 = v35;
  v49 = 0;
  v169 = 14;
  *&v167[1] = 0;
  v171 = 0;
  v170 = 1;
  v50 = v154;
  while (v30)
  {
    v51 = v189[v49];
    v199[v49++] = v51;
    --v30;
    if (!v51)
    {
      if (v30)
      {
        bzero(&v199[v49], (v12 & 0xFE) - v49 * 2);
        v12 = v161;
      }

      break;
    }
  }

  *(v199 + v12) = 0;
  v190 = 0x100010001;
  v191 = 1;
  v192 = 0;
  v193 = 0x1000100010001;
  v194 = 0;
  v52 = u_strlen(v199);
  v145 = 0;
  v155 = 0;
  if (*(v154 + 82) < 7u)
  {
    goto LABEL_146;
  }

  v53 = 0;
  v155 = 0;
  v145 = 0;
  while (2)
  {
    sub_2993F774C(*(v50 + 84) + 192, v199, 2 * (v52 & 0x7FFF), &v197, &v171, &v170);
    v54 = v171;
    if (!v171)
    {
      break;
    }

    v148 = bswap32(v197) >> 16;
    v146 = v198;
    if (v171 < 5u)
    {
      v58 = 1;
    }

    else
    {
      v55 = 0;
      v56 = 4;
      do
      {
        v57 = &v197 + v56;
        if (*v57 == 255 && v57[1] == 255)
        {
          ++v55;
          v56 += 4;
        }

        v56 += 2;
      }

      while (v56 < v171);
      if (v55 < 0)
      {
        bytesa = WORD2(v170);
LABEL_144:
        v175[v145] = v148;
        v163[v145] = v146;
        *&v175[2 * v145++ + 5] = bytesa;
        goto LABEL_145;
      }

      v58 = v55 + 1;
    }

    v59 = 0;
    v60 = 0;
    v61 = 0;
    bytesa = WORD2(v170);
    v147 = -WORD2(v170);
    while (2)
    {
      v62 = v61 != 0;
      v63 = 4;
      if (v54 >= 5 && v61)
      {
        v64 = 0;
        v63 = 4;
        do
        {
          v65 = &v197 + v63;
          if (*v65 == 255 && v65[1] == 255)
          {
            ++v64;
            v63 += 2;
          }

          v63 += 2;
          v62 = v64 != v61;
        }

        while (v64 != v61 && v63 < v54);
      }

      if (!v62)
      {
        v66 = *&v196[v63 + 254];
        v195 = v66;
        if (v63 >= v54)
        {
          v73 = 0;
          v72 = v66;
        }

        else
        {
          v67 = v63;
          v68 = 2;
          do
          {
            v69 = *(&v197 + v67);
            v70 = *(&v197 + v67 + 1);
            if (v69 == 255 && v70 == 255)
            {
              break;
            }

            v71 = &v196[v68 - 2];
            *v71 = v69;
            v68 += 2;
            v71[1] = v70;
            v67 += 2;
          }

          while (v67 < v54);
          v72 = v195;
          v73 = v68 - 2;
        }

        if ((v72 & 0xFC) == 0xC8)
        {
          v60 = 1;
          goto LABEL_138;
        }

        v59 = 1;
        v74 = v72 > 0x17 || ((1 << v72) & 0x80400C) == 0;
        if (v74 && v72 - 220 >= 2)
        {
          v59 = 0;
        }

        if (v53 > 0x31u)
        {
LABEL_137:
          ++v53;
        }

        else
        {
          v158 = v60;
          v75 = &s[36 * v53];
          v75[33] = bytesa;
          if (v72 - 112 < 4 || v72 == 121)
          {
            v75[33] = v147;
          }

          v76 = HIBYTE(v195);
          if (v72 > 0x9F || HIBYTE(v195) != 3 || *(&v189[129] + (((429496730 * v72) >> 31) & 0x3E)))
          {
            v152 = v59;
            v77 = v73 + ((v73 & 0x8000) >> 15);
            v78 = v77 >> 1;
            v79 = v77 >> 1;
            v80 = 2 * v78;
            v81 = v196;
            v82 = &s[36 * v53];
            while (v79)
            {
              v83 = *v81++;
              *v82++ = v83;
              v80 -= 2;
              --v79;
              if (!v83)
              {
                if (v79)
                {
                  bzero(v82, v80);
                }

                break;
              }
            }

            *(v75 + v73) = 0;
            *(v75 + 68) = sub_299349620(v72);
            v84 = 0xA01000206uLL >> (8 * v76);
            if (v76 >= 5)
            {
              LOBYTE(v84) = 11;
            }

            *(v75 + 69) = v84;
            v75[35] = v148;
            ++v155;
            v60 = v158;
            v59 = v152;
            goto LABEL_137;
          }
        }
      }

LABEL_138:
      if (++v61 != v58)
      {
        continue;
      }

      break;
    }

    v50 = v154;
    if (!(v59 | v60))
    {
      goto LABEL_144;
    }

LABEL_145:
    v52 = u_strlen(v199);
    if (*(v50 + 82) > 6u)
    {
      continue;
    }

    break;
  }

LABEL_146:
  if (v155)
  {
    LODWORD(v85) = v139;
    v86 = a9 - 1;
    v87 = v182;
    v88 = s;
    LODWORD(v89) = v141;
    v90 = &v181[v160];
    v91 = v155;
    v92 = v161;
    v93 = a10;
    while (1)
    {
      if (v93)
      {
        v94 = *(v88 + 69);
        if (v94 == 1 || v94 == 10)
        {
          goto LABEL_174;
        }
      }

      if (v88[33] != v92)
      {
        goto LABEL_174;
      }

      sub_29936B460(v188, v88, 0x42uLL);
      if (!v188[0])
      {
        goto LABEL_173;
      }

      v96 = v88[35];
      v168 = v96 + sub_299349880(*(v88 + 68), *(v88 + 69)) + 1000;
      if (v160 != -1)
      {
        *v90 = 2 * u_strlen(v88);
      }

      v97 = (v85 + 1);
      if (v97 <= v162)
      {
        v92 = v161;
        v93 = a10;
      }

      else
      {
        sub_299349818(v87, v181[0], a11);
        v89 = (v89 + 1);
        v92 = v161;
        v93 = a10;
        if (v86 < v89)
        {
          goto LABEL_244;
        }
      }

      if (v160 != -1)
      {
        break;
      }

      LODWORD(v85) = v85 + 1;
LABEL_174:
      v88 += 36;
      if (!--v91)
      {
        goto LABEL_177;
      }
    }

    if (!v93 || *(v88 + 69) != 6)
    {
      v98 = u_strlen(v88);
      if (sub_299349960(*(v154 + 44), v88, 2 * v98, *(v88 + 69), v187, v90) >= 1)
      {
        v97 = (v85 + 2);
        if (v97 > v162)
        {
          v99 = v88[35];
          v168 = v99 + sub_299349880(*(v88 + 68), (*(v88 + 69) + 1)) + 1000;
          *(v187 + *v90) = 0;
          sub_29936B460(v188, v187, 0x42uLL);
          sub_299349818(v87, v181[0], a11);
          v89 = (v89 + 1);
          if (v86 < v89)
          {
            goto LABEL_244;
          }
        }
      }
    }

    v100 = u_strlen(v88);
    if (sub_299349B5C(*(v154 + 44), *(v154 + 60), v88, 2 * v100, *(v88 + 69), v187, v90) < 1)
    {
      LODWORD(v85) = v97;
    }

    else
    {
      v85 = (v97 + 1);
      if (v85 > v162)
      {
        v101 = v88[35];
        v168 = v101 + sub_299349880(*(v88 + 68), (*(v88 + 69) + 2)) + 1000;
        *(v187 + *v90) = 0;
        sub_29936B460(v188, v187, 0x42uLL);
        sub_299349818(v87, v181[0], a11);
        v89 = (v89 + 1);
        v92 = v161;
        v93 = a10;
        if (v86 < v89)
        {
          goto LABEL_244;
        }

        goto LABEL_174;
      }
    }

LABEL_173:
    v92 = v161;
    v93 = a10;
    goto LABEL_174;
  }

  LODWORD(v85) = v139;
  LODWORD(v89) = v141;
  LOWORD(v92) = v161;
LABEL_177:
  v102 = v154;
  if (v145)
  {
    v103 = 0;
    v104 = v182;
    v105 = a9 - 1;
    v156 = v92;
    v106 = &v181[v160];
    do
    {
      v107 = 0;
      v164 = 0;
      v108 = *&v175[2 * v103 + 5];
      v109 = v175[v103];
      bytesb = v103;
      v159 = v163[v103];
      v153 = v109;
      do
      {
        v165 = 0;
        if (sub_2993F07F4(v102, v189, v156, v108, s, &v164, &v165, 0, v109, v159))
        {
          break;
        }

        v110 = a10;
        if (v107 == v164)
        {
          break;
        }

        if (v165)
        {
          v111 = v108;
          v112 = 0;
          v113 = s;
          v114 = v161;
          while (1)
          {
            if (v110)
            {
              v115 = *(v113 + 69);
              if (v115 == 1 || v115 == 10)
              {
                goto LABEL_210;
              }
            }

            if (v113[33] != v114)
            {
              goto LABEL_210;
            }

            sub_29936B460(v188, v113, 0x42uLL);
            if (!v188[0])
            {
              goto LABEL_209;
            }

            if (v160 != -1)
            {
              *v106 = 2 * u_strlen(v113);
            }

            v117 = v113[35];
            v168 = v117 + sub_299349880(*(v113 + 68), *(v113 + 69)) + 1000;
            v118 = (v85 + 1);
            if (v118 <= v162)
            {
              v114 = v161;
              v110 = a10;
            }

            else
            {
              sub_299349818(v104, v181[0], a11);
              v89 = (v89 + 1);
              v114 = v161;
              v110 = a10;
              if (v105 < v89)
              {
                goto LABEL_244;
              }
            }

            if (v160 != -1)
            {
              break;
            }

            LODWORD(v85) = v85 + 1;
LABEL_210:
            ++v112;
            v113 += 36;
            if (v112 >= v165)
            {
              v107 = v164;
              v102 = v154;
              v108 = v111;
              v109 = v153;
              goto LABEL_213;
            }
          }

          if (!v110 || *(v113 + 69) != 6)
          {
            v119 = u_strlen(v113);
            if (sub_299349960(*(v154 + 44), v113, 2 * v119, *(v113 + 69), v187, v106) >= 1)
            {
              v118 = (v85 + 2);
              if (v118 > v162)
              {
                v120 = v113[35];
                v168 = v120 + sub_299349880(*(v113 + 68), (*(v113 + 69) + 1)) + 1000;
                *(v187 + *v106) = 0;
                sub_29936B460(v188, v187, 0x42uLL);
                sub_299349818(v104, v181[0], a11);
                v89 = (v89 + 1);
                if (v105 < v89)
                {
                  goto LABEL_244;
                }
              }
            }
          }

          v121 = u_strlen(v113);
          if (sub_299349B5C(*(v154 + 44), *(v154 + 60), v113, 2 * v121, *(v113 + 69), v187, v106) < 1)
          {
            LODWORD(v85) = v118;
          }

          else
          {
            v85 = (v118 + 1);
            if (v85 > v162)
            {
              v122 = v113[35];
              v168 = v122 + sub_299349880(*(v113 + 68), (*(v113 + 69) + 2)) + 1000;
              *(v187 + *v106) = 0;
              sub_29936B460(v188, v187, 0x42uLL);
              sub_299349818(v104, v181[0], a11);
              v89 = (v89 + 1);
              v114 = v161;
              v110 = a10;
              if (v105 < v89)
              {
                goto LABEL_244;
              }

              goto LABEL_210;
            }
          }

LABEL_209:
          v114 = v161;
          v110 = a10;
          goto LABEL_210;
        }

        v107 = v164;
LABEL_213:
        ;
      }

      while (v107 > 0);
      v103 = bytesb + 1;
    }

    while (bytesb + 1 != v145);
  }

  v169 = 29;
  if (*(v102 + 82) >= 5u)
  {
    sub_2993F7500(*(v154 + 84) + 128, v189, v161, v180, v167);
    if (v167[0])
    {
      v123 = sub_2993496F8(v180, v167[0], 8u, v172, 7u);
      if (v123)
      {
        v124 = v123;
        v125 = 0;
        v157 = v182;
        LODWORD(v126) = v85;
        do
        {
          if (sub_29934978C(v125, v180, v167[0], &__dst, &v166, v172) != -11)
          {
            if (v160 != -1)
            {
              v127 = v177[6];
              v128 = 7 * v177[6];
              v129 = v166;
              v130 = v166 - v128 - 8 + (((v166 - v128 - 8) & 0x8000u) >> 15);
              v131 = v130 >> 1;
              v132 = v130 >> 1;
              v133 = 2 * v131;
              v134 = &v179[v128 - 1];
              v135 = v188;
              while (v132)
              {
                v136 = *v134++;
                *v135++ = v136;
                v133 -= 2;
                --v132;
                if (!v136)
                {
                  if (v132)
                  {
                    bzero(v135, v133);
                  }

                  break;
                }
              }

              v181[v160] = v129 - 7 * v127 - 8;
            }

            if (v144 != -1)
            {
              if (v177[6] && v177[6] <= 0x49u)
              {
                v137 = 7 * v177[6];
                v181[v144] = v137;
                memmove(*(&v182 + v144), &v178, v137);
              }

              else
              {
                v181[v144] = 0;
              }
            }

            if (v143 != -1)
            {
              **(&v182 + v143) = bswap32(*v177) >> 16;
            }

            if (v142 != -1)
            {
              **(&v182 + v142) = bswap32(*&v177[2]);
            }

            if (!v140)
            {
              if (v177[6])
              {
                v138 = 7;
              }

              else
              {
                v138 = 29;
              }

              v169 = v138;
            }

            v126 = (v126 + 1);
            if (v126 > v162)
            {
              sub_299349818(v157, v181[0], a11);
              v89 = (v89 + 1);
              if (a9 - 1 < v89)
              {
                break;
              }
            }
          }

          ++v125;
        }

        while (v125 != v124);
      }
    }
  }

LABEL_244:
  result = 0;
LABEL_8:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_299349620(int a1)
{
  result = 1;
  if (a1 <= 69)
  {
    if (a1 <= 0x3D)
    {
      if (((1 << a1) & 0x1004010040100401) != 0)
      {
        return result;
      }

      if (((1 << a1) & 0x2008020080200802) == 0)
      {
        return 0;
      }

      return 4;
    }

    return 0;
  }

  if (a1 <= 199)
  {
    v3 = a1 - 70;
    if (v3 <= 0x15)
    {
      v4 = 1 << v3;
      if ((v4 & 0x100401) != 0)
      {
        return result;
      }

      if ((v4 & 0x200802) != 0)
      {
        return 4;
      }
    }

    return 0;
  }

  if (a1 > 201)
  {
    if (a1 != 202)
    {
      if (a1 != 203)
      {
        return 0;
      }

      return 4;
    }
  }

  else if (a1 != 200)
  {
    return 4;
  }

  return result;
}

uint64_t sub_2993496F8(uint64_t a1, int a2, unsigned __int16 a3, _BYTE *a4, unsigned __int16 a5)
{
  v5 = a3 - *(a1 + a5) + 8 * *(a1 + a5);
  *a4 = a3 - *(a1 + a5) + 8 * *(a1 + a5);
  if (v5 >= a2)
  {
    return 1;
  }

  LODWORD(v6) = 0;
  do
  {
    if (*(a1 + v5) == 255 && *(a1 + v5 + 1) == 255)
    {
      v6 = v6 + 1;
      v7 = *(a1 + a5 + 2 + v5);
      v8 = a3 - v7 + 8 * v7;
      a4[v6] = v8;
      v5 += v8 + 2;
    }

    a4[v6] += 2;
    v5 += 2;
  }

  while (v5 < a2);
  return (v6 + 1);
}

uint64_t sub_29934978C(int a1, uint64_t a2, int a3, char *__dst, _BYTE *a5, unsigned __int8 *a6)
{
  if (a1 < 1)
  {
    v9 = 0;
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = a1;
    v10 = a6;
    v11 = a1;
    do
    {
      v12 = *v10++;
      v8 += v12 + 2;
      --v11;
    }

    while (v11);
  }

  if (v8 >= a3)
  {
    return 4294967285;
  }

  v13 = a6[v9];
  *a5 = v13;
  memmove(__dst, (a2 + v8), v13);
  result = 0;
  *&__dst[*a5] = 0;
  return result;
}

void sub_299349818(UInt8 *bytes, CFIndex numBytes, __CFArray *a3)
{
  v4 = CFStringCreateWithBytes(*MEMORY[0x29EDB8ED8], bytes, numBytes, 0x10000100u, 0);
  CFArrayAppendValue(a3, v4);

  CFRelease(v4);
}

uint64_t sub_299349880(int a1, unsigned int a2)
{
  v2 = 50;
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if (a2 < 0xB)
        {
          v3 = &unk_29941E0E6;
          return *&v3[2 * a2];
        }
      }

      else if (a1 == 2 && a2 < 0xB)
      {
        v3 = &unk_29941E0FC;
        return *&v3[2 * a2];
      }
    }

    else if (a2 < 0xB)
    {
      v3 = "";
      return *&v3[2 * a2];
    }
  }

  else if (a1 > 4)
  {
    if (a1 == 5)
    {
      if (a2 < 0xB)
      {
        v3 = &unk_29941E128;
        return *&v3[2 * a2];
      }
    }

    else if (a1 == 6 && a2 < 0xB)
    {
      v3 = &unk_29941E13E;
      return *&v3[2 * a2];
    }
  }

  else if (a1 == 3)
  {
    if (a2 <= 0xA)
    {
      v3 = &unk_29941E154;
      return *&v3[2 * a2];
    }
  }

  else if (a2 < 0xB)
  {
    v3 = &unk_29941E112;
    return *&v3[2 * a2];
  }

  return v2;
}

uint64_t sub_299349960(unsigned __int16 *a1, unsigned __int16 *a2, unint64_t a3, int a4, _WORD *a5, unint64_t *a6)
{
  if (a4 == 2)
  {
    v11 = 26;
    v12 = 12;
  }

  else
  {
    if (a4 != 6)
    {
      goto LABEL_9;
    }

    v11 = 14;
    v12 = 1;
  }

  v13 = *a2 != a1[v11] && a3 >= 7;
  if (v13)
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v18 = *(a2 + v16);
      if (v18 == a1[11] || v18 == *a1)
      {
        break;
      }

      v17 += 2;
      v16 = v17;
      if (v17 >= a3)
      {
        v19 = 0;
        *a5 = 0;
        if (a3 == 6 * (a3 / 6))
        {
          v20 = 6;
        }

        else
        {
          v20 = a3 % 6;
        }

        v21 = v20 >> 1;
        while (v20 >> 1 != v19)
        {
          v22 = a2[v19];
          a5[v19++] = v22;
          if (!v22)
          {
            if (v19 != v21)
            {
              bzero(&a5[v19], 2 * v21 - v19 * 2);
            }

            break;
          }
        }

        *(a5 + v20) = a1[v12];
        v23 = v20 + 2;
        *a6 = v20 + 2;
        v24 = a2 + v20;
        v14 = 1;
        while (1)
        {
          v20 += 6;
          if (v20 > a3)
          {
            break;
          }

          if (v23 - 58 <= 0xFFFFFFFFFFFFFFBFLL)
          {
            goto LABEL_36;
          }

          v25 = 0;
          while (v25 != 6)
          {
            v26 = *&v24[v25];
            *(a5 + v23 + v25) = v26;
            v25 += 2;
            if (!v26)
            {
              if (v25 != 6)
              {
                bzero(a5 + v23 + v25, 6 - v25);
              }

              break;
            }
          }

          *a6 = v23 + 6;
          if (v20 == a3)
          {
            v23 += 6;
            break;
          }

          if (v23 - 56 <= 0xFFFFFFFFFFFFFFBFLL)
          {
LABEL_36:
            LOWORD(v14) = 0;
            *a5 = 0;
            *a6 = 0;
            return v14;
          }

          *(a5 + v23 + 6) = a1[v12];
          v23 += 8;
          *a6 = v23;
          v24 += 6;
          v13 = v14++ >= 0x27;
          if (v13)
          {
            LOWORD(v14) = 40;
            break;
          }
        }

        *(a5 + v23) = 0;
        return v14;
      }
    }
  }

LABEL_9:
  LOWORD(v14) = 0;
  return v14;
}

uint64_t sub_299349B5C(unsigned __int16 *a1, _WORD *a2, unsigned __int16 *a3, unint64_t a4, int a5, uint64_t a6, void *a7)
{
  v71 = *MEMORY[0x29EDCA608];
  if (a4 < 9)
  {
    goto LABEL_7;
  }

  if (a5 == 2)
  {
    v12 = 26;
LABEL_6:
    v13 = a1[v12];
    if (*a3 == v13)
    {
      goto LABEL_7;
    }

    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *(a3 + v17);
      if (v19 == a1[11] || v19 == *a1)
      {
        v14 = -2;
        goto LABEL_8;
      }

      v18 += 2;
      v17 = v18;
    }

    while (v18 < a4);
    v67 = v12 * 2;
    *v68 = a6;
    s[0] = 0;
    v69[0] = 0;
    v20 = a3 + a4 - 2;
    v21 = 2;
    v22 = v20;
    do
    {
      if (v13 != *(a3 + a4 - v21))
      {
        v23 = 0;
        while (v21 != v23)
        {
          v24 = *(v22 + v23);
          v69[v23 / 2] = v24;
          v23 += 2;
          if (!v24)
          {
            if (v21 != v23)
            {
              bzero(&v69[v23 / 2], v21 - v23);
            }

            break;
          }
        }

        v69[v21 / 2] = 0;
      }

      v22 -= 2;
      v25 = v21 >= 7;
      v21 += 2;
    }

    while (!v25);
    if (v69[0])
    {
      v26 = u_strlen(s);
      v27 = u_strlen(v69) + v26;
      if ((v27 * 2 - 63) < 0xFFFFFFFFFFFFFFBFLL)
      {
        goto LABEL_69;
      }

      sub_29936B4BC(v69, s, 0x42uLL);
      v69[v27] = 0;
      sub_29936B460(s, v69, 0x42uLL);
      s[v27] = 0;
      v69[0] = 0;
    }

    v66 = a7;
    if (a4 == 9)
    {
      v14 = 0;
LABEL_71:
      v63 = *v68;
      sub_29936B460(*v68, s, 0x42uLL);
      v64 = u_strlen(v63);
      *v66 = 2 * v64;
      goto LABEL_8;
    }

    v28 = *(a1 + v67);
    v29 = a3 + a4 - 10;
    v30 = 10;
    v31 = 2;
    do
    {
      if (v28 != *(a3 + a4 - v30))
      {
        v32 = (v30 - 8) >> 1;
        v33 = v69;
        v34 = v29;
        v35 = v31;
        while (v32)
        {
          v36 = *v34++;
          *v33++ = v36;
          v35 -= 2;
          --v32;
          if (!v36)
          {
            if (v32)
            {
              bzero(v33, v35);
            }

            break;
          }
        }

        *(&v68[1] + v30) = a2[33];
        v69[v30 / 2 - 3] = 0;
      }

      if (v30 > 0xE)
      {
        break;
      }

      v30 += 2;
      v31 += 2;
      v29 -= 2;
    }

    while (v30 <= a4);
    if (v69[0])
    {
      v37 = u_strlen(s);
      v38 = u_strlen(v69) + v37;
      if ((v38 * 2 - 63) < 0xFFFFFFFFFFFFFFBFLL)
      {
        goto LABEL_69;
      }

      sub_29936B4BC(v69, s, 0x42uLL);
      v69[v38] = 0;
      sub_29936B460(s, v69, 0x42uLL);
      s[v38] = 0;
      v69[0] = 0;
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    if (a4 < 0x12)
    {
      goto LABEL_71;
    }

    v39 = *(a1 + v67);
    v40 = a3 + a4 - 18;
    v41 = 18;
    v42 = 2;
    v65 = v39;
    do
    {
      if (v39 != *(a3 + a4 - v41))
      {
        v43 = (v41 - 16) >> 1;
        v44 = v69;
        v45 = v40;
        v46 = v42;
        while (v43)
        {
          v47 = *v45++;
          *v44++ = v47;
          v46 -= 2;
          --v43;
          if (!v47)
          {
            if (v43)
            {
              bzero(v44, v46);
              v39 = v65;
            }

            break;
          }
        }

        *(&v68[-1] + v41) = a2[34];
        v69[v41 / 2 - 7] = 0;
      }

      if (v41 > 0x16)
      {
        break;
      }

      v41 += 2;
      v42 += 2;
      v40 -= 2;
    }

    while (v41 <= a4);
    if (v69[0])
    {
      v48 = u_strlen(s);
      v49 = u_strlen(v69) + v48;
      if ((v49 * 2 - 63) < 0xFFFFFFFFFFFFFFBFLL)
      {
        goto LABEL_69;
      }

      sub_29936B4BC(v69, s, 0x42uLL);
      v69[v49] = 0;
      sub_29936B460(s, v69, 0x42uLL);
      s[v49] = 0;
      v69[0] = 0;
      ++v14;
    }

    if (a4 < 0x1A)
    {
      goto LABEL_71;
    }

    v50 = *(a1 + v67);
    v51 = a3 + a4;
    v52 = 26;
    v53 = 26;
    do
    {
      if (v50 != *(v20 - v52 + 2))
      {
        v54 = &v51[-v53];
        v55 = v53 - 24;
        v56 = v55 >> 1;
        v57 = v55 >> 1;
        v58 = 2 * v56;
        v59 = v69;
        while (v57)
        {
          v60 = *v54;
          v54 += 2;
          *v59++ = v60;
          v58 -= 2;
          --v57;
          if (!v60)
          {
            if (v57)
            {
              bzero(v59, v58);
            }

            break;
          }
        }

        *(&v66 + v52 + 4) = a2[35];
        v69[v53 / 2u - 11] = 0;
      }

      v53 += 2;
      v52 = v53;
    }

    while (v53 <= a4);
    if (!v69[0])
    {
      goto LABEL_71;
    }

    v61 = u_strlen(s);
    v62 = u_strlen(v69) + v61;
    if ((v62 * 2 - 63) >= 0xFFFFFFFFFFFFFFBFLL)
    {
      sub_29936B4BC(v69, s, 0x42uLL);
      v69[v62] = 0;
      sub_29936B460(s, v69, 0x42uLL);
      s[v62] = 0;
      v69[0] = 0;
      ++v14;
      goto LABEL_71;
    }

LABEL_69:
    v14 = -1;
    goto LABEL_8;
  }

  if (a5 == 6)
  {
    v12 = 14;
    goto LABEL_6;
  }

LABEL_7:
  v14 = 0;
LABEL_8:
  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t sub_29934A09C(uint64_t a1, const __CFString *a2, const __CFString *a3, uint64_t a4, void *a5, int a6, int a7, double a8)
{
  *a1 = &unk_2A1F66DC0;
  v16 = (*(*a4 + 16))(a4);
  v17 = ((*(*a4 + 40))(a4) >> 3) & 1;
  sub_29933BEB8(a1, &off_2A1F730E8);
  *(a1 + 20) = v16;
  *(a1 + 24) = v17;
  *(a1 + 32) = a8;
  *a1 = &unk_2A1F72E68;
  *(a1 + 40) = &unk_2A1F730D0;
  *(a1 + 48) = a6;
  v18 = *MEMORY[0x29EDB8ED8];
  *(a1 + 56) = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], a2);
  if (a3)
  {
    Copy = CFStringCreateCopy(v18, a3);
  }

  else
  {
    Copy = 0;
  }

  *(a1 + 64) = Copy;
  sub_299215B50(a1 + 72, a4, a5, a7);
  *(a1 + 136) = (*(*a4 + 40))(a4);
  *(a1 + 140) = sub_299279FBC(a2);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  return a1;
}

uint64_t sub_29934A2AC(uint64_t a1, const __CFString *a2, const __CFString *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, int a8, int a9)
{
  *a1 = &unk_2A1F66DC0;
  v16 = *(*a6 + 6);
  v17 = (*(*a6 + 4) >> 3) & 1;
  v18 = sub_29933BEB8(a1, &off_2A1F730E8);
  *(v18 + 20) = v16;
  *(v18 + 24) = v17;
  *v18 = &unk_2A1F72E68;
  *(v18 + 32) = 0xFFEFFFFFFFFFFFFFLL;
  *(v18 + 40) = &unk_2A1F730D0;
  *(v18 + 48) = a8;
  v19 = *MEMORY[0x29EDB8ED8];
  *(a1 + 56) = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], a2);
  if (a3)
  {
    Copy = CFStringCreateCopy(v19, a3);
  }

  else
  {
    Copy = 0;
  }

  *(a1 + 64) = Copy;
  sub_299215C28(a1 + 72, **a6, a4, a5, a7, a9);
  *(a1 + 136) = *(*a6 + 4);
  v21 = sub_299279FBC(a2);
  *(a1 + 144) = 0;
  *(a1 + 140) = v21;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  if (a9 == 17)
  {
    sub_2993B2710(*(*(*a7 + 240) + 4));
    v22 = *(a6 + 8);
    if (v22)
    {
      v23 = *(a6 + 8);
        ;
      }

      v25 = *v23;
      valuePtr = v25;
      if (v25)
      {
        v26 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
        sub_2992292D8((a1 + 144), v26);
        v22 = *(a6 + 8);
      }

      if (v22)
      {
        v27 = v22 + 4;
        do
        {
          v28 = *(v27 - 4);
          v27 += 2;
        }

        while (v28);
        v29 = *(v27 - 2);
        v38 = 0;
        v39 = 0;
        __p = 0;
        sub_2993B2CF0(&__p, v27, v27 + 8 * v29, v29);
        v30 = __p;
        if (__p != v38)
        {
          Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
          v32 = __p;
          v33 = v38;
          while (v32 != v33)
          {
            v42 = *v32;
            v34 = CFNumberCreate(0, kCFNumberSInt64Type, &v42);
            v41 = v34;
            CFArrayAppendValue(Mutable, v34);
            if (v34)
            {
              CFRelease(v34);
            }

            ++v32;
          }

          sub_299229F00((a1 + 152), Mutable);
          v30 = __p;
        }

        if (v30)
        {
          v38 = v30;
          operator delete(v30);
        }
      }
    }
  }

  return a1;
}

void sub_29934A53C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_299219AB4(v18, 0);
  sub_299229F00(v17, 0);
  sub_2992292D8(v16, 0);
  *(v15 + 72) = &unk_2A1F649F8;
  v20 = *(v15 + 128);
  if (v20)
  {
    sub_2991A893C(v20);
  }

  sub_299219AB4((v15 + 64), 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29934A5EC(uint64_t a1)
{
  *a1 = &unk_2A1F72E68;
  *(a1 + 40) = &unk_2A1F730D0;
  CFRelease(*(a1 + 56));
  sub_299219AB4((a1 + 160), 0);
  sub_299229F00((a1 + 152), 0);
  sub_2992292D8((a1 + 144), 0);
  *(a1 + 72) = &unk_2A1F649F8;
  v2 = *(a1 + 128);
  if (v2)
  {
    sub_2991A893C(v2);
  }

  sub_299219AB4((a1 + 64), 0);
  return a1;
}

void sub_29934A6B8(uint64_t a1)
{
  sub_29934A5EC(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29934A6F8(uint64_t a1)
{
  result = *(a1 + 64);
  if (!result)
  {
    return *(a1 + 56);
  }

  return result;
}

CFStringRef sub_29934A7E0(uint64_t a1)
{
  v14[3] = *MEMORY[0x29EDCA608];
  v1 = sub_299215D80(a1 + 72, v14);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = v3 - v4;
  v6 = v5 >> 1;
  if (v5)
  {
    v7 = v14[0];
    if (v6 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6;
    }

    v9 = (v14 - v2);
    do
    {
      v10 = *v7++;
      *v9++ = v10 + 48;
      --v8;
    }

    while (v8);
  }

  v11 = CFStringCreateWithCharacters(*MEMORY[0x29EDB8ED8], (v14 - v2), v6);
  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  v12 = *MEMORY[0x29EDCA608];
  return v11;
}

void sub_29934A8C8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 48);
  if (v3)
  {
    *(v1 - 40) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29934A8F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return a1 + 72;
  }
}

void sub_29934AAA0(_Unwind_Exception *a1)
{
  sub_2992292D8((v1 + 144), 0);
  *(v1 + 72) = &unk_2A1F649F8;
  v4 = *(v1 + 128);
  if (v4)
  {
    sub_2991A893C(v4);
  }

  sub_299219AB4((v1 + 64), 0);
  MEMORY[0x29C29BFB0](v1, v2);
  _Unwind_Resume(a1);
}

void sub_29934AB10()
{
  v0 = 0;
  memset(__p, 0, sizeof(__p));
  sub_2991EB9C8(__p, &v0, __p, 1uLL);
  operator new();
}

void sub_29934AD44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  sub_2992292D8((v11 + 144), 0);
  *(v11 + 72) = v12;
  v14 = *(v11 + 128);
  if (v14)
  {
    sub_2991A893C(v14);
  }

  sub_299219AB4((v11 + 64), 0);
  MEMORY[0x29C29BFB0](v11, 0x10E1C403F77FCFDLL);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_29934AF60(_Unwind_Exception *a1)
{
  sub_2992292D8((v1 + 144), 0);
  *(v1 + 72) = v3;
  v5 = *(v1 + 128);
  if (v5)
  {
    sub_2991A893C(v5);
  }

  sub_299219AB4((v1 + 64), 0);
  MEMORY[0x29C29BFB0](v1, v2);
  _Unwind_Resume(a1);
}

void sub_29934B024(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a2;
  v8 = 0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 3);
  if (v8 <= 1)
  {
    __p[1] = 0;
    *&v27 = 0;
    sub_299358978(a1, a2, a3, a5);
    return;
  }

  if (a3)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    std::string::reserve(a5, v8 + 3 * a3);
    v10 = *a4;
    if (a4[1] != *a4)
    {
      for (i = 0; i < v25; ++i)
      {
        v12 = v10 + 40 * i;
        v13 = *(v12 + 24);
        if (v5)
        {
          v14 = *(v12 + 24);
        }

        else
        {
          v14 = 0;
        }

        v15 = *(v12 + 24);
        v16 = v5;
        if (v14)
        {
          while (1)
          {
            v17 = *v16++;
            v18 = (v17 + 240);
            if ((v17 - 48) < 0xA || v18 <= 9)
            {
              break;
            }

            if (!--v15)
            {
              goto LABEL_16;
            }
          }

          (*(*a1 + 48))(__p, a1, v5);
          if ((SBYTE7(v27) & 0x80u) == 0)
          {
            v23 = __p;
          }

          else
          {
            v23 = __p[0];
          }

          if ((SBYTE7(v27) & 0x80u) == 0)
          {
            v24 = BYTE7(v27);
          }

          else
          {
            v24 = __p[1];
          }

          std::string::append(a5, v23, v24);
          if ((SBYTE7(v27) & 0x80000000) == 0)
          {
            goto LABEL_33;
          }

          v22 = __p[0];
        }

        else
        {
LABEL_16:
          v28 = 0;
          *__p = 0u;
          v27 = 0u;
          (*(*a1 + 40))(v29, a1, v5);
          if ((v30 & 0x80u) == 0)
          {
            v20 = v29;
          }

          else
          {
            v20 = v29[0];
          }

          if ((v30 & 0x80u) == 0)
          {
            v21 = v30;
          }

          else
          {
            v21 = v29[1];
          }

          std::string::append(a5, v20, v21);
          if ((v30 & 0x80000000) == 0)
          {
            goto LABEL_33;
          }

          v22 = v29[0];
        }

        operator delete(v22);
LABEL_33:
        v10 = *a4;
        v25 = 0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 3);
        if (i != v25 - 1)
        {
          std::string::append(a5, " ", 1uLL);
          v10 = *a4;
          v25 = 0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 3);
        }

        v5 += v13;
      }
    }
  }

  else
  {
    *(a5 + 23) = 0;
    *a5 = 0;
  }
}

void sub_29934B27C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29934B2E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 55);
  if (v4 >= 0)
  {
    v5 = a2 + 32;
  }

  else
  {
    v5 = *(a2 + 32);
  }

  v6 = *(a2 + 40);
  if (v4 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(a2 + 40);
  }

  v8 = sub_29934B3D0(a1 + 16, v5, v7);
  v10 = v9;
  v11 = (*(*a2 + 304))(a2);
  v12 = *(*a1 + 32);

  return v12(a1, v8, v10, v11, 0);
}

uint64_t sub_29934B3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_2991A2240();
  }

  return (*(*v3 + 48))(v3, v5);
}

void sub_29934B428(void *a1)
{
  sub_29925E920(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_29934B460(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, uint64_t a9)
{
  v16 = *MEMORY[0x29EDCA608];
  v15 = sub_299277300(a2);
  sub_2993B7C78(a1, v15, a3, a4, a6, a9, a7, a8);
}

void sub_29934BD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  MEMORY[0x29C29BFB0](v13, 0x10E1C408BBE15C0);
  v16 = *(v11 + 616);
  *(v11 + 616) = 0;
  if (v16)
  {
    MEMORY[0x29C29BFB0](v16, 0x30C406EBB3485);
  }

  sub_29923D810((v11 + 600));
  v17 = *(v11 + 544);
  if (v17)
  {
    *(v11 + 552) = v17;
    operator delete(v17);
  }

  v18 = *v14;
  *v14 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  sub_299229EC8((v11 + 504), 0);
  v19 = *(v11 + 496);
  *(v11 + 496) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *(v11 + 488);
  *(v11 + 488) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(v11 + 480);
  *(v11 + 480) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = *(v11 + 472);
  *(v11 + 472) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  sub_299253FC0(v11 + 440);
  sub_299229F00((v11 + 424), 0);
  v23 = *(v11 + 408);
  *(v11 + 408) = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  v24 = *(v11 + 400);
  *(v11 + 400) = 0;
  if (v24)
  {
    (*(*v24 + 16))(v24);
  }

  v25 = *(v11 + 392);
  *(v11 + 392) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  sub_2993D5A00((v11 + 360));
  sub_299229F00((v11 + 352), 0);
  sub_2992925AC(a11);
  sub_299352738((v11 + 296), 0);
  sub_29937176C(v12);
  sub_2993B8B28(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_29934C0EC(uint64_t a1, void *a2, char *a3)
{
  v5 = *(a1 + 32);
  if ((*(v5 + 217) & 0x40) != 0 || (v6 = *(v5 + 400), v8 = *(v6 + 16), v7 = *(v6 + 24), v8 != v7) && (*(**(v7 - 8) + 24))(*(v7 - 8)))
  {

    return sub_2992E94C8(a2, a3, 0);
  }

  else
  {
    Surface = MecabraCandidateGetSurface(a2, a2, a3);
    if (CFStringGetLength(Surface) == 2 && (v13 = sub_2992896C0(a2, v11, v12), ((*(*v13 + 13))(v13) & 0x20) != 0) && (v16 = sub_2992896C0(a3, v14, v15), (*(*v13 + 14))(v13) >= 1))
    {
      v17 = 100 * (*(*v16 + 14))(v16);
      if (v17 / (*(*v13 + 14))(v13) < 81)
      {
        return 1;
      }

      else
      {
        return -1;
      }
    }

    else
    {
      return -1;
    }
  }
}

void sub_29934C274(int a1, uint64_t a2, int a3, int a4, CFDictionaryRef theDict)
{
  if (a2 && theDict)
  {
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x29EDC5760]);
    v7 = CFGetTypeID(Value);
    if (v7 == CFBooleanGetTypeID() && Value == *MEMORY[0x29EDB8F00])
    {
      v9 = *(*a2 + 136);

      v9(a2);
    }
  }
}

uint64_t sub_29934C324(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 528);
  if (v3 == cf)
  {
    return 0;
  }

  if (cf && v3)
  {
    if (CFEqual(v3, cf))
    {
      return 0;
    }

    v3 = *(a1 + 528);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (cf)
  {
    v6 = CFRetain(cf);
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 528) = v6;
  sub_29934DEE4(a1, 1, 1, 0);
  v7 = *(a1 + 400) + 80;

  return sub_2993A3748(v7, cf);
}

uint64_t sub_29934C3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 464);
  if (v4)
  {
    v23 = *(a1 + 464);
    sub_299229054(&v23);
    MEMORY[0x29C29BFB0](v4, 0x1020C40DBF2485DLL);
  }

  v5 = *(a1 + 512);
  if (v5)
  {
    v6 = sub_299213F54(v5);
    MEMORY[0x29C29BFB0](v6, 0x1060C401A2F9FBALL);
  }

  v7 = *(a1 + 432);
  if (v7)
  {
    v8 = *(a1 + 8);
    if (*(v8 + 5) != 1 || (v9 = *(v8 + 40)) == 0)
    {
      v9 = *(v8 + 32);
    }

    sub_29938460C(v9, v7);
    v10 = *(a1 + 432);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = *(a1 + 528);
  if (v11)
  {
    CFRelease(v11);
  }

  sub_29923D930(*(a1 + 600), v7, a3);
  v12 = *(a1 + 616);
  *(a1 + 616) = 0;
  if (v12)
  {
    MEMORY[0x29C29BFB0](v12, 0x30C406EBB3485);
  }

  sub_29923D810((a1 + 600));
  v13 = *(a1 + 544);
  if (v13)
  {
    *(a1 + 552) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 520);
  *(a1 + 520) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  sub_299229EC8((a1 + 504), 0);
  v15 = *(a1 + 496);
  *(a1 + 496) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(a1 + 488);
  *(a1 + 488) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(a1 + 480);
  *(a1 + 480) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(a1 + 472);
  *(a1 + 472) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  sub_299253FC0(a1 + 440);
  sub_299229F00((a1 + 424), 0);
  v19 = *(a1 + 408);
  *(a1 + 408) = 0;
  if (v19)
  {
    (*(*v19 + 16))(v19);
  }

  v20 = *(a1 + 400);
  *(a1 + 400) = 0;
  if (v20)
  {
    (*(*v20 + 16))(v20);
  }

  v21 = *(a1 + 392);
  *(a1 + 392) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  sub_2993D5A00((a1 + 360));
  sub_299229F00((a1 + 352), 0);
  sub_2992925AC(a1 + 312);
  sub_299352738((a1 + 296), 0);
  sub_29937176C(a1 + 192);
  return sub_2993B8B28(a1);
}

void sub_29934C730(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x29C29BFB0](v2, 0x10E0C40B842738ALL);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x29934C718);
  }

  _Unwind_Resume(a1);
}

BOOL sub_29934C930(uint64_t a1, const __CFString *a2, int a3, uint64_t a4)
{
  v7 = sub_299325108(a2, a4);
  v8 = sub_29934C9C0(a1, v7, a3, a4);
  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

void sub_29934C9A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299229F00(va, 0);
  _Unwind_Resume(a1);
}

BOOL sub_29934C9C0(uint64_t a1, const __CFArray *a2, int a3, uint64_t a4)
{
  ptr = 0;
  v8 = sub_2993652F8(0xDu);
  ptr = os_signpost_id_make_with_pointer(v8, &ptr);
  v9 = sub_2993652F8(0xDu);
  v10 = ptr;
  if (ptr - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v9;
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v10, "MecabraAnalyzeStringWithContext", &unk_29945DB9F, buf, 2u);
    }
  }

  if (*(a1 + 192) == 13)
  {
    v12 = a3 | 0x10;
  }

  else
  {
    v12 = a3;
  }

  v61 = v12;
  v13 = MEMORY[0x29EDC5730];
  v14 = MEMORY[0x29EDB8F00];
  v15 = MEMORY[0x29EDB8EF8];
  if (a4 && sub_299225D3C(a4, kMecabraContextOptionPrivateMode) == *v14)
  {
    v22 = *(a1 + 8);
    if (*(v22 + 5) != 1 || (v23 = *(v22 + 40)) == 0)
    {
      v23 = *(v22 + 32);
    }

    v24 = *(v23 + 8);
    v25 = *v13;
    v26 = *v15;
  }

  else
  {
    v16 = *(a1 + 8);
    if (*(v16 + 5) != 1 || (v17 = *(v16 + 40)) == 0)
    {
      v17 = *(v16 + 32);
    }

    v18 = *(v17 + 8);
    v19 = *v13;
    if (*(v17 + 40))
    {
      v20 = v14;
    }

    else
    {
      v20 = v15;
    }

    v21 = *v20;
  }

  LMLanguageModelSetParameterValue();
  *(a1 + 576) = -1;
  if (a4 && *(*(a1 + 608) + 4) <= 7u)
  {
    sub_2993245EC(a4);
  }

  v60 = a4;
  if (!a2)
  {
    Count = 0;
    goto LABEL_41;
  }

  Count = CFArrayGetCount(a2);
  if (Count < 1)
  {
LABEL_41:
    v28 = 0;
    v29 = 0;
    v31 = 0;
    goto LABEL_42;
  }

  v28 = 0;
  v29 = 0;
  v30 = 0.0;
  v31 = 1;
  do
  {
    v32 = *(CFArrayGetValueAtIndex(a2, v28) + 3);
    if (v28 || (*(a1 + 290) = 0, (**v32)(v32) == 2) || (**v32)(v32) == 3 || *(*(a1 + 296) + 258) != 1 || (*(*v32 + 8))(v32) != 64 && (*(*v32 + 8))(v32) != 35)
    {
      v33 = (**v32)(v32);
      v34 = 0.1;
      if (v33 != 2)
      {
        if ((**v32)(v32, 0.1) == 3)
        {
          v34 = 0.1;
        }

        else
        {
          v34 = 1.0;
        }
      }

      v30 = v30 + v34;
      if (v30 > 255.0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      *(a1 + 290) = (*(*v32 + 8))(v32);
      v29 = 1;
    }

    v31 = ++v28 < Count;
  }

  while (Count != v28);
  v28 = Count;
LABEL_42:
  if ((v29 & 1) == 0 && v28 == Count)
  {
    v31 = 0;
    v35 = 0;
    v62 = 0;
LABEL_54:
    Mutable = a2;
    goto LABEL_55;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  v37 = v29 & 1;
  if (v28 > v37)
  {
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v37);
      CFArrayAppendValue(Mutable, ValueAtIndex);
      ++v37;
    }

    while (v28 != v37);
  }

  v62 = Mutable;
  if (!Mutable)
  {
    v35 = 0;
    goto LABEL_54;
  }

  v39 = 0;
  do
  {
    v40 = v39;
    v41 = CFArrayGetCount(a2);
    if (v40 >= v41)
    {
      break;
    }

    v42 = *(CFArrayGetValueAtIndex(a2, v40) + 3);
    if ((**v42)(v42) == 2)
    {
      break;
    }

    v43 = (**v42)(v42);
    v39 = v40 + 1;
  }

  while (v43 != 3);
  v35 = v40 < v41;
LABEL_55:
  v44 = CFStringCreateMutable(0, 0);
  if (Mutable)
  {
    v45 = CFArrayGetCount(Mutable);
    if (v45 >= 1)
    {
      v46 = 0;
      v47 = 1;
      do
      {
        v48 = *(CFArrayGetValueAtIndex(Mutable, v46) + 3);
        if ((**v48)(v48) == 2)
        {
          break;
        }

        if ((**v48)(v48) == 3)
        {
          break;
        }

        *buf = (*(*v48 + 8))(v48);
        CFStringAppendCharacters(v44, buf, 1);
        v47 = ++v46 < v45;
      }

      while (v45 != v46);
      goto LABEL_64;
    }
  }

  else
  {
    v45 = 0;
  }

  v47 = 0;
LABEL_64:
  *(a1 + 568) = v47;
  if (!v35 && !v47)
  {
    if (v31)
    {
      goto LABEL_83;
    }

    if (atomic_load_explicit(&qword_2A1461240, memory_order_acquire) != -1)
    {
      *buf = &v64;
      v65 = buf;
      std::__call_once(&qword_2A1461240, &v65, sub_29935251C);
    }

    Length = CFStringGetLength(v44);
    v71.location = 0;
    v71.length = Length;
    if (!CFStringFindCharacterFromSet(v44, qword_2A1461230, v71, 0, 0) || (v72.location = 0, v72.length = Length, CFStringFindCharacterFromSet(v44, qword_2A1461238, v72, 0, 0)) || (location = CFStringFind(v44, @".", 0).location, location != -1) && location != Length - 1)
    {
LABEL_83:
      sub_29934DEE4(a1, 1, 1, 0);
LABEL_84:
      v54 = 0;
      goto LABEL_89;
    }
  }

  v49 = *(a1 + 432);
  if (v49)
  {
    (*(*v49 + 32))(v49);
    v50 = *(a1 + 432);
    *(v50 + 96) = (v61 & 0x80) == 0;
    sub_29932CA50(v50, 1);
    if ((*(a1 + 384) & 1) == 0)
    {
      *(a1 + 248) = *(*(a1 + 296) + 336);
    }
  }

  if (v45 != 1 || v47 || (v51 = CFArrayGetValueAtIndex(Mutable, 0), v52 = (*(*v51[3] + 8))(v51[3]), v52 != CFStringGetCharacterAtIndex(kMecabraAnalysisStringForFacemark[0], 0)))
  {
    if (v60)
    {
      v55 = v60[6];
    }

    else
    {
      v55 = 0;
    }

    sub_29937928C(*(a1 + 400), v61, *(a1 + 384), v60);
    v58 = *(a1 + 400);
    if ((*(*(v58 + 8) + 25) & 0x40) == 0)
    {
      sub_29930852C((v58 + 56), v55, v44);
    }

    sub_2992B1C78();
  }

  sub_29934DEE4(a1, 1, 1, 0);
  if (v60 && sub_299225D3C(v60, kMecabraContextOptionPrivateMode) == *v14)
  {
    goto LABEL_84;
  }

  v53 = *(a1 + 432);
  v54 = v53 != 0;
  if (v53)
  {
    *buf = MEMORY[0x29EDCA5F8];
    v67 = 0x40000000;
    v68 = sub_299352450;
    v69 = &unk_29EF131D8;
    v70 = a1;
    sub_2993BD8CC(*(v53 + 152), buf);
    sub_299228F44(*(a1 + 464));
  }

LABEL_89:
  if (v44)
  {
    CFRelease(v44);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  return v54;
}

void sub_29934DE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, const void *);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_29924A4BC(va, 0);
  sub_2992530BC(va1, 0);
  _Unwind_Resume(a1);
}

void sub_29934DEE4(uint64_t a1, int a2, int a3, CFIndex a4)
{
  if (a4)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
    v20.location = 0;
    v20.length = a4;
    CFArrayAppendArray(Mutable, *(a1 + 424), v20);
    sub_299229F00((a1 + 424), Mutable);
    sub_299321FA0(*(a1 + 240));
    sub_29937E220(*(a1 + 400), 2);
    if (*(a1 + 416))
    {
      v9 = *(a1 + 408);
      if (v9)
      {
        sub_29937E220(v9, 2);
      }
    }

    if (!a3)
    {
      goto LABEL_13;
    }

LABEL_10:
    v11 = *(a1 + 520);
    if (v11)
    {
      *(a1 + 520) = 0;
      (*(*v11 + 8))(v11);
    }

    *(a1 + 256) = 0;
    goto LABEL_13;
  }

  sub_299229F00((a1 + 424), 0);
  *(a1 + 416) = 0;
  sub_299321FA0(*(a1 + 240));
  sub_299379160(*(a1 + 400));
  v10 = *(a1 + 408);
  if (v10)
  {
    sub_299379160(v10);
  }

  *(a1 + 592) = 0;
  if (a3)
  {
    goto LABEL_10;
  }

LABEL_13:
  *(a1 + 536) = 0;
  sub_2993B8C0C(a1, 0);
  v12 = *(a1 + 432);
  if (v12 && a2)
  {
    v13 = *(v12 + 136);
    v14 = v13[39];
    if (v14)
    {
      *(v14 + 24) = *(v14 + 16);
    }

    v15 = v13[40];
    if (v15)
    {
      *(v15 + 24) = *(v15 + 16);
    }

    v16 = v13[41];
    if (v16)
    {
      *(v16 + 24) = *(v16 + 16);
    }
  }

  v17 = *(a1 + 464);
  for (i = *v17; i != v17[1]; ++i)
  {
    v19 = *i;
    (*(*v19 + 32))(v19);
  }

  sub_299254000(a1 + 440);
  *(a1 + 576) = -1;
}

BOOL sub_29934E094(CFArrayRef theArray, CFIndex a2)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  result = 0;
  if (Count > a2 && Count - a2 != 1)
  {
    v6 = Count - 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, a2);
      v8 = (**ValueAtIndex[3])(ValueAtIndex[3]);
      v9 = v8 == 2;
      result = v8 != 2;
      v9 = !v9 || v6 == a2++;
    }

    while (!v9);
  }

  return result;
}

CFIndex sub_29934E138(uint64_t a1, CFArrayRef theArray, unsigned int a3, void *a4, unint64_t a5)
{
  if (!*(a1 + 408))
  {
    v10 = *(a1 + 296);
    v11 = *(a1 + 392);
    operator new();
  }

  if ((*(a1 + 288) & 1) == 0)
  {
    result = *(a1 + 408);
    *(a1 + 408) = 0;
    if (result)
    {
      v19 = *(*result + 16);

      return v19();
    }

    return result;
  }

  if (!a5 || !*(a1 + 416))
  {
    v13 = 0;
LABEL_21:
    *(a1 + 592) = 0;
    *(a1 + 584) = 1;
    sub_29937928C(*(a1 + 408), a3, *(a1 + 384), a4);
    if (v13 < a5)
    {
      v20 = *(a1 + 408);
      if (v13)
      {
        sub_29937E220(v20, 1);
      }

      else
      {
        sub_299379160(v20);
      }
    }

    Count = CFArrayGetCount(theArray);
    sub_299321FA0(*(a1 + 240));
    if (v13 >= Count)
    {
LABEL_34:
      if (*(a1 + 224) != 1)
      {
        *(a1 + 536) = 1;
        (*(**(a1 + 480) + 56))(*(a1 + 480));
        CFSetRemoveAllValues(*(a1 + 504));
        v28 = *(a1 + 408);
        if (CFArrayGetCount(*(v28 + 1160)))
        {
          v29 = 0;
          do
          {
            v30 = *(a1 + 480);
            ValueAtIndex = CFArrayGetValueAtIndex(*(v28 + 1160), v29);
            (*(*v30 + 16))(v30, ValueAtIndex);
            ++v29;
          }

          while (v29 < CFArrayGetCount(*(v28 + 1160)));
        }

        sub_299351638(a1);
        v32 = *(a1 + 480);
        v33 = sub_2992E9334(*(a1 + 616));
        (*(*v32 + 32))(v32, v33, 1);
        if (CFArrayGetCount(*(*(a1 + 480) + 8)))
        {
          v34 = CFArrayGetValueAtIndex(*(*(a1 + 480) + 8), 0);
          v37 = v34;
          if (*(a1 + 4) != 1 || !MecabraCandidateIsEmojiCandidate(v34, v35, v36))
          {
            sub_299329BC0(*(a1 + 472), v37, 1uLL);
          }

          if (CFArrayGetCount(*(*(a1 + 480) + 8)) >= 2)
          {
            v38 = CFArrayGetValueAtIndex(*(*(a1 + 480) + 8), 1);
            v41 = v38;
            if (*(a1 + 4) != 1 || !MecabraCandidateIsEmojiCandidate(v38, v39, v40))
            {
              sub_299329BC0(*(a1 + 472), v41, 2uLL);
            }
          }
        }

        sub_29932980C(*(a1 + 472));
      }

      result = CFArrayGetCount(theArray);
      *(a1 + 416) = result;
    }

    else
    {
      while (1)
      {
        v22 = *(CFArrayGetValueAtIndex(theArray, v13) + 3);
        v23 = v13 >= Count - 1 ? 0 : *(CFArrayGetValueAtIndex(theArray, v13 + 1) + 3);
        v24 = *(a1 + 408);
        *(v24 + 41) = sub_29934E094(theArray, v13);
        v25 = *(a1 + 408);
        if (v23)
        {
          v26 = (**v22)(v22);
          v27 = v26 != (**v23)(v23);
        }

        else
        {
          v27 = 1;
        }

        result = sub_29937813C(v25, v22, v27);
        ++v13;
        if (!result)
        {
          break;
        }

        if (Count == v13)
        {
          goto LABEL_34;
        }
      }

      *(a1 + 592) = v13;
    }

    *(a1 + 584) = 0;
    return result;
  }

  result = CFArrayGetCount(theArray);
  v13 = a5;
  if (result != a5)
  {
    v14 = CFArrayGetValueAtIndex(theArray, a5);
    result = (**v14[3])(v14[3]);
    v13 = a5;
    if (result == 1)
    {
      v15 = CFArrayGetValueAtIndex(theArray, a5 - 1);
      result = (**v15[3])(v15[3]);
      v13 = a5;
      if (result == 1)
      {
        v16 = 1;
        v17 = a5 - 2;
        if ((a5 - 2) >= 0)
        {
          while (1)
          {
            v18 = CFArrayGetValueAtIndex(theArray, v17);
            result = (**v18[3])(v18[3]);
            if (result != 1)
            {
              break;
            }

            ++v16;
            if (--v17 == -1)
            {
              v16 = a5;
              break;
            }
          }
        }

        v13 = a5 - v16;
      }
    }
  }

  if (*(a1 + 592) - 1 >= v13)
  {
    goto LABEL_21;
  }

  return result;
}

__CFArray *sub_29934E668(uint64_t a1, const __CFArray *a2, __int16 a3, uint64_t a4)
{
  if ((a3 & 0xA020) != 0)
  {
    return 0;
  }

  Count = CFArrayGetCount(*(a4 + 32));
  if (*(a1 + 568) != 1 || Count == 0)
  {
    return 0;
  }

  v9 = sub_299324314(a4, Count - 1);
  v12 = objc_msgSend_rawCandidate(v9, v10, v11);
  if (!v12)
  {
    return 0;
  }

  v13 = **v12;
  v14 = __dynamic_cast(v12, &unk_2A1F64300, &unk_2A1F752F0, 0);
  if (!a2)
  {
    return 0;
  }

  v15 = v14;
  if (!v14)
  {
    return 0;
  }

  if (!*(a1 + 424))
  {
    return 0;
  }

  if (!CFArrayGetCount(a2))
  {
    return 0;
  }

  v16 = CFArrayGetCount(a2);
  if (v16 != CFArrayGetCount(*(a1 + 424)))
  {
    return 0;
  }

  v17 = sub_29934E79C(a2, *(a1 + 424));
  if (v17 != CFArrayGetCount(a2))
  {
    return 0;
  }

  v18 = *(a1 + 400);

  return sub_2993789FC(v18, a2, v15);
}

CFIndex sub_29934E79C(const __CFArray *a1, const __CFArray *a2)
{
  if (!a2)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  v5 = CFArrayGetCount(a2);
  if (v5 >= Count)
  {
    v6 = Count;
  }

  else
  {
    v6 = v5;
  }

  if (v6 < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    while (1)
    {
      v8 = *(CFArrayGetValueAtIndex(a1, v7) + 3);
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v7);
      if (((*(*v8 + 16))(v8, ValueAtIndex[3]) & 1) == 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        v7 = v6;
        break;
      }
    }
  }

  if (v6 >= v7)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

void *sub_29934E86C(uint64_t a1)
{
  v2 = sub_299228FA8(*(a1 + 464), 0);
  v5 = v2;
  if (v2 && objc_msgSend_rawCandidate(v2, v3, v4) && (*(objc_msgSend_rawCandidate(v5, v6, v7) + 8) + 1) > *(a1 + 576))
  {
    return 0;
  }

  return v5;
}

uint64_t sub_29934E8D0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 256);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      LOBYTE(v6) = sub_299225D3C(v7, kMecabraContextOptionPrivateMode) == *MEMORY[0x29EDB8F00];
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  v8 = 0;
  v9 = *(a1 + 432);
  if (v9 && (v6 & 1) == 0)
  {
    if (a2)
    {
      v10 = objc_msgSend_rawCandidate(a2, a2, a3);
      if ((*(*v10 + 96))(v10) == 89)
      {
        v8 = 0;
        goto LABEL_12;
      }

      v9 = *(a1 + 432);
    }

    v8 = (*(*v9 + 56))(v9, a2, a3, 1);
  }

LABEL_12:
  if (!a2 || (a3 & 1) == 0)
  {
    sub_29934DEE4(a1, 0, 1, 0);
    sub_2992544D0(a1 + 440);
  }

  return v8;
}

uint64_t sub_29934E9EC(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 432) || sub_299225D3C(a2, kMecabraContextOptionPrivateMode) == *MEMORY[0x29EDB8F00] || sub_299325370(a2))
  {
    v4 = 0;
  }

  else
  {
    v4 = (*(**(a1 + 432) + 48))(*(a1 + 432), a2);
  }

  sub_29934DEE4(a1, 0, 1, 0);
  sub_2992544D0(a1 + 440);
  sub_29934EABC(a1, a2);
  return v4;
}

const void *sub_29934EABC(uint64_t a1, uint64_t a2)
{
  result = sub_299225D3C(a2, kMecabraContextOptionPrivateMode);
  if (result != *MEMORY[0x29EDB8F00])
  {
    result = sub_299325370(a2);
    if ((result & 1) == 0)
    {
      v5 = *(a1 + 432);
      if (v5)
      {
        if (*(v5 + 96) == 1)
        {
          sub_2992B1DB8();
        }
      }
    }
  }

  return result;
}

uint64_t sub_29934EC54(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (*(v2 + 5) != 1 || (v3 = *(v2 + 40)) == 0)
  {
    v3 = *(v2 + 32);
  }

  (*(*v3 + 56))(v3);
  v4 = *(a1 + 8);
  if (*(v4 + 5) != 1 || (v5 = *(v4 + 40)) == 0)
  {
    v5 = *(v4 + 32);
  }

  v6 = *(v5 + 8);

  return LMLanguageModelResetDynamicData();
}

uint64_t sub_29934ECE8(uint64_t a1, uint64_t a2, void *a3)
{
  if (sub_299225D3C(a2, kMecabraContextOptionPrivateMode) != *MEMORY[0x29EDB8F00])
  {
    if (a3)
    {
      v7 = objc_msgSend_rawCandidate(a3, v5, v6);
      if ((*(*v7 + 96))(v7) == 89)
      {
        return 0;
      }

      if (*(*(a1 + 608) + 4) <= 7u && MecabraCandidateGetSurface(a3, v8, v9))
      {
        v12 = *(a1 + 608);
        Surface = MecabraCandidateGetSurface(a3, v10, v11);
        sub_299278568(Surface, __p);
        if (v24 >= 0)
        {
          v20 = __p;
        }

        else
        {
          LOBYTE(v20) = __p[0];
        }

        sub_29930B600(v12, "Revert learning for candidate %s\n", v14, v15, v16, v17, v18, v19, v20);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v21 = *(a1 + 432);
    if (v21)
    {
      sub_29932D3E4(v21);
    }

    sub_2992B1F18();
  }

  return 0;
}

void sub_29934EE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29934EEE4(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v7 = *(result + 8);
  if (*(v7 + 5) != 1 || (v8 = *(v7 + 40)) == 0)
  {
    v8 = *(v7 + 32);
  }

  if (a3 == 1)
  {
    v9 = **a2 == 1;
    if (!a4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (!a4)
    {
LABEL_6:
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = a3;
      }

      if ((v10 & 0x8000000000000000) == 0)
      {
        v11 = (*(a2 + 8) - *a2) >> 2;
        if (*(v8 + 32) >= 2 && v10 < v11)
        {
          v13 = 4 * v10;
          do
          {
            v14 = *(*a2 + 4 * v10);
            v15 = *(v8 + 8);
            if (a5)
            {
              result = LMLanguageModelDecrementUsageCount();
            }

            else
            {
              result = LMLanguageModelIncrementUsageCount();
            }

            ++v10;
            v13 += 4;
          }

          while (v11 != v10);
        }
      }

      return result;
    }
  }

  if (((a5 | v9) & 1) == 0)
  {
    v16 = *a2;
    v17 = *(v8 + 8);

    return LMLanguageModelIncrementUsageCount();
  }

  return result;
}

void sub_29934F018(uint64_t a1, uint64_t a2, const __CFString *a3, double a4)
{
  sub_29934DEE4(a1, 1, 1, 0);
  v8 = *(a1 + 256);
  if (!v8 || (v9 = *(v8 + 8)) == 0 || sub_299225D3C(v9, kMecabraContextOptionPrivateMode) != *MEMORY[0x29EDB8F00] && ((v10 = *(v8 + 8)) == 0 || !sub_299325370(v10)))
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2000000000;
    *&v12[3] = a4;
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 0x40000000;
    v11[2] = sub_29934F144;
    v11[3] = &unk_29EF13148;
    v11[5] = a1;
    v11[6] = a2;
    v11[4] = v12;
    sub_2993E04D0((a1 + 360), a3, v11);
    _Block_object_dispose(v12, 8);
  }
}

void sub_29934F12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29934F468(uint64_t a1)
{
  v1 = *(a1 + 152);
  if (*(v1 + 104) == 1)
  {
    sub_29934DEE4(a1, 1, 1, 0);
    v3 = *(v1 + 112);
    if ((v3 & 8) != 0)
    {
      v4 = *(a1 + 432);
      if (v4)
      {
        v5 = *(a1 + 8);
        if (*(v5 + 5) != 1 || (v6 = *(v5 + 40)) == 0)
        {
          v6 = *(v5 + 32);
        }

        sub_29938460C(v6, v4);
      }

      sub_2993B8E44(a1);
      sub_2993B8CEC(a1);
      v7 = *(a1 + 432);
      if (v7)
      {
        v8 = *(a1 + 8);
        if (*(v8 + 5) != 1 || (v9 = *(v8 + 40)) == 0)
        {
          v9 = *(v8 + 32);
        }

        sub_2993845B0(v9, v7);
      }

      v3 = *(v1 + 112) & 0xFFFFFFFFFFFFFFF7;
      *(v1 + 112) = v3;
    }

    if ((v3 & 0x800) != 0)
    {
      if (*(v1 + 168))
      {
        v10 = *(v1 + 168);
        sub_2993665E8(*(a1 + 296));
      }

      *(v1 + 112) &= ~0x800uLL;
    }
  }
}

void sub_29934F5AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFDictionary *sub_29934F5C8(uint64_t a1, int a2)
{
  if (a2 != 3)
  {
    return 0;
  }

  v2 = *(a1 + 432);
  if (!v2)
  {
    return 0;
  }

  v3 = (*(*v2 + 144))(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v6 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"surface", v4);
  }

  return v6;
}

uint64_t sub_29934F664(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (*(v2 + 5) != 1 || (v3 = *(v2 + 40)) == 0)
  {
    v3 = *(v2 + 32);
  }

  v4 = *(v3 + 8);
  LMLanguageModelFlushDynamicData();
  v5 = *(a1 + 432);
  if (!v5)
  {
    return 1;
  }

  v6 = *(*v5 + 88);

  return v6();
}

uint64_t sub_29934F6F4(uint64_t a1)
{
  v2 = *(a1 + 432);
  if (v2)
  {
    (*(*v2 + 80))(v2);
  }

  v3 = *(a1 + 8);
  if (*(v3 + 5) != 1 || (v4 = *(v3 + 40)) == 0)
  {
    v4 = *(v3 + 32);
  }

  v5 = *(v4 + 8);

  return LMLanguageModelResetDynamicData();
}

CFArrayRef sub_29934F774(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = objc_msgSend_rawCandidate(a2, a2, a3);
  if (v5)
  {
    v6 = **v5;
    v7 = __dynamic_cast(v5, &unk_2A1F64300, &unk_2A1F752F0, 0);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 512);

  return sub_2992142A0(v8, v7, a3);
}

void sub_29934F808(uint64_t a1, const UniChar *a2, CFIndex numChars, uint64_t a4)
{
  if (a2)
  {
    if (numChars)
    {
      v7 = CFStringCreateWithCharacters(*MEMORY[0x29EDB8ED8], a2, numChars);
      if (v7)
      {
        v8 = v7;
        v38 = a2;
        v48 = 0;
        v45 = 0;
        v46 = 0;
        v47 = 0;
        sub_29934C930(a1, v7, 0, 0);
        v9 = v8;
        v10 = 0;
        while (1)
        {
          v11 = (*(**(a1 + 472) + 48))(*(a1 + 472));
          v14 = v11;
          v15 = !v11 || v10 == 10;
          if (v15 || 0xAAAAAAAAAAAAAAABLL * ((v46 - v45) >> 3) > 2 || (v48 & 1) != 0)
          {
            break;
          }

          v16 = MecabraCandidateCopySyllableLengthArrayInAnalysisString(v11, v12, v13);
          v17 = v16;
          ++v10;
          if (v16)
          {
            Count = CFArrayGetCount(v16);
            v43 = 0;
            valuePtr = 0;
            __p = 0;
            v42 = 0;
            v40 = v10;
            if (Count)
            {
              if (!(Count >> 61))
              {
                sub_299236FB8(&__p, Count);
              }

              sub_299212A8C();
            }

            if (!numChars)
            {
              v20 = __p;
              v19 = v42;
              if ((sub_29934FC84(v45, v46, __p, v42) & 1) == 0)
              {
                (*(a4 + 16))(a4, v20, (v19 - v20) >> 3, &v48);
                if ((v48 & 1) == 0)
                {
                  v21 = v46;
                  if (v46 >= v47)
                  {
                    v24 = sub_29935256C(&v45, &__p);
                  }

                  else
                  {
                    *v46 = 0;
                    v21[1] = 0;
                    v21[2] = 0;
                    sub_2993526BC(v21, __p, v42, (v42 - __p) >> 3);
                    v24 = v21 + 3;
                  }

                  v46 = v24;
                  if (MecabraCandidateGetMatchedLengthType(v14, v22, v23) != 2)
                  {
                    v25 = sub_2993A9ED4(*(a1 + 400) + 80, v38, 0, *(v42 - 1));
                    if (v25 != -1)
                    {
                      v26 = __p;
                      *(__p - 1) = v25;
                      v27 = -v25;
                      v28 = v42;
                      if (v42 >= v43)
                      {
                        v30 = v42 - v26;
                        v31 = (v42 - v26) >> 3;
                        v32 = v31 + 1;
                        if ((v31 + 1) >> 61)
                        {
                          sub_299212A8C();
                        }

                        v33 = v43 - v26;
                        if ((v43 - v26) >> 2 > v32)
                        {
                          v32 = v33 >> 2;
                        }

                        v34 = v33 >= 0x7FFFFFFFFFFFFFF8;
                        v35 = 0x1FFFFFFFFFFFFFFFLL;
                        if (!v34)
                        {
                          v35 = v32;
                        }

                        if (v35)
                        {
                          sub_299236FB8(&__p, v35);
                        }

                        *(8 * v31) = v27;
                        v29 = (8 * v31 + 8);
                        memcpy(0, v26, v30);
                        v36 = __p;
                        __p = 0;
                        v42 = v29;
                        v43 = 0;
                        if (v36)
                        {
                          operator delete(v36);
                        }
                      }

                      else
                      {
                        *v42 = v27;
                        v29 = v28 + 8;
                      }

                      v42 = v29;
                      v37 = __p;
                      if ((sub_29934FC84(v45, v46, __p, v29) & 1) == 0)
                      {
                        (*(a4 + 16))(a4, v37, (v29 - v37) >> 3, &v48);
                        if ((v48 & 1) == 0)
                        {
                          sub_29934FD04(&v45, &__p);
                        }
                      }
                    }
                  }
                }
              }
            }

            CFRelease(v17);
            if (__p)
            {
              v42 = __p;
              operator delete(__p);
            }

            v10 = v40;
          }
        }

        CFRelease(v9);
        __p = &v45;
        sub_2992FD380(&__p);
      }
    }
  }
}

void sub_29934FC20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  __p = &a19;
  sub_2992FD380(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_29934FC84(uint64_t a1, uint64_t a2, void *__s2, uint64_t a4)
{
  if (a1 == a2)
  {
    return 0;
  }

  v6 = a1;
  v7 = a4 - __s2;
  while (*(v6 + 8) - *v6 != v7 || memcmp(*v6, __s2, v7))
  {
    v6 += 24;
    if (v6 == a2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_29934FD04(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29935256C(a1, a2);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    sub_2993526BC(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
    result = (v3 + 3);
    *(a1 + 8) = v3 + 3;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29934FD70(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 472) + 56))(*(a1 + 472));
  v4 = sub_299379578(*(a1 + 400), a2);
  if (CFArrayGetCount(*(v4 + 8)))
  {
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 8), v5);
      v9 = ValueAtIndex;
      if (*(a1 + 4) != 1 || !MecabraCandidateIsEmojiCandidate(ValueAtIndex, v7, v8))
      {
        (*(**(a1 + 472) + 16))(*(a1 + 472), v9);
      }

      ++v5;
    }

    while (v5 < CFArrayGetCount(*(v4 + 8)));
  }

  v10 = *(a1 + 472);
  v11 = *(a1 + 616);
  v12 = sub_2992E99B4();
  (*(*v10 + 32))(v10, v12, 1);
  return *(*(a1 + 472) + 8);
}

void sub_29934FE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29934DEE4(a1, 1, 1, 0);
  if (a3 >= 1)
  {
    v5 = *(a1 + 432);
    if (v5)
    {
      v6 = *(*v5 + 24);

      v6();
    }
  }
}

void sub_29934FF10(uint64_t a1)
{
  v151 = *MEMORY[0x29EDCA608];
  (*(**(a1 + 472) + 56))(*(a1 + 472));
  CFSetRemoveAllValues(*(a1 + 504));
  *(a1 + 536) = *(a1 + 568);
  *(a1 + 552) = *(a1 + 544);
  v2 = *(a1 + 400);
  if (*(v2 + 1152) != 1)
  {
    goto LABEL_174;
  }

  if (CFArrayGetCount(*(v2 + 1160)))
  {
    v3 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 1160), v3);
      v7 = ValueAtIndex;
      if (*(a1 + 4) != 1 || !MecabraCandidateIsEmojiCandidate(ValueAtIndex, v5, v6))
      {
        (*(**(a1 + 472) + 16))(*(a1 + 472), v7);
      }

      ++v3;
    }

    while (v3 < CFArrayGetCount(*(v2 + 1160)));
  }

  *(v2 + 1152) = 0;
  v134 = 0;
  v8 = *(a1 + 216);
  if ((v8 & 1) == 0)
  {
    if (*(a1 + 568) == 1)
    {
      sub_299351638(a1);
    }

    else
    {
      v9 = *(a1 + 400);
      if ((*(v9 + 1312) & 1) == 0)
      {
        v142 = 0.0;
        v10 = (*(**(v9 + 952) + 64))(*(v9 + 952), &v142, 1);
        __p = 0;
        v145 = 0;
        v146 = 0;
        LOBYTE(values) = 0;
        v11 = sub_2993518D0(a1, v10, &__p, &values);
        (*(**(*(a1 + 400) + 952) + 120))(*(*(a1 + 400) + 952), v10, "Best: ", v142);
        if (v11)
        {
          if (values == 1)
          {
            *&v135 = 0.0;
            v12 = (*(**(*(a1 + 400) + 952) + 72))(*(*(a1 + 400) + 952), &v135, &unk_2A1F74B80);
            if (*&v135 < v142 + 4.5)
            {
              v13 = v12;
              sub_299351BEC(a1, v12);
              (*(**(*(a1 + 400) + 952) + 120))(*(*(a1 + 400) + 952), v13, "AutoCorrection: ", v142);
              *(a1 + 536) = 1;
            }
          }

          sub_299351CA8();
        }

        if (__p)
        {
          v145 = __p;
          operator delete(__p);
        }

        if ((*(*(a1 + 400) + 1312) & 1) == 0 && !CFArrayGetCount(*(*(a1 + 472) + 8)))
        {
          *&v135 = 0.0;
          v14 = *(a1 + 400);
          v133[0] = MEMORY[0x29EDCA5F8];
          v133[1] = 0x40000000;
          v133[2] = sub_2993523DC;
          v133[3] = &unk_29EF13190;
          v133[4] = a1;
          v133[5] = 0;
          (*(**(v14 + 952) + 72))(*(v14 + 952), &v135, v133);
        }
      }
    }
  }

  if ((*(a1 + 568) & 1) == 0)
  {
    v15 = *(a1 + 544);
    v16 = *(a1 + 552);
    if ((v16 - v15) >= 9 && v15 != v16)
    {
      v17 = 0;
      v18 = *(a1 + 544);
      while (1)
      {
        v19 = *(*v18 + 192);
        if (!v19)
        {
          break;
        }

        if (v19 < v17)
        {
          v17 = *(*v18 + 192);
        }

        if (++v18 == v16)
        {
          v20 = 0;
          v21 = v17;
          v22 = 0.0;
          do
          {
            v23 = *v15;
            v24 = (*(**v15 + 112))(*v15);
            (*(*v23 + 480))(v23, (v24 - v21 + v23[48]));
            v25 = *v23;
            if (v20)
            {
              (*(v25 + 400))(v23, v22);
            }

            else
            {
              v22 = (*(v25 + 392))(v23);
            }

            ++v15;
            --v20;
          }

          while (v15 != v16);
          break;
        }
      }
    }
  }

  v26 = *(a1 + 472);
  v27 = sub_2992E8D58(*(a1 + 616));
  (*(*v26 + 32))(v26, v27, 1);
  if (v134)
  {
    v30 = (v8 & 1) == 0;
  }

  else
  {
    v30 = 0;
  }

  v31 = 0.0;
  if (v30)
  {
    v32 = sub_2992896C0(v134, v28, v29);
    v33 = (*(*v32 + 49))(v32);

    v31 = -v33;
  }

  if (*(a1 + 384))
  {
    goto LABEL_174;
  }

  sub_29932980C(*(a1 + 472));
  if (CFArrayGetCount(*(*(a1 + 472) + 8)))
  {
    v34 = CFArrayGetValueAtIndex(*(*(a1 + 472) + 8), 0);
  }

  else
  {
    v34 = 0;
  }

  v35 = *(a1 + 400);
  Count = CFArrayGetCount(*(v35 + 1112));
  if (Count >= 1)
  {
    v39 = CFArrayGetValueAtIndex(*(v35 + 1112), Count - 1);
    values = v39;
    if (v39)
    {
      if (*(a1 + 4) != 1 || !MecabraCandidateIsEmojiCandidate(v39, v37, v38))
      {
        v113 = *(a1 + 200);
        Surface = MecabraCandidateGetSurface(v39, v37, v38);
        if ((sub_2992BF2E4(v113, Surface, 2050) & 1) == 0)
        {
          if (CFArrayGetCount(*(*(a1 + 472) + 8)) >= 2)
          {
            __dst = 0;
            p_dst = &__dst;
            v149 = 0x2000000000;
            v150 = 0;
            v117 = MecabraCandidateGetSurface(v39, v115, v116);
            v118 = *(a1 + 472);
            *&v135 = MEMORY[0x29EDCA5F8];
            v136 = 0x40000000;
            v137 = sub_2993523EC;
            v138 = &unk_29EF131B8;
            v139 = &__dst;
            v140 = v117;
            sub_2993293E4(v118, &v135);
            v119 = *(p_dst + 3);
            _Block_object_dispose(&__dst, 8);
            v145 = 0;
            v146 = 0;
            __p = &v145;
            operator new();
          }

          (*(**(a1 + 472) + 16))(*(a1 + 472), v39);
        }
      }
    }

    goto LABEL_172;
  }

  v143 = 0.0;
  v40 = (*(**(*(a1 + 400) + 952) + 72))(*(*(a1 + 400) + 952), &v143, &unk_2A1F74B60);
  v131 = v34;
  *&v135 = 0.0;
  v136 = 0;
  v137 = 0;
  __dst = 0;
  p_dst = 0;
  v149 = 0;
  v42 = *(a1 + 8);
  if (*(v42 + 5) != 1 || (v43 = *(v42 + 40)) == 0)
  {
    v43 = *(v42 + 32);
  }

  v130 = v40;
  if (!v40)
  {
    v44 = 0;
    goto LABEL_130;
  }

  v132 = 0;
  v44 = 0;
  v45 = v40;
  do
  {
    v46 = *v45;
    v47 = *(*v45 + 16);
    if (!v47)
    {
      goto LABEL_126;
    }

    if ((v46[2] - 9) <= 1)
    {
      v48 = *v47;
      if (*v47)
      {
        v49 = *(v48 + 8);
        if (v49 - 1 < 0)
        {
          goto LABEL_62;
        }

        v50 = 0;
        v51 = (*(v48 + 32) + 4 * v49 - 4);
        while (1)
        {
          v52 = *v51;
          v51 -= 4;
          if (v52)
          {
            break;
          }

          if (v49 == ++v50)
          {
            goto LABEL_62;
          }
        }

        if (v50)
        {
          v44 = v49 - v50;
        }

        else
        {
LABEL_62:
          v44 = 0;
        }
      }
    }

    __p = 0;
    v53 = (*(*v46 + 32))(v46, &__p);
    v54 = v53;
    v55 = __p;
    if (!v53 || __p == 0)
    {
      break;
    }

    v57 = v135;
    if (v135 == v136)
    {
      if (v46[2] == 10)
      {
        v65 = v43[1];
        if (LMLanguageModelTokenSequenceIsBlocklisted())
        {
          break;
        }

        v55 = __p;
        v132 = 1;
        v57 = v135;
      }

      v66 = 4 * v55;
      v67 = v137;
      if (v55 > (v137 - v57) >> 2)
      {
        if (v57)
        {
          v136 = v57;
          operator delete(v57);
          v67 = 0;
          *&v135 = 0.0;
          v136 = 0;
          v137 = 0;
        }

        if (!(v55 >> 62))
        {
          v68 = v67 >> 1;
          if (v67 >> 1 <= v55)
          {
            v68 = v55;
          }

          if (v67 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v69 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v69 = v68;
          }

          sub_2992F8674(&v135, v69);
        }

        sub_299212A8C();
      }

      v72 = v136;
      v73 = v136 - v57;
      if (v55 <= (v136 - v57) >> 2)
      {
        if (v55)
        {
          memmove(v57, v54, 4 * v55);
        }

        v81 = &v57[v66];
      }

      else
      {
        if (v136 != v57)
        {
          memmove(v57, v54, v136 - v57);
        }

        v93 = v136;
        if (v73 != v66)
        {
          v94 = (v54 + v73);
          v95 = &v57[v66 - v72];
          v93 = v136;
          v96 = v136;
          do
          {
            v97 = *v94++;
            *v96++ = v97;
            v93 += 4;
            v95 -= 4;
          }

          while (v95);
        }

        v81 = v93;
      }

      v136 = v81;
      goto LABEL_126;
    }

    if (__p >= 1)
    {
      v58 = 4 * __p;
      v59 = p_dst;
      v60 = __dst;
      v61 = (p_dst - __dst) >> 2;
      if (__p <= (v149 - p_dst) >> 2)
      {
        if (v61 >= __p)
        {
          v74 = &p_dst[-4 * __p];
          v75 = p_dst;
          while (v74 < v59)
          {
            v76 = *v74;
            v74 += 4;
            *v75 = v76;
            v75 += 4;
          }

          v77 = &v60[4 * v55];
          p_dst = v75;
          if (v59 != v77)
          {
            memmove(&v60[4 * v55], v60, v59 - v77);
          }

          v78 = v60;
          v79 = v54;
          v80 = 4 * v55;
        }

        else
        {
          if (p_dst - __dst == v58)
          {
            v70 = p_dst;
            v71 = p_dst;
          }

          else
          {
            v88 = &__dst[v58];
            v70 = p_dst;
            v71 = p_dst;
            do
            {
              *v71 = *&v70[v53 - v60];
              v71 += 4;
              v70 += 4;
            }

            while (v88 != v70);
          }

          p_dst = v70;
          if (v61 < 1)
          {
            goto LABEL_126;
          }

          v89 = &v70[-4 * v55];
          v90 = v70;
          while (v89 < v59)
          {
            v91 = *v89;
            v89 += 4;
            *v90 = v91;
            v90 += 4;
          }

          v92 = &v60[4 * v55];
          p_dst = v90;
          if (v71 != v92)
          {
            memmove(&v60[4 * v55], v60, v70 - v92);
          }

          if (v59 == v60)
          {
            goto LABEL_126;
          }

          v78 = v60;
          v79 = v54;
          v80 = v59 - v60;
        }

        memmove(v78, v79, v80);
      }

      else
      {
        v62 = __p + v61;
        if ((__p + v61) >> 62)
        {
          sub_299212A8C();
        }

        v63 = v149 - __dst;
        if ((v149 - __dst) >> 1 > v62)
        {
          v62 = v63 >> 1;
        }

        if (v63 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v64 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v64 = v62;
        }

        if (v64)
        {
          sub_2992F86B0(&__dst, v64);
        }

        v82 = (4 * __p);
        v83 = 0;
        do
        {
          v84 = *v54++;
          *v83++ = v84;
          v58 -= 4;
        }

        while (v58);
        memcpy(v82, v60, p_dst - v60);
        v85 = &v82[p_dst - v60];
        p_dst = v60;
        v86 = (__dst - v60);
        memcpy((__dst - v60), __dst, v60 - __dst);
        v87 = __dst;
        __dst = v86;
        p_dst = v85;
        v149 = 0;
        if (v87)
        {
          operator delete(v87);
        }
      }
    }

LABEL_126:
    v45 = v45[1];
  }

  while (v45);
  if (v132)
  {
    goto LABEL_148;
  }

LABEL_130:
  v98 = v135;
  if (v135 == v136 || __dst == p_dst || !v44)
  {
LABEL_148:
    v100 = v130;
    if (!v130)
    {
      goto LABEL_151;
    }

    v112 = v131;
    if (v143 < v31 + 1.5)
    {
      __p = 0;
      v145 = 0;
      v146 = 0;
      sub_2993518D0(a1, v130, &__p, 0);
      operator new();
    }
  }

  else
  {
    v99 = 0;
    while ((*(*v43 + 40))(v43, v98[v99]) >= (v44 - 1) * -0.7 + -2.8)
    {
      v101 = p_dst;
      if (p_dst >= v149)
      {
        v103 = __dst;
        v104 = p_dst - __dst;
        v105 = (p_dst - __dst) >> 2;
        v106 = v105 + 1;
        if ((v105 + 1) >> 62)
        {
          sub_299212A8C();
        }

        v107 = v149 - __dst;
        if ((v149 - __dst) >> 1 > v106)
        {
          v106 = v107 >> 1;
        }

        if (v107 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v108 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v108 = v106;
        }

        if (v108)
        {
          sub_2992F86B0(&__dst, v108);
        }

        v109 = (4 * v105);
        v110 = &v109[-((p_dst - __dst) >> 2)];
        *v109 = *(v135 + v99);
        v102 = (v109 + 1);
        memcpy(v110, v103, v104);
        v111 = __dst;
        __dst = v110;
        p_dst = v102;
        v149 = 0;
        if (v111)
        {
          operator delete(v111);
        }
      }

      else
      {
        *p_dst = *(v135 + v99);
        v102 = v101 + 4;
      }

      p_dst = v102;
      ++v99;
      v98 = v135;
      if (v99 >= (v136 - v135) >> 2)
      {
        goto LABEL_148;
      }
    }

LABEL_151:
    v112 = v131;
  }

  if (__dst)
  {
    p_dst = __dst;
    operator delete(__dst);
  }

  if (*&v135 != 0.0)
  {
    v136 = v135;
    operator delete(v135);
  }

  values = 0;
  if (MecabraCandidateGetMatchedLengthType(v112, v100, v41) != 2 && sub_29937D0F8(*(a1 + 400)))
  {
    v122 = objc_msgSend_rawCandidate(v112, v120, v121);
    if (v122)
    {
      v123 = **v122;
      v124 = __dynamic_cast(v122, &unk_2A1F64300, &unk_2A1F752F0, 0);
      if (v124)
      {
        v125 = v124;
        if ((*(*v124 + 24))(v124))
        {
          v126 = (*(*v125 + 24))(v125);
          if ((CFStringGetLength(v126) - 9) >= 0xFFFFFFFFFFFFFFF9)
          {
            v127 = (*(*v125 + 24))(v125);
            if ((sub_2992364F0(v127) & 1) == 0)
            {
              sub_2992B1D18();
            }
          }
        }
      }
    }
  }

LABEL_172:
  v128 = CFArrayGetCount(*(*(a1 + 472) + 8));
  if (v128 >= 0xC9)
  {
    sub_29932989C(*(a1 + 472), 200, v128 - 200);
  }

LABEL_174:
  v129 = *MEMORY[0x29EDCA608];
}

void sub_2993514A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_299351638(uint64_t a1)
{
  v2 = 400;
  if (*(a1 + 584))
  {
    v2 = 408;
  }

  sub_29937DC5C(*(a1 + v2), 1, &__p);
  v3 = __p;
  v4 = v22;
  if (__p == v22)
  {
    v5 = 400;
    if (*(a1 + 584))
    {
      v5 = 408;
    }

    sub_29937DC5C(*(a1 + v5), 0, &v19);
    if (__p)
    {
      *&v22 = __p;
      operator delete(__p);
    }

    v3 = v19;
    __p = v19;
    v22 = v20;
    v4 = v20;
  }

  if (v3 != v4)
  {
    v6 = 0;
    v7 = 1;
    v8 = 3.0;
    do
    {
      v9 = v3[1];
      if (v7)
      {
        v8 = v8 + v9;
      }

      if (v9 >= v8 || CFSetGetCount(*(a1 + 504)) + v6 > 3)
      {
        break;
      }

      v10 = *v3;
      if ((v7 & 1) != 0 || !v10)
      {
LABEL_21:
        v12 = *(v3 + 1);
        v13 = sub_299351BEC(a1, v10);
        v15 = *(a1 + 584) ? 408 : 400;
        v16 = *(a1 + v15);
        v17 = v13 ? "Neural:" : "Neural Dropped:";
        v14.n128_f64[0] = v3[1];
        (*(**(v16 + 952) + 120))(*(v16 + 952), *v3, v17, v14);
      }

      else
      {
        while (1)
        {
          v11 = *v10;
          if ((*(**v10 + 40))(*v10))
          {
            if (((*(*v11 + 40))(v11) & 0x1002) != 0)
            {
              break;
            }
          }

          v10 = v10[1];
          if (!v10)
          {
            v10 = *v3;
            goto LABEL_21;
          }
        }

        v18 = *(a1 + 584) ? 408 : 400;
        (*(**(*(a1 + v18) + 952) + 120))(*(*(a1 + v18) + 952), *v3, "Neural OVS:", v3[1]);
        ++v6;
      }

      v7 = 0;
      v3 += 2;
    }

    while (v3 != v4);
    v3 = __p;
  }

  if (v3)
  {
    *&v22 = v3;
    operator delete(v3);
  }
}

void sub_2993518A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2993518D0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  *(a3 + 8) = *a3;
  if (a4)
  {
    *a4 = 0;
  }

  __p = 0;
  v38 = 0;
  v39 = 0;
  v7 = 0;
  if (a2)
  {
    v8 = 0;
    do
    {
      v9 = *v6;
      v10 = *(*v6 + 16);
      if (v10)
      {
        if (a4)
        {
          if ((*a4 & 1) == 0)
          {
            v11 = *v10;
            if (v11)
            {
              if ((*(v11 + 40) & 0x10) != 0 && *(v11 + 56) < 1.0)
              {
                *a4 = 1;
              }
            }
          }
        }

        v13 = *(a3 + 8);
        v12 = *(a3 + 16);
        if (v13 >= v12)
        {
          v15 = (v13 - *a3) >> 3;
          if ((v15 + 1) >> 61)
          {
            sub_299212A8C();
          }

          v16 = v12 - *a3;
          v17 = v16 >> 2;
          if (v16 >> 2 <= (v15 + 1))
          {
            v17 = v15 + 1;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
            v18 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            sub_299229E2C(a3, v18);
          }

          v19 = (8 * v15);
          *v19 = v9;
          v14 = 8 * v15 + 8;
          v20 = *(a3 + 8) - *a3;
          v21 = v19 - v20;
          memcpy(v19 - v20, *a3, v20);
          v22 = *a3;
          *a3 = v21;
          *(a3 + 8) = v14;
          *(a3 + 16) = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v13 = v9;
          v14 = (v13 + 1);
        }

        *(a3 + 8) = v14;
        v23 = ((*v9)[7])(v9);
        sub_299218EBC(&__p, __p, *v23, (*v23 + 2 * *(v23 + 8)), *(v23 + 8));
        if (v7 || (v24 = *v9[2]) == 0)
        {
          v7 = 1;
        }

        else
        {
          v8 += *(v24 + 8);
          v7 = v8 > 1;
        }
      }

      v6 = v6[1];
    }

    while (v6);
  }

  if (*(a1 + 568) == 1)
  {
    v25 = *a3;
    v26 = *(a3 + 8);
    if (*a3 == v26)
    {
LABEL_37:
      v28 = 0;
      goto LABEL_46;
    }
  }

  else
  {
    v25 = *a3;
    v26 = *(a3 + 8);
    if (v26 == *a3 || v7)
    {
      if (v26 == v25)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v27 = *(a1 + 256);
      if (!v27 || ((*(*v27 + 24))(v27) & 1) != 0)
      {
        goto LABEL_37;
      }

      v25 = *a3;
      v26 = *(a3 + 8);
    }
  }

  if (v25 != v26)
  {
    v29 = v26 - 8;
    if (v29 > v25)
    {
      v30 = v25 + 8;
      do
      {
        v31 = *(v30 - 1);
        *(v30 - 1) = *v29;
        *v29 = v31;
        v29 -= 8;
        v32 = v30 >= v29;
        v30 += 8;
      }

      while (!v32);
    }
  }

  v33 = *(a1 + 232);
  v34 = sub_29922EBB4();
  v28 = CFSetContainsValue(*(a1 + 504), v34) == 0;
  if (v34)
  {
    CFRelease(v34);
  }

LABEL_46:
  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }

  return v28;
}

void sub_299351BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299351BEC(uint64_t a1, void *a2)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  v5 = 0;
  if (sub_2993518D0(a1, a2, &__p, &v5))
  {
    if ((*(a1 + 568) & 1) == 0)
    {
      v3 = *(a1 + 584) ^ 1u;
    }

    sub_299351CA8();
  }

  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_299351C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299352298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993522D4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  if (a2 && (*(*a2 + 8) - 9) < 2)
  {
    return 0;
  }

  if (*(*(*(a1 + 32) + 8) + 24) > *(a1 + 48) + 0.7)
  {
    return 1;
  }

  if (a2)
  {
    if (*(a1 + 56))
    {
      v6 = **(*a2 + 16);
      if (v6)
      {
        if (*(v6 + 40))
        {
          return 1;
        }
      }
    }
  }

  (*(**(*(v4 + 400) + 952) + 120))(*(*(v4 + 400) + 952), a2, "Alternative: ");
  v7 = *(*(*(a1 + 32) + 8) + 24);

  return sub_299351BEC(v4, a2);
}

uint64_t sub_2993523EC(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 40);
  Surface = MecabraCandidateGetSurface(a2, a2, a3);
  result = CFStringHasPrefix(v5, Surface);
  if (result)
  {
    *a3 = 1;
  }

  ++*(*(*(a1 + 32) + 8) + 24);
  return result;
}

CFCharacterSetRef sub_29935251C()
{
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
  qword_2A1461230 = CFCharacterSetCreateInvertedSet(0, Predefined);
  result = CFCharacterSetCreateWithCharactersInString(0, @":/-_+@#");
  qword_2A1461238 = result;
  return result;
}

uint64_t sub_29935256C(const void **a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_299212A8C();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v17 = a1;
  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_29919600C();
  }

  v6 = 24 * v2;
  v13 = 0;
  v14 = v6;
  v15 = 24 * v2;
  v16 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = 0;
  sub_2993526BC(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
  v7 = v15 + 24;
  v8 = a1[1] - *a1;
  v9 = &v14[-v8];
  memcpy(&v14[-v8], *a1, v8);
  v10 = *a1;
  *a1 = v9;
  a1[1] = v7;
  v11 = a1[2];
  a1[2] = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  sub_2992FD31C(&v13);
  return v7;
}

void sub_2993526A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2992FD31C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993526BC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_29920E024(result, a4);
  }

  return result;
}

void sub_29935271C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_299352738(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 336);
    *(v2 + 336) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 328);
    *(v2 + 328) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(v2 + 320);
    *(v2 + 320) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(v2 + 312);
    *(v2 + 312) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    sub_299352924((v2 + 264));
    v7 = *(v2 + 240);
    *(v2 + 240) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v16 = (v2 + 216);
    sub_299291260(&v16);
    v8 = *(v2 + 192);
    if (v8)
    {
      *(v2 + 200) = v8;
      operator delete(v8);
    }

    v9 = *(v2 + 168);
    if (v9)
    {
      *(v2 + 176) = v9;
      operator delete(v9);
    }

    v10 = *(v2 + 144);
    if (v10)
    {
      *(v2 + 152) = v10;
      operator delete(v10);
    }

    v11 = *(v2 + 120);
    if (v11)
    {
      *(v2 + 128) = v11;
      operator delete(v11);
    }

    v12 = *(v2 + 96);
    if (v12)
    {
      *(v2 + 104) = v12;
      operator delete(v12);
    }

    v13 = *(v2 + 72);
    if (v13)
    {
      *(v2 + 80) = v13;
      operator delete(v13);
    }

    v14 = *(v2 + 48);
    if (v14)
    {
      *(v2 + 56) = v14;
      operator delete(v14);
    }

    v15 = *(v2 + 24);
    if (v15)
    {
      *(v2 + 32) = v15;
      operator delete(v15);
    }

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t *sub_299352924(uint64_t *a1)
{
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_299352990(a1 + 4);
  sub_299352990(a1 + 3);
  sub_299352990(a1 + 2);
  return a1;
}

uint64_t *sub_299352990(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_299252124(v2);
    MEMORY[0x29C29BFB0](v3, 0x1060C40E5902F1BLL);
  }

  return a1;
}

void sub_299352B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = v11;
  MEMORY[0x29C29BFB0](v12, v14);
  a10 = v13 + 3;
  sub_299354B70(&a10);
  a10 = v13;
  sub_299354C1C(&a10);
  sub_299352CDC(v10 + 4);
  v16 = v10[3];
  v10[3] = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = v10[2];
  v10[2] = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = v10[1];
  v10[1] = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *v10;
  *v10 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_299352CDC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2993C35F0(v2);
    MEMORY[0x29C29BFB0](v3, 0x10B2C404C9173A4);
  }

  return a1;
}

uint64_t *sub_299352D24(uint64_t *a1)
{
  if (*(a1 + 263) < 0)
  {
    operator delete(a1[30]);
  }

  if (*(a1 + 239) < 0)
  {
    operator delete(a1[27]);
  }

  v2 = a1[23];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[21];
  a1[21] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[18];
  if (v5)
  {
    a1[19] = v5;
    operator delete(v5);
  }

  v6 = a1[15];
  if (v6)
  {
    a1[16] = v6;
    operator delete(v6);
  }

  v7 = a1[12];
  if (v7)
  {
    a1[13] = v7;
    operator delete(v7);
  }

  v8 = a1[11];
  a1[11] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v14 = (a1 + 8);
  sub_299354B70(&v14);
  v14 = (a1 + 5);
  sub_299354C1C(&v14);
  sub_299352CDC(a1 + 4);
  v9 = a1[3];
  a1[3] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = a1[2];
  a1[2] = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = a1[1];
  a1[1] = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *a1;
  *a1 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return a1;
}

uint64_t sub_299352EE0(uint64_t a1)
{
  v2 = *(a1 + 239);
  if (v2 < 0)
  {
    v3 = *(a1 + 224);
  }

  else
  {
    v3 = *(a1 + 239);
  }

  v4 = a1 + 216;
  if (!v3)
  {
    sub_299352F40(a1, (a1 + 216));
    if ((*(a1 + 239) & 0x80) == 0)
    {
      return v4;
    }

    return *v4;
  }

  if ((v2 & 0x80) != 0)
  {
    return *v4;
  }

  return v4;
}

std::string *sub_299352F40(uint64_t a1, std::string *this)
{
  std::string::append(this, "k", 4uLL);
  std::string::append(this, (a1 + 208), 4uLL);
  v4 = (*(**(a1 + 8) + 40))(*(a1 + 8));
  v5 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  sub_299353188(v4, v5, this);
  v6 = (*(**a1 + 40))();
  v7 = (*(**a1 + 32))();
  sub_299353188(v6, v7, this);
  sub_299353188(0, 0, this);
  sub_299353188(0, 0, this);
  v8 = 0;
  v9 = 12 * ((*(a1 + 152) - *(a1 + 144)) >> 3);
  *__s = v9;
  if ((v9 & 4) != 0)
  {
    v8 = 0;
    v10 = v9 + 12;
    do
    {
      v11 = v10;
      ++v8;
      v10 += 12;
    }

    while ((v11 & 4) != 0);
  }

  std::string::append(this, __s, 4uLL);
  *v17 = 12 * v8;
  std::string::append(this, v17, 4uLL);
  v12 = *(a1 + 263);
  if ((v12 & 0x8000000000000000) != 0)
  {
    v13 = *(a1 + 240);
    v12 = *(a1 + 248);
  }

  else
  {
    v13 = (a1 + 240);
  }

  std::string::append(this, v13, v12);
  for (; v8; --v8)
  {
    v16 = 0;
    *v15 = 0;
    std::string::append(this, v15, 0xCuLL);
  }

  *v17 = 0;
  std::string::append(this, v17, 4uLL);
  std::string::append(this, v17, 4uLL);
  std::string::append(this, v17, 4uLL);
  std::string::append(this, v17, 4uLL);
  std::string::append(this, v17, 4uLL);
  return std::string::append(this, v17, 4uLL);
}

void sub_299353188(int a1, const std::string::value_type *a2, std::string *this)
{
  *v6 = ((a1 + 7) & 0xFFFFFFF8) - a1;
  *__s = a1;
  std::string::append(this, __s, 4uLL);
  std::string::append(this, v6, 4uLL);
  if (*__s)
  {
    std::string::append(this, a2, *__s);
  }

  if (*v6)
  {
    sub_299354CF8(v5, *v6);
    std::string::append(this, v5[0], *v6);
    if (v5[0])
    {
      v5[1] = v5[0];
      operator delete(v5[0]);
    }
  }
}

void sub_299353230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29935324C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_299353290(void *a1, uint64_t **a2, int a3, void **a4)
{
  v4 = a1;
  v6 = (a1 + 18);
  v5 = a1[18];
  *(a1 + 52) = a3;
  v7 = a2[1] - *a2;
  if (a1[20] - v5 < v7)
  {
    if (!((v7 >> 3) >> 61))
    {
      v8 = a1[19] - v5;
      sub_29920B86C((a1 + 18), v7 >> 3);
    }

    sub_299212A8C();
  }

  v10 = *a2;
  v9 = a2[1];
  if (*a2 != v9)
  {
    v11 = MEMORY[0x29EDC93C0];
    do
    {
      v12 = *v10;
      *__dst = v12;
      if ((*(v12 + 47) & 0x8000000000000000) != 0)
      {
        if (!*(v12 + 32))
        {
LABEL_10:
          v13 = sub_2991C0E9C(v11, "/Library/Caches/com.apple.xbs/Sources/Mecabra/mecabra/Dictionary/MecabraJapaneseDictionaryCompiler.cpp", 102);
          v14 = sub_2991C0E9C(v13, "(", 1);
          v15 = MEMORY[0x29C29BD30](v14, 739);
          v16 = sub_2991C0E9C(v15, ") [", 3);
          v17 = sub_2991C0E9C(v16, "token->reading.size()", 21);
          v18 = sub_2991C0E9C(v17, "] ", 2);
          sub_2991C0E9C(v18, "token reading is empty\n", 23);
          sub_299233ED4();
        }
      }

      else if (!*(v12 + 47))
      {
        goto LABEL_10;
      }

      v19 = *(v12 + 71);
      if (v19 < 0)
      {
        v19 = *(v12 + 56);
      }

      v4 = a1;
      if (!v19)
      {
        v20 = sub_2991C0E9C(v11, "/Library/Caches/com.apple.xbs/Sources/Mecabra/mecabra/Dictionary/MecabraJapaneseDictionaryCompiler.cpp", 102);
        v21 = sub_2991C0E9C(v20, "(", 1);
        v22 = MEMORY[0x29C29BD30](v21, 740);
        v23 = sub_2991C0E9C(v22, ") [", 3);
        v24 = sub_2991C0E9C(v23, "token->surface.size()", 21);
        v25 = sub_2991C0E9C(v24, "] ", 2);
        sub_2991C0E9C(v25, "token surface is empty\n", 23);
        sub_299233ED4();
      }

      sub_29931C308(v6, __dst);
      ++v10;
    }

    while (v10 != v9);
  }

  v26 = v4[18];
  v27 = v4[19];
  if ((v27 - v26) >> 3 < 129)
  {
    v31 = 0;
LABEL_22:
    sub_299354EAC(v26, v27, (v27 - v26) >> 3, 0, v31);
  }

  else
  {
    v28 = MEMORY[0x29EDC9418];
    v29 = (v27 - v26) >> 3;
    while (1)
    {
      v30 = operator new(8 * v29, v28);
      if (v30)
      {
        break;
      }

      v31 = v29 >> 1;
      v32 = v29 > 1;
      v29 >>= 1;
      if (!v32)
      {
        goto LABEL_22;
      }
    }

    v33 = v30;
    sub_299354EAC(v26, v27, (v27 - v26) >> 3, v30, v29);
    operator delete(v33);
  }

  v34 = v4[18];
  if (v4[19] == v34)
  {
    goto LABEL_97;
  }

  v131 = 0u;
  memset(__dst, 0, sizeof(__dst));
  std::string::operator=(__dst, *v34 + 1);
  v35 = v4[18];
  v36 = v4[19];
  if (v35 == v36)
  {
    goto LABEL_79;
  }

  v37 = 0;
LABEL_27:
  v38 = *v35;
  *__p = v38;
  v39 = *(v38 + 12);
  v40 = v4[22];
  if (!*&v40)
  {
    goto LABEL_59;
  }

  v41 = vcnt_s8(v40);
  v41.i16[0] = vaddlv_u8(v41);
  v42 = v41.u32[0];
  if (v41.u32[0] > 1uLL)
  {
    v43 = *(v38 + 12);
    if (*&v40 <= v39)
    {
      v43 = v39 % v40.i32[0];
    }
  }

  else
  {
    v43 = (v40.i32[0] - 1) & v39;
  }

  v44 = *(v4[21] + 8 * v43);
  if (v44)
  {
    v45 = *v44;
    if (v45)
    {
      while (1)
      {
        v46 = v45[1];
        if (v46 == v39)
        {
          if (*(v45 + 4) == v39)
          {
            v52 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/mecabra/Dictionary/MecabraJapaneseDictionaryCompiler.cpp", 102);
            v53 = sub_2991C0E9C(v52, "(", 1);
            v54 = MEMORY[0x29C29BD30](v53, 753);
            v55 = sub_2991C0E9C(v54, ") [", 3);
            v56 = sub_2991C0E9C(v55, "iterator == m_tokenIDToUnigramTokenIndexMap.end()", 49);
            v57 = sub_2991C0E9C(v56, "] ", 2);
            sub_2991C0E9C(v57, "tokenID should be unique.\n", 26);
            sub_299233ED4();
          }
        }

        else
        {
          if (v41.u32[0] > 1uLL)
          {
            if (v46 >= *&v40)
            {
              v46 %= *&v40;
            }
          }

          else
          {
            v46 &= *&v40 - 1;
          }

          if (v46 != v43)
          {
LABEL_43:
            v47 = vcnt_s8(v40);
            v47.i16[0] = vaddlv_u8(v47);
            v42 = v47.u32[0];
            break;
          }
        }

        v45 = *v45;
        if (!v45)
        {
          goto LABEL_43;
        }
      }
    }
  }

  if (v42 > 1)
  {
    v48 = *(v38 + 12);
    if (*&v40 <= v39)
    {
      v48 = v39 % v40.i32[0];
    }
  }

  else
  {
    v48 = (v40.i32[0] - 1) & v39;
  }

  v49 = *(v4[21] + 8 * v48);
  if (!v49 || (v50 = *v49) == 0)
  {
LABEL_59:
    operator new();
  }

  while (1)
  {
    v51 = v50[1];
    if (v51 == v39)
    {
      if (*(v50 + 4) == v39)
      {
        if (__dst[23] >= 0)
        {
          v58 = __dst[23];
        }

        else
        {
          v58 = *&__dst[8];
        }

        v59 = *(v38 + 47);
        v60 = v59;
        if ((v59 & 0x80u) != 0)
        {
          v59 = *(v38 + 32);
        }

        if (v58 != v59 || (__dst[23] >= 0 ? (v61 = __dst) : (v61 = *__dst), v60 >= 0 ? (v62 = (v38 + 24)) : (v62 = *(v38 + 24)), memcmp(v61, v62, v58)))
        {
          sub_299354584(v4 + 5, __dst);
          if ((__dst[23] & 0x80000000) != 0)
          {
            operator delete(*__dst);
          }

          memset(__dst, 0, 24);
          if (*&__dst[24])
          {
            *&v131 = *&__dst[24];
            operator delete(*&__dst[24]);
          }

          *&__dst[24] = 0;
          v131 = 0uLL;
          std::string::operator=(__dst, (v38 + 24));
        }

        sub_29931C308(&__dst[24], __p);
        ++v37;
        if (++v35 == v36)
        {
LABEL_79:
          sub_299354584(v4 + 5, __dst);
          v63 = v4[5];
          v64 = v4[6];
          if (v63 == v64)
          {
            v65 = 0;
          }

          else
          {
            v65 = 0;
            do
            {
              if (*(v63 + 23) < 0)
              {
                sub_2991A110C(__p, *v63, *(v63 + 1));
              }

              else
              {
                v66 = *v63;
                *&__p[16] = *(v63 + 2);
                *__p = v66;
              }

              v127 = 0;
              v128 = 0;
              v129 = 0;
              sub_299354D78(&v127, *(v63 + 3), *(v63 + 4), (*(v63 + 4) - *(v63 + 3)) >> 3);
              v67 = v127;
              v68 = v128;
              if (v127)
              {
                v128 = v127;
                operator delete(v127);
              }

              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }

              v65 += (v68 - v67) >> 3;
              v63 += 3;
            }

            while (v63 != v64);
          }

          if (v65 != (a1[19] - a1[18]) >> 3)
          {
            v69 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/mecabra/Dictionary/MecabraJapaneseDictionaryCompiler.cpp", 102);
            v70 = sub_2991C0E9C(v69, "(", 1);
            v71 = MEMORY[0x29C29BD30](v70, 771);
            v72 = sub_2991C0E9C(v71, ") [", 3);
            v73 = sub_2991C0E9C(v72, "tokenCount == m_sortedUnigramTokenArray.size()", 46);
            v74 = sub_2991C0E9C(v73, "] ", 2);
            sub_2991C0E9C(v74, "m_sortedUnigramTokenArray.size is not equal to the token count in m_unigramReadingAndTokensPairList.\n", 101);
            sub_299233ED4();
          }

          if (*&__dst[24])
          {
            *&v131 = *&__dst[24];
            operator delete(*&__dst[24]);
          }

          v4 = a1;
          if ((__dst[23] & 0x80000000) != 0)
          {
            operator delete(*__dst);
          }

LABEL_97:
          v75 = v4[5];
          v76 = v4[6];
          if (v75 == v76)
          {
            v77 = 0;
          }

          else
          {
            LODWORD(v77) = 0;
            v78 = MEMORY[0x29EDC93C0];
            do
            {
              v79 = (*(v75 + 32) - *(v75 + 24)) >> 3;
              if (v79 >= 0x100)
              {
                v80 = sub_2991C0E9C(v78, "/Library/Caches/com.apple.xbs/Sources/Mecabra/mecabra/Dictionary/MecabraJapaneseDictionaryCompiler.cpp", 102);
                v81 = sub_2991C0E9C(v80, "(", 1);
                v82 = MEMORY[0x29C29BD30](v81, 39);
                v83 = sub_2991C0E9C(v82, ") [", 3);
                v84 = sub_2991C0E9C(v83, "homographCount <= 0xff", 22);
                v85 = sub_2991C0E9C(v84, "] ", 2);
                sub_2991C0E9C(v85, "homographCount is greater than 0xff.\n", 37);
                sub_299233ED4();
              }

              if (BYTE3(v77))
              {
                v86 = sub_2991C0E9C(v78, "/Library/Caches/com.apple.xbs/Sources/Mecabra/mecabra/Dictionary/MecabraJapaneseDictionaryCompiler.cpp", 102);
                v87 = sub_2991C0E9C(v86, "(", 1);
                v88 = MEMORY[0x29C29BD30](v87, 40);
                v89 = sub_2991C0E9C(v88, ") [", 3);
                v90 = sub_2991C0E9C(v89, "tokenIndex <= 0x00ffffff", 24);
                v91 = sub_2991C0E9C(v90, "] ", 2);
                sub_2991C0E9C(v91, "tokenIndex is greater than 0x00ffffff.\n", 39);
                sub_299233ED4();
              }

              sub_2993547FC(v4[1], v75, v79 + (v77 << 8));
              sub_2993547FC(v4[11], v75, 0);
              v77 = v77 + ((*(v75 + 32) - *(v75 + 24)) >> 3);
              v75 += 48;
            }

            while (v75 != v76);
          }

          if (((*(*v4[11] + 16))(v4[11]) & 1) != 0 && (*(*v4[1] + 16))(v4[1]))
          {
            sub_29920D17C(v4 + 12, v77);
            v92 = v4[12];
            v93 = v4[13];
            if (v93 != v92)
            {
              bzero(v92, v93 - v92);
            }

            v94 = v4[5];
            v95 = v4[6];
            if (v94 != v95)
            {
              v96 = 0;
              do
              {
                v97 = (*(*a1[11] + 24))(a1[11], v94);
                v98 = *(v94 + 4) - *(v94 + 3);
                if (v98)
                {
                  v99 = a1[12];
                  v100 = 1;
                  do
                  {
                    *(v99 + 4 * (v96 + v100 - 1)) = v97;
                    v32 = v98 >> 3 > v100++;
                  }

                  while (v32);
                }

                v96 += v98 >> 3;
                v94 += 3;
              }

              while (v94 != v95);
              v94 = a1[5];
              v95 = a1[6];
            }

            for (; v94 != v95; v94 += 3)
            {
              if (*(v94 + 23) < 0)
              {
                sub_2991A110C(__dst, *v94, *(v94 + 1));
              }

              else
              {
                v101 = *v94;
                *&__dst[16] = *(v94 + 2);
                *__dst = v101;
              }

              *&__dst[24] = 0;
              v131 = 0uLL;
              sub_299354D78(&__dst[24], *(v94 + 3), *(v94 + 4), (*(v94 + 4) - *(v94 + 3)) >> 3);
              v102 = *&__dst[24];
              v103 = v131;
              if (*&__dst[24] != v131)
              {
                do
                {
                  if ((*(*v102 + 16) - 1) >= 2)
                  {
                    sub_2993547FC(*a1, (*v102 + 48), 0);
                  }

                  v102 += 8;
                }

                while (v102 != v103);
                v102 = *&__dst[24];
              }

              if (v102)
              {
                *&v131 = v102;
                operator delete(v102);
              }

              if ((__dst[23] & 0x80000000) != 0)
              {
                operator delete(*__dst);
              }
            }

            v4 = a1;
            if ((*(**a1 + 16))())
            {
              v104 = *(a1 + 52);
              if (v104 != 5)
              {
                if (v104)
                {
                  goto LABEL_139;
                }
              }

              v105 = a1[13] - a1[12];
              if (v105)
              {
                if (!((v105 >> 2) >> 61))
                {
                  sub_299354E64(v105 >> 2);
                }

                sub_299212A8C();
              }

              v115 = a1[5];
              v123 = a1[6];
              if (v115 != v123)
              {
                v116 = 0;
                do
                {
                  v117 = *(v115 + 32) - *(v115 + 24);
                  if (v117)
                  {
                    (*(**a1 + 24))(*a1, **(v115 + 24) + 48);
                    sub_299354E64(1uLL);
                  }

                  v116 += v117 >> 3;
                  v115 += 48;
                }

                while (v115 != v123);
              }

              sub_2993557E4(0, 0, 0, 0, 0);
              memset(__dst, 0, 24);
              sub_2992EA3B0(__dst, __p);
              v118 = a1[15];
              if (v118)
              {
                a1[16] = v118;
                operator delete(v118);
                a1[15] = 0;
                a1[16] = 0;
                a1[17] = 0;
              }

              v119 = *__p;
              a1[15] = *__p;
              v120 = *&__p[8];
              *(a1 + 8) = *&__p[8];
              v121 = v120;
              *__p = __dst;
              sub_29920E060(__p);
              v122 = v119 == v121;
              v4 = a1;
              if (!v122)
              {
LABEL_139:
                v111 = *a4;
                v112 = (*(*v4[1] + 32))(v4[1]);
                v113 = (*(*v4[1] + 40))(v4[1]);
                sub_29932265C(0, 0, v112, v113);
                sub_2993860CC(v111, v114);
              }
            }

            v106 = MEMORY[0x29EDC93C0];
            v107 = "Fails to build surface trie";
            v108 = 27;
          }

          else
          {
            v106 = MEMORY[0x29EDC93C0];
            v107 = "Fails to build unigram reading trie";
            v108 = 35;
          }

          v109 = sub_2991C0E9C(v106, v107, v108);
          std::ios_base::getloc((v109 + *(*v109 - 24)));
          v110 = std::locale::use_facet(__dst, MEMORY[0x29EDC93D0]);
          (v110->__vftable[2].~facet_0)(v110, 10);
          std::locale::~locale(__dst);
          std::ostream::put();
          std::ostream::flush();
          goto LABEL_139;
        }

        goto LABEL_27;
      }
    }

    else
    {
      if (v42 > 1)
      {
        if (v51 >= *&v40)
        {
          v51 %= *&v40;
        }
      }

      else
      {
        v51 &= *&v40 - 1;
      }

      if (v51 != v48)
      {
        goto LABEL_59;
      }
    }

    v50 = *v50;
    if (!v50)
    {
      goto LABEL_59;
    }
  }
}

void sub_299354498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, std::locale *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::locale a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  a15 = &a29;
  sub_29920E060(&a15);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_299354584(uint64_t *a1, __int128 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (v7 + 1 > 0x555555555555555)
    {
      sub_299212A8C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v10 = 0x555555555555555;
    }

    else
    {
      v10 = v9;
    }

    v26 = a1;
    if (v10)
    {
      if (v10 <= 0x555555555555555)
      {
        operator new();
      }

      sub_29919600C();
    }

    v13 = 48 * v7;
    v22 = 0;
    v23 = v13;
    v24 = v13;
    v25 = 0;
    if (*(a2 + 23) < 0)
    {
      sub_2991A110C(v13, *a2, *(a2 + 1));
    }

    else
    {
      *v13 = *a2;
      *(v13 + 16) = *(a2 + 2);
    }

    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0;
    sub_299354D78(v13 + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
    v14 = v24;
    v15 = *a1;
    v16 = a1[1];
    v17 = v23 + *a1 - v16;
    if (v16 != *a1)
    {
      v18 = *a1;
      v19 = v23 + *a1 - v16;
      do
      {
        v20 = *v18;
        *(v19 + 16) = *(v18 + 16);
        *v19 = v20;
        *(v18 + 8) = 0;
        *(v18 + 16) = 0;
        *v18 = 0;
        *(v19 + 24) = 0;
        *(v19 + 32) = 0;
        *(v19 + 40) = 0;
        *(v19 + 24) = *(v18 + 24);
        *(v19 + 40) = *(v18 + 40);
        *(v18 + 24) = 0;
        *(v18 + 32) = 0;
        *(v18 + 40) = 0;
        v18 += 48;
        v19 += 48;
      }

      while (v18 != v16);
      do
      {
        sub_299354CA0(v15);
        v15 += 48;
      }

      while (v15 != v16);
      v15 = *a1;
    }

    v12 = v14 + 48;
    *a1 = v17;
    a1[1] = v12;
    v21 = a1[2];
    a1[2] = v25;
    v24 = v15;
    v25 = v21;
    v22 = v15;
    v23 = v15;
    result = sub_299354E14(&v22);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_2991A110C(a1[1], *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      *(v5 + 16) = *(a2 + 2);
      *v5 = v6;
    }

    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    result = sub_299354D78(v5 + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
    v12 = v5 + 48;
    a1[1] = v12;
  }

  a1[1] = v12;
  return result;
}

void sub_2993547AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299354E14(va);
  _Unwind_Resume(a1);
}

void sub_2993547FC(void *a1, __int128 *a2, int a3)
{
  sub_29924BA6C(a1 + 1, a2);
  v6 = a1[5];
  v5 = a1[6];
  if (v6 >= v5)
  {
    v8 = a1[4];
    v9 = v6 - v8;
    v10 = (v6 - v8) >> 2;
    v11 = v10 + 1;
    if ((v10 + 1) >> 62)
    {
      sub_299212A8C();
    }

    v12 = v5 - v8;
    if (v12 >> 1 > v11)
    {
      v11 = v12 >> 1;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFFCLL;
    v14 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    if (v14)
    {
      sub_2992F86B0((a1 + 4), v14);
    }

    v15 = (v6 - v8) >> 2;
    v16 = (4 * v10);
    v17 = (4 * v10 - 4 * v15);
    *v16 = a3;
    v7 = v16 + 1;
    memcpy(v17, v8, v9);
    v18 = a1[4];
    a1[4] = v17;
    a1[5] = v7;
    a1[6] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v6 = a3;
    v7 = v6 + 4;
  }

  a1[5] = v7;
}

uint64_t sub_2993548E4(uint64_t a1)
{
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = &unk_2A1F67D68;
  sub_29918D970((a1 + 56));
  sub_29919C3A8((a1 + 104));
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_299354948(_Unwind_Exception *a1)
{
  sub_29918D980(v1 + 56);
  sub_299249384(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29935496C(uint64_t a1)
{
  *a1 = &unk_2A1F737C0;
  sub_299354B0C((a1 + 56), 0);

  return sub_299249384(a1);
}

void sub_2993549C4(uint64_t a1)
{
  *a1 = &unk_2A1F737C0;
  sub_299354B0C((a1 + 56), 0);
  sub_299249384(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299354ABC(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 && (v2 = *v1) != 0)
  {
    return *(v2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299354ADC(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 && (v2 = *v1) != 0)
  {
    return (v2[4] - v2[2] + v2[6]);
  }

  else
  {
    return 0;
  }
}

void ****sub_299354B0C(void ****result, void ***a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*v2)
    {
      sub_2993226F0(*v2);
    }

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

void sub_299354B70(void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v7 = v4 - 6;
        if (*(v4 - 25) < 0)
        {
          operator delete(*v7);
        }

        v4 -= 6;
      }

      while (v7 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_299354C1C(void ***a1)
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
        v4 -= 48;
        sub_299354CA0(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_299354CA0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void *sub_299354CF8(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_29923F4C4(result, a2);
  }

  return result;
}

void sub_299354D5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299354D78(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      sub_29920B86C(result, a4);
    }

    sub_299212A8C();
  }

  return result;
}

void sub_299354DF8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299354E14(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_299354CA0(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_299354E64(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_299354EAC(uint64_t result, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    v6 = result;
    if (a3 == 2)
    {
      result = sub_29920B9DC((*(a2 - 1) + 24), (*result + 24));
      if ((result & 0x80) != 0)
      {
        v7 = *v6;
        *v6 = *(a2 - 1);
        *(a2 - 1) = v7;
      }
    }

    else if (a3 > 128)
    {
      v17 = a4;
      v18 = a3 >> 1;
      v19 = (result + 8 * (a3 >> 1));
      v20 = a3 >> 1;
      if (a3 <= a5)
      {
        sub_2993550E4(result, v19, v20, a4);
        v21 = (v17 + 8 * v18);
        result = sub_2993550E4(&v6[a3 >> 1], a2, a3 - (a3 >> 1), v21);
        v22 = v17 + 8 * a3;
        v23 = v21;
        while (v23 != v22)
        {
          result = sub_29920B9DC((*v23 + 24), (*v17 + 24));
          if ((result & 0x80u) == 0)
          {
            v24 = v17;
          }

          else
          {
            v24 = v23;
          }

          v17 += 8 * ((result & 0x80) == 0);
          v23 = (v23 + ((result >> 4) & 8));
          *v6++ = *v24;
          if (v17 == v21)
          {
            while (v23 != v22)
            {
              v26 = *v23++;
              *v6++ = v26;
            }

            return result;
          }
        }

        while (v17 != v21)
        {
          v25 = *v17;
          v17 += 8;
          *v6++ = v25;
        }
      }

      else
      {
        sub_299354EAC(result, v19, v20, a4, a5);
        sub_299354EAC(&v6[a3 >> 1], a2, a3 - (a3 >> 1), v17, a5);

        return sub_2993552D8(v6, &v6[a3 >> 1], a2, a3 >> 1, a3 - (a3 >> 1), v17, a5);
      }
    }

    else if (result != a2)
    {
      v9 = (result + 8);
      if ((result + 8) != a2)
      {
        v10 = 0;
        v11 = result;
        do
        {
          v12 = *v11;
          v11 = v9;
          result = sub_29920B9DC((*v9 + 24), (v12 + 24));
          if ((result & 0x80) != 0)
          {
            v13 = *v11;
            v14 = v10;
            while (1)
            {
              *(v6 + v14 + 8) = *(v6 + v14);
              if (!v14)
              {
                break;
              }

              result = sub_29920B9DC((v13 + 24), (*(v6 + v14 - 8) + 24));
              v14 -= 8;
              if ((result & 0x80) == 0)
              {
                v15 = (v6 + v14 + 8);
                goto LABEL_15;
              }
            }

            v15 = v6;
LABEL_15:
            *v15 = v13;
          }

          v9 = v11 + 1;
          v10 += 8;
        }

        while (v11 + 1 != a2);
      }
    }
  }

  return result;
}