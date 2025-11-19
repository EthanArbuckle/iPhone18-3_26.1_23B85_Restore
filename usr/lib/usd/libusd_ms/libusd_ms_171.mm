uint64_t pxrInternal__aapl__pxrReserved__::HdxPickResult::HdxPickResult(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v5;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 64) = *(a2 + 8);
  *(a2 + 8) = 0;
  memcpy((a1 + 72), a2 + 72, 0x120uLL);
  return a1;
}

{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v5;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 64) = *(a2 + 8);
  *(a2 + 8) = 0;
  memcpy((a1 + 72), a2 + 72, 0x120uLL);
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxPickResult::operator=(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v5;
  *a1 = v3;
  *(a1 + 16) = v4;
  if (a2 != a1)
  {
    v6 = *(a1 + 64);
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 64) = *(a2 + 8);
    *(a2 + 8) = 0;
  }

  memcpy((a1 + 72), a2 + 72, 0x120uLL);
  return a1;
}

float32x2_t pxrInternal__aapl__pxrReserved__::HdxPickResult::_GetNormal(pxrInternal__aapl__pxrReserved__::HdxPickResult *this, int a2)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(v2 + 4 * a2);
    __asm { FMOV            V2.2S, #-1.0 }

    v10 = vmaxnm_f32(vdiv_f32(vcvt_f32_s32(vshr_n_s32(vshl_u32(vdup_n_s32(v3), 0xC00000016), 0x16uLL)), vdup_n_s32(0x43FF8000u)), _D2);
    v11 = fmaxf(((4 * v3) >> 22) / 511.0, -1.0);
    return sub_29A144F00((this + 200), &v10);
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdxPickResult::_ResolveHit(pxrInternal__aapl__pxrReserved__::HdRenderIndex **this, int a2, int a3, int a4, float a5, pxrInternal__aapl__pxrReserved__::HdxPickHit *a6)
{
  if (*this)
  {
    v6 = *(*this + a2);
  }

  else
  {
    v6 = -1;
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRprimPathFromPrimId(this[7], v6, &v7);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29AEE2E14(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 32) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  sub_29A1E21F4(&v20, (a2 + 8));
  sub_29A1E2240(v21, (a2 + 12));
  v7 = sub_29AC1199C(a1);
  (*(*v7 + 16))(v13);
  *v19 = *&v13[8];
  *&v13[8] = 0;
  *&v13[16] = 0;
  if ((v13[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdPrimOriginSchema::GetFromParent(v19, &v11);
  pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(&v11, v13);
  v8 = *v13;
  *v13 = 0uLL;
  v9 = *(a4 + 32);
  *(a4 + 24) = v8;
  if (v9)
  {
    sub_29A014BEC(v9);
    if (*&v13[8])
    {
      sub_29A014BEC(*&v13[8]);
    }
  }

  if (v12)
  {
    sub_29A014BEC(v12);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v13);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v13[4]);
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  *&v13[8] = 0u;
  if (a3)
  {
    if (*(a3 + 8))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
    }

    sub_29AEE47F8(a1, &v20, v19, &v11);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  sub_29AEE47F8(a1, &v20, v19, &v11);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29AEE35C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  v19 = *(v17 - 120);
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  sub_29A1DCEA8((v17 - 104));
  sub_29AEE38EC(a10);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxPrimOriginInfo::FromPickHits(pxrInternal__aapl__pxrReserved__::HdRenderIndex *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5[0] = 0;
  v5[1] = 0;
  v4[1] = v5;
  sub_29AEE3850(a3, 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 4));
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetTerminalSceneIndex(a1, v4);
}

void sub_29AEE381C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  sub_29AEE6528(a16);
  sub_29AEE6460(&a9);
  _Unwind_Resume(a1);
}

void sub_29AEE3850(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_29AEE65C8(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 40 * a2;
    while (v3 != v7)
    {
      v3 -= 40;
      sub_29AEE64E8(a1, v3);
    }

    a1[1] = v7;
  }
}

uint64_t sub_29AEE38EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v4 = a1;
  sub_29AEE53E4(&v4);
  return a1;
}

BOOL pxrInternal__aapl__pxrReserved__::HdxPrimOriginInfo::GetFullPath@<W0>(pxrInternal__aapl__pxrReserved__::HdxPrimOriginInfo *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, int *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  v6 = *this;
  v7 = *(this + 1);
  while (v6 != v7)
  {
    sub_29AEE39CC((v6 + 32), a2, a3);
    v6 += 56;
  }

  return sub_29AEE39CC(this + 3, a2, a3);
}

BOOL sub_29AEE39CC(uint64_t *a1, uint64_t a2, int *a3)
{
  v5 = *a1;
  v4 = a1[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v4);
    sub_29A014BEC(v4);
  }

  else
  {
    v12 = 0;
  }

  v11 = v5;
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v11))
  {
    pxrInternal__aapl__pxrReserved__::HdPrimOriginSchema::GetOriginPath(&v11, &v9);
    v6 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
    if (v6)
    {
      if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(&v9))
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::AppendPath(a3, &v9, &v8);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      sub_29A2258F0(a3, &v9);
      sub_29A225948(a3 + 1, &v10);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
    sub_29A1DE3A4(&v9);
  }

  else
  {
    v6 = 0;
  }

  if (v12)
  {
    sub_29A014BEC(v12);
  }

  return v6;
}

void sub_29AEE3B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_29A1DCEA8(&a10);
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdxPrimOriginInfo::ComputeInstancerContext@<X0>(pxrInternal__aapl__pxrReserved__::HdxPrimOriginInfo *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v14);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v15);
  v6 = *(this + 1);
  if (*this != v6)
  {
    v7 = *this + 32;
    do
    {
      sub_29A1E21F4(&v12, &v14);
      sub_29A1E2240(&v13, &v15);
      if (sub_29AEE39CC((v7 - 24), a2, &v12))
      {
        sub_29A1E21F4(&v10, &v12);
        sub_29A1E2240(v11, &v13);
        v11[1] = *(v7 + 16);
        sub_29AEE3CA8(a3, &v10);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v11);
        sub_29A1DE3A4(&v10);
      }

      sub_29AEE39CC(v7, a2, &v14);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
      sub_29A1DE3A4(&v12);
      v8 = v7 + 24;
      v7 += 56;
    }

    while (v8 != v6);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
  return sub_29A1DE3A4(&v14);
}

void sub_29AEE3C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, int a11, int a12, int a13)
{
  sub_29AEE3D18(&a9);
  sub_29A1DCEA8(&a11);
  sub_29A1DCEA8(&a13);
  sub_29AEE6928(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEE3CA8(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = sub_29AEE69F0(a1, a2);
  }

  else
  {
    sub_29A1DDD84(*(a1 + 8), a2);
    sub_29A1DDDC0((v4 + 4), a2 + 1);
    *(v4 + 8) = a2[2];
    result = v4 + 12;
  }

  *(a1 + 8) = result;
  return result;
}

_DWORD *sub_29AEE3D18(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::HdxPickResult::_GetHash(pxrInternal__aapl__pxrReserved__::HdxPickResult *this, int a2)
{
  if (*this)
  {
    v4 = *(*this + 4 * a2);
  }

  else
  {
    v4 = -1;
  }

  v5 = *(this + 1);
  if (v5)
  {
    v6 = *(v5 + 4 * a2);
  }

  else
  {
    v6 = -1;
  }

  v7 = bswap64(0x9E3779B97F4A7C55 * (v6 + ((v4 + ((v4 + v4 * v4) >> 1) + v6 + (v4 + ((v4 + v4 * v4) >> 1) + v6) * (v4 + ((v4 + v4 * v4) >> 1) + v6)) >> 1)));
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
  if (!v8)
  {
    v8 = sub_29AEE546C(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
  }

  if ((*(v8 + 2) ^ *(this + 8)) <= 7)
  {
    v9 = *(this + 2);
    if (v9)
    {
      v10 = *(v9 + 4 * a2);
    }

    else
    {
      v10 = -1;
    }

    v7 = bswap64(0x9E3779B97F4A7C55 * (v10 + ((v10 + v7 + (v10 + v7) * (v10 + v7)) >> 1)));
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
  if (!v11)
  {
    v11 = sub_29AEE546C(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
  }

  if ((*(v11 + 3) ^ *(this + 8)) <= 7)
  {
    v12 = *(this + 3);
    if (v12)
    {
      v13 = *(v12 + 4 * a2);
    }

    else
    {
      v13 = -1;
    }

    v7 = bswap64(0x9E3779B97F4A7C55 * (v13 + ((v13 + v7 + (v13 + v7) * (v13 + v7)) >> 1)));
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
  if (!v14)
  {
    v14 = sub_29AEE546C(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
  }

  if ((*(v14 + 4) ^ *(this + 8)) >= 8)
  {
    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
    if (!v15)
    {
      v15 = sub_29AEE546C(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
    }

    if ((*(v15 + 5) ^ *(this + 8)) > 7)
    {
      return v7;
    }
  }

  v16 = *(this + 4);
  if (v16)
  {
    v17 = *(v16 + 4 * a2);
  }

  else
  {
    v17 = -1;
  }

  return bswap64(0x9E3779B97F4A7C55 * (v17 + ((v17 + v7 + (v17 + v7) * (v17 + v7)) >> 1)));
}

BOOL pxrInternal__aapl__pxrReserved__::HdxPickResult::_IsValidHit(pxrInternal__aapl__pxrReserved__::HdxPickResult *this, int a2)
{
  if (!*this || *(*this + 4 * a2) == -1)
  {
    return 0;
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
  if (!v4)
  {
    v4 = sub_29AEE546C(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
  }

  if ((*(v4 + 3) ^ *(this + 8)) <= 7)
  {
    v5 = *(this + 3);
    if (!v5)
    {
      return 0;
    }

    return *(v5 + 4 * a2) != -1;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
  if (!v6)
  {
    v6 = sub_29AEE546C(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
  }

  if ((*(v6 + 4) ^ *(this + 8)) > 7)
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
    if (!v8)
    {
      v8 = sub_29AEE546C(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
    }

    if ((*(v8 + 5) ^ *(this + 8)) > 7)
    {
      return 1;
    }

    v9 = *(this + 4);
    if (v9)
    {
      if (*(v9 + 4 * a2) != -1)
      {
        return 1;
      }
    }

    v10 = *(this + 1);
    if (v10 && *(v10 + 4 * a2) != -1)
    {
      if (*this)
      {
        v11 = *(*this + 4 * a2);
      }

      else
      {
        v11 = -1;
      }

      pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRprimPathFromPrimId(*(this + 7), v11, &v12);
      pxrInternal__aapl__pxrReserved__::SdfPath::IsEmpty(&v12);
    }
  }

  else
  {
    v5 = *(this + 4);
    if (v5)
    {
      return *(v5 + 4 * a2) != -1;
    }
  }

  return 0;
}

void sub_29AEE40C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  sub_29A1DCEA8(va);
  sub_29A1DCEA8(va1);
  sub_29A1DCEA8(va2);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::HdxPickHit::GetHash(pxrInternal__aapl__pxrReserved__::HdxPickHit *this)
{
  v1 = *this;
  v2 = *(this + 1);
  v5 = bswap64(0x9E3779B97F4A7C55 * (*(this + 3) + ((*(this + 3) + *(this + 2) + (*(this + 3) + *(this + 2)) * (*(this + 3) + *(this + 2))) >> 1)));
  v3 = bswap64(0x9E3779B97F4A7C55 * (v2 + ((v2 + v1 + (v2 + v1) * (v2 + v1)) >> 1)));
  v7 = 1;
  v6 = v3 + ((v3 + v3 * v3) >> 1);
  sub_29AEE6F28(&v6, &v5, this + 4, this + 6, this + 7, this + 8, this + 9, this + 5, this + 6, this + 7, this + 16, this + 17, this + 18, this + 19);
  return bswap64(0x9E3779B97F4A7C55 * v6);
}

uint64_t sub_29AEE4690(uint64_t a1)
{
  *a1 = 0x8000000080;
  *(a1 + 8) = 32000;
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
  if (!v2)
  {
    v2 = sub_29AEE546C(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
  }

  v3 = *(v2 + 1);
  *(a1 + 16) = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
  if (!v4)
  {
    v4 = sub_29AEE546C(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
  }

  v5 = *(v4 + 6);
  *(a1 + 24) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 32) = 0;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a1 + 40, 1.0);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a1 + 168, 1.0);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 344) = 0;
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection((a1 + 352));
  *(a1 + 456) = 953267991;
  *(a1 + 464) = 0;
  return a1;
}

void sub_29AEE4794(_Unwind_Exception *exception_object)
{
  v2 = *(v1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_29AEE47F8@<X0>(uint64_t *a1@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  v8 = (a4 + 4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v8);
  *(a4 + 24) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 8) = 0u;
  pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::GetFromParent(a3, &v21);
  pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::GetPaths(&v21, &v19);
  if (v19)
  {
    (*(*v19 + 32))(&v16, 0.0);
    if (v16)
    {
      v9 = v18;
      sub_29A1E21F4(&v15, v18);
      sub_29A1E2240(&v15 + 1, v9 + 1);
    }

    else
    {
      v15 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v15);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v15 + 1);
    }

    sub_29ABED558(&v16);
  }

  else
  {
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v15);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v15 + 1);
  }

  if (v20)
  {
    sub_29A014BEC(v20);
  }

  if (*(&v21 + 1))
  {
    sub_29A014BEC(*(&v21 + 1));
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v15))
  {
    v10 = sub_29AC1199C(a1);
    (*(*v10 + 16))(&v16);
    v21 = v17;
    v17 = 0uLL;
    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetFromParent(&v21, &v19);
    if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v19))
    {
      pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetInstanceLocations(&v19, &v14);
      sub_29A2258F0(a4, &v15);
      sub_29A225948(v8, &v15 + 1);
      v11 = v21;
      if (*(&v21 + 1))
      {
        atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v12 = *(a4 + 16);
      *(a4 + 8) = v11;
      if (v12)
      {
        sub_29A014BEC(v12);
      }

      pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::ComputeInstanceIndicesForProto(&v19, a2, &v16);
    }

    if (v20)
    {
      sub_29A014BEC(v20);
    }

    if (*(&v21 + 1))
    {
      sub_29A014BEC(*(&v21 + 1));
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15 + 1);
  return sub_29A1DE3A4(&v15);
}

void sub_29AEE4B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  sub_29ABED558(&a13);
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (a20)
  {
    sub_29A014BEC(a20);
  }

  v22 = *(v21 - 72);
  if (v22)
  {
    sub_29A014BEC(v22);
  }

  sub_29A1DCEA8(&a12);
  sub_29AEE4BDC(v20);
}

uint64_t sub_29AEE4C40(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29AEE4DAC(a1, a2);
  }

  else
  {
    sub_29AEE4EF4(a1, a1[1], a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

_DWORD *sub_29AEE4C8C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29AEE4CF8(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      sub_29ABED558(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_29ABED558(&v8);
  }

  return a1;
}

uint64_t sub_29AEE4DAC(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_29A00C9A4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A040BCC(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[56 * v2];
  *(&v16 + 1) = &v7[56 * v6];
  sub_29AEE4EF4(a1, v15, a2);
  *&v16 = v15 + 56;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29AEE4F68(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29AEE5114(&v14);
  return v13;
}

void sub_29AEE4EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AEE5114(va);
  _Unwind_Resume(a1);
}

__n128 sub_29AEE4EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29A1DDD84(a2, a3);
  sub_29A1DDDC0((a2 + 4), (a3 + 4));
  *(a2 + 8) = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_29A1DDD84((a2 + 24), (a3 + 24));
  sub_29A1DDDC0((a2 + 28), (a3 + 28));
  result = *(a3 + 32);
  *(a2 + 32) = result;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a2 + 48) = *(a3 + 48);
  return result;
}

uint64_t sub_29AEE4F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_29AEE4EF4(a1, a4, v7);
      v7 += 56;
      a4 = v12 + 56;
      v12 += 56;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29AEE501C(a1, v5);
      v5 += 56;
    }
  }

  return sub_29AEE5088(v9);
}

_DWORD *sub_29AEE501C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 28));
  sub_29A1DE3A4((a2 + 24));
  v4 = *(a2 + 16);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 4));

  return sub_29A1DE3A4(a2);
}

uint64_t sub_29AEE5088(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AEE50C0(a1);
  }

  return a1;
}

uint64_t *sub_29AEE50C0(uint64_t *result)
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
      v3 -= 56;
      result = sub_29AEE501C(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29AEE5114(void **a1)
{
  sub_29AEE5148(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29AEE5148(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 56;
      result = sub_29AEE501C(v4, v1 - 56);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

void sub_29AEE5190(int *a1)
{
  v3 = *a1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(a1);
  v4 = a1[1];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(a1 + 1);
  v2 = a1[6];
  v5 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  v6 = v2;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(a1 + 6);
  v7 = a1[7];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(a1 + 7);
  v8 = *(a1 + 2);
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  v9 = a1[12];
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29AEE5378(void **a1)
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
        v3 -= 56;
        sub_29AEE501C(a1, v3);
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

void sub_29AEE53E4(void ***a1)
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
        v4 -= 56;
        sub_29AEE501C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

pxrInternal__aapl__pxrReserved__::HdxPickTokens_StaticTokenType *sub_29AEE546C(atomic_ullong *a1)
{
  result = sub_29AEE54B4();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdxPickTokens_StaticTokenType::~HdxPickTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdxPickTokens_StaticTokenType *sub_29AEE54B4()
{
  v0 = operator new(0x70uLL);
  pxrInternal__aapl__pxrReserved__::HdxPickTokens_StaticTokenType::HdxPickTokens_StaticTokenType(v0);
  return v0;
}

unint64_t sub_29AEE54F8()
{
  v19 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x38uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "PickBuffer", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "PickBufferBinding", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "Picking", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "widgetDepthStencil", 0);
  v1 = v0 + 4;
  v2 = *v0;
  v15 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v3;
    }
  }

  v4 = v0[1];
  v16 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 = v5;
    }
  }

  v6 = v0[2];
  v17 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v7;
    }
  }

  v8 = v0[3];
  v18 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v9;
    }
  }

  *v1 = 0;
  v0[5] = 0;
  v0[6] = 0;
  sub_29A12EF7C(v1, &v15, &v19, 4uLL);
  for (i = 24; i != -8; i -= 8)
  {
    v11 = *(&v15 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v12 = 0;
  atomic_compare_exchange_strong(&qword_2A174FE60, &v12, v0);
  if (v12)
  {
    v13 = sub_29A1CF24C(v0);
    operator delete(v13);
    return atomic_load(&qword_2A174FE60);
  }

  return v0;
}

void sub_29AEE56AC(_Unwind_Exception *a1)
{
  v4 = 24;
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
      v6 = v1[3];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[2];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[1];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

void *sub_29AEE5768(void *a1)
{
  *a1 = &unk_2A209BE10;
  sub_29A0FC854((a1 + 1));
  return a1;
}

void sub_29AEE57AC(void *a1)
{
  *a1 = &unk_2A209BE10;
  sub_29A0FC854((a1 + 1));

  operator delete(a1);
}

void *sub_29AEE5800(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_2A209BE10;
  sub_29A117068((v2 + 1), a1 + 8);
  return v2;
}

void sub_29AEE589C(void *a1)
{
  sub_29A0FC854(a1 + 8);

  operator delete(a1);
}

uint64_t sub_29AEE58D8(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColorMask(0, 0, 0, 0);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthMask(0);
  v2 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable(2960);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilFunc(519, 1, 1, v2);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilOp(7680, 7680, 7681);
  v3 = *(a1 + 32);
  if (!v3)
  {
    sub_29A0DDCB0();
  }

  (*(*v3 + 48))(v3);
  v4 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthMask(1);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClearDepth(v4, 1.0);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glClear(256);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glColorMask(1, 1, 1, 1);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable(2884);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPolygonMode(1032, 6914);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFrontFace(2305);
  v5 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;

  return v5(2960);
}

uint64_t sub_29AEE5A54(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209BE70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29AEE5AA0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B714F12 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A207B170);
}

uint64_t sub_29AEE5B2C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B713E9BLL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A209B348);
}

pxrInternal__aapl__pxrReserved__::HdxRenderTagTokens_StaticTokenType *sub_29AEE5BB8(atomic_ullong *a1)
{
  result = sub_29AEE5C00();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdxRenderTagTokens_StaticTokenType::~HdxRenderTagTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdxRenderTagTokens_StaticTokenType *sub_29AEE5C00()
{
  v0 = operator new(0x58uLL);
  pxrInternal__aapl__pxrReserved__::HdxRenderTagTokens_StaticTokenType::HdxRenderTagTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29AEE5C44(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B714F67 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A209BE80);
}

uint64_t sub_29AEE5CD0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  sub_29A166F2C((a1 + 16), a2 + 2);
  sub_29A166F2C((a1 + 24), a2 + 3);
  memcpy((a1 + 32), a2 + 4, 0x108uLL);
  if (a1 != a2)
  {
    sub_29A4DFDC4((a1 + 296), a2[37], a2[38], (a2[38] - a2[37]) >> 5);
  }

  sub_29AC9B1D0((a1 + 320), (a2 + 40));
  sub_29A166F2C((a1 + 360), a2 + 45);
  sub_29A166F2C((a1 + 368), a2 + 46);
  sub_29A166F2C((a1 + 376), a2 + 47);
  sub_29A166F2C((a1 + 384), a2 + 48);
  *(a1 + 392) = *(a2 + 392);
  sub_29A166F2C((a1 + 400), a2 + 50);
  if (a1 != a2)
  {
    sub_29A324D54(a1 + 408, a2[51], a2[52], (a2[52] - a2[51]) >> 3);
    sub_29A324D54(a1 + 432, a2[54], a2[55], (a2[55] - a2[54]) >> 3);
  }

  *(a1 + 456) = *(a2 + 57);
  return a1;
}

void *sub_29AEE5DD8(void *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29AB876CC(result, a4);
    result = sub_29AEE5E60(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AEE5E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AC943DC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEE5E60(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    sub_29AE9CD44(a1, a4, a2);
  }

  v7 = 1;
  sub_29AC94748(v6);
  return a4;
}

void **sub_29AEE5F0C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29AE8A2C8(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29AEE5FA0, &stru_2A2098778);
  }
}

void *sub_29AEE5FA0@<X0>(void *a1@<X8>)
{
  result = operator new(0x10uLL);
  *result = 0;
  result[1] = 0;
  *a1 = result;
  a1[1] = sub_29AEE5FE8;
  a1[2] = &stru_2A2098778;
  return result;
}

void sub_29AEE5FE8(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t sub_29AEE5FF4(uint64_t a1, uint64_t a2)
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
  v15 = &v7[80 * v2];
  *(&v16 + 1) = &v7[80 * v6];
  sub_29AEE6124(a1, v15, a2);
  *&v16 = v15 + 80;
  v8 = *(a1 + 8);
  v9 = &v15[*a1 - v8];
  sub_29AEE61B0(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29AEE63E4(&v14);
  return v13;
}

void sub_29AEE6110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AEE63E4(va);
  _Unwind_Resume(a1);
}

__n128 sub_29AEE6124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29A1E21F4(a2, a3);
  sub_29A1E2240((a2 + 4), (a3 + 4));
  sub_29A1E21F4((a2 + 8), (a3 + 8));
  sub_29A1E2240((a2 + 12), (a3 + 12));
  sub_29A1E21F4((a2 + 16), (a3 + 16));
  sub_29A1E2240((a2 + 20), (a3 + 20));
  result = *(a3 + 24);
  v6 = *(a3 + 40);
  v7 = *(a3 + 56);
  *(a2 + 72) = *(a3 + 72);
  *(a2 + 56) = v7;
  *(a2 + 40) = v6;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_29AEE61B0(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
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
      sub_29AEE6264(a1, a4, v7);
      v7 += 80;
      a4 = v12 + 80;
      v12 += 80;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29AEE62F0(a1, v5);
      v5 += 20;
    }
  }

  return sub_29AEE6358(v9);
}

__n128 sub_29AEE6264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29A1DDD84(a2, a3);
  sub_29A1DDDC0((a2 + 4), (a3 + 4));
  sub_29A1DDD84((a2 + 8), (a3 + 8));
  sub_29A1DDDC0((a2 + 12), (a3 + 12));
  sub_29A1DDD84((a2 + 16), (a3 + 16));
  sub_29A1DDDC0((a2 + 20), (a3 + 20));
  result = *(a3 + 24);
  v6 = *(a3 + 40);
  v7 = *(a3 + 56);
  *(a2 + 72) = *(a3 + 72);
  *(a2 + 56) = v7;
  *(a2 + 40) = v6;
  *(a2 + 24) = result;
  return result;
}

_DWORD *sub_29AEE62F0(uint64_t a1, _DWORD *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 5);
  sub_29A1DE3A4(a2 + 4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 3);
  sub_29A1DE3A4(a2 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 1);

  return sub_29A1DE3A4(a2);
}

uint64_t sub_29AEE6358(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AEE6390(a1);
  }

  return a1;
}

