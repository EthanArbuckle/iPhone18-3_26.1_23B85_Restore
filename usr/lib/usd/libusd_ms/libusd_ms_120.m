void sub_29AB6B6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if ((a38 & 7) != 0)
  {
    atomic_fetch_add_explicit((a38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29AB6B904(&a16);
  a16 = &a26;
  sub_29A1D0D38(&a16);
  a16 = &a29;
  sub_29A1D0D38(&a16);
  a16 = &a32;
  sub_29A1D0D38(&a16);
  _Unwind_Resume(a1);
}

void sub_29AB6B850(uint64_t *a1@<X0>, void *a2@<X8>)
{
  memset(v2, 0, sizeof(v2));
  sub_29AB6B9B8(a1, v2, a2);
  v3 = v2;
  sub_29A1D0D38(&v3);
}

void sub_29AB6B894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A1D0D38(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_29AB6B8B0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AB6C588(a1, a2);
  }

  else
  {
    sub_29AB6C6B8(*(a1 + 8), a2);
    result = v3 + 80;
    *(a1 + 8) = v3 + 80;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29AB6B904(uint64_t a1)
{
  v8 = (a1 + 56);
  sub_29AB6C500(&v8);
  v2 = *(a1 + 48);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 40);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 32);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 24);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(a1 + 16);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void *sub_29AB6B9B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (sub_29A1D0DBC(a1))
  {
    v6 = a1[1];
    if ((v6 & 4) != 0)
    {
      a2 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
    }

    else
    {
      a2 = *a1;
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = (v8 - *a2) >> 4;

  return sub_29A1D128C(a3, v7, v8, v9);
}

pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens_StaticTokenType *sub_29AB6BA3C(atomic_ullong *a1)
{
  result = sub_29AB6BA84();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens_StaticTokenType::~HioGlslfxResourceLayoutTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens_StaticTokenType *sub_29AB6BA84()
{
  v0 = operator new(0xA8uLL);
  pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens_StaticTokenType::HioGlslfxResourceLayoutTokens_StaticTokenType(v0);
  return v0;
}

double sub_29AB6BAC8(uint64_t a1, int a2, int a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = -1;
  v7 = *a4;
  *(a1 + 16) = *a4;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *a5;
  *(a1 + 24) = *a5;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *a7;
  *(a1 + 32) = *a7;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 32) &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *a6;
  *(a1 + 40) = *a6;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 40) &= 0xFFFFFFFFFFFFFFF8;
  }

  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return result;
}

void sub_29AB6BB90(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
  if (!v4)
  {
    v4 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
  }

  if ((*v4 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v4 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
  }

  sub_29AB6BC3C(a1, EmptyString, &__p);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a2);
  if (v7 < 0)
  {
    operator delete(__p);
  }
}

void sub_29AB6BC20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **sub_29AB6BC3C@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_29A1EFC10(a1);
  if (result)
  {
    v7 = *(a1 + 1);
    if ((v7 & 4) != 0)
    {
      result = (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      a2 = result;
    }

    else
    {
      a2 = *a1;
    }
  }

  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
    v10 = a2[1];

    return sub_29A008D14(a3, v9, v10);
  }

  else
  {
    v8 = *a2;
    *(a3 + 16) = a2[2];
    *a3 = v8;
  }

  return result;
}

void sub_29AB6BCD8(void *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 4;
        sub_29AB6BD44(a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_29AB6BD44(uint64_t a1, void *a2)
{
  v2 = a2[3];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = a2[2];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = a2[1];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AB6BDA8(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      sub_29AB6B850(v2, v17);
      v5 = (v17[1] - v17[0]) >> 4;
      if ((v5 - 2) < 3)
      {
        sub_29AB6BB90(v17[0], &v18);
        sub_29AB6BB90((v17[0] + 16), &v16);
        v6 = *(a2 + 8);
        if (v6 >= *(a2 + 16))
        {
          v7 = sub_29AB6C114(a2, &v18, &v16);
        }

        else
        {
          sub_29AB6C230(a2, *(a2 + 8), &v18, &v16);
          v7 = v6 + 32;
        }

        *(a2 + 8) = v7;
        if ((v16 & 7) != 0)
        {
          atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v18 & 7) != 0)
        {
          atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v5 == 4)
        {
          sub_29AB6BB90((v17[0] + 32), &v18);
          v13 = (*(a2 + 8) - 16);
          if (&v18 == v13)
          {
            if ((v18 & 7) != 0)
            {
              atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          else
          {
            if ((*v13 & 7) != 0)
            {
              atomic_fetch_add_explicit((*v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            *v13 = v18;
          }

          sub_29AB6BB90((v17[0] + 48), &v18);
          v14 = (*(a2 + 8) - 8);
          if (&v18 != v14)
          {
            if ((*v14 & 7) != 0)
            {
              atomic_fetch_add_explicit((*v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            *v14 = v18;
            goto LABEL_38;
          }

          goto LABEL_36;
        }

        if (v5 == 3)
        {
          sub_29AB6BB90((v17[0] + 32), &v18);
          v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
          if (!v8)
          {
            v8 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
          }

          if ((*(v8 + 13) ^ v18) < 8)
          {
            goto LABEL_24;
          }

          v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
          if (!v9)
          {
            v9 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
          }

          if ((*(v9 + 14) ^ v18) < 8)
          {
            goto LABEL_24;
          }

          v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
          if (!v10)
          {
            v10 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
          }

          if ((*(v10 + 16) ^ v18) < 8)
          {
            goto LABEL_24;
          }

          v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
          if (!v11)
          {
            v11 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
          }

          if ((*(v11 + 17) ^ v18) >= 8)
          {
            v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
            if (!v15)
            {
              v15 = sub_29AB6BA3C(&pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayoutTokens);
            }

            v12 = -16;
            if ((*(v15 + 15) ^ v18) < 8)
            {
              v12 = -8;
            }
          }

          else
          {
LABEL_24:
            v12 = -8;
          }

          sub_29A166F2C((*(a2 + 8) + v12), &v18);
LABEL_36:
          if ((v18 & 7) != 0)
          {
            atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }
      }

LABEL_38:
      v18 = v17;
      sub_29A1D0D38(&v18);
      v2 += 2;
    }

    while (v2 != v3);
  }
}

void sub_29AB6C088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  a14 = &a11;
  sub_29A1D0D38(&a14);
  sub_29AB6C500(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_29AB6C114(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_29A00C9A4();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v20 = a1;
  if (v9)
  {
    v10 = sub_29A10CB10(a1, v9);
  }

  else
  {
    v10 = 0;
  }

  v17 = v10;
  v18 = &v10[32 * v3];
  *(&v19 + 1) = &v10[32 * v9];
  sub_29AB6C230(a1, v18, a2, a3);
  *&v19 = v18 + 4;
  v11 = *(a1 + 8);
  v12 = (v18 + *a1 - v11);
  sub_29AB6C328(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29AB6C484(&v17);
  return v16;
}

void sub_29AB6C21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB6C484(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AB6C230(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = 0;
  result = sub_29AB6C29C(a2, a3, a4, &v5);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t *sub_29AB6C29C(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  *result = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *a3;
  result[1] = *a3;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[1] &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *a4;
  result[2] = *a4;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[2] &= 0xFFFFFFFFFFFFFFF8;
  }

  result[3] = 0;
  return result;
}

uint64_t sub_29AB6C328(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      *v7 = 0;
      a4[1] = v7[1];
      v7[1] = 0;
      a4[2] = v7[2];
      v7[2] = 0;
      a4[3] = v7[3];
      v7[3] = 0;
      v7 += 4;
      a4 += 4;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      sub_29AB6BD44(a1, v5);
      v5 += 4;
    }
  }

  return sub_29AB6C3F8(v9);
}

uint64_t sub_29AB6C3F8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AB6C430(a1);
  }

  return a1;
}

void sub_29AB6C430(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 4;
      sub_29AB6BD44(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29AB6C484(void **a1)
{
  sub_29AB6C4B8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29AB6C4B8(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 32;
    sub_29AB6BD44(v4, (i - 32));
  }
}

void sub_29AB6C500(void ***a1)
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
        v4 -= 4;
        sub_29AB6BD44(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29AB6C588(uint64_t a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_29A00C9A4();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A09AEA8(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[10 * v2];
  *(&v16 + 1) = &v7[10 * v6];
  sub_29AB6C6B8(v15, a2);
  *&v16 = v15 + 10;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  sub_29AB6CA10(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29AB6CC70(&v14);
  return v13;
}

void sub_29AB6C6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB6CC70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AB6C6B8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v3;
  v4 = a2[2];
  *(a1 + 16) = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = a2[3];
  *(a1 + 24) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = a2[4];
  *(a1 + 32) = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 32) &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = a2[5];
  *(a1 + 40) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 40) &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = a2[6];
  *(a1 + 48) = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 48) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_29AB6C840((a1 + 56), a2[7], a2[8], (a2[8] - a2[7]) >> 5);
  return a1;
}

void sub_29AB6C808(_Unwind_Exception *a1)
{
  v7 = *(v2 + 48);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29B2C2210(v5, v4, v3, v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AB6C840(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A15A71C(result, a4);
    result = sub_29AB6C8C8(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AB6C8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AB6C500(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AB6C8C8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29AB6C95C(a1, v4, v6);
      v6 += 4;
      v4 = v12 + 4;
      v12 += 4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29AB6C3F8(v9);
  return v4;
}

void sub_29AB6C95C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  *a2 = *a3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = a3[1];
  a2[1] = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    a2[1] &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = a3[2];
  a2[2] = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    a2[2] &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = a3[3];
  a2[3] = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    a2[3] &= 0xFFFFFFFFFFFFFFF8;
  }
}

uint64_t sub_29AB6CA10(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_29AB6CAC4(a1, a4, v7);
      v7 += 10;
      a4 = v12 + 80;
      v12 += 80;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29AB6CB34(a1, v5);
      v5 += 80;
    }
  }

  return sub_29AB6CBE4(v9);
}

__n128 sub_29AB6CAC4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *(a2 + 8) = *(a3 + 2);
  *a2 = v3;
  *(a2 + 16) = a3[2];
  a3[2] = 0;
  *(a2 + 24) = a3[3];
  a3[3] = 0;
  *(a2 + 32) = a3[4];
  a3[4] = 0;
  *(a2 + 40) = a3[5];
  a3[5] = 0;
  *(a2 + 48) = a3[6];
  a3[6] = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  result = *(a3 + 7);
  *(a2 + 56) = result;
  *(a2 + 72) = a3[9];
  a3[7] = 0;
  a3[8] = 0;
  a3[9] = 0;
  return result;
}

void sub_29AB6CB34(uint64_t a1, uint64_t a2)
{
  v8 = (a2 + 56);
  sub_29AB6C500(&v8);
  v3 = *(a2 + 48);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a2 + 40);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a2 + 32);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(a2 + 24);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(a2 + 16);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t sub_29AB6CBE4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AB6CC1C(a1);
  }

  return a1;
}

void sub_29AB6CC1C(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 80;
      sub_29AB6CB34(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29AB6CC70(void **a1)
{
  sub_29AB6CCA4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29AB6CCA4(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 80;
    sub_29AB6CB34(v4, i - 80);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::HioImage::IsSupportedImageFile(pxrInternal__aapl__pxrReserved__::HioImageRegistry *a1)
{
  Instance = pxrInternal__aapl__pxrReserved__::HioImageRegistry::GetInstance(a1);

  return pxrInternal__aapl__pxrReserved__::HioImageRegistry::IsSupportedImageFile(Instance, a1);
}

void pxrInternal__aapl__pxrReserved__::HioImage::OpenForReading(pxrInternal__aapl__pxrReserved__::HioImageRegistry *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  Instance = pxrInternal__aapl__pxrReserved__::HioImageRegistry::GetInstance(a1);
  pxrInternal__aapl__pxrReserved__::HioImageRegistry::_ConstructImage(Instance, a1, &v13);
  if (v13 && ((*(*v13 + 112))(v13, a1, a2, a3, a4, a5) & 1) != 0)
  {
    *a6 = v13;
  }

  else
  {
    *a6 = 0;
    *(a6 + 8) = 0;
    if (*(&v13 + 1))
    {
      sub_29A014BEC(*(&v13 + 1));
    }
  }
}

void sub_29AB6CE10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HioImage::OpenForWriting(pxrInternal__aapl__pxrReserved__::HioImageRegistry *a1@<X0>, uint64_t a2@<X8>)
{
  Instance = pxrInternal__aapl__pxrReserved__::HioImageRegistry::GetInstance(a1);
  pxrInternal__aapl__pxrReserved__::HioImageRegistry::_ConstructImage(Instance, a1, &v5);
  if (v5 && ((*(*v5 + 120))(v5, a1) & 1) != 0)
  {
    *a2 = v5;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    if (*(&v5 + 1))
    {
      sub_29A014BEC(*(&v5 + 1));
    }
  }
}

void sub_29AB6CEB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HioImageRegistry>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HioImageRegistry>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HioImageRegistry>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HioImageRegistry>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B6C54D2 & 0x7FFFFFFFFFFFFFFFLL), &v11);
  v2 = std::string::insert(&v11, 0, "Create Singleton ");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v15 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_29A0EC164(&v12, "Tf", "TfSingleton::_CreateInstance", __p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::Tf_SingletonPyGILDropper(&v11);
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HioImageRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::HioImageRegistry*> &)::isInitializing, 1u))
  {
    while (!atomic_load(a1))
    {
      sched_yield();
    }
  }

  else
  {
    if (!atomic_load(a1))
    {
      v8 = operator new(8uLL);
      pxrInternal__aapl__pxrReserved__::HioImageRegistry::HioImageRegistry(v8);
      v10 = atomic_load(a1);
      if (v10)
      {
        if (v8 != v10)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v15 = 86;
          v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HioImageRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::HioImageRegistry]";
          v17 = 0;
          v18 = 4;
          pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(__p, "race detected setting singleton instance", v9);
        }
      }

      else if (atomic_exchange(a1, v8))
      {
        __p[0] = "tf/instantiateSingleton.h";
        __p[1] = "_CreateInstance";
        v15 = 90;
        v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HioImageRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::HioImageRegistry]";
        v17 = 0;
        v18 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v9, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HioImageRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::HioImageRegistry*> &)::isInitializing);
  }

  v6 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v11);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return v6;
}

void sub_29AB6D0B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HioImageRegistry>::SetInstanceConstructed(unint64_t result, uint64_t a2, char *a3)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HioImageRegistry>::_instance, result))
  {
    v3[0] = "tf/instantiateSingleton.h";
    v3[1] = "SetInstanceConstructed";
    v3[2] = 54;
    v3[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HioImageRegistry>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::HioImageRegistry]";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HioImageRegistry>::DeleteInstance()
{
  for (i = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HioImageRegistry>::_instance); i; i = v1)
  {
    v1 = i;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HioImageRegistry>::_instance, &v1, 0);
    if (v1 == i)
    {
      sub_29A1601D8(i, 0);

      operator delete(i);
      return;
    }

    sched_yield();
  }
}

void sub_29AB6D238()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HIO_IMAGE_PLUGIN_RESTRICTION))
  {
    sub_29B2C2274();
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::HioImageRegistry::GetInstance(pxrInternal__aapl__pxrReserved__::HioImageRegistry *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HioImageRegistry>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HioImageRegistry>::_CreateInstance();
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HioImageRegistry *pxrInternal__aapl__pxrReserved__::HioImageRegistry::HioImageRegistry(pxrInternal__aapl__pxrReserved__::HioImageRegistry *this)
{
  v2 = operator new(0x28uLL);
  v2[4] = 0;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 8) = 1065353216;
  *this = v2;
  sub_29A008E78(__p, "imageTypes");
  v5 = atomic_load(pxrInternal__aapl__pxrReserved__::HIO_IMAGE_PLUGIN_RESTRICTION);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<std::string>();
  }

  sub_29AB5F40C(v2, v4, __p, 1, v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::HioImageRegistry::_ConstructImage(pxrInternal__aapl__pxrReserved__ *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(a1);
  pxrInternal__aapl__pxrReserved__::ArResolver::GetExtension(Resolver);
  pxrInternal__aapl__pxrReserved__::TfStringToLowerAscii(v22, __p);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v24);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  v21 = sub_29AB5F250(*a1, &v24);
  v7 = pxrInternal__aapl__pxrReserved__::TfType::TfType(__p);
  if (v21 == __p[0])
  {
    if (sub_29AB5FADC(1))
    {
      v10 = v24 & 0xFFFFFFFFFFFFFFF8;
      if ((v24 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v11 = (v10 + 16);
        if (*(v10 + 39) < 0)
        {
          v11 = *v11;
        }
      }

      else
      {
        v11 = "";
      }

      if (*(a2 + 23) >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[PluginLoad] Unknown image type '%s' for file '%s'\n", v8, v9, v11, v12);
    }

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(v7);
    pxrInternal__aapl__pxrReserved__::PlugRegistry::GetPluginForType(v21, v22);
    v13 = sub_29B290C20(v22);
    if (v14 & 1 | v13)
    {
      sub_29A17F138(v22);
    }

    __p[0] = "hio/imageRegistry.cpp";
    __p[1] = "_ConstructImage";
    v18 = 76;
    v19 = "HioImageSharedPtr pxrInternal__aapl__pxrReserved__::HioImageRegistry::_ConstructImage(const std::string &)";
    v20 = 0;
    TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v21);
    if (*(TypeName + 23) >= 0)
    {
      v16 = TypeName;
    }

    else
    {
      v16 = *TypeName;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "[PluginLoad] PlugPlugin could not be loaded for TfType '%s'\n", v16);
    *a3 = 0;
    a3[1] = 0;
    sub_29B290170(v22);
  }

  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AB6D73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  v22 = *(v20 - 56);
  if (v22 && atomic_fetch_add_explicit(v22 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = *(v20 - 40);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AB6D814(pxrInternal__aapl__pxrReserved__::TfType *a1)
{
  result = pxrInternal__aapl__pxrReserved__::TfType::_GetFactory(a1);
  if (result)
  {
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::HioImageRegistry::IsSupportedImageFile(pxrInternal__aapl__pxrReserved__ *a1, uint64_t *a2)
{
  pxrInternal__aapl__pxrReserved__::HioImageRegistry::_ConstructImage(a1, a2, &v4);
  v2 = v4;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return v2 != 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::HioGetFormat(int a1, int a2, unsigned __int8 a3)
{
  if (a2 >= 10)
  {
    v5 = "hio/types.cpp";
    v6 = "HioGetFormat";
    v7 = 66;
    v8 = "HioFormat pxrInternal__aapl__pxrReserved__::HioGetFormat(uint32_t, HioType, BOOL)";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v5, 1, "Invalid type");
    return 0xFFFFFFFFLL;
  }

  if ((a1 - 5) <= 0xFFFFFFFB)
  {
    v5 = "hio/types.cpp";
    v6 = "HioGetFormat";
    v7 = 71;
    v8 = "HioFormat pxrInternal__aapl__pxrReserved__::HioGetFormat(uint32_t, HioType, BOOL)";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v5, 1, "Invalid channel count");
    return 0xFFFFFFFFLL;
  }

  if (((a2 == 0) & a3) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2;
  }

  return dword_29B6C5510[4 * v4 + (a1 - 1)];
}

uint64_t pxrInternal__aapl__pxrReserved__::HioGetHioType(int a1)
{
  v1 = a1 + 1;
  result = 0;
  switch(v1)
  {
    case 0:
    case 47:
      v3 = "hio/types.cpp";
      v4 = "HioGetHioType";
      v5 = 155;
      v6 = "HioType pxrInternal__aapl__pxrReserved__::HioGetHioType(HioFormat)";
      v7 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v3, 1, "Unsupported HioFormat");
      goto LABEL_12;
    case 1:
    case 2:
    case 3:
    case 4:
    case 37:
    case 38:
    case 39:
    case 40:
    case 43:
    case 44:
    case 45:
    case 46:
      return result;
    case 5:
    case 6:
    case 7:
    case 8:
      result = 2;
      break;
    case 9:
    case 10:
    case 11:
    case 12:
      result = 7;
      break;
    case 13:
    case 14:
    case 15:
    case 16:
    case 41:
    case 42:
      result = 8;
      break;
    case 17:
    case 18:
    case 19:
    case 20:
      result = 9;
      break;
    case 21:
    case 22:
    case 23:
    case 24:
      result = 3;
      break;
    case 25:
    case 26:
    case 27:
    case 28:
      result = 4;
      break;
    case 29:
    case 30:
    case 31:
    case 32:
      result = 5;
      break;
    case 33:
    case 34:
    case 35:
    case 36:
      result = 6;
      break;
    default:
      v3 = "hio/types.cpp";
      v4 = "HioGetHioType";
      v5 = 158;
      v6 = "HioType pxrInternal__aapl__pxrReserved__::HioGetHioType(HioFormat)";
      v7 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v3, 1, "Missing Format");
LABEL_12:
      result = 0;
      break;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HioGetComponentCount(int a1)
{
  v1 = 1;
  switch(a1)
  {
    case -1:
    case 46:
      v3 = "hio/types.cpp";
      v4 = "HioGetComponentCount";
      v5 = 218;
      v6 = "int pxrInternal__aapl__pxrReserved__::HioGetComponentCount(HioFormat)";
      v7 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v3, 1, "Unsupported format");
      break;
    case 0:
    case 4:
    case 8:
    case 12:
    case 16:
    case 20:
    case 24:
    case 28:
    case 32:
    case 36:
      return v1;
    case 1:
    case 5:
    case 9:
    case 13:
    case 17:
    case 21:
    case 25:
    case 29:
    case 33:
    case 37:
      v1 = 2;
      break;
    case 2:
    case 6:
    case 10:
    case 14:
    case 18:
    case 22:
    case 26:
    case 30:
    case 34:
    case 38:
    case 40:
    case 41:
      v1 = 3;
      break;
    case 3:
    case 7:
    case 11:
    case 15:
    case 19:
    case 23:
    case 27:
    case 31:
    case 35:
    case 39:
    case 42:
    case 43:
    case 44:
    case 45:
      v1 = 4;
      break;
    default:
      v3 = "hio/types.cpp";
      v4 = "HioGetComponentCount";
      v5 = 221;
      v6 = "int pxrInternal__aapl__pxrReserved__::HioGetComponentCount(HioFormat)";
      v7 = 0;
      v1 = 1;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v3, 1, "Missing Format");
      break;
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HioGetDataSizeOfType(unsigned int a1)
{
  if (a1 < 0xB)
  {
    return qword_29B6C55B0[a1];
  }

  v3[0] = "hio/types.cpp";
  v3[1] = "HioGetDataSizeOfType";
  v3[2] = 246;
  v3[3] = "size_t pxrInternal__aapl__pxrReserved__::HioGetDataSizeOfType(HioType)";
  v4 = 0;
  v1 = 1;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Missing Format");
  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HioGetDataSizeOfType(int a1)
{
  HioType = pxrInternal__aapl__pxrReserved__::HioGetHioType(a1);

  return pxrInternal__aapl__pxrReserved__::HioGetDataSizeOfType(HioType);
}

uint64_t pxrInternal__aapl__pxrReserved__::HioGetDataSizeOfFormat(int a1, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = 1;
  }

  if (a3)
  {
    *a3 = 1;
  }

  v3 = a1 + 1;
  result = 1;
  switch(v3)
  {
    case 0:
    case 47:
      v5 = "hio/types.cpp";
      v6 = "HioGetDataSizeOfFormat";
      v7 = 344;
      v8 = "size_t pxrInternal__aapl__pxrReserved__::HioGetDataSizeOfFormat(HioFormat, size_t *const, size_t *const)";
      v9 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v5, 1, "Unsupported format");
      goto LABEL_21;
    case 1:
    case 5:
    case 37:
      return result;
    case 2:
    case 6:
    case 9:
    case 21:
    case 25:
    case 38:
      return 2;
    case 3:
    case 7:
    case 39:
      return 3;
    case 4:
    case 8:
    case 10:
    case 13:
    case 22:
    case 26:
    case 29:
    case 33:
    case 40:
      return 4;
    case 11:
    case 23:
    case 27:
      return 6;
    case 12:
    case 14:
    case 17:
    case 24:
    case 28:
    case 30:
    case 34:
      return 8;
    case 15:
    case 31:
    case 35:
      return 12;
    case 16:
    case 18:
    case 32:
    case 36:
      goto LABEL_12;
    case 19:
      return 24;
    case 20:
      return 32;
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
      if (a2)
      {
        *a2 = 4;
      }

      if (a3)
      {
        *a3 = 4;
      }

LABEL_12:
      result = 16;
      break;
    default:
      v5 = "hio/types.cpp";
      v6 = "HioGetDataSizeOfFormat";
      v7 = 347;
      v8 = "size_t pxrInternal__aapl__pxrReserved__::HioGetDataSizeOfFormat(HioFormat, size_t *const, size_t *const)";
      v9 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v5, 1, "Missing Format");
LABEL_21:
      result = 0;
      break;
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::HioGetDataSize(int a1, int *a2)
{
  v6 = 0;
  v7 = 0;
  DataSizeOfFormat = pxrInternal__aapl__pxrReserved__::HioGetDataSizeOfFormat(a1, &v7, &v6);
  LODWORD(v4) = a2[2];
  if (v4 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v4;
  }

  return (*a2 + v7 - 1) / v7 * DataSizeOfFormat * ((a2[1] + v6 - 1) / v6) * v4;
}

void sub_29AB6E01C()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2072508, 0, "CameraUtilMatchVertically", "MatchVertically");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2072508, 1, "CameraUtilMatchHorizontally", "MatchHotizontally");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2072508, 2, "CameraUtilFit", "Fit");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2072508, 3, "CameraUtilCrop", "Crop");

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2072508, 4, "CameraUtilDontConform", "DontConform");
}

