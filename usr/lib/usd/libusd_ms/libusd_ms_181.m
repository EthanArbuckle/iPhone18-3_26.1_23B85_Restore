uint64_t sub_29AFA2E30(uint64_t a1, tbb::internal *this)
{
  if (*(this + 208))
  {
    sub_29AFA2E74(a1, this);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

pxrInternal__aapl__pxrReserved__ *sub_29AFA2E74(uint64_t a1, uint64_t a2)
{
  v6 = (a2 + 40);
  sub_29A7544DC(&v6);
  v3 = *(a2 + 32);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 28));
  sub_29A1DE3A4((a2 + 24));
  result = *(a2 + 16);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result, v4);
  }

  return result;
}

uint64_t sub_29AFA2EE4(uint64_t a1)
{
  v6 = (a1 + 32);
  sub_29A7544DC(&v6);
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  v4 = *(a1 + 8);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  return a1;
}

uint64_t sub_29AFA2F58(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29AFA2FD0(a1, (i + 2), (i + 2));
  }

  return a1;
}

void *sub_29AFA2FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  LOBYTE(v24) = 0;
  sub_29A5BD47C(&v23, a2, (a2 + 8), (a2 + 16), (a2 + 24));
  v7 = bswap64(0x9E3779B97F4A7C55 * v23);
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
      v3 = (v8 - 1) & v7;
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
            if (*(v11 + 4) == *a2 && v11[3] == *(a2 + 8) && v11[4] == *(a2 + 16) && (*(a2 + 24) ^ v11[5]) < 8)
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

  v11 = operator new(0xB0uLL);
  v23 = v11;
  v24 = a1;
  v25 = 1;
  *v11 = 0;
  v11[1] = v7;
  sub_29AFA3278((v11 + 2), a3);
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
LABEL_41:
    *v20 = v11;
    goto LABEL_42;
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
    goto LABEL_41;
  }

LABEL_42:
  ++*(a1 + 24);
  return v11;
}

void sub_29AFA3260(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AFA3324(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFA3278(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 16), (a2 + 16));
  sub_29A1E2240((a1 + 20), (a2 + 20));
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v8;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  v9 = *(a2 + 96);
  v10 = *(a2 + 112);
  v11 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v11;
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  return a1;
}

void sub_29AFA3324(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AFA1850(v2 + 16);
    }

    operator delete(v2);
  }
}

uint64_t sub_29AFA3380(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AFA2DAC(a1 + 16);
  return a1;
}

uint64_t sub_29AFA33B4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_29AFA346C(a1, 8uLL, &v11);
  v8[70] = a4;
  v9 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v8);
  sub_29A1E21F4((a1 + 568), v9);
  sub_29A1E2240((a1 + 572), v9 + 1);
  *(a1 + 576) = 1;
  sub_29AFA3764(a1 + 584, a3);
  *(a1 + 624) = a2;
  return a1;
}

void sub_29AFA3448(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v1 + 568));
  sub_29AFA3B84(v1, v3);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFA346C(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x48);
  v5[8] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AFA35C4(uint64_t a1)
{
  sub_29AFA3600(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29AFA3648(a1, v2);
  return a1;
}

uint64_t sub_29AFA3600(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *v2;
  *v2 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      result = sub_29AFA3648(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29AFA3648(int a1, tbb::internal *this)
{
  if (*(this + 64))
  {
    sub_29AFA368C(this + 8);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

uint64_t sub_29AFA368C(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 44));
  sub_29A1DE3A4((a1 + 40));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  v4 = *(a1 + 8);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  return a1;
}

_DWORD *sub_29AFA3710(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29AFA3764(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29AFA37DC(a1, (i + 2), (i + 2));
  }

  return a1;
}

void *sub_29AFA37DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  LOBYTE(v24) = 0;
  sub_29A5BD47C(&v23, a2, (a2 + 8), (a2 + 16), (a2 + 24));
  v7 = bswap64(0x9E3779B97F4A7C55 * v23);
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
      v3 = (v8 - 1) & v7;
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
            if (*(v11 + 4) == *a2 && v11[3] == *(a2 + 8) && v11[4] == *(a2 + 16) && (*(a2 + 24) ^ v11[5]) < 8)
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

  v11 = operator new(0x38uLL);
  v23 = v11;
  v24 = a1;
  v25 = 1;
  *v11 = 0;
  v11[1] = v7;
  sub_29AFA3A84((v11 + 2), a3);
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
LABEL_41:
    *v20 = v11;
    goto LABEL_42;
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
    goto LABEL_41;
  }

LABEL_42:
  ++*(a1 + 24);
  return v11;
}

void sub_29AFA3A6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AFA3B28(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFA3A84(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 16), (a2 + 16));
  sub_29A1E2240((a1 + 20), (a2 + 20));
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A1E21F4((a1 + 32), (a2 + 32));
  sub_29A1E2240((a1 + 36), (a2 + 36));
  return a1;
}

void sub_29AFA3B28(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AFA19F4(v2 + 16);
    }

    operator delete(v2);
  }
}

uint64_t sub_29AFA3B84(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AFA35C4(a1 + 16);
  return a1;
}

uint64_t sub_29AFA3BB8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_29AFA3C70(a1, 8uLL, &v11);
  v8[70] = a4;
  v9 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v8);
  sub_29A1E21F4((a1 + 568), v9);
  sub_29A1E2240((a1 + 572), v9 + 1);
  *(a1 + 576) = 1;
  sub_29AFA3F20(a1 + 584, a3);
  *(a1 + 624) = a2;
  return a1;
}

void sub_29AFA3C4C(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v1 + 568));
  sub_29AFA429C(v1, v3);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFA3C70(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0xB8);
  v5[22] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AFA3DC8(uint64_t a1)
{
  sub_29AFA3E04(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29AFA3E4C(a1, v2);
  return a1;
}

uint64_t sub_29AFA3E04(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *v2;
  *v2 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      result = sub_29AFA3E4C(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29AFA3E4C(uint64_t a1, tbb::internal *this)
{
  if (*(this + 176))
  {
    sub_29AFA3E90(a1, this);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

pxrInternal__aapl__pxrReserved__ *sub_29AFA3E90(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 160);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A5896C0(a2 + 40);
  v4 = *(a2 + 32);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 28));
  sub_29A1DE3A4((a2 + 24));
  result = *(a2 + 16);
  if (result)
  {

    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result, v5);
  }

  return result;
}

uint64_t sub_29AFA3F20(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29AFA3F98(a1, (i + 2), (i + 2));
  }

  return a1;
}

void *sub_29AFA3F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  LOBYTE(v24) = 0;
  sub_29A5BD47C(&v23, a2, (a2 + 8), (a2 + 16), (a2 + 24));
  v7 = bswap64(0x9E3779B97F4A7C55 * v23);
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
      v3 = (v8 - 1) & v7;
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
            if (*(v11 + 4) == *a2 && v11[3] == *(a2 + 8) && v11[4] == *(a2 + 16) && (*(a2 + 24) ^ v11[5]) < 8)
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

  v11 = operator new(0x38uLL);
  v23 = v11;
  v24 = a1;
  v25 = 1;
  *v11 = 0;
  v11[1] = v7;
  sub_29A757BA8((v11 + 2), a3);
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
LABEL_41:
    *v20 = v11;
    goto LABEL_42;
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
    goto LABEL_41;
  }

LABEL_42:
  ++*(a1 + 24);
  return v11;
}

void sub_29AFA4228(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AFA4240(va, 0);
  _Unwind_Resume(a1);
}

void sub_29AFA4240(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AFA1AF8(v2 + 16);
    }

    operator delete(v2);
  }
}

uint64_t sub_29AFA429C(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AFA3DC8(a1 + 16);
  return a1;
}

uint64_t sub_29AFA42D0(uint64_t a1)
{
  v2 = sub_29AFA4364(a1, 8uLL, &v5);
  *(v2 + 70) = 0x7FF8000000000000;
  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v2);
  sub_29A1E21F4((a1 + 568), v3);
  sub_29A1E2240((a1 + 572), v3 + 1);
  *(a1 + 576) = 1;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 1065353216;
  return a1;
}

uint64_t sub_29AFA4364(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0xC0);
  v5[23] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AFA44BC(uint64_t a1)
{
  sub_29AFA44F8(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29AFA4540(a1, v2);
  return a1;
}

uint64_t sub_29AFA44F8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *v2;
  *v2 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      result = sub_29AFA4540(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29AFA4540(uint64_t a1, tbb::internal *this)
{
  if (*(this + 184))
  {
    sub_29AFA4584(a1, this);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

pxrInternal__aapl__pxrReserved__ *sub_29AFA4584(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 160);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A5896C0(a2 + 40);
  v4 = *(a2 + 32);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 28));
  sub_29A1DE3A4((a2 + 24));
  result = *(a2 + 16);
  if (result)
  {

    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result, v5);
  }

  return result;
}

uint64_t sub_29AFA4614(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AFA44BC(a1 + 16);
  return a1;
}

uint64_t sub_29AFA4648(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_29AFA4700(a1, 8uLL, &v11);
  v8[70] = a4;
  v9 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v8);
  sub_29A1E21F4((a1 + 568), v9);
  sub_29A1E2240((a1 + 572), v9 + 1);
  *(a1 + 576) = 1;
  sub_29AFA3F20(a1 + 584, a3);
  *(a1 + 624) = a2;
  return a1;
}

void sub_29AFA46DC(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v1 + 568));
  sub_29AFA4A2C(v1, v3);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFA4700(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0xB8);
  v5[22] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AFA4858(uint64_t a1)
{
  sub_29AFA4894(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29AFA48DC(a1, v2);
  return a1;
}

uint64_t sub_29AFA4894(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *v2;
  *v2 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      result = sub_29AFA48DC(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29AFA48DC(uint64_t a1, tbb::internal *this)
{
  if (*(this + 176))
  {
    sub_29AFA4920(a1, this);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

pxrInternal__aapl__pxrReserved__ *sub_29AFA4920(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 160);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A5896C0(a2 + 40);
  v4 = *(a2 + 32);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 28));
  sub_29A1DE3A4((a2 + 24));
  result = *(a2 + 16);
  if (result)
  {

    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result, v5);
  }

  return result;
}

uint64_t sub_29AFA49B0(uint64_t a1)
{
  v2 = *(a1 + 152);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A5896C0(a1 + 32);
  v3 = *(a1 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  v5 = *(a1 + 8);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5, v4);
  }

  return a1;
}

uint64_t sub_29AFA4A2C(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AFA4858(a1 + 16);
  return a1;
}

uint64_t sub_29AFA4A60(uint64_t a1)
{
  v2 = sub_29AFA4AF4(a1, 8uLL, &v5);
  *(v2 + 70) = 0x7FF8000000000000;
  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v2);
  sub_29A1E21F4((a1 + 568), v3);
  sub_29A1E2240((a1 + 572), v3 + 1);
  *(a1 + 576) = 1;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 1065353216;
  return a1;
}

uint64_t sub_29AFA4AF4(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x68);
  v5[12] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AFA4C4C(uint64_t a1)
{
  sub_29AFA4C88(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29AFA4CD0(a1, v2);
  return a1;
}

uint64_t sub_29AFA4C88(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *v2;
  *v2 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      result = sub_29AFA4CD0(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29AFA4CD0(uint64_t a1, tbb::internal *this)
{
  if (*(this + 96))
  {
    sub_29AFA4D14(a1, this);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

pxrInternal__aapl__pxrReserved__ *sub_29AFA4D14(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::~UsdGeomPrimvarsAPI((a2 + 40));
  v4 = *(a2 + 32);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 28));
  sub_29A1DE3A4((a2 + 24));
  result = *(a2 + 16);
  if (result)
  {

    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result, v5);
  }

  return result;
}

uint64_t sub_29AFA4D98(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AFA4C4C(a1 + 16);
  return a1;
}

uint64_t sub_29AFA4DCC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_29AFA4E84(a1, 8uLL, &v11);
  v8[70] = a4;
  v9 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v8);
  sub_29A1E21F4((a1 + 568), v9);
  sub_29A1E2240((a1 + 572), v9 + 1);
  *(a1 + 576) = 1;
  sub_29AFA5120(a1 + 584, a3);
  *(a1 + 624) = a2;
  return a1;
}

void sub_29AFA4E60(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v1 + 568));
  sub_29AFA55B8(v1, v3);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFA4E84(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x68);
  v5[12] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AFA4FDC(uint64_t a1)
{
  sub_29AFA5018(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29AFA5060(a1, v2);
  return a1;
}

uint64_t sub_29AFA5018(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *v2;
  *v2 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      result = sub_29AFA5060(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29AFA5060(uint64_t a1, tbb::internal *this)
{
  if (*(this + 96))
  {
    sub_29AFA50A4(a1, this);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

pxrInternal__aapl__pxrReserved__ *sub_29AFA50A4(uint64_t a1, uint64_t a2)
{
  sub_29AFA1C7C((a2 + 48));
  v3 = *(a2 + 32);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 28));
  sub_29A1DE3A4((a2 + 24));
  result = *(a2 + 16);
  if (result)
  {

    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result, v4);
  }

  return result;
}

uint64_t sub_29AFA5120(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29AFA5198(a1, (i + 2), (i + 2));
  }

  return a1;
}

uint64_t *sub_29AFA5198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  v24 = 0;
  sub_29A5BD47C(&v23, a2, (a2 + 8), (a2 + 16), (a2 + 24));
  v7 = bswap64(0x9E3779B97F4A7C55 * v23);
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
      v3 = (v8 - 1) & v7;
    }

    v10 = *(*a1 + 8 * v3);
    if (v10)
    {
      for (result = *v10; result; result = *result)
      {
        v12 = result[1];
        if (v12 == v7)
        {
          if (*(result + 4) == *a2 && result[3] == *(a2 + 8) && result[4] == *(a2 + 16) && (*(a2 + 24) ^ result[5]) < 8)
          {
            return result;
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
      }
    }
  }

  sub_29AFA5434(a1, v7, a3, &v23);
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
    result = v23;
    *v23 = *v20;
    *v20 = result;
  }

  else
  {
    v21 = v23;
    *v23 = *(a1 + 16);
    *(a1 + 16) = v21;
    *(v19 + 8 * v3) = a1 + 16;
    result = v23;
    if (*v23)
    {
      v22 = *(*v23 + 8);
      if ((v8 & (v8 - 1)) != 0)
      {
        if (v22 >= v8)
        {
          v22 %= v8;
        }
      }

      else
      {
        v22 &= v8 - 1;
      }

      *(*a1 + 8 * v22) = v23;
      result = v23;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29AFA541C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AFA555C(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFA5434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x58uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  result = sub_29AFA54A4((v8 + 2), a3);
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29AFA54A4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 16), (a2 + 16));
  sub_29A1E2240((a1 + 20), (a2 + 20));
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  v7 = *(a2 + 64);
  *(a1 + 64) = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(a1 + 56))
    {
      v8 = *(a1 + 56);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_29AFA555C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AFA1C00(v2 + 16);
    }

    operator delete(v2);
  }
}

uint64_t sub_29AFA55B8(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AFA4FDC(a1 + 16);
  return a1;
}

