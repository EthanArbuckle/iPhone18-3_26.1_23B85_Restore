__int16 *sub_29A36AF00(__int16 *result)
{
  if (*result != -1)
  {
    *result = -1;
  }

  return result;
}

__int16 *sub_29A36AF18(__int16 *result)
{
  if (*result != -1)
  {
    *result = -1;
  }

  return result;
}

uint64_t sub_29A36AF30(uint64_t result)
{
  if (*(result + 4) != -1)
  {
    *(result + 4) = -1;
  }

  return result;
}

uint64_t sub_29A36AF48(uint64_t result)
{
  if (*(result + 4) != -1)
  {
    *(result + 4) = -1;
  }

  return result;
}

void sub_29A36AF60(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A36AFB4(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29A36AFB4(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 32)
  {
    if (*(i - 28) != -1)
    {
      if (*(i - 1) < 0)
      {
        operator delete(*(i - 24));
      }

      *(i - 28) = -1;
    }
  }

  *(a1 + 8) = a2;
}

uint64_t sub_29A36B020(uint64_t a1)
{
  if (*(a1 + 4) != -1)
  {
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 4) = -1;
  }

  return a1;
}

void *sub_29A36B068(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v5 = result[1];
        v4 = result[2];
        if ((v4 & 7) != 0)
        {
          atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        operator delete(result);
        result = v5;
      }

      while (v5 != v1);
    }
  }

  return result;
}

void sub_29A36B0E8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A36B13C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t *sub_29A36B13C(uint64_t *result)
{
  v1 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    do
    {
      if (*(v2 - 12) != -1)
      {
        v3 = *(v2 - 8);
        if ((v3 & 7) != 0)
        {
          atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *(v2 - 12) = -1;
      }

      v2 -= 16;
    }

    while (v2 != v1);
  }

  result[1] = v1;
  return result;
}

