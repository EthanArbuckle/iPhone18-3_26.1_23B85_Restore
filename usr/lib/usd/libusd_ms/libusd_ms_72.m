void sub_29A41A98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A419CE0(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A41A9B0(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x40uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v8[2] = **a3;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>::_AddRef();
}

void sub_29A41AA34(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A419CE0(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_29A41AA50(void *a1, unsigned int *a2)
{
  if (!a1[3])
  {
    return 0;
  }

  for (result = *(*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & a1[4])); result; result = result[4])
  {
    if (*result == *a2)
    {
      break;
    }
  }

  return result;
}

unint64_t sub_29A41AAB8(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  for (i = *(*a1 + 48); ; i = *(result + 48))
  {
    result = i & 0xFFFFFFFFFFFFFFF8;
    if ((i & 7) != 0 && result != 0)
    {
      break;
    }

    if (result)
    {
      v4 = (i & 7) == 0;
    }

    else
    {
      v4 = 0;
    }

    if (!v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_29A41AAF4(void *a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2)
  {
    sub_29A41AC90(a1, *(a2 + 40));

    sub_29A41ABE4(a1, v2);
  }
}

void *sub_29A41AB48(pxrInternal__aapl__pxrReserved__::SdfPath *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  if (*a2 != *result)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v6);
    v5 = sub_29A41AA50(a1, &v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
    sub_29A1DE3A4(&v6);
    return sub_29A41AD08(v5, a2);
  }

  return result;
}

void sub_29A41ABD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29A41ABE4(void *a1, unsigned int *a2)
{
  v2 = (*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & a1[4]));
  do
  {
    v3 = v2;
    v4 = *v2;
    v2 = (*v2 + 32);
  }

  while (v4 != a2);
  --a1[3];
  *v3 = *(v4 + 32);
  v6 = (v4 + 8);
  sub_29A1E234C(&v6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v4 + 4));
  v5 = sub_29A1DE3A4(v4);
  operator delete(v5);
}

void sub_29A41AC90(void *a1, uint64_t a2)
{
  (sub_29A41AAF4)();
  v4 = *(a2 + 48);
  v5 = v4 & 0xFFFFFFFFFFFFFFF8;
  if ((v4 & 7) != 0 && v5 != 0)
  {
    do
    {
      v7 = *(v5 + 48);
      if ((v7 & 7) != 0)
      {
        v8 = v7 & 0xFFFFFFFFFFFFFFF8;
      }

      else
      {
        v8 = 0;
      }

      sub_29A41AAF4(a1, v5);
      sub_29A41ABE4(a1, v5);
      v5 = v8;
    }

    while (v8);
  }
}

uint64_t sub_29A41AD08(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2 == a2)
  {
    v5 = *(a2 + 48);
    if ((v5 & 7) != 0)
    {
      v6 = v5 & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v6 = 0;
    }

    *(result + 40) = v6;
  }

  else
  {
    do
    {
      v3 = v2;
      v4 = *(v2 + 48);
      if ((v4 & 7) != 0)
      {
        v2 = v4 & 0xFFFFFFFFFFFFFFF8;
      }

      else
      {
        v2 = 0;
      }
    }

    while (v2 != a2);
    *(v3 + 48) = *(v2 + 48);
  }

  return result;
}

uint64_t *sub_29A41AD54(void *a1, void *a2)
{
  result = sub_29A0EB63C(a1, a2);
  if (result)
  {
    sub_29A41AD8C(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29A41AD8C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_29A419CE0(&v6, v3);
  }

  return v2;
}

uint64_t sub_29A41ADD8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v7 == 1)
    {
      v4 = v3[2];
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    operator delete(v3);
  }

  return v2;
}

void sub_29A41AE40(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29A1602D4(a2 + 48, *(a2 + 56));
    sub_29A1602D4(a2 + 24, *(a2 + 32));
    v3 = a2;
    sub_29A41AE9C(&v3);
    operator delete(a2);
  }
}

void sub_29A41AE9C(void ***a1)
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
        v6 = v4 - 24;
        sub_29A186B14((v4 - 16));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29A41AF24(uint64_t a1)
{
  *(a1 + 32) = 0;
  *(a1 + 36) = 0;
  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset((a1 + 40), 0.0, 1.0);
  return a1;
}

uint64_t sub_29A41AF74(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 > 2)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *(a1 + 32) = v2 - 1;
    if (v2)
    {
      v3 = a1;
      do
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v3 + 3);
        sub_29A1DE3A4(v3 + 2);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v3 + 1);
        sub_29A1DE3A4(v3);
        v3 += 4;
        v4 = *(a1 + 32);
        *(a1 + 32) = v4 - 1;
      }

      while (v4);
    }
  }

  return a1;
}

_DWORD *sub_29A41B000(_DWORD *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a2 + 32);
  a1[8] = v4;
  *(a1 + 36) = *(a2 + 36);
  if (v4 > 2)
  {
    v7 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 1) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else if (v4)
  {
    v5 = 16 * v4;
    do
    {
      v6 = sub_29A23F744(a1, v2);
      v2 += 4;
      a1 = v6 + 4;
      v5 -= 16;
    }

    while (v5);
  }

  return v3;
}

void **sub_29A41B0B8(void **a1)
{
  sub_29A41B0F4(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A41B0F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29A419D40((a2 + 24));
    sub_29A41B088();
  }
}