uint64_t sub_29AFA55EC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_29AFA56A4(a1, 8uLL, &v11);
  v8[70] = a4;
  v9 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v8);
  sub_29A1E21F4((a1 + 568), v9);
  sub_29A1E2240((a1 + 572), v9 + 1);
  *(a1 + 576) = 1;
  sub_29AFA593C(a1 + 584, a3);
  *(a1 + 624) = a2;
  return a1;
}

void sub_29AFA5680(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v1 + 568));
  sub_29AFA5D4C(v1, v3);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFA56A4(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0xB0);
  v5[21] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AFA57FC(uint64_t a1)
{
  sub_29AFA5838(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29AFA5880(a1, v2);
  return a1;
}

uint64_t sub_29AFA5838(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *v2;
  *v2 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      result = sub_29AFA5880(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29AFA5880(uint64_t a1, tbb::internal *this)
{
  if (*(this + 168))
  {
    sub_29AFA58C4(a1, this);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

pxrInternal__aapl__pxrReserved__ *sub_29AFA58C4(uint64_t a1, uint64_t a2)
{
  sub_29A5896C0(a2 + 40);
  v3 = *(a2 + 32);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 28));
  sub_29A1DE3A4((a2 + 24));
  result = *(a2 + 16);
  if (result)
  {

    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result, v4);
  }

  return result;
}

uint64_t sub_29AFA593C(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29AFA59B4(a1, (i + 2), (i + 2));
  }

  return a1;
}

void *sub_29AFA59B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  LOBYTE(v24) = 0;
  sub_29A5BD47C(&v23, a2, (a2 + 8), (a2 + 16), (a2 + 24));
  v7 = bswap64(0x9E3779B97F4A7C55 * v23);
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
      v3 = (v8 - 1) & v7;
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
            if (*(v11 + 4) == *a2 && v11[3] == *(a2 + 8) && v11[4] == *(a2 + 16) && (*(a2 + 24) ^ v11[5]) < 8)
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

  v11 = operator new(0x38uLL);
  v23 = v11;
  v24 = a1;
  v25 = 1;
  *v11 = 0;
  v11[1] = v7;
  sub_29AFA5C5C((v11 + 2), a3);
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
LABEL_41:
    *v20 = v11;
    goto LABEL_42;
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
    goto LABEL_41;
  }

LABEL_42:
  ++*(a1 + 24);
  return v11;
}

void sub_29AFA5C44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AFA5CF0(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFA5C5C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 16), (a2 + 16));
  sub_29A1E2240((a1 + 20), (a2 + 20));
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

void sub_29AFA5CF0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AFA1D98(v2 + 16);
    }

    operator delete(v2);
  }
}

uint64_t sub_29AFA5D4C(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AFA57FC(a1 + 16);
  return a1;
}

uint64_t sub_29AFA5D80(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_29AFA5E38(a1, 8uLL, &v11);
  v8[70] = a4;
  v9 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v8);
  sub_29A1E21F4((a1 + 568), v9);
  sub_29A1E2240((a1 + 572), v9 + 1);
  *(a1 + 576) = 1;
  sub_29AFA60D0(a1 + 584, a3);
  *(a1 + 624) = a2;
  return a1;
}

void sub_29AFA5E14(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v1 + 568));
  sub_29AFA64E0(v1, v3);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFA5E38(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0xB8);
  v5[22] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AFA5F90(uint64_t a1)
{
  sub_29AFA5FCC(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29AFA6014(a1, v2);
  return a1;
}

uint64_t sub_29AFA5FCC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *v2;
  *v2 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      result = sub_29AFA6014(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29AFA6014(uint64_t a1, tbb::internal *this)
{
  if (*(this + 176))
  {
    sub_29AFA6058(a1, this);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

pxrInternal__aapl__pxrReserved__ *sub_29AFA6058(uint64_t a1, uint64_t a2)
{
  sub_29A5896C0(a2 + 40);
  v3 = *(a2 + 32);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 28));
  sub_29A1DE3A4((a2 + 24));
  result = *(a2 + 16);
  if (result)
  {

    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result, v4);
  }

  return result;
}

uint64_t sub_29AFA60D0(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29AFA6148(a1, (i + 2), (i + 2));
  }

  return a1;
}

void *sub_29AFA6148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  LOBYTE(v24) = 0;
  sub_29A5BD47C(&v23, a2, (a2 + 8), (a2 + 16), (a2 + 24));
  v7 = bswap64(0x9E3779B97F4A7C55 * v23);
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
      v3 = (v8 - 1) & v7;
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
            if (*(v11 + 4) == *a2 && v11[3] == *(a2 + 8) && v11[4] == *(a2 + 16) && (*(a2 + 24) ^ v11[5]) < 8)
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

  v11 = operator new(0x38uLL);
  v23 = v11;
  v24 = a1;
  v25 = 1;
  *v11 = 0;
  v11[1] = v7;
  sub_29AFA63F0((v11 + 2), a3);
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
LABEL_41:
    *v20 = v11;
    goto LABEL_42;
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
    goto LABEL_41;
  }

LABEL_42:
  ++*(a1 + 24);
  return v11;
}

void sub_29AFA63D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AFA6484(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFA63F0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 16), (a2 + 16));
  sub_29A1E2240((a1 + 20), (a2 + 20));
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

void sub_29AFA6484(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AFA1E88(v2 + 16);
    }

    operator delete(v2);
  }
}

uint64_t sub_29AFA64E0(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AFA5F90(a1 + 16);
  return a1;
}

uint64_t sub_29AFA6514(uint64_t a1)
{
  v2 = sub_29AFA65A8(a1, 8uLL, &v5);
  *(v2 + 70) = 0x7FF8000000000000;
  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v2);
  sub_29A1E21F4((a1 + 568), v3);
  sub_29A1E2240((a1 + 572), v3 + 1);
  *(a1 + 576) = 1;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 1065353216;
  return a1;
}

uint64_t sub_29AFA65A8(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x60);
  v5[11] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AFA6700(uint64_t a1)
{
  sub_29AFA673C(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29AFA6784(a1, v2);
  return a1;
}

uint64_t sub_29AFA673C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *v2;
  *v2 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      result = sub_29AFA6784(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29AFA6784(uint64_t a1, tbb::internal *this)
{
  if (*(this + 88))
  {
    sub_29AFA67C8(a1, this);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

pxrInternal__aapl__pxrReserved__ *sub_29AFA67C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a2 + 56);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(a2 + 32);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 28));
  sub_29A1DE3A4((a2 + 24));
  result = *(a2 + 16);
  if (result)
  {

    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result, v6);
  }

  return result;
}

uint64_t sub_29AFA6850(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 24);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  v6 = *(a1 + 8);
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v6, v5);
  }

  return a1;
}

uint64_t sub_29AFA68C4(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AFA6700(a1 + 16);
  return a1;
}

uint64_t sub_29AFA68F8(uint64_t a1)
{
  sub_29AFA6934(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AFA6934(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AFA6978((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29AFA6978(uint64_t a1)
{
  v3 = (a1 + 8);
  sub_29A124AB0(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

uint64_t sub_29AFA69C4(uint64_t a1)
{
  sub_29AFA6A1C(a1);
  sub_29AFA17D0(a1 + 584);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 572));
  sub_29A1DE3A4((a1 + 568));

  return sub_29AFA3380(a1, v2);
}

uint64_t sub_29AFA6A1C(__int16 *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29AFA2C54(v6, 8uLL, v7);
  sub_29AFA6BC8(v7, v6);
  sub_29AFA6CA8(v6, a1);
  sub_29AFA6CA8(a1, v7);
  v3 = sub_29AFA3380(v7, v2);
  if ((pxrInternal__aapl__pxrReserved__::Work_ShouldSynchronizeAsyncDestroyCalls(v3) & 1) == 0)
  {
    sub_29AFA6AF4(v6);
  }

  return sub_29AFA3380(v6, v4);
}

uint64_t sub_29AFA6AF4(__int16 *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = sub_29AFA6F4C(v8, a1);
  HasConcurrency = pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(v1);
  if (HasConcurrency)
  {
    DetachedDispatcher = pxrInternal__aapl__pxrReserved__::Work_GetDetachedDispatcher(HasConcurrency);
    v4 = sub_29AFA7018(DetachedDispatcher, v8);
    v5 = (***(v4 - 40))(*(v4 - 40), v4, v4 - 8);
    pxrInternal__aapl__pxrReserved__::Work_EnsureDetachedTaskProgress(v5);
  }

  else
  {
    sub_29AFA6EAC();
  }

  return sub_29AFA3380(v8, v6);
}

uint64_t sub_29AFA6BC8(uint64_t a1, __int16 *a2)
{
  *a1 = *a2;
  *(a1 + 24) = 0;
  v4 = tbb::internal::allocate_via_handler_v3(0xD8);
  v4[26] = 0;
  *v4 = 0;
  *(a1 + 32) = v4;
  *(a1 + 44) = 1082130432;
  __dmb(0xBu);
  *(a1 + 8) = 8;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v6 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v6);
  sub_29AC16588(a1, a2);
  return a1;
}

__int16 *sub_29AFA6CA8(__int16 *a1, __int16 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1 != a2)
  {
    sub_29AFA6BC8(v6, a1);
    sub_29AC16588(a1, a2);
    sub_29AFA3380(v6, v4);
  }

  return a1;
}

void sub_29AFA6D34(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AFA3380(va, a2);
  _Unwind_Resume(a1);
}

void *sub_29AFA6D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0xD8);
  sub_29AFA6DC8((v5 + 1), a3);
  v5[26] = a2;
  *v5 = 0;
  return v5;
}

void sub_29AFA6DA0(void *a1)
{
  __cxa_begin_catch(a1);
  tbb::internal::deallocate_via_handler_v3(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_29AFA6DC8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 16), (a2 + 16));
  sub_29A1E2240((a1 + 20), (a2 + 20));
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  v6 = *(a2 + 64);
  v7 = *(a2 + 80);
  v8 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v8;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  v9 = *(a2 + 128);
  v10 = *(a2 + 144);
  v11 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v11;
  *(a1 + 128) = v9;
  *(a1 + 144) = v10;
  v12 = atomic_load((a2 + 192));
  atomic_store(v12, (a1 + 192));
  return a1;
}

void sub_29AFA6EAC()
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v3);
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v1 = sub_29A0FE7E0(&v3, 0);
  v4 = 0;
  v2 = sub_29A0ED084(v0 + 19, &v4);
  if (v2 != v1)
  {
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v0, v1, v2);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v3);
}

__int16 *sub_29AFA6F4C(__int16 *a1, __int16 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29AFA2C54(a1, 8uLL, v6);
  sub_29AFA6BC8(v6, a1);
  sub_29AFA6CA8(a1, a2);
  sub_29AFA6CA8(a2, v6);
  sub_29AFA3380(v6, v4);
  return a1;
}

uint64_t sub_29AFA7018(uint64_t a1, __int16 *a2)
{
  v4 = *(a1 + 256);
  v7[0] = 0;
  v7[1] = v4;
  v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(v7, 0x240uLL);
  *(v5 - 11) = 1;
  *v5 = &unk_2A20A7C40;
  sub_29AFA6F4C((v5 + 8), a2);
  *(v5 + 568) = a1 + 272;
  return v5;
}

void *sub_29AFA70B8(void *a1, void *a2)
{
  *a1 = &unk_2A20A7C40;
  sub_29AFA3380((a1 + 1), a2);
  return a1;
}

void sub_29AFA70FC(void *a1, void *a2)
{
  *a1 = &unk_2A20A7C40;
  sub_29AFA3380((a1 + 1), a2);

  operator delete(a1);
}

uint64_t sub_29AFA7150(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29AFA6EAC();
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 568));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29AFA71E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFA71F4(uint64_t a1)
{
  sub_29AFA724C(a1);
  sub_29AFA1974(a1 + 584);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 572));
  sub_29A1DE3A4((a1 + 568));

  return sub_29AFA3B84(a1, v2);
}

uint64_t sub_29AFA724C(__int16 *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29AFA346C(v6, 8uLL, v7);
  sub_29AFA73F8(v7, v6);
  sub_29AFA74D8(v6, a1);
  sub_29AFA74D8(a1, v7);
  v3 = sub_29AFA3B84(v7, v2);
  if ((pxrInternal__aapl__pxrReserved__::Work_ShouldSynchronizeAsyncDestroyCalls(v3) & 1) == 0)
  {
    sub_29AFA7324(v6);
  }

  return sub_29AFA3B84(v6, v4);
}

uint64_t sub_29AFA7324(__int16 *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = sub_29AFA7790(v8, a1);
  HasConcurrency = pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(v1);
  if (HasConcurrency)
  {
    DetachedDispatcher = pxrInternal__aapl__pxrReserved__::Work_GetDetachedDispatcher(HasConcurrency);
    v4 = sub_29AFA785C(DetachedDispatcher, v8);
    v5 = (***(v4 - 40))(*(v4 - 40), v4, v4 - 8);
    pxrInternal__aapl__pxrReserved__::Work_EnsureDetachedTaskProgress(v5);
  }

  else
  {
    sub_29AFA76F0();
  }

  return sub_29AFA3B84(v8, v6);
}

uint64_t sub_29AFA73F8(uint64_t a1, __int16 *a2)
{
  *a1 = *a2;
  *(a1 + 24) = 0;
  v4 = tbb::internal::allocate_via_handler_v3(0x48);
  v4[8] = 0;
  *v4 = 0;
  *(a1 + 32) = v4;
  *(a1 + 44) = 1082130432;
  __dmb(0xBu);
  *(a1 + 8) = 8;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v6 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v6);
  sub_29AC16588(a1, a2);
  return a1;
}

__int16 *sub_29AFA74D8(__int16 *a1, __int16 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1 != a2)
  {
    sub_29AFA73F8(v6, a1);
    sub_29AC16588(a1, a2);
    sub_29AFA3B84(v6, v4);
  }

  return a1;
}

void sub_29AFA7564(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AFA3B84(va, a2);
  _Unwind_Resume(a1);
}

void *sub_29AFA7580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0x48);
  sub_29AFA75F8((v5 + 1), a3);
  v5[8] = a2;
  *v5 = 0;
  return v5;
}

void sub_29AFA75D0(void *a1)
{
  __cxa_begin_catch(a1);
  tbb::internal::deallocate_via_handler_v3(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_29AFA75F8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 16), (a2 + 16));
  sub_29A1E2240((a1 + 20), (a2 + 20));
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29AFA7690((a1 + 32), (a2 + 32));
  return a1;
}

_DWORD *sub_29AFA7690(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_29A1DDD84(a1, a2);
  sub_29A1DDDC0(v4 + 1, a2 + 1);
  sub_29A1DDD84(a1 + 2, a2 + 2);
  sub_29A1DDDC0(a1 + 3, a2 + 3);
  v5 = atomic_load(a2 + 4);
  atomic_store(v5, a1 + 4);
  return a1;
}

void sub_29AFA76F0()
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v3);
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v1 = sub_29A0FE7E0(&v3, 0);
  v4 = 0;
  v2 = sub_29A0ED084(v0 + 19, &v4);
  if (v2 != v1)
  {
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v0, v1, v2);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v3);
}

