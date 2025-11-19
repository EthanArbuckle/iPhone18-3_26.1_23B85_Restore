uint64_t *sub_29ACD1D30(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A00B0D0(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29ACD1DC8(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

void *sub_29ACD1DC8@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x50uLL);
  v7 = result;
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    result = sub_29A008D14(result + 32, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    result[6] = *(v8 + 2);
    *(result + 2) = v9;
  }

  v7[7] = 0;
  v7[8] = 0;
  v7[9] = 0;
  *(a3 + 16) = 1;
  return result;
}

void sub_29ACD1E60(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29ACD1C70(v2 + 32);
    }

    operator delete(v2);
  }
}

unint64_t sub_29ACD1EBC(atomic_ullong *a1)
{
  v2 = sub_29ACD1F3C();
  v3 = v2;
  v4 = 0;
  atomic_compare_exchange_strong(a1, &v4, v2);
  if (v4)
  {
    if (v2)
    {
      v6 = (v2 + 8);
      sub_29A124AB0(&v6);
      if ((*v3 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v3);
    }

    return atomic_load(a1);
  }

  return v3;
}

pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistryTokens_StaticTokenType *sub_29ACD1F3C()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistryTokens_StaticTokenType::HdSceneIndexPluginRegistryTokens_StaticTokenType(v0);
  return v0;
}

void sub_29ACD1F80(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_29ACD1F80(a1, *a2);
    sub_29ACD1F80(a1, *(a2 + 1));
    v4 = (a2 + 40);
    sub_29ACD1FE0(&v4);
    operator delete(a2);
  }
}

void sub_29ACD1FE0(void ***a1)
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
        v4 -= 7;
        sub_29ACD2068(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29ACD2068(uint64_t a1, void *a2)
{
  sub_29ACD1A4C((a2 + 3));
  v3 = a2[2];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t **sub_29ACD20B4(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v14 = result;
    v15 = v8;
    v16 = v8;
    if (v8)
    {
      v15 = sub_29A028760(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v17[0] = v8 + 4;
          v17[1] = v8 + 5;
          sub_29ACD2298(v17, (v9 + 4));
          sub_29ACD2228(v5, v16);
          v16 = v15;
          if (v15)
          {
            v15 = sub_29A028760(v15);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          v8 = v16;
          if (v16)
          {
            v11 = a2 == a3;
          }

          else
          {
            v11 = 1;
          }

          v9 = a2;
        }

        while (!v11);
      }
    }

    result = sub_29ACD2A1C(&v14);
  }

  if (a2 != a3)
  {
    do
    {
      result = sub_29ACD2A74(v5, (a2 + 4));
      v12 = a2[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = a2[2];
          v11 = *v13 == a2;
          a2 = v13;
        }

        while (!v11);
      }

      a2 = v13;
    }

    while (v13 != a3);
  }

  return result;
}

void sub_29ACD2214(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ACD2A1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACD2228(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 32) >= *(v4 + 8))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  sub_29A00B204(a1, v3, v5, a2);
  return a2;
}

uint64_t sub_29ACD2298(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  *v4 = *a2;
  if (v3 != a2 + 8)
  {
    sub_29ACD22FC(v3, *(a2 + 8), *(a2 + 16), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  }

  return a1;
}

void sub_29ACD22FC(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_29ACD247C(a1);
    if (a4 > 0x492492492492492)
    {
      sub_29A00C9A4();
    }

    v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
    {
      v10 = 0x492492492492492;
    }

    else
    {
      v10 = v9;
    }

    sub_29A044EF0(a1, v10);
    v11 = sub_29ACD24E8(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v12 >> 3) < a4)
  {
    sub_29ACD26B0(&v16, a2, (a2 + v12), v8);
    v11 = sub_29ACD24E8(a1, (a2 + v12), a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = v11;
    return;
  }

  sub_29ACD26B0(&v17, a2, a3, v8);
  v14 = v13;
  v15 = *(a1 + 8);
  if (v15 != v13)
  {
    do
    {
      v15 -= 7;
      sub_29ACD2068(a1, v15);
    }

    while (v15 != v14);
  }

  *(a1 + 8) = v14;
}

void sub_29ACD247C(void *a1)
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
        v3 -= 7;
        sub_29ACD2068(a1, v3);
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

uint64_t *sub_29ACD24E8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29ACD2594(a1, v4, v6);
      v6 += 7;
      v4 = v12 + 7;
      v12 += 7;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29ACD2624(v9);
  return v4;
}

uint64_t sub_29ACD2594(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  *a2 = *a3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = a3[2];
  a2[1] = a3[1];
  a2[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_29ACD1ACC((a2 + 3), (a3 + 3));
}

void sub_29ACD2604(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29B294B14(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACD2624(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29ACD265C(a1);
  }

  return a1;
}

void sub_29ACD265C(uint64_t *a1)
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
      v3 -= 7;
      sub_29ACD2068(v5, v3);
    }

    while (v3 != v4);
  }
}

void *sub_29ACD26B0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    sub_29A166F2C(a4, v5);
    v8 = v5[1];
    v7 = v5[2];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = a4[2];
    a4[1] = v8;
    a4[2] = v7;
    if (v9)
    {
      sub_29A014BEC(v9);
    }

    sub_29ACD2744(a4 + 3, (v5 + 3));
    a4 += 7;
    v5 += 7;
  }

  while (v5 != v6);
  return v6;
}

void *sub_29ACD2744(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x29EDCA608];
  sub_29ACD1ACC(v4, a2);
  sub_29ACD27B8(v4, a1);
  sub_29ACD1A4C(v4);
  return a1;
}

void *sub_29ACD27B8(void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_29ACD2A10(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_299FEDEEC(a1);
}

uint64_t sub_29ACD2A1C(uint64_t a1)
{
  sub_29ACD1F80(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_29ACD1F80(*a1, v2);
  }

  return a1;
}

uint64_t *sub_29ACD2A74(uint64_t a1, uint64_t a2)
{
  sub_29ACD2AF8(a1, a2, &v7);
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(v7 + 8) >= *(v4 + 8))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = (a1 + 8);
  }

LABEL_8:
  sub_29A00B204(a1, v3, v5, v7);
  return v7;
}

uint64_t *sub_29ACD2AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *(v6 + 8) = *a2;
  *(v6 + 6) = 0;
  *(v6 + 7) = 0;
  *(v6 + 5) = 0;
  result = sub_29ACD2BA4(v6 + 5, *(a2 + 8), *(a2 + 16), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  *(a3 + 16) = 1;
  return result;
}

void sub_29ACD2B88(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29ACD2C2C(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_29ACD2BA4(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A044EF0(result, a4);
    result = sub_29ACD24E8(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29ACD2C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29ACD1FE0(&a9);
  _Unwind_Resume(a1);
}

void sub_29ACD2C2C(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 5;
    sub_29ACD1FE0(&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

char *sub_29ACD2C7C(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v9 - v10) >> 3) >= a5)
    {
      v18 = v10 - a2;
      if (0x6DB6DB6DB6DB6DB7 * ((v10 - a2) >> 3) >= a5)
      {
        v20 = 7 * a5;
        sub_29ACD2E8C(a1, a2, a1[1], a2 + 56 * a5);
        v19 = &v7[v20];
      }

      else
      {
        a1[1] = sub_29ACD3004(a1, (a3 + v18), a4, a1[1]);
        if (v18 < 1)
        {
          return v5;
        }

        sub_29ACD2E8C(a1, v5, v10, &v5[56 * a5]);
        v19 = (v7 + v18);
      }

      sub_29ACD26B0(v25, v7, v19, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + 0x6DB6DB6DB6DB6DB7 * ((v10 - *a1) >> 3);
    if (v12 > 0x492492492492492)
    {
      sub_29A00C9A4();
    }

    v13 = a2 - v11;
    v14 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x249249249249249)
    {
      v15 = 0x492492492492492;
    }

    else
    {
      v15 = v12;
    }

    v16 = 0x6DB6DB6DB6DB6DB7 * (v13 >> 3);
    v28 = a1;
    if (v15)
    {
      v17 = sub_29A040BCC(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v21 = &v17[56 * v16];
    v25[0] = v17;
    v25[1] = v21;
    v26 = v21;
    v27 = &v17[56 * v15];
    v22 = 56 * a5;
    v23 = &v21[56 * a5];
    do
    {
      sub_29ACD30B0(v28, v21, v7);
      v21 += 56;
      v7 += 7;
      v22 -= 56;
    }

    while (v22);
    v26 = v23;
    v5 = sub_29ACD2F48(a1, v25, v5);
    sub_29ACD344C(v25);
  }

  return v5;
}

uint64_t sub_29ACD2E8C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = v6 - a4 + a2 + 24;
    v8 = *(a1 + 8);
    do
    {
      *v8 = *(v10 - 24);
      *(v10 - 24) = 0;
      *(v8 + 8) = *(v10 - 16);
      *(v10 - 16) = 0;
      *(v10 - 8) = 0;
      sub_29ACD3140(v8 + 24, v10);
      v8 += 56;
      v11 = v10 + 32;
      v10 += 56;
    }

    while (v11 < a3);
  }

  *(a1 + 8) = v8;
  return sub_29ACD31C0(&v13, a2, v7, v6);
}

uint64_t sub_29ACD2F48(uint64_t a1, void *a2, char *a3)
{
  v6 = a2[1];
  sub_29ACD337C(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  sub_29ACD337C(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t *sub_29ACD3004(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29ACD30B0(a1, v4, v6);
      v6 += 7;
      v4 = v12 + 7;
      v12 += 7;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29ACD2624(v9);
  return v4;
}

uint64_t sub_29ACD30B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  *a2 = *a3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = a3[2];
  a2[1] = a3[1];
  a2[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_29ACD1ACC((a2 + 3), (a3 + 3));
}

void sub_29ACD3120(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29B294B14(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACD3140(uint64_t a1, uint64_t a2)
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

uint64_t sub_29ACD31C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = a3;
  v8 = a4;
  while (v7 != a2)
  {
    if (v8 != v7)
    {
      v9 = *(v8 - 56);
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *(v8 - 56) = *(v7 - 56);
      *(v7 - 56) = 0;
    }

    v10 = *(v7 - 48);
    *(v7 - 48) = 0;
    *(v7 - 40) = 0;
    v11 = *(v8 - 40);
    *(v8 - 48) = v10;
    if (v11)
    {
      sub_29A014BEC(v11);
    }

    v12 = v8 - 32;
    v13 = v7 - 32;
    v4 -= 56;
    v7 -= 56;
    v8 -= 56;
    sub_29ACD3274(v12, v13);
  }

  return a3;
}

uint64_t sub_29ACD3274(uint64_t a1, uint64_t a2)
{
  sub_29ACD32F8(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_29ACD32F8(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_29ACD337C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = (a2 + 3);
    do
    {
      *a4 = *(v7 - 24);
      *(v7 - 24) = 0;
      *(a4 + 8) = *(v7 - 16);
      *(v7 - 16) = 0;
      *(v7 - 8) = 0;
      sub_29ACD3140(a4 + 24, v7);
      a4 = v13 + 56;
      v13 += 56;
      v8 = v7 + 32;
      v7 += 56;
    }

    while (v8 != a3);
    v11 = 1;
    while (v5 != a3)
    {
      sub_29ACD2068(a1, v5);
      v5 += 7;
    }
  }

  return sub_29ACD2624(v10);
}

void **sub_29ACD344C(void **a1)
{
  sub_29ACD3480(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29ACD3480(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    sub_29ACD2068(v4, (i - 56));
  }
}

uint64_t *sub_29ACD34C8(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A00B0D0(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29ACD3560(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

void *sub_29ACD3560@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x50uLL);
  v7 = result;
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    result = sub_29A008D14(result + 32, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    result[6] = *(v8 + 2);
    *(result + 2) = v9;
  }

  v7[8] = 0;
  v7[9] = 0;
  v7[7] = v7 + 8;
  *(a3 + 16) = 1;
  return result;
}

void sub_29ACD35F8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29ACD1BC0(v2 + 32);
    }

    operator delete(v2);
  }
}

uint64_t sub_29ACD3654(void *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0xDB6DB6DB6DB6DB6ELL * ((v4 - *a1) >> 3);
      }

      v10 = v9 >> 2;
      v11 = a1[4];
      v19 = a1[4];
      *&v17 = sub_29A040BCC(v11, v9);
      *(&v17 + 1) = v17 + 56 * v10;
      *&v18 = *(&v17 + 1);
      *(&v18 + 1) = v17 + 56 * v12;
      sub_29ACD3884(&v17, a1[1], 0x6DB6DB6DB6DB6DB7 * ((a1[2] - a1[1]) >> 3));
      v13 = v18;
      v14 = *a1;
      v15 = *(a1 + 1);
      *a1 = v17;
      *(a1 + 1) = v13;
      v17 = v14;
      v18 = v15;
      sub_29ACD344C(&v17);
      v4 = a1[2];
    }

    else
    {
      v7 = -56 * ((0x6DB6DB6DB6DB6DB7 * (v6 >> 3) + 1 + ((0x6DB6DB6DB6DB6DB7 * (v6 >> 3) + 1) >> 63)) >> 1);
      sub_29ACD37B8(&v17, v5, v4, v5 - 56 * ((0x6DB6DB6DB6DB6DB7 * (v6 >> 3) + 1 + ((0x6DB6DB6DB6DB6DB7 * (v6 >> 3) + 1) >> 63)) >> 1));
      v4 = v8;
      a1[1] += v7;
      a1[2] = v8;
    }
  }

  *v4 = *a2;
  *a2 = 0;
  *(v4 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = sub_29ACD3140(v4 + 24, a2 + 24);
  a1[2] += 56;
  return result;
}

uint64_t sub_29ACD37B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    v8 = a4 + v7;
    v9 = a2 + v7;
    if (a2 != a4)
    {
      if ((*v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *v8 = *v9;
      *v9 = 0;
    }

    v10 = *(v9 + 8);
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    v11 = *(v8 + 16);
    *(v8 + 8) = v10;
    if (v11)
    {
      sub_29A014BEC(v11);
    }

    sub_29ACD3274(a4 + v7 + 24, a2 + v7 + 24);
    v7 += 56;
  }

  while (a2 + v7 != v6);
  return v6;
}

uint64_t sub_29ACD3884(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a3)
  {
    v5 = v4 + 56 * a3;
    result = v4 + 24;
    v6 = a2 + 24;
    do
    {
      *(result - 24) = *(v6 - 24);
      *(v6 - 24) = 0;
      *(result - 16) = *(v6 - 16);
      *(v6 - 16) = 0;
      *(v6 - 8) = 0;
      v7 = sub_29ACD3140(result, v6);
      v8 = v7 + 32;
      result = v7 + 56;
      v6 += 56;
    }

    while (v8 != v5);
  }

  else
  {
    v5 = *(result + 16);
  }

  *(v3 + 16) = v5;
  return result;
}

uint64_t sub_29ACD3904(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x492492492492492)
  {
    sub_29A00C9A4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
  {
    v8 = 0x492492492492492;
  }

  else
  {
    v8 = v4;
  }

  v19 = a1;
  if (v8)
  {
    v9 = sub_29A040BCC(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v16 = v9;
  v17 = &v9[56 * v3];
  *(&v18 + 1) = &v9[56 * v8];
  sub_29ACD1998(v17, a2, a3);
  *&v18 = v17 + 7;
  v10 = *(a1 + 8);
  v11 = v17 + *a1 - v10;
  sub_29ACD337C(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29ACD344C(&v16);
  return v15;
}

void sub_29ACD3A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ACD344C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACD3A50(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x492492492492492)
  {
    sub_29A00C9A4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
  {
    v8 = 0x492492492492492;
  }

  else
  {
    v8 = v4;
  }

  v19 = a1;
  if (v8)
  {
    v9 = sub_29A040BCC(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v16 = v9;
  v17 = &v9[56 * v3];
  *(&v18 + 1) = &v9[56 * v8];
  sub_29ACD3BA4(a1, v17, a2, a3);
  *&v18 = v17 + 56;
  v10 = *(a1 + 8);
  v11 = &v17[*a1 - v10];
  sub_29ACD337C(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29ACD344C(&v16);
  return v15;
}

void sub_29ACD3B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ACD344C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACD3BA4(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29ACD1ACC(v7, a3);
  sub_29ACD19E4(a2, v7, a4);
  return sub_29ACD1A4C(v7);
}

void sub_29ACD3C20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ACD1A4C(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::operator++(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    *(a1 + 32) = 0;
  }

  else
  {
    v2 = sub_29AC1199C(a1);
    (*(*v2 + 24))(&v10);
    if (v10 != v11)
    {
      v9[0] = v10;
      v9[1] = v11;
      v3 = v12;
      v11 = 0;
      v12 = 0;
      v9[3] = 0;
      v10 = 0;
      v9[2] = v3;
      sub_29ACD3D94(a1 + 8, v9);
      v13 = v9;
      sub_29A1E234C(&v13);
      v9[0] = &v10;
      sub_29A1E234C(v9);
      return a1;
    }

    v9[0] = &v10;
    sub_29A1E234C(v9);
  }

  v4 = *(a1 + 16);
  if (*(a1 + 8) != v4)
  {
    v5 = v4 - 32;
    do
    {
      v6 = *(v5 + 24) + 1;
      *(v5 + 24) = v6;
      if (v6 < (*(v5 + 8) - *v5) >> 3)
      {
        break;
      }

      v9[0] = v5;
      sub_29A1E234C(v9);
      *(a1 + 16) = v5;
      v7 = v5 == *(a1 + 8);
      v5 -= 32;
    }

    while (!v7);
  }

  return a1;
}

void sub_29ACD3D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 24) = v13;
  sub_29A1E234C((v14 - 24));
  a9 = &a13;
  sub_29A1E234C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACD3D94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29ACD4098(a1, a2);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v4 = *(a2 + 24);
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v3[3] = v4;
    result = (v3 + 4);
  }

  *(a1 + 8) = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::const_iterator(void *a1, void *a2)
{
  v2 = *MEMORY[0x29EDCA608];
  *a1 = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

{
  *a1 = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

{
  *a1 = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29ACD3EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::HdSceneIndexPrimView(pxrInternal__aapl__pxrReserved__::SdfPath *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);

  pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::HdSceneIndexPrimView(a1, a2);
}

{
  pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);

  pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::HdSceneIndexPrimView(a1, a2);
}

uint64_t sub_29ACD4098(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_29A00C9A4();
  }

  v6 = *(a1 + 16) - *a1;
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

  v20 = a1;
  if (v7)
  {
    v8 = sub_29A10CB10(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[4 * v2];
  v17 = v8;
  v18 = v9;
  *(&v19 + 1) = &v8[4 * v7];
  *v9 = 0;
  v9[1] = 0;
  v9[2] = 0;
  *v9 = *a2;
  v10 = *(a2 + 24);
  v9[2] = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9[3] = v10;
  *&v19 = v9 + 4;
  v11 = *(a1 + 8);
  v12 = (v9 + *a1 - v11);
  sub_29ACD41BC(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29ACD4278(&v17);
  return v16;
}

void sub_29ACD41A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ACD4278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACD41BC(uint64_t a1, void **a2, void **a3, void *a4)
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
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      v7 = v6[3];
      a4[2] = v6[2];
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4[3] = v7;
      v6 += 4;
      a4 += 4;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v13 = v5;
      sub_29A1E234C(&v13);
      v5 += 4;
    }
  }

  return sub_29ABD4C8C(v9);
}

void **sub_29ACD4278(void **a1)
{
  sub_29ACD42AC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29ACD42AC(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 32);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_29A1E234C(&v5);
  }
}

void *sub_29ACD4300(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A15A71C(result, a4);
    result = sub_29ACD4388(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29ACD4368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29ABD4D10(&a9);
  _Unwind_Resume(a1);
}

void *sub_29ACD4388(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
  }

  v7 = 1;
  sub_29ABD4C8C(v6);
  return a4;
}

void sub_29ACD4444()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HD_USE_ENCAPSULATING_SCENE_INDICES))
  {
    sub_29B2C752C();
  }
}

void pxrInternal__aapl__pxrReserved__::HdMakeEncapsulatingSceneIndex(uint64_t **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  if (*a2)
  {
    if (v5 != v4)
    {
      sub_29ACD4FA8(&v31, v5, v4);
      memset(v29, 0, sizeof(v29));
      v30 = 1065353216;
      v26 = 0u;
      v27 = 0u;
      v28 = 1065353216;
      sub_29ACCB490(&__p, a2);
      sub_29ACD4D28(&__p, &v31, v29, &v26);
      v8 = v21;
      if (v21 && atomic_fetch_add_explicit(v21 + 2, 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v8 + 8))(v8);
      }

      if (v33 != *(&v27 + 1))
      {
        memset(&v25, 0, sizeof(v25));
        v9 = v32;
        if (v32)
        {
          do
          {
            if (!sub_29A41D024(&v26, (v9 + 2)))
            {
              size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
              if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                size = v25.__r_.__value_.__l.__size_;
              }

              if (size)
              {
                std::string::append(&v25, ", ");
              }

              v11 = sub_29B2C6E8C((v9 + 2));
              if (v12 & 1 | v11)
              {
                sub_29ACD4F58((v9 + 2));
              }

              std::string::append(&v25, "[NULL]");
            }

            v9 = *v9;
          }

          while (v9);
        }

        __p = "hd/sceneIndexUtil.cpp";
        v21 = "_ValidateInputScenesCanBeReached";
        v22 = 211;
        v23 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ValidateInputScenesCanBeReached(const std::vector<HdSceneIndexBaseRefPtr> &, const HdSceneIndexBaseRefPtr &)";
        v24 = 0;
        v14 = sub_29AC1199C(a2);
        pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::GetDisplayName(v14, v18);
        if (v19 >= 0)
        {
          v15 = v18;
        }

        else
        {
          v15 = v18[0];
        }

        v16 = &v25;
        if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v16 = v25.__r_.__value_.__r.__words[0];
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "In HdMakeEncapsulatingSceneIndex, the following given input scenes could not be reached from the encapsulated scene (%s): %s.", v15, v16);
        if (v19 < 0)
        {
          operator delete(v18[0]);
        }

        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }
      }

      sub_29ACD532C(&v26);
      sub_29ACD532C(v29);
      sub_29ACD532C(&v31);
      v17 = operator new(0xB0uLL);
      v31 = 0uLL;
      v32 = 0;
      sub_29ACD56D4(&v31, *a1, a1[1], a1[1] - *a1);
      pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::HdSceneIndexBase(v17);
      *v17 = &unk_2A20851C8;
      *(v17 + 7) = v31;
      *(v17 + 16) = v32;
      v31 = 0uLL;
      v32 = 0;
      v29[0] = &v31;
      sub_29AC262C4(v29);
      *v17 = &unk_2A2085118;
      *(v17 + 17) = &unk_2A2085160;
      *(v17 + 18) = *a2;
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
    }

    v13 = operator new(0x98uLL);
    v31 = 0uLL;
    v32 = 0;
    sub_29ACD56D4(&v31, v5, v4, 0);
    pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::HdSceneIndexBase(v13);
    *v13 = &unk_2A2085088;
    v29[0] = &v31;
    sub_29AC262C4(v29);
    *v13 = &unk_2A2084FE0;
    *(v13 + 14) = &unk_2A2085020;
    *(v13 + 15) = *a2;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
  }

  if (v5 != v4)
  {
    *&v31 = "hd/sceneIndexUtil.cpp";
    *(&v31 + 1) = "HdMakeEncapsulatingSceneIndex";
    v32 = 223;
    v33 = "HdSceneIndexBaseRefPtr pxrInternal__aapl__pxrReserved__::HdMakeEncapsulatingSceneIndex(const std::vector<HdSceneIndexBaseRefPtr> &, const HdSceneIndexBaseRefPtr &)";
    v34 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v31, 1, "Expected encapsulatedScene");
  }

  *a3 = 0;
}