uint64_t sub_29A41B140(uint64_t a1)
{
  sub_29A41B17C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A41B17C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A41B1C0((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29A41B1C0(uint64_t a1)
{
  v3 = (a1 + 8);
  sub_29A41CF9C(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

uint64_t sub_29A41B20C(uint64_t a1)
{
  sub_29A41B248(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A41B248(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A41B28C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29A41B28C(uint64_t a1)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_29A41AE40(v2, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29A41B2DC(uint64_t a1)
{
  sub_29A41B318(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A41B318(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A41B35C(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29A41B35C(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesDependencyData::~PcpExpressionVariablesDependencyData((a1 + 2));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29A41B3A4(uint64_t a1)
{
  sub_29A41B3E0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A41B3E0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29B2A0330((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_29A41B424(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

  sub_29A41B66C(a1, v6, a4, &v22);
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

void sub_29A41B654(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A41B6E8(va, 0);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A41B66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v9 = *a3;
  sub_29A1E21F4(v8 + 4, v9);
  result = sub_29A1E2240(v8 + 5, v9 + 1);
  v8[3] = 0;
  v8[4] = 0;
  v8[5] = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29A41B6E8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A41B1C0(v2 + 16);
    }

    operator delete(v2);
  }
}

void sub_29A41B744(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      sub_29A41B7B0(a1, v3 - 22);
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_29A41B7B0(uint64_t a1, _DWORD *a2)
{
  sub_29A41AF74((a2 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 7);
  sub_29A1DE3A4(a2 + 6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 5);
  sub_29A1DE3A4(a2 + 4);

  sub_29A41B088();
}

char *sub_29A41B814(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (0x2E8BA2E8BA2E8BA3 * ((v9 - v10) >> 3) >= a5)
    {
      v18 = v10 - a2;
      if (0x2E8BA2E8BA2E8BA3 * ((v10 - a2) >> 3) >= a5)
      {
        v20 = 11 * a5;
        sub_29A41BA20(a1, a2, a1[1], a2 + 88 * a5);
        v19 = &v7[v20];
      }

      else
      {
        a1[1] = sub_29A41BB84(a1, a3 + v18, a4, a1[1]);
        if (v18 < 1)
        {
          return v5;
        }

        sub_29A41BA20(a1, v5, v10, &v5[88 * a5]);
        v19 = (v7 + v18);
      }

      sub_29A41BE0C(v25, v7, v19, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + 0x2E8BA2E8BA2E8BA3 * ((v10 - *a1) >> 3);
    if (v12 > 0x2E8BA2E8BA2E8BALL)
    {
      sub_29A00C9A4();
    }

    v13 = a2 - v11;
    v14 = 0x2E8BA2E8BA2E8BA3 * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x1745D1745D1745DLL)
    {
      v15 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v15 = v12;
    }

    v16 = 0x2E8BA2E8BA2E8BA3 * (v13 >> 3);
    v28 = a1;
    if (v15)
    {
      v17 = sub_29A1587D0(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v21 = &v17[88 * v16];
    v25[0] = v17;
    v25[1] = v21;
    v26 = v21;
    v27 = &v17[88 * v15];
    v22 = 88 * a5;
    v23 = &v21[88 * a5];
    do
    {
      sub_29A41BC30(v28, v21, v7);
      v21 += 88;
      v7 += 11;
      v22 -= 88;
    }

    while (v22);
    v26 = v23;
    v5 = sub_29A41BAC8(a1, v25, v5);
    sub_29A41BFE0(v25);
  }

  return v5;
}

uint64_t sub_29A41BA20(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = a2 + v6 - a4;
    v8 = *(a1 + 8);
    do
    {
      sub_29A41BC30(a1, v8, v10);
      v10 += 88;
      v8 += 88;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return sub_29A41BDB4(&v12, a2, v7, v6);
}

uint64_t sub_29A41BAC8(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *(a2 + 8);
  sub_29A41BE64(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_29A41BE64(a1, v7, a3, v9);
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

uint64_t sub_29A41BB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_29A41BC30(a1, v4, v6);
      v6 += 88;
      v4 = v12 + 88;
      v12 += 88;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29A41BD28(v9);
  return v4;
}

__n128 sub_29A41BC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *(a2 + 8) = *(a3 + 8);
  *(a3 + 8) = 0;
  sub_29A1DDD84((a2 + 16), (a3 + 16));
  sub_29A1DDDC0((a2 + 20), (a3 + 20));
  sub_29A1DDD84((a2 + 24), (a3 + 24));
  sub_29A1DDDC0((a2 + 28), (a3 + 28));
  sub_29A41BCAC((a2 + 32), a3 + 32);
  result = *(a3 + 72);
  *(a2 + 72) = result;
  return result;
}

_DWORD *sub_29A41BCAC(_DWORD *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a2 + 32);
  a1[8] = v4;
  *(a1 + 36) = *(a2 + 36);
  if (v4 > 2)
  {
    *a1 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  else if (v4)
  {
    v5 = 16 * v4;
    do
    {
      v6 = sub_29A23E8E4(a1, v2);
      v2 += 4;
      a1 = v6 + 4;
      v5 -= 16;
    }

    while (v5);
  }

  return v3;
}

uint64_t sub_29A41BD28(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A41BD60(a1);
  }

  return a1;
}

uint64_t sub_29A41BD60(uint64_t result)
{
  v1 = *(result + 16);
  if (*v1 != **(result + 8))
  {
    sub_29A41B7B0(*result, (*v1 - 88));
  }

  return result;
}

uint64_t sub_29A41BDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    sub_29B2A0740(a4, a3, a2, &v5);
  }

  return a3;
}

void *sub_29A41BE0C(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    sub_29B2A0820(a2, a4);
  }

  return a2;
}

uint64_t sub_29A41BE64(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a4;
  v5[0] = a1;
  v5[1] = &v7;
  v5[2] = &v8;
  v6 = 0;
  if (a2 != a3)
  {
    sub_29A41BF2C(a4, a2);
  }

  v6 = 1;
  return sub_29A41BD28(v5);
}

void sub_29A41BF2C(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>::_AddRef();
}

void sub_29A41BFBC()
{
  sub_29A1DCEA8((v0 + 16));
  sub_29A1DCEA8((v0 + 8));
  sub_29A41B088();
}

void **sub_29A41BFE0(void **a1)
{
  sub_29A41C014(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29A41C014(void *result)
{
  v1 = result[2];
  if (v1 != result[1])
  {
    v2 = result;
    v3 = result[4];
    v2[2] = v1 - 88;
    sub_29A41B7B0(v3, (v1 - 88));
  }

  return result;
}

void *sub_29A41C05C(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

  sub_29A3780A4(a1, v6, a4, &v22);
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

void sub_29A41C28C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A41C2A4(va, 0);
  _Unwind_Resume(a1);
}

void sub_29A41C2A4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A41B28C(v2 + 16);
    }

    operator delete(v2);
  }
}

unint64_t sub_29A41C300(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v6 = a2;
  v4 = sub_29A41C354(v3 + 248, a2, &unk_29B4D6118, &v6);
  return sub_29A1E28B4((v4 + 4), a1[1]);
}

void *sub_29A41C354(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = bswap64(0x9E3779B97F4A7C55 * sub_29A0ECB5C(a2));
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
      v4 = v8 & (v9 - 1);
    }

    v12 = *(*a1 + 8 * v4);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v8)
        {
          v15 = sub_29A0ECB5C((i + 2));
          if (v15 == sub_29A0ECB5C(a2))
          {
            return i;
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
      }
    }
  }

  v16 = operator new(0x38uLL);
  i = v16;
  *v16 = 0;
  v16[1] = v8;
  v17 = (*a4)[1];
  v16[2] = **a4;
  v16[3] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1u, memory_order_relaxed);
  }

  v16[4] = 0;
  v16[5] = 0;
  v16[6] = 0;
  v18 = (*(a1 + 24) + 1);
  v19 = *(a1 + 32);
  if (!v9 || (v19 * v9) < v18)
  {
    v20 = 1;
    if (v9 >= 3)
    {
      v20 = (v9 & (v9 - 1)) != 0;
    }

    v21 = v20 | (2 * v9);
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

  v24 = *a1;
  v25 = *(*a1 + 8 * v4);
  if (v25)
  {
    *i = *v25;
LABEL_40:
    *v25 = i;
    goto LABEL_41;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v24 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v26 = *(*i + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v26 >= v9)
      {
        v26 %= v9;
      }
    }

    else
    {
      v26 &= v9 - 1;
    }

    v25 = (*a1 + 8 * v26);
    goto LABEL_40;
  }

LABEL_41:
  ++*(a1 + 24);
  return i;
}

void sub_29A41C5C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A41C5E0(va, 0);
  _Unwind_Resume(a1);
}

void sub_29A41C5E0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B2A0330(v2 + 16);
    }

    operator delete(v2);
  }
}

void *sub_29A41C640(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

  sub_29A41C888(a1, v6, a4, &v22);
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

void sub_29A41C870(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A41C964(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29A41C888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x20uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v10 = *a3;
  result = sub_29A41C90C((v8 + 2), &v10);
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29A41C90C(uint64_t a1, _DWORD **a2)
{
  v3 = *a2;
  v4 = sub_29A1E21F4(a1, *a2);
  sub_29A1E2240(v4 + 1, (v3 + 4));
  pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesDependencyData::PcpExpressionVariablesDependencyData((a1 + 8));
  return a1;
}

void sub_29A41C964(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A41B35C(v2 + 4);
    }

    operator delete(v2);
  }
}

uint64_t sub_29A41C9C0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29A41B1C0(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t sub_29A41CA1C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29A41B28C(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t sub_29A41CA78(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_29A0ECC48((*a1 + 248), a2);
  if (v4 || (result = sub_29B2A08F0(v7), (result & 1) != 0))
  {
    v5 = sub_29A362DD4(v4[4], v4[5], a1[1]);
    result = sub_29A362D50((v4 + 4), v5, v4[5]);
    if (v4[4] == v4[5])
    {
      return sub_29A41CB04((v3 + 248), v4);
    }
  }

  return result;
}

uint64_t sub_29A41CB04(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29B2A0330(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t sub_29A41CB64(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29A41B35C(v3 + 4);
    }

    operator delete(v3);
  }

  return v2;
}

void sub_29A41CBC0(void *a1)
{
  if (a1[3])
  {
    sub_29A41B0F4(a1, a1[2]);
    a1[2] = 0;
    v2 = a1[1];
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    a1[3] = 0;
  }
}

void sub_29A41CC1C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29A41B17C(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_29A41CC78(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29A41B248(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_29A41CCD4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29A41B318(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_29A41CD30(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29A41B3E0(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_29A41CE1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    sub_29A41CEC8(&a13, __p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A41CE40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t **a3@<X8>)
{
  v6 = operator new(0x30uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  result = sub_29A321960(v6 + 4, a2);
  *(a3 + 16) = 1;
  return result;
}

void sub_29A41CEAC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A41CEC8(v3, v2);
  _Unwind_Resume(a1);
}

void sub_29A41CEC8(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_29B2A093C(__p);
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *sub_29A41CF24(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = 0;
  if (v3)
  {
    sub_29A0ECFD4((v3 + 16), &v6);
    v4 = a1[1];
    a1[1] = v6;
    v6 = 0;
    if (v4)
    {
      sub_29B28D0B0(v4, &v6);
    }
  }

  return a1;
}

void sub_29A41CF84(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A41CF9C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      sub_29A41B7B0(v1, v3 - 22);
    }

    v1[1] = v2;

    operator delete(v4);
  }
}

void *sub_29A41D024(void *a1, uint64_t a2)
{
  v4 = sub_29A0ECB5C(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = bswap64(0x9E3779B97F4A7C55 * v4);
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
    v9 = v6 & (*&v5 - 1);
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
      if (v6 == v12)
      {
        v13 = sub_29A0ECB5C((v11 + 2));
        if (v13 == sub_29A0ECB5C(a2))
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

uint64_t sub_29A41D140(uint64_t a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_29A00C9A4();
  }

  if (0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A1587D0(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[88 * v2];
  *(&v16 + 1) = &v7[88 * v6];
  sub_29A41BC30(a1, v15, a2);
  *&v16 = v15 + 88;
  v8 = *(a1 + 8);
  v9 = &v15[*a1 - v8];
  sub_29A41BE64(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A41BFE0(&v14);
  return v13;
}

void sub_29A41D278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A41BFE0(va);
  _Unwind_Resume(a1);
}

std::string *pxrInternal__aapl__pxrReserved__::Pcp_Dump@<X0>(pxrInternal__aapl__pxrReserved__::PcpNodeRef *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, unsigned int a5@<W4>, std::string *a6@<X8>)
{
  ParentNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(a1);
  v179 = v12;
  a6->__r_.__value_.__l.__size_ = 0;
  a6->__r_.__value_.__r.__words[2] = 0;
  a6->__r_.__value_.__r.__words[0] = 0;
  v13 = sub_29A4235EC(a2, a1);
  v16 = a2 + 8;
  if (a2 + 8 == v13)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v13 + 48);
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Node %d:\n", v14, v15, v17);
  if (v162 >= 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  if (v162 >= 0)
  {
    v19 = HIBYTE(v162);
  }

  else
  {
    v19 = __p[1];
  }

  std::string::append(a6, v18, v19);
  if (SHIBYTE(v162) < 0)
  {
    operator delete(__p[0]);
  }

  if (ParentNode)
  {
    v22 = v179 + 1 == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = !v22;
  if (v22)
  {
    v26 = "NONE";
  }

  else
  {
    v24 = sub_29A4235EC(a2, &ParentNode);
    if (v16 == v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(v24 + 48);
    }

    LODWORD(v175.__r_.__value_.__l.__data_) = v25;
    sub_29A1F8E20(&v175);
    if (v177 >= 0)
    {
      v26 = &v176;
    }

    else
    {
      v26 = v176;
    }
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("    Parent node:              %s\n", v20, v21, v26);
  if (v162 >= 0)
  {
    v27 = __p;
  }

  else
  {
    v27 = __p[0];
  }

  if (v162 >= 0)
  {
    v28 = HIBYTE(v162);
  }

  else
  {
    v28 = __p[1];
  }

  std::string::append(a6, v27, v28);
  if (SHIBYTE(v162) < 0)
  {
    operator delete(__p[0]);
    if (!v23)
    {
      goto LABEL_38;
    }
  }

  else if (!v23)
  {
    goto LABEL_38;
  }

  if (v177 < 0)
  {
    operator delete(v176);
  }

LABEL_38:
  ArcType = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(a1);
  pxrInternal__aapl__pxrReserved__::TfEnum::GetDisplayName(&unk_2A204E198, ArcType, &v175);
  if ((v175.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &v175;
  }

  else
  {
    v32 = v175.__r_.__value_.__r.__words[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("    Type:                     %s\n", v30, v31, v32);
  if (v162 >= 0)
  {
    v33 = __p;
  }

  else
  {
    v33 = __p[0];
  }

  if (v162 >= 0)
  {
    v34 = HIBYTE(v162);
  }

  else
  {
    v34 = __p[1];
  }

  std::string::append(a6, v33, v34);
  if (SHIBYTE(v162) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v175.__r_.__value_.__l.__data_);
  }

  std::string::append(a6, "    DependencyType:           ");
  v36 = pxrInternal__aapl__pxrReserved__::PcpClassifyNodeDependency(a1, v35);
  pxrInternal__aapl__pxrReserved__::PcpDependencyFlagsToString(v36, &v175);
  v37 = std::string::append(&v175, "\n");
  v38 = *&v37->__r_.__value_.__l.__data_;
  v162 = v37->__r_.__value_.__r.__words[2];
  *__p = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  if (v162 >= 0)
  {
    v39 = __p;
  }

  else
  {
    v39 = __p[0];
  }

  if (v162 >= 0)
  {
    v40 = HIBYTE(v162);
  }

  else
  {
    v40 = __p[1];
  }

  std::string::append(a6, v39, v40);
  if (SHIBYTE(v162) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v175.__r_.__value_.__l.__data_);
  }

  Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(a1);
  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(Path);
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("    Source path:              <%s>\n", v43, v44, Text);
  if (v162 >= 0)
  {
    v45 = __p;
  }

  else
  {
    v45 = __p[0];
  }

  if (v162 >= 0)
  {
    v46 = HIBYTE(v162);
  }

  else
  {
    v46 = __p[1];
  }

  std::string::append(a6, v45, v46);
  if (SHIBYTE(v162) < 0)
  {
    operator delete(__p[0]);
  }

  LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(a1);
  sub_29A41E224(LayerStack);
  if ((v175.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v50 = &v175;
  }

  else
  {
    v50 = v175.__r_.__value_.__r.__words[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("    Source layer stack:       %s\n", v48, v49, v50);
  if (v162 >= 0)
  {
    v51 = __p;
  }

  else
  {
    v51 = __p[0];
  }

  if (v162 >= 0)
  {
    v52 = HIBYTE(v162);
  }

  else
  {
    v52 = __p[1];
  }

  std::string::append(a6, v51, v52);
  if (SHIBYTE(v162) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v175.__r_.__value_.__l.__data_);
  }

  v55 = "NONE";
  if (ParentNode && v179 != -1)
  {
    v56 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(&ParentNode);
    v55 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v56);
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("    Target path:              <%s>\n", v53, v54, v55);
  if (v162 >= 0)
  {
    v57 = __p;
  }

  else
  {
    v57 = __p[0];
  }

  if (v162 >= 0)
  {
    v58 = HIBYTE(v162);
  }

  else
  {
    v58 = __p[1];
  }

  std::string::append(a6, v57, v58);
  if (SHIBYTE(v162) < 0)
  {
    operator delete(__p[0]);
  }

  if (ParentNode)
  {
    v61 = v179 + 1 == 0;
  }

  else
  {
    v61 = 1;
  }

  v62 = !v61;
  if (v61)
  {
    v64 = "NONE";
  }

  else
  {
    v63 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(&ParentNode);
    sub_29A41E224(v63);
    if ((v175.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = &v175;
    }

    else
    {
      v64 = v175.__r_.__value_.__r.__words[0];
    }
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("    Target layer stack:       %s\n", v59, v60, v64);
  if (v162 >= 0)
  {
    v65 = __p;
  }

  else
  {
    v65 = __p[0];
  }

  if (v162 >= 0)
  {
    v66 = HIBYTE(v162);
  }

  else
  {
    v66 = __p[1];
  }

  std::string::append(a6, v65, v66);
  if (SHIBYTE(v162) < 0)
  {
    operator delete(__p[0]);
    if (!v62)
    {
      goto LABEL_116;
    }
  }

  else if (!v62)
  {
    goto LABEL_116;
  }

  if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v175.__r_.__value_.__l.__data_);
  }

LABEL_116:
  OriginNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginNode(a1);
  v174[0] = OriginNode;
  v174[1] = v68;
  if (v68 == v179 && ParentNode == OriginNode)
  {
    goto LABEL_136;
  }

  v70 = sub_29A4235EC(a2, v174);
  if (v16 == v70)
  {
    v73 = 0;
  }

  else
  {
    v73 = *(v70 + 48);
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("    Origin node:              %d\n", v71, v72, v73);
  if (v162 >= 0)
  {
    v74 = __p;
  }

  else
  {
    v74 = __p[0];
  }

  if (v162 >= 0)
  {
    v75 = HIBYTE(v162);
  }

  else
  {
    v75 = __p[1];
  }

  std::string::append(a6, v74, v75);
  if (SHIBYTE(v162) < 0)
  {
    operator delete(__p[0]);
  }

  SiblingNumAtOrigin = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSiblingNumAtOrigin(a1);
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("    Sibling # at origin:      %d\n", v77, v78, SiblingNumAtOrigin);
  v79 = v162 >= 0 ? __p : __p[0];
  v80 = v162 >= 0 ? HIBYTE(v162) : __p[1];
  std::string::append(a6, v79, v80);
  if ((SHIBYTE(v162) & 0x80000000) == 0)
  {
LABEL_136:
    if (!a5)
    {
      goto LABEL_192;
    }
  }

  else
  {
    operator delete(__p[0]);
    if (!a5)
    {
      goto LABEL_192;
    }
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("    Map to parent:\n", v68, v69);
  if (v162 >= 0)
  {
    v81 = __p;
  }

  else
  {
    v81 = __p[0];
  }

  if (v162 >= 0)
  {
    v82 = HIBYTE(v162);
  }

  else
  {
    v82 = __p[1];
  }

  std::string::append(a6, v81, v82);
  if (SHIBYTE(v162) < 0)
  {
    operator delete(__p[0]);
  }

  MapToParent = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToParent(a1);
  v86 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(MapToParent, v84, v85);
  pxrInternal__aapl__pxrReserved__::PcpMapFunction::GetString(v86, &v172);
  sub_29A008E78(&v170, "\n");
  sub_29A008E78(v168, "\n        ");
  pxrInternal__aapl__pxrReserved__::TfStringReplace(&v172, &v170, v168, &v173);
  if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v89 = &v173;
  }

  else
  {
    v89 = v173.__r_.__value_.__r.__words[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("        %s\n", v87, v88, v89);
  if (v162 >= 0)
  {
    v90 = __p;
  }

  else
  {
    v90 = __p[0];
  }

  if (v162 >= 0)
  {
    v91 = HIBYTE(v162);
  }

  else
  {
    v91 = __p[1];
  }

  std::string::append(a6, v90, v91);
  if (SHIBYTE(v162) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v173.__r_.__value_.__l.__data_);
  }

  if (v169 < 0)
  {
    operator delete(v168[0]);
  }

  if (v171 < 0)
  {
    operator delete(v170);
  }

  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v172.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("    Map to root:\n", v92, v93);
  if (v162 >= 0)
  {
    v94 = __p;
  }

  else
  {
    v94 = __p[0];
  }

  if (v162 >= 0)
  {
    v95 = HIBYTE(v162);
  }

  else
  {
    v95 = __p[1];
  }

  std::string::append(a6, v94, v95);
  if (SHIBYTE(v162) < 0)
  {
    operator delete(__p[0]);
  }

  MapToRoot = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToRoot(a1);
  v99 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(MapToRoot, v97, v98);
  pxrInternal__aapl__pxrReserved__::PcpMapFunction::GetString(v99, &v172);
  sub_29A008E78(&v170, "\n");
  sub_29A008E78(v168, "\n        ");
  pxrInternal__aapl__pxrReserved__::TfStringReplace(&v172, &v170, v168, &v173);
  if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v102 = &v173;
  }

  else
  {
    v102 = v173.__r_.__value_.__r.__words[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("        %s\n", v100, v101, v102);
  if (v162 >= 0)
  {
    v103 = __p;
  }

  else
  {
    v103 = __p[0];
  }

  if (v162 >= 0)
  {
    v104 = HIBYTE(v162);
  }

  else
  {
    v104 = __p[1];
  }

  std::string::append(a6, v103, v104);
  if (SHIBYTE(v162) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v173.__r_.__value_.__l.__data_);
  }

  if (v169 < 0)
  {
    operator delete(v168[0]);
  }

  if (v171 < 0)
  {
    operator delete(v170);
  }

  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v172.__r_.__value_.__l.__data_);
  }

LABEL_192:
  NamespaceDepth = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetNamespaceDepth(a1);
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("    Namespace depth:          %d\n", v106, v107, NamespaceDepth);
  if (v162 >= 0)
  {
    v108 = __p;
  }

  else
  {
    v108 = __p[0];
  }

  if (v162 >= 0)
  {
    v109 = HIBYTE(v162);
  }

  else
  {
    v109 = __p[1];
  }

  std::string::append(a6, v108, v109);
  if (SHIBYTE(v162) < 0)
  {
    operator delete(__p[0]);
  }

  DepthBelowIntroduction = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetDepthBelowIntroduction(a1, v110);
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("    Depth below introduction: %d\n", v112, v113, DepthBelowIntroduction);
  if (v162 >= 0)
  {
    v114 = __p;
  }

  else
  {
    v114 = __p[0];
  }

  if (v162 >= 0)
  {
    v115 = HIBYTE(v162);
  }

  else
  {
    v115 = __p[1];
  }

  std::string::append(a6, v114, v115);
  if (SHIBYTE(v162) < 0)
  {
    operator delete(__p[0]);
  }

  Permission = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPermission(a1);
  pxrInternal__aapl__pxrReserved__::TfEnum::GetDisplayName(&stru_2A2048D60, Permission, &v173);
  if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v119 = &v173;
  }

  else
  {
    v119 = v173.__r_.__value_.__r.__words[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("    Permission:               %s\n", v117, v118, v119);
  if (v162 >= 0)
  {
    v120 = __p;
  }

  else
  {
    v120 = __p[0];
  }

  if (v162 >= 0)
  {
    v121 = HIBYTE(v162);
  }

  else
  {
    v121 = __p[1];
  }

  std::string::append(a6, v120, v121);
  if (SHIBYTE(v162) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v173.__r_.__value_.__l.__data_);
  }

  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRestricted(a1))
  {
    v124 = "TRUE";
  }

  else
  {
    v124 = "FALSE";
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("    Is restricted:            %s\n", v122, v123, v124);
  if (v162 >= 0)
  {
    v125 = __p;
  }

  else
  {
    v125 = __p[0];
  }

  if (v162 >= 0)
  {
    v126 = HIBYTE(v162);
  }

  else
  {
    v126 = __p[1];
  }

  std::string::append(a6, v125, v126);
  if (SHIBYTE(v162) < 0)
  {
    operator delete(__p[0]);
  }

  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsInert(a1))
  {
    v129 = "TRUE";
  }

  else
  {
    v129 = "FALSE";
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("    Is inert:                 %s\n", v127, v128, v129);
  if (v162 >= 0)
  {
    v130 = __p;
  }

  else
  {
    v130 = __p[0];
  }

  if (v162 >= 0)
  {
    v131 = HIBYTE(v162);
  }

  else
  {
    v131 = __p[1];
  }

  std::string::append(a6, v130, v131);
  if (SHIBYTE(v162) < 0)
  {
    operator delete(__p[0]);
  }

  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::CanContributeSpecs(a1))
  {
    v134 = "TRUE";
  }

  else
  {
    v134 = "FALSE";
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("    Contribute specs:         %s\n", v132, v133, v134);
  if (v162 >= 0)
  {
    v135 = __p;
  }

  else
  {
    v135 = __p[0];
  }

  if (v162 >= 0)
  {
    v136 = HIBYTE(v162);
  }

  else
  {
    v136 = __p[1];
  }

  std::string::append(a6, v135, v136);
  if (SHIBYTE(v162) < 0)
  {
    operator delete(__p[0]);
  }

  SpecContributionRestrictedDepth = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSpecContributionRestrictedDepth(a1);
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("        Restricted at depth:  %zu\n", v138, v139, SpecContributionRestrictedDepth);
  if (v162 >= 0)
  {
    v140 = __p;
  }

  else
  {
    v140 = __p[0];
  }

  if (v162 >= 0)
  {
    v141 = HIBYTE(v162);
  }

  else
  {
    v141 = __p[1];
  }

  std::string::append(a6, v140, v141);
  if (SHIBYTE(v162) < 0)
  {
    operator delete(__p[0]);
  }

  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::HasSpecs(a1))
  {
    v144 = "TRUE";
  }

  else
  {
    v144 = "FALSE";
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("    Has specs:                %s\n", v142, v143, v144);
  if (v162 >= 0)
  {
    v145 = __p;
  }

  else
  {
    v145 = __p[0];
  }

  if (v162 >= 0)
  {
    v146 = HIBYTE(v162);
  }

  else
  {
    v146 = __p[1];
  }

  std::string::append(a6, v145, v146);
  if (SHIBYTE(v162) < 0)
  {
    operator delete(__p[0]);
  }

  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::HasSymmetry(a1))
  {
    v149 = "TRUE";
  }

  else
  {
    v149 = "FALSE";
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("    Has symmetry:             %s\n", v147, v148, v149);
  if (v162 >= 0)
  {
    v150 = __p;
  }

  else
  {
    v150 = __p[0];
  }

  if (v162 >= 0)
  {
    v151 = HIBYTE(v162);
  }

  else
  {
    v151 = __p[1];
  }

  std::string::append(a6, v150, v151);
  if (SHIBYTE(v162) < 0)
  {
    operator delete(__p[0]);
  }

  v152 = sub_29A4235EC(a3, a1);
  if (a3 + 8 != v152)
  {
    std::string::append(a6, "    Prim stack:\n");
    v153 = *(v152 + 48);
    if (v153 != *(v152 + 56))
    {
      __p[0] = 0;
      __p[1] = 0;
      v162 = 0;
      *&v173.__r_.__value_.__r.__words[1] = 0uLL;
      v173.__r_.__value_.__r.__words[0] = &v173.__r_.__value_.__l.__size_;
      sub_29A1DA6E4(v153);
    }
  }

  v154 = *(a1 + 1);
  v166 = *a1;
  v167 = v154;
  v155 = *v166[2];
  v156 = *(v155 + 48 * v154 + 28);
  __p[0] = v166;
  __p[1] = v156;
  v162 = v155;
  v163 = v166;
  v164 = 0xFFFFLL;
  v165 = v155;
  while (__p[1] != v164 || __p[0] != v163)
  {
    v157 = sub_29A41E444(__p);
    pxrInternal__aapl__pxrReserved__::Pcp_Dump(&v173, v157, a2, a3, a4, a5);
    if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v158 = &v173;
    }

    else
    {
      v158 = v173.__r_.__value_.__r.__words[0];
    }

    if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v173.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v173.__r_.__value_.__l.__size_;
    }

    std::string::append(a6, v158, size);
    if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v173.__r_.__value_.__l.__data_);
    }

    sub_29A41E490(__p);
  }

  return std::string::append(a6, "\n");
}

void sub_29A41DFB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (*(v50 + 23) < 0)
  {
    operator delete(*v50);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A41E224(uint64_t *a1)
{
  sub_29A00B6DC(&v7);
  v2 = *(v7 - 24);
  v3 = std::locale::classic();
  std::ios_base::getloc((&v7 + v2));
  std::ios_base::imbue((&v7 + v2), v3);
  std::locale::~locale(&v13);
  v4 = *(&v9[3].__locale_ + v2);
  if (v4)
  {
    (*(v4->__locale_ + 2))(v4, v3);
    std::locale::locale(&v12, v4 + 1);
    std::locale::operator=(v4 + 1, v3);
    std::locale::~locale(&v12);
  }

  std::locale::~locale(&v6);
  pxrInternal__aapl__pxrReserved__::operator<<(&v7, a1);
  std::stringbuf::str();
  v7 = *MEMORY[0x29EDC9538];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v8 = MEMORY[0x29EDC9570] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](&v11);
}

void sub_29A41E420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

void *sub_29A41E444(void *result)
{
  if (result[1] == result[4] && *result == result[3])
  {
    sub_29B2A0A34();
  }

  return result;
}

void *sub_29A41E490(void *a1)
{
  v2 = a1[1];
  if (v2 == a1[4] && *a1 == a1[3])
  {
    v4[0] = "tf/iterator.h";
    v4[1] = "operator++";
    v4[2] = 233;
    v4[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::PcpNodeRef_PrivateChildrenConstRange>::operator++() [T = pxrInternal__aapl__pxrReserved__::PcpNodeRef_PrivateChildrenConstRange, Reverse = false]";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "iterator exhausted");
  }

  else
  {
    a1[1] = *(a1[2] + 48 * v2 + 34);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::PcpDump(pxrInternal__aapl__pxrReserved__ *this@<X0>, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2@<X1>, unsigned int a3@<W2>, std::string *a4@<X8>)
{
  if (*this)
  {
    v5 = *(this + 1) == -1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    a4->__r_.__value_.__r.__words[0] = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    a4->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v7 = a2;
    v12[0] = 0;
    v12[1] = 0;
    v11 = v12;
    LODWORD(v9) = 0;
    sub_29A421810(&v11, this, &v9);
    v10[0] = 0;
    v10[1] = 0;
    v9 = v10;
    pxrInternal__aapl__pxrReserved__::Pcp_Dump(this, &v11, &v9, v7, a3, a4);
    sub_29A4236FC(&v9, v10[0]);
    sub_29A082B84(&v11, v12[0]);
  }
}

void sub_29A41E5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, char a12, void *a13)
{
  sub_29A4236FC(&a9, a10);
  sub_29A082B84(&a12, a13);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::PcpDump(pxrInternal__aapl__pxrReserved__ *this@<X0>, const pxrInternal__aapl__pxrReserved__::PcpPrimIndex *a2@<X1>, unsigned int a3@<W2>, std::string *a4@<X8>)
{
  v33 = a2;
  pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetRootNode(this);
  if (!v7 || v6 == -1)
  {
    a4->__r_.__value_.__r.__words[0] = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    a4->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v44[0] = 0;
    v44[1] = 0;
    v42[1] = 0;
    v43 = v44;
    v41 = v42;
    v42[0] = 0;
    pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeRange(this, 6u, &v37);
    v9 = v37;
    v8 = v38;
    v10 = v39;
    if (v37 != v39 || v38 != v40)
    {
      v11 = 0;
      v12 = v40 - 1;
      do
      {
        do
        {
          v13 = v8;
          *&v36[0] = v9;
          *(&v36[0] + 1) = v8;
          v35[0] = v36;
          v14 = sub_29A423670(&v43, v36, &unk_29B4D6118, v35);
          v15 = v11 + 1;
          *(v14 + 12) = v11;
          v8 = v13 + 1;
          ++v11;
        }

        while (v9 != v10);
        v11 = v15;
      }

      while (v12 != v13);
    }

    if (pxrInternal__aapl__pxrReserved__::PcpPrimIndex::IsUsd(this))
    {
      pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetNodeRange(this, 6u, &v37);
      v16 = v37;
      v17 = v38;
      v19 = v39;
      v18 = v40;
      while (v16 != v19 || v17 != v18)
      {
        *&v36[0] = v16;
        *(&v36[0] + 1) = v17;
        if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::HasSpecs(v36) && (pxrInternal__aapl__pxrReserved__::PcpNodeRef::CanContributeSpecs(v36) & 1) != 0)
        {
          LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(v36);
          v21 = sub_29A4184C4(LayerStack);
          Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v21);
          v24 = *Layers;
          v23 = *(Layers + 8);
          while (v24 != v23)
          {
            v25 = sub_29A3302A8(v24);
            Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(v36);
            if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasSpec(v25, Path))
            {
              v35[0] = v36;
              v27 = sub_29A423818(&v41, v36, &unk_29B4D6118, v35);
              v28 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(v36);
              v29 = v27[7];
              if (v29 >= v27[8])
              {
                v30 = sub_29A4238A8(v27 + 6, v24, v28);
              }

              else
              {
                sub_29A4239E4((v27 + 6), v27[7], v24, v28);
                v30 = v29 + 24;
                v27[7] = v29 + 24;
              }

              v27[7] = v30;
            }

            ++v24;
          }
        }

        ++v17;
      }
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetPrimRange(this, 6u, v36);
      sub_29A423C30(&v37, v36);
      if (!pxrInternal__aapl__pxrReserved__::PcpPrimIterator::equal(&v37, &v39))
      {
        sub_29A41EA6C(&v37, v36);
        sub_29A1DA6E4(v36);
      }
    }

    pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetRootNode(this);
    v37 = v31;
    v38 = v32;
    pxrInternal__aapl__pxrReserved__::Pcp_Dump(&v37, &v43, &v41, v33, a3, a4);
    sub_29A4236FC(&v41, v42[0]);
    sub_29A082B84(&v43, v44[0]);
  }
}

void sub_29A41E9B8(_Unwind_Exception *a1)
{
  sub_29A4236FC(v1 - 136, *(v1 - 128));
  sub_29A082B84(v1 - 112, *(v1 - 104));
  _Unwind_Resume(a1);
}

uint64_t sub_29A41EA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::PcpPrimIterator::equal(a1, (a1 + 16)))
  {
    sub_29B2A0ADC();
  }

  return pxrInternal__aapl__pxrReserved__::PcpPrimIterator::dereference(a1, a2);
}

uint64_t sub_29A41EAB0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29B2A0B2C(a1);
  return a1;
}

uint64_t sub_29A41EAE8(uint64_t a1)
{
  if (pxrInternal__aapl__pxrReserved__::PcpPrimIterator::equal(a1, (a1 + 16)))
  {
    sub_29B2A0B98();
  }

  return a1;
}

uint64_t sub_29A41EB20@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::PcpPrimIterator::dereference(a1, v4);
  sub_29B2A0984(a2, v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v5);
  return sub_29B29D5E4(v4);
}

void sub_29A41EB74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A41EAB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A41EB88(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29B2A0B2C(a1);
  return a1;
}

uint64_t sub_29A41EBC0(uint64_t a1)
{
  if (pxrInternal__aapl__pxrReserved__::PcpPrimIterator::equal(a1, (a1 + 16)))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::pair<pxrInternal__aapl__pxrReserved__::PcpPrimIterator, pxrInternal__aapl__pxrReserved__::PcpPrimIterator>>::operator++() [T = std::pair<pxrInternal__aapl__pxrReserved__::PcpPrimIterator, pxrInternal__aapl__pxrReserved__::PcpPrimIterator>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::PcpPrimIterator::increment(a1);
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::PcpNodeRef *pxrInternal__aapl__pxrReserved__::PcpDumpDotGraph(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::PcpPrimIndex *a2, const char *a3, uint64_t a4)
{
  pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetRootNode(this);
  v10[0] = v7;
  v10[1] = v8;
  return pxrInternal__aapl__pxrReserved__::PcpDumpDotGraph(v10, a2, a3, a4);
}

pxrInternal__aapl__pxrReserved__::PcpNodeRef *pxrInternal__aapl__pxrReserved__::PcpDumpDotGraph(pxrInternal__aapl__pxrReserved__::PcpNodeRef *this, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2, const char *a3, uint64_t a4)
{
  v16[19] = *MEMORY[0x29EDCA608];
  if (*this)
  {
    v4 = *(this + 1) == -1;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v8 = this;
    sub_29A0A0C08(&v14);
    if ((v15[*(v14 - 24) + 24] & 5) != 0)
    {
      v9 = "pcp/diagnostic.cpp";
      v10 = "PcpDumpDotGraph";
      v11 = 427;
      v12 = "void pxrInternal__aapl__pxrReserved__::PcpDumpDotGraph(const PcpNodeRef &, const char *, BOOL, BOOL)";
      v13 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 3, "Could not write to %s\n", a2);
    }

    else
    {
      sub_29A00911C(&v14, "digraph PcpPrimIndex {\n", 23);
      v10 = 0;
      v11 = 0;
      v9 = &v10;
      sub_29A41EED0(&v14, v8, a3, a4, &v9, 0);
      sub_29A082B84(&v9, v10);
      sub_29A00911C(&v14, "}\n", 2);
    }

    v14 = *MEMORY[0x29EDC9520];
    *&v15[*(v14 - 24) - 8] = *(MEMORY[0x29EDC9520] + 24);
    MEMORY[0x29C2C1D20](v15);
    std::ostream::~ostream();
    return MEMORY[0x29C2C4390](v16);
  }

  return this;
}

void sub_29A41EE9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_29A082B84(va, v5);
  sub_29A33F0A8(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A41EED0(void *a1, pxrInternal__aapl__pxrReserved__::PcpNodeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v133 = *MEMORY[0x29EDCA608];
  if (*a2)
  {
    v7 = *(a2 + 1) == -1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    sub_29A00911C(a1, "\t0 [label=...,shape=box,style=dotted];\n", 41);
    return 0;
  }

  CanContributeSpecs = pxrInternal__aapl__pxrReserved__::PcpNodeRef::CanContributeSpecs(a2);
  v15 = "dotted";
  if (CanContributeSpecs)
  {
    LayerStack = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(a2);
    Path = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(a2);
    if (pxrInternal__aapl__pxrReserved__::PcpComposeSiteHasPrimSpecs(LayerStack, Path))
    {
      v15 = "solid";
    }
  }

  v121 = 0;
  v122 = 0;
  v123 = 0;
  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsRestricted(a2))
  {
    sub_29A008E78(&__p, "permission denied");
    sub_29A091654(&v121, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsInert(a2))
  {
    sub_29A008E78(&__p, "inert");
    sub_29A091654(&v121, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsCulled(a2))
  {
    sub_29A008E78(&__p, "culled");
    sub_29A091654(&v121, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  memset(&v120, 0, sizeof(v120));
  if (v121 != v122)
  {
    pxrInternal__aapl__pxrReserved__::TfStringJoin(", ", &v121, &__p);
    v18 = std::string::insert(&__p, 0, "\\n");
    v19 = v18->__r_.__value_.__r.__words[0];
    v132.__r_.__value_.__r.__words[0] = v18->__r_.__value_.__l.__size_;
    *(v132.__r_.__value_.__r.__words + 7) = *(&v18->__r_.__value_.__r.__words[1] + 7);
    v20 = HIBYTE(v18->__r_.__value_.__r.__words[2]);
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v120.__r_.__value_.__l.__data_);
    }

    v120.__r_.__value_.__r.__words[0] = v19;
    v120.__r_.__value_.__l.__size_ = v132.__r_.__value_.__r.__words[0];
    *(&v120.__r_.__value_.__r.__words[1] + 7) = *(v132.__r_.__value_.__r.__words + 7);
    *(&v120.__r_.__value_.__s + 23) = v20;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if ((pxrInternal__aapl__pxrReserved__::PcpNodeRef::CanContributeSpecs(a2) & 1) == 0)
  {
    std::string::append(&v120, "\\nCANNOT contribute specs");
  }

  NamespaceDepth = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetNamespaceDepth(a2);
  DepthBelowIntroduction = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetDepthBelowIntroduction(a2, v22);
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("\\ndepth (below intro): %i (%i)", v24, v25, NamespaceDepth, DepthBelowIntroduction);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v120, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v132, v15);
  if (sub_29A4218E0(a5, a2))
  {
    std::string::append(&v132, ", filled");
  }

  sub_29A00B6DC(&__p);
  v28 = pxrInternal__aapl__pxrReserved__::PcpIdentifierFormatBaseName(&__p);
  v29 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetLayerStack(a2);
  v30 = pxrInternal__aapl__pxrReserved__::operator<<(v28, v29);
  v31 = sub_29A00911C(v30, "\\n", 2);
  v32 = sub_29A00911C(v31, "<", 1);
  v33 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetPath(a2);
  v34 = pxrInternal__aapl__pxrReserved__::operator<<(v32, v33);
  sub_29A00911C(v34, ">", 1);
  std::stringbuf::str();
  __p.__r_.__value_.__r.__words[0] = *MEMORY[0x29EDC9538];
  *(__p.__r_.__value_.__r.__words + *(__p.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x29EDC9538] + 24);
  __p.__r_.__value_.__l.__size_ = MEMORY[0x29EDC9570] + 16;
  if (v130 < 0)
  {
    operator delete(v129);
  }

  __p.__r_.__value_.__l.__size_ = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&__p.__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  MEMORY[0x29C2C4390](&v131);
  UniqueIdentifier = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetUniqueIdentifier(a2);
  v38 = &v118;
  if (v119 < 0)
  {
    v38 = v118;
  }

  v39 = &v120;
  if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v39 = v120.__r_.__value_.__r.__words[0];
  }

  v40 = &v132;
  if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v40 = v132.__r_.__value_.__r.__words[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("\t%zu [label=%s (%i)\\n%s, shape=box, style=%s];\n", v36, v37, UniqueIdentifier, v38, a6, v39, v40);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = &__p;
  }

  else
  {
    v41 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v42 = __p.__r_.__value_.__l.__size_;
  }

  sub_29A00911C(a1, v41, v42);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  memset(&v117, 0, sizeof(v117));
  if (a4)
  {
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("\n", v43, v44);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = &__p;
    }

    else
    {
      v45 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v46 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(&v117, v45, v46);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    MapToParent = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToParent(a2);
    v50 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(MapToParent, v48, v49);
    pxrInternal__aapl__pxrReserved__::PcpMapFunction::GetString(v50, &v115);
    v51 = std::string::insert(&v115, 0, "-- mapToParent:\n");
    v52 = *&v51->__r_.__value_.__l.__data_;
    v116.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
    *&v116.__r_.__value_.__l.__data_ = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    v53 = std::string::append(&v116, "\n");
    v54 = *&v53->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v54;
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = &__p;
    }

    else
    {
      v55 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v56 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v56 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(&v117, v55, v56);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v116.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v115.__r_.__value_.__l.__data_);
    }

    if (*pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToRoot(a2))
    {
      MapToRoot = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToRoot(a2);
      v60 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(MapToRoot, v58, v59);
      if (!pxrInternal__aapl__pxrReserved__::PcpMapFunction::IsIdentity(v60))
      {
        v61 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetMapToRoot(a2);
        v64 = pxrInternal__aapl__pxrReserved__::PcpMapExpression::Evaluate(v61, v62, v63);
        pxrInternal__aapl__pxrReserved__::PcpMapFunction::GetString(v64, &v115);
        v65 = std::string::insert(&v115, 0, "-- mapToRoot:\n");
        v66 = *&v65->__r_.__value_.__l.__data_;
        v116.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
        *&v116.__r_.__value_.__l.__data_ = v66;
        v65->__r_.__value_.__l.__size_ = 0;
        v65->__r_.__value_.__r.__words[2] = 0;
        v65->__r_.__value_.__r.__words[0] = 0;
        v67 = std::string::append(&v116, "\n");
        v68 = *&v67->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v67->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v68;
        v67->__r_.__value_.__l.__size_ = 0;
        v67->__r_.__value_.__r.__words[2] = 0;
        v67->__r_.__value_.__r.__words[0] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v69 = &__p;
        }

        else
        {
          v69 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v70 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v70 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v117, v69, v70);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v116.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v115.__r_.__value_.__l.__data_);
        }
      }
    }

    sub_29A008E78(&v116, "\n");
    sub_29A008E78(&v115, "\\l");
    pxrInternal__aapl__pxrReserved__::TfStringReplace(&v117, &v116, &v115.__r_.__value_.__l.__data_, &__p);
    if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v117.__r_.__value_.__l.__data_);
    }

    v117 = __p;
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v115.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v116.__r_.__value_.__l.__data_);
    }
  }

  memset(&v116, 0, sizeof(v116));
  ArcType = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetArcType(a2);
  if (ArcType <= 3)
  {
    switch(ArcType)
    {
      case 1:
        v78 = &v117;
        if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v78 = v117.__r_.__value_.__r.__words[0];
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf("color=green, label=inherit%s", v72, v73, v78);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v75 = &__p;
        }

        else
        {
          v75 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v76 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v76 = __p.__r_.__value_.__l.__size_;
        }

        break;
      case 2:
        pxrInternal__aapl__pxrReserved__::TfStringPrintf("color=orange, label=variant", v72, v73);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v75 = &__p;
        }

        else
        {
          v75 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v76 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v76 = __p.__r_.__value_.__l.__size_;
        }

        break;
      case 3:
        v77 = &v117;
        if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v77 = v117.__r_.__value_.__r.__words[0];
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf("color=purple, label=relocate%s", v72, v73, v77);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v75 = &__p;
        }

        else
        {
          v75 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v76 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v76 = __p.__r_.__value_.__l.__size_;
        }

        break;
      default:
        goto LABEL_150;
    }

    goto LABEL_148;
  }

  if (ArcType <= 5)
  {
    if (ArcType == 4)
    {
      v79 = &v117;
      if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v79 = v117.__r_.__value_.__r.__words[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("color=red, label=reference%s", v72, v73, v79);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v75 = &__p;
      }

      else
      {
        v75 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v76 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v76 = __p.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      v74 = &v117;
      if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v74 = v117.__r_.__value_.__r.__words[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("color=indigo, label=payload%s", v72, v73, v74);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v75 = &__p;
      }

      else
      {
        v75 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v76 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v76 = __p.__r_.__value_.__l.__size_;
      }
    }

LABEL_148:
    std::string::append(&v116, v75, v76);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_150;
  }

  if (ArcType == 6)
  {
    v80 = &v117;
    if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v80 = v117.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("color=sienna, label=specialize%s", v72, v73, v80);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v75 = &__p;
    }

    else
    {
      v75 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v76 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v76 = __p.__r_.__value_.__l.__size_;
    }

    goto LABEL_148;
  }

  if (ArcType == 7)
  {
    __p.__r_.__value_.__r.__words[0] = "pcp/diagnostic.cpp";
    __p.__r_.__value_.__l.__size_ = "_WriteGraph";
    __p.__r_.__value_.__r.__words[2] = 348;
    *&v125 = "int pxrInternal__aapl__pxrReserved__::_WriteGraph(std::ostream &, const PcpNodeRef &, BOOL, BOOL, const Pcp_NodeSet &, int)";
    BYTE8(v125) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Invalid arc type");
  }

LABEL_150:
  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginNode(a2))
  {
    if (v81 != -1)
    {
      OriginNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginNode(a2);
      v84 = v83;
      ParentNode = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(a2);
      if (v84 != v86 || OriginNode != ParentNode)
      {
        v87 = HIBYTE(v116.__r_.__value_.__r.__words[2]);
        if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v87 = v116.__r_.__value_.__l.__size_;
        }

        if (v87)
        {
          std::string::append(&v116, ", ");
        }

        std::string::append(&v116, "style=dashed");
      }
    }
  }

  if (!pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(a2) || v88 == -1)
  {
    goto LABEL_170;
  }

  v115.__r_.__value_.__r.__words[0] = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(a2);
  v115.__r_.__value_.__l.__size_ = v89;
  v90 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetUniqueIdentifier(&v115);
  v91 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetUniqueIdentifier(a2);
  v94 = &v116;
  if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v94 = v116.__r_.__value_.__r.__words[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("\t%zu -> %zu [%s];\n", v92, v93, v90, v91, v94);
  v95 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
  v96 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
  sub_29A00911C(a1, v95, v96);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (a3)
    {
LABEL_171:
      if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginNode(a2))
      {
        if (v97 != -1)
        {
          v98 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginNode(a2);
          v100 = v99;
          v101 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetParentNode(a2);
          if (v100 != v102 || v98 != v101)
          {
            v103 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetUniqueIdentifier(a2);
            v115.__r_.__value_.__r.__words[0] = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetOriginNode(a2);
            v115.__r_.__value_.__l.__size_ = v104;
            v105 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetUniqueIdentifier(&v115);
            pxrInternal__aapl__pxrReserved__::TfStringPrintf("\t%zu -> %zu [style=dotted label=origin constraint=false];\n", v106, v107, v103, v105);
            v108 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            v109 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
            sub_29A00911C(a1, v108, v109);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }
      }
    }
  }

  else
  {
LABEL_170:
    if (a3)
    {
      goto LABEL_171;
    }
  }

  v8 = (a6 + 1);
  v110 = *(a2 + 1);
  v127 = *a2;
  v128 = v110;
  v111 = **(v127 + 16);
  v112 = *(v111 + 48 * v110 + 28);
  __p.__r_.__value_.__r.__words[0] = v127;
  __p.__r_.__value_.__l.__size_ = v112;
  __p.__r_.__value_.__r.__words[2] = v111;
  *&v125 = v127;
  *(&v125 + 1) = 0xFFFFLL;
  v126 = v111;
  while (*&__p.__r_.__value_.__l.__data_ != v125)
  {
    v113 = sub_29A41E444(&__p);
    v8 = sub_29A41EED0(a1, v113, a3, a4, a5, v8);
    sub_29A41E490(&__p);
  }

  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v116.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v117.__r_.__value_.__l.__data_);
  }

  if (v119 < 0)
  {
    operator delete(v118);
  }

  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v132.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v120.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = &v121;
  sub_29A012C90(&__p);
  return v8;
}

void sub_29A41FB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a53 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (*(v53 - 105) < 0)
  {
    operator delete(*(v53 - 128));
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  a39 = &a45;
  sub_29A012C90(&a39);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Pcp_FormatSite(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::PcpSite *a2)
{
  sub_29A00B6DC(&v5);
  v3 = pxrInternal__aapl__pxrReserved__::PcpIdentifierFormatBaseName(&v5);
  pxrInternal__aapl__pxrReserved__::operator<<(v3, this);
  std::stringbuf::str();
  v5 = *MEMORY[0x29EDC9538];
  *(&v5 + *(v5 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](&v9);
}

void sub_29A41FE94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A00B848(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Pcp_FormatSite(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::PcpLayerStackSite *a2)
{
  sub_29A00B6DC(&v5);
  v3 = pxrInternal__aapl__pxrReserved__::PcpIdentifierFormatBaseName(&v5);
  pxrInternal__aapl__pxrReserved__::operator<<(v3, this);
  std::stringbuf::str();
  v5 = *MEMORY[0x29EDC9538];
  *(&v5 + *(v5 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](&v9);
}

void sub_29A41FFFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A00B848(va);
  _Unwind_Resume(a1);
}

double pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager::Pcp_IndexingOutputManager(pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager *this)
{
  *(this + 67) = 0;
  *(this + 70) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 8) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  __dmb(0xBu);
  *this = 0;
  __dmb(0xBu);
  *(this + 65) = 0;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 1) = this + 528;
  __dmb(0xBu);
  *this = 1;
  return result;
}

{
  *(this + 67) = 0;
  *(this + 70) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 8) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  __dmb(0xBu);
  *this = 0;
  __dmb(0xBu);
  *(this + 65) = 0;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 1) = this + 528;
  __dmb(0xBu);
  *this = 1;
  return result;
}

void pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager::PushIndex(pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager *this, const pxrInternal__aapl__pxrReserved__::PcpPrimIndex *a2, const pxrInternal__aapl__pxrReserved__::PcpPrimIndex *a3, const pxrInternal__aapl__pxrReserved__::PcpLayerStackSite *a4)
{
  v17 = a3;
  v6 = sub_29A420288(this, a2);
  sub_29A4202F4(v6);
  v7 = v6[1];
  if (v7 >= v6[2])
  {
    v9 = sub_29A423DAC(v6, &v17, a4 + 2);
  }

  else
  {
    *v7 = a3;
    sub_29A1E21F4((v7 + 8), a4 + 2);
    sub_29A1E2240((v7 + 12), a4 + 3);
    *(v7 + 73) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    v9 = v7 + 96;
  }

  v6[1] = v9;
  pxrInternal__aapl__pxrReserved__::Pcp_FormatSite(v14, a4, v8);
  if (v15 >= 0)
  {
    v12 = v14;
  }

  else
  {
    v12 = v14[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Computing prim index for %s", v10, v11, v12);
  v13[0] = 0;
  v13[1] = -1;
  sub_29A42034C(v6, &__p, v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_29A420254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A420288(uint64_t *a1, uint64_t a2)
{
  v7 = a2;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  sub_29A421948(a1, &v4, &v7);
  v2 = v6;
  v6 = 0;
  sub_29A0F845C(&v4);
  return v2 + 24;
}

void sub_29A4202DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a12 = 0;
  sub_29A0F845C(&a10);
  _Unwind_Resume(a1);
}

void sub_29A4202F4(uint64_t *a1)
{
  v1 = a1[1];
  if (*a1 != v1 && *(v1 - 8) == 1)
  {
    sub_29A422380(a1);
    sub_29A012CE4((*(a1[1] - 24) - 24));
    *(a1[1] - 8) = 0;
  }
}

void sub_29A42034C(uint64_t a1, std::string *a2, void *a3)
{
  if (*a1 != *(a1 + 8) || (sub_29B2A0BE8(v13) & 1) != 0)
  {
    sub_29A422770(a1, a2);
    sub_29A4202F4(a1);
    v6 = *(a1 + 8);
    v7 = *(v6 - 24);
    if (v7 >= *(v6 - 16))
    {
      v10 = sub_29A422998(v6 - 32, a2);
    }

    else
    {
      v8 = *&a2->__r_.__value_.__l.__data_;
      *(v7 + 16) = *(&a2->__r_.__value_.__l + 2);
      *v7 = v8;
      a2->__r_.__value_.__l.__size_ = 0;
      a2->__r_.__value_.__r.__words[2] = 0;
      a2->__r_.__value_.__r.__words[0] = 0;
      *(v7 + 32) = 0;
      v9 = (v7 + 32);
      *(v9 - 1) = v9;
      v9[1] = 0;
      v9[2] = 0;
      v10 = (v9 + 5);
      v9[3] = 0;
      v9[4] = 0;
    }

    *(v6 - 24) = v10;
    if (*a3)
    {
      if (a3[1] != -1)
      {
        v11 = *(*(a1 + 8) - 24);
        v12 = *(v11 - 5);
        v11 -= 5;
        sub_29A082B84((v11 - 1), v12);
        *v11 = 0;
        v11[1] = 0;
        *(v11 - 1) = v11;
        sub_29A422D2C(v11 - 1, a3, a3);
        sub_29A4205E4(a1);
      }
    }

    sub_29A420894(a1);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager::PopIndex(pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager *this, const pxrInternal__aapl__pxrReserved__::PcpPrimIndex *a2)
{
  v4 = sub_29A420288(this, a2);
  v5 = v4[1];
  if (*v4 == v5)
  {
    *&__p = "pcp/diagnostic.cpp";
    *(&__p + 1) = "PopIndex";
    v12 = 800;
    v13 = "void pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager::PopIndex(const PcpPrimIndex *)";
    v14 = 0;
    result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "!info->indexStack.empty()", 0);
    if (!result)
    {
      return result;
    }

    v5 = v4[1];
  }

  if (*(v5 - 32) == *(v5 - 24))
  {
    v9[0] = "pcp/diagnostic.cpp";
    v9[1] = "PopIndex";
    v9[2] = 801;
    v9[3] = "void pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager::PopIndex(const PcpPrimIndex *)";
    v10 = 0;
    result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "!info->indexStack.back().phases.empty()", 0);
    if (!result)
    {
      return result;
    }

    v5 = v4[1];
  }

  v6 = (*(v5 - 24) - 24);
  std::operator+<char>();
  sub_29A091654(v6, &__p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  sub_29A4205E4(v4);
  sub_29A420894(v4);
  sub_29A420EA8(v4);
  v7 = v4[1] - 96;
  result = sub_29A422204(v4, v7);
  v4[1] = v7;
  if (*v4 == v7)
  {
    sub_29A420F98(v4);
    *&__p = a2;
    return sub_29A423040(this, &__p);
  }

  return result;
}

void sub_29A4205C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A4205E4(void *a1)
{
  result = sub_29A418240(3);
  if (result)
  {
    v3 = a1[1];
    if (*a1 == v3)
    {
      v11[0] = "pcp/diagnostic.cpp";
      v11[1] = "UpdateCurrentDotGraph";
      v12 = 634;
      v13 = "void pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager::_DebugInfo::UpdateCurrentDotGraph()";
      LOBYTE(v14[0].__locale_) = 0;
      result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v11, "!indexStack.empty()", 0);
      if (!result)
      {
        return result;
      }

      v3 = a1[1];
    }

    if (*(v3 - 32) == *(v3 - 24))
    {
      *&v17 = "pcp/diagnostic.cpp";
      *(&v17 + 1) = "UpdateCurrentDotGraph";
      v18 = 635;
      v19 = "void pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager::_DebugInfo::UpdateCurrentDotGraph()";
      v20 = 0;
      result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v17, "!indexStack.back().phases.empty()", 0);
      if (!result)
      {
        return result;
      }

      v3 = a1[1];
    }

    v4 = *(v3 - 24);
    sub_29A008864(v11);
    v5 = sub_29A418240(4);
    pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetRootNode(*(v3 - 96));
    *&v17 = v6;
    *(&v17 + 1) = v7;
    sub_29A41EED0(&v12, &v17, 1, v5, v4 - 48, 0);
    std::stringbuf::str();
    v8 = (v3 - 80);
    if (*(v3 - 57) < 0)
    {
      operator delete(*v8);
    }

    v9 = v17;
    *(v3 - 64) = v18;
    *v8 = v9;
    *(v3 - 8) = 1;
    v11[0] = *MEMORY[0x29EDC9528];
    v10 = *(MEMORY[0x29EDC9528] + 72);
    *(v11 + *(v11[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
    v12 = v10;
    v13 = (MEMORY[0x29EDC9570] + 16);
    if (v15 < 0)
    {
      operator delete(v14[7].__locale_);
    }

    v13 = (MEMORY[0x29EDC9568] + 16);
    std::locale::~locale(v14);
    std::iostream::~basic_iostream();
    return MEMORY[0x29C2C4390](&v16);
  }

  return result;
}

void sub_29A420894(std::string::size_type *a1)
{
  if (sub_29A418240(3))
  {
    v2 = a1[1];
    if (*a1 == v2)
    {
      v49.__r_.__value_.__r.__words[0] = "pcp/diagnostic.cpp";
      v49.__r_.__value_.__l.__size_ = "UpdateCurrentDotGraphLabel";
      v49.__r_.__value_.__r.__words[2] = 665;
      v50 = "void pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager::_DebugInfo::UpdateCurrentDotGraphLabel()";
      v51 = 0;
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v49, "!indexStack.empty()", 0))
      {
        return;
      }

      v2 = a1[1];
    }

    if (*(v2 - 32) == *(v2 - 24))
    {
      v46.__r_.__value_.__r.__words[0] = "pcp/diagnostic.cpp";
      v46.__r_.__value_.__l.__size_ = "UpdateCurrentDotGraphLabel";
      v46.__r_.__value_.__r.__words[2] = 666;
      v47 = "void pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager::_DebugInfo::UpdateCurrentDotGraphLabel()";
      v48 = 0;
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v46, "!indexStack.back().phases.empty()", 0))
      {
        return;
      }

      v2 = a1[1];
    }

    v3 = *(v2 - 24);
    v4 = (v3 - 72);
    sub_29A008E78(v44, "\n<table cellborder=0 border=0>\n<tr><td balign=left align=left>\n%s\n</td></tr>\n<tr><td bgcolor=black height=1 cellpadding=0>\n</td></tr>\n<tr><td balign=left align=left>\nTasks:<br/>\n%s\n</td></tr>\n</table>");
    v7 = *a1;
    v8 = a1[1];
    if (*a1 == v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = 0;
      do
      {
        v9 -= 0x71C71C71C71C71C7 * ((*(v7 + 72) - *(v7 + 64)) >> 3);
        v7 += 96;
      }

      while (v7 != v8);
    }

    if (*(v3 - 49) < 0)
    {
      v10 = *v4;
    }

    else
    {
      v10 = v3 - 72;
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%d. %s\n", v5, v6, v9, v10);
    v13 = (v9 - 1);
    v14 = *(v3 - 16);
    v42.__r_.__value_.__r.__words[0] = *(v3 - 24);
    v42.__r_.__value_.__l.__size_ = v14;
    while (v42.__r_.__value_.__r.__words[0] != v42.__r_.__value_.__l.__size_)
    {
      sub_29A17EFC8(&v42, v11, v12);
      std::operator+<char>();
      v15 = std::string::append(&v46, "\n");
      v16 = *&v15->__r_.__value_.__l.__data_;
      v49.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&v49.__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v49;
      }

      else
      {
        v17 = v49.__r_.__value_.__r.__words[0];
      }

      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v49.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v49.__r_.__value_.__l.__size_;
      }

      std::string::append(&v43, v17, size);
      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      sub_29A17F188(&v42);
    }

    pxrInternal__aapl__pxrReserved__::TfGetXmlEscapedString(&v43, &v46);
    sub_29A008E78(&v42, "\n");
    sub_29A008E78(__p, "<br/>\n");
    pxrInternal__aapl__pxrReserved__::TfStringReplace(&v46, &v42, __p, &v49);
    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    v43 = v49;
    *(&v49.__r_.__value_.__s + 23) = 0;
    v49.__r_.__value_.__s.__data_[0] = 0;
    if (v41 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    memset(&v42, 0, sizeof(v42));
    v19 = *a1;
    v49.__r_.__value_.__r.__words[0] = a1[1];
    v49.__r_.__value_.__l.__size_ = v49.__r_.__value_.__r.__words[0];
    v49.__r_.__value_.__r.__words[2] = v19;
    v50 = v19;
    v20 = 5;
    while (v49.__r_.__value_.__l.__size_ != v50 && v20 != 0)
    {
      v24 = *(sub_29A422E38(&v49) + 8);
      v46.__r_.__value_.__r.__words[0] = *(v24 - 24);
      v46.__r_.__value_.__l.__size_ = v46.__r_.__value_.__r.__words[0];
      v46.__r_.__value_.__r.__words[2] = *(v24 - 32);
      v47 = v46.__r_.__value_.__r.__words[2];
      while (v46.__r_.__value_.__l.__size_ != v47)
      {
        if (sub_29A422E74(&v46, v22, v23) != v4)
        {
          v27 = *(sub_29A422EFC(&v46) + 8);
          v28 = (v27 - 72);
          if (*(v27 - 49) < 0)
          {
            v28 = *v28;
          }

          pxrInternal__aapl__pxrReserved__::TfStringPrintf("%d. %s\n", v25, v26, v13, v28);
          if ((v41 & 0x80u) == 0)
          {
            v29 = __p;
          }

          else
          {
            v29 = __p[0];
          }

          if ((v41 & 0x80u) == 0)
          {
            v30 = v41;
          }

          else
          {
            v30 = __p[1];
          }

          std::string::append(&v42, v29, v30);
          if (v41 < 0)
          {
            operator delete(__p[0]);
          }

          v13 = (v13 - 1);
          if (!--v20)
          {
            break;
          }
        }

        sub_29A422F38(&v46);
      }

      sub_29A422FBC(&v49);
    }

    pxrInternal__aapl__pxrReserved__::TfGetXmlEscapedString(&v42, &v46);
    sub_29A008E78(__p, "\n");
    sub_29A008E78(v38, "<br/>\n");
    pxrInternal__aapl__pxrReserved__::TfStringReplace(&v46, __p, v38, &v49);
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    v42 = v49;
    *(&v49.__r_.__value_.__s + 23) = 0;
    v49.__r_.__value_.__s.__data_[0] = 0;
    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    if (v41 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (v45 >= 0)
    {
      v33 = v44;
    }

    else
    {
      v33 = v44[0];
    }

    v34 = &v43;
    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v34 = v43.__r_.__value_.__r.__words[0];
    }

    v35 = &v42;
    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v35 = v42.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf(v33, v31, v32, v34, v35);
    v36 = (v2 - 56);
    if (*(v2 - 33) < 0)
    {
      operator delete(*v36);
    }

    v37 = *&v49.__r_.__value_.__l.__data_;
    *(v2 - 40) = *(&v49.__r_.__value_.__l + 2);
    *v36 = v37;
    *(v2 - 8) = 1;
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (v45 < 0)
    {
      operator delete(v44[0]);
    }
  }
}

void sub_29A420D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A420EA8(uint64_t *a1)
{
  v2 = a1[1];
  if (*a1 == v2)
  {
    v6[0] = "pcp/diagnostic.cpp";
    v6[1] = "EndPhase";
    v6[2] = 515;
    v6[3] = "void pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager::_DebugInfo::EndPhase()";
    v7 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v6, "!indexStack.empty()", 0))
    {
      return;
    }

    v2 = a1[1];
  }

  if (*(v2 - 32) != *(v2 - 24) || (sub_29B2A0C30(v5) & 1) != 0)
  {
    sub_29A4202F4(a1);
    v3 = a1[1];
    v4 = *(v3 - 24) - 72;
    sub_29A4222F8(v3 - 32, v4);
    *(v3 - 24) = v4;
    if (*(a1[1] - 32) != *(a1[1] - 24))
    {
      sub_29A4205E4(a1);
      sub_29A420894(a1);
      *(a1[1] - 8) = 0;
    }
  }
}