__int16 *sub_29AFA7790(__int16 *a1, __int16 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29AFA346C(a1, 8uLL, v6);
  sub_29AFA73F8(v6, a1);
  sub_29AFA74D8(a1, a2);
  sub_29AFA74D8(a2, v6);
  sub_29AFA3B84(v6, v4);
  return a1;
}

uint64_t sub_29AFA785C(uint64_t a1, __int16 *a2)
{
  v4 = *(a1 + 256);
  v7[0] = 0;
  v7[1] = v4;
  v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(v7, 0x240uLL);
  *(v5 - 11) = 1;
  *v5 = &unk_2A20A7C88;
  sub_29AFA7790((v5 + 8), a2);
  *(v5 + 568) = a1 + 272;
  return v5;
}

void *sub_29AFA78FC(void *a1, void *a2)
{
  *a1 = &unk_2A20A7C88;
  sub_29AFA3B84((a1 + 1), a2);
  return a1;
}

void sub_29AFA7940(void *a1, void *a2)
{
  *a1 = &unk_2A20A7C88;
  sub_29AFA3B84((a1 + 1), a2);

  operator delete(a1);
}

uint64_t sub_29AFA7994(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29AFA76F0();
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 568));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29AFA7A24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFA7A38(uint64_t a1)
{
  sub_29AFA7A90(a1);
  sub_29AFA8240(a1 + 584);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 572));
  sub_29A1DE3A4((a1 + 568));

  return sub_29AFA68C4(a1, v2);
}

uint64_t sub_29AFA7A90(__int16 *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29AFA65A8(v6, 8uLL, v7);
  sub_29AFA7C3C(v7, v6);
  sub_29AFA7D1C(v6, a1);
  sub_29AFA7D1C(a1, v7);
  v3 = sub_29AFA68C4(v7, v2);
  if ((pxrInternal__aapl__pxrReserved__::Work_ShouldSynchronizeAsyncDestroyCalls(v3) & 1) == 0)
  {
    sub_29AFA7B68(v6);
  }

  return sub_29AFA68C4(v6, v4);
}

uint64_t sub_29AFA7B68(__int16 *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = sub_29AFA7F98(v8, a1);
  HasConcurrency = pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(v1);
  if (HasConcurrency)
  {
    DetachedDispatcher = pxrInternal__aapl__pxrReserved__::Work_GetDetachedDispatcher(HasConcurrency);
    v4 = sub_29AFA8064(DetachedDispatcher, v8);
    v5 = (***(v4 - 40))(*(v4 - 40), v4, v4 - 8);
    pxrInternal__aapl__pxrReserved__::Work_EnsureDetachedTaskProgress(v5);
  }

  else
  {
    sub_29AFA7EF8();
  }

  return sub_29AFA68C4(v8, v6);
}

uint64_t sub_29AFA7C3C(uint64_t a1, __int16 *a2)
{
  *a1 = *a2;
  *(a1 + 24) = 0;
  v4 = tbb::internal::allocate_via_handler_v3(0x60);
  v4[11] = 0;
  *v4 = 0;
  *(a1 + 32) = v4;
  *(a1 + 44) = 1082130432;
  __dmb(0xBu);
  *(a1 + 8) = 8;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v6 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v6);
  sub_29AC16588(a1, a2);
  return a1;
}

__int16 *sub_29AFA7D1C(__int16 *a1, __int16 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1 != a2)
  {
    sub_29AFA7C3C(v6, a1);
    sub_29AC16588(a1, a2);
    sub_29AFA68C4(v6, v4);
  }

  return a1;
}

void sub_29AFA7DA8(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AFA68C4(va, a2);
  _Unwind_Resume(a1);
}

void *sub_29AFA7DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0x60);
  sub_29AFA7E3C((v5 + 1), a3);
  v5[11] = a2;
  *v5 = 0;
  return v5;
}

void sub_29AFA7E14(void *a1)
{
  __cxa_begin_catch(a1);
  tbb::internal::deallocate_via_handler_v3(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_29AFA7E3C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 16), (a2 + 16));
  sub_29A1E2240((a1 + 20), (a2 + 20));
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v6 = atomic_load((a2 + 72));
  atomic_store(v6, (a1 + 72));
  return a1;
}

void sub_29AFA7EF8()
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v3);
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v1 = sub_29A0FE7E0(&v3, 0);
  v4 = 0;
  v2 = sub_29A0ED084(v0 + 19, &v4);
  if (v2 != v1)
  {
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v0, v1, v2);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v3);
}

__int16 *sub_29AFA7F98(__int16 *a1, __int16 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29AFA65A8(a1, 8uLL, v6);
  sub_29AFA7C3C(v6, a1);
  sub_29AFA7D1C(a1, a2);
  sub_29AFA7D1C(a2, v6);
  sub_29AFA68C4(v6, v4);
  return a1;
}

uint64_t sub_29AFA8064(uint64_t a1, __int16 *a2)
{
  v4 = *(a1 + 256);
  v7[0] = 0;
  v7[1] = v4;
  v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(v7, 0x240uLL);
  *(v5 - 11) = 1;
  *v5 = &unk_2A20A7CD0;
  sub_29AFA7F98((v5 + 8), a2);
  *(v5 + 568) = a1 + 272;
  return v5;
}

void *sub_29AFA8104(void *a1, void *a2)
{
  *a1 = &unk_2A20A7CD0;
  sub_29AFA68C4((a1 + 1), a2);
  return a1;
}

void sub_29AFA8148(void *a1, void *a2)
{
  *a1 = &unk_2A20A7CD0;
  sub_29AFA68C4((a1 + 1), a2);

  operator delete(a1);
}

uint64_t sub_29AFA819C(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29AFA7EF8();
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 568));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29AFA822C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFA8240(uint64_t a1)
{
  sub_29AFA827C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AFA827C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AFA82C0((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

pxrInternal__aapl__pxrReserved__ *sub_29AFA82C0(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 24);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  result = *(a1 + 8);
  if (result)
  {

    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result, v5);
  }

  return result;
}

uint64_t sub_29AFA8348(uint64_t a1)
{
  sub_29AFA83A0(a1);
  sub_29AFA1A78(a1 + 584);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 572));
  sub_29A1DE3A4((a1 + 568));

  return sub_29AFA429C(a1, v2);
}

uint64_t sub_29AFA83A0(__int16 *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29AFA3C70(v6, 8uLL, v7);
  sub_29AFA854C(v7, v6);
  sub_29AFA862C(v6, a1);
  sub_29AFA862C(a1, v7);
  v3 = sub_29AFA429C(v7, v2);
  if ((pxrInternal__aapl__pxrReserved__::Work_ShouldSynchronizeAsyncDestroyCalls(v3) & 1) == 0)
  {
    sub_29AFA8478(v6);
  }

  return sub_29AFA429C(v6, v4);
}

uint64_t sub_29AFA8478(__int16 *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = sub_29AFA8774(v8, a1);
  HasConcurrency = pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(v1);
  if (HasConcurrency)
  {
    DetachedDispatcher = pxrInternal__aapl__pxrReserved__::Work_GetDetachedDispatcher(HasConcurrency);
    v4 = sub_29AFA8840(DetachedDispatcher, v8);
    v5 = (***(v4 - 40))(*(v4 - 40), v4, v4 - 8);
    pxrInternal__aapl__pxrReserved__::Work_EnsureDetachedTaskProgress(v5);
  }

  else
  {
    sub_29AFA86D4();
  }

  return sub_29AFA429C(v8, v6);
}

uint64_t sub_29AFA854C(uint64_t a1, __int16 *a2)
{
  *a1 = *a2;
  *(a1 + 24) = 0;
  v4 = tbb::internal::allocate_via_handler_v3(0xB8);
  v4[22] = 0;
  *v4 = 0;
  *(a1 + 32) = v4;
  *(a1 + 44) = 1082130432;
  __dmb(0xBu);
  *(a1 + 8) = 8;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v6 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v6);
  sub_29AC16588(a1, a2);
  return a1;
}

__int16 *sub_29AFA862C(__int16 *a1, __int16 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1 != a2)
  {
    sub_29AFA854C(v6, a1);
    sub_29AC16588(a1, a2);
    sub_29AFA429C(v6, v4);
  }

  return a1;
}

void sub_29AFA86B8(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AFA429C(va, a2);
  _Unwind_Resume(a1);
}

void sub_29AFA86D4()
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v3);
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v1 = sub_29A0FE7E0(&v3, 0);
  v4 = 0;
  v2 = sub_29A0ED084(v0 + 19, &v4);
  if (v2 != v1)
  {
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v0, v1, v2);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v3);
}

__int16 *sub_29AFA8774(__int16 *a1, __int16 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29AFA3C70(a1, 8uLL, v6);
  sub_29AFA854C(v6, a1);
  sub_29AFA862C(a1, a2);
  sub_29AFA862C(a2, v6);
  sub_29AFA429C(v6, v4);
  return a1;
}

uint64_t sub_29AFA8840(uint64_t a1, __int16 *a2)
{
  v4 = *(a1 + 256);
  v7[0] = 0;
  v7[1] = v4;
  v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(v7, 0x240uLL);
  *(v5 - 11) = 1;
  *v5 = &unk_2A20A7D18;
  sub_29AFA8774((v5 + 8), a2);
  *(v5 + 568) = a1 + 272;
  return v5;
}

void *sub_29AFA88E0(void *a1, void *a2)
{
  *a1 = &unk_2A20A7D18;
  sub_29AFA429C((a1 + 1), a2);
  return a1;
}

void sub_29AFA8924(void *a1, void *a2)
{
  *a1 = &unk_2A20A7D18;
  sub_29AFA429C((a1 + 1), a2);

  operator delete(a1);
}

uint64_t sub_29AFA8978(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29AFA86D4();
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 568));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29AFA8A08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFA8A1C(uint64_t a1)
{
  sub_29AFA8A74(a1);
  sub_29AFA90F0(a1 + 584);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 572));
  sub_29A1DE3A4((a1 + 568));

  return sub_29AFA4614(a1, v2);
}

uint64_t sub_29AFA8A74(__int16 *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29AFA4364(v6, 8uLL, v7);
  sub_29AFA8C20(v7, v6);
  sub_29AFA8D00(v6, a1);
  sub_29AFA8D00(a1, v7);
  v3 = sub_29AFA4614(v7, v2);
  if ((pxrInternal__aapl__pxrReserved__::Work_ShouldSynchronizeAsyncDestroyCalls(v3) & 1) == 0)
  {
    sub_29AFA8B4C(v6);
  }

  return sub_29AFA4614(v6, v4);
}

uint64_t sub_29AFA8B4C(__int16 *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = sub_29AFA8E48(v8, a1);
  HasConcurrency = pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(v1);
  if (HasConcurrency)
  {
    DetachedDispatcher = pxrInternal__aapl__pxrReserved__::Work_GetDetachedDispatcher(HasConcurrency);
    v4 = sub_29AFA8F14(DetachedDispatcher, v8);
    v5 = (***(v4 - 40))(*(v4 - 40), v4, v4 - 8);
    pxrInternal__aapl__pxrReserved__::Work_EnsureDetachedTaskProgress(v5);
  }

  else
  {
    sub_29AFA8DA8();
  }

  return sub_29AFA4614(v8, v6);
}

uint64_t sub_29AFA8C20(uint64_t a1, __int16 *a2)
{
  *a1 = *a2;
  *(a1 + 24) = 0;
  v4 = tbb::internal::allocate_via_handler_v3(0xC0);
  v4[23] = 0;
  *v4 = 0;
  *(a1 + 32) = v4;
  *(a1 + 44) = 1082130432;
  __dmb(0xBu);
  *(a1 + 8) = 8;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v6 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v6);
  sub_29AC16588(a1, a2);
  return a1;
}

__int16 *sub_29AFA8D00(__int16 *a1, __int16 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1 != a2)
  {
    sub_29AFA8C20(v6, a1);
    sub_29AC16588(a1, a2);
    sub_29AFA4614(v6, v4);
  }

  return a1;
}

void sub_29AFA8D8C(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AFA4614(va, a2);
  _Unwind_Resume(a1);
}

void sub_29AFA8DA8()
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v3);
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v1 = sub_29A0FE7E0(&v3, 0);
  v4 = 0;
  v2 = sub_29A0ED084(v0 + 19, &v4);
  if (v2 != v1)
  {
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v0, v1, v2);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v3);
}

__int16 *sub_29AFA8E48(__int16 *a1, __int16 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29AFA4364(a1, 8uLL, v6);
  sub_29AFA8C20(v6, a1);
  sub_29AFA8D00(a1, a2);
  sub_29AFA8D00(a2, v6);
  sub_29AFA4614(v6, v4);
  return a1;
}

uint64_t sub_29AFA8F14(uint64_t a1, __int16 *a2)
{
  v4 = *(a1 + 256);
  v7[0] = 0;
  v7[1] = v4;
  v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(v7, 0x240uLL);
  *(v5 - 11) = 1;
  *v5 = &unk_2A20A7D60;
  sub_29AFA8E48((v5 + 8), a2);
  *(v5 + 568) = a1 + 272;
  return v5;
}

void *sub_29AFA8FB4(void *a1, void *a2)
{
  *a1 = &unk_2A20A7D60;
  sub_29AFA4614((a1 + 1), a2);
  return a1;
}

void sub_29AFA8FF8(void *a1, void *a2)
{
  *a1 = &unk_2A20A7D60;
  sub_29AFA4614((a1 + 1), a2);

  operator delete(a1);
}

uint64_t sub_29AFA904C(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29AFA8DA8();
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 568));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29AFA90DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFA90F0(uint64_t a1)
{
  sub_29AFA912C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AFA912C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AFA9170((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

pxrInternal__aapl__pxrReserved__ *sub_29AFA9170(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  result = *(a1 + 8);
  if (result)
  {

    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result, v4);
  }

  return result;
}

uint64_t sub_29AFA91F8(uint64_t a1)
{
  sub_29AFA9250(a1);
  sub_29AFA1A78(a1 + 584);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 572));
  sub_29A1DE3A4((a1 + 568));

  return sub_29AFA4A2C(a1, v2);
}

uint64_t sub_29AFA9250(__int16 *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29AFA4700(v6, 8uLL, v7);
  sub_29AFA93FC(v7, v6);
  sub_29AFA94DC(v6, a1);
  sub_29AFA94DC(a1, v7);
  v3 = sub_29AFA4A2C(v7, v2);
  if ((pxrInternal__aapl__pxrReserved__::Work_ShouldSynchronizeAsyncDestroyCalls(v3) & 1) == 0)
  {
    sub_29AFA9328(v6);
  }

  return sub_29AFA4A2C(v6, v4);
}

uint64_t sub_29AFA9328(__int16 *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = sub_29AFA9750(v8, a1);
  HasConcurrency = pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(v1);
  if (HasConcurrency)
  {
    DetachedDispatcher = pxrInternal__aapl__pxrReserved__::Work_GetDetachedDispatcher(HasConcurrency);
    v4 = sub_29AFA981C(DetachedDispatcher, v8);
    v5 = (***(v4 - 40))(*(v4 - 40), v4, v4 - 8);
    pxrInternal__aapl__pxrReserved__::Work_EnsureDetachedTaskProgress(v5);
  }

  else
  {
    sub_29AFA96B0();
  }

  return sub_29AFA4A2C(v8, v6);
}