void sub_29ACD4A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  sub_29ACD532C(&a32);
  sub_29ACD532C(&a38);
  sub_29ACD532C(v39 - 128);
  _Unwind_Resume(a1);
}

atomic_uint **sub_29ACD4BF8(atomic_uint **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v2[2];
    if ((v3 & 0x80000000) == 0)
    {
      if (atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) != 1)
      {
        return a1;
      }

LABEL_11:
      sub_29B2C7560(v2);
      return a1;
    }

    if (v3 == -2)
    {
      v5 = 4294967294;
    }

    else
    {
      v5 = v2[2];
      atomic_compare_exchange_strong_explicit(v2 + 2, &v5, v3 + 1, memory_order_release, memory_order_relaxed);
      if (v5 == v3)
      {
        if (v3 != -1)
        {
          return a1;
        }

        goto LABEL_11;
      }
    }

    if (!pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::_RemoveRefMaybeLocked(v2, v5))
    {
      return a1;
    }

    goto LABEL_11;
  }

  return a1;
}

atomic_uint **sub_29ACD4C90(atomic_uint **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v2[2];
    if ((v3 & 0x80000000) == 0)
    {
      if (atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) != 1)
      {
        return a1;
      }

LABEL_11:
      sub_29B2C7560(v2);
      return a1;
    }

    if (v3 == -2)
    {
      v5 = 4294967294;
    }

    else
    {
      v5 = v2[2];
      atomic_compare_exchange_strong_explicit(v2 + 2, &v5, v3 + 1, memory_order_release, memory_order_relaxed);
      if (v5 == v3)
      {
        if (v3 != -1)
        {
          return a1;
        }

        goto LABEL_11;
      }
    }

    if (!pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::_RemoveRefMaybeLocked(v2, v5))
    {
      return a1;
    }

    goto LABEL_11;
  }

  return a1;
}

void *sub_29ACD4D28(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = sub_29A0EC8D8(a3, a1, a1);
  if (v8)
  {
    if (sub_29A41D024(a2, a1))
    {

      return sub_29A0EC8D8(a4, a1, a1);
    }

    else
    {
      sub_29B2C73E0(a1, v11);
      v9 = sub_29B2C7488(v11);
      if (v10 & 1 | v9)
      {
        sub_29ACD5390(v11);
      }

      return sub_29B293818(v11);
    }
  }

  return result;
}

void sub_29ACD4EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, atomic_uint *a16)
{
  if (a16)
  {
    if (atomic_fetch_add_explicit(a16 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a16 + 8))(a16);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACD4F58(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29B2C7584();
}

uint64_t sub_29ACD4FA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_29ACD5020(a1, v5++);
    }

    while (v5 != a3);
  }

  return a1;
}

void *sub_29ACD5020(uint64_t *a1, uint64_t *a2)
{
  sub_29ACD50AC(a1, a2, &__p);
  v3 = sub_29ACD5158(a1, __p);
  if ((v4 & 1) == 0)
  {
    v5 = __p;
    __p = 0;
    if (v5)
    {
      sub_29A0ECBB4(&v8, v5);
    }
  }

  return v3;
}

void sub_29ACD5088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0ECBB4(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ACD50AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x20uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *v6 = 0;
  v6[1] = 0;
  sub_29ACCB490(v6 + 2, a2);
  *(a3 + 16) = 1;
  result = sub_29A0ECB5C((v6 + 2));
  v6[1] = bswap64(0x9E3779B97F4A7C55 * result);
  return result;
}

void sub_29ACD513C(_Unwind_Exception *a1)
{
  *v2 = 0;
  sub_29A0ECBB4(v3, v1);
  _Unwind_Resume(a1);
}

void *sub_29ACD5158(uint64_t *a1, void *a2)
{
  v2 = a2;
  v4 = bswap64(0x9E3779B97F4A7C55 * sub_29A0ECB5C((a2 + 2)));
  v2[1] = v4;
  v5 = sub_29ACD51D0(a1, v4, (v2 + 2));
  if (v5)
  {
    return v5;
  }

  sub_29A456F28(a1, v2);
  return v2;
}

void *sub_29ACD51D0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        do
        {
          v12 = v11[1];
          if (v12 == a2)
          {
            v13 = sub_29A0ECB5C((v11 + 2));
            if (v13 == sub_29A0ECB5C(a3))
            {
              return v11;
            }
          }

          else
          {
            if (v8 > 1)
            {
              if (v12 >= v4)
              {
                v12 %= v4;
              }
            }

            else
            {
              v12 &= v4 - 1;
            }

            if (v12 != v9)
            {
              break;
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v4 || (v15 * v4) < v14)
  {
    v16 = 1;
    if (v4 >= 3)
    {
      v16 = (v4 & (v4 - 1)) != 0;
    }

    v17 = v16 | (2 * v4);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    sub_29A019AA0(a1, v19);
  }

  return 0;
}

uint64_t sub_29ACD532C(uint64_t a1)
{
  sub_29ACD5368(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29ACD5368(int a1, void **__p)
{
  if (__p)
  {
    sub_29B2C75D0(__p);
  }
}

void sub_29ACD5390(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29B2C764C();
}

void *sub_29ACD53E0(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  if (a2)
  {
    sub_29A0ECFD4((a2 + 16), &v5);
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

void sub_29ACD543C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28FFF4(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACD5458(void *a1, const void *a2)
{
  *a1 = &unk_2A2084FE0;
  a1[14] = &unk_2A2085020;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 16), a2);
  sub_29ABD4DDC();
}

void sub_29ACD54D8(void *a1, const void *a2)
{
  *a1 = &unk_2A2084FE0;
  a1[14] = &unk_2A2085020;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 16), a2);
  sub_29ABD4DDC();
}

uint64_t sub_29ACD555C(uint64_t a1)
{
  v1 = *(*sub_29AC1199C((a1 + 120)) + 16);

  return v1();
}

uint64_t sub_29ACD55C0(uint64_t a1)
{
  v1 = *(*sub_29AC1199C((a1 + 120)) + 24);

  return v1();
}

void sub_29ACD5624(uint64_t a1)
{
  v2 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 120);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void *sub_29ACD56D4(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A00C968(result, a4);
    result = sub_29ACD575C(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29ACD573C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AC262C4(&a9);
  _Unwind_Resume(a1);
}

void *sub_29ACD575C(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    *a4 = *a2;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
  }

  return a4;
}

void sub_29ACD57C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29ABD4DDC();
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACD57EC(pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver *a1, const void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver(a1, a2);

  operator delete(v2);
}

void sub_29ACD5848(void **a1)
{
  *a1 = &unk_2A20851C8;
  v2 = a1 + 14;
  sub_29AC262C4(&v2);
  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::~HdSceneIndexBase(a1);
}

void sub_29ACD58A4(void *a1, const void *a2)
{
  *a1 = &unk_2A2085118;
  a1[17] = &unk_2A2085160;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 19), a2);
  sub_29ABD4DDC();
}

void sub_29ACD594C(void *a1, const void *a2)
{
  *a1 = &unk_2A2085118;
  a1[17] = &unk_2A2085160;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 19), a2);
  sub_29ABD4DDC();
}

uint64_t sub_29ACD59F8(uint64_t a1)
{
  v1 = *(*sub_29AC1199C((a1 + 144)) + 16);

  return v1();
}

uint64_t sub_29ACD5A5C(uint64_t a1)
{
  v1 = *(*sub_29AC1199C((a1 + 144)) + 24);

  return v1();
}

void *sub_29ACD5AC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_29ACD56D4(a2, *(a1 + 112), *(a1 + 120), (*(a1 + 120) - *(a1 + 112)) >> 3);
}

void sub_29ACD5ADC(uint64_t a1)
{
  v2 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 144);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29ACD5B94(pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver *a1, const void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver(a1, a2);

  operator delete(v2);
}

void *pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this[1];
  *a2 = *this;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::HdSelection::~HdSelection(pxrInternal__aapl__pxrReserved__::HdSelection *this)
{
  *this = &unk_2A2085260;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  for (i = 48; i != -32; i -= 40)
  {
    sub_29ACD6800(this + i);
  }
}

{
  pxrInternal__aapl__pxrReserved__::HdSelection::~HdSelection(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdSelection::AddRprim(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v6 = *a2;
  if (*a2 >= 2)
  {
    v10[0] = "hd/selection.cpp";
    v10[1] = "AddRprim";
    v10[2] = 22;
    v10[3] = "void pxrInternal__aapl__pxrReserved__::HdSelection::AddRprim(const HdSelection::HighlightMode &, const SdfPath &)";
    v11 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "mode < HdSelection::HighlightModeCount", 0))
    {
      return;
    }

    v6 = *a2;
  }

  v10[0] = a3;
  *(sub_29ACD690C(a1 + 40 * v6 + 8, a3, &unk_29B4D6118, v10) + 24) = 1;
  if (sub_29ABCF8C0(28))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Adding Rprim %s to HdSelection (mode %d)", v8, v9, Text, *a2);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSelection::AddInstance(uint64_t a1, unsigned int *a2, _DWORD *a3, void *a4)
{
  v8 = *a2;
  if (*a2 >= 2)
  {
    v13[0] = "hd/selection.cpp";
    v13[1] = "AddInstance";
    v13[2] = 36;
    v13[3] = "void pxrInternal__aapl__pxrReserved__::HdSelection::AddInstance(const HdSelection::HighlightMode &, const SdfPath &, const VtIntArray &)";
    v14 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v13, "mode < HdSelection::HighlightModeCount", 0))
    {
      return;
    }

    v8 = *a2;
  }

  if (!*a4)
  {
    v13[0] = a3;
    *(sub_29ACD690C(a1 + 40 * v8 + 8, a3, &unk_29B4D6118, v13) + 24) = 1;
    v8 = *a2;
  }

  v13[0] = a3;
  v9 = sub_29ACD690C(a1 + 40 * v8 + 8, a3, &unk_29B4D6118, v13);
  sub_29ACD5EB8(v9 + 4, a4);
  if (sub_29ABCF8C0(28))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Adding instances of Rprim %s to HdSelection (mode %d)", v11, v12, Text, *a2);
  }
}

