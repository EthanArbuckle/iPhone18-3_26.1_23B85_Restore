void sub_2714C41F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C4224(uint64_t a1)
{
  v2 = 0;
  v3[0] = v1;
  v3[1] = a1;
  v3[2] = v1;
  v3[3] = a1;
  v3[4] = a1;
  v4 = v3;
  sub_2711FE8BC(&v4);
  sub_2714C602C();
}

void sub_2714C4388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C439C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C43B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C43C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C43D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C4510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C453C(uint64_t a1)
{
  v2 = 0;
  v3[0] = v1;
  v3[1] = a1;
  v3[2] = v1;
  v3[3] = a1;
  v3[4] = a1;
  v4 = v3;
  sub_2711FE8BC(&v4);
  sub_2714C602C();
}

void sub_2714C46A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C46B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C46C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C46DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C46F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C4708(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2714C4750(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2714C499C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C49E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = *a3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v8 = *(a3 + 8);
  if (v3)
  {
    memmove(&__dst, v5, v3);
  }

  *(&__dst + v3) = 0;
  v9[0] = a2;
  v9[1] = &__dst;
  v9[2] = a2;
  v9[3] = &__dst;
  v9[4] = &__dst;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_2711308D4();
  }

  v10 = v9;
  (off_288132260[v6])(&v10, a2);
  if (v8 < 0)
  {
    operator delete(__dst);
  }
}