uint64_t sub_29AFA93FC(uint64_t a1, __int16 *a2)
{
  *a1 = *a2;
  *(a1 + 24) = 0;
  v4 = tbb::internal::allocate_via_handler_v3(0xB8);
  v4[22] = 0;
  *v4 = 0;
  *(a1 + 32) = v4;
  *(a1 + 44) = 1082130432;
  __dmb(0xBu);
  *(a1 + 8) = 8;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v6 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v6);
  sub_29AC16588(a1, a2);
  return a1;
}

__int16 *sub_29AFA94DC(__int16 *a1, __int16 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1 != a2)
  {
    sub_29AFA93FC(v6, a1);
    sub_29AC16588(a1, a2);
    sub_29AFA4A2C(v6, v4);
  }

  return a1;
}

void sub_29AFA9568(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AFA4A2C(va, a2);
  _Unwind_Resume(a1);
}

void *sub_29AFA9584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0xB8);
  sub_29AFA95FC((v5 + 1), a3);
  v5[22] = a2;
  *v5 = 0;
  return v5;
}

void sub_29AFA95D4(void *a1)
{
  __cxa_begin_catch(a1);
  tbb::internal::deallocate_via_handler_v3(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_29AFA95FC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 16), (a2 + 16));
  sub_29A1E2240((a1 + 20), (a2 + 20));
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A589860(a1 + 32, a2 + 32);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = 0;
  v6 = atomic_load((a2 + 160));
  atomic_store(v6, (a1 + 160));
  return a1;
}

void sub_29AFA96B0()
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v3);
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v1 = sub_29A0FE7E0(&v3, 0);
  v4 = 0;
  v2 = sub_29A0ED084(v0 + 19, &v4);
  if (v2 != v1)
  {
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v0, v1, v2);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v3);
}

__int16 *sub_29AFA9750(__int16 *a1, __int16 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29AFA4700(a1, 8uLL, v6);
  sub_29AFA93FC(v6, a1);
  sub_29AFA94DC(a1, a2);
  sub_29AFA94DC(a2, v6);
  sub_29AFA4A2C(v6, v4);
  return a1;
}

uint64_t sub_29AFA981C(uint64_t a1, __int16 *a2)
{
  v4 = *(a1 + 256);
  v7[0] = 0;
  v7[1] = v4;
  v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(v7, 0x240uLL);
  *(v5 - 11) = 1;
  *v5 = &unk_2A20A7DA8;
  sub_29AFA9750((v5 + 8), a2);
  *(v5 + 568) = a1 + 272;
  return v5;
}

void *sub_29AFA98BC(void *a1, void *a2)
{
  *a1 = &unk_2A20A7DA8;
  sub_29AFA4A2C((a1 + 1), a2);
  return a1;
}

void sub_29AFA9900(void *a1, void *a2)
{
  *a1 = &unk_2A20A7DA8;
  sub_29AFA4A2C((a1 + 1), a2);

  operator delete(a1);
}

uint64_t sub_29AFA9954(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29AFA96B0();
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 568));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29AFA99E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFA99F8(uint64_t a1)
{
  sub_29AFA9A50(a1);
  sub_29AFAA0CC(a1 + 584);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 572));
  sub_29A1DE3A4((a1 + 568));

  return sub_29AFA4D98(a1, v2);
}

uint64_t sub_29AFA9A50(__int16 *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29AFA4AF4(v6, 8uLL, v7);
  sub_29AFA9BFC(v7, v6);
  sub_29AFA9CDC(v6, a1);
  sub_29AFA9CDC(a1, v7);
  v3 = sub_29AFA4D98(v7, v2);
  if ((pxrInternal__aapl__pxrReserved__::Work_ShouldSynchronizeAsyncDestroyCalls(v3) & 1) == 0)
  {
    sub_29AFA9B28(v6);
  }

  return sub_29AFA4D98(v6, v4);
}

uint64_t sub_29AFA9B28(__int16 *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = sub_29AFA9E24(v8, a1);
  HasConcurrency = pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(v1);
  if (HasConcurrency)
  {
    DetachedDispatcher = pxrInternal__aapl__pxrReserved__::Work_GetDetachedDispatcher(HasConcurrency);
    v4 = sub_29AFA9EF0(DetachedDispatcher, v8);
    v5 = (***(v4 - 40))(*(v4 - 40), v4, v4 - 8);
    pxrInternal__aapl__pxrReserved__::Work_EnsureDetachedTaskProgress(v5);
  }

  else
  {
    sub_29AFA9D84();
  }

  return sub_29AFA4D98(v8, v6);
}

uint64_t sub_29AFA9BFC(uint64_t a1, __int16 *a2)
{
  *a1 = *a2;
  *(a1 + 24) = 0;
  v4 = tbb::internal::allocate_via_handler_v3(0x68);
  v4[12] = 0;
  *v4 = 0;
  *(a1 + 32) = v4;
  *(a1 + 44) = 1082130432;
  __dmb(0xBu);
  *(a1 + 8) = 8;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v6 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v6);
  sub_29AC16588(a1, a2);
  return a1;
}

__int16 *sub_29AFA9CDC(__int16 *a1, __int16 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1 != a2)
  {
    sub_29AFA9BFC(v6, a1);
    sub_29AC16588(a1, a2);
    sub_29AFA4D98(v6, v4);
  }

  return a1;
}

void sub_29AFA9D68(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AFA4D98(va, a2);
  _Unwind_Resume(a1);
}

void sub_29AFA9D84()
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v3);
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v1 = sub_29A0FE7E0(&v3, 0);
  v4 = 0;
  v2 = sub_29A0ED084(v0 + 19, &v4);
  if (v2 != v1)
  {
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v0, v1, v2);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v3);
}

__int16 *sub_29AFA9E24(__int16 *a1, __int16 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29AFA4AF4(a1, 8uLL, v6);
  sub_29AFA9BFC(v6, a1);
  sub_29AFA9CDC(a1, a2);
  sub_29AFA9CDC(a2, v6);
  sub_29AFA4D98(v6, v4);
  return a1;
}

uint64_t sub_29AFA9EF0(uint64_t a1, __int16 *a2)
{
  v4 = *(a1 + 256);
  v7[0] = 0;
  v7[1] = v4;
  v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(v7, 0x240uLL);
  *(v5 - 11) = 1;
  *v5 = &unk_2A20A7DF0;
  sub_29AFA9E24((v5 + 8), a2);
  *(v5 + 568) = a1 + 272;
  return v5;
}

void *sub_29AFA9F90(void *a1, void *a2)
{
  *a1 = &unk_2A20A7DF0;
  sub_29AFA4D98((a1 + 1), a2);
  return a1;
}

void sub_29AFA9FD4(void *a1, void *a2)
{
  *a1 = &unk_2A20A7DF0;
  sub_29AFA4D98((a1 + 1), a2);

  operator delete(a1);
}

uint64_t sub_29AFAA028(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29AFA9D84();
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 568));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29AFAA0B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFAA0CC(uint64_t a1)
{
  sub_29AFAA108(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AFAA108(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AFAA14C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

pxrInternal__aapl__pxrReserved__ *sub_29AFAA14C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  result = *(a1 + 8);
  if (result)
  {

    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result, v4);
  }

  return result;
}

uint64_t sub_29AFAA1C8(uint64_t a1)
{
  sub_29AFAA220(a1);
  sub_29AFA1B80(a1 + 584);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 572));
  sub_29A1DE3A4((a1 + 568));

  return sub_29AFA55B8(a1, v2);
}

uint64_t sub_29AFAA220(__int16 *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29AFA4E84(v6, 8uLL, v7);
  sub_29AFAA3CC(v7, v6);
  sub_29AFAA4AC(v6, a1);
  sub_29AFAA4AC(a1, v7);
  v3 = sub_29AFA55B8(v7, v2);
  if ((pxrInternal__aapl__pxrReserved__::Work_ShouldSynchronizeAsyncDestroyCalls(v3) & 1) == 0)
  {
    sub_29AFAA2F8(v6);
  }

  return sub_29AFA55B8(v6, v4);
}

uint64_t sub_29AFAA2F8(__int16 *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = sub_29AFAA5F4(v8, a1);
  HasConcurrency = pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(v1);
  if (HasConcurrency)
  {
    DetachedDispatcher = pxrInternal__aapl__pxrReserved__::Work_GetDetachedDispatcher(HasConcurrency);
    v4 = sub_29AFAA6C0(DetachedDispatcher, v8);
    v5 = (***(v4 - 40))(*(v4 - 40), v4, v4 - 8);
    pxrInternal__aapl__pxrReserved__::Work_EnsureDetachedTaskProgress(v5);
  }

  else
  {
    sub_29AFAA554();
  }

  return sub_29AFA55B8(v8, v6);
}

uint64_t sub_29AFAA3CC(uint64_t a1, __int16 *a2)
{
  *a1 = *a2;
  *(a1 + 24) = 0;
  v4 = tbb::internal::allocate_via_handler_v3(0x68);
  v4[12] = 0;
  *v4 = 0;
  *(a1 + 32) = v4;
  *(a1 + 44) = 1082130432;
  __dmb(0xBu);
  *(a1 + 8) = 8;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v6 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v6);
  sub_29AC16588(a1, a2);
  return a1;
}

__int16 *sub_29AFAA4AC(__int16 *a1, __int16 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1 != a2)
  {
    sub_29AFAA3CC(v6, a1);
    sub_29AC16588(a1, a2);
    sub_29AFA55B8(v6, v4);
  }

  return a1;
}

void sub_29AFAA538(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AFA55B8(va, a2);
  _Unwind_Resume(a1);
}

void sub_29AFAA554()
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v3);
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v1 = sub_29A0FE7E0(&v3, 0);
  v4 = 0;
  v2 = sub_29A0ED084(v0 + 19, &v4);
  if (v2 != v1)
  {
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v0, v1, v2);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v3);
}

__int16 *sub_29AFAA5F4(__int16 *a1, __int16 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29AFA4E84(a1, 8uLL, v6);
  sub_29AFAA3CC(v6, a1);
  sub_29AFAA4AC(a1, a2);
  sub_29AFAA4AC(a2, v6);
  sub_29AFA55B8(v6, v4);
  return a1;
}

uint64_t sub_29AFAA6C0(uint64_t a1, __int16 *a2)
{
  v4 = *(a1 + 256);
  v7[0] = 0;
  v7[1] = v4;
  v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(v7, 0x240uLL);
  *(v5 - 11) = 1;
  *v5 = &unk_2A20A7E38;
  sub_29AFAA5F4((v5 + 8), a2);
  *(v5 + 568) = a1 + 272;
  return v5;
}

void *sub_29AFAA760(void *a1, void *a2)
{
  *a1 = &unk_2A20A7E38;
  sub_29AFA55B8((a1 + 1), a2);
  return a1;
}

void sub_29AFAA7A4(void *a1, void *a2)
{
  *a1 = &unk_2A20A7E38;
  sub_29AFA55B8((a1 + 1), a2);

  operator delete(a1);
}

uint64_t sub_29AFAA7F8(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29AFAA554();
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 568));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29AFAA888(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFAA89C(uint64_t a1)
{
  sub_29AFAA8F4(a1);
  sub_29AFA1D18(a1 + 584);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 572));
  sub_29A1DE3A4((a1 + 568));

  return sub_29AFA5D4C(a1, v2);
}

uint64_t sub_29AFAA8F4(__int16 *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29AFA56A4(v6, 8uLL, v7);
  sub_29AFAAAA0(v7, v6);
  sub_29AFAAB80(v6, a1);
  sub_29AFAAB80(a1, v7);
  v3 = sub_29AFA5D4C(v7, v2);
  if ((pxrInternal__aapl__pxrReserved__::Work_ShouldSynchronizeAsyncDestroyCalls(v3) & 1) == 0)
  {
    sub_29AFAA9CC(v6);
  }

  return sub_29AFA5D4C(v6, v4);
}

uint64_t sub_29AFAA9CC(__int16 *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = sub_29AFAACC8(v8, a1);
  HasConcurrency = pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(v1);
  if (HasConcurrency)
  {
    DetachedDispatcher = pxrInternal__aapl__pxrReserved__::Work_GetDetachedDispatcher(HasConcurrency);
    v4 = sub_29AFAAD94(DetachedDispatcher, v8);
    v5 = (***(v4 - 40))(*(v4 - 40), v4, v4 - 8);
    pxrInternal__aapl__pxrReserved__::Work_EnsureDetachedTaskProgress(v5);
  }

  else
  {
    sub_29AFAAC28();
  }

  return sub_29AFA5D4C(v8, v6);
}

uint64_t sub_29AFAAAA0(uint64_t a1, __int16 *a2)
{
  *a1 = *a2;
  *(a1 + 24) = 0;
  v4 = tbb::internal::allocate_via_handler_v3(0xB0);
  v4[21] = 0;
  *v4 = 0;
  *(a1 + 32) = v4;
  *(a1 + 44) = 1082130432;
  __dmb(0xBu);
  *(a1 + 8) = 8;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v6 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v6);
  sub_29AC16588(a1, a2);
  return a1;
}

__int16 *sub_29AFAAB80(__int16 *a1, __int16 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1 != a2)
  {
    sub_29AFAAAA0(v6, a1);
    sub_29AC16588(a1, a2);
    sub_29AFA5D4C(v6, v4);
  }

  return a1;
}

void sub_29AFAAC0C(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AFA5D4C(va, a2);
  _Unwind_Resume(a1);
}

void sub_29AFAAC28()
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v3);
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v1 = sub_29A0FE7E0(&v3, 0);
  v4 = 0;
  v2 = sub_29A0ED084(v0 + 19, &v4);
  if (v2 != v1)
  {
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v0, v1, v2);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v3);
}

__int16 *sub_29AFAACC8(__int16 *a1, __int16 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29AFA56A4(a1, 8uLL, v6);
  sub_29AFAAAA0(v6, a1);
  sub_29AFAAB80(a1, a2);
  sub_29AFAAB80(a2, v6);
  sub_29AFA5D4C(v6, v4);
  return a1;
}

uint64_t sub_29AFAAD94(uint64_t a1, __int16 *a2)
{
  v4 = *(a1 + 256);
  v7[0] = 0;
  v7[1] = v4;
  v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(v7, 0x240uLL);
  *(v5 - 11) = 1;
  *v5 = &unk_2A20A7E80;
  sub_29AFAACC8((v5 + 8), a2);
  *(v5 + 568) = a1 + 272;
  return v5;
}

void *sub_29AFAAE34(void *a1, void *a2)
{
  *a1 = &unk_2A20A7E80;
  sub_29AFA5D4C((a1 + 1), a2);
  return a1;
}

void sub_29AFAAE78(void *a1, void *a2)
{
  *a1 = &unk_2A20A7E80;
  sub_29AFA5D4C((a1 + 1), a2);

  operator delete(a1);
}