uint64_t sub_29ACD5EB8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29ACD6C40(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    v5 = *(a2 + 32);
    *(v3 + 32) = v5;
    if (v5)
    {
      v6 = (v5 - 16);
      if (*(v3 + 24))
      {
        v6 = *(v3 + 24);
      }

      atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
    }

    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSelection::AddElements(uint64_t a1, unsigned int *a2, _DWORD *a3, void *a4)
{
  if (*a2 < 2 || (sub_29B2C7698(v14) & 1) != 0)
  {
    v8 = a1 + 40 * *a2;
    if (*a4)
    {
      v15 = a3;
      v9 = sub_29ACD690C(v8 + 8, a3, &unk_29B4D6118, &v15);
      sub_29ACD5EB8(v9 + 7, a4);
      if (!sub_29ABCF8C0(28))
      {
        return;
      }

      v10 = "Adding elements of Rprim %s to HdSelection (mode %d)";
    }

    else
    {
      v15 = a3;
      *(sub_29ACD690C(v8 + 8, a3, &unk_29B4D6118, &v15) + 24) = 1;
      if (!sub_29ABCF8C0(28))
      {
        return;
      }

      v10 = "Adding Rprim (via AddElements) %s to HdSelection (mode %d)";
    }

    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(v10, v12, v13, Text, *a2);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSelection::AddEdges(uint64_t a1, unsigned int *a2, _DWORD *a3, void *a4)
{
  v8 = *a2;
  if (*a2 < 2)
  {
    if (!*a4)
    {
      return;
    }

    goto LABEL_3;
  }

  v13[0] = "hd/selection.cpp";
  v13[1] = "AddEdges";
  v13[2] = 83;
  v13[3] = "void pxrInternal__aapl__pxrReserved__::HdSelection::AddEdges(const HdSelection::HighlightMode &, const SdfPath &, const VtIntArray &)";
  v14 = 0;
  if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v13, "mode < HdSelection::HighlightModeCount", 0) && *a4)
  {
    v8 = *a2;
LABEL_3:
    v13[0] = a3;
    v9 = sub_29ACD690C(a1 + 40 * v8 + 8, a3, &unk_29B4D6118, v13);
    sub_29ACD5EB8(v9 + 10, a4);
    if (sub_29ABCF8C0(28))
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Adding edges of Rprim %s to HdSelection (mode %d)", v11, v12, Text, *a2);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdSelection::AddPoints(uint64_t a1, unsigned int *a2, _DWORD *a3, void *a4)
{
  if (*a2 < 2 || (sub_29B2C76E0(v8) & 1) != 0)
  {
    pxrInternal__aapl__pxrReserved__::HdSelection::_AddPoints(a1, a2, a3, a4, 0xFFFFFFFF);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSelection::_AddPoints(uint64_t a1, unsigned int *a2, _DWORD *a3, void *a4, unsigned int a5)
{
  v16 = a5;
  if (*a4)
  {
    v8 = a1 + 8;
    v9 = a1 + 8 + 40 * *a2;
    v17 = a3;
    v10 = sub_29ACD690C(v9, a3, &unk_29B4D6118, &v17);
    sub_29ACD5EB8(v10 + 13, a4);
    v11 = v8 + 40 * *a2;
    v17 = a3;
    v12 = sub_29ACD690C(v11, a3, &unk_29B4D6118, &v17);
    sub_29A00D250(v12 + 16, &v16);
    if (sub_29ABCF8C0(28))
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Adding points of Rprim %s to HdSelection (mode %d) with point color index %d", v14, v15, Text, *a2, v16);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdSelection::AddPoints(uint64_t a1, unsigned int *a2, _DWORD *a3, void *a4, float *a5)
{
  if (*a2 < 2 || (sub_29B2C7728(v12) & 1) != 0)
  {
    v10 = sub_29ACD6F7C(*(a1 + 88), *(a1 + 96), a5);
    v11 = *(a1 + 88);
    if (v10 == *(a1 + 96))
    {
      sub_29A03A998(a1 + 88, a5);
    }

    pxrInternal__aapl__pxrReserved__::HdSelection::_AddPoints(a1, a2, a3, a4, (v10 - v11) >> 4);
  }
}

void *pxrInternal__aapl__pxrReserved__::HdSelection::GetPrimSelectionState(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v5 = *a2;
  if (*a2 >= 2)
  {
    v8[0] = "hd/selection.cpp";
    v8[1] = "GetPrimSelectionState";
    v8[2] = 142;
    v8[3] = "const HdSelection::PrimSelectionState *pxrInternal__aapl__pxrReserved__::HdSelection::GetPrimSelectionState(const HdSelection::HighlightMode &, const SdfPath &) const";
    v9 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v8, "mode < HdSelection::HighlightModeCount", 0))
    {
      return 0;
    }

    v5 = *a2;
  }

  result = sub_29A328A44((a1 + 40 * v5 + 8), a3);
  if (result)
  {
    result += 3;
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::HdSelection::GetAllSelectedPrimPaths@<X0>(pxrInternal__aapl__pxrReserved__::HdSelection *this@<X0>, void *a2@<X8>)
{
  v4 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v8[0] = v4;
    result = pxrInternal__aapl__pxrReserved__::HdSelection::_GetSelectionPrimPathsForMode(this, v8, a2);
    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  return result;
}

void sub_29ACD6448(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::HdSelection::_GetSelectionPrimPathsForMode(unint64_t result, unsigned int *a2, uint64_t a3)
{
  v5 = result;
  if (a3 || (result = sub_29B2C7770(v7), (result & 1) != 0))
  {
    for (i = *(v5 + 40 * *a2 + 24); i; i = *i)
    {
      result = sub_29A1E28B4(a3, i + 4);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSelection::GetSelectedPrimPaths@<X0>(unint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*a2 < 2)
  {
    return pxrInternal__aapl__pxrReserved__::HdSelection::_GetSelectionPrimPathsForMode(a1, a2, a3);
  }

  v7[0] = "hd/selection.cpp";
  v7[1] = "GetSelectedPrimPaths";
  v7[2] = 170;
  v7[3] = "SdfPathVector pxrInternal__aapl__pxrReserved__::HdSelection::GetSelectedPrimPaths(const HdSelection::HighlightMode &) const";
  v8 = 0;
  result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v7, "mode < HdSelection::HighlightModeCount", 0);
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::HdSelection::_GetSelectionPrimPathsForMode(a1, a2, a3);
  }

  return result;
}

void sub_29ACD6574(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdSelection::Merge@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *result;
  if (*result && (*(v4 + 32) || *(v4 + 72)))
  {
    v5 = *a2;
    if (*a2 && (*(v5 + 32) || *(v5 + 72)))
    {
      sub_29ACD6FCC(&v8, v4);
    }

    v6 = result[1];
    *a3 = v4;
  }

  else
  {
    v6 = a2[1];
    *a3 = *a2;
  }

  a3[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_29ACD67E0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ACD6800(uint64_t a1)
{
  sub_29ACD683C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29ACD683C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29ACD6880((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29ACD6880(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    *(a1 + 120) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 88);
  sub_29A8440C8(&v4);
  v4 = (a1 + 64);
  sub_29A8440C8(&v4);
  v4 = (a1 + 40);
  sub_29A8440C8(&v4);
  v4 = (a1 + 16);
  sub_29A8440C8(&v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

void *sub_29ACD690C(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = v6;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if (result[2] == *a2)
            {
              return result;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29ACD6B54(a1, v6, a4, &v22);
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }

      else
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v4);
  if (v19)
  {
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v4) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29ACD6B3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ACD6BE4(va, 0);
  _Unwind_Resume(a1);
}

double sub_29ACD6B54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x98uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v9 = *a3;
  sub_29A1E21F4(v8 + 4, v9);
  sub_29A1E2240(v8 + 5, v9 + 1);
  *(v8 + 24) = 0;
  result = 0.0;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 5) = 0u;
  *(v8 + 6) = 0u;
  *(v8 + 7) = 0u;
  *(v8 + 8) = 0u;
  v8[18] = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29ACD6BE4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29ACD6880(v2 + 16);
    }

    operator delete(v2);
  }
}

uint64_t sub_29ACD6C40(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_29A00C9A4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    v7 = sub_29A10E224(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[40 * v2];
  v18 = v7;
  v19 = v8;
  *(&v20 + 1) = &v7[40 * v6];
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 1) = v9;
  v10 = *(a2 + 32);
  *(v8 + 4) = v10;
  if (v10)
  {
    v11 = (v10 - 16);
    if (*(v8 + 3))
    {
      v11 = *(v8 + 3);
    }

    atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
  }

  *&v20 = v8 + 40;
  v12 = a1[1];
  v13 = &v8[*a1 - v12];
  sub_29ACD6D8C(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_29ACD6F00(&v18);
  return v17;
}

void sub_29ACD6D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ACD6F00(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACD6D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *(v4 + 16);
      *a4 = *v4;
      *(a4 + 16) = v5;
      v6 = *(v4 + 32);
      *(a4 + 32) = v6;
      if (v6)
      {
        v7 = (v6 - 16);
        if (*(a4 + 24))
        {
          v7 = *(a4 + 24);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
        a4 = v12;
      }

      v4 += 40;
      a4 += 40;
      v12 = a4;
    }

    while (v4 != a3);
  }

  v10 = 1;
  sub_29ACD6E40(a1, a2, a3);
  return sub_29ACD6E84(v9);
}

void sub_29ACD6E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }
}

uint64_t sub_29ACD6E84(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29ACD6EBC(a1);
  }

  return a1;
}

uint64_t sub_29ACD6EBC(uint64_t result)
{
  if (**(result + 16) != **(result + 8))
  {
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  return result;
}

uint64_t sub_29ACD6F00(uint64_t a1)
{
  sub_29ACD6F38(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29ACD6F38(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    *(result + 16) = v2 - 40;
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  return result;
}

float *sub_29ACD6F7C(float *result, float *a2, float *a3)
{
  for (; result != a2; result += 4)
  {
    if (*result == *a3 && result[1] == a3[1] && result[2] == a3[2] && result[3] == a3[3])
    {
      break;
    }
  }

  return result;
}

void sub_29ACD7028(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2085290;
  sub_29ACD7124(&v2, a1 + 3, a2);
}

void sub_29ACD70B8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2085290;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29ACD7124(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = &unk_2A2085260;
  v5 = (a2 + 6);
  sub_29ACD71D8((a2 + 1), a3 + 8);
  sub_29ACD71D8(v5, a3 + 48);
  a2[11] = 0;
  a2[12] = 0;
  a2[13] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::GfVec4f>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4f*,pxrInternal__aapl__pxrReserved__::GfVec4f*>();
}

void sub_29ACD71A4(_Unwind_Exception *a1)
{
  v3 = v1 + 48;
  v4 = -80;
  do
  {
    v3 = sub_29ACD6800(v3) - 40;
    v4 += 40;
  }

  while (v4);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACD71D8(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29ACD7250(a1, i + 4, i + 4);
  }

  return a1;
}

void *sub_29ACD7250(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v3 = v5;
      if (v5 >= v6)
      {
        v3 = v5 % v6;
      }
    }

    else
    {
      v3 = v5 & (v6 - 1);
    }

    v8 = *(*a1 + 8 * v3);
    if (v8)
    {
      result = *v8;
      if (*v8)
      {
        do
        {
          v10 = result[1];
          if (v10 == v5)
          {
            if (result[2] == *a2)
            {
              return result;
            }
          }

          else
          {
            if (v7.u32[0] > 1uLL)
            {
              if (v10 >= v6)
              {
                v10 %= v6;
              }
            }

            else
            {
              v10 &= v6 - 1;
            }

            if (v10 != v3)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29ACD7498(a1, v5, a3, &v21);
  v11 = (*(a1 + 24) + 1);
  v12 = *(a1 + 32);
  if (!v6 || (v12 * v6) < v11)
  {
    v13 = 1;
    if (v6 >= 3)
    {
      v13 = (v6 & (v6 - 1)) != 0;
    }

    v14 = v13 | (2 * v6);
    v15 = vcvtps_u32_f32(v11 / v12);
    if (v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    sub_29A019AA0(a1, v16);
    v6 = *(a1 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v5 >= v6)
      {
        v3 = v5 % v6;
      }

      else
      {
        v3 = v5;
      }
    }

    else
    {
      v3 = (v6 - 1) & v5;
    }
  }

  v17 = *a1;
  v18 = *(*a1 + 8 * v3);
  if (v18)
  {
    result = v21;
    *v21 = *v18;
    *v18 = result;
  }

  else
  {
    v19 = v21;
    *v21 = *(a1 + 16);
    *(a1 + 16) = v19;
    *(v17 + 8 * v3) = a1 + 16;
    result = v21;
    if (*v21)
    {
      v20 = *(*v21 + 8);
      if ((v6 & (v6 - 1)) != 0)
      {
        if (v20 >= v6)
        {
          v20 %= v6;
        }
      }

      else
      {
        v20 &= v6 - 1;
      }

      *(*a1 + 8 * v20) = v21;
      result = v21;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29ACD7480(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ACD6BE4(va, 0);
  _Unwind_Resume(a1);
}

_DWORD *sub_29ACD7498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x98uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  result = sub_29ACD7508(v8 + 4, a3);
  *(a4 + 16) = 1;
  return result;
}

_DWORD *sub_29ACD7508(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, a2 + 1);
  sub_29ACD7560((a1 + 2), (a2 + 2));
  return a1;
}

uint64_t sub_29ACD7560(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_29ACD76BC((a1 + 8), *(a2 + 8), *(a2 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_29ACD76BC((a1 + 32), *(a2 + 32), *(a2 + 40), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_29ACD76BC((a1 + 56), *(a2 + 56), *(a2 + 64), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 64) - *(a2 + 56)) >> 3));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_29ACD76BC((a1 + 80), *(a2 + 80), *(a2 + 88), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 88) - *(a2 + 80)) >> 3));
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_29A0BE2C8((a1 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 2);
  return a1;
}

void sub_29ACD7668(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A8440C8(va);
  sub_29A8440C8(va);
  sub_29A8440C8(va);
  sub_29A8440C8(va);
  _Unwind_Resume(a1);
}

void *sub_29ACD76BC(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A10E7C8(result, a4);
    result = sub_29ACD7744(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29ACD7724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A8440C8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACD7744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  for (v9[2] = &v12; a2 != a3; v12 = v4)
  {
    v5 = *(a2 + 16);
    *v4 = *a2;
    *(v4 + 16) = v5;
    v6 = *(a2 + 32);
    *(v4 + 32) = v6;
    if (v6)
    {
      v7 = (v6 - 16);
      if (*(v4 + 24))
      {
        v7 = *(v4 + 24);
      }

      atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      v4 = v12;
    }

    a2 += 40;
    v4 += 40;
  }

  v10 = 1;
  sub_29ACD6E84(v9);
  return v4;
}

char *sub_29ACD77E4(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 4)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 4);
    if (v12 >> 60)
    {
      sub_29A00C9A4();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    if (v15)
    {
      v17 = sub_29A017BD4(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v34 = &v17[16 * v16];
    v35 = 16 * a5;
    v36 = v34;
    do
    {
      v37 = *v7++;
      *v36 = v37;
      v36 += 16;
      v35 -= 16;
    }

    while (v35);
    v38 = &v17[16 * v15];
    memcpy(&v34[16 * a5], v5, a1[1] - v5);
    v39 = *a1;
    v40 = &v34[16 * a5 + a1[1] - v5];
    a1[1] = v5;
    v41 = v5 - v39;
    v42 = &v34[-(v5 - v39)];
    memcpy(v42, v39, v41);
    v43 = *a1;
    *a1 = v42;
    a1[1] = v40;
    a1[2] = v38;
    if (v43)
    {
      operator delete(v43);
    }

    return v34;
  }

  v18 = (v10 - __dst) >> 4;
  if (v18 >= a5)
  {
    v23 = &__dst[16 * a5];
    v24 = &v10[-16 * a5];
    v25 = a1[1];
    while (v24 < v10)
    {
      v26 = *v24;
      v24 += 16;
      *v25++ = v26;
    }

    a1[1] = v25;
    if (v10 != v23)
    {
      memmove(&__dst[16 * a5], __dst, v10 - v23);
    }

    v31 = 16 * a5;
    v32 = v5;
    v33 = v7;
    goto LABEL_35;
  }

  v19 = &__src[v10 - __dst];
  v20 = a1[1];
  v21 = v20;
  while (v19 != a4)
  {
    v22 = *v19;
    v19 += 16;
    *v21 = v22;
    v21 += 16;
    v20 += 16;
  }

  a1[1] = v20;
  if (v18 >= 1)
  {
    v27 = &__dst[16 * a5];
    v28 = &v20[-16 * a5];
    v29 = v20;
    while (v28 < v10)
    {
      v30 = *v28;
      v28 += 16;
      *v29 = v30;
      v29 += 16;
    }

    a1[1] = v29;
    if (v21 != v27)
    {
      memmove(&__dst[16 * a5], __dst, v20 - v27);
    }

    if (v10 != v5)
    {
      v32 = v5;
      v33 = v7;
      v31 = v10 - v5;
LABEL_35:
      memmove(v32, v33, v31);
    }
  }

  return v5;
}

uint64_t sub_29ACD79E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 3)) >= a5)
    {
      v18 = v10 - a2;
      if ((0xCCCCCCCCCCCCCCCDLL * ((v10 - a2) >> 3)) >= a5)
      {
        v21 = 5 * a5;
        sub_29ACD7C1C(a1, a2, a1[1], a2 + 40 * a5);
        v22 = v7 + 8 * v21;
        v23 = v5;
        do
        {
          sub_29A27CF04(v23, v7);
          v7 += 40;
          v23 = (v23 + 40);
        }

        while (v7 != v22);
      }

      else
      {
        v19 = v18 + a3;
        a1[1] = sub_29ACD7744(a1, v18 + a3, a4, a1[1]);
        if (v18 >= 1)
        {
          sub_29ACD7C1C(a1, v5, v10, v5 + 40 * a5);
          v20 = v5;
          do
          {
            sub_29A27CF04(v20, v7);
            v7 += 40;
            v20 = (v20 + 40);
          }

          while (v7 != v19);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x3333333333333333 * ((v10 - *a1) >> 3);
      if (v12 > 0x666666666666666)
      {
        sub_29A00C9A4();
      }

      v13 = a2 - v11;
      v14 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x333333333333333)
      {
        v15 = 0x666666666666666;
      }

      else
      {
        v15 = v12;
      }

      v16 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
      v30[4] = a1;
      if (v15)
      {
        v17 = sub_29A10E224(a1, v15);
      }

      else
      {
        v17 = 0;
      }

      v24 = &v17[40 * v16];
      v30[0] = v17;
      v30[1] = v24;
      v30[3] = &v17[40 * v15];
      v25 = &v24[40 * a5];
      do
      {
        v26 = *(v7 + 16);
        *v24 = *v7;
        *(v24 + 1) = v26;
        v27 = *(v7 + 32);
        *(v24 + 4) = v27;
        if (v27)
        {
          v28 = (v27 - 16);
          if (*(v24 + 3))
          {
            v28 = *(v24 + 3);
          }

          atomic_fetch_add_explicit(v28, 1uLL, memory_order_relaxed);
        }

        v24 += 40;
        v7 += 40;
      }

      while (v24 != v25);
      v30[2] = v25;
      v5 = sub_29ACD7C98(a1, v30, v5);
      sub_29ACD6F00(v30);
    }
  }

  return v5;
}

uint64_t sub_29ACD7C1C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
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
      v10 = *(v9 + 16);
      *v8 = *v9;
      *(v8 + 16) = v10;
      *v9 = 0uLL;
      *(v9 + 16) = 0uLL;
      *(v8 + 32) = *(v9 + 32);
      *(v9 + 32) = 0;
      v9 += 40;
      v8 += 40;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_29ACD7D54(&v12, a2, v7, v6);
}

uint64_t sub_29ACD7C98(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  sub_29ACD6D8C(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  sub_29ACD6D8C(a1, v7, a3, v9);
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

uint64_t sub_29ACD7D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v4 = a4 - 40;
    v5 = a3;
    do
    {
      v6 = v5 - 40;
      if (v5 != v4 + 40)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
      }

      v4 -= 40;
      v5 -= 40;
    }

    while (v6 != a2);
  }

  return a3;
}

void pxrInternal__aapl__pxrReserved__::HdSelectionSchemaTokens_StaticTokenType::~HdSelectionSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdSelectionSchemaTokens_StaticTokenType *this)
{
  v3 = (this + 16);
  sub_29A124AB0(&v3);
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdSelectionSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdSelectionSchemaTokens_StaticTokenType::HdSelectionSchemaTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "fullySelected", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "nestedInstanceIndices", 0);
  v3 = this + 2;
  v4 = *this;
  v11 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v5;
    }
  }

  v6 = this[1];
  v12 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v7;
    }
  }

  *v3 = 0;
  this[3] = 0;
  this[4] = 0;
  sub_29A12EF7C(v3, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v9 = *(&v11 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACD7F64(_Unwind_Exception *a1)
{
  v3 = 8;
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
      v5 = v1[1];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdSelectionSchema::GetFullySelected(pxrInternal__aapl__pxrReserved__::HdSelectionSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSelectionSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACD83F0(&pxrInternal__aapl__pxrReserved__::HdSelectionSchemaTokens);
  }

  v6 = *v4;
  if ((*v4 & 7) != 0)
  {
    v5 = (*v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 = v5;
    }
  }

  sub_29ABCB628(this, a2);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSelectionSchema::GetNestedInstanceIndices(pxrInternal__aapl__pxrReserved__::HdSelectionSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSelectionSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACD83F0(&pxrInternal__aapl__pxrReserved__::HdSelectionSchemaTokens);
  }

  v5 = v4[1];
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  sub_29AC100E4(this, &v9);
  v7 = v10;
  *a2 = v9;
  a2[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }

  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSelectionSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v25[1] = *MEMORY[0x29EDCA608];
  v5 = &v22;
  v24 = 0;
  v25[0] = 0;
  v6 = &v24;
  v22 = 0u;
  v23 = 0u;
  if (*a1)
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSelectionSchemaTokens);
    if (!v8)
    {
      v8 = sub_29ACD83F0(&pxrInternal__aapl__pxrReserved__::HdSelectionSchemaTokens);
    }

    v5 = &v23;
    v6 = v25;
    sub_29A166F2C(&v24, v8);
    v10 = *a1;
    v9 = a1[1];
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = *(&v22 + 1);
    *&v22 = v10;
    *(&v22 + 1) = v9;
    if (v11)
    {
      sub_29A014BEC(v11);
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  if (*a2)
  {
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSelectionSchemaTokens);
    if (!v13)
    {
      v13 = sub_29ACD83F0(&pxrInternal__aapl__pxrReserved__::HdSelectionSchemaTokens);
    }

    sub_29A166F2C(v6, v13 + 1);
    ++v12;
    v15 = *a2;
    v14 = a2[1];
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v16 = *(v5 + 1);
    *v5 = v15;
    *(v5 + 1) = v14;
    if (v16)
    {
      sub_29A014BEC(v16);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v12, &v24, &v22, &v21);
  *a3 = v21;
  for (i = 24; i != -8; i -= 16)
  {
    v18 = *(&v22 + i);
    if (v18)
    {
      sub_29A014BEC(v18);
    }
  }

  for (j = 1; j != -1; --j)
  {
    v20 = v25[j - 1];
    if ((v20 & 7) != 0)
    {
      atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29ACD82FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v17 = 24;
  while (1)
  {
    v18 = *(&a11 + v17);
    if (v18)
    {
      sub_29A014BEC(v18);
    }

    v17 -= 16;
    if (v17 == -8)
    {
      v19 = 8;
      while (1)
      {
        v20 = *(&a16 + v19);
        if ((v20 & 7) != 0)
        {
          atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v19 -= 8;
        if (v19 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdSelectionSchema::Builder::SetFullySelected(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSelectionSchema::Builder::SetNestedInstanceIndices(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

atomic_uint **sub_29ACD83F0(atomic_ullong *a1)
{
  result = sub_29ACD8438();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdSelectionSchemaTokens_StaticTokenType::~HdSelectionSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

atomic_uint **sub_29ACD8438()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::HdSelectionSchemaTokens_StaticTokenType::HdSelectionSchemaTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::HdSelectionsSchemaTokens_StaticTokenType::~HdSelectionsSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdSelectionsSchemaTokens_StaticTokenType *this)
{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdSelectionsSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdSelectionsSchemaTokens_StaticTokenType::HdSelectionsSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdSelectionsSchemaTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "selections", 0);
  v5 = *v2;
  v3 = v2 + 1;
  v4 = v5;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  sub_29A12EF7C(v3, &v8, &v9, 1uLL);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::HdSelectionsSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdSelectionsSchemaTokens))
    {
      sub_29ACD87C0(&pxrInternal__aapl__pxrReserved__::HdSelectionsSchemaTokens);
    }

    (*(*v3 + 24))(&v6, v3);
    sub_29ABE3E74(&v6, &v8);
    v5 = v9;
    *a2 = v8;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v9)
      {
        sub_29A014BEC(v9);
      }
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::HdSelectionsSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdSelectionsSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSelectionsSchemaTokens);
  if (!result)
  {
    return sub_29ACD87C0(&pxrInternal__aapl__pxrReserved__::HdSelectionsSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdSelectionsSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdSelectionsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174BA90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BA90))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSelectionsSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ACD87C0(&pxrInternal__aapl__pxrReserved__::HdSelectionsSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174BA58, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A174BA58, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174BA90);
  }

  return &unk_2A174BA58;
}

unint64_t sub_29ACD87C0(atomic_ullong *a1)
{
  v2 = sub_29ACD8840();
  v3 = v2;
  v4 = 0;
  atomic_compare_exchange_strong(a1, &v4, v2);
  if (v4)
  {
    if (v2)
    {
      v6 = (v2 + 8);
      sub_29A124AB0(&v6);
      if ((*v3 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v3);
    }

    return atomic_load(a1);
  }

  return v3;
}

pxrInternal__aapl__pxrReserved__::HdSelectionsSchemaTokens_StaticTokenType *sub_29ACD8840()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::HdSelectionsSchemaTokens_StaticTokenType::HdSelectionsSchemaTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::Hd_SmoothNormals::ComputeSmoothNormals(int *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_29ACD889C(a2, a3, (a1 + 2), *a1, a4);
}

{
  sub_29ACD895C(a2, a3, (a1 + 2), *a1, a4);
}

void sub_29ACD889C(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a4 >= a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = a4;
  }

  v9 = v8;
  v10 = sub_29A193124(a5, v8);
  sub_29A1935CC(v10);
  v11 = *(a5 + 32);
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = v11;
  v12[0] = sub_29ACD8B84;
  v12[1] = 0;
  v12[2] = v13;
  sub_29ACD8CC0(v9, v12, 1);
}

void sub_29ACD895C(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a4 >= a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = a4;
  }

  v9 = v8;
  v10 = sub_29A1948F8(a5, v8);
  sub_29A194CC8(v10);
  v11 = *(a5 + 32);
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = v11;
  v12[0] = sub_29ACD9488;
  v12[1] = 0;
  v12[2] = v13;
  sub_29ACD95A8(v9, v12, 1);
}

void pxrInternal__aapl__pxrReserved__::Hd_SmoothNormals::ComputeSmoothNormalsPacked(int *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_29ACD8A1C(a2, a3, (a1 + 2), *a1, a4);
}

{
  sub_29ACD8ADC(a2, a3, (a1 + 2), *a1, a4);
}

void sub_29ACD8A1C(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a4 >= a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = a4;
  }

  v9 = v8;
  v10 = sub_29AC2F95C(a5, v8);
  sub_29AC2FFC0(v10);
  v11 = *(a5 + 32);
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = v11;
  v12[0] = sub_29ACD9D70;
  v12[1] = 0;
  v12[2] = v13;
  sub_29ACD9F0C(v9, v12, 1);
}

void sub_29ACD8ADC(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a4 >= a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = a4;
  }

  v9 = v8;
  v10 = sub_29AC2F95C(a5, v8);
  sub_29AC2FFC0(v10);
  v11 = *(a5 + 32);
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = v11;
  v12[0] = sub_29ACDA6D4;
  v12[1] = 0;
  v12[2] = v13;
  sub_29ACDA854(v9, v12, 1);
}

double sub_29ACD8B84(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  if (a2 < a3)
  {
    LODWORD(result) = 786163455;
    do
    {
      v4 = *(a1[1] + 32);
      v5 = *(v4 + 8 * a2 + 4);
      if (v5 < 1)
      {
        v14 = 0.0;
        v13 = 0.0;
        v12 = 0.0;
      }

      else
      {
        v6 = *a1;
        v7 = (*a1 + 12 * a2);
        v8 = (v4 + 4 * *(v4 + 8 * a2));
        v9 = *v7;
        v10 = v7[1];
        v11 = v7[2];
        v12 = 0.0;
        v13 = 0.0;
        v14 = 0.0;
        do
        {
          v15 = *v8;
          v16 = v8[1];
          v8 += 2;
          v17 = (v6 + 12 * v15);
          v18 = (v6 + 12 * v16);
          v19 = *v18 - v9;
          v20 = v18[1] - v10;
          v21 = v18[2] - v11;
          v22 = *v17 - v9;
          v23 = v17[1] - v10;
          v24 = v17[2] - v11;
          v12 = v12 + ((v20 * v24) - (v21 * v23));
          v13 = v13 + ((v21 * v22) - (v19 * v24));
          v14 = v14 + ((v19 * v23) - (v20 * v22));
          --v5;
        }

        while (v5);
      }

      v25 = 1.0 / fmaxf(sqrtf((v14 * v14) + ((v13 * v13) + (v12 * v12))), 1.0e-10);
      v26 = v25 * v12;
      v27 = v25 * v13;
      v28 = v25 * v14;
      v29 = (a1[2] + 12 * a2);
      *v29 = v26;
      v29[1] = v27;
      v29[2] = v28;
      ++a2;
    }

    while (a2 != a3);
  }

  return result;
}

void sub_29ACD8CC0(pxrInternal__aapl__pxrReserved__ *a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(a1))
    {
      v15[0] = 0;
      v16 = 65539;
      v17 = 55;
      tbb::task_group_context::init(v15, v6, v7, v8);
      v13[0] = a1;
      v13[1] = 0;
      v13[2] = a3;
      v12 = a2;
      sub_29ACD8DFC(v13, &v12, &v14, v15);
      tbb::task_group_context::~task_group_context(v15);
    }

    else
    {
      v9 = *(a2 + 8);
      v10 = *a2;
      v11 = (*(a2 + 16) + (v9 >> 1));
      if (v9)
      {
        v10 = *(*v11 + v10);
      }

      v10(v11, 0, a1);
    }
  }
}

void sub_29ACD8DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  tbb::task_group_context::~task_group_context(va);
  _Unwind_Resume(a1);
}

void *sub_29ACD8DFC(void *result, void *a2, uint64_t a3, tbb::task_group_context *a4)
{
  if (result[1] < *result)
  {
    v5 = result;
    v9 = a4;
    v6 = tbb::internal::allocate_root_with_context_proxy::allocate(&v9, 0x38uLL);
    *(v6 - 11) = 1;
    *v6 = &unk_2A20852E0;
    v7 = v5[2];
    *(v6 + 8) = *v5;
    *(v6 + 24) = v7;
    *(v6 + 32) = *a2;
    initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v6);
    *(v6 + 48) = 0;
    *(v6 + 52) = 5;
    *(v6 + 40) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
    return (*(**(v6 - 40) + 16))(*(v6 - 40), v6, v6 - 8);
  }

  return result;
}