uint64_t sub_29A36B188(uint64_t result)
{
  if (*(result + 4) != -1)
  {
    v1 = *(result + 8);
    if ((v1 & 7) != 0)
    {
      atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(result + 4) = -1;
  }

  return result;
}

void sub_29A36B1B8(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_29A186B14((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_29A36B22C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A36B280(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_29A36B280(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      if (*(v3 - 20) != -1)
      {
        result = sub_29A186B14(v3 - 16);
        *(v3 - 20) = -1;
      }

      v3 -= 24;
    }

    while (v3 != v2);
  }

  v1[1] = v2;
  return result;
}

uint64_t sub_29A36B2E0(uint64_t a1)
{
  if (*(a1 + 4) != -1)
  {
    sub_29A186B14(a1 + 8);
    *(a1 + 4) = -1;
  }

  return a1;
}

void sub_29A36B320(void *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_29A1E26CC(v2 + 4);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_29A36B394(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A36B3E8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

__int16 **sub_29A36B3E8(__int16 **result)
{
  v1 = result;
  v3 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    v4 = v2 - 6;
    do
    {
      if (*v4 != -1)
      {
        result = sub_29A36B490(v4);
        *v4 = -1;
      }

      v5 = v4 == v3;
      v4 -= 6;
    }

    while (!v5);
  }

  v1[1] = v3;
  return result;
}

__int16 *sub_29A36B450(__int16 *a1)
{
  if (*a1 != -1)
  {
    sub_29A36B490(a1);
    *a1 = -1;
  }

  return a1;
}

_DWORD *sub_29A36B490(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 8));

  return sub_29A1DE3A4((a1 + 4));
}

void sub_29A36B4D0(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_29A36B544((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_29A36B544(uint64_t a1)
{
  sub_29A184A10((a1 + 48), 0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_29A36B5AC(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    sub_29A184A10((a1 + 48), 0);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
    sub_29A1DE3A4((a1 + 24));
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void sub_29A36B60C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A36B660(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29A36B660(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 64;
    do
    {
      if (*(v4 + 4) != -1)
      {
        sub_29A36B708(v4);
        *(v4 + 4) = -1;
      }

      v5 = v4 == v3;
      v4 -= 64;
    }

    while (!v5);
  }

  a1[1] = v3;
}

uint64_t sub_29A36B6C8(uint64_t a1)
{
  if (*(a1 + 4) != -1)
  {
    sub_29A36B708(a1);
    *(a1 + 4) = -1;
  }

  return a1;
}

void sub_29A36B708(uint64_t a1)
{
  sub_29A184A10((a1 + 56), 0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void sub_29A36B770(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_29A36B7E4((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_29A36B7E4(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_29A36B840(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
    sub_29A1DE3A4((a1 + 24));
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void sub_29A36B894(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A36B8E8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29A36B8E8(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 56;
    do
    {
      if (*(v4 + 4) != -1)
      {
        sub_29A36B990(v4);
        *(v4 + 4) = -1;
      }

      v5 = v4 == v3;
      v4 -= 56;
    }

    while (!v5);
  }

  a1[1] = v3;
}

uint64_t sub_29A36B950(uint64_t a1)
{
  if (*(a1 + 4) != -1)
  {
    sub_29A36B990(a1);
    *(a1 + 4) = -1;
  }

  return a1;
}

void sub_29A36B990(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

uint64_t sub_29A36B9EC(uint64_t a1)
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

uint64_t *sub_29A36BA6C(uint64_t a1, uint64_t *a2, int *a3, int *a4)
{
  if (a3 != a4)
  {
    v8 = operator new(0x18uLL);
    v9 = v8;
    *v8 = 0;
    v8[1] = 0;
    v11 = *a3;
    v10 = a3 + 1;
    *(v8 + 4) = v11;
    v12 = 1;
    if (v10 != a4)
    {
      v13 = v8;
      do
      {
        v8 = operator new(0x18uLL);
        v14 = *v10++;
        *v8 = v13;
        v8[1] = 0;
        *(v8 + 4) = v14;
        v13[1] = v8;
        ++v12;
        v13 = v8;
      }

      while (v10 != a4);
    }

    v15 = *a2;
    *(v15 + 8) = v9;
    *v9 = v15;
    *a2 = v8;
    v8[1] = a2;
    *(a1 + 16) += v12;
    return v9;
  }

  return a2;
}

void sub_29A36BB38(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t **sub_29A36BB6C(uint64_t **a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v8 = *a2;
    while (1)
    {
      while (1)
      {
        v9 = v6;
        v10 = *(v6 + 8);
        if (v8 >= v10)
        {
          break;
        }

        v6 = *v9;
        v7 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = v9[1];
      if (!v6)
      {
        v7 = v9 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = a1 + 1;
LABEL_10:
    v11 = operator new(0x30uLL);
    v11[8] = **a4;
    *(v11 + 5) = 0;
    sub_29A00B204(a1, v9, v7, v11);
    return v11;
  }

  return v9;
}

char *sub_29A36BC30(char **a1, char *__src, void *a3, void *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v9 = a1[1];
  v10 = a1[2];
  if (a5 <= (v10 - v9) >> 2)
  {
    v18 = (v9 - __src) >> 2;
    if (v18 >= a5)
    {
      v21 = &__src[4 * a5];
      v22 = &v9[-a5];
      v23 = a1[1];
      while (v22 < v9)
      {
        v24 = *v22++;
        *v23 = v24;
        v23 += 4;
      }

      a1[1] = v23;
      if (v9 != v21)
      {
        memmove(&__src[4 * a5], __src, v9 - v21);
      }

      *__src = *(v7 + 4);
      if (a5 != 1)
      {
        v25 = __src + 4;
        v26 = a5 + 1;
        do
        {
          v7 = v7[1];
          *v25++ = *(v7 + 4);
          --v26;
        }

        while (v26 > 2);
      }
    }

    else
    {
      if (v18 < 0)
      {
        v36 = (v9 - __src) >> 2;
        v20 = a3;
        do
        {
          v20 = *v20;
        }

        while (!__CFADD__(v36++, 1));
      }

      else if (v9 == __src)
      {
        v20 = a3;
      }

      else
      {
        v19 = v18 + 1;
        v20 = a3;
        do
        {
          v20 = v20[1];
          --v19;
        }

        while (v19 > 1);
      }

      v38 = a1[1];
      if (v20 == a4)
      {
        v39 = a1[1];
      }

      else
      {
        v40 = v20;
        v39 = a1[1];
        do
        {
          *v39 = *(v40 + 4);
          v39 += 4;
          v40 = v40[1];
          v38 += 4;
        }

        while (v40 != a4);
      }

      a1[1] = v38;
      if (v18 >= 1)
      {
        v41 = &__src[4 * a5];
        v42 = &v38[-4 * a5];
        v43 = v38;
        while (v42 < v9)
        {
          v44 = *v42++;
          *v43 = v44;
          v43 += 4;
        }

        a1[1] = v43;
        if (v39 != v41)
        {
          memmove(&__src[4 * a5], __src, v38 - v41);
        }

        if (v20 != v7)
        {
          v45 = __src;
          do
          {
            *v45++ = *(v7 + 4);
            v7 = v7[1];
          }

          while (v7 != v20);
        }
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + ((v9 - *a1) >> 2);
  if (v12 >> 62)
  {
    sub_29A00C9A4();
  }

  v13 = __src - v11;
  v14 = v10 - v11;
  if (v14 >> 1 > v12)
  {
    v12 = v14 >> 1;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v15 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  v16 = v13 >> 2;
  if (v15)
  {
    v17 = sub_29A00E7A8(a1, v15);
  }

  else
  {
    v17 = 0;
  }

  v27 = &v17[4 * v16];
  v28 = 4 * a5;
  v29 = v27;
  do
  {
    *v29 = *(v7 + 4);
    v29 += 4;
    v7 = v7[1];
    v28 -= 4;
  }

  while (v28);
  v30 = &v17[4 * v15];
  memcpy(&v27[4 * a5], __src, a1[1] - __src);
  v31 = *a1;
  v32 = &v27[4 * a5 + a1[1] - __src];
  a1[1] = __src;
  v33 = (__src - v31);
  v34 = &v27[-(__src - v31)];
  memcpy(v34, v31, v33);
  v35 = *a1;
  *a1 = v34;
  a1[1] = v32;
  a1[2] = v30;
  if (v35)
  {
    operator delete(v35);
  }

  return v27;
}

char *sub_29A36BEB4(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      sub_29A00C9A4();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      v17 = sub_29A00E7A8(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v34 = &v17[4 * v16];
    v35 = 4 * a5;
    v36 = v34;
    do
    {
      v37 = *v7++;
      *v36 = v37;
      v36 += 4;
      v35 -= 4;
    }

    while (v35);
    v38 = &v17[4 * v15];
    memcpy(&v34[4 * a5], v5, a1[1] - v5);
    v39 = *a1;
    v40 = &v34[4 * a5 + a1[1] - v5];
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

  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v23 = &__dst[4 * a5];
    v24 = &v10[-4 * a5];
    v25 = a1[1];
    while (v24 < v10)
    {
      v26 = *v24;
      v24 += 4;
      *v25++ = v26;
    }

    a1[1] = v25;
    if (v10 != v23)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v23);
    }

    v31 = 4 * a5;
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
    v19 += 4;
    *v21 = v22;
    v21 += 4;
    v20 += 4;
  }

  a1[1] = v20;
  if (v18 >= 1)
  {
    v27 = &__dst[4 * a5];
    v28 = &v20[-4 * a5];
    v29 = v20;
    while (v28 < v10)
    {
      v30 = *v28;
      v28 += 4;
      *v29 = v30;
      v29 += 4;
    }

    a1[1] = v29;
    if (v21 != v27)
    {
      memmove(&__dst[4 * a5], __dst, v20 - v27);
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

uint64_t sub_29A36C0B4(const void **a1, int *a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = (a1[1] - *a1) >> 2;
    LODWORD(v9) = *a2;
    *(&v9 + 1) = v5;
    v6 = sub_29A162F28(v4, &v9, &v9);
    if ((v7 & 1) == 0)
    {
      return *a1 + 4 * v6[3];
    }
  }

  else
  {
    result = sub_29A36C1EC(a1, a2);
    if (a1[1] != result)
    {
      return result;
    }
  }

  sub_29A00D250(a1, a2);
  sub_29A36C264(a1);
  return a1[1] - 4;
}

uint64_t sub_29A36C164(uint64_t a1)
{
  sub_29A160214((a1 + 24), 0);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_29A36C1A4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    sub_29A0DDCB0();
  }

  return (*(*v1 + 48))(v1) & 0xFFFFFFFFFFLL;
}

uint64_t sub_29A36C1EC(void *a1, int *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = sub_29A16315C(v3, a2);
    if (v4)
    {
      return *a1 + 4 * v4[3];
    }

    else
    {
      return a1[1];
    }
  }

  else
  {
    v6 = *a1;
    result = a1[1];
    if (*a1 != result)
    {
      while (*v6 != *a2)
      {
        if (++v6 == result)
        {
          return result;
        }
      }

      return v6;
    }
  }

  return result;
}

void sub_29A36C264(uint64_t *a1)
{
  if ((a1[1] - *a1) >= 0x1FD)
  {
    v2 = a1 + 3;
    if (!a1[3])
    {
      v3 = operator new(0x28uLL);
      *v3 = 0u;
      v3[1] = 0u;
      *(v3 + 8) = 1065353216;
      sub_29A019AA0(v3, 0x80uLL);
      sub_29A160214(v2, v3);
      v4 = *a1;
      if (a1[1] != *a1)
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = a1[3];
          v8 = (v4 + v5);
          sub_29A36C34C(v7, (v4 + v5), &unk_29B4D6118, &v8)[3] = v6++;
          v4 = *a1;
          v5 += 4;
        }

        while (v6 < (a1[1] - *a1) >> 2);
      }
    }
  }
}

void sub_29A36C334(_Unwind_Exception *a1)
{
  v3 = sub_29A0EB570(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void *sub_29A36C34C(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v7 = *a2;
  v8 = bswap64(0x9E3779B97F4A7C55 * v7);
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }
    }

    else
    {
      v4 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v4);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        do
        {
          v13 = v12[1];
          if (v13 == v8)
          {
            if (*(v12 + 4) == v7)
            {
              return v12;
            }
          }

          else
          {
            if (v10.u32[0] > 1uLL)
            {
              if (v13 >= v9)
              {
                v13 %= v9;
              }
            }

            else
            {
              v13 &= v9 - 1;
            }

            if (v13 != v4)
            {
              break;
            }
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

  v12 = operator new(0x20uLL);
  *v12 = 0;
  v12[1] = v8;
  *(v12 + 4) = **a4;
  v12[3] = 0;
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v9 || (v15 * v9) < v14)
  {
    v16 = 1;
    if (v9 >= 3)
    {
      v16 = (v9 & (v9 - 1)) != 0;
    }

    v17 = v16 | (2 * v9);
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
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }

      else
      {
        v4 = v8;
      }
    }

    else
    {
      v4 = (v9 - 1) & v8;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v4);
  if (v21)
  {
    *v12 = *v21;
LABEL_38:
    *v21 = v12;
    goto LABEL_39;
  }

  *v12 = *(a1 + 16);
  *(a1 + 16) = v12;
  *(v20 + 8 * v4) = a1 + 16;
  if (*v12)
  {
    v22 = *(*v12 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v22 >= v9)
      {
        v22 %= v9;
      }
    }

    else
    {
      v22 &= v9 - 1;
    }

    v21 = (*a1 + 8 * v22);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return v12;
}

void *sub_29A36C588(void *a1, int *a2, int *a3)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 1;
    v7 = a1;
    do
    {
      v8 = operator new(0x18uLL);
      v9 = *v5++;
      v8[4] = v9;
      *v8 = v7;
      *(v8 + 1) = a1;
      *(v7 + 1) = v8;
      *a1 = v8;
      a1[2] = v6++;
      v7 = v8;
    }

    while (v5 != a3);
  }

  return a1;
}

char *sub_29A36C620(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A0111A4(result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      *v7++ = *(a2 + 16);
      a2 = *(a2 + 8);
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_29A36C67C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A36C698(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    sub_29A0DDCB0();
  }

  return (*(*v1 + 48))(v1) & 0xFFFFFFFFFFLL;
}

uint64_t **sub_29A36C6E0(uint64_t **a1, int *a2, _DWORD *a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    v7 = *a2;
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = *(v5 + 7);
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
    v8 = a1 + 1;
LABEL_10:
    v10 = operator new(0x20uLL);
    *(v10 + 7) = *a3;
    sub_29A00B204(a1, v8, v6, v10);
    return v10;
  }

  return v8;
}

uint64_t sub_29A36C79C(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v13 = a2;
  v7 = sub_29A10A6B8(a1, &v13);
  sub_29A36C934(v7 + 1, v13);
  v8 = *(a1 + 8);
  if (v8 == *(a1 + 16))
  {
    v8 = sub_29A36C8FC();
  }

  v9 = v13;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v9 >> 61)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v9)
  {
    *(*(a1 + 16) - 6) = 1;
  }

  v10 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v10;
  *(a1 + 56) = (v10 * v9);
  return a1;
}

void sub_29A36C8D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A36AEC0(va);
  _Unwind_Resume(a1);
}

void *sub_29A36C8FC()
{
  if ((atomic_load_explicit(&qword_2A14F6AB0, memory_order_acquire) & 1) == 0)
  {
    sub_29B29BF54();
  }

  return &unk_2A14F6AA8;
}

void *sub_29A36C934(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A00C968(a1, a2);
    v4 = a1[1];
    v5 = v4 + 8 * a2;
    do
    {
      *v4 = -1;
      *(v4 + 2) = 0;
      v4 += 8;
    }

    while (v4 != v5);
    a1[1] = v5;
  }

  return a1;
}

__int16 *sub_29A36C9B8(uint64_t *a1, int *a2, _DWORD *a3)
{
  v5 = *a2;
  v6 = bswap64(0x9E3779B97F4A7C55 * v5);
  v7 = *a1;
  v8 = a1[4];
  v9 = v6 & *a1;
  result = (v8 + 8 * v9);
  if (*result < 0)
  {
    goto LABEL_7;
  }

  LOWORD(v11) = 0;
  while (*(result + 1) != v5)
  {
    v11 = (v11 + 1);
    v9 = (v9 + 1) & v7;
    result = (v8 + 8 * v9);
    if (v11 > *result)
    {
      while (sub_29A36CB14(a1, v11))
      {
        v12 = a1[4];
        v9 = v6 & *a1;
        if (*(v12 + 8 * v9) < 0)
        {
LABEL_7:
          v11 = 0;
        }

        else
        {
          LOWORD(v11) = 0;
          do
          {
            v11 = (v11 + 1);
            v9 = (v9 + 1) & *a1;
          }

          while (v11 <= *(v12 + 8 * v9));
        }
      }

      v13 = a1[4];
      v14 = (v13 + 8 * v9);
      if (*v14 == -1)
      {
        *(v14 + 1) = *a3;
        *v14 = v11;
      }

      else
      {
        v15 = *a3;
        sub_29A36CCE4(a1, v9, v11, v6, &v15);
        v13 = a1[4];
      }

      ++a1[6];
      return (v13 + 8 * v9);
    }
  }

  return result;
}

uint64_t sub_29A36CB14(uint64_t a1, int a2)
{
  if (a2 > 0x2000 || (*(a1 + 72) & 1) != 0 || (v3 = *(a1 + 48), v3 >= *(a1 + 56)))
  {
    v7 = sub_29A10A428(a1);
    sub_29A36CBE8(a1, v7);
    *(a1 + 72) = 0;
    return 1;
  }

  if (*(a1 + 73) == 1)
  {
    *(a1 + 73) = 0;
    v4 = *(a1 + 64);
    if (v4 != 0.0)
    {
      v5 = *(a1 + 40);
      v6 = v5 ? v3 / v5 : 0.0;
      if (v6 < v4)
      {
        v9 = *(a1 + 68);
        v10 = vcvtps_u32_f32((v3 + 1) / v9);
        v11 = vcvtps_u32_f32(v3 / v9);
        if (v11 <= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11;
        }

        sub_29A36CBE8(a1, v12);
        return 1;
      }
    }
  }

  return 0;
}

void sub_29A36CBE8(uint64_t a1, unint64_t a2)
{
  sub_29A36C79C(&v13, a2, *(a1 + 64), *(a1 + 68));
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 == v4)
  {
    goto LABEL_11;
  }

  v5 = v13;
  v6 = v14[3];
  do
  {
    if (*v3 == -1)
    {
      goto LABEL_10;
    }

    v7 = 0;
    for (i = bswap64(0x9E3779B97F4A7C55 * *(v3 + 1)); ; i = v9 + 1)
    {
      v9 = i & v5;
      v10 = (v6 + 8 * v9);
      v11 = *v10;
      if (v11 >= v7)
      {
        goto LABEL_8;
      }

      v12 = *(v3 + 1);
      if (v11 == -1)
      {
        break;
      }

      *(v3 + 1) = *(v10 + 1);
      *(v10 + 1) = v12;
      *v10 = v7;
      v7 = v11;
LABEL_8:
      ++v7;
    }

    *(v10 + 1) = v12;
    *v10 = v7;
LABEL_10:
    v3 += 4;
  }

  while (v3 != v4);
LABEL_11:
  v14[5] = *(a1 + 48);
  sub_29A10A4B4(&v13, a1);
  v15 = v14;
  sub_29A36AEC0(&v15);
}

uint64_t *sub_29A36CCE4(uint64_t *result, uint64_t a2, unsigned __int16 a3, uint64_t a4, int *a5)
{
  v5 = result[4];
  v6 = (v5 + 8 * a2);
  v7 = *a5;
  *a5 = *(v6 + 1);
  *(v6 + 1) = v7;
  v8 = *v6;
  *v6 = a3;
  v9 = *result;
  v10 = (a2 + 1) & *result;
  v11 = v8 + 1;
  v12 = (v5 + 8 * v10);
  for (i = *v12; i != 0xFFFF; i = *v12)
  {
    if (v11 <= i)
    {
      i = v11;
    }

    else
    {
      if (v11 > 0x2000)
      {
        *(result + 72) = 1;
      }

      v14 = *a5;
      *a5 = *(v12 + 1);
      *(v12 + 1) = v14;
      *v12 = v11;
    }

    v10 = (v10 + 1) & v9;
    v11 = i + 1;
    v12 = (v5 + 8 * v10);
  }

  *(v12 + 1) = *a5;
  *v12 = v11;
  return result;
}

void *sub_29A36CD8C(void *result, uint64_t a2, uint64_t *a3, _BYTE *a4, char a5)
{
  v8 = result;
  if ((a5 & 1) != 0 || *a3 != a3[1])
  {
    if (*a4)
    {
      v9 = "";
    }

    else
    {
      v9 = ", ";
    }

    if (*a4)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    v11 = sub_29A00911C(result, v9, v10);
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = *(a2 + 8);
    }

    v15 = sub_29A00911C(v11, v13, v14);
    sub_29A00911C(v15, " Items: [", 9);
    *a4 = 0;
    v18 = *a3;
    v19 = a3[1];
    *&v23 = *a3;
    *(&v23 + 1) = v19;
    while (v18 != v19)
    {
      v20 = sub_29A1FB914(&v23, v16, v17);
      v21 = MEMORY[0x29C2C1ED0](v8, *v20);
      v24 = v23;
      sub_29A1FB994(&v24);
      if (v24 == *(&v24 + 1))
      {
        v22 = "";
      }

      else
      {
        v22 = ", ";
      }

      sub_29A00911C(v21, v22, 2 * (v24 != *(&v24 + 1)));
      sub_29A1FB994(&v23);
      v19 = *(&v23 + 1);
      v18 = v23;
    }

    return sub_29A00911C(v8, "]", 1);
  }

  return result;
}

uint64_t sub_29A36CEB4(uint64_t a1)
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

void *sub_29A36CF34(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 <= (v8 - *result) >> 2)
  {
    v15 = result[1];
    v16 = v15 - v9;
    if (a4 <= (v15 - v9) >> 2)
    {
      v18 = a3 - __src;
      if (v18)
      {
        result = memmove(*result, __src, v18);
      }

      v14 = &v9[v18];
    }

    else
    {
      v17 = &__src[v16];
      if (v15 != v9)
      {
        result = memmove(*result, __src, v16);
        v15 = *(v7 + 8);
      }

      if (a3 != v17)
      {
        result = memmove(v15, v17, a3 - v17);
      }

      v14 = &v15[a3 - v17];
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    if (a4 >> 62)
    {
      sub_29A00C9A4();
    }

    v10 = v8 >> 1;
    if (v8 >> 1 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = sub_29A0111A4(v7, v11);
    v12 = *(v7 + 8);
    v13 = a3 - __src;
    if (v13)
    {
      result = memmove(*(v7 + 8), __src, v13);
    }

    v14 = (v12 + v13);
  }

  *(v7 + 8) = v14;
  return result;
}

uint64_t **sub_29A36D060(uint64_t **a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v8 = *a2;
    while (1)
    {
      while (1)
      {
        v9 = v6;
        v10 = *(v6 + 8);
        if (v8 >= v10)
        {
          break;
        }

        v6 = *v9;
        v7 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = v9[1];
      if (!v6)
      {
        v7 = v9 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = a1 + 1;
LABEL_10:
    v11 = operator new(0x30uLL);
    v11[8] = **a4;
    *(v11 + 5) = 0;
    sub_29A00B204(a1, v9, v7, v11);
    return v11;
  }

  return v9;
}

uint64_t sub_29A36D124(const void **a1, unsigned int *a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = (a1[1] - *a1) >> 2;
    LODWORD(v9) = *a2;
    *(&v9 + 1) = v5;
    v6 = sub_29A36D37C(v4, &v9, &v9);
    if ((v7 & 1) == 0)
    {
      return *a1 + 4 * v6[3];
    }
  }

  else
  {
    result = sub_29A36D21C(a1, a2);
    if (a1[1] != result)
    {
      return result;
    }
  }

  sub_29A00D250(a1, a2);
  sub_29A36D294(a1);
  return a1[1] - 4;
}

uint64_t sub_29A36D1D4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    sub_29A0DDCB0();
  }

  return (*(*v1 + 48))(v1) & 0xFFFFFFFFFFLL;
}

uint64_t sub_29A36D21C(void *a1, unsigned int *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = sub_29A36D5B0(v3, a2);
    if (v4)
    {
      return *a1 + 4 * v4[3];
    }

    else
    {
      return a1[1];
    }
  }

  else
  {
    v6 = *a1;
    result = a1[1];
    if (*a1 != result)
    {
      while (*v6 != *a2)
      {
        if (++v6 == result)
        {
          return result;
        }
      }

      return v6;
    }
  }

  return result;
}

void sub_29A36D294(uint64_t *a1)
{
  if ((a1[1] - *a1) >= 0x1FD)
  {
    v2 = a1 + 3;
    if (!a1[3])
    {
      v3 = operator new(0x28uLL);
      *v3 = 0u;
      v3[1] = 0u;
      *(v3 + 8) = 1065353216;
      sub_29A019AA0(v3, 0x80uLL);
      sub_29A160214(v2, v3);
      v4 = *a1;
      if (a1[1] != *a1)
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = a1[3];
          v8 = (v4 + v5);
          sub_29A36D67C(v7, (v4 + v5), &unk_29B4D6118, &v8)[3] = v6++;
          v4 = *a1;
          v5 += 4;
        }

        while (v6 < (a1[1] - *a1) >> 2);
      }
    }
  }
}

void sub_29A36D364(_Unwind_Exception *a1)
{
  v3 = sub_29A0EB570(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void *sub_29A36D37C(uint64_t a1, unsigned int *a2, _OWORD *a3)
{
  v6 = *a2;
  v7 = bswap64(0x9E3779B97F4A7C55 * v6);
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }
    }

    else
    {
      v3 = v7 & (v8 - 1);
    }

    v10 = *(*a1 + 8 * v3);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        do
        {
          v12 = v11[1];
          if (v12 == v7)
          {
            if (*(v11 + 4) == v6)
            {
              return v11;
            }
          }

          else
          {
            if (v9.u32[0] > 1uLL)
            {
              if (v12 >= v8)
              {
                v12 %= v8;
              }
            }

            else
            {
              v12 &= v8 - 1;
            }

            if (v12 != v3)
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

  v11 = operator new(0x20uLL);
  *v11 = 0;
  v11[1] = v7;
  *(v11 + 1) = *a3;
  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v8 || (v14 * v8) < v13)
  {
    v15 = 1;
    if (v8 >= 3)
    {
      v15 = (v8 & (v8 - 1)) != 0;
    }

    v16 = v15 | (2 * v8);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    sub_29A019AA0(a1, v18);
    v8 = *(a1 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }

      else
      {
        v3 = v7;
      }
    }

    else
    {
      v3 = (v8 - 1) & v7;
    }
  }

  v19 = *a1;
  v20 = *(*a1 + 8 * v3);
  if (v20)
  {
    *v11 = *v20;
LABEL_38:
    *v20 = v11;
    goto LABEL_39;
  }

  *v11 = *(a1 + 16);
  *(a1 + 16) = v11;
  *(v19 + 8 * v3) = a1 + 16;
  if (*v11)
  {
    v21 = *(*v11 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v21 >= v8)
      {
        v21 %= v8;
      }
    }

    else
    {
      v21 &= v8 - 1;
    }

    v20 = (*a1 + 8 * v21);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return v11;
}

uint64_t *sub_29A36D5B0(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = bswap64(0x9E3779B97F4A7C55 * v3);
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v4;
    if (v4 >= *&v2)
    {
      v6 = v4 % *&v2;
    }
  }

  else
  {
    v6 = v4 & (*&v2 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = *result)
  {
    v9 = result[1];
    if (v9 == v4)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= *&v2)
        {
          v9 %= *&v2;
        }
      }

      else
      {
        v9 &= *&v2 - 1;
      }

      if (v9 != v6)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_29A36D67C(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v7 = *a2;
  v8 = bswap64(0x9E3779B97F4A7C55 * v7);
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }
    }

    else
    {
      v4 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v4);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        do
        {
          v13 = v12[1];
          if (v13 == v8)
          {
            if (*(v12 + 4) == v7)
            {
              return v12;
            }
          }

          else
          {
            if (v10.u32[0] > 1uLL)
            {
              if (v13 >= v9)
              {
                v13 %= v9;
              }
            }

            else
            {
              v13 &= v9 - 1;
            }

            if (v13 != v4)
            {
              break;
            }
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

  v12 = operator new(0x20uLL);
  *v12 = 0;
  v12[1] = v8;
  *(v12 + 4) = **a4;
  v12[3] = 0;
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v9 || (v15 * v9) < v14)
  {
    v16 = 1;
    if (v9 >= 3)
    {
      v16 = (v9 & (v9 - 1)) != 0;
    }

    v17 = v16 | (2 * v9);
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
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }

      else
      {
        v4 = v8;
      }
    }

    else
    {
      v4 = (v9 - 1) & v8;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v4);
  if (v21)
  {
    *v12 = *v21;
LABEL_38:
    *v21 = v12;
    goto LABEL_39;
  }

  *v12 = *(a1 + 16);
  *(a1 + 16) = v12;
  *(v20 + 8 * v4) = a1 + 16;
  if (*v12)
  {
    v22 = *(*v12 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v22 >= v9)
      {
        v22 %= v9;
      }
    }

    else
    {
      v22 &= v9 - 1;
    }

    v21 = (*a1 + 8 * v22);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return v12;
}

char *sub_29A36D8B8(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A0111A4(result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      *v7++ = *(a2 + 16);
      a2 = *(a2 + 8);
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_29A36D914(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A36D930(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    sub_29A0DDCB0();
  }

  return (*(*v1 + 48))(v1) & 0xFFFFFFFFFFLL;
}

uint64_t sub_29A36D978(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v13 = a2;
  v7 = sub_29A10A6B8(a1, &v13);
  sub_29A36DB10(v7 + 1, v13);
  v8 = *(a1 + 8);
  if (v8 == *(a1 + 16))
  {
    v8 = sub_29A36DAD8();
  }

  v9 = v13;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v9 >> 61)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v9)
  {
    *(*(a1 + 16) - 6) = 1;
  }

  v10 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v10;
  *(a1 + 56) = (v10 * v9);
  return a1;
}

void sub_29A36DAB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A36AEC0(va);
  _Unwind_Resume(a1);
}

void *sub_29A36DAD8()
{
  if ((atomic_load_explicit(&qword_2A14F6AC0, memory_order_acquire) & 1) == 0)
  {
    sub_29B29BFC0();
  }

  return &unk_2A14F6AB8;
}

void *sub_29A36DB10(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A00C968(a1, a2);
    v4 = a1[1];
    v5 = v4 + 8 * a2;
    do
    {
      *v4 = -1;
      *(v4 + 2) = 0;
      v4 += 8;
    }

    while (v4 != v5);
    a1[1] = v5;
  }

  return a1;
}

__int16 *sub_29A36DB94(uint64_t *a1, unsigned int *a2, _DWORD *a3)
{
  v5 = *a2;
  v6 = bswap64(0x9E3779B97F4A7C55 * v5);
  v7 = *a1;
  v8 = a1[4];
  v9 = v6 & *a1;
  result = (v8 + 8 * v9);
  if (*result < 0)
  {
    goto LABEL_7;
  }

  LOWORD(v11) = 0;
  while (*(result + 1) != v5)
  {
    v11 = (v11 + 1);
    v9 = (v9 + 1) & v7;
    result = (v8 + 8 * v9);
    if (v11 > *result)
    {
      while (sub_29A36DCF0(a1, v11))
      {
        v12 = a1[4];
        v9 = v6 & *a1;
        if (*(v12 + 8 * v9) < 0)
        {
LABEL_7:
          v11 = 0;
        }

        else
        {
          LOWORD(v11) = 0;
          do
          {
            v11 = (v11 + 1);
            v9 = (v9 + 1) & *a1;
          }

          while (v11 <= *(v12 + 8 * v9));
        }
      }

      v13 = a1[4];
      v14 = (v13 + 8 * v9);
      if (*v14 == -1)
      {
        *(v14 + 1) = *a3;
        *v14 = v11;
      }

      else
      {
        v15 = *a3;
        sub_29A36CCE4(a1, v9, v11, v6, &v15);
        v13 = a1[4];
      }

      ++a1[6];
      return (v13 + 8 * v9);
    }
  }

  return result;
}

uint64_t sub_29A36DCF0(uint64_t a1, int a2)
{
  if (a2 > 0x2000 || (*(a1 + 72) & 1) != 0 || (v3 = *(a1 + 48), v3 >= *(a1 + 56)))
  {
    v7 = sub_29A10A428(a1);
    sub_29A36DDC4(a1, v7);
    *(a1 + 72) = 0;
    return 1;
  }

  if (*(a1 + 73) == 1)
  {
    *(a1 + 73) = 0;
    v4 = *(a1 + 64);
    if (v4 != 0.0)
    {
      v5 = *(a1 + 40);
      v6 = v5 ? v3 / v5 : 0.0;
      if (v6 < v4)
      {
        v9 = *(a1 + 68);
        v10 = vcvtps_u32_f32((v3 + 1) / v9);
        v11 = vcvtps_u32_f32(v3 / v9);
        if (v11 <= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11;
        }

        sub_29A36DDC4(a1, v12);
        return 1;
      }
    }
  }

  return 0;
}

void sub_29A36DDC4(uint64_t a1, unint64_t a2)
{
  sub_29A36D978(&v13, a2, *(a1 + 64), *(a1 + 68));
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 == v4)
  {
    goto LABEL_11;
  }

  v5 = v13;
  v6 = v14[3];
  do
  {
    if (*v3 == -1)
    {
      goto LABEL_10;
    }

    v7 = 0;
    for (i = bswap64(0x9E3779B97F4A7C55 * *(v3 + 1)); ; i = v9 + 1)
    {
      v9 = i & v5;
      v10 = (v6 + 8 * v9);
      v11 = *v10;
      if (v11 >= v7)
      {
        goto LABEL_8;
      }

      v12 = *(v3 + 1);
      if (v11 == -1)
      {
        break;
      }

      *(v3 + 1) = *(v10 + 1);
      *(v10 + 1) = v12;
      *v10 = v7;
      v7 = v11;
LABEL_8:
      ++v7;
    }

    *(v10 + 1) = v12;
    *v10 = v7;
LABEL_10:
    v3 += 4;
  }

  while (v3 != v4);
LABEL_11:
  v14[5] = *(a1 + 48);
  sub_29A10A4B4(&v13, a1);
  v15 = v14;
  sub_29A36AEC0(&v15);
}

void *sub_29A36DEC0(void *result, uint64_t a2, uint64_t *a3, _BYTE *a4, char a5)
{
  v8 = result;
  if ((a5 & 1) != 0 || *a3 != a3[1])
  {
    if (*a4)
    {
      v9 = "";
    }

    else
    {
      v9 = ", ";
    }

    if (*a4)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    v11 = sub_29A00911C(result, v9, v10);
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = *(a2 + 8);
    }

    v15 = sub_29A00911C(v11, v13, v14);
    sub_29A00911C(v15, " Items: [", 9);
    *a4 = 0;
    v18 = *a3;
    v19 = a3[1];
    *&v23 = *a3;
    *(&v23 + 1) = v19;
    while (v18 != v19)
    {
      v20 = sub_29A1FC25C(&v23, v16, v17);
      v21 = MEMORY[0x29C2C1EE0](v8, *v20);
      v24 = v23;
      sub_29A1FC2DC(&v24);
      if (v24 == *(&v24 + 1))
      {
        v22 = "";
      }

      else
      {
        v22 = ", ";
      }

      sub_29A00911C(v21, v22, 2 * (v24 != *(&v24 + 1)));
      sub_29A1FC2DC(&v23);
      v19 = *(&v23 + 1);
      v18 = v23;
    }

    return sub_29A00911C(v8, "]", 1);
  }

  return result;
}

uint64_t sub_29A36DFE8(uint64_t a1)
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

uint64_t *sub_29A36E068(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (a3 != a4)
  {
    v8 = operator new(0x18uLL);
    v9 = v8;
    *v8 = 0;
    v8[1] = 0;
    v11 = *a3;
    v10 = a3 + 1;
    v8[2] = v11;
    v12 = 1;
    if (v10 != a4)
    {
      v13 = v8;
      do
      {
        v8 = operator new(0x18uLL);
        v14 = *v10++;
        *v8 = v13;
        v8[1] = 0;
        v8[2] = v14;
        v13[1] = v8;
        ++v12;
        v13 = v8;
      }

      while (v10 != a4);
    }

    v15 = *a2;
    *(v15 + 8) = v9;
    *v9 = v15;
    *a2 = v8;
    v8[1] = a2;
    *(a1 + 16) += v12;
    return v9;
  }

  return a2;
}

void sub_29A36E134(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t *sub_29A36E168(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v8 = *a2;
    while (1)
    {
      while (1)
      {
        v9 = v6;
        v10 = v6[4];
        if (v8 >= v10)
        {
          break;
        }

        v6 = *v9;
        v7 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = v9[1];
      if (!v6)
      {
        v7 = v9 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = a1 + 1;
LABEL_10:
    v11 = operator new(0x30uLL);
    v11[4] = **a4;
    v11[5] = 0;
    sub_29A00B204(a1, v9, v7, v11);
    return v11;
  }

  return v9;
}

char *sub_29A36E228(char **a1, char *__src, void *a3, void *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v9 = a1[1];
  v10 = a1[2];
  if (a5 <= (v10 - v9) >> 3)
  {
    v18 = (v9 - __src) >> 3;
    if (v18 >= a5)
    {
      v21 = &__src[8 * a5];
      v22 = &v9[-a5];
      v23 = a1[1];
      while (v22 < v9)
      {
        v24 = *v22++;
        *v23 = v24;
        v23 += 8;
      }

      a1[1] = v23;
      if (v9 != v21)
      {
        memmove(&__src[8 * a5], __src, v9 - v21);
      }

      *__src = v7[2];
      if (a5 != 1)
      {
        v25 = __src + 8;
        v26 = a5 + 1;
        do
        {
          v7 = v7[1];
          *v25++ = v7[2];
          --v26;
        }

        while (v26 > 2);
      }
    }

    else
    {
      if (v18 < 0)
      {
        v36 = (v9 - __src) >> 3;
        v20 = a3;
        do
        {
          v20 = *v20;
        }

        while (!__CFADD__(v36++, 1));
      }

      else if (v9 == __src)
      {
        v20 = a3;
      }

      else
      {
        v19 = v18 + 1;
        v20 = a3;
        do
        {
          v20 = v20[1];
          --v19;
        }

        while (v19 > 1);
      }

      v38 = a1[1];
      if (v20 == a4)
      {
        v39 = a1[1];
      }

      else
      {
        v40 = v20;
        v39 = a1[1];
        do
        {
          *v39 = v40[2];
          v39 += 8;
          v40 = v40[1];
          v38 += 8;
        }

        while (v40 != a4);
      }

      a1[1] = v38;
      if (v18 >= 1)
      {
        v41 = &__src[8 * a5];
        v42 = &v38[-8 * a5];
        v43 = v38;
        while (v42 < v9)
        {
          v44 = *v42++;
          *v43 = v44;
          v43 += 8;
        }

        a1[1] = v43;
        if (v39 != v41)
        {
          memmove(&__src[8 * a5], __src, v38 - v41);
        }

        if (v20 != v7)
        {
          v45 = __src;
          do
          {
            *v45++ = v7[2];
            v7 = v7[1];
          }

          while (v7 != v20);
        }
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + ((v9 - *a1) >> 3);
  if (v12 >> 61)
  {
    sub_29A00C9A4();
  }

  v13 = __src - v11;
  v14 = v10 - v11;
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
  if (v15)
  {
    v17 = sub_29A00C9BC(a1, v15);
  }

  else
  {
    v17 = 0;
  }

  v27 = &v17[8 * v16];
  v28 = 8 * a5;
  v29 = v27;
  do
  {
    *v29 = v7[2];
    v29 += 8;
    v7 = v7[1];
    v28 -= 8;
  }

  while (v28);
  v30 = &v17[8 * v15];
  memcpy(&v27[8 * a5], __src, a1[1] - __src);
  v31 = *a1;
  v32 = &v27[8 * a5 + a1[1] - __src];
  a1[1] = __src;
  v33 = (__src - v31);
  v34 = &v27[-(__src - v31)];
  memcpy(v34, v31, v33);
  v35 = *a1;
  *a1 = v34;
  a1[1] = v32;
  a1[2] = v30;
  if (v35)
  {
    operator delete(v35);
  }

  return v27;
}

char *sub_29A36E4AC(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      sub_29A00C9A4();
    }

    v13 = __dst - v11;
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
    if (v15)
    {
      v17 = sub_29A00C9BC(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v34 = &v17[8 * v16];
    v35 = 8 * a5;
    v36 = v34;
    do
    {
      v37 = *v7++;
      *v36 = v37;
      v36 += 8;
      v35 -= 8;
    }

    while (v35);
    v38 = &v17[8 * v15];
    memcpy(&v34[8 * a5], v5, a1[1] - v5);
    v39 = *a1;
    v40 = &v34[8 * a5 + a1[1] - v5];
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

  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v23 = &__dst[8 * a5];
    v24 = &v10[-8 * a5];
    v25 = a1[1];
    while (v24 < v10)
    {
      v26 = *v24;
      v24 += 8;
      *v25++ = v26;
    }

    a1[1] = v25;
    if (v10 != v23)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v23);
    }

    v31 = 8 * a5;
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
    v19 += 8;
    *v21 = v22;
    v21 += 8;
    v20 += 8;
  }

  a1[1] = v20;
  if (v18 >= 1)
  {
    v27 = &__dst[8 * a5];
    v28 = &v20[-8 * a5];
    v29 = v20;
    while (v28 < v10)
    {
      v30 = *v28;
      v28 += 8;
      *v29 = v30;
      v29 += 8;
    }

    a1[1] = v29;
    if (v21 != v27)
    {
      memmove(&__dst[8 * a5], __dst, v20 - v27);
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

uint64_t sub_29A36E6AC(const void **a1, uint64_t *a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = (a1[1] - *a1) >> 3;
    *&v9 = *a2;
    *(&v9 + 1) = v5;
    v6 = sub_29A36E900(v4, &v9, &v9);
    if ((v7 & 1) == 0)
    {
      return *a1 + 8 * v6[3];
    }
  }

  else
  {
    result = sub_29A36E7A0(a1, a2);
    if (a1[1] != result)
    {
      return result;
    }
  }

  sub_29A018094(a1, a2);
  sub_29A36E818(a1);
  return a1[1] - 8;
}

uint64_t sub_29A36E758(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    sub_29A0DDCB0();
  }

  return (*(*v1 + 48))(v1);
}

uint64_t sub_29A36E7A0(void *a1, void *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = sub_29A11802C(v3, a2);
    if (v4)
    {
      return *a1 + 8 * v4[3];
    }

    else
    {
      return a1[1];
    }
  }

  else
  {
    v6 = *a1;
    result = a1[1];
    if (*a1 != result)
    {
      while (*v6 != *a2)
      {
        if (++v6 == result)
        {
          return result;
        }
      }

      return v6;
    }
  }

  return result;
}

void sub_29A36E818(uint64_t *a1)
{
  if ((a1[1] - *a1) >= 0x3F9)
  {
    v2 = a1 + 3;
    if (!a1[3])
    {
      v3 = operator new(0x28uLL);
      *v3 = 0u;
      v3[1] = 0u;
      *(v3 + 8) = 1065353216;
      sub_29A019AA0(v3, 0x80uLL);
      sub_29A160214(v2, v3);
      v4 = *a1;
      if (a1[1] != *a1)
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = a1[3];
          v8 = (v4 + v5);
          sub_29A36EB34(v7, (v4 + v5), &unk_29B4D6118, &v8)[3] = v6++;
          v4 = *a1;
          v5 += 8;
        }

        while (v6 < (a1[1] - *a1) >> 3);
      }
    }
  }
}

void sub_29A36E8E8(_Unwind_Exception *a1)
{
  v3 = sub_29A0EB570(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void *sub_29A36E900(uint64_t a1, void *a2, _OWORD *a3)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * *a2);
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v3 = v6;
      if (v6 >= v7)
      {
        v3 = v6 % v7;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }

    v9 = *(*a1 + 8 * v3);
    if (v9)
    {
      for (i = *v9; i; i = *i)
      {
        v11 = i[1];
        if (v11 == v6)
        {
          if (i[2] == *a2)
          {
            return i;
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

          if (v11 != v3)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x20uLL);
  *i = 0;
  i[1] = v6;
  *(i + 1) = *a3;
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
        v3 = v6 % v7;
      }

      else
      {
        v3 = v6;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v3);
  if (v19)
  {
    *i = *v19;
LABEL_38:
    *v19 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v18 + 8 * v3) = a1 + 16;
  if (*i)
  {
    v20 = *(*i + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v20 >= v7)
      {
        v20 %= v7;
      }
    }

    else
    {
      v20 &= v7 - 1;
    }

    v19 = (*a1 + 8 * v20);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

void *sub_29A36EB34(uint64_t a1, void *a2, uint64_t a3, void **a4)
{
  v7 = bswap64(0x9E3779B97F4A7C55 * *a2);
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v4 = v7;
      if (v7 >= v8)
      {
        v4 = v7 % v8;
      }
    }

    else
    {
      v4 = (v8 - 1) & v7;
    }

    v10 = *(*a1 + 8 * v4);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == v7)
        {
          if (i[2] == *a2)
          {
            return i;
          }
        }

        else
        {
          if (v9.u32[0] > 1uLL)
          {
            if (v12 >= v8)
            {
              v12 %= v8;
            }
          }

          else
          {
            v12 &= v8 - 1;
          }

          if (v12 != v4)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x20uLL);
  *i = 0;
  i[1] = v7;
  i[2] = **a4;
  i[3] = 0;
  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v8 || (v14 * v8) < v13)
  {
    v15 = 1;
    if (v8 >= 3)
    {
      v15 = (v8 & (v8 - 1)) != 0;
    }

    v16 = v15 | (2 * v8);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    sub_29A019AA0(a1, v18);
    v8 = *(a1 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v4 = v7 % v8;
      }

      else
      {
        v4 = v7;
      }
    }

    else
    {
      v4 = (v8 - 1) & v7;
    }
  }

  v19 = *a1;
  v20 = *(*a1 + 8 * v4);
  if (v20)
  {
    *i = *v20;
LABEL_38:
    *v20 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v19 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v21 = *(*i + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v21 >= v8)
      {
        v21 %= v8;
      }
    }

    else
    {
      v21 &= v8 - 1;
    }

    v20 = (*a1 + 8 * v21);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

void *sub_29A36ED6C(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 1;
    v7 = a1;
    do
    {
      v8 = operator new(0x18uLL);
      v9 = *v5++;
      v8[1] = a1;
      v8[2] = v9;
      *v8 = v7;
      v7[1] = v8;
      *a1 = v8;
      a1[2] = v6++;
      v7 = v8;
    }

    while (v5 != a3);
  }

  return a1;
}

char *sub_29A36EE04(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A00C968(result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      *v7++ = *(a2 + 16);
      a2 = *(a2 + 8);
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_29A36EE60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A36EE7C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    sub_29A0DDCB0();
  }

  return (*(*v1 + 48))(v1);
}

uint64_t *sub_29A36EEC4(uint64_t **a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
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
    v8 = a1 + 1;
LABEL_10:
    v10 = operator new(0x28uLL);
    v10[4] = *a3;
    sub_29A00B204(a1, v8, v6, v10);
    return v10;
  }

  return v8;
}

uint64_t sub_29A36EF80(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v13 = a2;
  v7 = sub_29A10A6B8(a1, &v13);
  sub_29A36F118(v7 + 1, v13);
  v8 = *(a1 + 8);
  if (v8 == *(a1 + 16))
  {
    v8 = sub_29A36F0E0();
  }

  v9 = v13;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v9 >> 60)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v9)
  {
    *(*(a1 + 16) - 10) = 1;
  }

  v10 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v10;
  *(a1 + 56) = (v10 * v9);
  return a1;
}