uint64_t *sub_29AEE6390(uint64_t *result)
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
      v3 -= 20;
      result = sub_29AEE62F0(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29AEE63E4(void **a1)
{
  sub_29AEE6418(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29AEE6418(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 80;
      result = sub_29AEE62F0(v4, (v1 - 80));
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

void sub_29AEE6460(void ***a1)
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
        v4 -= 40;
        sub_29AEE64E8(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29AEE64E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = a2;
  sub_29AEE53E4(&v4);
}

void *sub_29AEE6528(void *result)
{
  if (result)
  {
    v1 = result;
    sub_29AEE6528(*result);
    sub_29AEE6528(v1[1]);
    sub_29ABED558(v1 + 13);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  return result;
}

void sub_29AEE65C8(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = 40 * ((40 * a2 - 40) / 0x28) + 40;
      bzero(*(a1 + 8), v11);
      v5 += v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      sub_29A00C9A4();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    v20 = a1;
    if (v9)
    {
      v10 = sub_29A10E224(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v17 = v10;
    v18 = &v10[40 * v6];
    *(&v19 + 1) = &v10[40 * v9];
    v12 = 40 * ((40 * a2 - 40) / 0x28) + 40;
    bzero(v18, v12);
    *&v19 = &v18[v12];
    v13 = *(a1 + 8);
    v14 = &v18[*a1 - v13];
    sub_29AEE6754(a1, *a1, v13, v14);
    v15 = *a1;
    *a1 = v14;
    v16 = *(a1 + 16);
    *(a1 + 8) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    sub_29AEE68AC(&v17);
  }
}

void sub_29AEE6740(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AEE68AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEE6754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(a4 + 24) = *(v7 + 24);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      v7 += 40;
      a4 += 40;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      sub_29AEE64E8(a1, v5);
      v5 += 40;
    }
  }

  return sub_29AEE6820(v9);
}

uint64_t sub_29AEE6820(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AEE6858(a1);
  }

  return a1;
}

void sub_29AEE6858(uint64_t *a1)
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
      v3 -= 40;
      sub_29AEE64E8(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29AEE68AC(void **a1)
{
  sub_29AEE68E0(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29AEE68E0(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 40;
    sub_29AEE64E8(v4, i - 40);
  }
}

void sub_29AEE6928(void ***a1)
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
        v4 -= 3;
        sub_29AEE69B0(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29AEE69B0(uint64_t a1, _DWORD *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 1);

  return sub_29A1DE3A4(a2);
}

uint64_t sub_29AEE69F0(uint64_t a1, _DWORD *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 2);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1555555555555555)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 2) >= 0xAAAAAAAAAAAAAAALL)
  {
    v6 = 0x1555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    v7 = sub_29A379A50(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[12 * v2];
  v15 = v7;
  v16 = v8;
  *(&v17 + 1) = &v7[12 * v6];
  sub_29A1DDD84(v8, a2);
  sub_29A1DDDC0(v8 + 1, a2 + 1);
  *(v8 + 2) = a2[2];
  *&v17 = v8 + 12;
  v9 = *(a1 + 8);
  v10 = &v8[*a1 - v9];
  sub_29AEE6B30(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29AEE6C90(&v15);
  return v14;
}

void sub_29AEE6B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AEE6C90(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEE6B30(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
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
    v4 = a4;
    v6 = a2;
    v8 = a2;
    do
    {
      sub_29A1DDD84(v4, v8);
      sub_29A1DDDC0(v4 + 1, v8 + 1);
      v4[2] = v8[2];
      v8 += 3;
      v4 = v13 + 3;
      v13 += 3;
    }

    while (v8 != a3);
    v11 = 1;
    while (v6 != a3)
    {
      sub_29AEE69B0(a1, v6);
      v6 += 3;
    }
  }

  return sub_29AEE6C04(v10);
}

uint64_t sub_29AEE6C04(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AEE6C3C(a1);
  }

  return a1;
}

uint64_t *sub_29AEE6C3C(uint64_t *result)
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
      v3 -= 3;
      result = sub_29AEE69B0(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29AEE6C90(void **a1)
{
  sub_29AEE6CC4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29AEE6CC4(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 12;
      result = sub_29AEE69B0(v4, (v1 - 12));
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

void *sub_29AEE6D0C(uint64_t a1, unint64_t *a2, _OWORD *a3)
{
  v6 = *a2;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v3 = *a2;
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
          if (i[2] == v6)
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

uint64_t sub_29AEE6F28(uint64_t a1, uint64_t *a2, unsigned int *a3, int *a4, int *a5, int *a6, int *a7, double *a8, double *a9, double *a10, float *a11, float *a12, float *a13, float *a14)
{
  v18 = *a2;
  if (*(a1 + 8))
  {
    v18 += (*a1 + v18 + (*a1 + v18) * (*a1 + v18)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v18;
  sub_29A1E33B4(a1, a3);

  return sub_29AEE6FF8(a1, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_29AEE6FF8(uint64_t a1, int *a2, int *a3, int *a4, int *a5, double *a6, double *a7, double *a8, float *a9, float *a10, float *a11, float *a12)
{
  v12 = *a2;
  if (*(a1 + 8))
  {
    v12 += (*a1 + v12 + (*a1 + v12) * (*a1 + v12)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v12;
  return sub_29AEE7054(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_29AEE7054(uint64_t a1, int *a2, int *a3, int *a4, double *a5, double *a6, double *a7, float *a8, float *a9, float *a10, float *a11)
{
  v11 = *a2;
  if (*(a1 + 8))
  {
    v11 += (*a1 + v11 + (*a1 + v11) * (*a1 + v11)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v11;
  return sub_29AEE70AC(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_29AEE70AC(uint64_t a1, int *a2, int *a3, double *a4, double *a5, double *a6, float *a7, float *a8, float *a9, float *a10)
{
  v10 = *a2;
  if (*(a1 + 8))
  {
    v10 += (*a1 + v10 + (*a1 + v10) * (*a1 + v10)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v10;
  return sub_29AEE7100(a1, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_29AEE7100(uint64_t a1, int *a2, double *a3, double *a4, double *a5, float *a6, float *a7, float *a8, float *a9)
{
  v9 = *a2;
  if (*(a1 + 8))
  {
    v9 += (*a1 + v9 + (*a1 + v9) * (*a1 + v9)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v9;
  return sub_29AEE7150(a1, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_29AEE7150(uint64_t a1, double *a2, double *a3, double *a4, float *a5, float *a6, float *a7, float *a8)
{
  v8 = *a2;
  if (*a2 == 0.0)
  {
    v8 = 0.0;
  }

  v9 = v8;
  if (*(a1 + 8))
  {
    *&v9 = *&v8 + ((*a1 + *&v8 + (*a1 + *&v8) * (*a1 + *&v8)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v9;
  return sub_29AEE71A8(a1, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_29AEE71A8(uint64_t a1, double *a2, double *a3, float *a4, float *a5, float *a6, float *a7)
{
  v7 = *a2;
  if (*a2 == 0.0)
  {
    v7 = 0.0;
  }

  v8 = v7;
  if (*(a1 + 8))
  {
    *&v8 = *&v7 + ((*a1 + *&v7 + (*a1 + *&v7) * (*a1 + *&v7)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v8;
  return sub_29AEE71FC(a1, a3, a4, a5, a6, a7);
}

uint64_t sub_29AEE71FC(uint64_t a1, double *a2, float *a3, float *a4, float *a5, float *a6)
{
  v6 = *a2;
  if (*a2 == 0.0)
  {
    v6 = 0.0;
  }

  v7 = v6;
  if (*(a1 + 8))
  {
    *&v7 = *&v6 + ((*a1 + *&v6 + (*a1 + *&v6) * (*a1 + *&v6)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v7;
  return sub_29A18B6BC(a1, a3, a4, a5, a6);
}

pxrInternal__aapl__pxrReserved__::HdxPickFromRenderBufferTask *pxrInternal__aapl__pxrReserved__::HdxPickFromRenderBufferTask::HdxPickFromRenderBufferTask(pxrInternal__aapl__pxrReserved__::HdxPickFromRenderBufferTask *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::HdxTask::HdxTask(this, a3);
  *v4 = &unk_2A209BEA0;
  sub_29AEE86F8(v4 + 24);
  sub_29AEE4690(this + 152);
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 39) = 0u;
  *(this + 665) = 0u;
  return this;
}

void sub_29AEE72C4(_Unwind_Exception *a1)
{
  sub_29AEE8844(v2);
  pxrInternal__aapl__pxrReserved__::HdxTask::~HdxTask(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxPickFromRenderBufferTask::~HdxPickFromRenderBufferTask(pxrInternal__aapl__pxrReserved__::HdxPickFromRenderBufferTask *this)
{
  *this = &unk_2A209BEA0;
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection((this + 504));
  sub_29A0FC854(this + 472);
  v2 = *(this + 56);
  if (v2)
  {
    *(this + 57) = v2;
    operator delete(v2);
  }

  v3 = *(this + 22);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 21);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29AEE8844(this + 6);

  pxrInternal__aapl__pxrReserved__::HdxTask::~HdxTask(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdxPickFromRenderBufferTask::~HdxPickFromRenderBufferTask(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxPickFromRenderBufferTask::_Sync(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  sub_29A0ECEEC(&v10, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxPickFromRenderBufferTask::_Sync(HdSceneDelegate *, HdTaskContext *, HdDirtyBits *)");
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
  if (!v8)
  {
    v8 = sub_29AEE546C(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
  }

  result = sub_29AEE03B0(a3, v8, a1 + 152);
  *(a1 + 624) = *(a2 + 8);
  if ((*a4 & 4) != 0)
  {
    result = sub_29AEE7498(a1, a2, a1 + 24);
  }

  *a4 = 0;
  if (v10)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v11, v10);
  }

  return result;
}

uint64_t sub_29AEE7498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v6)
  {
    v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  (*(*a2 + 120))(&v16, a2, a1 + 8, v6 + 440);
  v7 = sub_29AEE88E8(&v16);
  if (v7)
  {
    if ((v17 & 4) != 0)
    {
      v8 = (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(&v16);
    }

    else
    {
      v8 = v16;
    }

    sub_29A2258F0(a3, v8);
    sub_29A225948((a3 + 4), (v8 + 4));
    sub_29A2258F0((a3 + 8), (v8 + 8));
    sub_29A225948((a3 + 12), (v8 + 12));
    sub_29A2258F0((a3 + 16), (v8 + 16));
    sub_29A225948((a3 + 20), (v8 + 20));
    sub_29A2258F0((a3 + 24), (v8 + 24));
    sub_29A225948((a3 + 28), (v8 + 28));
    sub_29A2258F0((a3 + 32), (v8 + 32));
    sub_29A225948((a3 + 36), (v8 + 36));
    sub_29A2258F0((a3 + 40), (v8 + 40));
    sub_29A225948((a3 + 44), (v8 + 44));
    *(a3 + 48) = *(v8 + 48);
    v9 = *(v8 + 112);
    v11 = *(v8 + 64);
    v10 = *(v8 + 80);
    *(a3 + 96) = *(v8 + 96);
    *(a3 + 112) = v9;
    *(a3 + 64) = v11;
    *(a3 + 80) = v10;
  }

  else
  {
    v14[0] = "hd/task.h";
    v14[1] = "_GetTaskParams";
    v14[2] = 242;
    v14[3] = "BOOL pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskParams(HdSceneDelegate *, T *) [T = pxrInternal__aapl__pxrReserved__::HdxPickFromRenderBufferTaskParams]";
    v15 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 8));
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v14, 1, "Task params for %s is of unexpected type", Text);
  }

  sub_29A186B14(&v16);
  return v7;
}

void sub_29AEE7684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxPickFromRenderBufferTask::Prepare(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a3)
{
  sub_29A0ECEEC(&v6, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxPickFromRenderBufferTask::Prepare(HdTaskContext *, HdRenderIndex *)");
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetBprim(a3, (v5 + 312), (a1 + 24));
}

void pxrInternal__aapl__pxrReserved__::HdxPickFromRenderBufferTask::_ComputeProjectionMatrix(pxrInternal__aapl__pxrReserved__::HdCamera **this)
{
  if (pxrInternal__aapl__pxrReserved__::CameraUtilFraming::IsValid((this + 9)))
  {
    pxrInternal__aapl__pxrReserved__::HdCamera::ComputeProjectionMatrix(this[84]);
  }

  pxrInternal__aapl__pxrReserved__::HdCamera::ComputeProjectionMatrix(this[84]);
}

void pxrInternal__aapl__pxrReserved__::HdxPickFromRenderBufferTask::Execute(uint64_t a1)
{
  sub_29A0ECEEC(&v51, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxPickFromRenderBufferTask::Execute(HdTaskContext *)");
  v2 = *(a1 + 632);
  if (v2 && *(a1 + 664) && *(a1 + 672))
  {
    (*(*v2 + 112))(v2);
    *(a1 + 680) = (*(**(a1 + 632) + 120))(*(a1 + 632));
    (*(**(a1 + 664) + 112))(*(a1 + 664));
    if (*(a1 + 680) == 1)
    {
      v3 = (*(**(a1 + 664) + 120))(*(a1 + 664));
    }

    else
    {
      v3 = 0;
    }

    *(a1 + 680) = v3;
    v4 = (*(**(a1 + 664) + 48))(*(a1 + 664));
    if (v4 == (*(**(a1 + 632) + 48))(*(a1 + 632)) && (v5 = (*(**(a1 + 664) + 56))(*(a1 + 664)), v5 == (*(**(a1 + 632) + 56))(*(a1 + 632))))
    {
      v6 = *(a1 + 656);
      if (!v6 || (((*(*v6 + 112))(v6), *(a1 + 680) != 1) ? (v7 = 0) : (v7 = (*(**(a1 + 656) + 120))(*(a1 + 656))), (*(a1 + 680) = v7, v11 = (*(**(a1 + 656) + 48))(*(a1 + 656)), v11 == (*(**(a1 + 632) + 48))(*(a1 + 632))) && (v12 = (*(**(a1 + 656) + 56))(*(a1 + 656)), v12 == (*(**(a1 + 632) + 56))(*(a1 + 632)))))
      {
        v13 = *(a1 + 648);
        if (!v13 || (((*(*v13 + 112))(v13), *(a1 + 680) != 1) ? (v14 = 0) : (v14 = (*(**(a1 + 648) + 120))(*(a1 + 648))), (*(a1 + 680) = v14, v18 = (*(**(a1 + 648) + 48))(*(a1 + 648)), v18 == (*(**(a1 + 632) + 48))(*(a1 + 632))) && (v19 = (*(**(a1 + 648) + 56))(*(a1 + 648)), v19 == (*(**(a1 + 632) + 56))(*(a1 + 632)))))
        {
          v20 = *(a1 + 640);
          if (!v20 || (((*(*v20 + 112))(v20), *(a1 + 680) != 1) ? (v21 = 0) : (v21 = (*(**(a1 + 640) + 120))(*(a1 + 640))), (*(a1 + 680) = v21, v25 = (*(**(a1 + 640) + 48))(*(a1 + 640)), v25 == (*(**(a1 + 632) + 48))(*(a1 + 632))) && (v26 = (*(**(a1 + 640) + 56))(*(a1 + 640)), v26 == (*(**(a1 + 632) + 56))(*(a1 + 632)))))
          {
            (*(**(a1 + 632) + 88))(*(a1 + 632));
            (*(**(a1 + 664) + 88))(*(a1 + 664));
            v27 = *(a1 + 656);
            if (v27)
            {
              (*(*v27 + 88))(v27);
            }

            v31 = *(a1 + 648);
            if (v31)
            {
              (*(*v31 + 88))(v31);
            }

            v32 = *(a1 + 640);
            if (v32)
            {
              (*(*v32 + 88))(v32);
            }

            v33 = (*(**(a1 + 632) + 48))(*(a1 + 632));
            v34 = (*(**(a1 + 632) + 56))(*(a1 + 632));
            v49 = v33;
            v50 = v34;
            memset(v48, 0, sizeof(v48));
            pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse((*(a1 + 672) + 16), 0, 0.0, v48);
            v47 = 0u;
            v46 = 0u;
            v45 = 0u;
            v44 = 0u;
            v43 = 0u;
            v42 = 0u;
            v41 = 0u;
            v40 = 0u;
            pxrInternal__aapl__pxrReserved__::HdxPickFromRenderBufferTask::_ComputeProjectionMatrix(a1);
          }

          v35 = "hdx/pickFromRenderBufferTask.cpp";
          v36 = "Execute";
          v37 = 164;
          v38 = "virtual void pxrInternal__aapl__pxrReserved__::HdxPickFromRenderBufferTask::Execute(HdTaskContext *)";
          LOBYTE(v39) = 0;
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 32));
          v29 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 24));
          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v35, "Instance Id buffer %s has different dimensions than Prim Id buffer %s", v30, Text, v29);
        }

        else
        {
          v35 = "hdx/pickFromRenderBufferTask.cpp";
          v36 = "Execute";
          v37 = 152;
          v38 = "virtual void pxrInternal__aapl__pxrReserved__::HdxPickFromRenderBufferTask::Execute(HdTaskContext *)";
          LOBYTE(v39) = 0;
          v22 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 40));
          v23 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 24));
          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v35, "Element Id buffer %s has different dimensions than Prim Id buffer %s", v24, v22, v23);
        }
      }

      else
      {
        v35 = "hdx/pickFromRenderBufferTask.cpp";
        v36 = "Execute";
        v37 = 140;
        v38 = "virtual void pxrInternal__aapl__pxrReserved__::HdxPickFromRenderBufferTask::Execute(HdTaskContext *)";
        LOBYTE(v39) = 0;
        v15 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 48));
        v16 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 24));
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v35, "Normal buffer %s has different dimensions than Prim Id buffer %s", v17, v15, v16);
      }
    }

    else
    {
      v35 = "hdx/pickFromRenderBufferTask.cpp";
      v36 = "Execute";
      v37 = 128;
      v38 = "virtual void pxrInternal__aapl__pxrReserved__::HdxPickFromRenderBufferTask::Execute(HdTaskContext *)";
      LOBYTE(v39) = 0;
      v8 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 56));
      v9 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 24));
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v35, "Depth buffer %s has different dimensions than Prim Id buffer %s", v10, v8, v9);
    }
  }

  else
  {
    *(a1 + 680) = 1;
  }

  if (v51)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v52, v51);
  }
}

void sub_29AEE8590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  pxrInternal__aapl__pxrReserved__::HdxPickResult::~HdxPickResult(va);
  sub_29A0E9CEC(v13 - 96);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEE86F8(uint64_t a1)
{
  *a1 = 0;
  v2 = (a1 + 36);
  v3 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v3 + 1);
  *(a1 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 12));
  *(a1 + 16) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 20));
  *(a1 + 24) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 24));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 28));
  *(a1 + 32) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v2);
  *(a1 + 40) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 40));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 44));
  pxrInternal__aapl__pxrReserved__::CameraUtilFraming::CameraUtilFraming((a1 + 48));
  *(a1 + 84) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return a1;
}

void sub_29AEE8808(_Unwind_Exception *a1)
{
  sub_29A1DCEA8(v4);
  sub_29A1DCEA8(v6);
  sub_29A1DCEA8(v5);
  sub_29A1DCEA8(v3);
  sub_29A1DCEA8(v2);
  sub_29A1DCEA8(v1);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AEE8844(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 11);
  sub_29A1DE3A4(a1 + 10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 9);
  sub_29A1DE3A4(a1 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 7);
  sub_29A1DE3A4(a1 + 6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 5);
  sub_29A1DE3A4(a1 + 4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29AEE88E8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B7165E6 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A209BF00);
}

pxrInternal__aapl__pxrReserved__::HdxPresentTask *pxrInternal__aapl__pxrReserved__::HdxPresentTask::HdxPresentTask(pxrInternal__aapl__pxrReserved__::HdxPresentTask *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::HdxTask::HdxTask(this, a3);
  *v4 = &unk_2A209BF20;
  sub_29AEE9150(v4 + 24);
  pxrInternal__aapl__pxrReserved__::HgiInterop::HgiInterop((this + 72));
  return this;
}

void sub_29AEE8A0C(_Unwind_Exception *a1)
{
  sub_29A186B14(v1 + 32);
  v3 = *(v1 + 3);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdxTask::~HdxTask(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxPresentTask::~HdxPresentTask(void **this)
{
  *this = &unk_2A209BF20;
  pxrInternal__aapl__pxrReserved__::HgiInterop::~HgiInterop(this + 9);
  sub_29A186B14((this + 4));
  v2 = this[3];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdxTask::~HdxTask(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdxPresentTask::~HdxPresentTask(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxPresentTask::_Sync(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v14 = *MEMORY[0x29EDCA608];
  result = sub_29A0ECEEC(&v8, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxPresentTask::_Sync(HdSceneDelegate *, HdTaskContext *, HdDirtyBits *)");
  if ((*a4 & 4) != 0)
  {
    sub_29AEE9150(&v10);
    if (sub_29AEE8C48(a1, a2, &v10))
    {
      sub_29A166F2C((a1 + 24), &v10);
      sub_29A1854E8((a1 + 32), v11);
      *(a1 + 48) = v12;
      *(a1 + 64) = v13;
    }

    result = sub_29A186B14(v11);
    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  *a4 = 0;
  if (v8)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v9, v8);
  }

  return result;
}

void sub_29AEE8BF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEE8C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v6)
  {
    v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  (*(*a2 + 120))(&v14, a2, a1 + 8, v6 + 440);
  v7 = sub_29AEE91D0(&v14);
  if (v7)
  {
    if ((v15 & 4) != 0)
    {
      v8 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(&v14);
    }

    else
    {
      v8 = v14;
    }

    sub_29A166F2C(a3, v8);
    sub_29A1854E8((a3 + 8), (v8 + 8));
    v9 = *(v8 + 24);
    *(a3 + 40) = *(v8 + 40);
    *(a3 + 24) = v9;
  }

  else
  {
    v12[0] = "hd/task.h";
    v12[1] = "_GetTaskParams";
    v12[2] = 242;
    v12[3] = "BOOL pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskParams(HdSceneDelegate *, T *) [T = pxrInternal__aapl__pxrReserved__::HdxPresentTaskParams]";
    v13 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 8));
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v12, 1, "Task params for %s is of unexpected type", Text);
  }

  sub_29A186B14(&v14);
  return v7;
}

void sub_29AEE8DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxPresentTask::Execute(uint64_t a1, void *a2)
{
  sub_29A0ECEEC(&v27, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxPresentTask::Execute(HdTaskContext *)");
  if (*(a1 + 64) == 1)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    if (!v4)
    {
      v4 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    }

    if (pxrInternal__aapl__pxrReserved__::HdTask::_HasTaskContextData(a2, v4))
    {
      v26 = 0uLL;
      v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      if (!v5)
      {
        v5 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      }

      sub_29AEC7840(a2, v5, &v26);
      if (v26)
      {
        Descriptor = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(v26);
        v8 = Descriptor;
        if (*(Descriptor + 23) < 0)
        {
          sub_29A008D14(__p, *Descriptor, *(Descriptor + 8));
        }

        else
        {
          v9 = *Descriptor;
          v21 = *(Descriptor + 16);
          *__p = v9;
        }

        v10 = *(v8 + 40);
        v11 = *(v8 + 56);
        v12 = *(v8 + 72);
        v22 = *(v8 + 24);
        v25 = v12;
        v24 = v11;
        v23 = v10;
        if ((DWORD1(v22) - 18) < 8 || pxrInternal__aapl__pxrReserved__::HgiIsCompressed(SDWORD1(v22)))
        {
          v18[0] = "hdx/presentTask.cpp";
          v18[1] = "Execute";
          v18[2] = 93;
          v18[3] = "virtual void pxrInternal__aapl__pxrReserved__::HdxPresentTask::Execute(HdTaskContext *)";
          v19 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v18, "Aov texture format %d may not be correctly supported for presentation via HgiInterop.", v7, DWORD1(v22));
        }

        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p[0]);
        }
      }

      __p[0] = 0;
      __p[1] = 0;
      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      if (!v13)
      {
        v13 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      }

      if (pxrInternal__aapl__pxrReserved__::HdTask::_HasTaskContextData(a2, v13 + 1))
      {
        v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        if (!v14)
        {
          v14 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        }

        sub_29AEC7840(a2, v14 + 1, __p);
      }

      Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
      pxrInternal__aapl__pxrReserved__::HgiInterop::TransferToApp(a1 + 72, Hgi, &v26, __p, (a1 + 24));
    }
  }

  v16 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
  result = (*(*v16 + 224))(v16);
  if (v27)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v28, v27);
  }

  return result;
}

void sub_29AEE9008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_29A0E9CEC(v20 - 64);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEE9150(uint64_t a1)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiTokens);
  if (!v2)
  {
    v2 = sub_29AB8834C(&pxrInternal__aapl__pxrReserved__::HgiTokens);
  }

  v3 = *(v2 + 2);
  *a1 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_29AEE91D0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B716A8ALL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A209BF80);
}

double pxrInternal__aapl__pxrReserved__::HdxRenderTask::HdxRenderTask(pxrInternal__aapl__pxrReserved__::HdxRenderTask *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v3 = pxrInternal__aapl__pxrReserved__::HdxTask::HdxTask(this, a3);
  *v3 = &unk_2A209BFA0;
  result = 0.0;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 9) = 0;
  return result;
}

{
  v3 = pxrInternal__aapl__pxrReserved__::HdxTask::HdxTask(this, a3);
  *v3 = &unk_2A209BFA0;
  result = 0.0;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 9) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdxRenderTask::~HdxRenderTask(pxrInternal__aapl__pxrReserved__::HdxRenderTask *this)
{
  *this = &unk_2A209BFA0;
  v2 = *(this + 9);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v4 = (this + 40);
  sub_29A124AB0(&v4);
  v3 = *(this + 4);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdxTask::~HdxTask(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdxRenderTask::~HdxRenderTask(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxRenderTask::IsConverged(pxrInternal__aapl__pxrReserved__::HdxRenderTask *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    return (*(*v1 + 16))();
  }

  else
  {
    return 1;
  }
}

pxrInternal__aapl__pxrReserved__::HdRenderIndex **pxrInternal__aapl__pxrReserved__::HdxRenderTask::_Sync(pxrInternal__aapl__pxrReserved__::HdTask *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, uint64_t a3, int *a4)
{
  v57 = *MEMORY[0x29EDCA608];
  v54 = a2;
  v6 = *a4;
  if ((*a4 & 8) != 0)
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v8)
    {
      v8 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    (*(*a2 + 120))(&v55, a2, this + 8, v8 + 96);
    v9 = sub_29AE49138(&v55);
    pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(&v34, v9);
    if (*(&v34 + 1))
    {
      v10 = *(this + 3);
      if (v10)
      {
        pxrInternal__aapl__pxrReserved__::HdRenderPass::SetRprimCollection(v10, &v34);
LABEL_12:
        pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(&v34);
        sub_29A186B14(&v55);
        goto LABEL_13;
      }

      RenderDelegate = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(v54[1]);
      (*(*RenderDelegate + 176))(&v53);
      v13 = v53;
      v53 = 0uLL;
      v14 = *(this + 4);
      *(this + 24) = v13;
      if (!v14)
      {
        goto LABEL_12;
      }

      sub_29A014BEC(v14);
      v11 = *(&v53 + 1);
      if (!*(&v53 + 1))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v11 = *(this + 4);
      *(this + 3) = 0;
      *(this + 4) = 0;
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    sub_29A014BEC(v11);
    goto LABEL_12;
  }

LABEL_13:
  if ((v6 & 4) != 0)
  {
    sub_29AEC0310(&v34);
    v15 = v54;
    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v16)
    {
      v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    (*(*v15 + 15))(&v55, v15, this + 8, v16 + 440);
    if (sub_29AEE9810(&v55))
    {
      if ((v56 & 4) != 0)
      {
        v17 = (*((v56 & 0xFFFFFFFFFFFFFFF8) + 168))(&v55);
      }

      else
      {
        v17 = v55;
      }

      v18 = *v17;
      v19 = *(v17 + 2);
      v35 = *(v17 + 1);
      v36 = v19;
      v34 = v18;
      v20 = *(v17 + 3);
      v21 = *(v17 + 4);
      v22 = *(v17 + 5);
      v40 = *(v17 + 24);
      v38 = v21;
      v39 = v22;
      v37 = v20;
      if (&v34 != v17)
      {
        sub_29AC944C0(v41, v17[13], v17[14], 0xCCCCCCCCCCCCCCCDLL * ((v17[14] - v17[13]) >> 4));
        sub_29AC944C0(v42, v17[16], v17[17], 0xCCCCCCCCCCCCCCCDLL * ((v17[17] - v17[16]) >> 4));
      }

      v23 = *(v17 + 19);
      v43 = *(v17 + 21);
      *&v42[24] = v23;
      v24 = *(v17 + 23);
      v25 = *(v17 + 25);
      v26 = *(v17 + 27);
      *&v46[12] = *(v17 + 228);
      *v46 = v26;
      v45 = v25;
      v44 = v24;
      sub_29A2258F0(&v47, v17 + 61);
      sub_29A225948(&v48, v17 + 62);
      v28 = *(v17 + 284);
      v27 = *(v17 + 300);
      v29 = *(v17 + 268);
      *(v52 + 13) = *(v17 + 313);
      v51 = v28;
      v52[0] = v27;
      v50 = v29;
      v49 = *(v17 + 252);
      v30 = *(this + 8);
      if (!v30)
      {
        sub_29AEEA170(&v54, (this + 8), &v53);
        v31 = v53;
        v53 = 0uLL;
        v32 = *(this + 9);
        *(this + 4) = v31;
        if (v32)
        {
          sub_29A014BEC(v32);
          if (*(&v53 + 1))
          {
            sub_29A014BEC(*(&v53 + 1));
          }
        }

        v30 = *(this + 8);
      }

      pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask::SyncParams(v30, v54, &v34);
    }

    sub_29A186B14(&v55);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v48);
    sub_29A1DE3A4(&v47);
    v55 = v42;
    sub_29AC943DC(&v55);
    v55 = v41;
    sub_29AC943DC(&v55);
  }

  if ((v6 & 0x10) != 0)
  {
    pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskRenderTags(&v34, this, v54);
    sub_29A2F7B20(this + 5);
    *(this + 40) = v34;
    *(this + 7) = v35;
    *&v35 = 0;
    v34 = 0uLL;
    v55 = &v34;
    sub_29A124AB0(&v55);
  }

  result = *(this + 3);
  if (result)
  {
    result = pxrInternal__aapl__pxrReserved__::HdRenderPass::Sync(result);
  }

  *a4 = 0;
  return result;
}

void sub_29AEE97A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_29A186B14(v9 - 88);
  sub_29AEBC5BC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEE9810(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B713A85 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A209ABC8);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxRenderTask::Prepare(uint64_t a1)
{
  result = *(a1 + 64);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdxRenderTask::Execute(pxrInternal__aapl__pxrReserved__::HdxRenderTask *a1, uint64_t a2)
{
  sub_29A0ECEEC(&v14, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxRenderTask::Execute(HdTaskContext *)");
  pxrInternal__aapl__pxrReserved__::HdxRenderTask::_GetRenderPassState(a1, a2, &lpsrc);
  v4 = lpsrc;
  if (!lpsrc)
  {
    v10[0] = "hdx/renderTask.cpp";
    v10[1] = "Execute";
    v10[2] = 136;
    v10[3] = "virtual void pxrInternal__aapl__pxrReserved__::HdxRenderTask::Execute(HdTaskContext *)";
    v11 = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "renderPassState", 0) & 1) == 0)
    {
      goto LABEL_7;
    }

    v4 = lpsrc;
    if (!lpsrc)
    {
      goto LABEL_5;
    }
  }

  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  HasDrawItems = pxrInternal__aapl__pxrReserved__::HdxRenderTask::_HasDrawItems(a1);
  if (HasDrawItems)
  {
LABEL_4:
    pxrInternal__aapl__pxrReserved__::HdxRenderTask::_SetHdStRenderPassState(HasDrawItems, a2, v6);
LABEL_5:
    v8 = *(a1 + 3);
    if (v8)
    {
      (*(*a1 + 40))(a1);
      pxrInternal__aapl__pxrReserved__::HdRenderPass::Execute(v8);
    }

    goto LABEL_7;
  }

  HasDrawItems = pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetAovBindings(lpsrc);
  for (i = *HasDrawItems; i != *(HasDrawItems + 8); i += 80)
  {
    if (*(i + 32))
    {
      goto LABEL_4;
    }
  }

LABEL_7:
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v15, v14);
  }
}