uint64_t sub_29ACD8EFC(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = a1 + 40;
  if (!v3)
  {
    *(a1 + 40) = 1;
    if (*(a1 - 11) < 0)
    {
      v4 = *(a1 - 32);
      if (*(v4 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v4 + 8) = 1;
        v5 = *(a1 + 52);
        if (v5 <= 1)
        {
          LOBYTE(v5) = 1;
        }

        *(a1 + 52) = v5 + 1;
      }
    }
  }

  sub_29ACD8F6C(v2, a1, a1 + 8);
  return 0;
}

void sub_29ACD8F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) < *a3 - *(a3 + 8))
  {
    if (*a1 > 1uLL)
    {
      goto LABEL_6;
    }

    if (*a1)
    {
LABEL_4:
      if (*(a1 + 12))
      {
        --*(a1 + 12);
        *a1 = 0;
LABEL_6:
        while (1)
        {
          sub_29ACD9020(a2);
          if (*(a3 + 16) >= *a3 - *(a3 + 8))
          {
            break;
          }

          if (*a1 <= 1uLL)
          {
            if (*a1)
            {
              goto LABEL_4;
            }

            break;
          }
        }
      }
    }
  }

  sub_29ACD9138(a1, a2, a3);
}

uint64_t sub_29ACD9020(uint64_t a1)
{
  v2 = tbb::internal::allocate_continuation_proxy::allocate(a1, 0x10uLL);
  *(v2 - 11) = 1;
  *v2 = &unk_2A204C520;
  __dmb(0xBu);
  v2[8] = 0;
  *(a1 - 32) = v2;
  *(v2 - 3) = 2;
  v3 = tbb::internal::allocate_child_proxy::allocate(v2, 0x38uLL);
  *(v3 - 11) = 1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *v3 = &unk_2A20852E0;
  *(v3 + 8) = v4;
  v6 = v5 + ((v4 - v5) >> 1);
  *(a1 + 8) = v6;
  *(v3 + 16) = v6;
  *(v3 + 24) = *(a1 + 24);
  v7 = *(a1 + 40) >> 1;
  *(a1 + 40) = v7;
  *(v3 + 40) = v7;
  *(v3 + 48) = 2;
  *(v3 + 52) = *(a1 + 52);
  v8 = ***(v3 - 40);

  return v8();
}

void sub_29ACD9138(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  if (*(a3 + 2) < *a3 - *(a3 + 1) && *(a1 + 12))
  {
    *v20 = 0x10000;
    v21 = *a3;
    v22 = *(a3 + 2);
    while (1)
    {
      v5 = sub_29A3B10B4(v20, *(a1 + 12));
      v6 = *(*(a2 - 32) + 8);
      __dmb(0xBu);
      if ((v6 & 1) == 0)
      {
        break;
      }

      v7 = *(a1 + 12) + 1;
      *(a1 + 12) = v7;
      v8 = v20[2];
      if (v20[2] < 2u)
      {
        v9 = v20[0];
        if (v20[v20[0] + 3] >= v7 || *(&v21 + 3 * v20[0] + 2) >= *(&v21 + 3 * v20[0]) - *(&v21 + 3 * v20[0] + 1))
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_29ACD9368(a2, (&v21 + 24 * v20[1]), v20[v20[1] + 3]);
        v8 = --v20[2];
        v20[1] = (v20[1] + 1) & 7;
      }

LABEL_11:
      if (!v8 || tbb::task_group_context::is_group_execution_cancelled(*(a2 - 56)))
      {
        return;
      }
    }

    v9 = v20[0];
LABEL_8:
    v10 = *(a2 + 32);
    v11 = *v10;
    v13 = v10 + 8;
    v12 = *(v10 + 8);
    v14 = (*(v13 + 8) + (v12 >> 1));
    if (v12)
    {
      v11 = *(*v14 + v11);
    }

    v11(v14, *(&v21 + 3 * v9 + 1), *(&v21 + 3 * v9), v5);
    v8 = --v20[2];
    v20[0] = (v20[0] - 1) & 7;
    goto LABEL_11;
  }

  v15 = *(a2 + 32);
  v16 = *v15;
  v18 = v15 + 8;
  v17 = *(v15 + 8);
  v19 = (*(v18 + 8) + (v17 >> 1));
  if (v17)
  {
    v16 = *(*v19 + v16);
  }

  v16(v19);
}

uint64_t sub_29ACD9368(uint64_t a1, __int128 *a2, char a3)
{
  v6 = tbb::internal::allocate_continuation_proxy::allocate(a1, 0x10uLL);
  *(v6 - 11) = 1;
  *v6 = &unk_2A204C520;
  __dmb(0xBu);
  v6[8] = 0;
  *(a1 - 32) = v6;
  *(v6 - 3) = 2;
  v7 = tbb::internal::allocate_child_proxy::allocate(v6, 0x38uLL);
  *(v7 - 11) = 1;
  *v7 = &unk_2A20852E0;
  v8 = *a2;
  *(v7 + 24) = *(a2 + 2);
  *(v7 + 8) = v8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40) >> 1;
  *(a1 + 40) = v10;
  *(v7 + 32) = v9;
  *(v7 + 40) = v10;
  *(v7 + 48) = 2;
  *(v7 + 52) = *(a1 + 52) - a3;
  v11 = ***(v7 - 40);

  return v11();
}