void sub_29A36F0B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A10A834(va);
  _Unwind_Resume(a1);
}

void *sub_29A36F0E0()
{
  if ((atomic_load_explicit(&qword_2A14F6AD8, memory_order_acquire) & 1) == 0)
  {
    sub_29B29C02C();
  }

  return &unk_2A14F6AC8;
}

void *sub_29A36F118(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A0D0518(a1, a2);
    v4 = a1[1];
    v5 = v4 + 16 * a2;
    do
    {
      *v4 = 0;
      *(v4 + 4) = -1;
      *(v4 + 6) = 0;
      v4 += 16;
    }

    while (v4 != v5);
    a1[1] = v5;
  }

  return a1;
}

uint64_t sub_29A36F1A0(uint64_t *a1, void *a2, void *a3)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * *a2);
  v6 = *a1;
  v7 = a1[4];
  v8 = v5 & *a1;
  result = v7 + 16 * v8;
  if (*(result + 4) < 0)
  {
    goto LABEL_7;
  }

  LOWORD(v10) = 0;
  while (*(result + 8) != *a2)
  {
    v10 = (v10 + 1);
    v8 = (v8 + 1) & v6;
    result = v7 + 16 * v8;
    if (v10 > *(result + 4))
    {
      while (sub_29A36F300(a1, v10))
      {
        v11 = a1[4];
        v8 = v5 & *a1;
        if (*(v11 + 16 * v8 + 4) < 0)
        {
LABEL_7:
          v10 = 0;
        }

        else
        {
          LOWORD(v10) = 0;
          do
          {
            v10 = (v10 + 1);
            v8 = (v8 + 1) & *a1;
          }

          while (v10 <= *(v11 + 16 * v8 + 4));
        }
      }

      v12 = a1[4];
      v13 = v12 + 16 * v8;
      if (*(v13 + 4) == -1)
      {
        *(v13 + 8) = *a3;
        *v13 = v5;
        *(v13 + 4) = v10;
      }

      else
      {
        v14 = *a3;
        sub_29A36F4F8(a1, v8, v10, v5, &v14);
        v12 = a1[4];
      }

      ++a1[6];
      return v12 + 16 * v8;
    }
  }

  return result;
}

uint64_t sub_29A36F300(uint64_t a1, int a2)
{
  if (a2 > 0x2000 || (*(a1 + 72) & 1) != 0 || (v3 = *(a1 + 48), v3 >= *(a1 + 56)))
  {
    v7 = sub_29A10A428(a1);
    sub_29A36F3D4(a1, v7);
    *(a1 + 72) = 0;
    return 1;
  }

  if (*(a1 + 73) == 1)
  {
    *(a1 + 73) = 0;
    v4 = *(a1 + 64);
    if (v4 != 0.0)
    {
      v5 = *(a1 + 40);
      v6 = v5 ? v3 / v5 : 0.0;
      if (v6 < v4)
      {
        v9 = *(a1 + 68);
        v10 = vcvtps_u32_f32((v3 + 1) / v9);
        v11 = vcvtps_u32_f32(v3 / v9);
        if (v11 <= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11;
        }

        sub_29A36F3D4(a1, v12);
        return 1;
      }
    }
  }

  return 0;
}

void sub_29A36F3D4(uint64_t a1, unint64_t a2)
{
  sub_29A36EF80(&v16, a2, *(a1 + 64), *(a1 + 68));
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 == v4)
  {
    goto LABEL_14;
  }

  v6 = v17[3];
  v5 = v17[4];
  v7 = v16;
  do
  {
    if (*(v3 + 2) == -1)
    {
      goto LABEL_13;
    }

    if (v5 > 0x100000000)
    {
      v8 = bswap64(0x9E3779B97F4A7C55 * *(v3 + 1));
    }

    else
    {
      v8 = *v3;
    }

    v9 = 0;
    for (i = v8; ; i = v11 + 1)
    {
      v11 = i & v7;
      v12 = (v6 + 16 * v11);
      v13 = *(v12 + 2);
      if (v13 >= v9)
      {
        goto LABEL_11;
      }

      v14 = *(v3 + 1);
      if (v13 == -1)
      {
        break;
      }

      *(v3 + 1) = *(v12 + 1);
      *(v12 + 1) = v14;
      *(v12 + 2) = v9;
      v15 = *v12;
      *v12 = v8;
      v9 = v13;
      LODWORD(v8) = v15;
LABEL_11:
      ++v9;
    }

    *(v12 + 1) = v14;
    *v12 = v8;
    *(v12 + 2) = v9;
LABEL_13:
    v3 += 4;
  }

  while (v3 != v4);
LABEL_14:
  v17[5] = *(a1 + 48);
  sub_29A10A4B4(&v16, a1);
  v18 = v17;
  sub_29A10A834(&v18);
}