uint64_t sub_29AFAAECC(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29AFAAC28();
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 568));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29AFAAF5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFAAF70(uint64_t a1)
{
  sub_29AFAAFC8(a1);
  sub_29AFA1E08(a1 + 584);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 572));
  sub_29A1DE3A4((a1 + 568));

  return sub_29AFA64E0(a1, v2);
}

uint64_t sub_29AFAAFC8(__int16 *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29AFA5E38(v6, 8uLL, v7);
  sub_29AFAB174(v7, v6);
  sub_29AFAB254(v6, a1);
  sub_29AFAB254(a1, v7);
  v3 = sub_29AFA64E0(v7, v2);
  if ((pxrInternal__aapl__pxrReserved__::Work_ShouldSynchronizeAsyncDestroyCalls(v3) & 1) == 0)
  {
    sub_29AFAB0A0(v6);
  }

  return sub_29AFA64E0(v6, v4);
}

uint64_t sub_29AFAB0A0(__int16 *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = sub_29AFAB39C(v8, a1);
  HasConcurrency = pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(v1);
  if (HasConcurrency)
  {
    DetachedDispatcher = pxrInternal__aapl__pxrReserved__::Work_GetDetachedDispatcher(HasConcurrency);
    v4 = sub_29AFAB468(DetachedDispatcher, v8);
    v5 = (***(v4 - 40))(*(v4 - 40), v4, v4 - 8);
    pxrInternal__aapl__pxrReserved__::Work_EnsureDetachedTaskProgress(v5);
  }

  else
  {
    sub_29AFAB2FC();
  }

  return sub_29AFA64E0(v8, v6);
}

uint64_t sub_29AFAB174(uint64_t a1, __int16 *a2)
{
  *a1 = *a2;
  *(a1 + 24) = 0;
  v4 = tbb::internal::allocate_via_handler_v3(0xB8);
  v4[22] = 0;
  *v4 = 0;
  *(a1 + 32) = v4;
  *(a1 + 44) = 1082130432;
  __dmb(0xBu);
  *(a1 + 8) = 8;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v6 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v6);
  sub_29AC16588(a1, a2);
  return a1;
}

__int16 *sub_29AFAB254(__int16 *a1, __int16 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1 != a2)
  {
    sub_29AFAB174(v6, a1);
    sub_29AC16588(a1, a2);
    sub_29AFA64E0(v6, v4);
  }

  return a1;
}

void sub_29AFAB2E0(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AFA64E0(va, a2);
  _Unwind_Resume(a1);
}

void sub_29AFAB2FC()
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v3);
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v1 = sub_29A0FE7E0(&v3, 0);
  v4 = 0;
  v2 = sub_29A0ED084(v0 + 19, &v4);
  if (v2 != v1)
  {
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v0, v1, v2);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v3);
}

__int16 *sub_29AFAB39C(__int16 *a1, __int16 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29AFA5E38(a1, 8uLL, v6);
  sub_29AFAB174(v6, a1);
  sub_29AFAB254(a1, a2);
  sub_29AFAB254(a2, v6);
  sub_29AFA64E0(v6, v4);
  return a1;
}

uint64_t sub_29AFAB468(uint64_t a1, __int16 *a2)
{
  v4 = *(a1 + 256);
  v7[0] = 0;
  v7[1] = v4;
  v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(v7, 0x240uLL);
  *(v5 - 11) = 1;
  *v5 = &unk_2A20A7EC8;
  sub_29AFAB39C((v5 + 8), a2);
  *(v5 + 568) = a1 + 272;
  return v5;
}

void *sub_29AFAB508(void *a1, void *a2)
{
  *a1 = &unk_2A20A7EC8;
  sub_29AFA64E0((a1 + 1), a2);
  return a1;
}

void sub_29AFAB54C(void *a1, void *a2)
{
  *a1 = &unk_2A20A7EC8;
  sub_29AFA64E0((a1 + 1), a2);

  operator delete(a1);
}

uint64_t sub_29AFAB5A0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29AFAB2FC();
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 568));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29AFAB630(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29AFAB644(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29A85CE98(a1, *(a1 + 16));
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

void sub_29AFAB6A0(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29AFA21BC(a1, *(a1 + 16));
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

void sub_29AFAB6FC(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29A1E67C8(a1, *(a1 + 16));
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

pxrInternal__aapl__pxrReserved__::UsdGeomTokensType *sub_29AFAB758@<X0>(atomic_uint **a1@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!result)
  {
    result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v3 = *(result + 29);
  *a1 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }

  return result;
}

void sub_29AFAB7BC(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  {
    {
      sub_29AFAB758(&pxrInternal__aapl__pxrReserved__::UsdImaging_ResolvedAttributeCache<pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStrategy,BOOL>::_GetValue(pxrInternal__aapl__pxrReserved__::UsdPrim const&)const::default_);
      __cxa_atexit(sub_29A424A8C, &pxrInternal__aapl__pxrReserved__::UsdImaging_ResolvedAttributeCache<pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStrategy,BOOL>::_GetValue(pxrInternal__aapl__pxrReserved__::UsdPrim const&)const::default_, &dword_299FE7000);
    }
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
}

unint64_t sub_29AFAB960(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  sub_29AFABEB8(a1, a2, v8);
  if (v8[0])
  {
    v4 = 0;
  }

  else
  {
    v4 = v8[1] == a1 + 16;
  }

  if (v4)
  {
    sub_29AFAC244(v7);
    sub_29AFABD98(a2, &v6);
    sub_29A758894(v7, &v6);
  }

  return v8[0] + 40;
}

void sub_29AFABAC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AFA49B0(va);
  v4 = *(v2 - 64);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A5896C0(v2 - 184);
  _Unwind_Resume(a1);
}

unsigned int *sub_29AFABB0C(unsigned int *result, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = (a4 + 128);
  v5 = atomic_load((a4 + 128));
  v6 = result + 144;
  v7 = atomic_load(result + 144);
  if (v5 < v7 && (v8 = atomic_load(v6), v9 = v5, atomic_compare_exchange_strong(v4, &v9, v8), v9 == v5))
  {
    v11 = result;
    result = sub_29A166F2C((a4 + 120), a3);
    v12 = atomic_load(v11 + 144);
    atomic_store(v12 + 1, (a4 + 128));
  }

  else
  {
    do
    {
      v13 = atomic_load(v4);
      v14 = atomic_load(v6);
    }

    while (v13 != v14 + 1);
  }

  return result;
}

void sub_29AFABB94(int a1, int a2, pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *this)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v4)
  {
    v4 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v5 = *(v4 + 59);
  v7 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v7 &= 0xFFFFFFFFFFFFFFF8;
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(this);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(Attribute);
}

void sub_29AFABD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_29A57F434(&a10);
  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_29AFABD98(pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v9, a1);
  v11 = 0;
  v9 = &unk_2A205FFB0;
  if (v10 && (*(v10 + 57) & 8) == 0 && off_2A205FFD0(&v9))
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::GetModelDrawModeAttr(&v9, &v4);
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(a2, &v4);
    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
    sub_29A1DE3A4(&v6);
    if (v5)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5, v3);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::~UsdGeomModelAPI(&v9);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::~UsdGeomModelAPI(&v9);
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(a2);
  }
}

void sub_29AFABE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_29A5888DC(&a9);
  pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::~UsdGeomModelAPI(&a13);
  _Unwind_Resume(a1);
}

void sub_29AFABEB8(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v14 = 0;
  v15 = 0;
  sub_29A5BD47C(&v14, a2, (a2 + 8), (a2 + 16), (a2 + 24));
  v6 = bswap64(0x9E3779B97F4A7C55 * v14);
  v14 = v6;
  v16 = 0;
  v7 = &v14;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v16 + i) = byte_29B734F74[v9];
  }

  v10 = v16;
  sub_29AFABFF0(a1, v6, &v14);
  v11 = v14;
  if (v14)
  {
    v12 = v10 | 1;
    while (1)
    {
      v13 = *(v11 + 176);
      if (v13 > v12)
      {
        break;
      }

      if (v13 == v12 && *(v11 + 8) == *a2 && *(v11 + 16) == *(a2 + 8) && *(v11 + 24) == *(a2 + 16) && (*(a2 + 24) ^ *(v11 + 32)) < 8)
      {
        goto LABEL_14;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    v11 = 0;
LABEL_14:
    *a3 = v11;
  }

  else
  {
LABEL_12:
    *a3 = 0;
  }

  a3[1] = a1 + 16;
}

void sub_29AFABFF0(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  __dmb(0xBu);
  v6 = a2 % v5;
  v7 = sub_29A0EC0EC(a2 % v5);
  v8 = v7;
  v9 = v6 - ((1 << v7) & 0xFFFFFFFFFFFFFFFELL);
  v10 = a1 + 48;
  v11 = *(a1 + 48 + 8 * v7);
  __dmb(0xBu);
  if (!v11 || (v12 = *(v10 + 8 * v7), __dmb(0xBu), !*(v12 + 8 * v9)))
  {
    sub_29AFAC08C(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29AFAC08C(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29AFAC08C(a1, v4);
  }

  v5 = sub_29A0EC0EC(v4);
  v6 = *(a1 + 8 * v5 + 48);
  __dmb(0xBu);
  v10 = *(v6 + 8 * (v4 - ((1 << v5) & 0x1FFFFFFFFFFFFFFELL)));
  v11 = 0;
  v12 = a2;
  v7 = &v12;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v11 + i) = byte_29B734F74[v9];
  }

  sub_29AFAC170(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29AFAC170@<X0>(uint64_t a1@<X0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0xB8);
  *(result + 22) = a3;
  *result = 0;
  if (i)
  {
    goto LABEL_2;
  }

LABEL_3:
  while (1)
  {
    v11 = *a2;
    *result = i;
    while (1)
    {
      v12 = i;
      atomic_compare_exchange_strong(v11, &v12, result);
      if (v12 == i)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v11, 0, memory_order_relaxed);
      if (add_explicit != i)
      {
        goto LABEL_8;
      }
    }

    add_explicit = i;
LABEL_8:
    if (i == add_explicit || result == add_explicit)
    {
      break;
    }

    for (i = *a2; ; *a2 = i)
    {
      i = *i;
      if (!i)
      {
        break;
      }

LABEL_2:
      v10 = i[22];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AFA48DC(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *sub_29AFAC244(pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a1)
{
  v2 = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(a1);
  sub_29AFAB758((v2 + 120));
  *(a1 + 32) = 0;
  return a1;
}

void sub_29AFAC28C(uint64_t a1@<X0>, uint64_t a2@<X1>, tbb::internal *a3@<X2>, uint64_t a4@<X8>)
{
  v24 = 0;
  v25 = 0;
  sub_29A5BD47C(&v24, a2, (a2 + 8), (a2 + 16), (a2 + 24));
  v8 = bswap64(0x9E3779B97F4A7C55 * v24);
  v24 = v8;
  v26 = 0;
  v9 = &v24;
  for (i = 7; i != -1; --i)
  {
    v11 = *v9;
    v9 = (v9 + 1);
    *(&v26 + i) = byte_29B734F74[v11];
  }

  v12 = v26 | 1;
  sub_29AFABFF0(a1, v8, &v24);
  v13 = a1 + 16;
  if (a3)
  {
    *(a3 + 22) = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v24;
    v16 = *v24;
    if (*v24)
    {
      v17 = *(v16 + 176);
      while (1)
      {
        v18 = v16;
        if (v17 > v12)
        {
          break;
        }

        if (v17 == v12 && *(v16 + 8) == *v14 && *(v16 + 16) == v14[1] && *(v16 + 24) == v14[2] && (v14[3] ^ *(v16 + 32)) <= 7)
        {
          if (a3)
          {
            sub_29AFA48DC(a1 + 16, a3);
          }

          *a4 = v16;
          *(a4 + 8) = v13;
          *(a4 + 16) = 0;
          return;
        }

        v24 = v16;
        v16 = *v16;
        if (!*v18)
        {
          v15 = v18;
          break;
        }

        v17 = *(v16 + 176);
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = sub_29AFA9584(a1 + 16, v12, a2);
      v14 = (a3 + 8);
      v15 = v24;
    }

    *a3 = v16;
    while (1)
    {
      v19 = v16;
      atomic_compare_exchange_strong(v15, &v19, a3);
      if (v19 == v16)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v15, 0, memory_order_relaxed);
      if (add_explicit != v16)
      {
        goto LABEL_24;
      }
    }

    add_explicit = v16;
LABEL_24:
    if (v16 == add_explicit || a3 == add_explicit)
    {
      break;
    }

    *a4 = 0;
    *(a4 + 8) = v13;
    *(a4 + 16) = 0;
  }

  add = atomic_fetch_add((a1 + 24), 1uLL);
  *a4 = a3;
  *(a4 + 8) = v13;
  *(a4 + 16) = 1;
  v22 = *(a1 + 8);
  __dmb(0xBu);
  if ((add / v22) > *(a1 + 44))
  {
    do
    {
      v23 = v22;
      atomic_compare_exchange_strong((a1 + 8), &v23, 2 * v22);
    }

    while (v23 != v22 && atomic_fetch_add_explicit((a1 + 8), 0, memory_order_relaxed) == v22);
  }
}

uint64_t sub_29AFAC4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a2 + 8);
  *(a1 + 8) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 16), (a2 + 16));
  sub_29A1E2240((a1 + 20), (a2 + 20));
  v7 = *(a2 + 24);
  *(a1 + 24) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29AFAC580((a1 + 32), a3);
  return a1;
}

void sub_29AFAC580(pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a1, uint64_t a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(a1, a2);
  v4 = *(a2 + 120);
  *(v3 + 120) = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(v3 + 120) &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = atomic_load((a2 + 128));
  atomic_store(v5, (v3 + 128));
}

unint64_t sub_29AFAC5E0()
{
  v13 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "lightFilterType", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "LightAPI", 0);
  v1 = v0 + 2;
  v2 = *v0;
  v11 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v3;
    }
  }

  v4 = v0[1];
  v12 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v5;
    }
  }

  *v1 = 0;
  v0[3] = 0;
  v0[4] = 0;
  sub_29A12EF7C(v1, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v7 = *(&v11 + i);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v8 = 0;
  atomic_compare_exchange_strong(&qword_2A1751DF8, &v8, v0);
  if (v8)
  {
    v9 = sub_29A1DAC64(v0);
    operator delete(v9);
    return atomic_load(&qword_2A1751DF8);
  }

  return v0;
}