void sub_29A420F98(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2A14F7E20, memory_order_acquire) & 1) == 0)
  {
    sub_29B2A0C78();
  }

  std::mutex::lock(&stru_2A14F7DE0);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  while (v2 != v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(v2);
    v2 += 24;
  }

  std::mutex::unlock(&stru_2A14F7DE0);
}

void pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager::BeginPhase(uint64_t *a1, uint64_t a2, std::string *a3, void *a4)
{
  v6 = sub_29A420288(a1, a2);

  sub_29A42034C(v6, a3, a4);
}

void pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager::EndPhase(pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager *this, const pxrInternal__aapl__pxrReserved__::PcpPrimIndex *a2)
{
  v2 = sub_29A420288(this, a2);

  sub_29A420EA8(v2);
}

void pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager::Update(uint64_t *a1, uint64_t a2, __int128 *a3, std::string *a4)
{
  v6 = sub_29A420288(a1, a2);

  sub_29A4210D0(v6, a3, a4);
}

void sub_29A4210D0(uint64_t a1, __int128 *a2, std::string *a3)
{
  v12[1] = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 8);
  if (*a1 == v6)
  {
    v9[0] = "pcp/diagnostic.cpp";
    v9[1] = "Update";
    v9[2] = 533;
    v9[3] = "void pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager::_DebugInfo::Update(const PcpNodeRef &, std::string &&)";
    v10 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "!indexStack.empty()", 0))
    {
      return;
    }

    v6 = *(a1 + 8);
  }

  if (*(v6 - 32) != *(v6 - 24) || (sub_29B2A0CE0(v8) & 1) != 0)
  {
    sub_29A422770(a1, a3);
    sub_29A4202F4(a1);
    v7 = *(*(a1 + 8) - 24);
    sub_29A091654((v7 - 24), a3);
    v11 = *a2;
    sub_29A4231D4((v7 - 48), &v11, v12);
    sub_29A4205E4(a1);
    sub_29A420894(a1);
    sub_29A4202F4(a1);
  }
}

void pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager::Msg(uint64_t *a1, uint64_t a2, std::string *a3, uint64_t a4)
{
  v6 = sub_29A420288(a1, a2);

  sub_29A421244(v6, a3, a4);
}

void sub_29A421244(uint64_t a1, std::string *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (*a1 == v6)
  {
    v16[0] = "pcp/diagnostic.cpp";
    v16[1] = "Msg";
    v16[2] = 551;
    v16[3] = "void pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager::_DebugInfo::Msg(std::string &&, const Pcp_NodeSet &)";
    v17 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v16, "!indexStack.empty()", 0))
    {
      return;
    }

    v6 = *(a1 + 8);
  }

  if (*(v6 - 32) != *(v6 - 24) || (sub_29B2A0D28(v15) & 1) != 0)
  {
    sub_29A422770(a1, a2);
    v7 = *(*(a1 + 8) - 24);
    if (*(v7 - 32) == *(a3 + 16))
    {
      v8 = *(v7 - 48);
      if (v8 == (v7 - 40))
      {
LABEL_26:
        sub_29A091654((v7 - 24), a2);
        sub_29A420894(a1);
        return;
      }

      v9 = *a3;
      while (1)
      {
        v10 = v8[5] == v9[5] && v8[4] == v9[4];
        if (!v10)
        {
          break;
        }

        v11 = v8[1];
        v12 = v8;
        if (v11)
        {
          do
          {
            v8 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v8 = v12[2];
            v10 = *v8 == v12;
            v12 = v8;
          }

          while (!v10);
        }

        v13 = v9[1];
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v9[2];
            v10 = *v14 == v9;
            v9 = v14;
          }

          while (!v10);
        }

        v9 = v14;
        if (v8 == (v7 - 40))
        {
          goto LABEL_26;
        }
      }
    }

    sub_29A4202F4(a1);
    if (v7 - 48 != a3)
    {
      sub_29A423358((v7 - 48), *a3, (a3 + 8));
    }

    sub_29A4205E4(a1);
    goto LABEL_26;
  }
}