void sub_29AEE9A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_29A014BEC(a16);
  }

  sub_29A0E9CEC(v16 - 48);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxRenderTask::_GetRenderPassState@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(result + 64);
  if (v4)
  {
    v6 = *(v4 + 16);
    v5 = *(v4 + 24);
    *a3 = v6;
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v8)
    {
      v8 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    return sub_29AEC7990(a2, v8 + 23, a3);
  }

  return result;
}

void sub_29AEE9B08(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxRenderTask::_HasDrawItems(pxrInternal__aapl__pxrReserved__::HdxRenderTask *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    return 1;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = (*(*this + 40))(this);

  return pxrInternal__aapl__pxrReserved__::HdSt_RenderPass::HasDrawItems(v4, v5);
}

BOOL pxrInternal__aapl__pxrReserved__::HdxRenderTask::_NeedToClearAovs(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdRenderPassState **a2)
{
  AovBindings = pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetAovBindings(*a2);
  v3 = AovBindings[1];
  if (*AovBindings == v3)
  {
    return 0;
  }

  v4 = *AovBindings + 80;
  do
  {
    v5 = *(v4 - 48);
    result = v5 != 0;
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = v4 == v3;
    }

    v4 += 80;
  }

  while (!v7);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxRenderTask::_SetHdStRenderPassState(uint64_t a1, uint64_t a2, void *a3)
{
  v39[2] = *MEMORY[0x29EDCA608];
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  if (!v5)
  {
    v5 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  }

  v29.n128_u64[0] = v5 + 56;
  v6 = sub_29AC1E77C(a2, v5 + 7, &unk_29B4D6118, &v29);
  v7 = sub_29A186EF4(v39, v6 + 3);
  if (sub_29AED0040(v7))
  {
    v8 = sub_29AEEA0DC(v39);
    pxrInternal__aapl__pxrReserved__::HdStRenderPassState::SetLightingShader(a3, v8);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  if (!v9)
  {
    v9 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  }

  v29.n128_u64[0] = v9 + 216;
  v10 = sub_29AC1E77C(a2, v9 + 27, &unk_29B4D6118, &v29);
  sub_29A186EF4(v38, v10 + 3);
  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  if (!v11)
  {
    v11 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  }

  v29.n128_u64[0] = v11 + 224;
  v12 = sub_29AC1E77C(a2, v11 + 28, &unk_29B4D6118, &v29);
  sub_29A186EF4(v37, v12 + 3);
  v13 = a3[99];
  v14 = a3[100];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v38[1] && v37[1])
  {
    v15 = sub_29AED85AC(v38);
    v17 = *v15;
    v16 = v15[1];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = sub_29AED85AC(v37);
    v20 = *v18;
    v19 = v18[1];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v21)
    {
      v21 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29.n128_u64[0] = 0xFFFFFFFF00000007;
    v22 = *(v21 + 27);
    v29.n128_u64[1] = v22;
    if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v29.n128_u64[1] &= 0xFFFFFFFFFFFFFFF8;
    }

    v30 = 0;
    v31 = 0;
    v32 = v17;
    v33 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v34 = 0;
    v35 = 0;
    v36 = 0;
    pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::AddBufferBinding(v13, &v29);
    if (v33)
    {
      sub_29A014BEC(v33);
    }

    if (v31)
    {
      sub_29A014BEC(v31);
    }

    if ((v29.n128_u8[8] & 7) != 0)
    {
      atomic_fetch_add_explicit((v29.n128_u64[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v16)
    {
      sub_29A014BEC(v16);
    }

    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v23)
    {
      v23 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29.n128_u64[0] = -4294967287;
    v24 = *(v23 + 28);
    v29.n128_u64[1] = v24;
    if ((v24 & 7) != 0)
    {
      v25 = (v24 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed) & 1) == 0)
      {
        v29.n128_u64[1] = v25;
      }
    }

    v30 = 0;
    v31 = 0;
    v32 = v20;
    v33 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v34 = 1;
    v35 = 0;
    v36 = 0;
    pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::AddBufferBinding(v13, &v29);
    if (v33)
    {
      sub_29A014BEC(v33);
    }

    if (v31)
    {
      sub_29A014BEC(v31);
    }

    if ((v29.n128_u8[8] & 7) != 0)
    {
      atomic_fetch_add_explicit((v29.n128_u64[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v19)
    {
      sub_29A014BEC(v19);
      sub_29A014BEC(v19);
    }

    if (v16)
    {
      sub_29A014BEC(v16);
    }
  }

  else
  {
    v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v26)
    {
      v26 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::RemoveBufferBinding(v13, (v26 + 216));
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v27)
    {
      v27 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::RemoveBufferBinding(v13, (v27 + 224));
  }

  if (v14)
  {
    sub_29A014BEC(v14);
  }

  sub_29A186B14(v37);
  sub_29A186B14(v38);
  return sub_29A186B14(v39);
}

void sub_29AEEA010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  if (v14)
  {
    sub_29A014BEC(v14);
    if (!v13)
    {
LABEL_3:
      if (!v12)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v13)
  {
    goto LABEL_3;
  }

  sub_29A014BEC(v13);
  if (!v12)
  {
LABEL_5:
    sub_29A186B14(va);
    sub_29A186B14(va1);
    sub_29A186B14(v15 - 88);
    _Unwind_Resume(a1);
  }

LABEL_4:
  sub_29A014BEC(v12);
  goto LABEL_5;
}

void **sub_29AEEA0DC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29AED0040(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29AEEA234, &stru_2A209B780);
  }
}

void *sub_29AEEA170@<X0>(pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a1@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0xE8uLL);
  result = sub_29AEEA1D4(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AEEA1D4(void *a1, pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A209AAD0;
  pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask::HdxRenderSetupTask((a1 + 3), *a2, a3);
  return a1;
}

void *sub_29AEEA234@<X0>(void *a1@<X8>)
{
  result = operator new(0x10uLL);
  *result = 0;
  result[1] = 0;
  *a1 = result;
  a1[1] = sub_29AEEA27C;
  a1[2] = &stru_2A209B780;
  return result;
}

void sub_29AEEA27C(void *__p)
{
  if (__p)
  {
    v2 = __p[1];
    if (v2)
    {
      sub_29A014BEC(v2);
    }

    operator delete(__p);
  }
}

pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask *pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask::HdxRenderSetupTask(pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::HdTask::HdTask(this, a3);
  *v4 = &unk_2A209C010;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  if ((atomic_load_explicit(&qword_2A174FE78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174FE78))
  {
    pxrInternal__aapl__pxrReserved__::HdxPackageRenderPassColorShader(&v6);
    sub_29ADCA944(&v6, qword_2A174FE68);
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_atexit(sub_29AED98B0, qword_2A174FE68, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174FE78);
  }

  sub_29AED98E0(this + 4);
  if ((atomic_load_explicit(&qword_2A174FE90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174FE90))
  {
    pxrInternal__aapl__pxrReserved__::HdxPackageRenderPassIdShader(&v6);
    sub_29ADCA944(&v6, qword_2A174FE80);
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_atexit(sub_29AED98B0, qword_2A174FE80, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174FE90);
  }

  sub_29AED98E0(this + 6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 16);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 17);
  pxrInternal__aapl__pxrReserved__::CameraUtilFraming::CameraUtilFraming((this + 72));
  *(this + 108) = 0;
  *(this + 112) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0;
  return this;
}

void sub_29AEEA494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A174FE90);
  v11 = *(v9 + 5);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  v12 = *(v9 + 3);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  pxrInternal__aapl__pxrReserved__::HdTask::~HdTask(v9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask::~HdxRenderSetupTask(pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask *this)
{
  *this = &unk_2A209C010;
  v2 = (this + 68);
  v6 = (this + 176);
  sub_29AC943DC(&v6);
  v6 = (this + 152);
  sub_29AC943DC(&v6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(this + 16);
  v3 = *(this + 7);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  pxrInternal__aapl__pxrReserved__::HdTask::~HdTask(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask::~HdxRenderSetupTask(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask::Sync(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  sub_29A0ECEEC(&v12, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask::Sync(HdSceneDelegate *, HdTaskContext *, HdDirtyBits *)");
  if ((*a4 & 4) == 0)
  {
    goto LABEL_4;
  }

  sub_29AEC0310(v7);
  if (sub_29AEEA764(a1, a2, v7))
  {
    pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask::SyncParams(a1, a2, v7);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v11);
    sub_29A1DE3A4(&v10);
    v14 = v9;
    sub_29AC943DC(&v14);
    v14 = v8;
    sub_29AC943DC(&v14);
LABEL_4:
    *a4 = 0;
    goto LABEL_6;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v11);
  sub_29A1DE3A4(&v10);
  v14 = v9;
  sub_29AC943DC(&v14);
  v14 = v8;
  sub_29AC943DC(&v14);
LABEL_6:
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }
}

uint64_t sub_29AEEA764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v6)
  {
    v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  (*(*a2 + 120))(&v25, a2, a1 + 8, v6 + 440);
  v7 = sub_29AEE9810(&v25);
  if (v7)
  {
    if ((v26 & 4) != 0)
    {
      v8 = (*((v26 & 0xFFFFFFFFFFFFFFF8) + 168))(&v25);
    }

    else
    {
      v8 = v25;
    }

    v9 = *v8;
    v10 = *(v8 + 32);
    *(a3 + 16) = *(v8 + 16);
    *(a3 + 32) = v10;
    *a3 = v9;
    v11 = *(v8 + 48);
    v12 = *(v8 + 64);
    v13 = *(v8 + 80);
    *(a3 + 96) = *(v8 + 96);
    *(a3 + 64) = v12;
    *(a3 + 80) = v13;
    *(a3 + 48) = v11;
    if (v8 != a3)
    {
      sub_29AC944C0(a3 + 104, *(v8 + 104), *(v8 + 112), 0xCCCCCCCCCCCCCCCDLL * ((*(v8 + 112) - *(v8 + 104)) >> 4));
      sub_29AC944C0(a3 + 128, *(v8 + 128), *(v8 + 136), 0xCCCCCCCCCCCCCCCDLL * ((*(v8 + 136) - *(v8 + 128)) >> 4));
    }

    v14 = *(v8 + 152);
    *(a3 + 168) = *(v8 + 168);
    *(a3 + 152) = v14;
    v15 = *(v8 + 184);
    v16 = *(v8 + 200);
    v17 = *(v8 + 216);
    *(a3 + 228) = *(v8 + 228);
    *(a3 + 216) = v17;
    *(a3 + 200) = v16;
    *(a3 + 184) = v15;
    sub_29A2258F0((a3 + 244), (v8 + 244));
    sub_29A225948((a3 + 248), (v8 + 248));
    *(a3 + 252) = *(v8 + 252);
    v19 = *(v8 + 284);
    v18 = *(v8 + 300);
    v20 = *(v8 + 268);
    *(a3 + 313) = *(v8 + 313);
    *(a3 + 284) = v19;
    *(a3 + 300) = v18;
    *(a3 + 268) = v20;
  }

  else
  {
    v23[0] = "hd/task.h";
    v23[1] = "_GetTaskParams";
    v23[2] = 242;
    v23[3] = "BOOL pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskParams(HdSceneDelegate *, T *) [T = pxrInternal__aapl__pxrReserved__::HdxRenderTaskParams]";
    v24 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 8));
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v23, 1, "Task params for %s is of unexpected type", Text);
  }

  sub_29A186B14(&v25);
  return v7;
}

void sub_29AEEA980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

const void *pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask::SyncParams(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 288);
  *(a1 + 136) = *(a3 + 304);
  *(a1 + 120) = v6;
  v7 = *(a3 + 252);
  v8 = *(a3 + 268);
  *(a1 + 104) = *(a3 + 284);
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  v9 = *(a3 + 324);
  *(a1 + 112) = *(a3 + 328);
  *(a1 + 108) = v9;
  sub_29A2258F0((a1 + 64), (a3 + 244));
  sub_29A225948((a1 + 68), (a3 + 248));
  if (a1 + 152 != a3 + 104)
  {
    sub_29AC944C0(a1 + 152, *(a3 + 104), *(a3 + 112), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 112) - *(a3 + 104)) >> 4));
  }

  if (a1 + 176 != a3 + 128)
  {
    sub_29AC944C0(a1 + 176, *(a3 + 128), *(a3 + 136), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 136) - *(a3 + 128)) >> 4));
  }

  v10 = *(a1 + 152);
  if (*(a1 + 160) == v10)
  {
LABEL_14:
    v15 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      if (!v13)
      {
        v13 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      }

      if ((*(v13 + 4) ^ *(v10 + v11)) < 8)
      {
        break;
      }

      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      if (!v14)
      {
        v14 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      }

      if ((*(v14 + 5) ^ *(v10 + v11)) <= 7)
      {
        break;
      }

      ++v12;
      v10 = *(a1 + 152);
      v11 += 80;
      if (v12 >= 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 160) - v10) >> 4))
      {
        goto LABEL_14;
      }
    }

    v15 = 1;
  }

  v16 = *(a3 + 53);
  *(a1 + 200) = v16;
  RenderPassState = pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask::_GetRenderPassState(a1, *(a2 + 8));
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetOverrideColor(*RenderPassState, a3);
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetWireframeColor(*RenderPassState, (a3 + 16));
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetPointColor(*RenderPassState, (a3 + 32));
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetPointSize(*RenderPassState, *(a3 + 48));
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetLightingEnabled(*RenderPassState, *(a3 + 52));
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetClippingEnabled(*RenderPassState, *(a3 + 62));
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetAlphaThreshold(*RenderPassState, *(a3 + 56));
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetCullStyle(*RenderPassState, *(a3 + 320));
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetMaskColor(*RenderPassState, (a3 + 64));
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetIndicatorColor(*RenderPassState, (a3 + 80));
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetPointSelectedSize(*RenderPassState, *(a3 + 96));
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetDepthBiasUseDefault(*RenderPassState, *(a3 + 152));
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetDepthBiasEnabled(*RenderPassState, *(a3 + 153));
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetDepthBias(*RenderPassState, *(a3 + 156), *(a3 + 160));
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetDepthFunc(*RenderPassState, *(a3 + 164));
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetEnableDepthMask(*RenderPassState, *(a3 + 168));
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetStencilEnabled(*RenderPassState, *(a3 + 196));
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetStencil(*RenderPassState, *(a3 + 172), *(a3 + 176), *(a3 + 180), *(a3 + 184), *(a3 + 188), *(a3 + 192));
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetBlendEnabled(*RenderPassState, *(a3 + 240));
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetBlend(*RenderPassState, *(a3 + 200), *(a3 + 204), *(a3 + 208), *(a3 + 212), *(a3 + 216), *(a3 + 220));
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetBlendConstantColor(*RenderPassState, (a3 + 224));
  v18 = 0;
  v19 = *RenderPassState;
  if (*(a3 + 241) == 1 && (v15 & 1) == 0 && (v16 & 1) == 0)
  {
    v18 = !sub_29AECFE78(1);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetAlphaToCoverageEnabled(v19, v18);
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetMultiSampleEnabled(*RenderPassState, *(a3 + 242) & (v15 | v16 ^ 1) & 1);
  result = *RenderPassState;
  if (*RenderPassState)
  {
    if (result)
    {
      v21 = result;
      pxrInternal__aapl__pxrReserved__::HdStRenderPassState::SetUseSceneMaterials(result, *(a3 + 60));
      pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetUseAovMultiSample(v21, *(a3 + 242) & (v15 | v16 ^ 1) & 1);
      v22 = *(a3 + 243);

      return pxrInternal__aapl__pxrReserved__::HdStRenderPassState::SetResolveAovMultiSample(v21, v22);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask::Prepare(pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a3)
{
  v24 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask::_PrepareAovBindings(a1, a2, a3);
  pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask::PrepareCamera(a1, a3);
  RenderPassState = pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask::_GetRenderPassState(a1, a3);
  RenderDelegate = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(a3);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStRenderSettingsTokens);
  if (!v8)
  {
    v8 = sub_29AE81F90(&pxrInternal__aapl__pxrReserved__::HdStRenderSettingsTokens);
  }

  v9 = sub_29AE8176C(RenderDelegate, v8 + 8, &pxrInternal__aapl__pxrReserved__::HdStVolume::defaultStepSize);
  v10 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(a3);
  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStRenderSettingsTokens);
  if (!v11)
  {
    v11 = sub_29AE81F90(&pxrInternal__aapl__pxrReserved__::HdStRenderSettingsTokens);
  }

  v12 = sub_29AE8176C(v10, v11 + 16, &pxrInternal__aapl__pxrReserved__::HdStVolume::defaultStepSizeLighting);
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetVolumeRenderingConstants(*RenderPassState, v9, v12);
  v13 = *RenderPassState;
  if (*RenderPassState)
  {
    if (v14)
    {
      v15 = v14;
      pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&v22, a3);
      pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask::_SetRenderpassShadersForStorm(a1, v15, &v22);
      if (v23)
      {
        sub_29A014BEC(v23);
      }

      v13 = *RenderPassState;
    }
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&v22, a3);
  (*(*v13 + 16))(v13, &v22);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  v23 = &off_2A209C060;
  v16 = operator new(0x18uLL);
  v17 = *(a1 + 3);
  *v16 = *(a1 + 2);
  *(v16 + 1) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  atomic_store(0, v16 + 4);
  v22 = v16;
  atomic_fetch_add_explicit(v16 + 4, 1u, memory_order_relaxed);
  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  if (!v18)
  {
    v18 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  }

  v21 = (v18 + 184);
  v19 = sub_29AC1E77C(a2, v18 + 23, &unk_29B4D6118, &v21);
  sub_29A18606C(v19 + 3, &v22);
  return sub_29A186B14(&v22);
}

void sub_29AEEAFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask::_PrepareAovBindings(pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask *this, int a2, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a3)
{
  v5 = *(this + 19);
  v6 = *(this + 20);
  v7 = (this + 152);
  if (v6 != v5)
  {
    v8 = 0;
    v9 = 8;
    do
    {
      if (!*(v5 + v9))
      {
        v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        if (!v10)
        {
          v10 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetBprim(a3, (v10 + 312), (*(this + 19) + v9 + 8));
      }

      ++v8;
      v9 += 80;
    }

    while (v8 < 0xCCCCCCCCCCCCCCCDLL * ((v6 - v5) >> 4));
  }

  RenderPassState = pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask::_GetRenderPassState(this, a3);
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetAovBindings(*RenderPassState, v7);
  v12 = *RenderPassState;

  return pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetAovInputBindings(v12, this + 22);
}

BOOL pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask::PrepareCamera(pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask *this, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v4)
  {
    v4 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  result = pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsSprimTypeSupported(a2, v4 + 9);
  if (result)
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v6)
    {
      v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetSprim(a2, (v6 + 136), (this + 64));
  }

  return result;
}

char *pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask::_GetRenderPassState(pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask *this, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a2)
{
  v2 = this + 16;
  if (!*(this + 2))
  {
    RenderDelegate = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(a2);
    (*(*RenderDelegate + 184))(&v8);
    v6 = v8;
    v8 = 0uLL;
    v7 = *(this + 3);
    *(this + 1) = v6;
    if (v7)
    {
      sub_29A014BEC(v7);
      if (*(&v8 + 1))
      {
        sub_29A014BEC(*(&v8 + 1));
      }
    }
  }

  return v2;
}

void pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask::_SetRenderpassShadersForStorm(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 200) == 1)
  {
    v4 = (a1 + 48);
LABEL_12:

    pxrInternal__aapl__pxrReserved__::HdStRenderPassState::SetRenderPassShader(a2, v4);
    return;
  }

  if (*(a1 + 152) == *(a1 + 160))
  {
    v4 = (a1 + 32);
    goto LABEL_12;
  }

  v5 = *(a3 + 8);
  v8 = *a3;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::CreateRenderPassShaderFromAovs(a2, &v8, (a1 + 152), &v6);
  pxrInternal__aapl__pxrReserved__::HdStRenderPassState::SetRenderPassShader(a2, &v6);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29AEEB340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask::Execute(uint64_t a1, uint64_t a2)
{
  v12[2] = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v9, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask::Execute(HdTaskContext *)");
  v12[1] = &off_2A209C060;
  v4 = operator new(0x18uLL);
  v5 = *(a1 + 24);
  *v4 = *(a1 + 16);
  *(v4 + 1) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  atomic_store(0, v4 + 4);
  v12[0] = v4;
  atomic_fetch_add_explicit(v4 + 4, 1u, memory_order_relaxed);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  if (!v6)
  {
    v6 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  }

  v11 = (v6 + 184);
  v7 = sub_29AC1E77C(a2, v6 + 23, &unk_29B4D6118, &v11);
  sub_29A18606C(v7 + 3, v12);
  result = sub_29A186B14(v12);
  if (v9)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v10, v9);
  }

  return result;
}

void sub_29AEEB480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AEEBDE8(void *a1, void *a2)
{
  a1[1] = &off_2A209C060;
  result = operator new(0x18uLL);
  v5 = a2[1];
  *result = *a2;
  *(result + 1) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  atomic_store(0, result + 4);
  *a1 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29AEEBE4C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AEEBE6C(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A1D2264(a1);
}

void *sub_29AEEBFD8@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = 0;
  return sub_29AEEBDE8(a2, v2);
}

pxrInternal__aapl__pxrReserved__::HdxSelectionSceneIndexObserver *pxrInternal__aapl__pxrReserved__::HdxSelectionSceneIndexObserver::HdxSelectionSceneIndexObserver(pxrInternal__aapl__pxrReserved__::HdxSelectionSceneIndexObserver *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A209C128;
  *(this + 6) = 0;
  sub_29AEEC064(this + 4);
  *(this + 8) = 0;
  *(this + 7) = 0;
  *(this + 6) = this + 56;
  return this;
}

double sub_29AEEC064@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x88uLL);
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *v2 = &unk_2A2085290;
  result = 0.0;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 3) = &unk_2A2085260;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 16) = 1065353216;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 26) = 1065353216;
  *(v2 + 15) = 0;
  *(v2 + 16) = 0;
  *(v2 + 14) = 0;
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxSelectionSceneIndexObserver::SetSceneIndex(uint64_t result, uint64_t *a2)
{
  v2 = (result + 16);
  if (*a2 != *(result + 16))
  {
    v4 = result;
    sub_29AEED3A0(v6, result);
    if (*(v4 + 16))
    {
      v5 = sub_29AC1199C(v2);
      pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::RemoveObserver(v5, v6);
    }

    *v2 = *a2;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
  }

  return result;
}

void sub_29AEEC278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_29AEEC2C8(uint64_t *a1, _DWORD *a2, uint64_t *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  sub_29AEEC65C(a1, a2, a3);
  v5 = sub_29AC1199C(a1);
  (*(*v5 + 24))(&v14);
  v9 = v14;
  v10 = v15;
  if (v14 != v15)
  {
    v13[0] = a1;
    v13[1] = a3;
    LODWORD(v17[0]) = 0;
    v17[16] = 65539;
    v18 = 55;
    tbb::task_group_context::init(v17, v6, v7, v8);
    if (v9 < v10)
    {
      v16 = v17;
      v11 = tbb::internal::allocate_root_with_context_proxy::allocate(&v16, 0x38uLL);
      *(v11 - 11) = 1;
      *v11 = &unk_2A209C180;
      *(v11 + 8) = v10;
      *(v11 + 16) = v9;
      *(v11 + 24) = 1;
      *(v11 + 32) = v13;
      initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v11);
      *(v11 + 48) = 0;
      *(v11 + 52) = 5;
      *(v11 + 40) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
      (*(**(v11 - 40) + 16))(*(v11 - 40), v11, v11 - 8);
    }

    tbb::task_group_context::~task_group_context(v17);
  }

  v17[0] = &v14;
  sub_29A1E234C(v17);
}

void sub_29AEEC450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  v20 = v19;
  tbb::internal::allocate_root_with_context_proxy::free(&a15, v20);
  tbb::task_group_context::~task_group_context(&a17);
  a10 = &a12;
  sub_29A1E234C(&a10);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxSelectionSceneIndexObserver::GetSelection(std::__shared_weak_count **this@<X0>, void *a2@<X8>)
{
  if (this[8])
  {
    pxrInternal__aapl__pxrReserved__::HdxSelectionSceneIndexObserver::_ComputeSelection(this, &v7);
    v4 = v7;
    v7 = 0uLL;
    v5 = this[5];
    *(this + 2) = v4;
    if (v5)
    {
      sub_29A014BEC(v5);
      if (*(&v7 + 1))
      {
        sub_29A014BEC(*(&v7 + 1));
      }
    }
  }

  v6 = this[5];
  *a2 = this[4];
  a2[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }
}