void sub_29AFAC724(_Unwind_Exception *a1)
{
  v4 = 8;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t *sub_29AFAC7A0(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
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
      v3 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v3);
    if (v9)
    {
      for (i = *v9; i; i = *i)
      {
        v11 = i[1];
        if (v11 == v6)
        {
          if ((i[2] ^ *a2) < 8)
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

  i = operator new(0x28uLL);
  *i = 0;
  i[1] = v6;
  sub_29A3E00AC(i + 2, a3);
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

int *sub_29AFAC9F8(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 3)
    {
      v18 = (v10 - a2) >> 3;
      if (v18 >= a5)
      {
        sub_29A23DFE4(a1, a2, a1[1], a2 + 8 * a5);
        sub_29A2258F0(v5, (v7 + 16));
        sub_29A225948(v5 + 1, (v7 + 20));
        if (a5 != 1)
        {
          v21 = a5 + 1;
          v22 = v5 + 2;
          do
          {
            v7 = *v7;
            sub_29A2258F0(v22, (v7 + 16));
            sub_29A225948(v22 + 1, (v7 + 20));
            --v21;
            v22 += 2;
          }

          while (v21 > 2);
        }
      }

      else
      {
        v19 = a3;
        if (v18 >= 1)
        {
          v20 = v18 + 1;
          v19 = a3;
          do
          {
            v19 = *v19;
            --v20;
          }

          while (v20 > 1);
        }

        a1[1] = sub_29AFACC74(a1, v19, a4, a1[1]);
        if (v18 >= 1)
        {
          sub_29A23DFE4(a1, v5, v10, &v5[2 * a5]);
          sub_29AFACD10(&v24, v7, v19, v5);
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
      v28 = a1;
      if (v15)
      {
        v17 = sub_29A00C9BC(a1, v15);
      }

      else
      {
        v17 = 0;
      }

      v24 = v17;
      v25 = &v17[8 * v16];
      v26 = v25;
      v27 = &v17[8 * v15];
      sub_29AFACC00(&v24, v7, a5);
      v5 = sub_29A23E100(a1, &v24, v5);
      sub_29A1E29E8(&v24);
    }
  }

  return v5;
}

_DWORD *sub_29AFACC00(_DWORD *result, uint64_t *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 2);
  if (a3)
  {
    v6 = 8 * a3;
    v7 = &v4[2 * a3];
    do
    {
      sub_29A1E21F4(v4, a2 + 4);
      result = sub_29A1E2240(v4 + 1, a2 + 5);
      v4 += 2;
      a2 = *a2;
      v6 -= 8;
    }

    while (v6);
    v4 = v7;
  }

  *(v3 + 2) = v4;
  return result;
}

_DWORD *sub_29AFACC74(uint64_t a1, uint64_t *a2, uint64_t *a3, _DWORD *a4)
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
      sub_29A1E21F4(v4, v6 + 4);
      sub_29A1E2240(v4 + 1, v6 + 5);
      v6 = *v6;
      v4 = v11 + 2;
      v11 += 2;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_29A1E2280(v8);
  return v4;
}

uint64_t *sub_29AFACD10(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    sub_29A2258F0(a4, v5 + 4);
    sub_29A225948(a4 + 1, v5 + 5);
    v5 = *v5;
    a4 += 2;
  }

  while (v5 != v6);
  return v6;
}

void *sub_29AFACD80(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  if (a2)
  {
    sub_29A0ECFD4((a2 + 24), &v5);
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

void sub_29AFACDDC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AFACDF4(void *a1, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  v9.n128_u64[0] = a2;
  v9.n128_u64[1] = a3;
  sub_29A89A040(v8, a4);
  v5 = operator new(0x58uLL);
  pxrInternal__aapl__pxrReserved__::TfType::TfType(v7);
  sub_29B2CCA94(v5, a1, &v9, v8);
  sub_29B29B9F8(v7, v8);
  return v5;
}

void sub_29AFACE6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12)
{
  if (a12)
  {
    if (atomic_fetch_add_explicit(a12 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a12 + 8))(a12);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AFACEC8(uint64_t a1, const std::type_info *a2)
{
  pxrInternal__aapl__pxrReserved__::TfType::TfType(v12);
  if (v12[0] == v2)
  {
    v12[0] = "tf/notice.h";
    v12[1] = "GetNoticeType";
    v12[2] = 614;
    v12[3] = "virtual TfType pxrInternal__aapl__pxrReserved__::TfNotice::_StandardDeliverer<pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdImagingDelegate>, pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>, void (pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::*)(const pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged &, const pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> &), pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>>::GetNoticeType() const [Derived = pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdImagingDelegate>, pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>, void (pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::*)(const pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged &, const pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> &), pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>]";
    v13 = 0;
    v14 = 4;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((off_2A205BC00 & 0x7FFFFFFFFFFFFFFFLL), &v8);
    v3 = std::string::insert(&v8, 0, "notice type ");
    v4 = *&v3->__r_.__value_.__l.__data_;
    v9.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
    *&v9.__r_.__value_.__l.__data_ = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    v5 = std::string::append(&v9, " undefined in the TfType system");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v11 = v5->__r_.__value_.__r.__words[2];
    *__p = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v12, __p);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }

  return v2;
}

void sub_29AFACFE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AFAD034(void *a1, char *a2, uint64_t a3)
{
  v6 = (*(*a1 + 24))(a1);
  result = pxrInternal__aapl__pxrReserved__::TfType::IsA(a2, v6);
  if (result)
  {
    if (a1[8])
    {
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
    }

    result = 0;
    if (a3)
    {
      if ((a1[8] & 1) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
      }
    }
  }

  return result;
}

void *sub_29AFAD0D0(uint64_t a1)
{
  v2 = operator new(0x58uLL);
  (*(*a1 + 24))(a1);
  sub_29B2CCA94(v2, (a1 + 40), (a1 + 72), (a1 + 56));
  return v2;
}

uint64_t sub_29AFAD160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v8 = a5 - 16;
  }

  else
  {
    v8 = 0;
  }

  sub_29A5B05F4(v13, v8);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = (a2 + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  v9(v11, a3, v13);
  return sub_29B28F9E0(v13);
}

void sub_29AFAD204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28D068(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFAD21C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29B2CD220();
}

void sub_29AFAD26C(void ***a1)
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
        sub_29AFAD2F4(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

pxrInternal__aapl__pxrReserved__ *sub_29AFAD2F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a2 + 24);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 20));
  sub_29A1DE3A4((a2 + 16));
  result = *(a2 + 8);
  if (result)
  {

    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result, v5);
  }

  return result;
}

uint64_t sub_29AFAD370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_29AFAD420(a4, v7);
      v7 += 48;
      a4 = v12 + 48;
      v12 += 48;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29AFAD2F4(a1, v5);
      v5 += 48;
    }
  }

  return sub_29AFAD48C(v9);
}

uint64_t sub_29AFAD420(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  sub_29A1DDD84((a1 + 16), (a2 + 16));
  sub_29A1DDDC0((a1 + 20), (a2 + 20));
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return a1;
}

uint64_t sub_29AFAD48C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AFAD4C4(a1);
  }

  return a1;
}

uint64_t *sub_29AFAD4C4(uint64_t *result)
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
      v3 -= 48;
      result = sub_29AFAD2F4(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *sub_29AFAD518(pxrInternal__aapl__pxrReserved__ *a1)
{
  sub_29AFAD54C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__ *sub_29AFAD54C(pxrInternal__aapl__pxrReserved__ *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 48;
      result = sub_29AFAD2F4(v4, v1 - 48);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29AFAD594(uint64_t a1)
{
  *a1 = &unk_2A20A7F88;
  v2 = *(a1 + 32);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  v4 = *(a1 + 16);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  return a1;
}

void sub_29AFAD60C(void *a1)
{
  *a1 = &unk_2A20A7F88;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 7);
  sub_29A1DE3A4(a1 + 6);
  v4 = *(a1 + 2);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  operator delete(a1);
}

void sub_29AFAD8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AFAD8FC@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + 1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1);

  return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v1);
}

void sub_29AFAD944(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  {
    sub_29B2CD26C();
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
}

void sub_29AFADA84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

unint64_t sub_29AFADA9C(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  sub_29AFADF08(a1, a2, v7);
  if (v7[0])
  {
    v4 = 0;
  }

  else
  {
    v4 = v7[1] == a1 + 16;
  }

  if (v4)
  {
    sub_29AFAE294(v6);
    sub_29AFADD74(a2);
  }

  return v7[0] + 40;
}

void sub_29AFADBF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AFA368C(va);
  sub_29AFA3710((v2 - 84));
  _Unwind_Resume(a1);
}

int *sub_29AFADC28(int *result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v4 = (a4 + 16);
  v5 = atomic_load((a4 + 16));
  v6 = (result + 144);
  v7 = atomic_load(result + 144);
  if (v5 < v7 && (v8 = atomic_load(v6), v9 = v5, atomic_compare_exchange_strong(v4, &v9, v8), v9 == v5))
  {
    v12 = result;
    sub_29A2258F0((a4 + 8), a3);
    result = sub_29A225948((a4 + 12), a3 + 1);
    v13 = atomic_load(v12 + 144);
    atomic_store(v13 + 1, (a4 + 16));
  }

  else
  {
    do
    {
      v14 = atomic_load(v4);
      v15 = atomic_load(v6);
    }

    while (v14 != v15 + 1);
  }

  return result;
}

_DWORD *sub_29AFADCC8@<X0>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X1>, _DWORD *a2@<X2>, _DWORD *a3@<X8>)
{
  if (sub_29AF49C14(10))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
  }

  sub_29A1E21F4(a3, a2);
  return sub_29A1E2240(a3 + 1, a2 + 1);
}

void sub_29AFADD60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29AFADD74(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1)
{
  v3 = 4;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v6);
  v7 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v2, a1);
  v2[3] = 0;
  v2[0] = &unk_2A20611A8;
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial(v2);
}

void sub_29AFADED4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::~UsdShadeMaterialBindingAPI(va);
  sub_29A5B6480(va1);
  _Unwind_Resume(a1);
}

void sub_29AFADF08(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v14 = 0;
  v15 = 0;
  sub_29A5BD47C(&v14, a2, (a2 + 8), (a2 + 16), (a2 + 24));
  v6 = bswap64(0x9E3779B97F4A7C55 * v14);
  v14 = v6;
  v16 = 0;
  v7 = &v14;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v16 + i) = byte_29B734F74[v9];
  }

  v10 = v16;
  sub_29AFAE040(a1, v6, &v14);
  v11 = v14;
  if (v14)
  {
    v12 = v10 | 1;
    while (1)
    {
      v13 = *(v11 + 64);
      if (v13 > v12)
      {
        break;
      }

      if (v13 == v12 && *(v11 + 8) == *a2 && *(v11 + 16) == *(a2 + 8) && *(v11 + 24) == *(a2 + 16) && (*(a2 + 24) ^ *(v11 + 32)) < 8)
      {
        goto LABEL_14;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    v11 = 0;
LABEL_14:
    *a3 = v11;
  }

  else
  {
LABEL_12:
    *a3 = 0;
  }

  a3[1] = a1 + 16;
}

void sub_29AFAE040(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  __dmb(0xBu);
  v6 = a2 % v5;
  v7 = sub_29A0EC0EC(a2 % v5);
  v8 = v7;
  v9 = v6 - ((1 << v7) & 0xFFFFFFFFFFFFFFFELL);
  v10 = a1 + 48;
  v11 = *(a1 + 48 + 8 * v7);
  __dmb(0xBu);
  if (!v11 || (v12 = *(v10 + 8 * v7), __dmb(0xBu), !*(v12 + 8 * v9)))
  {
    sub_29AFAE0DC(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29AFAE0DC(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29AFAE0DC(a1, v4);
  }

  v5 = sub_29A0EC0EC(v4);
  v6 = *(a1 + 8 * v5 + 48);
  __dmb(0xBu);
  v10 = *(v6 + 8 * (v4 - ((1 << v5) & 0x1FFFFFFFFFFFFFFELL)));
  v11 = 0;
  v12 = a2;
  v7 = &v12;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v11 + i) = byte_29B734F74[v9];
  }

  sub_29AFAE1C0(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29AFAE1C0@<X0>(int a1@<W0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0x48);
  *(result + 8) = a3;
  *result = 0;
  if (i)
  {
    goto LABEL_2;
  }

LABEL_3:
  while (1)
  {
    v11 = *a2;
    *result = i;
    while (1)
    {
      v12 = i;
      atomic_compare_exchange_strong(v11, &v12, result);
      if (v12 == i)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v11, 0, memory_order_relaxed);
      if (add_explicit != i)
      {
        goto LABEL_8;
      }
    }

    add_explicit = i;
LABEL_8:
    if (i == add_explicit || result == add_explicit)
    {
      break;
    }

    for (i = *a2; ; *a2 = i)
    {
      i = *i;
      if (!i)
      {
        break;
      }

LABEL_2:
      v10 = i[8];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AFA3648(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

_DWORD *sub_29AFAE294(_DWORD *a1)
{
  v2 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v2 + 1);
  *(a1 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a1 + 3);
  a1[4] = 0;
  return a1;
}

void sub_29AFAE2EC(uint64_t a1@<X0>, uint64_t a2@<X1>, tbb::internal *a3@<X2>, uint64_t a4@<X8>)
{
  v24 = 0;
  v25 = 0;
  sub_29A5BD47C(&v24, a2, (a2 + 8), (a2 + 16), (a2 + 24));
  v8 = bswap64(0x9E3779B97F4A7C55 * v24);
  v24 = v8;
  v26 = 0;
  v9 = &v24;
  for (i = 7; i != -1; --i)
  {
    v11 = *v9;
    v9 = (v9 + 1);
    *(&v26 + i) = byte_29B734F74[v11];
  }

  v12 = v26 | 1;
  sub_29AFAE040(a1, v8, &v24);
  v13 = a1 + 16;
  if (a3)
  {
    *(a3 + 8) = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v24;
    v16 = *v24;
    if (*v24)
    {
      v17 = *(v16 + 64);
      while (1)
      {
        v18 = v16;
        if (v17 > v12)
        {
          break;
        }

        if (v17 == v12 && *(v16 + 8) == *v14 && *(v16 + 16) == v14[1] && *(v16 + 24) == v14[2] && (v14[3] ^ *(v16 + 32)) <= 7)
        {
          if (a3)
          {
            sub_29AFA3648(a1 + 16, a3);
          }

          *a4 = v16;
          *(a4 + 8) = v13;
          *(a4 + 16) = 0;
          return;
        }

        v24 = v16;
        v16 = *v16;
        if (!*v18)
        {
          v15 = v18;
          break;
        }

        v17 = *(v16 + 64);
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = sub_29AFA7580(a1 + 16, v12, a2);
      v14 = (a3 + 8);
      v15 = v24;
    }

    *a3 = v16;
    while (1)
    {
      v19 = v16;
      atomic_compare_exchange_strong(v15, &v19, a3);
      if (v19 == v16)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v15, 0, memory_order_relaxed);
      if (add_explicit != v16)
      {
        goto LABEL_24;
      }
    }

    add_explicit = v16;
LABEL_24:
    if (v16 == add_explicit || a3 == add_explicit)
    {
      break;
    }

    *a4 = 0;
    *(a4 + 8) = v13;
    *(a4 + 16) = 0;
  }

  add = atomic_fetch_add((a1 + 24), 1uLL);
  *a4 = a3;
  *(a4 + 8) = v13;
  *(a4 + 16) = 1;
  v22 = *(a1 + 8);
  __dmb(0xBu);
  if ((add / v22) > *(a1 + 44))
  {
    do
    {
      v23 = v22;
      atomic_compare_exchange_strong((a1 + 8), &v23, 2 * v22);
    }

    while (v23 != v22 && atomic_fetch_add_explicit((a1 + 8), 0, memory_order_relaxed) == v22);
  }
}

uint64_t sub_29AFAE528(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a1 = *a2;
  v6 = *(a2 + 8);
  *(a1 + 8) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 16), (a2 + 16));
  sub_29A1E2240((a1 + 20), (a2 + 20));
  v7 = *(a2 + 24);
  *(a1 + 24) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29AFAE5CC((a1 + 32), a3);
  return a1;
}

_DWORD *sub_29AFAE5CC(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, a2 + 1);
  sub_29A1E21F4(a1 + 2, a2 + 2);
  sub_29A1E2240(a1 + 3, a2 + 3);
  v5 = atomic_load(a2 + 4);
  atomic_store(v5, a1 + 4);
  return a1;
}

uint64_t sub_29AFAE62C(uint64_t *a1, uint64_t a2)
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

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A08E058(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[48 * v2];
  *(&v16 + 1) = &v7[48 * v6];
  sub_29AFAD420(v15, a2);
  *&v16 = v15 + 48;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29AFAD370(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29AFAD518(&v14);
  return v13;
}

void sub_29AFAE744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AFAD518(va);
  _Unwind_Resume(a1);
}

void sub_29AFAE758(pxrInternal__aapl__pxrReserved__ *a1, uint64_t a2, uint64_t a3)
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
      sub_29AFAE894(v13, &v12, &v14, v15);
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

void sub_29AFAE878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  tbb::task_group_context::~task_group_context(va);
  _Unwind_Resume(a1);
}