void pxrInternal__aapl__pxrReserved__::Pcp_PrimIndexingDebug::_PushIndex(const pxrInternal__aapl__pxrReserved__::PcpPrimIndex **this, const pxrInternal__aapl__pxrReserved__::PcpLayerStackSite *a2)
{
  v4 = atomic_load(&qword_2A1741E20);
  if (!v4)
  {
    v4 = sub_29A424158(&qword_2A1741E20);
  }

  v6 = *this;
  v5 = this[1];

  pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager::PushIndex(v4, v5, v6, a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::Pcp_PrimIndexingDebug::_PopIndex(pxrInternal__aapl__pxrReserved__::Pcp_PrimIndexingDebug *this)
{
  v2 = atomic_load(&qword_2A1741E20);
  if (!v2)
  {
    v2 = sub_29A424158(&qword_2A1741E20);
  }

  v3 = *(this + 1);

  return pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager::PopIndex(v2, v3);
}

uint64_t *pxrInternal__aapl__pxrReserved__::Pcp_IndexingPhaseScope::Pcp_IndexingPhaseScope(uint64_t *a1, uint64_t a2, void *a3, std::string *a4)
{
  *a1 = a2;
  v7 = atomic_load(&qword_2A1741E20);
  if (!v7)
  {
    v7 = sub_29A424158(&qword_2A1741E20);
  }

  v8 = sub_29A420288(v7, *a1);
  sub_29A42034C(v8, a4, a3);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::Pcp_IndexingPhaseScope::_EndScope(pxrInternal__aapl__pxrReserved__::Pcp_IndexingPhaseScope *this)
{
  v2 = atomic_load(&qword_2A1741E20);
  if (!v2)
  {
    v2 = sub_29A424158(&qword_2A1741E20);
  }

  v3 = sub_29A420288(v2, *this);

  sub_29A420EA8(v3);
}

void pxrInternal__aapl__pxrReserved__::Pcp_IndexingUpdate(uint64_t a1, __int128 *a2, std::string *a3)
{
  v6 = atomic_load(&qword_2A1741E20);
  if (!v6)
  {
    v6 = sub_29A424158(&qword_2A1741E20);
  }

  v7 = sub_29A420288(v6, a1);

  sub_29A4210D0(v7, a2, a3);
}

void pxrInternal__aapl__pxrReserved__::Pcp_IndexingMsg(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::PcpPrimIndex *a2, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a3, const char *a4, ...)
{
  va_start(va, a4);
  v13 = *MEMORY[0x29EDCA608];
  va_copy(v11, va);
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(&__p, a3, va, a3);
  v12 = *a2;
  sub_29A424370(v8, &v12, 1);
  v6 = atomic_load(&qword_2A1741E20);
  if (!v6)
  {
    v6 = sub_29A424158(&qword_2A1741E20);
  }

  v7 = sub_29A420288(v6, this);
  sub_29A421244(v7, &__p, v8);
  sub_29A082B84(v8, v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A4216B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Pcp_IndexingMsg(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::PcpPrimIndex *a2, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a3, const pxrInternal__aapl__pxrReserved__::PcpNodeRef *a4, const char *a5, ...)
{
  va_start(va, a5);
  v16 = *MEMORY[0x29EDCA608];
  va_copy(v14, va);
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(&__p, a4, va, a3);
  v8 = *a3;
  v15[0] = *a2;
  v15[1] = v8;
  sub_29A424370(v11, v15, 2);
  v9 = atomic_load(&qword_2A1741E20);
  if (!v9)
  {
    v9 = sub_29A424158(&qword_2A1741E20);
  }

  v10 = sub_29A420288(v9, this);
  sub_29A421244(v10, &__p, v11);
  sub_29A082B84(v11, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A4217D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_29A421810(uint64_t **a1, uint64_t *a2, _DWORD *a3)
{
  v6 = (*a3)++;
  v13 = a2;
  result = sub_29A423670(a1, a2, &unk_29B4D6118, &v13);
  result[12] = v6;
  v8 = a2[1];
  v19 = *a2;
  v20 = v8;
  v9 = **(v19 + 16);
  v10 = *(v9 + 48 * v8 + 28);
  v13 = v19;
  v14 = v10;
  v15 = v9;
  v16 = v19;
  v11 = 0xFFFFLL;
  v17 = 0xFFFFLL;
  v18 = v9;
  while (v10 != v11 || v13 != v16)
  {
    v12 = sub_29A41E444(&v13);
    sub_29A421810(a1, v12, a3);
    result = sub_29A41E490(&v13);
    v10 = v14;
    v11 = v17;
  }

  return result;
}

uint64_t sub_29A4218E0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = 1;
    do
    {
      if (!pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator<(a2, v2 + 4))
      {
        if (!pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator<(v2 + 4, a2))
        {
          return v4;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_29A421948(uint64_t *a1, uint64_t a2, void *a3)
{
  if (*(a2 + 16))
  {
    sub_29A0F8494(a2);
    *(a2 + 16) = 0;
  }

  return sub_29A4219C8(a1, 1, a3, 0, a2, 1, sub_29A421CC0, 0);
}

uint64_t sub_29A4219C8(uint64_t *a1, int a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t (*a7)(uint64_t *, void *, uint64_t), void *a8)
{
  v13 = 0;
  v14 = *a3 ^ (*a3 >> 3);
  v15 = *a1;
  __dmb(0xBu);
  while (1)
  {
    sub_29A421F18(&v30, a1, v15 & v14, 0);
    v16 = (v32 + 16);
    do
    {
      v16 = *v16;
    }

    while (v16 >= 0x40 && *a3 != v16[2]);
    if (a2)
    {
      break;
    }

    if (v16)
    {
      v17 = 1;
LABEL_10:
      v18 = a8;
      if (!a5)
      {
        goto LABEL_45;
      }

LABEL_11:
      if ((sub_29A10872C(a5, v16 + 1, a6) & 1) == 0)
      {
        sched_yield();
        v19 = 2;
        while ((sub_29A10872C(a5, v16 + 1, a6) & 1) == 0)
        {
          sched_yield();
          v20 = v19 < 16;
          v19 *= 2;
          if (!v20)
          {
            v21 = v30;
            v30 = 0;
            if (v31 == 1)
            {
LABEL_16:
              v22 = *v21;
              v23 = *v21 & 0xFFFFFFFFFFFFFFFCLL;
              while (1)
              {
                v24 = v22;
                atomic_compare_exchange_strong(v21, &v24, v23);
                if (v24 == v22)
                {
                  break;
                }

                if (atomic_fetch_add_explicit(v21, 0, memory_order_relaxed) != v22)
                {
                  sched_yield();
                  goto LABEL_16;
                }
              }
            }

            else
            {
              atomic_fetch_add(v21, 0xFFFFFFFFFFFFFFFCLL);
            }

            sched_yield();
            v25 = *a1;
            __dmb(0xBu);
            a8 = v18;
            goto LABEL_31;
          }
        }
      }

      sub_29A0F845C(&v30);
      *(a5 + 16) = v16;
      *(a5 + 24) = v14;
      if (!v13)
      {
        goto LABEL_42;
      }

LABEL_41:
      sub_29A421D3C(a1, v13, (a1 + 72), 0);
      goto LABEL_42;
    }

    v25 = *a1;
    __dmb(0xBu);
    if (v15 == v25 || !sub_29A108BB8(a1, v14, v15, v25))
    {
      sub_29A0F845C(&v30);
      return 0;
    }

LABEL_31:
    sub_29A0F845C(&v30);
    v15 = v25;
  }

  if (v16)
  {
LABEL_7:
    v17 = 0;
    goto LABEL_10;
  }

  if (!a8)
  {
    a8 = a7(a1 + 72, a3, a4);
  }

  if ((v31 & 1) == 0)
  {
    v31 = 1;
    if ((tbb::spin_rw_mutex_v3::internal_upgrade(v30) & 1) == 0)
    {
      v16 = (v32 + 16);
      while (1)
      {
        v16 = *v16;
        if (v16 < 0x40)
        {
          break;
        }

        if (*a3 == v16[2])
        {
          if (v31 != 1)
          {
            goto LABEL_7;
          }

          v17 = 0;
          atomic_fetch_add(v30, 3uLL);
          v31 = 0;
          goto LABEL_10;
        }
      }
    }
  }

  v25 = *a1;
  __dmb(0xBu);
  if (v15 != v25)
  {
    if (!sub_29A108BB8(a1, v14, v15, v25))
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v25 = v15;
LABEL_33:
  v13 = sub_29A108650(a1, v32, a8, v25);
  v18 = 0;
  v17 = 1;
  v16 = a8;
  if (a5)
  {
    goto LABEL_11;
  }

LABEL_45:
  sub_29A0F845C(&v30);
  if (v13)
  {
    goto LABEL_41;
  }

LABEL_42:
  if (v18)
  {
    sub_29A421EC4(a1, v18);
  }

  return v17;
}

void sub_29A421CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A421CC0(uint64_t a1, void *a2)
{
  v4 = tbb::internal::allocate_via_handler_v3(0x50);
  v7[1] = a1;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 16) = *a2;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0;
  v7[0] = 0;
  sub_29A42234C(v7, v5);
  return v4;
}

void sub_29A421D3C(uint64_t *a1, unint64_t a2, uint64_t a3, char a4)
{
  v7 = a1 + 1;
  if (a2 < 8)
  {
    v10 = tbb::internal::allocate_via_handler_v3(0x17D0);
    v11 = v10;
    if (a4)
    {
      bzero(v10, 0x17D0uLL);
    }

    else
    {
      v15 = v10 + 2;
      v16 = 254;
      do
      {
        *(v15 - 1) = 0;
        *v15 = 3;
        v15 += 3;
        --v16;
      }

      while (v16);
    }

    v17 = 0;
    v18 = v11 - 6;
    v19 = xmmword_29B43B8D0;
    v20 = a1 + 3;
    v21 = vdupq_n_s64(7uLL);
    v22 = vdupq_n_s64(1uLL);
    v23 = vdupq_n_s64(2uLL);
    v14 = 255;
    do
    {
      v24 = vorrq_s8(vdupq_n_s64(v17), xmmword_29B430070);
      v25 = vshlq_u64(v22, v19);
      if (vmovn_s64(vcgtq_u64(v21, v24)).u8[0])
      {
        *(v20 - 1) = &v18[3 * v25.i64[0]];
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), v24)).i32[1])
      {
        *v20 = &v18[3 * v25.i64[1]];
      }

      v17 += 2;
      v19 = vaddq_s64(v19, v23);
      v20 += 2;
    }

    while (v17 != 8);
  }

  else
  {
    v8 = tbb::internal::allocate_via_handler_v3((24 << a2));
    v9 = v8;
    if (a4)
    {
      bzero(v8, 24 << a2);
    }

    else
    {
      v12 = 1 << a2;
      v13 = v8 + 2;
      do
      {
        *(v13 - 1) = 0;
        *v13 = 3;
        v13 += 3;
        --v12;
      }

      while (v12);
    }

    v7[a2] = v9;
    v14 = (2 << a2) - 1;
  }

  __dmb(0xBu);
  *a1 = v14;
}

uint64_t sub_29A421EC4(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v6 = (a2 + 56);
  sub_29A012C90(&v6);
  v6 = v3;
  sub_29A42217C(&v6);
  return tbb::internal::deallocate_via_handler_v3(a2, v4);
}

uint64_t sub_29A421F18(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v8 = sub_29A1089E0(a2, a3);
  *(a1 + 16) = v8;
  v9 = *(v8 + 16);
  __dmb(0xBu);
  if (v9 == 3 && (v10 = (*(a1 + 16) + 8), *(a1 + 8) = 1, tbb::spin_rw_mutex_v3::internal_try_acquire_writer(v10)))
  {
    *a1 = v10;
    v11 = *(a1 + 16);
    if (*(v11 + 16) == 3)
    {
      sub_29A421FF4(a2, v11, a3);
    }
  }

  else
  {
    v12 = (*(a1 + 16) + 8);
    *(a1 + 8) = a4;
    *a1 = v12;
    if (a4)
    {
      tbb::spin_rw_mutex_v3::internal_acquire_writer(v12);
    }

    else
    {
      tbb::spin_rw_mutex_v3::internal_acquire_reader(v12);
    }
  }

  return a1;
}

void *sub_29A421FF4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __dmb(0xBu);
  *(a2 + 16) = 0;
  if (a3)
  {
    v5 = HIDWORD(a3);
    if (!HIDWORD(a3))
    {
      v5 = a3;
    }

    v6 = 32 * (HIDWORD(a3) != 0);
    if (v5 >= 0x10000)
    {
      v5 >>= 16;
      v6 = (32 * (HIDWORD(a3) != 0)) | 0x10;
    }

    if (v5 >= 0x100)
    {
      v5 >>= 8;
      v6 |= 8u;
    }

    if (v5 >= 0x10)
    {
      v5 >>= 4;
      v6 |= 4u;
    }

    v7 = v5 >= 4;
    if (v5 >= 4)
    {
      LODWORD(v5) = v5 >> 2;
    }

    v8 = (v5 >> 1) & 1;
    if (v7)
    {
      v6 += 2;
    }

    v9 = v8 + v6;
  }

  else
  {
    v9 = -1;
  }

  v10 = ~(-1 << v9);
  sub_29A421F18(&v15, a1, v10 & a3, 0);
  v11 = (v17 + 16);
  v12 = *(v17 + 16);
  __dmb(0xBu);
  if (v12 >= 0x40)
  {
    v13 = (2 * v10) | 1;
    while ((((v12[2] >> 3) ^ v12[2]) & v13) == a3)
    {
      if (v16 & 1) != 0 || (v16 = 1, (tbb::spin_rw_mutex_v3::internal_upgrade(v15)))
      {
        *v11 = *v12;
        *v12 = *(a2 + 16);
        *(a2 + 16) = v12;
LABEL_24:
        v12 = *v11;
        if (*v11 <= 0x3FuLL)
        {
          return sub_29A0F845C(&v15);
        }
      }

      else
      {
        v11 = (v17 + 16);
        v12 = *(v17 + 16);
        __dmb(0xBu);
        if (v12 < 0x40)
        {
          return sub_29A0F845C(&v15);
        }
      }
    }

    v11 = v12;
    goto LABEL_24;
  }

  return sub_29A0F845C(&v15);
}

void sub_29A422168(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

void sub_29A42217C(void ***a1)
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
        v4 -= 96;
        sub_29A422204(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29A422204(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 64);
  sub_29A422270(&v4);
  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 12));
  return sub_29A1DE3A4((a2 + 8));
}

void sub_29A422270(void ***a1)
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
        v4 -= 72;
        sub_29A4222F8(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29A4222F8(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 48);
  sub_29A012C90(&v3);
  sub_29A082B84(a2 + 24, *(a2 + 32));
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t *sub_29A42234C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (v3)
  {
    tbb::internal::deallocate_via_handler_v3(v3, a2);
  }

  return a1;
}

void sub_29A422380(uint64_t *a1)
{
  v31[19] = *MEMORY[0x29EDCA608];
  if (sub_29A418240(3))
  {
    v2 = *a1;
    if (*a1 == a1[1])
    {
      __p.__r_.__value_.__r.__words[0] = "pcp/diagnostic.cpp";
      __p.__r_.__value_.__l.__size_ = "OutputGraph";
      __p.__r_.__value_.__r.__words[2] = 586;
      v29 = "void pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager::_DebugInfo::OutputGraph() const";
      v30[0] = 0;
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "!indexStack.empty()", 0))
      {
        return;
      }

      v2 = *a1;
    }

    Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName((v2 + 8));
    sub_29A008E78(v20, "/");
    sub_29A008E78(v24, "_");
    pxrInternal__aapl__pxrReserved__::TfStringReplace(Name, v20, v24, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("pcp.%s.%06d.dot", v4, v5, p_p, *(a1 + 6));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20[0]);
    }

    sub_29A0A0C08(&__p);
    if ((v30[*(__p.__r_.__value_.__r.__words[0] - 24)] & 5) != 0)
    {
      v20[0] = "pcp/diagnostic.cpp";
      v20[1] = "OutputGraph";
      v21 = 602;
      v22 = "void pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager::_DebugInfo::OutputGraph() const";
      v23 = 0;
      v7 = &v26;
      if (v27 < 0)
      {
        v7 = v26;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v20, 3, "Unable to open %s to write graph", v7);
    }

    else
    {
      ++*(a1 + 6);
      sub_29A00911C(&__p, "digraph PcpPrimIndex {\n", 23);
      v8 = a1[1];
      v9 = sub_29A00911C(&__p, "\tlabel = <", 10);
      v10 = *(v8 - 33);
      if (v10 >= 0)
      {
        v11 = v8 - 56;
      }

      else
      {
        v11 = *(v8 - 56);
      }

      if (v10 >= 0)
      {
        v12 = *(v8 - 33);
      }

      else
      {
        v12 = *(v8 - 48);
      }

      v13 = sub_29A00911C(v9, v11, v12);
      sub_29A00911C(v13, ">\n", 2);
      sub_29A00911C(&__p, "\tlabelloc = b\n", 14);
      v16 = *(v8 - 80);
      v15 = v8 - 80;
      v14 = v16;
      v17 = *(v15 + 23);
      if (v17 >= 0)
      {
        v18 = v15;
      }

      else
      {
        v18 = v14;
      }

      if (v17 >= 0)
      {
        v19 = *(v15 + 23);
      }

      else
      {
        v19 = *(v15 + 8);
      }

      sub_29A00911C(&__p, v18, v19);
      sub_29A00911C(&__p, "}\n", 2);
    }

    __p.__r_.__value_.__r.__words[0] = *MEMORY[0x29EDC9520];
    *(__p.__r_.__value_.__r.__words + *(__p.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x29EDC9520] + 24);
    MEMORY[0x29C2C1D20](&__p.__r_.__value_.__r.__words[1]);
    std::ostream::~ostream();
    MEMORY[0x29C2C4390](v31);
    if (v27 < 0)
    {
      operator delete(v26);
    }
  }
}

void sub_29A4226F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_29A33F0A8(&a32);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_29A422770(const void **a1, const std::string *a2)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v6 -= 0x71C71C71C71C71C7 * ((v4[9] - v4[8]) >> 3);
      v4 += 12;
    }

    while (v4 != v5);
    v7 = 4 * v6;
  }

  sub_29A00944C(__b, v7, 32);
  pxrInternal__aapl__pxrReserved__::TfStringTrim(" \n\t\r", a2, &v13);
  sub_29A008E78(&v12, "\n");
  std::operator+<char>();
  pxrInternal__aapl__pxrReserved__::TfStringReplace(&v13, &v12, &__p, &v14);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(__b, &v14.__r_.__value_.__l.__data_, &v12);
  v8 = std::string::append(&v12, "\n");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  sub_29A091654(a1 + 4, &v13);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v16 < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_29A4228F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  if (*(v26 - 17) < 0)
  {
    operator delete(*(v26 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A422998(uint64_t a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_29A00C9A4();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    v7 = sub_29A09C03C(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = (v7 + 72 * v2);
  v16 = v7;
  v17 = v8;
  *(&v18 + 1) = v7 + 72 * v6;
  v9 = *a2;
  *(v8 + 2) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v8 + 4) = 0;
  *(v8 + 3) = v8 + 2;
  *(v8 + 5) = 0;
  *(v8 + 6) = 0;
  *(v8 + 7) = 0;
  *(v8 + 8) = 0;
  *&v18 = v8 + 72;
  v10 = *(a1 + 8);
  v11 = v8 + *a1 - v10;
  sub_29A422AFC(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29A422CB0(&v16);
  return v15;
}

void sub_29A422AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A422CB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A422AFC(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
      sub_29A422BB0(a1, a4, v7);
      v7 = (v7 + 72);
      a4 = v12 + 72;
      v12 += 72;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29A4222F8(a1, v5);
      v5 += 72;
    }
  }

  return sub_29A422C24(v9);
}

__n128 sub_29A422BB0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *(a2 + 16) = *(a3 + 2);
  *a2 = v3;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  *(a2 + 24) = *(a3 + 3);
  v4 = a3 + 2;
  v5 = *(a3 + 4);
  *(a2 + 32) = v5;
  v6 = a2 + 32;
  v7 = *(a3 + 5);
  *(a2 + 40) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *(a3 + 3) = v4;
    *v4 = 0;
    *(a3 + 5) = 0;
  }

  else
  {
    *(a2 + 24) = v6;
  }

  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  result = a3[3];
  *(a2 + 48) = result;
  *(a2 + 64) = *(a3 + 8);
  *(a3 + 6) = 0;
  *(a3 + 7) = 0;
  *(a3 + 8) = 0;
  return result;
}