double sub_29ACD9488(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  if (a2 < a3)
  {
    result = 1.0e-10;
    do
    {
      v4 = *(a1[1] + 32);
      v5 = *(v4 + 8 * a2 + 4);
      if (v5 < 1)
      {
        v14 = 0.0;
        v13 = 0.0;
        v12 = 0.0;
      }

      else
      {
        v6 = *a1;
        v7 = (*a1 + 24 * a2);
        v8 = (v4 + 4 * *(v4 + 8 * a2));
        v9 = *v7;
        v10 = v7[1];
        v11 = v7[2];
        v12 = 0.0;
        v13 = 0.0;
        v14 = 0.0;
        do
        {
          v15 = *v8;
          v16 = v8[1];
          v8 += 2;
          v17 = (v6 + 24 * v15);
          v18 = (v6 + 24 * v16);
          v19 = *v18 - v9;
          v20 = v18[1] - v10;
          v21 = v18[2] - v11;
          v22 = *v17 - v9;
          v23 = v17[1] - v10;
          v24 = v17[2] - v11;
          v12 = v12 + v20 * v24 - v21 * v23;
          v13 = v13 + v21 * v22 - v19 * v24;
          v14 = v14 + v19 * v23 - v20 * v22;
          --v5;
        }

        while (v5);
      }

      v25 = 1.0 / fmax(sqrt(v14 * v14 + v13 * v13 + v12 * v12), 1.0e-10);
      v26 = (a1[2] + 24 * a2);
      *v26 = v12 * v25;
      v26[1] = v13 * v25;
      v26[2] = v14 * v25;
      ++a2;
    }

    while (a2 != a3);
  }

  return result;
}

void sub_29ACD95A8(pxrInternal__aapl__pxrReserved__ *a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(a1))
    {
      v15[0] = 0;
      v16 = 65539;
      v17 = 55;
      tbb::task_group_context::init(v15, v6, v7, v8);
      v13[0] = a1;
      v13[1] = 0;
      v13[2] = a3;
      v12 = a2;
      sub_29ACD96E4(v13, &v12, &v14, v15);
      tbb::task_group_context::~task_group_context(v15);
    }

    else
    {
      v9 = *(a2 + 8);
      v10 = *a2;
      v11 = (*(a2 + 16) + (v9 >> 1));
      if (v9)
      {
        v10 = *(*v11 + v10);
      }

      v10(v11, 0, a1);
    }
  }
}

void sub_29ACD96C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  tbb::task_group_context::~task_group_context(va);
  _Unwind_Resume(a1);
}

void *sub_29ACD96E4(void *result, void *a2, uint64_t a3, tbb::task_group_context *a4)
{
  if (result[1] < *result)
  {
    v5 = result;
    v9 = a4;
    v6 = tbb::internal::allocate_root_with_context_proxy::allocate(&v9, 0x38uLL);
    *(v6 - 11) = 1;
    *v6 = &unk_2A2085328;
    v7 = v5[2];
    *(v6 + 8) = *v5;
    *(v6 + 24) = v7;
    *(v6 + 32) = *a2;
    initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v6);
    *(v6 + 48) = 0;
    *(v6 + 52) = 5;
    *(v6 + 40) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
    return (*(**(v6 - 40) + 16))(*(v6 - 40), v6, v6 - 8);
  }

  return result;
}

uint64_t sub_29ACD97E4(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = a1 + 40;
  if (!v3)
  {
    *(a1 + 40) = 1;
    if (*(a1 - 11) < 0)
    {
      v4 = *(a1 - 32);
      if (*(v4 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v4 + 8) = 1;
        v5 = *(a1 + 52);
        if (v5 <= 1)
        {
          LOBYTE(v5) = 1;
        }

        *(a1 + 52) = v5 + 1;
      }
    }
  }

  sub_29ACD9854(v2, a1, a1 + 8);
  return 0;
}

void sub_29ACD9854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) < *a3 - *(a3 + 8))
  {
    if (*a1 > 1uLL)
    {
      goto LABEL_6;
    }

    if (*a1)
    {
LABEL_4:
      if (*(a1 + 12))
      {
        --*(a1 + 12);
        *a1 = 0;
LABEL_6:
        while (1)
        {
          sub_29ACD9908(a2);
          if (*(a3 + 16) >= *a3 - *(a3 + 8))
          {
            break;
          }

          if (*a1 <= 1uLL)
          {
            if (*a1)
            {
              goto LABEL_4;
            }

            break;
          }
        }
      }
    }
  }

  sub_29ACD9A20(a1, a2, a3);
}

uint64_t sub_29ACD9908(uint64_t a1)
{
  v2 = tbb::internal::allocate_continuation_proxy::allocate(a1, 0x10uLL);
  *(v2 - 11) = 1;
  *v2 = &unk_2A204C520;
  __dmb(0xBu);
  v2[8] = 0;
  *(a1 - 32) = v2;
  *(v2 - 3) = 2;
  v3 = tbb::internal::allocate_child_proxy::allocate(v2, 0x38uLL);
  *(v3 - 11) = 1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *v3 = &unk_2A2085328;
  *(v3 + 8) = v4;
  v6 = v5 + ((v4 - v5) >> 1);
  *(a1 + 8) = v6;
  *(v3 + 16) = v6;
  *(v3 + 24) = *(a1 + 24);
  v7 = *(a1 + 40) >> 1;
  *(a1 + 40) = v7;
  *(v3 + 40) = v7;
  *(v3 + 48) = 2;
  *(v3 + 52) = *(a1 + 52);
  v8 = ***(v3 - 40);

  return v8();
}

void sub_29ACD9A20(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  if (*(a3 + 2) < *a3 - *(a3 + 1) && *(a1 + 12))
  {
    *v20 = 0x10000;
    v21 = *a3;
    v22 = *(a3 + 2);
    while (1)
    {
      v5 = sub_29A3B10B4(v20, *(a1 + 12));
      v6 = *(*(a2 - 32) + 8);
      __dmb(0xBu);
      if ((v6 & 1) == 0)
      {
        break;
      }

      v7 = *(a1 + 12) + 1;
      *(a1 + 12) = v7;
      v8 = v20[2];
      if (v20[2] < 2u)
      {
        v9 = v20[0];
        if (v20[v20[0] + 3] >= v7 || *(&v21 + 3 * v20[0] + 2) >= *(&v21 + 3 * v20[0]) - *(&v21 + 3 * v20[0] + 1))
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_29ACD9C50(a2, (&v21 + 24 * v20[1]), v20[v20[1] + 3]);
        v8 = --v20[2];
        v20[1] = (v20[1] + 1) & 7;
      }

LABEL_11:
      if (!v8 || tbb::task_group_context::is_group_execution_cancelled(*(a2 - 56)))
      {
        return;
      }
    }

    v9 = v20[0];
LABEL_8:
    v10 = *(a2 + 32);
    v11 = *v10;
    v13 = v10 + 8;
    v12 = *(v10 + 8);
    v14 = (*(v13 + 8) + (v12 >> 1));
    if (v12)
    {
      v11 = *(*v14 + v11);
    }

    v11(v14, *(&v21 + 3 * v9 + 1), *(&v21 + 3 * v9), v5);
    v8 = --v20[2];
    v20[0] = (v20[0] - 1) & 7;
    goto LABEL_11;
  }

  v15 = *(a2 + 32);
  v16 = *v15;
  v18 = v15 + 8;
  v17 = *(v15 + 8);
  v19 = (*(v18 + 8) + (v17 >> 1));
  if (v17)
  {
    v16 = *(*v19 + v16);
  }

  v16(v19);
}

uint64_t sub_29ACD9C50(uint64_t a1, __int128 *a2, char a3)
{
  v6 = tbb::internal::allocate_continuation_proxy::allocate(a1, 0x10uLL);
  *(v6 - 11) = 1;
  *v6 = &unk_2A204C520;
  __dmb(0xBu);
  v6[8] = 0;
  *(a1 - 32) = v6;
  *(v6 - 3) = 2;
  v7 = tbb::internal::allocate_child_proxy::allocate(v6, 0x38uLL);
  *(v7 - 11) = 1;
  *v7 = &unk_2A2085328;
  v8 = *a2;
  *(v7 + 24) = *(a2 + 2);
  *(v7 + 8) = v8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40) >> 1;
  *(a1 + 40) = v10;
  *(v7 + 32) = v9;
  *(v7 + 40) = v10;
  *(v7 + 48) = 2;
  *(v7 + 52) = *(a1 + 52) - a3;
  v11 = ***(v7 - 40);

  return v11();
}

void sub_29ACD9D70(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  if (a2 < a3)
  {
    v39 = v6;
    v40 = v5;
    v41 = v3;
    v42 = v4;
    v8 = a2;
    do
    {
      v10 = *(a1[1] + 32);
      v11 = (v10 + 8 * v8);
      v13 = *v11;
      v12 = v11[1];
      v38 = 0.0;
      v37 = 0;
      if (v12 < 1)
      {
        v17 = 0.0;
        v18 = 0.0;
        v19 = 0.0;
      }

      else
      {
        v14 = *a1;
        v15 = (*a1 + 12 * v8);
        v16 = (v10 + 4 * v13);
        v17 = 0.0;
        v18 = 0.0;
        v19 = 0.0;
        do
        {
          v20 = *v16;
          v21 = v16[1];
          v16 += 2;
          v22 = (v14 + 12 * v20);
          v23 = (v14 + 12 * v21);
          v24 = v15[1];
          v25 = *v23 - *v15;
          v26 = v23[1] - v24;
          v27 = v15[2];
          v28 = v23[2] - v27;
          v29 = *v22 - *v15;
          v30 = v22[1] - v24;
          v31 = v22[2] - v27;
          v19 = v19 + ((v26 * v31) - (v28 * v30));
          v18 = ((v28 * v29) - (v25 * v31)) + v18;
          v37 = __PAIR64__(LODWORD(v18), LODWORD(v19));
          v17 = ((v25 * v30) - (v26 * v29)) + v17;
          v38 = v17;
          --v12;
        }

        while (v12);
      }

      v32 = 1.0 / fmaxf(sqrtf(((v19 * v19) + (v18 * v18)) + (v17 * v17)), 1.0e-10);
      *&v33 = v32 * v19;
      *&v34 = v32 * v18;
      v37 = __PAIR64__(v34, v33);
      v35 = v32 * v17;
      v38 = v35;
      sub_29AC307CC(&v36, &v37);
      *(a1[2] + 4 * v8++) = v36;
    }

    while (v8 != a3);
  }
}

void sub_29ACD9F0C(pxrInternal__aapl__pxrReserved__ *a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(a1))
    {
      v15[0] = 0;
      v16 = 65539;
      v17 = 55;
      tbb::task_group_context::init(v15, v6, v7, v8);
      v13[0] = a1;
      v13[1] = 0;
      v13[2] = a3;
      v12 = a2;
      sub_29ACDA048(v13, &v12, &v14, v15);
      tbb::task_group_context::~task_group_context(v15);
    }

    else
    {
      v9 = *(a2 + 8);
      v10 = *a2;
      v11 = (*(a2 + 16) + (v9 >> 1));
      if (v9)
      {
        v10 = *(*v11 + v10);
      }

      v10(v11, 0, a1);
    }
  }
}

void sub_29ACDA02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  tbb::task_group_context::~task_group_context(va);
  _Unwind_Resume(a1);
}

void *sub_29ACDA048(void *result, void *a2, uint64_t a3, tbb::task_group_context *a4)
{
  if (result[1] < *result)
  {
    v5 = result;
    v9 = a4;
    v6 = tbb::internal::allocate_root_with_context_proxy::allocate(&v9, 0x38uLL);
    *(v6 - 11) = 1;
    *v6 = &unk_2A2085370;
    v7 = v5[2];
    *(v6 + 8) = *v5;
    *(v6 + 24) = v7;
    *(v6 + 32) = *a2;
    initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v6);
    *(v6 + 48) = 0;
    *(v6 + 52) = 5;
    *(v6 + 40) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
    return (*(**(v6 - 40) + 16))(*(v6 - 40), v6, v6 - 8);
  }

  return result;
}

uint64_t sub_29ACDA148(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = a1 + 40;
  if (!v3)
  {
    *(a1 + 40) = 1;
    if (*(a1 - 11) < 0)
    {
      v4 = *(a1 - 32);
      if (*(v4 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v4 + 8) = 1;
        v5 = *(a1 + 52);
        if (v5 <= 1)
        {
          LOBYTE(v5) = 1;
        }

        *(a1 + 52) = v5 + 1;
      }
    }
  }

  sub_29ACDA1B8(v2, a1, a1 + 8);
  return 0;
}

void sub_29ACDA1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) < *a3 - *(a3 + 8))
  {
    if (*a1 > 1uLL)
    {
      goto LABEL_6;
    }

    if (*a1)
    {
LABEL_4:
      if (*(a1 + 12))
      {
        --*(a1 + 12);
        *a1 = 0;
LABEL_6:
        while (1)
        {
          sub_29ACDA26C(a2);
          if (*(a3 + 16) >= *a3 - *(a3 + 8))
          {
            break;
          }

          if (*a1 <= 1uLL)
          {
            if (*a1)
            {
              goto LABEL_4;
            }

            break;
          }
        }
      }
    }
  }

  sub_29ACDA384(a1, a2, a3);
}

uint64_t sub_29ACDA26C(uint64_t a1)
{
  v2 = tbb::internal::allocate_continuation_proxy::allocate(a1, 0x10uLL);
  *(v2 - 11) = 1;
  *v2 = &unk_2A204C520;
  __dmb(0xBu);
  v2[8] = 0;
  *(a1 - 32) = v2;
  *(v2 - 3) = 2;
  v3 = tbb::internal::allocate_child_proxy::allocate(v2, 0x38uLL);
  *(v3 - 11) = 1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *v3 = &unk_2A2085370;
  *(v3 + 8) = v4;
  v6 = v5 + ((v4 - v5) >> 1);
  *(a1 + 8) = v6;
  *(v3 + 16) = v6;
  *(v3 + 24) = *(a1 + 24);
  v7 = *(a1 + 40) >> 1;
  *(a1 + 40) = v7;
  *(v3 + 40) = v7;
  *(v3 + 48) = 2;
  *(v3 + 52) = *(a1 + 52);
  v8 = ***(v3 - 40);

  return v8();
}

void sub_29ACDA384(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  if (*(a3 + 2) < *a3 - *(a3 + 1) && *(a1 + 12))
  {
    *v20 = 0x10000;
    v21 = *a3;
    v22 = *(a3 + 2);
    while (1)
    {
      v5 = sub_29A3B10B4(v20, *(a1 + 12));
      v6 = *(*(a2 - 32) + 8);
      __dmb(0xBu);
      if ((v6 & 1) == 0)
      {
        break;
      }

      v7 = *(a1 + 12) + 1;
      *(a1 + 12) = v7;
      v8 = v20[2];
      if (v20[2] < 2u)
      {
        v9 = v20[0];
        if (v20[v20[0] + 3] >= v7 || *(&v21 + 3 * v20[0] + 2) >= *(&v21 + 3 * v20[0]) - *(&v21 + 3 * v20[0] + 1))
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_29ACDA5B4(a2, (&v21 + 24 * v20[1]), v20[v20[1] + 3]);
        v8 = --v20[2];
        v20[1] = (v20[1] + 1) & 7;
      }

LABEL_11:
      if (!v8 || tbb::task_group_context::is_group_execution_cancelled(*(a2 - 56)))
      {
        return;
      }
    }

    v9 = v20[0];
LABEL_8:
    v10 = *(a2 + 32);
    v11 = *v10;
    v13 = v10 + 8;
    v12 = *(v10 + 8);
    v14 = (*(v13 + 8) + (v12 >> 1));
    if (v12)
    {
      v11 = *(*v14 + v11);
    }

    v11(v14, *(&v21 + 3 * v9 + 1), *(&v21 + 3 * v9), v5);
    v8 = --v20[2];
    v20[0] = (v20[0] - 1) & 7;
    goto LABEL_11;
  }

  v15 = *(a2 + 32);
  v16 = *v15;
  v18 = v15 + 8;
  v17 = *(v15 + 8);
  v19 = (*(v18 + 8) + (v17 >> 1));
  if (v17)
  {
    v16 = *(*v19 + v16);
  }

  v16(v19);
}

uint64_t sub_29ACDA5B4(uint64_t a1, __int128 *a2, char a3)
{
  v6 = tbb::internal::allocate_continuation_proxy::allocate(a1, 0x10uLL);
  *(v6 - 11) = 1;
  *v6 = &unk_2A204C520;
  __dmb(0xBu);
  v6[8] = 0;
  *(a1 - 32) = v6;
  *(v6 - 3) = 2;
  v7 = tbb::internal::allocate_child_proxy::allocate(v6, 0x38uLL);
  *(v7 - 11) = 1;
  *v7 = &unk_2A2085370;
  v8 = *a2;
  *(v7 + 24) = *(a2 + 2);
  *(v7 + 8) = v8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40) >> 1;
  *(a1 + 40) = v10;
  *(v7 + 32) = v9;
  *(v7 + 40) = v10;
  *(v7 + 48) = 2;
  *(v7 + 52) = *(a1 + 52) - a3;
  v11 = ***(v7 - 40);

  return v11();
}