uint64_t *sub_29A36F4F8(uint64_t *result, uint64_t a2, __int16 a3, int a4, uint64_t *a5)
{
  v5 = result[4];
  v6 = (v5 + 16 * a2);
  v7 = *a5;
  *a5 = *(v6 + 1);
  *(v6 + 1) = v7;
  v8 = *(v6 + 2);
  *(v6 + 2) = a3;
  v9 = *v6;
  *v6 = a4;
  v10 = *result;
  v11 = (a2 + 1) & *result;
  v12 = v8 + 1;
  v13 = (v5 + 16 * v11);
  v15 = v13 + 1;
  for (i = *(v13 + 2); i != 0xFFFF; i = *(v13 + 2))
  {
    if (v12 <= i)
    {
      i = v12;
    }

    else
    {
      if (v12 > 0x2000)
      {
        *(result + 72) = 1;
      }

      v16 = *a5;
      *a5 = *(v13 + 1);
      *(v13 + 1) = v16;
      *v15 = v12;
      v17 = *v13;
      *v13 = v9;
      v9 = v17;
    }

    v11 = (v11 + 1) & v10;
    v12 = i + 1;
    v13 = (v5 + 16 * v11);
    v15 = v13 + 1;
  }

  *(v13 + 1) = *a5;
  *v13 = v9;
  *(v13 + 2) = v12;
  return result;
}

void *sub_29A36F5C0(void *result, uint64_t a2, uint64_t *a3, _BYTE *a4, char a5)
{
  v8 = result;
  if ((a5 & 1) != 0 || *a3 != a3[1])
  {
    if (*a4)
    {
      v9 = "";
    }

    else
    {
      v9 = ", ";
    }

    if (*a4)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    v11 = sub_29A00911C(result, v9, v10);
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = *(a2 + 8);
    }

    v15 = sub_29A00911C(v11, v13, v14);
    sub_29A00911C(v15, " Items: [", 9);
    *a4 = 0;
    v18 = *a3;
    v19 = a3[1];
    *&v23 = *a3;
    *(&v23 + 1) = v19;
    while (v18 != v19)
    {
      v20 = sub_29A1FBCA8(&v23, v16, v17);
      v21 = MEMORY[0x29C2C1F30](v8, *v20);
      v24 = v23;
      sub_29A1FBD28(&v24);
      if (v24 == *(&v24 + 1))
      {
        v22 = "";
      }

      else
      {
        v22 = ", ";
      }

      sub_29A00911C(v21, v22, 2 * (v24 != *(&v24 + 1)));
      sub_29A1FBD28(&v23);
      v19 = *(&v23 + 1);
      v18 = v23;
    }

    return sub_29A00911C(v8, "]", 1);
  }

  return result;
}

uint64_t sub_29A36F6E8(uint64_t a1)
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

uint64_t *sub_29A36F768(uint64_t **a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v8 = *a2;
    while (1)
    {
      while (1)
      {
        v9 = v6;
        v10 = v6[4];
        if (v8 >= v10)
        {
          break;
        }

        v6 = *v9;
        v7 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = v9[1];
      if (!v6)
      {
        v7 = v9 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = a1 + 1;
LABEL_10:
    v11 = operator new(0x30uLL);
    v11[4] = **a4;
    v11[5] = 0;
    sub_29A00B204(a1, v9, v7, v11);
    return v11;
  }

  return v9;
}

uint64_t sub_29A36F828(const void **a1, uint64_t *a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = (a1[1] - *a1) >> 3;
    *&v9 = *a2;
    *(&v9 + 1) = v5;
    v6 = sub_29A36E900(v4, &v9, &v9);
    if ((v7 & 1) == 0)
    {
      return *a1 + 8 * v6[3];
    }
  }

  else
  {
    result = sub_29A36E7A0(a1, a2);
    if (a1[1] != result)
    {
      return result;
    }
  }

  sub_29A018094(a1, a2);
  sub_29A36F91C(a1);
  return a1[1] - 8;
}

uint64_t sub_29A36F8D4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    sub_29A0DDCB0();
  }

  return (*(*v1 + 48))(v1);
}

void sub_29A36F91C(uint64_t *a1)
{
  if ((a1[1] - *a1) >= 0x3F9)
  {
    v2 = a1 + 3;
    if (!a1[3])
    {
      v3 = operator new(0x28uLL);
      *v3 = 0u;
      v3[1] = 0u;
      *(v3 + 8) = 1065353216;
      sub_29A019AA0(v3, 0x80uLL);
      sub_29A160214(v2, v3);
      v4 = *a1;
      if (a1[1] != *a1)
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = a1[3];
          v8 = (v4 + v5);
          sub_29A36EB34(v7, (v4 + v5), &unk_29B4D6118, &v8)[3] = v6++;
          v4 = *a1;
          v5 += 8;
        }

        while (v6 < (a1[1] - *a1) >> 3);
      }
    }
  }
}

void sub_29A36F9EC(_Unwind_Exception *a1)
{
  v3 = sub_29A0EB570(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

char *sub_29A36FA04(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A00C968(result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      *v7++ = *(a2 + 16);
      a2 = *(a2 + 8);
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_29A36FA60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A36FA7C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    sub_29A0DDCB0();
  }

  return (*(*v1 + 48))(v1);
}

uint64_t sub_29A36FAC4(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v13 = a2;
  v7 = sub_29A10A6B8(a1, &v13);
  sub_29A36FC5C(v7 + 1, v13);
  v8 = *(a1 + 8);
  if (v8 == *(a1 + 16))
  {
    v8 = sub_29A36FC24();
  }

  v9 = v13;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v9 >> 60)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v9)
  {
    *(*(a1 + 16) - 10) = 1;
  }

  v10 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v10;
  *(a1 + 56) = (v10 * v9);
  return a1;
}

void sub_29A36FBFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A10A834(va);
  _Unwind_Resume(a1);
}

void *sub_29A36FC24()
{
  if ((atomic_load_explicit(&qword_2A14F6AF0, memory_order_acquire) & 1) == 0)
  {
    sub_29B29C098();
  }

  return &unk_2A14F6AE0;
}

void *sub_29A36FC5C(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A0D0518(a1, a2);
    v4 = a1[1];
    v5 = v4 + 16 * a2;
    do
    {
      *v4 = 0;
      *(v4 + 4) = -1;
      *(v4 + 6) = 0;
      v4 += 16;
    }

    while (v4 != v5);
    a1[1] = v5;
  }

  return a1;
}

uint64_t sub_29A36FCE4(uint64_t *a1, void *a2, void *a3)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * *a2);
  v6 = *a1;
  v7 = a1[4];
  v8 = v5 & *a1;
  result = v7 + 16 * v8;
  if (*(result + 4) < 0)
  {
    goto LABEL_7;
  }

  LOWORD(v10) = 0;
  while (*(result + 8) != *a2)
  {
    v10 = (v10 + 1);
    v8 = (v8 + 1) & v6;
    result = v7 + 16 * v8;
    if (v10 > *(result + 4))
    {
      while (sub_29A36FE44(a1, v10))
      {
        v11 = a1[4];
        v8 = v5 & *a1;
        if (*(v11 + 16 * v8 + 4) < 0)
        {
LABEL_7:
          v10 = 0;
        }

        else
        {
          LOWORD(v10) = 0;
          do
          {
            v10 = (v10 + 1);
            v8 = (v8 + 1) & *a1;
          }

          while (v10 <= *(v11 + 16 * v8 + 4));
        }
      }

      v12 = a1[4];
      v13 = v12 + 16 * v8;
      if (*(v13 + 4) == -1)
      {
        *(v13 + 8) = *a3;
        *v13 = v5;
        *(v13 + 4) = v10;
      }

      else
      {
        v14 = *a3;
        sub_29A36F4F8(a1, v8, v10, v5, &v14);
        v12 = a1[4];
      }

      ++a1[6];
      return v12 + 16 * v8;
    }
  }

  return result;
}

uint64_t sub_29A36FE44(uint64_t a1, int a2)
{
  if (a2 > 0x2000 || (*(a1 + 72) & 1) != 0 || (v3 = *(a1 + 48), v3 >= *(a1 + 56)))
  {
    v7 = sub_29A10A428(a1);
    sub_29A36FF18(a1, v7);
    *(a1 + 72) = 0;
    return 1;
  }

  if (*(a1 + 73) == 1)
  {
    *(a1 + 73) = 0;
    v4 = *(a1 + 64);
    if (v4 != 0.0)
    {
      v5 = *(a1 + 40);
      v6 = v5 ? v3 / v5 : 0.0;
      if (v6 < v4)
      {
        v9 = *(a1 + 68);
        v10 = vcvtps_u32_f32((v3 + 1) / v9);
        v11 = vcvtps_u32_f32(v3 / v9);
        if (v11 <= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11;
        }

        sub_29A36FF18(a1, v12);
        return 1;
      }
    }
  }

  return 0;
}

void sub_29A36FF18(uint64_t a1, unint64_t a2)
{
  sub_29A36FAC4(&v16, a2, *(a1 + 64), *(a1 + 68));
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 == v4)
  {
    goto LABEL_14;
  }

  v6 = v17[3];
  v5 = v17[4];
  v7 = v16;
  do
  {
    if (*(v3 + 2) == -1)
    {
      goto LABEL_13;
    }

    if (v5 > 0x100000000)
    {
      v8 = bswap64(0x9E3779B97F4A7C55 * *(v3 + 1));
    }

    else
    {
      v8 = *v3;
    }

    v9 = 0;
    for (i = v8; ; i = v11 + 1)
    {
      v11 = i & v7;
      v12 = (v6 + 16 * v11);
      v13 = *(v12 + 2);
      if (v13 >= v9)
      {
        goto LABEL_11;
      }

      v14 = *(v3 + 1);
      if (v13 == -1)
      {
        break;
      }

      *(v3 + 1) = *(v12 + 1);
      *(v12 + 1) = v14;
      *(v12 + 2) = v9;
      v15 = *v12;
      *v12 = v8;
      v9 = v13;
      LODWORD(v8) = v15;
LABEL_11:
      ++v9;
    }

    *(v12 + 1) = v14;
    *v12 = v8;
    *(v12 + 2) = v9;
LABEL_13:
    v3 += 4;
  }

  while (v3 != v4);
LABEL_14:
  v17[5] = *(a1 + 48);
  sub_29A10A4B4(&v16, a1);
  v18 = v17;
  sub_29A10A834(&v18);
}

void *sub_29A37003C(void *result, uint64_t a2, uint64_t *a3, _BYTE *a4, char a5)
{
  v8 = result;
  if ((a5 & 1) != 0 || *a3 != a3[1])
  {
    if (*a4)
    {
      v9 = "";
    }

    else
    {
      v9 = ", ";
    }

    if (*a4)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    v11 = sub_29A00911C(result, v9, v10);
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = *(a2 + 8);
    }

    v15 = sub_29A00911C(v11, v13, v14);
    sub_29A00911C(v15, " Items: [", 9);
    *a4 = 0;
    v18 = *a3;
    v19 = a3[1];
    *&v23 = *a3;
    *(&v23 + 1) = v19;
    while (v18 != v19)
    {
      v20 = sub_29A1FC5F0(&v23, v16, v17);
      v21 = MEMORY[0x29C2C1F40](v8, *v20);
      v24 = v23;
      sub_29A1FC670(&v24);
      if (v24 == *(&v24 + 1))
      {
        v22 = "";
      }

      else
      {
        v22 = ", ";
      }

      sub_29A00911C(v21, v22, 2 * (v24 != *(&v24 + 1)));
      sub_29A1FC670(&v23);
      v19 = *(&v23 + 1);
      v18 = v23;
    }

    return sub_29A00911C(v8, "]", 1);
  }

  return result;
}

uint64_t sub_29A370164(uint64_t a1)
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

uint64_t *sub_29A3701E4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    v8 = sub_29A3702EC(a1, 0, 0, a3);
    v9 = v8;
    v10 = a3 + 24;
    v11 = 1;
    if (a3 + 24 != a4)
    {
      v12 = v8;
      do
      {
        v8 = sub_29A3702EC(a1, v12, 0, v10);
        *(v12 + 8) = v8;
        ++v11;
        v10 += 24;
        v12 = v8;
      }

      while (v10 != a4);
    }

    v13 = *a2;
    *(v13 + 8) = v9;
    *v9 = v13;
    *a2 = v8;
    v8[1] = a2;
    *(a1 + 16) += v11;
    return v9;
  }

  return a2;
}

void sub_29A3702B4(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v3 = v2;
    v2 = *v2;
    sub_29A116FC4(v1, v3);
  }

  while (v2);
  __cxa_rethrow();
}

void *sub_29A3702EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = operator new(0x28uLL);
  v8 = v7;
  *v7 = a2;
  v7[1] = a3;
  if (*(a4 + 23) < 0)
  {
    sub_29A008D14(v7 + 16, *a4, *(a4 + 8));
  }

  else
  {
    *(v7 + 1) = *a4;
    v7[4] = *(a4 + 16);
  }

  return v8;
}

std::string *sub_29A37036C(char **a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * (&v9[-v10] >> 3)) >= a5)
    {
      v18 = v10 - a2;
      v19 = 0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3);
      if (v19 >= a5)
      {
        sub_29A095A18(a1, a2, a1[1], a2 + 24 * a5);
        std::string::operator=(v5, (v7 + 16));
        if (a5 != 1)
        {
          v22 = v5 + 1;
          v23 = a5 + 1;
          do
          {
            v7 = *(v7 + 8);
            std::string::operator=(v22++, (v7 + 16));
            --v23;
          }

          while (v23 > 2);
        }
      }

      else
      {
        if (v18 <= -24)
        {
          v21 = a3;
          do
          {
            v21 = *v21;
          }

          while (!__CFADD__(v19++, 1));
        }

        else if (v10 == a2)
        {
          v21 = a3;
        }

        else
        {
          v20 = v19 + 1;
          v21 = a3;
          do
          {
            v21 = v21[1];
            --v20;
          }

          while (v20 > 1);
        }

        a1[1] = sub_29A3706AC(a1, v21, a4, a1[1]);
        if (v18 >= 1)
        {
          sub_29A095A18(a1, v5, v10, &v5[a5]);
          if (v21 != v7)
          {
            v33 = v5;
            do
            {
              std::string::operator=(v33, (v7 + 16));
              v7 = *(v7 + 8);
              ++v33;
            }

            while (v7 != v21);
          }
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_29A00C9A4();
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

      v16 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
      v37 = a1;
      if (v15)
      {
        v17 = sub_29A012C48(a1, v15);
      }

      else
      {
        v17 = 0;
      }

      v34 = v17;
      v35 = &v17[24 * v16];
      *&v36 = v35;
      *(&v36 + 1) = &v17[24 * v15];
      sub_29A370618(&v34, v7, a5);
      v24 = v35;
      memcpy(v36, v5, a1[1] - v5);
      v25 = *a1;
      v26 = v35;
      *&v36 = v36 + a1[1] - v5;
      a1[1] = v5;
      v27 = v5 - v25;
      v28 = &v26[-(v5 - v25)];
      memcpy(v28, v25, v27);
      v29 = *a1;
      *a1 = v28;
      v30 = a1[2];
      *(a1 + 1) = v36;
      *&v36 = v29;
      *(&v36 + 1) = v30;
      v34 = v29;
      v35 = v29;
      sub_29A01FF14(&v34);
      return v24;
    }
  }

  return v5;
}

void *sub_29A370618(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v6 = v4 + 24 * a3;
    v7 = 24 * a3;
    do
    {
      if (*(a2 + 39) < 0)
      {
        result = sub_29A008D14(v4, *(a2 + 16), *(a2 + 24));
      }

      else
      {
        v8 = *(a2 + 16);
        *(v4 + 16) = *(a2 + 32);
        *v4 = v8;
      }

      v4 += 24;
      a2 = *(a2 + 8);
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

char *sub_29A3706AC(uint64_t a1, uint64_t a2, uint64_t a3, char *__dst)
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
    do
    {
      if (*(v6 + 39) < 0)
      {
        sub_29A008D14(v4, *(v6 + 16), *(v6 + 24));
        v4 = v12;
      }

      else
      {
        v7 = *(v6 + 16);
        *(v4 + 2) = *(v6 + 32);
        *v4 = v7;
      }

      v6 = *(v6 + 8);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29A095CB0(v9);
  return v4;
}

uint64_t sub_29A37076C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
    if (*(a2 + 23) < 0)
    {
      sub_29A008D14(v10, *a2, *(a2 + 8));
    }

    else
    {
      *v10 = *a2;
      v11 = *(a2 + 16);
    }

    *__p = *v10;
    v6 = v11;
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    v12 = v4;
    v14 = v6;
    v15 = v4;
    v7 = sub_29A129DB0(v3, __p, __p);
    v9 = v8;
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
      if (v9)
      {
LABEL_11:
        sub_29A070BA0(a1);
      }
    }

    else if (v9)
    {
      goto LABEL_11;
    }

    return *a1 + 24 * v7[5];
  }

  else
  {
    result = sub_29A370920(a1, a2);
    if (*(a1 + 8) == result)
    {
      goto LABEL_11;
    }
  }

  return result;
}

void sub_29A3708B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_29B28E2DC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3708DC(uint64_t a1)
{
  sub_29A12581C((a1 + 24), 0);
  v3 = a1;
  sub_29A012C90(&v3);
  return a1;
}

uint64_t sub_29A370920(const void ***a1, unsigned __int8 *a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = sub_29A0FC520(v4, a2);
    if (v5)
    {
      return &(*a1)[3 * v5[5]];
    }

    else
    {
      return a1[1];
    }
  }

  else
  {
    v7 = *a1;
    v6 = a1[1];
    while (v7 != v6)
    {
      if (sub_29A0EC4B8(a1, v7, a2))
      {
        return v7;
      }

      v7 += 3;
    }
  }

  return v6;
}

void sub_29A3709AC(uint64_t *a1)
{
  v1 = a1 + 3;
  if (!a1[3])
  {
    v3 = operator new(0x28uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 8) = 1065353216;
    sub_29A019AA0(v3, 0x80uLL);
    sub_29A12581C(v1, v3);
    v4 = *a1;
    if (a1[1] != *a1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = a1[3];
        v8 = (v4 + v5);
        sub_29A0FBDAC(v7, (v4 + v5), &unk_29B4D6118, &v8)[5] = v6++;
        v4 = *a1;
        v5 += 24;
      }

      while (v6 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
    }
  }
}