void pxrInternal__aapl__pxrReserved__::HdxSelectionSceneIndexObserver::_ComputeSelection(pxrInternal__aapl__pxrReserved__::HdxSelectionSceneIndexObserver *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29AEEC064(a2);
  if (*(this + 2))
  {
    pxrInternal__aapl__pxrReserved__::HdSelection::GetAllSelectedPrimPaths(*(this + 4), v9);
    v4 = this + 56;
    if (v9[0] != v9[1])
    {
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
    }

    v5 = *(this + 6);
    if (v5 != v4)
    {
      do
      {
        sub_29AEEC65C(this + 2, v5 + 7, a2);
        v6 = *(v5 + 1);
        if (v6)
        {
          do
          {
            v7 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v7 = *(v5 + 2);
            v8 = *v7 == v5;
            v5 = v7;
          }

          while (!v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
    }

    sub_29A1E2AEC(this + 48, *(this + 7));
    *(this + 7) = 0;
    *(this + 8) = 0;
    *(this + 6) = v4;
    v10 = v9;
    sub_29A1E234C(&v10);
  }
}

void sub_29AEEC628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AEEC65C(uint64_t *a1, _DWORD *a2, uint64_t *a3)
{
  v4 = sub_29AC1199C(a1);
  (*(*v4 + 16))(&v38);
  pxrInternal__aapl__pxrReserved__::HdSelectionsSchema::GetFromParent(&v38 + 1, &v25);
  if (v39)
  {
    sub_29A014BEC(v39);
  }

  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (pxrInternal__aapl__pxrReserved__::HdVectorSchema::IsDefined(&v25))
  {
    NumElements = pxrInternal__aapl__pxrReserved__::HdVectorSchema::GetNumElements(&v25);
    if (NumElements)
    {
      v6 = 0;
      do
      {
        v22 = v6;
        sub_29AC0DDFC(&v25, &v23);
        pxrInternal__aapl__pxrReserved__::HdSelectionSchema::GetFullySelected(&v23, &v32);
        if (v32 && ((*(*v32 + 32))(v32, 0.0) & 1) != 0)
        {
          pxrInternal__aapl__pxrReserved__::HdSelectionSchema::GetNestedInstanceIndices(&v23, &v30);
          v7 = pxrInternal__aapl__pxrReserved__::HdVectorSchema::GetNumElements(&v30);
          v8 = *a3;
          if (v7)
          {
            v19 = *a3;
            v29 = 0;
            if (pxrInternal__aapl__pxrReserved__::HdVectorSchema::GetNumElements(&v30))
            {
              LODWORD(v38) = 0;
              sub_29A9096F4(v27, &v38, 1);
              sub_29AC0DDFC(&v30, &v37);
              pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchema::GetInstancer(&v37, &v34);
              if (v34)
              {
                (*(*v34 + 32))(v49, 0.0);
                pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchema::GetPrototypeIndex(&v37, &v47);
                if (v47)
                {
                  (*(*v47 + 32))(v47, 0.0);
                  v9 = sub_29AC1199C(a1);
                  (*(*v9 + 16))(&v38);
                  pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetFromParent(&v38 + 1, &v45);
                  if (v39)
                  {
                    sub_29A014BEC(v39);
                  }

                  if ((v38 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetInstanceIndices(&v45, &v43);
                  sub_29AC3721C(&v43, &v41);
                  if (v41)
                  {
                    (*(*v41 + 32))(&v38, 0.0);
                    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
                  }

                  if (v42)
                  {
                    sub_29A014BEC(v42);
                  }

                  if (v44)
                  {
                    sub_29A014BEC(v44);
                  }

                  if (v46)
                  {
                    sub_29A014BEC(v46);
                  }
                }

                if (v48)
                {
                  sub_29A014BEC(v48);
                }

                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v49 + 1);
                sub_29A1DE3A4(v49);
              }

              if (v35)
              {
                sub_29A014BEC(v35);
              }

              pxrInternal__aapl__pxrReserved__::HdInstanceIndicesSchema::GetInstanceIndices(&v37, &v34);
              if (v34)
              {
                (*(*v34 + 32))(&v38, 0.0);
              }

              else
              {
                v40 = 0;
                v38 = 0u;
                v39 = 0u;
              }

              if (v35)
              {
                sub_29A014BEC(v35);
              }

              v10 = v38;
              sub_29A19D6E4(&v34, *&v27[0] * v38);
              v11 = *&v27[0];
              if (*&v27[0])
              {
                v12 = 0;
                v13 = 0;
                do
                {
                  if (v10)
                  {
                    v14 = 0;
                    v15 = v12;
                    v16 = v10;
                    do
                    {
                      v17 = *(v28 + 4 * v13);
                      v18 = *(v40 + v14);
                      sub_29A19DBEC(&v34);
                      *(v36 + v15) = v18 + v17;
                      v15 += 4;
                      v14 += 4;
                      --v16;
                    }

                    while (v16);
                    v11 = *&v27[0];
                  }

                  ++v13;
                  v12 += 4 * v10;
                }

                while (v13 < v11);
              }

              pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
            }

            v28 = 0;
            memset(v27, 0, sizeof(v27));
            pxrInternal__aapl__pxrReserved__::HdSelection::AddInstance(v19, &v29, a2, v27);
            pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
          }

          LODWORD(v38) = 0;
          pxrInternal__aapl__pxrReserved__::HdSelection::AddRprim(v8, &v38, a2);
          if (v31)
          {
            sub_29A014BEC(v31);
          }
        }

        if (v33)
        {
          sub_29A014BEC(v33);
        }

        if (v24)
        {
          sub_29A014BEC(v24);
        }

        v6 = v22 + 1;
      }

      while (v22 + 1 != NumElements);
    }
  }

  if (v26)
  {
    sub_29A014BEC(v26);
  }
}

void sub_29AEECB4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (a20)
  {
    sub_29A014BEC(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxSelectionSceneIndexObserver::PrimsAdded(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 256))
  {
    ++*(result + 24);
    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::HdxSelectionSceneIndexObserver::PrimsDirtied(_BOOL8 result, uint64_t a2, uint64_t *a3)
{
  if (*(a3 + 1857) >= 0x11u)
  {
    v3 = *a3;
  }

  else
  {
    v3 = a3;
  }

  v4 = *(a3 + 1856);
  if (v4)
  {
    v5 = result;
    v6 = 464 * v4;
    do
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdSelectionsSchema::GetDefaultLocator(result);
      result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Contains((v3 + 1), DefaultLocator);
      if (result)
      {
        ++*(v5 + 24);
        std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
      }

      v3 += 58;
      v6 -= 464;
    }

    while (v6);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxSelectionSceneIndexObserver::PrimsRemoved(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 128))
  {
    ++*(result + 24);
  }

  return result;
}

void sub_29AEECE18(uint64_t a1)
{
  *a1 = &unk_2A209C128;
  sub_29A1E2AEC(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AEECE88(uint64_t a1)
{
  *a1 = &unk_2A209C128;
  sub_29A1E2AEC(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

uint64_t sub_29AEECF04(tbb::internal::allocate_continuation_proxy *this)
{
  v29 = *MEMORY[0x29EDCA608];
  if (!*(this + 5))
  {
    *(this + 5) = 1;
    if (*(this - 11) < 0)
    {
      v2 = *(this - 4);
      if (*(v2 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v2 + 8) = 1;
        v3 = *(this + 52);
        if (v3 <= 1)
        {
          LOBYTE(v3) = 1;
        }

        *(this + 52) = v3 + 1;
      }
    }
  }

  v4 = (this + 8);
  v5 = *(this + 3);
  v6 = (*(this + 1) - *(this + 2)) >> 3;
  if (v5 < v6)
  {
    v7 = *(this + 5);
    if (v7 > 1)
    {
      goto LABEL_12;
    }

    if (v7 && *(this + 52))
    {
      --*(this + 52);
      *(this + 5) = 0;
LABEL_12:
      while (1)
      {
        v8 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
        *(v8 - 11) = 1;
        *v8 = &unk_2A204C520;
        __dmb(0xBu);
        v8[8] = 0;
        *(this - 4) = v8;
        *(v8 - 3) = 2;
        v9 = tbb::internal::allocate_child_proxy::allocate(v8, 0x38uLL);
        *(v9 - 11) = 1;
        *v9 = &unk_2A209C180;
        v10 = *(this + 1);
        *(v9 + 8) = v10;
        v11 = *(this + 2) + 8 * ((((v10 - *(this + 2)) >> 3) + ((v10 - *(this + 2)) >> 63)) >> 1);
        *(this + 1) = v11;
        *(v9 + 16) = v11;
        *(v9 + 24) = *(this + 3);
        *(v9 + 32) = *(this + 4);
        v12 = *(this + 5) >> 1;
        *(this + 5) = v12;
        *(v9 + 40) = v12;
        *(v9 + 48) = 2;
        *(v9 + 52) = *(this + 52);
        (***(v9 - 40))();
        v5 = *(this + 3);
        v6 = (*(this + 1) - *(this + 2)) >> 3;
        if (v5 >= v6)
        {
          break;
        }

        v13 = *(this + 5);
        if (v13 <= 1)
        {
          if (!v13 || !*(this + 52))
          {
            break;
          }

          --*(this + 52);
          *(this + 5) = 0;
        }
      }
    }
  }

  if (v5 < v6 && *(this + 52))
  {
    *v26 = 0x10000;
    v27 = *v4;
    v28 = *(this + 3);
    while (1)
    {
      sub_29A4C1E3C(v26, *(this + 52));
      v14 = *(*(this - 4) + 8);
      __dmb(0xBu);
      if (v14)
      {
        v15 = *(this + 52) + 1;
        *(this + 52) = v15;
        v16 = v26[2];
        if (v26[2] >= 2u)
        {
          v17 = v26[1];
          v18 = v26[v26[1] + 3];
          v19 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
          *(v19 - 11) = 1;
          *v19 = &unk_2A204C520;
          __dmb(0xBu);
          v19[8] = 0;
          *(this - 4) = v19;
          *(v19 - 3) = 2;
          v20 = tbb::internal::allocate_child_proxy::allocate(v19, 0x38uLL);
          v21 = &v27 + 24 * v17;
          *(v20 - 11) = 1;
          *v20 = &unk_2A209C180;
          v22 = *v21;
          *(v20 + 24) = *(v21 + 2);
          *(v20 + 8) = v22;
          *(v20 + 32) = *(this + 4);
          v23 = *(this + 5) >> 1;
          *(this + 5) = v23;
          *(v20 + 40) = v23;
          *(v20 + 48) = 2;
          *(v20 + 52) = *(this + 52) - v18;
          (***(v20 - 40))();
          v16 = --v26[2];
          v26[1] = (v26[1] + 1) & 7;
          goto LABEL_25;
        }

        v24 = v26[0];
        if (v26[v26[0] + 3] < v15 && *(&v27 + 3 * v26[0] + 2) < ((*(&v27 + 3 * v26[0]) - *(&v27 + 3 * v26[0] + 1)) >> 3))
        {
          goto LABEL_25;
        }
      }

      else
      {
        v24 = v26[0];
      }

      sub_29AEED350(this, &v27 + 3 * v24);
      v16 = --v26[2];
      v26[0] = (v26[0] - 1) & 7;
LABEL_25:
      if (!v16 || tbb::task_group_context::is_group_execution_cancelled(*(this - 7)))
      {
        return 0;
      }
    }
  }

  sub_29AEED350(this, this + 1);
  return 0;
}

void sub_29AEED350(uint64_t a1, void *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2 != *a2)
  {
    do
    {
      sub_29AEEC2C8(**(a1 + 32), v2, *(*(a1 + 32) + 8));
      v2 += 2;
    }

    while (v2 != v3);
  }
}

void *sub_29AEED3A0(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  if (a2)
  {
    sub_29A0ECFD4((a2 + 8), &v5);
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

void sub_29AEED3FC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28FFF4(v3);
  }

  _Unwind_Resume(exception_object);
}

double pxrInternal__aapl__pxrReserved__::HdxSelectionTask::HdxSelectionTask(pxrInternal__aapl__pxrReserved__::HdxSelectionTask *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v3 = pxrInternal__aapl__pxrReserved__::HdTask::HdTask(this, a3);
  *v3 = &unk_2A209C1C8;
  *(v3 + 4) = -1;
  *(v3 + 20) = 0;
  *(v3 + 12) = 0;
  *(v3 + 7) = 1056964608;
  result = 0.0;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 12) = 0;
  return result;
}

{
  v3 = pxrInternal__aapl__pxrReserved__::HdTask::HdTask(this, a3);
  *v3 = &unk_2A209C1C8;
  *(v3 + 4) = -1;
  *(v3 + 20) = 0;
  *(v3 + 12) = 0;
  *(v3 + 7) = 1056964608;
  result = 0.0;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 12) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdxSelectionTask::~HdxSelectionTask(pxrInternal__aapl__pxrReserved__::HdxSelectionTask *this)
{
  *this = &unk_2A209C1C8;
  v2 = *(this + 11);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdTask::~HdTask(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdxSelectionTask::~HdxSelectionTask(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxSelectionTask::Sync(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ((*a4 & 4) != 0)
  {
    v5 = result;
    result = sub_29AEED5A8(result, a2, result + 24);
    *(v5 + 16) = -1;
  }

  *a4 = 0;
  return result;
}

uint64_t sub_29AEED5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v6)
  {
    v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  (*(*a2 + 120))(&v15, a2, a1 + 8, v6 + 440);
  v7 = sub_29AEEE4A0(&v15);
  if (v7)
  {
    if ((v16 & 4) != 0)
    {
      v8 = (*((v16 & 0xFFFFFFFFFFFFFFF8) + 168))(&v15);
    }

    else
    {
      v8 = v15;
    }

    v9 = *v8;
    v10 = *(v8 + 16);
    *(a3 + 32) = *(v8 + 32);
    *a3 = v9;
    *(a3 + 16) = v10;
  }

  else
  {
    v13[0] = "hd/task.h";
    v13[1] = "_GetTaskParams";
    v13[2] = 242;
    v13[3] = "BOOL pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskParams(HdSceneDelegate *, T *) [T = pxrInternal__aapl__pxrReserved__::HdxSelectionTaskParams]";
    v14 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 8));
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 1, "Task params for %s is of unexpected type", Text);
  }

  sub_29A186B14(&v15);
  return v7;
}

void sub_29AEED6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxSelectionTask::Prepare(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a3)
{
  v87[1] = *MEMORY[0x29EDCA608];
  v74 = 0;
  v75 = 0;
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  if (!v6)
  {
    v6 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  }

  if (sub_29AEC8B64(a2, v6 + 26, &v74))
  {
    (*(*v74 + 16))(v74, a3);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&v83, a3);
  if (v83)
  {
    if (v7)
    {
      v8 = *(&v83 + 1);
      if (*(&v83 + 1))
      {
        atomic_fetch_add_explicit((*(&v83 + 1) + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  if (*(&v83 + 1))
  {
    sub_29A014BEC(*(&v83 + 1));
  }

  if (v7)
  {
    if (v74 && pxrInternal__aapl__pxrReserved__::HdxSelectionTracker::GetVersion(v74) != *(a1 + 16))
    {
      Version = pxrInternal__aapl__pxrReserved__::HdxSelectionTracker::GetVersion(v74);
      v10 = *(a1 + 64);
      *(a1 + 16) = Version;
      if (!v10)
      {
        v83 = 0uLL;
        *&v84 = 0;
        v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
        if (!v11)
        {
          v11 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
        }

        LODWORD(v72[0]) = 5;
        *(&v72[0] + 1) = 1;
        v12 = *(&v83 + 1);
        if (*(&v83 + 1) >= v84)
        {
          v15 = sub_29AD9CC10(&v83, v11 + 4, v72);
        }

        else
        {
          v13 = *&v72[0];
          v14 = *(v11 + 4);
          **(&v83 + 1) = v14;
          if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v12 &= 0xFFFFFFFFFFFFFFF8;
          }

          v12[1] = v13;
          v12[2] = 1;
          v15 = (v12 + 3);
        }

        *(&v83 + 1) = v15;
        v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
        if (!v16)
        {
          v16 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateSingleBufferArrayRange(v7, v16 + 200, &v83, 8u, v72);
        v17 = v72[0];
        v72[0] = 0uLL;
        v18 = *(a1 + 72);
        *(a1 + 64) = v17;
        if (v18)
        {
          sub_29A014BEC(v18);
          if (*(&v72[0] + 1))
          {
            sub_29A014BEC(*(&v72[0] + 1));
          }
        }

        *&v72[0] = &v83;
        sub_29ABC6FA0(v72);
      }

      (*(*v74 + 32))(v72);
      v19 = *&v72[0];
      if (!*(a1 + 80) || *&v72[0] > *(a1 + 96))
      {
        if (*&v72[0] <= 5uLL)
        {
          v19 = 5;
        }

        *(a1 + 96) = v19;
        v83 = 0uLL;
        *&v84 = 0;
        v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
        if (!v20)
        {
          v20 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
        }

        LODWORD(v70) = 16;
        *(&v70 + 1) = 1;
        v21 = *(&v83 + 1);
        if (*(&v83 + 1) >= v84)
        {
          v24 = sub_29AD9CC10(&v83, v20 + 29, &v70);
        }

        else
        {
          v22 = v70;
          v23 = *(v20 + 29);
          **(&v83 + 1) = v23;
          if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v21 &= 0xFFFFFFFFFFFFFFF8;
          }

          v21[1] = v22;
          v21[2] = 1;
          v24 = (v21 + 3);
        }

        *(&v83 + 1) = v24;
        v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
        if (!v25)
        {
          v25 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
        }

        LODWORD(v70) = 16;
        *(&v70 + 1) = 1;
        v26 = *(&v83 + 1);
        if (*(&v83 + 1) >= v84)
        {
          v29 = sub_29AD9CC10(&v83, v25 + 30, &v70);
        }

        else
        {
          v27 = v70;
          v28 = *(v25 + 30);
          **(&v83 + 1) = v28;
          if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v26 &= 0xFFFFFFFFFFFFFFF8;
          }

          v26[1] = v27;
          v26[2] = 1;
          v29 = (v26 + 3);
        }

        *(&v83 + 1) = v29;
        v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
        if (!v30)
        {
          v30 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
        }

        LODWORD(v70) = 13;
        *(&v70 + 1) = 1;
        v31 = *(&v83 + 1);
        if (*(&v83 + 1) >= v84)
        {
          v34 = sub_29AD9CC10(&v83, v30 + 8, &v70);
        }

        else
        {
          v32 = v70;
          v33 = *(v30 + 8);
          **(&v83 + 1) = v33;
          if ((v33 & 7) != 0 && (atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v31 &= 0xFFFFFFFFFFFFFFF8;
          }

          v31[1] = v32;
          v31[2] = 1;
          v34 = (v31 + 3);
        }

        *(&v83 + 1) = v34;
        v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
        if (!v35)
        {
          v35 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
        }

        LODWORD(v70) = 16;
        v36 = *(a1 + 96);
        *(&v70 + 1) = v36;
        v37 = *(&v83 + 1);
        if (*(&v83 + 1) >= v84)
        {
          v40 = sub_29AD9CC10(&v83, v35 + 31, &v70);
        }

        else
        {
          v38 = v70;
          v39 = *(v35 + 31);
          **(&v83 + 1) = v39;
          if ((v39 & 7) != 0 && (atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v37 &= 0xFFFFFFFFFFFFFFF8;
          }

          v37[1] = v38;
          v37[2] = v36;
          v40 = (v37 + 3);
        }

        *(&v83 + 1) = v40;
        v41 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
        if (!v41)
        {
          v41 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateUniformBufferArrayRange(v7, v41 + 200, &v83, 4u, &v70);
        v42 = v70;
        v70 = 0uLL;
        v43 = *(a1 + 88);
        *(a1 + 80) = v42;
        if (v43)
        {
          sub_29A014BEC(v43);
          if (*(&v70 + 1))
          {
            sub_29A014BEC(*(&v70 + 1));
          }
        }

        *&v70 = &v83;
        sub_29ABC6FA0(&v70);
      }

      v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      if (!v44)
      {
        v44 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      }

      v82 = (&off_2A2042A68 + 2);
      v45 = operator new(0x14uLL);
      *v45 = *(a1 + 32);
      atomic_store(0, v45 + 4);
      v81 = v45;
      atomic_fetch_add_explicit(v45 + 4, 1u, memory_order_relaxed);
      sub_29AD9CD3C((v44 + 232), &v81, &v69);
      v83 = v69;
      v69 = 0uLL;
      v46 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      if (!v46)
      {
        v46 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      }

      v80[1] = &off_2A2042A68 + 2;
      v47 = operator new(0x14uLL);
      *v47 = *(a1 + 48);
      atomic_store(0, v47 + 4);
      v80[0] = v47;
      atomic_fetch_add_explicit(v47 + 4, 1u, memory_order_relaxed);
      sub_29AD9CD3C((v46 + 240), v80, &v68);
      v84 = v68;
      v68 = 0uLL;
      v48 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      if (!v48)
      {
        v48 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      }

      v79 = &unk_2A2044C63;
      v78 = *(a1 + 28);
      sub_29AD9CD3C((v48 + 64), &v78, &v67);
      v85 = v67;
      v67 = 0uLL;
      v49 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      if (!v49)
      {
        v49 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      }

      v77[1] = &off_2A20435E8;
      v50 = operator new(0x30uLL);
      v51 = v72[1];
      *v50 = v72[0];
      *(v50 + 1) = v51;
      v52 = v73;
      *(v50 + 4) = v73;
      if (v52)
      {
        v53 = (v52 - 16);
        if (*(v50 + 3))
        {
          v53 = *(v50 + 3);
        }

        atomic_fetch_add_explicit(v53, 1uLL, memory_order_relaxed);
      }

      atomic_store(0, v50 + 10);
      v77[0] = v50;
      atomic_fetch_add_explicit(v50 + 10, 1u, memory_order_relaxed);
      v65 = *&v72[0];
      sub_29AE8B1F8((v49 + 248), v77, &v65, &v66);
      v86 = v66;
      v66 = 0uLL;
      v71 = 0;
      v70 = 0uLL;
      sub_29AD9CF88(&v70, &v83, v87, 4uLL);
      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v7, (a1 + 80), &v70);
      v76 = &v70;
      sub_29A0176E4(&v76);
      v54 = 56;
      while (1)
      {
        v55 = *(&v83 + v54);
        if (v55)
        {
          sub_29A014BEC(v55);
        }

        v54 -= 16;
        if (v54 == -8)
        {
          if (*(&v66 + 1))
          {
            sub_29A014BEC(*(&v66 + 1));
          }

          sub_29A186B14(v77);
          if (*(&v67 + 1))
          {
            sub_29A014BEC(*(&v67 + 1));
          }

          sub_29A186B14(&v78);
          if (*(&v68 + 1))
          {
            sub_29A014BEC(*(&v68 + 1));
          }

          sub_29A186B14(v80);
          if (*(&v69 + 1))
          {
            sub_29A014BEC(*(&v69 + 1));
          }

          sub_29A186B14(&v81);
          *&v85 = 0;
          v83 = 0u;
          v84 = 0u;
          *(a1 + 20) = (*(*v74 + 24))(v74, a3, *(a1 + 24), *(a1 + 25), &v83);
          v56 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
          if (!v56)
          {
            v56 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
          }

          v82 = &off_2A2043D18;
          v57 = operator new(0x30uLL);
          v58 = v84;
          *v57 = v83;
          *(v57 + 1) = v58;
          v59 = v85;
          *(v57 + 4) = v85;
          if (v59)
          {
            v60 = (v59 - 16);
            if (*(v57 + 3))
            {
              v60 = *(v57 + 3);
            }

            atomic_fetch_add_explicit(v60, 1uLL, memory_order_relaxed);
          }

          atomic_store(0, v57 + 10);
          v81 = v57;
          atomic_fetch_add_explicit(v57 + 10, 1u, memory_order_relaxed);
          sub_29AD9CD3C((v56 + 32), &v81, &v69);
          v70 = v69;
          v69 = 0uLL;
          pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(v7, (a1 + 64), &v70);
          if (*(&v70 + 1))
          {
            sub_29A014BEC(*(&v70 + 1));
          }

          if (*(&v69 + 1))
          {
            sub_29A014BEC(*(&v69 + 1));
          }

          sub_29A186B14(&v81);
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
        }
      }
    }

    v61 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v61)
    {
      v61 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    *&v83 = v61 + 216;
    v62 = sub_29AC1E77C(a2, v61 + 27, &unk_29B4D6118, &v83);
    sub_29AEDAE10(v62 + 3, (a1 + 64));
    v63 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v63)
    {
      v63 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    *&v83 = v63 + 224;
    v64 = sub_29AC1E77C(a2, v63 + 28, &unk_29B4D6118, &v83);
    sub_29AEDAE10(v64 + 3, (a1 + 80));
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }

  if (v75)
  {
    sub_29A014BEC(v75);
  }
}

void sub_29AEEE0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31)
{
  a25 = (v32 - 176);
  sub_29ABC6FA0(&a25);
  if (v31)
  {
    sub_29A014BEC(v31);
  }

  if (a31)
  {
    sub_29A014BEC(a31);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxSelectionTask::Execute()
{
  result = sub_29A0ECEEC(&v1, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxSelectionTask::Execute(HdTaskContext *)");
  if (v1)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v2, v1);
  }

  return result;
}

uint64_t sub_29AEEE4A0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B715BF8 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A209C218);
}

pxrInternal__aapl__pxrReserved__::HdxSelectionTracker *pxrInternal__aapl__pxrReserved__::HdxSelectionTracker::HdxSelectionTracker(pxrInternal__aapl__pxrReserved__::HdxSelectionTracker *this)
{
  *this = &unk_2A209C238;
  v2 = operator new(0x78uLL);
  sub_29AEF00A8(v2);
  *(this + 1) = v2;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdxSelectionTracker::~HdxSelectionTracker(pxrInternal__aapl__pxrReserved__::HdxSelectionTracker *this)
{
  *this = &unk_2A209C238;
  v3 = *(this + 1);
  v1 = (this + 8);
  v2 = v3;
  *v1 = 0;
  if (v3)
  {
    sub_29AEF00FC(v1, v2);
  }
}

{
  *this = &unk_2A209C238;
  v3 = *(this + 1);
  v1 = (this + 8);
  v2 = v3;
  *v1 = 0;
  if (v3)
  {
    sub_29AEF00FC(v1, v2);
  }
}

{
  *this = &unk_2A209C238;
  v4 = *(this + 1);
  v2 = (this + 8);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_29AEF00FC(v2, v3);
  }

  operator delete(this);
}

void sub_29AEEE6D4(uint64_t a1, uint64_t *a2)
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

  ++*(a1 + 112);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxSelectionTracker::GetSelectionOffsetBuffer(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a2, char a3, int a4, uint64_t a5)
{
  sub_29A0ECEEC(&v18, "Hdx", "GetSelectionOffsetBuffer");
  LODWORD(v16) = 0;
  __p = &v16;
  sub_29A19D7EC(a5, 8uLL, &__p);
  sub_29A19DBEC(a5);
  **(a5 + 32) = 2;
  if ((a3 & 1) != 0 || a4)
  {
    sub_29AEEEA68(*(a1 + 8), a2);
  }

  v16 = 0;
  v17 = 0;
  v10 = 0;
  v11 = 1;
  do
  {
    v12 = v11;
    sub_29A19DBEC(a5);
    v11 = 0;
    *(*(a5 + 32) + 4 * v10 + 4) = 0;
    v10 = 1;
  }

  while ((v12 & 1) != 0);
  sub_29A008E78(&__p, "nothing selected");
  sub_29AEEEB78(&__p, a5);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  if (v17)
  {
    sub_29A014BEC(v17);
  }

  if (v18)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v19, v18);
  }

  return 0;
}

void sub_29AEEE9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19, char a20)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    sub_29A014BEC(a19);
  }

  sub_29A0E9CEC(&a20);
  _Unwind_Resume(a1);
}

void sub_29AEEEB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AEEEB78(uint64_t a1, unint64_t *a2)
{
  result = sub_29AECFE78(3);
  if (result)
  {
    sub_29A008864(v26);
    v5 = *(a1 + 23);
    if (v5 >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    if (v5 >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = *(a1 + 8);
    }

    v8 = sub_29A00911C(v27, v6, v7);
    sub_29A00911C(v8, ": [ ", 4);
    if (*a2)
    {
      v9 = a2[4];
      v10 = 4 * *a2;
      do
      {
        LOBYTE(__p[0]) = 32;
        v11 = sub_29A92C39C(v27, __p);
        *(v11 + *(*v11 - 24) + 24) = 3;
        v12 = MEMORY[0x29C2C1ED0]();
        sub_29A00911C(v12, " ", 1);
        v9 += 4;
        v10 -= 4;
      }

      while (v10);
    }

    v13 = sub_29A00911C(v27, "] (offsets)", 11);
    sub_29A02C5EC(v13);
    v14 = *(a1 + 23);
    if (v14 >= 0)
    {
      v15 = a1;
    }

    else
    {
      v15 = *a1;
    }

    if (v14 >= 0)
    {
      v16 = *(a1 + 23);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    v17 = sub_29A00911C(v27, v15, v16);
    sub_29A00911C(v17, ": [ ", 4);
    if (*a2)
    {
      v18 = 0;
      do
      {
        LOBYTE(__p[0]) = 32;
        v19 = sub_29A92C39C(v27, __p);
        *(v19 + *(*v19 - 24) + 24) = 3;
        v20 = MEMORY[0x29C2C1F00]();
        sub_29A00911C(v20, " ", 1);
        ++v18;
      }

      while (v18 < *a2);
    }

    v21 = sub_29A00911C(v27, "] (indices)", 11);
    sub_29A02C5EC(v21);
    sub_29A02C5EC(v27);
    std::stringbuf::str();
    if ((v25 & 0x80u) == 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    if ((v25 & 0x80u) == 0)
    {
      v23 = v25;
    }

    else
    {
      v23 = __p[1];
    }

    sub_29A00911C(MEMORY[0x29EDC93C8], v22, v23);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    return sub_29A008B0C(v26);
  }

  return result;
}

void sub_29AEEEDA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_29A008B0C(&a15);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxSelectionTracker::_GetSelectionOffsets(uint64_t a1, unint64_t *a2, unsigned int a3, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a4, uint64_t a5, uint64_t *a6)
{
  v104 = *MEMORY[0x29EDCA608];
  v94 = a3;
  pxrInternal__aapl__pxrReserved__::HdSelection::GetSelectedPrimPaths(*a2, &v94, &v92);
  if (!*a2 || (v10 = v93 - v92, v93 == v92))
  {
    if (sub_29AECFE78(3))
    {
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("No selected prims for mode %d\n", v19, v20, v94);
    }

    v21 = 0;
  }

  else
  {
    v11 = v10 >> 3;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    sub_29A0A171C(&v89, v10 >> 3);
    v95 = &v89;
    v96 = a4;
    v97 = 1000;
    v98 = &v92;
    v16 = v11 / 0x3E8 + 1;
    if (pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(v12))
    {
      LODWORD(__p) = 0;
      v102 = 65539;
      v103 = 55;
      tbb::task_group_context::init(&__p, v13, v14, v15);
      p_p = &__p;
      v17 = tbb::internal::allocate_root_with_context_proxy::allocate(&p_p, 0x38uLL);
      *(v17 - 11) = 1;
      *v17 = &unk_2A209C280;
      *(v17 + 8) = v16;
      *(v17 + 16) = xmmword_29B430070;
      *(v17 + 32) = &v95;
      initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v17);
      *(v17 + 48) = 0;
      *(v17 + 52) = 5;
      *(v17 + 40) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
      (*(**(v17 - 40) + 16))(*(v17 - 40), v17, v17 - 8);
      tbb::task_group_context::~task_group_context(&__p);
    }

    else
    {
      v22 = *(v95 + 1);
      if ((v22 - *v95) >> 2 >= 1000 * v16)
      {
        v23 = 1000 * v16;
      }

      else
      {
        v23 = (v22 - *v95) >> 2;
      }

      if (v23)
      {
        v24 = 0;
        for (i = 0; i != v23; ++i)
        {
          Rprim = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRprim(v96, (*v98 + v24));
          if (Rprim)
          {
            v27 = *(Rprim + 24);
          }

          else
          {
            v27 = -1;
          }

          *(*v95 + 4 * i) = v27;
          v24 += 8;
        }
      }
    }

    v28 = v89;
    if (v89 == v90)
    {
      goto LABEL_29;
    }

    v29 = 0x80000000;
    v30 = 0x7FFFFFFF;
    v31 = v89;
    do
    {
      v33 = *v31++;
      v32 = v33;
      if (v30 >= v33)
      {
        v34 = v32;
      }

      else
      {
        v34 = v30;
      }

      if (v32 <= v29)
      {
        v35 = v29;
      }

      else
      {
        v35 = v32;
      }

      if (v32 != -1)
      {
        v29 = v35;
        v30 = v34;
      }
    }

    while (v31 != v90);
    if (v29 < v30)
    {
LABEL_29:
      v21 = 0;
      if (v89)
      {
LABEL_30:
        v90 = v28;
        operator delete(v28);
      }
    }

    else
    {
      sub_29A008E78(&__p, "ids");
      sub_29AEEF7D8(&__p, &v89);
      if (v101 < 0)
      {
        operator delete(__p);
      }

      v37 = a6[1];
      LODWORD(__p) = 0;
      sub_29AEEFA44(a6, v37, v29 - v30 + 3, &__p);
      v38 = *a6;
      *v38 = v30;
      v38[1] = v29 + 1;
      sub_29A008E78(&__p, "prims");
      sub_29AEEF7D8(&__p, a6);
      v81 = a2;
      v79 = a4;
      if (v101 < 0)
      {
        operator delete(__p);
      }

      v39 = v89;
      if (v90 != v89)
      {
        v40 = 0;
        v80 = a5;
        do
        {
          v41 = *(v39 + 4 * v40);
          if (v41 != -1)
          {
            v42 = v92;
            v43 = (v92 + 8 * v40);
            if (sub_29AECFE78(3))
            {
              Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v42 + 8 * v40));
              pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Processing: %d - %s\n", v45, v46, v41, Text);
            }

            PrimSelectionState = pxrInternal__aapl__pxrReserved__::HdSelection::GetPrimSelectionState(*v81, &v94, (v42 + 8 * v40));
            v48 = PrimSelectionState;
            if (PrimSelectionState)
            {
              v82 = v41;
              v50 = *a6;
              v49 = a6[1];
              if (sub_29AEEFDAC(3, PrimSelectionState + 10, 0, a6))
              {
                v51 = v49 - v50;
                v52 = sub_29AEEFEB0((v48 + 10));
                v53 = v48[10];
                v54 = v48[11];
                if (v53 != v54)
                {
                  v55 = 0;
                  v56 = v48[13];
                  do
                  {
                    if (*v53)
                    {
                      v57 = (2 * *(v56 + 4 * v55)) | 1;
                      v58 = v53[4];
                      v59 = *a6 + v51 + 12;
                      v60 = 4 * *v53;
                      do
                      {
                        v61 = *v58++;
                        *(v59 + 4 * (v61 - v52)) = v57;
                        v60 -= 4;
                      }

                      while (v60);
                    }

                    ++v55;
                    v53 += 5;
                  }

                  while (v53 != v54);
                }

                sub_29A008E78(&__p, "points");
                sub_29AEEF7D8(&__p, a6);
                if (v101 < 0)
                {
                  operator delete(__p);
                }

                v62 = (v51 >> 2) + a5;
              }

              else
              {
                LODWORD(v62) = 0;
              }

              v64 = *a6;
              v63 = a6[1];
              if (sub_29AEEFDAC(2, v48 + 7, v62, a6))
              {
                sub_29A008E78(&__p, "edges");
                sub_29AEEF7D8(&__p, a6);
                if (v101 < 0)
                {
                  operator delete(__p);
                }

                v62 = ((v63 - v64) >> 2) + a5;
              }

              v65 = *a6;
              v66 = a6[1];
              v67 = v48[4];
              v68 = v48[5];
              v84 = 0;
              v85 = 0;
              v83 = 0;
              sub_29ACD76BC(&v83, v67, v68, 0xCCCCCCCCCCCCCCCDLL * ((v68 - v67) >> 3));
              if (v83 == v84)
              {
                p_p = v83;
                v87 = v84;
                v88 = v85;
                v84 = 0;
                v85 = 0;
                v83 = 0;
              }

              else
              {
                p_p = 0;
                v87 = 0;
                v88 = 0;
                v69 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRprim(v79, v43);
                if (v69)
                {
                  if (v70)
                  {
                    v71 = v70;
                    (*(*v70 + 72))(&__p);
                    v72 = __p;
                    if (v100)
                    {
                      sub_29A014BEC(v100);
                    }

                    if (v72)
                    {
                      (*(*v71 + 72))(&v95, v71);
                      pxrInternal__aapl__pxrReserved__::HdMeshEdgeIndexTable::HdMeshEdgeIndexTable(&__p, v95);
                      if (v96)
                      {
                        sub_29A014BEC(v96);
                      }

                      for (j = v83; j != v84; j += 5)
                      {
                        if (*j)
                        {
                          pxrInternal__aapl__pxrReserved__::HdMeshEdgeIndexTable::CollectFaceEdgeIndices(&__p, j, &v95);
                          sub_29AEEFF10(&p_p, &v95);
                          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
                        }
                      }

                      pxrInternal__aapl__pxrReserved__::HdMeshEdgeIndexTable::~HdMeshEdgeIndexTable(&__p);
                    }
                  }
                }
              }

              v74 = sub_29AEEFDAC(1, &p_p, v62, a6);
              __p = &p_p;
              sub_29A8440C8(&__p);
              __p = &v83;
              sub_29A8440C8(&__p);
              if (v74)
              {
                sub_29A008E78(&__p, "elementEdges");
                sub_29AEEF7D8(&__p, a6);
                if (v101 < 0)
                {
                  operator delete(__p);
                }

                v62 = ((v66 - v65) >> 2) + v80;
              }

              v76 = *a6;
              v75 = a6[1];
              a5 = v80;
              if (sub_29AEEFDAC(0, v48 + 4, v62, a6))
              {
                sub_29A008E78(&__p, "elements");
                sub_29AEEF7D8(&__p, a6);
                if (v101 < 0)
                {
                  operator delete(__p);
                }

                v62 = ((v75 - v76) >> 2) + v80;
              }

              v78 = *a6;
              v77 = a6[1];
              if (sub_29AEEFDAC(4, v48 + 1, v62, a6))
              {
                sub_29A008E78(&__p, "instances");
                sub_29AEEF7D8(&__p, a6);
                if (v101 < 0)
                {
                  operator delete(__p);
                }

                v62 = ((v77 - v78) >> 2) + v80;
              }

              *(*a6 + 4 * (v82 - v30) + 8) = *v48 | (2 * v62);
            }
          }

          ++v40;
          v39 = v89;
        }

        while (v40 < v90 - v89);
      }

      sub_29A008E78(&__p, "final output");
      sub_29AEEF7D8(&__p, a6);
      if (v101 < 0)
      {
        operator delete(__p);
      }

      v21 = 1;
      v28 = v89;
      if (v89)
      {
        goto LABEL_30;
      }
    }
  }

  __p = &v92;
  sub_29A1E234C(&__p);
  return v21;
}

void sub_29AEEF5B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  a28 = &a24;
  sub_29A1E234C(&a28);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEEF7D8(uint64_t a1, uint64_t *a2)
{
  result = sub_29AECFE78(3);
  if (result)
  {
    sub_29A008864(v26);
    v5 = *(a1 + 23);
    if (v5 >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    if (v5 >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = *(a1 + 8);
    }

    v8 = sub_29A00911C(v27, v6, v7);
    sub_29A00911C(v8, ": [ ", 4);
    v9 = *a2;
    v10 = a2[1];
    if (*a2 != v10)
    {
      do
      {
        LOBYTE(__p[0]) = 32;
        v11 = sub_29A92C39C(v27, __p);
        *(v11 + *(*v11 - 24) + 24) = 3;
        v12 = MEMORY[0x29C2C1ED0]();
        sub_29A00911C(v12, " ", 1);
        v9 += 4;
      }

      while (v9 != v10);
    }

    v13 = sub_29A00911C(v27, "] (offsets)", 11);
    sub_29A02C5EC(v13);
    v14 = *(a1 + 23);
    if (v14 >= 0)
    {
      v15 = a1;
    }

    else
    {
      v15 = *a1;
    }

    if (v14 >= 0)
    {
      v16 = *(a1 + 23);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    v17 = sub_29A00911C(v27, v15, v16);
    sub_29A00911C(v17, ": [ ", 4);
    if (a2[1] != *a2)
    {
      v18 = 0;
      do
      {
        LOBYTE(__p[0]) = 32;
        v19 = sub_29A92C39C(v27, __p);
        *(v19 + *(*v19 - 24) + 24) = 3;
        v20 = MEMORY[0x29C2C1F00]();
        sub_29A00911C(v20, " ", 1);
        ++v18;
      }

      while (v18 < (a2[1] - *a2) >> 2);
    }

    v21 = sub_29A00911C(v27, "] (indices)", 11);
    sub_29A02C5EC(v21);
    sub_29A02C5EC(v27);
    std::stringbuf::str();
    if ((v25 & 0x80u) == 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    if ((v25 & 0x80u) == 0)
    {
      v23 = v25;
    }

    else
    {
      v23 = __p[1];
    }

    sub_29A00911C(MEMORY[0x29EDC93C8], v22, v23);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    return sub_29A008B0C(v26);
  }

  return result;
}

void sub_29AEEFA04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_29A008B0C(&a15);
  _Unwind_Resume(a1);
}

char *sub_29AEEFA44(void *a1, char *__src, unint64_t a3, char *a4)
{
  if (!a3)
  {
    return __src;
  }

  v5 = a4;
  v8 = a1[1];
  v9 = a1[2];
  if (a3 <= (v9 - v8) >> 2)
  {
    v17 = v8 - __src;
    v18 = a1[1];
    v19 = a3;
    if (a3 <= (v8 - __src) >> 2)
    {
      goto LABEL_21;
    }

    v20 = 0;
    v19 = v17 >> 2;
    v18 = &v8[4 * (a3 - (v17 >> 2))];
    v21 = *a4;
    v22 = (4 * a3 - v17 - 4) >> 2;
    v23 = (v22 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v24 = vdupq_n_s64(v22);
    v25 = v8 + 8;
    do
    {
      v26 = vdupq_n_s64(v20);
      v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_29B430070)));
      if (vuzp1_s16(v27, *v24.i8).u8[0])
      {
        *(v25 - 2) = v21;
      }

      if (vuzp1_s16(v27, *&v24).i8[2])
      {
        *(v25 - 1) = v21;
      }

      if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_29B433E10)))).i32[1])
      {
        *v25 = v21;
        v25[1] = v21;
      }

      v20 += 4;
      v25 += 4;
    }

    while (v23 != v20);
    a1[1] = v18;
    if (v8 != __src)
    {
LABEL_21:
      v28 = &__src[4 * a3];
      v29 = &v18[-4 * a3];
      v30 = v18;
      if (v29 < v8)
      {
        v30 = v18;
        do
        {
          v31 = *v29;
          v29 += 4;
          *v30 = v31;
          v30 += 4;
        }

        while (v29 < v8);
      }

      a1[1] = v30;
      if (v18 != v28)
      {
        memmove(&__src[4 * a3], __src, v18 - v28);
      }

      if (__src <= v5)
      {
        if (a1[1] <= v5)
        {
          v32 = 0;
        }

        else
        {
          v32 = a3;
        }

        v5 += 4 * v32;
      }

      v33 = 0;
      v34 = *v5;
      v35 = vdupq_n_s64(v19 - 1);
      v36 = __src + 8;
      do
      {
        v37 = vdupq_n_s64(v33);
        v38 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_29B430070)));
        if (vuzp1_s16(v38, *v35.i8).u8[0])
        {
          *(v36 - 2) = v34;
        }

        if (vuzp1_s16(v38, *&v35).i8[2])
        {
          *(v36 - 1) = v34;
        }

        if (vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_29B433E10)))).i32[1])
        {
          *v36 = v34;
          v36[1] = v34;
        }

        v33 += 4;
        v36 += 4;
      }

      while (((v19 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v33);
    }

    return __src;
  }

  v10 = *a1;
  v11 = a3 + (&v8[-*a1] >> 2);
  if (v11 >> 62)
  {
    sub_29A00C9A4();
  }

  v12 = __src - v10;
  v13 = v9 - v10;
  if (v13 >> 1 > v11)
  {
    v11 = v13 >> 1;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v14 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  v15 = v12 >> 2;
  if (v14)
  {
    v16 = sub_29A00E7A8(a1, v14);
  }

  else
  {
    v16 = 0;
  }

  v40 = 0;
  v39 = &v16[4 * v15];
  v41 = *v5;
  v42 = (a3 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
  v43 = vdupq_n_s64(v42);
  v44 = v42 - ((a3 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
  v45 = v39 + 8;
  do
  {
    v46 = vdupq_n_s64(v40);
    v47 = vmovn_s64(vcgeq_u64(v43, vorrq_s8(v46, xmmword_29B430070)));
    if (vuzp1_s16(v47, *v43.i8).u8[0])
    {
      *(v45 - 2) = v41;
    }

    if (vuzp1_s16(v47, *&v43).i8[2])
    {
      *(v45 - 1) = v41;
    }

    if (vuzp1_s16(*&v43, vmovn_s64(vcgeq_u64(v43, vorrq_s8(v46, xmmword_29B433E10)))).i32[1])
    {
      *v45 = v41;
      v45[1] = v41;
    }

    v40 += 4;
    v45 += 4;
  }

  while (v44 != v40);
  v48 = &v16[4 * v14];
  memcpy(&v39[4 * a3], __src, a1[1] - __src);
  v49 = *a1;
  v50 = &v39[4 * a3 + a1[1] - __src];
  a1[1] = __src;
  v51 = (__src - v49);
  v52 = &v39[-(__src - v49)];
  memcpy(v52, v49, v51);
  v53 = *a1;
  *a1 = v52;
  a1[1] = v50;
  a1[2] = v48;
  if (v53)
  {
    operator delete(v53);
  }

  return v39;
}

BOOL sub_29AEEFDAC(int a1, void *a2, int a3, void *a4)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v10 = sub_29AEEFEB0(a2);
    v11 = v10;
    v12 = HIDWORD(v10);
    v13 = a4[1];
    v14 = &v13[-*a4];
    v22 = 2 * a3;
    sub_29AEEFA44(a4, v13, HIDWORD(v10) - v10 + 4, &v22);
    v15 = &v14[*a4];
    *v15 = a1;
    *(v15 + 1) = v11;
    *(v15 + 2) = v12 + 1;
    v16 = *a2;
    v17 = a2[1];
    if (*a2 != v17)
    {
      v18 = v15 + 12;
      do
      {
        if (*v16)
        {
          v19 = v16[4];
          v20 = 4 * *v16;
          do
          {
            if ((*v19 & 0x80000000) == 0)
            {
              v18[*v19 - v11] |= 1u;
            }

            ++v19;
            v20 -= 4;
          }

          while (v20);
        }

        v16 += 5;
      }

      while (v16 != v17);
    }
  }

  return v4 != v5;
}

unint64_t sub_29AEEFEB0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 == v2)
  {
    return 0x800000007FFFFFFFLL;
  }

  v3 = 0x80000000;
  v4 = 0x7FFFFFFF;
  do
  {
    if (*v1)
    {
      v5 = v1[4];
      v6 = 4 * *v1;
      do
      {
        v8 = *v5++;
        v7 = v8;
        if (v8 < v4)
        {
          v4 = v7;
        }

        if (v3 <= v7)
        {
          v3 = v7;
        }

        else
        {
          v3 = v3;
        }

        v6 -= 4;
      }

      while (v6);
    }

    v1 += 5;
  }

  while (v1 != v2);
  return v4 | (v3 << 32);
}