void sub_29ACDA6D4(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  if (a2 < a3)
  {
    v37 = v6;
    v38 = v5;
    v39 = v3;
    v40 = v4;
    v8 = a2;
    do
    {
      v10 = *(a1[1] + 32);
      v11 = (v10 + 8 * v8);
      v13 = *v11;
      v12 = v11[1];
      v34 = 0.0;
      v35 = 0.0;
      v36 = 0.0;
      if (v12 < 1)
      {
        v17 = 0.0;
        v18 = 0.0;
        v19 = 0.0;
      }

      else
      {
        v14 = *a1;
        v15 = (*a1 + 24 * v8);
        v16 = (v10 + 4 * v13);
        v17 = 0.0;
        v18 = 0.0;
        v19 = 0.0;
        do
        {
          v20 = *v16;
          v21 = v16[1];
          v16 += 2;
          v22 = (v14 + 24 * v20);
          v23 = (v14 + 24 * v21);
          v24 = v15[1];
          v25 = *v23 - *v15;
          v26 = v23[1] - v24;
          v27 = v15[2];
          v28 = v23[2] - v27;
          v29 = *v22 - *v15;
          v30 = v22[1] - v24;
          v31 = v22[2] - v27;
          v19 = v19 + v26 * v31 - v28 * v30;
          v18 = v28 * v29 - v25 * v31 + v18;
          v34 = v19;
          v35 = v18;
          v17 = v25 * v30 - v26 * v29 + v17;
          v36 = v17;
          --v12;
        }

        while (v12);
      }

      v32 = 1.0 / fmax(sqrt(v19 * v19 + v18 * v18 + v17 * v17), 1.0e-10);
      v34 = v19 * v32;
      v35 = v18 * v32;
      v36 = v17 * v32;
      sub_29AC311CC(&v33, &v34);
      *(a1[2] + 4 * v8++) = v33;
    }

    while (v8 != a3);
  }
}

void sub_29ACDA854(pxrInternal__aapl__pxrReserved__ *a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(a1))
    {
      v15[0] = 0;
      v16 = 65539;
      v17 = 55;
      tbb::task_group_context::init(v15, v6, v7, v8);
      v13[0] = a1;
      v13[1] = 0;
      v13[2] = a3;
      v12 = a2;
      sub_29ACDA990(v13, &v12, &v14, v15);
      tbb::task_group_context::~task_group_context(v15);
    }

    else
    {
      v9 = *(a2 + 8);
      v10 = *a2;
      v11 = (*(a2 + 16) + (v9 >> 1));
      if (v9)
      {
        v10 = *(*v11 + v10);
      }

      v10(v11, 0, a1);
    }
  }
}

void sub_29ACDA974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  tbb::task_group_context::~task_group_context(va);
  _Unwind_Resume(a1);
}

void *sub_29ACDA990(void *result, void *a2, uint64_t a3, tbb::task_group_context *a4)
{
  if (result[1] < *result)
  {
    v5 = result;
    v9 = a4;
    v6 = tbb::internal::allocate_root_with_context_proxy::allocate(&v9, 0x38uLL);
    *(v6 - 11) = 1;
    *v6 = &unk_2A20853B8;
    v7 = v5[2];
    *(v6 + 8) = *v5;
    *(v6 + 24) = v7;
    *(v6 + 32) = *a2;
    initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v6);
    *(v6 + 48) = 0;
    *(v6 + 52) = 5;
    *(v6 + 40) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
    return (*(**(v6 - 40) + 16))(*(v6 - 40), v6, v6 - 8);
  }

  return result;
}

uint64_t sub_29ACDAA90(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = a1 + 40;
  if (!v3)
  {
    *(a1 + 40) = 1;
    if (*(a1 - 11) < 0)
    {
      v4 = *(a1 - 32);
      if (*(v4 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v4 + 8) = 1;
        v5 = *(a1 + 52);
        if (v5 <= 1)
        {
          LOBYTE(v5) = 1;
        }

        *(a1 + 52) = v5 + 1;
      }
    }
  }

  sub_29ACDAB00(v2, a1, a1 + 8);
  return 0;
}

void sub_29ACDAB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) < *a3 - *(a3 + 8))
  {
    if (*a1 > 1uLL)
    {
      goto LABEL_6;
    }

    if (*a1)
    {
LABEL_4:
      if (*(a1 + 12))
      {
        --*(a1 + 12);
        *a1 = 0;
LABEL_6:
        while (1)
        {
          sub_29ACDABB4(a2);
          if (*(a3 + 16) >= *a3 - *(a3 + 8))
          {
            break;
          }

          if (*a1 <= 1uLL)
          {
            if (*a1)
            {
              goto LABEL_4;
            }

            break;
          }
        }
      }
    }
  }

  sub_29ACDACCC(a1, a2, a3);
}

uint64_t sub_29ACDABB4(uint64_t a1)
{
  v2 = tbb::internal::allocate_continuation_proxy::allocate(a1, 0x10uLL);
  *(v2 - 11) = 1;
  *v2 = &unk_2A204C520;
  __dmb(0xBu);
  v2[8] = 0;
  *(a1 - 32) = v2;
  *(v2 - 3) = 2;
  v3 = tbb::internal::allocate_child_proxy::allocate(v2, 0x38uLL);
  *(v3 - 11) = 1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *v3 = &unk_2A20853B8;
  *(v3 + 8) = v4;
  v6 = v5 + ((v4 - v5) >> 1);
  *(a1 + 8) = v6;
  *(v3 + 16) = v6;
  *(v3 + 24) = *(a1 + 24);
  v7 = *(a1 + 40) >> 1;
  *(a1 + 40) = v7;
  *(v3 + 40) = v7;
  *(v3 + 48) = 2;
  *(v3 + 52) = *(a1 + 52);
  v8 = ***(v3 - 40);

  return v8();
}

void sub_29ACDACCC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  if (*(a3 + 2) < *a3 - *(a3 + 1) && *(a1 + 12))
  {
    *v20 = 0x10000;
    v21 = *a3;
    v22 = *(a3 + 2);
    while (1)
    {
      v5 = sub_29A3B10B4(v20, *(a1 + 12));
      v6 = *(*(a2 - 32) + 8);
      __dmb(0xBu);
      if ((v6 & 1) == 0)
      {
        break;
      }

      v7 = *(a1 + 12) + 1;
      *(a1 + 12) = v7;
      v8 = v20[2];
      if (v20[2] < 2u)
      {
        v9 = v20[0];
        if (v20[v20[0] + 3] >= v7 || *(&v21 + 3 * v20[0] + 2) >= *(&v21 + 3 * v20[0]) - *(&v21 + 3 * v20[0] + 1))
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_29ACDAEFC(a2, (&v21 + 24 * v20[1]), v20[v20[1] + 3]);
        v8 = --v20[2];
        v20[1] = (v20[1] + 1) & 7;
      }

LABEL_11:
      if (!v8 || tbb::task_group_context::is_group_execution_cancelled(*(a2 - 56)))
      {
        return;
      }
    }

    v9 = v20[0];
LABEL_8:
    v10 = *(a2 + 32);
    v11 = *v10;
    v13 = v10 + 8;
    v12 = *(v10 + 8);
    v14 = (*(v13 + 8) + (v12 >> 1));
    if (v12)
    {
      v11 = *(*v14 + v11);
    }

    v11(v14, *(&v21 + 3 * v9 + 1), *(&v21 + 3 * v9), v5);
    v8 = --v20[2];
    v20[0] = (v20[0] - 1) & 7;
    goto LABEL_11;
  }

  v15 = *(a2 + 32);
  v16 = *v15;
  v18 = v15 + 8;
  v17 = *(v15 + 8);
  v19 = (*(v18 + 8) + (v17 >> 1));
  if (v17)
  {
    v16 = *(*v19 + v16);
  }

  v16(v19);
}

uint64_t sub_29ACDAEFC(uint64_t a1, __int128 *a2, char a3)
{
  v6 = tbb::internal::allocate_continuation_proxy::allocate(a1, 0x10uLL);
  *(v6 - 11) = 1;
  *v6 = &unk_2A204C520;
  __dmb(0xBu);
  v6[8] = 0;
  *(a1 - 32) = v6;
  *(v6 - 3) = 2;
  v7 = tbb::internal::allocate_child_proxy::allocate(v6, 0x38uLL);
  *(v7 - 11) = 1;
  *v7 = &unk_2A20853B8;
  v8 = *a2;
  *(v7 + 24) = *(a2 + 2);
  *(v7 + 8) = v8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40) >> 1;
  *(a1 + 40) = v10;
  *(v7 + 32) = v9;
  *(v7 + 40) = v10;
  *(v7 + 48) = 2;
  *(v7 + 52) = *(a1 + 52) - a3;
  v11 = ***(v7 - 40);

  return v11();
}

double pxrInternal__aapl__pxrReserved__::Hd_SortedIds::Hd_SortedIds(pxrInternal__aapl__pxrReserved__::Hd_SortedIds *this)
{
  *(this + 7) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 0;
  return result;
}

{
  *(this + 7) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::Hd_SortedIds::~Hd_SortedIds(void ***this)
{
  sub_29ACCC88C(this + 7, 0);
  v2 = this + 3;
  sub_29A1E234C(&v2);
  v2 = this;
  sub_29A1E234C(&v2);
}

void pxrInternal__aapl__pxrReserved__::Hd_SortedIds::Hd_SortedIds(pxrInternal__aapl__pxrReserved__::Hd_SortedIds *this, const pxrInternal__aapl__pxrReserved__::Hd_SortedIds *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

void sub_29ACDB168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v10);
  sub_29A1E234C(&a10);
  sub_29A1E234C(&a10);
  _Unwind_Resume(a1);
}

__n128 pxrInternal__aapl__pxrReserved__::Hd_SortedIds::Hd_SortedIds(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(a1 + 48) = *(a2 + 48);
  v3 = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 56) = v3;
  return result;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(a1 + 48) = *(a2 + 48);
  v3 = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 56) = v3;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hd_SortedIds::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_29A324D54(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    sub_29A324D54(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  }

  *(a1 + 48) = *(a2 + 48);
  if (*(a2 + 56))
  {
    v4 = operator new(0x4028uLL);
    v4[1] = 0;
    v4[2] = 0;
    *v4 = 0;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
  }

  sub_29ACCC88C((a1 + 56), 0);
  return a1;
}

{
  sub_29A1E23D4(a1);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_29A1E23D4((a1 + 24));
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 56);
  *(a2 + 56) = 0;
  sub_29ACCC88C((a1 + 56), v4);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::Hd_SortedIds::_Sort(pxrInternal__aapl__pxrReserved__::Hd_SortedIds *this)
{
  if (*(this + 12) == 3)
  {
    v2 = (this + 24);
    v28 = *(this + 24);
    v29 = *(this + 5);
    *(this + 4) = 0;
    *(this + 5) = 0;
    v3 = *(this + 7);
    *(this + 3) = 0;
    v4 = *(v3 + 2);
    v26 = *v3;
    *v3 = 0;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    sub_29A1E23D4(this + 3);
    *v2 = v26;
    *(this + 5) = v4;
    memset(v27, 0, sizeof(v27));
    v30 = v27;
    sub_29A1E234C(&v30);
    *(this + 12) = 2;
    pxrInternal__aapl__pxrReserved__::Hd_SortedIds::_Sort(this);
    sub_29A1E23D4(this + 3);
    *(this + 24) = v28;
    *(this + 5) = v29;
    v29 = 0;
    v28 = 0uLL;
    *(this + 12) = 1;
    pxrInternal__aapl__pxrReserved__::Hd_SortedIds::_Sort(this);
    sub_29ACCC88C(this + 7, 0);
    v27[0] = &v28;
    sub_29A1E234C(v27);
  }

  else
  {
    v5 = *(this + 4);
    v6 = *(this + 3);
    if (v6 != v5)
    {
      sub_29A24ED30(v6, v5, &v28, 126 - 2 * __clz((v5 - v6) >> 3), 1);
      v7 = *this;
      if (*(this + 12) == 2)
      {
        v8 = *(this + 1);
        v9 = *(this + 3);
        if (v8 != v7)
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
        }

        if (*(this + 4) - v9 == 8)
        {
          v10 = *(this + 1);
          if (v10 != v8 && *v8 == *v9)
          {
            sub_29A31BE88(&v28, (v8 + 1), v10);
            v12 = v11;
            v13 = *(this + 1);
            if (v13 != v11)
            {
              do
              {
                v13 -= 2;
                sub_29A1E230C(this, v13);
              }

              while (v13 != v12);
            }

            *(this + 1) = v12;
          }
        }

        else
        {
          v15 = sub_29A55C740(*this, *(this + 1));
          v16 = v15;
          v17 = *(this + 3);
          v18 = *(this + 4);
          if (((((v15 - v8) >> 3) >> 8) * 0xA3D70A3D70A3D71uLL) >> 64 <= (v18 - v17))
          {
            if (v15 != v8 && v17 != v18)
            {
              pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
            }

            sub_29ACDBF88(&v28, v8, v15);
            sub_29A31BE88(&v28, v16, *(this + 1));
            sub_29A362D50(this, v23, *(this + 1));
          }

          else if (v17 != v18 && v15 != v8)
          {
            if (*v8 == *v17)
            {
              sub_29A31BE88(&v28, (v8 + 1), *(this + 1));
              v20 = v19;
              v21 = *(this + 1);
              if (v21 != v19)
              {
                do
                {
                  v21 -= 2;
                  sub_29A1E230C(this, v21);
                }

                while (v21 != v20);
              }

              v16 -= 8;
              *(this + 1) = v20;
            }

            if (v17 + 1 != v18 && v16 != v8)
            {
              pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
            }
          }
        }

        v25 = *(this + 3);
        for (i = *(this + 4); i != v25; sub_29A1E230C(this + 24, i))
        {
          i -= 2;
        }

        *(this + 4) = v25;
      }

      else
      {
        v14 = *(this + 1);
        if (v7 != v14)
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
        }

        *this = *(this + 24);
        v22 = *(this + 2);
        *(this + 2) = *(this + 5);
        *(this + 3) = v7;
        *(this + 4) = v14;
        *(this + 5) = v22;
      }
    }

    *(this + 12) = 0;
  }
}

void sub_29ACDB92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, char a15)
{
  a12 = &a15;
  sub_29A1E234C(&a12);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::Hd_SortedIds::Insert(pxrInternal__aapl__pxrReserved__::Hd_SortedIds *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  while (1)
  {
    v4 = *(this + 12);
    if (v4 == 3)
    {
      goto LABEL_5;
    }

    if (v4 == 1)
    {
      goto LABEL_9;
    }

    if (!v4)
    {
      break;
    }

    pxrInternal__aapl__pxrReserved__::Hd_SortedIds::_Sort(this);
    *(this + 12) = 3;
    v5 = operator new(0x4028uLL);
    bzero(v5, 0x4028uLL);
    sub_29ACCC88C(this + 7, v5);
LABEL_5:
    result = sub_29ACDBA18(*(this + 7), this + 24, a2);
    if (result)
    {
      return result;
    }

    pxrInternal__aapl__pxrReserved__::Hd_SortedIds::_Sort(this);
  }

  *(this + 12) = 1;
LABEL_9:

  return sub_29A1E28B4(this + 24, a2);
}

uint64_t sub_29ACDBA18(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = (a1 + 24);
  if (*(a1 + 24) > 0x3FFuLL)
  {
    return 0;
  }

  if (sub_29ACDBEC4(a1 + 8224, a3))
  {
    v8 = *a1;
    v9 = *(a1 + 8);
    if (*a1 != v9)
    {
      while (*v8 != *a3)
      {
        if (++v8 == v9)
        {
          goto LABEL_9;
        }
      }
    }

    if (v8 != v9)
    {
      return 0;
    }
  }

LABEL_9:
  sub_29A1E28B4(a2, a3);
  sub_29ACDBF20(v3, a3);
  return 1;
}

unint64_t pxrInternal__aapl__pxrReserved__::Hd_SortedIds::Remove(pxrInternal__aapl__pxrReserved__::Hd_SortedIds *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  while (1)
  {
    v4 = *(this + 12);
    if (v4 == 3)
    {
      goto LABEL_5;
    }

    if (v4 == 2)
    {
      goto LABEL_9;
    }

    if (!v4)
    {
      break;
    }

    pxrInternal__aapl__pxrReserved__::Hd_SortedIds::_Sort(this);
    *(this + 12) = 3;
    v5 = operator new(0x4028uLL);
    bzero(v5, 0x4028uLL);
    sub_29ACCC88C(this + 7, v5);
LABEL_5:
    result = sub_29ACDBB88(*(this + 7), this + 24, a2);
    if (result)
    {
      return result;
    }

    pxrInternal__aapl__pxrReserved__::Hd_SortedIds::_Sort(this);
  }

  *(this + 12) = 2;
LABEL_9:

  return sub_29A1E28B4(this + 24, a2);
}

uint64_t sub_29ACDBB88(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (*(a1 + 8224) > 0x3FFuLL)
  {
    return 0;
  }

  if (sub_29ACDBEC4(a1 + 24, a3))
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    if (*a2 != v8)
    {
      while (*v7 != *a3)
      {
        if (++v7 == v8)
        {
          goto LABEL_10;
        }
      }
    }

    if (v7 != v8)
    {
      return 0;
    }
  }

LABEL_10:
  sub_29A1E28B4(a1, a3);
  sub_29ACDBF20((a1 + 8224), a3);
  return 1;
}