void sub_29A370A84(_Unwind_Exception *a1)
{
  v3 = sub_29A0EB4E8(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A370A9C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v6 = sub_29A1179F4(a1, 0, 0, v5);
      v7 = *a1;
      *v6 = *a1;
      v6[1] = a1;
      *(v7 + 8) = v6;
      *a1 = v6;
      ++a1[2];
      v5 += 24;
    }

    while (v5 != a3);
  }

  return a1;
}

char *sub_29A370B30(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A012BFC(result, a4);
    result = sub_29A3706AC(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A370B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A012C90(&a9);
  _Unwind_Resume(a1);
}

void sub_29A370BB8(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 3;
  v74 = a2 - 6;
  v9 = a2 - 9;
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * (a2 - v10);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      if (sub_29A00AFCC(a3, a2 - 3, v10))
      {
LABEL_77:
        v122 = v10[2];
        v98 = *v10;
        v70 = *v8;
        v10[2] = v8[2];
        *v10 = v70;
        *v8 = v98;
        v59 = v122;
        goto LABEL_78;
      }

      return;
    }

LABEL_10:
    if (v13 <= 575)
    {
      if (a5)
      {

        sub_29A1149A4(v10, a2, a3);
      }

      else
      {

        sub_29A114AC8(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_29A3716C4(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = &v10[3 * (v14 >> 1)];
    if (v13 >= 0xC01)
    {
      v17 = sub_29A00AFCC(a3, &v10[3 * v15], v10);
      v18 = sub_29A00AFCC(a3, a2 - 3, (a1 + 24 * v15));
      if (v17)
      {
        if (v18)
        {
          v100 = *(a1 + 16);
          v76 = *a1;
          v19 = *v8;
          *(a1 + 16) = *(a2 - 1);
          *a1 = v19;
          goto LABEL_27;
        }

        v106 = *(a1 + 16);
        v82 = *a1;
        v27 = *v16;
        *(a1 + 16) = v16[2];
        *a1 = v27;
        v16[2] = v106;
        *v16 = v82;
        if (sub_29A00AFCC(a3, a2 - 3, (a1 + 24 * v15)))
        {
          v100 = v16[2];
          v76 = *v16;
          v28 = *v8;
          v16[2] = *(a2 - 1);
          *v16 = v28;
LABEL_27:
          *v8 = v76;
          *(a2 - 1) = v100;
        }
      }

      else if (v18)
      {
        v102 = v16[2];
        v78 = *v16;
        v23 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v23;
        *v8 = v78;
        *(a2 - 1) = v102;
        if (sub_29A00AFCC(a3, (a1 + 24 * v15), a1))
        {
          v103 = *(a1 + 16);
          v79 = *a1;
          v24 = *v16;
          *(a1 + 16) = v16[2];
          *a1 = v24;
          v16[2] = v103;
          *v16 = v79;
        }
      }

      v29 = a1 + 24 * v15 - 24;
      v30 = sub_29A00AFCC(a3, v29, (a1 + 24));
      v31 = sub_29A00AFCC(a3, v74, v29);
      if (v30)
      {
        if (v31)
        {
          v32 = *(a1 + 40);
          v33 = *(a1 + 24);
          v34 = *(a2 - 4);
          *(a1 + 24) = *v74;
          *(a1 + 40) = v34;
          *v74 = v33;
          *(a2 - 4) = v32;
        }

        else
        {
          v86 = *(a1 + 24);
          v110 = *(a1 + 40);
          v39 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v29;
          *(a1 + 40) = v39;
          *(a1 + 24 * v15 - 8) = v110;
          *v29 = v86;
          if (sub_29A00AFCC(a3, v74, v29))
          {
            v111 = *(a1 + 24 * v15 - 8);
            v87 = *v29;
            v40 = *v74;
            *(a1 + 24 * v15 - 8) = *(a2 - 4);
            *v29 = v40;
            *v74 = v87;
            *(a2 - 4) = v111;
          }
        }
      }

      else if (v31)
      {
        v107 = *(a1 + 24 * v15 - 8);
        v83 = *v29;
        v35 = *v74;
        *(a1 + 24 * v15 - 8) = *(a2 - 4);
        *v29 = v35;
        *v74 = v83;
        *(a2 - 4) = v107;
        if (sub_29A00AFCC(a3, v29, (a1 + 24)))
        {
          v84 = *(a1 + 24);
          v108 = *(a1 + 40);
          v36 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v29;
          *(a1 + 40) = v36;
          *(a1 + 24 * v15 - 8) = v108;
          *v29 = v84;
        }
      }

      v41 = a1 + 24 * v15;
      v42 = sub_29A00AFCC(a3, (v41 + 24), (a1 + 48));
      v43 = sub_29A00AFCC(a3, a2 - 9, (v41 + 24));
      if (v42)
      {
        if (v43)
        {
          v44 = *(a1 + 64);
          v45 = *(a1 + 48);
          v46 = *(a2 - 7);
          *(a1 + 48) = *v9;
          *(a1 + 64) = v46;
          *v9 = v45;
          goto LABEL_47;
        }

        v90 = *(a1 + 48);
        v114 = *(a1 + 64);
        v49 = *(v41 + 40);
        *(a1 + 48) = *(v41 + 24);
        *(a1 + 64) = v49;
        *(v41 + 40) = v114;
        *(v41 + 24) = v90;
        if (sub_29A00AFCC(a3, a2 - 9, (v41 + 24)))
        {
          v115 = *(v41 + 40);
          v91 = *(v41 + 24);
          v50 = *v9;
          *(v41 + 40) = *(a2 - 7);
          *(v41 + 24) = v50;
          *v9 = v91;
          v44 = v115;
LABEL_47:
          *(a2 - 7) = v44;
        }
      }

      else if (v43)
      {
        v112 = *(v41 + 40);
        v88 = *(v41 + 24);
        v47 = *v9;
        *(v41 + 40) = *(a2 - 7);
        *(v41 + 24) = v47;
        *v9 = v88;
        *(a2 - 7) = v112;
        if (sub_29A00AFCC(a3, (v41 + 24), (a1 + 48)))
        {
          v89 = *(a1 + 48);
          v113 = *(a1 + 64);
          v48 = *(v41 + 40);
          *(a1 + 48) = *(v41 + 24);
          *(a1 + 64) = v48;
          *(v41 + 40) = v113;
          *(v41 + 24) = v89;
        }
      }

      v51 = sub_29A00AFCC(a3, v16, v29);
      v52 = sub_29A00AFCC(a3, (v41 + 24), v16);
      if (v51)
      {
        if (v52)
        {
          v116 = *(v29 + 16);
          v92 = *v29;
          *v29 = *(v41 + 24);
          *(v29 + 16) = *(v41 + 40);
          goto LABEL_56;
        }

        v119 = *(v29 + 16);
        v95 = *v29;
        *v29 = *v16;
        *(v29 + 16) = v16[2];
        v16[2] = v119;
        *v16 = v95;
        if (sub_29A00AFCC(a3, (v41 + 24), v16))
        {
          v116 = v16[2];
          v92 = *v16;
          *v16 = *(v41 + 24);
          v16[2] = *(v41 + 40);
LABEL_56:
          *(v41 + 40) = v116;
          *(v41 + 24) = v92;
        }
      }

      else if (v52)
      {
        v117 = v16[2];
        v93 = *v16;
        *v16 = *(v41 + 24);
        v16[2] = *(v41 + 40);
        *(v41 + 40) = v117;
        *(v41 + 24) = v93;
        if (sub_29A00AFCC(a3, v16, v29))
        {
          v118 = *(v29 + 16);
          v94 = *v29;
          *v29 = *v16;
          *(v29 + 16) = v16[2];
          v16[2] = v118;
          *v16 = v94;
        }
      }

      v120 = *(a1 + 16);
      v96 = *a1;
      v53 = *v16;
      *(a1 + 16) = v16[2];
      *a1 = v53;
      v16[2] = v120;
      *v16 = v96;
      goto LABEL_58;
    }

    v20 = sub_29A00AFCC(a3, v10, &v10[3 * v15]);
    v21 = sub_29A00AFCC(a3, a2 - 3, a1);
    if (v20)
    {
      if (v21)
      {
        v101 = v16[2];
        v77 = *v16;
        v22 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v22;
LABEL_36:
        *v8 = v77;
        *(a2 - 1) = v101;
        goto LABEL_58;
      }

      v109 = v16[2];
      v85 = *v16;
      v37 = *a1;
      v16[2] = *(a1 + 16);
      *v16 = v37;
      *(a1 + 16) = v109;
      *a1 = v85;
      if (sub_29A00AFCC(a3, a2 - 3, a1))
      {
        v101 = *(a1 + 16);
        v77 = *a1;
        v38 = *v8;
        *(a1 + 16) = *(a2 - 1);
        *a1 = v38;
        goto LABEL_36;
      }
    }

    else if (v21)
    {
      v104 = *(a1 + 16);
      v80 = *a1;
      v25 = *v8;
      *(a1 + 16) = *(a2 - 1);
      *a1 = v25;
      *v8 = v80;
      *(a2 - 1) = v104;
      if (sub_29A00AFCC(a3, a1, (a1 + 24 * v15)))
      {
        v105 = v16[2];
        v81 = *v16;
        v26 = *a1;
        v16[2] = *(a1 + 16);
        *v16 = v26;
        *(a1 + 16) = v105;
        *a1 = v81;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && !sub_29A00AFCC(a3, (a1 - 24), a1))
    {
      v10 = sub_29A114BC8(a1, a2, a3);
      goto LABEL_65;
    }

    v54 = sub_29A114D5C(a1, a2, a3);
    if ((v55 & 1) == 0)
    {
      goto LABEL_63;
    }

    v56 = sub_29A114EEC(a1, v54, a3);
    v10 = (v54 + 24);
    if (sub_29A114EEC(v54 + 24, a2, a3))
    {
      a4 = -v12;
      a2 = v54;
      if (v56)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v56)
    {
LABEL_63:
      sub_29A370BB8(a1, v54, a3, -v12, a5 & 1);
      v10 = (v54 + 24);
LABEL_65:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      sub_29A1147C4(v10, v10 + 3, v10 + 6, (a2 - 3), a3);
      return;
    }

    if (v14 == 5)
    {
      sub_29A1147C4(v10, v10 + 3, v10 + 6, (v10 + 9), a3);
      if (!sub_29A00AFCC(a3, a2 - 3, v10 + 9))
      {
        return;
      }

      v62 = v10[11];
      v63 = *(v10 + 9);
      v64 = *(a2 - 1);
      *(v10 + 9) = *v8;
      v10[11] = v64;
      *v8 = v63;
      *(a2 - 1) = v62;
      if (!sub_29A00AFCC(a3, v10 + 9, v10 + 6))
      {
        return;
      }

      v65 = v10[8];
      v66 = *(v10 + 3);
      *(v10 + 3) = *(v10 + 9);
      v10[8] = v10[11];
      *(v10 + 9) = v66;
      v10[11] = v65;
      if (!sub_29A00AFCC(a3, v10 + 6, v10 + 3))
      {
        return;
      }

      v67 = v10[5];
      v68 = *(v10 + 3);
      *(v10 + 3) = *(v10 + 3);
      v10[5] = v10[8];
      *(v10 + 3) = v68;
      v10[8] = v67;
      goto LABEL_92;
    }

    goto LABEL_10;
  }

  v57 = sub_29A00AFCC(a3, v10 + 3, v10);
  v58 = sub_29A00AFCC(a3, v8, v10 + 3);
  if (!v57)
  {
    if (!v58)
    {
      return;
    }

    v71 = v10[5];
    v72 = *(v10 + 3);
    v73 = v8[2];
    *(v10 + 3) = *v8;
    v10[5] = v73;
    *v8 = v72;
    v8[2] = v71;
LABEL_92:
    if (sub_29A00AFCC(a3, v10 + 3, v10))
    {
      v123 = v10[2];
      v99 = *v10;
      *v10 = *(v10 + 3);
      v10[2] = v10[5];
      *(v10 + 3) = v99;
      v10[5] = v123;
    }

    return;
  }

  if (v58)
  {
    goto LABEL_77;
  }

  v121 = v10[2];
  v97 = *v10;
  *v10 = *(v10 + 3);
  v10[2] = v10[5];
  *(v10 + 3) = v97;
  v10[5] = v121;
  if (sub_29A00AFCC(a3, v8, v10 + 3))
  {
    v59 = v10[5];
    v60 = *(v10 + 3);
    v61 = v8[2];
    *(v10 + 3) = *v8;
    v10[5] = v61;
    *v8 = v60;
LABEL_78:
    v8[2] = v59;
  }
}

__int128 *sub_29A3716C4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 24 * v10);
      do
      {
        sub_29A1155A0(a1, a4, v9, v12);
        v12 = (v12 - 24);
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (sub_29A00AFCC(a4, v13, a1))
        {
          v14 = *(v13 + 2);
          v15 = *v13;
          v16 = *(a1 + 16);
          *v13 = *a1;
          *(v13 + 2) = v16;
          *a1 = v15;
          *(a1 + 16) = v14;
          sub_29A1155A0(a1, a4, v9, a1);
        }

        v13 = (v13 + 24);
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v18 = a2 - 24;
      do
      {
        v19 = *a1;
        *v27 = *(a1 + 8);
        *&v27[7] = *(a1 + 15);
        v20 = *(a1 + 23);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v21 = sub_29A11573C(a1, a4, v17);
        v22 = v21;
        v23 = *(v21 + 23);
        if (v18 == v21)
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          *v22 = v19;
          *(v22 + 1) = *v27;
          *(v22 + 15) = *&v27[7];
          *(v22 + 23) = v20;
        }

        else
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          v24 = *v18;
          *(v22 + 2) = *(v18 + 16);
          *v22 = v24;
          *v18 = v19;
          *(v18 + 8) = *v27;
          *(v18 + 15) = *&v27[7];
          *(v18 + 23) = v20;
          sub_29A115814(a1, v22 + 24, a4, 0xAAAAAAAAAAAAAAABLL * ((v22 - a1 + 24) >> 3));
        }

        v18 -= 24;
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

void sub_29A3718E4(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3718FC(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v13 = a2;
  v7 = sub_29A10A6B8(a1, &v13);
  sub_29A371A94(v7 + 1, v13);
  v8 = *(a1 + 8);
  if (v8 == *(a1 + 16))
  {
    v8 = sub_29A371A5C();
  }

  v9 = v13;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v9 >> 59)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v9)
  {
    *(*(a1 + 16) - 26) = 1;
  }

  v10 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v10;
  *(a1 + 56) = (v10 * v9);
  return a1;
}

void sub_29A371A34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A36AF60(va);
  _Unwind_Resume(a1);
}

void *sub_29A371A5C()
{
  if ((atomic_load_explicit(&qword_2A14F6B18, memory_order_acquire) & 1) == 0)
  {
    sub_29B29C104();
  }

  return &unk_2A14F6AF8;
}

void *sub_29A371A94(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A15A71C(a1, a2);
    v4 = a1[1];
    v5 = v4 + 32 * a2;
    do
    {
      *v4 = 0;
      *(v4 + 4) = -1;
      *(v4 + 6) = 0;
      v4 += 32;
    }

    while (v4 != v5);
    a1[1] = v5;
  }

  return a1;
}

uint64_t sub_29A371B1C(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = a2;
  v16 = 0;
  v17 = 0;
  v6 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v7 = a2[23];
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v16, a2, v7);
  v8 = bswap64(0x9E3779B97F4A7C55 * v16);
  v9 = *a1 & v8;
  v10 = a1[4] + 32 * v9;
  if (*(v10 + 4) < 0)
  {
    goto LABEL_10;
  }

  LOWORD(v11) = 0;
  while (!sub_29A0EC4B8(a1, (v10 + 8), v4))
  {
    v9 = *a1 & (v9 + 1);
    v11 = (v11 + 1);
    v10 = a1[4] + 32 * v9;
    if (v11 > *(v10 + 4))
    {
      while (sub_29A371CD0(a1, v11))
      {
        v12 = a1[4];
        v9 = v8 & *a1;
        if (*(v12 + 32 * v9 + 4) < 0)
        {
LABEL_10:
          v11 = 0;
        }

        else
        {
          LOWORD(v11) = 0;
          do
          {
            v11 = (v11 + 1);
            v9 = (v9 + 1) & *a1;
          }

          while (v11 <= *(v12 + 32 * v9 + 4));
        }
      }

      v13 = a1[4] + 32 * v9;
      if (*(v13 + 4) == -1)
      {
        if (*(a3 + 23) < 0)
        {
          sub_29A008D14((v13 + 8), *a3, *(a3 + 8));
        }

        else
        {
          v14 = *a3;
          *(v13 + 24) = *(a3 + 16);
          *(v13 + 8) = v14;
        }

        *v13 = v8;
        *(v13 + 4) = v11;
      }

      else
      {
        sub_29A371DA4(a1, v9, v11, v8, a3);
      }

      ++a1[6];
      return a1[4] + 32 * v9;
    }
  }

  return a1[4] + 32 * v9;
}

uint64_t sub_29A371CD0(uint64_t a1, int a2)
{
  if (a2 > 0x2000 || (*(a1 + 72) & 1) != 0 || (v3 = *(a1 + 48), v3 >= *(a1 + 56)))
  {
    v7 = sub_29A10A428(a1);
    sub_29A371E30(a1, v7);
    *(a1 + 72) = 0;
    return 1;
  }

  if (*(a1 + 73) == 1)
  {
    *(a1 + 73) = 0;
    v4 = *(a1 + 64);
    if (v4 != 0.0)
    {
      v5 = *(a1 + 40);
      v6 = v5 ? v3 / v5 : 0.0;
      if (v6 < v4)
      {
        v9 = *(a1 + 68);
        v10 = vcvtps_u32_f32((v3 + 1) / v9);
        v11 = vcvtps_u32_f32(v3 / v9);
        if (v11 <= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11;
        }

        sub_29A371E30(a1, v12);
        return 1;
      }
    }
  }

  return 0;
}