void sub_2714C4B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_2714C4B1C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288132230[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_2714C4C10(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_288132230[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_2711309E8(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_2714C4DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C4E2C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_271135560();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_2714C506C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_2714C5098(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2714C53A4(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

void sub_2714C5198(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_288132230[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_2714C5358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2714C53A4(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_2714C5540(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

size_t sub_2714C5554(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288132230[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_2714C5648(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_288132230[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_2711309E8(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_2714C580C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C5864(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_271135560();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_2714C5AA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

size_t sub_2714C5AC0(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288132230[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_2714C5BB4(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_288132230[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_2711309E8(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_2714C5D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C5DD0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_271135560();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_2714C6010(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_2714C625C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_2714C62A0(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288132230[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_2714C6394(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_288132230[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_2711309E8(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_2714C6558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C65B0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_271135560();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_2714C67F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

size_t sub_2714C680C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288132230[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_2714C6900(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_288132230[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_2711309E8(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_2714C6AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C6B1C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_271135560();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_2714C6D5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void *sub_2714C6D78(void *a1, uint64_t a2)
{
  v152 = *MEMORY[0x277D85DE8];
  v92[0] = xmmword_271892FB8;
  v92[1] = unk_271892FC8;
  v92[2] = xmmword_271892FD8;
  v92[3] = unk_271892FE8;
  v93 = 2;
  v91[7] = *&off_279E2F758;
  v91[8] = xmmword_279E2F768;
  v91[2] = xmmword_279E2F708;
  v91[3] = *&off_279E2F718;
  v91[5] = *&off_279E2F738;
  v91[6] = xmmword_279E2F748;
  v91[4] = xmmword_279E2F728;
  v91[0] = xmmword_279E2F6E8;
  v91[1] = *&off_279E2F6F8;
  v4 = v92;
  *&v96 = v92;
  *(&v96 + 1) = v91;
  v5 = &v98;
  v97[0] = &unk_2881086A8;
  v97[1] = a2;
  v98 = v97;
  *&v99 = &v94;
  v6 = v91;
  *(&v99 + 1) = v92;
  do
  {
    *&v112 = v4;
    *(&v112 + 1) = v6;
    if (!v98)
    {
      sub_27112AFFC();
    }

    if ((*(*v98 + 48))(v98, &v112))
    {
      break;
    }

    v4 = (v96 + 8);
    v6 = (*(&v96 + 1) + 16);
    *&v96 = v4;
    *(&v96 + 1) += 16;
  }

  while (v4 != v99 || v6 != *(&v99 + 1));
  *&v148 = &v94;
  *(&v148 + 1) = v92;
  v8 = &unk_2881086A8;
  v149[0] = &unk_2881086A8;
  v149[1] = a2;
  v150 = v149;
  *&v151 = &v94;
  *(&v151 + 1) = v92;
  v112 = v96;
  if (!v98)
  {
    v5 = &v114;
    goto LABEL_13;
  }

  if (v98 != v97)
  {
    v114 = v98;
LABEL_13:
    *v5 = 0;
    v115 = v99;
    *v116 = v148;
    v9 = v149;
    goto LABEL_14;
  }

  v114 = v113;
  (*(*v98 + 24))();
  v9 = v150;
  v115 = v99;
  *v116 = v148;
  if (v150)
  {
    if (v150 == v149)
    {
      v8 = *v150;
LABEL_14:
      v118 = &v116[16];
      v8[3](v9);
      v119[0] = v151;
      v10 = v150;
      if (v150 != v149)
      {
        goto LABEL_15;
      }

LABEL_27:
      (*(*v10 + 32))(v10);
      v11 = v98;
      if (v98 != v97)
      {
        goto LABEL_18;
      }

      goto LABEL_28;
    }

    v118 = v150;
    v150 = 0;
    v119[0] = v151;
    v10 = 0;
    if (!v149)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v118 = 0;
    v119[0] = v151;
    v10 = 0;
    if (!v149)
    {
      goto LABEL_27;
    }
  }

LABEL_15:
  if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  v11 = v98;
  if (v98 != v97)
  {
LABEL_18:
    if (v11)
    {
      (*(*v11 + 40))(v11);
    }

    v104 = v112;
    v12 = &v104;
    v13 = v114;
    if (!v114)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

LABEL_28:
  (*(*v11 + 32))(v11);
  v104 = v112;
  v12 = &v104;
  v13 = v114;
  if (!v114)
  {
    goto LABEL_31;
  }

LABEL_29:
  if (v13 == v113)
  {
    v106 = v105;
    (*(*v13 + 24))(v13, v105);
    v107 = v115;
    v108 = *v116;
    v14 = v118;
    if (!v118)
    {
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  v12 = &v112;
  v106 = v13;
LABEL_31:
  *(v12 + 5) = 0;
  v107 = v115;
  v108 = *v116;
  v14 = v118;
  if (!v118)
  {
LABEL_32:
    v15 = &v110;
LABEL_36:
    *v15 = 0;
    goto LABEL_38;
  }

LABEL_34:
  if (v14 != &v116[16])
  {
    v15 = &v118;
    v110 = v14;
    goto LABEL_36;
  }

  v110 = v109;
  (*(*v14 + 24))(v14, v109);
LABEL_38:
  v111 = v119[0];
  if (v118 == &v116[16])
  {
    (*(*v118 + 32))(v118);
    v16 = v114;
    if (v114 != v113)
    {
      goto LABEL_42;
    }

LABEL_48:
    (*(*v16 + 32))(v16);
    v132 = v104;
    v17 = v106;
    if (v106)
    {
      goto LABEL_45;
    }

LABEL_49:
    v134 = 0;
    v135 = v107;
    v140 = v104;
LABEL_54:
    v142 = v17;
    goto LABEL_55;
  }

  if (v118)
  {
    (*(*v118 + 40))();
  }

  v16 = v114;
  if (v114 == v113)
  {
    goto LABEL_48;
  }

LABEL_42:
  if (v16)
  {
    (*(*v16 + 40))(v16);
  }

  v132 = v104;
  v17 = v106;
  if (!v106)
  {
    goto LABEL_49;
  }

LABEL_45:
  if (v17 == v105)
  {
    v134 = v133;
    (*(*v17 + 24))(v17, v133);
    v17 = v134;
  }

  else
  {
    v17 = (*(*v17 + 16))(v17);
    v134 = v17;
  }

  v135 = v107;
  v140 = v132;
  if (!v17)
  {
    goto LABEL_54;
  }

  if (v17 != v133)
  {
    v17 = (*(*v17 + 16))(v17);
    goto LABEL_54;
  }

  v142 = v141;
  (*(*v17 + 24))(v17, v141);
LABEL_55:
  v143 = v135;
  v128 = v108;
  v18 = v110;
  if (!v110)
  {
    v130 = 0;
    v131 = v111;
    v136 = v108;
LABEL_63:
    v138 = v18;
    goto LABEL_64;
  }

  if (v110 == v109)
  {
    v130 = v129;
    (*(*v110 + 24))();
    v18 = v130;
  }

  else
  {
    v18 = (*(*v110 + 16))();
    v130 = v18;
  }

  v131 = v111;
  v136 = v128;
  if (!v18)
  {
    goto LABEL_63;
  }

  if (v18 != v129)
  {
    v18 = (*(*v18 + 16))(v18);
    goto LABEL_63;
  }

  v138 = v137;
  (*(*v18 + 24))(v18, v137);
LABEL_64:
  v139 = v131;
  v148 = v140;
  v19 = &v148;
  if (!v142)
  {
LABEL_67:
    *(v19 + 5) = 0;
    goto LABEL_69;
  }

  if (v142 != v141)
  {
    v19 = &v140;
    v150 = v142;
    goto LABEL_67;
  }

  v150 = v149;
  (*(*v142 + 24))();
LABEL_69:
  v151 = v143;
  v144 = v136;
  v20 = &v144;
  if (!v138)
  {
LABEL_72:
    *(v20 + 5) = 0;
    goto LABEL_74;
  }

  if (v138 != v137)
  {
    v20 = &v136;
    v146 = v138;
    goto LABEL_72;
  }

  v146 = v145;
  (*(*v138 + 24))();
LABEL_74:
  v147 = v139;
  v112 = v148;
  v21 = &v112;
  if (!v150)
  {
LABEL_77:
    *(v21 + 5) = 0;
    goto LABEL_79;
  }

  if (v150 != v149)
  {
    v21 = &v148;
    v114 = v150;
    goto LABEL_77;
  }

  v114 = v113;
  (*(*v150 + 24))(v150, v113);
LABEL_79:
  v115 = v151;
  *&v116[8] = v144;
  if (v146)
  {
    if (v146 == v145)
    {
      *&v119[0] = v117;
      (*(*v146 + 24))(v146, v117);
    }

    else
    {
      *&v119[0] = v146;
      v146 = 0;
    }
  }

  else
  {
    *&v119[0] = 0;
  }

  *(v119 + 8) = v147;
  if (v146 == v145)
  {
    (*(*v146 + 32))(v146);
    v22 = v150;
    if (v150 != v149)
    {
      goto LABEL_88;
    }

LABEL_106:
    (*(*v22 + 32))(v22);
    v23 = v138;
    if (v138 != v137)
    {
      goto LABEL_91;
    }

LABEL_107:
    (*(*v23 + 32))(v23);
    v24 = v130;
    if (v130 != v129)
    {
      goto LABEL_94;
    }

LABEL_108:
    (*(*v24 + 32))(v24);
    v25 = v142;
    if (v142 != v141)
    {
      goto LABEL_97;
    }

LABEL_109:
    (*(*v25 + 32))(v25);
    v26 = v134;
    if (v134 != v133)
    {
      goto LABEL_100;
    }

    goto LABEL_110;
  }

  if (v146)
  {
    (*(*v146 + 40))(v146);
  }

  v22 = v150;
  if (v150 == v149)
  {
    goto LABEL_106;
  }

LABEL_88:
  if (v22)
  {
    (*(*v22 + 40))(v22);
  }

  v23 = v138;
  if (v138 == v137)
  {
    goto LABEL_107;
  }

LABEL_91:
  if (v23)
  {
    (*(*v23 + 40))(v23);
  }

  v24 = v130;
  if (v130 == v129)
  {
    goto LABEL_108;
  }

LABEL_94:
  if (v24)
  {
    (*(*v24 + 40))(v24);
  }

  v25 = v142;
  if (v142 == v141)
  {
    goto LABEL_109;
  }

LABEL_97:
  if (v25)
  {
    (*(*v25 + 40))(v25);
  }

  v26 = v134;
  if (v134 != v133)
  {
LABEL_100:
    if (v26)
    {
      (*(*v26 + 40))(v26);
    }

    v96 = v112;
    v27 = v114;
    if (v114)
    {
      goto LABEL_103;
    }

    goto LABEL_111;
  }

LABEL_110:
  (*(*v26 + 32))(v26);
  v96 = v112;
  v27 = v114;
  if (v114)
  {
LABEL_103:
    if (v27 == v113)
    {
      v98 = v97;
      (*(*v27 + 24))(v27, v97);
    }

    else
    {
      v98 = v27;
      v114 = 0;
    }

    goto LABEL_113;
  }

LABEL_111:
  v98 = 0;
LABEL_113:
  v99 = v115;
  v100 = *&v116[8];
  if (*&v119[0])
  {
    if (*&v119[0] == v117)
    {
      v102 = v101;
      (*(**&v119[0] + 24))();
    }

    else
    {
      v102 = *&v119[0];
      *&v119[0] = 0;
    }
  }

  else
  {
    v102 = 0;
  }

  v103 = *(v119 + 8);
  if (*&v119[0] == v117)
  {
    (*(**&v119[0] + 32))(*&v119[0]);
    v28 = v114;
    if (v114 != v113)
    {
      goto LABEL_122;
    }
  }

  else
  {
    if (*&v119[0])
    {
      (*(**&v119[0] + 40))();
    }

    v28 = v114;
    if (v114 != v113)
    {
LABEL_122:
      if (v28)
      {
        (*(*v28 + 40))(v28);
      }

      v124 = v96;
      v29 = v98;
      if (!v98)
      {
        goto LABEL_130;
      }

      goto LABEL_128;
    }
  }

  (*(*v28 + 32))(v28);
  v124 = v96;
  v29 = v98;
  if (!v98)
  {
LABEL_130:
    v126 = v29;
    goto LABEL_132;
  }

LABEL_128:
  if (v29 != v97)
  {
    v29 = (*(*v29 + 16))(v29);
    goto LABEL_130;
  }

  v126 = v125;
  (*(*v29 + 24))(v29, v125);
LABEL_132:
  v127 = v99;
  v120 = v100;
  v30 = v102;
  if (!v102)
  {
LABEL_135:
    v122 = v30;
    goto LABEL_137;
  }

  if (v102 != v101)
  {
    v30 = (*(*v102 + 16))();
    goto LABEL_135;
  }

  v122 = v121;
  (*(*v102 + 24))();
LABEL_137:
  v123 = v103;
  v144 = v124;
  v31 = v126;
  if (!v126)
  {
LABEL_140:
    v146 = v31;
    goto LABEL_142;
  }

  if (v126 != v125)
  {
    v31 = (*(*v126 + 16))();
    goto LABEL_140;
  }

  v146 = v145;
  (*(*v126 + 24))();
LABEL_142:
  v147 = v127;
  v140 = v120;
  v32 = v122;
  if (!v122)
  {
LABEL_145:
    v142 = v32;
    goto LABEL_147;
  }

  if (v122 != v121)
  {
    v32 = (*(*v122 + 16))();
    goto LABEL_145;
  }

  v142 = v141;
  (*(*v122 + 24))();
LABEL_147:
  v143 = v123;
  v112 = v144;
  v33 = v146;
  if (!v146)
  {
LABEL_150:
    v114 = v33;
    goto LABEL_152;
  }

  if (v146 != v145)
  {
    v33 = (*(*v146 + 16))(v146);
    goto LABEL_150;
  }

  v114 = v113;
  (*(*v146 + 24))(v146, v113);
LABEL_152:
  v115 = v147;
  v148 = v140;
  v34 = v142;
  if (!v142)
  {
LABEL_155:
    v150 = v34;
    goto LABEL_157;
  }

  if (v142 != v141)
  {
    v34 = (*(*v142 + 16))();
    goto LABEL_155;
  }

  v150 = v149;
  (*(*v142 + 24))();
LABEL_157:
  v151 = v143;
  v36 = *(&v112 + 1);
  v35 = v112;
  if (v112 == v148)
  {
    v37 = 0;
  }

  else
  {
    v37 = 0;
    do
    {
      v35 += 8;
      v36 += 16;
      *&v112 = v35;
      *(&v112 + 1) = v36;
      if (v35 != v115 || v36 != *(&v115 + 1))
      {
        while (1)
        {
          *&v136 = v35;
          *(&v136 + 1) = v36;
          if (!v114)
          {
            sub_27112AFFC();
          }

          v43 = (*(*v114 + 48))(v114, &v136);
          v35 = v112;
          if (v43)
          {
            break;
          }

          v35 = v112 + 8;
          v36 = *(&v112 + 1) + 16;
          *&v112 = v35;
          *(&v112 + 1) += 16;
          if (v35 == v115 && v36 == *(&v115 + 1))
          {
            goto LABEL_173;
          }
        }

        v36 = *(&v112 + 1);
      }

LABEL_173:
      ++v37;
    }

    while (v35 != v148 || v36 != *(&v148 + 1));
  }

  if (v150 == v149)
  {
    (*(*v150 + 32))(v150);
    v38 = v114;
    if (v114 != v113)
    {
      goto LABEL_163;
    }

LABEL_190:
    (*(*v38 + 32))(v38);
    v39 = v142;
    if (v142 != v141)
    {
      goto LABEL_166;
    }

    goto LABEL_191;
  }

  if (v150)
  {
    (*(*v150 + 40))(v150);
  }

  v38 = v114;
  if (v114 == v113)
  {
    goto LABEL_190;
  }

LABEL_163:
  if (v38)
  {
    (*(*v38 + 40))(v38);
  }

  v39 = v142;
  if (v142 != v141)
  {
LABEL_166:
    if (v39)
    {
      (*(*v39 + 40))(v39);
    }

    v40 = v146;
    if (v146 != v145)
    {
      goto LABEL_169;
    }

LABEL_192:
    (*(*v40 + 32))(v40);
    goto LABEL_193;
  }

LABEL_191:
  (*(*v39 + 32))(v39);
  v40 = v146;
  if (v146 == v145)
  {
    goto LABEL_192;
  }

LABEL_169:
  if (v40)
  {
    (*(*v40 + 40))(v40);
  }

LABEL_193:
  if (v37 <= 1)
  {
    v45 = 1;
  }

  else
  {
    v45 = v37;
  }

  v112 = v124;
  v46 = v126;
  if (!v126)
  {
    goto LABEL_199;
  }

  if (v126 != v125)
  {
    v46 = (*(*v126 + 16))();
LABEL_199:
    v114 = v46;
    goto LABEL_201;
  }

  v114 = v113;
  (*(*v126 + 24))();
LABEL_201:
  v115 = v127;
  v148 = v120;
  v47 = v122;
  if (!v122)
  {
LABEL_204:
    v150 = v47;
    goto LABEL_206;
  }

  if (v122 != v121)
  {
    v47 = (*(*v122 + 16))();
    goto LABEL_204;
  }

  v150 = v149;
  (*(*v122 + 24))();
LABEL_206:
  v151 = v123;
  v49 = *(&v112 + 1);
  v48 = v112;
  if (v112 == v148)
  {
    v50 = 0;
  }

  else
  {
    v50 = 0;
    do
    {
      v55 = *(v49 + 8);
      v48 += 8;
      v49 += 16;
      *&v112 = v48;
      *(&v112 + 1) = v49;
      if (v48 != v115 || v49 != *(&v115 + 1))
      {
        while (1)
        {
          *&v136 = v48;
          *(&v136 + 1) = v49;
          if (!v114)
          {
            sub_27112AFFC();
          }

          v57 = (*(*v114 + 48))(v114, &v136);
          v48 = v112;
          if (v57)
          {
            break;
          }

          v48 = v112 + 8;
          v49 = *(&v112 + 1) + 16;
          *&v112 = v48;
          *(&v112 + 1) += 16;
          if (v48 == v115 && v49 == *(&v115 + 1))
          {
            goto LABEL_216;
          }
        }

        v49 = *(&v112 + 1);
      }

LABEL_216:
      v50 += v55;
    }

    while (v48 != v148 || v49 != *(&v148 + 1));
  }

  v51 = 3 * v45 - 3;
  if (v150 != v149)
  {
    if (v150)
    {
      (*(*v150 + 40))(v150);
    }

    v52 = v51 + v50;
    v53 = v114;
    if (v114 != v113)
    {
      goto LABEL_212;
    }

LABEL_233:
    (*(*v53 + 32))(v53);
    goto LABEL_234;
  }

  (*(*v150 + 32))(v150);
  v52 = v51 + v50;
  v53 = v114;
  if (v114 == v113)
  {
    goto LABEL_233;
  }

LABEL_212:
  if (v53)
  {
    (*(*v53 + 40))(v53);
  }

LABEL_234:
  memset(&__dst, 0, sizeof(__dst));
  if (v52 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v52 >= 0x17)
  {
    if ((v52 | 7) == 0x17)
    {
      v59 = 24;
    }

    else
    {
      v59 = v52 | 7;
    }

    sub_27113107C(&__dst, v59);
  }

  v136 = v124;
  v60 = v126;
  if (v126)
  {
    if (v126 == v125)
    {
      v138 = v137;
      (*(*v126 + 24))();
      goto LABEL_245;
    }

    v60 = (*(*v126 + 16))();
  }

  v138 = v60;
LABEL_245:
  v139 = v127;
  if (v37 < 1)
  {
    goto LABEL_274;
  }

  std::string::append(&__dst, **(&v136 + 1), *(*(&v136 + 1) + 8));
  if (v37 == 1)
  {
    goto LABEL_274;
  }

  *&v136 = v136 + 8;
  v61 = v136;
  *(&v136 + 1) += 16;
  v62 = *(&v136 + 1);
  if (v136 != v139)
  {
    do
    {
      *&v132 = v61;
      *(&v132 + 1) = v62;
      if (!v138)
      {
        sub_27112AFFC();
      }

      if ((*(*v138 + 48))(v138, &v132))
      {
        break;
      }

      v61 = v136 + 8;
      v62 = *(&v136 + 1) + 16;
      *&v136 = v61;
      *(&v136 + 1) += 16;
    }

    while (v61 != v139 || v62 != *(&v139 + 1));
  }

  v132 = v136;
  v64 = v138;
  if (!v138)
  {
    goto LABEL_258;
  }

  if (v138 != v137)
  {
    v64 = (*(*v138 + 16))();
LABEL_258:
    v134 = v64;
    goto LABEL_262;
  }

  v134 = v133;
  (*(*v138 + 24))();
LABEL_262:
  v135 = v139;
  v128 = v120;
  v65 = v122;
  if (!v122)
  {
LABEL_265:
    v130 = v65;
    goto LABEL_267;
  }

  if (v122 != v121)
  {
    v65 = (*(*v122 + 16))();
    goto LABEL_265;
  }

  v130 = v129;
  (*(*v122 + 24))();
LABEL_267:
  v131 = v123;
  if (v132 != v128)
  {
    do
    {
      size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        size = __dst.__r_.__value_.__l.__size_;
        v74 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v74 - __dst.__r_.__value_.__l.__size_ < 3)
        {
          if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 3 - v74)
          {
            sub_271120DA8();
          }

LABEL_293:
          operator new();
        }

        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      else
      {
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) - 20) < 3)
        {
          goto LABEL_293;
        }

        p_dst = &__dst;
      }

      v76 = p_dst + size;
      v76[2] = 32;
      *v76 = 31776;
      v77 = size + 3;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        __dst.__r_.__value_.__l.__size_ = size + 3;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = v77 & 0x7F;
      }

      p_dst->__r_.__value_.__s.__data_[v77] = 0;
      std::string::append(&__dst, **(&v132 + 1), *(*(&v132 + 1) + 8));
      *&v132 = v132 + 8;
      v78 = v132;
      *(&v132 + 1) += 16;
      v71 = *(&v132 + 1);
      if (v132 != v135)
      {
        while (1)
        {
          v95[0] = v78;
          v95[1] = v71;
          if (!v134)
          {
            sub_27112AFFC();
          }

          v79 = (*(*v134 + 48))(v134, v95);
          v78 = v132;
          if (v79)
          {
            break;
          }

          v78 = v132 + 8;
          v71 = *(&v132 + 1) + 16;
          *&v132 = v78;
          *(&v132 + 1) += 16;
          if (v78 == v135 && v71 == *(&v135 + 1))
          {
            goto LABEL_284;
          }
        }

        v71 = *(&v132 + 1);
      }

LABEL_284:
      ;
    }

    while (v78 != v128 || v71 != *(&v128 + 1));
  }

  if (v130 == v129)
  {
    (*(*v130 + 32))(v130);
    v66 = v134;
    if (v134 != v133)
    {
LABEL_272:
      if (v66)
      {
        (*(*v66 + 40))(v66);
      }

LABEL_274:
      v67 = v138;
      if (v138 != v137)
      {
        goto LABEL_275;
      }

LABEL_310:
      (*(*v67 + 32))(v67);
      v68 = v122;
      if (v122 != v121)
      {
        goto LABEL_278;
      }

      goto LABEL_311;
    }
  }

  else
  {
    if (v130)
    {
      (*(*v130 + 40))();
    }

    v66 = v134;
    if (v134 != v133)
    {
      goto LABEL_272;
    }
  }

  (*(*v66 + 32))(v66);
  v67 = v138;
  if (v138 == v137)
  {
    goto LABEL_310;
  }

LABEL_275:
  if (v67)
  {
    (*(*v67 + 40))(v67);
  }

  v68 = v122;
  if (v122 != v121)
  {
LABEL_278:
    v69 = a1;
    if (v68)
    {
      (*(*v68 + 40))(v68);
    }

    v70 = v126;
    if (v126 != v125)
    {
      goto LABEL_281;
    }

LABEL_312:
    (*(*v70 + 32))(v70);
    goto LABEL_313;
  }

LABEL_311:
  (*(*v68 + 32))(v68);
  v69 = a1;
  v70 = v126;
  if (v126 == v125)
  {
    goto LABEL_312;
  }

LABEL_281:
  if (v70)
  {
    (*(*v70 + 40))(v70);
  }

LABEL_313:
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v81 = &__dst;
  }

  else
  {
    v81 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v82 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v82 = __dst.__r_.__value_.__l.__size_;
  }

  v83 = sub_271120E64(v69, v81, v82);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v84 = v102;
    if (v102 != v101)
    {
      goto LABEL_321;
    }

LABEL_333:
    (*(*v84 + 32))(v84);
    v85 = v98;
    if (v98 != v97)
    {
      goto LABEL_324;
    }

LABEL_334:
    (*(*v85 + 32))(v85);
    v86 = v110;
    if (v110 != v109)
    {
      goto LABEL_327;
    }

    goto LABEL_335;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  v84 = v102;
  if (v102 == v101)
  {
    goto LABEL_333;
  }

LABEL_321:
  if (v84)
  {
    (*(*v84 + 40))(v84);
  }

  v85 = v98;
  if (v98 == v97)
  {
    goto LABEL_334;
  }

LABEL_324:
  if (v85)
  {
    (*(*v85 + 40))(v85);
  }

  v86 = v110;
  if (v110 != v109)
  {
LABEL_327:
    if (v86)
    {
      (*(*v86 + 40))(v86);
    }

    v87 = v106;
    if (v106 != v105)
    {
      goto LABEL_330;
    }

LABEL_336:
    (*(*v87 + 32))(v87);
    goto LABEL_337;
  }

LABEL_335:
  (*(*v86 + 32))(v86);
  v87 = v106;
  if (v106 == v105)
  {
    goto LABEL_336;
  }

LABEL_330:
  if (v87)
  {
    (*(*v87 + 40))(v87);
  }

LABEL_337:
  v88 = *MEMORY[0x277D85DE8];
  return v83;
}

void sub_2714C8BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_2714D4180(&STACK[0x3D0]);
  sub_2714D4180(&STACK[0x420]);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_2714D4180(&STACK[0x2E0]);
  sub_2714D4180(&STACK[0x330]);
  sub_2714C8DA4(&a52);
  sub_2714C8EA0(&a70);
  _Unwind_Resume(a1);
}

uint64_t sub_2714C8DA4(uint64_t a1)
{
  v2 = a1 + 88;
  v3 = *(a1 + 112);
  if (v3 != v2)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 40);
    if (v4 != a1 + 16)
    {
      goto LABEL_5;
    }

LABEL_9:
    (*(*v4 + 32))(v4);
    return a1;
  }

  (*(*v3 + 32))(v3);
  v4 = *(a1 + 40);
  if (v4 == a1 + 16)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  return a1;
}

uint64_t sub_2714C8EA0(uint64_t a1)
{
  v2 = a1 + 80;
  v3 = *(a1 + 104);
  if (v3 != v2)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 40);
    if (v4 != a1 + 16)
    {
      goto LABEL_5;
    }

LABEL_9:
    (*(*v4 + 32))(v4);
    return a1;
  }

  (*(*v3 + 32))(v3);
  v4 = *(a1 + 40);
  if (v4 == a1 + 16)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  return a1;
}

void *sub_2714C8F9C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 8);
    *(v1 + 8) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
      v4 = *(v1 + 8);
      *(v1 + 8) = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }
    }

    MEMORY[0x2743BF050](v1, 0xA1C40BD48D6D6);
    return v2;
  }

  return result;
}

uint64_t sub_2714C9044(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    (*(**(*(a1 + 288) + 8) + 24))(*(*(a1 + 288) + 8));
  }

  if (*(a1 + 456) == 1)
  {
    sub_2714D8B28(a1 + 416, 0, 0);
  }

  v2 = *(a1 + 288);
  *(a1 + 288) = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
      v4 = *(v2 + 8);
      *(v2 + 8) = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }
    }

    MEMORY[0x2743BF050](v2, 0xA1C40BD48D6D6);
  }

  sub_2714D53D8(a1 + 416);
  std::mutex::~mutex((a1 + 352));
  std::condition_variable::~condition_variable((a1 + 304));
  v5 = *(a1 + 288);
  *(a1 + 288) = 0;
  if (v5)
  {
    v6 = *(v5 + 8);
    *(v5 + 8) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
      v7 = *(v5 + 8);
      *(v5 + 8) = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }

    MEMORY[0x2743BF050](v5, 0xA1C40BD48D6D6);
  }

  std::mutex::~mutex((a1 + 224));
  v8 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v8)
  {
    MEMORY[0x2743BF050](v8, 0x10A1C40756C35FELL);
  }

  v9 = *(a1 + 208);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if (*(a1 + 160) != 1)
    {
      goto LABEL_25;
    }
  }

  else if (*(a1 + 160) != 1)
  {
    goto LABEL_25;
  }

  v10 = *(a1 + 152);
  if (v10 == a1 + 128)
  {
    (*(*v10 + 32))(v10);
    if (*(a1 + 88) != 1)
    {
      goto LABEL_37;
    }

    goto LABEL_26;
  }

  if (v10)
  {
    (*(*v10 + 40))(v10);
    if (*(a1 + 88) != 1)
    {
      goto LABEL_37;
    }

    goto LABEL_26;
  }

LABEL_25:
  if (*(a1 + 88) != 1)
  {
    goto LABEL_37;
  }

LABEL_26:
  v11 = *(a1 + 64);
  if (v11)
  {
    v12 = *(a1 + 72);
    v13 = *(a1 + 64);
    if (v12 != v11)
    {
      v14 = 0;
      do
      {
        v15 = v12 + v14;
        if (*(v12 + v14 - 8) == 1)
        {
          v16 = *(v15 - 16);
          if (v16 != -1)
          {
            (off_2881323C8[v16])(&v20, v15 - 48);
          }

          *(v15 - 16) = -1;
        }

        *(v15 - 816) = off_2881327C0;
        sub_271347580(v15 - 800);
        v14 -= 816;
      }

      while (v12 + v14 != v11);
      v13 = *(a1 + 64);
    }

    *(a1 + 72) = v11;
    operator delete(v13);
  }

LABEL_37:
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v17 = *(a1 + 24);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  return a1;
}

void sub_2714C9408(uint64_t a1)
{
  sub_2714C9044(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2714C9440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a3 + 16;
  v9 = (*(*(a3 + 16) + 24))(a3 + 16);
  v11 = 48;
  if (!*(v9 + 64))
  {
    v11 = 0;
  }

  v12 = v9 + v11;
  if (*(a2 + 184) == 1)
  {
    v10 = a2 + 176;
    if (*(a2 + 176) != *(v12 + 8))
    {
      sub_2714C2388(v12, v10, "exporter", 8);
    }
  }

  else
  {
    *(a2 + 168) = *v12;
    *(a2 + 184) = 1;
  }

  v13 = *(a2 + 168);
  v14 = *v12 - v13;
  if (*v12 == v13 || v14 < 0)
  {
    if (v14 <= -1000000001)
    {
      v20[0] = -((v13 - *v12) / 0xF4240uLL);
      sub_2714C2768(v12, v20);
    }
  }

  else
  {
    v15 = (*(*v8 + 24))(v8, v10);
    v16 = 48;
    if (!*(v15 + 64))
    {
      v16 = 0;
    }

    *(a2 + 168) = *(v15 + v16);
  }

  v21.__pn_.__r_.__value_.__s.__data_[0] = 0;
  v22 = 0;
  v20[0] = a2;
  v20[1] = &v21;
  v20[2] = a3;
  v17 = *(a4 + 32);
  if (v17 == -1)
  {
    sub_2711308D4();
  }

  v23 = v20;
  result = (off_2881323E8[v17])(&v23, a4);
  if (v22)
  {
    v19 = *(a2 + 464);
    sub_2714E56F4(*(a2 + 216), a2 + 192, (a2 + 224), (a2 + 32), a3, &v21);
  }

  *(a1 + 120) = 1;
  return result;
}

void sub_2714C9810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_2714C9824(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  if (v61 == 1 && v60 < 0)
  {
    operator delete(v59[0]);
  }

  if (a2 == 4)
  {
    v52 = __cxa_begin_catch(a1);
    sub_2714D7694(v59, v52 + 16);
    sub_271238E60(v49, v59);
    sub_27112D71C(v59);
  }

  else
  {
    if (a2 == 3)
    {
      v53 = __cxa_begin_catch(a1);
      v54 = (*(*v53 + 16))(v53);
      sub_2711CC04C(v57, v54);
      v58 = 1;
      sub_27139F524(2u, v57, v59);
    }

    else
    {
      v55 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v56 = (*(*v55 + 16))(v55);
        sub_2711CC04C(v57, v56);
        v58 = 1;
        sub_27139F524(3u, v57, v59);
      }

      else
      {
        v57[0] = 0;
        v58 = 0;
        sub_27139F524(1u, v57, v59);
      }
    }

    sub_271238E60(v49, v59);
    sub_27112D71C(v59);
    sub_27112D66C(v57);
  }

  __cxa_end_catch();
}

void sub_2714C9984(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D66C(va);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_2714C99E4(_BYTE *a1, uint64_t a2, char ***a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v11[0] = a2;
  v11[1] = a3;
  if (*(a2 + 88))
  {
    sub_2714FCC00((a3 + 2));
    v6 = *(a2 + 64);
    v7 = *(a2 + 72);
    if (v6 != v7)
    {
      while ((sub_2714F44BC(v6, a3) & 1) == 0)
      {
        v6 += 816;
        if (v6 == v7)
        {
          v6 = v7;
          break;
        }
      }

      v7 = *(a2 + 72);
    }

    if (v6 == v7)
    {
      v13[0] = 6;
      v14 = 0;
      sub_2714C9BF8(a1, v11, v13);
      if (v14 == -1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (*(v6 + 808))
      {
        sub_2714C9BF8(a1, v11, v6 + 768);
        goto LABEL_16;
      }

      v13[0] = 6;
      v14 = 0;
      sub_2714C9BF8(a1, v11, v13);
      if (v14 == -1)
      {
LABEL_16:
        if (v10 < 0)
        {
          operator delete(__p);
        }

        goto LABEL_18;
      }
    }

    (off_2881323C8[v14])(&v12, v13);
    goto LABEL_16;
  }

  v13[0] = 6;
  v14 = 0;
  sub_2714C9BF8(a1, v11, v13);
  if (v14 != -1)
  {
    (off_2881323C8[v14])(&__p, v13);
  }

LABEL_18:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2714C9B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C9BF8(_BYTE *a1, uint64_t *a2, uint64_t a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*(*a2 + 112) == 1)
  {
    v5 = a2[1];
    __lk.__m_ = (v4 + 352);
    __lk.__owns_ = 1;
    std::mutex::lock((v4 + 352));
    if (*(v4 + 104) != 1)
    {
      goto LABEL_7;
    }

    v6 = atomic_load((v4 + 296));
    if ((*(v4 + 104) & 1) == 0)
    {
      sub_2711B0B74();
    }

    if (*(v4 + 96) > v6)
    {
LABEL_7:
      atomic_fetch_add((v4 + 296), 1u);
      v9 = *(v4 + 288);
      v36[0] = &unk_288132570;
      v38 = v36;
      operator new();
    }

    v7.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v8 = atomic_load((v4 + 296));
    if (*(v4 + 104) != 1)
    {
      goto LABEL_80;
    }

    if (*(v4 + 96) > v8)
    {
      goto LABEL_7;
    }

    rep = v7.__d_.__rep_;
    LODWORD(v45) = 0;
    v39 = v44;
    v40 = "blocking caller while waiting for space in queue";
    v41 = v44;
    v42 = "blocking caller while waiting for space in queue";
    v43 = "blocking caller while waiting for space in queue";
    v25 = &v39;
    sub_2712D85E0(&v25);
    if (v45 == -1)
    {
LABEL_81:
      sub_2711308D4();
    }

    v39 = &v25;
    (off_288132410[v45])(v36, &v39, v44);
    if (v45 != -1)
    {
      (off_2881323F8[v45])(&v39, v44);
    }

    sub_2714C2E18(v36, *(v4 + 96), *(v4 + 104), v26);
    if (*(v4 + 160) == 1)
    {
      v15 = *(v4 + 152);
      if (!v15)
      {
LABEL_82:
        sub_27112AFFC();
      }

      (*(*v15 + 48))(v15, v4 + 32, v5 + 16, v26);
    }

    if (v34 == 1)
    {
      if (v33 == 1)
      {
        if (v32 < 0)
        {
          operator delete(__p);
        }

        if (v30 < 0)
        {
          operator delete(v29[1]);
        }
      }

      if (LOBYTE(v29[0]) == 1 && SHIBYTE(v28) < 0)
      {
        operator delete(v27[0]);
      }
    }

    if (v37 < 0)
    {
      operator delete(v36[0]);
    }

    v16.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    std::chrono::steady_clock::now();
    v17.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v18.__d_.__rep_ = 1000000000;
    if (v17.__d_.__rep_)
    {
      if (v17.__d_.__rep_ <= 0)
      {
        v18.__d_.__rep_ = 0x800000003B9ACA00;
        if (v17.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          goto LABEL_48;
        }
      }

      else if (v17.__d_.__rep_ >= 0x20C49BA5D411B8)
      {
        v18.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_48;
      }

      v18.__d_.__rep_ = 1000 * v17.__d_.__rep_ + 1000000000;
    }

LABEL_48:
    std::condition_variable::__do_timed_wait((v4 + 304), &__lk, v18);
    std::chrono::steady_clock::now();
    v19 = atomic_load((v4 + 296));
    if (*(v4 + 104) == 1)
    {
      v20 = v16.__d_.__rep_ - rep;
      while (1)
      {
        if (*(v4 + 96) > v19)
        {
          goto LABEL_7;
        }

        if (std::chrono::steady_clock::now().__d_.__rep_ - (v20 + rep) >= 500000000)
        {
          break;
        }

LABEL_70:
        std::chrono::steady_clock::now();
        v23.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        v21.__d_.__rep_ = 1000000000;
        if (v23.__d_.__rep_)
        {
          if (v23.__d_.__rep_ < 1)
          {
            if (v23.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
            {
              v21.__d_.__rep_ = 1000 * v23.__d_.__rep_ + 1000000000;
            }

            else
            {
              v21.__d_.__rep_ = 0x800000003B9ACA00;
            }
          }

          else if (v23.__d_.__rep_ >= 0x20C49BA5D411B8)
          {
            v21.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21.__d_.__rep_ = 1000 * v23.__d_.__rep_ + 1000000000;
          }
        }

        std::condition_variable::__do_timed_wait((v4 + 304), &__lk, v21);
        std::chrono::steady_clock::now();
        v19 = atomic_load((v4 + 296));
        if ((*(v4 + 104) & 1) == 0)
        {
          goto LABEL_80;
        }
      }

      LODWORD(v45) = 0;
      v39 = v44;
      v40 = "blocking caller while waiting for space in queue";
      v41 = v44;
      v42 = "blocking caller while waiting for space in queue";
      v43 = "blocking caller while waiting for space in queue";
      v25 = &v39;
      sub_2712D85E0(&v25);
      if (v45 == -1)
      {
        goto LABEL_81;
      }

      v39 = &v25;
      (off_288132410[v45])(v36, &v39, v44);
      if (v45 != -1)
      {
        (off_2881323F8[v45])(&v39, v44);
      }

      sub_2714C2E18(v36, *(v4 + 96), *(v4 + 104), v26);
      if (*(v4 + 160) == 1)
      {
        v22 = *(v4 + 152);
        if (!v22)
        {
          goto LABEL_82;
        }

        (*(*v22 + 48))(v22, v4 + 32, v5 + 16, v26);
      }

      if (v34 != 1)
      {
        goto LABEL_67;
      }

      if (v33 != 1)
      {
        goto LABEL_64;
      }

      if (v32 < 0)
      {
        operator delete(__p);
        if ((v30 & 0x80000000) == 0)
        {
LABEL_64:
          if (LOBYTE(v29[0]) == 1)
          {
            goto LABEL_65;
          }

          goto LABEL_67;
        }
      }

      else if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_64;
      }

      operator delete(v29[1]);
      if (LOBYTE(v29[0]) == 1)
      {
LABEL_65:
        if (SHIBYTE(v28) < 0)
        {
          operator delete(v27[0]);
        }
      }

LABEL_67:
      if (v37 < 0)
      {
        operator delete(v36[0]);
      }

      v20 = std::chrono::steady_clock::now().__d_.__rep_ - rep;
      goto LABEL_70;
    }

LABEL_80:
    sub_2711B0B74();
  }

  sub_2714C9440(v26, *a2, a2[1], a3);
  if (v35 == 1)
  {
    *a1 = 0;
    a1[8] = 0;
    goto LABEL_24;
  }

  if (*(v4 + 160) != 1)
  {
    *a1 = 0;
    a1[8] = 0;
    if (v34 != 1)
    {
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  v11 = *(v4 + 152);
  if (!v11)
  {
    sub_27112AFFC();
  }

  (*(*v11 + 48))(v11, v4 + 32, a2[1] + 16, v26);
  v12 = v35;
  *a1 = 0;
  a1[8] = 0;
  if ((v12 & 1) == 0 && v34 == 1)
  {
LABEL_16:
    if (v33 == 1)
    {
      if (v32 < 0)
      {
        operator delete(__p);
      }

      if (v30 < 0)
      {
        operator delete(v29[1]);
      }
    }

    if (LOBYTE(v29[0]) == 1 && SHIBYTE(v28) < 0)
    {
      operator delete(v27[0]);
    }
  }

LABEL_24:
  v13 = *MEMORY[0x277D85DE8];
}

void sub_2714CABE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  sub_27112D71C(&a20);
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (a11 == 1)
  {
    std::mutex::unlock(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2714CAD50(uint64_t a1, char ***a2)
{
  sub_2714C99E4(&v4, a1, a2);
  if (v5 == 1)
  {
    std::future<void>::~future(&v4);
  }

  return a1;
}

void sub_2714CADC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28810C008;
  v6[0] = 0;
  v8 = 0;
  if (*(a4 + 32) == 1)
  {
    v5 = *(a4 + 24);
    if (v5)
    {
      if (v5 == a4)
      {
        v7 = v6;
        (*(*v5 + 24))(v5, v6);
      }

      else
      {
        v7 = *(a4 + 24);
        *(a4 + 24) = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = 1;
  }

  if (*(a3 + 48) == 1)
  {
    sub_27174C01C();
  }

  operator new();
}

void sub_2714CB80C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2714CB9B8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if (*(v2 + 112) == 1)
    {
      (*(**(*(v2 + 288) + 8) + 24))(*(*(v2 + 288) + 8));
    }

    if (*(v2 + 456) == 1)
    {
      sub_2714D8B28(v2 + 416, 0, 0);
    }
  }

  v3 = *(a1 + 16);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void sub_2714CBA94(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if (*(v2 + 112) == 1)
    {
      (*(**(*(v2 + 288) + 8) + 24))(*(*(v2 + 288) + 8));
    }

    if (*(v2 + 456) == 1)
    {
      sub_2714D8B28(v2 + 416, 0, 0);
    }
  }

  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2714CBB80(uint64_t a1, char ***a2)
{
  sub_2714C99E4(&v4, *(a1 + 8), a2);
  if (v5 == 1)
  {
    std::future<void>::~future(&v4);
  }

  return a1;
}

void sub_2714CBBD0(void *a1)
{
  v1 = a1;
  v2 = a1[32];
  if (!v2)
  {
    return;
  }

  v3 = (*(*v2 + 16))(v2);
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  LOBYTE(v69) = 0;
  *v70 = 0u;
  memset(v71, 0, sizeof(v71));
  v72 = 0;
  v66 = 0;
  v65 = 0uLL;
  LOBYTE(v67) = 0;
  sub_2714DEEBC(&v50, v63);
  if (v1[35] < 0x86BCA1AF286BCA1BLL * ((v1[37] - v1[36]) >> 3))
  {
    goto LABEL_139;
  }

  v4 = 0;
  v5 = v3 + 4;
  v48 = v3;
  while (1)
  {
    v6 = v1[34];
    *(v6 + 128) = 1;
    *(v6 + 80) = 0;
    *(v6 + 104) = 0;
    *(v6 + 130) = 0;
    *(v6 + 132) = 0;
    LODWORD(v63[0]) = 3;
    sub_27183A9AC(v6, v63);
    v7 = v63[0];
    if (LODWORD(v63[0]) > 1)
    {
      sub_27183B36C(v6, &v50);
      ++*(v6 + 80);
      if (*(v6 + 128) == 1 && *(v6 + 131) == 1)
      {
        *(v6 + 132) = 1;
      }

      else
      {
        sub_27183D78C(v6, v63);
        if (SHIBYTE(v52) < 0)
        {
          operator delete(__p);
        }

        __p = *v63;
        v52 = v63[2];
        ++*(v6 + 104);
      }

      sub_27183A9AC(v6, &v53);
      v8 = *(v6 + 80);
      *(v6 + 80) = v8 + 1;
      if (*(v6 + 128) == 1 && (*(v6 + 131) & 1) != 0)
      {
        *(v6 + 132) = 1;
        *(v6 + 80) = v8 + 2;
      }

      else
      {
        sub_27183D78C(v6, v63);
        if (SHIBYTE(v55) < 0)
        {
          operator delete(v54);
        }

        v54 = *v63;
        v55 = v63[2];
        ++*(v6 + 104);
        v10 = *(v6 + 128);
        ++*(v6 + 80);
        if ((v10 & 1) == 0 || (*(v6 + 131) & 1) == 0)
        {
          sub_27183D78C(v6, v63);
          if (SHIBYTE(v57) < 0)
          {
            operator delete(v56);
          }

          v56 = *v63;
          v57 = v63[2];
          ++*(v6 + 104);
          goto LABEL_36;
        }
      }

      *(v6 + 132) = 1;
LABEL_36:
      sub_27183B02C(v6, &v58);
      if (v7 == 2)
      {
        goto LABEL_71;
      }

      v12 = *(v6 + 80);
      *(v6 + 80) = v12 + 1;
      if (*(v6 + 128) == 1 && (*(v6 + 131) & 1) != 0)
      {
        *(v6 + 132) = 1;
        *(v6 + 80) = v12 + 2;
LABEL_58:
        *(v6 + 132) = 1;
        goto LABEL_71;
      }

      sub_27183D78C(v6, v63);
      if (SHIBYTE(v60) < 0)
      {
        operator delete(v59);
      }

      v59 = *v63;
      v60 = v63[2];
      ++*(v6 + 104);
      v13 = *(v6 + 128);
      ++*(v6 + 80);
      if (v13 & 1) != 0 && (*(v6 + 131))
      {
        goto LABEL_58;
      }

      sub_27183D78C(v6, v63);
      if (SHIBYTE(v62) < 0)
      {
        operator delete(v61);
      }

      v61 = *v63;
      v62 = v63[2];
      ++*(v6 + 104);
      while (1)
      {
LABEL_71:
        if ((*(v6 + 131) & 1) != 0 || (*(*(v6 + 16) + *(**(v6 + 16) - 24) + 32) & 2) != 0)
        {
          goto LABEL_90;
        }

        sub_27183D78C(v6, v63);
        if (SHIBYTE(v63[2]) < 0)
        {
          if (v63[1] == 1 && *(v6 + 72) == *v63[0])
          {
LABEL_79:
            v14 = 0;
            if (SHIBYTE(v63[2]) < 0)
            {
              goto LABEL_82;
            }

            goto LABEL_70;
          }
        }

        else if (SHIBYTE(v63[2]) == 1 && *(v6 + 72) == LOBYTE(v63[0]))
        {
          goto LABEL_79;
        }

        v14 = 1;
        if (SHIBYTE(v63[2]) < 0)
        {
LABEL_82:
          operator delete(v63[0]);
        }

LABEL_70:
        if ((v14 & 1) == 0)
        {
          goto LABEL_90;
        }
      }
    }

    v64 = 0;
    memset(v63, 0, sizeof(v63));
    LOBYTE(v69) = 0;
    *v70 = 0u;
    memset(v71, 0, sizeof(v71));
    v72 = 0;
    v66 = 0;
    v65 = 0uLL;
    LOBYTE(v67) = 0;
    sub_2714DEDA0(&v73, v63);
    sub_27183B36C(v6, &v73);
    ++*(v6 + 80);
    if (*(v6 + 128) == 1 && *(v6 + 131) == 1)
    {
      *(v6 + 132) = 1;
    }

    else
    {
      sub_27183D78C(v6, v63);
      if (SHIBYTE(v75) < 0)
      {
        operator delete(v74);
      }

      v74 = *v63;
      v75 = v63[2];
      ++*(v6 + 104);
    }

    sub_27183A9AC(v6, &v76);
    v9 = *(v6 + 80);
    *(v6 + 80) = v9 + 1;
    if (*(v6 + 128) == 1 && (*(v6 + 131) & 1) != 0)
    {
      *(v6 + 132) = 1;
      *(v6 + 80) = v9 + 2;
LABEL_32:
      *(v6 + 132) = 1;
      goto LABEL_43;
    }

    sub_27183D78C(v6, v63);
    if (SHIBYTE(v78) < 0)
    {
      operator delete(v77);
    }

    v77 = *v63;
    v78 = v63[2];
    ++*(v6 + 104);
    v11 = *(v6 + 128);
    ++*(v6 + 80);
    if (v11 & 1) != 0 && (*(v6 + 131))
    {
      goto LABEL_32;
    }

    sub_27183D78C(v6, v63);
    if (SHIBYTE(v80) < 0)
    {
      operator delete(v79);
    }

    v79 = *v63;
    v80 = v63[2];
    ++*(v6 + 104);
LABEL_43:
    sub_27183B02C(v6, &v81);
    sub_2714DF0B8(v63, &v73);
    v50 = v63[0];
    if (SHIBYTE(v52) < 0)
    {
      operator delete(__p);
    }

    __p = *&v63[1];
    v52 = v63[3];
    HIBYTE(v63[3]) = 0;
    LOBYTE(v63[1]) = 0;
    v53 = v64;
    if (SHIBYTE(v55) < 0)
    {
      operator delete(v54);
    }

    v54 = v65;
    v55 = v66;
    HIBYTE(v66) = 0;
    LOBYTE(v65) = 0;
    if (SHIBYTE(v57) < 0)
    {
      operator delete(v56);
    }

    v56 = v67;
    v57 = v68;
    HIBYTE(v68) = 0;
    LOBYTE(v67) = 0;
    v58 = v69;
    if (SHIBYTE(v60) < 0)
    {
      operator delete(v59);
    }

    v59 = *v70;
    v60 = *&v71[0];
    BYTE7(v71[0]) = 0;
    LOBYTE(v70[0]) = 0;
    if (SHIBYTE(v62) < 0)
    {
      operator delete(v61);
      v61 = *(v71 + 8);
      v62 = *(&v71[1] + 1);
      HIBYTE(v71[1]) = 0;
      BYTE8(v71[0]) = 0;
      if (SBYTE7(v71[0]) < 0)
      {
        operator delete(v70[0]);
        if ((SHIBYTE(v68) & 0x80000000) == 0)
        {
LABEL_61:
          if ((SHIBYTE(v66) & 0x80000000) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_85;
        }
      }

      else if ((SHIBYTE(v68) & 0x80000000) == 0)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v61 = *(v71 + 8);
      v62 = *(&v71[1] + 1);
      HIBYTE(v71[1]) = 0;
      BYTE8(v71[0]) = 0;
      if ((SHIBYTE(v68) & 0x80000000) == 0)
      {
        goto LABEL_61;
      }
    }

    operator delete(v67);
    if ((SHIBYTE(v66) & 0x80000000) == 0)
    {
LABEL_62:
      if ((SHIBYTE(v63[3]) & 0x80000000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_86;
    }

LABEL_85:
    operator delete(v65);
    if ((SHIBYTE(v63[3]) & 0x80000000) == 0)
    {
LABEL_63:
      if ((SHIBYTE(v80) & 0x80000000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_87;
    }

LABEL_86:
    operator delete(v63[1]);
    if ((SHIBYTE(v80) & 0x80000000) == 0)
    {
LABEL_64:
      if (SHIBYTE(v78) < 0)
      {
        goto LABEL_88;
      }

      goto LABEL_65;
    }

LABEL_87:
    operator delete(v79);
    if (SHIBYTE(v78) < 0)
    {
LABEL_88:
      operator delete(v77);
      if ((SHIBYTE(v75) & 0x80000000) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_89;
    }

LABEL_65:
    if ((SHIBYTE(v75) & 0x80000000) == 0)
    {
      goto LABEL_90;
    }

LABEL_89:
    operator delete(v74);
LABEL_90:
    if (!sub_27183DB7C(v6))
    {
      break;
    }

    sub_2714DF1E0(&v50, v63);
    v15 = v1[37];
    v16 = v1[38];
    if (v15 >= v16)
    {
      v22 = v5;
      v23 = v4;
      v24 = v1[36];
      v25 = 0x86BCA1AF286BCA1BLL * ((v15 - v24) >> 3);
      v26 = v25 + 1;
      if (v25 + 1 > 0x1AF286BCA1AF286)
      {
        sub_271135560();
      }

      v27 = v1;
      v28 = 0x86BCA1AF286BCA1BLL * ((v16 - v24) >> 3);
      if (2 * v28 > v26)
      {
        v26 = 2 * v28;
      }

      if (v28 >= 0xD79435E50D7943)
      {
        v29 = 0x1AF286BCA1AF286;
      }

      else
      {
        v29 = v26;
      }

      if (v29)
      {
        if (v29 <= 0x1AF286BCA1AF286)
        {
          operator new();
        }

        sub_2711270EC();
      }

      v30 = 152 * v25;
      *v30 = v63[0];
      *(v30 + 8) = *&v63[1];
      *(v30 + 24) = v63[3];
      memset(&v63[1], 0, 24);
      *(v30 + 32) = v64;
      *(v30 + 40) = v65;
      *(v30 + 56) = v66;
      v66 = 0;
      v65 = 0uLL;
      *(152 * v25 + 0x40) = 0;
      *(v30 + 88) = 0;
      if (v69 == 1)
      {
        *(152 * v25 + 0x40) = v67;
        *(152 * v25 + 0x50) = v68;
        v68 = 0;
        v67 = 0uLL;
        *(152 * v25 + 0x58) = 1;
      }

      v31 = v1[36];
      v32 = v1[37];
      v33 = v32 - v31;
      *(152 * v25 + 0x60) = *v70;
      v34 = *&v71[0];
      v70[1] = 0;
      *&v71[0] = 0;
      v70[0] = 0;
      v35 = *(&v71[0] + 1);
      *(152 * v25 + 0x70) = v34;
      *(152 * v25 + 0x78) = v35;
      *(152 * v25 + 0x80) = v71[1];
      *(152 * v25 + 0x90) = v72;
      v71[1] = 0uLL;
      v72 = 0;
      if (v32 == v31)
      {
        v4 = v23;
      }

      else
      {
        v49 = v32 - v31;
        v36 = 0;
        v37 = -8 * ((v32 - v31) >> 3) + 152 * v25;
        do
        {
          v40 = &v31[v36];
          v41 = v37 + v36;
          *v41 = *&v31[v36];
          v42 = *&v31[v36 + 8];
          *(v41 + 24) = *&v31[v36 + 24];
          *(v41 + 8) = v42;
          *(v40 + 2) = 0;
          *(v40 + 3) = 0;
          *(v40 + 1) = 0;
          *(v41 + 32) = *&v31[v36 + 32];
          v43 = *&v31[v36 + 40];
          *(v41 + 56) = *&v31[v36 + 56];
          *(v41 + 40) = v43;
          *(v40 + 6) = 0;
          *(v40 + 7) = 0;
          *(v40 + 5) = 0;
          *(v37 + v36 + 64) = 0;
          *(v41 + 88) = 0;
          if (v31[v36 + 88] == 1)
          {
            v44 = *(v40 + 4);
            *(v37 + v36 + 80) = *(v40 + 10);
            *(v37 + v36 + 64) = v44;
            *(v40 + 9) = 0;
            *(v40 + 10) = 0;
            *(v40 + 8) = 0;
            *(v41 + 88) = 1;
          }

          v38 = *(v40 + 6);
          *(v41 + 112) = *(v40 + 14);
          *(v41 + 96) = v38;
          *(v40 + 13) = 0;
          *(v40 + 14) = 0;
          *(v40 + 12) = 0;
          *(v41 + 120) = *(v40 + 15);
          v39 = *(v40 + 8);
          *(v41 + 144) = *(v40 + 18);
          *(v41 + 128) = v39;
          *(v40 + 17) = 0;
          *(v40 + 18) = 0;
          *(v40 + 16) = 0;
          v36 += 152;
        }

        while (v40 + 152 != v32);
        v4 = v23;
        do
        {
          sub_2714D73E0(v31);
          v31 += 152;
        }

        while (v31 != v32);
        v31 = v27[36];
        v33 = v49;
      }

      v27[36] = v30 - v33;
      v27[37] = v30 + 152;
      v27[38] = 0;
      v1 = v27;
      if (v31)
      {
        operator delete(v31);
      }

      v45 = SHIBYTE(v72);
      v27[37] = v30 + 152;
      v3 = v48;
      v5 = v22;
      if (v45 < 0)
      {
        operator delete(*&v71[1]);
        if ((SBYTE7(v71[0]) & 0x80000000) == 0)
        {
          goto LABEL_120;
        }
      }

      else if ((SBYTE7(v71[0]) & 0x80000000) == 0)
      {
        goto LABEL_120;
      }
    }

    else
    {
      *v15 = v63[0];
      v17 = *&v63[1];
      *(v15 + 24) = v63[3];
      *(v15 + 8) = v17;
      memset(&v63[1], 0, 24);
      *(v15 + 32) = v64;
      v18 = v65;
      *(v15 + 56) = v66;
      *(v15 + 40) = v18;
      v66 = 0;
      v65 = 0uLL;
      *(v15 + 64) = 0;
      *(v15 + 88) = 0;
      if (v69 == 1)
      {
        v19 = v67;
        *(v15 + 80) = v68;
        *(v15 + 64) = v19;
        v68 = 0;
        v67 = 0uLL;
        *(v15 + 88) = 1;
      }

      v20 = *v70;
      *(v15 + 112) = *&v71[0];
      *(v15 + 96) = v20;
      v70[1] = 0;
      *&v71[0] = 0;
      v70[0] = 0;
      *(v15 + 120) = *(&v71[0] + 1);
      v21 = v71[1];
      *(v15 + 144) = v72;
      *(v15 + 128) = v21;
      v72 = 0;
      v71[1] = 0uLL;
      v1[37] = v15 + 152;
      if ((SBYTE7(v71[0]) & 0x80000000) == 0)
      {
LABEL_120:
        if (v69 != 1)
        {
          goto LABEL_126;
        }

        goto LABEL_124;
      }
    }

    operator delete(v70[0]);
    if (v69 != 1)
    {
      goto LABEL_126;
    }

LABEL_124:
    if (SHIBYTE(v68) < 0)
    {
      operator delete(v67);
    }

LABEL_126:
    if (SHIBYTE(v66) < 0)
    {
      operator delete(v65);
      if ((SHIBYTE(v63[3]) & 0x80000000) == 0)
      {
LABEL_128:
        if ((*(v5 + *(*v3 - 24)) & 2) != 0)
        {
          break;
        }

        goto LABEL_132;
      }
    }

    else if ((SHIBYTE(v63[3]) & 0x80000000) == 0)
    {
      goto LABEL_128;
    }

    operator delete(v63[1]);
    if ((*(v5 + *(*v3 - 24)) & 2) != 0)
    {
      break;
    }

LABEL_132:
    v46 = v4 > 0x1FE;
    v4 += 2;
    if (v46)
    {
      v4 = 0;
      if (v1[35] < 0x86BCA1AF286BCA1BLL * ((v1[37] - v1[36]) >> 3))
      {
        goto LABEL_139;
      }
    }
  }

  v47 = v1[33];
  v1[32] = 0;
  v1[33] = 0;
  if (v47)
  {
    if (!atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v47->__on_zero_shared)(v47);
      std::__shared_weak_count::__release_weak(v47);
    }
  }

LABEL_139:
  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61);
    if (SHIBYTE(v60) < 0)
    {
      goto LABEL_146;
    }

LABEL_141:
    if ((SHIBYTE(v57) & 0x80000000) == 0)
    {
      goto LABEL_142;
    }

LABEL_147:
    operator delete(v56);
    if (SHIBYTE(v55) < 0)
    {
      goto LABEL_148;
    }

LABEL_143:
    if (SHIBYTE(v52) < 0)
    {
LABEL_149:
      operator delete(__p);
    }
  }

  else
  {
    if ((SHIBYTE(v60) & 0x80000000) == 0)
    {
      goto LABEL_141;
    }

LABEL_146:
    operator delete(v59);
    if (SHIBYTE(v57) < 0)
    {
      goto LABEL_147;
    }

LABEL_142:
    if ((SHIBYTE(v55) & 0x80000000) == 0)
    {
      goto LABEL_143;
    }

LABEL_148:
    operator delete(v54);
    if (SHIBYTE(v52) < 0)
    {
      goto LABEL_149;
    }
  }
}

void sub_2714CC8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_2714D2B08(&a29);
  sub_2714D7810(&a11);
  _Unwind_Resume(a1);
}

void sub_2714CC8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2714D7810(va);
  _Unwind_Resume(a1);
}

void sub_2714CC8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2714D7810(va);
  _Unwind_Resume(a1);
}

void sub_2714CC910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2714D7810(va);
  _Unwind_Resume(a1);
}

void sub_2714CC924(uint64_t a1)
{
  v62 = (a1 + 344);
  v63 = (a1 + 320);
  while (1)
  {
    v2 = *(a1 + 288);
    v3 = *(a1 + 280);
    if (v3 >= 0x86BCA1AF286BCA1BLL * ((*(a1 + 296) - v2) >> 3) && !*(a1 + 256))
    {
      return;
    }

    v4 = v2 + 152 * v3;
    v5 = *(a1 + 136);
    v6 = *(a1 + 144);
    if (v5 != v6)
    {
      break;
    }

LABEL_14:
    v11 = *v63;
    if (!*v63)
    {
      goto LABEL_56;
    }

    v12 = *(v4 + 31);
    if (v12 >= 0)
    {
      v13 = (v4 + 8);
    }

    else
    {
      v13 = *(v4 + 8);
    }

    if (v12 >= 0)
    {
      v14 = *(v4 + 31);
    }

    else
    {
      v14 = *(v4 + 16);
    }

    v15 = v63;
    do
    {
      while (1)
      {
        v16 = *(v11 + 55);
        v17 = v16 >= 0 ? v11 + 4 : v11[4];
        v18 = v16 >= 0 ? *(v11 + 55) : v11[5];
        v19 = v14 >= v18 ? v18 : v14;
        v20 = memcmp(v17, v13, v19);
        if (v20)
        {
          break;
        }

        if (v18 >= v14)
        {
          goto LABEL_36;
        }

LABEL_22:
        v11 = v11[1];
        if (!v11)
        {
          goto LABEL_37;
        }
      }

      if (v20 < 0)
      {
        goto LABEL_22;
      }

LABEL_36:
      v15 = v11;
      v11 = *v11;
    }

    while (v11);
LABEL_37:
    if (v15 == v63)
    {
      goto LABEL_56;
    }

    v23 = v15[4];
    v22 = v15 + 4;
    v21 = v23;
    v24 = *(v22 + 23);
    if (v24 >= 0)
    {
      v25 = v22;
    }

    else
    {
      v25 = v21;
    }

    if (v24 >= 0)
    {
      v26 = *(v22 + 23);
    }

    else
    {
      v26 = v22[1];
    }

    if (v26 >= v14)
    {
      v27 = v14;
    }

    else
    {
      v27 = v26;
    }

    v28 = memcmp(v13, v25, v27);
    if (v28)
    {
      if (v28 < 0)
      {
LABEL_56:
        sub_27112AE58(a1 + 312, (v4 + 8));
        sub_2714C3340((v4 + 8), &v67);
        v78 = v67;
        LOBYTE(v79) = 0;
        v88 = 0;
        if (v77 == 1)
        {
          v81 = 0;
          if (v70 == 1)
          {
            v79 = __p;
            v80 = v69;
            v69 = 0;
            __p = 0uLL;
            v81 = 1;
            LOBYTE(v82) = 0;
            v87 = 0;
            if (v76 != 1)
            {
              goto LABEL_59;
            }

LABEL_62:
            v82 = v71;
            v83 = v72;
            v72 = 0;
            v71 = 0uLL;
            v84 = v73;
            v85 = v74;
            v86 = v75;
            v74 = 0uLL;
            v75 = 0;
            v87 = 1;
            v88 = 1;
            if (v70)
            {
              goto LABEL_63;
            }
          }

          else
          {
            LOBYTE(v82) = 0;
            v87 = 0;
            if (v76 == 1)
            {
              goto LABEL_62;
            }

LABEL_59:
            v88 = 1;
            if (v70)
            {
LABEL_63:
              if (SHIBYTE(v69) < 0)
              {
                operator delete(__p);
              }
            }
          }
        }

        operator new();
      }
    }

    else if (v14 < v26)
    {
      goto LABEL_56;
    }

LABEL_104:
    v51 = *(a1 + 288);
    v52 = *(a1 + 280) + 1;
    *(a1 + 280) = v52;
    if (v52 >= 0x86BCA1AF286BCA1BLL * ((*(a1 + 296) - v51) >> 3))
    {
      sub_2714CBBD0(a1);
    }
  }

  while (1)
  {
    if (*v5)
    {
      v7 = (*(**v5 + 16))(*v5);
      v9 = *(v4 + 31);
      if ((v9 & 0x8000000000000000) != 0)
      {
        v10 = *(v4 + 8);
        v9 = *(v4 + 16);
        if (v8 != v9)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v10 = (v4 + 8);
        if (v8 != v9)
        {
          goto LABEL_7;
        }
      }

      if (!memcmp(v7, v10, v9))
      {
        break;
      }
    }

LABEL_7:
    v5 += 2;
    if (v5 == v6)
    {
      goto LABEL_14;
    }
  }

  if (((*(**v5 + 40))(*v5, *(v4 + 32)) & 1) == 0)
  {
    v33 = *(v4 + 32);
    v34 = *v62;
    if (!*v62)
    {
LABEL_92:
      operator new();
    }

    v35 = *(v4 + 31);
    if (v35 >= 0)
    {
      v36 = (v4 + 8);
    }

    else
    {
      v36 = *(v4 + 8);
    }

    if (v35 >= 0)
    {
      v37 = *(v4 + 31);
    }

    else
    {
      v37 = *(v4 + 16);
    }

    while (1)
    {
      v38 = v34;
      v41 = v34[4];
      v39 = v34 + 4;
      v40 = v41;
      v42 = *(v39 + 23);
      if (v42 >= 0)
      {
        v43 = v39;
      }

      else
      {
        v43 = v40;
      }

      if (v42 >= 0)
      {
        v44 = *(v39 + 23);
      }

      else
      {
        v44 = v39[1];
      }

      if (v44 >= v37)
      {
        v45 = v37;
      }

      else
      {
        v45 = v44;
      }

      v46 = memcmp(v36, v43, v45);
      if (v46)
      {
        if (v46 < 0)
        {
          goto LABEL_73;
        }

LABEL_87:
        v47 = memcmp(v43, v36, v45);
        if (v47)
        {
          if ((v47 & 0x80000000) == 0)
          {
            goto LABEL_106;
          }
        }

        else if (v44 >= v37)
        {
LABEL_106:
          v53 = v38[8];
          if (!v53)
          {
LABEL_119:
            operator new();
          }

          v54 = v38 + 8;
          v55 = v38[8];
          do
          {
            v56 = *(v55 + 28);
            v57 = v56 >= v33;
            v58 = v56 < v33;
            if (v57)
            {
              v54 = v55;
            }

            v55 = *(v55 + 8 * v58);
          }

          while (v55);
          if (v54 != v38 + 8 && *(v54 + 7) <= v33)
          {
            goto LABEL_104;
          }

          while (1)
          {
            while (1)
            {
              v59 = v53;
              v60 = *(v53 + 28);
              if (v60 <= v33)
              {
                break;
              }

              v53 = *v59;
              if (!*v59)
              {
                goto LABEL_119;
              }
            }

            if (v60 >= v33)
            {
              break;
            }

            v53 = v59[1];
            if (!v53)
            {
              goto LABEL_119;
            }
          }

          if (*(v4 + 31) < 0)
          {
            sub_271127178(v64, *(v4 + 8), *(v4 + 16));
          }

          else
          {
            v61 = *(v4 + 8);
            v65 = *(v4 + 24);
            *v64 = v61;
          }

          v66 = v33;
          sub_2714C35E8(v64, &v67);
          v78 = v67;
          LOBYTE(v79) = 0;
          v88 = 0;
          if (v77 == 1)
          {
            v81 = 0;
            if (v70 == 1)
            {
              v79 = __p;
              v80 = v69;
              v69 = 0;
              __p = 0uLL;
              v81 = 1;
              LOBYTE(v82) = 0;
              v87 = 0;
              if (v76 != 1)
              {
                goto LABEL_126;
              }

LABEL_129:
              v82 = v71;
              v83 = v72;
              v72 = 0;
              v71 = 0uLL;
              v84 = v73;
              v85 = v74;
              v86 = v75;
              v74 = 0uLL;
              v75 = 0;
              v87 = 1;
              v88 = 1;
              if (v70)
              {
                goto LABEL_130;
              }
            }

            else
            {
              LOBYTE(v82) = 0;
              v87 = 0;
              if (v76 == 1)
              {
                goto LABEL_129;
              }

LABEL_126:
              v88 = 1;
              if (v70)
              {
LABEL_130:
                if (SHIBYTE(v69) < 0)
                {
                  operator delete(__p);
                }
              }
            }
          }

          if (SHIBYTE(v65) < 0)
          {
            operator delete(v64[0]);
          }

          operator new();
        }

        v34 = v38[1];
        if (!v34)
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (v37 >= v44)
        {
          goto LABEL_87;
        }

LABEL_73:
        v34 = *v38;
        if (!*v38)
        {
          goto LABEL_92;
        }
      }
    }
  }

  if (*(a1 + 56) == 1)
  {
    v29 = *(a1 + 288) + 152 * *(a1 + 280);
    if (*(v29 + 31) < 0)
    {
      sub_271127178(&v78, *(v29 + 8), *(v29 + 16));
      DWORD2(v79) = *(v29 + 32);
      v32 = *(a1 + 32);
      v31 = *(a1 + 40);
      if (v32 == v31)
      {
        goto LABEL_100;
      }
    }

    else
    {
      v30 = *(v29 + 8);
      *&v79 = *(v29 + 24);
      v78 = v30;
      DWORD2(v79) = *(v29 + 32);
      v32 = *(a1 + 32);
      v31 = *(a1 + 40);
      if (v32 == v31)
      {
LABEL_100:
        v32 = v31;
        goto LABEL_101;
      }
    }

    v48 = v32;
    while (1)
    {
      v49 = *(v29 + 63);
      if ((v49 & 0x8000000000000000) != 0)
      {
        v50 = *(v29 + 40);
        v49 = *(v29 + 48);
      }

      else
      {
        v50 = (v29 + 40);
      }

      if (sub_2714F3E4C(v48, &v78, v50, v49))
      {
        break;
      }

      v48 += 768;
      v32 += 768;
      if (v48 == v31)
      {
        goto LABEL_100;
      }
    }

LABEL_101:
    if (SBYTE7(v79) < 0)
    {
      operator delete(v78);
    }

    if (v32 == v31)
    {
      goto LABEL_104;
    }
  }
}

void sub_2714CD33C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_27112D71C(&a27);
  if (a24 < 0)
  {
    operator delete(__p);
    sub_27112D71C(v27 - 208);
    _Unwind_Resume(a1);
  }

  sub_27112D71C(v27 - 208);
  _Unwind_Resume(a1);
}

void sub_2714CD3C4(_Unwind_Exception *a1)
{
  if (*(v1 - 185) < 0)
  {
    operator delete(*(v1 - 208));
  }

  _Unwind_Resume(a1);
}

void sub_2714CD3E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v261[25] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 280);
  v5 = 0x86BCA1AF286BCA1BLL * ((*(a1 + 296) - *(a1 + 288)) >> 3);
  if (v4 >= v5 && !*(a1 + 256))
  {
    sub_2714D749C();
  }

  *(a1 + 280) = v4 + 1;
  if (v4 + 1 >= v5)
  {
    sub_2714CBBD0(a1);
  }

  sub_2714CC924(a1);
  v6 = *(a1 + 288) + 152 * v4;
  if (*(v6 + 31) < 0)
  {
    sub_271127178(&v177, *(v6 + 8), *(v6 + 16));
  }

  else
  {
    v7 = *(v6 + 8);
    v178 = *(v6 + 24);
    v177 = v7;
  }

  v179 = *(v6 + 32);
  v8 = *(v6 + 63);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = *(v6 + 40);
    v8 = *(v6 + 48);
    if (*(a1 + 56) != 1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v9 = (v6 + 40);
    if (*(a1 + 56) != 1)
    {
      goto LABEL_18;
    }
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (v10 == v11)
  {
    goto LABEL_15;
  }

  while (!sub_2714F3E4C(v10, &v177, v9, v8))
  {
    v10 += 768;
    if (v10 == v11)
    {
      goto LABEL_15;
    }
  }

  if (v10 == v11)
  {
LABEL_15:
    sub_2714D749C();
  }

LABEL_18:
  v119 = (v6 + 40);
  if (*(a1 + 88) == 1)
  {
    v12 = *(a1 + 64);
    v13 = *(a1 + 72);
    if (v12 != v13)
    {
      while (!sub_2714F3E4C(v12, &v177, v9, v8))
      {
        v12 += 800;
        if (v12 == v13)
        {
          v12 = v13;
          break;
        }
      }

      v13 = *(a1 + 72);
    }

    if (v12 != v13)
    {
      v14 = *(v6 + 63);
      if (v14 < 0)
      {
        v41 = *(v6 + 48);
        v42 = *(a1 + 24);
        *&__dst = *(v6 + 40);
        *(&__dst + 1) = v41;
        v16 = *(v12 + 792);
        if (v16)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v15 = *(a1 + 24);
        *&__dst = v6 + 40;
        *(&__dst + 1) = v14;
        v16 = *(v12 + 792);
        if (v16)
        {
LABEL_27:
          (*(*v16 + 48))(v237);
          if (*(v6 + 63) < 0)
          {
            sub_271127178(&v175, *(v6 + 40), *(v6 + 48));
          }

          else
          {
            v17 = *v119;
            v176 = *(v6 + 56);
            v175 = v17;
          }

          LOBYTE(v172) = 0;
          v174 = 0;
          if (*(v6 + 88) == 1)
          {
            if (*(v6 + 87) < 0)
            {
              sub_271127178(&v172, *(v6 + 64), *(v6 + 72));
            }

            else
            {
              v43 = *(v6 + 64);
              v173 = *(v6 + 80);
              v172 = v43;
            }

            v174 = 1;
            __dst = v175;
            v44 = v176;
            v175 = 0uLL;
            v176 = 0;
            *&v250[1] = v172;
            v250[0] = v44;
            v251 = v173;
            v172 = 0uLL;
            v173 = 0;
            LOBYTE(v252) = 1;
          }

          else
          {
            __dst = v175;
            v250[0] = v176;
            v176 = 0;
            v175 = 0uLL;
            LOBYTE(v250[1]) = 0;
            LOBYTE(v252) = 0;
          }

          v45 = SHIBYTE(v250[0]);
          p_dst = &__dst;
          if (SHIBYTE(v250[0]) < 0)
          {
            p_dst = __dst;
          }

          if (SHIBYTE(v250[0]) < 0)
          {
            v45 = *(&__dst + 1);
          }

          if (!v45)
          {
            goto LABEL_196;
          }

          v47 = p_dst;
          if (v45 < 8)
          {
LABEL_383:
            v66 = (p_dst + v45);
            do
            {
              if (*v47 == 58)
              {
                *v47 = 95;
              }

              v47 = (v47 + 1);
            }

            while (v47 != v66);
            goto LABEL_196;
          }

          if (v45 < 0x10)
          {
            v48 = 0;
            goto LABEL_125;
          }

          v48 = v45 & 0xFFFFFFFFFFFFFFF0;
          v52 = p_dst + 7;
          v53.i64[0] = 0x3A3A3A3A3A3A3A3ALL;
          v53.i64[1] = 0x3A3A3A3A3A3A3A3ALL;
          v54 = v45 & 0xFFFFFFFFFFFFFFF0;
          while (1)
          {
            v55 = vceqq_s8(*(v52 - 7), v53);
            if (v55.i8[0])
            {
              *(v52 - 7) = 95;
              if ((v55.i8[1] & 1) == 0)
              {
                goto LABEL_164;
              }
            }

            else if ((v55.i8[1] & 1) == 0)
            {
LABEL_164:
              if (v55.i8[2])
              {
                goto LABEL_165;
              }

              goto LABEL_181;
            }

            *(v52 - 6) = 95;
            if (v55.i8[2])
            {
LABEL_165:
              *(v52 - 5) = 95;
              if ((v55.i8[3] & 1) == 0)
              {
                goto LABEL_166;
              }

              goto LABEL_182;
            }

LABEL_181:
            if ((v55.i8[3] & 1) == 0)
            {
LABEL_166:
              if (v55.i8[4])
              {
                goto LABEL_167;
              }

              goto LABEL_183;
            }

LABEL_182:
            *(v52 - 4) = 95;
            if (v55.i8[4])
            {
LABEL_167:
              *(v52 - 3) = 95;
              if ((v55.i8[5] & 1) == 0)
              {
                goto LABEL_168;
              }

              goto LABEL_184;
            }

LABEL_183:
            if ((v55.i8[5] & 1) == 0)
            {
LABEL_168:
              if (v55.i8[6])
              {
                goto LABEL_169;
              }

              goto LABEL_185;
            }

LABEL_184:
            *(v52 - 2) = 95;
            if (v55.i8[6])
            {
LABEL_169:
              *(v52 - 1) = 95;
              if ((v55.i8[7] & 1) == 0)
              {
                goto LABEL_170;
              }

              goto LABEL_186;
            }

LABEL_185:
            if ((v55.i8[7] & 1) == 0)
            {
LABEL_170:
              if (v55.i8[8])
              {
                goto LABEL_171;
              }

              goto LABEL_187;
            }

LABEL_186:
            *v52 = 95;
            if (v55.i8[8])
            {
LABEL_171:
              v52[1] = 95;
              if ((v55.i8[9] & 1) == 0)
              {
                goto LABEL_172;
              }

              goto LABEL_188;
            }

LABEL_187:
            if ((v55.i8[9] & 1) == 0)
            {
LABEL_172:
              if (v55.i8[10])
              {
                goto LABEL_173;
              }

              goto LABEL_189;
            }

LABEL_188:
            v52[2] = 95;
            if (v55.i8[10])
            {
LABEL_173:
              v52[3] = 95;
              if ((v55.i8[11] & 1) == 0)
              {
                goto LABEL_174;
              }

              goto LABEL_190;
            }

LABEL_189:
            if ((v55.i8[11] & 1) == 0)
            {
LABEL_174:
              if (v55.i8[12])
              {
                goto LABEL_175;
              }

              goto LABEL_191;
            }

LABEL_190:
            v52[4] = 95;
            if (v55.i8[12])
            {
LABEL_175:
              v52[5] = 95;
              if ((v55.i8[13] & 1) == 0)
              {
                goto LABEL_176;
              }

              goto LABEL_192;
            }

LABEL_191:
            if ((v55.i8[13] & 1) == 0)
            {
LABEL_176:
              if (v55.i8[14])
              {
                goto LABEL_177;
              }

              goto LABEL_193;
            }

LABEL_192:
            v52[6] = 95;
            if (v55.i8[14])
            {
LABEL_177:
              v52[7] = 95;
              if (v55.i8[15])
              {
                goto LABEL_194;
              }

              goto LABEL_161;
            }

LABEL_193:
            if (v55.i8[15])
            {
LABEL_194:
              v52[8] = 95;
            }

LABEL_161:
            v52 += 16;
            v54 -= 16;
            if (!v54)
            {
              if (v45 == v48)
              {
                goto LABEL_196;
              }

              if ((v45 & 8) == 0)
              {
                v47 = (p_dst + v48);
                goto LABEL_383;
              }

LABEL_125:
              v47 = (p_dst + (v45 & 0xFFFFFFFFFFFFFFF8));
              v49 = v48 - (v45 & 0xFFFFFFFFFFFFFFF8);
              v50 = p_dst + v48 + 3;
              while (2)
              {
                v51 = vceq_s8(*(v50 - 3), 0x3A3A3A3A3A3A3A3ALL);
                if (v51.i8[0])
                {
                  *(v50 - 3) = 95;
                  if ((v51.i8[1] & 1) == 0)
                  {
                    goto LABEL_129;
                  }

LABEL_137:
                  *(v50 - 2) = 95;
                  if ((v51.i8[2] & 1) == 0)
                  {
                    goto LABEL_138;
                  }

LABEL_130:
                  *(v50 - 1) = 95;
                  if ((v51.i8[3] & 1) == 0)
                  {
                    goto LABEL_131;
                  }

LABEL_139:
                  *v50 = 95;
                  if ((v51.i8[4] & 1) == 0)
                  {
                    goto LABEL_140;
                  }

LABEL_132:
                  v50[1] = 95;
                  if ((v51.i8[5] & 1) == 0)
                  {
                    goto LABEL_133;
                  }

LABEL_141:
                  v50[2] = 95;
                  if ((v51.i8[6] & 1) == 0)
                  {
                    goto LABEL_142;
                  }

LABEL_134:
                  v50[3] = 95;
                  if (v51.i8[7])
                  {
                    goto LABEL_143;
                  }
                }

                else
                {
                  if (v51.i8[1])
                  {
                    goto LABEL_137;
                  }

LABEL_129:
                  if (v51.i8[2])
                  {
                    goto LABEL_130;
                  }

LABEL_138:
                  if (v51.i8[3])
                  {
                    goto LABEL_139;
                  }

LABEL_131:
                  if (v51.i8[4])
                  {
                    goto LABEL_132;
                  }

LABEL_140:
                  if (v51.i8[5])
                  {
                    goto LABEL_141;
                  }

LABEL_133:
                  if (v51.i8[6])
                  {
                    goto LABEL_134;
                  }

LABEL_142:
                  if (v51.i8[7])
                  {
LABEL_143:
                    v50[4] = 95;
                  }
                }

                v50 += 8;
                v49 += 8;
                if (!v49)
                {
                  if (v45 != (v45 & 0xFFFFFFFFFFFFFFF8))
                  {
                    goto LABEL_383;
                  }

LABEL_196:
                  v170 = off_28810C940;
                  v171 = *&v237[8];
                  if (*&v237[16])
                  {
                    atomic_fetch_add_explicit((*&v237[16] + 8), 1uLL, memory_order_relaxed);
                  }

                  sub_271390BA0();
                }

                continue;
              }
            }
          }
        }
      }

      sub_27112AFFC();
    }
  }

  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v169, *a1, *(a1 + 8));
  }

  else
  {
    v169 = *a1;
  }

  sub_2714D75A8(&v169, (v6 + 96));
  v18 = std::__fs::filesystem::path::__extension((v6 + 96));
  if (v18.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v18.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v250[0]) = v18.__size_;
  if (v18.__size_)
  {
    memmove(&__dst, v18.__data_, v18.__size_);
  }

  *(&v250[-2] + v18.__size_) = 0;
  v168[0] = v250[0];
  *(v168 + 3) = *(v250 + 3);
  v120 = __dst;
  v118 = SHIBYTE(v250[0]);
  if (SHIBYTE(v250[0]) < 0)
  {
    sub_271127178(&__dst, __dst, *(&__dst + 1));
  }

  else
  {
    LODWORD(v250[0]) = v168[0];
    *(v250 + 3) = *(v168 + 3);
  }

  v19 = sub_2714DF79C(&__dst);
  if (SHIBYTE(v250[0]) < 0)
  {
    operator delete(__dst);
  }

  v20 = std::__fs::filesystem::path::__stem(&v169);
  if (v20.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v20.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v250[0]) = v20.__size_;
  if (v20.__size_)
  {
    memmove(&__dst, v20.__data_, v20.__size_);
  }

  *(&v250[-2] + v20.__size_) = 0;
  v21 = *(&__dst + 1);
  v22 = __dst;
  *v237 = v250[0];
  *&v237[3] = *(v250 + 3);
  v23 = SHIBYTE(v250[0]);
  if (SHIBYTE(v250[0]) < 0)
  {
    sub_271127178(&__p, __dst, *(&__dst + 1));
    LOBYTE(v24) = HIBYTE(v261[0]);
    v21 = *(&__p + 1);
  }

  else
  {
    __p = __dst;
    LODWORD(v261[0]) = *v237;
    *(v261 + 3) = *&v237[3];
    HIBYTE(v261[0]) = HIBYTE(v250[0]);
    LOBYTE(v24) = HIBYTE(v250[0]);
  }

  HIBYTE(v250[0]) = 5;
  strcpy(&__dst, "_info");
  v25 = v24;
  if ((v24 & 0x80u) == 0)
  {
    v24 = v24;
  }

  else
  {
    v24 = v21;
  }

  v26 = v24 >= 5;
  v27 = v24 - 5;
  if (!v26)
  {
    v28 = 0;
    if ((v25 & 0x80) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  if ((v25 & 0x80) == 0)
  {
    if (v25 >= v27)
    {
      if (v25 - v27 >= 5)
      {
        v33 = 5;
      }

      else
      {
        v33 = v25 - v27;
      }

      p_p = &__p;
      goto LABEL_86;
    }

LABEL_678:
    sub_271127FEC();
  }

  if (v21 < v27)
  {
    goto LABEL_678;
  }

  if (v21 - v27 >= 5)
  {
    v33 = 5;
  }

  else
  {
    v33 = v21 - v27;
  }

  p_p = __p;
LABEL_86:
  v39 = memcmp(p_p + v27, &__dst, v33);
  v28 = v33 == 5 && v39 == 0;
  if ((v25 & 0x80) != 0)
  {
LABEL_57:
    operator delete(__p);
  }

LABEL_58:
  if ((v23 & 0x80000000) == 0)
  {
    if (v28)
    {
      goto LABEL_60;
    }

LABEL_74:
    v35 = *(v6 + 120);
    v36 = *(a1 + 24);
    v225[0] = v35;
    (*(*v36 + 368))(&v222);
    v37 = a1 + 160;
    if (v223)
    {
      v38 = (*(*v223 + 16))(v223);
      if (v35)
      {
        std::istream::seekg();
      }

      if (v19 > 2)
      {
        if (v19 == 3)
        {
          sub_2714DB1E0(v237, *(v38 + *(*v38 - 24) + 40), 0);
          sub_27181A058(v237);
        }

        if (v19 != 4)
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (v19 == 1)
        {
          *&__p = 1;
          sub_271840E38(&__dst, &__p);
        }

        if (v19 != 2)
        {
          goto LABEL_80;
        }
      }

      LOBYTE(v211) = 0;
      BYTE8(v212) = 0;
      LOBYTE(v197[0]) = 0;
      v198 = 0;
      sub_2714D67F4(&__dst, v38, &v211, v197);
      v193 = &__dst;
      v194 = v37;
      LOBYTE(__p) = 0;
      LOBYTE(v261[14]) = 0;
      v191[0] = &unk_288116A38;
      v191[1] = &__p;
      v191[2] = &v193;
      sub_27184A384(v191, v237);
      if (v247 == 1)
      {
        v236 = v261[13];
        if (LOBYTE(v261[13]) == 1)
        {
          v226[0] = __p;
        }

        else
        {
          *v226 = __p;
          v226[16] = 0;
          v235 = 0;
          if (LOBYTE(v261[12]) == 1)
          {
            v228 = 0;
            if (LOBYTE(v261[3]) == 1)
            {
              *&v226[16] = *v261;
              v227 = v261[2];
              memset(v261, 0, 24);
              v228 = 1;
            }

            LOBYTE(v229) = 0;
            v234 = 0;
            if (LOBYTE(v261[11]) == 1)
            {
              v230 = v261[6];
              v229 = *&v261[4];
              memset(&v261[4], 0, 24);
              v232 = *&v261[8];
              v231 = v261[7];
              v233 = v261[10];
              memset(&v261[8], 0, 24);
              v234 = 1;
            }

            v235 = 1;
          }
        }

        goto LABEL_341;
      }

      v156 = *v237;
      LOBYTE(v157) = 0;
      v166 = 0;
      if (v246 == 1)
      {
        sub_27112F6CC(&v157, &v237[16]);
        v166 = 1;
        *v226 = v156;
        v226[16] = 0;
        v228 = 0;
        if (v159 == 1)
        {
          *&v226[16] = v157;
          v227 = v158;
          v158 = 0;
          v157 = 0uLL;
          v228 = 1;
          LOBYTE(v229) = 0;
          v234 = 0;
          if ((v165 & 1) == 0)
          {
            goto LABEL_158;
          }
        }

        else
        {
          LOBYTE(v229) = 0;
          v234 = 0;
          if ((v165 & 1) == 0)
          {
LABEL_158:
            v235 = 1;
            v236 = 0;
            if (!v159)
            {
              goto LABEL_331;
            }

LABEL_329:
            if (SHIBYTE(v158) < 0)
            {
              operator delete(v157);
            }

            goto LABEL_331;
          }
        }

        v230 = v161;
        v229 = v160;
        v160 = 0uLL;
        v232 = v163;
        v231 = v162;
        v233 = v164;
        v161 = 0;
        v163 = 0uLL;
        v164 = 0;
        v234 = 1;
        v235 = 1;
        v236 = 0;
        if (v159)
        {
          goto LABEL_329;
        }
      }

      else
      {
        *v226 = *v237;
        v226[16] = 0;
        v235 = 0;
        v236 = 0;
      }

LABEL_331:
      if ((v247 & 1) == 0 && v246 == 1)
      {
        if (v245 == 1)
        {
          if (SHIBYTE(v244) < 0)
          {
            operator delete(v243);
          }

          if (SHIBYTE(v241) < 0)
          {
            operator delete(v240);
          }
        }

        if (v239 == 1 && SHIBYTE(v238) < 0)
        {
          operator delete(*&v237[16]);
        }
      }

LABEL_341:
      if (LOBYTE(v261[14]) == 1 && (v261[13] & 1) == 0 && LOBYTE(v261[12]) == 1)
      {
        if (LOBYTE(v261[11]) == 1)
        {
          if (SHIBYTE(v261[10]) < 0)
          {
            operator delete(v261[8]);
          }

          if (SHIBYTE(v261[6]) < 0)
          {
            operator delete(v261[4]);
          }
        }

        if (LOBYTE(v261[3]) == 1 && SHIBYTE(v261[2]) < 0)
        {
          operator delete(v261[0]);
        }
      }

      if (v236 == 1)
      {
        if (v226[0] == 1)
        {
          v210 = v226[0];
          goto LABEL_367;
        }

        sub_27183DFEC(&__dst, &__p);
      }

      else
      {
        sub_27183DDF8(v226, &__p);
      }

      v199 = __p;
      LOBYTE(v200) = 0;
      v209 = 0;
      if (LOBYTE(v261[12]) != 1)
      {
        v210 = 0;
        goto LABEL_367;
      }

      v202 = 0;
      if (LOBYTE(v261[3]) == 1)
      {
        v200 = *v261;
        v201 = v261[2];
        memset(v261, 0, 24);
        v202 = 1;
        LOBYTE(v203) = 0;
        v208 = 0;
        if ((v261[11] & 1) == 0)
        {
          goto LABEL_360;
        }
      }

      else
      {
        LOBYTE(v203) = 0;
        v208 = 0;
        if ((v261[11] & 1) == 0)
        {
LABEL_360:
          v209 = 1;
          v210 = 0;
          if (!LOBYTE(v261[3]))
          {
            goto LABEL_367;
          }

LABEL_365:
          if (SHIBYTE(v261[2]) < 0)
          {
            operator delete(v261[0]);
          }

LABEL_367:
          if ((v236 & 1) == 0 && v235 == 1)
          {
            if (v234 == 1)
            {
              if (SHIBYTE(v233) < 0)
              {
                operator delete(v232);
              }

              if (SHIBYTE(v230) < 0)
              {
                operator delete(v229);
              }
            }

            if (v228 == 1 && SHIBYTE(v227) < 0)
            {
              operator delete(*&v226[16]);
            }
          }

          if ((v210 & 1) == 0)
          {
            sub_271847E00(&v199, &v156);
            sub_2714D98B4();
          }

          sub_27183D4A0(&__dst);
          v190 = 1;
          v65 = v224;
          if (!v224)
          {
            goto LABEL_472;
          }

          goto LABEL_471;
        }
      }

      v204 = v261[6];
      v203 = *&v261[4];
      memset(&v261[4], 0, 24);
      v206 = *&v261[8];
      v205 = v261[7];
      v207 = v261[10];
      memset(&v261[8], 0, 24);
      v208 = 1;
      v209 = 1;
      v210 = 0;
      if (!LOBYTE(v261[3]))
      {
        goto LABEL_367;
      }

      goto LABEL_365;
    }

    if (SHIBYTE(v169.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_271127178(v237, v169.__pn_.__r_.__value_.__l.__data_, v169.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      *v237 = v169;
    }

    v60 = std::string::insert(v237, 0, "Failed to open file for reading: ", 0x21uLL);
    v62 = v60->__r_.__value_.__r.__words[0];
    size = v60->__r_.__value_.__l.__size_;
    *v226 = v60->__r_.__value_.__r.__words[2];
    *&v226[3] = *(&v60->__r_.__value_.__r.__words[2] + 3);
    v63 = SHIBYTE(v60->__r_.__value_.__r.__words[2]);
    v60->__r_.__value_.__l.__size_ = 0;
    v60->__r_.__value_.__r.__words[2] = 0;
    v60->__r_.__value_.__r.__words[0] = 0;
    if (v63 < 0)
    {
      sub_271127178(&__p, v62, size);
    }

    else
    {
      *&__p = v62;
      *(&__p + 1) = size;
      LODWORD(v261[0]) = *v226;
      *(v261 + 3) = *&v226[3];
      HIBYTE(v261[0]) = v63;
    }

    LOBYTE(v261[1]) = 1;
    LOBYTE(v261[2]) = 0;
    LOBYTE(v261[9]) = 0;
    LOBYTE(v261[10]) = 1;
    sub_27139F524(2u, &__p, &__dst);
    *v180 = __dst;
    v180[16] = 0;
    v189 = 0;
    if (v258 != 1)
    {
      v190 = 0;
      goto LABEL_240;
    }

    v182 = 0;
    if (v251 == 1)
    {
      *&v180[16] = *v250;
      v181 = v250[2];
      memset(v250, 0, sizeof(v250));
      v182 = 1;
      LOBYTE(v183) = 0;
      v188 = 0;
      if ((v257 & 1) == 0)
      {
        goto LABEL_233;
      }
    }

    else
    {
      LOBYTE(v183) = 0;
      v188 = 0;
      if ((v257 & 1) == 0)
      {
LABEL_233:
        v189 = 1;
        v190 = 0;
        if (!v251)
        {
          goto LABEL_240;
        }

        goto LABEL_238;
      }
    }

    v184 = v253;
    v183 = v252;
    v252 = 0uLL;
    v186 = v255;
    v185 = v254;
    v187 = v256;
    v253 = 0;
    v255 = 0uLL;
    v256 = 0;
    v188 = 1;
    v189 = 1;
    v190 = 0;
    if (!v251)
    {
      goto LABEL_240;
    }

LABEL_238:
    if (SHIBYTE(v250[2]) < 0)
    {
      operator delete(v250[0]);
    }

LABEL_240:
    if (LOBYTE(v261[10]) == 1)
    {
      if (LOBYTE(v261[9]) == 1)
      {
        if (SHIBYTE(v261[8]) < 0)
        {
          operator delete(v261[6]);
        }

        if (SHIBYTE(v261[4]) < 0)
        {
          operator delete(v261[2]);
        }
      }

      if (LOBYTE(v261[1]) == 1 && SHIBYTE(v261[0]) < 0)
      {
        operator delete(__p);
      }
    }

    if (v63 < 0)
    {
      operator delete(v62);
      if ((v237[23] & 0x80000000) == 0)
      {
LABEL_251:
        v65 = v224;
        if (!v224)
        {
          goto LABEL_472;
        }

LABEL_471:
        if (!atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v65->__on_zero_shared)(v65);
          std::__shared_weak_count::__release_weak(v65);
          if (v190)
          {
LABEL_473:
            sub_27139AAF0(v37, v226);
            v89 = *&v226[8];
            if (*&v226[16])
            {
              atomic_fetch_add_explicit((*&v226[16] + 8), 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add((*(&v89 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (*(**(&v89 + 1) + 16))(*(&v89 + 1));
                std::__shared_weak_count::__release_weak(*(&v89 + 1));
              }
            }

            if (!v89)
            {
              *&v237[24] = 0;
              *&__p = v237;
              *(&__p + 1) = "Failed to load sequence entry ";
              v261[0] = v237;
              v261[1] = "Failed to load sequence entry ";
              v261[2] = "Failed to load sequence entry ";
              *v180 = &__p;
              sub_2711FE8BC(v180);
              sub_2714DDDF0();
            }

            if (*(v6 + 63) < 0)
            {
              sub_271127178(v124, *(v6 + 40), *(v6 + 48));
            }

            else
            {
              v90 = *v119;
              v125 = *(v6 + 56);
              *v124 = v90;
            }

            LOBYTE(v121[0]) = 0;
            v123 = 0;
            if (*(v6 + 88) == 1)
            {
              if (*(v6 + 87) < 0)
              {
                sub_271127178(v121, *(v6 + 64), *(v6 + 72));
              }

              else
              {
                v91 = *(v6 + 64);
                v122 = *(v6 + 80);
                *v121 = v91;
              }

              v123 = 1;
              __dst = *v124;
              v92 = v125;
              v124[0] = 0;
              v124[1] = 0;
              v125 = 0;
              *&v250[1] = *v121;
              v250[0] = v92;
              v251 = v122;
              v121[0] = 0;
              v121[1] = 0;
              v122 = 0;
              LOBYTE(v252) = 1;
            }

            else
            {
              __dst = *v124;
              v250[0] = v125;
              v124[1] = 0;
              v125 = 0;
              v124[0] = 0;
              LOBYTE(v250[1]) = 0;
              LOBYTE(v252) = 0;
            }

            v93 = SHIBYTE(v250[0]);
            v94 = &__dst;
            if (SHIBYTE(v250[0]) < 0)
            {
              v94 = __dst;
            }

            if (SHIBYTE(v250[0]) < 0)
            {
              v93 = *(&__dst + 1);
            }

            if (!v93)
            {
              goto LABEL_554;
            }

            v95 = v94;
            if (v93 < 8)
            {
LABEL_588:
              v107 = (v94 + v93);
              do
              {
                if (*v95 == 58)
                {
                  *v95 = 95;
                }

                v95 = (v95 + 1);
              }

              while (v95 != v107);
              goto LABEL_554;
            }

            if (v93 < 0x10)
            {
              v96 = 0;
              goto LABEL_497;
            }

            v96 = v93 & 0xFFFFFFFFFFFFFFF0;
            v100 = v94 + 7;
            v101.i64[0] = 0x3A3A3A3A3A3A3A3ALL;
            v101.i64[1] = 0x3A3A3A3A3A3A3A3ALL;
            v102 = v93 & 0xFFFFFFFFFFFFFFF0;
            while (1)
            {
              v103 = vceqq_s8(*(v100 - 7), v101);
              if (v103.i8[0])
              {
                *(v100 - 7) = 95;
                if ((v103.i8[1] & 1) == 0)
                {
                  goto LABEL_522;
                }
              }

              else if ((v103.i8[1] & 1) == 0)
              {
LABEL_522:
                if (v103.i8[2])
                {
                  goto LABEL_523;
                }

                goto LABEL_539;
              }

              *(v100 - 6) = 95;
              if (v103.i8[2])
              {
LABEL_523:
                *(v100 - 5) = 95;
                if ((v103.i8[3] & 1) == 0)
                {
                  goto LABEL_524;
                }

                goto LABEL_540;
              }

LABEL_539:
              if ((v103.i8[3] & 1) == 0)
              {
LABEL_524:
                if (v103.i8[4])
                {
                  goto LABEL_525;
                }

                goto LABEL_541;
              }

LABEL_540:
              *(v100 - 4) = 95;
              if (v103.i8[4])
              {
LABEL_525:
                *(v100 - 3) = 95;
                if ((v103.i8[5] & 1) == 0)
                {
                  goto LABEL_526;
                }

                goto LABEL_542;
              }

LABEL_541:
              if ((v103.i8[5] & 1) == 0)
              {
LABEL_526:
                if (v103.i8[6])
                {
                  goto LABEL_527;
                }

                goto LABEL_543;
              }

LABEL_542:
              *(v100 - 2) = 95;
              if (v103.i8[6])
              {
LABEL_527:
                *(v100 - 1) = 95;
                if ((v103.i8[7] & 1) == 0)
                {
                  goto LABEL_528;
                }

                goto LABEL_544;
              }

LABEL_543:
              if ((v103.i8[7] & 1) == 0)
              {
LABEL_528:
                if (v103.i8[8])
                {
                  goto LABEL_529;
                }

                goto LABEL_545;
              }

LABEL_544:
              *v100 = 95;
              if (v103.i8[8])
              {
LABEL_529:
                v100[1] = 95;
                if ((v103.i8[9] & 1) == 0)
                {
                  goto LABEL_530;
                }

                goto LABEL_546;
              }

LABEL_545:
              if ((v103.i8[9] & 1) == 0)
              {
LABEL_530:
                if (v103.i8[10])
                {
                  goto LABEL_531;
                }

                goto LABEL_547;
              }

LABEL_546:
              v100[2] = 95;
              if (v103.i8[10])
              {
LABEL_531:
                v100[3] = 95;
                if ((v103.i8[11] & 1) == 0)
                {
                  goto LABEL_532;
                }

                goto LABEL_548;
              }

LABEL_547:
              if ((v103.i8[11] & 1) == 0)
              {
LABEL_532:
                if (v103.i8[12])
                {
                  goto LABEL_533;
                }

                goto LABEL_549;
              }

LABEL_548:
              v100[4] = 95;
              if (v103.i8[12])
              {
LABEL_533:
                v100[5] = 95;
                if ((v103.i8[13] & 1) == 0)
                {
                  goto LABEL_534;
                }

                goto LABEL_550;
              }

LABEL_549:
              if ((v103.i8[13] & 1) == 0)
              {
LABEL_534:
                if (v103.i8[14])
                {
                  goto LABEL_535;
                }

                goto LABEL_551;
              }

LABEL_550:
              v100[6] = 95;
              if (v103.i8[14])
              {
LABEL_535:
                v100[7] = 95;
                if (v103.i8[15])
                {
                  goto LABEL_552;
                }

                goto LABEL_519;
              }

LABEL_551:
              if (v103.i8[15])
              {
LABEL_552:
                v100[8] = 95;
              }

LABEL_519:
              v100 += 16;
              v102 -= 16;
              if (!v102)
              {
                if (v93 == v96)
                {
                  goto LABEL_554;
                }

                if ((v93 & 8) == 0)
                {
                  v95 = (v94 + v96);
                  goto LABEL_588;
                }

LABEL_497:
                v95 = (v94 + (v93 & 0xFFFFFFFFFFFFFFF8));
                v97 = v96 - (v93 & 0xFFFFFFFFFFFFFFF8);
                v98 = v94 + v96 + 3;
                while (2)
                {
                  v99 = vceq_s8(*(v98 - 3), 0x3A3A3A3A3A3A3A3ALL);
                  if (v99.i8[0])
                  {
                    *(v98 - 3) = 95;
                    if ((v99.i8[1] & 1) == 0)
                    {
                      goto LABEL_501;
                    }

LABEL_509:
                    *(v98 - 2) = 95;
                    if ((v99.i8[2] & 1) == 0)
                    {
                      goto LABEL_510;
                    }

LABEL_502:
                    *(v98 - 1) = 95;
                    if ((v99.i8[3] & 1) == 0)
                    {
                      goto LABEL_503;
                    }

LABEL_511:
                    *v98 = 95;
                    if ((v99.i8[4] & 1) == 0)
                    {
                      goto LABEL_512;
                    }

LABEL_504:
                    v98[1] = 95;
                    if ((v99.i8[5] & 1) == 0)
                    {
                      goto LABEL_505;
                    }

LABEL_513:
                    v98[2] = 95;
                    if ((v99.i8[6] & 1) == 0)
                    {
                      goto LABEL_514;
                    }

LABEL_506:
                    v98[3] = 95;
                    if (v99.i8[7])
                    {
                      goto LABEL_515;
                    }
                  }

                  else
                  {
                    if (v99.i8[1])
                    {
                      goto LABEL_509;
                    }

LABEL_501:
                    if (v99.i8[2])
                    {
                      goto LABEL_502;
                    }

LABEL_510:
                    if (v99.i8[3])
                    {
                      goto LABEL_511;
                    }

LABEL_503:
                    if (v99.i8[4])
                    {
                      goto LABEL_504;
                    }

LABEL_512:
                    if (v99.i8[5])
                    {
                      goto LABEL_513;
                    }

LABEL_505:
                    if (v99.i8[6])
                    {
                      goto LABEL_506;
                    }

LABEL_514:
                    if (v99.i8[7])
                    {
LABEL_515:
                      v98[4] = 95;
                    }
                  }

                  v98 += 8;
                  v97 += 8;
                  if (!v97)
                  {
                    if (v93 != (v93 & 0xFFFFFFFFFFFFFFF8))
                    {
                      goto LABEL_588;
                    }

LABEL_554:
                    *&v226[8] = 0uLL;
                    sub_271390BA0();
                  }

                  continue;
                }
              }
            }
          }

LABEL_480:
          *&v226[24] = 0;
          *v237 = v226;
          *&v237[8] = "while loading sequence entry ";
          *&v237[16] = v226;
          *&v237[24] = "while loading sequence entry ";
          v238 = "while loading sequence entry ";
          *&v156 = v237;
          sub_2712390A4(&v156);
          sub_2714DDDF0();
        }

LABEL_472:
        if (v190)
        {
          goto LABEL_473;
        }

        goto LABEL_480;
      }
    }

    else if ((v237[23] & 0x80000000) == 0)
    {
      goto LABEL_251;
    }

    operator delete(*v237);
    v65 = v224;
    if (!v224)
    {
      goto LABEL_472;
    }

    goto LABEL_471;
  }

  operator delete(v22);
  if (!v28)
  {
    goto LABEL_74;
  }

LABEL_60:
  LOBYTE(__p) = 0;
  memset(v261 + 7, 0, 112);
  memset(&v261[14] + 7, 0, 32);
  memset(&v261[18] + 7, 0, 32);
  *&v261[22] = 0u;
  v29 = *(v6 + 120);
  v30 = *(a1 + 24);
  v196 = v29;
  v31 = v120;
  (*(*v30 + 368))(&v193);
  if (!v194)
  {
    if (SHIBYTE(v169.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_271127178(v226, v169.__pn_.__r_.__value_.__l.__data_, v169.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      *v226 = v169;
    }

    v56 = std::string::insert(v226, 0, "Failed to open file for reading: ", 0x21uLL);
    v58 = v56->__r_.__value_.__r.__words[0];
    v57 = v56->__r_.__value_.__l.__size_;
    LODWORD(v199) = v56->__r_.__value_.__r.__words[2];
    *(&v199 + 3) = *(&v56->__r_.__value_.__r.__words[2] + 3);
    v59 = SHIBYTE(v56->__r_.__value_.__r.__words[2]);
    v56->__r_.__value_.__l.__size_ = 0;
    v56->__r_.__value_.__r.__words[2] = 0;
    v56->__r_.__value_.__r.__words[0] = 0;
    if (v59 < 0)
    {
      sub_271127178(v237, v58, v57);
    }

    else
    {
      *v237 = v58;
      *&v237[8] = v57;
      *&v237[16] = v199;
      *&v237[19] = *(&v199 + 3);
      v237[23] = v59;
    }

    v237[24] = 1;
    LOBYTE(v238) = 0;
    BYTE8(v243) = 0;
    LOBYTE(v244) = 1;
    sub_27139F524(2u, v237, &__dst);
    v156 = __dst;
    LOBYTE(v157) = 0;
    v166 = 0;
    if (v258 != 1)
    {
      v167 = 0;
      goto LABEL_216;
    }

    v159 = 0;
    if (v251 == 1)
    {
      v157 = *v250;
      v158 = v250[2];
      memset(v250, 0, sizeof(v250));
      v159 = 1;
      LOBYTE(v160) = 0;
      v165 = 0;
      if ((v257 & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    else
    {
      LOBYTE(v160) = 0;
      v165 = 0;
      if ((v257 & 1) == 0)
      {
LABEL_209:
        v166 = 1;
        v167 = 0;
        if (!v251)
        {
          goto LABEL_216;
        }

        goto LABEL_214;
      }
    }

    v161 = v253;
    v160 = v252;
    v252 = 0uLL;
    v163 = v255;
    v162 = v254;
    v164 = v256;
    v253 = 0;
    v255 = 0uLL;
    v256 = 0;
    v165 = 1;
    v166 = 1;
    v167 = 0;
    if (!v251)
    {
      goto LABEL_216;
    }

LABEL_214:
    if (SHIBYTE(v250[2]) < 0)
    {
      operator delete(v250[0]);
    }

LABEL_216:
    if (v244 == 1)
    {
      if (BYTE8(v243) == 1)
      {
        if (SBYTE7(v243) < 0)
        {
          operator delete(v241);
        }

        if (SBYTE7(v240) < 0)
        {
          operator delete(v238);
        }
      }

      if (v237[24] == 1 && (v237[23] & 0x80000000) != 0)
      {
        operator delete(*v237);
      }
    }

    if (v59 < 0)
    {
      operator delete(v58);
      if ((v226[23] & 0x80000000) == 0)
      {
LABEL_227:
        v64 = v195;
        if (!v195)
        {
          goto LABEL_388;
        }

        goto LABEL_387;
      }
    }

    else if ((v226[23] & 0x80000000) == 0)
    {
      goto LABEL_227;
    }

    operator delete(*v226);
    v64 = v195;
    if (!v195)
    {
      goto LABEL_388;
    }

    goto LABEL_387;
  }

  v32 = (*(*v194 + 16))(v194);
  if (v29)
  {
    std::istream::seekg();
  }

  if (v19 > 2)
  {
    if (v19 == 3)
    {
      sub_2714DB1E0(v237, *(v32 + *(*v32 - 24) + 40), 0);
      sub_27181A058(v237);
    }

    if (v19 == 4)
    {
      goto LABEL_107;
    }

LABEL_80:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/FileIO.cpp", 684, "", 0, "Format cannot be loaded", 0x17uLL, sub_271852CA8);
    abort();
  }

  if (v19 == 1)
  {
    *v237 = 1;
    sub_271840E38(&__dst, v237);
  }

  if (v19 != 2)
  {
    goto LABEL_80;
  }

LABEL_107:
  LOBYTE(v197[0]) = 0;
  v198 = 0;
  LOBYTE(v191[0]) = 0;
  v192 = 0;
  sub_2714D67F4(&__dst, v32, v197, v191);
  v225[0] = &__dst;
  v225[1] = &__p;
  v237[0] = 0;
  v248 = 0;
  v222 = &unk_288116A10;
  v223 = v237;
  v224 = v225;
  sub_27184A384(&v222, v226);
  if (v236 == 1)
  {
    v210 = v247;
    if (v247 == 1)
    {
      LOBYTE(v199) = v237[0];
    }

    else
    {
      v199 = *v237;
      LOBYTE(v200) = 0;
      v209 = 0;
      if (v246 == 1)
      {
        v202 = 0;
        if (v239 == 1)
        {
          v200 = *&v237[16];
          v201 = v238;
          *&v237[24] = 0;
          v238 = 0;
          *&v237[16] = 0;
          v202 = 1;
        }

        LOBYTE(v203) = 0;
        v208 = 0;
        if (v245 == 1)
        {
          v204 = v241;
          v203 = v240;
          v240 = 0uLL;
          v206 = v243;
          v205 = v242;
          v207 = v244;
          v241 = 0;
          v243 = 0uLL;
          v244 = 0;
          v208 = 1;
        }

        v209 = 1;
      }
    }

    goto LABEL_287;
  }

  v211 = *v226;
  LOBYTE(v212) = 0;
  v221 = 0;
  if (v235 == 1)
  {
    sub_27112F6CC(&v212, &v226[16]);
    v221 = 1;
    v199 = v211;
    LOBYTE(v200) = 0;
    v202 = 0;
    if (v214 == 1)
    {
      v200 = v212;
      v201 = v213;
      v213 = 0;
      v212 = 0uLL;
      v202 = 1;
      LOBYTE(v203) = 0;
      v208 = 0;
      if ((v220 & 1) == 0)
      {
        goto LABEL_153;
      }
    }

    else
    {
      LOBYTE(v203) = 0;
      v208 = 0;
      if ((v220 & 1) == 0)
      {
LABEL_153:
        v209 = 1;
        v210 = 0;
        if (!v214)
        {
          goto LABEL_277;
        }

LABEL_275:
        if (SHIBYTE(v213) < 0)
        {
          operator delete(v212);
        }

        goto LABEL_277;
      }
    }

    v204 = v216;
    v203 = v215;
    v215 = 0uLL;
    v206 = v218;
    v205 = v217;
    v207 = v219;
    v216 = 0;
    v218 = 0uLL;
    v219 = 0;
    v208 = 1;
    v209 = 1;
    v210 = 0;
    if (v214)
    {
      goto LABEL_275;
    }
  }

  else
  {
    v199 = *v226;
    LOBYTE(v200) = 0;
    v209 = 0;
    v210 = 0;
  }

LABEL_277:
  if ((v236 & 1) == 0 && v235 == 1)
  {
    if (v234 == 1)
    {
      if (SHIBYTE(v233) < 0)
      {
        operator delete(v232);
      }

      if (SHIBYTE(v230) < 0)
      {
        operator delete(v229);
      }
    }

    if (v228 == 1 && SHIBYTE(v227) < 0)
    {
      operator delete(*&v226[16]);
    }
  }

LABEL_287:
  if (v248 == 1 && (v247 & 1) == 0 && v246 == 1)
  {
    if (v245 == 1)
    {
      if (SHIBYTE(v244) < 0)
      {
        operator delete(v243);
      }

      if (SHIBYTE(v241) < 0)
      {
        operator delete(v240);
      }
    }

    if (v239 == 1 && SHIBYTE(v238) < 0)
    {
      operator delete(*&v237[16]);
    }
  }

  if (v210 == 1)
  {
    if (v199 == 1)
    {
      v190 = v199;
      goto LABEL_313;
    }

    sub_27183DFEC(&__dst, v237);
  }

  else
  {
    sub_27183DDF8(&v199, v237);
  }

  *v180 = *v237;
  v180[16] = 0;
  v189 = 0;
  if (v246 != 1)
  {
    v190 = 0;
    goto LABEL_313;
  }

  v182 = 0;
  if (v239 == 1)
  {
    *&v180[16] = *&v237[16];
    v181 = v238;
    *&v237[24] = 0;
    v238 = 0;
    *&v237[16] = 0;
    v182 = 1;
    LOBYTE(v183) = 0;
    v188 = 0;
    if ((v245 & 1) == 0)
    {
      goto LABEL_306;
    }

LABEL_310:
    v184 = v241;
    v183 = v240;
    v240 = 0uLL;
    v186 = v243;
    v185 = v242;
    v187 = v244;
    v241 = 0;
    v243 = 0uLL;
    v244 = 0;
    v188 = 1;
    v189 = 1;
    v190 = 0;
    if (!v239)
    {
      goto LABEL_313;
    }

    goto LABEL_311;
  }

  LOBYTE(v183) = 0;
  v188 = 0;
  if (v245)
  {
    goto LABEL_310;
  }

LABEL_306:
  v189 = 1;
  v190 = 0;
  if (!v239)
  {
    goto LABEL_313;
  }

LABEL_311:
  if (SHIBYTE(v238) < 0)
  {
    operator delete(*&v237[16]);
  }

LABEL_313:
  if ((v210 & 1) == 0 && v209 == 1)
  {
    if (v208 == 1)
    {
      if (SHIBYTE(v207) < 0)
      {
        operator delete(v206);
      }

      if (SHIBYTE(v204) < 0)
      {
        operator delete(v203);
      }
    }

    if (v202 == 1 && SHIBYTE(v201) < 0)
    {
      operator delete(v200);
    }
  }

  if ((v190 & 1) == 0)
  {
    sub_271847E00(v180, &v211);
    sub_2714D98B4();
  }

  sub_27183D4A0(&__dst);
  v167 = 1;
  v64 = v195;
  if (!v195)
  {
LABEL_388:
    if (v167)
    {
      goto LABEL_389;
    }

    goto LABEL_403;
  }

LABEL_387:
  if (atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_388;
  }

  (v64->__on_zero_shared)(v64);
  std::__shared_weak_count::__release_weak(v64);
  if (v167)
  {
LABEL_389:
    v67 = std::__fs::filesystem::path::__parent_path(&v169);
    if (v67.__size_ > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    if (v67.__size_ >= 0x17)
    {
      operator new();
    }

    HIBYTE(v250[0]) = v67.__size_;
    if (v67.__size_)
    {
      memmove(&__dst, v67.__data_, v67.__size_);
    }

    *(&v250[-2] + v67.__size_) = 0;
    v68 = __dst;
    *v237 = v250[0];
    *&v237[3] = *(v250 + 3);
    v69 = SHIBYTE(v261[0]);
    if (SHIBYTE(v261[0]) >= 0)
    {
      v70 = &__p;
    }

    else
    {
      v70 = __p;
    }

    v71 = SHIBYTE(v250[0]);
    __dst = 0uLL;
    v250[0] = 0;
    if (SHIBYTE(v261[0]) < 0)
    {
      v69 = *(&__p + 1);
    }

    sub_271171230(&__dst, v70, v70 + v69);
    if (v71 < 0)
    {
      sub_271127178(v226, v68, *(&v68 + 1));
    }

    else
    {
      *v226 = v68;
      *&v226[16] = *v237;
      *&v226[19] = *&v237[3];
      v226[23] = v71;
    }

    sub_2714D75A8(v226, &__dst);
    if (SHIBYTE(v250[0]) < 0)
    {
      operator delete(__dst);
    }

    if (v71 < 0)
    {
      operator delete(v68);
    }

    v76 = std::__fs::filesystem::path::__extension(v226);
    if (v76.__size_ > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    if (v76.__size_ >= 0x17)
    {
      operator new();
    }

    HIBYTE(v250[0]) = v76.__size_;
    if (v76.__size_)
    {
      memmove(&__dst, v76.__data_, v76.__size_);
    }

    *(&v250[-2] + v76.__size_) = 0;
    v77 = __dst;
    LODWORD(v197[0]) = v250[0];
    *(v197 + 3) = *(v250 + 3);
    v78 = SHIBYTE(v250[0]);
    *&v200 = 0;
    *&v199 = off_28810C940;
    *(&v199 + 1) = 0;
    v79 = HIBYTE(v178);
    if (v178 < 0)
    {
      v79 = *(&v177 + 1);
    }

    if (v79 == 8)
    {
      v80 = v177;
      if (v178 >= 0)
      {
        v80 = &v177;
      }

      if (*v80 == *"cv3d.viz" && v179 == 1)
      {
        if (SHIBYTE(v250[0]) < 0)
        {
          sub_271127178(&__dst, __dst, *(&__dst + 1));
          v83 = HIBYTE(v250[0]);
          v81 = *(&__dst + 1);
          v82 = __dst;
        }

        else
        {
          LODWORD(v250[0]) = v197[0];
          *(v250 + 3) = *(v197 + 3);
          v81 = *(&__dst + 1);
          v82 = __dst;
          v83 = HIBYTE(v250[0]);
        }

        v74 = v118;
        if ((v83 & 0x80u) == 0)
        {
          v104 = &__dst;
        }

        else
        {
          v104 = v82;
        }

        if ((v83 & 0x80u) == 0)
        {
          v105 = v83;
        }

        else
        {
          v105 = v81;
        }

        v106 = sub_2715E6BF4(v104, v105);
        if (SHIBYTE(v250[0]) < 0)
        {
          operator delete(__dst);
        }

        if ((v106 & 0x100000000) != 0)
        {
          (*(**(a1 + 24) + 368))(v180);
          if (*&v180[8])
          {
            (*(**&v180[8] + 16))(*&v180[8]);
            sub_2713BE068();
          }

          if (SHIBYTE(v169.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_271127178(&v211, v169.__pn_.__r_.__value_.__l.__data_, v169.__pn_.__r_.__value_.__l.__size_);
          }

          else
          {
            v211 = *&v169.__pn_.__r_.__value_.__l.__data_;
            *&v212 = *(&v169.__pn_.__r_.__value_.__l + 2);
          }

          sub_2714D199C("Failed to open file for reading: ", &v211, v237);
          if ((v237[23] & 0x80000000) != 0)
          {
            sub_271127178(&v144, *v237, *&v237[8]);
          }

          else
          {
            v144 = *v237;
            v145 = *&v237[16];
          }

          v146 = 1;
          v147 = 0;
          v148 = 0;
          v149 = 1;
          sub_27139F524(2u, &v144, &__dst);
          sub_271238E60(a2, &__dst);
          sub_27112D71C(&__dst);
          sub_27112D66C(&v144);
          if ((v237[23] & 0x80000000) != 0)
          {
            operator delete(*v237);
          }

          if (SBYTE7(v212) < 0)
          {
            operator delete(v211);
          }

          sub_2717254C8(v180);
          goto LABEL_630;
        }

        if (v78 < 0)
        {
          sub_271127178(v180, v77, *(&v77 + 1));
        }

        else
        {
          *v180 = v77;
          *&v180[16] = v197[0];
          *&v180[19] = *(v197 + 3);
          v180[23] = v78;
        }

        sub_2714D199C("Unknown image extension: ", v180, v237);
        if ((v237[23] & 0x80000000) != 0)
        {
          sub_271127178(&v150, *v237, *&v237[8]);
        }

        else
        {
          v150 = *v237;
          v151 = *&v237[16];
        }

        v152 = 1;
        v153 = 0;
        v154 = 0;
        v155 = 1;
        sub_27139F524(0xDu, &v150, &__dst);
        sub_271238E60(a2, &__dst);
        sub_27112D71C(&__dst);
        v111 = &v150;
LABEL_617:
        sub_27112D66C(v111);
        if ((v237[23] & 0x80000000) != 0)
        {
          operator delete(*v237);
        }

        if ((v180[23] & 0x80000000) != 0)
        {
          operator delete(*v180);
        }

LABEL_630:
        v112 = v200;
        if (v200 && !atomic_fetch_add((v200 + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v112->__on_zero_shared)(v112);
          std::__shared_weak_count::__release_weak(v112);
        }

        if (v78 < 0)
        {
          operator delete(v77);
        }

        if ((v226[23] & 0x80000000) != 0)
        {
          operator delete(*v226);
        }

        v31 = v120;
        goto LABEL_638;
      }

      if (*v80 == *"cv3d.viz" && v179 == 7)
      {
        if (SHIBYTE(v250[0]) < 0)
        {
          v74 = v118;
          sub_271127178(&__dst, __dst, *(&__dst + 1));
        }

        else
        {
          LODWORD(v250[0]) = v197[0];
          *(v250 + 3) = *(v197 + 3);
          v74 = v118;
        }

        v108 = sub_27171CE28(&__dst);
        if (SHIBYTE(v250[0]) < 0)
        {
          v109 = v108;
          operator delete(__dst);
          v108 = v109;
        }

        if ((v108 & 0x100000000) != 0)
        {
          v110 = sub_27171CBE8(1uLL);
          if ((v226[23] & 0x80000000) != 0)
          {
            sub_271127178(&v136, *v226, *&v226[8]);
          }

          else
          {
            v136 = *v226;
            v137 = *&v226[16];
          }

          sub_27171EACC(&v136, 0, v110, *(a1 + 24), &__dst);
          if (SHIBYTE(v137) < 0)
          {
            operator delete(v136);
          }

          if (v259)
          {
            sub_2713A3334(&v261[2], v237);
            sub_2714DC240();
          }

          sub_27112B400(v180, "Failed to load mesh ");
          sub_2714D1A80(&__dst);
          sub_271849FC4(v180, &__dst, v237);
          sub_27139601C(v237);
        }

        if (v78 < 0)
        {
          sub_271127178(v180, v77, *(&v77 + 1));
        }

        else
        {
          *v180 = v77;
          *&v180[16] = v197[0];
          *&v180[19] = *(v197 + 3);
          v180[23] = v78;
        }

        sub_2714D199C("Unknown mesh extension: ", v180, v237);
        if ((v237[23] & 0x80000000) != 0)
        {
          sub_271127178(&v138, *v237, *&v237[8]);
        }

        else
        {
          v138 = *v237;
          v139 = *&v237[16];
        }

        v140 = 1;
        v141 = 0;
        v142 = 0;
        v143 = 1;
        sub_27139F524(0xDu, &v138, &__dst);
        sub_271238E60(a2, &__dst);
        sub_27112D71C(&__dst);
        v111 = &v138;
        goto LABEL_617;
      }
    }

    if (SHIBYTE(v169.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_271127178(v237, v169.__pn_.__r_.__value_.__l.__data_, v169.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      *v237 = v169;
    }

    v84 = std::string::insert(v237, 0, "Unexpected info file ", 0x15uLL);
    v86 = v84->__r_.__value_.__r.__words[0];
    v85 = v84->__r_.__value_.__l.__size_;
    *v180 = v84->__r_.__value_.__r.__words[2];
    *&v180[3] = *(&v84->__r_.__value_.__r.__words[2] + 3);
    v87 = SHIBYTE(v84->__r_.__value_.__r.__words[2]);
    v84->__r_.__value_.__l.__size_ = 0;
    v84->__r_.__value_.__r.__words[2] = 0;
    v84->__r_.__value_.__r.__words[0] = 0;
    if (v87 < 0)
    {
      sub_271127178(v126, v86, v85);
    }

    else
    {
      v126[0] = v86;
      v126[1] = v85;
      *v127 = *v180;
      *&v127[3] = *&v180[3];
      v128 = v87;
    }

    v129 = 1;
    LOBYTE(v130) = 0;
    v134 = 0;
    v135 = 1;
    sub_27139F524(0xDu, v126, &__dst);
    *a2 = __dst;
    *(a2 + 16) = 0;
    *(a2 + 112) = 0;
    if (v258 == 1)
    {
      *(a2 + 40) = 0;
      v74 = v118;
      if (v251 == 1)
      {
        *(a2 + 16) = *v250;
        *(a2 + 32) = v250[2];
        memset(v250, 0, sizeof(v250));
        *(a2 + 40) = 1;
      }

      *(a2 + 48) = 0;
      *(a2 + 104) = 0;
      if ((v257 & 1) == 0)
      {
        *(a2 + 112) = 1;
        *(a2 + 120) = 0;
        if (v251 != 1)
        {
          goto LABEL_573;
        }

        goto LABEL_571;
      }

      v88 = v254;
      *(a2 + 64) = v253;
      *(a2 + 48) = v252;
      v252 = 0uLL;
      *(a2 + 72) = v88;
      *(a2 + 80) = v255;
      *(a2 + 96) = v256;
      v256 = 0;
      v253 = 0;
      v255 = 0uLL;
      *(a2 + 104) = 1;
      *(a2 + 112) = 1;
      *(a2 + 120) = 0;
      if (SHIBYTE(v256) < 0)
      {
        operator delete(v255);
        if ((SHIBYTE(v253) & 0x80000000) == 0)
        {
LABEL_466:
          if (v251 != 1)
          {
            goto LABEL_573;
          }

LABEL_571:
          if (SHIBYTE(v250[2]) < 0)
          {
            operator delete(v250[0]);
          }

          goto LABEL_573;
        }
      }

      else if ((SHIBYTE(v253) & 0x80000000) == 0)
      {
        goto LABEL_466;
      }

      operator delete(v252);
      if (v251 == 1)
      {
        goto LABEL_571;
      }
    }

    else
    {
      *(a2 + 120) = 0;
      v74 = v118;
    }

LABEL_573:
    if (v135 == 1)
    {
      if (v134 == 1)
      {
        if (v133 < 0)
        {
          operator delete(v132);
        }

        if (v131 < 0)
        {
          operator delete(v130);
        }
      }

      if (v129 == 1 && v128 < 0)
      {
        operator delete(v126[0]);
      }
    }

    if (v87 < 0)
    {
      operator delete(v86);
    }

    if ((v237[23] & 0x80000000) != 0)
    {
      operator delete(*v237);
    }

    goto LABEL_630;
  }

LABEL_403:
  DWORD2(v200) = 0;
  *v226 = &v199;
  *&v226[8] = "while loading sequence entry ";
  *&v226[16] = &v199;
  *&v226[24] = "while loading sequence entry ";
  v227 = "while loading sequence entry ";
  *v180 = v226;
  sub_2712390A4(v180);
  std::to_string(v180, *(a1 + 280));
  *v226 = &v199;
  *&v226[8] = v180;
  *&v226[16] = &v199;
  *&v226[24] = v180;
  v227 = v180;
  if (DWORD2(v200) == -1)
  {
    sub_2711308D4();
  }

  v197[0] = v226;
  (off_288132530[DWORD2(v200)])(v197, &v199);
  if ((v180[23] & 0x80000000) != 0)
  {
    operator delete(*v180);
  }

  if (DWORD2(v200) == -1)
  {
    sub_2711308D4();
  }

  *v226 = v180;
  (off_288132410[DWORD2(v200)])(&v211, v226, &v199);
  if (DWORD2(v200) != -1)
  {
    (off_2881323F8[DWORD2(v200)])(v226, &v199);
  }

  sub_2712B2E88(&v156, &v211, v237);
  __dst = *v237;
  LOBYTE(v250[0]) = 0;
  LOBYTE(v258) = 0;
  if (v246 == 1)
  {
    sub_27112F6CC(v250, &v237[16]);
    LOBYTE(v258) = 1;
    *a2 = __dst;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
    v72 = v251;
    if (v251 == 1)
    {
      *(a2 + 16) = *v250;
      *(a2 + 32) = v250[2];
      memset(v250, 0, sizeof(v250));
      *(a2 + 40) = 1;
      *(a2 + 48) = 0;
      v73 = a2 + 48;
      *(a2 + 104) = 0;
      v74 = v118;
      if ((v257 & 1) == 0)
      {
        goto LABEL_412;
      }
    }

    else
    {
      *(a2 + 48) = 0;
      v73 = a2 + 48;
      *(a2 + 104) = 0;
      v74 = v118;
      if ((v257 & 1) == 0)
      {
LABEL_412:
        *(a2 + 112) = 1;
        *(a2 + 120) = 0;
        if (!v72)
        {
          goto LABEL_419;
        }

LABEL_417:
        if (SHIBYTE(v250[2]) < 0)
        {
          operator delete(v250[0]);
        }

        goto LABEL_419;
      }
    }

    v75 = v254;
    *(v73 + 16) = v253;
    *v73 = v252;
    v252 = 0uLL;
    *(a2 + 72) = v75;
    *(a2 + 80) = v255;
    *(a2 + 96) = v256;
    v253 = 0;
    v255 = 0uLL;
    v256 = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 1;
    *(a2 + 120) = 0;
    if (v72)
    {
      goto LABEL_417;
    }
  }

  else
  {
    *a2 = *v237;
    *(a2 + 16) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    v74 = v118;
  }

LABEL_419:
  if (v246 == 1)
  {
    if (v245 == 1)
    {
      if (SHIBYTE(v244) < 0)
      {
        operator delete(v243);
      }

      if (SHIBYTE(v241) < 0)
      {
        operator delete(v240);
      }
    }

    if (v239 == 1 && SHIBYTE(v238) < 0)
    {
      operator delete(*&v237[16]);
    }
  }

  if (SBYTE7(v212) < 0)
  {
    operator delete(v211);
  }

LABEL_638:
  if ((v167 & 1) == 0 && v166 == 1)
  {
    if (v165 == 1)
    {
      if (SHIBYTE(v164) < 0)
      {
        operator delete(v163);
      }

      if (SHIBYTE(v161) < 0)
      {
        operator delete(v160);
      }
    }

    if (v159 == 1 && SHIBYTE(v158) < 0)
    {
      operator delete(v157);
    }
  }

  if (LOBYTE(v261[23]) == 1)
  {
    v113 = v261[20];
    if (v261[20])
    {
      v114 = v261[21];
      v115 = v261[20];
      if (v261[21] != v261[20])
      {
        do
        {
          v116 = *(v114 - 1);
          v114 -= 3;
          if (v116 < 0)
          {
            operator delete(*v114);
          }
        }

        while (v114 != v113);
        v115 = v261[20];
      }

      v261[21] = v113;
      operator delete(v115);
    }
  }

  if (LOBYTE(v261[19]) == 1 && SHIBYTE(v261[18]) < 0)
  {
    operator delete(v261[16]);
  }

  if (LOBYTE(v261[15]) == 1 && SHIBYTE(v261[14]) < 0)
  {
    operator delete(v261[12]);
  }

  if (LOBYTE(v261[8]) == 1 && SHIBYTE(v261[7]) < 0)
  {
    operator delete(v261[5]);
  }

  if (SHIBYTE(v261[0]) < 0)
  {
    operator delete(__p);
    if ((v74 & 0x80000000) == 0)
    {
LABEL_668:
      if ((SHIBYTE(v169.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_669;
      }

LABEL_674:
      operator delete(v169.__pn_.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v178) & 0x80000000) == 0)
      {
        goto LABEL_671;
      }

      goto LABEL_670;
    }
  }

  else if ((v74 & 0x80000000) == 0)
  {
    goto LABEL_668;
  }

  operator delete(v31);
  if (SHIBYTE(v169.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_674;
  }

LABEL_669:
  if (SHIBYTE(v178) < 0)
  {
LABEL_670:
    operator delete(v177);
  }

LABEL_671:
  v117 = *MEMORY[0x277D85DE8];
}

void sub_2714D122C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, void *a12)
{
  sub_27112D71C(&STACK[0x680]);
  if (SLOBYTE(STACK[0x417]) < 0)
  {
    operator delete(STACK[0x400]);
  }

  sub_2714D1AD8(&STACK[0x750]);
  sub_2714FBE4C(&STACK[0x4E0]);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (SLOBYTE(STACK[0x617]) < 0)
  {
    operator delete(STACK[0x600]);
  }

  sub_27112E024(&STACK[0x2E0]);
  sub_2714D7700(&STACK[0x8E0]);
  if (a10 < 0)
  {
    operator delete(a12);
    if ((SLOBYTE(STACK[0x387]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((SLOBYTE(STACK[0x387]) & 0x80000000) == 0)
  {
LABEL_9:
    if (SLOBYTE(STACK[0x3F7]) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  operator delete(STACK[0x370]);
  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
LABEL_10:
    operator delete(STACK[0x3E0]);
    _Unwind_Resume(a1);
  }

LABEL_13:
  _Unwind_Resume(a1);
}

__n128 sub_2714D199C@<Q0>(const char *a1@<X0>, std::string *a2@<X1>, std::string *a3@<X8>)
{
  v6 = strlen(a1);
  v7 = std::string::insert(a2, 0, a1, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_2714D19FC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *(result + 16);
  *(result + 8) = v2;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t sub_2714D1A80(uint64_t result)
{
  if (*(result + 384))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_288108EC0;
    __cxa_throw(exception, &unk_28811C2D8, std::exception::~exception);
  }

  return result;
}

uint64_t *sub_2714D1AD8(uint64_t *result)
{
  if (*(result + 384) == 1)
  {
    return sub_271359728(result);
  }

  if (*(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v1 = result;
        operator delete(result[10]);
        result = v1;
      }

      if (*(result + 71) < 0)
      {
        v2 = result;
        operator delete(result[6]);
        result = v2;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v3 = result;
      operator delete(result[2]);
      return v3;
    }
  }

  return result;
}

uint64_t sub_2714D1B88(uint64_t result, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  *v15 = *(a2 + 8);
  *&v15[7] = *(a2 + 15);
  v3 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(result + 15) = *&v15[7];
  *result = v2;
  *(result + 8) = *v15;
  *(result + 23) = v3;
  *(result + 48) = 0;
  if (v3 >= 0)
  {
    v2 = result;
  }

  if (v3 < 0)
  {
    v3 = *v15;
  }

  if (!v3)
  {
    goto LABEL_66;
  }

  v4 = v2;
  if (v3 < 8)
  {
LABEL_69:
    v14 = &v2[v3];
    do
    {
      if (*v4 == 58)
      {
        *v4 = 95;
      }

      ++v4;
    }

    while (v4 != v14);
    goto LABEL_66;
  }

  if (v3 < 0x10)
  {
    v5 = 0;
    goto LABEL_9;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFFF0;
  v9 = v2 + 7;
  v10.i64[0] = 0x3A3A3A3A3A3A3A3ALL;
  v10.i64[1] = 0x3A3A3A3A3A3A3A3ALL;
  v11 = v3 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v12 = vceqq_s8(*(v9 - 7), v10);
    if (v12.i8[0])
    {
      *(v9 - 7) = 95;
      if ((v12.i8[1] & 1) == 0)
      {
LABEL_34:
        if ((v12.i8[2] & 1) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_51;
      }
    }

    else if ((v12.i8[1] & 1) == 0)
    {
      goto LABEL_34;
    }

    *(v9 - 6) = 95;
    if ((v12.i8[2] & 1) == 0)
    {
LABEL_35:
      if ((v12.i8[3] & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_52;
    }

LABEL_51:
    *(v9 - 5) = 95;
    if ((v12.i8[3] & 1) == 0)
    {
LABEL_36:
      if ((v12.i8[4] & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_53;
    }

LABEL_52:
    *(v9 - 4) = 95;
    if ((v12.i8[4] & 1) == 0)
    {
LABEL_37:
      if ((v12.i8[5] & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_54;
    }

LABEL_53:
    *(v9 - 3) = 95;
    if ((v12.i8[5] & 1) == 0)
    {
LABEL_38:
      if ((v12.i8[6] & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_55;
    }

LABEL_54:
    *(v9 - 2) = 95;
    if ((v12.i8[6] & 1) == 0)
    {
LABEL_39:
      if ((v12.i8[7] & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_56;
    }

LABEL_55:
    *(v9 - 1) = 95;
    if ((v12.i8[7] & 1) == 0)
    {
LABEL_40:
      if ((v12.i8[8] & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_57;
    }

LABEL_56:
    *v9 = 95;
    if ((v12.i8[8] & 1) == 0)
    {
LABEL_41:
      if ((v12.i8[9] & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_58;
    }

LABEL_57:
    v9[1] = 95;
    if ((v12.i8[9] & 1) == 0)
    {
LABEL_42:
      if ((v12.i8[10] & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_59;
    }

LABEL_58:
    v9[2] = 95;
    if ((v12.i8[10] & 1) == 0)
    {
LABEL_43:
      if ((v12.i8[11] & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_60;
    }

LABEL_59:
    v9[3] = 95;
    if ((v12.i8[11] & 1) == 0)
    {
LABEL_44:
      if ((v12.i8[12] & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_61;
    }

LABEL_60:
    v9[4] = 95;
    if ((v12.i8[12] & 1) == 0)
    {
LABEL_45:
      if ((v12.i8[13] & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_62;
    }

LABEL_61:
    v9[5] = 95;
    if ((v12.i8[13] & 1) == 0)
    {
LABEL_46:
      if (v12.i8[14])
      {
        goto LABEL_63;
      }

      goto LABEL_47;
    }

LABEL_62:
    v9[6] = 95;
    if (v12.i8[14])
    {
LABEL_63:
      v9[7] = 95;
      if ((v12.i8[15] & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_64;
    }

LABEL_47:
    if ((v12.i8[15] & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_64:
    v9[8] = 95;
LABEL_31:
    v9 += 16;
    v11 -= 16;
  }

  while (v11);
  if (v3 == v5)
  {
    goto LABEL_66;
  }

  if ((v3 & 8) == 0)
  {
    v4 = &v2[v5];
    goto LABEL_69;
  }

LABEL_9:
  v4 = &v2[v3 & 0xFFFFFFFFFFFFFFF8];
  v6 = v5 - (v3 & 0xFFFFFFFFFFFFFFF8);
  v7 = &v2[v5 + 3];
  while (2)
  {
    v8 = vceq_s8(*(v7 - 3), 0x3A3A3A3A3A3A3A3ALL);
    if (v8.i8[0])
    {
      *(v7 - 3) = 95;
      if (v8.i8[1])
      {
        goto LABEL_21;
      }

LABEL_13:
      if ((v8.i8[2] & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_22:
      *(v7 - 1) = 95;
      if (v8.i8[3])
      {
        goto LABEL_23;
      }

LABEL_15:
      if ((v8.i8[4] & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_24:
      v7[1] = 95;
      if (v8.i8[5])
      {
        goto LABEL_25;
      }

LABEL_17:
      if ((v8.i8[6] & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_26:
      v7[3] = 95;
      if (v8.i8[7])
      {
LABEL_27:
        v7[4] = 95;
      }
    }

    else
    {
      if ((v8.i8[1] & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_21:
      *(v7 - 2) = 95;
      if (v8.i8[2])
      {
        goto LABEL_22;
      }

LABEL_14:
      if ((v8.i8[3] & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_23:
      *v7 = 95;
      if (v8.i8[4])
      {
        goto LABEL_24;
      }

LABEL_16:
      if ((v8.i8[5] & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_25:
      v7[2] = 95;
      if (v8.i8[6])
      {
        goto LABEL_26;
      }

LABEL_18:
      if (v8.i8[7])
      {
        goto LABEL_27;
      }
    }

    v7 += 8;
    v6 += 8;
    if (v6)
    {
      continue;
    }

    break;
  }

  if (v3 != (v3 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_69;
  }

LABEL_66:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2714D1EBC(uint64_t a1, uint64_t a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v24 = 12;
  LOBYTE(v25) = 0;
  v36 = 0;
  while (1)
  {
    v4 = *(a1 + 288);
    v5 = *(a1 + 280);
    if (v5 >= 0x86BCA1AF286BCA1BLL * ((*(a1 + 296) - v4) >> 3) && !*(a1 + 256) || *(v4 + 152 * v5) > a2)
    {
      v38 = 0;
      v39 = 0;
      v37 = 0;
      v40.__r_.__value_.__r.__words[0] = &unk_288131488;
      operator new();
    }

    sub_2714CD3E0(a1, &v13);
    if (v23 == 1)
    {
      v6 = v38;
      if (v38 >= v39)
      {
        v7 = sub_271398C6C(&v37, &v13);
      }

      else
      {
        *v38 = v13;
        v13 = 0uLL;
        *(v6 + 2) = off_28810C940;
        *(v6 + 24) = v15;
        v15 = 0uLL;
        v7 = v6 + 40;
      }

      v38 = v7;
      goto LABEL_45;
    }

    if (*(a1 + 128) == 1)
    {
      v8 = *(a1 + 120);
      if (!v8)
      {
        sub_27112AFFC();
      }

      (*(*v8 + 48))(v8, &v13);
      if (v23)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_288108EC0;
        __cxa_throw(exception, &unk_28811C2D8, std::exception::~exception);
      }
    }

    if (v36 == 1)
    {
      if (*(&v13 + 1) != *(&v25 + 1))
      {
        goto LABEL_25;
      }
    }

    else
    {
      *&v25 = v24;
      *(&v25 + 1) = &off_288132220;
      LOBYTE(v26) = 0;
      v35 = 0;
      v36 = 1;
      if (*(&v13 + 1) != &off_288132220)
      {
        goto LABEL_25;
      }
    }

    if (v13 == v25)
    {
      if (v22 != 1 || (v16 & 1) == 0)
      {
        goto LABEL_45;
      }

      sub_271849064(&v25, &v14, v41);
      if ((v36 & 1) == 0)
      {
        v25 = *v41;
        LOBYTE(v26) = 0;
        v35 = 0;
        if (v51 != 1)
        {
          v36 = 1;
          goto LABEL_45;
        }

        v28 = 0;
        if (v44 == 1)
        {
          v26 = v42;
          v27 = v43;
          v43 = 0;
          v42 = 0uLL;
          v28 = 1;
        }

        LOBYTE(v29) = 0;
        v34 = 0;
        if (v50 == 1)
        {
          v29 = v45;
          v30 = v46;
          v46 = 0;
          v45 = 0uLL;
          v31 = v47;
          v32 = __p;
          v33 = v49;
          __p = 0uLL;
          v49 = 0;
          v34 = 1;
          v35 = 1;
          v36 = 1;
          goto LABEL_68;
        }

        v35 = 1;
        v36 = 1;
LABEL_72:
        if (v44 != 1 || (SHIBYTE(v43) & 0x80000000) == 0)
        {
          goto LABEL_45;
        }

        v9 = v42;
LABEL_44:
        operator delete(v9);
        goto LABEL_45;
      }

      sub_27112F274(&v25, v41);
      if (v51)
      {
        if (v50)
        {
          if (SHIBYTE(v49) < 0)
          {
            operator delete(__p);
          }

LABEL_68:
          if (SHIBYTE(v46) < 0)
          {
            operator delete(v45);
          }
        }

        goto LABEL_72;
      }

      goto LABEL_45;
    }

LABEL_25:
    sub_271847E00(&v13, &v40);
    sub_271849064(&v25, &v40, v41);
    if (v36)
    {
      sub_27112F274(&v25, v41);
      if ((v51 & 1) == 0)
      {
        goto LABEL_42;
      }

      if ((v50 & 1) == 0)
      {
        goto LABEL_39;
      }

      if (SHIBYTE(v49) < 0)
      {
        operator delete(__p);
      }

      goto LABEL_35;
    }

    v25 = *v41;
    LOBYTE(v26) = 0;
    v35 = 0;
    if (v51 != 1)
    {
      v36 = 1;
      goto LABEL_42;
    }

    v28 = 0;
    if (v44 == 1)
    {
      v26 = v42;
      v27 = v43;
      v43 = 0;
      v42 = 0uLL;
      v28 = 1;
    }

    LOBYTE(v29) = 0;
    v34 = 0;
    if (v50 == 1)
    {
      v29 = v45;
      v30 = v46;
      v46 = 0;
      v45 = 0uLL;
      v31 = v47;
      v32 = __p;
      v33 = v49;
      __p = 0uLL;
      v49 = 0;
      v34 = 1;
      v35 = 1;
      v36 = 1;
LABEL_35:
      if (SHIBYTE(v46) < 0)
      {
        operator delete(v45);
      }

      goto LABEL_39;
    }

    v35 = 1;
    v36 = 1;
LABEL_39:
    if (v44 == 1 && SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

LABEL_42:
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      v9 = v40.__r_.__value_.__r.__words[0];
      goto LABEL_44;
    }

LABEL_45:
    if (v23 == 1)
    {
      v10 = *(&v15 + 1);
      if (*(&v15 + 1) && !atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
        v11 = *(&v13 + 1);
        if (*(&v13 + 1))
        {
          goto LABEL_49;
        }
      }

      else
      {
        v11 = *(&v13 + 1);
        if (*(&v13 + 1))
        {
LABEL_49:
          if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v11->__on_zero_shared)(v11);
            std::__shared_weak_count::__release_weak(v11);
          }
        }
      }
    }

    else if (v22 == 1)
    {
      if (v21 == 1)
      {
        if (v20 < 0)
        {
          operator delete(v19);
          if ((v18 & 0x80000000) == 0)
          {
            goto LABEL_55;
          }
        }

        else if ((v18 & 0x80000000) == 0)
        {
          goto LABEL_55;
        }

        operator delete(v17);
        if (v16 == 1)
        {
          goto LABEL_56;
        }
      }

      else
      {
LABEL_55:
        if (v16 == 1)
        {
LABEL_56:
          if (SHIBYTE(v15) < 0)
          {
            operator delete(v14);
          }
        }
      }
    }
  }
}

void sub_2714D2A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  sub_27112D66C(&a59);
  sub_271396440(&a56);
  sub_271398430(&a16);
  sub_27138AE34(&a36);
  sub_271398430(&a53);
  _Unwind_Resume(a1);
}

void sub_2714D2AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a61 < 0)
  {
    operator delete(__p);
  }

  sub_271158CF0(&a19);
  sub_27138AE34(&a36);
  sub_271398430(&a53);
  _Unwind_Resume(a1);
}

void sub_2714D2AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53)
{
  sub_27138AE34(&a36);
  sub_271398430(&a53);
  _Unwind_Resume(a1);
}

uint64_t sub_2714D2B08(uint64_t a1)
{
  if ((*(a1 + 151) & 0x80000000) == 0)
  {
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 96));
    if (*(a1 + 88) != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 128));
  if (*(a1 + 119) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(a1 + 88) != 1)
  {
LABEL_8:
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    operator delete(*(a1 + 40));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_13;
  }

LABEL_7:
  if ((*(a1 + 87) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*(a1 + 64));
  if (*(a1 + 63) < 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_13:
  operator delete(*(a1 + 8));
  return a1;
}

void sub_2714D38D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2714D3AA0(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  *v1 = &unk_28810BFE8;
  v1[1] = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_2714D78B4(v2);
    MEMORY[0x2743BF050](v4, 0x10F2C4013865076);
    return v3;
  }

  return v1;
}

void sub_2714D3B0C(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_28810BFE8;
  a1[1] = 0;
  if (v1)
  {
    v2 = sub_2714D78B4(v1);
    MEMORY[0x2743BF050](v2, 0x10F2C4013865076);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2714D3B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 24);
  if (v7)
  {
    LOBYTE(v16[0]) = 0;
    v17 = 0;
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v8 = sub_27139B104(0);
    if (*(a2 + 24) == 1)
    {
      if (v8 == a2)
      {
        LOBYTE(v16[0]) = 0;
        v17 = 0;
      }

      else
      {
        sub_2714D7D18(a2, *v8, v8[1], (v8[1] - *v8) >> 4);
        v9 = *(a2 + 24);
        LOBYTE(v16[0]) = 0;
        v17 = 0;
        if ((v9 & 1) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v10 = *v8;
      v11 = v8[1];
      v19 = a2;
      v20 = 0;
      if (v11 != v10)
      {
        if (((v11 - v10) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_271135560();
      }

      *(a2 + 24) = 1;
      v17 = 0;
    }
  }

  memset(v16, 0, sizeof(v16));
  v12 = *a2;
  v13 = *(a2 + 8);
  v19 = v16;
  v20 = 0;
  if (v13 != v12)
  {
    if (((v13 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  v17 = 1;
LABEL_16:
  sub_2711708F8(&v15, a3);
  v21[0] = 0;
  v23 = 0;
  if (*(a4 + 32) == 1)
  {
    v14 = *(a4 + 24);
    if (v14)
    {
      if (v14 == a4)
      {
        v22 = v21;
        (*(*v14 + 24))(v14, v21);
      }

      else
      {
        v22 = *(a4 + 24);
        *(a4 + 24) = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    v23 = 1;
  }

  v18 = &unk_28810BFE8;
  sub_2714D2BC0();
}

void sub_2714D40F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, char a23)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714D4148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  sub_2712AF01C(&a25);
  sub_2712AEC08(&a9);
  sub_2711B08E0(&a17);
  _Unwind_Resume(a1);
}

void sub_2714D416C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2711B08E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2714D4180(uint64_t a1)
{
  v2 = a1 + 16;
  v3 = *(a1 + 40);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

uint64_t sub_2714D4280(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881086A8;
  a2[1] = v2;
  return result;
}

uint64_t sub_2714D42C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d3kit3vizlsERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS1_17StoragePreferenceEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d3kit3vizlsERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS1_17StoragePreferenceEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit3vizlsERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS1_17StoragePreferenceEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit3vizlsERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEERKNS1_17StoragePreferenceEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_2714D4340(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

BOOL sub_2714D43CC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(*a1 + 24);
  v7 = *(*a2 + 24);
  if (v6 != v7 || v6 == 0)
  {
    if (v6 != v7)
    {
      return 0;
    }

    goto LABEL_22;
  }

  v11 = *v4;
  v10 = v4[1];
  v12 = *v5;
  if (v10 - *v4 != v5[1] - *v5)
  {
    return 0;
  }

  if (v11 == v10)
  {
LABEL_22:
    v19 = *(a1 + 8);
    v20 = *(a2 + 8);
    v21 = *(v19 + 16);
    v22 = *(v20 + 16);
    if (v21 == v22 && v21 != 0)
    {
      v21 = *(v19 + 8);
      v22 = *(v20 + 8);
      if (v21 == v22 && v21 != 0)
      {
        if (*v19 != *v20)
        {
          return 0;
        }

        return **(a1 + 16) == **(a2 + 16);
      }
    }

    if (v21 == v22)
    {
      return **(a1 + 16) == **(a2 + 16);
    }

    return 0;
  }

  v13 = 0;
  while (1)
  {
    v14 = v11 + v13;
    v15 = v12 + v13;
    result = sub_2714F16C0(v11 + v13 + 16, v12 + v13 + 16);
    if (!result)
    {
      return result;
    }

    v16 = *(v14 + 808);
    v17 = *(v15 + 808);
    if (v16 != v17 || v16 == 0)
    {
      if (v16 != v17)
      {
        return 0;
      }
    }

    else if (*(v11 + v13 + 800) | *(v12 + v13 + 800) || *(v14 + 768) != *(v15 + 768))
    {
      return 0;
    }

    v13 += 816;
    if (v11 + v13 == v10)
    {
      goto LABEL_22;
    }
  }
}

uint64_t sub_2714D455C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    (off_2881323C8[v2])(&v4, a1);
  }

  *(a1 + 32) = -1;
  return a1;
}

void sub_2714D45B8(char *__p)
{
  do
  {
    while (1)
    {
      v2 = *__p;
      v3 = *(__p + 6);
      if (v3)
      {
        if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v3->__on_zero_shared)(v3);
          std::__shared_weak_count::__release_weak(v3);
        }
      }

      if (__p[39] < 0)
      {
        break;
      }

      operator delete(__p);
      __p = v2;
      if (!v2)
      {
        return;
      }
    }

    operator delete(*(__p + 2));
    operator delete(__p);
    __p = v2;
  }

  while (v2);
}

void *sub_2714D4680(uint64_t a1)
{
  v2 = *(a1 + 34);
  if (*(a1 + 40))
  {
    v3 = *(a1 + 24);
    v6 = *(a1 + 32);
    sub_271120E64(v3, &v6, 1);
  }

  v4 = *(a1 + 24);
  v7 = v2;
  result = sub_271120E64(v4, &v7, 1);
  ++*(a1 + 40);
  return result;
}

uint64_t sub_2714D46EC(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v6 = *(a1 + 32);
    sub_271120E64(v4, &v6, 1);
  }

  result = MEMORY[0x2743BE7B0](*(a1 + 24), *a2);
  ++*(a1 + 40);
  return result;
}

void sub_2714D4750(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    LOBYTE(__p[0]) = *(a1 + 32);
    sub_271120E64(v4, __p, 1);
  }

  v5 = *(a1 + 24);
  __p[0] = *a2;
  v7 = 1;
  sub_271120E64(v5, __p, 1);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  ++*(a1 + 40);
}

void sub_2714D47D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2714D47F4(uint64_t a1, __int16 *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v6 = *(a1 + 32);
    sub_271120E64(v4, &v6, 1);
  }

  result = MEMORY[0x2743BE820](*(a1 + 24), *a2);
  ++*(a1 + 40);
  return result;
}

uint64_t sub_2714D4858(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v6 = *(a1 + 32);
    sub_271120E64(v4, &v6, 1);
  }

  result = MEMORY[0x2743BE7E0](*(a1 + 24), *a2);
  ++*(a1 + 40);
  return result;
}

uint64_t sub_2714D48BC(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v6 = *(a1 + 32);
    sub_271120E64(v4, &v6, 1);
  }

  result = MEMORY[0x2743BE800](*(a1 + 24), *a2);
  ++*(a1 + 40);
  return result;
}