uint64_t sub_29A422C24(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A422C5C(a1);
  }

  return a1;
}

void sub_29A422C5C(uint64_t *a1)
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
      v3 -= 72;
      sub_29A4222F8(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29A422CB0(void **a1)
{
  sub_29A422CE4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A422CE4(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 72;
    sub_29A4222F8(v4, i - 72);
  }
}

uint64_t *sub_29A422D2C(uint64_t **a1, void *a2, _OWORD *a3)
{
  v5 = sub_29A422DB0(a1, &v9, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = operator new(0x30uLL);
    *(v6 + 2) = *a3;
    sub_29A00B204(a1, v9, v7, v6);
  }

  return v6;
}

void *sub_29A422DB0(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator<(a3, v4 + 4))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator<(v7 + 4, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t sub_29A422E38(uint64_t result)
{
  if (*(result + 8) == *(result + 24))
  {
    sub_29B2A0D70();
  }

  return result;
}

uint64_t sub_29A422E74(uint64_t a1, uint64_t a2, char *a3)
{
  v7 = *(a1 + 8);
  if (v7 == *(a1 + 24))
  {
    v12 = v4;
    v13 = v3;
    v14 = v5;
    v15 = v6;
    v9[0] = "tf/iterator.h";
    v9[1] = "operator*";
    v9[2] = 254;
    v9[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager::_Phase>, true>::operator*() [T = std::vector<pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager::_Phase>, Reverse = true]";
    v10 = 0;
    v11 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v9, "iterator exhausted", a3);
  }

  return v7 - 72;
}

uint64_t sub_29A422EFC(uint64_t result)
{
  if (*(result + 8) == *(result + 24))
  {
    sub_29B2A0DC0();
  }

  return result;
}

uint64_t sub_29A422F38(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == *(a1 + 24))
  {
    v4[0] = "tf/iterator.h";
    v4[1] = "operator++";
    v4[2] = 233;
    v4[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager::_Phase>, true>::operator++() [T = std::vector<pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager::_Phase>, Reverse = true]";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "iterator exhausted");
  }

  else
  {
    *(a1 + 8) = v2 - 72;
  }

  return a1;
}

uint64_t sub_29A422FBC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == *(a1 + 24))
  {
    v4[0] = "tf/iterator.h";
    v4[1] = "operator++";
    v4[2] = 233;
    v4[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager::_IndexInfo>, true>::operator++() [T = std::vector<pxrInternal__aapl__pxrReserved__::Pcp_IndexingOutputManager::_IndexInfo>, Reverse = true]";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "iterator exhausted");
  }

  else
  {
    *(a1 + 8) = v2 - 96;
  }

  return a1;
}

uint64_t sub_29A423040(uint64_t *a1, void *a2)
{
  v4 = *a2 ^ (*a2 >> 3);
  v5 = *a1;
  __dmb(0xBu);
  while (2)
  {
    sub_29A421F18(&v12, a1, v5 & v4, 0);
    while (1)
    {
      v6 = (v14 + 16);
      while (1)
      {
        v7 = v6;
        v6 = *v6;
        if (v6 < 0x40)
        {
          break;
        }

        if (*a2 == v6[2])
        {
          goto LABEL_8;
        }
      }

      if (!v6)
      {
        break;
      }

LABEL_8:
      if (v13 & 1) != 0 || (v13 = 1, (tbb::spin_rw_mutex_v3::internal_upgrade(v12)))
      {
        *v7 = *v6;
        atomic_fetch_add(a1 + 65, 0xFFFFFFFFFFFFFFFFLL);
        sub_29A0F845C(&v12);
        v10 = 1;
        v13 = 1;
        v12 = (v6 + 1);
        tbb::spin_rw_mutex_v3::internal_acquire_writer(v6 + 1);
        sub_29A0F845C(&v12);
        sub_29A421EC4(a1, v6);
        return v10;
      }

      v8 = *a1;
      __dmb(0xBu);
      if (v5 != v8)
      {
        v9 = sub_29A108BB8(a1, v4, v5, v8);
        v5 = v8;
        if (v9)
        {
          goto LABEL_15;
        }
      }
    }

    v8 = *a1;
    __dmb(0xBu);
    if (v5 != v8 && sub_29A108BB8(a1, v4, v5, v8))
    {
LABEL_15:
      sub_29A0F845C(&v12);
      v5 = v8;
      continue;
    }

    break;
  }

  sub_29A0F845C(&v12);
  return 0;
}

void sub_29A4231B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_29A4231D4(uint64_t **result, void *a2, void *a3)
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

    v10 = result;
    v11 = v8;
    v12 = v8;
    if (v8)
    {
      v11 = sub_29A028760(v8);
      while (a2 != a3)
      {
        sub_29A4232DC(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            a2 += 2;
            break;
          }

          v11 = sub_29A028760(v11);
        }

        else
        {
          v8 = v12;
        }

        a2 += 2;
        if (!v8)
        {
          break;
        }
      }
    }

    result = sub_29A08623C(&v10);
  }

  while (a2 != a3)
  {
    result = sub_29A422D2C(v5, a2, a2);
    a2 += 2;
  }

  return result;
}

void sub_29A4232C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A08623C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A4232DC(uint64_t **a1, void *a2, uint64_t a3)
{
  v6 = sub_29A422DB0(a1, &v8, a2);
  if (*v6)
  {
    return *v6;
  }

  *(a3 + 32) = *a2;
  sub_29A00B204(a1, v8, v6, a3);
  return a3;
}

uint64_t **sub_29A423358(uint64_t **result, void *a2, void *a3)
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
          *(v8 + 2) = *(v9 + 2);
          sub_29A4234BC(v5, v8);
          v8 = v15;
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

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_29A08623C(&v14);
  }

  if (a2 != a3)
  {
    do
    {
      result = sub_29A423540(v5, a2 + 2);
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

void sub_29A4234A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A08623C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A4234BC(uint64_t **a1, uint64_t *a2)
{
  v5 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator<(a2 + 4, v4 + 4))
        {
          break;
        }

        v4 = *v5;
        v6 = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    v6 = v5 + 1;
  }

  else
  {
    v6 = a1 + 1;
  }

LABEL_8:
  sub_29A00B204(a1, v5, v6, a2);
  return a2;
}

uint64_t *sub_29A423540(uint64_t **a1, _OWORD *a2)
{
  v4 = operator new(0x30uLL);
  *(v4 + 2) = *a2;
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    do
    {
      while (1)
      {
        v6 = v5;
        if (!pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator<(v4 + 4, v5 + 4))
        {
          break;
        }

        v5 = *v6;
        v7 = v6;
        if (!*v6)
        {
          goto LABEL_8;
        }
      }

      v5 = v6[1];
    }

    while (v5);
    v7 = v6 + 1;
  }

  else
  {
    v7 = a1 + 1;
  }

LABEL_8:
  sub_29A00B204(a1, v6, v7, v4);
  return v4;
}

uint64_t sub_29A4235EC(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator<((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator<(a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

_OWORD *sub_29A423670(uint64_t **a1, void *a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_29A422DB0(a1, &v10, a2);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x38uLL);
    v7[2] = **a4;
    *(v7 + 12) = 0;
    sub_29A00B204(a1, v10, v8, v7);
  }

  return v7;
}

void sub_29A4236FC(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_29A4236FC(a1, *a2);
    sub_29A4236FC(a1, *(a2 + 1));
    v4 = (a2 + 48);
    sub_29A42375C(&v4);
    operator delete(a2);
  }
}

void sub_29A42375C(void ***a1)
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
        v4 -= 24;
        sub_29A4237E4(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_OWORD *sub_29A423818(uint64_t **a1, void *a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_29A422DB0(a1, &v10, a2);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x48uLL);
    v7[2] = **a4;
    *(v7 + 7) = 0;
    *(v7 + 8) = 0;
    *(v7 + 6) = 0;
    sub_29A00B204(a1, v10, v8, v7);
  }

  return v7;
}

uint64_t sub_29A4238A8(uint64_t *a1, uint64_t *a2, _DWORD *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v8 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v4;
  }

  v19 = a1;
  if (v8)
  {
    v9 = sub_29A012C48(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v16 = v9;
  v17 = &v9[24 * v3];
  *(&v18 + 1) = &v9[24 * v8];
  sub_29A4239E4(a1, v17, a2, a3);
  *&v18 = v17 + 24;
  v10 = a1[1];
  v11 = &v17[*a1 - v10];
  sub_29A423A50(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29A423BB4(&v16);
  return v15;
}

void sub_29A4239D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A423BB4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A4239E4(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4)
{
  sub_29A321960(v7, a3);
  sub_29B2A09DC(a2, v7, a4);
  return sub_29B293818(v7);
}

void sub_29A423A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28FFF4(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A423A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v7 = a2;
    do
    {
      *a4 = *v7;
      v8 = (a4 + 20);
      *v7 = 0;
      *(v7 + 8) = 0;
      sub_29A1DDD84((a4 + 16), (v7 + 16));
      sub_29A1DDDC0(v8, (v7 + 20));
      v7 += 24;
      a4 = v13 + 24;
      v13 += 24;
    }

    while (v7 != a3);
    v11 = 1;
    while (v5 != a3)
    {
      sub_29A4237E4(a1, v5);
      v5 += 24;
    }
  }

  return sub_29A423B28(v10);
}

uint64_t sub_29A423B28(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A423B60(a1);
  }

  return a1;
}

uint64_t *sub_29A423B60(uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 24;
      result = sub_29A4237E4(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29A423BB4(void **a1)
{
  sub_29A423BE8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A423BE8(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 32);
      *(v3 + 16) = v1 - 24;
      result = sub_29A4237E4(v4, v1 - 24);
      v1 = *(v3 + 16);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29A423C30(uint64_t a1, _OWORD *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::PcpPrimIterator::PcpPrimIterator(a1);
  pxrInternal__aapl__pxrReserved__::PcpPrimIterator::PcpPrimIterator(v4 + 2);
  v5 = a2[1];
  *(a1 + 32) = *a2;
  *(a1 + 48) = v5;
  v6 = *(a1 + 48);
  *a1 = *(a1 + 32);
  *(a1 + 16) = v6;
  return a1;
}

uint64_t sub_29A423C74(uint64_t *a1, void *a2, _DWORD *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v8 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v4;
  }

  v19 = a1;
  if (v8)
  {
    v9 = sub_29A012C48(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v16 = v9;
  v17 = &v9[24 * v3];
  *(&v18 + 1) = &v9[24 * v8];
  sub_29B2A09DC(v17, a2, a3);
  *&v18 = v17 + 24;
  v10 = a1[1];
  v11 = &v17[*a1 - v10];
  sub_29A423A50(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29A423BB4(&v16);
  return v15;
}

void sub_29A423D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A423BB4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A423DAC(uint64_t *a1, void *a2, _DWORD *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v4 = v3 + 1;
  if (v3 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v8 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v4;
  }

  v20 = a1;
  if (v8)
  {
    v9 = sub_29A0CFEE8(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = &v9[96 * v3];
  v17 = v9;
  v18 = v10;
  *(&v19 + 1) = &v9[96 * v8];
  *v10 = *a2;
  sub_29A1E21F4(v10 + 2, a3);
  sub_29A1E2240(v10 + 3, a3 + 1);
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 73) = 0u;
  *(v10 + 3) = 0u;
  *(v10 + 4) = 0u;
  *&v19 = v10 + 96;
  v11 = a1[1];
  v12 = &v10[*a1 - v11];
  sub_29A423F00(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29A4240DC(&v17);
  return v16;
}

void sub_29A423EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A4240DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A423F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_29A423FB4(a1, a4, v7);
      v7 += 96;
      a4 = v12 + 96;
      v12 += 96;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29A422204(a1, v5);
      v5 += 96;
    }
  }

  return sub_29A424050(v9);
}

__n128 sub_29A423FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  sub_29A1DDD84((a2 + 8), (a3 + 8));
  sub_29A1DDDC0((a2 + 12), (a3 + 12));
  v5 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *(a2 + 16) = v5;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v6 = *(a3 + 40);
  *(a2 + 56) = *(a3 + 56);
  *(a2 + 40) = v6;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 40) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  result = *(a3 + 64);
  *(a2 + 64) = result;
  *(a2 + 80) = *(a3 + 80);
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a2 + 88) = *(a3 + 88);
  return result;
}

uint64_t sub_29A424050(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A424088(a1);
  }

  return a1;
}