void *sub_29AFAE894(void *result, void *a2, uint64_t a3, tbb::task_group_context *a4)
{
  if (result[1] < *result)
  {
    v5 = result;
    v9 = a4;
    v6 = tbb::internal::allocate_root_with_context_proxy::allocate(&v9, 0x38uLL);
    *(v6 - 11) = 1;
    *v6 = &unk_2A20A7FD0;
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

uint64_t sub_29AFAE994(uint64_t a1)
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

  sub_29AFAEA04(v2, a1, a1 + 8);
  return 0;
}

void sub_29AFAEA04(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_29AFAEAB8(a2);
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

  sub_29AFAEBD0(a1, a2, a3);
}

uint64_t sub_29AFAEAB8(uint64_t a1)
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
  *v3 = &unk_2A20A7FD0;
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

void sub_29AFAEBD0(uint64_t a1, uint64_t a2, __int128 *a3)
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
        sub_29AFAEE00(a2, (&v21 + 24 * v20[1]), v20[v20[1] + 3]);
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

uint64_t sub_29AFAEE00(uint64_t a1, __int128 *a2, char a3)
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
  *v7 = &unk_2A20A7FD0;
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

void *sub_29AFAEF20(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    sub_29A1E28B4(a3, a1);
    for (i = v4 + 1; i != a2; i += 2)
    {
      if (*v4 != *i)
      {
        sub_29A1E28B4(a3, i);
        v4 = i;
      }
    }

    return a2;
  }

  return v4;
}

void *sub_29AFAEFA4(void *a1, unsigned int *a2, _DWORD *a3)
{
  v4 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (result = *v8) == 0)
  {
LABEL_18:
    sub_29AFAF1EC(a1, v4, a3, v11);
  }

  while (1)
  {
    v10 = result[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != *a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_29AFAF1D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AD2AE9C(va, 0);
  _Unwind_Resume(a1);
}

void sub_29AFAF1EC(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  sub_29AFAF25C((v8 + 2), a3);
}

void sub_29AFAF25C(uint64_t a1, _DWORD *a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, a2 + 1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

uint64_t sub_29AFAF2CC(uint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GatherDependencies(a1[1], a1[2], a1[3]);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, a1[4]);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29AFAF360(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFAF37C(uint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GatherDependencies(a1[1], a1[2], a1[3]);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, a1[4]);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29AFAF410(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29AFAF424(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29AD2C4C8(a1, *(a1 + 16));
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

void *sub_29AFAF480(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

void sub_29AFAF6B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AFAF6C8(va, 0);
  _Unwind_Resume(a1);
}

void sub_29AFAF6C8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AFA6978(v2 + 16);
    }

    operator delete(v2);
  }
}

void *sub_29AFAF724(uint64_t a1, unsigned int *a2, _DWORD *a3, uint64_t a4)
{
  v8 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
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
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v8)
        {
          if (i[2] == *a2)
          {
            return i;
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
      }
    }
  }

  i = operator new(0x30uLL);
  *i = 0;
  i[1] = v8;
  sub_29A4B447C((i + 2), a3, a4);
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
    *i = *v21;
LABEL_38:
    *v21 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v20 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v22 = *(*i + 8);
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
  return i;
}

void sub_29AFAF978(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AFAF6C8(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFAF990(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  return a1 + 8;
}

uint64_t sub_29AFAFA74@<X0>(uint64_t a1@<X8>)
{
  sub_29AFAFAC8(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 8) = v2;
  v4[0] = 0;
  return (v2)(0);
}

uint64_t sub_29AFAFAC8@<X0>(pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology **a1@<X8>)
{
  v2 = operator new(0xC8uLL);
  result = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::HdBasisCurvesTopology(v2);
  *a1 = v2;
  a1[1] = sub_29AFAFB1C;
  return result;
}

uint64_t sub_29AFAFB1C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AFAFB4C@<X0>(uint64_t a1@<X8>)
{
  sub_29AFAFBA0(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 8) = v2;
  v4[0] = 0;
  return (v2)(0);
}

uint64_t sub_29AFAFBA0@<X0>(pxrInternal__aapl__pxrReserved__::HdMeshTopology **a1@<X8>)
{
  v2 = operator new(0x1F0uLL);
  result = pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(v2);
  *a1 = v2;
  a1[1] = sub_29AFAFBF4;
  return result;
}

uint64_t sub_29AFAFBF4(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AFAFC20(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29A447380(v3 + 4);
    }

    operator delete(v3);
  }

  return v2;
}

void *sub_29AFAFC7C(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  if (a2 != a3)
  {
    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
  }

  return result;
}

void *sub_29AFAFD00@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = a4;
  if (a1 == a2)
  {
    v8 = a1;
    result = sub_29A1E2A64(&v12, a3, a4, a5);
    v6 = result;
  }

  else
  {
    if (a3 != a4)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
    }

    result = sub_29A1E2A64(&v11, a1, a2, a5);
    v8 = result;
  }

  *a6 = v8;
  a6[1] = v6;
  a6[2] = v10;
  return result;
}

BOOL sub_29AFAFE74(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  do
  {
    v3 = *v3;
    v4 = v3 == 0;
    if (!v3)
    {
      break;
    }

    v5 = sub_29A328A44(a2, v3 + 4);
    if (!v5)
    {
      break;
    }
  }

  while (v3[2] == *(v5 + 2) && pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator==(v3 + 3, v5 + 3));
  return v4;
}

void *sub_29AFAFF00(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD **a4)
{
  v24 = 0;
  LOBYTE(v25) = 0;
  sub_29A5BD47C(&v24, a2, (a2 + 8), (a2 + 16), (a2 + 24));
  v8 = bswap64(0x9E3779B97F4A7C55 * v24);
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
      v4 = (v9 - 1) & v8;
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
            if (*(v12 + 4) == *a2 && v12[3] == *(a2 + 8) && v12[4] == *(a2 + 16) && (*(a2 + 24) ^ v12[5]) < 8)
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

  v12 = operator new(0xB0uLL);
  v24 = v12;
  v25 = a1;
  v26 = 1;
  *v12 = 0;
  v12[1] = v8;
  v27 = *a4;
  sub_29AFB01B4((v12 + 2), &v27);
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
LABEL_41:
    *v21 = v12;
    goto LABEL_42;
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
    goto LABEL_41;
  }

LABEL_42:
  ++*(a1 + 24);
  return v12;
}

void sub_29AFB019C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AFA3324(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFB01B4(uint64_t a1, _DWORD **a2)
{
  v3 = *a2;
  *a1 = **a2;
  v4 = *(v3 + 1);
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 16), v3 + 4);
  sub_29A1E2240((a1 + 20), v3 + 5);
  v5 = *(v3 + 3);
  *(a1 + 24) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return a1;
}

uint64_t *sub_29AFB0254(void *a1, unsigned int *a2)
{
  result = sub_29A2F4F50(a1, a2);
  if (result)
  {
    sub_29AFB028C(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29AFB028C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29AEC0AF8(v3 + 4);
    }

    operator delete(v3);
  }

  return v2;
}

void sub_29AFB02E8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AEC0AF8(v2 + 4);
    }

    operator delete(v2);
  }
}

void *sub_29AFB0344(void *result)
{
  if (*result == result[1])
  {
    sub_29B2CD2EC();
  }

  return result;
}

void sub_29AFB037C(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  {
    {
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&pxrInternal__aapl__pxrReserved__::UsdImaging_ResolvedAttributeCache<pxrInternal__aapl__pxrReserved__::UsdImaging_XfStrategy,BOOL>::_GetValue(pxrInternal__aapl__pxrReserved__::UsdPrim const&)const::default_, 1.0);
    }
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
}

uint64_t sub_29AFB059C(uint64_t a1)
{
  if (*a1 == *(a1 + 8))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::UsdPrim, pxrInternal__aapl__pxrReserved__::GfMatrix4d, pxrInternal__aapl__pxrReserved__::TfHash>>::operator++() [T = const pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::UsdPrim, pxrInternal__aapl__pxrReserved__::GfMatrix4d, pxrInternal__aapl__pxrReserved__::TfHash>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 = **a1;
  }

  return a1;
}

void *sub_29AFB061C(void *result)
{
  if (*result == result[1])
  {
    sub_29B2CD338();
  }

  return result;
}

unint64_t sub_29AFB0654(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  sub_29AFB0A70(a1, a2, v28);
  if (v28[0])
  {
    v4 = 0;
  }

  else
  {
    v4 = v28[1] == a1 + 16;
  }

  if (v4)
  {
    sub_29AFB0DFC(&v16);
    sub_29AFB09AC(a2, v7);
    sub_29A75506C(&v16);
    v16 = *v7;
    v17 = v8;
    v7[1] = 0;
    *&v8 = 0;
    v7[0] = 0;
    v18 = BYTE8(v8);
    v15 = v7;
    sub_29A7544DC(&v15);
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v7, 1.0);
    v23 = v11;
    v24 = v12;
    v25 = v13;
    v26 = v14;
    v19 = *v7;
    v20 = v8;
    v21 = v9;
    v22 = v10;
    v5 = atomic_load((a1 + 576));
    atomic_store(v5 - 1, &v27);
    sub_29AFB1098(v7, a2);
  }

  return v28[0] + 40;
}

void sub_29AFB07CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_29AFA2EE4(&a9);
  a9 = &a37;
  sub_29A7544DC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFB0800(uint64_t a1)
{
  if (*a1 == *(a1 + 8))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::UsdPrim, pxrInternal__aapl__pxrReserved__::GfMatrix4d, pxrInternal__aapl__pxrReserved__::TfHash>>::operator++() [T = pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::UsdPrim, pxrInternal__aapl__pxrReserved__::GfMatrix4d, pxrInternal__aapl__pxrReserved__::TfHash>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 = **a1;
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__ *sub_29AFB0880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&v24, 1.0);
  result = pxrInternal__aapl__pxrReserved__::UsdGeomXformable::XformQuery::GetLocalTransformation(a3, &v24, *(a1 + 560));
  if (*(a3 + 24))
  {
    v9 = v29;
    *(a4 + 64) = v28;
    *(a4 + 80) = v9;
    v10 = v31;
    *(a4 + 96) = v30;
    *(a4 + 112) = v10;
    v11 = v25;
    *a4 = v24;
    *(a4 + 16) = v11;
    v12 = v27;
    *(a4 + 32) = v26;
    *(a4 + 48) = v12;
  }

  else
  {
    sub_29A5B9D18(a2, &v19);
    v13 = sub_29AFB037C(a1, &v19);
    v14 = v29;
    *(a4 + 64) = v28;
    *(a4 + 80) = v14;
    v15 = v31;
    *(a4 + 96) = v30;
    *(a4 + 112) = v15;
    v16 = v25;
    *a4 = v24;
    *(a4 + 16) = v16;
    v17 = v27;
    *(a4 + 32) = v26;
    *(a4 + 48) = v17;
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(a4, v13);
    if ((v23 & 7) != 0)
    {
      atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
    sub_29A1DE3A4(&v21);
    result = v20;
    if (v20)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v20, v18);
    }
  }

  return result;
}

void sub_29AFB09AC(pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X0>, uint64_t a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v3, a1);
  v3 = &unk_2A20608A8;
  if (v4 && (*(v4 + 57) & 8) == 0 && off_2A20608C8(&v3))
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomXformable::XformQuery::XformQuery(a2, &v3);
    pxrInternal__aapl__pxrReserved__::UsdGeomXformable::~UsdGeomXformable(&v3);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomXformable::~UsdGeomXformable(&v3);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0;
    *(a2 + 16) = 0;
  }
}

void sub_29AFB0A5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdGeomXformable::~UsdGeomXformable(va);
  _Unwind_Resume(a1);
}