double pxrInternal__aapl__pxrReserved__::CameraUtilConformedWindow(double *a1, unsigned int a2, double a3)
{
  if (a2 == 4)
  {
    return *a1;
  }

  if (a2 >= 2)
  {
    v4 = a1[1];
    v5 = *a1 / v4;
    if (v4 == 0.0)
    {
      v5 = 1.0;
    }

    a2 = (a2 == 2) ^ (v5 <= a3);
  }

  if (a2)
  {
    return *a1;
  }

  else
  {
    return a1[1] * a3;
  }
}

{
  if (a2 == 4)
  {
    return *a1;
  }

  v5 = a1[2];
  result = *a1;
  v6 = a1[3] - a1[1];
  if (a2 >= 2)
  {
    v7 = (v5 - *a1) / v6;
    if (v6 == 0.0)
    {
      v7 = 1.0;
    }

    a2 = (a2 == 2) ^ (v7 <= a3);
  }

  if (!a2)
  {
    return (v5 + result) * 0.5 - v6 * a3 * 0.5;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::CameraUtilConformedWindow(uint64_t *a1, unsigned int a2, double a3)
{
  if (a2 != 4)
  {
    v9 = v3;
    v10 = v4;
    v5 = a1[3];
    v6 = *a1;
    v7 = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
    v8 = v5;
    pxrInternal__aapl__pxrReserved__::CameraUtilConformedWindow(&v6, a2, a3);
  }
}

double pxrInternal__aapl__pxrReserved__::CameraUtilConformedWindow@<D0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>, double result@<D0>)
{
  v4 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v4;
  v5 = *(a1 + 112);
  *(a3 + 96) = *(a1 + 96);
  *(a3 + 112) = v5;
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  v7 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v7;
  if (a2 != 4)
  {
    v8 = *(a1 + 40);
    v9 = fabs(v8);
    v10 = *a1;
    v11 = fabs(*a1);
    v12 = v9 / v11;
    if (*a1 == 0.0)
    {
      v12 = 1.0;
    }

    v13 = (a2 == 2) ^ (v12 <= result);
    if (a2 < 2)
    {
      v13 = a2;
    }

    if (v13)
    {
      v14 = -v11;
      v15 = v8 == 0.0;
      if (v8 >= 0.0)
      {
        v14 = v11;
      }

      v16 = v14 * result;
      *(a3 + 40) = v16;
      v17 = v16 / v8;
      if (!v15)
      {
        v16 = v17;
      }

      v18 = 104;
      v19 = 72;
    }

    else
    {
      if (result == 0.0)
      {
        v16 = v9;
      }

      else
      {
        v16 = v9 / result;
      }

      if (v10 < 0.0)
      {
        v16 = -v16;
      }

      *a3 = v16;
      if (v10 != 0.0)
      {
        v16 = v16 / v10;
      }

      v18 = 96;
      v19 = 64;
    }

    *(a3 + v19) = v16 * *(a3 + v19);
    result = v16 * *(a3 + v18);
    *(a3 + v18) = result;
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::GfCamera *pxrInternal__aapl__pxrReserved__::CameraUtilConformWindow(pxrInternal__aapl__pxrReserved__::GfCamera *result, unsigned int a2, double a3)
{
  if (a2 != 4)
  {
    v14[2] = v6;
    v14[3] = v5;
    v14[6] = v3;
    v14[7] = v4;
    v9 = result;
    v14[0] = pxrInternal__aapl__pxrReserved__::GfCamera::GetHorizontalAperture(result);
    v14[1] = pxrInternal__aapl__pxrReserved__::GfCamera::GetVerticalAperture(v9);
    v10 = pxrInternal__aapl__pxrReserved__::CameraUtilConformedWindow(v14, a2, a3);
    v12 = v11;
    *&v10 = v10;
    pxrInternal__aapl__pxrReserved__::GfCamera::SetHorizontalAperture(v9, *&v10);
    v13 = v12;
    return pxrInternal__aapl__pxrReserved__::GfCamera::SetVerticalAperture(v9, v13);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::CameraUtilConformWindow(uint64_t a1, unsigned int a2, double a3)
{
  if (a2 != 4)
  {
    *(a1 + 56) = pxrInternal__aapl__pxrReserved__::CameraUtilConformedWindow((a1 + 56), a2, a3);
    *(a1 + 64) = v5;
    *(a1 + 72) = v6;
    *(a1 + 80) = v7;

    pxrInternal__aapl__pxrReserved__::GfFrustum::_DirtyFrustumPlanes(a1);
  }
}

double pxrInternal__aapl__pxrReserved__::CameraUtilFraming::CameraUtilFraming(pxrInternal__aapl__pxrReserved__::CameraUtilFraming *this)
{
  result = 1.40444743e306;
  *this = xmmword_29B480F70;
  *(this + 1) = xmmword_29B4B4880;
  *(this + 8) = 1065353216;
  return result;
}

{
  result = 1.40444743e306;
  *this = xmmword_29B480F70;
  *(this + 1) = xmmword_29B4B4880;
  *(this + 8) = 1065353216;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::CameraUtilFraming::CameraUtilFraming(uint64_t result, _OWORD *a2, _OWORD *a3, float a4)
{
  *result = *a2;
  *(result + 16) = *a3;
  *(result + 32) = a4;
  return result;
}

{
  *result = *a2;
  *(result + 16) = *a3;
  *(result + 32) = a4;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::CameraUtilFraming::CameraUtilFraming(pxrInternal__aapl__pxrReserved__::CameraUtilFraming *this, const pxrInternal__aapl__pxrReserved__::GfRect2i *a2)
{
  v2 = *a2;
  v2.u64[1] = vadd_s32(*(a2 + 8), 0x100000001);
  *this = vcvtq_f32_s32(v2);
  result = *a2;
  *(this + 1) = *a2;
  *(this + 8) = 1065353216;
  return result;
}

{
  v2 = *a2;
  v2.u64[1] = vadd_s32(*(a2 + 8), 0x100000001);
  *this = vcvtq_f32_s32(v2);
  result = *a2;
  *(this + 1) = *a2;
  *(this + 8) = 1065353216;
  return result;
}

void pxrInternal__aapl__pxrReserved__::CameraUtilFraming::ApplyToProjectionMatrix(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = vsub_f32(*(a1 + 8), *a1);
  v6 = *(a1 + 16);
  v7 = vcvt_f32_s32(vadd_s32(vsub_s32(*(a1 + 24), v6), 0x100000001));
  v8 = v5.f32[0];
  v9 = v5.f32[1];
  v10 = 1.0;
  if (v5.f32[1] != 0.0)
  {
    v10 = v5.f32[0] / v5.f32[1];
  }

  v11 = vsub_f32(vadd_f32(*a1, vmul_f32(v5, 0x3F0000003F000000)), vadd_f32(vmul_f32(v7, 0x3F0000003F000000), vcvt_f32_s32(v6)));
  pxrInternal__aapl__pxrReserved__::CameraUtilConformedWindow(a2, a3, v31, v10 * *(a1 + 32));
  *v28 = v8;
  *&v28[1] = v9;
  __asm { FMOV            V0.2D, #1.0 }

  v22 = _Q0;
  v29 = _Q0;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v30, v28);
  v36 = v31[4];
  v37 = v31[5];
  v38 = v31[6];
  v39 = v31[7];
  v32 = v31[0];
  v33 = v31[1];
  v34 = v31[2];
  v35 = v31[3];
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v32, v30);
  memset(v27, 0, sizeof(v27));
  v25 = vcvtq_f64_f32(vmul_f32(v11, COERCE_FLOAT32X2_T(-2.00000048)));
  v26 = 0;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetTranslate(v27, &v25);
  v44 = v36;
  v45 = v37;
  v46 = v38;
  v47 = v39;
  v40 = v32;
  v41 = v33;
  v42 = v34;
  v43 = v35;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v40, v17);
  v23[0] = vdivq_f64(v22, vcvtq_f64_f32(v7));
  v23[1] = v22;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v24, v23);
  v18 = v45;
  *(a4 + 64) = v44;
  *(a4 + 80) = v18;
  v19 = v47;
  *(a4 + 96) = v46;
  *(a4 + 112) = v19;
  v20 = v41;
  *a4 = v40;
  *(a4 + 16) = v20;
  v21 = v43;
  *(a4 + 32) = v42;
  *(a4 + 48) = v21;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(a4, v24);
}

float32_t pxrInternal__aapl__pxrReserved__::CameraUtilFraming::ComputeFilmbackWindow(float32x2_t *a1, int a2, float a3)
{
  pxrInternal__aapl__pxrReserved__::GfRange2d::GfRange2d(v14, a1);
  if (a2 == 3)
  {
    v6 = 2;
  }

  else
  {
    v6 = a2;
  }

  if (a2 == 2)
  {
    v7 = 3;
  }

  else
  {
    v7 = v6;
  }

  v8 = a1[4].f32[0];
  v9 = a3 / v8;
  if (v8 == 0.0)
  {
    v9 = 1.0;
  }

  v15.f64[0] = pxrInternal__aapl__pxrReserved__::CameraUtilConformedWindow(v14[0].f64, v7, v9);
  v15.f64[1] = v10;
  v16 = v11;
  v17 = v12;
  pxrInternal__aapl__pxrReserved__::GfRange2f::GfRange2f(&v18, &v15);
  return v18.f32[0];
}

uint64_t pxrInternal__aapl__pxrReserved__::CameraUtilScreenWindowParameters::CameraUtilScreenWindowParameters(uint64_t a1, pxrInternal__aapl__pxrReserved__::GfCamera *this, int a3)
{
  HorizontalAperture = pxrInternal__aapl__pxrReserved__::GfCamera::GetHorizontalAperture(this);
  HorizontalApertureOffset = pxrInternal__aapl__pxrReserved__::GfCamera::GetHorizontalApertureOffset(this);
  v8 = ((HorizontalApertureOffset + HorizontalApertureOffset) - HorizontalAperture);
  v9 = pxrInternal__aapl__pxrReserved__::GfCamera::GetHorizontalAperture(this);
  v10 = pxrInternal__aapl__pxrReserved__::GfCamera::GetHorizontalApertureOffset(this);
  v11 = (v9 + (v10 + v10));
  VerticalAperture = pxrInternal__aapl__pxrReserved__::GfCamera::GetVerticalAperture(this);
  VerticalApertureOffset = pxrInternal__aapl__pxrReserved__::GfCamera::GetVerticalApertureOffset(this);
  v14 = ((VerticalApertureOffset + VerticalApertureOffset) - VerticalAperture);
  v15 = pxrInternal__aapl__pxrReserved__::GfCamera::GetVerticalAperture(this);
  v16 = pxrInternal__aapl__pxrReserved__::GfCamera::GetVerticalApertureOffset(this);
  *a1 = v8;
  *(a1 + 8) = v11;
  *(a1 + 16) = v14;
  *(a1 + 24) = (v15 + (v16 + v16));
  *(a1 + 32) = pxrInternal__aapl__pxrReserved__::GfCamera::GetFieldOfView(this, a3);
  if (pxrInternal__aapl__pxrReserved__::GfCamera::GetProjection(this))
  {
    v17 = 0.1 * 0.5;
    v18 = *a1 * (0.1 * 0.5);
  }

  else
  {
    if (a3)
    {
      v19 = pxrInternal__aapl__pxrReserved__::GfCamera::GetVerticalAperture(this);
    }

    else
    {
      v19 = pxrInternal__aapl__pxrReserved__::GfCamera::GetHorizontalAperture(this);
    }

    if (v19 == 0.0)
    {
      goto LABEL_9;
    }

    v17 = 1.0 / v19;
    v18 = v17 * *a1;
  }

  *a1 = v18;
  *(a1 + 8) = vmulq_n_f64(*(a1 + 8), v17);
  *(a1 + 24) = v17 * *(a1 + 24);
LABEL_9:
  if ((atomic_load_explicit(&qword_2A17484C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17484C0))
  {
    __asm { FMOV            V1.2D, #1.0 }

    v32 = _Q1;
    v33 = xmmword_29B435410;
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&xmmword_2A1748440, &v32);
    __cxa_guard_release(&qword_2A17484C0);
  }

  pxrInternal__aapl__pxrReserved__::GfCamera::GetTransform(this, v30);
  v31[4] = xmmword_2A1748480;
  v31[5] = unk_2A1748490;
  v31[6] = xmmword_2A17484A0;
  v31[7] = unk_2A17484B0;
  v31[0] = xmmword_2A1748440;
  v31[1] = *algn_2A1748450;
  v31[2] = xmmword_2A1748460;
  v31[3] = unk_2A1748470;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v31, v30);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(v31, 0, 0.0, &v32);
  v20 = v37;
  *(a1 + 104) = v36;
  *(a1 + 120) = v20;
  v21 = v39;
  *(a1 + 136) = v38;
  *(a1 + 152) = v21;
  v22 = v33;
  *(a1 + 40) = v32;
  *(a1 + 56) = v22;
  v23 = v35;
  *(a1 + 72) = v34;
  *(a1 + 88) = v23;
  return a1;
}

pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology *pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v2)
  {
    v2 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  v3 = *(v2 + 6);
  *this = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *this &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v4)
  {
    v4 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  v5 = *(v4 + 14);
  *(this + 1) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 1) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 368) = 0;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  return this;
}

double pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, __int128 *a5)
{
  v5 = *a2;
  *a1 = *a2;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *a3;
  *(a1 + 8) = *a3;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(a4 + 16);
  *(a1 + 16) = *a4;
  *(a1 + 32) = v7;
  v8 = *(a4 + 32);
  *(a1 + 48) = v8;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(a1 + 40))
    {
      v9 = *(a1 + 40);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  v10 = *a5;
  *(a1 + 72) = a5[1];
  *(a1 + 56) = v10;
  v11 = *(a5 + 4);
  *(a1 + 88) = v11;
  if (v11)
  {
    v12 = (v11 - 16);
    if (*(a1 + 80))
    {
      v12 = *(a1 + 80);
    }

    atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
  }

  *(a1 + 368) = 0;
  result = 0.0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 96) = 0u;
  return result;
}

double pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v6 = *a2;
  *a1 = *a2;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *a3;
  *(a1 + 8) = *a3;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(a4 + 16);
  *(a1 + 16) = *a4;
  *(a1 + 32) = v8;
  v9 = *(a4 + 32);
  *(a1 + 48) = v9;
  if (v9)
  {
    v10 = (v9 - 16);
    if (*(a1 + 40))
    {
      v10 = *(a1 + 40);
    }

    atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
  }

  v11 = *a5;
  *(a1 + 72) = a5[1];
  *(a1 + 56) = v11;
  v12 = *(a5 + 4);
  *(a1 + 88) = v12;
  if (v12)
  {
    v13 = (v12 - 16);
    if (*(a1 + 80))
    {
      v13 = *(a1 + 80);
    }

    atomic_fetch_add_explicit(v13, 1uLL, memory_order_relaxed);
  }

  v14 = *(a6 + 16);
  *(a1 + 96) = *a6;
  *(a1 + 112) = v14;
  v15 = *(a6 + 32);
  *(a1 + 128) = v15;
  if (v15)
  {
    v16 = (v15 - 16);
    if (*(a1 + 120))
    {
      v16 = *(a1 + 120);
    }

    atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
  }

  result = 0.0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 353) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t *a7)
{
  v8 = *a2;
  *a1 = *a2;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *a3;
  *(a1 + 8) = *a3;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(a4 + 16);
  *(a1 + 16) = *a4;
  *(a1 + 32) = v10;
  v11 = *(a4 + 32);
  *(a1 + 48) = v11;
  if (v11)
  {
    v12 = (v11 - 16);
    if (*(a1 + 40))
    {
      v12 = *(a1 + 40);
    }

    atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
  }

  v13 = *a5;
  *(a1 + 72) = a5[1];
  *(a1 + 56) = v13;
  v14 = *(a5 + 4);
  *(a1 + 88) = v14;
  if (v14)
  {
    v15 = (v14 - 16);
    if (*(a1 + 80))
    {
      v15 = *(a1 + 80);
    }

    atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
  }

  v16 = *(a6 + 16);
  *(a1 + 96) = *a6;
  *(a1 + 112) = v16;
  v17 = *(a6 + 32);
  *(a1 + 128) = v17;
  if (v17)
  {
    v18 = (v17 - 16);
    if (*(a1 + 120))
    {
      v18 = *(a1 + 120);
    }

    atomic_fetch_add_explicit(v18, 1uLL, memory_order_relaxed);
  }

  sub_29AB6F3BC(a1 + 136, a7);
  *(a1 + 368) = 0;
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, __int128 *a5, uint64_t *a6)
{
  v7 = *a2;
  *a1 = *a2;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *a3;
  *(a1 + 8) = *a3;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(a4 + 16);
  *(a1 + 16) = *a4;
  *(a1 + 32) = v9;
  v10 = *(a4 + 32);
  *(a1 + 48) = v10;
  if (v10)
  {
    v11 = (v10 - 16);
    if (*(a1 + 40))
    {
      v11 = *(a1 + 40);
    }

    atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
  }

  v12 = *a5;
  *(a1 + 72) = a5[1];
  *(a1 + 56) = v12;
  v13 = *(a5 + 4);
  *(a1 + 88) = v13;
  if (v13)
  {
    v14 = (v13 - 16);
    if (*(a1 + 80))
    {
      v14 = *(a1 + 80);
    }

    atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0u;
  sub_29AB6F3BC(a1 + 136, a6);
  *(a1 + 368) = 0;
  return a1;
}

unint64_t pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::ComputeHash(pxrInternal__aapl__pxrReserved__ **this)
{
  v2 = pxrInternal__aapl__pxrReserved__::PxOsdSubdivTags::ComputeHash(this + 17);
  v3 = pxrInternal__aapl__pxrReserved__::ArchHash64(this, 8, v2);
  v4 = pxrInternal__aapl__pxrReserved__::ArchHash64((this + 1), 8, v3);
  v5 = pxrInternal__aapl__pxrReserved__::ArchHash64(this[6], (4 * this[2]), v4);
  v6 = pxrInternal__aapl__pxrReserved__::ArchHash64(this[11], (4 * this[7]), v5);
  v7 = this[16];
  v8 = (4 * this[12]);

  return pxrInternal__aapl__pxrReserved__::ArchHash64(v7, v8, v6);
}

uint64_t pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::operator==(void *a1, void *a2)
{
  if ((*a2 ^ *a1) > 7 || (a2[1] ^ a1[1]) > 7 || !pxrInternal__aapl__pxrReserved__::UsdSkelTopology::operator==((a1 + 2), (a2 + 2)) || !pxrInternal__aapl__pxrReserved__::UsdSkelTopology::operator==((a1 + 7), (a2 + 7)) || !pxrInternal__aapl__pxrReserved__::operator==(a1 + 17, a2 + 17))
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::UsdSkelTopology::operator==((a1 + 12), (a2 + 12));
}

pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation *pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::Validate@<X0>(pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology *this@<X0>, pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation *a2@<X8>)
{
  result = a2;
  v4 = atomic_load(this + 368);
  if (v4)
  {
    *result = 0;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::PxOsdMeshTopologyValidation(result, this);
    if (*result)
    {
      v5 = **result == *(*result + 8);
    }

    else
    {
      v5 = 1;
    }

    atomic_store(v5, this + 368);
  }

  return result;
}

uint64_t sub_29AB6F3BC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = a2[1];
  *(result + 8) = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = a2[2];
  *(result + 16) = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = a2[3];
  *(result + 24) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(a2 + 3);
  *(result + 32) = *(a2 + 2);
  *(result + 48) = v6;
  v7 = a2[8];
  *(result + 64) = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(result + 56))
    {
      v8 = *(result + 56);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 9);
  *(result + 88) = *(a2 + 11);
  *(result + 72) = v9;
  v10 = a2[13];
  *(result + 104) = v10;
  if (v10)
  {
    v11 = (v10 - 16);
    if (*(result + 96))
    {
      v11 = *(result + 96);
    }

    atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
  }

  v12 = *(a2 + 8);
  *(result + 112) = *(a2 + 7);
  *(result + 128) = v12;
  v13 = a2[18];
  *(result + 144) = v13;
  if (v13)
  {
    v14 = (v13 - 16);
    if (*(result + 136))
    {
      v14 = *(result + 136);
    }

    atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed);
  }

  v15 = *(a2 + 19);
  *(result + 168) = *(a2 + 21);
  *(result + 152) = v15;
  v16 = a2[23];
  *(result + 184) = v16;
  if (v16)
  {
    v17 = (v16 - 16);
    if (*(result + 176))
    {
      v17 = *(result + 176);
    }

    atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
  }

  v18 = *(a2 + 13);
  *(result + 192) = *(a2 + 12);
  *(result + 208) = v18;
  v19 = a2[28];
  *(result + 224) = v19;
  if (v19)
  {
    v20 = (v19 - 16);
    if (*(result + 216))
    {
      v20 = *(result + 216);
    }

    atomic_fetch_add_explicit(v20, 1uLL, memory_order_relaxed);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens_StaticTokenType *sub_29AB6F55C(atomic_ullong *a1)
{
  result = sub_29AB6F5A4();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens_StaticTokenType::~PxOsdOpenSubdivTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens_StaticTokenType *sub_29AB6F5A4()
{
  v0 = operator new(0x98uLL);
  pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens_StaticTokenType::PxOsdOpenSubdivTokens_StaticTokenType(v0);
  return v0;
}

void sub_29AB6F5E8()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2072518, 0, "PxOsdMeshTopologyValidation::Code::InvalidScheme", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2072518, 1, "PxOsdMeshTopologyValidation::Code::InvalidOrientation", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2072518, 2, "PxOsdMeshTopologyValidation::Code::InvalidTriangleSubdivision", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2072518, 3, "PxOsdMeshTopologyValidation::Code::InvalidVertexInterpolationRule", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2072518, 4, "PxOsdMeshTopologyValidation::Code::InvalidFaceVaryingInterpolationRule", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2072518, 5, "PxOsdMeshTopologyValidation::Code::InvalidCreaseMethod", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2072518, 6, "PxOsdMeshTopologyValidation::Code::InvalidCreaseLengthElement", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2072518, 7, "PxOsdMeshTopologyValidation::Code::InvalidCreaseIndicesSize", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2072518, 8, "PxOsdMeshTopologyValidation::Code::InvalidCreaseIndicesElement", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2072518, 9, "PxOsdMeshTopologyValidation::Code::InvalidCreaseWeightsSize", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2072518, 10, "PxOsdMeshTopologyValidation::Code::NegativeCreaseWeights", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2072518, 11, "PxOsdMeshTopologyValidation::Code::InvalidCornerIndicesElement", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2072518, 12, "PxOsdMeshTopologyValidation::Code::NegativeCornerWeights", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2072518, 13, "PxOsdMeshTopologyValidation::Code::InvalidCornerWeightsSize", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2072518, 15, "PxOsdMeshTopologyValidation::Code::InvalidFaceVertexCountsElement", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2072518, 16, "PxOsdMeshTopologyValidation::Code::InvalidFaceVertexIndicesElement", 0);

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2072518, 17, "PxOsdMeshTopologyValidation::Code::InvalidFaceVertexIndicesSize", 0);
}

void ***pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::PxOsdMeshTopologyValidation(void ***this, const pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology *a2)
{
  *this = 0;
  pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::_ValidateScheme(this, a2);
  pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::_ValidateOrientation(this, a2);
  pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::_ValidateTriangleSubdivision(this, a2);
  pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::_ValidateVertexInterpolation(this, a2);
  pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::_ValidateFaceVaryingInterpolation(this, a2);
  pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::_ValidateCreaseMethod(this, a2);
  pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::_ValidateCreasesAndCorners(this, a2, v4);
  pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::_ValidateHoles(this, a2);
  pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::_ValidateFaceVertexCounts(this, a2);
  pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::_ValidateFaceVertexIndices(this, a2, v5);
  return this;
}

void pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::_ValidateScheme(void ***this, const pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology *a2)
{
  if ((atomic_load_explicit(&qword_2A17484E0, memory_order_acquire) & 1) == 0)
  {
    v4 = this;
    v5 = a2;
    v6 = __cxa_guard_acquire(&qword_2A17484E0);
    a2 = v5;
    v7 = v6;
    this = v4;
    if (v7)
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v8)
      {
        v8 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v9 = *(v8 + 7);
      qword_2A17484C8 = v9;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A17484C8 &= 0xFFFFFFFFFFFFFFF8;
      }

      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v10)
      {
        v10 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v11 = *(v10 + 8);
      qword_2A17484D0 = v11;
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A17484D0 &= 0xFFFFFFFFFFFFFFF8;
      }

      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v12)
      {
        v12 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v13 = *(v12 + 6);
      qword_2A17484D8 = v13;
      if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A17484D8 &= 0xFFFFFFFFFFFFFFF8;
      }

      __cxa_atexit(sub_29AB70E0C, &qword_2A17484C8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A17484E0);
      this = v4;
      a2 = v5;
    }
  }

  v2 = *a2;
  v14 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v3;
    }
  }

  sub_29AB70E38(this, 0, "scheme", &v14, &qword_2A17484C8);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::_ValidateOrientation(void ***this, const pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology *a2)
{
  if ((atomic_load_explicit(&qword_2A17484F8, memory_order_acquire) & 1) == 0)
  {
    v9 = this;
    v2 = a2;
    v3 = __cxa_guard_acquire(&qword_2A17484F8);
    a2 = v2;
    v4 = v3;
    this = v9;
    if (v4)
    {
      v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v5)
      {
        v5 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v6 = *(v5 + 14);
      qword_2A17484E8 = v6;
      if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A17484E8 &= 0xFFFFFFFFFFFFFFF8;
      }

      v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v7)
      {
        v7 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v8 = *(v7 + 13);
      qword_2A17484F0 = v8;
      if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A17484F0 &= 0xFFFFFFFFFFFFFFF8;
      }

      __cxa_atexit(sub_29AB70EFC, &qword_2A17484E8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A17484F8);
      this = v9;
      a2 = v2;
    }
  }

  sub_29AB70F28(this, 1, "orientation", a2 + 1, &qword_2A17484E8);
}

void sub_29AB6FBF4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 1256);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A17484F8);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::_ValidateTriangleSubdivision(void ***this, const pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology *a2)
{
  if ((atomic_load_explicit(&qword_2A17485B0, memory_order_acquire) & 1) == 0)
  {
    v4 = this;
    v5 = a2;
    sub_29B2C2308();
    a2 = v5;
    this = v4;
  }

  if ((atomic_load_explicit(&qword_2A1748518, memory_order_acquire) & 1) == 0)
  {
    v13 = this;
    v6 = a2;
    v7 = __cxa_guard_acquire(&qword_2A1748518);
    a2 = v6;
    v8 = v7;
    this = v13;
    if (v8)
    {
      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v9)
      {
        v9 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v10 = *(v9 + 7);
      qword_2A1748500 = v10;
      if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A1748500 &= 0xFFFFFFFFFFFFFFF8;
      }

      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v11)
      {
        v11 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v12 = *(v11 + 15);
      qword_2A1748508 = v12;
      if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A1748508 &= 0xFFFFFFFFFFFFFFF8;
      }

      qword_2A1748510 = qword_2A17485A8;
      if ((qword_2A17485A8 & 7) != 0 && (atomic_fetch_add_explicit((qword_2A17485A8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A1748510 &= 0xFFFFFFFFFFFFFFF8;
      }

      __cxa_atexit(sub_29AB70E0C, &qword_2A1748500, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1748518);
      this = v13;
      a2 = v6;
    }
  }

  v2 = *(a2 + 20);
  v14 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v3;
    }
  }

  sub_29AB70E38(this, 2, "triangle subdivision", &v14, &qword_2A1748500);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AB6FE18(_Unwind_Exception *a1)
{
  v3 = *(v1 + 1280);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A1748518);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::_ValidateVertexInterpolation(void ***this, const pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology *a2)
{
  if ((atomic_load_explicit(&qword_2A17485C0, memory_order_acquire) & 1) == 0)
  {
    v4 = this;
    v5 = a2;
    sub_29B2C2368();
    a2 = v5;
    this = v4;
  }

  if ((atomic_load_explicit(&qword_2A1748540, memory_order_acquire) & 1) == 0)
  {
    v6 = this;
    v7 = a2;
    v8 = __cxa_guard_acquire(&qword_2A1748540);
    a2 = v7;
    v9 = v8;
    this = v6;
    if (v9)
    {
      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v10)
      {
        v10 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v11 = *(v10 + 1);
      qword_2A1748520 = v11;
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A1748520 &= 0xFFFFFFFFFFFFFFF8;
      }

      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v12)
      {
        v12 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v13 = *(v12 + 10);
      qword_2A1748528 = v13;
      if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A1748528 &= 0xFFFFFFFFFFFFFFF8;
      }

      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v14)
      {
        v14 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v15 = *(v14 + 9);
      qword_2A1748530 = v15;
      if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A1748530 &= 0xFFFFFFFFFFFFFFF8;
      }

      qword_2A1748538 = qword_2A17485B8;
      if ((qword_2A17485B8 & 7) != 0 && (atomic_fetch_add_explicit((qword_2A17485B8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A1748538 &= 0xFFFFFFFFFFFFFFF8;
      }

      __cxa_atexit(sub_29AB70FEC, &qword_2A1748520, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1748540);
      this = v6;
      a2 = v7;
    }
  }

  v2 = *(a2 + 17);
  v16 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 = v3;
    }
  }

  sub_29AB71018(this, 3, "vertex interpolation rule", &v16, &qword_2A1748520);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::_ValidateFaceVaryingInterpolation(void ***this, const pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology *a2)
{
  if ((atomic_load_explicit(&qword_2A17485D0, memory_order_acquire) & 1) == 0)
  {
    v4 = this;
    v5 = a2;
    sub_29B2C23F4();
    a2 = v5;
    this = v4;
  }

  if ((atomic_load_explicit(&qword_2A1748580, memory_order_acquire) & 1) == 0)
  {
    v6 = this;
    v7 = a2;
    v8 = __cxa_guard_acquire(&qword_2A1748580);
    a2 = v7;
    v9 = v8;
    this = v6;
    if (v9)
    {
      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v10)
      {
        v10 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v11 = *(v10 + 1);
      qword_2A1748548 = v11;
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A1748548 &= 0xFFFFFFFFFFFFFFF8;
      }

      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v12)
      {
        v12 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v13 = *v12;
      qword_2A1748550 = v13;
      if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A1748550 &= 0xFFFFFFFFFFFFFFF8;
      }

      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v14)
      {
        v14 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v15 = *(v14 + 5);
      qword_2A1748558 = v15;
      if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A1748558 &= 0xFFFFFFFFFFFFFFF8;
      }

      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v16)
      {
        v16 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v17 = *(v16 + 2);
      qword_2A1748560 = v17;
      if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A1748560 &= 0xFFFFFFFFFFFFFFF8;
      }

      v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v18)
      {
        v18 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v19 = *(v18 + 3);
      qword_2A1748568 = v19;
      if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A1748568 &= 0xFFFFFFFFFFFFFFF8;
      }

      v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v20)
      {
        v20 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v21 = *(v20 + 4);
      qword_2A1748570 = v21;
      if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A1748570 &= 0xFFFFFFFFFFFFFFF8;
      }

      qword_2A1748578 = qword_2A17485C8;
      if ((qword_2A17485C8 & 7) != 0 && (atomic_fetch_add_explicit((qword_2A17485C8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A1748578 &= 0xFFFFFFFFFFFFFFF8;
      }

      __cxa_atexit(sub_29AB710DC, &qword_2A1748548, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1748580);
      this = v6;
      a2 = v7;
    }
  }

  v2 = *(a2 + 18);
  v22 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v3;
    }
  }

  sub_29AB71108(this, 4, "face varying interpolation rule", &v22, &qword_2A1748548);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::_ValidateCreaseMethod(void ***this, const pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology *a2)
{
  if ((atomic_load_explicit(&qword_2A17485E0, memory_order_acquire) & 1) == 0)
  {
    v4 = this;
    v5 = a2;
    sub_29B2C2480();
    a2 = v5;
    this = v4;
  }

  if ((atomic_load_explicit(&qword_2A17485A0, memory_order_acquire) & 1) == 0)
  {
    v13 = this;
    v6 = a2;
    v7 = __cxa_guard_acquire(&qword_2A17485A0);
    a2 = v6;
    v8 = v7;
    this = v13;
    if (v8)
    {
      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v9)
      {
        v9 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v10 = *(v9 + 11);
      qword_2A1748588 = v10;
      if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A1748588 &= 0xFFFFFFFFFFFFFFF8;
      }

      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v11)
      {
        v11 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v12 = *(v11 + 12);
      qword_2A1748590 = v12;
      if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A1748590 &= 0xFFFFFFFFFFFFFFF8;
      }

      qword_2A1748598 = qword_2A17485D8;
      if ((qword_2A17485D8 & 7) != 0 && (atomic_fetch_add_explicit((qword_2A17485D8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A1748598 &= 0xFFFFFFFFFFFFFFF8;
      }

      __cxa_atexit(sub_29AB70E0C, &qword_2A1748588, &dword_299FE7000);
      __cxa_guard_release(&qword_2A17485A0);
      this = v13;
      a2 = v6;
    }
  }

  v2 = *(a2 + 19);
  v14 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v3;
    }
  }

  sub_29AB70E38(this, 5, "crease method", &v14, &qword_2A1748588);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AB70664(_Unwind_Exception *a1)
{
  v3 = *(v1 + 1416);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A17485A0);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::_ValidateCreasesAndCorners(void ***this, const pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology *a2, char *a3)
{
  v5 = *(a2 + 26);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 30);
    while (v7[v6] > 1)
    {
      if (v5 == ++v6)
      {
        goto LABEL_5;
      }
    }

    v46 = 6;
    sub_29A008E78(__p, "Crease lengths must be greater than or equal to 2.");
    sub_29AB711CC(this, &v46);
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = *(a2 + 30);
    v5 = *(a2 + 26);
    if (v5)
    {
LABEL_5:
      LODWORD(v8) = 0;
      v9 = 4 * v5;
      do
      {
        v10 = *v7++;
        v8 = v10 + v8;
        v9 -= 4;
      }

      while (v9);
      goto LABEL_12;
    }
  }

  v8 = 0;