uint64_t sub_29AEEFF10(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29AEEFF6C(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(v3 + 32) = *(a2 + 32);
    *(a2 + 32) = 0;
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29AEEFF6C(uint64_t *a1, uint64_t a2)
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

  v19 = a1;
  if (v6)
  {
    v7 = sub_29A10E224(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[40 * v2];
  v16 = v7;
  v17 = v8;
  *(&v18 + 1) = &v7[40 * v6];
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 1) = v9;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(v8 + 4) = *(a2 + 32);
  *(a2 + 32) = 0;
  *&v18 = v8 + 40;
  v10 = a1[1];
  v11 = &v8[*a1 - v10];
  sub_29ACD6D8C(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29ACD6F00(&v16);
  return v15;
}

void sub_29AEF0094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ACD6F00(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEF00A8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  pxrInternal__aapl__pxrReserved__::HdxSelectionSceneIndexObserver::HdxSelectionSceneIndexObserver((a1 + 24));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  return a1;
}

void sub_29AEF00E4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AEF00FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 104);
    if (v3)
    {
      sub_29A014BEC(v3);
    }

    *(a2 + 24) = &unk_2A209C128;
    sub_29A1E2AEC(a2 + 72, *(a2 + 80));
    v4 = *(a2 + 64);
    if (v4)
    {
      sub_29A014BEC(v4);
    }

    sub_29ABD4DDC();
  }
}