void sub_29AFB0A70(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v14 = 0;
  v15 = 0;
  sub_29A5BD47C(&v14, a2, (a2 + 8), (a2 + 16), (a2 + 24));
  v6 = bswap64(0x9E3779B97F4A7C55 * v14);
  v14 = v6;
  v16 = 0;
  v7 = &v14;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v16 + i) = byte_29B734F74[v9];
  }

  v10 = v16;
  sub_29AFB0BA8(a1, v6, &v14);
  v11 = v14;
  if (v14)
  {
    v12 = v10 | 1;
    while (1)
    {
      v13 = *(v11 + 208);
      if (v13 > v12)
      {
        break;
      }

      if (v13 == v12 && *(v11 + 8) == *a2 && *(v11 + 16) == *(a2 + 8) && *(v11 + 24) == *(a2 + 16) && (*(a2 + 24) ^ *(v11 + 32)) < 8)
      {
        goto LABEL_14;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    v11 = 0;
LABEL_14:
    *a3 = v11;
  }

  else
  {
LABEL_12:
    *a3 = 0;
  }

  a3[1] = a1 + 16;
}

void sub_29AFB0BA8(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  __dmb(0xBu);
  v6 = a2 % v5;
  v7 = sub_29A0EC0EC(a2 % v5);
  v8 = v7;
  v9 = v6 - ((1 << v7) & 0xFFFFFFFFFFFFFFFELL);
  v10 = a1 + 48;
  v11 = *(a1 + 48 + 8 * v7);
  __dmb(0xBu);
  if (!v11 || (v12 = *(v10 + 8 * v7), __dmb(0xBu), !*(v12 + 8 * v9)))
  {
    sub_29AFB0C44(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29AFB0C44(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29AFB0C44(a1, v4);
  }

  v5 = sub_29A0EC0EC(v4);
  v6 = *(a1 + 8 * v5 + 48);
  __dmb(0xBu);
  v10 = *(v6 + 8 * (v4 - ((1 << v5) & 0x1FFFFFFFFFFFFFFELL)));
  v11 = 0;
  v12 = a2;
  v7 = &v12;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v11 + i) = byte_29B734F74[v9];
  }

  sub_29AFB0D28(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29AFB0D28@<X0>(uint64_t a1@<X0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0xD8);
  *(result + 26) = a3;
  *result = 0;
  if (i)
  {
    goto LABEL_2;
  }

LABEL_3:
  while (1)
  {
    v11 = *a2;
    *result = i;
    while (1)
    {
      v12 = i;
      atomic_compare_exchange_strong(v11, &v12, result);
      if (v12 == i)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v11, 0, memory_order_relaxed);
      if (add_explicit != i)
      {
        goto LABEL_8;
      }
    }

    add_explicit = i;
LABEL_8:
    if (i == add_explicit || result == add_explicit)
    {
      break;
    }

    for (i = *a2; ; *a2 = i)
    {
      i = *i;
      if (!i)
      {
        break;
      }

LABEL_2:
      v10 = i[26];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AFA2E30(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

uint64_t sub_29AFB0DFC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a1 + 32, 1.0);
  *(a1 + 160) = 0;
  return a1;
}

void sub_29AFB0E44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A7544DC(va);
  _Unwind_Resume(a1);
}

void sub_29AFB0E5C(uint64_t a1@<X0>, uint64_t a2@<X1>, tbb::internal *a3@<X2>, uint64_t a4@<X8>)
{
  v24 = 0;
  v25 = 0;
  sub_29A5BD47C(&v24, a2, (a2 + 8), (a2 + 16), (a2 + 24));
  v8 = bswap64(0x9E3779B97F4A7C55 * v24);
  v24 = v8;
  v26 = 0;
  v9 = &v24;
  for (i = 7; i != -1; --i)
  {
    v11 = *v9;
    v9 = (v9 + 1);
    *(&v26 + i) = byte_29B734F74[v11];
  }

  v12 = v26 | 1;
  sub_29AFB0BA8(a1, v8, &v24);
  v13 = a1 + 16;
  if (a3)
  {
    *(a3 + 26) = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v24;
    v16 = *v24;
    if (*v24)
    {
      v17 = *(v16 + 208);
      while (1)
      {
        v18 = v16;
        if (v17 > v12)
        {
          break;
        }

        if (v17 == v12 && *(v16 + 8) == *v14 && *(v16 + 16) == v14[1] && *(v16 + 24) == v14[2] && (v14[3] ^ *(v16 + 32)) <= 7)
        {
          if (a3)
          {
            sub_29AFA2E30(a1 + 16, a3);
          }

          *a4 = v16;
          *(a4 + 8) = v13;
          *(a4 + 16) = 0;
          return;
        }

        v24 = v16;
        v16 = *v16;
        if (!*v18)
        {
          v15 = v18;
          break;
        }

        v17 = *(v16 + 208);
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = sub_29AFA6D50(a1 + 16, v12, a2);
      v14 = (a3 + 8);
      v15 = v24;
    }

    *a3 = v16;
    while (1)
    {
      v19 = v16;
      atomic_compare_exchange_strong(v15, &v19, a3);
      if (v19 == v16)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v15, 0, memory_order_relaxed);
      if (add_explicit != v16)
      {
        goto LABEL_24;
      }
    }

    add_explicit = v16;
LABEL_24:
    if (v16 == add_explicit || a3 == add_explicit)
    {
      break;
    }

    *a4 = 0;
    *(a4 + 8) = v13;
    *(a4 + 16) = 0;
  }

  add = atomic_fetch_add((a1 + 24), 1uLL);
  *a4 = a3;
  *(a4 + 8) = v13;
  *(a4 + 16) = 1;
  v22 = *(a1 + 8);
  __dmb(0xBu);
  if ((add / v22) > *(a1 + 44))
  {
    do
    {
      v23 = v22;
      atomic_compare_exchange_strong((a1 + 8), &v23, 2 * v22);
    }

    while (v23 != v22 && atomic_fetch_add_explicit((a1 + 8), 0, memory_order_relaxed) == v22);
  }
}

void sub_29AFB1098(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 16), (a2 + 16));
  sub_29A1E2240((a1 + 20), (a2 + 20));
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp*,pxrInternal__aapl__pxrReserved__::UsdGeomXformOp*>();
}

uint64_t *sub_29AFB11A4(void *a1, uint64_t a2)
{
  result = sub_29A8A04EC(a1, a2);
  if (result)
  {
    sub_29AFB11DC(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29AFB11DC(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29AFA1850(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

void sub_29AFB1238(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        sub_29A2258F0((v8 + 16), v4 + 4);
        sub_29A225948((v8 + 20), v4 + 5);
        v11 = *(v4 + 5);
        v12 = *(v4 + 7);
        v13 = *(v4 + 9);
        *(v8 + 24) = *(v4 + 3);
        *(v8 + 72) = v13;
        *(v8 + 56) = v12;
        *(v8 + 40) = v11;
        v14 = *(v4 + 13);
        v15 = *(v4 + 15);
        v16 = *(v4 + 17);
        *(v8 + 88) = *(v4 + 11);
        *(v8 + 136) = v16;
        *(v8 + 120) = v15;
        *(v8 + 104) = v14;
        v10 = *v8;
        sub_29AF4BBE0(a1, v8);
        v4 = *v4;
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    sub_29AFA2108(a1, v10);
  }

  while (v4 != a3)
  {
    sub_29AFB137C(a1, (v4 + 2));
    v4 = *v4;
  }
}

void sub_29AFB1350(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29AFA2108(v1, v2);
  __cxa_rethrow();
}

void sub_29AFB13B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AFB02E8(va, 0);
  _Unwind_Resume(a1);
}

__n128 sub_29AFB13D0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x98uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *v6 = 0;
  *(v6 + 1) = 0;
  sub_29A1E21F4(v6 + 4, a2);
  sub_29A1E2240(v6 + 5, (a2 + 4));
  *(v6 + 88) = *(a2 + 72);
  *(v6 + 104) = *(a2 + 88);
  *(v6 + 120) = *(a2 + 104);
  *(v6 + 136) = *(a2 + 120);
  *(v6 + 24) = *(a2 + 8);
  *(v6 + 40) = *(a2 + 24);
  *(v6 + 56) = *(a2 + 40);
  result = *(a2 + 56);
  *(v6 + 72) = result;
  *(a3 + 16) = 1;
  *(v6 + 1) = bswap64(0x9E3779B97F4A7C55 * (*(v6 + 5) + ((*(v6 + 5) + *(v6 + 4) + (*(v6 + 5) + *(v6 + 4)) * (*(v6 + 5) + *(v6 + 4))) >> 1)));
  return result;
}

std::type_info *sub_29AFB14A0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A19104C(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&stru_2A20421B8, v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

void sub_29AFB152C(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  {
    sub_29B2CD384();
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
}

unint64_t sub_29AFB1670(uint64_t a1, uint64_t a2)
{
  sub_29AFB1B90(a1, a2, v21);
  v4 = v21[0];
  if (v21[0])
  {
    v5 = 0;
  }

  else
  {
    v5 = v21[1] == a1 + 16;
  }

  if (v5)
  {
    v17 = 0;
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    v6 = atomic_load((a1 + 576));
    atomic_store(v6 - 1, &v20);
    sub_29AFB2158(v9, a2, &v17);
    sub_29AFB1F1C(a1, v9, 0, v16);
    v4 = v16[0];
    if (v15)
    {
      sub_29A014BEC(v15);
    }

    if (v14)
    {
      sub_29A014BEC(v14);
    }

    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
    sub_29A1DE3A4(&v11);
    if (v10)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10, v7);
    }

    if (*(&v19 + 1))
    {
      sub_29A014BEC(*(&v19 + 1));
    }

    if (*(&v18 + 1))
    {
      sub_29A014BEC(*(&v18 + 1));
    }
  }

  return v4 + 40;
}

void sub_29AFB1784(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AFA6850(va);
  sub_29A99E154(v2 - 96);
  _Unwind_Resume(a1);
}

void sub_29AFB17A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = (a4 + 40);
  v5 = atomic_load((a4 + 40));
  v6 = (a1 + 576);
  v7 = atomic_load((a1 + 576));
  if (v5 < v7 && (v8 = atomic_load(v6), v9 = v5, atomic_compare_exchange_strong(v4, &v9, v8), v9 == v5))
  {
    v14 = *a3;
    v13 = a3[1];
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = *(a4 + 16);
    *(a4 + 8) = v14;
    *(a4 + 16) = v13;
    if (v15)
    {
      sub_29A014BEC(v15);
    }

    v17 = a3[2];
    v16 = a3[3];
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    v18 = *(a4 + 32);
    *(a4 + 24) = v17;
    *(a4 + 32) = v16;
    if (v18)
    {
      sub_29A014BEC(v18);
    }

    v19 = atomic_load((a1 + 576));
    atomic_store(v19 + 1, (a4 + 40));
  }

  else
  {
    do
    {
      v20 = atomic_load(v4);
      v21 = atomic_load(v6);
    }

    while (v20 != v21 + 1);
  }
}

void sub_29AFB1878(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  *a2 = 0u;
  a2[1] = 0u;
  sub_29A5B9D18(a1, &v2);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v2);
}

void sub_29AFB1AF8(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdShadeCoordSysAPI::~UsdShadeCoordSysAPI((v2 - 72));
  sub_29AF9F520(v1);
  _Unwind_Resume(a1);
}

void sub_29AFB1B90(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v14 = 0;
  v15 = 0;
  sub_29A5BD47C(&v14, a2, (a2 + 8), (a2 + 16), (a2 + 24));
  v6 = bswap64(0x9E3779B97F4A7C55 * v14);
  v14 = v6;
  v16 = 0;
  v7 = &v14;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v16 + i) = byte_29B734F74[v9];
  }

  v10 = v16;
  sub_29AFB1CC8(a1, v6, &v14);
  v11 = v14;
  if (v14)
  {
    v12 = v10 | 1;
    while (1)
    {
      v13 = *(v11 + 88);
      if (v13 > v12)
      {
        break;
      }

      if (v13 == v12 && *(v11 + 8) == *a2 && *(v11 + 16) == *(a2 + 8) && *(v11 + 24) == *(a2 + 16) && (*(a2 + 24) ^ *(v11 + 32)) < 8)
      {
        goto LABEL_14;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    v11 = 0;
LABEL_14:
    *a3 = v11;
  }

  else
  {
LABEL_12:
    *a3 = 0;
  }

  a3[1] = a1 + 16;
}

void sub_29AFB1CC8(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  __dmb(0xBu);
  v6 = a2 % v5;
  v7 = sub_29A0EC0EC(a2 % v5);
  v8 = v7;
  v9 = v6 - ((1 << v7) & 0xFFFFFFFFFFFFFFFELL);
  v10 = a1 + 48;
  v11 = *(a1 + 48 + 8 * v7);
  __dmb(0xBu);
  if (!v11 || (v12 = *(v10 + 8 * v7), __dmb(0xBu), !*(v12 + 8 * v9)))
  {
    sub_29AFB1D64(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29AFB1D64(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29AFB1D64(a1, v4);
  }

  v5 = sub_29A0EC0EC(v4);
  v6 = *(a1 + 8 * v5 + 48);
  __dmb(0xBu);
  v10 = *(v6 + 8 * (v4 - ((1 << v5) & 0x1FFFFFFFFFFFFFFELL)));
  v11 = 0;
  v12 = a2;
  v7 = &v12;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v11 + i) = byte_29B734F74[v9];
  }

  sub_29AFB1E48(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29AFB1E48@<X0>(uint64_t a1@<X0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0x60);
  *(result + 11) = a3;
  *result = 0;
  if (i)
  {
    goto LABEL_2;
  }

LABEL_3:
  while (1)
  {
    v11 = *a2;
    *result = i;
    while (1)
    {
      v12 = i;
      atomic_compare_exchange_strong(v11, &v12, result);
      if (v12 == i)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v11, 0, memory_order_relaxed);
      if (add_explicit != i)
      {
        goto LABEL_8;
      }
    }

    add_explicit = i;
LABEL_8:
    if (i == add_explicit || result == add_explicit)
    {
      break;
    }

    for (i = *a2; ; *a2 = i)
    {
      i = *i;
      if (!i)
      {
        break;
      }

LABEL_2:
      v10 = i[11];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AFA6784(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

void sub_29AFB1F1C(uint64_t a1@<X0>, uint64_t a2@<X1>, tbb::internal *a3@<X2>, uint64_t a4@<X8>)
{
  v24 = 0;
  v25 = 0;
  sub_29A5BD47C(&v24, a2, (a2 + 8), (a2 + 16), (a2 + 24));
  v8 = bswap64(0x9E3779B97F4A7C55 * v24);
  v24 = v8;
  v26 = 0;
  v9 = &v24;
  for (i = 7; i != -1; --i)
  {
    v11 = *v9;
    v9 = (v9 + 1);
    *(&v26 + i) = byte_29B734F74[v11];
  }

  v12 = v26 | 1;
  sub_29AFB1CC8(a1, v8, &v24);
  v13 = a1 + 16;
  if (a3)
  {
    *(a3 + 11) = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v24;
    v16 = *v24;
    if (*v24)
    {
      v17 = *(v16 + 88);
      while (1)
      {
        v18 = v16;
        if (v17 > v12)
        {
          break;
        }

        if (v17 == v12 && *(v16 + 8) == *v14 && *(v16 + 16) == v14[1] && *(v16 + 24) == v14[2] && (v14[3] ^ *(v16 + 32)) <= 7)
        {
          if (a3)
          {
            sub_29AFA6784(a1 + 16, a3);
          }

          *a4 = v16;
          *(a4 + 8) = v13;
          *(a4 + 16) = 0;
          return;
        }

        v24 = v16;
        v16 = *v16;
        if (!*v18)
        {
          v15 = v18;
          break;
        }

        v17 = *(v16 + 88);
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = sub_29AFA7DC4(a1 + 16, v12, a2);
      v14 = (a3 + 8);
      v15 = v24;
    }

    *a3 = v16;
    while (1)
    {
      v19 = v16;
      atomic_compare_exchange_strong(v15, &v19, a3);
      if (v19 == v16)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v15, 0, memory_order_relaxed);
      if (add_explicit != v16)
      {
        goto LABEL_24;
      }
    }

    add_explicit = v16;
LABEL_24:
    if (v16 == add_explicit || a3 == add_explicit)
    {
      break;
    }

    *a4 = 0;
    *(a4 + 8) = v13;
    *(a4 + 16) = 0;
  }

  add = atomic_fetch_add((a1 + 24), 1uLL);
  *a4 = a3;
  *(a4 + 8) = v13;
  *(a4 + 16) = 1;
  v22 = *(a1 + 8);
  __dmb(0xBu);
  if ((add / v22) > *(a1 + 44))
  {
    do
    {
      v23 = v22;
      atomic_compare_exchange_strong((a1 + 8), &v23, 2 * v22);
    }

    while (v23 != v22 && atomic_fetch_add_explicit((a1 + 8), 0, memory_order_relaxed) == v22);
  }
}