LABEL_12:
  v11 = *(a2 + 21);
  if (v11 != v8)
  {
    v46 = 7;
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Crease indices size '%zu' doesn't match expected '%zu'.", a2, a3, v11, v8);
    sub_29AB711CC(this, &v46);
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = *(a2 + 31);
  if (v12 != v8 - v5 && v12 != v5)
  {
    v46 = 9;
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Crease weights size '%zu' doesn't match either per edge '%zu' or per crease '%zu' sizes.", a2, a3, v12, v8 - v5, v5);
    sub_29AB711CC(this, &v46);
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v14 = *(a2 + 36);
  v15 = *(a2 + 41);
  if (v14 != v15)
  {
    v46 = 13;
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Corner weights size '%zu' doesn't match expected '%zu'.", a2, a3, v14, v15);
    sub_29AB711CC(this, &v46);
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v16 = *(a2 + 31);
  if (v16)
  {
    v17 = *(a2 + 35);
    v18 = 4 * v16;
    while (*v17 >= 0.0)
    {
      ++v17;
      v18 -= 4;
      if (!v18)
      {
        goto LABEL_31;
      }
    }

    v46 = 10;
    sub_29A008E78(__p, "Negative crease weights.");
    sub_29AB711CC(this, &v46);
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_31:
  v19 = *(a2 + 41);
  if (v19)
  {
    v20 = *(a2 + 45);
    v21 = 4 * v19;
    while (*v20 >= 0.0)
    {
      ++v20;
      v21 -= 4;
      if (!v21)
      {
        goto LABEL_38;
      }
    }

    v46 = 12;
    sub_29A008E78(__p, "Negative corner weights.");
    sub_29AB711CC(this, &v46);
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_38:
  v43 = 0;
  v44 = 0;
  v45 = 0;
  sub_29A0C2698(&v43, *(a2 + 11), (*(a2 + 11) + 4 * *(a2 + 7)), *(a2 + 7));
  std::__sort<std::__less<int,int> &,int *>();
  v22 = *(a2 + 36);
  v23 = v43;
  if (v22)
  {
    if (v44 != v43)
    {
      v24 = *(a2 + 40);
      v25 = &v24[v22];
      while (1)
      {
        v26 = *v24;
        v27 = v43;
        v28 = (v44 - v43) >> 2;
        do
        {
          v29 = v28 >> 1;
          v30 = &v27[4 * (v28 >> 1)];
          v32 = *v30;
          v31 = (v30 + 1);
          v28 += ~(v28 >> 1);
          if (v32 < v26)
          {
            v27 = v31;
          }

          else
          {
            v28 = v29;
          }
        }

        while (v28);
        if (v27 == v44 || *v27 > v26)
        {
          break;
        }

        if (++v24 == v25)
        {
          goto LABEL_53;
        }
      }
    }

    v46 = 11;
    sub_29A008E78(__p, "Corner index element missing from face vertex indices array.");
    sub_29AB711CC(this, &v46);
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }

    v23 = v43;
  }

LABEL_53:
  v33 = *(a2 + 21);
  if (v33)
  {
    if (v44 != v23)
    {
      v34 = *(a2 + 25);
      v35 = &v34[v33];
      while (1)
      {
        v36 = *v34;
        v37 = v23;
        v38 = (v44 - v23) >> 2;
        do
        {
          v39 = v38 >> 1;
          v40 = &v37[4 * (v38 >> 1)];
          v42 = *v40;
          v41 = (v40 + 1);
          v38 += ~(v38 >> 1);
          if (v42 < v36)
          {
            v37 = v41;
          }

          else
          {
            v38 = v39;
          }
        }

        while (v38);
        if (v37 == v44 || *v37 > v36)
        {
          break;
        }

        if (++v34 == v35)
        {
          goto LABEL_68;
        }
      }
    }

    v46 = 8;
    sub_29A008E78(__p, "Crease index element missing from face vertex indices array.");
    sub_29AB711CC(this, &v46);
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }

    v23 = v43;
  }

LABEL_68:
  if (v23)
  {
    v44 = v23;
    operator delete(v23);
  }
}

void sub_29AB70AD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::_ValidateHoles(void ***this, const pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology *a2)
{
  v2 = *(a2 + 12);
  if (v2)
  {
    v5 = *(a2 + 16);
    v14 = 0;
    v6 = sub_29AA7B008(v5, &v5[v2]);
    v9 = v7;
    if ((*v6 & 0x80000000) != 0)
    {
      LODWORD(v11) = 14;
      sub_29A008E78(&__p, "Hole indices cannot be negative.");
      sub_29AB711CC(this, &v11);
      if (v13 < 0)
      {
        operator delete(__p);
      }
    }

    v10 = *(a2 + 2);
    if (*v9 >= v10)
    {
      LODWORD(v11) = 14;
      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Hole indices must be less than face count '%zu'.", v7, v8, v10, v11);
      sub_29AB711CC(this, &v11);
      if (v13 < 0)
      {
        operator delete(__p);
      }
    }
  }
}

void sub_29AB70C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::_ValidateFaceVertexCounts(void ***this, const pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology *a2)
{
  v2 = *(a2 + 2);
  if (v2)
  {
    v4 = *(a2 + 6);
    v5 = 4 * v2;
    while (*v4 > 2)
    {
      ++v4;
      v5 -= 4;
      if (!v5)
      {
        return;
      }
    }

    v6 = 15;
    sub_29A008E78(&__p, "Face vertex counts must be greater than 2.");
    sub_29AB711CC(this, &v6);
    if (v8 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_29AB70CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::PxOsdMeshTopologyValidation::_ValidateFaceVertexIndices(void ***this, const pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology *a2, char *a3)
{
  v5 = *(a2 + 7);
  if (v5)
  {
    v6 = *(a2 + 11);
    v7 = 4 * v5;
    while ((*v6 & 0x80000000) == 0)
    {
      ++v6;
      v7 -= 4;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    LODWORD(v14) = 16;
    sub_29A008E78(&__p, "Face vertex indices element must be greater than 0.");
    sub_29AB711CC(this, &v14);
    if (v16 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_8:
  v8 = *(a2 + 2);
  if (v8)
  {
    LODWORD(v9) = 0;
    v10 = *(a2 + 6);
    v11 = 4 * v8;
    do
    {
      v12 = *v10++;
      v9 = v12 + v9;
      v11 -= 4;
    }

    while (v11);
  }

  else
  {
    v9 = 0;
  }

  v13 = *(a2 + 7);
  if (v13 != v9)
  {
    LODWORD(v14) = 17;
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Face vertex indices size '%zu' does not match expected size '%zu'.", a2, a3, v13, v9, v14);
    sub_29AB711CC(this, &v14);
    if (v16 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_29AB70DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AB70E0C(uint64_t result)
{
  for (i = 16; i != -8; i -= 8)
  {
    v2 = *(result + i);
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AB70E38(void ***a1, const char *a2, char *a3, unint64_t *a4, uint64_t a5)
{
  v6 = 0;
  v7 = *a4;
  while ((*(a5 + v6) ^ v7) >= 8)
  {
    v6 += 8;
    if (v6 == 24)
    {
      LODWORD(v10[0]) = a2;
      v8 = v7 & 0xFFFFFFFFFFFFFFF8;
      if ((v7 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v9 = (v8 + 16);
        if (*(v8 + 39) < 0)
        {
          v9 = *v9;
        }
      }

      else
      {
        v9 = "";
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("'%s' is not a valid '%s' token.", a2, a3, v9, a3, v10[0]);
      sub_29AB711CC(a1, v10);
      if (v11 < 0)
      {
        operator delete(v10[1]);
      }

      return;
    }
  }
}

void sub_29AB70EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AB70EFC(uint64_t result)
{
  for (i = 8; i != -8; i -= 8)
  {
    v2 = *(result + i);
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AB70F28(void ***a1, const char *a2, char *a3, unint64_t *a4, uint64_t a5)
{
  v6 = 0;
  v7 = *a4;
  while ((*(a5 + v6) ^ v7) >= 8)
  {
    v6 += 8;
    if (v6 == 16)
    {
      LODWORD(v10[0]) = a2;
      v8 = v7 & 0xFFFFFFFFFFFFFFF8;
      if ((v7 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v9 = (v8 + 16);
        if (*(v8 + 39) < 0)
        {
          v9 = *v9;
        }
      }

      else
      {
        v9 = "";
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("'%s' is not a valid '%s' token.", a2, a3, v9, a3, v10[0]);
      sub_29AB711CC(a1, v10);
      if (v11 < 0)
      {
        operator delete(v10[1]);
      }

      return;
    }
  }
}

void sub_29AB70FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AB70FEC(uint64_t result)
{
  for (i = 24; i != -8; i -= 8)
  {
    v2 = *(result + i);
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AB71018(void ***a1, const char *a2, char *a3, unint64_t *a4, uint64_t a5)
{
  v6 = 0;
  v7 = *a4;
  while ((*(a5 + v6) ^ v7) >= 8)
  {
    v6 += 8;
    if (v6 == 32)
    {
      LODWORD(v10[0]) = a2;
      v8 = v7 & 0xFFFFFFFFFFFFFFF8;
      if ((v7 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v9 = (v8 + 16);
        if (*(v8 + 39) < 0)
        {
          v9 = *v9;
        }
      }

      else
      {
        v9 = "";
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("'%s' is not a valid '%s' token.", a2, a3, v9, a3, v10[0]);
      sub_29AB711CC(a1, v10);
      if (v11 < 0)
      {
        operator delete(v10[1]);
      }

      return;
    }
  }
}

void sub_29AB710C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AB710DC(uint64_t result)
{
  for (i = 48; i != -8; i -= 8)
  {
    v2 = *(result + i);
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AB71108(void ***a1, const char *a2, char *a3, unint64_t *a4, uint64_t a5)
{
  v6 = 0;
  v7 = *a4;
  while ((*(a5 + v6) ^ v7) >= 8)
  {
    v6 += 8;
    if (v6 == 56)
    {
      LODWORD(v10[0]) = a2;
      v8 = v7 & 0xFFFFFFFFFFFFFFF8;
      if ((v7 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v9 = (v8 + 16);
        if (*(v8 + 39) < 0)
        {
          v9 = *v9;
        }
      }

      else
      {
        v9 = "";
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("'%s' is not a valid '%s' token.", a2, a3, v9, a3, v10[0]);
      sub_29AB711CC(a1, v10);
      if (v11 < 0)
      {
        operator delete(v10[1]);
      }

      return;
    }
  }
}

void sub_29AB711B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AB711CC(void ***a1, uint64_t a2)
{
  v4 = *a1;
  if (!v4)
  {
    v5 = operator new(0x18uLL);
    v5[1] = 0;
    v5[2] = 0;
    *v5 = 0;
    sub_29A3927F8(a1, v5);
    v4 = *a1;
  }

  return sub_29AB7122C(v4, a2);
}

uint64_t sub_29AB7122C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29AB712D4(a1, a2);
  }

  else
  {
    sub_29AB7126C(a1, a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

_BYTE *sub_29AB7126C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = *a2;
  result = (v3 + 8);
  if (*(a2 + 31) < 0)
  {
    result = sub_29A008D14(result, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *result = v5;
  }

  *(a1 + 8) = v3 + 32;
  return result;
}

uint64_t sub_29AB712D4(uint64_t *a1, uint64_t a2)
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

  v22 = a1;
  if (v7)
  {
    v8 = sub_29A10CB10(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[32 * v2];
  v19 = v8;
  v20 = v9;
  *&v21 = v9;
  *(&v21 + 1) = &v8[32 * v7];
  *v9 = *a2;
  v10 = v9 + 8;
  if (*(a2 + 31) < 0)
  {
    sub_29A008D14(v10, *(a2 + 8), *(a2 + 16));
    v9 = v20;
    v12 = v21;
  }

  else
  {
    v11 = *(a2 + 8);
    *(v9 + 3) = *(a2 + 24);
    *v10 = v11;
    v12 = v9;
  }

  *&v21 = v12 + 32;
  v13 = a1[1];
  v14 = &v9[*a1 - v13];
  sub_29AB7140C(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_29A1595C4(&v19);
  return v18;
}

void sub_29AB713F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1595C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AB7140C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 32;
    }
  }

  return sub_29AB714C8(v9);
}

uint64_t sub_29AB714C8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A15957C(a1);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::PxOsdRefinerFactory::Create(uint64_t *a1, unint64_t *a2)
{
  memset(v4, 0, sizeof(v4));
  v2 = *a2;
  v3 = v2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::PxOsdRefinerFactory::Create(a1, v4, &v3);
}

void sub_29AB71584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v13 = v11;
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(v12 - 24) = &a11;
  sub_29A8440C8((v12 - 24));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PxOsdRefinerFactory::Create(uint64_t *a1, uint64_t a2, char *a3)
{
  v3 = *a3;
  if ((*a3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v3 &= 0xFFFFFFFFFFFFFFF8;
  }

  v83 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v83 &= 0xFFFFFFFFFFFFFFF8;
    }

    v84 = a1;
    atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_release);
  }

  else
  {
    v84 = a1;
  }

  v5 = *a1;
  if ((*a1 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v5 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v6)
  {
    v6 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  if ((v5 ^ *(v6 + 7)) < 8)
  {
    goto LABEL_15;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v8)
  {
    v8 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  if ((v5 ^ *(v8 + 8)) > 7)
  {
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v13)
    {
      v13 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    if ((v5 ^ *(v13 + 6)) >= 8)
    {
      v85 = "pxOsd/refinerFactory.cpp";
      v86 = "GetType";
      v87 = 63;
      v88 = "OpenSubdiv::Sdc::SchemeType pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Converter::GetType() const";
      LOBYTE(v89) = 0;
      v14 = v5 & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v15 = (v14 + 16);
        if (*(v14 + 39) < 0)
        {
          v15 = *v15;
        }
      }

      else
      {
        v15 = "";
      }

      v18 = v83 & 0xFFFFFFFFFFFFFFF8;
      if ((v83 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v19 = (v18 + 16);
        if (*(v18 + 39) < 0)
        {
          v19 = *v19;
        }
      }

      else
      {
        v19 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v85, "Unsupported scheme (%s) (%s)", a3, v15, v19);
LABEL_15:
      v7 = 1;
      goto LABEL_45;
    }

    v7 = 0;
  }

  else
  {
    v9 = v84[2];
    v10 = v9 << 32;
    if (v9 << 32)
    {
      v11 = 4 * v9;
      v12 = v84[6];
      while (*v12 == 3)
      {
        ++v12;
        v11 -= 4;
        if (!v11)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      v12 = v84[6];
    }

    if (v12 != (v84[6] + (v10 >> 30)))
    {
      v85 = "pxOsd/refinerFactory.cpp";
      v86 = "GetType";
      v87 = 57;
      v88 = "OpenSubdiv::Sdc::SchemeType pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Converter::GetType() const";
      LOBYTE(v89) = 0;
      v16 = v83 & 0xFFFFFFFFFFFFFFF8;
      if ((v83 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v17 = (v16 + 16);
        if (*(v16 + 39) < 0)
        {
          v17 = *v17;
        }
      }

      else
      {
        v17 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v85, "Can't apply loop subdivision on prim %s, since it has non-triangle face(s).", a3, v17);
    }

LABEL_44:
    v7 = 2;
  }

LABEL_45:
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *v84;
  if ((*v84 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v21)
  {
    v21 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  if ((v20 ^ *(v21 + 6)) > 7)
  {
    v23 = v84[17];
  }

  else
  {
    v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v22)
    {
      v22 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    v23 = *(v22 + 10);
  }

  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (v23)
  {
    v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v24)
    {
      v24 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    if ((*(v24 + 1) ^ v23) < 8)
    {
      goto LABEL_64;
    }

    v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v26)
    {
      v26 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    if ((*(v26 + 9) ^ v23) < 8)
    {
      v25 = 1;
      goto LABEL_73;
    }

    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v27)
    {
      v27 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    if ((*(v27 + 10) ^ v23) >= 8)
    {
      v85 = "pxOsd/refinerFactory.cpp";
      v86 = "GetOptions";
      v87 = 97;
      v88 = "OpenSubdiv::Sdc::Options pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Converter::GetOptions() const";
      LOBYTE(v89) = 0;
      v33 = v23 & 0xFFFFFFFFFFFFFFF8;
      if ((v23 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v34 = (v33 + 16);
        if (*(v33 + 39) < 0)
        {
          v34 = *v34;
        }
      }

      else
      {
        v34 = "";
      }

      v76 = v83 & 0xFFFFFFFFFFFFFFF8;
      if ((v83 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v77 = (v76 + 16);
        if (*(v76 + 39) < 0)
        {
          v77 = *v77;
        }
      }

      else
      {
        v77 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v85, "Unknown vertex boundary interpolation rule (%s) (%s)", a3, v34, v77);
LABEL_64:
      v25 = 0;
LABEL_73:
      v28 = v84[18];
      if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v28 &= 0xFFFFFFFFFFFFFFF8;
      }

      if (v28)
      {
        v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
        if (!v29)
        {
          v29 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
        }

        if ((*v29 ^ v28) < 8)
        {
LABEL_80:
          v30 = 1280;
LABEL_100:
          v37 = v84[19];
          if ((v37 & 7) != 0 && (atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v37 &= 0xFFFFFFFFFFFFFFF8;
          }

          if (v37)
          {
            v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
            if (!v38)
            {
              v38 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
            }

            if ((*(v38 + 11) ^ v37) >= 8)
            {
              v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
              if (!v39)
              {
                v39 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
              }

              if ((*(v39 + 12) ^ v37) < 8)
              {
                v40 = 0x10000;
LABEL_121:
                v45 = v84[20];
                if ((v45 & 7) != 0 && (atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                {
                  v45 &= 0xFFFFFFFFFFFFFFF8;
                }

                if (!v45)
                {
                  v48 = 0;
                  goto LABEL_145;
                }

                v46 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
                if (!v46)
                {
                  v46 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
                }

                if ((*(v46 + 7) ^ v45) >= 8)
                {
                  v47 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
                  if (!v47)
                  {
                    v47 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
                  }

                  if ((*(v47 + 15) ^ v45) < 8)
                  {
                    v48 = 0x1000000;
                    goto LABEL_143;
                  }

                  v85 = "pxOsd/refinerFactory.cpp";
                  v86 = "GetOptions";
                  v87 = 169;
                  v88 = "OpenSubdiv::Sdc::Options pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Converter::GetOptions() const";
                  LOBYTE(v89) = 0;
                  v49 = v45 & 0xFFFFFFFFFFFFFFF8;
                  if ((v45 & 0xFFFFFFFFFFFFFFF8) != 0)
                  {
                    v50 = (v49 + 16);
                    if (*(v49 + 39) < 0)
                    {
                      v50 = *v50;
                    }
                  }

                  else
                  {
                    v50 = "";
                  }

                  v51 = v83 & 0xFFFFFFFFFFFFFFF8;
                  if ((v83 & 0xFFFFFFFFFFFFFFF8) != 0)
                  {
                    v52 = (v51 + 16);
                    if (*(v51 + 39) < 0)
                    {
                      v52 = *v52;
                    }
                  }

                  else
                  {
                    v52 = "";
                  }

                  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v85, "Unknown triangle subdivision rule (%s) (%s)", a3, v50, v52);
                }

                v48 = 0;
LABEL_143:
                if ((v45 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

LABEL_145:
                if ((v37 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                if ((v28 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                if ((v23 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                if ((v20 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                v53 = operator new(0x78uLL);
                OpenSubdiv::__aapl__::Far::TopologyRefiner::TopologyRefiner(v53, v7, v30 | v25 | v40 | v48);
                sub_29AB72C00(&v85, v84);
                v54 = v87;
                v55 = v90;
                v56 = v91;
                v57 = **(v53 + 6);
                *v57 = v87;
                sub_29A0A171C(v57 + 3, 2 * v54);
                v58 = *(v57 + 12);
                v59 = *(v57 + 13) - v58;
                if (v54 <= v59)
                {
                  if (v54 < v59)
                  {
                    *(v57 + 13) = &v58[v54];
                  }
                }

                else
                {
                  sub_29A0A485C((v57 + 24), v54 - v59);
                  v58 = *(v57 + 12);
                }

                bzero(v58, *v57);
                v60 = *(v53 + 6);
                if (v54 < 1)
                {
                  v74 = 1;
                }

                else
                {
                  v61 = 0;
                  v62 = 0;
                  do
                  {
                    v63 = *(v55 + 4 * v61);
                    v64 = *v60;
                    v65 = (*(*v60 + 24) + 8 * v61);
                    *v65 = v63;
                    if (v61)
                    {
                      v66 = *(v65 - 1) + *(v65 - 2);
                    }

                    else
                    {
                      v66 = 0;
                    }

                    v67 = v63;
                    v65[1] = v66;
                    v68 = *(v64 + 20);
                    if (v68 <= v63)
                    {
                      v68 = v63;
                    }

                    *(v64 + 20) = v68;
                    v69 = v53[4];
                    if ((v69 & 4) != 0)
                    {
                      v70 = 4;
                    }

                    else
                    {
                      v70 = 4 * (v63 != ((v69 >> 3) & 7));
                    }

                    v53[4] = v70 | v69 & 0xFFFB;
                    v71 = v56;
                    if (v63 >= 1)
                    {
                      do
                      {
                        v73 = *v71++;
                        v72 = v73;
                        if (v62 <= v73)
                        {
                          v62 = v72;
                        }

                        --v63;
                      }

                      while (v63);
                    }

                    v56 += v67;
                    ++v61;
                  }

                  while (v61 != (v54 & 0x7FFFFFFF));
                  v74 = v62 + 1;
                }

                v75 = *v60;
                *(v75 + 8) = v74;
                sub_29A0A171C((v75 + 264), 2 * v74);
                sub_29A0A171C((v75 + 336), 2 * v74);
                sub_29A0A171C((v75 + 408), v74);
                sub_29A0A72CC(v75 + 432, v74);
                bzero(*(v75 + 432), 2 * *(v75 + 8));
                sub_29AB72E30();
              }

              v85 = "pxOsd/refinerFactory.cpp";
              v86 = "GetOptions";
              v87 = 151;
              v88 = "OpenSubdiv::Sdc::Options pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Converter::GetOptions() const";
              LOBYTE(v89) = 0;
              v41 = v37 & 0xFFFFFFFFFFFFFFF8;
              if ((v37 & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                v42 = (v41 + 16);
                if (*(v41 + 39) < 0)
                {
                  v42 = *v42;
                }
              }

              else
              {
                v42 = "";
              }

              v43 = v83 & 0xFFFFFFFFFFFFFFF8;
              if ((v83 & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                v44 = (v43 + 16);
                if (*(v43 + 39) < 0)
                {
                  v44 = *v44;
                }
              }

              else
              {
                v44 = "";
              }

              pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v85, "Unknown creasing method (%s) (%s)", a3, v42, v44);
            }
          }

          v40 = 0;
          goto LABEL_121;
        }

        v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
        if (!v31)
        {
          v31 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
        }

        if ((*(v31 + 2) ^ v28) < 8)
        {
          v30 = 256;
          goto LABEL_100;
        }

        v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
        if (!v32)
        {
          v32 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
        }

        if ((*(v32 + 3) ^ v28) < 8)
        {
          v30 = 512;
          goto LABEL_100;
        }

        v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
        if (!v35)
        {
          v35 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
        }

        if ((*(v35 + 4) ^ v28) < 8)
        {
          v30 = 768;
          goto LABEL_100;
        }

        v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
        if (!v36)
        {
          v36 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
        }

        if ((*(v36 + 1) ^ v28) >= 8)
        {
          v78 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
          if (!v78)
          {
            v78 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
          }

          if ((*(v78 + 5) ^ v28) < 8)
          {
            v30 = 1024;
            goto LABEL_100;
          }

          v85 = "pxOsd/refinerFactory.cpp";
          v86 = "GetOptions";
          v87 = 128;
          v88 = "OpenSubdiv::Sdc::Options pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Converter::GetOptions() const";
          LOBYTE(v89) = 0;
          v79 = v28 & 0xFFFFFFFFFFFFFFF8;
          if ((v28 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v80 = (v79 + 16);
            if (*(v79 + 39) < 0)
            {
              v80 = *v80;
            }
          }

          else
          {
            v80 = "";
          }

          v81 = v83 & 0xFFFFFFFFFFFFFFF8;
          if ((v83 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v82 = (v81 + 16);
            if (*(v81 + 39) < 0)
            {
              v82 = *v82;
            }
          }

          else
          {
            v82 = "";
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v85, "Unknown face-varying boundary interpolation rule (%s) (%s)", a3, v80, v82);
          goto LABEL_80;
        }
      }

      v30 = 0;
      goto LABEL_100;
    }
  }

  v25 = 2;
  goto LABEL_73;
}

void sub_29AB72B80(uint64_t a1, uint64_t a2, char *a3)
{
  v5[0] = "pxOsd/refinerFactory.cpp";
  v5[1] = "reportInvalidTopology";
  v5[2] = 437;
  v5[3] = "static void OpenSubdiv::__aapl__::Far::TopologyRefinerFactory<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Converter>::reportInvalidTopology(TopologyRefinerFactory<Converter>::TopologyError, const char *, const pxr_aapl::Converter &) [MESH = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Converter]";
  v6 = 0;
  v3 = *a3 & 0xFFFFFFFFFFFFFFF8;
  if (v3)
  {
    v4 = (v3 + 16);
    if (*(v3 + 39) < 0)
    {
      v4 = *v4;
    }
  }

  else
  {
    v4 = "";
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v5, "%s (%s)", a3, a2, v4);
}

uint64_t sub_29AB72C00(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = a2[1];
  *(a1 + 8) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(a2 + 2);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v6;
  v7 = a2[6];
  *(a1 + 48) = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(a1 + 40))
    {
      v8 = *(a1 + 40);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 7);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 56) = v9;
  v10 = a2[11];
  *(a1 + 88) = v10;
  if (v10)
  {
    v11 = (v10 - 16);
    if (*(a1 + 80))
    {
      v11 = *(a1 + 80);
    }

    atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
  }

  v12 = *(a2 + 7);
  *(a1 + 96) = *(a2 + 6);
  *(a1 + 112) = v12;
  v13 = a2[16];
  *(a1 + 128) = v13;
  if (v13)
  {
    v14 = (v13 - 16);
    if (*(a1 + 120))
    {
      v14 = *(a1 + 120);
    }

    atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed);
  }

  sub_29AB6F3BC(a1 + 136, a2 + 17);
  v15 = atomic_load(a2 + 368);
  *(a1 + 368) = v15 & 1;
  return a1;
}

void *sub_29AB72EB0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2072538;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AB72F08(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    OpenSubdiv::__aapl__::Far::TopologyRefiner::~TopologyRefiner(v1);
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AB72F28(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AB72F50(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    OpenSubdiv::__aapl__::Far::TopologyRefiner::~TopologyRefiner(v1);

    operator delete(v2);
  }
}

uint64_t sub_29AB72F84(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2072588))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::PxOsdSubdivTags::ComputeHash(pxrInternal__aapl__pxrReserved__ **this)
{
  v2 = pxrInternal__aapl__pxrReserved__::ArchHash64(this, 8, 0);
  v3 = pxrInternal__aapl__pxrReserved__::ArchHash64((this + 1), 8, v2);
  v4 = pxrInternal__aapl__pxrReserved__::ArchHash64((this + 2), 8, v3);
  v5 = pxrInternal__aapl__pxrReserved__::ArchHash64((this + 3), 8, v4);
  v6 = pxrInternal__aapl__pxrReserved__::ArchHash64(this[23], (4 * this[19]), v5);
  v7 = pxrInternal__aapl__pxrReserved__::ArchHash64(this[28], (4 * this[24]), v6);
  v8 = pxrInternal__aapl__pxrReserved__::ArchHash64(this[8], (4 * this[4]), v7);
  v9 = pxrInternal__aapl__pxrReserved__::ArchHash64(this[13], (4 * this[9]), v8);
  v10 = this[18];
  v11 = (4 * this[14]);

  return pxrInternal__aapl__pxrReserved__::ArchHash64(v10, v11, v9);
}

void sub_29AB73354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::operator==(unint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  if ((*a1 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v4 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *a2;
  if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v5 &= 0xFFFFFFFFFFFFFFF8;
  }

  if ((v5 ^ v4) > 7)
  {
    result = 0;
  }

  else
  {
    v6 = a1[1];
    if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 &= 0xFFFFFFFFFFFFFFF8;
    }

    v7 = a2[1];
    if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v7 ^ v6) > 7)
    {
      result = 0;
    }

    else
    {
      v8 = a1[2];
      if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v8 &= 0xFFFFFFFFFFFFFFF8;
      }

      v9 = a2[2];
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v9 &= 0xFFFFFFFFFFFFFFF8;
      }

      if ((v9 ^ v8) > 7)
      {
        result = 0;
      }

      else
      {
        v10 = a1[3];
        if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v10 &= 0xFFFFFFFFFFFFFFF8;
        }

        v11 = a2[3];
        if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v11 &= 0xFFFFFFFFFFFFFFF8;
        }

        if ((v11 ^ v10) > 7)
        {
          result = 0;
        }

        else
        {
          result = pxrInternal__aapl__pxrReserved__::UsdSkelTopology::operator==((a1 + 4), (a2 + 4));
          if (result)
          {
            result = pxrInternal__aapl__pxrReserved__::UsdSkelTopology::operator==((a1 + 9), (a2 + 9));
            if (result)
            {
              result = Overlay::__operatorEqualsEquals(a1 + 14, (a2 + 14));
              if (result)
              {
                result = pxrInternal__aapl__pxrReserved__::UsdSkelTopology::operator==((a1 + 19), (a2 + 19));
                if (result)
                {
                  result = Overlay::__operatorEqualsEquals(a1 + 24, (a2 + 24));
                }
              }
            }
          }
        }

        if ((v11 & 7) != 0)
        {
          atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v10 & 7) != 0)
        {
          atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens_StaticTokenType::~PxOsdOpenSubdivTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens_StaticTokenType *this)
{
  v17 = (this + 128);
  sub_29A124AB0(&v17);
  v2 = *(this + 15);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 14);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 13);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 12);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 11);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 10);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 9);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 8);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 7);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 6);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 5);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 4);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 3);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 2);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 1);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens_StaticTokenType::PxOsdOpenSubdivTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens_StaticTokenType *this)
{
  v39 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "all", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "none", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "cornersOnly", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "cornersPlus1", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "cornersPlus2", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "boundaries", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "bilinear", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "catmullClark", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "loop", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "edgeOnly", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "edgeAndCorner", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "uniform", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "chaikin", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "leftHanded", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 112, "rightHanded", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 120, "smooth", 0);
  v3 = (this + 128);
  v4 = *this;
  v23 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v24 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v25 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v26 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v27 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v28 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v29 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v30 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v31 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v32 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v33 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v34 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v35 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v36 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v37 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 15);
  v38 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  sub_29A12EF7C(v3, &v23, &v39, 0x10uLL);
  for (i = 120; i != -8; i -= 8)
  {
    v21 = *(&v23 + i);
    if ((v21 & 7) != 0)
    {
      atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AB73D60(_Unwind_Exception *a1)
{
  v3 = 120;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[15];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[14];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[13];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[12];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[11];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[10];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[9];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[8];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[7];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[6];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[5];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[4];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[3];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[2];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[1];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::GeomUtilCapsuleMeshGenerator::_GeneratePointsImpl<pxrInternal__aapl__pxrReserved__::GfVec3f>(pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase *a1, uint64_t a2, void *a3, float a4, float a5, float a6, float a7)
{
  if (a1 >= 3 && a2)
  {
    sub_29AB7421C(a1, __p, a7);
    v10 = __PAIR64__(LODWORD(a4), LODWORD(a5));
    v11 = 0uLL;
    v12 = 0.0;
    if (a4 != a5 && a6 != 0.0)
    {
      v13 = (a4 - a5) / a6;
      v14 = vmul_n_f32(__PAIR64__(LODWORD(a4), LODWORD(a5)), -v13);
      v15 = atanf(v13);
      v10 = vcvt_f32_f64(vsqrtq_f64(vaddq_f64(vcvtq_f64_f32(vmul_f32(__PAIR64__(LODWORD(a4), LODWORD(a5)), __PAIR64__(LODWORD(a4), LODWORD(a5)))), vcvtq_f64_f32(vmul_f32(v14, v14)))));
      v11 = vcvtq_f64_f32(v14);
      v12 = v15;
    }

    v16 = a6 * 0.5;
    v39 = v11.f64[0];
    v17 = v11.f64[1] - v16;
    v18 = 2 * a2;
    v19 = rint((v12 + 1.57079633) * v18 / 3.14159265);
    v20 = v19;
    if (v19 <= 1)
    {
      v20 = 1;
    }

    if (v20 >= v18 - 1)
    {
      v21 = v18 - 1;
    }

    else
    {
      v21 = v20;
    }

    v22 = v10;
    v41 = 0;
    v42 = v17 - *(&v10 + 1);
    v23 = *a3;
    v24 = a3[1];
    v25 = (a3 + (v24 >> 1));
    if (v24)
    {
      v23 = *(*v25 + v23);
    }

    v23(v25, &v41);
    if (v21 != -1)
    {
      v26 = 1;
      v27 = v21;
      do
      {
        v28 = v12 * (v26 / v21) + (1.0 - v26 / v21) * -1.57079637;
        v29 = __sincosf_stret(v28);
        sub_29AB74310(a3, __p, *(&v22 + 1) * v29.__cosval, (*(&v22 + 1) * v29.__sinval) + v17);
        ++v26;
        --v27;
      }

      while (v27);
    }

    v30 = v16 + v39;
    if (v18 != v21)
    {
      v31 = 0;
      v32 = v18 - v21;
      do
      {
        v33 = v31 / v32 * 1.57079637 + v12 * (1.0 - v31 / v32);
        v34 = __sincosf_stret(v33);
        sub_29AB74310(a3, __p, *&v22 * v34.__cosval, (*&v22 * v34.__sinval) + v30);
        ++v31;
      }

      while (v32 != v31);
    }

    v41 = 0;
    v42 = *&v22 + v30;
    v35 = *a3;
    v36 = a3[1];
    v37 = (a3 + (v36 >> 1));
    if (v36)
    {
      v35 = *(*v37 + v35);
    }

    v35(v37, &v41);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_29AB741F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AB7421C(pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase *a1@<X0>, void *a2@<X8>, float a3@<S0>)
{
  v5 = a3 * 0.0174532925;
  if (v5 <= 6.2832)
  {
    v6 = v5;
  }

  else
  {
    v6 = 6.2832;
  }

  v7 = fabs(fabsf(v5) + -6.28318548) < 0.000001;
  if (v5 >= -6.2832)
  {
    v8 = v6;
  }

  else
  {
    v8 = -6.2832;
  }

  if (v5 < -6.2832)
  {
    v7 = 1;
  }

  v9 = v5 > 6.2832 || v7;
  v10 = pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase::_ComputeNumRadialPoints(a1, v9);
  sub_29AB74D98(a2, v10);
  if (v10)
  {
    v11 = 0;
    v12 = (*a2 + 4);
    do
    {
      v13 = __sincosf_stret(v8 * (v11 / a1));
      *(v12 - 1) = v13.__cosval;
      *v12 = v13.__sinval;
      ++v11;
      v12 += 2;
    }

    while (v10 != v11);
  }
}

uint64_t sub_29AB74310(uint64_t result, float32x2_t **a2, float a3, float a4)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v7 = result;
    do
    {
      v12 = vmul_n_f32(*v4, a3);
      v13 = a4;
      v8 = *v7;
      v9 = *(v7 + 8);
      v10 = (v7 + (v9 >> 1));
      if (v9)
      {
        v8 = *(*v10 + v8);
      }

      result = v8(v10, &v12);
      ++v4;
    }

    while (v4 != v5);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::GeomUtilCapsuleMeshGenerator::_GeneratePointsImpl<pxrInternal__aapl__pxrReserved__::GfVec3d>(pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase *a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  if (a1 >= 3 && a2)
  {
    sub_29AB7463C(a1, __p, a7);
    v12 = 0.0;
    if (a4 == a5 || a6 == 0.0)
    {
      v32 = 0.0;
      v14 = 0.0;
    }

    else
    {
      v13 = (a4 - a5) / a6;
      v14 = -(v13 * a4);
      a4 = sqrt(a4 * a4 + v14 * v14);
      v32 = -(v13 * a5);
      a5 = sqrt(a5 * a5 + v32 * v32);
      v12 = atan(v13);
    }

    v15 = v14 - a6 * 0.5;
    v16 = 2 * a2;
    v17 = rint((v12 + 1.57079633) * v16 / 3.14159265);
    if (v17 <= 1)
    {
      v17 = 1;
    }

    if (v17 >= v16 - 1)
    {
      v18 = v16 - 1;
    }

    else
    {
      v18 = v17;
    }

    v33 = 0;
    v34 = 0;
    v35 = v15 - a4;
    v19 = *a3;
    v20 = a3[1];
    v21 = (a3 + (v20 >> 1));
    if (v20)
    {
      v19 = *(*v21 + v19);
    }

    v19(v21, &v33);
    if (v18 != -1)
    {
      v22 = 1;
      v23 = v18;
      do
      {
        v24 = __sincos_stret(v12 * (v22 / v18) + (1.0 - v22 / v18) * -1.57079633);
        sub_29AB74710(a3, __p, a4 * v24.__cosval, v15 + a4 * v24.__sinval);
        ++v22;
        --v23;
      }

      while (v23);
    }

    v25 = a6 * 0.5 + v32;
    if (v16 != v18)
    {
      v26 = 0;
      v27 = v16 - v18;
      do
      {
        v28 = __sincos_stret(v26 / v27 * 1.57079633 + v12 * (1.0 - v26 / v27));
        sub_29AB74710(a3, __p, a5 * v28.__cosval, v25 + a5 * v28.__sinval);
        ++v26;
      }

      while (v27 != v26);
    }

    v33 = 0;
    v34 = 0;
    v35 = v25 + a5;
    v29 = *a3;
    v30 = a3[1];
    v31 = (a3 + (v30 >> 1));
    if (v30)
    {
      v29 = *(*v31 + v29);
    }

    v29(v31, &v33);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_29AB74614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AB7463C(pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase *a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v5 = a3 * 0.0174532925;
  if (v5 <= 6.28318531)
  {
    v6 = v5;
  }

  else
  {
    v6 = 6.28318531;
  }

  v7 = fabs(fabs(v5) + -6.28318531) < 0.000001;
  if (v5 >= -6.28318531)
  {
    v8 = v6;
  }

  else
  {
    v8 = -6.28318531;
  }

  if (v5 < -6.28318531)
  {
    v7 = 1;
  }

  v9 = v5 > 6.28318531 || v7;
  v10 = pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase::_ComputeNumRadialPoints(a1, v9);
  sub_29AB74E10(a2, v10);
  if (v10)
  {
    v11 = 0;
    v12 = (*a2 + 8);
    do
    {
      v13 = __sincos_stret(v8 * (v11 / a1));
      *(v12 - 1) = v13.__cosval;
      *v12 = v13.__sinval;
      ++v11;
      v12 += 2;
    }

    while (v10 != v11);
  }
}

uint64_t sub_29AB74710(uint64_t result, float64x2_t **a2, double a3, double a4)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v7 = result;
    do
    {
      v12 = vmulq_n_f64(*v4, a3);
      v13 = a4;
      v8 = *v7;
      v9 = *(v7 + 8);
      v10 = (v7 + (v9 >> 1));
      if (v9)
      {
        v8 = *(*v10 + v8);
      }

      result = v8(v10, &v12);
      ++v4;
    }

    while (v4 != v5);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::GeomUtilCapsuleMeshGenerator::_GenerateNormalsImpl<pxrInternal__aapl__pxrReserved__::GfVec3f>(pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase *a1, uint64_t a2, uint64_t a3, float a4, float a5, float a6, float a7)
{
  if (a1 >= 3 && a2)
  {
    sub_29AB7421C(a1, __p, a7);
    v12 = 0.0;
    if (a4 != a5 && a6 != 0.0)
    {
      v12 = atanf((a4 - a5) / a6);
    }

    v13 = 2 * a2;
    v14 = rint((v12 + 1.57079633) * v13 / 3.14159265);
    v15 = v14;
    if (v14 <= 1)
    {
      v15 = 1;
    }

    if (v15 >= v13 - 1)
    {
      v16 = v13 - 1;
    }

    else
    {
      v16 = v15;
    }

    v31 = 0;
    v32 = -1082130432;
    v17 = *(a3 + 16);
    v18 = *(a3 + 24);
    v19 = (a3 + (v18 >> 1));
    if (v18)
    {
      v17 = *(*v19 + v17);
    }

    v17(v19, &v31);
    if (v16 != -1)
    {
      v20 = 1;
      v21 = v16;
      do
      {
        v22 = v12 * (v20 / v16) + (1.0 - v20 / v16) * -1.57079637;
        v23 = __sincosf_stret(v22);
        sub_29AB749E4(a3, __p, v23.__cosval, v23.__sinval);
        ++v20;
        --v21;
      }

      while (v21);
    }

    if (v13 != v16)
    {
      v24 = 0;
      v25 = v13 - v16;
      do
      {
        v26 = v24 / v25 * 1.57079637 + v12 * (1.0 - v24 / v25);
        v27 = __sincosf_stret(v26);
        sub_29AB749E4(a3, __p, v27.__cosval, v27.__sinval);
        ++v24;
      }

      while (v25 != v24);
    }

    v31 = 0;
    v32 = 1065353216;
    v28 = *(a3 + 16);
    v29 = *(a3 + 24);
    v30 = (a3 + (v29 >> 1));
    if (v29)
    {
      v28 = *(*v30 + v28);
    }

    v28(v30, &v31);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_29AB749BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AB749E4(uint64_t result, float32x2_t **a2, float a3, float a4)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v7 = result;
    do
    {
      v12 = vmul_n_f32(*v4, a3);
      v13 = a4;
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);
      v10 = (v7 + (v9 >> 1));
      if (v9)
      {
        v8 = *(*v10 + v8);
      }

      result = v8(v10, &v12);
      ++v4;
    }

    while (v4 != v5);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::GeomUtilCapsuleMeshGenerator::_GenerateNormalsImpl<pxrInternal__aapl__pxrReserved__::GfVec3d>(pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  if (a1 >= 3 && a2)
  {
    sub_29AB7463C(a1, __p, a7);
    v12 = 0.0;
    if (a4 != a5 && a6 != 0.0)
    {
      v12 = atan((a4 - a5) / a6);
    }

    v13 = 2 * a2;
    v14 = rint((v12 + 1.57079633) * v13 / 3.14159265);
    if (v14 <= 1)
    {
      v14 = 1;
    }

    if (v14 >= v13 - 1)
    {
      v15 = v13 - 1;
    }

    else
    {
      v15 = v14;
    }

    v28 = 0;
    v29 = 0;
    v30 = 0xBFF0000000000000;
    v16 = *(a3 + 16);
    v17 = *(a3 + 24);
    v18 = (a3 + (v17 >> 1));
    if (v17)
    {
      v16 = *(*v18 + v16);
    }

    v16(v18, &v28);
    if (v15 != -1)
    {
      v19 = 1;
      v20 = v15;
      do
      {
        v21 = __sincos_stret(v12 * (v19 / v15) + (1.0 - v19 / v15) * -1.57079633);
        sub_29AB74CAC(a3, __p, v21.__cosval, v21.__sinval);
        ++v19;
        --v20;
      }

      while (v20);
    }

    if (v13 != v15)
    {
      v22 = 0;
      v23 = v13 - v15;
      do
      {
        v24 = __sincos_stret(v22 / v23 * 1.57079633 + v12 * (1.0 - v22 / v23));
        sub_29AB74CAC(a3, __p, v24.__cosval, v24.__sinval);
        ++v22;
      }

      while (v23 != v22);
    }

    v28 = 0;
    v29 = 0;
    v30 = 0x3FF0000000000000;
    v25 = *(a3 + 16);
    v26 = *(a3 + 24);
    v27 = (a3 + (v26 >> 1));
    if (v26)
    {
      v25 = *(*v27 + v25);
    }

    v25(v27, &v28);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_29AB74C84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AB74CAC(uint64_t result, float64x2_t **a2, double a3, double a4)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v7 = result;
    do
    {
      v12 = vmulq_n_f64(*v4, a3);
      v13 = a4;
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);
      v10 = (v7 + (v9 >> 1));
      if (v9)
      {
        v8 = *(*v10 + v8);
      }

      result = v8(v10, &v12);
      ++v4;
    }

    while (v4 != v5);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GeomUtilCapsuleMeshGenerator::ComputeNumPoints(pxrInternal__aapl__pxrReserved__::GeomUtilCapsuleMeshGenerator *this, uint64_t a2, int a3)
{
  if (this >= 3 && a2)
  {
    return pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase::_ComputeNumCappedQuadTopologyPoints(this, 2 * a2 - 1, 1, 1, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::GeomUtilCapsuleMeshGenerator::GenerateTopology@<X0>(pxrInternal__aapl__pxrReserved__::GeomUtilCapsuleMeshGenerator *this@<X0>, uint64_t a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology *a4@<X8>)
{
  if (this >= 3 && a2)
  {
    pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase::_GenerateCappedQuadTopology(this, 2 * a2 - 1, 1, 1, a3, a4);
  }

  return pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(a4);
}

void *sub_29AB74D98(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A00C968(a1, a2);
    v4 = a1[1];
    bzero(v4, 8 * a2);
    a1[1] = &v4[8 * a2];
  }

  return a1;
}

void sub_29AB74DF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AB74E10(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A0D0518(a1, a2);
    v4 = a1[1];
    bzero(v4, 16 * a2);
    a1[1] = &v4[16 * a2];
  }

  return a1;
}

void sub_29AB74E6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::GeomUtilConeMeshGenerator::_GeneratePointsImpl<pxrInternal__aapl__pxrReserved__::GfVec3f>(pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase *a1, void *a2, float a3, float a4, float a5)
{
  if (a1 >= 3)
  {
    sub_29AB7421C(a1, &v18, a5);
    v16 = 0;
    v17 = -(a4 * 0.5);
    v8 = *a2;
    v9 = a2[1];
    v10 = (a2 + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    v8(v10, &v16);
    sub_29AB74310(a2, &v18, a3, -(a4 * 0.5));
    sub_29AB74310(a2, &v18, a3, -(a4 * 0.5));
    v16 = 0;
    v17 = a4 * 0.5;
    v11 = v18;
    if (v19 != v18)
    {
      v12 = 0;
      do
      {
        v13 = *a2;
        v14 = a2[1];
        v15 = (a2 + (v14 >> 1));
        if (v14)
        {
          v13 = *(*v15 + v13);
        }

        v13(v15, &v16);
        ++v12;
        v11 = v18;
      }

      while (v12 < v19 - v18);
    }

    if (v11)
    {
      v19 = v11;
      operator delete(v11);
    }
  }
}

void sub_29AB74FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::GeomUtilConeMeshGenerator::_GeneratePointsImpl<pxrInternal__aapl__pxrReserved__::GfVec3d>(pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase *a1, void *a2, double a3, double a4, double a5)
{
  if (a1 >= 3)
  {
    sub_29AB7463C(a1, &v19, a5);
    v16 = 0;
    v17 = 0;
    v18 = -(a4 * 0.5);
    v8 = *a2;
    v9 = a2[1];
    v10 = (a2 + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    v8(v10, &v16);
    sub_29AB74710(a2, &v19, a3, -(a4 * 0.5));
    sub_29AB74710(a2, &v19, a3, -(a4 * 0.5));
    v16 = 0;
    v17 = 0;
    v18 = a4 * 0.5;
    v11 = v19;
    if (v20 != v19)
    {
      v12 = 0;
      do
      {
        v13 = *a2;
        v14 = a2[1];
        v15 = (a2 + (v14 >> 1));
        if (v14)
        {
          v13 = *(*v15 + v13);
        }

        v13(v15, &v16);
        ++v12;
        v11 = v19;
      }

      while (v12 < v20 - v19);
    }

    if (v11)
    {
      v20 = v11;
      operator delete(v11);
    }
  }
}

void sub_29AB750DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::GeomUtilConeMeshGenerator::_GenerateNormalsImpl<pxrInternal__aapl__pxrReserved__::GfVec3f>(pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase *a1, uint64_t a2, float a3, float a4, float a5)
{
  if (a1 >= 3)
  {
    sub_29AB7421C(a1, &__p, a5);
    if (a4 == 0.0)
    {
      v10 = 1.0;
      v9 = 0.0;
    }

    else
    {
      v8 = a3 / a4;
      v9 = 1.0 / sqrt((v8 * v8) + 1.0);
      v10 = v8 * v9;
    }

    v19 = -1082130432;
    v18 = 0;
    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
    v13 = (a2 + (v12 >> 1));
    if (v12)
    {
      v11 = *(*v13 + v11);
    }

    v11(v13, &v18);
    if (v21 != __p)
    {
      v14 = 0;
      do
      {
        v15 = *(a2 + 16);
        v16 = *(a2 + 24);
        v17 = (a2 + (v16 >> 1));
        if (v16)
        {
          v15 = *(*v17 + v15);
        }

        v15(v17, &v18);
        ++v14;
      }

      while (v14 < (v21 - __p) >> 3);
    }

    sub_29AB749E4(a2, &__p, v9, v10);
    sub_29AB749E4(a2, &__p, v9, v10);
    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }
  }
}

void sub_29AB7523C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::GeomUtilConeMeshGenerator::_GenerateNormalsImpl<pxrInternal__aapl__pxrReserved__::GfVec3d>(pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase *a1, uint64_t a2, double a3, double a4, double a5)
{
  if (a1 >= 3)
  {
    sub_29AB7463C(a1, &__p, a5);
    if (a4 == 0.0)
    {
      v10 = 1.0;
      v9 = 0.0;
    }

    else
    {
      v8 = a3 / a4;
      v9 = 1.0 / sqrt(v8 * v8 + 1.0);
      v10 = v8 * v9;
    }

    v18 = xmmword_29B6C57C8;
    v19 = 0xBFF0000000000000;
    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
    v13 = (a2 + (v12 >> 1));
    if (v12)
    {
      v11 = *(*v13 + v11);
    }

    v11(v13, &v18);
    if (v21 != __p)
    {
      v14 = 0;
      do
      {
        v15 = *(a2 + 16);
        v16 = *(a2 + 24);
        v17 = (a2 + (v16 >> 1));
        if (v16)
        {
          v15 = *(*v17 + v15);
        }

        v15(v17, &v18);
        ++v14;
      }

      while (v14 < (v21 - __p) >> 4);
    }

    sub_29AB74CAC(a2, &__p, v9, v10);
    sub_29AB74CAC(a2, &__p, v9, v10);
    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }
  }
}

void sub_29AB7539C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::GeomUtilConeMeshGenerator::ComputeNumPoints(pxrInternal__aapl__pxrReserved__::GeomUtilConeMeshGenerator *this, int a2)
{
  if (this >= 3)
  {
    return pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase::_ComputeNumCappedQuadTopologyPoints(this, 1, 2, 0, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::GeomUtilConeMeshGenerator::GenerateTopology@<X0>(pxrInternal__aapl__pxrReserved__::GeomUtilConeMeshGenerator *this@<X0>, int a2@<W1>, pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology *a3@<X8>)
{
  if (this > 2)
  {
    pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase::_GenerateCappedQuadTopology(this, 1, 2, 0, a2, a3);
  }

  return pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(a3);
}

uint64_t pxrInternal__aapl__pxrReserved__::GeomUtilCuboidMeshGenerator::_GeneratePointsImpl<pxrInternal__aapl__pxrReserved__::GfVec3f>(uint64_t a1, float a2, float a3, float a4)
{
  v5 = a2 * 0.5;
  v6 = a3 * 0.5;
  v7 = a4 * 0.5;
  v34 = a2 * 0.5;
  v35 = a3 * 0.5;
  v36 = a4 * 0.5;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = (a1 + (v9 >> 1));
  if (v9)
  {
    v8 = *(*v10 + v8);
  }

  v8(v10, &v34);
  v34 = -v5;
  v35 = v6;
  v36 = v7;
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = (a1 + (v12 >> 1));
  if (v12)
  {
    v11 = *(*v13 + v11);
  }

  v11(v13, &v34);
  v34 = -v5;
  v35 = -v6;
  v36 = v7;
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = (a1 + (v15 >> 1));
  if (v15)
  {
    v14 = *(*v16 + v14);
  }

  v14(v16, &v34);
  v34 = v5;
  v35 = -v6;
  v36 = v7;
  v17 = *a1;
  v18 = *(a1 + 8);
  v19 = (a1 + (v18 >> 1));
  if (v18)
  {
    v17 = *(*v19 + v17);
  }

  v17(v19, &v34);
  v20 = -v7;
  v34 = -v5;
  v35 = -v6;
  v36 = v20;
  v21 = *a1;
  v22 = *(a1 + 8);
  v23 = (a1 + (v22 >> 1));
  if (v22)
  {
    v21 = *(*v23 + v21);
  }

  v21(v23, &v34);
  v34 = -v5;
  v35 = v6;
  v36 = v20;
  v24 = *a1;
  v25 = *(a1 + 8);
  v26 = (a1 + (v25 >> 1));
  if (v25)
  {
    v24 = *(*v26 + v24);
  }

  v24(v26, &v34);
  v34 = v5;
  v35 = v6;
  v36 = v20;
  v27 = *a1;
  v28 = *(a1 + 8);
  v29 = (a1 + (v28 >> 1));
  if (v28)
  {
    v27 = *(*v29 + v27);
  }

  v27(v29, &v34);
  v34 = v5;
  v35 = -v6;
  v36 = v20;
  v30 = *a1;
  v31 = *(a1 + 8);
  v32 = (a1 + (v31 >> 1));
  if (v31)
  {
    v30 = *(*v32 + v30);
  }

  return (v30)(v32, &v34);
}

uint64_t pxrInternal__aapl__pxrReserved__::GeomUtilCuboidMeshGenerator::_GeneratePointsImpl<pxrInternal__aapl__pxrReserved__::GfVec3d>(uint64_t a1, double a2, double a3, double a4)
{
  v5 = a2 * 0.5;
  v6 = a3 * 0.5;
  v7 = a4 * 0.5;
  v34 = a2 * 0.5;
  v35 = a3 * 0.5;
  v36 = a4 * 0.5;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = (a1 + (v9 >> 1));
  if (v9)
  {
    v8 = *(*v10 + v8);
  }

  v8(v10, &v34);
  v34 = -v5;
  v35 = v6;
  v36 = v7;
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = (a1 + (v12 >> 1));
  if (v12)
  {
    v11 = *(*v13 + v11);
  }

  v11(v13, &v34);
  v34 = -v5;
  v35 = -v6;
  v36 = v7;
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = (a1 + (v15 >> 1));
  if (v15)
  {
    v14 = *(*v16 + v14);
  }

  v14(v16, &v34);
  v34 = v5;
  v35 = -v6;
  v36 = v7;
  v17 = *a1;
  v18 = *(a1 + 8);
  v19 = (a1 + (v18 >> 1));
  if (v18)
  {
    v17 = *(*v19 + v17);
  }

  v17(v19, &v34);
  v20 = -v7;
  v34 = -v5;
  v35 = -v6;
  v36 = v20;
  v21 = *a1;
  v22 = *(a1 + 8);
  v23 = (a1 + (v22 >> 1));
  if (v22)
  {
    v21 = *(*v23 + v21);
  }

  v21(v23, &v34);
  v34 = -v5;
  v35 = v6;
  v36 = v20;
  v24 = *a1;
  v25 = *(a1 + 8);
  v26 = (a1 + (v25 >> 1));
  if (v25)
  {
    v24 = *(*v26 + v24);
  }

  v24(v26, &v34);
  v34 = v5;
  v35 = v6;
  v36 = v20;
  v27 = *a1;
  v28 = *(a1 + 8);
  v29 = (a1 + (v28 >> 1));
  if (v28)
  {
    v27 = *(*v29 + v27);
  }

  v27(v29, &v34);
  v34 = v5;
  v35 = -v6;
  v36 = v20;
  v30 = *a1;
  v31 = *(a1 + 8);
  v32 = (a1 + (v31 >> 1));
  if (v31)
  {
    v30 = *(*v32 + v30);
  }

  return (v30)(v32, &v34);
}

uint64_t pxrInternal__aapl__pxrReserved__::GeomUtilCuboidMeshGenerator::_GenerateNormalsImpl<pxrInternal__aapl__pxrReserved__::GfVec3f>(uint64_t a1)
{
  v21 = 0;
  v22 = 1065353216;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = (a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4, &v21);
  v21 = 0;
  v22 = -1082130432;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = (a1 + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  v5(v7, &v21);
  v21 = 0x3F80000000000000;
  v22 = 0;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = (a1 + (v9 >> 1));
  if (v9)
  {
    v8 = *(*v10 + v8);
  }

  v8(v10, &v21);
  v21 = 0xBF80000000000000;
  v22 = 0;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = (a1 + (v12 >> 1));
  if (v12)
  {
    v11 = *(*v13 + v11);
  }

  v11(v13, &v21);
  v21 = 1065353216;
  v22 = 0;
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = (a1 + (v15 >> 1));
  if (v15)
  {
    v14 = *(*v16 + v14);
  }

  v14(v16, &v21);
  v22 = 0;
  v21 = 3212836864;
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  v19 = (a1 + (v18 >> 1));
  if (v18)
  {
    v17 = *(*v19 + v17);
  }

  return v17(v19, &v21);
}

uint64_t pxrInternal__aapl__pxrReserved__::GeomUtilCuboidMeshGenerator::_GenerateNormalsImpl<pxrInternal__aapl__pxrReserved__::GfVec3d>(uint64_t a1)
{
  v21 = 0uLL;
  v22 = 0x3FF0000000000000;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = (a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4, &v21);
  v21 = 0uLL;
  v22 = 0xBFF0000000000000;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = (a1 + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  v5(v7, &v21);
  v21 = xmmword_29B432590;
  v22 = 0;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = (a1 + (v9 >> 1));
  if (v9)
  {
    v8 = *(*v10 + v8);
  }

  v8(v10, &v21);
  v21 = xmmword_29B4C4F00;
  v22 = 0;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = (a1 + (v12 >> 1));
  if (v12)
  {
    v11 = *(*v13 + v11);
  }

  v11(v13, &v21);
  v22 = 0;
  v21 = 0x3FF0000000000000uLL;
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = (a1 + (v15 >> 1));
  if (v15)
  {
    v14 = *(*v16 + v14);
  }

  v14(v16, &v21);
  v22 = 0;
  v21 = 0xBFF0000000000000;
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  v19 = (a1 + (v18 >> 1));
  if (v18)
  {
    v17 = *(*v19 + v17);
  }

  return v17(v19, &v21);
}

uint64_t pxrInternal__aapl__pxrReserved__::GeomUtilCuboidMeshGenerator::GenerateTopology@<X0>(uint64_t a1@<X8>)
{
  v12 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1748610, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748610))
  {
    *&v7 = 0x400000004;
    v6 = xmmword_29B6C57E8;
    sub_29A9096F4(&unk_2A17485E8, &v6, 6);
    __cxa_atexit(sub_29AB75C88, &unk_2A17485E8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748610);
  }

  if ((atomic_load_explicit(&qword_2A1748640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748640))
  {
    v8 = xmmword_29B6C5820;
    v9 = unk_29B6C5830;
    v10 = xmmword_29B6C5840;
    v11 = unk_29B6C5850;
    v6 = xmmword_29B6C5800;
    v7 = unk_29B6C5810;
    sub_29A9096F4(&unk_2A1748618, &v6, 24);
    __cxa_atexit(sub_29AB75C88, &unk_2A1748618, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748640);
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v3)
  {
    v3 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v4)
  {
    v4 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  return pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(a1, v3 + 48, v4 + 112, &unk_2A17485E8, &unk_2A1748618);
}

void pxrInternal__aapl__pxrReserved__::GeomUtilCylinderMeshGenerator::_GeneratePointsImpl<pxrInternal__aapl__pxrReserved__::GfVec3f>(pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase *a1, void *a2, float a3, float a4, float a5, float a6)
{
  if (a1 >= 3)
  {
    sub_29AB7421C(a1, __p, a6);
    v17 = 0;
    v18 = -(a5 * 0.5);
    v10 = *a2;
    v11 = a2[1];
    v12 = (a2 + (v11 >> 1));
    if (v11)
    {
      v10 = *(*v12 + v10);
    }

    v10(v12, &v17);
    sub_29AB74310(a2, __p, a3, -(a5 * 0.5));
    sub_29AB74310(a2, __p, a3, -(a5 * 0.5));
    v13 = a5 * 0.5;
    sub_29AB74310(a2, __p, a4, v13);
    sub_29AB74310(a2, __p, a4, v13);
    v17 = 0;
    v18 = v13;
    v14 = *a2;
    v15 = a2[1];
    v16 = (a2 + (v15 >> 1));
    if (v15)
    {
      v14 = *(*v16 + v14);
    }

    v14(v16, &v17);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_29AB75DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::GeomUtilCylinderMeshGenerator::_GeneratePointsImpl<pxrInternal__aapl__pxrReserved__::GfVec3d>(pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase *a1, void *a2, double a3, double a4, double a5, double a6)
{
  if (a1 >= 3)
  {
    sub_29AB7463C(a1, __p, a6);
    v17 = 0;
    v18 = 0;
    v19 = -(a5 * 0.5);
    v10 = *a2;
    v11 = a2[1];
    v12 = (a2 + (v11 >> 1));
    if (v11)
    {
      v10 = *(*v12 + v10);
    }

    v10(v12, &v17);
    sub_29AB74710(a2, __p, a3, -(a5 * 0.5));
    sub_29AB74710(a2, __p, a3, -(a5 * 0.5));
    v13 = a5 * 0.5;
    sub_29AB74710(a2, __p, a4, v13);
    sub_29AB74710(a2, __p, a4, v13);
    v17 = 0;
    v18 = 0;
    v19 = v13;
    v14 = *a2;
    v15 = a2[1];
    v16 = (a2 + (v15 >> 1));
    if (v15)
    {
      v14 = *(*v16 + v14);
    }

    v14(v16, &v17);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_29AB75F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::GeomUtilCylinderMeshGenerator::_GenerateNormalsImpl<pxrInternal__aapl__pxrReserved__::GfVec3f>(pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase *a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  if (a1 >= 3)
  {
    sub_29AB7421C(a1, &__p, a6);
    if (a5 == 0.0)
    {
      if (a3 < a4)
      {
        v12 = -1.0;
      }

      else
      {
        v12 = 1.0;
      }

      v11 = 0.0;
    }

    else
    {
      v10 = (a3 - a4) / a5;
      v11 = 1.0 / sqrt((v10 * v10) + 1.0);
      v12 = v10 * v11;
    }

    v30 = -1082130432;
    v29 = 0;
    v28 = 1065353216;
    v27 = 0;
    v13 = *(a2 + 16);
    v14 = *(a2 + 24);
    v15 = (a2 + (v14 >> 1));
    if (v14)
    {
      v13 = *(*v15 + v13);
    }

    v13(v15, &v29);
    if (v32 != __p)
    {
      v16 = 0;
      do
      {
        v17 = *(a2 + 16);
        v18 = *(a2 + 24);
        v19 = (a2 + (v18 >> 1));
        if (v18)
        {
          v17 = *(*v19 + v17);
        }

        v17(v19, &v29);
        ++v16;
      }

      while (v16 < (v32 - __p) >> 3);
    }

    sub_29AB749E4(a2, &__p, v11, v12);
    sub_29AB749E4(a2, &__p, v11, v12);
    if (v32 != __p)
    {
      v20 = 0;
      do
      {
        v21 = *(a2 + 16);
        v22 = *(a2 + 24);
        v23 = (a2 + (v22 >> 1));
        if (v22)
        {
          v21 = *(*v23 + v21);
        }

        v21(v23, &v27);
        ++v20;
      }

      while (v20 < (v32 - __p) >> 3);
    }

    v24 = *(a2 + 16);
    v25 = *(a2 + 24);
    v26 = (a2 + (v25 >> 1));
    if (v25)
    {
      v24 = *(*v26 + v24);
    }

    v24(v26, &v27);
    if (__p)
    {
      v32 = __p;
      operator delete(__p);
    }
  }
}

void sub_29AB7612C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::GeomUtilCylinderMeshGenerator::_GenerateNormalsImpl<pxrInternal__aapl__pxrReserved__::GfVec3d>(pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if (a1 >= 3)
  {
    sub_29AB7463C(a1, &__p, a6);
    if (a5 == 0.0)
    {
      if (a3 < a4)
      {
        v12 = -1.0;
      }

      else
      {
        v12 = 1.0;
      }

      v11 = 0.0;
    }

    else
    {
      v10 = (a3 - a4) / a5;
      v11 = 1.0 / sqrt(v10 * v10 + 1.0);
      v12 = v10 * v11;
    }

    v29 = xmmword_29B6C5860;
    v30 = 0xBFF0000000000000;
    v27 = xmmword_29B6C5878;
    v28 = 0x3FF0000000000000;
    v13 = *(a2 + 16);
    v14 = *(a2 + 24);
    v15 = (a2 + (v14 >> 1));
    if (v14)
    {
      v13 = *(*v15 + v13);
    }

    v13(v15, &v29);
    if (v32 != __p)
    {
      v16 = 0;
      do
      {
        v17 = *(a2 + 16);
        v18 = *(a2 + 24);
        v19 = (a2 + (v18 >> 1));
        if (v18)
        {
          v17 = *(*v19 + v17);
        }

        v17(v19, &v29);
        ++v16;
      }

      while (v16 < (v32 - __p) >> 4);
    }

    sub_29AB74CAC(a2, &__p, v11, v12);
    sub_29AB74CAC(a2, &__p, v11, v12);
    if (v32 != __p)
    {
      v20 = 0;
      do
      {
        v21 = *(a2 + 16);
        v22 = *(a2 + 24);
        v23 = (a2 + (v22 >> 1));
        if (v22)
        {
          v21 = *(*v23 + v21);
        }

        v21(v23, &v27);
        ++v20;
      }

      while (v20 < (v32 - __p) >> 4);
    }

    v24 = *(a2 + 16);
    v25 = *(a2 + 24);
    v26 = (a2 + (v25 >> 1));
    if (v25)
    {
      v24 = *(*v26 + v24);
    }

    v24(v26, &v27);
    if (__p)
    {
      v32 = __p;
      operator delete(__p);
    }
  }
}

void sub_29AB76338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::GeomUtilCylinderMeshGenerator::ComputeNumPoints(pxrInternal__aapl__pxrReserved__::GeomUtilCylinderMeshGenerator *this, int a2)
{
  if (this >= 3)
  {
    return pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase::_ComputeNumCappedQuadTopologyPoints(this, 1, 2, 2, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::GeomUtilCylinderMeshGenerator::GenerateTopology@<X0>(pxrInternal__aapl__pxrReserved__::GeomUtilCylinderMeshGenerator *this@<X0>, int a2@<W1>, pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology *a3@<X8>)
{
  if (this > 2)
  {
    pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase::_GenerateCappedQuadTopology(this, 1, 2, 2, a2, a3);
  }

  return pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(a3);
}

void pxrInternal__aapl__pxrReserved__::GeomUtilDiskMeshGenerator::_GeneratePointsImpl<pxrInternal__aapl__pxrReserved__::GfVec3f>(pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase *a1, void *a2, float a3, float a4)
{
  if (a1 >= 3)
  {
    sub_29AB7421C(a1, __p, a4);
    sub_29AB74310(a2, __p, a3, 0.0);
    v9 = 0;
    v10 = 0;
    v6 = *a2;
    v7 = a2[1];
    v8 = (a2 + (v7 >> 1));
    if (v7)
    {
      v6 = *(*v8 + v6);
    }

    v6(v8, &v9);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_29AB76440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::GeomUtilDiskMeshGenerator::_GeneratePointsImpl<pxrInternal__aapl__pxrReserved__::GfVec3d>(pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase *a1, void *a2, double a3, double a4)
{
  if (a1 >= 3)
  {
    sub_29AB7463C(a1, __p, a4);
    sub_29AB74710(a2, __p, a3, 0.0);
    memset(v9, 0, sizeof(v9));
    v6 = *a2;
    v7 = a2[1];
    v8 = (a2 + (v7 >> 1));
    if (v7)
    {
      v6 = *(*v8 + v6);
    }

    v6(v8, v9);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_29AB764FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::GeomUtilDiskMeshGenerator::_GenerateNormalsImpl<pxrInternal__aapl__pxrReserved__::GfVec3f>(uint64_t a1)
{
  v5 = 0;
  v6 = 1065353216;
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = (a1 + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3, &v5);
}

uint64_t pxrInternal__aapl__pxrReserved__::GeomUtilDiskMeshGenerator::_GenerateNormalsImpl<pxrInternal__aapl__pxrReserved__::GfVec3d>(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  v5[2] = 0x3FF0000000000000;
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = (a1 + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3, v5);
}

uint64_t pxrInternal__aapl__pxrReserved__::GeomUtilDiskMeshGenerator::ComputeNumPoints(pxrInternal__aapl__pxrReserved__::GeomUtilDiskMeshGenerator *this, int a2)
{
  if (this >= 3)
  {
    return pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase::_ComputeNumCappedQuadTopologyPoints(this, 0, 0, 2, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::GeomUtilDiskMeshGenerator::GenerateTopology@<X0>(pxrInternal__aapl__pxrReserved__::GeomUtilDiskMeshGenerator *this@<X0>, int a2@<W1>, pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology *a3@<X8>)
{
  if (this > 2)
  {
    pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase::_GenerateCappedQuadTopology(this, 0, 0, 2, a2, a3);
  }

  return pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(a3);
}

void pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase::_GenerateCappedQuadTopology(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v12 = a4 != 0;
  if (a3)
  {
    ++v12;
  }

  v13 = v12 * a1;
  v14 = a2 * a1;
  sub_29A19D6E4(v40, v12 * a1 + a2 * a1);
  sub_29A19D6E4(v38, 3 * v13 + 4 * v14);
  sub_29A19DBEC(v40);
  v15 = v41;
  sub_29A19DBEC(v38);
  v16 = a5 ^ 1u;
  v17 = v16 + a1;
  v18 = v39;
  if (a3)
  {
    if (a1)
    {
      v19 = 1;
      v20 = a1;
      do
      {
        *v15++ = 3;
        *v18 = v19 % v17 + 1;
        v18[1] = v19;
        v21 = v18 + 3;
        v18[2] = 0;
        ++v19;
        v18 += 3;
        --v20;
      }

      while (v20);
    }

    else
    {
      v21 = v39;
    }

    if (a3 == 2)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = 1;
    }

    v18 = v21;
    if (a2)
    {
LABEL_15:
      v24 = 0;
      v25 = v22 + a1 + v16;
      v26 = v16 + a1;
      v23 = v22;
      do
      {
        if (a1)
        {
          v27 = 1;
          v28 = a1;
          do
          {
            *v15++ = 4;
            v29 = v27 % v17 + v23;
            *v18 = v22 + v27 - 1;
            v18[1] = v29;
            v30 = v18 + 4;
            v18[2] = v29 + v17;
            v18[3] = v25 + v27++ - 1;
            v18 += 4;
            --v28;
          }

          while (v28);
          v18 = v30;
        }

        v23 += v17;
        ++v24;
        v25 += v26;
        v22 += v26;
      }

      while (v24 != a2);
LABEL_21:
      if (a4)
      {
        v31 = a4 != 2 || a2 == 0;
        v32 = v31 ? 0 : v17;
        if (a1)
        {
          v33 = 0;
          v34 = v23 + v32;
          do
          {
            v15[v33] = 3;
            v35 = v34 + v33++;
            *v18 = v35;
            v18[1] = v33 % v17 + v34;
            v18[2] = v34 + v17;
            v18 += 3;
          }

          while (a1 != v33);
        }
      }

      v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v36)
      {
        v36 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v37)
      {
        v37 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(a6, v36 + 56, v37 + 112, v40, v38);
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }
  }

  else
  {
    v22 = 0;
    if (a2)
    {
      goto LABEL_15;
    }
  }

  v23 = v22;
  goto LABEL_21;
}

uint64_t pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase::_ComputeNumCappedQuadTopologyPoints(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v5 = (a5 ^ 1u) + a1;
  v6 = v5 + v5 * a2;
  if (a3 == 2)
  {
    v7 = (a5 ^ 1u) + a1;
  }

  else
  {
    v7 = 0;
  }

  v8 = v6 + v7;
  if (a3)
  {
    v6 = v8 + 1;
  }

  if (a4 != 2 || a2 == 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = v5 + 1;
  }

  v11 = v10 + v6;
  if (a4)
  {
    return v11;
  }

  else
  {
    return v6;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::GeomUtilPlaneMeshGenerator::_GeneratePointsImpl<pxrInternal__aapl__pxrReserved__::GfVec3f>(uint64_t a1, float a2, float a3)
{
  v4 = a2 * 0.5;
  v5 = a3 * 0.5;
  v20 = a2 * 0.5;
  v21 = a3 * 0.5;
  v22 = 0;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = (a1 + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v20);
  v20 = -v4;
  v21 = v5;
  v22 = 0;
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = (a1 + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  v9(v11, &v20);
  v12 = -v5;
  v20 = -v4;
  v21 = v12;
  v22 = 0;
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = (a1 + (v14 >> 1));
  if (v14)
  {
    v13 = *(*v15 + v13);
  }

  v13(v15, &v20);
  v20 = v4;
  v21 = v12;
  v22 = 0;
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = (a1 + (v17 >> 1));
  if (v17)
  {
    v16 = *(*v18 + v16);
  }

  return (v16)(v18, &v20);
}

uint64_t pxrInternal__aapl__pxrReserved__::GeomUtilPlaneMeshGenerator::_GeneratePointsImpl<pxrInternal__aapl__pxrReserved__::GfVec3d>(uint64_t a1, double a2, double a3)
{
  v4 = a2 * 0.5;
  v5 = a3 * 0.5;
  v20 = a2 * 0.5;
  v21 = a3 * 0.5;
  v22 = 0;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = (a1 + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v20);
  v20 = -v4;
  v21 = v5;
  v22 = 0;
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = (a1 + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  v9(v11, &v20);
  v12 = -v5;
  v20 = -v4;
  v21 = v12;
  v22 = 0;
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = (a1 + (v14 >> 1));
  if (v14)
  {
    v13 = *(*v15 + v13);
  }

  v13(v15, &v20);
  v20 = v4;
  v21 = v12;
  v22 = 0;
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = (a1 + (v17 >> 1));
  if (v17)
  {
    v16 = *(*v18 + v16);
  }

  return (v16)(v18, &v20);
}

uint64_t pxrInternal__aapl__pxrReserved__::GeomUtilPlaneMeshGenerator::_GenerateNormalsImpl<pxrInternal__aapl__pxrReserved__::GfVec3f>(uint64_t a1)
{
  v5 = 0;
  v6 = 1065353216;
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = (a1 + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3, &v5);
}

uint64_t pxrInternal__aapl__pxrReserved__::GeomUtilPlaneMeshGenerator::_GenerateNormalsImpl<pxrInternal__aapl__pxrReserved__::GfVec3d>(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  v5[2] = 0x3FF0000000000000;
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = (a1 + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3, v5);
}

uint64_t pxrInternal__aapl__pxrReserved__::GeomUtilPlaneMeshGenerator::GenerateTopology@<X0>(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1748670, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748670))
  {
    LODWORD(v6) = 4;
    sub_29A9096F4(&unk_2A1748648, &v6, 1);
    __cxa_atexit(sub_29AB75C88, &unk_2A1748648, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748670);
  }

  if ((atomic_load_explicit(&qword_2A17486A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17486A0))
  {
    v6 = xmmword_29B434060;
    sub_29A9096F4(&unk_2A1748678, &v6, 4);
    __cxa_atexit(sub_29AB75C88, &unk_2A1748678, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17486A0);
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v3)
  {
    v3 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v4)
  {
    v4 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  return pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(a1, v3 + 48, v4 + 112, &unk_2A1748648, &unk_2A1748678);
}

void pxrInternal__aapl__pxrReserved__::GeomUtilSphereMeshGenerator::_GeneratePointsImpl<pxrInternal__aapl__pxrReserved__::GfVec3f>(pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase *a1, unint64_t a2, void *a3, float a4, float a5)
{
  if (a1 >= 3 && a2 >= 2)
  {
    sub_29AB7421C(a1, __p, a5);
    v17 = 0;
    v18 = -a4;
    v8 = *a3;
    v9 = a3[1];
    v10 = (a3 + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    v8(v10, &v17);
    v11 = 1;
    do
    {
      v12 = ((v11 / a2) + -0.5) * 3.14159265;
      v13 = __sincosf_stret(v12);
      sub_29AB74310(a3, __p, v13.__cosval * a4, v13.__sinval * a4);
      ++v11;
    }

    while (a2 != v11);
    v17 = 0;
    v18 = a4;
    v14 = *a3;
    v15 = a3[1];
    v16 = (a3 + (v15 >> 1));
    if (v15)
    {
      v14 = *(*v16 + v14);
    }

    v14(v16, &v17);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_29AB76E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::GeomUtilSphereMeshGenerator::_GeneratePointsImpl<pxrInternal__aapl__pxrReserved__::GfVec3d>(pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase *a1, unint64_t a2, void *a3, double a4, double a5)
{
  if (a1 >= 3 && a2 >= 2)
  {
    sub_29AB7463C(a1, __p, a5);
    v16 = 0;
    v17 = 0;
    v18 = -a4;
    v8 = *a3;
    v9 = a3[1];
    v10 = (a3 + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    v8(v10, &v16);
    v11 = 1;
    do
    {
      v12 = __sincos_stret((v11 / a2 + -0.5) * 3.14159265);
      sub_29AB74710(a3, __p, v12.__cosval * a4, v12.__sinval * a4);
      ++v11;
    }

    while (a2 != v11);
    v16 = 0;
    v17 = 0;
    v18 = a4;
    v13 = *a3;
    v14 = a3[1];
    v15 = (a3 + (v14 >> 1));
    if (v14)
    {
      v13 = *(*v15 + v13);
    }

    v13(v15, &v16);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_29AB76FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::GeomUtilSphereMeshGenerator::_GenerateNormalsImpl<pxrInternal__aapl__pxrReserved__::GfVec3f>(pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase *a1, unint64_t a2, uint64_t a3, float a4)
{
  if (a1 >= 3 && a2 >= 2)
  {
    sub_29AB7421C(a1, __p, a4);
    v15 = 0;
    v16 = -1082130432;
    v6 = *(a3 + 16);
    v7 = *(a3 + 24);
    v8 = (a3 + (v7 >> 1));
    if (v7)
    {
      v6 = *(*v8 + v6);
    }

    v6(v8, &v15);
    v9 = 1;
    do
    {
      v10 = ((v9 / a2) + -0.5) * 3.14159265;
      v11 = __sincosf_stret(v10);
      sub_29AB749E4(a3, __p, v11.__cosval, v11.__sinval);
      ++v9;
    }

    while (a2 != v9);
    v15 = 0;
    v16 = 1065353216;
    v12 = *(a3 + 16);
    v13 = *(a3 + 24);
    v14 = (a3 + (v13 >> 1));
    if (v13)
    {
      v12 = *(*v14 + v12);
    }

    v12(v14, &v15);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_29AB7711C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::GeomUtilSphereMeshGenerator::_GenerateNormalsImpl<pxrInternal__aapl__pxrReserved__::GfVec3d>(pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase *a1, unint64_t a2, uint64_t a3, double a4)
{
  if (a1 >= 3 && a2 >= 2)
  {
    sub_29AB7463C(a1, __p, a4);
    v14 = 0;
    v15 = 0;
    v16 = 0xBFF0000000000000;
    v6 = *(a3 + 16);
    v7 = *(a3 + 24);
    v8 = (a3 + (v7 >> 1));
    if (v7)
    {
      v6 = *(*v8 + v6);
    }

    v6(v8, &v14);
    v9 = 1;
    do
    {
      v10 = __sincos_stret((v9 / a2 + -0.5) * 3.14159265);
      sub_29AB74CAC(a3, __p, v10.__cosval, v10.__sinval);
      ++v9;
    }

    while (a2 != v9);
    v14 = 0;
    v15 = 0;
    v16 = 0x3FF0000000000000;
    v11 = *(a3 + 16);
    v12 = *(a3 + 24);
    v13 = (a3 + (v12 >> 1));
    if (v12)
    {
      v11 = *(*v13 + v11);
    }

    v11(v13, &v14);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_29AB77260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::GeomUtilSphereMeshGenerator::ComputeNumPoints(pxrInternal__aapl__pxrReserved__::GeomUtilSphereMeshGenerator *this, unint64_t a2, int a3)
{
  if (this >= 3 && (v3 = a2 >= 2, v4 = a2 - 2, v3))
  {
    return pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase::_ComputeNumCappedQuadTopologyPoints(this, v4, 1, 1, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::GeomUtilSphereMeshGenerator::GenerateTopology@<X0>(pxrInternal__aapl__pxrReserved__::GeomUtilSphereMeshGenerator *this@<X0>, unint64_t a2@<X1>, int a3@<W2>, pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology *a4@<X8>)
{
  if (this >= 3 && a2 > 1)
  {
    pxrInternal__aapl__pxrReserved__::GeomUtilMeshGeneratorBase::_GenerateCappedQuadTopology(this, a2 - 2, 1, 1, a3, a4);
  }

  return pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(a4);
}

void pxrInternal__aapl__pxrReserved__::GeomUtilInterpolationTokens_StaticTokenType::~GeomUtilInterpolationTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::GeomUtilInterpolationTokens_StaticTokenType *this)
{
  v4 = (this + 24);
  sub_29A124AB0(&v4);
  v2 = *(this + 2);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 1);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::GeomUtilInterpolationTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::GeomUtilInterpolationTokens_StaticTokenType::GeomUtilInterpolationTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::GeomUtilInterpolationTokens_StaticTokenType *this)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "constant", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "uniform", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "vertex", 0);
  v3 = (this + 24);
  v4 = *this;
  v13 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v5;
    }
  }

  v6 = *(this + 1);
  v14 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v7;
    }
  }

  v8 = *(this + 2);
  v15 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v9;
    }
  }

  *v3 = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  sub_29A12EF7C(v3, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v11 = *(&v13 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AB774A4(_Unwind_Exception *a1)
{
  v3 = 16;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[2];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_29AB77524()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20725A0, 0, "GLF_DEBUG_CONTEXT_CAPS", 0);
  v0 = sub_29AB77654();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v0, "GLF_DEBUG_CONTEXT_CAPS", "Glf report when context caps are initialized and dump contents");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20725A0, 1, "GLF_DEBUG_ERROR_STACKTRACE", 0);
  v1 = sub_29AB77654();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v1 + 4, "GLF_DEBUG_ERROR_STACKTRACE", "Glf dump stack trace on GL error");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20725A0, 2, "GLF_DEBUG_SHADOW_TEXTURES", 0);
  v2 = sub_29AB77654();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v2 + 8, "GLF_DEBUG_SHADOW_TEXTURES", "Glf logging for shadow map management");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20725A0, 3, "GLF_DEBUG_DUMP_SHADOW_TEXTURES", 0);
  v3 = sub_29AB77654();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v3 + 12, "GLF_DEBUG_DUMP_SHADOW_TEXTURES", "Glf outputs shadows textures to image files");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20725A0, 4, "GLF_DEBUG_POST_SURFACE_LIGHTING", 0);
  v4 = sub_29AB77654() + 16;

  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v4, "GLF_DEBUG_POST_SURFACE_LIGHTING", "Glf post surface lighting setup");
}

uint64_t sub_29AB77654()
{
  if ((atomic_load_explicit(&qword_2A14F94C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F94C0))
  {
    v1 = operator new(0x14uLL);
    *v1 = 0;
    v1[1] = 0;
    *(v1 + 4) = 0;
    qword_2A14F94B8 = v1;
    __cxa_guard_release(&qword_2A14F94C0);
  }

  return qword_2A14F94B8;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B6C5921 & 0x7FFFFFFFFFFFFFFFLL), &v11);
  v2 = std::string::insert(&v11, 0, "Create Singleton ");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v15 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_29A0EC164(&v12, "Tf", "TfSingleton::_CreateInstance", __p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::Tf_SingletonPyGILDropper(&v11);
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry*> &)::isInitializing, 1u))
  {
    while (!atomic_load(a1))
    {
      sched_yield();
    }
  }

  else
  {
    if (!atomic_load(a1))
    {
      v8 = operator new(0x38uLL);
      pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry::GlfGLContextRegistry(v8);
      v10 = atomic_load(a1);
      if (v10)
      {
        if (v8 != v10)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v15 = 86;
          v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry]";
          v17 = 0;
          v18 = 4;
          pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(__p, "race detected setting singleton instance", v9);
        }
      }

      else if (atomic_exchange(a1, v8))
      {
        __p[0] = "tf/instantiateSingleton.h";
        __p[1] = "_CreateInstance";
        v15 = 90;
        v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry]";
        v17 = 0;
        v18 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v9, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry*> &)::isInitializing);
  }

  v6 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v11);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return v6;
}

void sub_29AB778BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry>::SetInstanceConstructed(unint64_t result, uint64_t a2, char *a3)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry>::_instance, result))
  {
    v3[0] = "tf/instantiateSingleton.h";
    v3[1] = "SetInstanceConstructed";
    v3[2] = 54;
    v3[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry]";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry>::DeleteInstance()
{
  for (i = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry>::_instance); i; i = v1)
  {
    v1 = i;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry>::_instance, &v1, 0);
    if (v1 == i)
    {
      pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry::~GlfGLContextRegistry(i);

      operator delete(v2);
      return;
    }

    sched_yield();
  }
}

pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry *pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry::GlfGLContextRegistry(pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry *this)
{
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 24) = 0;
  v2 = operator new(0x40uLL);
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 8) = 1065353216;
  *(v2 + 7) = 0;
  *(v2 + 6) = 0;
  *(v2 + 5) = v2 + 3;
  *(this + 6) = v2;
  pxrInternal__aapl__pxrReserved__::GarchGetNullGLPlatformContextState(&v20);
  pxrInternal__aapl__pxrReserved__::GlfGLRawContext::New(&v20, &v18);
  v3 = v18;
  v4 = v19;
  v18 = 0;
  v19 = 0;
  qword_2A17486A8 = v3;
  v5 = qword_2A17486B0;
  qword_2A17486B0 = v4;
  if (v5)
  {
    sub_29A014BEC(v5);
    if (v19)
    {
      sub_29A014BEC(v19);
    }
  }

  v6 = *(this + 6);
  v18 = &v20;
  v7 = sub_29AB784D0(v6, &v20, &unk_29B4D6118, &v18);
  v8 = qword_2A17486A8;
  v9 = qword_2A17486B0;
  if (qword_2A17486B0)
  {
    atomic_fetch_add_explicit((qword_2A17486B0 + 16), 1uLL, memory_order_relaxed);
  }

  v10 = v7[5];
  v7[4] = v8;
  v7[5] = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
    v8 = qword_2A17486A8;
  }

  v11 = *(this + 6);
  v17 = v8;
  v18 = &v17;
  v12 = sub_29AB78798(v11 + 40, &v17, &unk_29B4D6118, &v18);
  v14 = v20;
  v13 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = v12[6];
  v12[5] = v14;
  v12[6] = v13;
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  if (v21)
  {
    sub_29A014BEC(v21);
  }

  return this;
}

void sub_29AB77B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  v15 = *(v13 + 48);
  *(v13 + 48) = 0;
  if (v15)
  {
    sub_29AB78354(v13 + 48, v15);
  }

  v16 = *(v13 + 40);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  a12 = v13;
  sub_29AB78294(&a12);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry::~GlfGLContextRegistry(pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry *this)
{
  qword_2A17486A8 = 0;
  v2 = qword_2A17486B0;
  qword_2A17486B0 = 0;
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    sub_29AB78354(this + 48, v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = this;
  sub_29AB78294(&v5);
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry::Add(uint64_t this, pxrInternal__aapl__pxrReserved__::GlfGLContextRegistrationInterface *a2, char *a3)
{
  v4 = this;
  if (a2 || (this = sub_29B2C24E0(&v22, 0, a3), (this & 1) != 0))
  {
    v6 = v4[1];
    v5 = v4[2];
    if (v6 >= v5)
    {
      v8 = *v4;
      v9 = v6 - *v4;
      v10 = v9 >> 3;
      v11 = (v9 >> 3) + 1;
      if (v11 >> 61)
      {
        sub_29A00C9A4();
      }

      v12 = v5 - v8;
      if (v12 >> 2 > v11)
      {
        v11 = v12 >> 2;
      }

      v13 = v12 >= 0x7FFFFFFFFFFFFFF8;
      v14 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v13)
      {
        v14 = v11;
      }

      v23[4] = v4;
      if (v14)
      {
        v15 = sub_29A00C9BC(v4, v14);
        v14 = v16;
        v8 = *v4;
        v9 = v4[1] - *v4;
      }

      else
      {
        v15 = 0;
      }

      v17 = &v15[8 * v10];
      v18 = &v15[8 * v14];
      v19 = &v17[-8 * (v9 >> 3)];
      *v17 = a2;
      v7 = v17 + 8;
      memcpy(v19, v8, v9);
      v20 = *v4;
      *v4 = v19;
      v4[1] = v7;
      v21 = v4[2];
      v4[2] = v18;
      v23[2] = v20;
      v23[3] = v21;
      v23[0] = v20;
      v23[1] = v20;
      this = sub_29AB78940(v23);
    }

    else
    {
      *v6 = a2;
      v7 = v6 + 1;
    }

    v4[1] = v7;
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry::GetShared(pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry *this@<X0>, char **a2@<X8>)
{
  if (*(this + 24))
  {
LABEL_11:
    v9 = *(this + 5);
    *a2 = *(this + 4);
    a2[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *(this + 24) = 1;
    v4 = *(this + 5);
    *(this + 4) = 0;
    *(this + 5) = 0;
    if (v4)
    {
      sub_29A014BEC(v4);
    }

    v5 = *this;
    v6 = *(this + 1);
    while (1)
    {
      if (v5 == v6)
      {
        v11 = "glf/glContextRegistry.cpp";
        v12 = "GetShared";
        v13 = 98;
        v14 = "GlfGLContextSharedPtr pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry::GetShared()";
        v15 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 1, "No shared context registered.");
        goto LABEL_11;
      }

      (*(**v5 + 16))(&v11);
      v8 = v11;
      v7 = v12;
      if (v11)
      {
        break;
      }

      if (v12)
      {
        sub_29A014BEC(v12);
      }

      v5 += 8;
    }

    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = *(this + 5);
    *(this + 4) = v8;
    *(this + 5) = v7;
    if (v10)
    {
      sub_29A014BEC(v10);
      v8 = *(this + 4);
      v7 = *(this + 5);
    }

    *a2 = v8;
    a2[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v12)
    {
      sub_29A014BEC(v12);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry::GetCurrent(pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry *this@<X0>, unint64_t *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::GarchNSGLContextState::GarchNSGLContextState(&v10);
  v4 = sub_29AB789EC(*(this + 6), &v10);
  if (v4)
  {
    sub_29A014C58(a2, v4 + 4);
  }

  else
  {
    v5 = *this;
    v6 = *(this + 1);
    while (v5 != v6)
    {
      (*(**v5 + 24))();
      if (*a2 && (*(**a2 + 16))(*a2))
      {
        pxrInternal__aapl__pxrReserved__::GlfGLContext::MakeCurrent(a2);
        pxrInternal__aapl__pxrReserved__::GarchNSGLContextState::GarchNSGLContextState(&v9);
        v7 = pxrInternal__aapl__pxrReserved__::GarchNSGLContextState::operator==(&v10, &v9);
        if (*(&v9 + 1))
        {
          sub_29A014BEC(*(&v9 + 1));
        }

        if (v7)
        {
          goto LABEL_14;
        }
      }

      v8 = a2[1];
      if (v8)
      {
        sub_29A014BEC(v8);
      }

      ++v5;
    }

    pxrInternal__aapl__pxrReserved__::GarchNSGLContextState::MakeCurrent(&v10);
    pxrInternal__aapl__pxrReserved__::GlfGLRawContext::New(&v10, &v9);
    *a2 = v9;
  }

LABEL_14:
  if (v11)
  {
    sub_29A014BEC(v11);
  }
}

void sub_29AB77FF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry::DidMakeCurrent(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 48);
  v7 = *(v4 + 48);
  v5 = v4 + 48;
  v6 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = *a2;
  v9 = v5;
  do
  {
    v10 = *(v6 + 32);
    v11 = v10 >= v8;
    v12 = v10 < v8;
    if (v11)
    {
      v9 = v6;
    }

    v6 = *(v6 + 8 * v12);
  }

  while (v6);
  if (v9 == v5 || v8 < *(v9 + 32))
  {
LABEL_9:
    pxrInternal__aapl__pxrReserved__::GarchNSGLContextState::GarchNSGLContextState(&v24);
    if (!sub_29AB789EC(*(a1 + 48), &v24))
    {
      v13 = *(a1 + 48);
      v26 = &v24;
      v14 = sub_29AB784D0(v13, &v24, &unk_29B4D6118, &v26);
      v16 = *a2;
      v15 = a2[1];
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 16), 1uLL, memory_order_relaxed);
      }

      v17 = v14[5];
      v14[4] = v16;
      v14[5] = v15;
      if (v17)
      {
        std::__shared_weak_count::__release_weak(v17);
      }

      v18 = *(a1 + 48);
      v23 = *a2;
      v26 = &v23;
      v19 = sub_29AB78798(v18 + 40, &v23, &unk_29B4D6118, &v26);
      v21 = v24;
      v20 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = v19[6];
      v19[5] = v21;
      v19[6] = v20;
      if (v22)
      {
        sub_29A014BEC(v22);
      }
    }

    if (v25)
    {
      sub_29A014BEC(v25);
    }
  }
}

void sub_29AB78174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry::Remove(pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry *this, const pxrInternal__aapl__pxrReserved__::GlfGLContext *a2)
{
  result = *(this + 6);
  v4 = result[6];
  if (v4)
  {
    v5 = result + 6;
    do
    {
      v6 = *(v4 + 32);
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v4;
      }

      v4 = *(v4 + 8 * v8);
    }

    while (v4);
    if (v5 != result + 6 && v5[4] <= a2)
    {
      if (!sub_29AB78AE8(result, (v5 + 5)))
      {
        sub_29B2C2548(v9);
      }

      return sub_29AB78B7C((*(this + 6) + 40), v5);
    }
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::GlfGLContextRegistrationInterface *pxrInternal__aapl__pxrReserved__::GlfGLContextRegistrationInterface::GlfGLContextRegistrationInterface(pxrInternal__aapl__pxrReserved__::GlfGLContextRegistrationInterface *this, uint64_t a2, char *a3)
{
  *this = &unk_2A20725C0;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::GlfGLContextRegistry::Add(v4, this, a3);
  return this;
}

void sub_29AB78294(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29AB782E8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_29AB782E8(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void sub_29AB78354(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29AB783A0(a2 + 40, *(a2 + 48));
    v3 = sub_29AB78400(a2);

    operator delete(v3);
  }
}

void sub_29AB783A0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AB783A0(a1, *a2);
    sub_29AB783A0(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      sub_29A014BEC(v4);
    }

    operator delete(a2);
  }
}

uint64_t sub_29AB78400(uint64_t a1)
{
  sub_29AB7843C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AB7843C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AB78480((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29AB78480(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    sub_29A014BEC(v3);
  }
}

void *sub_29AB784D0(uint64_t a1, pxrInternal__aapl__pxrReserved__::GarchNSGLContextState *this, uint64_t a3, void **a4)
{
  Hash = pxrInternal__aapl__pxrReserved__::GarchNSGLContextState::GetHash(this);
  v9 = Hash;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v4 = Hash;
      if (Hash >= v10)
      {
        v4 = Hash % v10;
      }
    }

    else
    {
      v4 = (v10 - 1) & Hash;
    }

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        do
        {
          v15 = v14[1];
          if (v15 == v9)
          {
            if (pxrInternal__aapl__pxrReserved__::GarchNSGLContextState::operator==(v14 + 2, this))
            {
              return v14;
            }
          }

          else
          {
            if (v12 > 1)
            {
              if (v15 >= v10)
              {
                v15 %= v10;
              }
            }

            else
            {
              v15 &= v10 - 1;
            }

            if (v15 != v4)
            {
              break;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

  v16 = operator new(0x30uLL);
  v14 = v16;
  *v16 = 0;
  v16[1] = v9;
  v17 = (*a4)[1];
  v16[2] = **a4;
  v16[3] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v16[4] = 0;
  v16[5] = 0;
  v18 = (*(a1 + 24) + 1);
  v19 = *(a1 + 32);
  if (!v10 || (v19 * v10) < v18)
  {
    v20 = 1;
    if (v10 >= 3)
    {
      v20 = (v10 & (v10 - 1)) != 0;
    }

    v21 = v20 | (2 * v10);
    v22 = vcvtps_u32_f32(v18 / v19);
    if (v21 <= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    sub_29A019AA0(a1, v23);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v24 = *a1;
  v25 = *(*a1 + 8 * v4);
  if (v25)
  {
    *v14 = *v25;
LABEL_40:
    *v25 = v14;
    goto LABEL_41;
  }

  *v14 = *(a1 + 16);
  *(a1 + 16) = v14;
  *(v24 + 8 * v4) = a1 + 16;
  if (*v14)
  {
    v26 = *(*v14 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v26 >= v10)
      {
        v26 %= v10;
      }
    }

    else
    {
      v26 &= v10 - 1;
    }

    v25 = (*a1 + 8 * v26);
    goto LABEL_40;
  }

LABEL_41:
  ++*(a1 + 24);
  return v14;
}

void sub_29AB78724(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AB7873C(va, 0);
  _Unwind_Resume(a1);
}

void sub_29AB7873C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AB78480(v2 + 16);
    }

    operator delete(v2);
  }
}

uint64_t *sub_29AB78798(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v6 = (a1 + 8);
  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = *a2;
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = v5[4];
        if (v7 >= v9)
        {
          break;
        }

        v5 = *v8;
        v6 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (v9 >= v7)
      {
        break;
      }

      v5 = v8[1];
      if (!v5)
      {
        v6 = v8 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = (a1 + 8);
LABEL_10:
    sub_29AB78854(a1, a4, &v11);
    sub_29A00B204(a1, v8, v6, v11);
    return v11;
  }

  return v8;
}

pxrInternal__aapl__pxrReserved__::GarchNSGLContextState *sub_29AB78854@<X0>(uint64_t a1@<X0>, void **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x38uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v6[4] = **a2;
  result = pxrInternal__aapl__pxrReserved__::GarchNSGLContextState::GarchNSGLContextState((v6 + 5));
  *(a3 + 16) = 1;
  return result;
}

void sub_29AB788C4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29AB788E0(v3, v2);
  _Unwind_Resume(a1);
}

void sub_29AB788E0(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[6];
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_29AB78940(uint64_t a1)
{
  sub_29AB78978(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29AB78978(void *result, void *a2)
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

uint64_t *sub_29AB789EC(void *a1, pxrInternal__aapl__pxrReserved__::GarchNSGLContextState *this)
{
  Hash = pxrInternal__aapl__pxrReserved__::GarchNSGLContextState::GetHash(this);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = Hash;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = Hash;
    if (Hash >= *&v5)
    {
      v9 = Hash % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & Hash;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (pxrInternal__aapl__pxrReserved__::GarchNSGLContextState::operator==(i + 2, this))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t *sub_29AB78AE8(void *a1, pxrInternal__aapl__pxrReserved__::GarchNSGLContextState *a2)
{
  result = sub_29AB789EC(a1, a2);
  if (result)
  {
    sub_29AB78B20(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29AB78B20(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29AB78480(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t *sub_29AB78B7C(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_29A03AFE8(a1, a2);
  v4 = a2[6];
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfBindingMap::GetSamplerUnit(pxrInternal__aapl__pxrReserved__::GlfBindingMap *a1)
{
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v3);
  result = pxrInternal__aapl__pxrReserved__::GlfBindingMap::GetSamplerUnit(a1, &v3);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfBindingMap::GetSamplerUnit(pxrInternal__aapl__pxrReserved__::GlfBindingMap *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v4 = sub_29A16039C(this + 8, a2);
  if (!v4)
  {
    v5 = (*(this + 36) + *(this + 22));
    v7[0] = a2;
    *(sub_29A160810(this + 64, a2, &unk_29B4D6118, v7) + 6) = v5;
    if ((v5 & 0x80000000) == 0)
    {
      return v5;
    }

LABEL_5:
    sub_29B2C2594(v7);
    return v5;
  }

  v5 = *(v4 + 6);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_5;
  }

  return v5;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfBindingMap::GetAttributeIndex(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v4);
  v2 = sub_29A16039C((a1 + 24), &v4);
  if (v2)
  {
    result = *(v2 + 6);
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfBindingMap::GetAttributeIndex(uint64_t a1, void *a2)
{
  v2 = sub_29A16039C((a1 + 24), a2);
  if (v2)
  {
    return *(v2 + 6);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfBindingMap::AssignSamplerUnitsToProgram(uint64_t this, uint64_t a2)
{
  for (i = *(this + 80); i; i = *i)
  {
    v4 = i[2] & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (v4 + 16);
      if (*(v4 + 39) < 0)
      {
        v5 = *v5;
      }
    }

    else
    {
      v5 = "";
    }

    this = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUniformLocation(a2, v5);
    if (this != -1)
    {
      this = pxrInternal__aapl__pxrReserved__::internal::GLApi::glProgramUniform1i(a2, this, *(i + 6));
    }
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfBindingMap::GetUniformBinding(pxrInternal__aapl__pxrReserved__::GlfBindingMap *a1)
{
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v3);
  result = pxrInternal__aapl__pxrReserved__::GlfBindingMap::GetUniformBinding(a1, &v3);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfBindingMap::GetUniformBinding(pxrInternal__aapl__pxrReserved__::GlfBindingMap *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v4 = sub_29A16039C(this + 13, a2);
  if (!v4)
  {
    v5 = (*(this + 37) + *(this + 32));
    v7[0] = a2;
    *(sub_29A160810(this + 104, a2, &unk_29B4D6118, v7) + 6) = v5;
    if ((v5 & 0x80000000) == 0)
    {
      return v5;
    }

LABEL_5:
    sub_29B2C25E0(v7);
    return v5;
  }

  v5 = *(v4 + 6);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_5;
  }

  return v5;
}

BOOL pxrInternal__aapl__pxrReserved__::GlfBindingMap::HasUniformBinding(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v4);
  v2 = sub_29A16039C((a1 + 104), &v4);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v2 != 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfBindingMap::AssignUniformBindingsToProgram(uint64_t this, uint64_t a2)
{
  for (i = *(this + 120); i; i = *i)
  {
    v4 = i[2] & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (v4 + 16);
      if (*(v4 + 39) < 0)
      {
        v5 = *v5;
      }
    }

    else
    {
      v5 = "";
    }

    this = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetUniformBlockIndex(a2, v5);
    if (this != -1)
    {
      this = pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformBlockBinding(a2, this, *(i + 6));
    }
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::GlfBindingMap::AddCustomBindings(pxrInternal__aapl__pxrReserved__::GlfBindingMap *this, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::GlfBindingMap::_AddActiveAttributeBindings(this, a2);
  pxrInternal__aapl__pxrReserved__::GlfBindingMap::_AddActiveUniformBindings(this, a2);
  pxrInternal__aapl__pxrReserved__::GlfBindingMap::_AddActiveUniformBlockBindings(this, a2);
  pxrInternal__aapl__pxrReserved__::GlfBindingMap::AssignUniformBindingsToProgram(this, a2);

  return pxrInternal__aapl__pxrReserved__::GlfBindingMap::AssignSamplerUnitsToProgram(this, a2);
}

void pxrInternal__aapl__pxrReserved__::GlfBindingMap::_AddActiveAttributeBindings(pxrInternal__aapl__pxrReserved__::GlfBindingMap *this, uint64_t a2)
{
  v15 = 0;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramiv(a2, 35721, &v15);
  if (v15)
  {
    v14 = 0;
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramiv(a2, 35722, &v14);
    if (v14 <= 100)
    {
      v4 = 100;
    }

    else
    {
      v4 = v14;
    }

    v13 = 0;
    v14 = v4;
    v12 = 0;
    v5 = operator new[](v4);
    if (v15 >= 1)
    {
      v6 = 0;
      do
      {
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetActiveAttrib(a2, v6, v14, 0, &v13, &v12, v5);
        AttribLocation = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetAttribLocation(a2, v5);
        pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v11, v5);
        v8 = sub_29A160470(this + 3, &v11);
        if (v8)
        {
          if (*(v8 + 6) != AttribLocation)
          {
            v9[0] = "glf/bindingMap.cpp";
            v9[1] = "_AddActiveAttributeBindings";
            v9[2] = 141;
            v9[3] = "void pxrInternal__aapl__pxrReserved__::GlfBindingMap::_AddActiveAttributeBindings(GLuint)";
            v10 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 3, "Inconsistent attribute binding detected.");
          }
        }

        else
        {
          v9[0] = &v11;
          *(sub_29A160810(this + 24, &v11, &unk_29B4D6118, v9) + 6) = AttribLocation;
        }

        if ((v11 & 7) != 0)
        {
          atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v6 = (v6 + 1);
      }

      while (v6 < v15);
    }

    operator delete[](v5);
  }
}

void sub_29AB79274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if ((a15 & 7) != 0)
  {
    atomic_fetch_add_explicit((a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::GlfBindingMap::_AddActiveUniformBindings(pxrInternal__aapl__pxrReserved__::GlfBindingMap *this, uint64_t a2)
{
  __sz_4 = 0;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramiv(a2, 35718, &__sz_4);
  if (__sz_4)
  {
    __sz = 0;
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramiv(a2, 35719, &__sz);
    v11 = 0;
    v4 = operator new[](__sz);
    if (__sz_4 >= 1)
    {
      v5 = 0;
      do
      {
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetActiveUniform(a2, v5, __sz, 0, &v11 + 4, &v11, v4);
        if ((v11 - 36288) <= 0x18 && ((1 << (v11 + 64)) & 0x1FFFE3F) != 0 || (v11 - 35677) < 8 || (v11 - 37128) <= 5)
        {
          sub_29A008E78(&__p, v4);
          pxrInternal__aapl__pxrReserved__::GlfBindingMap::GetSamplerUnit(this);
          if (v10 < 0)
          {
            operator delete(__p);
          }
        }

        v5 = (v5 + 1);
      }

      while (v5 < __sz_4);
    }

    operator delete[](v4);
  }
}

void sub_29AB793F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::GlfBindingMap::_AddActiveUniformBlockBindings(pxrInternal__aapl__pxrReserved__::GlfBindingMap *this, uint64_t a2)
{
  __sz_4 = 0;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramiv(a2, 35382, &__sz_4);
  if (__sz_4)
  {
    __sz = 0;
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetProgramiv(a2, 35381, &__sz);
    v4 = operator new[](__sz);
    if (__sz_4 >= 1)
    {
      v5 = 0;
      do
      {
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetActiveUniformBlockName(a2, v5, __sz, 0, v4);
        sub_29A008E78(&__p, v4);
        pxrInternal__aapl__pxrReserved__::GlfBindingMap::GetUniformBinding(this);
        if (v7 < 0)
        {
          operator delete(__p);
        }

        v5 = (v5 + 1);
      }

      while (v5 < __sz_4);
    }

    operator delete[](v4);
  }
}

void sub_29AB79508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::GlfBindingMap::Debug(pxrInternal__aapl__pxrReserved__::GlfBindingMap *this)
{
  puts("GlfBindingMap");
  v26[0] = 0;
  v26[1] = 0;
  v24[1] = 0;
  v25 = v26;
  v23 = v24;
  v24[0] = 0;
  v22[0] = 0;
  v22[1] = 0;
  v2 = (this + 40);
  v21 = v22;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    sub_29AB7980C(&v25, v2 + 2, v2 + 2);
  }

  for (i = (this + 80); ; sub_29AB7980C(&v23, i + 2, i + 2))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  for (j = (this + 120); ; sub_29AB7980C(&v21, j + 2, j + 2))
  {
    j = *j;
    if (!j)
    {
      break;
    }
  }

  puts(" Attribute bindings");
  v5 = v25;
  if (v25 != v26)
  {
    do
    {
      v6 = v5[4] & 0xFFFFFFFFFFFFFFF8;
      if (v6)
      {
        v7 = (v6 + 16);
        if (*(v6 + 39) < 0)
        {
          v7 = *v7;
        }
      }

      else
      {
        v7 = "";
      }

      printf("  %s : %d\n", v7, *(v5 + 10));
      v8 = v5[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v26);
  }

  puts(" Sampler bindings");
  v11 = v23;
  if (v23 != v24)
  {
    do
    {
      v12 = v11[4] & 0xFFFFFFFFFFFFFFF8;
      if (v12)
      {
        v13 = (v12 + 16);
        if (*(v12 + 39) < 0)
        {
          v13 = *v13;
        }
      }

      else
      {
        v13 = "";
      }

      printf("  %s : %d\n", v13, *(v11 + 10));
      v14 = v11[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v11[2];
          v10 = *v15 == v11;
          v11 = v15;
        }

        while (!v10);
      }

      v11 = v15;
    }

    while (v15 != v24);
  }

  puts(" Uniform bindings");
  v16 = v21;
  if (v21 != v22)
  {
    do
    {
      v17 = v16[4] & 0xFFFFFFFFFFFFFFF8;
      if (v17)
      {
        v18 = (v17 + 16);
        if (*(v17 + 39) < 0)
        {
          v18 = *v18;
        }
      }

      else
      {
        v18 = "";
      }

      printf("  %s : %d\n", v18, *(v16 + 10));
      v19 = v16[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v16[2];
          v10 = *v20 == v16;
          v16 = v20;
        }

        while (!v10);
      }

      v16 = v20;
    }

    while (v20 != v22);
  }

  sub_29A1602D4(&v21, v22[0]);
  sub_29A1602D4(&v23, v24[0]);
  sub_29A1602D4(&v25, v26[0]);
}