uint64_t *sub_29A424088(uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 96;
      result = sub_29A422204(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29A4240DC(void **a1)
{
  sub_29A424110(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29A424110(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 96;
      result = sub_29A422204(v4, v1 - 96);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

unint64_t sub_29A424158(atomic_ullong *a1)
{
  v2 = operator new(0x248uLL);
  v3 = v2;
  v4 = 0;
  *(v2 + 67) = 0;
  *(v2 + 70) = 0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 248) = 0u;
  *(v2 + 264) = 0u;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  *(v2 + 328) = 0u;
  *(v2 + 344) = 0u;
  *(v2 + 360) = 0u;
  *(v2 + 376) = 0u;
  *(v2 + 392) = 0u;
  *(v2 + 408) = 0u;
  *(v2 + 424) = 0u;
  *(v2 + 440) = 0u;
  *(v2 + 456) = 0u;
  *(v2 + 472) = 0u;
  *(v2 + 488) = 0u;
  *(v2 + 504) = 0u;
  __dmb(0xBu);
  *v2 = 0;
  __dmb(0xBu);
  *(v2 + 65) = 0;
  *(v2 + 1) = v2 + 528;
  *(v2 + 33) = 0u;
  *(v2 + 34) = 0u;
  *(v2 + 35) = 0u;
  __dmb(0xBu);
  *v2 = 1;
  atomic_compare_exchange_strong(a1, &v4, v2);
  if (v4)
  {
    sub_29A424250(v2);
    operator delete(v3);
    return atomic_load(a1);
  }

  return v3;
}

uint64_t sub_29A424250(unint64_t *a1)
{
  v2 = *a1;
  __dmb(0xBu);
  __dmb(0xBu);
  a1[65] = 0;
  v3 = sub_29A0EC0EC(v2);
  do
  {
    v4 = 0;
    v5 = v3;
    v6 = a1[v3 + 1];
    if (v3-- > 1)
    {
      v8 = v5;
    }

    else
    {
      v8 = 1;
    }

    do
    {
      v9 = v6 + 24 * v4;
      v12 = *(v9 + 16);
      v11 = (v9 + 16);
      v10 = v12;
      if (v12 >= 0x40)
      {
        do
        {
          *v11 = *v10;
          sub_29A421EC4(a1, v10);
          v10 = *v11;
        }

        while (*v11 > 0x3FuLL);
      }

      ++v4;
    }

    while (!(v4 >> v8));
    result = sub_29A42431C(a1, v5);
  }

  while (v5);
  __dmb(0xBu);
  *a1 = 1;
  return result;
}

uint64_t sub_29A42431C(uint64_t a1, unint64_t a2)
{
  v3 = a1 + 8;
  result = *(a1 + 8 + 8 * a2);
  if (a2 < 8)
  {
    if (!a2)
    {
      return result;
    }

    if (a2 == 1)
    {
      result = tbb::internal::deallocate_via_handler_v3(result, 1);
    }
  }

  else
  {
    result = tbb::internal::deallocate_via_handler_v3(result, a2);
  }

  *(v3 + 8 * a2) = 0;
  return result;
}

uint64_t sub_29A424370(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_29A4243F0(a1, v4, a2, a2);
      a2 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t *sub_29A4243F0(uint64_t **a1, void *a2, void *a3, _OWORD *a4)
{
  v6 = sub_29A424478(a1, a2, &v11, &v10, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x30uLL);
    *(v7 + 2) = *a4;
    sub_29A00B204(a1, v11, v8, v7);
  }

  return v7;
}

uint64_t *sub_29A424478(void *a1, void *a2, void *a3, uint64_t *a4, void *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator<(a5, a2 + 4))
  {
    if (!pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator<(a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator<(a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator<(v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_29A422DB0(a1, a3, a5);
}

void sub_29A42460C()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::PCP_OVERRIDE_INSTANCEABLE))
  {
    sub_29B2A0E10();
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Pcp_PrimIndexIsInstanceable(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::PcpPrimIndex *a2)
{
  v48 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1741E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1741E30))
  {
    v25 = atomic_load(pxrInternal__aapl__pxrReserved__::PCP_OVERRIDE_INSTANCEABLE);
    if (!v25)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
    }

    dword_2A1741E28 = *v25;
    __cxa_guard_release(&qword_2A1741E30);
  }

  if (!dword_2A1741E28 || (pxrInternal__aapl__pxrReserved__::PcpPrimIndex::IsUsd(this) & 1) == 0 && dword_2A1741E28 == -1)
  {
    return 0;
  }

  v38 = 0;
  pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetRootNode(this);
  v45 = v3;
  v46 = v4;
  v5 = *v3[2];
  v6 = *(v5 + 48 * v4 + 28);
  v39 = v3;
  v40 = v6;
  v41 = v5;
  v42 = v3;
  v7 = 0xFFFFLL;
  v43 = 0xFFFFLL;
  v44 = v5;
  while (v6 != v7 || v39 != v42)
  {
    v8 = sub_29A41E444(&v39);
    sub_29A424BDC(v8, &v38, 0);
    sub_29A41E490(&v39);
    v6 = v40;
    v7 = v43;
  }

  if ((v38 & 1) == 0)
  {
    return 0;
  }

  v37 = 0;
  if ((atomic_load_explicit(&qword_2A1741E40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1741E40))
  {
    v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v26)
    {
      v26 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    v27 = *(v26 + 25);
    qword_2A1741E38 = v27;
    if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      qword_2A1741E38 &= 0xFFFFFFFFFFFFFFF8;
    }

    __cxa_atexit(sub_29A424A8C, &qword_2A1741E38, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1741E40);
  }

  v47 = 0x4000000000;
  pxrInternal__aapl__pxrReserved__::PcpPrimIndex::GetRootNode(this);
  v28.n128_u64[0] = v9;
  v28.n128_u64[1] = v10;
  sub_29A424CC0(&v39, &v28);
  v11 = v47;
  if (v47)
  {
    v12 = MEMORY[0x29EDC94A8];
    do
    {
      if (HIDWORD(v47) >= 0x41)
      {
        v13 = v39;
      }

      else
      {
        v13 = &v39;
      }

      v36 = v13[v11 - 1];
      LODWORD(v47) = v11 - 1;
      if (pxrInternal__aapl__pxrReserved__::PcpNodeRef::CanContributeSpecs(&v36))
      {
        pxrInternal__aapl__pxrReserved__::PcpNodeRef::GetSite(&v36, &v33);
        v14 = sub_29A4184C4(&v33);
        Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(v14);
        v16 = *Layers;
        v17 = *(Layers + 8);
        if (*Layers != v17)
        {
          do
          {
            v18 = sub_29A3302A8(v16);
            v28.n128_u64[1] = &v37;
            v29 = v12;
            LOWORD(v30) = 0;
            v28.n128_u64[0] = &unk_2A204E1B8;
            HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v18, &v34, &qword_2A1741E38, &v28);
            if (((HasField ^ 1 | v30) & 1) == 0)
            {
              break;
            }

            ++v16;
          }

          while (v16 != v17);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v35);
        sub_29A1DE3A4(&v34);
        sub_29A41B088();
      }

      v32 = v36;
      v20 = **(v36 + 16);
      v21 = *(v20 + 48 * *(&v36 + 1) + 30);
      v28.n128_u64[0] = v36;
      v28.n128_u64[1] = v21;
      v29 = v20;
      *&v30 = v36;
      *(&v30 + 1) = 0xFFFFLL;
      v31 = v20;
      while (*&v28 != v30)
      {
        v22 = sub_29A424AF0(&v28);
        sub_29A424CC0(&v39, v22);
        sub_29A424B3C(&v28);
      }

      v11 = v47;
    }

    while (v47);
  }

  v23 = v37;
  if (HIDWORD(v47) >= 0x41)
  {
    free(v39);
  }

  return v23;
}

void *sub_29A424A8C(void *result)
{
  if ((*result & 7) != 0)
  {
    atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29A424AA8(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  sub_29A41B088();
}

void *sub_29A424AF0(void *result)
{
  if (result[1] == result[4] && *result == result[3])
  {
    sub_29B2A0E44();
  }

  return result;
}

void *sub_29A424B3C(void *a1)
{
  v2 = a1[1];
  if (v2 == a1[4] && *a1 == a1[3])
  {
    v4[0] = "tf/iterator.h";
    v4[1] = "operator++";
    v4[2] = 233;
    v4[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::PcpNodeRef_PrivateChildrenConstRange, true>::operator++() [T = pxrInternal__aapl__pxrReserved__::PcpNodeRef_PrivateChildrenConstRange, Reverse = true]";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "iterator exhausted");
  }

  else
  {
    a1[1] = *(a1[2] + 48 * v2 + 32);
  }

  return a1;
}

uint64_t sub_29A424BDC(pxrInternal__aapl__pxrReserved__::PcpNodeRef *a1, _BYTE *a2, char a3)
{
  result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsCulled(a1);
  if ((result & 1) == 0)
  {
    if ((a3 & 1) != 0 || (result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::IsDueToAncestor(a1), (result & 1) == 0))
    {
      result = pxrInternal__aapl__pxrReserved__::PcpNodeRef::HasSpecs(a1);
      v7 = 1;
      if (result)
      {
        *a2 = 1;
        return result;
      }
    }

    else
    {
      v7 = 0;
    }

    if ((*a2 & 1) == 0)
    {
      v8 = *(a1 + 1);
      v19 = *a1;
      v20 = v8;
      v9 = **(v19 + 16);
      v10 = *(v9 + 48 * v8 + 28);
      v13 = v19;
      v14 = v10;
      v15 = v9;
      v16 = v19;
      v11 = 0xFFFFLL;
      v17 = 0xFFFFLL;
      v18 = v9;
      while (v10 != v11 || v13 != v16)
      {
        v12 = sub_29A41E444(&v13);
        sub_29A424BDC(v12, a2, v7);
        result = sub_29A41E490(&v13);
        v10 = v14;
        v11 = v17;
      }
    }
  }

  return result;
}

__n128 sub_29A424CC0(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 1024);
  v5 = *(a1 + 1028);
  if (v4 == v5)
  {
    sub_29A424D30(a1, v4 + (v4 >> 1) + 1);
    v5 = *(a1 + 1028);
  }

  v6 = a1;
  if (v5 >= 0x41)
  {
    v6 = *a1;
  }

  result = *a2;
  *(v6 + 16 * (*(a1 + 1024))++) = *a2;
  return result;
}

void sub_29A424D30(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = malloc(16 * a2);
  v5 = v4;
  v6 = *(a1 + 1028);
  v7 = a1;
  if (v6 >= 0x41)
  {
    v7 = *a1;
  }

  v8 = *(a1 + 1024);
  if (v8)
  {
    v9 = 16 * v8;
    v10 = v4;
    do
    {
      v11 = *v7++;
      *v10++ = v11;
      v9 -= 16;
    }

    while (v9);
  }

  if (v6 >= 0x41)
  {
    free(*a1);
  }

  *a1 = v5;
  *(a1 + 1028) = v2;
}

uint64_t sub_29A424DBC(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  *(a1 + 24) = 0;
  if (sub_29A1EFCDC(a2))
  {
    v4 = *(v2 + 1);
    if ((v4 & 4) != 0)
    {
      v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    **(a1 + 8) = *v2;
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(v2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::Pcp_LayerStackRegistry(uint64_t a1, void *a2)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *a1 = &unk_2A204E1F0;
  v3 = operator new(0x1B0uLL);
  sub_29B2A0FB4(v3, a2);
}

void sub_29A424F5C(_Unwind_Exception *a1)
{
  operator delete(v3);
  sub_29A0F6078(v2, v5);
  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::~Pcp_LayerStackRegistry(pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry *this)
{
  *this = &unk_2A204E1F0;
  v2 = (this + 16);
  sub_29A426ECC(this + 3, 0);
  sub_29A0F6078(v2, v3);

  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(this);
}

{
  pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::~Pcp_LayerStackRegistry(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::Pcp_MutedLayers::MuteAndUnmuteLayers(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v48 = 0uLL;
  v49 = 0;
  v46 = 0uLL;
  v47 = 0;
  v7 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::Pcp_MutedLayers::_GetCanonicalLayerId(a1, a2, v7, __p);
      v8 = v45;
      v9 = v45;
      if ((v45 & 0x80u) != 0)
      {
        v8 = __p[1];
      }

      if (v8)
      {
        v11 = *(a1 + 24);
        v10 = *(a1 + 32);
        if (v10 == v11)
        {
          v11 = *(a1 + 32);
        }

        else
        {
          v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 3);
          do
          {
            v13 = (v11 + 24 * (v12 >> 1));
            v14 = sub_29A00AFCC(&v50, v13, __p);
            if (v14)
            {
              v12 += ~(v12 >> 1);
            }

            else
            {
              v12 >>= 1;
            }

            if (v14)
            {
              v11 = (v13 + 3);
            }
          }

          while (v12);
          v10 = *(a1 + 32);
        }

        if (v10 == v11)
        {
          goto LABEL_29;
        }

        v15 = *(v11 + 23);
        if (v15 >= 0)
        {
          v16 = *(v11 + 23);
        }

        else
        {
          v16 = *(v11 + 8);
        }

        v17 = v45;
        v9 = v45;
        if ((v45 & 0x80u) != 0)
        {
          v17 = __p[1];
        }

        if (v16 != v17 || (v15 >= 0 ? (v18 = v11) : (v18 = *v11), (v45 & 0x80u) == 0 ? (v19 = __p) : (v19 = __p[0]), memcmp(v18, v19, v16)))
        {
LABEL_29:
          sub_29A426914((a1 + 24), v11, __p);
          sub_29A070BA0(&v48);
        }
      }

      if ((v9 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }

      v7 += 24;
    }

    while (v7 != v6);
  }

  v20 = *a4;
  v21 = a4[1];
  if (*a4 != v21)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::Pcp_MutedLayers::_GetCanonicalLayerId(a1, a2, v20, __p);
      v22 = v45;
      if ((v45 & 0x80u) == 0)
      {
        v23 = v45;
      }

      else
      {
        v23 = __p[1];
      }

      if (v23)
      {
        v24 = *(a1 + 24);
        v25 = *(a1 + 32);
        if (v25 == v24)
        {
          v24 = *(a1 + 32);
        }

        else
        {
          v26 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 3);
          do
          {
            v27 = (v24 + 24 * (v26 >> 1));
            v28 = sub_29A00AFCC(&v50, v27, __p);
            if (v28)
            {
              v26 += ~(v26 >> 1);
            }

            else
            {
              v26 >>= 1;
            }

            if (v28)
            {
              v24 = (v27 + 3);
            }
          }

          while (v26);
          v25 = *(a1 + 32);
          v22 = v45;
        }

        if (v25 != v24)
        {
          v29 = *(v24 + 23);
          if (v29 >= 0)
          {
            v30 = *(v24 + 23);
          }

          else
          {
            v30 = *(v24 + 8);
          }

          v31 = __p[1];
          if ((v22 & 0x80u) == 0)
          {
            v31 = v22;
          }

          if (v30 == v31)
          {
            v32 = v29 >= 0 ? v24 : *v24;
            v33 = (v22 & 0x80u) == 0 ? __p : __p[0];
            if (!memcmp(v32, v33, v30))
            {
              sub_29A2C97CC(&v50, (v24 + 24), v25, v24);
              v35 = v34;
              v36 = *(a1 + 32);
              while (v36 != v35)
              {
                v37 = *(v36 - 1);
                v36 -= 3;
                if (v37 < 0)
                {
                  operator delete(*v36);
                }
              }

              *(a1 + 32) = v35;
              sub_29A070BA0(&v46);
            }
          }
        }
      }

      if ((v22 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }

      v20 += 24;
    }

    while (v20 != v21);
  }

  v38 = *a3;
  *a3 = v48;
  v48 = v38;
  v39 = a3[2];
  a3[2] = v49;
  v49 = v39;
  v40 = *a4;
  *a4 = v46;
  v46 = v40;
  v41 = a4[2];
  a4[2] = v47;
  v47 = v41;
  __p[0] = &v46;
  sub_29A012C90(__p);
  *&v46 = &v48;
  sub_29A012C90(&v46);
}

void sub_29A42538C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char **__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  __p = &a18;
  sub_29A012C90(&__p);
  a18 = &a22;
  sub_29A012C90(&a18);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Pcp_MutedLayers::IsLayerMuted(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (*(a1 + 24) == *(a1 + 32))
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::Pcp_MutedLayers::_GetCanonicalLayerId(a1, a2, a3, __p);
  v6 = HIBYTE(v17);
  if (v17 < 0)
  {
    v6 = __p[1];
  }

  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  if (v8 == v7)
  {
    goto LABEL_15;
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * (v8 - v7);
  do
  {
    v10 = &v7[3 * (v9 >> 1)];
    v11 = sub_29A00AFCC(v18, v10, __p);
    if (v11)
    {
      v9 += ~(v9 >> 1);
    }

    else
    {
      v9 >>= 1;
    }

    if (v11)
    {
      v7 = v10 + 3;
    }
  }

  while (v9);
  if (v7 == v8 || sub_29A00AFCC(v18, __p, v7))
  {
LABEL_15:
    v12 = 0;
  }

  else
  {
    if (a4)
    {
      v14 = *(a4 + 2);
      v15 = *a4;
      *a4 = *__p;
      *(a4 + 2) = v17;
      *__p = v15;
      v17 = v14;
    }

    v12 = 1;
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  return v12;
}

uint64_t pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::FindAllUsingMutedLayer(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 24);
  v8[0] = 0;
  v9 = 0;
  tbb::queuing_rw_mutex::scoped_lock::acquire(v8, (v4 + 424), 0);
  v5 = sub_29A0FC520((*(a1 + 24) + 120), a2);
  if (v5)
  {
    v6 = (v5 + 5);
  }

  else
  {
    v6 = *(a1 + 24) + 240;
  }

  sub_29A344D60(v8);
  return v6;
}

void pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::FindOrCreate(const pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry *a1@<X0>, const pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier *a2@<X1>, pxrInternal__aapl__pxrReserved__::PcpLayerStack **a3@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::operator BOOL(a2))
  {
    v6 = *(a1 + 3);
    v18[0] = 0;
    *(&v19 + 1) = 0;
    tbb::queuing_rw_mutex::scoped_lock::acquire(v18, (v6 + 424), 0);
    *a3 = 0;
    v7 = sub_29A427530(*(a1 + 3), a2);
    sub_29B2A1818(v7, v16);
    v8 = sub_29B2A0EDC(v16);
    if (v9 & 1 | v8)
    {
      sub_29A34672C(v16, &v21);
      *a3 = v21;
      v21 = 0;
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>::_RemoveRef();
    }

    v10 = v16[1];
    if (v16[1] && atomic_fetch_add_explicit((v16[1] + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v10 + 8))(v10);
    }

    if (!*a3)
    {
      tbb::queuing_rw_mutex::scoped_lock::release(v18);
      v11 = operator new(0x1D0uLL);
      pxrInternal__aapl__pxrReserved__::PcpLayerStack::PcpLayerStack(v11, a2, a1);
      v17 = v11;
      tbb::queuing_rw_mutex::scoped_lock::acquire(v18, (*(a1 + 3) + 424), 1);
      v12 = sub_29A427530(*(a1 + 3), a2);
      sub_29B2A1818(v12, v16);
      v13 = sub_29B2A0EDC(v16);
      if (v14 & 1 | v13)
      {
        sub_29A34672C(v16, &v21);
        *a3 = v21;
        v21 = 0;
        pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>::_RemoveRef();
      }

      v15 = v16[1];
      if (v16[1] && atomic_fetch_add_explicit((v16[1] + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v15 + 8))(v15);
      }

      if (!*a3)
      {
        *a3 = v17;
        pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>::_AddRef();
      }

      sub_29A41B088();
    }

    sub_29A344D60(v18);
  }

  else
  {
    v18[0] = "pcp/layerStackRegistry.cpp";
    v18[1] = "FindOrCreate";
    v18[2] = 136;
    v19 = "PcpLayerStackRefPtr pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::FindOrCreate(const PcpLayerStackIdentifier &, PcpErrorVector *)";
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v18, 1, "Cannot build layer stack with null rootLayer");
    *a3 = 0;
  }
}

void sub_29A4258EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 - 56) = &a9;
  sub_29A0176E4((v9 - 56));
  sub_29A41B088();
}

uint64_t pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::_SetLayers(pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry *this, const pxrInternal__aapl__pxrReserved__::PcpLayerStack *a2)
{
  sub_29A427F58(v46, a2);
  v4 = *(this + 3);
  v43 = v46;
  v5 = sub_29A427FCC(v4 + 80, v46, &unk_29B4D6118, &v43);
  v6 = (v5 + 4);
  if (v5[4] != v5[5])
  {
    v43 = v5[4];
    sub_29A427754();
  }

  Layers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetLayers(a2);
  v8 = *(Layers + 8);
  if (*Layers == v8)
  {
    sub_29A42831C((*(this + 3) + 80), v46);
    v9 = *(*(this + 3) + 216);
    while (v9)
    {
      v10 = sub_29A4282B8(v9[4], v9[5], v46);
      v11 = v10;
      v12 = v9[5];
      if (v10 != v12)
      {
        if (v10 + 16 != v12)
        {
          do
          {
            v13 = v11 + 16;
            sub_29B29119C(v11, v11 + 16);
            v14 = v11 + 32;
            v11 += 16;
          }

          while (v14 != v12);
          v11 = v13;
        }

        sub_29A0ED2EC((v9 + 4), v11);
        v11 = v9[5];
      }

      if (v9[4] == v11)
      {
        v9 = sub_29A4283B4((*(this + 3) + 200), v9);
      }

      else
      {
        v9 = *v9;
      }
    }
  }

  else
  {
    sub_29A428414(v6, *Layers, v8, (v8 - *Layers) >> 3);
  }

  if (*Layers != *(Layers + 8))
  {
    sub_29A321960(&v43, *Layers);
    v46[3] = &v43;
    sub_29A428710();
  }

  v15 = sub_29A0ECC48((*(this + 3) + 160), v46);
  v16 = v15;
  if (v15)
  {
    v17 = v15[4];
    v18 = v15 + 5;
    if (v17 != v15 + 5)
    {
      do
      {
        v19 = *(this + 3);
        v43 = (v17 + 4);
        v20 = sub_29A428994(v19 + 120, v17 + 32, &unk_29B4D6118, &v43);
        v21 = (v20 + 5);
        v22 = sub_29A4282B8(v20[5], v20[6], v46);
        v23 = v20[6];
        if ((v22 + 16) != v23)
        {
          do
          {
            v24 = v22 + 16;
            sub_29B29119C(v22, v22 + 16);
            v25 = v22 + 32;
            v22 += 16;
          }

          while (v25 != v23);
          v22 = v24;
        }

        sub_29A0ED2EC(v21, v22);
        v26 = v17[1];
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = v17[2];
            v28 = *v27 == v17;
            v17 = v27;
          }

          while (!v28);
        }

        v17 = v27;
      }

      while (v27 != v18);
    }
  }

  MutedLayers = pxrInternal__aapl__pxrReserved__::PcpLayerStack::GetMutedLayers(a2);
  if (*(MutedLayers + 16))
  {
    if (v16)
    {
      v31 = v16 + 4;
    }

    else
    {
      v30 = *(this + 3);
      v43 = v46;
      v31 = sub_29A428E38(v30 + 160, v46, &unk_29B4D6118, &v43) + 4;
    }

    sub_29A4290C8(&v43, *MutedLayers, (MutedLayers + 8));
    v32 = v31 + 1;
    sub_29A019EE8(v31, v31[1]);
    v33 = v44;
    *v31 = v43;
    v31[1] = v33;
    v34 = v45;
    v31[2] = v45;
    if (v34)
    {
      *(v33 + 16) = v32;
      v43 = &v44;
      v44 = 0;
      v45 = 0;
      v33 = 0;
    }

    else
    {
      *v31 = v32;
    }

    sub_29A019EE8(&v43, v33);
  }

  else if (v16)
  {
    sub_29A428D40((*(this + 3) + 160), v46);
  }

  v37 = *MutedLayers;
  v35 = (MutedLayers + 8);
  v36 = v37;
  if (v37 != v35)
  {
    do
    {
      v38 = *(this + 3);
      v43 = (v36 + 4);
      v39 = sub_29A428994(v38 + 120, v36 + 32, &unk_29B4D6118, &v43);
      sub_29A4264A0(v39 + 5, v46);
      v40 = v36[1];
      if (v40)
      {
        do
        {
          v41 = v40;
          v40 = *v40;
        }

        while (v40);
      }

      else
      {
        do
        {
          v41 = v36[2];
          v28 = *v41 == v36;
          v36 = v41;
        }

        while (!v28);
      }

      v36 = v41;
    }

    while (v41 != v35);
  }

  return sub_29B28F9E0(v46);
}

void sub_29A425EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, atomic_uint *a14)
{
  if (a14)
  {
    if (atomic_fetch_add_explicit(a14 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a14 + 8))(a14);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_29A425F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11);
    }
  }

  JUMPOUT(0x29A425F18);
}