void sub_29A371DA4(uint64_t *a1, uint64_t a2, __int16 a3, int a4, uint64_t a5)
{
  if (*(a5 + 23) < 0)
  {
    sub_29A008D14(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v10 = *(a5 + 16);
  }

  sub_29A371FEC(a1, a2, a3, a4, __p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A371E30(uint64_t a1, unint64_t a2)
{
  sub_29A3718FC(&v20, a2, *(a1 + 64), *(a1 + 68));
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 == v4)
  {
    goto LABEL_20;
  }

  v5 = v21[4];
  do
  {
    if (*(v3 + 2) == -1)
    {
      goto LABEL_19;
    }

    if (v5 > 0x100000000)
    {
      v22 = 0;
      v23 = 0;
      v7 = *(v3 + 31);
      if (v7 >= 0)
      {
        v8 = (v3 + 2);
      }

      else
      {
        v8 = *(v3 + 1);
      }

      if (v7 >= 0)
      {
        v9 = *(v3 + 31);
      }

      else
      {
        v9 = *(v3 + 2);
      }

      pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v22, v8, v9);
      v6 = bswap64(0x9E3779B97F4A7C55 * v22);
    }

    else
    {
      v6 = *v3;
    }

    v10 = 0;
    v11 = v20;
    for (i = v20 & v6; ; i = v11 & (i + 1))
    {
      v13 = v21[3] + 32 * i;
      v14 = *(v13 + 4);
      if (v14 >= v10)
      {
        goto LABEL_17;
      }

      if (v14 == -1)
      {
        break;
      }

      v15 = *(v3 + 3);
      v16 = *(v3 + 2);
      v17 = *(v13 + 24);
      *(v3 + 2) = *(v13 + 8);
      *(v3 + 3) = v17;
      *(v13 + 8) = v16;
      *(v13 + 24) = v15;
      LOWORD(v17) = *(v13 + 4);
      *(v13 + 4) = v10;
      v18 = *v13;
      *v13 = v6;
      v11 = v20;
      v10 = v17;
      LODWORD(v6) = v18;
LABEL_17:
      ++v10;
    }

    v19 = *(v3 + 2);
    *(v13 + 24) = *(v3 + 3);
    *(v13 + 8) = v19;
    *(v3 + 2) = 0;
    *(v3 + 3) = 0;
    *(v3 + 1) = 0;
    *v13 = v6;
    *(v13 + 4) = v10;
LABEL_19:
    v3 += 8;
  }

  while (v3 != v4);
LABEL_20:
  v21[5] = *(a1 + 48);
  sub_29A10A4B4(&v20, a1);
  v22 = v21;
  sub_29A36AF60(&v22);
}

void sub_29A371FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 - 72) = &a10;
  sub_29A36AF60((v10 - 72));
  _Unwind_Resume(a1);
}

__n128 sub_29A371FEC(uint64_t *a1, uint64_t a2, __int16 a3, int a4, __n128 *a5)
{
  v5 = a1[4] + 32 * a2;
  v6 = a5[1].n128_u64[0];
  v7 = *a5;
  v8 = *(v5 + 24);
  *a5 = *(v5 + 8);
  a5[1].n128_u64[0] = v8;
  *(v5 + 8) = v7;
  *(v5 + 24) = v6;
  v9 = *(v5 + 4);
  *(v5 + 4) = a3;
  v10 = *v5;
  *v5 = a4;
  v11 = *a1;
  v12 = *a1 & (a2 + 1);
  v13 = v9 + 1;
  v14 = a1[4];
  v15 = (v14 + 32 * v12);
  v16 = (v15 + 1);
  for (i = *(v15 + 2); i != 0xFFFF; i = *(v15 + 2))
  {
    if (v13 > i)
    {
      if (v13 > 0x2000)
      {
        *(a1 + 72) = 1;
      }

      v18 = a5[1].n128_u64[0];
      v19 = *a5;
      v20 = *(v15 + 2);
      a5[1].n128_u64[0] = *(v15 + 3);
      *a5 = v20;
      *(v15 + 3) = v18;
      *(v15 + 2) = v19;
      v21 = *v16;
      *v16 = v13;
      v22 = *v15;
      *v15 = v10;
      v11 = *a1;
      v14 = a1[4];
      v13 = v21;
      v10 = v22;
    }

    v12 = v11 & (v12 + 1);
    ++v13;
    v15 = (v14 + 32 * v12);
    v16 = (v15 + 1);
  }

  result = *a5;
  *(v15 + 3) = a5[1].n128_u64[0];
  *(v15 + 2) = result;
  a5->n128_u64[1] = 0;
  a5[1].n128_u64[0] = 0;
  a5->n128_u64[0] = 0;
  *v15 = v10;
  *(v15 + 2) = v13;
  return result;
}

void *sub_29A372100(void *result, uint64_t a2, uint64_t *a3, _BYTE *a4, char a5)
{
  v8 = result;
  if ((a5 & 1) != 0 || *a3 != a3[1])
  {
    if (*a4)
    {
      v9 = "";
    }

    else
    {
      v9 = ", ";
    }

    if (*a4)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    v11 = sub_29A00911C(result, v9, v10);
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = *(a2 + 8);
    }

    v15 = sub_29A00911C(v11, v13, v14);
    sub_29A00911C(v15, " Items: [", 9);
    *a4 = 0;
    v18 = *a3;
    v19 = a3[1];
    *&v26 = *a3;
    *(&v26 + 1) = v19;
    while (v18 != v19)
    {
      v20 = sub_29A17EFC8(&v26, v16, v17);
      v21 = *(v20 + 23);
      if (v21 >= 0)
      {
        v22 = v20;
      }

      else
      {
        v22 = *v20;
      }

      if (v21 >= 0)
      {
        v23 = *(v20 + 23);
      }

      else
      {
        v23 = *(v20 + 8);
      }

      v24 = sub_29A00911C(v8, v22, v23);
      v27 = v26;
      sub_29A17F188(&v27);
      if (v27 == *(&v27 + 1))
      {
        v25 = "";
      }

      else
      {
        v25 = ", ";
      }

      sub_29A00911C(v24, v25, 2 * (v27 != *(&v27 + 1)));
      sub_29A17F188(&v26);
      v19 = *(&v26 + 1);
      v18 = v26;
    }

    return sub_29A00911C(v8, "]", 1);
  }

  return result;
}

uint64_t sub_29A37223C(uint64_t a1)
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

uint64_t *sub_29A3722BC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (a3 != a4)
  {
    v8 = sub_29A3723B4(a1, 0, 0, a3);
    v9 = v8;
    v10 = a3 + 1;
    v11 = 1;
    if (v10 != a4)
    {
      v12 = v8;
      do
      {
        v8 = sub_29A3723B4(a1, v12, 0, v10);
        *(v12 + 8) = v8;
        ++v11;
        ++v10;
        v12 = v8;
      }

      while (v10 != a4);
    }

    v13 = *a2;
    *(v13 + 8) = v9;
    *v9 = v13;
    *a2 = v8;
    v8[1] = a2;
    *(a1 + 16) += v11;
    return v9;
  }

  return a2;
}

void sub_29A37238C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29B290244(v1);
  __cxa_rethrow();
}

void *sub_29A3723B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = operator new(0x18uLL);
  *result = a2;
  result[1] = a3;
  v8 = *a4;
  result[2] = *a4;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      result[2] = v9;
    }
  }

  return result;
}

uint64_t *sub_29A372414(uint64_t a1, void *a2, uint64_t a3, uint64_t **a4)
{
  v6 = (a1 + 8);
  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = *a2 & 0xFFFFFFFFFFFFFFF8;
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = v5[4] & 0xFFFFFFFFFFFFFFF8;
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
    sub_29A3724D8(a1, a4, &v11);
    sub_29A00B204(a1, v8, v6, v11);
    return v11;
  }

  return v8;
}

void *sub_29A3724D8@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x30uLL);
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v7 = **a2;
  result[4] = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[4] &= 0xFFFFFFFFFFFFFFF8;
  }

  result[5] = 0;
  *(a3 + 16) = 1;
  return result;
}

void *sub_29A372554(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 3)
    {
      v18 = v10 - a2;
      if (a5 <= (v10 - a2) >> 3)
      {
        sub_29A31BA04(a1, a2, a1[1], (a2 + 8 * a5));
        sub_29A166F2C(v5, v7 + 2);
        if (a5 != 1)
        {
          v22 = v5 + 1;
          v23 = a5 + 1;
          do
          {
            v7 = v7[1];
            sub_29A166F2C(v22++, v7 + 2);
            --v23;
          }

          while (v23 > 2);
        }
      }

      else
      {
        v19 = v18 >> 3;
        if (v18 >> 3 < 0)
        {
          v29 = v18 >> 3;
          v21 = a3;
          do
          {
            v21 = *v21;
          }

          while (!__CFADD__(v29++, 1));
        }

        else
        {
          if (v10 == a2)
          {
            sub_29A3727B8(a1, a3, a4);
            return v5;
          }

          v20 = v19 + 1;
          v21 = a3;
          do
          {
            v21 = v21[1];
            --v20;
          }

          while (v20 > 1);
        }

        sub_29A3727B8(a1, v21, a4);
        if (v19 >= 1)
        {
          sub_29A31BA04(a1, v5, v10, &v5[a5]);
          if (v21 != v7)
          {
            v31 = v5;
            do
            {
              sub_29A166F2C(v31, v7 + 2);
              v7 = v7[1];
              ++v31;
            }

            while (v7 != v21);
          }
        }
      }
    }

    else
    {
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
      v32[4] = a1;
      if (v15)
      {
        v17 = sub_29A00C9BC(a1, v15);
      }

      else
      {
        v17 = 0;
      }

      v24 = &v17[8 * v16];
      v32[0] = v17;
      v32[1] = v24;
      v32[3] = &v17[8 * v15];
      v25 = 8 * a5;
      v26 = &v24[8 * a5];
      do
      {
        v27 = v7[2];
        *v24 = v27;
        if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *v24 &= 0xFFFFFFFFFFFFFFF8;
        }

        v24 += 8;
        v7 = v7[1];
        v25 -= 8;
      }

      while (v25);
      v32[2] = v26;
      v5 = sub_29A31BC0C(a1, v32, v5);
      sub_29A1541C0(v32);
    }
  }

  return v5;
}

void sub_29A3727A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1541C0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3727B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = *(result + 8); a2 != a3; ++i)
  {
    v4 = *(a2 + 16);
    *i = v4;
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *i &= 0xFFFFFFFFFFFFFFF8;
    }

    a2 = *(a2 + 8);
  }

  *(result + 8) = i;
  return result;
}

char *sub_29A372808(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 3)
    {
      v18 = v10 - a2;
      if (a5 <= (v10 - a2) >> 3)
      {
        sub_29A31BA04(a1, a2, a1[1], (a2 + 8 * a5));
        v22 = &v7[a5];
        v23 = v5;
        do
        {
          sub_29A166F2C(v23, v7++);
          v23 += 8;
        }

        while (v7 != v22);
      }

      else
      {
        v19 = v18 >> 3;
        v20 = (a3 + v18);
        sub_29A372A00(a1, (a3 + v18), a4);
        if (v19 >= 1)
        {
          sub_29A31BA04(a1, v5, v10, &v5[8 * a5]);
          if (v10 != v5)
          {
            v21 = v5;
            do
            {
              sub_29A166F2C(v21, v7++);
              v21 += 8;
            }

            while (v7 != v20);
          }
        }
      }
    }

    else
    {
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
      v29[4] = a1;
      if (v15)
      {
        v17 = sub_29A00C9BC(a1, v15);
      }

      else
      {
        v17 = 0;
      }

      v24 = &v17[8 * v16];
      v29[0] = v17;
      v29[1] = v24;
      v29[3] = &v17[8 * v15];
      v25 = 8 * a5;
      v26 = &v24[8 * a5];
      do
      {
        v27 = *v7;
        *v24 = *v7;
        if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *v24 &= 0xFFFFFFFFFFFFFFF8;
        }

        v24 += 8;
        ++v7;
        v25 -= 8;
      }

      while (v25);
      v29[2] = v26;
      v5 = sub_29A31BC0C(a1, v29, v5);
      sub_29A1541C0(v29);
    }
  }

  return v5;
}

void sub_29A3729EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1541C0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A372A00(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  for (i = *(result + 8); a2 != a3; ++i)
  {
    v4 = *a2;
    *i = *a2;
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *i &= 0xFFFFFFFFFFFFFFF8;
    }

    ++a2;
  }

  *(result + 8) = i;
  return result;
}

uint64_t sub_29A372A50(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = (a1[1] - *a1) >> 3;
    v6 = *a2;
    if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 &= 0xFFFFFFFFFFFFFFF8;
    }

    v10[0] = v6;
    v10[1] = v5;
    v7 = sub_29A162678(v4, v10, v10);
    if ((v10[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v10[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v8 & 1) == 0)
    {
      return *a1 + 8 * v7[3];
    }
  }

  else
  {
    result = sub_29A372B90(a1, a2);
    if (a1[1] != result)
    {
      return result;
    }
  }

  sub_29A1D8028(a1, a2);
  sub_29A372C0C(a1);
  return a1[1] - 8;
}

uint64_t sub_29A372B4C(uint64_t a1)
{
  sub_29A1601D8((a1 + 24), 0);
  v3 = a1;
  sub_29A124AB0(&v3);
  return a1;
}

uint64_t sub_29A372B90(void *a1, void *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = sub_29A160470(v3, a2);
    if (v4)
    {
      return *a1 + 8 * v4[3];
    }

    else
    {
      return a1[1];
    }
  }

  else
  {
    v6 = *a1;
    result = a1[1];
    if (*a1 != result)
    {
      while ((*a2 ^ *v6) >= 8)
      {
        if (++v6 == result)
        {
          return result;
        }
      }

      return v6;
    }
  }

  return result;
}

void sub_29A372C0C(uint64_t *a1)
{
  if ((a1[1] - *a1) >= 0x3F9)
  {
    v2 = a1 + 3;
    if (!a1[3])
    {
      v3 = operator new(0x28uLL);
      *v3 = 0u;
      v3[1] = 0u;
      *(v3 + 8) = 1065353216;
      sub_29A019AA0(v3, 0x80uLL);
      sub_29A1601D8(v2, v3);
      v4 = *a1;
      if (a1[1] != *a1)
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = a1[3];
          v8 = (v4 + v5);
          sub_29A160544(v7, (v4 + v5), &unk_29B4D6118, &v8)[3] = v6++;
          v4 = *a1;
          v5 += 8;
        }

        while (v6 < (a1[1] - *a1) >> 3);
      }
    }
  }
}

void sub_29A372CDC(_Unwind_Exception *a1)
{
  v3 = sub_29A155EF4(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A372CF4(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v6 = sub_29A3723B4(a1, 0, 0, v5);
      v7 = *a1;
      *v6 = *a1;
      v6[1] = a1;
      *(v7 + 8) = v6;
      *a1 = v6;
      ++a1[2];
      ++v5;
    }

    while (v5 != a3);
  }

  return a1;
}

void *sub_29A372D88(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A00C968(result, a4);
    return sub_29A3727B8(v6, a2, a3);
  }

  return result;
}

void *sub_29A372E00(uint64_t a1, uint64_t *__p)
{
  v2 = *__p;
  v3 = __p[1];
  *(v2 + 8) = v3;
  *v3 = v2;
  --*(a1 + 16);
  v4 = __p[2];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(__p);
  return v3;
}

uint64_t *sub_29A372E58(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_29A03AFE8(a1, a2);
  v4 = a2[4];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(a2);
  return v3;
}

uint64_t *sub_29A372EA4(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *a2 & 0xFFFFFFFFFFFFFFF8;
    while (1)
    {
      while (1)
      {
        v7 = v4;
        v8 = v4[4] & 0xFFFFFFFFFFFFFFF8;
        if (v6 >= v8)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_10;
        }
      }

      if (v8 >= v6)
      {
        break;
      }

      v4 = v7[1];
      if (!v4)
      {
        v5 = v7 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v7 = (a1 + 8);
LABEL_10:
    sub_29A1DEB0C(a1, a3, &v10);
    sub_29A00B204(a1, v7, v5, v10);
    return v10;
  }

  return v7;
}

uint64_t sub_29A372F60(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2 & 0xFFFFFFFFFFFFFFF8;
  v6 = v2;
  do
  {
    v7 = *(v3 + 32) & 0xFFFFFFFFFFFFFFF8;
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 == v2 || v5 < (*(v6 + 32) & 0xFFFFFFFFFFFFFFF8))
  {
    return v2;
  }

  return v6;
}

uint64_t sub_29A372FB4(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v13 = a2;
  v7 = sub_29A10A6B8(a1, &v13);
  sub_29A37314C(v7 + 1, v13);
  v8 = *(a1 + 8);
  if (v8 == *(a1 + 16))
  {
    v8 = sub_29A373114();
  }

  v9 = v13;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v9 >> 60)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v9)
  {
    *(*(a1 + 16) - 10) = 1;
  }

  v10 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v10;
  *(a1 + 56) = (v10 * v9);
  return a1;
}

void sub_29A3730EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A36B0E8(va);
  _Unwind_Resume(a1);
}

void *sub_29A373114()
{
  if ((atomic_load_explicit(&qword_2A14F6B30, memory_order_acquire) & 1) == 0)
  {
    sub_29B29C170();
  }

  return &unk_2A14F6B20;
}

void *sub_29A37314C(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A0D0518(a1, a2);
    v4 = a1[1];
    v5 = v4 + 16 * a2;
    do
    {
      *v4 = 0;
      *(v4 + 4) = -1;
      *(v4 + 6) = 0;
      v4 += 16;
    }

    while (v4 != v5);
    a1[1] = v5;
  }

  return a1;
}

uint64_t sub_29A3731D4(uint64_t *a1, void *a2, uint64_t *a3)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v6 = *a1;
  v7 = a1[4];
  v8 = v5 & *a1;
  result = v7 + 16 * v8;
  if (*(result + 4) < 0)
  {
    goto LABEL_7;
  }

  LOWORD(v10) = 0;
  while ((*(result + 8) ^ *a2) >= 8)
  {
    v10 = (v10 + 1);
    v8 = (v8 + 1) & v6;
    result = v7 + 16 * v8;
    if (v10 > *(result + 4))
    {
      while (sub_29A373350(a1, v10))
      {
        v11 = a1[4];
        v8 = v5 & *a1;
        if (*(v11 + 16 * v8 + 4) < 0)
        {
LABEL_7:
          v10 = 0;
        }

        else
        {
          LOWORD(v10) = 0;
          do
          {
            v10 = (v10 + 1);
            v8 = (v8 + 1) & *a1;
          }

          while (v10 <= *(v11 + 16 * v8 + 4));
        }
      }

      v12 = a1[4] + 16 * v8;
      if (*(v12 + 4) == -1)
      {
        v13 = *a3;
        *(v12 + 8) = *a3;
        if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *(v12 + 8) &= 0xFFFFFFFFFFFFFFF8;
        }

        *v12 = v5;
        *(v12 + 4) = v10;
      }

      else
      {
        sub_29A373424(a1, v8, v10, v5, a3);
      }

      ++a1[6];
      return a1[4] + 16 * v8;
    }
  }

  return result;
}

