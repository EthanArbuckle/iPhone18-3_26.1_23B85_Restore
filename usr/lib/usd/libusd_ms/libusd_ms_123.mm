void sub_29AB96920(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A01FF14(va);
  _Unwind_Resume(a1);
}

void *sub_29AB96934(uint64_t a1, char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[24 * v2];
  v16 = v15;
  v17 = &v7[24 * v6];
  sub_29A008E78(v15, a2);
  v8 = v15 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_29A01FF14(&v14);
  return v8;
}

void sub_29AB96A40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A01FF14(va);
  _Unwind_Resume(a1);
}

void *sub_29AB96A54(uint64_t a1, char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[24 * v2];
  v16 = v15;
  v17 = &v7[24 * v6];
  sub_29A008E78(v15, a2);
  v8 = v15 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_29A01FF14(&v14);
  return v8;
}

void sub_29AB96B60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A01FF14(va);
  _Unwind_Resume(a1);
}

void *sub_29AB96B74(uint64_t a1, char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[24 * v2];
  v16 = v15;
  v17 = &v7[24 * v6];
  sub_29A008E78(v15, a2);
  v8 = v15 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_29A01FF14(&v14);
  return v8;
}

void sub_29AB96C80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A01FF14(va);
  _Unwind_Resume(a1);
}

char *sub_29AB96C94(char *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A1C11FC(result, a4);
    result = sub_29AB96D1C(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AB96CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A0D2770(&a9);
  _Unwind_Resume(a1);
}

char *sub_29AB96D1C(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a1;
    do
    {
      sub_29AB96DC8(v7, v4, v6);
      v6 += 3;
      v4 = v12 + 48;
      v12 += 48;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29AB8CDF4(v9);
  return v4;
}

void *sub_29AB96DC8(int a1, char *__dst, __int128 *a3)
{
  if (*(a3 + 23) < 0)
  {
    result = sub_29A008D14(__dst, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(__dst + 2) = *(a3 + 2);
    *__dst = v5;
  }

  if (*(a3 + 47) < 0)
  {
    return sub_29A008D14(__dst + 24, *(a3 + 3), *(a3 + 4));
  }

  v7 = *(a3 + 24);
  *(__dst + 5) = *(a3 + 5);
  *(__dst + 24) = v7;
  return result;
}

void sub_29AB96E3C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AB96E58(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *v8 = v10;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v11 = *(v9 + 24);
      *(v8 + 40) = *(v9 + 40);
      *(v8 + 24) = v11;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 24) = 0;
      v9 += 48;
      v8 += 48;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_29AB97130(&v13, a2, v7, v6);
}

__n128 sub_29AB96EE8(void *a1, __int128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0x5555555555555556 * ((v4 - *a1) >> 4);
      }

      v10 = v9 >> 2;
      v11 = a1[4];
      v27 = a1[4];
      v12 = sub_29A08E058(v11, v9);
      v14 = &v12[48 * v10];
      v15 = *(a1 + 1);
      v16 = v15;
      v17 = v14;
      if (*(&v15 + 1) != v15)
      {
        v17 = &v14[*(&v15 + 1) - v15];
        v18 = &v12[48 * v10];
        do
        {
          v19 = *v16;
          *(v18 + 2) = *(v16 + 2);
          *v18 = v19;
          *(v16 + 1) = 0;
          *(v16 + 2) = 0;
          *v16 = 0;
          v20 = *(v16 + 24);
          *(v18 + 5) = *(v16 + 5);
          *(v18 + 24) = v20;
          *(v16 + 4) = 0;
          *(v16 + 5) = 0;
          *(v16 + 3) = 0;
          v18 += 48;
          v16 += 3;
        }

        while (v18 != v17);
        v15 = *(a1 + 1);
      }

      v24 = *a1;
      *a1 = v12;
      a1[1] = v14;
      v25 = v15;
      v21 = a1[3];
      a1[2] = v17;
      a1[3] = &v12[48 * v13];
      v26 = v21;
      sub_29A0D407C(&v24);
      v4 = a1[2];
    }

    else
    {
      v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4) + 1 + ((0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4) + 1) >> 63);
      v7 = -3 * (v6 >> 1);
      sub_29AB971F8(&v24, v5, v4, &v5[-3 * (v6 >> 1)]);
      v4 = v8;
      a1[1] += 16 * v7;
      a1[2] = v8;
    }
  }

  v22 = *a2;
  *(v4 + 16) = *(a2 + 2);
  *v4 = v22;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  result = *(a2 + 24);
  *(v4 + 40) = *(a2 + 5);
  *(v4 + 24) = result;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  a1[2] += 48;
  return result;
}

uint64_t sub_29AB97074(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  sub_29AB9729C(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  sub_29AB9729C(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_29AB97130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a4 + v7 - 48);
      if (*(a4 + v7 - 25) < 0)
      {
        operator delete(*v9);
      }

      v10 = (a3 + v7 - 48);
      v11 = *v10;
      *(a4 + v7 - 32) = *(a3 + v7 - 32);
      *v9 = v11;
      *(a3 + v7 - 25) = 0;
      *v10 = 0;
      v12 = (v8 - 24);
      if (*(v8 - 1) < 0)
      {
        operator delete(*v12);
      }

      v13 = a3 + v7;
      v14 = *(a3 + v7 - 24);
      *(v8 - 8) = *(a3 + v7 - 8);
      *v12 = v14;
      *(v13 - 1) = 0;
      *(v13 - 24) = 0;
      v7 -= 48;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

__int128 *sub_29AB971F8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      *(v5 + 23) = 0;
      *v5 = 0;
      if (*(a4 + 47) < 0)
      {
        operator delete(*(a4 + 24));
      }

      v8 = *(v5 + 24);
      *(a4 + 40) = *(v5 + 5);
      *(a4 + 24) = v8;
      *(v5 + 47) = 0;
      *(v5 + 24) = 0;
      v5 += 3;
      a4 += 48;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_29AB9729C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v7 += 48;
      a4 += 48;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      sub_29A0D27F8(a1, v5);
      v5 += 48;
    }
  }

  return sub_29AB8CDF4(v11);
}