void *sub_29A425FA8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[30];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v2)
  {
    return sub_29A426D84(a2, *v2, v2[1], (v2[1] - *v2) >> 4);
  }

  return result;
}

tbb::queuing_rw_mutex::scoped_lock *pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::Find@<X0>(pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry *this@<X0>, const pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier *a2@<X1>, void *a3@<X8>)
{
  v6 = *(this + 3);
  v8[0] = 0;
  v9 = 0;
  tbb::queuing_rw_mutex::scoped_lock::acquire(v8, (v6 + 424), 0);
  pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::_Find(this, a2, a3);
  return sub_29A344D60(v8);
}

void pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::FindAllUsingLayer(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2[0] = 0;
  v3 = 0;
  tbb::queuing_rw_mutex::scoped_lock::acquire(v2, (v1 + 424), 0);
  sub_29A427638();
}

void pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::SetLayerStackVectorOverride(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4[0] = 0;
  v5 = 0;
  tbb::queuing_rw_mutex::scoped_lock::acquire(v4, (v3 + 424), 1);
  v6 = a2;
  sub_29A427754();
}

tbb::queuing_rw_mutex::scoped_lock *pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::ClearLayerStackVectorOverrides(pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry *this)
{
  v2 = *(this + 3);
  v4[0] = 0;
  v5 = 0;
  tbb::queuing_rw_mutex::scoped_lock::acquire(v4, (v2 + 424), 1);
  sub_29A427CC4(*(this + 3) + 200);
  return sub_29A344D60(v4);
}

tbb::queuing_rw_mutex::scoped_lock *pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::GetAllLayerStacks@<X0>(pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(this + 3);
  v24[0] = 0;
  v25 = 0;
  tbb::queuing_rw_mutex::scoped_lock::acquire(v24, (v4 + 424), 0);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_29A4263AC(a2, *(*(this + 3) + 24));
  v22 = *(*(this + 3) + 16);
  v23 = 0;
  while (v22 != v23)
  {
    v7 = sub_29A426468(&v22, v5, v6);
    v8 = sub_29B2A0EDC(*v7 + 96);
    if (!(v9 & 1 | v8))
    {
      v20[0] = "pcp/layerStackRegistry.cpp";
      v20[1] = "GetAllLayerStacks";
      v20[2] = 238;
      v20[3] = "std::vector<PcpLayerStackPtr> pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::GetAllLayerStacks() const";
      v21 = 0;
      v12 = sub_29A426468(&v22, v9, v10);
      sub_29A4182A4(*v12 + 16);
      if (v19 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v16 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Unexpected dead layer stack %s", v13, v14, p_p);
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v20, "i->second", v16);
      if (v19 < 0)
      {
        operator delete(__p);
      }
    }

    v11 = sub_29A426468(&v22, v9, v10);
    sub_29A4264A0(a2, *v11 + 96);
    sub_29A4264F8(&v22);
  }

  return sub_29A344D60(v24);
}

void sub_29A42636C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_29A0EBD50(&__p);
  sub_29A344D60(&a24);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A4263AC(uint64_t *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (a2 >> 60)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A017BD4(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[16 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = v2[1];
    v9 = &v4[v3 + *v2 - v8];
    sub_29A427D20(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29A0ED41C(&v12);
  }

  return result;
}

void sub_29A426454(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0ED41C(va);
  _Unwind_Resume(a1);
}

void *sub_29A426468(void *result, uint64_t a2, char *a3)
{
  if (*result == result[1])
  {
    sub_29B2A1834(result, a2, a3);
  }

  return result;
}

uint64_t sub_29A4264A0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A427DA4(a1, a2);
  }

  else
  {
    v4 = *(a2 + 8);
    *v3 = *a2;
    v3[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    }

    result = (v3 + 2);
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29A4264F8(uint64_t a1)
{
  if (*a1 == *(a1 + 8))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::unordered_map<pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier, pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>, pxrInternal__aapl__pxrReserved__::TfHash>>::operator++() [T = std::unordered_map<pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier, pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::PcpLayerStack>, pxrInternal__aapl__pxrReserved__::TfHash>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 = **a1;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::ForEachLayerStack(pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::GetAllLayerStacks(a1, v5);
  v3 = v5[0];
  v4 = v5[1];
  while (v3 != v4)
  {
    (*(a2 + 8))(*a2, v3);
    v3 += 16;
  }

  v6 = v5;
  sub_29A0EBD50(&v6);
}

void sub_29A4265E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A0EBD50(&a12);
  _Unwind_Resume(a1);
}

tbb::queuing_rw_mutex::scoped_lock *pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::_SetLayersAndRemove(pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry *this, const pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier *a2, const pxrInternal__aapl__pxrReserved__::PcpLayerStack *a3)
{
  v6 = *(this + 3);
  v9[0] = 0;
  v10 = 0;
  tbb::queuing_rw_mutex::scoped_lock::acquire(v9, (v6 + 424), 1);
  v7 = sub_29A427530(*(this + 3), a2);
  pxrInternal__aapl__pxrReserved__::Pcp_LayerStackRegistry::_SetLayers(this, a3);
  if (v7)
  {
    sub_29A419260((v7 + 12));
  }

  return sub_29A344D60(v9);
}

void pxrInternal__aapl__pxrReserved__::Pcp_MutedLayers::_GetCanonicalLayerId(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  v13[0] = 0;
  v13[1] = 0;
  v12 = v13;
  if ((pxrInternal__aapl__pxrReserved__::SdfLayer::SplitIdentifier(a3, v14, &v12) & 1) == 0)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    goto LABEL_13;
  }

  IsAnonymousLayerIdentifier = pxrInternal__aapl__pxrReserved__::SdfLayer::IsAnonymousLayerIdentifier(v14);
  if (!IsAnonymousLayerIdentifier)
  {
    pxrInternal__aapl__pxrReserved__::ArGetResolver(IsAnonymousLayerIdentifier);
    sub_29A1DA6E4(a2);
  }

  if (SHIBYTE(v15) < 0)
  {
    sub_29A008D14(__p, v14[0], v14[1]);
  }

  else
  {
    *__p = *v14;
    v11 = v15;
  }

  v8 = HIBYTE(v11);
  v9 = HIBYTE(v11);
  if (v11 < 0)
  {
    v8 = __p[1];
  }

  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::Pcp_StripFileFormatTarget(a1, &v12);
    pxrInternal__aapl__pxrReserved__::SdfLayer::CreateIdentifier(__p, &v12);
    if ((v11 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (v9 < 0)
  {
LABEL_12:
    operator delete(__p[0]);
  }

LABEL_13:
  sub_29A01752C(&v12, v13[0]);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_29A426820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, void *a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_29A01752C(&a16, a17);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::Pcp_MutedLayers::Pcp_MutedLayers(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v3;
  }

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  return __dst;
}

{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v3;
  }

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  return __dst;
}

std::string *sub_29A426914(char **a1, uint64_t a2, __int128 *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v12 = a2 - v10;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 3);
    v14 = 2 * v13;
    if (2 * v13 <= v11)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    }

    if (v13 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v14;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
    v29 = a1;
    if (v15)
    {
      v17 = sub_29A012C48(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v26 = v17;
    v27 = &v17[24 * v16];
    *&v28 = v27;
    *(&v28 + 1) = &v17[24 * v15];
    sub_29A429118(&v26, a3);
    v18 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v19 = *a1;
    v20 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v21 = v4 - v19;
    v22 = &v20[-(v4 - v19)];
    memcpy(v22, v19, v21);
    v23 = *a1;
    *a1 = v22;
    v24 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v23;
    *(&v28 + 1) = v24;
    v26 = v23;
    v27 = v23;
    sub_29A01FF14(&v26);
    return v18;
  }

  else
  {
    if (a2 == v6)
    {
      std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>();
    }

    sub_29A095A18(a1, a2, v6, a2 + 24);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 24;
    if (v8)
    {
      v9 = 0;
    }

    std::string::operator=(v4, (a3 + v9));
  }

  return v4;
}

void sub_29A426AA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A01FF14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A426ABC(uint64_t a1)
{
  sub_29A426AF8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A426AF8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29B2A130C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29A426B3C(uint64_t a1)
{
  sub_29A426B78(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A426B78(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29B2A1384((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29A426BBC(uint64_t a1)
{
  sub_29A426BF8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A426BF8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A426C3C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A426C3C(uint64_t a1)
{
  v2 = (a1 + 24);
  sub_29A0EBD50(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t sub_29A426C84(uint64_t a1)
{
  sub_29A426CC0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A426CC0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29B2A1408((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29A426D04(uint64_t a1)
{
  sub_29A426D40(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A426D40(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29B2A1480((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_29A426D84(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29A426E0C(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A426DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void *sub_29A426E0C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_29A426E94(v7);
  return v4;
}

uint64_t sub_29A426E94(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A14D2C0(a1);
  }

  return a1;
}

void sub_29A426ECC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = a2;
  if (v4)
  {
    v5 = sub_29B2A1580(v4);

    operator delete(v5);
  }
}

void *sub_29A426F08(void *a1, void *a2, uint64_t a3, void **a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * a2[9]);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    sub_29A42717C(a1, v6, a4, v16);
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v6)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v7)
      {
        v14 %= *&v7;
      }
    }

    else
    {
      v14 &= *&v7 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if ((pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier::operator==(v13 + 2, a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_29A427164(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A427200(va, 0);
  _Unwind_Resume(a1);
}

void sub_29A42717C(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x70uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v9 = *a3;
  sub_29B2A16F4(v8 + 2, &v9);
}

void sub_29A427200(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B2A1480(v2 + 16);
    }

    operator delete(v2);
  }
}

void *sub_29A427260(void *a1, uint64_t a2)
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

void sub_29A4272BC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A4272D4(void *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
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
        sub_29A1D5390(a1, a2, a1[1], &a2[2 * a5]);
        v20 = &v7[2 * a5];
      }

      else
      {
        a1[1] = sub_29A426E0C(a1, (a3 + v18), a4, a1[1]);
        if (v19 < 1)
        {
          return v5;
        }

        sub_29A1D5390(a1, v5, v10, &v5[2 * a5]);
        v20 = (v7 + v18);
      }

      sub_29A4274B8(v32, v7, v20, v5);
      return v5;
    }

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
    v34 = a1;
    if (v15)
    {
      v17 = sub_29A017BD4(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v21 = &v17[16 * v16];
    v33 = &v17[16 * v15];
    v22 = &v21[2 * a5];
    v23 = v21;
    do
    {
      *v23 = *v7;
      v24 = v7[1];
      v23[1] = v24;
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      v23 += 2;
      v7 += 2;
    }

    while (v23 != v22);
    memcpy(v22, v5, a1[1] - v5);
    v25 = *a1;
    v26 = v22 + a1[1] - v5;
    a1[1] = v5;
    v27 = v5 - v25;
    v28 = v21 - (v5 - v25);
    memcpy(v28, v25, v27);
    v29 = *a1;
    *a1 = v28;
    a1[1] = v26;
    v30 = a1[2];
    a1[2] = v33;
    v32[2] = v29;
    v33 = v30;
    v32[0] = v29;
    v32[1] = v29;
    sub_29A017C0C(v32);
    return v21;
  }

  return v5;
}