uint64_t sub_29A373350(uint64_t a1, int a2)
{
  if (a2 > 0x2000 || (*(a1 + 72) & 1) != 0 || (v3 = *(a1 + 48), v3 >= *(a1 + 56)))
  {
    v7 = sub_29A10A428(a1);
    sub_29A3734A0(a1, v7);
    *(a1 + 72) = 0;
    return 1;
  }

  if (*(a1 + 73) == 1)
  {
    *(a1 + 73) = 0;
    v4 = *(a1 + 64);
    if (v4 != 0.0)
    {
      v5 = *(a1 + 40);
      v6 = v5 ? v3 / v5 : 0.0;
      if (v6 < v4)
      {
        v9 = *(a1 + 68);
        v10 = vcvtps_u32_f32((v3 + 1) / v9);
        v11 = vcvtps_u32_f32(v3 / v9);
        if (v11 <= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11;
        }

        sub_29A3734A0(a1, v12);
        return 1;
      }
    }
  }

  return 0;
}

uint64_t *sub_29A373424(uint64_t *a1, uint64_t a2, __int16 a3, int a4, uint64_t *a5)
{
  v5 = *a5;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  result = sub_29A3735D4(a1, a2, a3, a4, &v8);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29A3734A0(uint64_t a1, unint64_t a2)
{
  sub_29A372FB4(&v14, a2, *(a1 + 64), *(a1 + 68));
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 == v4)
  {
    goto LABEL_14;
  }

  v5 = v15[4];
  v6 = v14;
  do
  {
    if (*(v3 + 2) == -1)
    {
      goto LABEL_13;
    }

    if (v5 > 0x100000000)
    {
      v7 = bswap64(0x9E3779B97F4A7C55 * (*(v3 + 1) & 0xFFFFFFFFFFFFFFF8));
    }

    else
    {
      v7 = *v3;
    }

    v8 = 0;
    for (i = v7; ; i = v10 + 1)
    {
      v10 = i & v6;
      v11 = v15[3] + 16 * v10;
      v12 = *(v11 + 4);
      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      if (v12 == -1)
      {
        break;
      }

      v13 = *(v3 + 1);
      *(v3 + 1) = *(v11 + 8);
      *(v11 + 8) = v13;
      *(v11 + 4) = v8;
      LODWORD(v13) = *v11;
      *v11 = v7;
      v8 = v12;
      LODWORD(v7) = v13;
LABEL_11:
      ++v8;
    }

    *(v11 + 8) = *(v3 + 1);
    *(v3 + 1) = 0;
    *v11 = v7;
    *(v11 + 4) = v8;
LABEL_13:
    v3 += 4;
  }

  while (v3 != v4);
LABEL_14:
  v15[5] = *(a1 + 48);
  sub_29A10A4B4(&v14, a1);
  v16 = v15;
  sub_29A36B0E8(&v16);
}

uint64_t *sub_29A3735D4(uint64_t *result, uint64_t a2, __int16 a3, int a4, uint64_t *a5)
{
  v5 = result[4] + 16 * a2;
  v6 = *a5;
  *a5 = *(v5 + 8);
  *(v5 + 8) = v6;
  v7 = *(v5 + 4);
  *(v5 + 4) = a3;
  v8 = *v5;
  *v5 = a4;
  v9 = *result;
  v10 = (a2 + 1) & *result;
  v11 = v7 + 1;
  v12 = result[4];
  v13 = (v12 + 16 * v10);
  v15 = v13 + 1;
  for (i = *(v13 + 2); i != 0xFFFF; i = *(v13 + 2))
  {
    if (v11 <= i)
    {
      i = v11;
    }

    else
    {
      if (v11 > 0x2000)
      {
        *(result + 72) = 1;
      }

      v16 = *a5;
      *a5 = *(v13 + 1);
      *(v13 + 1) = v16;
      *v15 = v11;
      v17 = *v13;
      *v13 = v8;
      v12 = result[4];
      v8 = v17;
    }

    v10 = (v10 + 1) & v9;
    v11 = i + 1;
    v13 = (v12 + 16 * v10);
    v15 = v13 + 1;
  }

  *(v13 + 1) = *a5;
  *a5 = 0;
  *v13 = v8;
  *(v13 + 2) = v11;
  return result;
}

void *sub_29A3736A8(void *result, uint64_t a2, uint64_t *a3, _BYTE *a4, char a5)
{
  v8 = result;
  if ((a5 & 1) != 0 || *a3 != a3[1])
  {
    if (*a4)
    {
      v9 = "";
    }

    else
    {
      v9 = ", ";
    }

    if (*a4)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    v11 = sub_29A00911C(result, v9, v10);
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = *(a2 + 8);
    }

    v15 = sub_29A00911C(v11, v13, v14);
    sub_29A00911C(v15, " Items: [", 9);
    *a4 = 0;
    v18 = *a3;
    v19 = a3[1];
    *&v23 = *a3;
    *(&v23 + 1) = v19;
    while (v18 != v19)
    {
      v20 = sub_29A1FCDD0(&v23, v16, v17);
      v21 = pxrInternal__aapl__pxrReserved__::operator<<(v8, v20);
      v24 = v23;
      sub_29A1FCE50(&v24);
      if (v24 == *(&v24 + 1))
      {
        v22 = "";
      }

      else
      {
        v22 = ", ";
      }

      sub_29A00911C(v21, v22, 2 * (v24 != *(&v24 + 1)));
      sub_29A1FCE50(&v23);
      v19 = *(&v23 + 1);
      v18 = v23;
    }

    return sub_29A00911C(v8, "]", 1);
  }

  return result;
}

uint64_t sub_29A3737D0(uint64_t a1)
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

uint64_t sub_29A373850(uint64_t result, void *a2, void *a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (a4 > (*(result + 16) - *result) >> 4)
  {
    sub_29A3739B8(result);
    if (a4 >> 60)
    {
      sub_29A00C9A4();
    }

    v9 = *(v7 + 16) - *v7;
    v10 = v9 >> 3;
    if (v9 >> 3 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_29A0D0518(v7, v11);
    result = sub_29A27CB64(v7, v6, a3, *(v7 + 8));
LABEL_15:
    *(v7 + 8) = result;
    return result;
  }

  v12 = *(result + 8);
  v13 = v12 - v8;
  if (a4 > (v12 - v8) >> 4)
  {
    if (v12 != v8)
    {
      v14 = v12 - v8;
      v15 = a2;
      do
      {
        sub_29A1854E8(v8, v15);
        v15 += 2;
        v8 += 16;
        v14 -= 16;
      }

      while (v14);
      v12 = *(v7 + 8);
    }

    result = sub_29A27CB64(v7, (v6 + v13), a3, v12);
    goto LABEL_15;
  }

  if (a2 != a3)
  {
    do
    {
      result = sub_29A1854E8(v8, v6);
      v6 += 2;
      v8 += 16;
    }

    while (v6 != a3);
    v12 = *(v7 + 8);
  }

  while (v12 != v8)
  {
    v12 -= 16;
    result = sub_29A186B14(v12);
  }

  *(v7 + 8) = v8;
  return result;
}

void sub_29A3739B8(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = sub_29A186B14(v3 - 16);
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

void sub_29A373A18(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A373A18(a1, *a2);
    sub_29A373A18(a1, a2[1]);
    sub_29A186B14((a2 + 4));

    operator delete(a2);
  }
}

uint64_t *sub_29A373A74(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  if (a3 != a4)
  {
    v8 = sub_29A373B6C(a1, 0, 0, a3);
    v9 = v8;
    v10 = a3 + 2;
    v11 = 1;
    if (v10 != a4)
    {
      v12 = v8;
      do
      {
        v8 = sub_29A373B6C(a1, v12, 0, v10);
        *(v12 + 8) = v8;
        ++v11;
        v10 += 2;
        v12 = v8;
      }

      while (v10 != a4);
    }

    v13 = *a2;
    *(v13 + 8) = v9;
    *v9 = v13;
    *a2 = v8;
    v8[1] = a2;
    *(a1 + 16) += v11;
    return v9;
  }

  return a2;
}

void sub_29A373B44(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29B29C1DC(v1);
  __cxa_rethrow();
}

void *sub_29A373B6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = operator new(0x20uLL);
  *v7 = a2;
  v7[1] = a3;
  sub_29A186EF4(v7 + 2, a4);
  return v7;
}