void pxrInternal__aapl__pxrReserved__::Hd_SortedIds::RemoveRange(pxrInternal__aapl__pxrReserved__::Hd_SortedIds *this, uint64_t a2, uint64_t a3)
{
  if (*(this + 3) == *(this + 4))
  {
    v5 = *this;
    if (a3 - a2 + 1 == (*(this + 1) - *this) >> 3)
    {

      pxrInternal__aapl__pxrReserved__::Hd_SortedIds::Clear(this);
    }

    else
    {
      v6 = v5 + 8 * a2;
      v7 = v5 + 8 * a3 + 8;

      sub_29A362D50(this, v6, v7);
    }
  }

  else
  {
    v10 = v3;
    v11 = v4;
    v8[0] = "hd/sortedIds.cpp";
    v8[1] = "RemoveRange";
    v8[2] = 220;
    v8[3] = "void pxrInternal__aapl__pxrReserved__::Hd_SortedIds::RemoveRange(size_t, size_t)";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 1, "RemoveRange can only be called while list sorted");
  }
}

void pxrInternal__aapl__pxrReserved__::Hd_SortedIds::Clear(pxrInternal__aapl__pxrReserved__::Hd_SortedIds *this)
{
  v3 = *this;
  for (i = *(this + 1); i != v3; sub_29A1E230C(this, i))
  {
    i -= 2;
  }

  v4 = *(this + 3);
  *(this + 1) = v3;
  for (j = *(this + 4); j != v4; sub_29A1E230C(this + 24, j))
  {
    j -= 2;
  }

  *(this + 4) = v4;
  *(this + 12) = 0;

  sub_29ACCC88C(this + 7, 0);
}

char *sub_29ACDBD78(void *a1, uint64_t a2, _DWORD *a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v8 = *a1;
    v9 = ((v7 - *a1) >> 3) + 1;
    if (v9 >> 61)
    {
      sub_29A00C9A4();
    }

    v10 = a2 - v8;
    v11 = v6 - v8;
    v12 = v11 >> 2;
    if (v11 >> 2 <= v9)
    {
      v12 = ((v7 - *a1) >> 3) + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    v14 = v10 >> 3;
    v21 = a1;
    if (v13)
    {
      v15 = sub_29A00C9BC(a1, v13);
    }

    else
    {
      v15 = 0;
    }

    v17 = v15;
    v18 = &v15[8 * v14];
    v19 = v18;
    v20 = &v15[8 * v13];
    sub_29ACDBFF8(&v17, a3);
    v4 = sub_29A23E100(a1, &v17, v4);
    sub_29A1E29E8(&v17);
  }

  else
  {
    if (a2 != v7)
    {
      sub_29A23DFE4(a1, a2, a1[1], a2 + 8);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    sub_29A1DDD84(a1[1], a3);
    sub_29A1DDDC0((v7 + 4), a3 + 1);
    a1[1] = v7 + 8;
  }

  return v4;
}

void sub_29ACDBEB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E29E8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACDBEC4(uint64_t a1, unsigned int *a2)
{
  v2 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  if ((*(a1 + 8 + 8 * (v2 >> 6)) >> v2))
  {
    return (*(a1 + 8 + 8 * (v2 >> 22)) >> SBYTE2(v2)) & 1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACDBF20(void *a1, unsigned int *a2)
{
  v2 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  ++*a1;
  result = a1 + 1;
  result[v2 >> 6] |= 1 << v2;
  result[v2 >> 22] |= 1 << SBYTE2(v2);
  return result;
}

uint64_t sub_29ACDBF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return a2;
}

_DWORD *sub_29ACDBFF8(void *a1, _DWORD *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = (v4 - *a1) >> 2;
      }

      v9 = a1[4];
      v17 = a1[4];
      *&v15 = sub_29A00C9BC(v9, v8);
      *(&v15 + 1) = v15 + 8 * (v8 >> 2);
      *&v16 = *(&v15 + 1);
      *(&v16 + 1) = v15 + 8 * v10;
      sub_29A31C09C(&v15, a1[1], (a1[2] - a1[1]) >> 3);
      v11 = v16;
      v12 = *a1;
      v13 = *(a1 + 1);
      *a1 = v15;
      *(a1 + 1) = v11;
      v15 = v12;
      v16 = v13;
      sub_29A1E29E8(&v15);
      v4 = a1[2];
    }

    else
    {
      v6 = (((v5 - *a1) >> 3) + 1 + ((((v5 - *a1) >> 3) + 1) >> 63)) >> 1;
      sub_29A31BE88(&v15, v5, v4);
      v4 = v7;
      a1[1] -= 8 * v6;
      a1[2] = v7;
    }
  }

  sub_29A1DDD84(v4, a2);
  result = sub_29A1DDDC0(v4 + 1, a2 + 1);
  a1[2] += 8;
  return result;
}

char *sub_29ACDC110(void *a1, uint64_t a2, _DWORD *a3, _DWORD *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 3)
    {
      v18 = v10 - a2;
      v19 = (v10 - a2) >> 3;
      if (v19 >= a5)
      {
        sub_29A23DFE4(a1, a2, a1[1], a2 + 8 * a5);
        v20 = &a3[2 * a5];
      }

      else
      {
        a1[1] = sub_29ACDC2A8(a1, (a3 + v18), a4, a1[1]);
        if (v19 < 1)
        {
          return v5;
        }

        sub_29A23DFE4(a1, v5, v10, &v5[8 * a5]);
        v20 = a3 + v18;
      }

      sub_29ACDBF88(&v22, a3, v20);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      sub_29A00C9A4();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    v26 = a1;
    if (v15)
    {
      v17 = sub_29A00C9BC(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v22 = v17;
    v23 = &v17[8 * v16];
    v24 = v23;
    v25 = &v17[8 * v15];
    sub_29A31C09C(&v22, a3, a5);
    v5 = sub_29A23E100(a1, &v22, v5);
    sub_29A1E29E8(&v22);
  }

  return v5;
}

_DWORD *sub_29ACDC2A8(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29A1DDD84(v4, v6);
      sub_29A1DDDC0(v4 + 1, v6 + 1);
      v6 += 2;
      v4 = v11 + 2;
      v11 += 2;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_29A1E2280(v8);
  return v4;
}

uint64_t sub_29ACDC344(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, uint64_t a5)
{
  v7 = a3;
  if (a1 == a2)
  {
    while (v7 != a4)
    {
      sub_29A377BD0(a5, v7);
      v7 += 2;
    }
  }

  else
  {
    v9 = a1;
    if (a3 != a4)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
    }

    while (v9 != a2)
    {
      sub_29A377BD0(a5, v9);
      v9 += 2;
    }
  }

  return a5;
}