uint64_t sub_29AB9736C(uint64_t a1)
{
  sub_29AB973A4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29AB973A4(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens_StaticTokenType *sub_29AB97418(atomic_ullong *a1)
{
  result = sub_29AB97460();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens_StaticTokenType::~HgiShaderKeywordTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens_StaticTokenType *sub_29AB97460()
{
  v0 = operator new(0xB0uLL);
  pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens_StaticTokenType::HgiShaderKeywordTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29AB974A4(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 48 * a3;
    do
    {
      sub_29B1D70D0(a1, a2, a2);
      a2 += 6;
      v5 -= 48;
    }

    while (v5);
  }

  return a1;
}

uint64_t sub_29AB97520(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    v7 = sub_29A08E058(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[48 * v2];
  v17 = v7;
  v18 = v8;
  *(&v19 + 1) = &v7[48 * v6];
  v9 = *a2;
  *(v8 + 2) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v10 = *(a2 + 24);
  *(v8 + 5) = *(a2 + 5);
  *(v8 + 24) = v10;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  *&v19 = v8 + 48;
  v11 = a1[1];
  v12 = &v8[*a1 - v11];
  sub_29AB9729C(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29A0D407C(&v17);
  return v16;
}

void sub_29AB9765C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0D407C(va);
  _Unwind_Resume(a1);
}

void sub_29AB97670(int a1, pxrInternal__aapl__pxrReserved__::HgiGLShaderSection *this)
{
  if (this)
  {
    v3 = *(this + 25);
    if (v3)
    {
      *(this + 26) = v3;
      operator delete(v3);
    }

    if (*(this + 199) < 0)
    {
      operator delete(*(this + 22));
    }

    pxrInternal__aapl__pxrReserved__::HgiGLShaderSection::~HgiGLShaderSection(this);

    operator delete(v4);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLShaderSection::HgiGLShaderSection(uint64_t a1, __int128 *a2, __int128 **a3, __int128 *a4, __int128 *a5, uint64_t a6, __int128 *a7)
{
  v10 = pxrInternal__aapl__pxrReserved__::HgiShaderSection::HgiShaderSection(a1, a2, a3, a5, a6, a7);
  *v10 = &unk_2A2073208;
  if (*(a4 + 23) < 0)
  {
    sub_29A008D14((v10 + 128), *a4, *(a4 + 1));
  }

  else
  {
    v11 = *a4;
    *(v10 + 144) = *(a4 + 2);
    *(v10 + 128) = v11;
  }

  if (*(a6 + 23) < 0)
  {
    sub_29A008D14((a1 + 152), *a6, *(a6 + 8));
  }

  else
  {
    v12 = *a6;
    *(a1 + 168) = *(a6 + 16);
    *(a1 + 152) = v12;
  }

  return a1;
}

void sub_29AB97784(_Unwind_Exception *a1)
{
  if (*(v1 + 151) < 0)
  {
    operator delete(*v2);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HgiGLShaderSection::~HgiGLShaderSection(void **this)
{
  *this = &unk_2A2073208;
  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiGLShaderSection::~HgiGLShaderSection(this);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::HgiGLShaderSection::WriteDeclaration(uint64_t a1, void *a2)
{
  Attributes = pxrInternal__aapl__pxrReserved__::HgiShaderSection::GetAttributes(a1);
  if (*Attributes != Attributes[1])
  {
    v5 = Attributes;
    sub_29A00911C(a2, "layout(", 7);
    v6 = *v5;
    if (v5[1] != *v5)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        if (v8)
        {
          sub_29A00911C(a2, ", ", 2);
          v6 = *v5;
        }

        v9 = v6 + v7;
        v10 = *(v6 + v7 + 23);
        if (v10 >= 0)
        {
          v11 = v6 + v7;
        }

        else
        {
          v11 = *(v6 + v7);
        }

        if (v10 >= 0)
        {
          v12 = *(v6 + v7 + 23);
        }

        else
        {
          v12 = *(v6 + v7 + 8);
        }

        sub_29A00911C(a2, v11, v12);
        if ((*(v9 + 47) & 0x8000000000000000) != 0)
        {
          if (*(v9 + 32))
          {
LABEL_14:
            v13 = sub_29A00911C(a2, " = ", 3);
            v14 = *(v9 + 47);
            if (v14 >= 0)
            {
              v15 = v9 + 24;
            }

            else
            {
              v15 = *(v9 + 24);
            }

            if (v14 >= 0)
            {
              v16 = *(v9 + 47);
            }

            else
            {
              v16 = *(v6 + v7 + 32);
            }

            sub_29A00911C(v13, v15, v16);
          }
        }

        else if (*(v9 + 47))
        {
          goto LABEL_14;
        }

        ++v8;
        v6 = *v5;
        v7 += 48;
      }

      while (v8 < 0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 4));
    }

    sub_29A00911C(a2, ") ", 2);
  }

  v17 = *(a1 + 151);
  if (v17 < 0)
  {
    if (*(a1 + 136))
    {
      goto LABEL_28;
    }
  }

  else if (*(a1 + 151))
  {
LABEL_28:
    if (v17 >= 0)
    {
      v18 = a1 + 128;
    }

    else
    {
      v18 = *(a1 + 128);
    }

    if (v17 >= 0)
    {
      v19 = *(a1 + 151);
    }

    else
    {
      v19 = *(a1 + 136);
    }

    v20 = sub_29A00911C(a2, v18, v19);
    sub_29A00911C(v20, " ", 1);
  }

  (*(*a1 + 16))(a1, a2);
  sub_29A00911C(a2, " ", 1);
  (*(*a1 + 24))(a1, a2);
  (*(*a1 + 48))(a1, a2);

  return sub_29A00911C(a2, ";\n", 2);
}

void *pxrInternal__aapl__pxrReserved__::HgiGLShaderSection::WriteParameter(uint64_t a1, void *a2)
{
  (*(*a1 + 16))(a1);
  sub_29A00911C(a2, " ", 1);
  (*(*a1 + 24))(a1, a2);

  return sub_29A00911C(a2, ";", 1);
}

void *pxrInternal__aapl__pxrReserved__::HgiGLMacroShaderSection::HgiGLMacroShaderSection(void *a1, __int128 *a2, __int128 *a3)
{
  memset(v16, 0, sizeof(v16));
  v14 = 0uLL;
  v15 = 0;
  v12 = 0uLL;
  v13 = 0;
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  __p = 0uLL;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::HgiGLShaderSection::HgiGLShaderSection(a1, a2, v16, &v14, &v12, v10, &__p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12);
  }

  *&v14 = v16;
  sub_29A0D2770(&v14);
  *a1 = &unk_2A2073280;
  v5 = a1 + 22;
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(v5, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    a1[24] = *(a3 + 2);
    *v5 = v6;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HgiGLMacroShaderSection::~HgiGLMacroShaderSection(void **this)
{
  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  pxrInternal__aapl__pxrReserved__::HgiGLShaderSection::~HgiGLShaderSection(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiGLMacroShaderSection::~HgiGLMacroShaderSection(this);

  operator delete(v1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::HgiGLMemberShaderSection::HgiGLMemberShaderSection(_DWORD *a1, __int128 *a2, __int128 *a3, int a4, int a5, int a6, __int128 **a7, __int128 *a8, __int128 *a9, uint64_t a10, __int128 *a11)
{
  v16 = pxrInternal__aapl__pxrReserved__::HgiGLShaderSection::HgiGLShaderSection(a1, a2, a7, a8, a9, a10, a11);
  *v16 = &unk_2A20732F8;
  v17 = v16 + 22;
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(v17, *a3, *(a3 + 1));
  }

  else
  {
    v18 = *a3;
    v17[2] = *(a3 + 2);
    *v17 = v18;
  }

  a1[50] = a4;
  a1[51] = a5;
  a1[52] = a6;
  return a1;
}

{
  return pxrInternal__aapl__pxrReserved__::HgiGLMemberShaderSection::HgiGLMemberShaderSection(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void pxrInternal__aapl__pxrReserved__::HgiGLMemberShaderSection::~HgiGLMemberShaderSection(void **this)
{
  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  pxrInternal__aapl__pxrReserved__::HgiGLShaderSection::~HgiGLShaderSection(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiGLMemberShaderSection::~HgiGLMemberShaderSection(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLMemberShaderSection::VisitGlobalMemberDeclarations(uint64_t a1, void *a2)
{
  if ((*(a1 + 127) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 112))
    {
      return 1;
    }
  }

  else if (*(a1 + 127))
  {
    return 1;
  }

  pxrInternal__aapl__pxrReserved__::HgiGLMemberShaderSection::WriteInterpolation(a1, a2);
  pxrInternal__aapl__pxrReserved__::HgiGLMemberShaderSection::WriteSampling(a1, a2);
  if (*(a1 + 208) == 1)
  {
    sub_29A00911C(a2, "patch ", 6);
  }

  pxrInternal__aapl__pxrReserved__::HgiGLShaderSection::WriteDeclaration(a1, a2);
  return 1;
}

void *pxrInternal__aapl__pxrReserved__::HgiGLMemberShaderSection::WriteInterpolation(void *result, void *a2)
{
  v2 = *(result + 50);
  if (v2 == 2)
  {
    return sub_29A00911C(a2, "noperspective ", 14);
  }

  if (v2 == 1)
  {
    return sub_29A00911C(a2, "flat ", 5);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HgiGLMemberShaderSection::WriteSampling(void *result, void *a2)
{
  v2 = *(result + 51);
  if (v2 == 2)
  {
    return sub_29A00911C(a2, "sample ", 7);
  }

  if (v2 == 1)
  {
    return sub_29A00911C(a2, "centroid ", 9);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HgiGLMemberShaderSection::WriteStorage(void *result, void *a2)
{
  if (*(result + 52) == 1)
  {
    return sub_29A00911C(a2, "patch ", 6);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HgiGLMemberShaderSection::WriteType(uint64_t a1, void *a2)
{
  v5 = *(a1 + 176);
  v3 = a1 + 176;
  v4 = v5;
  v6 = *(v3 + 23);
  if (v6 >= 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (v6 >= 0)
  {
    v8 = *(v3 + 23);
  }

  else
  {
    v8 = *(v3 + 8);
  }

  return sub_29A00911C(a2, v7, v8);
}

void pxrInternal__aapl__pxrReserved__::HgiGLBlockShaderSection::HgiGLBlockShaderSection(void *a1, __int128 *a2)
{
  memset(v11, 0, sizeof(v11));
  v9 = 0uLL;
  v10 = 0;
  v7 = 0uLL;
  v8 = 0;
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  __p = 0uLL;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::HgiGLShaderSection::HgiGLShaderSection(a1, a2, v11, &v9, &v7, v5, &__p);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[0]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7);
  }

  *&v9 = v11;
  sub_29A0D2770(&v9);
  *a1 = &unk_2A2073370;
  a1[23] = 0;
  a1[24] = 0;
  a1[22] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc*>();
}

void pxrInternal__aapl__pxrReserved__::HgiGLBlockShaderSection::~HgiGLBlockShaderSection(void **this)
{
  v2 = this + 22;
  sub_29AB899A4(&v2);
  pxrInternal__aapl__pxrReserved__::HgiGLShaderSection::~HgiGLShaderSection(this);
}

{
  v2 = this + 22;
  sub_29AB899A4(&v2);
  pxrInternal__aapl__pxrReserved__::HgiGLShaderSection::~HgiGLShaderSection(this);
}

{
  v3 = this + 22;
  sub_29AB899A4(&v3);
  pxrInternal__aapl__pxrReserved__::HgiGLShaderSection::~HgiGLShaderSection(this);
  operator delete(v2);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLBlockShaderSection::VisitGlobalMemberDeclarations(uint64_t a1, void *a2)
{
  v4 = sub_29A00911C(a2, "layout(std140, binding = ", 25);
  v5 = MEMORY[0x29C2C1EE0](v4, *(a1 + 200));
  v6 = sub_29A00911C(v5, ") ", 2);
  v7 = sub_29A00911C(v6, "uniform", 7);
  sub_29A00911C(v7, " ", 1);
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
  sub_29A00911C(a2, "\n", 1);
  sub_29A00911C(a2, "{\n", 2);
  v8 = *(a1 + 176);
  for (i = *(a1 + 184); v8 != i; v8 += 120)
  {
    v10 = sub_29A00911C(a2, "        ", 8);
    v11 = *(v8 + 47);
    if (v11 >= 0)
    {
      v12 = v8 + 24;
    }

    else
    {
      v12 = *(v8 + 24);
    }

    if (v11 >= 0)
    {
      v13 = *(v8 + 47);
    }

    else
    {
      v13 = *(v8 + 32);
    }

    v14 = sub_29A00911C(v10, v12, v13);
    v15 = sub_29A00911C(v14, " ", 1);
    v16 = *(v8 + 23);
    if (v16 >= 0)
    {
      v17 = v8;
    }

    else
    {
      v17 = *v8;
    }

    if (v16 >= 0)
    {
      v18 = *(v8 + 23);
    }

    else
    {
      v18 = *(v8 + 8);
    }

    v19 = sub_29A00911C(v15, v17, v18);
    sub_29A00911C(v19, ";\n", 2);
  }

  sub_29A00911C(a2, "\n};\n", 4);
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLTextureShaderSection::HgiGLTextureShaderSection(uint64_t a1, __int128 *a2, uint64_t a3, int a4, int a5, int a6, unsigned int a7, char a8, __int128 **a9, __int128 *a10)
{
  sub_29A008E78(v21, pxrInternal__aapl__pxrReserved__::HgiGLTextureShaderSection::_storageQualifier);
  if (a7)
  {
    std::to_string(&v20, a7);
  }

  else
  {
    sub_29A008E78(&v20, "");
  }

  __p = 0uLL;
  v19 = 0;
  pxrInternal__aapl__pxrReserved__::HgiGLShaderSection::HgiGLShaderSection(a1, a2, a9, v21, a10, &v20, &__p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  *a1 = &unk_2A20733E8;
  *(a1 + 176) = a4;
  *(a1 + 180) = a5;
  *(a1 + 184) = a6;
  *(a1 + 188) = a7;
  *(a1 + 192) = a8;
  return a1;
}

{
  return pxrInternal__aapl__pxrReserved__::HgiGLTextureShaderSection::HgiGLTextureShaderSection(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void sub_29AB98490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HgiGLTextureShaderSection::~HgiGLTextureShaderSection(void **this)
{
  pxrInternal__aapl__pxrReserved__::HgiGLShaderSection::~HgiGLShaderSection(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HgiGLTextureShaderSection::_WriteSamplerType(uint64_t a1, void *a2)
{
  v4 = *(a1 + 184);
  if (*(a1 + 192) == 1)
  {
    v5 = sub_29A00911C(a2, "image", 5);
    v6 = MEMORY[0x29C2C1EE0](v5, *(a1 + 176));
    if (v4 == 2)
    {
      v7 = "DArray";
      v8 = 6;
    }

    else
    {
      v7 = "D";
      v8 = 1;
    }

    sub_29A00911C(v6, v7, v8);
  }

  else
  {
    if (v4 == 2)
    {
      v18 = *(a1 + 180);
      v19 = v18 - 18;
      if ((v18 - 22) >= 4)
      {
        v20 = "";
      }

      else
      {
        v20 = "i";
      }

      if (v19 >= 4)
      {
        v21 = v20;
      }

      else
      {
        v21 = "u";
      }

      sub_29A008E78(&__p, v21);
      if ((v38 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v38 & 0x80u) == 0)
      {
        v23 = v38;
      }

      else
      {
        v23 = v37;
      }

      v24 = sub_29A00911C(a2, p_p, v23);
      v25 = sub_29A00911C(v24, "sampler", 7);
      v26 = MEMORY[0x29C2C1EE0](v25, *(a1 + 176));
      sub_29A00911C(v26, "DArray", 6);
    }

    else if (v4 == 1)
    {
      v9 = *(a1 + 180);
      v10 = v9 - 18;
      if ((v9 - 22) >= 4)
      {
        v11 = "";
      }

      else
      {
        v11 = "i";
      }

      if (v10 >= 4)
      {
        v12 = v11;
      }

      else
      {
        v12 = "u";
      }

      sub_29A008E78(&__p, v12);
      if ((v38 & 0x80u) == 0)
      {
        v13 = &__p;
      }

      else
      {
        v13 = __p;
      }

      if ((v38 & 0x80u) == 0)
      {
        v14 = v38;
      }

      else
      {
        v14 = v37;
      }

      v15 = sub_29A00911C(a2, v13, v14);
      v16 = sub_29A00911C(v15, "sampler", 7);
      v17 = MEMORY[0x29C2C1EE0](v16, *(a1 + 176));
      sub_29A00911C(v17, "DShadow", 7);
    }

    else
    {
      v27 = *(a1 + 180);
      v28 = v27 - 18;
      if ((v27 - 22) >= 4)
      {
        v29 = "";
      }

      else
      {
        v29 = "i";
      }

      if (v28 >= 4)
      {
        v30 = v29;
      }

      else
      {
        v30 = "u";
      }

      sub_29A008E78(&__p, v30);
      if ((v38 & 0x80u) == 0)
      {
        v31 = &__p;
      }

      else
      {
        v31 = __p;
      }

      if ((v38 & 0x80u) == 0)
      {
        v32 = v38;
      }

      else
      {
        v32 = v37;
      }

      v33 = sub_29A00911C(a2, v31, v32);
      v34 = sub_29A00911C(v33, "sampler", 7);
      v35 = MEMORY[0x29C2C1EE0](v34, *(a1 + 176));
      sub_29A00911C(v35, "D", 1);
    }

    if (v38 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_29AB98778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HgiGLTextureShaderSection::_WriteSampledDataType(uint64_t a1, void *a2)
{
  if (*(a1 + 184) == 1)
  {

    sub_29A00911C(a2, "float", 5);
  }

  else
  {
    v3 = *(a1 + 180);
    v4 = v3 - 18;
    if ((v3 - 22) >= 4)
    {
      v5 = "";
    }

    else
    {
      v5 = "i";
    }

    if (v4 >= 4)
    {
      v6 = v5;
    }

    else
    {
      v6 = "u";
    }

    sub_29A008E78(__p, v6);
    if ((v11 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if ((v11 & 0x80u) == 0)
    {
      v8 = v11;
    }

    else
    {
      v8 = __p[1];
    }

    v9 = sub_29A00911C(a2, v7, v8);
    sub_29A00911C(v9, "vec4", 4);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29AB98880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HgiGLTextureShaderSection::WriteType(uint64_t a1, void *a2)
{
  if ((*(a1 + 176) - 4) <= 0xFFFFFFFC)
  {
    v4[0] = "hgiGL/shaderSection.cpp";
    v4[1] = "WriteType";
    v4[2] = 306;
    v4[3] = "virtual void pxrInternal__aapl__pxrReserved__::HgiGLTextureShaderSection::WriteType(std::ostream &) const";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Invalid texture dimension");
  }

  pxrInternal__aapl__pxrReserved__::HgiGLTextureShaderSection::_WriteSamplerType(a1, a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLTextureShaderSection::VisitGlobalFunctionDefinitions(uint64_t a1, void *a2)
{
  v4 = *(a1 + 184);
  v5 = *(a1 + 176);
  if ((v4 - 1) >= 2)
  {
    v6 = *(a1 + 176);
  }

  else
  {
    v6 = v5 + 1;
  }

  if (v4 == 2)
  {
    v7 = v5 + 1;
  }

  else
  {
    v7 = *(a1 + 176);
  }

  if (v4 == 2)
  {
    v8 = v5 + 1;
  }

  else
  {
    v8 = v6;
  }

  if (v7 == 1)
  {
    sub_29A008E78(&v74, "int");
  }

  else
  {
    std::to_string(&v73, v7);
    v9 = std::string::insert(&v73, 0, "ivec");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v75 = v9->__r_.__value_.__r.__words[2];
    v74 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }
  }

  if (v8 == 1)
  {
    sub_29A008E78(&v73, "int");
    sub_29A008E78(&v72, "float");
  }

  else
  {
    std::to_string(&v72, v8);
    v11 = std::string::insert(&v72, 0, "ivec");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v73.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v73.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    std::to_string(&v71, v8);
    v13 = std::string::insert(&v71, 0, "vec");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v72.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v72.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
    }
  }

  if (*(a1 + 188))
  {
    sub_29A00911C(a2, "#define HgiGetSampler_", 22);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    sub_29A00911C(a2, "(index) ", 8);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    v15 = "[index]\n";
    v16 = 8;
  }

  else
  {
    sub_29A00911C(a2, "#define HgiGetSampler_", 22);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    sub_29A00911C(a2, "() ", 3);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    v15 = "\n";
    v16 = 1;
  }

  sub_29A00911C(a2, v15, v16);
  if (*(a1 + 192) == 1)
  {
    sub_29A00911C(a2, "void HgiSet_", 12);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    v17 = sub_29A00911C(a2, "(", 1);
    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v73;
    }

    else
    {
      v18 = v73.__r_.__value_.__r.__words[0];
    }

    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v73.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v73.__r_.__value_.__l.__size_;
    }

    v20 = sub_29A00911C(v17, v18, size);
    sub_29A00911C(v20, " uv, vec4 data) {\n", 18);
    sub_29A00911C(a2, "    ", 4);
    sub_29A00911C(a2, "imageStore(", 11);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    sub_29A00911C(a2, ", uv, data);\n", 13);
    sub_29A00911C(a2, "}\n", 2);
    if (v75 >= 0)
    {
      v21 = &v74;
    }

    else
    {
      v21 = v74;
    }

    if (v75 >= 0)
    {
      v22 = HIBYTE(v75);
    }

    else
    {
      v22 = *(&v74 + 1);
    }

    v23 = sub_29A00911C(a2, v21, v22);
    sub_29A00911C(v23, " HgiGetSize_", 12);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    sub_29A00911C(a2, "() {\n", 5);
    sub_29A00911C(a2, "    ", 4);
    sub_29A00911C(a2, "return imageSize(", 17);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    sub_29A00911C(a2, ");\n", 3);
    sub_29A00911C(a2, "}\n", 2);
  }

  else
  {
    if (*(a1 + 188))
    {
      v24 = "uint index, ";
    }

    else
    {
      v24 = "";
    }

    sub_29A008E78(&v71, v24);
    if (*(a1 + 188))
    {
      v25 = "[index]";
    }

    else
    {
      v25 = "";
    }

    sub_29A008E78(&__p, v25);
    pxrInternal__aapl__pxrReserved__::HgiGLTextureShaderSection::_WriteSampledDataType(a1, a2);
    sub_29A00911C(a2, " HgiGet_", 8);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    v26 = sub_29A00911C(a2, "(", 1);
    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v71;
    }

    else
    {
      v27 = v71.__r_.__value_.__r.__words[0];
    }

    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v28 = v71.__r_.__value_.__l.__size_;
    }

    v29 = sub_29A00911C(v26, v27, v28);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &v72;
    }

    else
    {
      v30 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v31 = v72.__r_.__value_.__l.__size_;
    }

    v32 = sub_29A00911C(v29, v30, v31);
    sub_29A00911C(v32, " uv) {\n", 7);
    sub_29A00911C(a2, "    ", 4);
    pxrInternal__aapl__pxrReserved__::HgiGLTextureShaderSection::_WriteSampledDataType(a1, a2);
    sub_29A00911C(a2, " result = texture(", 18);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    if ((v70 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v70 & 0x80u) == 0)
    {
      v34 = v70;
    }

    else
    {
      v34 = v69;
    }

    v35 = sub_29A00911C(a2, p_p, v34);
    sub_29A00911C(v35, ", uv);\n", 7);
    sub_29A00911C(a2, "    return result;\n", 19);
    sub_29A00911C(a2, "}\n", 2);
    if (v75 >= 0)
    {
      v36 = &v74;
    }

    else
    {
      v36 = v74;
    }

    if (v75 >= 0)
    {
      v37 = HIBYTE(v75);
    }

    else
    {
      v37 = *(&v74 + 1);
    }

    v38 = sub_29A00911C(a2, v36, v37);
    sub_29A00911C(v38, " HgiGetSize_", 12);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    v39 = sub_29A00911C(a2, "(", 1);
    v40 = *(a1 + 188);
    if (v40)
    {
      v41 = "uint index";
    }

    else
    {
      v41 = "";
    }

    if (v40)
    {
      v42 = 10;
    }

    else
    {
      v42 = 0;
    }

    v43 = sub_29A00911C(v39, v41, v42);
    sub_29A00911C(v43, ") {\n", 4);
    sub_29A00911C(a2, "    ", 4);
    sub_29A00911C(a2, "return textureSize(", 19);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    if ((v70 & 0x80u) == 0)
    {
      v44 = &__p;
    }

    else
    {
      v44 = __p;
    }

    if ((v70 & 0x80u) == 0)
    {
      v45 = v70;
    }

    else
    {
      v45 = v69;
    }

    v46 = sub_29A00911C(a2, v44, v45);
    sub_29A00911C(v46, ", 0);\n", 6);
    sub_29A00911C(a2, "}\n", 2);
    pxrInternal__aapl__pxrReserved__::HgiGLTextureShaderSection::_WriteSampledDataType(a1, a2);
    sub_29A00911C(a2, " HgiTextureLod_", 15);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    v47 = sub_29A00911C(a2, "(", 1);
    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = &v71;
    }

    else
    {
      v48 = v71.__r_.__value_.__r.__words[0];
    }

    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v49 = v71.__r_.__value_.__l.__size_;
    }

    v50 = sub_29A00911C(v47, v48, v49);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v51 = &v72;
    }

    else
    {
      v51 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v52 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v52 = v72.__r_.__value_.__l.__size_;
    }

    v53 = sub_29A00911C(v50, v51, v52);
    sub_29A00911C(v53, " coord, float lod) {\n", 21);
    sub_29A00911C(a2, "    ", 4);
    sub_29A00911C(a2, "return textureLod(", 18);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
    if ((v70 & 0x80u) == 0)
    {
      v54 = &__p;
    }

    else
    {
      v54 = __p;
    }

    if ((v70 & 0x80u) == 0)
    {
      v55 = v70;
    }

    else
    {
      v55 = v69;
    }

    v56 = sub_29A00911C(a2, v54, v55);
    sub_29A00911C(v56, ", coord, lod);\n", 15);
    sub_29A00911C(a2, "}\n", 2);
    if (*(a1 + 184) != 1)
    {
      pxrInternal__aapl__pxrReserved__::HgiGLTextureShaderSection::_WriteSampledDataType(a1, a2);
      sub_29A00911C(a2, " HgiTexelFetch_", 15);
      pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
      v57 = sub_29A00911C(a2, "(", 1);
      if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = &v71;
      }

      else
      {
        v58 = v71.__r_.__value_.__r.__words[0];
      }

      if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v59 = v71.__r_.__value_.__l.__size_;
      }

      v60 = sub_29A00911C(v57, v58, v59);
      if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v61 = &v73;
      }

      else
      {
        v61 = v73.__r_.__value_.__r.__words[0];
      }

      if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v62 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v62 = v73.__r_.__value_.__l.__size_;
      }

      v63 = sub_29A00911C(v60, v61, v62);
      sub_29A00911C(v63, " coord) {\n", 10);
      sub_29A00911C(a2, "    ", 4);
      pxrInternal__aapl__pxrReserved__::HgiGLTextureShaderSection::_WriteSampledDataType(a1, a2);
      sub_29A00911C(a2, " result = texelFetch(", 21);
      pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
      if ((v70 & 0x80u) == 0)
      {
        v64 = &__p;
      }

      else
      {
        v64 = __p;
      }

      if ((v70 & 0x80u) == 0)
      {
        v65 = v70;
      }

      else
      {
        v65 = v69;
      }

      v66 = sub_29A00911C(a2, v64, v65);
      sub_29A00911C(v66, ", coord, 0);\n", 13);
      sub_29A00911C(a2, "    return result;\n", 19);
      sub_29A00911C(a2, "}\n", 2);
    }

    if (v70 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75) < 0)
  {
    operator delete(v74);
  }

  return 1;
}

void sub_29AB991DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLBufferShaderSection::HgiGLBufferShaderSection(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, int a5, __int128 *a6, __int128 **a7)
{
  sub_29A008E78(v22, "buffer");
  sub_29A008E78(v20, "");
  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  __p = 0uLL;
  v17 = 0;
  pxrInternal__aapl__pxrReserved__::HgiGLShaderSection::HgiGLShaderSection(a1, a2, a7, v22, v20, v18, &__p);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  *a1 = &unk_2A2073460;
  if (*(a4 + 23) < 0)
  {
    sub_29A008D14((a1 + 176), *a4, *(a4 + 1));
  }

  else
  {
    v13 = *a4;
    *(a1 + 192) = *(a4 + 2);
    *(a1 + 176) = v13;
  }

  *(a1 + 200) = a5;
  if (*(a6 + 23) < 0)
  {
    sub_29A008D14((a1 + 208), *a6, *(a6 + 1));
  }

  else
  {
    v14 = *a6;
    *(a1 + 224) = *(a6 + 2);
    *(a1 + 208) = v14;
  }

  return a1;
}

void sub_29AB993F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 + 199) < 0)
  {
    operator delete(*v33);
  }

  pxrInternal__aapl__pxrReserved__::HgiGLShaderSection::~HgiGLShaderSection(v32);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HgiGLBufferShaderSection::~HgiGLBufferShaderSection(void **this)
{
  if (*(this + 231) < 0)
  {
    operator delete(this[26]);
  }

  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  pxrInternal__aapl__pxrReserved__::HgiGLShaderSection::~HgiGLShaderSection(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiGLBufferShaderSection::~HgiGLBufferShaderSection(this);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::HgiGLBufferShaderSection::WriteType(uint64_t a1, void *a2)
{
  v5 = *(a1 + 176);
  v3 = a1 + 176;
  v4 = v5;
  v6 = *(v3 + 23);
  if (v6 >= 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (v6 >= 0)
  {
    v8 = *(v3 + 23);
  }

  else
  {
    v8 = *(v3 + 8);
  }

  return sub_29A00911C(a2, v7, v8);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLBufferShaderSection::VisitGlobalMemberDeclarations(uint64_t a1, void *a2)
{
  Attributes = pxrInternal__aapl__pxrReserved__::HgiShaderSection::GetAttributes(a1);
  if (*Attributes != Attributes[1])
  {
    v5 = Attributes;
    sub_29A00911C(a2, "layout(", 7);
    v6 = *v5;
    if (v5[1] != *v5)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        if (v8)
        {
          sub_29A00911C(a2, ", ", 2);
          v6 = *v5;
        }

        v9 = v6 + v7;
        v10 = *(v6 + v7 + 23);
        if (v10 >= 0)
        {
          v11 = v6 + v7;
        }

        else
        {
          v11 = *(v6 + v7);
        }

        if (v10 >= 0)
        {
          v12 = *(v6 + v7 + 23);
        }

        else
        {
          v12 = *(v6 + v7 + 8);
        }

        sub_29A00911C(a2, v11, v12);
        if ((*(v9 + 47) & 0x8000000000000000) != 0)
        {
          if (*(v9 + 32))
          {
LABEL_14:
            v13 = sub_29A00911C(a2, " = ", 3);
            v14 = *(v9 + 47);
            if (v14 >= 0)
            {
              v15 = v9 + 24;
            }

            else
            {
              v15 = *(v9 + 24);
            }

            if (v14 >= 0)
            {
              v16 = *(v9 + 47);
            }

            else
            {
              v16 = *(v6 + v7 + 32);
            }

            sub_29A00911C(v13, v15, v16);
          }
        }

        else if (*(v9 + 47))
        {
          goto LABEL_14;
        }

        ++v8;
        v6 = *v5;
        v7 += 48;
      }

      while (v8 < 0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 4));
    }

    sub_29A00911C(a2, ") ", 2);
  }

  if (((*(a1 + 200) - 1) & 0xFFFFFFFD) != 0)
  {
    v17 = "buffer ssbo_";
  }

  else
  {
    v17 = "uniform ubo_";
  }

  sub_29A00911C(a2, v17, 12);
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
  sub_29A00911C(a2, " { ", 3);
  v18 = *(a1 + 199);
  if (v18 >= 0)
  {
    v19 = a1 + 176;
  }

  else
  {
    v19 = *(a1 + 176);
  }

  if (v18 >= 0)
  {
    v20 = *(a1 + 199);
  }

  else
  {
    v20 = *(a1 + 184);
  }

  sub_29A00911C(a2, v19, v20);
  sub_29A00911C(a2, " ", 1);
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
  if (*(a1 + 200) > 1u)
  {
    v24 = sub_29A00911C(a2, "[", 1);
    v27 = *(a1 + 208);
    v26 = a1 + 208;
    v25 = v27;
    v28 = *(v26 + 23);
    if (v28 >= 0)
    {
      v29 = v26;
    }

    else
    {
      v29 = v25;
    }

    if (v28 >= 0)
    {
      v30 = *(v26 + 23);
    }

    else
    {
      v30 = *(v26 + 8);
    }

    v22 = sub_29A00911C(v24, v29, v30);
    v21 = "]; };\n";
    v23 = 6;
  }

  else
  {
    v21 = "; };\n";
    v22 = a2;
    v23 = 5;
  }

  sub_29A00911C(v22, v21, v23);
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLKeywordShaderSection::HgiGLKeywordShaderSection(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  memset(v18, 0, sizeof(v18));
  v16 = 0uLL;
  v17 = 0;
  v14 = 0uLL;
  v15 = 0;
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  __p = 0uLL;
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::HgiGLShaderSection::HgiGLShaderSection(a1, a2, v18, &v16, &v14, v12, &__p);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14);
  }

  *&v16 = v18;
  sub_29A0D2770(&v16);
  *a1 = &unk_2A20734D8;
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14((a1 + 176), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 192) = *(a3 + 2);
    *(a1 + 176) = v7;
  }

  if (*(a4 + 23) < 0)
  {
    sub_29A008D14((a1 + 200), *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    *(a1 + 216) = *(a4 + 2);
    *(a1 + 200) = v8;
  }

  return a1;
}

void sub_29AB9989C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28)
{
  if (*(v28 + 199) < 0)
  {
    operator delete(*v29);
  }

  pxrInternal__aapl__pxrReserved__::HgiGLShaderSection::~HgiGLShaderSection(v28);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HgiGLKeywordShaderSection::~HgiGLKeywordShaderSection(void **this)
{
  if (*(this + 223) < 0)
  {
    operator delete(this[25]);
  }

  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  pxrInternal__aapl__pxrReserved__::HgiGLShaderSection::~HgiGLShaderSection(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiGLKeywordShaderSection::~HgiGLKeywordShaderSection(this);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::HgiGLKeywordShaderSection::WriteType(uint64_t a1, void *a2)
{
  v5 = *(a1 + 176);
  v3 = a1 + 176;
  v4 = v5;
  v6 = *(v3 + 23);
  if (v6 >= 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (v6 >= 0)
  {
    v8 = *(v3 + 23);
  }

  else
  {
    v8 = *(v3 + 8);
  }

  return sub_29A00911C(a2, v7, v8);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLKeywordShaderSection::VisitGlobalMemberDeclarations(uint64_t a1, void *a2)
{
  v4 = *(a1 + 199);
  if (v4 >= 0)
  {
    v5 = a1 + 176;
  }

  else
  {
    v5 = *(a1 + 176);
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 199);
  }

  else
  {
    v6 = *(a1 + 184);
  }

  sub_29A00911C(a2, v5, v6);
  sub_29A00911C(a2, " ", 1);
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
  sub_29A00911C(a2, " = ", 3);
  v9 = *(a1 + 200);
  v8 = a1 + 200;
  v7 = v9;
  v10 = *(v8 + 23);
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v12 = *(v8 + 8);
  }

  sub_29A00911C(a2, v11, v12);
  sub_29A00911C(a2, ";\n", 2);
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLInterstageBlockShaderSection::HgiGLInterstageBlockShaderSection(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memset(v13, 0, sizeof(v13));
  __p = 0uLL;
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::HgiGLShaderSection::HgiGLShaderSection(a1, a2, v13, a4, &__p, a5, a3);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  *&__p = v13;
  sub_29A0D2770(&__p);
  *a1 = &unk_2A2073550;
  if (*(a4 + 23) < 0)
  {
    sub_29A008D14((a1 + 176), *a4, *(a4 + 8));
  }

  else
  {
    v9 = *a4;
    *(a1 + 192) = *(a4 + 16);
    *(a1 + 176) = v9;
  }

  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  sub_29AB99E14((a1 + 200), *a6, *(a6 + 8), (*(a6 + 8) - *a6) >> 3);
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLInterstageBlockShaderSection::VisitGlobalMemberDeclarations(uint64_t a1, void *a2)
{
  v4 = *(a1 + 199);
  if (v4 >= 0)
  {
    v5 = a1 + 176;
  }

  else
  {
    v5 = *(a1 + 176);
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 199);
  }

  else
  {
    v6 = *(a1 + 184);
  }

  v7 = sub_29A00911C(a2, v5, v6);
  sub_29A00911C(v7, " ", 1);
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(a1, a2);
  sub_29A00911C(a2, " {\n", 3);
  v8 = *(a1 + 200);
  for (i = *(a1 + 208); v8 != i; ++v8)
  {
    v10 = *v8;
    sub_29A00911C(a2, "  ", 2);
    pxrInternal__aapl__pxrReserved__::HgiGLMemberShaderSection::WriteInterpolation(v10, a2);
    pxrInternal__aapl__pxrReserved__::HgiGLMemberShaderSection::WriteSampling(v10, a2);
    if (*(v10 + 208) == 1)
    {
      sub_29A00911C(a2, "patch ", 6);
    }

    v11 = *(v10 + 199);
    if (v11 >= 0)
    {
      v12 = v10 + 176;
    }

    else
    {
      v12 = *(v10 + 176);
    }

    if (v11 >= 0)
    {
      v13 = *(v10 + 199);
    }

    else
    {
      v13 = *(v10 + 184);
    }

    sub_29A00911C(a2, v12, v13);
    sub_29A00911C(a2, " ", 1);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(v10, a2);
    sub_29A00911C(a2, ";\n", 2);
  }

  sub_29A00911C(a2, "} ", 2);
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteBlockInstanceIdentifier(a1, a2);
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteArraySize(a1, a2);
  sub_29A00911C(a2, ";\n", 2);
  return 1;
}

void sub_29AB99D68(pxrInternal__aapl__pxrReserved__::HgiGLShaderSection *this)
{
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    operator delete(v2);
  }

  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  pxrInternal__aapl__pxrReserved__::HgiGLShaderSection::~HgiGLShaderSection(this);
}

void sub_29AB99DBC(pxrInternal__aapl__pxrReserved__::HgiGLShaderSection *this)
{
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    operator delete(v2);
  }

  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  pxrInternal__aapl__pxrReserved__::HgiGLShaderSection::~HgiGLShaderSection(this);

  operator delete(v3);
}

void *sub_29AB99E14(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A00C968(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29AB99E74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HgiGLBlitCmds::HgiGLBlitCmds(pxrInternal__aapl__pxrReserved__::HgiGLBlitCmds *this)
{
  result = pxrInternal__aapl__pxrReserved__::HgiBlitCmds::HgiBlitCmds(this);
  *result = &unk_2A2073688;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  *(result + 10) = 0;
  return result;
}

{
  result = pxrInternal__aapl__pxrReserved__::HgiBlitCmds::HgiBlitCmds(this);
  *result = &unk_2A2073688;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  *(result + 10) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HgiGLBlitCmds::~HgiGLBlitCmds(pxrInternal__aapl__pxrReserved__::HgiGLBlitCmds *this)
{
  v2 = (this + 16);
  sub_29AB9A7A0(&v2);
  pxrInternal__aapl__pxrReserved__::HgiBlitCmds::~HgiBlitCmds(this);
}

{
  v2 = (this + 16);
  sub_29AB9A7A0(&v2);
  pxrInternal__aapl__pxrReserved__::HgiBlitCmds::~HgiBlitCmds(this);
}

{
  v3 = (this + 16);
  sub_29AB9A7A0(&v3);
  pxrInternal__aapl__pxrReserved__::HgiBlitCmds::~HgiBlitCmds(this);
  operator delete(v2);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLBlitCmds::PushDebugGroup(pxrInternal__aapl__pxrReserved__::HgiGLBlitCmds *this, pxrInternal__aapl__pxrReserved__::HgiGLOps *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  result = pxrInternal__aapl__pxrReserved__::HgiGLDebugEnabled(this);
  if (result)
  {
    ++*(this + 10);
    pxrInternal__aapl__pxrReserved__::HgiGLOps::PushDebugGroup(a2, v5);
    sub_29AB9A07C(this + 2, v5);
    return sub_29A0FC854(v5);
  }

  return result;
}

void sub_29AB9A060(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AB9A07C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29AB9A824(a1, a2);
  }

  else
  {
    result = sub_29AB9A930(v3, a2) + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLBlitCmds::PopDebugGroup(pxrInternal__aapl__pxrReserved__::HgiGLBlitCmds *this)
{
  v3[4] = *MEMORY[0x29EDCA608];
  result = pxrInternal__aapl__pxrReserved__::HgiGLDebugEnabled(this);
  if (result)
  {
    --*(this + 10);
    pxrInternal__aapl__pxrReserved__::HgiGLOps::PopDebugGroup(v3);
    sub_29AB9A07C(this + 2, v3);
    return sub_29A0FC854(v3);
  }

  return result;
}

void sub_29AB9A148(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLBlitCmds::CopyTextureGpuToCpu(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyTextureGpuToCpu(a2, v4);
  sub_29AB9A07C((a1 + 16), v4);
  return sub_29A0FC854(v4);
}

void sub_29AB9A1D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLBlitCmds::CopyTextureCpuToGpu(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyTextureCpuToGpu(a2, v4);
  sub_29AB9A07C((a1 + 16), v4);
  return sub_29A0FC854(v4);
}

void sub_29AB9A268(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLBlitCmds::CopyBufferGpuToGpu(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyBufferGpuToGpu(a2, v4);
  sub_29AB9A07C((a1 + 16), v4);
  return sub_29A0FC854(v4);
}

void sub_29AB9A2F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLBlitCmds::CopyBufferCpuToGpu(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyBufferCpuToGpu(a2, v4);
  sub_29AB9A07C((a1 + 16), v4);
  return sub_29A0FC854(v4);
}

void sub_29AB9A388(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLBlitCmds::CopyBufferGpuToCpu(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyBufferGpuToCpu(a2, v4);
  sub_29AB9A07C((a1 + 16), v4);
  return sub_29A0FC854(v4);
}

void sub_29AB9A418(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLBlitCmds::CopyTextureToBuffer(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyTextureToBuffer(a2, v4);
  sub_29AB9A07C((a1 + 16), v4);
  return sub_29A0FC854(v4);
}

void sub_29AB9A4A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLBlitCmds::CopyBufferToTexture(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyBufferToTexture(a2, v4);
  sub_29AB9A07C((a1 + 16), v4);
  return sub_29A0FC854(v4);
}

void sub_29AB9A538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLBlitCmds::FillBuffer(uint64_t a1, __n128 *a2, char a3)
{
  v6 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiGLOps::FillBuffer(a2, a3, v5);
  sub_29AB9A07C((a1 + 16), v5);
  return sub_29A0FC854(v5);
}

void sub_29AB9A5CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLBlitCmds::GenerateMipMaps(uint64_t a1, __n128 *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiGLOps::GenerateMipMaps(a2, v4);
  sub_29AB9A07C((a1 + 16), v4);
  return sub_29A0FC854(v4);
}

void sub_29AB9A65C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLBlitCmds::InsertMemoryBarrier(pxrInternal__aapl__pxrReserved__::HgiGLBlitCmds *this, pxrInternal__aapl__pxrReserved__::HgiGLOps *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiGLOps::InsertMemoryBarrier(a2, v4);
  sub_29AB9A07C(this + 2, v4);
  return sub_29A0FC854(v4);
}

void sub_29AB9A6EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::HgiGLBlitCmds::_Submit(uint64_t a1, char *a2, char *a3)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v3 = (a1 + 16);
  if (v4 != v5)
  {
    if (*(a1 + 40))
    {
      sub_29B2C2D64(v9, a2, a3);
    }

    pxrInternal__aapl__pxrReserved__::HgiGL_ScopedStateHolder::HgiGL_ScopedStateHolder(v9);
    PrimaryDevice = pxrInternal__aapl__pxrReserved__::HgiGL::GetPrimaryDevice(a2);
    pxrInternal__aapl__pxrReserved__::HgiGLDevice::SubmitOps(PrimaryDevice, v3);
    pxrInternal__aapl__pxrReserved__::HgiGL_ScopedStateHolder::~HgiGL_ScopedStateHolder(v9);
  }

  return v4 != v5;
}

void sub_29AB9A78C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::HgiGL_ScopedStateHolder::~HgiGL_ScopedStateHolder(va);
  _Unwind_Resume(a1);
}

void sub_29AB9A7A0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_29A0FC854(v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29AB9A824(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A10CB10(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[32 * v2];
  *(&v17 + 1) = &v8[32 * v7];
  sub_29AB9A930(v16, a2);
  *&v17 = v16 + 32;
  v9 = a1[1];
  v10 = &v16[*a1 - v9];
  sub_29AB9A9B0(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29AB9AA20(&v15);
  return v14;
}

void sub_29AB9A91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB9AA20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AB9A930(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void sub_29AB9A9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_29AB9A930(a4, v7);
      v7 += 32;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_29A0FC854(v6);
      v6 += 32;
    }
  }
}

uint64_t sub_29AB9AA20(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    sub_29A0FC854(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLBuffer::HgiGLBuffer(uint64_t a1, uint64_t a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::HgiBuffer::HgiBuffer(a1, a2);
  *v4 = &unk_2A2073728;
  *(v4 + 64) = 0;
  v5 = (v4 + 64);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  if (!*(a2 + 32))
  {
    __p = "hgiGL/buffer.cpp";
    v8 = "HgiGLBuffer";
    v9 = 23;
    v10 = "pxrInternal__aapl__pxrReserved__::HgiGLBuffer::HgiGLBuffer(const HgiBufferDesc &)";
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Buffers must have a non-zero length");
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateBuffers(1, v5);
  if ((*(a1 + 31) & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 31))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (*(a1 + 16))
  {
LABEL_7:
    pxrInternal__aapl__pxrReserved__::HgiGLObjectLabel(33504, *v5, (a1 + 8));
  }

LABEL_8:
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedBufferData(*(a1 + 64), *(a1 + 40), *(a1 + 56), 35044);
  if ((*(a1 + 32) & 4) != 0 && !*(a2 + 40))
  {
    __p = "hgiGL/buffer.cpp";
    v8 = "HgiGLBuffer";
    v9 = 41;
    v10 = "pxrInternal__aapl__pxrReserved__::HgiGLBuffer::HgiGLBuffer(const HgiBufferDesc &)";
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "desc.vertexStride > 0", 0);
  }

  *(a1 + 56) = 0;
  sub_29A008E78(&__p, "pxrInternal__aapl__pxrReserved__::HgiGLBuffer::HgiGLBuffer(const HgiBufferDesc &)");
  pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(&__p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HgiGLBuffer::~HgiGLBuffer(pxrInternal__aapl__pxrReserved__::HgiGLBuffer *this)
{
  v2 = (this + 64);
  if (*(this + 16))
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteBuffers(1, v2);
    *v2 = 0;
  }

  v3 = *(this + 9);
  if (v3)
  {
    free(v3);
    *(this + 9) = 0;
  }

  sub_29A008E78(__p, "virtual pxrInternal__aapl__pxrReserved__::HgiGLBuffer::~HgiGLBuffer()");
  pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(__p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::HgiBuffer::~HgiBuffer(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiGLBuffer::~HgiGLBuffer(this);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::HgiGLBuffer::GetCPUStagingAddress(pxrInternal__aapl__pxrReserved__::HgiGLBuffer *this)
{
  result = *(this + 9);
  if (!result)
  {
    result = malloc(*(this + 5));
    *(this + 9) = result;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLBuffer::GetBindlessGPUAddress(pxrInternal__aapl__pxrReserved__::HgiGLBuffer *this)
{
  v3 = this + 80;
  result = *(this + 10);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedBufferParameterui64vNV(*(this + 16), 36637, v3);
    result = *(this + 10);
    if (!result)
    {
      v4[0] = "hgiGL/buffer.cpp";
      v4[1] = "GetBindlessGPUAddress";
      v4[2] = 101;
      v4[3] = "uint64_t pxrInternal__aapl__pxrReserved__::HgiGLBuffer::GetBindlessGPUAddress()";
      v5 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Failed to get bindless buffer GPU address");
      return *v3;
    }
  }

  return result;
}

void sub_29AB9ADCC()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HGIGL_ENABLE_BINDLESS_BUFFER))
  {
    sub_29B2C2DCC();
  }
}

void sub_29AB9ADFC()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HGIGL_ENABLE_MULTI_DRAW_INDIRECT))
  {
    sub_29B2C2DFC();
  }
}

void sub_29AB9AE2C()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HGIGL_ENABLE_BUILTIN_BARYCENTRICS))
  {
    sub_29B2C2E2C();
  }
}

void sub_29AB9AE5C()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HGIGL_ENABLE_SHADER_DRAW_PARAMETERS))
  {
    sub_29B2C2E5C();
  }
}

void sub_29AB9AE8C()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HGIGL_ENABLE_BINDLESS_TEXTURE))
  {
    sub_29B2C2E8C();
  }
}

void sub_29AB9AEBC()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HGIGL_GLSL_VERSION))
  {
    sub_29B2C2EBC();
  }
}

pxrInternal__aapl__pxrReserved__::HgiGLCapabilities *pxrInternal__aapl__pxrReserved__::HgiGLCapabilities::HgiGLCapabilities(pxrInternal__aapl__pxrReserved__::HgiGLCapabilities *this)
{
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 1;
  *(this + 6) = 0;
  *this = &unk_2A2073778;
  *(this + 14) = 400;
  pxrInternal__aapl__pxrReserved__::HgiGLCapabilities::_LoadCapabilities(this);
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLCapabilities::_LoadCapabilities(pxrInternal__aapl__pxrReserved__::HgiGLCapabilities *this)
{
  pxrInternal__aapl__pxrReserved__::internal::GLApi::GarchGLApiLoad(this);
  *(this + 8) = xmmword_29B6C6EC0;
  *(this + 24) = xmmword_29B6C6ED0;
  String = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetString(7936);
  v3 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetString(7937);
  result = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetString(7938);
  if (!result)
  {
    return result;
  }

  v5 = result;
  __s = String;
  v113 = v3;
  v6 = strchr(result, 46);
  v9 = v6;
  if (v6)
  {
    v10 = v6 == v5;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 || (v118[0] = "hgiGL/capabilities.cpp", v118[1] = "_LoadCapabilities", v118[2] = 75, v118[3] = "void pxrInternal__aapl__pxrReserved__::HgiGLCapabilities::_LoadCapabilities()", v119 = 0, v111 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Can't parse GL_VERSION %s", v7, v8, v5), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v118, "(dot && dot != glVersionStr)", v111) & 1) != 0))
  {
    v11 = *(v9 - 1);
    if (v11 <= 48)
    {
      v12 = 48;
    }

    else
    {
      v12 = *(v9 - 1);
    }

    v13 = 100 * v12 - 4800;
    v14 = v9[1];
    if (v14 <= 48)
    {
      v15 = 48;
    }

    else
    {
      v15 = v9[1];
    }

    v16 = 10 * v15 - 480;
    if (v11 >= 57)
    {
      v17 = 900;
    }

    else
    {
      v17 = v13;
    }

    if (v14 >= 57)
    {
      v16 = 90;
    }

    v18 = v16 + v17;
    *(this + 13) = v18;
  }

  else
  {
    v18 = *(this + 13);
  }

  if (v18 < 200)
  {
    v30 = 0;
  }

  else
  {
    v19 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetString(35724);
    v20 = strchr(v19, 46);
    v22 = v20;
    if ((!v20 || v20 == v19) && (sub_29B2C2EEC(v118, v19, v21) & 1) == 0)
    {
      goto LABEL_35;
    }

    v23 = *(v22 - 1);
    if (v23 <= 48)
    {
      v24 = 48;
    }

    else
    {
      v24 = *(v22 - 1);
    }

    v25 = 100 * v24 - 4800;
    v26 = v22[1];
    if (v26 <= 48)
    {
      v27 = 48;
    }

    else
    {
      v27 = v22[1];
    }

    v28 = 10 * v27 - 480;
    if (v23 >= 57)
    {
      v29 = 900;
    }

    else
    {
      v29 = v25;
    }

    if (v26 >= 57)
    {
      v28 = 90;
    }

    v30 = v28 + v29;
  }

  *(this + 14) = v30;
LABEL_35:
  v117 = 0;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(3378, &v117);
  *(this + 4) = v117;
  v31 = *(this + 13);
  if (v31 >= 310)
  {
    v116 = 0;
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(35376, &v116);
    *(this + 1) = v116;
    v115 = 0;
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(35380, &v115);
    *(this + 3) = v115;
    v31 = *(this + 13);
    if (v31 >= 430)
    {
      v116 = 0;
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(37086, &v116);
      *(this + 2) = v116;
      v31 = *(this + 13);
    }
  }

  v32 = v31 > 449;
  v33 = v31 > 459;
  v34 = pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_conservative_raster;
  v35 = atomic_load(pxrInternal__aapl__pxrReserved__::HGIGL_ENABLE_BINDLESS_TEXTURE);
  if (!v35)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
  }

  v114 = v5;
  v36 = *v35;
  v37 = atomic_load(pxrInternal__aapl__pxrReserved__::HGIGL_ENABLE_BINDLESS_BUFFER);
  if (!v37)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
  }

  v38 = *v37;
  v39 = atomic_load(pxrInternal__aapl__pxrReserved__::HGIGL_ENABLE_BUILTIN_BARYCENTRICS);
  if (!v39)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
  }

  v40 = *v39;
  v41 = atomic_load(pxrInternal__aapl__pxrReserved__::HGIGL_ENABLE_MULTI_DRAW_INDIRECT);
  if (!v41)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
  }

  v42 = *v41;
  v43 = atomic_load(pxrInternal__aapl__pxrReserved__::HGIGL_ENABLE_SHADER_DRAW_PARAMETERS);
  if (!v43)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
  }

  v44 = pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_multi_draw_indirect | v32;
  v45 = pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_shader_draw_parameters | v33;
  v46 = *v43;
  v47 = atomic_load(pxrInternal__aapl__pxrReserved__::HGIGL_GLSL_VERSION);
  if (!v47)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
  }

  v48 = v36 & pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_ARB_bindless_texture;
  v49 = v38 & pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_shader_buffer_load;
  v50 = v40 & pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_fragment_shader_barycentric;
  v51 = v42 & v44;
  v52 = v46 & v45;
  if (*v47 >= 1)
  {
    v53 = atomic_load(pxrInternal__aapl__pxrReserved__::HGIGL_GLSL_VERSION);
    if (!v53)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
    }

    v54 = *v53;
    if (v54 >= *(this + 14))
    {
      v54 = *(this + 14);
    }

    *(this + 14) = v54;
  }

  if (v51)
  {
    v55 = 64;
  }

  else
  {
    v55 = 0;
  }

  v56 = *(this + 12) & 0xFFFFFF0D | v55;
  if (v48)
  {
    v57 = 128;
  }

  else
  {
    v57 = 0;
  }

  if (v49)
  {
    v58 = 2;
  }

  else
  {
    v58 = 0;
  }

  v59 = v56 | v57 | v58;
  if (v50)
  {
    v60 = 16;
  }

  else
  {
    v60 = 0;
  }

  if (v46 & v45)
  {
    v61 = 32;
  }

  else
  {
    v61 = 0;
  }

  v62 = v59 | v60 | v61;
  v63 = v62 & 0xFFFFC4FF | 0x300;
  v64 = v62 | 0xB00;
  if (!v34)
  {
    v64 = v63;
  }

  *(this + 12) = v64 | 0x3000;
  v65 = v34;
  result = sub_29AB88278(0);
  if (result)
  {
    v66 = sub_29A00911C(MEMORY[0x29EDC93C8], "HgiGLCapabilities: \n", 20);
    v67 = sub_29A00911C(v66, "  GL_VENDOR                          = ", 39);
    v68 = strlen(__s);
    v69 = sub_29A00911C(v67, __s, v68);
    v70 = sub_29A00911C(v69, "\n", 1);
    v71 = sub_29A00911C(v70, "  GL_RENDERER                        = ", 39);
    v72 = strlen(v113);
    v73 = sub_29A00911C(v71, v113, v72);
    v74 = sub_29A00911C(v73, "\n", 1);
    v75 = sub_29A00911C(v74, "  GL_VERSION                         = ", 39);
    v76 = strlen(v114);
    v77 = sub_29A00911C(v75, v114, v76);
    v78 = sub_29A00911C(v77, "\n", 1);
    v79 = sub_29A00911C(v78, "  GL version                         = ", 39);
    v80 = MEMORY[0x29C2C1ED0](v79, *(this + 13));
    v81 = sub_29A00911C(v80, "\n", 1);
    v82 = sub_29A00911C(v81, "  GLSL version                       = ", 39);
    v83 = MEMORY[0x29C2C1ED0](v82, *(this + 14));
    v84 = sub_29A00911C(v83, "\n", 1);
    v85 = sub_29A00911C(v84, "  GL_MAX_UNIFORM_BLOCK_SIZE          = ", 39);
    v86 = MEMORY[0x29C2C1F00](v85, *(this + 1));
    v87 = sub_29A00911C(v86, "\n", 1);
    v88 = sub_29A00911C(v87, "  GL_MAX_SHADER_STORAGE_BLOCK_SIZE   = ", 39);
    v89 = MEMORY[0x29C2C1F00](v88, *(this + 2));
    v90 = sub_29A00911C(v89, "\n", 1);
    v91 = sub_29A00911C(v90, "  GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT = ", 39);
    v92 = MEMORY[0x29C2C1F00](v91, *(this + 3));
    v93 = sub_29A00911C(v92, "\n", 1);
    v94 = sub_29A00911C(v93, "  ARB_bindless_texture               = ", 39);
    v95 = MEMORY[0x29C2C1EA0](v94, v48 & 1);
    v96 = sub_29A00911C(v95, "\n", 1);
    v97 = sub_29A00911C(v96, "  ARB_multi_draw_indirect            = ", 39);
    v98 = MEMORY[0x29C2C1EA0](v97, v51 & 1);
    v99 = sub_29A00911C(v98, "\n", 1);
    v100 = sub_29A00911C(v99, "  ARB_shader_draw_parameters         = ", 39);
    v101 = MEMORY[0x29C2C1EA0](v100, v52 & 1);
    v102 = sub_29A00911C(v101, "\n", 1);
    v103 = sub_29A00911C(v102, "  NV_fragment_shader_barycentric     = ", 39);
    v104 = MEMORY[0x29C2C1EA0](v103, v50 & 1);
    v105 = sub_29A00911C(v104, "\n", 1);
    v106 = sub_29A00911C(v105, "  NV_shader_buffer_load              = ", 39);
    v107 = MEMORY[0x29C2C1EA0](v106, v49 & 1);
    v108 = sub_29A00911C(v107, "\n", 1);
    v109 = sub_29A00911C(v108, "  NV_conservative_raster             = ", 39);
    v110 = MEMORY[0x29C2C1EA0](v109, v65);
    return sub_29A00911C(v110, "\n", 1);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HgiGLCapabilities::~HgiGLCapabilities(pxrInternal__aapl__pxrReserved__::HgiGLCapabilities *this)
{
  pxrInternal__aapl__pxrReserved__::HgiCapabilities::~HgiCapabilities(this);

  operator delete(v1);
}

double pxrInternal__aapl__pxrReserved__::HgiGLComputeCmds::HgiGLComputeCmds(pxrInternal__aapl__pxrReserved__::HgiComputeCmds *a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::HgiComputeCmds::HgiComputeCmds(a1);
  *v1 = &unk_2A20737D0;
  v1[2] = 0;
  *(v1 + 10) = 0;
  *(v1 + 3) = 0u;
  *&result = 0x100000001;
  *(v1 + 44) = 0x100000001;
  *(v1 + 13) = 1;
  return result;
}

{
  v1 = pxrInternal__aapl__pxrReserved__::HgiComputeCmds::HgiComputeCmds(a1);
  *v1 = &unk_2A20737D0;
  v1[2] = 0;
  *(v1 + 10) = 0;
  *(v1 + 3) = 0u;
  *&result = 0x100000001;
  *(v1 + 44) = 0x100000001;
  *(v1 + 13) = 1;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HgiGLComputeCmds::~HgiGLComputeCmds(pxrInternal__aapl__pxrReserved__::HgiGLComputeCmds *this)
{
  v2 = (this + 16);
  sub_29AB9A7A0(&v2);
  pxrInternal__aapl__pxrReserved__::HgiComputeCmds::~HgiComputeCmds(this);
}

{
  v2 = (this + 16);
  sub_29AB9A7A0(&v2);
  pxrInternal__aapl__pxrReserved__::HgiComputeCmds::~HgiComputeCmds(this);
}

{
  v3 = (this + 16);
  sub_29AB9A7A0(&v3);
  pxrInternal__aapl__pxrReserved__::HgiComputeCmds::~HgiComputeCmds(this);
  operator delete(v2);
}

void pxrInternal__aapl__pxrReserved__::HgiGLComputeCmds::BindPipeline(uint64_t a1, pxrInternal__aapl__pxrReserved__::HgiComputePipeline *a2, uint64_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiGLOps::BindPipeline(a2, a3, &v16);
  sub_29AB9A07C((a1 + 16), &v16);
  sub_29A0FC854(&v16);
  Descriptor = pxrInternal__aapl__pxrReserved__::HgiComputePipeline::GetDescriptor(a2);
  v6 = pxrInternal__aapl__pxrReserved__::HgiShaderProgram::GetDescriptor(*(Descriptor + 24));
  v16 = 0;
  v17 = 0;
  v18 = 0;
  sub_29AB8C6E8(&v16, *(v6 + 24), *(v6 + 32), (*(v6 + 32) - *(v6 + 24)) >> 4);
  v7 = v16;
  v8 = v17;
  if (v16 != v17)
  {
    do
    {
      v9 = pxrInternal__aapl__pxrReserved__::HgiShaderFunction::GetDescriptor(*v7);
      if (v9[6] == 4)
      {
        v11 = v9[62];
        v12 = v9[63];
        v10 = v9 + 62;
        v13 = v11 < 1 || v12 < 1;
        if (!v13 && v10[2] >= 1)
        {
          v15 = *v10;
          *(a1 + 52) = v10[2];
          *(a1 + 44) = v15;
        }
      }

      v7 += 2;
    }

    while (v7 != v8);
    v7 = v16;
  }

  if (v7)
  {
    v17 = v7;
    operator delete(v7);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLComputeCmds::BindResources(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[4] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiGLOps::BindResources(a2, a3, v5);
  sub_29AB9A07C((a1 + 16), v5);
  return sub_29A0FC854(v5);
}

void sub_29AB9BAD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLComputeCmds::SetConstantValues(uint64_t a1, uint64_t a2, uint64_t a3, int a4, size_t __sz, const void *a6)
{
  v9 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiGLOps::SetConstantValues(__sz, a2, a3, a4, a6, v8);
  sub_29AB9A07C((a1 + 16), v8);
  return sub_29A0FC854(v8);
}

void sub_29AB9BB78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLComputeCmds::Dispatch(pxrInternal__aapl__pxrReserved__::HgiGLComputeCmds *this, int a2, int a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v7 = *(this + 11);
  v6 = *(this + 12);
  *v17 = 0;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegeri_v(37310, 0, v17);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegeri_v(37310, 1, &v17[1]);
  v9 = ((a2 + v7 - 1) / v7);
  if (v9 > v17[0])
  {
    v12 = "hgiGL/computeCmds.cpp";
    v13 = "Dispatch";
    v14 = 90;
    v15 = "virtual void pxrInternal__aapl__pxrReserved__::HgiGLComputeCmds::Dispatch(int, int)";
    v16 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v12, "Max number of work group available from device is %i, larger than %i", v8, v17[0], v9);
    v9 = v17[0];
  }

  v10 = ((a3 + v6 - 1) / v6);
  if (v10 > v17[1])
  {
    v12 = "hgiGL/computeCmds.cpp";
    v13 = "Dispatch";
    v14 = 95;
    v15 = "virtual void pxrInternal__aapl__pxrReserved__::HgiGLComputeCmds::Dispatch(int, int)";
    v16 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v12, "Max number of work group available from device is %i, larger than %i", v8, v17[1], ((a3 + v6 - 1) / v6));
    v10 = v17[1];
  }

  pxrInternal__aapl__pxrReserved__::HgiGLOps::Dispatch(v9, v10, &v12);
  sub_29AB9A07C(this + 2, &v12);
  return sub_29A0FC854(&v12);
}

void sub_29AB9BD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLComputeCmds::PushDebugGroup(pxrInternal__aapl__pxrReserved__::HgiGLComputeCmds *this, pxrInternal__aapl__pxrReserved__::HgiGLOps *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  result = pxrInternal__aapl__pxrReserved__::HgiGLDebugEnabled(this);
  if (result)
  {
    ++*(this + 10);
    pxrInternal__aapl__pxrReserved__::HgiGLOps::PushDebugGroup(a2, v5);
    sub_29AB9A07C(this + 2, v5);
    return sub_29A0FC854(v5);
  }

  return result;
}

void sub_29AB9BDBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLComputeCmds::PopDebugGroup(pxrInternal__aapl__pxrReserved__::HgiGLComputeCmds *this)
{
  v3[4] = *MEMORY[0x29EDCA608];
  result = pxrInternal__aapl__pxrReserved__::HgiGLDebugEnabled(this);
  if (result)
  {
    --*(this + 10);
    pxrInternal__aapl__pxrReserved__::HgiGLOps::PopDebugGroup(v3);
    sub_29AB9A07C(this + 2, v3);
    return sub_29A0FC854(v3);
  }

  return result;
}

void sub_29AB9BE5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLComputeCmds::InsertMemoryBarrier(pxrInternal__aapl__pxrReserved__::HgiGLComputeCmds *this, pxrInternal__aapl__pxrReserved__::HgiGLOps *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiGLOps::InsertMemoryBarrier(a2, v4);
  sub_29AB9A07C(this + 2, v4);
  return sub_29A0FC854(v4);
}

void sub_29AB9BEEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::HgiGLComputeCmds::_Submit(uint64_t a1, pxrInternal__aapl__pxrReserved__::HgiGL *this, char *a3)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v3 = (a1 + 16);
  if (v4 != v5)
  {
    if (*(a1 + 40))
    {
      sub_29B2C2F60(v9, this, a3);
    }

    PrimaryDevice = pxrInternal__aapl__pxrReserved__::HgiGL::GetPrimaryDevice(this);
    pxrInternal__aapl__pxrReserved__::HgiGLDevice::SubmitOps(PrimaryDevice, v3);
  }

  return v4 != v5;
}

pxrInternal__aapl__pxrReserved__::HgiComputePipeline *pxrInternal__aapl__pxrReserved__::HgiGLComputePipeline::HgiGLComputePipeline(pxrInternal__aapl__pxrReserved__::HgiGLComputePipeline *this, const pxrInternal__aapl__pxrReserved__::HgiComputePipelineDesc *a2)
{
  result = pxrInternal__aapl__pxrReserved__::HgiComputePipeline::HgiComputePipeline(this, a2);
  *result = &unk_2A2073850;
  return result;
}

{
  result = pxrInternal__aapl__pxrReserved__::HgiComputePipeline::HgiComputePipeline(this, a2);
  *result = &unk_2A2073850;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HgiGLComputePipeline::~HgiGLComputePipeline(void **this)
{
  pxrInternal__aapl__pxrReserved__::HgiComputePipeline::~HgiComputePipeline(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HgiGLComputePipeline::BindPipeline(pxrInternal__aapl__pxrReserved__::HgiGLComputePipeline *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glUseProgram;
    ProgramId = pxrInternal__aapl__pxrReserved__::HgiGLShaderProgram::GetProgramId(v1);
    v2(ProgramId);
  }

  sub_29A008E78(__p, "void pxrInternal__aapl__pxrReserved__::HgiGLComputePipeline::BindPipeline()");
  pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(__p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AB9C07C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AB9C098()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HGIGL_CONTEXT_ARENA_REPORT_ERRORS))
  {
    sub_29B2C306C();
  }
}

void pxrInternal__aapl__pxrReserved__::HgiGLContextArena::_FramebufferCache::~_FramebufferCache(uint64_t **this)
{
  pxrInternal__aapl__pxrReserved__::HgiGLContextArena::_FramebufferCache::_Clear(this);
  v2 = *this;
  if (*this)
  {
    this[1] = v2;
    operator delete(v2);
  }
}

void pxrInternal__aapl__pxrReserved__::HgiGLContextArena::_FramebufferCache::_Clear(uint64_t **this)
{
  v2 = *this;
  v3 = this[1];
  v4 = 0;
  v5 = v3 - *this;
  if (v3 != *this)
  {
    do
    {
      v6 = *v2++;
      v4 += sub_29AB9CAC0(v6, this);
    }

    while (v2 != v3);
    v2 = *this;
  }

  this[1] = v2;
  if (sub_29AB9C8D0(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Cleared %zu (of %zu) entries.\n", v7, v8, v4, v5 >> 3);
  }
}

void sub_29AB9C82C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  v25 = *(v23 - 104);
  if (v25)
  {
    *(v23 - 96) = v25;
    operator delete(v25);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29AB9C8D0(int a1)
{
  v2 = sub_29AB9D2C8();
  v3 = atomic_load((v2 + 4 * a1));
  if (!v3)
  {
    v5 = v2;
    v6 = sub_29AB9D2C8();
    pxrInternal__aapl__pxrReserved__::TfDebug::_InitializeNode((v6 + 4 * a1), "HGIGL_DEBUG_FRAMEBUFFER_CACHE");
    v3 = atomic_load((v5 + 4 * a1));
  }

  return v3 == 2;
}

uint64_t sub_29AB9C930()
{
  if ((atomic_load_explicit(&qword_2A17487A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17487A8))
  {
    v1 = atomic_load(pxrInternal__aapl__pxrReserved__::HGIGL_CONTEXT_ARENA_REPORT_ERRORS);
    if (!v1)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
    }

    byte_2A17487A0 = *v1;
    __cxa_guard_release(&qword_2A17487A8);
  }

  return byte_2A17487A0;
}

void pxrInternal__aapl__pxrReserved__::HgiGLContextArena::_FramebufferCache::GarbageCollect(uint64_t **this)
{
  v2 = *this;
  v1 = this[1];
  v3 = v1 - *this;
  if (v1 == *this)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *v2;
      v7 = *(*v2 + 56);
      v8 = *(*v2 + 64);
      if (v7 == v8)
      {
LABEL_7:
        ++v2;
      }

      else
      {
        while (1)
        {
          v9 = sub_29B2C2FC8(v7);
          if (!(v10 & 1 | v9))
          {
            break;
          }

          v7 += 16;
          if (v7 == v8)
          {
            v1 = this[1];
            goto LABEL_7;
          }
        }

        v11 = sub_29AB9CAC0(v6, this);
        v12 = this[1];
        v13 = v12 - (v2 + 1);
        if (v12 != v2 + 1)
        {
          memmove(v2, v2 + 1, v12 - (v2 + 1));
        }

        v5 += v11;
        v1 = (v2 + v13);
        this[1] = (v2 + v13);
      }
    }

    while (v2 != v1);
  }

  if (sub_29AB9C8D0(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Garbage collected %zu (of %zu) stale entries.\n", v14, v15, v5, v3 >> 3);
  }
}

uint64_t sub_29AB9CAC0(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 48);
  v3 = *(a1 + 48);
  if (!v3)
  {
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  if (!pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsFramebuffer(v3))
  {
    if (sub_29AB9C930())
    {
      __p[0] = "hgiGL/contextArena.cpp";
      __p[1] = "_DestroyDescriptorCacheItem";
      v12 = 214;
      v13 = "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DestroyDescriptorCacheItem(_DescriptorCacheItem *, void *)";
      v14 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "_DestroyDescriptorCacheItem: Found invalid framebuffer %d in cache.\n", *v4);
    }

    goto LABEL_8;
  }

  if (sub_29AB9C8D0(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Deleting FBO %u from cache cache %p\n", v6, v7, *v4, a2);
  }

  v8 = 1;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteFramebuffers(1, v4);
  *v4 = 0;
LABEL_9:
  sub_29A008E78(__p, "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DestroyDescriptorCacheItem(_DescriptorCacheItem *, void *)");
  pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(__p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = (a1 + 56);
  sub_29A38A7B4(__p);
  v9 = *(a1 + 8);
  if (v9)
  {
    *(a1 + 16) = v9;
    operator delete(v9);
  }

  operator delete(a1);
  return v8;
}

void sub_29AB9CBFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::HgiGLContextArena *pxrInternal__aapl__pxrReserved__::HgiGLContextArena::HgiGLContextArena(pxrInternal__aapl__pxrReserved__::HgiGLContextArena *this)
{
  v2 = operator new(0x18uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  *this = v2;
  return this;
}

{
  v2 = operator new(0x18uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  *this = v2;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HgiGLContextArena::~HgiGLContextArena(uint64_t ***this)
{
  sub_29AB9D344(this, 0);
}

{
  sub_29AB9D344(this, 0);
}

void *sub_29AB9CD1C(void *a1, unsigned int ***a2)
{
  v3 = sub_29A00911C(a1, "_FramebufferCache: {", 20);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v24, MEMORY[0x29EDC93D0]);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v24);
  std::ostream::put();
  std::ostream::flush();
  v5 = *a2;
  v22 = a2[1];
  if (*a2 != v22)
  {
    do
    {
      v6 = *v5;
      v7 = sub_29A00911C(a1, "    ", 4);
      sub_29A00911C(v7, "_FramebufferDesc: {", 19);
      if (*(v6 + 2) != *(v6 + 1))
      {
        v8 = 0;
        v9 = 0;
        do
        {
          v10 = sub_29A00911C(v7, "colorTexture", 12);
          v11 = MEMORY[0x29C2C1F00](v10, v9);
          sub_29A00911C(v11, " ", 1);
          v12 = sub_29A00911C(v7, "dimensions:", 11);
          Descriptor = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*(*(v6 + 1) + v8));
          v14 = pxrInternal__aapl__pxrReserved__::operator<<(v12, (Descriptor + 52));
          sub_29A00911C(v14, ", ", 2);
          ++v9;
          v8 += 16;
        }

        while (v9 < (*(v6 + 2) - *(v6 + 1)) >> 4);
      }

      if (*(v6 + 4))
      {
        v15 = sub_29A00911C(v7, "depthFormat ", 12);
        MEMORY[0x29C2C1ED0](v15, *v6);
        sub_29A00911C(v7, "depthTexture ", 13);
        v16 = sub_29A00911C(v7, "dimensions:", 11);
        v17 = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*(v6 + 4));
        pxrInternal__aapl__pxrReserved__::operator<<(v16, (v17 + 52));
      }

      sub_29A00911C(v7, "}", 1);
      std::ios_base::getloc((v7 + *(*v7 - 24)));
      v18 = std::locale::use_facet(&v24, MEMORY[0x29EDC93D0]);
      (v18->__vftable[2].~facet_0)(v18, 10);
      std::locale::~locale(&v24);
      std::ostream::put();
      std::ostream::flush();
      ++v5;
    }

    while (v5 != v22);
  }

  v19 = sub_29A00911C(a1, "}", 1);
  std::ios_base::getloc((v19 + *(*v19 - 24)));
  v20 = std::locale::use_facet(&v24, MEMORY[0x29EDC93D0]);
  (v20->__vftable[2].~facet_0)(v20, 10);
  std::locale::~locale(&v24);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

uint64_t sub_29AB9D084(uint64_t *a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A017BD4(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[16 * v2];
  *&v17 = v16;
  *(&v17 + 1) = &v8[16 * v7];
  sub_29AB9D198(v16, *a2);
  *&v17 = v16 + 16;
  v9 = a1[1];
  v10 = &v16[*a1 - v9];
  sub_29AB9D20C(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A0ED41C(&v15);
  return v14;
}

void sub_29AB9D184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0ED41C(va);
  _Unwind_Resume(a1);
}

void *sub_29AB9D198(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  if (a2)
  {
    sub_29A0ECFD4((a2 + 96), &v5);
    v3 = a1[1];
    a1[1] = v5;
    v5 = 0;
    if (v3)
    {
      sub_29B28D0B0(v3, &v5);
    }
  }

  return a1;
}

void sub_29AB9D1F4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28FFF4(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AB9D20C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  if (a2 == a3)
  {
    v7 = 1;
  }

  else
  {
    v4 = a2;
    do
    {
      *a4++ = *v4;
      *v4 = 0;
      *(v4 + 8) = 0;
      v4 += 16;
    }

    while (v4 != a3);
    v9 = a4;
    v7 = 1;
    if (a2 != a3)
    {
      sub_29B28D194();
    }
  }

  return sub_29AB9D290(v6);
}

uint64_t sub_29AB9D290(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A38A904(a1);
  }

  return a1;
}

uint64_t sub_29AB9D2C8()
{
  if ((atomic_load_explicit(&qword_2A14F9698, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F9698))
  {
    v1 = operator new(4uLL);
    *v1 = 0;
    qword_2A14F9690 = v1;
    __cxa_guard_release(&qword_2A14F9698);
  }

  return qword_2A14F9690;
}

void sub_29AB9D344(uint64_t ***a1, uint64_t **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::HgiGLContextArena::_FramebufferCache::~_FramebufferCache(v3);

    operator delete(v4);
  }
}

void sub_29AB9D380()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2073878, 0, "HGIGL_DEBUG_FRAMEBUFFER_CACHE", 0);
  v0 = sub_29AB9D2C8();

  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v0, "HGIGL_DEBUG_FRAMEBUFFER_CACHE", "Debug framebuffer cache management per context arena.");
}

pxrInternal__aapl__pxrReserved__::HgiGLDevice *pxrInternal__aapl__pxrReserved__::HgiGLDevice::HgiGLDevice(pxrInternal__aapl__pxrReserved__::HgiGLDevice *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::HgiGLContextArena::HgiGLContextArena(this);
  *(v2 + 1) = v2;
  pxrInternal__aapl__pxrReserved__::HgiGLSetupGL4Debug(v2);
  return this;
}

void pxrInternal__aapl__pxrReserved__::HgiGLDevice::SubmitOps(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  while (v2 != v3)
  {
    v4 = *(v2 + 24);
    if (!v4)
    {
      sub_29A0DDCB0();
    }

    (*(*v4 + 48))(v4);
    v2 += 32;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLDevice::SetCurrentArena(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    v2 = result;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLDevice::_GetArena(pxrInternal__aapl__pxrReserved__::HgiGLDevice *this)
{
  return *(this + 1);
}

{
  return *(this + 1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_bufferList(pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector *this)
{
  if ((atomic_load_explicit(&qword_2A17487B0, memory_order_acquire) & 1) == 0)
  {
    sub_29B2C30A0();
  }

  return &qword_2A17487F0;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_textureList(pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector *this)
{
  if ((atomic_load_explicit(&qword_2A17487B8, memory_order_acquire) & 1) == 0)
  {
    sub_29B2C30F8();
  }

  return &qword_2A1748808;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_samplerList(pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector *this)
{
  if ((atomic_load_explicit(&qword_2A17487C0, memory_order_acquire) & 1) == 0)
  {
    sub_29B2C3150();
  }

  return &qword_2A1748820;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_shaderFunctionList(pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector *this)
{
  if ((atomic_load_explicit(&qword_2A17487C8, memory_order_acquire) & 1) == 0)
  {
    sub_29B2C31A8();
  }

  return &qword_2A1748838;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_shaderProgramList(pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector *this)
{
  if ((atomic_load_explicit(&qword_2A17487D0, memory_order_acquire) & 1) == 0)
  {
    sub_29B2C3200();
  }

  return &qword_2A1748850;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_resourceBindingsList(pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector *this)
{
  if ((atomic_load_explicit(&qword_2A17487D8, memory_order_acquire) & 1) == 0)
  {
    sub_29B2C3258();
  }

  return &qword_2A1748868;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_graphicsPipelineList(pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector *this)
{
  if ((atomic_load_explicit(&qword_2A17487E0, memory_order_acquire) & 1) == 0)
  {
    sub_29B2C32B0();
  }

  return &qword_2A1748880;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_computePipelineList(pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector *this)
{
  if ((atomic_load_explicit(&qword_2A17487E8, memory_order_acquire) & 1) == 0)
  {
    sub_29B2C3308();
  }

  return &qword_2A1748898;
}

_BYTE *pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::HgiGLGarbageCollector(_BYTE *this)
{
  *this = 0;
  return this;
}

{
  *this = 0;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::~HgiGLGarbageCollector(pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector *this)
{
  pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::PerformGarbageCollection(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::PerformGarbageCollection(this);
}

void pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::PerformGarbageCollection(pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector *this)
{
  *this = 1;
  v2 = pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_bufferList(this);
  v3 = qword_2A17487F0;
  v4 = unk_2A17487F8;
  while (v3 != v4)
  {
    v5 = *v3;
    v6 = **v3;
    v7 = (*v3)[1];
    if (v6 != v7)
    {
      do
      {
        if (*v6)
        {
          (*(**v6 + 8))(*v6);
        }

        v6 += 2;
      }

      while (v6 != v7);
      v6 = *v5;
    }

    v5[1] = v6;
    sub_29AB9E2F0(v5);
    ++v3;
  }

  v8 = pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_textureList(v2);
  v9 = qword_2A1748808;
  v10 = unk_2A1748810;
  while (v9 != v10)
  {
    v11 = *v9;
    v12 = **v9;
    v13 = (*v9)[1];
    if (v12 != v13)
    {
      do
      {
        if (*v12)
        {
          (*(**v12 + 8))(*v12);
        }

        v12 += 2;
      }

      while (v12 != v13);
      v12 = *v11;
    }

    v11[1] = v12;
    sub_29AB9E3C4(v11);
    ++v9;
  }

  v14 = pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_samplerList(v8);
  v15 = qword_2A1748820;
  v16 = unk_2A1748828;
  while (v15 != v16)
  {
    v17 = *v15;
    v18 = **v15;
    v19 = (*v15)[1];
    if (v18 != v19)
    {
      do
      {
        if (*v18)
        {
          (*(**v18 + 8))(*v18);
        }

        v18 += 2;
      }

      while (v18 != v19);
      v18 = *v17;
    }

    v17[1] = v18;
    sub_29AB9E498(v17);
    ++v15;
  }

  v20 = pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_shaderFunctionList(v14);
  v21 = qword_2A1748838;
  v22 = unk_2A1748840;
  while (v21 != v22)
  {
    v23 = *v21;
    v24 = **v21;
    v25 = (*v21)[1];
    if (v24 != v25)
    {
      do
      {
        if (*v24)
        {
          (*(**v24 + 8))(*v24);
        }

        v24 += 2;
      }

      while (v24 != v25);
      v24 = *v23;
    }

    v23[1] = v24;
    sub_29AB9E56C(v23);
    ++v21;
  }

  v26 = pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_shaderProgramList(v20);
  v27 = qword_2A1748850;
  v28 = unk_2A1748858;
  while (v27 != v28)
  {
    v29 = *v27;
    v30 = **v27;
    v31 = (*v27)[1];
    if (v30 != v31)
    {
      do
      {
        if (*v30)
        {
          (*(**v30 + 8))(*v30);
        }

        v30 += 2;
      }

      while (v30 != v31);
      v30 = *v29;
    }

    v29[1] = v30;
    sub_29AB9E640(v29);
    ++v27;
  }

  v32 = pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_resourceBindingsList(v26);
  v33 = qword_2A1748868;
  v34 = unk_2A1748870;
  while (v33 != v34)
  {
    v35 = *v33;
    v36 = **v33;
    v37 = (*v33)[1];
    if (v36 != v37)
    {
      do
      {
        if (*v36)
        {
          (*(**v36 + 8))(*v36);
        }

        v36 += 2;
      }

      while (v36 != v37);
      v36 = *v35;
    }

    v35[1] = v36;
    sub_29AB9E714(v35);
    ++v33;
  }

  v38 = pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_graphicsPipelineList(v32);
  v39 = qword_2A1748880;
  v40 = unk_2A1748888;
  while (v39 != v40)
  {
    v41 = *v39;
    v42 = **v39;
    v43 = (*v39)[1];
    if (v42 != v43)
    {
      do
      {
        if (*v42)
        {
          (*(**v42 + 8))(*v42);
        }

        v42 += 2;
      }

      while (v42 != v43);
      v42 = *v41;
    }

    v41[1] = v42;
    sub_29AB9E7E8(v41);
    ++v39;
  }

  pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_computePipelineList(v38);
  v44 = qword_2A1748898;
  v45 = unk_2A17488A0;
  while (v44 != v45)
  {
    v46 = *v44;
    v47 = **v44;
    v48 = (*v44)[1];
    if (v47 != v48)
    {
      do
      {
        if (*v47)
        {
          (*(**v47 + 8))(*v47);
        }

        v47 += 2;
      }

      while (v47 != v48);
      v47 = *v46;
    }

    v46[1] = v47;
    sub_29AB9E8BC(v46);
    ++v44;
  }

  *this = 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::GetBufferList(pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector *this)
{
  pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_bufferList(this);

  return sub_29AB9DB50(this, &qword_2A17487F0);
}

uint64_t sub_29AB9DB50(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    sub_29B2C3360();
  }

  {
    sub_29B2C33A8();
  }

  v3 = pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_GetThreadLocalStorageList<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>>>(std::vector<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>> *,std::allocator<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>> *>> *)::_tls();
  result = *v3;
  if (!*v3)
  {
    v5 = operator new(0x18uLL);
    v5[1] = 0;
    v5[2] = 0;
    *v5 = 0;
    *v3 = v5;
    std::mutex::lock(&pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_GetThreadLocalStorageList<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>>>(std::vector<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>> *,std::allocator<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>> *>> *)::garbageMutex);
    sub_29A0A71C8(a2, v3);
    std::mutex::unlock(&pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_GetThreadLocalStorageList<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>>>(std::vector<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>> *,std::allocator<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>> *>> *)::garbageMutex);
    return *v3;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::GetTextureList(pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector *this)
{
  pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_textureList(this);

  return sub_29AB9DC4C(this, &qword_2A1748808);
}

uint64_t sub_29AB9DC4C(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    sub_29B2C33EC();
  }

  {
    sub_29B2C3434();
  }

  v3 = pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_GetThreadLocalStorageList<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>>>(std::vector<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>> *,std::allocator<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>> *>> *)::_tls();
  result = *v3;
  if (!*v3)
  {
    v5 = operator new(0x18uLL);
    v5[1] = 0;
    v5[2] = 0;
    *v5 = 0;
    *v3 = v5;
    std::mutex::lock(&pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_GetThreadLocalStorageList<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>>>(std::vector<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>> *,std::allocator<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>> *>> *)::garbageMutex);
    sub_29A0A71C8(a2, v3);
    std::mutex::unlock(&pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_GetThreadLocalStorageList<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>>>(std::vector<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>> *,std::allocator<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiTexture>> *>> *)::garbageMutex);
    return *v3;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::GetSamplerList(pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector *this)
{
  pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_samplerList(this);

  return sub_29AB9DD48(this, &qword_2A1748820);
}

uint64_t sub_29AB9DD48(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    sub_29B2C3478();
  }

  {
    sub_29B2C34C0();
  }

  v3 = pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_GetThreadLocalStorageList<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>>>(std::vector<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>> *,std::allocator<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>> *>> *)::_tls();
  result = *v3;
  if (!*v3)
  {
    v5 = operator new(0x18uLL);
    v5[1] = 0;
    v5[2] = 0;
    *v5 = 0;
    *v3 = v5;
    std::mutex::lock(&pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_GetThreadLocalStorageList<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>>>(std::vector<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>> *,std::allocator<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>> *>> *)::garbageMutex);
    sub_29A0A71C8(a2, v3);
    std::mutex::unlock(&pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_GetThreadLocalStorageList<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>>>(std::vector<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>> *,std::allocator<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>> *>> *)::garbageMutex);
    return *v3;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::GetShaderFunctionList(pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector *this)
{
  pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_shaderFunctionList(this);

  return sub_29AB9DE44(this, &qword_2A1748838);
}

uint64_t sub_29AB9DE44(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    sub_29B2C3504();
  }

  {
    sub_29B2C354C();
  }

  v3 = pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_GetThreadLocalStorageList<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiShaderFunction>>>(std::vector<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiShaderFunction>> *,std::allocator<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiShaderFunction>> *>> *)::_tls();
  result = *v3;
  if (!*v3)
  {
    v5 = operator new(0x18uLL);
    v5[1] = 0;
    v5[2] = 0;
    *v5 = 0;
    *v3 = v5;
    std::mutex::lock(&pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_GetThreadLocalStorageList<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiShaderFunction>>>(std::vector<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiShaderFunction>> *,std::allocator<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiShaderFunction>> *>> *)::garbageMutex);
    sub_29A0A71C8(a2, v3);
    std::mutex::unlock(&pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_GetThreadLocalStorageList<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiShaderFunction>>>(std::vector<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiShaderFunction>> *,std::allocator<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiShaderFunction>> *>> *)::garbageMutex);
    return *v3;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::GetShaderProgramList(pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector *this)
{
  pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_shaderProgramList(this);

  return sub_29AB9DF40(this, &qword_2A1748850);
}

uint64_t sub_29AB9DF40(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    sub_29B2C3590();
  }

  {
    sub_29B2C35D8();
  }

  v3 = pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_GetThreadLocalStorageList<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiShaderProgram>>>(std::vector<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiShaderProgram>> *,std::allocator<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiShaderProgram>> *>> *)::_tls();
  result = *v3;
  if (!*v3)
  {
    v5 = operator new(0x18uLL);
    v5[1] = 0;
    v5[2] = 0;
    *v5 = 0;
    *v3 = v5;
    std::mutex::lock(&pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_GetThreadLocalStorageList<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiShaderProgram>>>(std::vector<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiShaderProgram>> *,std::allocator<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiShaderProgram>> *>> *)::garbageMutex);
    sub_29A0A71C8(a2, v3);
    std::mutex::unlock(&pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_GetThreadLocalStorageList<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiShaderProgram>>>(std::vector<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiShaderProgram>> *,std::allocator<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiShaderProgram>> *>> *)::garbageMutex);
    return *v3;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::GetResourceBindingsList(pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector *this)
{
  pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_resourceBindingsList(this);

  return sub_29AB9E03C(this, &qword_2A1748868);
}

uint64_t sub_29AB9E03C(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    sub_29B2C361C();
  }

  {
    sub_29B2C3664();
  }

  v3 = pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_GetThreadLocalStorageList<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiResourceBindings>>>(std::vector<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiResourceBindings>> *,std::allocator<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiResourceBindings>> *>> *)::_tls();
  result = *v3;
  if (!*v3)
  {
    v5 = operator new(0x18uLL);
    v5[1] = 0;
    v5[2] = 0;
    *v5 = 0;
    *v3 = v5;
    std::mutex::lock(&pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_GetThreadLocalStorageList<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiResourceBindings>>>(std::vector<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiResourceBindings>> *,std::allocator<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiResourceBindings>> *>> *)::garbageMutex);
    sub_29A0A71C8(a2, v3);
    std::mutex::unlock(&pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_GetThreadLocalStorageList<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiResourceBindings>>>(std::vector<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiResourceBindings>> *,std::allocator<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiResourceBindings>> *>> *)::garbageMutex);
    return *v3;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::GetGraphicsPipelineList(pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector *this)
{
  pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_graphicsPipelineList(this);

  return sub_29AB9E138(this, &qword_2A1748880);
}

uint64_t sub_29AB9E138(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    sub_29B2C36A8();
  }

  {
    sub_29B2C36F0();
  }

  v3 = pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_GetThreadLocalStorageList<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline>>>(std::vector<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline>> *,std::allocator<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline>> *>> *)::_tls();
  result = *v3;
  if (!*v3)
  {
    v5 = operator new(0x18uLL);
    v5[1] = 0;
    v5[2] = 0;
    *v5 = 0;
    *v3 = v5;
    std::mutex::lock(&pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_GetThreadLocalStorageList<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline>>>(std::vector<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline>> *,std::allocator<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline>> *>> *)::garbageMutex);
    sub_29A0A71C8(a2, v3);
    std::mutex::unlock(&pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_GetThreadLocalStorageList<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline>>>(std::vector<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline>> *,std::allocator<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline>> *>> *)::garbageMutex);
    return *v3;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::GetComputePipelineList(pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector *this)
{
  pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_computePipelineList(this);

  return sub_29AB9E234(this, &qword_2A1748898);
}

uint64_t sub_29AB9E234(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    sub_29B2C3734();
  }

  {
    sub_29B2C377C();
  }

  v3 = pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_GetThreadLocalStorageList<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiComputePipeline>>>(std::vector<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiComputePipeline>> *,std::allocator<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiComputePipeline>> *>> *)::_tls();
  result = *v3;
  if (!*v3)
  {
    v5 = operator new(0x18uLL);
    v5[1] = 0;
    v5[2] = 0;
    *v5 = 0;
    *v3 = v5;
    std::mutex::lock(&pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_GetThreadLocalStorageList<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiComputePipeline>>>(std::vector<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiComputePipeline>> *,std::allocator<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiComputePipeline>> *>> *)::garbageMutex);
    sub_29A0A71C8(a2, v3);
    std::mutex::unlock(&pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::_GetThreadLocalStorageList<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiComputePipeline>>>(std::vector<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiComputePipeline>> *,std::allocator<std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiComputePipeline>> *>> *)::garbageMutex);
    return *v3;
  }

  return result;
}

void sub_29AB9E2F0(void *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = &v1[-*a1];
  if (v3 > v4)
  {
    v6 = v4 >> 4;
    if (v1 == v2)
    {
      v7 = 0;
      v9 = 0;
    }

    else
    {
      v7 = sub_29A017BD4(a1, v4 >> 4);
      v9 = v8;
      v2 = *a1;
      v3 = a1[2] - *a1;
    }

    if (v9 < v3 >> 4)
    {
      v10 = &v7[16 * v9];
      v11 = &v7[16 * v6];
      v12 = a1[1] - v2;
      v13 = &v11[-v12];
      memcpy(&v11[-v12], v2, v12);
      v7 = *a1;
      *a1 = v13;
      a1[1] = v11;
      a1[2] = v10;
    }

    if (v7)
    {

      operator delete(v7);
    }
  }
}

void sub_29AB9E3C4(void *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = &v1[-*a1];
  if (v3 > v4)
  {
    v6 = v4 >> 4;
    if (v1 == v2)
    {
      v7 = 0;
      v9 = 0;
    }

    else
    {
      v7 = sub_29A017BD4(a1, v4 >> 4);
      v9 = v8;
      v2 = *a1;
      v3 = a1[2] - *a1;
    }

    if (v9 < v3 >> 4)
    {
      v10 = &v7[16 * v9];
      v11 = &v7[16 * v6];
      v12 = a1[1] - v2;
      v13 = &v11[-v12];
      memcpy(&v11[-v12], v2, v12);
      v7 = *a1;
      *a1 = v13;
      a1[1] = v11;
      a1[2] = v10;
    }

    if (v7)
    {

      operator delete(v7);
    }
  }
}

void sub_29AB9E498(void *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = &v1[-*a1];
  if (v3 > v4)
  {
    v6 = v4 >> 4;
    if (v1 == v2)
    {
      v7 = 0;
      v9 = 0;
    }

    else
    {
      v7 = sub_29A017BD4(a1, v4 >> 4);
      v9 = v8;
      v2 = *a1;
      v3 = a1[2] - *a1;
    }

    if (v9 < v3 >> 4)
    {
      v10 = &v7[16 * v9];
      v11 = &v7[16 * v6];
      v12 = a1[1] - v2;
      v13 = &v11[-v12];
      memcpy(&v11[-v12], v2, v12);
      v7 = *a1;
      *a1 = v13;
      a1[1] = v11;
      a1[2] = v10;
    }

    if (v7)
    {

      operator delete(v7);
    }
  }
}

void sub_29AB9E56C(void *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = &v1[-*a1];
  if (v3 > v4)
  {
    v6 = v4 >> 4;
    if (v1 == v2)
    {
      v7 = 0;
      v9 = 0;
    }

    else
    {
      v7 = sub_29A017BD4(a1, v4 >> 4);
      v9 = v8;
      v2 = *a1;
      v3 = a1[2] - *a1;
    }

    if (v9 < v3 >> 4)
    {
      v10 = &v7[16 * v9];
      v11 = &v7[16 * v6];
      v12 = a1[1] - v2;
      v13 = &v11[-v12];
      memcpy(&v11[-v12], v2, v12);
      v7 = *a1;
      *a1 = v13;
      a1[1] = v11;
      a1[2] = v10;
    }

    if (v7)
    {

      operator delete(v7);
    }
  }
}

void sub_29AB9E640(void *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = &v1[-*a1];
  if (v3 > v4)
  {
    v6 = v4 >> 4;
    if (v1 == v2)
    {
      v7 = 0;
      v9 = 0;
    }

    else
    {
      v7 = sub_29A017BD4(a1, v4 >> 4);
      v9 = v8;
      v2 = *a1;
      v3 = a1[2] - *a1;
    }

    if (v9 < v3 >> 4)
    {
      v10 = &v7[16 * v9];
      v11 = &v7[16 * v6];
      v12 = a1[1] - v2;
      v13 = &v11[-v12];
      memcpy(&v11[-v12], v2, v12);
      v7 = *a1;
      *a1 = v13;
      a1[1] = v11;
      a1[2] = v10;
    }

    if (v7)
    {

      operator delete(v7);
    }
  }
}

void sub_29AB9E714(void *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = &v1[-*a1];
  if (v3 > v4)
  {
    v6 = v4 >> 4;
    if (v1 == v2)
    {
      v7 = 0;
      v9 = 0;
    }

    else
    {
      v7 = sub_29A017BD4(a1, v4 >> 4);
      v9 = v8;
      v2 = *a1;
      v3 = a1[2] - *a1;
    }

    if (v9 < v3 >> 4)
    {
      v10 = &v7[16 * v9];
      v11 = &v7[16 * v6];
      v12 = a1[1] - v2;
      v13 = &v11[-v12];
      memcpy(&v11[-v12], v2, v12);
      v7 = *a1;
      *a1 = v13;
      a1[1] = v11;
      a1[2] = v10;
    }

    if (v7)
    {

      operator delete(v7);
    }
  }
}

void sub_29AB9E7E8(void *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = &v1[-*a1];
  if (v3 > v4)
  {
    v6 = v4 >> 4;
    if (v1 == v2)
    {
      v7 = 0;
      v9 = 0;
    }

    else
    {
      v7 = sub_29A017BD4(a1, v4 >> 4);
      v9 = v8;
      v2 = *a1;
      v3 = a1[2] - *a1;
    }

    if (v9 < v3 >> 4)
    {
      v10 = &v7[16 * v9];
      v11 = &v7[16 * v6];
      v12 = a1[1] - v2;
      v13 = &v11[-v12];
      memcpy(&v11[-v12], v2, v12);
      v7 = *a1;
      *a1 = v13;
      a1[1] = v11;
      a1[2] = v10;
    }

    if (v7)
    {

      operator delete(v7);
    }
  }
}

void sub_29AB9E8BC(void *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = &v1[-*a1];
  if (v3 > v4)
  {
    v6 = v4 >> 4;
    if (v1 == v2)
    {
      v7 = 0;
      v9 = 0;
    }

    else
    {
      v7 = sub_29A017BD4(a1, v4 >> 4);
      v9 = v8;
      v2 = *a1;
      v3 = a1[2] - *a1;
    }

    if (v9 < v3 >> 4)
    {
      v10 = &v7[16 * v9];
      v11 = &v7[16 * v6];
      v12 = a1[1] - v2;
      v13 = &v11[-v12];
      memcpy(&v11[-v12], v2, v12);
      v7 = *a1;
      *a1 = v13;
      a1[1] = v11;
      a1[2] = v10;
    }

    if (v7)
    {

      operator delete(v7);
    }
  }
}

uint64_t sub_29AB9E990(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x29EDC93D8];

  return __cxa_atexit(v4, a2, a3);
}

void pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds::HgiGLGraphicsCmds(pxrInternal__aapl__pxrReserved__::HgiGraphicsCmds *a1)
{
  v2 = *MEMORY[0x29EDCA608];
  v1 = pxrInternal__aapl__pxrReserved__::HgiGraphicsCmds::HgiGraphicsCmds(a1);
  *v1 = &unk_2A2073898;
  *(v1 + 9) = 1;
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc*,pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc*>();
}

void sub_29AB9EB74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  sub_29AB9A7A0(va);
  sub_29AB905FC(v3);
  pxrInternal__aapl__pxrReserved__::HgiGraphicsCmds::~HgiGraphicsCmds(v2);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds::~HgiGLGraphicsCmds(pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds *this)
{
  if (*(this + 2) == *(this + 3) && !*(this + 21))
  {
    goto LABEL_13;
  }

  v2 = *(this + 59);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_7;
  }

  if (pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsFramebuffer(v2) == 1)
  {
    v3 = *(this + 59);
LABEL_7:
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer(36008, v3);
  }

  v4 = *(this + 60);
  if (v4)
  {
    if (pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsFramebuffer(v4) != 1)
    {
      goto LABEL_13;
    }

    v5 = *(this + 60);
  }

  else
  {
    v5 = 0;
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindFramebuffer(36009, v5);
LABEL_13:
  v9 = (this + 208);
  sub_29AB9A7A0(&v9);
  v6 = *(this + 18);
  if (v6)
  {
    *(this + 19) = v6;
    operator delete(v6);
  }

  v7 = *(this + 15);
  if (v7)
  {
    *(this + 16) = v7;
    operator delete(v7);
  }

  v8 = *(this + 2);
  if (v8)
  {
    *(this + 3) = v8;
    operator delete(v8);
  }

  pxrInternal__aapl__pxrReserved__::HgiGraphicsCmds::~HgiGraphicsCmds(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds::~HgiGLGraphicsCmds(this);

  operator delete(v1);
}

uint64_t sub_29AB9ED20(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29AB9F7A8(a1, a2);
  }

  else
  {
    sub_29A117068(a1[1], a2);
    result = v3 + 32;
    a1[1] = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds::SetViewport(uint64_t a1, __n128 *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiGLOps::SetViewport(a2, v4);
  sub_29AB9A07C((a1 + 208), v4);
  return sub_29A0FC854(v4);
}

void sub_29AB9EDE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds::SetScissor(uint64_t a1, __n128 *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiGLOps::SetScissor(a2, v4);
  sub_29AB9A07C((a1 + 208), v4);
  return sub_29A0FC854(v4);
}

void sub_29AB9EE78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds::BindPipeline(uint64_t a1, pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline *this, uint64_t a3)
{
  v7[4] = *MEMORY[0x29EDCA608];
  *(a1 + 200) = *(pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline::GetDescriptor(this) + 24);
  *(a1 + 204) = *(pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline::GetDescriptor(this) + 320);
  pxrInternal__aapl__pxrReserved__::HgiGLOps::BindPipeline(this, a3, v7);
  sub_29AB9A07C((a1 + 208), v7);
  return sub_29A0FC854(v7);
}

void sub_29AB9EF3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds::BindResources(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[4] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiGLOps::BindResources(a2, a3, v5);
  sub_29AB9A07C((a1 + 208), v5);
  return sub_29A0FC854(v5);
}

void sub_29AB9EFD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds::SetConstantValues(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, size_t __sz, const void *a7)
{
  v10 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiGLOps::SetConstantValues(__sz, a2, a3, a5, a7, v9);
  sub_29AB9A07C((a1 + 208), v9);
  return sub_29A0FC854(v9);
}

void sub_29AB9F074(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds::BindVertexBuffers(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiGLOps::BindVertexBuffers(a2, v4);
  sub_29AB9A07C((a1 + 208), v4);
  return sub_29A0FC854(v4);
}

void sub_29AB9F104(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds::Draw(pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds *this, int a2, int a3, int a4, int a5)
{
  v8 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiGLOps::Draw(*(this + 50), *(this + 51), a2, a3, a4, a5, v7);
  sub_29AB9A07C(this + 26, v7);
  return sub_29A0FC854(v7);
}

void sub_29AB9F1A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds::DrawIndirect(uint64_t a1, __n128 *a2, unsigned __int32 a3, unsigned __int32 a4, unsigned __int32 a5)
{
  v8 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiGLOps::DrawIndirect(*(a1 + 200), *(a1 + 204), a2, a3, a4, a5, v7);
  sub_29AB9A07C((a1 + 208), v7);
  return sub_29A0FC854(v7);
}

void sub_29AB9F24C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds::DrawIndexed(uint64_t a1, __n128 *a2, unsigned __int32 a3, unsigned __int32 a4, unsigned __int32 a5, unsigned __int32 a6, unsigned __int32 a7)
{
  v10 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiGLOps::DrawIndexed(*(a1 + 200), *(a1 + 204), a2, a3, a4, a5, a6, a7, v9);
  sub_29AB9A07C((a1 + 208), v9);
  return sub_29A0FC854(v9);
}

void sub_29AB9F2F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds::DrawIndexedIndirect(uint64_t a1, __n128 *a2, __n128 *a3, unsigned __int32 a4, unsigned __int32 a5, unsigned __int32 a6)
{
  v9 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiGLOps::DrawIndexedIndirect(*(a1 + 200), *(a1 + 204), a2, a3, a4, a5, a6, v8);
  sub_29AB9A07C((a1 + 208), v8);
  return sub_29A0FC854(v8);
}

void sub_29AB9F3A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds::PushDebugGroup(pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds *this, pxrInternal__aapl__pxrReserved__::HgiGLOps *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  result = pxrInternal__aapl__pxrReserved__::HgiGLDebugEnabled(this);
  if (result)
  {
    ++*(this + 58);
    pxrInternal__aapl__pxrReserved__::HgiGLOps::PushDebugGroup(a2, v5);
    sub_29AB9A07C(this + 26, v5);
    return sub_29A0FC854(v5);
  }

  return result;
}

void sub_29AB9F448(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds::PopDebugGroup(pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds *this)
{
  v3[4] = *MEMORY[0x29EDCA608];
  result = pxrInternal__aapl__pxrReserved__::HgiGLDebugEnabled(this);
  if (result)
  {
    --*(this + 58);
    pxrInternal__aapl__pxrReserved__::HgiGLOps::PopDebugGroup(v3);
    sub_29AB9A07C(this + 26, v3);
    return sub_29A0FC854(v3);
  }

  return result;
}

void sub_29AB9F4E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds::InsertMemoryBarrier(pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds *this, pxrInternal__aapl__pxrReserved__::HgiGLOps *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiGLOps::InsertMemoryBarrier(a2, v4);
  sub_29AB9A07C(this + 26, v4);
  return sub_29A0FC854(v4);
}

void sub_29AB9F578(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FC854(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds::_Submit(uint64_t a1, char *a2, char *a3)
{
  v4 = *(a1 + 208);
  v5 = *(a1 + 216);
  v3 = (a1 + 208);
  if (v4 != v5)
  {
    if (*(a1 + 232))
    {
      sub_29B2C37C0(v10, a2, a3);
    }

    pxrInternal__aapl__pxrReserved__::HgiGL_ScopedStateHolder::HgiGL_ScopedStateHolder(v10);
    PrimaryDevice = pxrInternal__aapl__pxrReserved__::HgiGL::GetPrimaryDevice(a2);
    pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds::_AddResolveToOps(a1, PrimaryDevice);
    pxrInternal__aapl__pxrReserved__::HgiGLDevice::SubmitOps(PrimaryDevice, v3);
    pxrInternal__aapl__pxrReserved__::HgiGL_ScopedStateHolder::~HgiGL_ScopedStateHolder(v10);
  }

  return v4 != v5;
}

void sub_29AB9F630(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::HgiGL_ScopedStateHolder::~HgiGL_ScopedStateHolder(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds::_AddResolveToOps(pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds *this, pxrInternal__aapl__pxrReserved__::HgiGLDevice *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(this + 9) == 1)
  {
    v2 = *(this + 18);
    v3 = *(this + 19);
    if (v2 == v3)
    {
      if (!*(this + 23))
      {
        *(this + 9) = 0;
        return;
      }
    }

    else
    {
      if (v3 - v2 != *(this + 16) - *(this + 15))
      {
        v4 = "hgiGL/graphicsCmds.cpp";
        v5 = "_AddResolveToOps";
        v6 = 256;
        v7 = "void pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds::_AddResolveToOps(HgiGLDevice *)";
        v8 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v4, 1, "color and resolve texture count mismatch.");
        return;
      }

      if (!*(this + 23))
      {
LABEL_8:
        pxrInternal__aapl__pxrReserved__::HgiGLOps::ResolveFramebuffer();
      }
    }

    if (*(this + 21))
    {
      goto LABEL_8;
    }

    v4 = "hgiGL/graphicsCmds.cpp";
    v5 = "_AddResolveToOps";
    v6 = 261;
    v7 = "void pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds::_AddResolveToOps(HgiGLDevice *)";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v4, 1, "DepthResolve texture without depth texture.");
  }
}

uint64_t sub_29AB9F7A8(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A10CB10(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[32 * v2];
  *(&v17 + 1) = &v8[32 * v7];
  sub_29A117068(v16, a2);
  *&v17 = v16 + 32;
  v9 = a1[1];
  v10 = &v16[*a1 - v9];
  sub_29AB9A9B0(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29AB9AA20(&v15);
  return v14;
}

void sub_29AB9F8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB9AA20(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HgiGLGraphicsPipeline::HgiGLGraphicsPipeline(pxrInternal__aapl__pxrReserved__::HgiGLGraphicsPipeline *this, const pxrInternal__aapl__pxrReserved__::HgiGL *a2, const pxrInternal__aapl__pxrReserved__::HgiGraphicsPipelineDesc *a3)
{
  pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline::HgiGraphicsPipeline(this, a3);
}

{
  pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline::HgiGraphicsPipeline(this, a3);
}

void pxrInternal__aapl__pxrReserved__::HgiGLGraphicsPipeline::~HgiGLGraphicsPipeline(pxrInternal__aapl__pxrReserved__::HgiGLGraphicsPipeline *this)
{
  pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline::~HgiGraphicsPipeline(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HgiGLGraphicsPipeline::BindPipeline(pxrInternal__aapl__pxrReserved__::HgiGLGraphicsPipeline *this, __n128 a2)
{
  v3 = (this + 368);
  if (*(this + 92))
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindVertexArray(0, a2);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteVertexArrays(1, v3);
  }

  v54 = this;
  if (*(this + 23) != *(this + 24))
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateVertexArrays(1, v3);
    v4 = *(this + 31);
    if (v4 < 0)
    {
      v4 = *(this + 2);
    }

    if (v4)
    {
      pxrInternal__aapl__pxrReserved__::HgiGLObjectLabel(32884, *v3, this + 1);
    }

    v5 = *(this + 23);
    for (i = *(this + 24); v5 != i; v5 += 10)
    {
      v6 = *(v5 + 1);
      if (*(v5 + 2) != v6)
      {
        v7 = 0;
        v8 = 0;
        do
        {
          v9 = v6 + v7;
          v10 = *(v6 + v7 + 8);
          pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnableVertexArrayAttrib(*v3, v10);
          pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayAttribBinding(*v3, v10, *v5);
          IsVertexAttribIntegerFormat = pxrInternal__aapl__pxrReserved__::HgiGLConversions::IsVertexAttribIntegerFormat(*v9);
          v12 = *v3;
          v13 = *v9;
          if (IsVertexAttribIntegerFormat)
          {
            v14 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayAttribIFormat;
            ComponentCount = pxrInternal__aapl__pxrReserved__::HgiGetComponentCount(v13);
            FormatType = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetFormatType(*v9);
            v14(v12, v10, ComponentCount, FormatType, *(v9 + 4));
          }

          else
          {
            v17 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayAttribFormat;
            v18 = pxrInternal__aapl__pxrReserved__::HgiGetComponentCount(v13);
            v19 = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetFormatType(*v9);
            (v17)(v12, v10, v18, v19, 0, *(v9 + 4));
          }

          if (v5[8] == 5)
          {
            pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexArrayBindingDivisor(*v3, *v5, 0x7FFFFFFFLL);
          }

          ++v8;
          v6 = *(v5 + 1);
          v7 += 12;
        }

        while (v8 < 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 2) - v6) >> 2));
      }
    }
  }

  v20 = *v3;
  if (v20)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindVertexArray(v20, a2);
  }

  if (*(this + 56) == 1)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable(2929);
    CompareFunction = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetCompareFunction(*(this + 15));
    v22 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthFunc;
  }

  else
  {
    CompareFunction = 2929;
    v22 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
  }

  (*v22)(CompareFunction);
  if (*(this + 64) == 1)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable(32823);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glPolygonOffset(*(this + 18), *(this + 17));
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable(32823);
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthMask(*(this + 57));
  if (*(this + 76) == 1)
  {
    v23 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilFuncSeparate;
    v24 = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetCompareFunction(*(this + 20));
    v23(1028, v24, *(this + 21), *(this + 25));
    v25 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilOpSeparate;
    StencilOp = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetStencilOp(*(this + 22));
    v27 = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetStencilOp(*(this + 23));
    v28 = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetStencilOp(*(this + 24));
    v25(1028, StencilOp, v27, v28);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilMaskSeparate(1028, *(this + 26));
    v29 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilFuncSeparate;
    v30 = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetCompareFunction(*(v54 + 27));
    v29(1029, v30, *(v54 + 28), *(v54 + 32));
    v31 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilOpSeparate;
    v32 = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetStencilOp(*(v54 + 29));
    v33 = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetStencilOp(*(v54 + 30));
    v34 = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetStencilOp(*(v54 + 31));
    v31(1029, v32, v33, v34);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilMaskSeparate(1029, *(v54 + 33));
  }

  if (*(v54 + 136))
  {
    v35 = 32925;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable(32925);
    v35 = 2832;
  }

  v36 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable(v35);
  if (*(v54 + 137))
  {
    v37 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;
  }

  else
  {
    v37 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
  }

  (*v37)(32926, v36);
  if (*(v54 + 138))
  {
    v38 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;
  }

  else
  {
    v38 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
  }

  (*v38)(32927);
  CullMode = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetCullMode(*(v54 + 38));
  if (CullMode)
  {
    v41 = CullMode;
    v40 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable(2884);
    v42 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glCullFace;
  }

  else
  {
    v41 = 2884;
    v42 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
  }

  (*v42)(v41, v40);
  PolygonMode = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetPolygonMode(*(v54 + 36));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPolygonMode(1032, PolygonMode);
  if (*(v54 + 39))
  {
    v44 = 2305;
  }

  else
  {
    v44 = 2304;
  }

  v45 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glFrontFace(v44);
  v46 = *(v54 + 37);
  if (v46 != 1.0)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glLineWidth(v45, v46);
  }

  if (*(v54 + 160))
  {
    v47 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
  }

  else
  {
    v47 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;
  }

  (*v47)(35977);
  if (*(v54 + 161))
  {
    v48 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;
  }

  else
  {
    v48 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
  }

  (*v48)(34383);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthRange(*(v54 + 41), *(v54 + 42));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable(34370);
  if ((*(pxrInternal__aapl__pxrReserved__::HgiGL::GetCapabilities(*(v54 + 45)) + 49) & 8) != 0)
  {
    if (*(v54 + 172))
    {
      v49 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;
    }

    else
    {
      v49 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
    }

    (*v49)(37702);
  }

  if (*(v54 + 22))
  {
    v50 = 0;
    do
    {
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable((v50++ + 12288));
    }

    while (v50 < *(v54 + 22));
  }

  v51 = *(v54 + 5);
  if (v51)
  {
    v52 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glUseProgram;
    ProgramId = pxrInternal__aapl__pxrReserved__::HgiGLShaderProgram::GetProgramId(v51);
    v52(ProgramId);
  }

  sub_29A008E78(__p, "void pxrInternal__aapl__pxrReserved__::HgiGLGraphicsPipeline::BindPipeline()");
  pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(__p);
  if (v57 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AB9FF20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AB9FF3C()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HGIGL_ENABLE_GL_VERSION_VALIDATION))
  {
    sub_29B2C3828();
  }
}

uint64_t sub_29AB9FF6C()
{
  v1 = nullsub_1543;
  return sub_29ABA0CB8(&var8);
}

pxrInternal__aapl__pxrReserved__::HgiGL *pxrInternal__aapl__pxrReserved__::HgiGL::HgiGL(pxrInternal__aapl__pxrReserved__::HgiGL *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::Hgi::Hgi(this);
  *v2 = &unk_2A2073978;
  v2[2] = 0;
  v3 = (v2 + 2);
  v2[3] = 0;
  v4 = (v2 + 3);
  pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::HgiGLGarbageCollector(v2 + 32);
  *(this + 9) = 0;
  if (atomic_load_explicit(&qword_2A17488B0, memory_order_acquire) != -1)
  {
    v10 = &v8;
    v9 = &v10;
    std::__call_once(&qword_2A17488B0, &v9, sub_29ABA0DD4);
  }

  v5 = operator new(0x10uLL);
  pxrInternal__aapl__pxrReserved__::HgiGLDevice::HgiGLDevice(v5);
  *v3 = v5;
  v6 = operator new(0x40uLL);
  pxrInternal__aapl__pxrReserved__::HgiGLCapabilities::HgiGLCapabilities(v6);
  sub_29ABA0110(v4, v6);
  return this;
}

void sub_29ABA00B8(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::~HgiGLGarbageCollector((v1 + 32));
  sub_29ABA0110(v2, 0);
  pxrInternal__aapl__pxrReserved__::Hgi::~Hgi(v1);
  _Unwind_Resume(a1);
}

void sub_29ABA0110(pxrInternal__aapl__pxrReserved__::HgiGLCapabilities **a1, pxrInternal__aapl__pxrReserved__::HgiGLCapabilities *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::HgiGLCapabilities::~HgiGLCapabilities(v3);

    operator delete(v4);
  }
}

void pxrInternal__aapl__pxrReserved__::HgiGL::~HgiGL(pxrInternal__aapl__pxrReserved__::HgiGL *this)
{
  pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::PerformGarbageCollection((this + 32));
  v2 = *(this + 2);
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::HgiGLDevice::~HgiGLDevice(v2);
    operator delete(v3);
  }

  pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::~HgiGLGarbageCollector((this + 32));
  sub_29ABA0110(this + 3, 0);

  pxrInternal__aapl__pxrReserved__::Hgi::~Hgi(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiGL::~HgiGL(this);

  operator delete(v1);
}

BOOL pxrInternal__aapl__pxrReserved__::HgiGL::IsBackendSupported(pxrInternal__aapl__pxrReserved__::HgiGLCapabilities **this)
{
  APIVersion = pxrInternal__aapl__pxrReserved__::HgiGLCapabilities::GetAPIVersion(this[3]);
  if (APIVersion <= 449 && sub_29AB88278(2))
  {
    v3 = pxrInternal__aapl__pxrReserved__::HgiGLCapabilities::GetAPIVersion(this[3]);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("HgiGL unsupported due to GL API version: %d (must be >= 450)\n", v4, v5, v3);
  }

  return APIVersion > 449;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGL::CreateGraphicsCmds@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0xF8uLL);
  result = pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds::HgiGLGraphicsCmds(v6, *(a1 + 16), a2);
  *a3 = v6;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::HgiGL::CreateBlitCmds@<X0>(pxrInternal__aapl__pxrReserved__::HgiGLBlitCmds **a1@<X8>)
{
  v3 = operator new(0x30uLL);
  result = pxrInternal__aapl__pxrReserved__::HgiGLBlitCmds::HgiGLBlitCmds(v3);
  *a1 = v3;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HgiGL::CreateComputeCmds(pxrInternal__aapl__pxrReserved__::HgiComputeCmds **a1@<X8>)
{
  v4 = operator new(0x38uLL);
  pxrInternal__aapl__pxrReserved__::HgiGLComputeCmds::HgiGLComputeCmds(v4);
  *a1 = v4;
}

void *pxrInternal__aapl__pxrReserved__::HgiGL::CreateTexture(atomic_ullong *a1, uint64_t a2)
{
  v4 = operator new(0x78uLL);
  pxrInternal__aapl__pxrReserved__::HgiGLTexture::HgiGLTexture(v4, a2);
  pxrInternal__aapl__pxrReserved__::Hgi::GetUniqueId(a1);
  return v4;
}

void pxrInternal__aapl__pxrReserved__::HgiGL::DestroyTexture(uint64_t a1, unint64_t *a2)
{
  TextureList = pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::GetTextureList((a1 + 32));
  v4 = *a2;
  sub_29A03A998(TextureList, &v4);
  *a2 = 0;
  a2[1] = 0;
}

void *pxrInternal__aapl__pxrReserved__::HgiGL::CreateTextureView(atomic_ullong *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    v8.n128_u64[0] = "hgiGL/hgi.cpp";
    v8.n128_u64[1] = "CreateTextureView";
    v9 = 131;
    v10 = "virtual HgiTextureViewHandle pxrInternal__aapl__pxrReserved__::HgiGL::CreateTextureView(const HgiTextureViewDesc &)";
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Source texture is null");
  }

  v4 = operator new(0x78uLL);
  pxrInternal__aapl__pxrReserved__::HgiGLTexture::HgiGLTexture(v4, a2);
  UniqueId = pxrInternal__aapl__pxrReserved__::Hgi::GetUniqueId(a1);
  v8.n128_u64[0] = v4;
  v8.n128_u64[1] = UniqueId;
  v6 = operator new(0x18uLL);
  pxrInternal__aapl__pxrReserved__::HgiTextureView::HgiTextureView(v6);
  pxrInternal__aapl__pxrReserved__::HgiTextureView::SetViewTexture(v6, &v8);
  pxrInternal__aapl__pxrReserved__::Hgi::GetUniqueId(a1);
  return v6;
}

pxrInternal__aapl__pxrReserved__::HgiTextureView *pxrInternal__aapl__pxrReserved__::HgiGL::DestroyTextureView(uint64_t a1, uint64_t a2)
{
  v4 = *pxrInternal__aapl__pxrReserved__::HgiTextureView::GetViewTexture(*a2);
  TextureList = pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::GetTextureList((a1 + 32));
  v9 = v4;
  sub_29A03A998(TextureList, &v9);
  v6 = *a2;
  v9 = 0uLL;
  v7 = pxrInternal__aapl__pxrReserved__::HgiTextureView::SetViewTexture(v6, &v9);
  result = *a2;
  if (*a2)
  {
    result = (*(*result + 8))(result, v7);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::HgiGL::CreateSampler(atomic_ullong *a1, uint64_t a2)
{
  v4 = operator new(0x58uLL);
  pxrInternal__aapl__pxrReserved__::HgiGLSampler::HgiGLSampler(v4, a2);
  pxrInternal__aapl__pxrReserved__::Hgi::GetUniqueId(a1);
  return v4;
}

void pxrInternal__aapl__pxrReserved__::HgiGL::DestroySampler(uint64_t a1, unint64_t *a2)
{
  SamplerList = pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::GetSamplerList((a1 + 32));
  v4 = *a2;
  sub_29A03A998(SamplerList, &v4);
  *a2 = 0;
  a2[1] = 0;
}

void *pxrInternal__aapl__pxrReserved__::HgiGL::CreateBuffer(atomic_ullong *a1, uint64_t a2)
{
  v4 = operator new(0x58uLL);
  pxrInternal__aapl__pxrReserved__::HgiGLBuffer::HgiGLBuffer(v4, a2);
  pxrInternal__aapl__pxrReserved__::Hgi::GetUniqueId(a1);
  return v4;
}

void pxrInternal__aapl__pxrReserved__::HgiGL::DestroyBuffer(uint64_t a1, unint64_t *a2)
{
  BufferList = pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::GetBufferList((a1 + 32));
  v4 = *a2;
  sub_29A03A998(BufferList, &v4);
  *a2 = 0;
  a2[1] = 0;
}

pxrInternal__aapl__pxrReserved__::HgiGLShaderFunction *pxrInternal__aapl__pxrReserved__::HgiGL::CreateShaderFunction(pxrInternal__aapl__pxrReserved__::HgiGL *this, const pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc *a2)
{
  v4 = operator new(0x198uLL);
  pxrInternal__aapl__pxrReserved__::HgiGLShaderFunction::HgiGLShaderFunction(v4, this, a2);
  pxrInternal__aapl__pxrReserved__::Hgi::GetUniqueId(this);
  return v4;
}

void pxrInternal__aapl__pxrReserved__::HgiGL::DestroyShaderFunction(uint64_t a1, unint64_t *a2)
{
  ShaderFunctionList = pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::GetShaderFunctionList((a1 + 32));
  v4 = *a2;
  sub_29A03A998(ShaderFunctionList, &v4);
  *a2 = 0;
  a2[1] = 0;
}

pxrInternal__aapl__pxrReserved__::HgiGLShaderProgram *pxrInternal__aapl__pxrReserved__::HgiGL::CreateShaderProgram(atomic_ullong *this, const pxrInternal__aapl__pxrReserved__::HgiShaderProgramDesc *a2)
{
  v4 = operator new(0x70uLL);
  pxrInternal__aapl__pxrReserved__::HgiGLShaderProgram::HgiGLShaderProgram(v4, a2);
  pxrInternal__aapl__pxrReserved__::Hgi::GetUniqueId(this);
  return v4;
}

void pxrInternal__aapl__pxrReserved__::HgiGL::DestroyShaderProgram(uint64_t a1, unint64_t *a2)
{
  ShaderProgramList = pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::GetShaderProgramList((a1 + 32));
  v4 = *a2;
  sub_29A03A998(ShaderProgramList, &v4);
  *a2 = 0;
  a2[1] = 0;
}

void pxrInternal__aapl__pxrReserved__::HgiGL::DestroyResourceBindings(uint64_t a1, unint64_t *a2)
{
  ResourceBindingsList = pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::GetResourceBindingsList((a1 + 32));
  v4 = *a2;
  sub_29A03A998(ResourceBindingsList, &v4);
  *a2 = 0;
  a2[1] = 0;
}

void pxrInternal__aapl__pxrReserved__::HgiGL::DestroyGraphicsPipeline(uint64_t a1, unint64_t *a2)
{
  GraphicsPipelineList = pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::GetGraphicsPipelineList((a1 + 32));
  v4 = *a2;
  sub_29A03A998(GraphicsPipelineList, &v4);
  *a2 = 0;
  a2[1] = 0;
}

pxrInternal__aapl__pxrReserved__::HgiGLComputePipeline *pxrInternal__aapl__pxrReserved__::HgiGL::CreateComputePipeline(atomic_ullong *this, const pxrInternal__aapl__pxrReserved__::HgiComputePipelineDesc *a2)
{
  v4 = operator new(0x38uLL);
  pxrInternal__aapl__pxrReserved__::HgiGLComputePipeline::HgiGLComputePipeline(v4, a2);
  pxrInternal__aapl__pxrReserved__::Hgi::GetUniqueId(this);
  return v4;
}

void pxrInternal__aapl__pxrReserved__::HgiGL::DestroyComputePipeline(uint64_t a1, unint64_t *a2)
{
  ComputePipelineList = pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::GetComputePipelineList((a1 + 32));
  v4 = *a2;
  sub_29A03A998(ComputePipelineList, &v4);
  *a2 = 0;
  a2[1] = 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGL::GetAPIName(pxrInternal__aapl__pxrReserved__::HgiGL *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiTokens);
  if (!v1)
  {
    v1 = sub_29AB8834C(&pxrInternal__aapl__pxrReserved__::HgiTokens);
  }

  return v1 + 16;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGL::StartFrame(uint64_t this)
{
  v1 = *(this + 36);
  *(this + 36) = v1 + 1;
  if (!v1 && pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_debug == 1)
  {
    return pxrInternal__aapl__pxrReserved__::internal::GLApi::glPushDebugGroup(33353, 0, 0xFFFFFFFFLL, "Full Hydra Frame");
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::HgiGL::EndFrame(pxrInternal__aapl__pxrReserved__::HgiGL *this)
{
  v2 = *(this + 9) - 1;
  *(this + 9) = v2;
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::PerformGarbageCollection((this + 32));
    pxrInternal__aapl__pxrReserved__::HgiGLDevice::GarbageCollect(*(this + 2));
    if (pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_debug == 1)
    {
      v4 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glPopDebugGroup;

      v4();
    }
  }
}

pxrInternal__aapl__pxrReserved__::HgiGLContextArena *pxrInternal__aapl__pxrReserved__::HgiGL::CreateContextArena(atomic_ullong *this)
{
  v2 = operator new(8uLL);
  pxrInternal__aapl__pxrReserved__::HgiGLContextArena::HgiGLContextArena(v2);
  pxrInternal__aapl__pxrReserved__::Hgi::GetUniqueId(this);
  return v2;
}

void pxrInternal__aapl__pxrReserved__::HgiGL::DestroyContextArena(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*a2)
    {
      pxrInternal__aapl__pxrReserved__::HgiGLContextArena::~HgiGLContextArena(*a2);
      operator delete(v3);
    }

    *a2 = 0;
    *(a2 + 8) = 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGL::_SubmitCmds(uint64_t a1, uint64_t a2, int a3)
{
  v5 = pxrInternal__aapl__pxrReserved__::Hgi::_SubmitCmds(a1, a2);
  if (a3 == 1)
  {
    v6 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glFenceSync(37143, 0);
    v7 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glClientWaitSync(v6, 1, 100000000000);
    if (v7 != 37146 && v7 != 37148)
    {
      v10[0] = "hgiGL/hgi.cpp";
      v10[1] = "_SubmitCmds";
      v10[2] = 327;
      v10[3] = "virtual BOOL pxrInternal__aapl__pxrReserved__::HgiGL::_SubmitCmds(HgiCmds *, HgiSubmitWaitType)";
      v11 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v10, 3, "Unexpected ClientWaitSync timeout");
    }

    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteSync(v6);
  }

  if (!*(a1 + 36))
  {
    pxrInternal__aapl__pxrReserved__::HgiGLGarbageCollector::PerformGarbageCollection((a1 + 32));
    pxrInternal__aapl__pxrReserved__::HgiGLDevice::GarbageCollect(*(a1 + 16));
  }

  return v5;
}

uint64_t sub_29ABA0CB8(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A2073A90;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29ABA0D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABA0D68(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::HgiGL *sub_29ABA0D90()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::HgiGL::HgiGL(v0);
  return v0;
}

void sub_29ABA0DD4(pxrInternal__aapl__pxrReserved__::internal::GLApi *a1)
{
  v1 = atomic_load(pxrInternal__aapl__pxrReserved__::HGIGL_ENABLE_GL_VERSION_VALIDATION);
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
  }

  v2 = *v1;
  v3 = pxrInternal__aapl__pxrReserved__::internal::GLApi::GarchGLApiLoad(a1);
  if (v2 == 1 && (pxrInternal__aapl__pxrReserved__::HgiGLMeetsMinimumRequirements(v3) & 1) == 0)
  {
    v5[0] = "hgiGL/hgi.cpp";
    v5[1] = "operator()";
    v5[2] = 58;
    v5[3] = "auto pxrInternal__aapl__pxrReserved__::HgiGL::HgiGL()::(anonymous class)::operator()() const";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v5, "HgiGL minimum OpenGL requirements not met. Please ensure that OpenGL is initialized and supports version 4.5.", v4);
  }
}

void pxrInternal__aapl__pxrReserved__::HgiGLOps::PushDebugGroup(pxrInternal__aapl__pxrReserved__::HgiGLOps *this@<X0>, uint64_t a2@<X8>)
{
  sub_29A008E78(__p, this);
  if (SHIBYTE(v8) < 0)
  {
    sub_29A008D14(&v5, __p[0], __p[1]);
  }

  else
  {
    v5 = *__p;
    v6 = v8;
  }

  *(a2 + 24) = 0;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2073AD0;
  *(v4 + 8) = v5;
  *(v4 + 3) = v6;
  v5 = 0uLL;
  v6 = 0;
  *(a2 + 24) = v4;
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29ABA0F24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyTextureGpuToCpu@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = operator new(0x40uLL);
  *v4 = &unk_2A2073BD0;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  result = *(a1 + 32);
  *(v4 + 40) = result;
  *(v4 + 7) = *(a1 + 48);
  *(a2 + 24) = v4;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyTextureCpuToGpu@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = operator new(0x38uLL);
  *v4 = &unk_2A2073C50;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  result = *(a1 + 32);
  *(v4 + 40) = result;
  *(a2 + 24) = v4;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyBufferGpuToGpu@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = operator new(0x40uLL);
  *v4 = &unk_2A2073CD0;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  result = *(a1 + 32);
  *(v4 + 40) = result;
  *(v4 + 7) = *(a1 + 48);
  *(a2 + 24) = v4;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyBufferCpuToGpu@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = operator new(0x38uLL);
  *v4 = &unk_2A2073D50;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  result = *(a1 + 32);
  *(v4 + 40) = result;
  *(a2 + 24) = v4;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyBufferGpuToCpu@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = operator new(0x38uLL);
  *v4 = &unk_2A2073DD0;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  result = *(a1 + 32);
  *(v4 + 40) = result;
  *(a2 + 24) = v4;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyTextureToBuffer@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = operator new(0x48uLL);
  *v4 = &unk_2A2073E50;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(v4 + 40) = result;
  *(v4 + 56) = v7;
  *(a2 + 24) = v4;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyBufferToTexture@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = operator new(0x48uLL);
  *v4 = &unk_2A2073ED0;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(v4 + 40) = result;
  *(v4 + 56) = v7;
  *(a2 + 24) = v4;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::HgiGLOps::SetViewport@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A2073F50;
  result = *a1;
  *(a2 + 8) = *a1;
  *(a2 + 24) = a2;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::HgiGLOps::SetScissor@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A2073FD0;
  result = *a1;
  *(a2 + 8) = *a1;
  *(a2 + 24) = a2;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLOps::BindPipeline@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = &unk_2A2074050;
  a3[1] = result;
  a3[2] = a2;
  a3[3] = a3;
  return result;
}

{
  *a3 = &unk_2A20740D0;
  a3[1] = result;
  a3[2] = a2;
  a3[3] = a3;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLOps::BindResources@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = &unk_2A2074150;
  a3[1] = result;
  a3[2] = a2;
  a3[3] = a3;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::HgiGLOps::SetConstantValues@<X0>(size_t __sz@<X4>, uint64_t a2@<X0>, uint64_t a3@<X1>, int a4@<W3>, const void *a5@<X5>, uint64_t a6@<X8>)
{
  v7 = __sz;
  v12 = __sz;
  v13 = operator new[](__sz);
  memcpy(v13, a5, v12);
  result = operator new(0x28uLL);
  *result = &unk_2A20741D0;
  result[1] = a2;
  result[2] = a3;
  *(result + 6) = a4;
  *(result + 7) = v7;
  result[4] = v13;
  *(a6 + 24) = result;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::HgiGLOps::SetConstantValues@<X0>(size_t __sz@<X3>, uint64_t a2@<X0>, uint64_t a3@<X1>, int a4@<W2>, const void *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = __sz;
  v12 = __sz;
  v13 = operator new[](__sz);
  memcpy(v13, a5, v12);
  result = operator new(0x28uLL);
  *result = &unk_2A2074250;
  result[1] = a2;
  result[2] = a3;
  *(result + 6) = a4;
  *(result + 7) = v7;
  result[4] = v13;
  *(a6 + 24) = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HgiGLOps::BindVertexBuffers(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  sub_29ABA3938(&__p, *a1, *(a1 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3));
  *(a2 + 24) = 0;
  v3 = operator new(0x20uLL);
  *v3 = &unk_2A20742D0;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0;
  sub_29ABA3938(v3 + 1, __p, v5, 0xAAAAAAAAAAAAAAABLL * ((v5 - __p) >> 3));
  *(a2 + 24) = v3;
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_29ABA14E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::HgiGLOps::Draw@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  result = operator new(0x20uLL);
  *result = &unk_2A2074350;
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  *(a7 + 24) = result;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::HgiGLOps::DrawIndirect@<Q0>(unsigned __int32 a1@<W0>, unsigned __int32 a2@<W1>, __n128 *a3@<X2>, unsigned __int32 a4@<W3>, unsigned __int32 a5@<W4>, unsigned __int32 a6@<W5>, uint64_t a7@<X8>)
{
  v14 = operator new(0x30uLL);
  v14->n128_u64[0] = &unk_2A20743D0;
  v14->n128_u32[2] = a1;
  v14->n128_u32[3] = a2;
  result = *a3;
  v14[1] = *a3;
  v14[2].n128_u32[0] = a4;
  v14[2].n128_u32[1] = a5;
  v14[2].n128_u32[2] = a6;
  v14[2].n128_u32[3] = 0;
  *(a7 + 24) = v14;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::HgiGLOps::DrawIndexed@<Q0>(unsigned __int32 a1@<W0>, unsigned __int32 a2@<W1>, __n128 *a3@<X2>, unsigned __int32 a4@<W3>, unsigned __int32 a5@<W4>, unsigned __int32 a6@<W5>, unsigned __int32 a7@<W6>, unsigned __int32 a8@<W7>, uint64_t a9@<X8>)
{
  v18 = operator new(0x38uLL);
  v18->n128_u64[0] = &unk_2A2074450;
  v18->n128_u32[2] = a1;
  v18->n128_u32[3] = a2;
  result = *a3;
  v18[1] = *a3;
  v18[2].n128_u32[0] = a4;
  v18[2].n128_u32[1] = a5;
  v18[2].n128_u32[2] = a6;
  v18[2].n128_u32[3] = a7;
  v18[3].n128_u32[0] = a8;
  v18[3].n128_u32[1] = 0;
  *(a9 + 24) = v18;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::HgiGLOps::DrawIndexedIndirect@<Q0>(unsigned __int32 a1@<W0>, unsigned __int32 a2@<W1>, __n128 *a3@<X2>, __n128 *a4@<X3>, unsigned __int32 a5@<W4>, unsigned __int32 a6@<W5>, unsigned __int32 a7@<W6>, uint64_t a8@<X8>)
{
  v16 = operator new(0x40uLL);
  v16->n128_u64[0] = &unk_2A20744D0;
  v16->n128_u32[2] = a1;
  v16->n128_u32[3] = a2;
  result = *a3;
  v18 = *a4;
  v16[1] = *a3;
  v16[2] = v18;
  v16[3].n128_u32[0] = a5;
  v16[3].n128_u32[1] = a6;
  v16[3].n128_u32[2] = a7;
  v16[3].n128_u32[3] = 0;
  *(a8 + 24) = v16;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLOps::Dispatch@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = &unk_2A2074550;
  a3[1] = this | (a2 << 32);
  a3[3] = a3;
  return this;
}

void sub_29ABA1944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  v28 = *v26;
  if (*v26)
  {
    v24[16] = v28;
    operator delete(v28);
  }

  v29 = *v25;
  if (*v25)
  {
    v24[3] = v29;
    operator delete(v29);
  }

  operator delete(v24);
  sub_29ABA19C8(&a9);
  _Unwind_Resume(a1);
}

void *sub_29ABA19C8(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    a1[18] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

__n128 pxrInternal__aapl__pxrReserved__::HgiGLOps::FillBuffer@<Q0>(__n128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = operator new(0x20uLL);
  *v6 = &unk_2A2074650;
  result = *a1;
  *(v6 + 8) = *a1;
  v6[24] = a2;
  *(v6 + 25) = 0;
  *(v6 + 7) = 0;
  *(a3 + 24) = v6;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::HgiGLOps::GenerateMipMaps@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A20746D0;
  result = *a1;
  *(a2 + 8) = *a1;
  *(a2 + 24) = a2;
  return result;
}

void sub_29ABA1C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  v28 = *v26;
  if (*v26)
  {
    v24[16] = v28;
    operator delete(v28);
  }

  v29 = *v25;
  if (*v25)
  {
    v24[3] = v29;
    operator delete(v29);
  }

  operator delete(v24);
  sub_29ABA19C8(&a9);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLOps::InsertMemoryBarrier@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A20747D0;
  *(a2 + 8) = this;
  *(a2 + 24) = a2;
  return this;
}

uint64_t sub_29ABA1D24(uint64_t a1)
{
  *a1 = &unk_2A2073AD0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29ABA1D74(void **__p)
{
  *__p = &unk_2A2073AD0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

void *sub_29ABA1DD4(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A2073AD0;
  v3 = v2 + 1;
  if (*(a1 + 31) < 0)
  {
    sub_29A008D14(v3, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    *v3 = *(a1 + 8);
    v2[3] = *(a1 + 24);
  }

  return v2;
}

char *sub_29ABA1E58(char *result, void *a2)
{
  *a2 = &unk_2A2073AD0;
  v2 = a2 + 1;
  if (result[31] < 0)
  {
    return sub_29A008D14(v2, *(result + 1), *(result + 2));
  }

  v3 = *(result + 8);
  v2[2] = *(result + 3);
  *v2 = v3;
  return result;
}

void sub_29ABA1EA0(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void sub_29ABA1EB4(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29ABA1EF8(uint64_t result)
{
  if (pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_debug == 1)
  {
    v3 = *(result + 8);
    v1 = result + 8;
    v2 = v3;
    if (*(v1 + 23) >= 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = v2;
    }

    return pxrInternal__aapl__pxrReserved__::internal::GLApi::glPushDebugGroup(33353, 0, 0xFFFFFFFFLL, v4);
  }

  return result;
}

uint64_t sub_29ABA1F3C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2073B30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_29ABA1F90()
{
  result = operator new(0x10uLL);
  *result = &unk_2A2073B50;
  return result;
}

uint64_t sub_29ABA1FF0()
{
  if (pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_debug == 1)
  {
    return pxrInternal__aapl__pxrReserved__::internal::GLApi::glPopDebugGroup();
  }

  return result;
}

uint64_t sub_29ABA2018(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2073BB0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29ABA206C(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_2A2073BD0;
  *(v2 + 8) = *(a1 + 8);
  *(v2 + 24) = *(a1 + 24);
  result = *(a1 + 40);
  *(v2 + 40) = result;
  *(v2 + 7) = *(a1 + 56);
  return result;
}

__n128 sub_29ABA20D0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2073BD0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_29ABA2118(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  if (v4 && v4[26] || (sub_29B2C385C(v16) & 1) != 0)
  {
    if (*(a1 + 56))
    {
      Descriptor = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(v4);
      v6 = Descriptor;
      v10 = 0;
      v7 = *(Descriptor + 24);
      if ((v7 & 2) != 0)
      {
        v9 = *(Descriptor + 28);
        if (v9 != 10 && v9 != 33)
        {
          __p = "hgiGL/ops.cpp";
          v12 = "operator()";
          v13 = 78;
          v14 = "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyTextureGpuToCpu(const HgiTextureGpuToCpuOp &)::(anonymous class)::operator()() const";
          v15 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "texDesc.format == HgiFormatFloat32 || texDesc.format == HgiFormatFloat32UInt8", 0);
        }

        v10 = 0x190200001406;
        goto LABEL_12;
      }

      if ((v7 & 4) == 0)
      {
        pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetFormat(*(Descriptor + 28), v7, &v10 + 1, &v10, 0);
LABEL_12:
        if (pxrInternal__aapl__pxrReserved__::HgiIsCompressed(*(v6 + 28)))
        {
          __p = "hgiGL/ops.cpp";
          v12 = "operator()";
          v13 = 97;
          v14 = "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyTextureGpuToCpu(const HgiTextureGpuToCpuOp &)::(anonymous class)::operator()() const";
          v15 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Copying from compressed GPU texture not supported.");
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::internal::GLApi::glPixelStorei(3333, 1);
          pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTextureSubImage(v4[26], *(a1 + 36), *(a1 + 24), *(a1 + 28), *(a1 + 32), *(v6 + 52), *(v6 + 56), *(v6 + 60), __PAIR64__(v10, HIDWORD(v10)), *(a1 + 56), *(a1 + 40));
          sub_29A008E78(&__p, "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyTextureGpuToCpu(const HgiTextureGpuToCpuOp &)::(anonymous class)::operator()() const");
          pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(&__p);
          if (SHIBYTE(v13) < 0)
          {
            operator delete(__p);
          }
        }

        return;
      }

      __p = "hgiGL/ops.cpp";
      v12 = "operator()";
      v13 = 85;
      v14 = "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyTextureGpuToCpu(const HgiTextureGpuToCpuOp &)::(anonymous class)::operator()() const";
      v15 = 0;
      v8 = "Copying a stencil-only texture is unsupported currently\n";
    }

    else
    {
      __p = "hgiGL/ops.cpp";
      v12 = "operator()";
      v13 = 67;
      v14 = "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyTextureGpuToCpu(const HgiTextureGpuToCpuOp &)::(anonymous class)::operator()() const";
      v15 = 0;
      v8 = "The size of the data to copy was zero (aborted)";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, v8, a3);
  }
}

void sub_29ABA2338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABA2354(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2073C30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29ABA23A8(uint64_t a1)
{
  v2 = operator new(0x38uLL);
  *v2 = &unk_2A2073C50;
  *(v2 + 8) = *(a1 + 8);
  *(v2 + 24) = *(a1 + 24);
  result = *(a1 + 40);
  *(v2 + 40) = result;
  return result;
}

__n128 sub_29ABA2404(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2073C50;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_29ABA2444(uint64_t a1)
{
  Descriptor = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*(a1 + 40));
  v24 = 0;
  pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetFormat(Descriptor[7], Descriptor[6], &v24 + 1, &v24, 0);
  IsCompressed = pxrInternal__aapl__pxrReserved__::HgiIsCompressed(Descriptor[7]);
  v4 = *(a1 + 40);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPixelStorei(3317, 1);
  v5 = Descriptor[12];
  if (v5 == 2)
  {
    v12 = *(v4 + 104);
    v13 = *(a1 + 24);
    v14 = *(a1 + 28);
    v16 = *(a1 + 32);
    v15 = *(a1 + 36);
    v17 = Descriptor[13];
    v18 = Descriptor[14];
    v19 = Descriptor[15];
    if (IsCompressed)
    {
      (pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTextureSubImage3D)(v12, v15, v13, v14, v16, v17, v18, v19, __PAIR64__(*(a1 + 16), HIDWORD(v24)), *(a1 + 8));
    }

    else
    {
      (pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureSubImage3D)(v12, v15, v13, v14, v16, v17, v18, v19, __PAIR64__(v24, HIDWORD(v24)), *(a1 + 8));
    }
  }

  else if (v5 == 1)
  {
    v6 = *(v4 + 104);
    v7 = *(a1 + 36);
    v8 = *(a1 + 24);
    v9 = *(a1 + 28);
    v10 = Descriptor[13];
    v11 = Descriptor[14];
    if (IsCompressed)
    {
      (pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTextureSubImage2D)(v6, v7, v8, v9, v10, v11, HIDWORD(v24), *(a1 + 16), *(a1 + 8));
    }

    else
    {
      (pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureSubImage2D)(v6, v7, v8, v9, v10, v11, HIDWORD(v24), v24, *(a1 + 8));
    }
  }

  else
  {
    __p[0] = "hgiGL/ops.cpp";
    __p[1] = "operator()";
    v21 = 188;
    v22 = "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyTextureCpuToGpu(const HgiTextureCpuToGpuOp &)::(anonymous class)::operator()() const";
    v23 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Unsupported HgiTextureType enum value");
  }

  sub_29A008E78(__p, "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyTextureCpuToGpu(const HgiTextureCpuToGpuOp &)::(anonymous class)::operator()() const");
  pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(__p);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29ABA25E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABA2604(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2073CB0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29ABA2658(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_2A2073CD0;
  *(v2 + 8) = *(a1 + 8);
  *(v2 + 24) = *(a1 + 24);
  result = *(a1 + 40);
  *(v2 + 40) = result;
  *(v2 + 7) = *(a1 + 56);
  return result;
}

__n128 sub_29ABA26BC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2073CD0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_29ABA2704(void *a1, uint64_t a2, char *a3)
{
  v4 = a1[1];
  if (v4 && *(v4 + 64) || (sub_29B2C38C0(v11) & 1) != 0)
  {
    v5 = a1[5];
    if (v5 && *(v5 + 64) || (sub_29B2C3924(v10) & 1) != 0)
    {
      if (a1[4])
      {
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glCopyNamedBufferSubData(*(v4 + 64), *(v5 + 64), a1[3], a1[7]);
        sub_29A008E78(__p, "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyBufferGpuToGpu(const HgiBufferGpuToGpuOp &)::(anonymous class)::operator()() const");
        pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(__p);
        if (SHIBYTE(v7) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        __p[0] = "hgiGL/ops.cpp";
        __p[1] = "operator()";
        v7 = 219;
        v8 = "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyBufferGpuToGpu(const HgiBufferGpuToGpuOp &)::(anonymous class)::operator()() const";
        v9 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(__p, "The size of the data to copy was zero (aborted)", a3);
      }
    }
  }
}

void sub_29ABA2800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABA281C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2073D30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29ABA2870(uint64_t a1)
{
  v2 = operator new(0x38uLL);
  *v2 = &unk_2A2073D50;
  *(v2 + 8) = *(a1 + 8);
  *(v2 + 24) = *(a1 + 24);
  result = *(a1 + 40);
  *(v2 + 40) = result;
  return result;
}

__n128 sub_29ABA28CC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2073D50;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_29ABA290C(void *a1)
{
  if (a1[6])
  {
    if (a1[1])
    {
      v1 = a1[3];
      if (v1)
      {
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedBufferSubData(*(v1 + 64), a1[5]);
        sub_29A008E78(__p, "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyBufferCpuToGpu(const HgiBufferCpuToGpuOp &)::(anonymous class)::operator()() const");
        pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(__p);
        if (v3 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }
}

void sub_29ABA2990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABA29AC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2073DB0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29ABA2A00(uint64_t a1)
{
  v2 = operator new(0x38uLL);
  *v2 = &unk_2A2073DD0;
  *(v2 + 8) = *(a1 + 8);
  *(v2 + 24) = *(a1 + 24);
  result = *(a1 + 40);
  *(v2 + 40) = result;
  return result;
}

__n128 sub_29ABA2A5C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2073DD0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_29ABA2A9C(void *a1)
{
  if (a1[4])
  {
    if (a1[5])
    {
      v1 = a1[1];
      if (v1)
      {
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedBufferSubData(*(v1 + 64), a1[3]);
        sub_29A008E78(__p, "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyBufferGpuToCpu(const HgiBufferGpuToCpuOp &)::(anonymous class)::operator()() const");
        pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(__p);
        if (v3 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }
}

void sub_29ABA2B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABA2B3C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2073E30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29ABA2B90(uint64_t a1)
{
  v2 = operator new(0x48uLL);
  *v2 = &unk_2A2073E50;
  *(v2 + 8) = *(a1 + 8);
  *(v2 + 24) = *(a1 + 24);
  *(v2 + 40) = *(a1 + 40);
  result = *(a1 + 56);
  *(v2 + 56) = result;
  return result;
}

__n128 sub_29ABA2BF4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2073E50;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_29ABA2C3C(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  if (v4 && v4[26] || (sub_29B2C3988(v17) & 1) != 0)
  {
    if (*(a1 + 24) || *(a1 + 28) || *(a1 + 32))
    {
      v15[0] = "hgiGL/ops.cpp";
      v15[1] = "operator()";
      v15[2] = 319;
      v15[3] = "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyTextureToBuffer(const HgiTextureToBufferOp &)::(anonymous class)::operator()() const";
      v16 = 0;
      v8 = "Texture offset not supported (aborted).";
      v9 = v15;
    }

    else
    {
      v5 = *(a1 + 40);
      if ((!v5 || !*(v5 + 64)) && (sub_29B2C39EC(v15) & 1) == 0)
      {
        return;
      }

      if (*(a1 + 64))
      {
        Descriptor = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(v4);
        v7 = *(a1 + 56);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer(35051, *(v5 + 64));
        if (pxrInternal__aapl__pxrReserved__::HgiIsCompressed(*(Descriptor + 28)))
        {
          pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetCompressedTextureImage(v4[26], *(a1 + 36), *(a1 + 64), v7);
        }

        else
        {
          v10 = 0;
          LODWORD(__p[0]) = 0;
          pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetFormat(*(Descriptor + 28), *(Descriptor + 24), __p, &v10, 0);
          pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTextureImage(v4[26], *(a1 + 36), LODWORD(__p[0]), v10, *(a1 + 64), v7);
        }

        pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer(35051, 0);
        sub_29A008E78(__p, "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyTextureToBuffer(const HgiTextureToBufferOp &)::(anonymous class)::operator()() const");
        pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(__p);
        if (SHIBYTE(v12) < 0)
        {
          operator delete(__p[0]);
        }

        return;
      }

      __p[0] = "hgiGL/ops.cpp";
      __p[1] = "operator()";
      v12 = 332;
      v13 = "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyTextureToBuffer(const HgiTextureToBufferOp &)::(anonymous class)::operator()() const";
      v14 = 0;
      v8 = "The size of the data to copy was zero (aborted)";
      v9 = __p;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v9, v8, a3);
  }
}

void sub_29ABA2E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABA2E30(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2073EB0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29ABA2E84(uint64_t a1)
{
  v2 = operator new(0x48uLL);
  *v2 = &unk_2A2073ED0;
  *(v2 + 8) = *(a1 + 8);
  *(v2 + 24) = *(a1 + 24);
  *(v2 + 40) = *(a1 + 40);
  result = *(a1 + 56);
  *(v2 + 56) = result;
  return result;
}

__n128 sub_29ABA2EE8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2073ED0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_29ABA2F30(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  if (v4 && *(v4 + 64) || (sub_29B2C3A50(v26)) && ((v5 = *(a1 + 32)) != 0 && v5[26] || (sub_29B2C3AB4(v25)))
  {
    if (*(a1 + 64))
    {
      Descriptor = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(v5);
      v19 = 0;
      pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetFormat(Descriptor[7], Descriptor[6], &v19 + 1, &v19, 0);
      IsCompressed = pxrInternal__aapl__pxrReserved__::HgiIsCompressed(Descriptor[7]);
      v8 = *(a1 + 24);
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer(35052, *(v4 + 64));
      v9 = Descriptor[12];
      if (v9 == 2)
      {
        if (IsCompressed)
        {
          v16 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTextureSubImage3D;
          v18 = v8;
          HIDWORD(v17) = *(a1 + 64);
        }

        else
        {
          v16 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureSubImage3D;
          v18 = v8;
          HIDWORD(v17) = v19;
        }

        LODWORD(v17) = HIDWORD(v19);
        (v16)(v5[26], *(a1 + 60), *(a1 + 48), *(a1 + 52), *(a1 + 56), Descriptor[13], Descriptor[14], Descriptor[15], v17, v18);
      }

      else if (v9 == 1)
      {
        v10 = v5[26];
        v11 = *(a1 + 60);
        v12 = *(a1 + 48);
        v13 = *(a1 + 52);
        v14 = Descriptor[13];
        v15 = Descriptor[14];
        if (IsCompressed)
        {
          (pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTextureSubImage2D)(v10, v11, v12, v13, v14, v15, HIDWORD(v19), *(a1 + 64), v8);
        }

        else
        {
          (pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureSubImage2D)(v10, v11, v12, v13, v14, v15, HIDWORD(v19), v19, v8);
        }
      }

      else
      {
        __p = "hgiGL/ops.cpp";
        v21 = "operator()";
        v22 = 461;
        v23 = "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyBufferToTexture(const HgiBufferToTextureOp &)::(anonymous class)::operator()() const";
        v24 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Unsupported HgiTextureType enum value");
      }

      pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer(35052, 0);
      sub_29A008E78(&__p, "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyBufferToTexture(const HgiBufferToTextureOp &)::(anonymous class)::operator()() const");
      pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(&__p);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      __p = "hgiGL/ops.cpp";
      v21 = "operator()";
      v22 = 392;
      v23 = "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::CopyBufferToTexture(const HgiBufferToTextureOp &)::(anonymous class)::operator()() const";
      v24 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "The size of the data to copy was zero (aborted)", a3);
    }
  }
}

void sub_29ABA3170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABA318C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2073F30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29ABA31E0(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2073F50;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29ABA322C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2073F50;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29ABA3278(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2073FB0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29ABA32CC(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2073FD0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29ABA3318(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2073FD0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29ABA3364(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2074030))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29ABA33B8(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2074050;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29ABA3404(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2074050;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_29ABA3434(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::HgiGLGraphicsPipeline::BindPipeline(v2, a2);
  }
}

uint64_t sub_29ABA3444(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20740B0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29ABA3498(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20740D0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29ABA34E4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20740D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_29ABA3514(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    pxrInternal__aapl__pxrReserved__::HgiGLComputePipeline::BindPipeline(v1);
  }
}

uint64_t sub_29ABA3524(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2074130))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29ABA3578(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2074150;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29ABA35C4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2074150;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_29ABA35F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    pxrInternal__aapl__pxrReserved__::HgiGLResourceBindings::BindResources(v1);
  }
}

uint64_t sub_29ABA3604(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20741B0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29ABA3658(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_2A20741D0;
  *(v2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(v2 + 24) = result;
  return result;
}

__n128 sub_29ABA36AC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20741D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_29ABA36E4(uint64_t a1)
{
  Descriptor = pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline::GetDescriptor(*(a1 + 8));
  UniformBuffer = pxrInternal__aapl__pxrReserved__::HgiGLShaderProgram::GetUniformBuffer(*(Descriptor + 32), *(a1 + 28));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedBufferData(UniformBuffer, *(a1 + 28), *(a1 + 32), 35044);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBufferBase(35345, *(a1 + 24), UniformBuffer);
  v4 = *(a1 + 32);
  if (v4)
  {

    operator delete[](v4);
  }
}

uint64_t sub_29ABA3778(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2074230))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29ABA37CC(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_2A2074250;
  *(v2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(v2 + 24) = result;
  return result;
}

__n128 sub_29ABA3820(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2074250;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_29ABA3858(uint64_t a1)
{
  Descriptor = pxrInternal__aapl__pxrReserved__::HgiComputePipeline::GetDescriptor(*(a1 + 8));
  UniformBuffer = pxrInternal__aapl__pxrReserved__::HgiGLShaderProgram::GetUniformBuffer(*(Descriptor + 24), *(a1 + 28));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glNamedBufferData(UniformBuffer, *(a1 + 28), *(a1 + 32), 35044);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBufferBase(35345, *(a1 + 24), UniformBuffer);
  v4 = *(a1 + 32);
  if (v4)
  {

    operator delete[](v4);
  }
}

uint64_t sub_29ABA38EC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20742B0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_29ABA3938(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A012BFC(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29ABA3998(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29ABA39B4(void *a1)
{
  *a1 = &unk_2A20742D0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_29ABA3A04(void *__p)
{
  *__p = &unk_2A20742D0;
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void *sub_29ABA3A64(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A20742D0;
  v2[2] = 0;
  v2[3] = 0;
  v2[1] = 0;
  sub_29ABA3938(v2 + 1, *(a1 + 8), *(a1 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  return v2;
}

void *sub_29ABA3AE8(uint64_t a1, void *a2)
{
  *a2 = &unk_2A20742D0;
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  return sub_29ABA3938(a2 + 1, *(a1 + 8), *(a1 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *(a1 + 8)) >> 3));
}

void sub_29ABA3B30(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_29ABA3B48(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void sub_29ABA3B8C(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); v1 != i; v1 += 24)
  {
    v3 = *v1;
    Descriptor = pxrInternal__aapl__pxrReserved__::HgiBuffer::GetDescriptor(*v1);
    if ((*(Descriptor + 24) & 4) == 0)
    {
      __p[0] = "hgiGL/ops.cpp";
      __p[1] = "operator()";
      v6 = 583;
      v7 = "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::BindVertexBuffers(const HgiVertexBufferBindingVector &)::(anonymous class)::operator()() const";
      v8 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(__p, "desc.usage & HgiBufferUsageVertex", 0);
    }

    pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindVertexBuffer(*(v1 + 20), *(v3 + 16), *(v1 + 16), *(Descriptor + 40));
  }

  sub_29A008E78(__p, "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::BindVertexBuffers(const HgiVertexBufferBindingVector &)::(anonymous class)::operator()() const");
  pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(__p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29ABA3C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABA3CA8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2074330))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29ABA3CFC(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A2074350;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 sub_29ABA3D50(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2074350;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_29ABA3D88(_DWORD *a1)
{
  v2 = a1[2];
  if (v2 == 4)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glPatchParameteri(36466, a1[3]);
    v2 = a1[2];
  }

  v3 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawArraysInstancedBaseInstance;
  PrimitiveType = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetPrimitiveType(v2);
  (v3)(PrimitiveType, a1[5], a1[4], a1[6], a1[7]);
  sub_29A008E78(__p, "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::Draw(HgiPrimitiveType, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t)::(anonymous class)::operator()() const");
  pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(__p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29ABA3E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABA3E38(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20743B0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29ABA3E8C(uint64_t a1)
{
  v2 = operator new(0x30uLL);
  *v2 = &unk_2A20743D0;
  *(v2 + 5) = *(a1 + 40);
  *(v2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(v2 + 24) = result;
  *(v2 + 11) = 0;
  return result;
}

__n128 sub_29ABA3EEC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20743D0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 44) = 0;
  return result;
}

void sub_29ABA3F30(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer(36671, *(*(a1 + 16) + 64));
  v2 = *(a1 + 8);
  if (v2 == 4)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glPatchParameteri(36466, *(a1 + 12));
    v2 = *(a1 + 8);
  }

  v3 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiDrawArraysIndirect;
  PrimitiveType = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetPrimitiveType(v2);
  (v3)(PrimitiveType, *(a1 + 32), *(a1 + 36), *(a1 + 40));
  sub_29A008E78(__p, "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::DrawIndirect(HgiPrimitiveType, uint32_t, const HgiBufferHandle &, uint32_t, uint32_t, uint32_t)::(anonymous class)::operator()() const");
  pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(__p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29ABA3FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABA3FFC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2074430))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29ABA4050(uint64_t a1)
{
  v2 = operator new(0x38uLL);
  *v2 = &unk_2A2074450;
  *(v2 + 40) = *(a1 + 40);
  *(v2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(v2 + 24) = result;
  *(v2 + 13) = 0;
  return result;
}

__n128 sub_29ABA40B0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2074450;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 52) = 0;
  return result;
}

void sub_29ABA40F4(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer(34963, *(*(a1 + 16) + 64));
  v2 = *(a1 + 8);
  if (v2 == 4)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glPatchParameteri(36466, *(a1 + 12));
    v2 = *(a1 + 8);
  }

  v3 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glDrawElementsInstancedBaseVertexBaseInstance;
  PrimitiveType = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetPrimitiveType(v2);
  (v3)(PrimitiveType, *(a1 + 32), 5125, *(a1 + 36), *(a1 + 44), *(a1 + 40), *(a1 + 48));
  sub_29A008E78(__p, "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::DrawIndexed(HgiPrimitiveType, uint32_t, const HgiBufferHandle &, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t)::(anonymous class)::operator()() const");
  pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(__p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29ABA41AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABA41C8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20744B0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29ABA421C(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_2A20744D0;
  *(v2 + 7) = *(a1 + 56);
  *(v2 + 8) = *(a1 + 8);
  *(v2 + 24) = *(a1 + 24);
  result = *(a1 + 40);
  *(v2 + 40) = result;
  *(v2 + 15) = 0;
  return result;
}

__n128 sub_29ABA4284(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20744D0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 60) = 0;
  return result;
}

void sub_29ABA42D0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer(34963, *(*(a1 + 16) + 64));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer(36671, *(*(a1 + 32) + 64));
  v2 = *(a1 + 8);
  if (v2 == 4)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glPatchParameteri(36466, *(a1 + 12));
    v2 = *(a1 + 8);
  }

  v3 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glMultiDrawElementsIndirect;
  PrimitiveType = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetPrimitiveType(v2);
  (v3)(PrimitiveType, 5125, *(a1 + 48), *(a1 + 52), *(a1 + 56));
  sub_29A008E78(__p, "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::DrawIndexedIndirect(HgiPrimitiveType, uint32_t, const HgiBufferHandle &, const HgiBufferHandle &, uint32_t, uint32_t, uint32_t)::(anonymous class)::operator()() const");
  pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(__p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29ABA4398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABA43B4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2074530))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_29ABA4408(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A2074550;
  result[1] = v3;
  return result;
}

uint64_t sub_29ABA4450(uint64_t result, void *a2)
{
  *a2 = &unk_2A2074550;
  a2[1] = *(result + 8);
  return result;
}

void sub_29ABA4480(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDispatchCompute(*(a1 + 8), *(a1 + 12), 1);
  sub_29A008E78(__p, "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::Dispatch(int, int)::(anonymous class)::operator()() const");
  pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(__p);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29ABA44E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABA4504(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20745B0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_29ABA4550(void *a1)
{
  *a1 = &unk_2A20745D0;
  v2 = a1[18];
  if (v2)
  {
    a1[19] = v2;
    operator delete(v2);
  }

  v3 = a1[15];
  if (v3)
  {
    a1[16] = v3;
    operator delete(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    a1[3] = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_29ABA45C0(void *__p)
{
  *__p = &unk_2A20745D0;
  v2 = __p[18];
  if (v2)
  {
    __p[19] = v2;
    operator delete(v2);
  }

  v3 = __p[15];
  if (v3)
  {
    __p[16] = v3;
    operator delete(v3);
  }

  v4 = __p[2];
  if (v4)
  {
    __p[3] = v4;
    operator delete(v4);
  }

  operator delete(__p);
}

void sub_29ABA4640(uint64_t a1)
{
  v2 = operator new(0xC8uLL);
  *v2 = &unk_2A20745D0;
  sub_29ABA4B34(v2 + 1, (a1 + 8));
}

void sub_29ABA46DC(void *a1)
{
  sub_29ABA4C2C(a1 + 1);

  operator delete(a1);
}

void sub_29ABA4718(void *a1)
{
  v2 = *MEMORY[0x29EDCA608];
  if (a1[2] == a1[3] && !a1[21])
  {
    sub_29B2C3B18(__p);
  }

  pxrInternal__aapl__pxrReserved__::HgiGLDevice::AcquireFramebuffer();
}

void sub_29ABA4AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABA4AE8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2074630))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29ABA4B34(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc*,pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc*>();
}

void sub_29ABA4BF8(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 120) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABA4C2C(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    a1[18] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;

    operator delete(v4);
  }
}

__n128 sub_29ABA4C9C(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A2074650;
  *(v2 + 3) = *(a1 + 24);
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 7) = 0;
  *(v2 + 25) = 0;
  return result;
}

__n128 sub_29ABA4CF8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2074650;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 25) = 0;
  *(a2 + 28) = 0;
  return result;
}

void sub_29ABA4D38(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *(v1 + 64);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearNamedBufferData(v2, 33330, 36244, 5121, a1 + 24);
      sub_29A008E78(__p, "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::FillBuffer(const HgiBufferHandle &, uint8_t)::(anonymous class)::operator()() const");
      pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(__p);
      if (v4 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_29ABA4DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABA4DD4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20746B0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29ABA4E28(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20746D0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29ABA4E74(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20746D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_29ABA4EA4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *(v1 + 104);
    if (v2)
    {
      Descriptor = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*(a1 + 8));
      if (*(Descriptor + 23) >= 0)
      {
        v6 = Descriptor;
      }

      else
      {
        v6 = *Descriptor;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Generating mipmaps (id %zu: %s)", v4, v5, v2, v6);
      v7[0] = "hgiGL/ops.cpp";
      v7[1] = "operator()";
      v8 = 895;
      v9 = "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::GenerateMipMaps(const HgiTextureHandle &)::(anonymous class)::operator()() const";
      v10 = 0;
      pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(v13, &__p, v7);
      if (v12 < 0)
      {
        operator delete(__p);
      }

      pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenerateTextureMipmap(*(v1 + 104));
      sub_29A008E78(v7, "auto pxrInternal__aapl__pxrReserved__::HgiGLOps::GenerateMipMaps(const HgiTextureHandle &)::(anonymous class)::operator()() const");
      pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(v7);
      if (SHIBYTE(v8) < 0)
      {
        operator delete(v7[0]);
      }

      pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(v13);
    }
  }
}

void sub_29ABA4F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(&a22);
  _Unwind_Resume(a1);
}

void sub_29ABA4FC0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x29ABA4FB8);
}

uint64_t sub_29ABA4FD8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2074730))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_29ABA5024(void *a1)
{
  *a1 = &unk_2A2074750;
  v2 = a1[18];
  if (v2)
  {
    a1[19] = v2;
    operator delete(v2);
  }

  v3 = a1[15];
  if (v3)
  {
    a1[16] = v3;
    operator delete(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    a1[3] = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_29ABA5094(void *__p)
{
  *__p = &unk_2A2074750;
  v2 = __p[18];
  if (v2)
  {
    __p[19] = v2;
    operator delete(v2);
  }

  v3 = __p[15];
  if (v3)
  {
    __p[16] = v3;
    operator delete(v3);
  }

  v4 = __p[2];
  if (v4)
  {
    __p[3] = v4;
    operator delete(v4);
  }

  operator delete(__p);
}

void sub_29ABA5114(uint64_t a1)
{
  v2 = operator new(0xC8uLL);
  *v2 = &unk_2A2074750;
  sub_29ABA541C(v2 + 1, (a1 + 8));
}

void sub_29ABA51B0(void *a1)
{
  sub_29ABA4C2C(a1 + 1);

  operator delete(a1);
}

uint64_t sub_29ABA53D0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20747B0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29ABA541C(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc*,pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc*>();
}

void sub_29ABA54E0(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 120) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_29ABA551C(uint64_t a1)
{
  result = operator new(0x10uLL);
  *result = &unk_2A20747D0;
  result[2] = *(a1 + 8);
  return result;
}

uint64_t sub_29ABA5568(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A20747D0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_29ABA5598(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    return pxrInternal__aapl__pxrReserved__::internal::GLApi::glMemoryBarrier(0xFFFFFFFFLL);
  }

  result = sub_29B2C3B7C(v2);
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::internal::GLApi::glMemoryBarrier(0xFFFFFFFFLL);
  }

  return result;
}

uint64_t sub_29ABA55E4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2074830))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HgiGLResourceBindings::HgiGLResourceBindings(pxrInternal__aapl__pxrReserved__::HgiGLResourceBindings *this, const pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc *a2)
{
  pxrInternal__aapl__pxrReserved__::HgiResourceBindings::HgiResourceBindings(this, a2);
}

{
  pxrInternal__aapl__pxrReserved__::HgiResourceBindings::HgiResourceBindings(this, a2);
}

void pxrInternal__aapl__pxrReserved__::HgiGLResourceBindings::~HgiGLResourceBindings(void **this)
{
  pxrInternal__aapl__pxrReserved__::HgiResourceBindings::~HgiResourceBindings(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HgiGLResourceBindings::BindResources(pxrInternal__aapl__pxrReserved__::HgiGLResourceBindings *this)
{
  v2 = (*(this + 8) - *(this + 7)) >> 6;
  LODWORD(__p) = 0;
  sub_29A0EFF3C(&v34, v2, &__p);
  LODWORD(__p) = 0;
  sub_29A0EFF3C(&v32, (v35 - v34) >> 2, &__p);
  LODWORD(__p) = 0;
  sub_29A0EFF3C(&v30, (v35 - v34) >> 2, &__p);
  v3 = *(this + 7);
  v4 = *(this + 8);
  if (v3 != v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      if (*(v3 + 8) - *v3 == 16 || (__p = "hgiGL/resourceBindings.cpp", v26 = "BindResources", v27 = 41, v28 = "void pxrInternal__aapl__pxrReserved__::HgiGLResourceBindings::BindResources()", v29 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "texDesc.textures.size() == 1", 0) & 1) != 0))
      {
        v8 = *(v3 + 52);
        if (v8 >= (v35 - v34) >> 2)
        {
          v9 = (v8 + 1);
          LODWORD(__p) = 0;
          sub_29A0A766C(&v34, v9, &__p);
          LODWORD(__p) = 0;
          sub_29A0A766C(&v32, v9, &__p);
          LODWORD(__p) = 0;
          sub_29A0A766C(&v30, v9, &__p);
        }

        v10 = *(v3 + 48);
        if ((v10 - 1) >= 2)
        {
          if (v10 == 3)
          {
            *(v30 + *(v3 + 52)) = *(**v3 + 104);
            v7 = 1;
          }

          else
          {
            __p = "hgiGL/resourceBindings.cpp";
            v26 = "BindResources";
            v27 = 64;
            v28 = "void pxrInternal__aapl__pxrReserved__::HgiGLResourceBindings::BindResources()";
            v29 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Unsupported texture bind resource type");
          }
        }

        else
        {
          *(v34 + *(v3 + 52)) = *(**v3 + 104);
          v5 = 1;
        }

        v11 = *(v3 + 24);
        if (v11 != *(v3 + 32))
        {
          SamplerId = pxrInternal__aapl__pxrReserved__::HgiGLSampler::GetSamplerId(*v11);
          *(v32 + *(v3 + 52)) = SamplerId;
          v6 = 1;
        }
      }

      v3 += 64;
    }

    while (v3 != v4);
    if (v5)
    {
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTextures(0, (v35 - v34) >> 2);
    }

    if (v6)
    {
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindSamplers(0, (v33 - v32) >> 2, v32);
    }

    if (v7)
    {
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindImageTextures(0, (v31 - v30) >> 2);
    }
  }

  v13 = *(this + 4);
  for (i = *(this + 5); v13 != i; v13 += 88)
  {
    if (*(v13 + 8) - *v13 != 16)
    {
      __p = "hgiGL/resourceBindings.cpp";
      v26 = "BindResources";
      v27 = 96;
      v28 = "void pxrInternal__aapl__pxrReserved__::HgiGLResourceBindings::BindResources()";
      v29 = 0;
      if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "bufDesc.buffers.size() == 1", 0) & 1) == 0)
      {
        continue;
      }
    }

    v15 = (*(v13 + 8) - *v13) >> 4;
    v16 = *(v13 + 24);
    if (v15 == (*(v13 + 32) - v16) >> 2)
    {
      v17 = *(v13 + 48);
      v18 = *(v13 + 56);
      if (v17 == v18)
      {
        v19 = 0;
      }

      else
      {
        if (v15 != v18 - v17)
        {
          __p = "hgiGL/resourceBindings.cpp";
          v26 = "BindResources";
          v27 = 105;
          v28 = "void pxrInternal__aapl__pxrReserved__::HgiGLResourceBindings::BindResources()";
          v29 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Invalid number of buffer sizes");
          continue;
        }

        v19 = *v17;
      }

      if (*v16)
      {
        v20 = v19 == 0;
      }

      else
      {
        v20 = 0;
      }

      if (v20)
      {
        __p = "hgiGL/resourceBindings.cpp";
        v26 = "BindResources";
        v27 = 119;
        v28 = "void pxrInternal__aapl__pxrReserved__::HgiGLResourceBindings::BindResources()";
        v29 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Invalid size for buffer with offset");
      }

      else
      {
        v21 = *(**v13 + 64);
        v23 = *(v13 + 72);
        v22 = *(v13 + 76);
        if (v23 == 4)
        {
          v24 = 35345;
          if (!v19)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v23 != 5)
          {
            __p = "hgiGL/resourceBindings.cpp";
            v26 = "BindResources";
            v27 = 129;
            v28 = "void pxrInternal__aapl__pxrReserved__::HgiGLResourceBindings::BindResources()";
            v29 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Unknown buffer type to bind");
            continue;
          }

          v24 = 37074;
          if (!v19)
          {
LABEL_42:
            pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBufferBase(v24, v22, v21);
            continue;
          }
        }

        pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBufferRange(v24, v22, v21);
      }
    }

    else
    {
      __p = "hgiGL/resourceBindings.cpp";
      v26 = "BindResources";
      v27 = 99;
      v28 = "void pxrInternal__aapl__pxrReserved__::HgiGLResourceBindings::BindResources()";
      v29 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Invalid number of buffer offsets");
    }
  }

  sub_29A008E78(&__p, "void pxrInternal__aapl__pxrReserved__::HgiGLResourceBindings::BindResources()");
  pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(&__p);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_29ABA5B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLSampler::HgiGLSampler(uint64_t a1, uint64_t a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::HgiSampler::HgiSampler(a1, a2);
  *v4 = &unk_2A2074888;
  v4[9] = 0;
  v5 = (v4 + 9);
  v4[10] = 0;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateSamplers(1, v4 + 9);
  if ((*(a1 + 31) & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 31))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*(a1 + 16))
  {
LABEL_5:
    pxrInternal__aapl__pxrReserved__::HgiGLObjectLabel(33510, *v5, (a1 + 8));
  }

LABEL_6:
  v6 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameteri;
  v7 = *v5;
  SamplerAddressMode = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetSamplerAddressMode(*(a2 + 36));
  v6(v7, 10242, SamplerAddressMode);
  v9 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameteri;
  v10 = *v5;
  v11 = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetSamplerAddressMode(*(a2 + 40));
  v9(v10, 10243, v11);
  v12 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameteri;
  v13 = *v5;
  v14 = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetSamplerAddressMode(*(a2 + 44));
  v12(v13, 32882, v14);
  MinFilter = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetMinFilter(*(a2 + 28), *(a2 + 32));
  LODWORD(v13) = MinFilter;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameteri(*v5, 10241, MinFilter);
  MagFilter = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetMagFilter(*(a2 + 24));
  v17 = MagFilter;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameteri(*v5, 10240, MagFilter);
  v18 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameterfv;
  v19 = *v5;
  BorderColor = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetBorderColor(*(a2 + 48));
  __p = __PAIR64__(v21, LODWORD(BorderColor));
  v33 = v22;
  v34 = v23;
  v18(v19, 4100, &__p);
  if ((v13 & 0xFFFFFEFF) != 0x2600 && v17 != 9728)
  {
    LODWORD(__p) = 0x40000000;
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFloatv(34047, &__p);
    v25 = *(a2 + 60);
    v26 = atomic_load(pxrInternal__aapl__pxrReserved__::HGI_MAX_ANISOTROPY);
    if (!v26)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
    }

    v24.n128_f32[0] = v25;
    if (*&__p <= v25)
    {
      v24.n128_f32[0] = *&__p;
    }

    if (v24.n128_f32[0] > *v26)
    {
      v24.n128_f32[0] = *v26;
    }

    (pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameterf)(*v5, 34046, v24);
  }

  if (*(a2 + 52))
  {
    v27 = 34894;
  }

  else
  {
    v27 = 0;
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameteri(*v5, 34892, v27);
  v28 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glSamplerParameteri;
  v29 = *v5;
  CompareFunction = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetCompareFunction(*(a2 + 56));
  v28(v29, 34893, CompareFunction);
  sub_29A008E78(&__p, "pxrInternal__aapl__pxrReserved__::HgiGLSampler::HgiGLSampler(const HgiSamplerDesc &)");
  pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(&__p);
  if (v35 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HgiGLSampler::~HgiGLSampler(pxrInternal__aapl__pxrReserved__::HgiGLSampler *this)
{
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteSamplers(1, this + 72);
  *(this + 9) = 0;
  *(this + 10) = 0;
  sub_29A008E78(__p, "virtual pxrInternal__aapl__pxrReserved__::HgiGLSampler::~HgiGLSampler()");
  pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(__p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::HgiSampler::~HgiSampler(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiGLSampler::~HgiGLSampler(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLSampler::GetBindlessHandle(uint64_t a1, uint64_t a2)
{
  v3 = (*(**a2 + 24))();
  if (!v3)
  {
    return 0;
  }

  result = *(a1 + 80);
  if (!result || *(a1 + 76) != v3)
  {
    TextureSamplerHandleARB = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTextureSamplerHandleARB(v3, *(a1 + 72));
    if (!pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsTextureHandleResidentARB())
    {
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glMakeTextureHandleResidentARB(TextureSamplerHandleARB);
    }

    *(a1 + 76) = v3;
    *(a1 + 80) = TextureSamplerHandleARB;
    sub_29A008E78(__p, "uint64_t pxrInternal__aapl__pxrReserved__::HgiGLSampler::GetBindlessHandle(const HgiTextureHandle &)");
    pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(__p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    return *(a1 + 80);
  }

  return result;
}

void sub_29ABA6094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABA6338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  v21 = *(v19 - 56);
  if (v21)
  {
    *(v19 - 48) = v21;
    operator delete(v21);
  }

  if (v17[399] < 0)
  {
    operator delete(*v18);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunction::~HgiShaderFunction(v17);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HgiGLShaderFunction::~HgiGLShaderFunction(pxrInternal__aapl__pxrReserved__::HgiGLShaderFunction *this)
{
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteShader(*(this + 100));
  *(this + 100) = 0;
  sub_29A008E78(__p, "virtual pxrInternal__aapl__pxrReserved__::HgiGLShaderFunction::~HgiGLShaderFunction()");
  pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(__p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(this + 399) < 0)
  {
    operator delete(*(this + 47));
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunction::~HgiShaderFunction(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiGLShaderFunction::~HgiGLShaderFunction(this);

  operator delete(v1);
}

BOOL pxrInternal__aapl__pxrReserved__::HgiGLShaderFunction::IsValid(pxrInternal__aapl__pxrReserved__::HgiGLShaderFunction *this)
{
  if (!*(this + 100))
  {
    return 0;
  }

  v1 = *(this + 399);
  if (v1 < 0)
  {
    v1 = *(this + 48);
  }

  return v1 == 0;
}

pxrInternal__aapl__pxrReserved__::HgiGLShaderProgram *pxrInternal__aapl__pxrReserved__::HgiGLShaderProgram::HgiGLShaderProgram(pxrInternal__aapl__pxrReserved__::HgiGLShaderProgram *this, pxrInternal__aapl__pxrReserved__::HgiGLShaderFunction ***a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::HgiShaderProgram::HgiShaderProgram(this, a2);
  *(v4 + 7) = 0;
  v5 = (v4 + 56);
  *v4 = &unk_2A2074920;
  *(v4 + 11) = 0;
  *(v4 + 24) = 0;
  v6 = v4 + 96;
  *(v4 + 13) = 0;
  *(v4 + 8) = 0;
  *(v4 + 9) = 0;
  *(v4 + 20) = 0;
  Program = pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateProgram();
  *(this + 20) = Program;
  if ((*(this + 31) & 0x8000000000000000) != 0)
  {
    if (!*(this + 2))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*(this + 31))
  {
LABEL_5:
    pxrInternal__aapl__pxrReserved__::HgiGLObjectLabel(33506, Program, this + 1);
  }

LABEL_6:
  v8 = a2[3];
  for (i = a2[4]; v8 != i; v8 += 2)
  {
    ShaderId = pxrInternal__aapl__pxrReserved__::HgiGLShaderFunction::GetShaderId(*v8);
    if (!ShaderId)
    {
      __p[0] = "hgiGL/shaderProgram.cpp";
      __p[1] = "HgiGLShaderProgram";
      v18 = 35;
      v19 = "pxrInternal__aapl__pxrReserved__::HgiGLShaderProgram::HgiGLShaderProgram(const HgiShaderProgramDesc &)";
      v20 = 0;
      v13 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Invalid shader provided to program", v10, v11);
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(__p, "id>0", v13);
    }

    pxrInternal__aapl__pxrReserved__::internal::GLApi::glAttachShader(*(this + 20), ShaderId);
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLinkProgram(*(this + 20));
  v16 = 0;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramiv(*(this + 20), 35714, &v16);
  if (v16 == 1)
  {
    LODWORD(__p[0]) = 0;
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramiv(*(this + 20), 34625, __p);
    *(this + 11) = SLODWORD(__p[0]);
  }

  else
  {
    LODWORD(__p[0]) = 0;
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramiv(*(this + 20), 35716, __p);
    std::string::resize(v5, SLODWORD(__p[0]) + 1, 0);
    v14 = v5;
    if (*(this + 79) < 0)
    {
      v14 = v5->__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramInfoLog(*(this + 20), LODWORD(__p[0]), 0, v14);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteProgram(*(this + 20));
    *(this + 20) = 0;
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateBuffers(1, v6);
  sub_29A008E78(__p, "pxrInternal__aapl__pxrReserved__::HgiGLShaderProgram::HgiGLShaderProgram(const HgiShaderProgramDesc &)");
  pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(__p);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

void sub_29ABA6728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15[79] < 0)
  {
    operator delete(*v16);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderProgram::~HgiShaderProgram(v15);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HgiGLShaderProgram::~HgiGLShaderProgram(pxrInternal__aapl__pxrReserved__::HgiGLShaderProgram *this)
{
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteProgram(*(this + 20));
  *(this + 20) = 0;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteBuffers(1, this + 96);
  *(this + 24) = 0;
  sub_29A008E78(__p, "virtual pxrInternal__aapl__pxrReserved__::HgiGLShaderProgram::~HgiGLShaderProgram()");
  pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(__p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderProgram::~HgiShaderProgram(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiGLShaderProgram::~HgiGLShaderProgram(this);

  operator delete(v1);
}