uint64_t *sub_29A373BCC(uint64_t **a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, void **a4)
{
  v6 = sub_29A373C64(a1, &v9, this);
  result = *v6;
  if (!*v6)
  {
    sub_29A373D00(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

void *sub_29A373C64(uint64_t a1, void *a2, pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = a1;
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_29A373D74(v7, this, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (!sub_29A373D74(v7, (v8 + 4), this))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_10:
  *a2 = v8;
  return v5;
}

void *sub_29A373D00@<X0>(uint64_t a1@<X0>, void **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x38uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  result = sub_29A186EF4(v6 + 4, *a2);
  v6[6] = 0;
  *(a3 + 16) = 1;
  return result;
}

BOOL sub_29A373D74(int a1, pxrInternal__aapl__pxrReserved__::VtValue *this, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  Hash = pxrInternal__aapl__pxrReserved__::VtValue::GetHash(this);
  v6 = pxrInternal__aapl__pxrReserved__::VtValue::GetHash(a3);
  if (Hash < v6)
  {
    return 1;
  }

  if (Hash > v6 || (pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::operator==(this, a3) & 1) != 0)
  {
    return 0;
  }

  sub_29A1FD264(this);
  sub_29A1FD264(a3);
  v9 = v19;
  v10 = v18[0];
  v11 = v21;
  if ((v21 & 0x80u) == 0)
  {
    v12 = v21;
  }

  else
  {
    v12 = __p[1];
  }

  if ((v21 & 0x80u) == 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if (v19 >= 0)
  {
    v14 = v19;
  }

  else
  {
    v14 = v18[1];
  }

  if (v19 >= 0)
  {
    v15 = v18;
  }

  else
  {
    v15 = v18[0];
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = memcmp(v13, v15, v16);
  if (v17)
  {
    v7 = v17 < 0;
  }

  else
  {
    v7 = v12 < v14;
  }

  if (v9 < 0)
  {
    operator delete(v10);
    v11 = v21;
  }

  if ((v11 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_29A373E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A373E98(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A186B14(v2 + 32);
    }

    operator delete(v2);
  }
}

void *sub_29A373EF4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v18 = (v10 - a2) >> 4;
      if (v18 >= a5)
      {
        sub_29A37413C(a1, a2, a1[1], a2 + 16 * a5);
        sub_29A1854E8(v5, v7 + 2);
        if (a5 != 1)
        {
          v21 = v5 + 2;
          v22 = a5 + 1;
          do
          {
            v7 = v7[1];
            sub_29A1854E8(v21, v7 + 2);
            v21 += 2;
            --v22;
          }

          while (v22 > 2);
        }
      }

      else
      {
        if (v18 < 0)
        {
          v27 = (v10 - a2) >> 4;
          v20 = a3;
          do
          {
            v20 = *v20;
          }

          while (!__CFADD__(v27++, 1));
        }

        else if (v10 == a2)
        {
          v20 = a3;
        }

        else
        {
          v19 = v18 + 1;
          v20 = a3;
          do
          {
            v20 = v20[1];
            --v19;
          }

          while (v19 > 1);
        }

        a1[1] = sub_29A3742A4(a1, v20, a4, a1[1]);
        if (v18 >= 1)
        {
          sub_29A37413C(a1, v5, v10, &v5[2 * a5]);
          if (v20 != v7)
          {
            v29 = v5;
            do
            {
              sub_29A1854E8(v29, v7 + 2);
              v7 = v7[1];
              v29 += 2;
            }

            while (v7 != v20);
          }
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + ((v10 - *a1) >> 4);
      if (v12 >> 60)
      {
        sub_29A00C9A4();
      }

      v13 = a2 - v11;
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
      v33 = a1;
      if (v15)
      {
        v17 = sub_29A017BD4(a1, v15);
      }

      else
      {
        v17 = 0;
      }

      v23 = &v17[16 * v16];
      v30[0] = v17;
      v30[1] = v23;
      v31 = v23;
      v32 = &v17[16 * v15];
      v24 = 16 * a5;
      v25 = &v23[16 * a5];
      do
      {
        sub_29A186EF4(v23, v7 + 2);
        v23 += 16;
        v7 = v7[1];
        v24 -= 16;
      }

      while (v24);
      v31 = v25;
      v5 = sub_29A3741E8(a1, v30, v5);
      sub_29A1D1C24(v30);
    }
  }

  return v5;
}

void *sub_29A37413C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = (a2 + v7 - a4);
  if (v8 >= a3)
  {
    result = *(a1 + 8);
  }

  else
  {
    result = *(a1 + 8);
    do
    {
      v11 = sub_29A186A3C(result, v8);
      v8 += 2;
      result = v11 + 2;
    }

    while (v8 < a3);
  }

  *(a1 + 8) = result;
  if (v7 != a4)
  {
    v12 = (v7 - 16);
    v13 = a4 - v7;
    v14 = (a2 + v7 - 16 - a4);
    do
    {
      result = sub_29A18606C(v12, v14);
      v12 -= 2;
      v14 -= 2;
      v13 += 16;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_29A3741E8(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *(a2 + 8);
  sub_29A1D1BB4(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_29A1D1BB4(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

void *sub_29A3742A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_29A186EF4(a4, (v6 + 16));
      v6 = *(v6 + 8);
      a4 += 2;
      v7 -= 16;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_29A374304(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 16;
    do
    {
      v4 = sub_29A186B14(v4) - 16;
      v2 += 16;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A374328(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v6 = *(a1 + 16) - *a1;
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
  *(&v17 + 1) = &v8[16 * v7];
  sub_29A186EF4(v16, a2);
  *&v17 = v16 + 16;
  v9 = *(a1 + 8);
  v10 = &v16[*a1 - v9];
  sub_29A1D1BB4(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A1D1C24(&v15);
  return v14;
}

void sub_29A374424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1D1C24(va);
  _Unwind_Resume(a1);
}

char *sub_29A374438(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v18 = v10 - a2;
      v19 = (v10 - a2) >> 4;
      if (v19 >= a5)
      {
        sub_29A37413C(a1, a2, a1[1], a2 + 16 * a5);
        v22 = &v7[2 * a5];
        v23 = v5;
        do
        {
          sub_29A1854E8(v23, v7);
          v7 += 2;
          v23 += 16;
        }

        while (v7 != v22);
      }

      else
      {
        v20 = (a3 + v18);
        a1[1] = sub_29A27C7C8(a1, (a3 + v18), a4, a1[1]);
        if (v19 >= 1)
        {
          sub_29A37413C(a1, v5, v10, &v5[16 * a5]);
          if (v10 != v5)
          {
            v21 = v5;
            do
            {
              sub_29A1854E8(v21, v7);
              v7 += 2;
              v21 += 16;
            }

            while (v7 != v20);
          }
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + ((v10 - *a1) >> 4);
      if (v12 >> 60)
      {
        sub_29A00C9A4();
      }

      v13 = a2 - v11;
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
      v31 = a1;
      if (v15)
      {
        v17 = sub_29A017BD4(a1, v15);
      }

      else
      {
        v17 = 0;
      }

      v24 = &v17[16 * v16];
      v28[0] = v17;
      v28[1] = v24;
      v29 = v24;
      v30 = &v17[16 * v15];
      v25 = 16 * a5;
      v26 = &v24[16 * a5];
      do
      {
        sub_29A186EF4(v24, v7);
        v24 += 16;
        v7 += 2;
        v25 -= 16;
      }

      while (v25);
      v29 = v26;
      v5 = sub_29A3741E8(a1, v28, v5);
      sub_29A1D1C24(v28);
    }
  }

  return v5;
}

uint64_t sub_29A374628(uint64_t *a1, pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v12[3] = *MEMORY[0x29EDCA608];
  v4 = a1[3];
  if (v4)
  {
    v6 = *a1;
    v5 = a1[1];
    sub_29A186EF4(v10, this);
    v11 = (v5 - v6) >> 4;
    sub_29A186A3C(v12, v10);
    v12[2] = v11;
    v7 = sub_29A374A20(v4, v12, v12);
    LOBYTE(v5) = v8;
    sub_29A186B14(v12);
    sub_29A186B14(v10);
    if ((v5 & 1) == 0)
    {
      return *a1 + 16 * v7[4];
    }
  }

  else
  {
    result = sub_29A3748B4(a1, this);
    if (a1[1] != result)
    {
      return result;
    }
  }

  sub_29A35FD10(a1, this);
  sub_29A374938(a1);
  return a1[1] - 16;
}

void sub_29A374748(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_29A186B14(va1);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29A37476C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A375178(a1, a2);
  }

  else
  {
    result = sub_29A186A3C(v3, a2) + 2;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29A3747B4(uint64_t a1)
{
  sub_29A3747F8((a1 + 24), 0);
  v3 = a1;
  sub_29A1D0D38(&v3);
  return a1;
}

void sub_29A3747F8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A374834(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A374834(uint64_t a1)
{
  sub_29A374870(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A374870(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A186B14((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29A3748B4(void *a1, pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = sub_29A374D68(v4, this);
    if (v5)
    {
      return *a1 + 16 * v5[4];
    }

    else
    {
      return a1[1];
    }
  }

  else
  {
    v8 = a1;
    v7 = *a1;
    v6 = v8[1];
    while (v7 != v6)
    {
      if (pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::operator==(v7, this))
      {
        return v7;
      }

      v7 += 16;
    }
  }

  return v6;
}

void sub_29A374938(uint64_t *a1)
{
  if ((a1[1] - *a1) >= 0x7F1)
  {
    v2 = a1 + 3;
    if (!a1[3])
    {
      v3 = operator new(0x28uLL);
      *v3 = 0u;
      v3[1] = 0u;
      *(v3 + 8) = 1065353216;
      sub_29A019AA0(v3, 0x80uLL);
      sub_29A3747F8(v2, v3);
      v4 = *a1;
      if (a1[1] != *a1)
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = a1[3];
          v8 = (v4 + v5);
          sub_29A374E78(v7, (v4 + v5), &unk_29B4D6118, &v8)[4] = v6++;
          v4 = *a1;
          v5 += 16;
        }

        while (v6 < (a1[1] - *a1) >> 4);
      }
    }
  }
}

void sub_29A374A08(_Unwind_Exception *a1)
{
  v3 = sub_29A374834(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void *sub_29A374A20(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, void *a3)
{
  v7 = bswap64(0x9E3779B97F4A7C55 * pxrInternal__aapl__pxrReserved__::VtValue::GetHash(this));
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }
    }

    else
    {
      v3 = (v8 - 1) & v7;
    }

    v11 = *(*a1 + 8 * v3);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        do
        {
          v13 = v12[1];
          if (v13 == v7)
          {
            if (pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::operator==(v12 + 2, this))
            {
              return v12;
            }
          }

          else
          {
            if (v10 > 1)
            {
              if (v13 >= v8)
              {
                v13 %= v8;
              }
            }

            else
            {
              v13 &= v8 - 1;
            }

            if (v13 != v3)
            {
              break;
            }
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

  sub_29A374C88(a1, v7, a3, &v25);
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v8 || (v15 * v8) < v14)
  {
    v16 = 1;
    if (v8 >= 3)
    {
      v16 = (v8 & (v8 - 1)) != 0;
    }

    v17 = v16 | (2 * v8);
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
    v8 = *(a1 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }

      else
      {
        v3 = v7;
      }
    }

    else
    {
      v3 = (v8 - 1) & v7;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v3);
  if (v21)
  {
    v12 = v25;
    *v25 = *v21;
    *v21 = v12;
  }

  else
  {
    v22 = v25;
    *v25 = *(a1 + 16);
    *(a1 + 16) = v22;
    *(v20 + 8 * v3) = a1 + 16;
    v12 = v25;
    if (*v25)
    {
      v23 = *(*v25 + 8);
      if ((v8 & (v8 - 1)) != 0)
      {
        if (v23 >= v8)
        {
          v23 %= v8;
        }
      }

      else
      {
        v23 &= v8 - 1;
      }

      *(*a1 + 8 * v23) = v25;
      v12 = v25;
    }
  }

  ++*(a1 + 24);
  return v12;
}

void sub_29A374C70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A374D0C(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29A374C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x28uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  result = sub_29A186EF4(v8 + 2, a3);
  v8[4] = a3[2];
  *(a4 + 16) = 1;
  return result;
}

void sub_29A374D0C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A186B14(v2 + 16);
    }

    operator delete(v2);
  }
}

void *sub_29A374D68(void *a1, pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  Hash = pxrInternal__aapl__pxrReserved__::VtValue::GetHash(this);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = bswap64(0x9E3779B97F4A7C55 * Hash);
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v6;
    if (v6 >= *&v5)
    {
      v9 = v6 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::operator==(v11 + 2, this))
        {
          return v11;
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

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void *sub_29A374E78(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, void **a4)
{
  v8 = bswap64(0x9E3779B97F4A7C55 * pxrInternal__aapl__pxrReserved__::VtValue::GetHash(this));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }
    }

    else
    {
      v4 = (v9 - 1) & v8;
    }

    v12 = *(*a1 + 8 * v4);
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        do
        {
          v14 = v13[1];
          if (v14 == v8)
          {
            if (pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::operator==(v13 + 2, this))
            {
              return v13;
            }
          }

          else
          {
            if (v11 > 1)
            {
              if (v14 >= v9)
              {
                v14 %= v9;
              }
            }

            else
            {
              v14 &= v9 - 1;
            }

            if (v14 != v4)
            {
              break;
            }
          }

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

  sub_29A3750F8(a1, v8, a4, &v26);
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v9 || (v16 * v9) < v15)
  {
    v17 = 1;
    if (v9 >= 3)
    {
      v17 = (v9 & (v9 - 1)) != 0;
    }

    v18 = v17 | (2 * v9);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    sub_29A019AA0(a1, v20);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }

      else
      {
        v4 = v8;
      }
    }

    else
    {
      v4 = (v9 - 1) & v8;
    }
  }

  v21 = *a1;
  v22 = *(*a1 + 8 * v4);
  if (v22)
  {
    v13 = v26;
    *v26 = *v22;
    *v22 = v13;
  }

  else
  {
    v23 = v26;
    *v26 = *(a1 + 16);
    *(a1 + 16) = v23;
    *(v21 + 8 * v4) = a1 + 16;
    v13 = v26;
    if (*v26)
    {
      v24 = *(*v26 + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v24 >= v9)
        {
          v24 %= v9;
        }
      }

      else
      {
        v24 &= v9 - 1;
      }

      *(*a1 + 8 * v24) = v26;
      v13 = v26;
    }
  }

  ++*(a1 + 24);
  return v13;
}

void sub_29A3750E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A374D0C(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29A3750F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x28uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  result = sub_29A186EF4(v8 + 2, *a3);
  v8[4] = 0;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29A375178(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v6 = *(a1 + 16) - *a1;
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
  *(&v17 + 1) = &v8[16 * v7];
  sub_29A186A3C(v16, a2);
  *&v17 = v16 + 16;
  v9 = *(a1 + 8);
  v10 = &v16[*a1 - v9];
  sub_29A1D1BB4(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A1D1C24(&v15);
  return v14;
}

void sub_29A375270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1D1C24(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A375284(uint64_t *a1, void *a2, void *a3)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v6 = sub_29A375318(a1, 0, 0, v5);
      v7 = *a1;
      *v6 = *a1;
      v6[1] = a1;
      *(v7 + 8) = v6;
      *a1 = v6;
      ++a1[2];
      v5 += 2;
    }

    while (v5 != a3);
  }

  return a1;
}

void *sub_29A375318(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = operator new(0x20uLL);
  *v7 = a2;
  v7[1] = a3;
  sub_29A186EF4(v7 + 2, a4);
  return v7;
}

void *sub_29A375378(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29A3742A4(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A3753E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A1D0D38(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A375400(uint64_t **a1, pxrInternal__aapl__pxrReserved__::VtValue *this, void *a3)
{
  v5 = sub_29A373C64(a1, &v8, this);
  result = *v5;
  if (!*v5)
  {
    sub_29A375480(a1, a3, &v7);
    sub_29A00B204(a1, v8, v5, v7);
    return v7;
  }

  return result;
}

void *sub_29A375480@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x30uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  result = sub_29A186EF4(v6 + 4, a2);
  *(a3 + 16) = 1;
  return result;
}

uint64_t sub_29A3754EC(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1;
  v6 = a1 + 8;
  do
  {
    v7 = sub_29A373D74(v5, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_29A373D74(v5, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t sub_29A37557C(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = a1;
    v5 = 1;
    do
    {
      if (!sub_29A373D74(v4, this, (v2 + 4)))
      {
        if (!sub_29A373D74(v4, (v2 + 4), this))
        {
          return v5;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_29A3755F0(uint64_t result, pxrInternal__aapl__pxrReserved__::VtValue *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  v8 = result;
  v20 = a2;
  *v21 = result;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = (v7 - v8) >> 4;
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      v20 = (v7 - 16);
      result = sub_29A373D74(a3, (v7 - 16), v8);
      if (result)
      {
        v18 = v21;
        v19 = &v20;
        return sub_29A375930(v18, v19);
      }

      return result;
    }

LABEL_10:
    if (v10 <= 23)
    {
      if (a5)
      {
        return sub_29A375BC8(v8, v7, a3);
      }

      else
      {
        return sub_29A375CF8(v8, v7, a3);
      }
    }

    if (i == 1)
    {
      if (v8 != v7)
      {
        return sub_29A3763E8(v8, v7, v7, a3);
      }

      return result;
    }

    v11 = v10 >> 1;
    v12 = (v7 - 16);
    if (v10 < 0x81)
    {
      sub_29A3759B4((v8 + 16 * (v10 >> 1)), v8, v12, a3);
      if (a5)
      {
LABEL_17:
        v7 = v20;
        goto LABEL_18;
      }
    }

    else
    {
      sub_29A3759B4(v8, (v8 + 16 * (v10 >> 1)), v12, a3);
      v13 = 16 * v11 - 16;
      sub_29A3759B4((*v21 + 16), (*v21 + v13), (v20 - 32), a3);
      v14 = 16 * v11 + 16;
      sub_29A3759B4((*v21 + 32), (*v21 + v14), (v20 - 48), a3);
      sub_29A3759B4((*v21 + v13), (*v21 + 16 * v11), (*v21 + v14), a3);
      v25 = (*v21 + 16 * v11);
      sub_29A375930(v21, &v25);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    v7 = v20;
    if (!sub_29A373D74(a3, (*v21 - 16), *v21))
    {
      result = sub_29A375DF8(*v21, v20, a3);
      v8 = result;
LABEL_26:
      a5 = 0;
      *v21 = v8;
      a4 = -i;
      goto LABEL_2;
    }

LABEL_18:
    v15 = sub_29A375FB4(*v21, v7, a3);
    if ((v16 & 1) == 0)
    {
      goto LABEL_25;
    }

    v17 = sub_29A376164(*v21, v15, a3);
    v8 = (v15 + 2);
    result = sub_29A376164(v15 + 2, v7, a3);
    if (result)
    {
      if (v17)
      {
        return result;
      }

      v20 = v15;
      v8 = *v21;
      v7 = v15;
    }

    else
    {
      if (!v17)
      {
LABEL_25:
        result = sub_29A3755F0(*v21, v15, a3, -i, a5 & 1);
        v8 = (v15 + 2);
        goto LABEL_26;
      }

      *v21 = v15 + 2;
    }
  }

  if (v10 == 3)
  {
    v20 = (v7 - 16);
    return sub_29A3759B4(v8, (v8 + 16), (v7 - 16), a3);
  }

  if (v10 != 4)
  {
    if (v10 == 5)
    {
      v20 = (v7 - 16);
      return sub_29A375A7C(v8, (v8 + 16), (v8 + 32), (v8 + 48), v7 - 2, a3);
    }

    goto LABEL_10;
  }

  v20 = (v7 - 16);
  v24 = (v8 + 16);
  v25 = v8;
  v22 = (v7 - 16);
  v23 = (v8 + 32);
  sub_29A3759B4(v8, (v8 + 16), (v8 + 32), a3);
  result = sub_29A373D74(a3, (v7 - 16), (v8 + 32));
  if (result)
  {
    sub_29A375930(&v23, &v22);
    result = sub_29A373D74(a3, v23, (v8 + 16));
    if (result)
    {
      sub_29A375930(&v24, &v23);
      result = sub_29A373D74(a3, v24, v8);
      if (result)
      {
        v18 = &v25;
        v19 = &v24;
        return sub_29A375930(v18, v19);
      }
    }
  }

  return result;
}

uint64_t sub_29A375930(void **a1, void **a2)
{
  v5[2] = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = *a2;
  sub_29A186A3C(v5, *a1);
  sub_29A18606C(v2, v3);
  sub_29A18606C(v3, v5);
  return sub_29A186B14(v5);
}

BOOL sub_29A3759B4(pxrInternal__aapl__pxrReserved__::VtValue *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, pxrInternal__aapl__pxrReserved__::VtValue *a3, int a4)
{
  v12 = a2;
  v13 = a1;
  v11 = a3;
  v7 = sub_29A373D74(a4, a2, a1);
  result = sub_29A373D74(a4, a3, a2);
  if (v7)
  {
    if (result)
    {
      v9 = &v13;
LABEL_9:
      v10 = &v11;
      goto LABEL_10;
    }

    sub_29A375930(&v13, &v12);
    if (sub_29A373D74(a4, v11, v12))
    {
      v9 = &v12;
      goto LABEL_9;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    sub_29A375930(&v12, &v11);
    if (sub_29A373D74(a4, v12, v13))
    {
      v9 = &v13;
      v10 = &v12;
LABEL_10:
      sub_29A375930(v9, v10);
    }
  }

  return 1;
}

uint64_t sub_29A375A7C(void *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, pxrInternal__aapl__pxrReserved__::VtValue *a3, pxrInternal__aapl__pxrReserved__::VtValue *a4, void *a5, int a6)
{
  v16 = a2;
  v17 = a1;
  v14 = a4;
  v15 = a3;
  v13 = a5;
  v21 = a1;
  v19 = a3;
  v20 = a2;
  v18 = a4;
  sub_29A3759B4(a1, a2, a3, a6);
  if (sub_29A373D74(a6, a4, a3))
  {
    sub_29A375930(&v19, &v18);
    if (sub_29A373D74(a6, v19, a2))
    {
      sub_29A375930(&v20, &v19);
      if (sub_29A373D74(a6, v20, a1))
      {
        sub_29A375930(&v21, &v20);
      }
    }
  }

  result = sub_29A373D74(a6, a5, a4);
  if (result)
  {
    sub_29A375930(&v14, &v13);
    result = sub_29A373D74(a6, v14, a3);
    if (result)
    {
      sub_29A375930(&v15, &v14);
      result = sub_29A373D74(a6, v15, a2);
      if (result)
      {
        sub_29A375930(&v16, &v15);
        result = sub_29A373D74(a6, v16, a1);
        if (result)
        {
          return sub_29A375930(&v17, &v16);
        }
      }
    }
  }

  return result;
}

uint64_t sub_29A375BC8(uint64_t result, void *a2, int a3)
{
  v13[2] = *MEMORY[0x29EDCA608];
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 16);
    if ((result + 16) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v8;
        v8 = v5;
        result = sub_29A373D74(a3, v5, v9);
        if (result)
        {
          sub_29A186A3C(v13, v8);
          v10 = v7;
          while (1)
          {
            sub_29A18606C((v4 + v10 + 16), (v4 + v10));
            if (!v10)
            {
              break;
            }

            v11 = sub_29A373D74(a3, v13, (v4 + v10 - 16));
            v10 -= 16;
            if (!v11)
            {
              v12 = (v4 + v10 + 16);
              goto LABEL_10;
            }
          }

          v12 = v4;
LABEL_10:
          sub_29A18606C(v12, v13);
          result = sub_29A186B14(v13);
        }

        v5 = (v8 + 16);
        v7 += 16;
      }

      while ((v8 + 16) != a2);
    }
  }

  return result;
}

uint64_t sub_29A375CF8(uint64_t result, void *a2, int a3)
{
  v8[2] = *MEMORY[0x29EDCA608];
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 16);
    if ((result + 16) != a2)
    {
      do
      {
        v7 = v5;
        result = sub_29A373D74(a3, v5, v4);
        if (result)
        {
          sub_29A186A3C(v8, v7);
          do
          {
            sub_29A18606C(v4 + 2, v4);
            v4 = (v4 - 16);
          }

          while (sub_29A373D74(a3, v8, v4));
          sub_29A18606C(v4 + 2, v8);
          result = sub_29A186B14(v8);
        }

        v5 = (v7 + 16);
        v4 = v7;
      }

      while ((v7 + 16) != a2);
    }
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::VtValue *sub_29A375DF8(void *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, int a3)
{
  v14[2] = *MEMORY[0x29EDCA608];
  v12 = a2;
  v13 = a1;
  sub_29A186A3C(v14, a1);
  if (sub_29A373D74(a3, v14, (a2 - 16)))
  {
    v6 = a1;
    do
    {
      v6 = (v6 + 16);
      v13 = v6;
    }

    while (!sub_29A373D74(a3, v14, v6));
  }

  else
  {
    v7 = (a1 + 2);
    do
    {
      v6 = v7;
      v13 = v7;
      if (v7 >= v12)
      {
        break;
      }

      v8 = sub_29A373D74(a3, v14, v7);
      v7 = (v6 + 16);
    }

    while (!v8);
  }

  v9 = v12;
  if (v6 < v12)
  {
    do
    {
      v9 = (v9 - 16);
      v12 = v9;
    }

    while (sub_29A373D74(a3, v14, v9));
    v6 = v13;
  }

  if (v6 < v9)
  {
    do
    {
      sub_29A375930(&v13, &v12);
      do
      {
        v13 = (v13 + 16);
      }

      while (!sub_29A373D74(a3, v14, v13));
      do
      {
        v12 = (v12 - 16);
      }

      while (sub_29A373D74(a3, v14, v12));
      v6 = v13;
    }

    while (v13 < v12);
  }

  if ((v6 - 16) != a1)
  {
    sub_29A18606C(a1, v6 - 2);
  }

  sub_29A18606C(v6 - 2, v14);
  v10 = v13;
  sub_29A186B14(v14);
  return v10;
}

void sub_29A375F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29A375FB4(void *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, int a3)
{
  v15[2] = *MEMORY[0x29EDCA608];
  v13 = a2;
  sub_29A186A3C(v15, a1);
  v5 = 0;
  do
  {
    v14 = &a1[v5 + 2];
    v5 += 2;
  }

  while (sub_29A373D74(a3, v14, v15));
  v6 = v13;
  if (v5 == 2)
  {
    v9 = (a1 + 2);
    do
    {
      if (v9 >= v6)
      {
        break;
      }

      v6 = (v6 - 16);
      v13 = v6;
    }

    while (!sub_29A373D74(a3, v6, v15));
  }

  else
  {
    v7 = (v13 - 16);
    do
    {
      v13 = v7;
      v8 = sub_29A373D74(a3, v7, v15);
      v7 = (v7 - 16);
    }

    while (!v8);
    v9 = v14;
  }

  v10 = v9;
  if (v9 < v13)
  {
    do
    {
      sub_29A375930(&v14, &v13);
      do
      {
        v14 = (v14 + 16);
      }

      while (sub_29A373D74(a3, v14, v15));
      do
      {
        v13 = (v13 - 16);
      }

      while (!sub_29A373D74(a3, v13, v15));
      v10 = v14;
    }

    while (v14 < v13);
  }

  v11 = (v10 - 16);
  if ((v10 - 16) != a1)
  {
    sub_29A18606C(a1, v10 - 2);
  }

  sub_29A18606C(v11, v15);
  sub_29A186B14(v15);
  return v11;
}