uint64_t sub_29AEF01A0(tbb::internal::allocate_continuation_proxy *this)
{
  v31 = *MEMORY[0x29EDCA608];
  if (!*(this + 5))
  {
    *(this + 5) = 1;
    if (*(this - 11) < 0)
    {
      v2 = *(this - 4);
      if (*(v2 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v2 + 8) = 1;
        v3 = *(this + 52);
        if (v3 <= 1)
        {
          LOBYTE(v3) = 1;
        }

        *(this + 52) = v3 + 1;
      }
    }
  }

  v4 = (this + 8);
  v5 = *(this + 3);
  v6 = *(this + 1) - *(this + 2);
  if (v5 < v6)
  {
    v7 = *(this + 5);
    if (v7 > 1)
    {
      goto LABEL_12;
    }

    if (v7 && *(this + 52))
    {
      --*(this + 52);
      *(this + 5) = 0;
LABEL_12:
      while (1)
      {
        v8 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
        *(v8 - 11) = 1;
        *v8 = &unk_2A204C520;
        __dmb(0xBu);
        v8[8] = 0;
        *(this - 4) = v8;
        *(v8 - 3) = 2;
        v9 = tbb::internal::allocate_child_proxy::allocate(v8, 0x38uLL);
        *(v9 - 11) = 1;
        v10 = *(this + 1);
        v11 = *(this + 2);
        *v9 = &unk_2A209C280;
        *(v9 + 8) = v10;
        v12 = v11 + ((v10 - v11) >> 1);
        *(this + 1) = v12;
        *(v9 + 16) = v12;
        *(v9 + 24) = *(this + 24);
        v13 = *(this + 5) >> 1;
        *(this + 5) = v13;
        *(v9 + 40) = v13;
        *(v9 + 48) = 2;
        *(v9 + 52) = *(this + 52);
        (***(v9 - 40))();
        v5 = *(this + 3);
        v6 = *(this + 1) - *(this + 2);
        if (v5 >= v6)
        {
          break;
        }

        v14 = *(this + 5);
        if (v14 <= 1)
        {
          if (!v14 || !*(this + 52))
          {
            break;
          }

          --*(this + 52);
          *(this + 5) = 0;
        }
      }
    }
  }

  if (v5 < v6 && *(this + 52))
  {
    *v28 = 0x10000;
    v29 = *v4;
    v30 = *(this + 3);
    while (1)
    {
      sub_29A3B10B4(v28, *(this + 52));
      v15 = *(*(this - 4) + 8);
      __dmb(0xBu);
      if (v15)
      {
        v16 = *(this + 52) + 1;
        *(this + 52) = v16;
        v17 = v28[2];
        if (v28[2] >= 2u)
        {
          v18 = v28[1];
          v19 = v28[v28[1] + 3];
          v20 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
          *(v20 - 11) = 1;
          *v20 = &unk_2A204C520;
          __dmb(0xBu);
          v20[8] = 0;
          *(this - 4) = v20;
          *(v20 - 3) = 2;
          v21 = tbb::internal::allocate_child_proxy::allocate(v20, 0x38uLL);
          v22 = &v29 + 24 * v18;
          *(v21 - 11) = 1;
          *v21 = &unk_2A209C280;
          v23 = *v22;
          *(v21 + 24) = *(v22 + 2);
          *(v21 + 8) = v23;
          v24 = *(this + 4);
          v25 = *(this + 5) >> 1;
          *(this + 5) = v25;
          *(v21 + 32) = v24;
          *(v21 + 40) = v25;
          *(v21 + 48) = 2;
          *(v21 + 52) = *(this + 52) - v19;
          (***(v21 - 40))();
          v17 = --v28[2];
          v28[1] = (v28[1] + 1) & 7;
          goto LABEL_25;
        }

        v26 = v28[0];
        if (v28[v28[0] + 3] < v16 && *(&v29 + 3 * v28[0] + 2) < *(&v29 + 3 * v28[0]) - *(&v29 + 3 * v28[0] + 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        v26 = v28[0];
      }

      sub_29AEF05C0(this, &v29 + 3 * v26);
      v17 = --v28[2];
      v28[0] = (v28[0] - 1) & 7;
LABEL_25:
      if (!v17 || tbb::task_group_context::is_group_execution_cancelled(*(this - 7)))
      {
        return 0;
      }
    }
  }

  sub_29AEF05C0(this, this + 1);
  return 0;
}

uint64_t sub_29AEF05C0(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  v3 = a2[1];
  if ((*(*v2 + 8) - **v2) >> 2 >= (1000 * *a2))
  {
    v4 = 1000 * *a2;
  }

  else
  {
    v4 = (*(*v2 + 8) - **v2) >> 2;
  }

  v5 = 1000 * v3;
  if (1000 * v3 < v4)
  {
    v6 = 8000 * v3;
    do
    {
      result = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRprim(*(v2 + 8), (**(v2 + 24) + v6));
      if (result)
      {
        v7 = *(result + 24);
      }

      else
      {
        v7 = -1;
      }

      *(**v2 + 4 * v5++) = v7;
      v6 += 8;
    }

    while (v4 != v5);
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::HdxShadowTask::HdxShadowTask(pxrInternal__aapl__pxrReserved__::HdxShadowTask *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v3 = pxrInternal__aapl__pxrReserved__::HdTask::HdTask(this, a3);
  *v3 = &unk_2A209C2C8;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 48) = 256;
  *(v3 + 25) = 0;
  *(v3 + 104) = 0;
  *(v3 + 108) = 0x3F80000000000000;
  *&result = 0x400000003;
  *(v3 + 116) = 0x400000003;
  *(v3 + 17) = 0;
  *(v3 + 18) = 0;
  *(v3 + 16) = 0;
  return result;
}

{
  v3 = pxrInternal__aapl__pxrReserved__::HdTask::HdTask(this, a3);
  *v3 = &unk_2A209C2C8;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 48) = 256;
  *(v3 + 25) = 0;
  *(v3 + 104) = 0;
  *(v3 + 108) = 0x3F80000000000000;
  *&result = 0x400000003;
  *(v3 + 116) = 0x400000003;
  *(v3 + 17) = 0;
  *(v3 + 18) = 0;
  *(v3 + 16) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdxShadowTask::~HdxShadowTask(pxrInternal__aapl__pxrReserved__::HdxShadowTask *this)
{
  *this = &unk_2A209C2C8;
  v2 = (this + 16);
  v3 = (this + 128);
  sub_29A124AB0(&v3);
  v3 = (this + 40);
  sub_29A0176E4(&v3);
  v3 = v2;
  sub_29A0176E4(&v3);
  pxrInternal__aapl__pxrReserved__::HdTask::~HdTask(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdxShadowTask::~HdxShadowTask(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdxShadowTask::Sync(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, uint64_t a3, int *a4)
{
  v84 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v71, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxShadowTask::Sync(HdSceneDelegate *, HdTaskContext *, HdDirtyBits *)");
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::GlfDebugGroup(&v70, "virtual void pxrInternal__aapl__pxrReserved__::HdxShadowTask::Sync(HdSceneDelegate *, HdTaskContext *, HdDirtyBits *)");
  v7 = *(a2 + 1);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v8)
  {
    v8 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if (!pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsSprimTypeSupported(v7, v8 + 35))
  {
    *a4 = 0;
    goto LABEL_76;
  }

  v69 = 0;
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  if (!v9)
  {
    v9 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  }

  if (sub_29AECFEDC(a3, v9 + 6, &v69))
  {
    v10 = *a4;
    LOBYTE(v11) = *a4;
    if ((*a4 & 4) == 0)
    {
LABEL_10:
      if ((v11 & 0x10) != 0)
      {
        pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskRenderTags(&i, a1, a2);
        sub_29A2F7B20((a1 + 128));
        *(a1 + 128) = i;
        *(a1 + 144) = v75;
        v75 = 0;
        i = 0uLL;
        *&v73 = &i;
        sub_29A124AB0(&v73);
      }

      v12 = sub_29AE99CDC(&v69);
      Lights = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetLights(v12);
      v66 = 0;
      v67 = 0;
      v68 = 0;
      sub_29AEF278C(&v66, *Lights, Lights[1], 0xFAFAFAFAFAFAFAFBLL * ((Lights[1] - *Lights) >> 3));
      v14 = sub_29AE99CDC(&v69);
      v65 = *pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetShadows(v14);
      sub_29B293C98(&v65);
      v15 = sub_29AB80170(&v65);
      NumShadowMapPasses = pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetNumShadowMapPasses(v15);
      v17 = NumShadowMapPasses;
      if (NumShadowMapPasses)
      {
        v59 = NumShadowMapPasses;
        if ((atomic_load_explicit(&qword_2A174FEA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174FEA8))
        {
          v54 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
          if (!v54)
          {
            v54 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
          }

          v55 = *v54;
          qword_2A174FE98[0] = v55;
          if ((v55 & 7) != 0 && (atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            qword_2A174FE98[0] &= 0xFFFFFFFFFFFFFFF8;
          }

          v56 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
          if (!v56)
          {
            v56 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
          }

          v57 = *(v56 + 1);
          qword_2A174FEA0 = v57;
          if ((v57 & 7) != 0 && (atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            qword_2A174FEA0 &= 0xFFFFFFFFFFFFFFF8;
          }

          __cxa_atexit(sub_29AEF2A80, 0, &dword_299FE7000);
          __cxa_guard_release(&qword_2A174FEA8);
          v17 = v59;
        }

        sub_29ABC6184(a1 + 16, 2 * v17);
        v20 = v66;
        if (v67 != v66)
        {
          v21 = 0;
          do
          {
            if (pxrInternal__aapl__pxrReserved__::GlfSimpleLight::HasShadow((v20 + 408 * v21)))
            {
              v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
              if (!v22)
              {
                v22 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
              }

              ID = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetID((v66 + 408 * v21));
              pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetSprim(v7, (v22 + 280), ID);
            }

            ++v21;
            v20 = v66;
          }

          while (v21 < 0xFAFAFAFAFAFAFAFBLL * ((v67 - v66) >> 3));
        }

        v24 = (a1 + 40);
        v25 = *(a1 + 40);
        v26 = *(a1 + 24) - *(a1 + 16);
        if (*(a1 + 48) - *(a1 + 40) > v26)
        {
          sub_29ABC6184(a1 + 40, v26 >> 4);
          v25 = *v24;
        }

        if ((v10 & 4) != 0)
        {
          for (i = v25; i != *(&i + 1); sub_29AEF19A0(&i))
          {
            v29 = sub_29AEF1920(&i, v18, v19);
            pxrInternal__aapl__pxrReserved__::HdxShadowTask::_UpdateDirtyParams(v29, v29, (a1 + 64));
          }

          v28 = *(a1 + 40);
          v27 = *(a1 + 48);
        }

        else
        {
          v27 = *(&v25 + 1);
          v28 = v25;
        }

        v30 = v27 - v28;
        if (v30 < *(a1 + 24) - *(a1 + 16))
        {
          v31 = v30 >> 4;
          do
          {
            pxrInternal__aapl__pxrReserved__::HdxPackageRenderPassShadowShader(&v73);
            sub_29AEDB3CC(&v73, &i);
            if ((v73 & 7) != 0)
            {
              atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            sub_29AEF28D8(&v73);
            pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetDepthFunc(v73, *(a1 + 116));
            pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetDepthBiasUseDefault(v73, (*(a1 + 104) & 1) == 0);
            pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetDepthBiasEnabled(v73, *(a1 + 104));
            pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetDepthBias(v73, *(a1 + 108), *(a1 + 112));
            pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetEnableDepthClamp(v73, 1);
            v62.f64[0] = 0.00781187415;
            pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetDepthRange(v73, &v62);
            pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetLightingEnabled(v73, 0);
            v32 = pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetAlphaThreshold(v73, 1.0);
            pxrInternal__aapl__pxrReserved__::HdxShadowTask::_UpdateDirtyParams(v32, &v73, (a1 + 64));
            sub_29A01729C((a1 + 40), &v73);
            if (*(&v73 + 1))
            {
              sub_29A014BEC(*(&v73 + 1));
            }

            if (*(&i + 1))
            {
              sub_29A014BEC(*(&i + 1));
            }

            ++v31;
          }

          while (v31 < (*(a1 + 24) - *(a1 + 16)) >> 4);
        }

        v81 = 0;
        v82 = 0;
        v83 = 0;
        v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
        if (!v33)
        {
          v33 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
        }

        *&v62.f64[0] = v33 + 56;
        v34 = sub_29AC1E77C(a3, v33 + 7, &unk_29B4D6118, &v62);
        v35 = sub_29A186EF4(&v79, v34 + 3);
        if (sub_29AED0040(v35))
        {
          v36 = (v80 & 4) != 0 ? (*((v80 & 0xFFFFFFFFFFFFFFF8) + 168))(&v79) : v79;
          if (*v36)
          {
            if (v37)
            {
              v38 = *(v36 + 8);
              if (v38)
              {
                atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (&v81 != v37 + 24)
              {
                sub_29AC944C0(&v81, v37[24], v37[25], 0xCCCCCCCCCCCCCCCDLL * ((v37[25] - v37[24]) >> 4));
              }

              if (v38)
              {
                sub_29A014BEC(v38);
              }
            }
          }
        }

        v39 = *(a1 + 16);
        if (*(a1 + 24) != v39)
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          do
          {
            if (*(v39 + v40) || (*&i = "hdx/shadowTask.cpp", *(&i + 1) = "Sync", v75 = 236, v76 = "virtual void pxrInternal__aapl__pxrReserved__::HdxShadowTask::Sync(HdSceneDelegate *, HdTaskContext *, HdDirtyBits *)", v77 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&i, "_passes[passId]", 0) & 1) != 0))
            {
              v43 = sub_29AB80170(&v65);
              v44 = v42 % v59;
              ShadowMapSize = pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetShadowMapSize(v43, v42 % v59);
              v46 = *(*v24 + v40);
              v47 = sub_29AB80170(&v65);
              pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetViewMatrix(v47, v42 % v59, &i);
              v48 = sub_29AB80170(&v65);
              pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetProjectionMatrix(v48, v42 % v59, &v73);
              v62 = 0uLL;
              v63 = ShadowMapSize;
              v64 = SHIDWORD(ShadowMapSize);
              __p[0] = 0;
              __p[1] = 0;
              v61 = 0;
              pxrInternal__aapl__pxrReserved__::HdStRenderPassState::SetCameraFramingState(v46, &i, &v73, &v62, __p);
              if (__p[0])
              {
                __p[1] = __p[0];
                operator delete(__p[0]);
              }

              v49 = v81;
              if (v44 < 0xCCCCCCCCCCCCCCCDLL * ((v82 - v81) >> 4))
              {
                if (v42 == v44)
                {
                  v50 = *(v81 + v41);
                  *&i = v50;
                  if ((v50 & 7) != 0 && (atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                  {
                    *&i = i & 0xFFFFFFFFFFFFFFF8;
                  }

                  v51 = v49 + v41;
                  *(&i + 1) = *(v49 + v41 + 8);
                  sub_29A1E21F4(&v75, (v49 + v41 + 16));
                  sub_29A1E2240(&v75 + 1, (v51 + 20));
                  sub_29A186EF4(&v76, (v51 + 24));
                  sub_29AC86758(v78, v51 + 40);
                }

                v52 = (v81 + 80 * v44);
                v53 = *v52;
                *&i = v53;
                if ((v53 & 7) != 0 && (atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                {
                  *&i = i & 0xFFFFFFFFFFFFFFF8;
                }

                *(&i + 1) = v52[1];
                sub_29A1E21F4(&v75, v52 + 4);
                sub_29A1E2240(&v75 + 1, v52 + 5);
                sub_29A186EF4(&v76, v52 + 3);
                sub_29AC86758(v78, (v52 + 5));
              }

              pxrInternal__aapl__pxrReserved__::HdRenderPass::Sync(*(*(a1 + 16) + v40));
            }

            ++v42;
            v39 = *(a1 + 16);
            v41 += 80;
            v40 += 16;
          }

          while (v42 < (*(a1 + 24) - v39) >> 4);
        }

        sub_29A186B14(&v79);
        *&i = &v81;
        sub_29AC943DC(&i);
      }

      *a4 = 0;
      sub_29AB81EB0(&v65);
      *&i = &v66;
      sub_29AB81EE0(&i);
      goto LABEL_75;
    }

    if (sub_29AEF1720(a1, a2, (a1 + 64)))
    {
      v11 = *a4;
      goto LABEL_10;
    }
  }

LABEL_75:
  sub_29AE9C770(&v69);
LABEL_76:
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::~GlfDebugGroup(&v70);
  if (v71)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v72, v71);
  }
}

void sub_29AEF1470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *a36, int a37, __int16 a38, char a39, char a40, char a41, uint64_t a42, uint64_t a43, __int16 *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v63 = *(v61 + 3736);
  if ((v63 & 7) != 0)
  {
    atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A174FEA8);
  sub_29AB81EB0(&a30);
  a44 = &a31;
  sub_29AB81EE0(&a44);
  sub_29AE9C770(&a36);
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::~GlfDebugGroup(&a40);
  sub_29A0E9CEC(&a41);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEF1720(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v6)
  {
    v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  (*(*a2 + 120))(&v16, a2, a1 + 8, v6 + 440);
  v7 = sub_29AEF2700(&v16);
  if (v7)
  {
    if ((v17 & 4) != 0)
    {
      v8 = (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(&v16);
    }

    else
    {
      v8 = v16;
    }

    v9 = *v8;
    v10 = v8[1];
    v11 = v8[2];
    *(a3 + 44) = *(v8 + 44);
    a3[1] = v10;
    a3[2] = v11;
    *a3 = v9;
  }

  else
  {
    v14[0] = "hd/task.h";
    v14[1] = "_GetTaskParams";
    v14[2] = 242;
    v14[3] = "BOOL pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskParams(HdSceneDelegate *, T *) [T = pxrInternal__aapl__pxrReserved__::HdxShadowTaskParams]";
    v15 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 8));
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v14, 1, "Task params for %s is of unexpected type", Text);
  }

  sub_29A186B14(&v16);
  return v7;
}

void sub_29AEF1878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxShadowTask::_UpdateDirtyParams(uint64_t a1, uint64_t *a2, __n128 *a3)
{
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetOverrideColor(*a2, a3);
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetWireframeColor(*a2, a3 + 1);
  v5 = *a2;
  v6 = pxrInternal__aapl__pxrReserved__::HdInvertCullStyle(a3[3].n128_u32[2]);
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetCullStyle(v5, v6);
  result = *a2;
  if (*a2)
  {
    v8 = a3[2].n128_i8[1];

    return pxrInternal__aapl__pxrReserved__::HdStRenderPassState::SetUseSceneMaterials(result, v8);
  }

  return result;
}

uint64_t sub_29AEF1920(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStRenderPassState>>>::operator*() [T = std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStRenderPassState>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29AEF19A0(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStRenderPassState>>>::operator++() [T = std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStRenderPassState>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdxShadowTask::Prepare(void *a1, int a2, pxrInternal__aapl__pxrReserved__::HdRenderIndex *this)
{
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&v6, this);
  if (a1[3] != a1[2])
  {
    v4 = 0;
    v5 = 0;
    do
    {
      (*(**(a1[5] + v4) + 16))(*(a1[5] + v4), &v6);
      ++v5;
      v4 += 16;
    }

    while (v5 < (a1[3] - a1[2]) >> 4);
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void sub_29AEF1AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdxShadowTask::Execute(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v24, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxShadowTask::Execute(HdTaskContext *)");
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::GlfDebugGroup(&v23, "virtual void pxrInternal__aapl__pxrReserved__::HdxShadowTask::Execute(HdTaskContext *)");
  v22 = 0;
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  if (!v3)
  {
    v3 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  }

  if (sub_29AECFEDC(a2, v3 + 6, &v22))
  {
    v4 = sub_29AE99CDC(&v22);
    v21 = *pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetShadows(v4);
    sub_29B293C98(&v21);
    v5 = sub_29AB80170(&v21);
    NumShadowMapPasses = pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetNumShadowMapPasses(v5);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v7)
    {
      v7 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    v26 = (v7 + 56);
    v8 = sub_29AC1E77C(a2, v7 + 7, &unk_29B4D6118, &v26);
    v9 = sub_29A186EF4(&v29, v8 + 3);
    if (sub_29AED0040(v9))
    {
      v10 = (v30 & 4) != 0 ? (*((v30 & 0xFFFFFFFFFFFFFFF8) + 168))(&v29) : v29;
      if (*v10)
      {
        if (v11)
        {
          v12 = *(v10 + 8);
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (&v18 != v11 + 24)
          {
            sub_29AC944C0(&v18, v11[24], v11[25], 0xCCCCCCCCCCCCCCCDLL * ((v11[25] - v11[24]) >> 4));
          }

          if (v12)
          {
            sub_29A014BEC(v12);
          }
        }
      }
    }

    memset(v17, 0, sizeof(v17));
    if (NumShadowMapPasses)
    {
      v13 = 0;
      v14 = 8;
      do
      {
        if (v13 < 0xCCCCCCCCCCCCCCCDLL * ((v19 - v18) >> 4))
        {
          (*(**(v18 + v14) + 128))(&v27);
          if (sub_29AE8A2C8(&v27))
          {
            if ((v28 & 4) != 0)
            {
              v15 = (*((v28 & 0xFFFFFFFFFFFFFFF8) + 168))(&v27);
            }

            else
            {
              v15 = v27;
            }

            v16 = *v15;
            if (v16)
            {
              LODWORD(v26) = (*(*v16 + 24))(v16);
              sub_29A00D250(v17, &v26);
            }
          }

          sub_29A186B14(&v27);
        }

        ++v13;
        v14 += 80;
      }

      while (NumShadowMapPasses != v13);
    }

    sub_29AB80170(&v21);
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>();
  }

  sub_29AE9C770(&v22);
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::~GlfDebugGroup(&v23);
  if (v24)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v25, v24);
  }
}

void sub_29AEF2324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *a30, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *a31, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  sub_29A186B14(v43 - 120);
  *(v43 - 160) = &a27;
  sub_29AC943DC((v43 - 160));
  sub_29AB81EB0(&a30);
  sub_29AE9C770(&a31);
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::~GlfDebugGroup(&a35);
  sub_29A0E9CEC(&a36);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEF2700(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B715ED6 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A209AF18);
}

void *sub_29AEF278C(void *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29AB8219C(result, a4);
    result = sub_29AB821EC(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AEF27F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AB81EE0(&a9);
  _Unwind_Resume(a1);
}

void *sub_29AEF2814@<X0>(pxrInternal__aapl__pxrReserved__::HdRenderIndex **a1@<X1>, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x148uLL);
  result = sub_29AEF2878(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AEF2878(void *a1, pxrInternal__aapl__pxrReserved__::HdRenderIndex **a2, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2094F48;
  pxrInternal__aapl__pxrReserved__::HdSt_RenderPass::HdSt_RenderPass((a1 + 3), *a2, a3);
  return a1;
}

void *sub_29AEF28D8@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x380uLL);
  result = sub_29AEF2934(v2);
  *a1 = v2 + 3;
  a1[1] = v2;
  return result;
}

void *sub_29AEF2934(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2098A60;
  pxrInternal__aapl__pxrReserved__::HdStRenderPassState::HdStRenderPassState(a1 + 3);
  return a1;
}

void *sub_29AEF2998(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A209C328;
  result[1] = v3;
  return result;
}

uint64_t sub_29AEF29E0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A209C328;
  a2[1] = v2;
  return result;
}

uint64_t sub_29AEF2A34(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209C388))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29AEF2A80()
{
  for (i = 1u; i != -1; --i)
  {
    v1 = qword_2A174FE98[i];
    if ((v1 & 7) != 0)
    {
      atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

pxrInternal__aapl__pxrReserved__::HdxSimpleLightTask *pxrInternal__aapl__pxrReserved__::HdxSimpleLightTask::HdxSimpleLightTask(pxrInternal__aapl__pxrReserved__::HdxSimpleLightTask *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::HdTask::HdTask(this, a3);
  *v4 = &unk_2A209C3A8;
  *(v4 + 2) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v4 + 4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 5);
  *(this + 2) = 0u;
  *(this + 3) = this + 32;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  *(this + 13) = 16;
  *(this + 14) = 0;
  sub_29AED0B00(this + 15);
  *(this + 136) = 0;
  *(this + 148) = 0;
  *(this + 140) = 0;
  pxrInternal__aapl__pxrReserved__::CameraUtilFraming::CameraUtilFraming((this + 156));
  *(this + 192) = 0;
  *(this + 49) = 2;
  pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::GlfSimpleMaterial((this + 200));
  *(this + 46) = 0;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 188) = 257;
  *(this + 378) = 1;
  return this;
}

void sub_29AEF2BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 72);
  sub_29A1E234C(&a10);
  sub_29A1E234C(&a10);
  sub_29AEF8010(v12 - 8, *(v10 + 32));
  sub_29A1DCEA8(v11);
  pxrInternal__aapl__pxrReserved__::HdTask::~HdTask(v10);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxSimpleLightTask::~HdxSimpleLightTask(pxrInternal__aapl__pxrReserved__::HdxSimpleLightTask *this)
{
  *this = &unk_2A209C3A8;
  v2 = *(this + 46);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 44);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(this + 42);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(this + 40);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v7 = (this + 288);
  sub_29AB81EE0(&v7);
  pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::~GlfSimpleMaterial((this + 200));
  v6 = *(this + 16);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  v7 = (this + 72);
  sub_29A1E234C(&v7);
  v7 = (this + 48);
  sub_29A1E234C(&v7);
  sub_29AEF8010(this + 24, *(this + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 5);
  sub_29A1DE3A4(this + 4);
  pxrInternal__aapl__pxrReserved__::HdTask::~HdTask(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdxSimpleLightTask::~HdxSimpleLightTask(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxSimpleLightTask::_ComputeShadowMatrices@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  if (*a3 || (result = sub_29B2CB898(v9, a4), (result & 1) != 0))
  {
    v7 = *(a2 + 316);
    if (pxrInternal__aapl__pxrReserved__::CameraUtilFraming::IsValid((a1 + 156)))
    {
      if (*(a1 + 192) == 1)
      {
        v7 = *(a1 + 196);
      }

      return (*(**a3 + 8))(*a3, a1 + 156, v7);
    }

    else
    {
      return (***a3)(*a3, a1 + 140, v7);
    }
  }

  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdxSimpleLightTask::Sync(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v58 = *MEMORY[0x29EDCA608];
  if (*(a1 + 120))
  {
    v7 = *(a1 + 128);
    v42.__vftable = *(a1 + 120);
    v42.__type_name = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v42.__type_name = 0;
    v42.__vftable = 0;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  if (!v8)
  {
    v8 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  }

  __p[0] = v8 + 56;
  v9 = sub_29AC1E77C(a3, v8 + 7, &unk_29B4D6118, __p);
  sub_29AEF3F8C(v9 + 3, &v42);
  if (v42.__type_name)
  {
    sub_29A014BEC(v42.__type_name);
  }

  v40 = *(a2 + 8);
  RenderDelegate = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(v40);
  if ((*a4 & 4) == 0)
  {
LABEL_16:
    if ((atomic_load_explicit(&qword_2A174FEC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174FEC8))
    {
      v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v23)
      {
        v23 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      v24 = *(v23 + 30);
      v42.__vftable = v24;
      if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v42.__vftable = (v42.__vftable & 0xFFFFFFFFFFFFFFF8);
      }

      v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v25)
      {
        v25 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      v26 = *(v25 + 35);
      v42.__type_name = v26;
      if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v42.__type_name &= 0xFFFFFFFFFFFFFFF8;
      }

      v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v27)
      {
        v27 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      v28 = *(v27 + 36);
      v43 = v28;
      if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v43 &= 0xFFFFFFFFFFFFFFF8;
      }

      v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v29)
      {
        v29 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      v30 = *(v29 + 34);
      v44 = v30;
      if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v44 &= 0xFFFFFFFFFFFFFFF8;
      }

      v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v31)
      {
        v31 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      v32 = *(v31 + 28);
      v45 = v32;
      if ((v32 & 7) != 0 && (atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v45 &= 0xFFFFFFFFFFFFFFF8;
      }

      v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v33)
      {
        v33 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      v34 = *(v33 + 27);
      v46 = v34;
      if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v46 &= 0xFFFFFFFFFFFFFFF8;
      }

      v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v35)
      {
        v35 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      v36 = *(v35 + 29);
      v47 = v36;
      if ((v36 & 7) != 0 && (atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v47 &= 0xFFFFFFFFFFFFFFF8;
      }

      qword_2A174FEB0 = 0;
      *algn_2A174FEB8 = 0;
      qword_2A174FEC0 = 0;
      sub_29A12EF7C(&qword_2A174FEB0, &v42, &v48, 7uLL);
      for (i = 48; i != -8; i -= 8)
      {
        v38 = *(&v42.__vftable + i);
        if ((v38 & 7) != 0)
        {
          atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      __cxa_atexit(sub_29A3C73E0, &qword_2A174FEB0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174FEC8);
    }

    if ((*a4 & 4) != 0 || *(v40 + 914) != *(a1 + 112))
    {
      sub_29AEF8010(a1 + 24, *(a1 + 32));
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 24) = a1 + 32;
      *(a1 + 96) = pxrInternal__aapl__pxrReserved__::HdxSimpleLightTask::_AppendLightsOfType(v15, v40, &qword_2A174FEB0);
      *(a1 + 112) = *(v40 + 914);
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    if ((*(*RenderDelegate + 88))(RenderDelegate) == *(a1 + 116))
    {
      if (!v14)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v17 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(v40);
      v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStRenderSettingsTokens);
      if (!v18)
      {
        v18 = sub_29AE81F90(&pxrInternal__aapl__pxrReserved__::HdStRenderSettingsTokens);
      }

      LODWORD(v42.__vftable) = 16;
      *(a1 + 104) = sub_29AEF4440(v17, v18 + 32, &v42);
      *(a1 + 116) = (*(*RenderDelegate + 88))(RenderDelegate);
    }

    v19 = *(a1 + 96);
    v20 = *(a1 + 104);
    if (v19 > v20)
    {
      v42.__vftable = "hdx/simpleLightTask.cpp";
      v42.__type_name = "Sync";
      v43 = 165;
      v44 = "virtual void pxrInternal__aapl__pxrReserved__::HdxSimpleLightTask::Sync(HdSceneDelegate *, HdTaskContext *, HdDirtyBits *)";
      LOBYTE(v45) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v42, "Hydra Storm supports up to %zu lights, truncating the %zu found lights to this max.", v16, v20, v19);
    }

LABEL_29:
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v21)
    {
      v21 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetSprim(v40, (v21 + 136), (a1 + 16));
  }

  sub_29AEC0468(&v42);
  if (sub_29AEF4050(a1, a2, &v42))
  {
    if ((a1 + 48) != &v42.__type_name)
    {
      sub_29A324D54(a1 + 48, v42.__type_name, v43, (v43 - v42.__type_name) >> 3);
    }

    if ((a1 + 72) != &v45)
    {
      sub_29A324D54(a1 + 72, v45, v46, (v46 - v45) >> 3);
    }

    sub_29A2258F0((a1 + 16), &v42);
    sub_29A225948((a1 + 20), &v42.__vftable + 1);
    *(a1 + 136) = v48;
    *(a1 + 140) = v49;
    *(a1 + 156) = v50;
    *(a1 + 172) = v51;
    *(a1 + 188) = v52;
    *(a1 + 192) = v53;
    *(a1 + 196) = v54;
    *(a1 + 200) = v55[0];
    v11 = v55[1];
    v12 = v55[2];
    v13 = v55[3];
    *(a1 + 264) = v56;
    *(a1 + 248) = v13;
    *(a1 + 232) = v12;
    *(a1 + 216) = v11;
    *(a1 + 272) = v57;
    *(a1 + 378) = 1;
    pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::~GlfSimpleMaterial(v55);
    __p[0] = &v45;
    sub_29A1E234C(__p);
    __p[0] = &v42.__type_name;
    sub_29A1E234C(__p);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v42.__vftable + 1);
    sub_29A1DE3A4(&v42);
    goto LABEL_16;
  }

  pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::~GlfSimpleMaterial(v55);
  __p[0] = &v45;
  sub_29A1E234C(__p);
  __p[0] = &v42.__type_name;
  sub_29A1E234C(__p);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v42.__vftable + 1);
  return sub_29A1DE3A4(&v42);
}

void sub_29AEF3DB4(_Unwind_Exception *a1)
{
  while (1)
  {
    v4 = *--v1;
    v3 = v4;
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v1 == &STACK[0x370])
    {
      __cxa_guard_abort(&qword_2A174FEC8);
      _Unwind_Resume(a1);
    }
  }
}

void *sub_29AEF3F8C(void *a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  sub_29AEF8088(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29AEF4014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AEF4050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v6)
  {
    v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  (*(*a2 + 120))(&v20, a2, a1 + 8, v6 + 440);
  v7 = sub_29AEF8288(&v20);
  if (v7)
  {
    if ((v21 & 4) != 0)
    {
      v8 = (*((v21 & 0xFFFFFFFFFFFFFFF8) + 168))(&v20);
    }

    else
    {
      v8 = v20;
    }

    sub_29A2258F0(a3, v8);
    sub_29A225948((a3 + 4), (v8 + 4));
    if (v8 != a3)
    {
      sub_29A324D54(a3 + 8, *(v8 + 8), *(v8 + 16), (*(v8 + 16) - *(v8 + 8)) >> 3);
      sub_29A324D54(a3 + 32, *(v8 + 32), *(v8 + 40), (*(v8 + 40) - *(v8 + 32)) >> 3);
    }

    v9 = *(v8 + 56);
    v10 = *(v8 + 72);
    v11 = *(v8 + 88);
    *(a3 + 104) = *(v8 + 104);
    *(a3 + 88) = v11;
    *(a3 + 72) = v10;
    *(a3 + 56) = v9;
    *(a3 + 112) = *(v8 + 112);
    *(a3 + 116) = *(v8 + 116);
    v12 = *(v8 + 120);
    *(a3 + 136) = *(v8 + 136);
    *(a3 + 120) = v12;
    v13 = *(v8 + 152);
    v14 = *(v8 + 168);
    v15 = *(v8 + 184);
    *(a3 + 200) = *(v8 + 200);
    *(a3 + 184) = v15;
    *(a3 + 168) = v14;
    *(a3 + 152) = v13;
  }

  else
  {
    v18[0] = "hd/task.h";
    v18[1] = "_GetTaskParams";
    v18[2] = 242;
    v18[3] = "BOOL pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskParams(HdSceneDelegate *, T *) [T = pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskParams]";
    v19 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 8));
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v18, 1, "Task params for %s is of unexpected type", Text);
  }

  sub_29A186B14(&v20);
  return v7;
}

void sub_29AEF423C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxSimpleLightTask::_AppendLightsOfType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = *(a3 + 8);
  v11 = *a3;
  v12 = v3;
  while (v11 != v12)
  {
    v5 = sub_29A1FCDD0(&v11, a2, a3);
    if (pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsSprimTypeSupported(a2, v5))
    {
      v8 = sub_29A1FCDD0(&v11, v6, v7);
      pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v8);
      pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetSprimSubtree(v10);
    }

    sub_29A1FCE50(&v11);
  }

  return 0;
}

void sub_29AEF43F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20)
{
  sub_29AC1C940(&a20);
  a20 = &a10;
  sub_29A1E234C(&a20);
  a20 = &a13;
  sub_29A1E234C(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEF4440(uint64_t a1, uint64_t a2, std::type_info *a3)
{
  v8[2] = *MEMORY[0x29EDCA608];
  (*(*a1 + 72))(v8);
  v4 = sub_29A3F92A4(v8);
  if (sub_29A293A9C(v4))
  {
    type_name = v4->__type_name;
    if ((type_name & 4) != 0)
    {
      a3 = (*((type_name & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    else
    {
      a3 = v4;
    }
  }

  v6 = LODWORD(a3->__vftable);
  sub_29A186B14(v8);
  return v6;
}

void *sub_29AEF4520(void *a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A209C4B0;
  sub_29AEF85AC(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29AEF45B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__int128 **sub_29AEF45F0(__int128 **result)
{
  v1 = result[1];
  v2 = *result;
  v3 = result[2] - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = result;
    v6 = 0xFAFAFAFAFAFAFAFBLL * (v4 >> 3);
    v18 = result;
    if (v1 == v2)
    {
      v7 = 0;
      v9 = 0;
    }

    else
    {
      v7 = sub_29A936374(result, 0xFAFAFAFAFAFAFAFBLL * (v4 >> 3));
      v9 = v8;
      v2 = *v5;
      v3 = v5[2] - *v5;
    }

    v10 = &v7[408 * v6];
    v15 = v7;
    v16 = v10;
    *&v17 = v10;
    *(&v17 + 1) = &v7[408 * v9];
    if (v9 < 0xFAFAFAFAFAFAFAFBLL * (v3 >> 3))
    {
      v11 = v5[1];
      v12 = &v10[v2 - v11];
      sub_29AB828C8(v5, v2, v11, v12);
      v13 = *v5;
      *v5 = v12;
      v14 = v5[2];
      *(v5 + 1) = v17;
      *&v17 = v13;
      *(&v17 + 1) = v14;
      v15 = v13;
      v16 = v13;
    }

    return sub_29AB8296C(&v15);
  }

  return result;
}

void sub_29AEF46E4(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AB8296C(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29AEF46D0);
}

__n128 sub_29AEF470C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_29AEC11F8(a1))
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

  v7 = *(a2 + 8);
  *a3 = *a2;
  *(a3 + 8) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a2 + 16);
  *(a3 + 16) = result;
  *(a3 + 29) = *(a2 + 29);
  return result;
}

void sub_29AEF4790(void *a1, __int128 *a2)
{
  if (a1[1] < a1[2])
  {
    sub_29AB82270(a1[1], a2);
  }

  sub_29AEF8618(a1, a2);
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **pxrInternal__aapl__pxrReserved__::HdxSimpleLightTask::Prepare(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a3)
{
  v409 = *MEMORY[0x29EDCA608];
  v371 = *(*(a1 + 120) + 24);
  sub_29B293C98(&v371);
  if (v371 || (lpsrc[0] = "hdx/simpleLightTask.cpp", lpsrc[1] = "Prepare", *&v390 = 384, *(&v390 + 1) = "virtual void pxrInternal__aapl__pxrReserved__::HdxSimpleLightTask::Prepare(HdTaskContext *, HdRenderIndex *)", LOBYTE(v391) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(lpsrc, "lightingContext", 0) & 1) != 0))
  {
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(lpsrc, a3);
    if (lpsrc[0])
    {
      if (v5)
      {
        v6 = lpsrc[1];
        if (lpsrc[1])
        {
          atomic_fetch_add_explicit(lpsrc[1] + 1, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    if (lpsrc[1])
    {
      sub_29A014BEC(lpsrc[1]);
    }

    if (v5)
    {
      v333 = (a1 + 312);
      v332 = v6;
      v330 = v5;
      if (!*(a1 + 312))
      {
        v345 = 0uLL;
        *&v346 = 0;
        v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v7)
        {
          v7 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(lpsrc[0]) = 0;
        lpsrc[1] = 1;
        v8 = *(&v345 + 1);
        if (*(&v345 + 1) >= v346)
        {
          v11 = sub_29AD9CC10(&v345, v7 + 2, lpsrc);
        }

        else
        {
          v9 = lpsrc[0];
          v10 = *(v7 + 2);
          **(&v345 + 1) = v10;
          if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v8 &= 0xFFFFFFFFFFFFFFF8;
          }

          v8[1] = v9;
          v8[2] = 1;
          v11 = (v8 + 3);
        }

        *(&v345 + 1) = v11;
        v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v12)
        {
          v12 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(lpsrc[0]) = 0;
        lpsrc[1] = 1;
        v13 = *(&v345 + 1);
        if (*(&v345 + 1) >= v346)
        {
          v16 = sub_29AD9CC10(&v345, v12 + 3, lpsrc);
        }

        else
        {
          v14 = lpsrc[0];
          v15 = *(v12 + 3);
          **(&v345 + 1) = v15;
          if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v13 &= 0xFFFFFFFFFFFFFFF8;
          }

          v13[1] = v14;
          v13[2] = 1;
          v16 = (v13 + 3);
        }

        *(&v345 + 1) = v16;
        v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v17)
        {
          v17 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateUniformBufferArrayRange(v5, v17, &v345, 4u, lpsrc);
        v18 = *lpsrc;
        lpsrc[1] = 0;
        lpsrc[0] = 0;
        v19 = *(a1 + 320);
        *v333 = v18;
        if (v19)
        {
          sub_29A014BEC(v19);
          if (lpsrc[1])
          {
            sub_29A014BEC(lpsrc[1]);
          }
        }

        v20 = *(a1 + 120);
        v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v21)
        {
          v21 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v22 = *(a1 + 312);
        v23 = *(a1 + 320);
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        lpsrc[0] = -4294967287;
        v24 = *(v21 + 1);
        lpsrc[1] = v24;
        if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          lpsrc[1] = (lpsrc[1] & 0xFFFFFFFFFFFFFFF8);
        }

        v390 = 0uLL;
        *&v391 = v22;
        *(&v391 + 1) = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        LOWORD(v392) = 1;
        *(&v392 + 1) = 0;
        LOBYTE(v393) = 0;
        pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::AddBufferBinding(v20, lpsrc);
        v5 = v330;
        if (*(&v391 + 1))
        {
          sub_29A014BEC(*(&v391 + 1));
        }

        if (*(&v390 + 1))
        {
          sub_29A014BEC(*(&v390 + 1));
        }

        if ((lpsrc[1] & 7) != 0)
        {
          atomic_fetch_add_explicit((lpsrc[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v23)
        {
          sub_29A014BEC(v23);
        }

        lpsrc[0] = &v345;
        sub_29ABC6FA0(lpsrc);
      }

      if (*(a1 + 376) == 1)
      {
        v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v25)
        {
          v25 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v26 = sub_29AE99CDC(&v371);
        UseLighting = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetUseLighting(v26);
        *(&v407[0] + 1) = &unk_2A20443C3;
        LOBYTE(v407[0]) = UseLighting;
        sub_29AD9CD3C((v25 + 16), v407, v369);
        *lpsrc = v369[0];
        v369[0] = 0uLL;
        v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v28)
        {
          v28 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v29 = sub_29AE99CDC(&v371);
        UseColorMaterialDiffuse = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetUseColorMaterialDiffuse(v29);
        *(&v405[0] + 1) = &unk_2A20443C3;
        LOBYTE(v405[0]) = UseColorMaterialDiffuse;
        sub_29AD9CD3C((v28 + 24), v405, v367);
        v390 = v367[0];
        v367[0] = 0uLL;
        *&v346 = 0;
        v345 = 0uLL;
        sub_29AD9CF88(&v345, lpsrc, &v391, 2uLL);
        for (i = 3; i != -1; i -= 2)
        {
          v32 = lpsrc[i];
          if (v32)
          {
            sub_29A014BEC(v32);
          }
        }

        if (*(&v367[0] + 1))
        {
          sub_29A014BEC(*(&v367[0] + 1));
        }

        sub_29A186B14(v405);
        v6 = v332;
        if (*(&v369[0] + 1))
        {
          sub_29A014BEC(*(&v369[0] + 1));
        }

        sub_29A186B14(v407);
        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v5, v333, &v345);
        lpsrc[0] = &v345;
        sub_29A0176E4(lpsrc);
      }

      v33 = sub_29AE99CDC(&v371);
      NumLightsUsed = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetNumLightsUsed(v33);
      v35 = sub_29AE99CDC(&v371);
      v36 = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::ComputeNumShadowsUsed(v35);
      if (!*(a1 + 328))
      {
        lpsrc[1] = 0;
        lpsrc[0] = 0;
        *&v390 = 0;
        v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v37)
        {
          v37 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(v345) = 16;
        *(&v345 + 1) = 1;
        v38 = lpsrc[1];
        if (lpsrc[1] >= v390)
        {
          v41 = sub_29AD9CC10(lpsrc, v37 + 5, &v345);
        }

        else
        {
          v39 = v345;
          v40 = *(v37 + 5);
          *lpsrc[1] = v40;
          if ((v40 & 7) != 0 && (atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v38 &= 0xFFFFFFFFFFFFFFF8;
          }

          v38[1] = v39;
          v38[2] = 1;
          v41 = v38 + 3;
        }

        lpsrc[1] = v41;
        v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v42)
        {
          v42 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(v345) = 16;
        *(&v345 + 1) = 1;
        v43 = lpsrc[1];
        if (lpsrc[1] >= v390)
        {
          v46 = sub_29AD9CC10(lpsrc, v42 + 6, &v345);
        }

        else
        {
          v44 = v345;
          v45 = *(v42 + 6);
          *lpsrc[1] = v45;
          if ((v45 & 7) != 0 && (atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v43 &= 0xFFFFFFFFFFFFFFF8;
          }

          v43[1] = v44;
          v43[2] = 1;
          v46 = v43 + 3;
        }

        lpsrc[1] = v46;
        v47 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v47)
        {
          v47 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(v345) = 16;
        *(&v345 + 1) = 1;
        v48 = lpsrc[1];
        if (lpsrc[1] >= v390)
        {
          v51 = sub_29AD9CC10(lpsrc, v47 + 7, &v345);
        }

        else
        {
          v49 = v345;
          v50 = *(v47 + 7);
          *lpsrc[1] = v50;
          if ((v50 & 7) != 0 && (atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v48 &= 0xFFFFFFFFFFFFFFF8;
          }

          v48[1] = v49;
          v48[2] = 1;
          v51 = v48 + 3;
        }

        lpsrc[1] = v51;
        v52 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v52)
        {
          v52 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(v345) = 16;
        *(&v345 + 1) = 1;
        v53 = lpsrc[1];
        if (lpsrc[1] >= v390)
        {
          v56 = sub_29AD9CC10(lpsrc, v52 + 8, &v345);
        }

        else
        {
          v54 = v345;
          v55 = *(v52 + 8);
          *lpsrc[1] = v55;
          if ((v55 & 7) != 0 && (atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v53 &= 0xFFFFFFFFFFFFFFF8;
          }

          v53[1] = v54;
          v53[2] = 1;
          v56 = v53 + 3;
        }

        lpsrc[1] = v56;
        v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v57)
        {
          v57 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(v345) = 15;
        *(&v345 + 1) = 1;
        v58 = lpsrc[1];
        if (lpsrc[1] >= v390)
        {
          v61 = sub_29AD9CC10(lpsrc, v57 + 9, &v345);
        }

        else
        {
          v59 = v345;
          v60 = *(v57 + 9);
          *lpsrc[1] = v60;
          if ((v60 & 7) != 0 && (atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v58 &= 0xFFFFFFFFFFFFFFF8;
          }

          v58[1] = v59;
          v58[2] = 1;
          v61 = v58 + 3;
        }

        lpsrc[1] = v61;
        v62 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v62)
        {
          v62 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(v345) = 13;
        *(&v345 + 1) = 1;
        v63 = lpsrc[1];
        if (lpsrc[1] >= v390)
        {
          v66 = sub_29AD9CC10(lpsrc, v62 + 10, &v345);
        }

        else
        {
          v64 = v345;
          v65 = *(v62 + 10);
          *lpsrc[1] = v65;
          if ((v65 & 7) != 0 && (atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v63 &= 0xFFFFFFFFFFFFFFF8;
          }

          v63[1] = v64;
          v63[2] = 1;
          v66 = v63 + 3;
        }

        lpsrc[1] = v66;
        v67 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v67)
        {
          v67 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(v345) = 13;
        *(&v345 + 1) = 1;
        v68 = lpsrc[1];
        if (lpsrc[1] >= v390)
        {
          v71 = sub_29AD9CC10(lpsrc, v67 + 11, &v345);
        }

        else
        {
          v69 = v345;
          v70 = *(v67 + 11);
          *lpsrc[1] = v70;
          if ((v70 & 7) != 0 && (atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v68 &= 0xFFFFFFFFFFFFFFF8;
          }

          v68[1] = v69;
          v68[2] = 1;
          v71 = v68 + 3;
        }

        lpsrc[1] = v71;
        v72 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v72)
        {
          v72 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(v345) = 15;
        *(&v345 + 1) = 1;
        v73 = lpsrc[1];
        if (lpsrc[1] >= v390)
        {
          v76 = sub_29AD9CC10(lpsrc, v72 + 12, &v345);
        }

        else
        {
          v74 = v345;
          v75 = *(v72 + 12);
          *lpsrc[1] = v75;
          if ((v75 & 7) != 0 && (atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v73 &= 0xFFFFFFFFFFFFFFF8;
          }

          v73[1] = v74;
          v73[2] = 1;
          v76 = v73 + 3;
        }

        lpsrc[1] = v76;
        v77 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v77)
        {
          v77 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(v345) = 18;
        *(&v345 + 1) = 1;
        v78 = lpsrc[1];
        if (lpsrc[1] >= v390)
        {
          v81 = sub_29AD9CC10(lpsrc, v77 + 13, &v345);
        }

        else
        {
          v79 = v345;
          v80 = *(v77 + 13);
          *lpsrc[1] = v80;
          if ((v80 & 7) != 0 && (atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v78 &= 0xFFFFFFFFFFFFFFF8;
          }

          v78[1] = v79;
          v78[2] = 1;
          v81 = v78 + 3;
        }

        lpsrc[1] = v81;
        v82 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v82)
        {
          v82 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(v345) = 5;
        *(&v345 + 1) = 1;
        v83 = lpsrc[1];
        if (lpsrc[1] >= v390)
        {
          v86 = sub_29AD9CC10(lpsrc, v82 + 14, &v345);
        }

        else
        {
          v84 = v345;
          v85 = *(v82 + 14);
          *lpsrc[1] = v85;
          if ((v85 & 7) != 0 && (atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v83 &= 0xFFFFFFFFFFFFFFF8;
          }

          v83[1] = v84;
          v83[2] = 1;
          v86 = v83 + 3;
        }

        lpsrc[1] = v86;
        v87 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v87)
        {
          v87 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(v345) = 5;
        *(&v345 + 1) = 1;
        v88 = lpsrc[1];
        if (lpsrc[1] >= v390)
        {
          v91 = sub_29AD9CC10(lpsrc, v87 + 15, &v345);
        }

        else
        {
          v89 = v345;
          v90 = *(v87 + 15);
          *lpsrc[1] = v90;
          if ((v90 & 7) != 0 && (atomic_fetch_add_explicit((v90 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v88 &= 0xFFFFFFFFFFFFFFF8;
          }

          v88[1] = v89;
          v88[2] = 1;
          v91 = v88 + 3;
        }

        lpsrc[1] = v91;
        v92 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v92)
        {
          v92 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(v345) = 0;
        *(&v345 + 1) = 1;
        v93 = lpsrc[1];
        if (lpsrc[1] >= v390)
        {
          v96 = sub_29AD9CC10(lpsrc, v92 + 16, &v345);
        }

        else
        {
          v94 = v345;
          v95 = *(v92 + 16);
          *lpsrc[1] = v95;
          if ((v95 & 7) != 0 && (atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v93 &= 0xFFFFFFFFFFFFFFF8;
          }

          v93[1] = v94;
          v93[2] = 1;
          v96 = v93 + 3;
        }

        lpsrc[1] = v96;
        v97 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v97)
        {
          v97 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(v345) = 0;
        *(&v345 + 1) = 1;
        v98 = lpsrc[1];
        if (lpsrc[1] >= v390)
        {
          v101 = sub_29AD9CC10(lpsrc, v97 + 17, &v345);
        }

        else
        {
          v99 = v345;
          v100 = *(v97 + 17);
          *lpsrc[1] = v100;
          if ((v100 & 7) != 0 && (atomic_fetch_add_explicit((v100 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v98 &= 0xFFFFFFFFFFFFFFF8;
          }

          v98[1] = v99;
          v98[2] = 1;
          v101 = v98 + 3;
        }

        lpsrc[1] = v101;
        v102 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v102)
        {
          v102 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateUniformBufferArrayRange(v5, v102, lpsrc, 4u, &v345);
        v103 = v345;
        v345 = 0uLL;
        v104 = *(a1 + 336);
        *(a1 + 328) = v103;
        if (v104)
        {
          sub_29A014BEC(v104);
          if (*(&v345 + 1))
          {
            sub_29A014BEC(*(&v345 + 1));
          }
        }

        *&v345 = lpsrc;
        sub_29ABC6FA0(&v345);
      }

      v105 = *(a1 + 120);
      v106 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
      if (!v106)
      {
        v106 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::RemoveBufferBinding(v105, (v106 + 32));
      v107 = NumLightsUsed;
      if (NumLightsUsed)
      {
        v108 = *(a1 + 120);
        v109 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v109)
        {
          v109 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v110 = *(a1 + 328);
        v111 = *(a1 + 336);
        if (v111)
        {
          atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        lpsrc[0] = -4294967287;
        v112 = *(v109 + 4);
        lpsrc[1] = v112;
        if ((v112 & 7) != 0 && (atomic_fetch_add_explicit((v112 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          lpsrc[1] = (lpsrc[1] & 0xFFFFFFFFFFFFFFF8);
        }

        v390 = 0uLL;
        *&v391 = v110;
        *(&v391 + 1) = v111;
        if (v111)
        {
          atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        LOWORD(v392) = 1;
        *(&v392 + 1) = NumLightsUsed;
        LOBYTE(v393) = 1;
        pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::AddBufferBinding(v108, lpsrc);
        if (*(&v391 + 1))
        {
          sub_29A014BEC(*(&v391 + 1));
        }

        if (*(&v390 + 1))
        {
          sub_29A014BEC(*(&v390 + 1));
        }

        if ((lpsrc[1] & 7) != 0)
        {
          atomic_fetch_add_explicit((lpsrc[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v111)
        {
          sub_29A014BEC(v111);
        }
      }

      v113 = sub_29AE99CDC(&v371);
      UseShadows = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetUseShadows(v113);
      v114 = (a1 + 344);
      if (((*(a1 + 344) == 0) & UseShadows) == 1)
      {
        lpsrc[1] = 0;
        lpsrc[0] = 0;
        *&v390 = 0;
        v115 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v115)
        {
          v115 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(v345) = 18;
        *(&v345 + 1) = 1;
        v116 = lpsrc[1];
        if (lpsrc[1] >= v390)
        {
          v119 = sub_29AD9CC10(lpsrc, v115 + 19, &v345);
        }

        else
        {
          v117 = v345;
          v118 = *(v115 + 19);
          *lpsrc[1] = v118;
          if ((v118 & 7) != 0 && (atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v116 &= 0xFFFFFFFFFFFFFFF8;
          }

          v116[1] = v117;
          v116[2] = 1;
          v119 = v116 + 3;
        }

        lpsrc[1] = v119;
        v120 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v120)
        {
          v120 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(v345) = 18;
        *(&v345 + 1) = 1;
        v121 = lpsrc[1];
        if (lpsrc[1] >= v390)
        {
          v124 = sub_29AD9CC10(lpsrc, v120 + 20, &v345);
        }

        else
        {
          v122 = v345;
          v123 = *(v120 + 20);
          *lpsrc[1] = v123;
          if ((v123 & 7) != 0 && (atomic_fetch_add_explicit((v123 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v121 &= 0xFFFFFFFFFFFFFFF8;
          }

          v121[1] = v122;
          v121[2] = 1;
          v124 = v121 + 3;
        }

        lpsrc[1] = v124;
        v125 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v125)
        {
          v125 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(v345) = 13;
        *(&v345 + 1) = 1;
        v126 = lpsrc[1];
        if (lpsrc[1] >= v390)
        {
          v129 = sub_29AD9CC10(lpsrc, v125 + 21, &v345);
        }

        else
        {
          v127 = v345;
          v128 = *(v125 + 21);
          *lpsrc[1] = v128;
          if ((v128 & 7) != 0 && (atomic_fetch_add_explicit((v128 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v126 &= 0xFFFFFFFFFFFFFFF8;
          }

          v126[1] = v127;
          v126[2] = 1;
          v129 = v126 + 3;
        }

        lpsrc[1] = v129;
        v130 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v130)
        {
          v130 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(v345) = 13;
        *(&v345 + 1) = 1;
        v131 = lpsrc[1];
        if (lpsrc[1] >= v390)
        {
          v134 = sub_29AD9CC10(lpsrc, v130 + 22, &v345);
        }

        else
        {
          v132 = v345;
          v133 = *(v130 + 22);
          *lpsrc[1] = v133;
          if ((v133 & 7) != 0 && (atomic_fetch_add_explicit((v133 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v131 &= 0xFFFFFFFFFFFFFFF8;
          }

          v131[1] = v132;
          v131[2] = 1;
          v134 = v131 + 3;
        }

        lpsrc[1] = v134;
        v135 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v135)
        {
          v135 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateUniformBufferArrayRange(v5, v135, lpsrc, 4u, &v345);
        v136 = v345;
        v345 = 0uLL;
        v137 = *(a1 + 352);
        *v114 = v136;
        if (v137)
        {
          sub_29A014BEC(v137);
          if (*(&v345 + 1))
          {
            sub_29A014BEC(*(&v345 + 1));
          }
        }

        *&v345 = lpsrc;
        sub_29ABC6FA0(&v345);
      }

      v138 = *(a1 + 120);
      v139 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
      if (!v139)
      {
        v139 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::RemoveBufferBinding(v138, (v139 + 144));
      v140 = v36;
      if (v36)
      {
        v141 = *(a1 + 120);
        v142 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v142)
        {
          v142 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v143 = *(a1 + 344);
        v144 = *(a1 + 352);
        if (v144)
        {
          atomic_fetch_add_explicit(&v144->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        lpsrc[0] = -4294967287;
        v145 = *(v142 + 18);
        lpsrc[1] = v145;
        if ((v145 & 7) != 0 && (atomic_fetch_add_explicit((v145 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          lpsrc[1] = (lpsrc[1] & 0xFFFFFFFFFFFFFFF8);
        }

        v390 = 0uLL;
        *&v391 = v143;
        *(&v391 + 1) = v144;
        if (v144)
        {
          atomic_fetch_add_explicit(&v144->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        LOWORD(v392) = 1;
        *(&v392 + 1) = v140;
        LOBYTE(v393) = 1;
        pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::AddBufferBinding(v141, lpsrc);
        if (*(&v391 + 1))
        {
          sub_29A014BEC(*(&v391 + 1));
        }

        if (*(&v390 + 1))
        {
          sub_29A014BEC(*(&v390 + 1));
        }

        if ((lpsrc[1] & 7) != 0)
        {
          atomic_fetch_add_explicit((lpsrc[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v144)
        {
          sub_29A014BEC(v144);
        }
      }

      if (*(a1 + 377) == 1)
      {
        sub_29A195790(v369, NumLightsUsed);
        sub_29A195790(v407, NumLightsUsed);
        sub_29A195790(v367, NumLightsUsed);
        sub_29A195790(v405, NumLightsUsed);
        sub_29A193124(v365, NumLightsUsed);
        sub_29A18E048(v403, NumLightsUsed);
        sub_29A18E048(v363, NumLightsUsed);
        sub_29A193124(v401, NumLightsUsed);
        sub_29A198988(v361, NumLightsUsed);
        sub_29A19D6E4(v399, NumLightsUsed);
        sub_29A19D6E4(v359, NumLightsUsed);
        sub_29A20CB6C(v397, NumLightsUsed);
        sub_29A20CB6C(v357, NumLightsUsed);
        sub_29A198988(v355, v140);
        sub_29A198988(v353, v140);
        sub_29A18E048(v351, v140);
        sub_29A18E048(v349, v140);
        v146 = sub_29AE99CDC(&v371);
        Lights = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetLights(v146);
        v148 = sub_29AE99CDC(&v371);
        Shadows = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetShadows(v148);
        if (NumLightsUsed)
        {
          v150 = Shadows;
          v151 = 0;
          do
          {
            Position = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetPosition((*Lights + 408 * v151));
            sub_29A195BC4(v369);
            *(v370 + 16 * v151) = *Position;
            Ambient = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetAmbient((*Lights + 408 * v151));
            sub_29A195BC4(v407);
            *(v408 + 16 * v151) = *Ambient;
            Diffuse = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetDiffuse((*Lights + 408 * v151));
            sub_29A195BC4(v367);
            *(v368 + 16 * v151) = *Diffuse;
            Specular = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetSpecular((*Lights + 408 * v151));
            sub_29A195BC4(v405);
            *(v406 + 16 * v151) = *Specular;
            SpotDirection = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetSpotDirection((*Lights + 408 * v151));
            sub_29A1935CC(v365);
            v157 = v366 + 12 * v151;
            v158 = *SpotDirection;
            *(v157 + 8) = *(SpotDirection + 8);
            *v157 = v158;
            v159 = *pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetSpotCutoff((*Lights + 408 * v151));
            sub_29A18E624(v403);
            *(v404 + 4 * v151) = v159;
            v160 = *pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetSpotFalloff((*Lights + 408 * v151));
            sub_29A18E624(v363);
            *(v364 + 4 * v151) = v160;
            Attenuation = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetAttenuation((*Lights + 408 * v151));
            sub_29A1935CC(v401);
            v162 = v402 + 12 * v151;
            v163 = *Attenuation;
            *(v162 + 8) = *(Attenuation + 8);
            *v162 = v163;
            Transform = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetTransform((*Lights + 408 * v151));
            pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(Transform, 0, 0.0, lpsrc);
            pxrInternal__aapl__pxrReserved__::GfMatrix4f::GfMatrix4f(&v345, lpsrc);
            sub_29A198DC8(v361);
            v165 = (v362 + (v151 << 6));
            v166 = v345;
            v167 = v346;
            v168 = v348;
            v165[2] = v347;
            v165[3] = v168;
            *v165 = v166;
            v165[1] = v167;
            LODWORD(Attenuation) = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetShadowIndexStart((*Lights + 408 * v151));
            sub_29A19DBEC(v399);
            *(v400 + 4 * v151) = Attenuation;
            LODWORD(Attenuation) = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetShadowIndexEnd((*Lights + 408 * v151));
            sub_29A19DBEC(v359);
            *(v360 + 4 * v151) = Attenuation;
            LOBYTE(Attenuation) = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::HasShadow((*Lights + 408 * v151));
            sub_29A20D1F0(v397);
            *(v398 + v151) = Attenuation;
            LOBYTE(Attenuation) = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::IsDomeLight((*Lights + 408 * v151));
            sub_29A20D1F0(v357);
            *(v358 + v151) = Attenuation;
            sub_29A20D1F0(v397);
            if (*(v398 + v151) == 1)
            {
              sub_29A19DBEC(v399);
              v169 = *(v400 + 4 * v151);
              for (j = v169 << 6; ; j += 64)
              {
                sub_29A19DBEC(v359);
                if (v169 > *(v360 + 4 * v151))
                {
                  break;
                }

                v171 = sub_29AB80170(v150);
                pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetWorldToShadowMatrix(v171, v169, lpsrc);
                pxrInternal__aapl__pxrReserved__::GfMatrix4f::GfMatrix4f(&v345, lpsrc);
                sub_29A198DC8(v355);
                v172 = (v356 + j);
                v173 = v345;
                v174 = v346;
                v175 = v348;
                v172[2] = v347;
                v172[3] = v175;
                *v172 = v173;
                v172[1] = v174;
                sub_29A198DC8(v355);
                pxrInternal__aapl__pxrReserved__::GfMatrix4f::GetInverse((v356 + j), 0, 0.0, lpsrc);
                sub_29A198DC8(v353);
                v176 = (v354 + j);
                v177 = *lpsrc;
                v178 = v390;
                v179 = v392;
                v176[2] = v391;
                v176[3] = v179;
                *v176 = v177;
                v176[1] = v178;
                ShadowBlur = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetShadowBlur((*Lights + 408 * v151));
                sub_29A18E624(v351);
                *(v352 + 4 * v169) = ShadowBlur;
                ShadowBias = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetShadowBias((*Lights + 408 * v151));
                sub_29A18E624(v349);
                *(v350 + 4 * v169++) = ShadowBias;
              }
            }

            ++v151;
          }

          while (v151 != v107);
        }

        v182 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v182)
        {
          v182 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        *(&v388 + 1) = &off_2A20435E8;
        v183 = operator new(0x30uLL);
        v184 = v369[1];
        *v183 = v369[0];
        *(v183 + 1) = v184;
        v185 = v370;
        *(v183 + 4) = v370;
        if (v185)
        {
          v186 = (v185 - 16);
          if (*(v183 + 3))
          {
            v186 = *(v183 + 3);
          }

          atomic_fetch_add_explicit(v186, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v183 + 10);
        *&v388 = v183;
        atomic_fetch_add_explicit(v183 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v182 + 40), &v388, &v335);
        *lpsrc = v335;
        v335 = 0uLL;
        v187 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v187)
        {
          v187 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        *(&v386 + 1) = &off_2A20435E8;
        v188 = operator new(0x30uLL);
        v189 = v407[1];
        *v188 = v407[0];
        *(v188 + 1) = v189;
        v190 = v408;
        *(v188 + 4) = v408;
        if (v190)
        {
          v191 = (v190 - 16);
          if (*(v188 + 3))
          {
            v191 = *(v188 + 3);
          }

          atomic_fetch_add_explicit(v191, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v188 + 10);
        *&v386 = v188;
        atomic_fetch_add_explicit(v188 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v187 + 48), &v386, &v387);
        v390 = v387;
        v387 = 0uLL;
        v192 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v192)
        {
          v192 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        *(&v384 + 1) = &off_2A20435E8;
        v193 = operator new(0x30uLL);
        v194 = v367[1];
        *v193 = v367[0];
        *(v193 + 1) = v194;
        v195 = v368;
        *(v193 + 4) = v368;
        if (v195)
        {
          v196 = (v195 - 16);
          if (*(v193 + 3))
          {
            v196 = *(v193 + 3);
          }

          atomic_fetch_add_explicit(v196, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v193 + 10);
        *&v384 = v193;
        atomic_fetch_add_explicit(v193 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v192 + 56), &v384, &v385);
        v391 = v385;
        v385 = 0uLL;
        v197 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v197)
        {
          v197 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        *(&v382 + 1) = &off_2A20435E8;
        v198 = operator new(0x30uLL);
        v199 = v405[1];
        *v198 = v405[0];
        *(v198 + 1) = v199;
        v200 = v406;
        *(v198 + 4) = v406;
        if (v200)
        {
          v201 = (v200 - 16);
          if (*(v198 + 3))
          {
            v201 = *(v198 + 3);
          }

          atomic_fetch_add_explicit(v201, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v198 + 10);
        *&v382 = v198;
        atomic_fetch_add_explicit(v198 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v197 + 64), &v382, &v383);
        v392 = v383;
        v383 = 0uLL;
        v202 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v202)
        {
          v202 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v380[1] = &off_2A20433C0;
        v203 = operator new(0x30uLL);
        v204 = v365[1];
        *v203 = v365[0];
        *(v203 + 1) = v204;
        v205 = v366;
        *(v203 + 4) = v366;
        if (v205)
        {
          v206 = (v205 - 16);
          if (*(v203 + 3))
          {
            v206 = *(v203 + 3);
          }

          atomic_fetch_add_explicit(v206, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v203 + 10);
        v380[0] = v203;
        atomic_fetch_add_explicit(v203 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v202 + 72), v380, &v381);
        v393 = v381;
        v381 = 0uLL;
        v207 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v207)
        {
          v207 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v379[1] = &off_2A2042F70;
        v208 = operator new(0x30uLL);
        v209 = v403[1];
        *v208 = v403[0];
        *(v208 + 1) = v209;
        v210 = v404;
        *(v208 + 4) = v404;
        if (v210)
        {
          v211 = (v210 - 16);
          if (*(v208 + 3))
          {
            v211 = *(v208 + 3);
          }

          atomic_fetch_add_explicit(v211, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v208 + 10);
        v379[0] = v208;
        atomic_fetch_add_explicit(v208 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v207 + 80), v379, &v344);
        v394 = v344;
        v344 = 0uLL;
        v212 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v212)
        {
          v212 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v378[1] = &off_2A2042F70;
        v213 = operator new(0x30uLL);
        v214 = v363[1];
        *v213 = v363[0];
        *(v213 + 1) = v214;
        v215 = v364;
        *(v213 + 4) = v364;
        if (v215)
        {
          v216 = (v215 - 16);
          if (*(v213 + 3))
          {
            v216 = *(v213 + 3);
          }

          atomic_fetch_add_explicit(v216, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v213 + 10);
        v378[0] = v213;
        atomic_fetch_add_explicit(v213 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v212 + 88), v378, &v343);
        v395[0] = v343;
        v343 = 0uLL;
        v217 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v217)
        {
          v217 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v377[1] = &off_2A20433C0;
        v218 = operator new(0x30uLL);
        v219 = v401[1];
        *v218 = v401[0];
        *(v218 + 1) = v219;
        v220 = v402;
        *(v218 + 4) = v402;
        if (v220)
        {
          v221 = (v220 - 16);
          if (*(v218 + 3))
          {
            v221 = *(v218 + 3);
          }

          atomic_fetch_add_explicit(v221, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v218 + 10);
        v377[0] = v218;
        atomic_fetch_add_explicit(v218 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v217 + 96), v377, &v342);
        v395[1] = v342;
        v342 = 0uLL;
        v222 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v222)
        {
          v222 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v376[1] = &off_2A20438C8;
        v223 = operator new(0x30uLL);
        v224 = v361[1];
        *v223 = v361[0];
        *(v223 + 1) = v224;
        v225 = v362;
        *(v223 + 4) = v362;
        if (v225)
        {
          v226 = (v225 - 16);
          if (*(v223 + 3))
          {
            v226 = *(v223 + 3);
          }

          atomic_fetch_add_explicit(v226, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v223 + 10);
        v376[0] = v223;
        atomic_fetch_add_explicit(v223 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v222 + 104), v376, &v341);
        v395[2] = v341;
        v341 = 0uLL;
        v227 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v227)
        {
          v227 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v375[1] = &off_2A2043D18;
        v228 = operator new(0x30uLL);
        v229 = v399[1];
        *v228 = v399[0];
        *(v228 + 1) = v229;
        v230 = v400;
        *(v228 + 4) = v400;
        if (v230)
        {
          v231 = (v230 - 16);
          if (*(v228 + 3))
          {
            v231 = *(v228 + 3);
          }

          atomic_fetch_add_explicit(v231, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v228 + 10);
        v375[0] = v228;
        atomic_fetch_add_explicit(v228 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v227 + 112), v375, &v340);
        v395[3] = v340;
        v340 = 0uLL;
        v232 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v232)
        {
          v232 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v374[1] = &off_2A2043D18;
        v233 = operator new(0x30uLL);
        v234 = v359[1];
        *v233 = v359[0];
        *(v233 + 1) = v234;
        v235 = v360;
        *(v233 + 4) = v360;
        if (v235)
        {
          v236 = (v235 - 16);
          if (*(v233 + 3))
          {
            v236 = *(v233 + 3);
          }

          atomic_fetch_add_explicit(v236, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v233 + 10);
        v374[0] = v233;
        atomic_fetch_add_explicit(v233 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v232 + 120), v374, &v339);
        v395[4] = v339;
        v339 = 0uLL;
        v237 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v237)
        {
          v237 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v373[1] = &off_2A20474B8;
        v238 = operator new(0x30uLL);
        v239 = v397[1];
        *v238 = v397[0];
        *(v238 + 1) = v239;
        v240 = v398;
        *(v238 + 4) = v398;
        if (v240)
        {
          v241 = (v240 - 16);
          if (*(v238 + 3))
          {
            v241 = *(v238 + 3);
          }

          atomic_fetch_add_explicit(v241, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v238 + 10);
        v373[0] = v238;
        atomic_fetch_add_explicit(v238 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v237 + 128), v373, &v338);
        v395[5] = v338;
        v338 = 0uLL;
        v242 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v242)
        {
          v242 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v372[1] = &off_2A20474B8;
        v243 = operator new(0x30uLL);
        v244 = v357[1];
        *v243 = v357[0];
        *(v243 + 1) = v244;
        v245 = v358;
        *(v243 + 4) = v358;
        if (v245)
        {
          v246 = (v245 - 16);
          if (*(v243 + 3))
          {
            v246 = *(v243 + 3);
          }

          atomic_fetch_add_explicit(v246, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v243 + 10);
        v372[0] = v243;
        atomic_fetch_add_explicit(v243 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v242 + 136), v372, &v337);
        v395[6] = v337;
        v337 = 0uLL;
        *&v346 = 0;
        v345 = 0uLL;
        sub_29AD9CF88(&v345, lpsrc, &v396, 0xDuLL);
        v247 = 25;
        while (1)
        {
          v248 = lpsrc[v247];
          if (v248)
          {
            sub_29A014BEC(v248);
          }

          v247 -= 2;
          if (v247 == -1)
          {
            if (*(&v337 + 1))
            {
              sub_29A014BEC(*(&v337 + 1));
            }

            sub_29A186B14(v372);
            if (*(&v338 + 1))
            {
              sub_29A014BEC(*(&v338 + 1));
            }

            sub_29A186B14(v373);
            if (*(&v339 + 1))
            {
              sub_29A014BEC(*(&v339 + 1));
            }

            sub_29A186B14(v374);
            if (*(&v340 + 1))
            {
              sub_29A014BEC(*(&v340 + 1));
            }

            sub_29A186B14(v375);
            if (*(&v341 + 1))
            {
              sub_29A014BEC(*(&v341 + 1));
            }

            sub_29A186B14(v376);
            if (*(&v342 + 1))
            {
              sub_29A014BEC(*(&v342 + 1));
            }

            sub_29A186B14(v377);
            if (*(&v343 + 1))
            {
              sub_29A014BEC(*(&v343 + 1));
            }

            sub_29A186B14(v378);
            if (*(&v344 + 1))
            {
              sub_29A014BEC(*(&v344 + 1));
            }

            sub_29A186B14(v379);
            if (*(&v381 + 1))
            {
              sub_29A014BEC(*(&v381 + 1));
            }

            sub_29A186B14(v380);
            if (*(&v383 + 1))
            {
              sub_29A014BEC(*(&v383 + 1));
            }

            sub_29A186B14(&v382);
            if (*(&v385 + 1))
            {
              sub_29A014BEC(*(&v385 + 1));
            }

            sub_29A186B14(&v384);
            if (*(&v387 + 1))
            {
              sub_29A014BEC(*(&v387 + 1));
            }

            sub_29A186B14(&v386);
            if (*(&v335 + 1))
            {
              sub_29A014BEC(*(&v335 + 1));
            }

            sub_29A186B14(&v388);
            pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v330, (a1 + 328), &v345);
            if (UseShadows)
            {
              v249 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
              if (!v249)
              {
                v249 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
              }

              *(&v387 + 1) = &off_2A20438C8;
              v250 = operator new(0x30uLL);
              v251 = v355[1];
              *v250 = v355[0];
              *(v250 + 1) = v251;
              v252 = v356;
              *(v250 + 4) = v356;
              if (v252)
              {
                v253 = (v252 - 16);
                if (*(v250 + 3))
                {
                  v253 = *(v250 + 3);
                }

                atomic_fetch_add_explicit(v253, 1uLL, memory_order_relaxed);
              }

              atomic_store(0, v250 + 10);
              *&v387 = v250;
              atomic_fetch_add_explicit(v250 + 10, 1u, memory_order_relaxed);
              sub_29AD9CD3C((v249 + 152), &v387, &v388);
              *lpsrc = v388;
              v388 = 0uLL;
              v254 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
              if (!v254)
              {
                v254 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
              }

              *(&v385 + 1) = &off_2A20438C8;
              v255 = operator new(0x30uLL);
              v256 = v353[1];
              *v255 = v353[0];
              *(v255 + 1) = v256;
              v257 = v354;
              *(v255 + 4) = v354;
              if (v257)
              {
                v258 = (v257 - 16);
                if (*(v255 + 3))
                {
                  v258 = *(v255 + 3);
                }

                atomic_fetch_add_explicit(v258, 1uLL, memory_order_relaxed);
              }

              atomic_store(0, v255 + 10);
              *&v385 = v255;
              atomic_fetch_add_explicit(v255 + 10, 1u, memory_order_relaxed);
              sub_29AD9CD3C((v254 + 160), &v385, &v386);
              v390 = v386;
              v386 = 0uLL;
              v259 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
              if (!v259)
              {
                v259 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
              }

              *(&v383 + 1) = &off_2A2042F70;
              v260 = operator new(0x30uLL);
              v261 = v351[1];
              *v260 = v351[0];
              *(v260 + 1) = v261;
              v262 = v352;
              *(v260 + 4) = v352;
              if (v262)
              {
                v263 = (v262 - 16);
                if (*(v260 + 3))
                {
                  v263 = *(v260 + 3);
                }

                atomic_fetch_add_explicit(v263, 1uLL, memory_order_relaxed);
              }

              atomic_store(0, v260 + 10);
              *&v383 = v260;
              atomic_fetch_add_explicit(v260 + 10, 1u, memory_order_relaxed);
              sub_29AD9CD3C((v259 + 168), &v383, &v384);
              v391 = v384;
              v384 = 0uLL;
              v264 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
              if (!v264)
              {
                v264 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
              }

              *(&v381 + 1) = &off_2A2042F70;
              v265 = operator new(0x30uLL);
              v266 = v349[1];
              *v265 = v349[0];
              *(v265 + 1) = v266;
              v267 = v350;
              *(v265 + 4) = v350;
              if (v267)
              {
                v268 = (v267 - 16);
                if (*(v265 + 3))
                {
                  v268 = *(v265 + 3);
                }

                atomic_fetch_add_explicit(v268, 1uLL, memory_order_relaxed);
              }

              atomic_store(0, v265 + 10);
              *&v381 = v265;
              atomic_fetch_add_explicit(v265 + 10, 1u, memory_order_relaxed);
              sub_29AD9CD3C((v264 + 176), &v381, &v382);
              v392 = v382;
              v382 = 0uLL;
              v336 = 0;
              v335 = 0uLL;
              sub_29AD9CF88(&v335, lpsrc, &v393, 4uLL);
              for (k = 7; k != -1; k -= 2)
              {
                v270 = lpsrc[k];
                if (v270)
                {
                  sub_29A014BEC(v270);
                }
              }

              if (*(&v382 + 1))
              {
                sub_29A014BEC(*(&v382 + 1));
              }

              sub_29A186B14(&v381);
              if (*(&v384 + 1))
              {
                sub_29A014BEC(*(&v384 + 1));
              }

              sub_29A186B14(&v383);
              if (*(&v386 + 1))
              {
                sub_29A014BEC(*(&v386 + 1));
              }

              sub_29A186B14(&v385);
              if (*(&v388 + 1))
              {
                sub_29A014BEC(*(&v388 + 1));
              }

              sub_29A186B14(&v387);
              pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v330, v114, &v335);
              lpsrc[0] = &v335;
              sub_29A0176E4(lpsrc);
            }

            lpsrc[0] = &v345;
            sub_29A0176E4(lpsrc);
            pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
          }
        }
      }

      v334 = (a1 + 360);
      if (!*(a1 + 360))
      {
        v345 = 0uLL;
        *&v346 = 0;
        v271 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v271)
        {
          v271 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(lpsrc[0]) = 16;
        lpsrc[1] = 1;
        v272 = *(&v345 + 1);
        if (*(&v345 + 1) >= v346)
        {
          v275 = sub_29AD9CC10(&v345, v271 + 6, lpsrc);
        }

        else
        {
          v273 = lpsrc[0];
          v274 = *(v271 + 6);
          **(&v345 + 1) = v274;
          if ((v274 & 7) != 0 && (atomic_fetch_add_explicit((v274 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v272 &= 0xFFFFFFFFFFFFFFF8;
          }

          v272[1] = v273;
          v272[2] = 1;
          v275 = (v272 + 3);
        }

        *(&v345 + 1) = v275;
        v276 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v276)
        {
          v276 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(lpsrc[0]) = 16;
        lpsrc[1] = 1;
        v277 = *(&v345 + 1);
        if (*(&v345 + 1) >= v346)
        {
          v280 = sub_29AD9CC10(&v345, v276 + 7, lpsrc);
        }

        else
        {
          v278 = lpsrc[0];
          v279 = *(v276 + 7);
          **(&v345 + 1) = v279;
          if ((v279 & 7) != 0 && (atomic_fetch_add_explicit((v279 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v277 &= 0xFFFFFFFFFFFFFFF8;
          }

          v277[1] = v278;
          v277[2] = 1;
          v280 = (v277 + 3);
        }

        *(&v345 + 1) = v280;
        v281 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v281)
        {
          v281 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(lpsrc[0]) = 16;
        lpsrc[1] = 1;
        v282 = *(&v345 + 1);
        if (*(&v345 + 1) >= v346)
        {
          v285 = sub_29AD9CC10(&v345, v281 + 8, lpsrc);
        }

        else
        {
          v283 = lpsrc[0];
          v284 = *(v281 + 8);
          **(&v345 + 1) = v284;
          if ((v284 & 7) != 0 && (atomic_fetch_add_explicit((v284 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v282 &= 0xFFFFFFFFFFFFFFF8;
          }

          v282[1] = v283;
          v282[2] = 1;
          v285 = (v282 + 3);
        }

        *(&v345 + 1) = v285;
        v286 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v286)
        {
          v286 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(lpsrc[0]) = 16;
        lpsrc[1] = 1;
        v287 = *(&v345 + 1);
        if (*(&v345 + 1) >= v346)
        {
          v290 = sub_29AD9CC10(&v345, v286 + 24, lpsrc);
        }

        else
        {
          v288 = lpsrc[0];
          v289 = *(v286 + 24);
          **(&v345 + 1) = v289;
          if ((v289 & 7) != 0 && (atomic_fetch_add_explicit((v289 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v287 &= 0xFFFFFFFFFFFFFFF8;
          }

          v287[1] = v288;
          v287[2] = 1;
          v290 = (v287 + 3);
        }

        *(&v345 + 1) = v290;
        v291 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v291)
        {
          v291 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(lpsrc[0]) = 16;
        lpsrc[1] = 1;
        v292 = *(&v345 + 1);
        if (*(&v345 + 1) >= v346)
        {
          v295 = sub_29AD9CC10(&v345, v291 + 25, lpsrc);
        }

        else
        {
          v293 = lpsrc[0];
          v294 = *(v291 + 25);
          **(&v345 + 1) = v294;
          if ((v294 & 7) != 0 && (atomic_fetch_add_explicit((v294 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v292 &= 0xFFFFFFFFFFFFFFF8;
          }

          v292[1] = v293;
          v292[2] = 1;
          v295 = (v292 + 3);
        }

        *(&v345 + 1) = v295;
        v296 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v296)
        {
          v296 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(lpsrc[0]) = 13;
        lpsrc[1] = 1;
        v297 = *(&v345 + 1);
        if (*(&v345 + 1) >= v346)
        {
          v300 = sub_29AD9CC10(&v345, v296 + 26, lpsrc);
        }

        else
        {
          v298 = lpsrc[0];
          v299 = *(v296 + 26);
          **(&v345 + 1) = v299;
          if ((v299 & 7) != 0 && (atomic_fetch_add_explicit((v299 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v297 &= 0xFFFFFFFFFFFFFFF8;
          }

          v297[1] = v298;
          v297[2] = 1;
          v300 = (v297 + 3);
        }

        *(&v345 + 1) = v300;
        v301 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v301)
        {
          v301 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateUniformBufferArrayRange(v5, v301, &v345, 4u, lpsrc);
        v302 = *lpsrc;
        lpsrc[1] = 0;
        lpsrc[0] = 0;
        v303 = *(a1 + 368);
        *v334 = v302;
        if (v303)
        {
          sub_29A014BEC(v303);
          if (lpsrc[1])
          {
            sub_29A014BEC(lpsrc[1]);
          }
        }

        v304 = *(a1 + 120);
        pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v369, "material");
        v305 = *(a1 + 360);
        v306 = *(a1 + 368);
        if (v306)
        {
          atomic_fetch_add_explicit(&v306->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        lpsrc[0] = -4294967287;
        lpsrc[1] = *&v369[0];
        if ((v369[0] & 7) != 0 && (atomic_fetch_add_explicit((*&v369[0] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          lpsrc[1] = (lpsrc[1] & 0xFFFFFFFFFFFFFFF8);
        }

        v390 = 0uLL;
        *&v391 = v305;
        *(&v391 + 1) = v306;
        if (v306)
        {
          atomic_fetch_add_explicit(&v306->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        LOWORD(v392) = 1;
        *(&v392 + 1) = 0;
        LOBYTE(v393) = 1;
        pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::AddBufferBinding(v304, lpsrc);
        if (*(&v391 + 1))
        {
          sub_29A014BEC(*(&v391 + 1));
        }

        if (*(&v390 + 1))
        {
          sub_29A014BEC(*(&v390 + 1));
        }

        if ((lpsrc[1] & 7) != 0)
        {
          atomic_fetch_add_explicit((lpsrc[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v306)
        {
          sub_29A014BEC(v306);
        }

        if ((v369[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*&v369[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        lpsrc[0] = &v345;
        sub_29ABC6FA0(lpsrc);
      }

      if (*(a1 + 378) == 1)
      {
        v307 = sub_29AE99CDC(&v371);
        Material = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetMaterial(v307);
        v309 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v309)
        {
          v309 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v310 = pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::GetAmbient(Material);
        *(&v407[0] + 1) = &off_2A2042A68 + 2;
        v311 = operator new(0x14uLL);
        *v311 = *v310;
        atomic_store(0, v311 + 4);
        *&v407[0] = v311;
        atomic_fetch_add_explicit(v311 + 4, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v309 + 48), v407, v369);
        *lpsrc = v369[0];
        v369[0] = 0uLL;
        v312 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v312)
        {
          v312 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v313 = pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::GetDiffuse(Material);
        *(&v405[0] + 1) = &off_2A2042A68 + 2;
        v314 = operator new(0x14uLL);
        *v314 = *v313;
        atomic_store(0, v314 + 4);
        *&v405[0] = v314;
        atomic_fetch_add_explicit(v314 + 4, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v312 + 56), v405, v367);
        v390 = v367[0];
        v367[0] = 0uLL;
        v315 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v315)
        {
          v315 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v316 = pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::GetSpecular(Material);
        *(&v403[0] + 1) = &off_2A2042A68 + 2;
        v317 = operator new(0x14uLL);
        *v317 = *v316;
        atomic_store(0, v317 + 4);
        *&v403[0] = v317;
        atomic_fetch_add_explicit(v317 + 4, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v315 + 64), v403, v365);
        v391 = v365[0];
        v365[0] = 0uLL;
        v318 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v318)
        {
          v318 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        Emission = pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::GetEmission(Material);
        *(&v401[0] + 1) = &off_2A2042A68 + 2;
        v320 = operator new(0x14uLL);
        *v320 = *Emission;
        atomic_store(0, v320 + 4);
        *&v401[0] = v320;
        atomic_fetch_add_explicit(v320 + 4, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v318 + 192), v401, v363);
        v392 = v363[0];
        v363[0] = 0uLL;
        v321 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v321)
        {
          v321 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v322 = sub_29AE99CDC(&v371);
        SceneAmbient = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetSceneAmbient(v322);
        *(&v399[0] + 1) = &off_2A2042A68 + 2;
        v324 = operator new(0x14uLL);
        *v324 = *SceneAmbient;
        atomic_store(0, v324 + 4);
        *&v399[0] = v324;
        atomic_fetch_add_explicit(v324 + 4, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v321 + 200), v399, v361);
        v393 = v361[0];
        v361[0] = 0uLL;
        v325 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v325)
        {
          v325 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        Shininess = pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::GetShininess(Material);
        *(&v397[0] + 1) = &unk_2A2044C63;
        *v397 = Shininess;
        sub_29AD9CD3C((v325 + 208), v397, v359);
        v394 = v359[0];
        v359[0] = 0uLL;
        *&v346 = 0;
        v345 = 0uLL;
        sub_29AD9CF88(&v345, lpsrc, v395, 6uLL);
        for (m = 11; m != -1; m -= 2)
        {
          v328 = lpsrc[m];
          if (v328)
          {
            sub_29A014BEC(v328);
          }
        }

        if (*(&v359[0] + 1))
        {
          sub_29A014BEC(*(&v359[0] + 1));
        }

        sub_29A186B14(v397);
        v6 = v332;
        if (*(&v361[0] + 1))
        {
          sub_29A014BEC(*(&v361[0] + 1));
        }

        sub_29A186B14(v399);
        if (*(&v363[0] + 1))
        {
          sub_29A014BEC(*(&v363[0] + 1));
        }

        sub_29A186B14(v401);
        if (*(&v365[0] + 1))
        {
          sub_29A014BEC(*(&v365[0] + 1));
        }

        sub_29A186B14(v403);
        if (*(&v367[0] + 1))
        {
          sub_29A014BEC(*(&v367[0] + 1));
        }

        sub_29A186B14(v405);
        if (*(&v369[0] + 1))
        {
          sub_29A014BEC(*(&v369[0] + 1));
        }

        sub_29A186B14(v407);
        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v330, v334, &v345);
        lpsrc[0] = &v345;
        sub_29A0176E4(lpsrc);
      }

      *(a1 + 376) = 0;
      *(a1 + 378) = 0;
    }

    if (v6)
    {
      sub_29A014BEC(v6);
    }
  }

  return sub_29AE9C770(&v371);
}