void pxrInternal__aapl__pxrReserved__::HdSphereSchemaTokens_StaticTokenType::~HdSphereSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdSphereSchemaTokens_StaticTokenType *this)
{
  v3 = (this + 16);
  sub_29A124AB0(&v3);
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdSphereSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdSphereSchemaTokens_StaticTokenType::HdSphereSchemaTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "sphere", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "radius", 0);
  v3 = this + 2;
  v4 = *this;
  v11 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v5;
    }
  }

  v6 = this[1];
  v12 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v7;
    }
  }

  *v3 = 0;
  this[3] = 0;
  this[4] = 0;
  sub_29A12EF7C(v3, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v9 = *(&v11 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACDC588(_Unwind_Exception *a1)
{
  v3 = 8;
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
      v5 = v1[1];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdSphereSchema::GetRadius(pxrInternal__aapl__pxrReserved__::HdSphereSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSphereSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACCE210(&pxrInternal__aapl__pxrReserved__::HdSphereSchemaTokens);
  }

  v5 = *(v4 + 1);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCB394(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSphereSchema::BuildRetained(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v11[1] = *MEMORY[0x29EDCA608];
  v10 = 0;
  v11[0] = 0;
  v9 = 0;
  if (*a1)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSphereSchemaTokens);
    if (!v4)
    {
      v4 = sub_29ACCE210(&pxrInternal__aapl__pxrReserved__::HdSphereSchemaTokens);
    }

    sub_29A166F2C(v11, v4 + 1);
    v6 = *a1;
    v5 = a1[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = v6;
    v10 = v5;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v7, v11, &v9, &v8);
  *a2 = v8;
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if ((v11[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v11[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ACDC7A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdSphereSchema::Builder::SetRadius(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdSphereSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdSphereSchemaTokens))
    {
      sub_29ACCE210(&pxrInternal__aapl__pxrReserved__::HdSphereSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdSphereSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdSphereSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdSphereSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSphereSchemaTokens);
  if (!result)
  {
    return sub_29ACCE210(&pxrInternal__aapl__pxrReserved__::HdSphereSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdSphereSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdSphereSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174BAD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BAD0))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSphereSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ACCE210(&pxrInternal__aapl__pxrReserved__::HdSphereSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174BA98, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A174BA98, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174BAD0);
  }

  return &unk_2A174BA98;
}

void pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens_StaticTokenType::~HdSplitDiopterSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens_StaticTokenType *this)
{
  v10 = (this + 72);
  sub_29A124AB0(&v10);
  v2 = *(this + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 7);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 6);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 5);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 4);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 3);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 2);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 1);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens_StaticTokenType::HdSplitDiopterSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens_StaticTokenType *this)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "splitDiopter", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "count", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "angle", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "offset1", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "width1", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "focusDistance1", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "offset2", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "width2", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "focusDistance2", 0);
  v3 = (this + 72);
  v4 = *this;
  v25 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v5;
    }
  }

  v6 = *(this + 1);
  v26 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v7;
    }
  }

  v8 = *(this + 2);
  v27 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v9;
    }
  }

  v10 = *(this + 3);
  v28 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 = v11;
    }
  }

  v12 = *(this + 4);
  v29 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v29 = v13;
    }
  }

  v14 = *(this + 5);
  v30 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v30 = v15;
    }
  }

  v16 = *(this + 6);
  v31 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v31 = v17;
    }
  }

  v18 = *(this + 7);
  v32 = v18;
  if ((v18 & 7) != 0)
  {
    v19 = (v18 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed) & 1) == 0)
    {
      v32 = v19;
    }
  }

  v20 = *(this + 8);
  v33 = v20;
  if ((v20 & 7) != 0)
  {
    v21 = (v20 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed) & 1) == 0)
    {
      v33 = v21;
    }
  }

  *v3 = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  sub_29A12EF7C(v3, &v25, &v34, 9uLL);
  for (i = 64; i != -8; i -= 8)
  {
    v23 = *(&v25 + i);
    if ((v23 & 7) != 0)
    {
      atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACDCDBC(_Unwind_Exception *a1)
{
  v3 = 64;
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
      v5 = v1[8];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[7];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[6];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[5];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[4];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[3];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[2];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[1];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::GetCount(pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACDDDAC(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
  }

  v5 = *(v4 + 1);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC331C4(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::GetAngle(pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACDDDAC(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
  }

  v5 = *(v4 + 2);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCABD8(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::GetOffset1(pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACDDDAC(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
  }

  v5 = *(v4 + 3);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCABD8(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::GetWidth1(pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACDDDAC(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
  }

  v5 = *(v4 + 4);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCABD8(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::GetFocusDistance1(pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACDDDAC(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
  }

  v5 = *(v4 + 5);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCABD8(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::GetOffset2(pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACDDDAC(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
  }

  v5 = *(v4 + 6);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCABD8(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::GetWidth2(pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACDDDAC(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
  }

  v5 = *(v4 + 7);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCABD8(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::GetFocusDistance2(pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACDDDAC(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
  }

  v5 = *(v4 + 8);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCABD8(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, _OWORD *a9@<X8>)
{
  v73 = *MEMORY[0x29EDCA608];
  v15 = &v70;
  memset(v72, 0, sizeof(v72));
  v70 = 0u;
  memset(v71, 0, sizeof(v71));
  v16 = v72;
  if (*a1)
  {
    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
    if (!v18)
    {
      v18 = sub_29ACDDDAC(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
    }

    v15 = v71;
    v16 = v72 + 1;
    sub_29A166F2C(v72, v18 + 1);
    v20 = *a1;
    v19 = a1[1];
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    v21 = *(&v70 + 1);
    *&v70 = v20;
    *(&v70 + 1) = v19;
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  if (*a2)
  {
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
    if (!v23)
    {
      v23 = sub_29ACDDDAC(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
    }

    sub_29A166F2C(v16, v23 + 2);
    ++v22;
    v25 = *a2;
    v24 = a2[1];
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    v26 = *(v15 + 1);
    *v15 = v25;
    *(v15 + 1) = v24;
    if (v26)
    {
      sub_29A014BEC(v26);
    }
  }

  if (*a3)
  {
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
    if (!v27)
    {
      v27 = sub_29ACDDDAC(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
    }

    sub_29A166F2C(v72 + v22, v27 + 3);
    v28 = v22 + 1;
    v29 = &v71[v22 - 1];
    v31 = *a3;
    v30 = a3[1];
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    v32 = v29[1];
    *v29 = v31;
    v29[1] = v30;
    if (v32)
    {
      sub_29A014BEC(v32);
    }
  }

  else
  {
    v28 = v22;
  }

  if (*a4)
  {
    v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
    if (!v33)
    {
      v33 = sub_29ACDDDAC(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
    }

    sub_29A166F2C(v72 + v28, v33 + 4);
    v34 = v28 + 1;
    v35 = &v71[v28 - 1];
    v37 = *a4;
    v36 = a4[1];
    if (v36)
    {
      atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
    }

    v38 = v35[1];
    *v35 = v37;
    v35[1] = v36;
    if (v38)
    {
      sub_29A014BEC(v38);
    }
  }

  else
  {
    v34 = v28;
  }

  if (*a5)
  {
    v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
    if (!v39)
    {
      v39 = sub_29ACDDDAC(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
    }

    sub_29A166F2C(v72 + v34, v39 + 5);
    v40 = v34 + 1;
    v41 = &v71[v34 - 1];
    v43 = *a5;
    v42 = a5[1];
    if (v42)
    {
      atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
    }

    v44 = v41[1];
    *v41 = v43;
    v41[1] = v42;
    if (v44)
    {
      sub_29A014BEC(v44);
    }
  }

  else
  {
    v40 = v34;
  }

  if (*a6)
  {
    v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
    if (!v45)
    {
      v45 = sub_29ACDDDAC(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
    }

    sub_29A166F2C(v72 + v40, v45 + 6);
    v46 = v40 + 1;
    v47 = &v71[v40 - 1];
    v49 = *a6;
    v48 = a6[1];
    if (v48)
    {
      atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
    }

    v50 = v47[1];
    *v47 = v49;
    v47[1] = v48;
    if (v50)
    {
      sub_29A014BEC(v50);
    }
  }

  else
  {
    v46 = v40;
  }

  if (*a7)
  {
    v51 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
    if (!v51)
    {
      v51 = sub_29ACDDDAC(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
    }

    sub_29A166F2C(v72 + v46, v51 + 7);
    v52 = v46 + 1;
    v53 = &v71[v46 - 1];
    v55 = *a7;
    v54 = a7[1];
    if (v54)
    {
      atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
    }

    v56 = v53[1];
    *v53 = v55;
    v53[1] = v54;
    if (v56)
    {
      sub_29A014BEC(v56);
    }
  }

  else
  {
    v52 = v46;
  }

  if (*a8)
  {
    v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
    if (!v57)
    {
      v57 = sub_29ACDDDAC(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
    }

    sub_29A166F2C(v72 + v52, v57 + 8);
    v58 = v52 + 1;
    v59 = &v71[v52 - 1];
    v61 = *a8;
    v60 = a8[1];
    if (v60)
    {
      atomic_fetch_add_explicit((v60 + 8), 1uLL, memory_order_relaxed);
    }

    v62 = v59[1];
    *v59 = v61;
    v59[1] = v60;
    if (v62)
    {
      sub_29A014BEC(v62);
    }
  }

  else
  {
    v58 = v52;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v58, v72, &v70, &v69);
  *a9 = v69;
  for (i = 120; i != -8; i -= 16)
  {
    v64 = *(&v71[-1] + i);
    if (v64)
    {
      sub_29A014BEC(v64);
    }
  }

  for (j = 56; j != -8; j -= 8)
  {
    v66 = *(v72 + j);
    if ((v66 & 7) != 0)
    {
      atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29ACDD8F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v30 = 120;
  while (1)
  {
    v31 = *(&a13 + v30);
    if (v31)
    {
      sub_29A014BEC(v31);
    }

    v30 -= 16;
    if (v30 == -8)
    {
      v32 = 56;
      while (1)
      {
        v33 = *(&a29 + v32);
        if ((v33 & 7) != 0)
        {
          atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v32 -= 8;
        if (v32 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::Builder::SetCount(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::Builder::SetAngle(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::Builder::SetOffset1(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::Builder::SetWidth1(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 56);
  *(a1 + 48) = v4;
  *(a1 + 56) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::Builder::SetFocusDistance1(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 72);
  *(a1 + 64) = v4;
  *(a1 + 72) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::Builder::SetOffset2(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 88);
  *(a1 + 80) = v4;
  *(a1 + 88) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::Builder::SetWidth2(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 104);
  *(a1 + 96) = v4;
  *(a1 + 104) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::Builder::SetFocusDistance2(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 120);
  *(a1 + 112) = v4;
  *(a1 + 120) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens))
    {
      sub_29ACDDDAC(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
  if (!result)
  {
    return sub_29ACDDDAC(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
  }

  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174BB10, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174BB10);
    if (v2)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetDefaultLocator(v2);
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
      if (!v4)
      {
        v4 = sub_29ACDDDAC(&pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, v4, dword_2A174BAD8);
      __cxa_atexit(sub_29ABC33B4, dword_2A174BAD8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174BB10);
    }
  }

  return dword_2A174BAD8;
}

pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens_StaticTokenType *sub_29ACDDDAC(atomic_ullong *a1)
{
  result = sub_29ACDDDF4();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens_StaticTokenType::~HdSplitDiopterSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens_StaticTokenType *sub_29ACDDDF4()
{
  v0 = operator new(0x60uLL);
  pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchemaTokens_StaticTokenType::HdSplitDiopterSchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdSprim *pxrInternal__aapl__pxrReserved__::HdSprim::HdSprim(pxrInternal__aapl__pxrReserved__::HdSprim *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  *this = &unk_2A2085400;
  v4 = (this + 12);
  sub_29A1E21F4(this + 2, a2);
  sub_29A1E2240(v4, a2 + 1);
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdSprim::~HdSprim(pxrInternal__aapl__pxrReserved__::HdSprim *this)
{
  *this = &unk_2A2085400;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 3);
  sub_29A1DE3A4(this + 2);
}

void pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens_StaticTokenType::~HdSubdivisionTagsSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens_StaticTokenType *this)
{
  v10 = (this + 72);
  sub_29A124AB0(&v10);
  v2 = *(this + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 7);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 6);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 5);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 4);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 3);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 2);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 1);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens_StaticTokenType::HdSubdivisionTagsSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens_StaticTokenType *this)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "subdivisionTags", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "faceVaryingLinearInterpolation", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "interpolateBoundary", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "triangleSubdivisionRule", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "cornerIndices", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "cornerSharpnesses", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "creaseIndices", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "creaseLengths", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "creaseSharpnesses", 0);
  v3 = (this + 72);
  v4 = *this;
  v25 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v5;
    }
  }

  v6 = *(this + 1);
  v26 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v7;
    }
  }

  v8 = *(this + 2);
  v27 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v9;
    }
  }

  v10 = *(this + 3);
  v28 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 = v11;
    }
  }

  v12 = *(this + 4);
  v29 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v29 = v13;
    }
  }

  v14 = *(this + 5);
  v30 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v30 = v15;
    }
  }

  v16 = *(this + 6);
  v31 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v31 = v17;
    }
  }

  v18 = *(this + 7);
  v32 = v18;
  if ((v18 & 7) != 0)
  {
    v19 = (v18 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed) & 1) == 0)
    {
      v32 = v19;
    }
  }

  v20 = *(this + 8);
  v33 = v20;
  if ((v20 & 7) != 0)
  {
    v21 = (v20 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed) & 1) == 0)
    {
      v33 = v21;
    }
  }

  *v3 = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  sub_29A12EF7C(v3, &v25, &v34, 9uLL);
  for (i = 64; i != -8; i -= 8)
  {
    v23 = *(&v25 + i);
    if ((v23 & 7) != 0)
    {
      atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACDE2A4(_Unwind_Exception *a1)
{
  v3 = 64;
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
      v5 = v1[8];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[7];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[6];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[5];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[4];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[3];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[2];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[1];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::GetFaceVaryingLinearInterpolation(pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  }

  v5 = *(v4 + 1);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::GetInterpolateBoundary(pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  }

  v5 = *(v4 + 2);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::GetTriangleSubdivisionRule(pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  }

  v5 = *(v4 + 3);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::GetCornerIndices(pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  }

  v5 = *(v4 + 4);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC4A68(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::GetCornerSharpnesses(pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  }

  v5 = *(v4 + 5);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ACDE750(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ACDE750(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29ACDF398(&v4, a2);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::GetCreaseIndices(pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  }

  v5 = *(v4 + 6);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC4A68(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::GetCreaseLengths(pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  }

  v5 = *(v4 + 7);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC4A68(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::GetCreaseSharpnesses(pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  }

  v5 = *(v4 + 8);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ACDE750(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, _OWORD *a9@<X8>)
{
  v73 = *MEMORY[0x29EDCA608];
  v15 = &v70;
  memset(v72, 0, sizeof(v72));
  v70 = 0u;
  memset(v71, 0, sizeof(v71));
  v16 = v72;
  if (*a1)
  {
    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
    if (!v18)
    {
      v18 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
    }

    v15 = v71;
    v16 = v72 + 1;
    sub_29A166F2C(v72, v18 + 1);
    v20 = *a1;
    v19 = a1[1];
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    v21 = *(&v70 + 1);
    *&v70 = v20;
    *(&v70 + 1) = v19;
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  if (*a2)
  {
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
    if (!v23)
    {
      v23 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
    }

    sub_29A166F2C(v16, v23 + 2);
    ++v22;
    v25 = *a2;
    v24 = a2[1];
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    v26 = *(v15 + 1);
    *v15 = v25;
    *(v15 + 1) = v24;
    if (v26)
    {
      sub_29A014BEC(v26);
    }
  }

  if (*a3)
  {
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
    if (!v27)
    {
      v27 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
    }

    sub_29A166F2C(v72 + v22, v27 + 3);
    v28 = v22 + 1;
    v29 = &v71[v22 - 1];
    v31 = *a3;
    v30 = a3[1];
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    v32 = v29[1];
    *v29 = v31;
    v29[1] = v30;
    if (v32)
    {
      sub_29A014BEC(v32);
    }
  }

  else
  {
    v28 = v22;
  }

  if (*a4)
  {
    v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
    if (!v33)
    {
      v33 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
    }

    sub_29A166F2C(v72 + v28, v33 + 4);
    v34 = v28 + 1;
    v35 = &v71[v28 - 1];
    v37 = *a4;
    v36 = a4[1];
    if (v36)
    {
      atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
    }

    v38 = v35[1];
    *v35 = v37;
    v35[1] = v36;
    if (v38)
    {
      sub_29A014BEC(v38);
    }
  }

  else
  {
    v34 = v28;
  }

  if (*a5)
  {
    v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
    if (!v39)
    {
      v39 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
    }

    sub_29A166F2C(v72 + v34, v39 + 5);
    v40 = v34 + 1;
    v41 = &v71[v34 - 1];
    v43 = *a5;
    v42 = a5[1];
    if (v42)
    {
      atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
    }

    v44 = v41[1];
    *v41 = v43;
    v41[1] = v42;
    if (v44)
    {
      sub_29A014BEC(v44);
    }
  }

  else
  {
    v40 = v34;
  }

  if (*a6)
  {
    v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
    if (!v45)
    {
      v45 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
    }

    sub_29A166F2C(v72 + v40, v45 + 6);
    v46 = v40 + 1;
    v47 = &v71[v40 - 1];
    v49 = *a6;
    v48 = a6[1];
    if (v48)
    {
      atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
    }

    v50 = v47[1];
    *v47 = v49;
    v47[1] = v48;
    if (v50)
    {
      sub_29A014BEC(v50);
    }
  }

  else
  {
    v46 = v40;
  }

  if (*a7)
  {
    v51 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
    if (!v51)
    {
      v51 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
    }

    sub_29A166F2C(v72 + v46, v51 + 7);
    v52 = v46 + 1;
    v53 = &v71[v46 - 1];
    v55 = *a7;
    v54 = a7[1];
    if (v54)
    {
      atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
    }

    v56 = v53[1];
    *v53 = v55;
    v53[1] = v54;
    if (v56)
    {
      sub_29A014BEC(v56);
    }
  }

  else
  {
    v52 = v46;
  }

  if (*a8)
  {
    v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
    if (!v57)
    {
      v57 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
    }

    sub_29A166F2C(v72 + v52, v57 + 8);
    v58 = v52 + 1;
    v59 = &v71[v52 - 1];
    v61 = *a8;
    v60 = a8[1];
    if (v60)
    {
      atomic_fetch_add_explicit((v60 + 8), 1uLL, memory_order_relaxed);
    }

    v62 = v59[1];
    *v59 = v61;
    v59[1] = v60;
    if (v62)
    {
      sub_29A014BEC(v62);
    }
  }

  else
  {
    v58 = v52;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v58, v72, &v70, &v69);
  *a9 = v69;
  for (i = 120; i != -8; i -= 16)
  {
    v64 = *(&v71[-1] + i);
    if (v64)
    {
      sub_29A014BEC(v64);
    }
  }

  for (j = 56; j != -8; j -= 8)
  {
    v66 = *(v72 + j);
    if ((v66 & 7) != 0)
    {
      atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29ACDEE58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v30 = 120;
  while (1)
  {
    v31 = *(&a13 + v30);
    if (v31)
    {
      sub_29A014BEC(v31);
    }

    v30 -= 16;
    if (v30 == -8)
    {
      v32 = 56;
      while (1)
      {
        v33 = *(&a29 + v32);
        if ((v33 & 7) != 0)
        {
          atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v32 -= 8;
        if (v32 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::Builder::SetFaceVaryingLinearInterpolation(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::Builder::SetInterpolateBoundary(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::Builder::SetTriangleSubdivisionRule(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::Builder::SetCornerIndices(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 56);
  *(a1 + 48) = v4;
  *(a1 + 56) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::Builder::SetCornerSharpnesses(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 72);
  *(a1 + 64) = v4;
  *(a1 + 72) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::Builder::SetCreaseIndices(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 88);
  *(a1 + 80) = v4;
  *(a1 + 88) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::Builder::SetCreaseLengths(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 104);
  *(a1 + 96) = v4;
  *(a1 + 104) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::Builder::SetCreaseSharpnesses(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 120);
  *(a1 + 112) = v4;
  *(a1 + 120) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens))
    {
      sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  if (!result)
  {
    return sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
  }

  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174BB50, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174BB50);
    if (v2)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetDefaultLocator(v2);
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
      if (!v4)
      {
        v4 = sub_29ACDF30C(&pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, v4, dword_2A174BB18);
      __cxa_atexit(sub_29ABC33B4, dword_2A174BB18, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174BB50);
    }
  }

  return dword_2A174BB18;
}

pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens_StaticTokenType *sub_29ACDF30C(atomic_ullong *a1)
{
  result = sub_29ACDF354();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens_StaticTokenType::~HdSubdivisionTagsSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens_StaticTokenType *sub_29ACDF354()
{
  v0 = operator new(0x60uLL);
  pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchemaTokens_StaticTokenType::HdSubdivisionTagsSchemaTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29ACDF398@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A20780D8, 0)) != 0)
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSystemMessageTokens_StaticTokenType::~HdSystemMessageTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdSystemMessageTokens_StaticTokenType *this)
{
  v3 = (this + 16);
  sub_29A124AB0(&v3);
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdSystemMessageTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdSystemMessageTokens_StaticTokenType::HdSystemMessageTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "asyncAllow", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "asyncPoll", 0);
  v3 = this + 2;
  v4 = *this;
  v11 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v5;
    }
  }

  v6 = this[1];
  v12 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v7;
    }
  }

  *v3 = 0;
  this[3] = 0;
  this[4] = 0;
  sub_29A12EF7C(v3, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v9 = *(&v11 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ACDF5A4(_Unwind_Exception *a1)
{
  v3 = 8;
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
      v5 = v1[1];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens_StaticTokenType::~HdSystemSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens_StaticTokenType *this)
{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens_StaticTokenType::HdSystemSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "system", 0);
  v5 = *v2;
  v3 = v2 + 1;
  v4 = v5;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  sub_29A12EF7C(v3, &v8, &v9, 1uLL);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return this;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdSystemSchema::GetFromPath@<X0>(pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, uint64_t *result@<X0>, _DWORD *a3@<X1>, int *a4@<X3>, uint64_t a5@<X8>)
{
  v19 = *MEMORY[0x29EDCA608];
  if (*result)
  {
    v9 = result;
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens);
    if (!v10)
    {
      v10 = sub_29AC6A6D4(&pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v18, v10, a1);
    sub_29A1E21F4(&v16, a3);
    sub_29A1E2240(&v17, a3 + 1);
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v16))
    {
      v11 = sub_29AC1199C(v9);
      (*(*v11 + 16))(&v13);
      pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(v18, &v14, a5);
      if (!*a5)
      {
        v12 = *(a5 + 8);
        if (v12)
        {
          sub_29A014BEC(v12);
        }

        if (v15)
        {
          sub_29A014BEC(v15);
        }

        if ((v13 & 7) != 0)
        {
          atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v16, &v13);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      if (a4)
      {
        sub_29A2258F0(a4, &v16);
        sub_29A225948(a4 + 1, &v17);
      }

      if (v15)
      {
        sub_29A014BEC(v15);
      }

      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17);
      sub_29A1DE3A4(&v16);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17);
      sub_29A1DE3A4(&v16);
      *a5 = 0;
      *(a5 + 8) = 0;
    }

    return sub_29ABC3488(v18);
  }

  else
  {
    *a5 = 0;
    *(a5 + 8) = 0;
  }

  return result;
}

void sub_29ACDF9AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdSystemSchema::Compose@<X0>(uint64_t *result@<X0>, _DWORD *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v22 = *MEMORY[0x29EDCA608];
  if (*result)
  {
    v7 = result;
    v21 = 0x400000000;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v18);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v19);
    sub_29A1E21F4(&v16, a2);
    sub_29A1E2240(&v17, a2 + 1);
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v16))
    {
      v8 = sub_29AC1199C(v7);
      (*(*v8 + 16))(&v14);
      pxrInternal__aapl__pxrReserved__::HdSystemSchema::GetFromParent(&v14 + 1, &v11);
      pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(&v11, &v13);
      if (v12)
      {
        sub_29A014BEC(v12);
      }

      if (v13)
      {
        sub_29ACE0084(v20, &v13);
        sub_29A2258F0(&v18, &v16);
        sub_29A225948(&v19, &v17);
      }

      if (*(&v13 + 1))
      {
        sub_29A014BEC(*(&v13 + 1));
      }

      if (v15)
      {
        sub_29A014BEC(v15);
      }

      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v16, &v14);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17);
    sub_29A1DE3A4(&v16);
    v9 = v21;
    if (v21)
    {
      if (a3)
      {
        sub_29A2258F0(a3, &v18);
        sub_29A225948(a3 + 1, &v19);
        v9 = v21;
      }

      *&v13 = v9;
      v10 = v20;
      if (HIDWORD(v21) >= 5)
      {
        v10 = v20[0];
      }

      v11 = v10;
      sub_29AC4DFFC(&v13, &v11, &v14);
      *a4 = v14;
    }

    else
    {
      *a4 = 0;
      *(a4 + 8) = 0;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
    sub_29A1DE3A4(&v18);
    return sub_29ACDFFE8(v20);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
  }

  return result;
}

void sub_29ACDFC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29ACDFFE8(va1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSystemSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens))
    {
      sub_29AC6A6D4(&pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdSystemSchema::ComposeAsPrimDataSource(uint64_t *a1@<X0>, _DWORD *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdSystemSchema::Compose(a1, a2, a3, &v11);
  v5 = v11;
  if (v11)
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens);
    if (!v6)
    {
      v6 = sub_29AC6A6D4(&pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens);
    }

    v7 = v12;
    v8 = v11;
    v9 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v6, &v8, &v10);
    *a4 = v10;
    v10 = 0uLL;
    if (v9)
    {
      sub_29A014BEC(v9);
    }

    if (v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = v12;
    if (v12)
    {
LABEL_9:
      sub_29A014BEC(v7);
    }
  }

  if (!v5)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
  }
}

void sub_29ACDFED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdSystemSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdSystemSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens);
  if (!result)
  {
    return sub_29AC6A6D4(&pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdSystemSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdSystemSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174BB90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174BB90))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AC6A6D4(&pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174BB58, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A174BB58, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174BB90);
  }

  return &unk_2A174BB58;
}

uint64_t sub_29ACDFFE8(uint64_t a1)
{
  sub_29ACE0028(a1);
  if (*(a1 + 68) >= 5u)
  {
    free(*a1);
  }

  return a1;
}

void sub_29ACE0028(uint64_t *a1)
{
  v1 = a1;
  if (*(a1 + 17) >= 5u)
  {
    v1 = *a1;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 16 * v2;
    v4 = (v1 + 1);
    do
    {
      if (*v4)
      {
        sub_29A014BEC(*v4);
      }

      v4 += 2;
      v3 -= 16;
    }

    while (v3);
  }
}

void sub_29ACE0084(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 64);
  v4 = *(a1 + 68);
  if (v5 == v4)
  {
    sub_29ACE0104(a1, v5 + (v5 >> 1) + 1);
    v4 = *(a1 + 68);
  }

  v6 = a1;
  if (v4 >= 5)
  {
    v6 = *a1;
  }

  v7 = *(a1 + 64);
  v8 = *a2;
  *(v6 + 16 * v7) = *a2;
  if (*(&v8 + 1))
  {
    atomic_fetch_add_explicit((*(&v8 + 1) + 8), 1uLL, memory_order_relaxed);
    LODWORD(v7) = *(a1 + 64);
  }

  *(a1 + 64) = v7 + 1;
}

void sub_29ACE0104(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = malloc(16 * a2);
  v5 = v4;
  v6 = a1;
  if (*(a1 + 68) >= 5u)
  {
    v6 = *a1;
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    v8 = 16 * v7;
    v9 = v4;
    do
    {
      *v9++ = *v6;
      *v6 = 0;
      *(v6 + 8) = 0;
      v6 += 16;
      v8 -= 16;
    }

    while (v8);
  }

  sub_29ACE0028(a1);
  if (*(a1 + 68) >= 5u)
  {
    free(*a1);
  }

  *a1 = v5;
  *(a1 + 68) = v2;
}

pxrInternal__aapl__pxrReserved__::HdTask *pxrInternal__aapl__pxrReserved__::HdTask::HdTask(pxrInternal__aapl__pxrReserved__::HdTask *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  *this = &unk_2A2085448;
  v4 = (this + 12);
  sub_29A1E21F4(this + 2, a2);
  sub_29A1E2240(v4, a2 + 1);
  return this;
}