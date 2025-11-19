uint64_t sub_29AFB2158(uint64_t a1, uint64_t a2, uint64_t a3)
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

  sub_29AFB21FC(a1 + 32, a3);
  return a1;
}

void sub_29AFB21FC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = atomic_load((a2 + 40));
  atomic_store(v4, (a1 + 40));
}

pxrInternal__aapl__pxrReserved__::UsdObject **sub_29AFB2248(pxrInternal__aapl__pxrReserved__::UsdObject **result, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  if (*a2 != *(a2 + 1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(*result, a2, &v2);
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  return result;
}

void sub_29AFB2460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_29A57F434(&a10);
  v17 = a16;
  if (a16)
  {
    if (atomic_fetch_add_explicit((a16 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v17 + 8))(v17);
    }
  }

  _Unwind_Resume(a1);
}

void sub_29AFB24C0(void *a1, uint64_t a2)
{
  sub_29ACCC748(&v5, a2);
  v3 = a1[1];
  v4 = v5;
  *&v5 = *a1;
  *(&v5 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_29A014BEC(v3);
  }
}

void sub_29AFB2508(void *a1, uint64_t a2)
{
  sub_29AFB27E8(&v5, a2);
  v3 = a1[1];
  v4 = v5;
  *&v5 = *a1;
  *(&v5 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_29A014BEC(v3);
  }
}

uint64_t sub_29AFB2550(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_29A7E12D8(a1);
    if (a4 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

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

    sub_29A012BFC(a1, v10);
    result = sub_29AFB26C0(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v12 >> 3) < a4)
  {
    sub_29AFB2754(&v16, a2, a2 + v12, v8);
    result = sub_29AFB26C0(a1, (a2 + v12), a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = result;
    return result;
  }

  result = sub_29AFB2754(&v17, a2, a3, v8);
  v14 = v13;
  v15 = *(a1 + 8);
  if (v15 != v13)
  {
    do
    {
      v15 -= 24;
      result = sub_29A7E1278(a1, v15);
    }

    while (v15 != v14);
  }

  *(a1 + 8) = v14;
  return result;
}

uint64_t sub_29AFB26C0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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
      sub_29A7E1474(a1, v4, v6);
      v6 += 3;
      v4 = v12 + 24;
      v12 += 24;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29A7E163C(v9);
  return v4;
}

uint64_t sub_29AFB2754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    sub_29A2258F0((a4 + 8), (v5 + 8));
    sub_29A225948((a4 + 12), (v5 + 12));
    sub_29A2258F0((a4 + 16), (v5 + 16));
    sub_29A225948((a4 + 20), (v5 + 20));
    a4 += 24;
    v5 += 24;
  }

  while (v5 != v6);
  return v6;
}

void *sub_29AFB27E8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A80A8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  v6 = 0;
  sub_29AFB292C(&v6, 0);
  return a1;
}

void sub_29AFB285C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AFB292C(va, 0);
  _Unwind_Resume(a1);
}

void sub_29AFB2878(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFB28A8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A80F8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AFB28E8(uint64_t a1, void **a2)
{
  if (a2)
  {
    v3 = a2;
    sub_29A7E11F0(&v3);
    operator delete(a2);
  }
}

void sub_29AFB292C(void ***a1, void **a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2;
    sub_29A7E11F0(&v3);
    operator delete(v2);
  }
}

uint64_t sub_29AFB2970()
{
  v1 = nullsub_1753;
  return sub_29AFBAD7C(&var8);
}

pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter *pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::UsdImagingDrawModeAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter *this)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_2A20A8120;
  *(this + 1) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = 1065353216;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 28) = 0;
  v2 = (this + 112);
  *(this + 26) = 1065353216;
  *(this + 29) = 0;
  *(this + 30) = 0;
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry>::_instance);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v8, "GeomModelAPI");
  v4 = sub_29A16039C((v3 + 72), &v8);
  if (v4)
  {
    v5 = v4[3];
  }

  else
  {
    v5 = 0;
  }

  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v5)
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v6)
    {
      v6 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    sub_29AFB2B4C(v5, v6 + 80, v2);
  }

  return this;
}

void sub_29AFB2B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29AFBAFDC(v12);
  sub_29A58D230(v11);
  v14 = *(v10 + 16);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  _Unwind_Resume(a1);
}

void *sub_29AFB2B4C(uint64_t a1, void *a2, uint64_t (**a3)(void, uint64_t))
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v6)
  {
    v6 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return sub_29AFBC750(a1, a2, (v6 + 88), a3);
}

void sub_29AFB3538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if ((a26 & 7) != 0)
  {
    atomic_fetch_add_explicit((a26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8((v26 - 104));
  sub_29A1DCEA8((v26 - 96));
  _Unwind_Resume(a1);
}

_DWORD *sub_29AFB36A0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29AFB36F8(pxrInternal__aapl__pxrReserved__::UsdPrim *a1)
{
  v26 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v17, a1);
  v19 = 0;
  v17 = &unk_2A205FFB0;
  if (v18 && (*(v18 + 57) & 8) == 0 && off_2A205FFD0(&v17))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v2)
    {
      v2 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v3 = *(v2 + 74);
    v20 = v3;
    if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 &= 0xFFFFFFFFFFFFFFF8;
    }

    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v4)
    {
      v4 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v5 = *(v4 + 76);
    v21 = v5;
    if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 &= 0xFFFFFFFFFFFFFFF8;
    }

    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v6)
    {
      v6 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v7 = *(v6 + 78);
    v22 = v7;
    if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 &= 0xFFFFFFFFFFFFFFF8;
    }

    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v8)
    {
      v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v9 = *(v8 + 73);
    v23 = v9;
    if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 &= 0xFFFFFFFFFFFFFFF8;
    }

    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v10)
    {
      v10 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v11 = *(v10 + 75);
    v24 = v11;
    if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 &= 0xFFFFFFFFFFFFFFF8;
    }

    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v12)
    {
      v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v13 = *(v12 + 77);
    v25 = v13;
    if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 &= 0xFFFFFFFFFFFFFFF8;
    }

    pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&v16);
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a1, &v20, v15);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::SdfAssetPath>();
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::~UsdGeomModelAPI(&v17);
  return 0;
}

void sub_29AFB3AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::~UsdGeomModelAPI(va);
  _Unwind_Resume(a1);
}

void sub_29AFB3B48(void *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  JUMPOUT(0x29AFB3B40);
}

void *sub_29AFB3B58@<X0>(void *result@<X0>, atomic_uint **a2@<X8>)
{
  v3 = 0;
  if (result > 7)
  {
    switch(result)
    {
      case 8:
        result = atomic_load(qword_2A1751E10);
        if (!result)
        {
          result = sub_29AFBBA40();
        }

        v4 = result[13];
        break;
      case 0x10:
        result = atomic_load(qword_2A1751E10);
        if (!result)
        {
          result = sub_29AFBBA40();
        }

        v4 = result[14];
        break;
      case 0x20:
        result = atomic_load(qword_2A1751E10);
        if (!result)
        {
          result = sub_29AFBBA40();
        }

        v4 = result[15];
        break;
      default:
        goto LABEL_28;
    }
  }

  else
  {
    switch(result)
    {
      case 1:
        result = atomic_load(qword_2A1751E10);
        if (!result)
        {
          result = sub_29AFBBA40();
        }

        v4 = result[10];
        break;
      case 2:
        result = atomic_load(qword_2A1751E10);
        if (!result)
        {
          result = sub_29AFBBA40();
        }

        v4 = result[11];
        break;
      case 4:
        result = atomic_load(qword_2A1751E10);
        if (!result)
        {
          result = sub_29AFBBA40();
        }

        v4 = result[12];
        break;
      default:
LABEL_28:
        *a2 = v3;
        return result;
    }
  }

  *a2 = v4;
  if ((v4 & 7) != 0)
  {
    v3 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_IsMaterialPath(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(a2);
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v2 &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = atomic_load(qword_2A1751E10);
  if (!v3)
  {
    v3 = sub_29AFBBA40();
  }

  if ((v2 ^ *(v3 + 80)) < 8)
  {
    goto LABEL_19;
  }

  v4 = atomic_load(qword_2A1751E10);
  if (!v4)
  {
    v4 = sub_29AFBBA40();
  }

  if ((v2 ^ *(v4 + 88)) < 8)
  {
    goto LABEL_19;
  }

  v5 = atomic_load(qword_2A1751E10);
  if (!v5)
  {
    v5 = sub_29AFBBA40();
  }

  if ((v2 ^ *(v5 + 96)) < 8)
  {
    goto LABEL_19;
  }

  v6 = atomic_load(qword_2A1751E10);
  if (!v6)
  {
    v6 = sub_29AFBBA40();
  }

  if ((v2 ^ *(v6 + 104)) < 8)
  {
    goto LABEL_19;
  }

  v7 = atomic_load(qword_2A1751E10);
  if (!v7)
  {
    v7 = sub_29AFBBA40();
  }

  if ((v2 ^ *(v7 + 112)) >= 8)
  {
    v9 = atomic_load(qword_2A1751E10);
    if (!v9)
    {
      v9 = sub_29AFBBA40();
    }

    result = (v2 ^ *(v9 + 120)) < 8;
  }

  else
  {
LABEL_19:
    result = 1;
  }

  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::ProcessPrimResync(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_IsMaterialPath(this, a2);
  if ((result & 1) == 0)
  {
    (*(*this + 144))(this, a2, a3);

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::Repopulate(a3, a2);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::ProcessPrimRemoval(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_IsMaterialPath(this, a2);
  if ((result & 1) == 0)
  {
    v7 = sub_29A2F4F50(this + 9, a2);
    if (v7)
    {
      v8 = v7;
      for (i = v7[5]; i; i = *i)
      {
        sub_29A1E21F4(&v11, (i + 16));
        sub_29A1E2240(&v12, (i + 20));
        v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        if (!v10)
        {
          v10 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
        }

        sub_29AFB3F6C(a3, v10 + 19, &v11);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
        sub_29A1DE3A4(&v11);
      }

      sub_29AFBCA54(this + 9, v8);
    }

    sub_29AFBCAB0(this + 4, a2);
    return sub_29AFB4044(a3, a2);
  }

  return result;
}

void sub_29AFB3F58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AFB3F6C(pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a1, uint64_t *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v5 = *a2;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  sub_29A1E21F4(&v9, a3);
  sub_29A1E2240(&v10, a3 + 1);
  sub_29AFBB0A4(a1 + 64, &v8);
  sub_29A1E28B4(a1 + 136, a3);
  pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::_RemoveDependencies(a1, a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
  result = sub_29A1DE3A4(&v9);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t sub_29AFB4044(pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29A1E28B4(a1 + 40, a2);
  sub_29A1E28B4(a1 + 136, a2);

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::_RemoveDependencies(a1, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v3[0] = "usdImaging/drawModeAdapter.cpp";
  v3[1] = "_RemovePrim";
  v3[2] = 391;
  v3[3] = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_RemovePrim(const SdfPath &, UsdImagingIndexProxy *)";
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "_RemovePrim called on draw mode adapter!");
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::MarkDirty(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t a4, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a5)
{
  if (pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_IsMaterialPath(this, a3))
  {

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkSprimDirty(a5, a3, a4);
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkRprimDirty(a5, a3, a4);
    if ((a4 & 0x8168) != 0)
    {

      return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::RequestUpdateForTime(a5, a3);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::MarkTransformDirty(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_IsMaterialPath(this, a3);
  if ((result & 1) == 0)
  {

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkRprimDirty(a4, a3, 512);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::MarkVisibilityDirty(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_IsMaterialPath(this, a3);
  if ((result & 1) == 0)
  {

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkRprimDirty(a4, a3, 1024);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::MarkMaterialDirty(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  if (pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_IsMaterialPath(this, a3))
  {

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkSprimDirty(a4, a3, 8);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkRprimDirty(a4, a3, 128);

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::RequestUpdateForTime(a4, a3);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_HasVaryingExtent(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v7 = 3;
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v9);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10);
  v11 = 0;
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v3)
  {
    v3 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, (v3 + 296), &v5);
  v7 = v5;
  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8, v4);
  }

  v8 = v6;
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29AFB44EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A5888DC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_ComputeGeometryData(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, void *a4, pxrInternal__aapl__pxrReserved__::VtValue *a5, pxrInternal__aapl__pxrReserved__::VtValue *a6, pxrInternal__aapl__pxrReserved__::GfRange3d *a7, pxrInternal__aapl__pxrReserved__::VtValue *a8)
{
  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v16)
  {
    v16 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v16 + 94) ^ *a4) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_HasVaryingExtent(v16, a2);
  }

  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v17)
  {
    v17 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v17 + 8) ^ *a4) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_HasVaryingExtent(v17, a2);
  }

  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v18)
  {
    v18 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v18 + 11) ^ *a4) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v26, a2);
    v28 = 0;
    v26 = &unk_2A205FFB0;
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v19)
    {
      v19 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v20 = *(v19 + 26);
    v25 = v20;
    if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v20 & 0xFFFFFFFFFFFFFFF8;
    }

    if (v27 && (*(v27 + 57) & 8) == 0 && v26[4](&v26))
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::GetModelCardGeometryAttr(&v26, v29);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v21)
    {
      v21 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    if ((*(v21 + 47) ^ v25) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_GenerateCardsFromTextureGeometry(a1, a5, a6, a8, a7, a2);
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_HasVaryingExtent(v21, a2);
  }

  v29[0] = "usdImaging/drawModeAdapter.cpp";
  v29[1] = "_ComputeGeometryData";
  v30 = 545;
  v31 = "void pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_ComputeGeometryData(const UsdPrim &, const SdfPath &, UsdTimeCode, const TfToken &, VtValue *, VtValue *, GfRange3d *, VtValue *) const";
  LOBYTE(v32) = 0;
  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
  v23 = *a4 & 0xFFFFFFFFFFFFFFF8;
  if (v23)
  {
    v24 = (v23 + 16);
    if (*(v23 + 39) < 0)
    {
      v24 = *v24;
    }
  }

  else
  {
    v24 = "";
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v29, 1, "<%s> Unexpected draw mode %s", Text, v24);
}

void sub_29AFB4A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::~UsdGeomModelAPI(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_ComputeExtent(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, uint64_t a2@<X8>)
{
  v37[58] = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v34, "usdImaging", "GfRange3d pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_ComputeExtent(const UsdPrim &, const UsdTimeCode &) const");
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v6)
  {
    v6 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v7 = *(v6 + 29);
  v35[0] = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35[0] = (v35[0] & 0xFFFFFFFFFFFFFFF8);
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v9 = *(v8 + 111);
  v35[1] = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35[1] = (v35[1] & 0xFFFFFFFFFFFFFFF8);
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v10)
  {
    v10 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v11 = *(v10 + 119);
  v36 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  memset(v33, 0, sizeof(v33));
  sub_29A12EF7C(v33, v35, v37, 3uLL);
  v13 = 2;
  while (1)
  {
    v14 = v35[v13];
    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (--v13 == -1)
    {
      if (sub_29AF91744(a1, v12))
      {
        v31 = 0;
        v32 = 0;
        v30 = 0;
        std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
      }

      *a2 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
      *(a2 + 16) = xmmword_29B43C5A0;
      *(a2 + 32) = vdupq_n_s64(0xC7EFFFFFE0000000);
      v22 = 3;
      v23 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v24);
      v15 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v25);
      v26 = 0;
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      StaticTfType = pxrInternal__aapl__pxrReserved__::UsdGeomBoundable::_GetStaticTfType(v15);
      SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v17);
      if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a1, SchemaInfo))
      {
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v21, a1);
        v21[0] = &unk_2A205FB38;
        pxrInternal__aapl__pxrReserved__::UsdGeomBoundable::GetExtentAttr(v21, v35);
        v22 = v35[0];
        if (v23)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v23, v19);
        }

        v23 = v35[1];
        v35[1] = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v21, a1);
      v21[3] = 0;
      v21[0] = &unk_2A205FFB0;
      pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::GetExtentsHintAttr(v21, v35);
      v22 = v35[0];
      if (v23)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v23, v20);
      }

      v23 = v35[1];
      v35[1] = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_GenerateOriginGeometry(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter *this, pxrInternal__aapl__pxrReserved__::VtValue *a2, pxrInternal__aapl__pxrReserved__::VtValue *a3, const pxrInternal__aapl__pxrReserved__::GfRange3d *a4)
{
  v26[25] = *MEMORY[0x29EDCA608];
  sub_29A193124(v23, 4uLL);
  sub_29A1935CC(v23);
  v6 = v24;
  *v24 = 0;
  *(v6 + 8) = 0;
  sub_29A1935CC(v23);
  v7 = v24;
  *(v24 + 12) = 1065353216;
  *(v7 + 20) = 0;
  sub_29A1935CC(v23);
  v8 = v24;
  *(v24 + 24) = 0;
  *(v8 + 28) = 1065353216;
  sub_29A1935CC(v23);
  v9 = v24;
  *(v24 + 36) = 0;
  *(v9 + 40) = 0;
  *(v9 + 44) = 1065353216;
  v26[1] = &off_2A20433C0;
  v10 = operator new(0x30uLL);
  v11 = v23[1];
  *v10 = v23[0];
  *(v10 + 1) = v11;
  v12 = v24;
  *(v10 + 4) = v24;
  if (v12)
  {
    v13 = (v12 - 16);
    if (*(v10 + 3))
    {
      v13 = *(v10 + 3);
    }

    atomic_fetch_add_explicit(v13, 1uLL, memory_order_relaxed);
  }

  atomic_store(0, v10 + 10);
  v26[0] = v10;
  atomic_fetch_add_explicit(v10 + 10, 1u, memory_order_relaxed);
  sub_29A18606C(a3, v26);
  sub_29A186B14(v26);
  sub_29A19D6E4(v21, 1uLL);
  sub_29A19DBEC(v21);
  *v22 = 6;
  sub_29A19D6E4(v19, 6uLL);
  for (i = 0; i != 6; ++i)
  {
    v15 = dword_29B734D48[i];
    sub_29A19DBEC(v19);
    *(v20 + i * 4) = v15;
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v16)
  {
    v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v17)
  {
    v17 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v18)
  {
    v18 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::HdBasisCurvesTopology(v26, v16 + 352, v17 + 48, v18 + 576, v21, v19);
  v25[1] = &off_2A20A83E0;
  sub_29AFBCF8C(v25, v26);
  sub_29A18606C(a2, v25);
  sub_29A186B14(v25);
  pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::~HdBasisCurvesTopology(v26);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AFB5528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_GenerateBoundsGeometry(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter *this, pxrInternal__aapl__pxrReserved__::VtValue *a2, pxrInternal__aapl__pxrReserved__::VtValue *a3, const pxrInternal__aapl__pxrReserved__::GfRange3d *a4)
{
  v37[25] = *MEMORY[0x29EDCA608];
  v6 = *a4;
  v7 = *(a4 + 1);
  v8 = *(a4 + 2);
  v9 = *(a4 + 3);
  v10 = *(a4 + 4);
  v11 = *(a4 + 5);
  sub_29A193124(v34, 8uLL);
  v12 = 0;
  for (i = 0; i != 8; ++i)
  {
    sub_29A1935CC(v34);
    if (i)
    {
      v14 = v11;
    }

    else
    {
      v14 = v8;
    }

    v15 = v14;
    if ((i & 2) != 0)
    {
      v16 = v10;
    }

    else
    {
      v16 = v7;
    }

    v17 = v16;
    if (i >= 4)
    {
      v18 = v9;
    }

    else
    {
      v18 = v6;
    }

    v19 = v18;
    v20 = (v35 + v12);
    *v20 = v19;
    v20[1] = v17;
    v20[2] = v15;
    v12 += 12;
  }

  v37[1] = &off_2A20433C0;
  v21 = operator new(0x30uLL);
  v22 = v34[1];
  *v21 = v34[0];
  *(v21 + 1) = v22;
  v23 = v35;
  *(v21 + 4) = v35;
  if (v23)
  {
    v24 = (v23 - 16);
    if (*(v21 + 3))
    {
      v24 = *(v21 + 3);
    }

    atomic_fetch_add_explicit(v24, 1uLL, memory_order_relaxed);
  }

  atomic_store(0, v21 + 10);
  v37[0] = v21;
  atomic_fetch_add_explicit(v21 + 10, 1u, memory_order_relaxed);
  sub_29A18606C(a3, v37);
  sub_29A186B14(v37);
  sub_29A19D6E4(v32, 1uLL);
  sub_29A19DBEC(v32);
  *v33 = 24;
  sub_29A19D6E4(v30, 0x18uLL);
  for (j = 0; j != 24; ++j)
  {
    v26 = dword_29B734D60[j];
    sub_29A19DBEC(v30);
    *(v31 + j * 4) = v26;
  }

  v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v27)
  {
    v27 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v28)
  {
    v28 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v29)
  {
    v29 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::HdBasisCurvesTopology(v37, v27 + 352, v28 + 48, v29 + 576, v32, v30);
  v36[1] = &off_2A20A83E0;
  sub_29AFBCF8C(v36, v37);
  sub_29A18606C(a2, v36);
  sub_29A186B14(v36);
  pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::~HdBasisCurvesTopology(v37);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AFB5830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_GenerateCardsFromTextureGeometry(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter *this, pxrInternal__aapl__pxrReserved__::VtValue *a2, pxrInternal__aapl__pxrReserved__::VtValue *a3, pxrInternal__aapl__pxrReserved__::VtValue *a4, pxrInternal__aapl__pxrReserved__::GfRange3d *a5, const pxrInternal__aapl__pxrReserved__::UsdPrim *a6)
{
  v7[7] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v7, a6);
  v7[3] = 0;
  v7[0] = &unk_2A205FFB0;
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a6);
}

void sub_29AFB62F4(_Unwind_Exception *a1)
{
  v3 = *(v1 - 224);
  if (v3)
  {
    *(v1 - 216) = v3;
    operator delete(v3);
  }

  sub_29A1DCEA8((v1 - 200));
  pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::~UsdGeomModelAPI((v1 - 192));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_GenerateTextureCoordinates(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter *this, pxrInternal__aapl__pxrReserved__::VtValue *a2, char a3)
{
  v26[2] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1751E20, memory_order_acquire) & 1) == 0)
  {
    sub_29B2CD3F4();
  }

  if ((atomic_load_explicit(&qword_2A1751E28, memory_order_acquire) & 1) == 0)
  {
    sub_29B2CD458();
  }

  if ((atomic_load_explicit(&qword_2A1751E30, memory_order_acquire) & 1) == 0)
  {
    sub_29B2CD4C0();
  }

  if ((atomic_load_explicit(&qword_2A1751E38, memory_order_acquire) & 1) == 0)
  {
    sub_29B2CD52C();
  }

  __p = 0;
  v24 = 0;
  v25 = 0;
  if ((a3 & 9) != 0)
  {
    if (a3)
    {
      v5 = &xmmword_2A1751E40;
    }

    else
    {
      v5 = &unk_2A1751E60;
    }

    *&v21[0] = v5;
    sub_29A0A71C8(&__p, v21);
    if ((a3 & 8) != 0)
    {
      v6 = &xmmword_2A1751E40;
    }

    else
    {
      v6 = &unk_2A1751E60;
    }

    *&v21[0] = v6;
    sub_29A0A71C8(&__p, v21);
  }

  if ((a3 & 0x12) != 0)
  {
    if ((a3 & 2) != 0)
    {
      v7 = &xmmword_2A1751E40;
    }

    else
    {
      v7 = &unk_2A1751E60;
    }

    *&v21[0] = v7;
    sub_29A0A71C8(&__p, v21);
    if ((a3 & 0x10) != 0)
    {
      v8 = &xmmword_2A1751E40;
    }

    else
    {
      v8 = &unk_2A1751E60;
    }

    *&v21[0] = v8;
    sub_29A0A71C8(&__p, v21);
  }

  if ((a3 & 0x24) != 0)
  {
    v9 = &dword_2A1751E80;
    if ((a3 & 4) != 0)
    {
      v9 = &xmmword_2A1751E40;
    }

    *&v21[0] = v9;
    sub_29A0A71C8(&__p, v21);
    v10 = &unk_2A1751E60;
    if ((a3 & 0x20) != 0)
    {
      v10 = algn_2A1751EA0;
    }

    *&v21[0] = v10;
    sub_29A0A71C8(&__p, v21);
  }

  sub_29A190B18(v21, (v24 - __p) >> 1);
  if (v24 != __p)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      sub_29A190F50(v21);
      v13 = __p;
      v14 = (v22 + v11);
      v15 = *(__p + v12);
      v16 = v15[1];
      *v14 = *v15;
      v14[1] = v16;
      ++v12;
      v11 += 32;
    }

    while (v12 < (v24 - v13) >> 3);
  }

  v26[1] = &off_2A2043198;
  v17 = operator new(0x30uLL);
  v18 = v21[1];
  *v17 = v21[0];
  *(v17 + 1) = v18;
  v19 = v22;
  *(v17 + 4) = v22;
  if (v19)
  {
    v20 = (v19 - 16);
    if (*(v17 + 3))
    {
      v20 = *(v17 + 3);
    }

    atomic_fetch_add_explicit(v20, 1uLL, memory_order_relaxed);
  }

  atomic_store(0, v17 + 10);
  v26[0] = v17;
  atomic_fetch_add_explicit(v17 + 10, 1u, memory_order_relaxed);
  sub_29A18606C(a2, v26);
  sub_29A186B14(v26);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_GenerateCardsGeometry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, pxrInternal__aapl__pxrReserved__::UsdObject *a8)
{
  v13 = *MEMORY[0x29EDCA608];
  v12 = a5;
  v9 = 2 * ((a5 & 9) != 0) + 2 * ((a5 & 0x12) != 0) + 2 * ((a5 & 0x24) != 0);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens))
  {
    sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  sub_29A193124(&v11, (4 * v9));
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a8);
}

void sub_29AFB6F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  pxrInternal__aapl__pxrReserved__::HdMeshTopology::~HdMeshTopology(va);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_SanityCheckFaceSizes(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::GfRange3d *a3, char a4)
{
  v7 = *a3;
  v6 = *(a3 + 1);
  v9 = *(a3 + 2);
  v8 = *(a3 + 3);
  v10 = *(a3 + 4);
  v11 = *(a3 + 5);
  v12 = v6 == v10;
  if (v9 == v11)
  {
    v12 = 1;
  }

  if ((a4 & 9) != 0 && v12)
  {
    v21 = "usdImaging/drawModeAdapter.cpp";
    v22 = "_SanityCheckFaceSizes";
    v23 = 1220;
    v24 = "void pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_SanityCheckFaceSizes(const SdfPath &, const GfRange3d &, uint8_t) const";
    v25 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v21, "Cards rendering for <%s>: X+/X- faces have zero area.", v14, Text);
  }

  v15 = v7 == v8;
  if (v9 == v11)
  {
    v15 = 1;
  }

  if ((a4 & 0x12) != 0 && v15)
  {
    v21 = "usdImaging/drawModeAdapter.cpp";
    v22 = "_SanityCheckFaceSizes";
    v23 = 1225;
    v24 = "void pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_SanityCheckFaceSizes(const SdfPath &, const GfRange3d &, uint8_t) const";
    v25 = 0;
    v16 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v21, "Cards rendering for <%s>: Y+/Y- faces have zero area.", v17, v16);
  }

  v18 = v7 == v8;
  if (v6 == v10)
  {
    v18 = 1;
  }

  if ((a4 & 0x24) != 0 && v18)
  {
    v21 = "usdImaging/drawModeAdapter.cpp";
    v22 = "_SanityCheckFaceSizes";
    v23 = 1230;
    v24 = "void pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_SanityCheckFaceSizes(const SdfPath &, const GfRange3d &, uint8_t) const";
    v25 = 0;
    v19 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v21, "Cards rendering for <%s>: Z+/Z- faces have zero area.", v20, v19);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::GetTopology@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, unsigned int *a3@<X2>, pxrInternal__aapl__pxrReserved__::VtValue *a4@<X8>)
{
  v22 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v16, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::GetTopology(const UsdPrim &, const SdfPath &, UsdTimeCode) const");
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v9 = *(v8 + 29);
  v15 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v15 = v9 & 0xFFFFFFFFFFFFFFF8;
  }

  v10 = sub_29A328A44(a1 + 4, a3);
  if (v10 || (v12.i64[0] = "usdImaging/drawModeAdapter.cpp", v12.i64[1] = "GetTopology", *&v13 = 560, *(&v13 + 1) = "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::GetTopology(const UsdPrim &, const SdfPath &, UsdTimeCode) const", v14.i8[0] = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v12, "it != _drawModeMap.end()", 0) & 1) != 0))
  {
    sub_29A166F2C(&v15, v10 + 3);
  }

  *(a4 + 1) = 0;
  v21 = 0;
  v19 = 0;
  v12 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
  v13 = xmmword_29B43C5A0;
  v14 = vdupq_n_s64(0xC7EFFFFFE0000000);
  pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_ComputeGeometryData(a1, a2, a3, &v15, a4, v20, &v12, v18);
  sub_29A186B14(v18);
  result = sub_29A186B14(v20);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v16)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v17, v16);
  }

  return result;
}

void sub_29AFB73DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::GetExtent@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v24 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v13, "usdImaging", "virtual GfRange3d pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::GetExtent(const UsdPrim &, const SdfPath &, UsdTimeCode) const");
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v9 = *(v8 + 29);
  v12 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFFFF8;
  }

  v10 = sub_29A328A44(a1 + 4, a3);
  if (v10 || (v19 = "usdImaging/drawModeAdapter.cpp", v20 = "GetExtent", v21 = 586, v22 = "virtual GfRange3d pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::GetExtent(const UsdPrim &, const SdfPath &, UsdTimeCode) const", v23 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v19, "it != _drawModeMap.end()", 0) & 1) != 0))
  {
    sub_29A166F2C(&v12, v10 + 3);
  }

  v20 = 0;
  v18 = 0;
  v16 = 0;
  *a4 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
  *(a4 + 16) = xmmword_29B43C5A0;
  *(a4 + 32) = vdupq_n_s64(0xC7EFFFFFE0000000);
  pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_ComputeGeometryData(a1, a2, a3, &v12, &v19, v17, a4, v15);
  sub_29A186B14(v15);
  sub_29A186B14(v17);
  result = sub_29A186B14(&v19);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
  }

  return result;
}

void sub_29AFB762C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::Get@<X0>(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, unsigned int *a3@<X2>, void *a4@<X3>, pxrInternal__aapl__pxrReserved__::VtValue *a5@<X8>)
{
  v36[2] = *MEMORY[0x29EDCA608];
  v36[1] = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v29, a2);
  v31 = 0;
  v29 = &unk_2A205FFB0;
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v10)
  {
    v10 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v10 + 19) ^ *a4) <= 7)
  {
    sub_29A193124(&v25, 1uLL);
    if (v30 && (*(v30 + 57) & 8) == 0)
    {
      if (v29[4](&v29))
      {
        pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::GetModelDrawModeColorAttr(&v29, v34);
        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfVec3f>();
      }
    }

    v32 = *(a1 + 112);
    LODWORD(v33) = *(a1 + 120);
    sub_29A1935CC(&v25);
    v12 = v27.i64[0];
    v13 = v32;
    *(v27.i64[0] + 8) = v33;
    *v12 = v13;
    sub_29A193700(v36, &v25);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v11)
  {
    v11 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v11 + 20) ^ *a4) <= 7)
  {
    sub_29A18E048(&v25, 1uLL);
    sub_29A18E624(&v25);
    *v27.i64[0] = 1065353216;
    sub_29A18E758(v36, &v25);
    pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v14)
  {
    v14 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v14 + 84) ^ *a4) <= 7)
  {
    sub_29A18E048(&v25, 1uLL);
    sub_29A18E624(&v25);
    *v27.i64[0] = 1065353216;
    sub_29A18E758(v36, &v25);
    pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v16)
  {
    v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v16 + 59) ^ *a4) <= 7)
  {
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v17)
    {
      v17 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v18 = *(v17 + 29);
    v28 = v18;
    if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 = v18 & 0xFFFFFFFFFFFFFFF8;
    }

    v19 = sub_29A328A44((a1 + 32), a3);
    if (v19 || (v25.i64[0] = "usdImaging/drawModeAdapter.cpp", v25.i64[1] = "Get", *&v26 = 650, *(&v26 + 1) = "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::Get(const UsdPrim &, const SdfPath &, const TfToken &, UsdTimeCode, VtIntArray *) const", v27.i8[0] = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v25, "it != _drawModeMap.end()", 0) & 1) != 0))
    {
      sub_29A166F2C(&v28, v19 + 3);
    }

    v35 = 0;
    *(a5 + 1) = 0;
    v33 = 0;
    v25 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
    v26 = xmmword_29B43C5A0;
    v27 = vdupq_n_s64(0xC7EFFFFFE0000000);
    pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_ComputeGeometryData(a1, a2, a3, &v28, v34, a5, &v25, &v32);
LABEL_41:
    sub_29A186B14(&v32);
    sub_29A186B14(v34);
    if ((v28 & 7) != 0)
    {
      atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    goto LABEL_18;
  }

  v20 = atomic_load(qword_2A1751E10);
  if (!v20)
  {
    v20 = sub_29AFBBA40();
  }

  if ((*(v20 + 24) ^ *a4) <= 7)
  {
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v21)
    {
      v21 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v22 = *(v21 + 29);
    v28 = v22;
    if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 = v22 & 0xFFFFFFFFFFFFFFF8;
    }

    v23 = sub_29A328A44((a1 + 32), a3);
    if (v23 || (v25.i64[0] = "usdImaging/drawModeAdapter.cpp", v25.i64[1] = "Get", *&v26 = 668, *(&v26 + 1) = "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::Get(const UsdPrim &, const SdfPath &, const TfToken &, UsdTimeCode, VtIntArray *) const", v27.i8[0] = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v25, "it != _drawModeMap.end()", 0) & 1) != 0))
    {
      sub_29A166F2C(&v28, v23 + 3);
    }

    v35 = 0;
    v33 = 0;
    *(a5 + 1) = 0;
    v25 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
    v26 = xmmword_29B43C5A0;
    v27 = vdupq_n_s64(0xC7EFFFFFE0000000);
    pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_ComputeGeometryData(a1, a2, a3, &v28, v34, &v32, &v25, a5);
    goto LABEL_41;
  }

  v24 = atomic_load(qword_2A1751E10);
  if (!v24)
  {
    v24 = sub_29AFBBA40();
  }

  if ((*(v24 + 144) ^ *a4) > 7)
  {
    sub_29A186A3C(a5, v36);
  }

  else
  {
    *(a5 + 1) = &unk_2A2044C63;
    *a5 = 1065353216;
  }

LABEL_18:
  pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::~UsdGeomModelAPI(&v29);
  return sub_29A186B14(v36);
}

void sub_29AFB7C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::~UsdGeomModelAPI(va);
  sub_29A186B14(v9 - 88);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::GetMaterialId@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + 1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1);

  return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::GetMaterialResource(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, uint64_t a4@<X8>)
{
  v7[21] = *MEMORY[0x29EDCA608];
  if (pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_IsMaterialPath(a1, a3))
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v7, a2);
    v7[3] = 0;
    v7[0] = &unk_2A205FFB0;
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens);
    if (!v6)
    {
      v6 = sub_29AC4497C(&pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens);
    }

    v7[13] = v6;
    sub_29ACC95BC();
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialResource(a4);
}

void sub_29AFB8D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a29 & 7) != 0)
  {
    atomic_fetch_add_explicit((a29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A186B14(v44 - 144);
  sub_29ACC9478(&a32);
  sub_29ABE8884(&a37);
  pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::~UsdGeomModelAPI(&a44);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_CheckForTextureVariability(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, uint64_t a3, unsigned int *a4)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v9 = *(v8 + 74);
  v28 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v10)
  {
    v10 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v11 = *(v10 + 76);
  v29 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v12)
  {
    v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v13 = *(v12 + 78);
  v30 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v14)
  {
    v14 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v15 = *(v14 + 73);
  v31 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v16)
  {
    v16 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v17 = *(v16 + 75);
  v32 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v18)
  {
    v18 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v19 = *(v18 + 77);
  v33 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *a2;
  v20 = *(a2 + 1);
  v24 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(v20 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v25, a2 + 4);
  sub_29A1E2240(&v26, a2 + 5);
  v21 = *(a2 + 3);
  v27 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v22)
  {
    v22 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsVarying(this, &v23, &v28, a3, v22 + 136, a4, 0, 0);
}

void sub_29AFB9258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  while (1)
  {
    v15 = *(v13 - 1);
    v13 -= 8;
    v14 = v15;
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v13 == &a13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::TrackVariability(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, unsigned int *a4)
{
  if (pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_IsMaterialPath(a1, a3))
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_CheckForTextureVariability(a1, a2, 8, a4);
  }

  if ((sub_29A656834(a2, v7) & 1) == 0)
  {
    v21 = *a2;
    v8 = *(a2 + 8);
    v22 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(v8 + 6, 1uLL, memory_order_relaxed);
    }

    sub_29A1E21F4(&v23, (a2 + 16));
    sub_29A1E2240(&v24, (a2 + 20));
    v9 = *(a2 + 24);
    v25 = v9;
    if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 &= 0xFFFFFFFFFFFFFFF8;
    }

    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v10)
    {
      v10 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsTransformVarying(a1, &v21, 512, (v10 + 128), a4);
    if ((v25 & 7) != 0)
    {
      atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24);
    sub_29A1DE3A4(&v23);
    if (v22)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v22, v11);
    }
  }

  v16 = *a2;
  v12 = *(a2 + 8);
  v17 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v18, (a2 + 16));
  sub_29A1E2240(&v19, (a2 + 20));
  v13 = *(a2 + 24);
  v20 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v14)
  {
    v14 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v15)
  {
    v15 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsVarying(a1, &v16, (v14 + 1264), 1024, v15 + 104, a4, 1, 0);
}

void sub_29AFB972C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::UpdateForTime(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, __int16 a4)
{
  v34 = *MEMORY[0x29EDCA608];
  result = pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_IsMaterialPath(a1, a3);
  if ((result & 1) == 0)
  {
    PrimvarDescCache = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimvarDescCache(a1);
    result = sub_29AFB9C00(PrimvarDescCache, a3);
    v10 = result;
    if (a4 < 0)
    {
      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v11)
      {
        v11 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      v24.i64[0] = 0;
      result = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_MergePrimvar(a1, v10, v11 + 165, 0, v24.i64, 0);
      if ((v24.i8[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v24.i64[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((a4 & 0x40) != 0)
    {
      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v12)
      {
        v12 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
      if (!v13)
      {
        v13 = sub_29AD033E0(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
      }

      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_MergePrimvar(a1, v10, v12 + 19, 0, v13 + 1, 0);
      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v14)
      {
        v14 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v24.i64[0] = 0;
      result = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_MergePrimvar(a1, v10, v14 + 20, 0, v24.i64, 0);
      if ((v24.i8[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v24.i64[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((a4 & 0x168) != 0)
    {
      v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v15)
      {
        v15 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      v16 = *(v15 + 29);
      v27 = v16;
      if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v27 &= 0xFFFFFFFFFFFFFFF8;
      }

      v17 = sub_29A328A44(a1 + 4, a3);
      if (v17 || (v24.i64[0] = "usdImaging/drawModeAdapter.cpp", v24.i64[1] = "UpdateForTime", *&v25 = 927, *(&v25 + 1) = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::UpdateForTime(const UsdPrim &, const SdfPath &, UsdTimeCode, HdDirtyBits, const UsdImagingInstancerContext *) const", v26.i8[0] = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v24, "it != _drawModeMap.end()", 0) & 1) != 0))
      {
        sub_29A166F2C(&v27, v17 + 3);
      }

      v33 = 0;
      v24 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
      v25 = xmmword_29B43C5A0;
      v26 = vdupq_n_s64(0xC7EFFFFFE0000000);
      v31 = 0;
      v29 = 0;
      pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_ComputeGeometryData(a1, a2, a3, &v27, v32, v30, &v24, v28);
      v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v18)
      {
        v18 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v18 + 11) ^ v27) <= 7)
      {
        v19 = atomic_load(qword_2A1751E10);
        if (!v19)
        {
          v19 = sub_29AFBBA40();
        }

        v23 = 0;
        pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_MergePrimvar(a1, v10, (v19 + 24), 3, &v23, 0);
        if ((v23 & 7) != 0)
        {
          atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v20 = atomic_load(qword_2A1751E10);
        if (!v20)
        {
          v20 = sub_29AFBBA40();
        }

        v23 = 0;
        pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_MergePrimvar(a1, v10, (v20 + 144), 0, &v23, 0);
        if ((v23 & 7) != 0)
        {
          atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v21)
      {
        v21 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
      if (!v22)
      {
        v22 = sub_29AD033E0(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
      }

      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_MergePrimvar(a1, v10, v21 + 59, 3, v22 + 4, 0);
      sub_29A186B14(v28);
      sub_29A186B14(v30);
      result = sub_29A186B14(v32);
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  return result;
}

void sub_29AFB9B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22)
{
  if ((a17 & 7) != 0)
  {
    atomic_fetch_add_explicit((a17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AFB9C00(uint64_t a1, _DWORD *a2)
{
  sub_29AFA2658(a2, &v5);
  v3 = sub_29AFBB4AC(a1, &v5);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6);
  sub_29A1DE3A4(&v5);
  return v3;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v6)
  {
    v6 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v7 = *(v6 + 74);
  v30 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v9 = *(v8 + 76);
  v31 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v10)
  {
    v10 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v11 = *(v10 + 78);
  v32 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v12)
  {
    v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v13 = *(v12 + 73);
  v33 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v14)
  {
    v14 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v15 = *(v14 + 75);
  v34 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v16)
  {
    v16 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v17 = *(v16 + 77);
  v35 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_IsMaterialPath(v16, a3))
  {
    v19 = 0;
    while ((*(&v30 + v19) ^ *a4) >= 8)
    {
      v19 += 8;
      if (v19 == 48)
      {
        result = 0;
        goto LABEL_51;
      }
    }

    result = 8;
  }

  else
  {
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v21)
    {
      v21 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    if ((*(v21 + 80) ^ *a4) >= 8)
    {
      v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v22)
      {
        v22 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v22 + 72) ^ *a4) >= 8)
      {
        v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v23)
        {
          v23 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        if ((*(v23 + 37) ^ *a4) >= 8)
        {
          v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
          if (!v24)
          {
            v24 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
          }

          if ((*(v24 + 38) ^ *a4) >= 8)
          {
            v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
            if (!v27)
            {
              v27 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
            }

            if ((*(v27 + 158) ^ *a4) < 8)
            {
              goto LABEL_62;
            }

            v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
            if (!v28)
            {
              v28 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
            }

            if ((*(v28 + 114) ^ *a4) < 8)
            {
LABEL_62:
              result = 1024;
              goto LABEL_51;
            }

            if (pxrInternal__aapl__pxrReserved__::UsdGeomXformable::IsTransformationAffectedByAttrNamed(a4, v18))
            {
              result = 512;
              goto LABEL_51;
            }

            v29 = 0;
            while ((*(&v30 + v29) ^ *a4) > 7)
            {
              result = 0;
              v29 += 8;
              if (v29 == 48)
              {
                goto LABEL_51;
              }
            }
          }
        }
      }

      result = 360;
    }

    else
    {
      result = 64;
    }
  }

LABEL_51:
  for (i = 40; i != -8; i -= 8)
  {
    v26 = *(&v30 + i);
    if ((v26 & 7) != 0)
    {
      atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AFBA058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  while (1)
  {
    v11 = *--v9;
    v10 = v11;
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v9 == &a9)
    {
      _Unwind_Resume(a1);
    }
  }
}

pxrInternal__aapl__pxrReserved__::TfToken *sub_29AFBA0B4(uint64_t a1, void *a2)
{
  v2 = a2;
  sub_29AFBAA98(a2, &v18);
  if ((**a1 & v2) == 0)
  {
    if (v2 > 7)
    {
      switch(v2)
      {
        case 0x20:
          v2 = 4;
          break;
        case 0x10:
          v2 = 2;
          break;
        case 8:
          v2 = 1;
          break;
      }
    }

    else
    {
      switch(v2)
      {
        case 1:
          v2 = 8;
          break;
        case 2:
          v2 = 16;
          break;
        case 4:
          v2 = 32;
          break;
      }
    }
  }

  result = sub_29AFB3B58(v2, &v17);
  v5 = v18;
  if (v18 && v17)
  {
    v6 = *(a1 + 8);
    v13 = 0;
    if ((v18 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v18 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v14, EmptyString);
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(*(a1 + 16), &v17, v15);
    v8 = *(a1 + 24);
    v9 = (*v8)++;
    v12 = v9;
    sub_29A9096F4(&v16, &v12, 1);
    v10 = v6[1];
    if (v10 >= v6[2])
    {
      v11 = sub_29ACC8948(v6, &v13);
    }

    else
    {
      sub_29ACC8A5C(v6, v6[1], &v13);
      v11 = v10 + 64;
      v6[1] = v10 + 64;
    }

    v6[1] = v11;
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    v5 = v18;
  }

  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::_GetMatrixFromImageMetadata(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdAttribute *a2, pxrInternal__aapl__pxrReserved__::GfMatrix4d *a3)
{
  v4 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&__str);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::SdfAssetPath>();
}

void sub_29AFBA8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_29A186B14(v17 - 72);
  v19 = *(v17 - 152);
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  if (*(v17 - 121) < 0)
  {
    operator delete(*(v17 - 144));
  }

  sub_29A0D2850(v17 - 120);
  _Unwind_Resume(a1);
}

void sub_29AFBA950(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v13 = 0xF0F0F0F0F0F0F0F1 * ((v4 - *a1) >> 3);
    v14 = v13 + 1;
    if (v13 + 1 > 0x1E1E1E1E1E1E1E1)
    {
      sub_29A00C9A4();
    }

    v15 = 0xF0F0F0F0F0F0F0F1 * ((v5 - *a1) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0xF0F0F0F0F0F0F0)
    {
      v16 = 0x1E1E1E1E1E1E1E1;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      v17 = sub_29A58E664(a1, v16);
    }

    else
    {
      v17 = 0;
    }

    v18 = &v17[136 * v13];
    v19 = &v17[136 * v16];
    *v18 = *a2;
    v20 = *(a2 + 16);
    v21 = *(a2 + 32);
    v22 = *(a2 + 64);
    *(v18 + 3) = *(a2 + 48);
    *(v18 + 4) = v22;
    *(v18 + 1) = v20;
    *(v18 + 2) = v21;
    v23 = *(a2 + 80);
    v24 = *(a2 + 96);
    v25 = *(a2 + 112);
    *(v18 + 16) = *(a2 + 128);
    *(v18 + 6) = v24;
    *(v18 + 7) = v25;
    *(v18 + 5) = v23;
    v12 = v18 + 136;
    v26 = *(a1 + 8) - *a1;
    v27 = &v18[-v26];
    memcpy(&v18[-v26], *a1, v26);
    v28 = *a1;
    *a1 = v27;
    *(a1 + 8) = v12;
    *(a1 + 16) = v19;
    if (v28)
    {
      operator delete(v28);
    }
  }

  else
  {
    *v4 = *a2;
    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    v8 = *(a2 + 64);
    *(v4 + 48) = *(a2 + 48);
    *(v4 + 64) = v8;
    *(v4 + 16) = v6;
    *(v4 + 32) = v7;
    v9 = *(a2 + 80);
    v10 = *(a2 + 96);
    v11 = *(a2 + 112);
    *(v4 + 128) = *(a2 + 128);
    *(v4 + 96) = v10;
    *(v4 + 112) = v11;
    *(v4 + 80) = v9;
    v12 = (v4 + 136);
  }

  *(a1 + 8) = v12;
}

void *sub_29AFBAA98@<X0>(void *result@<X0>, atomic_uint **a2@<X8>)
{
  v3 = 0;
  if (result > 7)
  {
    switch(result)
    {
      case 8:
        result = atomic_load(qword_2A1751E10);
        if (!result)
        {
          result = sub_29AFBBA40();
        }

        v4 = result[7];
        break;
      case 0x10:
        result = atomic_load(qword_2A1751E10);
        if (!result)
        {
          result = sub_29AFBBA40();
        }

        v4 = result[8];
        break;
      case 0x20:
        result = atomic_load(qword_2A1751E10);
        if (!result)
        {
          result = sub_29AFBBA40();
        }

        v4 = result[9];
        break;
      default:
        goto LABEL_28;
    }
  }

  else
  {
    switch(result)
    {
      case 1:
        result = atomic_load(qword_2A1751E10);
        if (!result)
        {
          result = sub_29AFBBA40();
        }

        v4 = result[4];
        break;
      case 2:
        result = atomic_load(qword_2A1751E10);
        if (!result)
        {
          result = sub_29AFBBA40();
        }

        v4 = result[5];
        break;
      case 4:
        result = atomic_load(qword_2A1751E10);
        if (!result)
        {
          result = sub_29AFBBA40();
        }

        v4 = result[6];
        break;
      default:
LABEL_28:
        *a2 = v3;
        return result;
    }
  }

  *a2 = v4;
  if ((v4 & 7) != 0)
  {
    v3 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::GetTransform@<X0>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X1>, uint64_t a2@<X8>)
{
  if (!sub_29A656834(a1, a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
  }

  return pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a2, 1.0);
}

void sub_29AFBACA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void *sub_29AFBACBC(void *a1)
{
  *a1 = &unk_2A20A8120;
  sub_29AFBAFDC((a1 + 9));
  sub_29A58D230((a1 + 4));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_29AFBAD14(void *a1)
{
  *a1 = &unk_2A20A8120;
  sub_29AFBAFDC((a1 + 9));
  sub_29A58D230((a1 + 4));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(a1);
}

uint64_t sub_29AFBAD7C(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20A8360;
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

void sub_29AFBAE08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFBAE2C(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29AFBAE54@<D0>(_OWORD *a1@<X8>)
{
  sub_29AFBAE90(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29AFBAE90(void *a1@<X8>)
{
  v2 = operator new(0x98uLL);
  sub_29AFBAEF4(v2);
  *a1 = v2 + 3;
  a1[1] = v2;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void *sub_29AFBAEF4(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20A83A0;
  pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeAdapter::UsdImagingDrawModeAdapter((a1 + 3));
  return a1;
}

void sub_29AFBAF70(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20A83A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFBAFDC(uint64_t a1)
{
  sub_29AFBB018(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AFBB018(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AFBB05C(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29AFBB05C(_DWORD *a1)
{
  sub_29A43A24C((a1 + 2));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29AFBB0A4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AFBB140(a1, a2);
  }

  else
  {
    sub_29AFBB250(a1, *(a1 + 8), a2);
    result = v3 + 16;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29AFBB0F0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

uint64_t sub_29AFBB140(uint64_t a1, uint64_t *a2)
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
  sub_29AFBB250(a1, v16, a2);
  *&v17 = v16 + 16;
  v9 = *(a1 + 8);
  v10 = &v16[*a1 - v9];
  sub_29AFBB2C4(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29AFBB430(&v15);
  return v14;
}

void sub_29AFBB23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AFBB430(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AFBB250(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  *a2 = *a3;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A1E21F4((a2 + 8), a3 + 2);

  return sub_29A1E2240((a2 + 12), a3 + 3);
}

uint64_t sub_29AFBB2C4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    v8 = a2;
    do
    {
      v9 = v7 + 3;
      *a4 = *v7;
      v10 = (a4 + 12);
      *v8 = 0;
      v8 += 2;
      sub_29A1DDD84((a4 + 8), v7 + 2);
      sub_29A1DDDC0(v10, v9);
      a4 = v15 + 16;
      v15 += 16;
      v7 = v8;
    }

    while (v8 != a3);
    v13 = 1;
    while (v5 != a3)
    {
      sub_29AFA2400(a1, v5);
      v5 += 16;
    }
  }

  return sub_29AFBB3A4(v12);
}

uint64_t sub_29AFBB3A4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AFBB3DC(a1);
  }

  return a1;
}

uint64_t *sub_29AFBB3DC(uint64_t *result)
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
      v3 -= 16;
      result = sub_29AFA2400(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29AFBB430(void **a1)
{
  sub_29AFBB464(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29AFBB464(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 16;
      result = sub_29AFA2400(v4, v1 - 16);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29AFBB4AC(uint64_t a1, uint64_t a2)
{
  memset(v4, 0, sizeof(v4));
  sub_29AFBB94C(&v5, a2, v4);
  sub_29AFBB9DC(&v9, &v5);
  sub_29AFBB6A0(a1 + 8, &v9, 0, v13);
  v14 = &v12;
  sub_29ABEE9FC(&v14);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
  sub_29A1DE3A4(&v9);
  v14 = &v8;
  sub_29ABEE9FC(&v14);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6);
  sub_29A1DE3A4(&v5);
  v14 = v4;
  sub_29ABEE9FC(&v14);
  return v13[0] + 24;
}

void sub_29AFBB5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_29AFBB5D8(va1);
  sub_29AFBB63C(va);
  *(v6 - 40) = v5;
  sub_29ABEE9FC((v6 - 40));
  _Unwind_Resume(a1);
}

_DWORD *sub_29AFBB5D8(uint64_t a1)
{
  v4 = (a1 + 16);
  sub_29ABEE9FC(&v4);
  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

_DWORD *sub_29AFBB63C(uint64_t a1)
{
  v4 = (a1 + 16);
  sub_29ABEE9FC(&v4);
  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

void *sub_29AFBB6A0@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, tbb::internal *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v9 = bswap64(0x9E3779B97F4A7C55 * (*(a2 + 1) & 0xFFFFFFFFFFFFFFF8));
  v10 = bswap64(0x9E3779B97F4A7C55 * (v9 + ((v8 + v9 + (v8 + v9) * (v8 + v9)) >> 1)));
  v27 = 0;
  v28 = v10;
  v11 = &v28;
  for (i = 7; i != -1; --i)
  {
    v13 = *v11;
    v11 = (v11 + 1);
    *(&v27 + i) = byte_29B734F74[v13];
  }

  v14 = v27 | 1;
  sub_29AFA282C(a1, v10, &v28);
  v15 = a1 + 16;
  if (a3)
  {
    *(a3 + 6) = v14;
    *a3 = 0;
  }

  result = a2;
  while (1)
  {
    v17 = v28;
    v18 = *v28;
    if (*v28)
    {
      v19 = v18[6];
      while (1)
      {
        v20 = v18;
        if (v19 > v14)
        {
          break;
        }

        if (v19 == v14 && v18[1] == *result && (result[1] ^ v18[2]) <= 7)
        {
          if (a3)
          {
            result = sub_29AFA16D0(a1 + 16, a3);
          }

          *a4 = v18;
          *(a4 + 8) = v15;
          *(a4 + 16) = 0;
          return result;
        }

        v28 = v18;
        v18 = *v18;
        if (!*v20)
        {
          v17 = v20;
          break;
        }

        v19 = v18[6];
        v17 = v20;
      }
    }

    if (!a3)
    {
      a3 = tbb::internal::allocate_via_handler_v3(0x38);
      result = sub_29AFBB8C8(a3 + 8, a2);
      *(a3 + 6) = v14;
      *a3 = 0;
      v17 = v28;
    }

    *a3 = v18;
    while (1)
    {
      v22 = v18;
      atomic_compare_exchange_strong(v17, &v22, a3);
      if (v22 == v18)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v17, 0, memory_order_relaxed);
      if (add_explicit != v18)
      {
        goto LABEL_25;
      }
    }

    add_explicit = v18;
LABEL_25:
    if (v18 == add_explicit || a3 == add_explicit)
    {
      break;
    }

    *a4 = 0;
    *(a4 + 8) = v15;
    *(a4 + 16) = 0;
  }

  add = atomic_fetch_add((a1 + 24), 1uLL);
  *a4 = a3;
  *(a4 + 8) = v15;
  *(a4 + 16) = 1;
  v25 = *(a1 + 8);
  __dmb(0xBu);
  if ((add / v25) > *(a1 + 44))
  {
    do
    {
      v26 = v25;
      atomic_compare_exchange_strong((a1 + 8), &v26, 2 * v25);
    }

    while (v26 != v25 && atomic_fetch_add_explicit((a1 + 8), 0, memory_order_relaxed) == v25);
  }

  return result;
}

uint64_t sub_29AFBB8C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, (a2 + 4));
  v5 = *(a2 + 8);
  *(a1 + 8) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return a1;
}

uint64_t sub_29AFBB94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v6 + 1, (a2 + 4));
  v7 = *(a2 + 8);
  *(a1 + 8) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = *a3;
  *(a1 + 32) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return a1;
}

uint64_t sub_29AFBB9DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A1DDD84(a1, a2);
  sub_29A1DDDC0(v4 + 1, (a2 + 4));
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return a1;
}

unint64_t sub_29AFBBA40()
{
  v70 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x118uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "cardSurface", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "cardTexture", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "cardUvCoords", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "cardsUv", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "subsetXPos", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "subsetYPos", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "subsetZPos", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "subsetXNeg", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 8, "subsetYNeg", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 9, "subsetZNeg", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 10, "subsetMaterialXPos", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 11, "subsetMaterialYPos", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 12, "subsetMaterialZPos", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 13, "subsetMaterialXNeg", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 14, "subsetMaterialYNeg", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 15, "subsetMaterialZNeg", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 16, "worldtoscreen", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 17, "worldToNDC", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 18, "displayRoughness", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 19, "diffuseColor", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 20, "opacity", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 21, "opacityThreshold", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 22, "file", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 23, "st", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 24, "rgb", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 25, "a", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 26, "fallback", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 27, "wrapS", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 28, "wrapT", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 29, "clamp", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 30, "varname", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 31, "result", 0);
  v1 = *v0;
  v38 = v1;
  if ((v1 & 7) != 0 && (atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v2 = v0[1];
  v39 = v2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = v0[2];
  v40 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = v0[3];
  v41 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = v0[4];
  v42 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = v0[5];
  v43 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = v0[6];
  v44 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = v0[7];
  v45 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v45 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = v0[8];
  v46 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v46 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = v0[9];
  v47 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v47 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = v0[10];
  v48 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v48 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = v0[11];
  v49 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v49 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = v0[12];
  v50 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v50 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = v0[13];
  v51 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v51 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = v0[14];
  v52 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v52 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = v0[15];
  v53 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v53 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = v0[16];
  v54 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v54 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = v0[17];
  v55 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v55 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = v0[18];
  v56 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v56 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = v0[19];
  v57 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v57 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = v0[20];
  v58 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v58 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = v0[21];
  v59 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v59 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = v0[22];
  v60 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v60 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = v0[23];
  v61 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v61 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = v0[24];
  v62 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v62 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = v0[25];
  v63 = v26;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v63 &= 0xFFFFFFFFFFFFFFF8;
  }

  v27 = v0[26];
  v64 = v27;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v64 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = v0[27];
  v65 = v28;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v65 &= 0xFFFFFFFFFFFFFFF8;
  }

  v29 = v0[28];
  v66 = v29;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v66 &= 0xFFFFFFFFFFFFFFF8;
  }

  v30 = v0[29];
  v67 = v30;
  if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v67 &= 0xFFFFFFFFFFFFFFF8;
  }

  v31 = v0[30];
  v68 = v31;
  if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v68 &= 0xFFFFFFFFFFFFFFF8;
  }

  v32 = v0[31];
  v69 = v32;
  if ((v32 & 7) != 0 && (atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v69 &= 0xFFFFFFFFFFFFFFF8;
  }

  v0[32] = 0;
  v0[33] = 0;
  v0[34] = 0;
  sub_29A12EF7C(v0 + 32, &v38, &v70, 0x20uLL);
  for (i = 248; i != -8; i -= 8)
  {
    v34 = *(&v38 + i);
    if ((v34 & 7) != 0)
    {
      atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v35 = 0;
  atomic_compare_exchange_strong(qword_2A1751E10, &v35, v0);
  if (v35)
  {
    v36 = sub_29A4AAB20(v0);
    operator delete(v36);
    return atomic_load(qword_2A1751E10);
  }

  return v0;
}

void sub_29AFBC314(_Unwind_Exception *a1)
{
  v4 = 248;
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
      v6 = v1[31];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[30];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[29];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[28];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[27];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[26];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[25];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[24];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[23];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[22];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[21];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[20];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[19];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[18];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[17];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[16];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[15];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[14];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[13];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 = v1[12];
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v26 = v1[11];
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v27 = v1[10];
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v28 = v1[9];
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v29 = v1[8];
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v30 = v1[7];
      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v31 = v1[6];
      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v32 = v1[5];
      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v33 = v1[4];
      if ((v33 & 7) != 0)
      {
        atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v34 = v1[3];
      if ((v34 & 7) != 0)
      {
        atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v35 = v1[2];
      if ((v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v36 = v1[1];
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

void *sub_29AFBC750(uint64_t a1, void *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  result = sub_29A16039C((a1 + 16), a2);
  if (result)
  {
    v7 = (result + 4);
    v8 = result[3];

    return sub_29A56FBFC(v8, v7, a3, a4);
  }

  return result;
}

void *sub_29AFBC7B0(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

  sub_29AD1D9B8(a1, v6, a4, &v22);
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

void sub_29AFBC9E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AFBC9F8(va, 0);
  _Unwind_Resume(a1);
}

void sub_29AFBC9F8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AFBB05C(v2 + 4);
    }

    operator delete(v2);
  }
}

uint64_t sub_29AFBCA54(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29AFBB05C(v3 + 4);
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t *sub_29AFBCAB0(void *a1, unsigned int *a2)
{
  result = sub_29A2F4F50(a1, a2);
  if (result)
  {
    sub_29A7441D0(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29AFBCAE8(uint64_t *a1, uint64_t a2)
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

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A10E224(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[40 * v2];
  *(&v16 + 1) = &v7[40 * v6];
  sub_29ACCA298(a1, v15, a2);
  *&v16 = v15 + 40;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29ACCA1E4(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29ACCA318(&v14);
  return v13;
}

void sub_29AFBCC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ACCA318(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFBCC18(uint64_t *a1, uint64_t a2)
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
  sub_29ACC9F28(a1, v16, a2);
  *&v17 = v16 + 32;
  v9 = a1[1];
  v10 = &v16[*a1 - v9];
  sub_29ACC9E74(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29ACC9F94(&v15);
  return v14;
}

void sub_29AFBCD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ACC9F94(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AFBCD28(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 200), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AFBCD48(atomic_uint **a1, atomic_uint **a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29AFBCE70(a1);
}

uint64_t sub_29AFBCE58@<X0>(const pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A20A83E0;
  return sub_29AFBCF8C(a2, v2);
}

void sub_29AFBCE70(atomic_uint **a1)
{
  v2 = *a1;
  if (v2 && atomic_fetch_add_explicit(v2 + 50, 0xFFFFFFFF, memory_order_release) == 1)
  {
    v4 = v1;
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::~HdBasisCurvesTopology(v2);

    operator delete(v3);
  }
}

const pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *sub_29AFBCEBC(const pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology **a1)
{
  v2 = atomic_load(*a1 + 50);
  if (v2 != 1)
  {
    sub_29AFBCF24(*a1, &v4);
    sub_29AFBCE70(a1);
    *a1 = v4;
    v4 = 0;
    sub_29AFBCE70(&v4);
  }

  return *a1;
}

uint64_t sub_29AFBCF24@<X0>(const pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *a1@<X0>, unsigned int **a2@<X8>)
{
  v4 = operator new(0xD0uLL);
  result = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::HdBasisCurvesTopology(v4, a1);
  atomic_store(0, v4 + 50);
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 50, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29AFBCF8C(unsigned int **a1, const pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *a2)
{
  v4 = operator new(0xD0uLL);
  result = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::HdBasisCurvesTopology(v4, a2);
  atomic_store(0, v4 + 50);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 50, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29AFBCFF4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 496), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AFBD014(atomic_uint **a1, atomic_uint **a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29AFBD13C(a1);
}

uint64_t sub_29AFBD124@<X0>(const pxrInternal__aapl__pxrReserved__::HdMeshTopology **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A20A8498;
  return sub_29AFBD25C(a2, v2);
}

void sub_29AFBD13C(atomic_uint **a1)
{
  v2 = *a1;
  if (v2 && atomic_fetch_add_explicit(v2 + 124, 0xFFFFFFFF, memory_order_release) == 1)
  {
    v4 = v1;
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::HdMeshTopology::~HdMeshTopology(v2);

    operator delete(v3);
  }
}

const pxrInternal__aapl__pxrReserved__::HdMeshTopology *sub_29AFBD188(const pxrInternal__aapl__pxrReserved__::HdMeshTopology **a1)
{
  v2 = atomic_load(*a1 + 124);
  if (v2 != 1)
  {
    sub_29AFBD1F0(*a1, &v4);
    sub_29AFBD13C(a1);
    *a1 = v4;
    v4 = 0;
    sub_29AFBD13C(&v4);
  }

  return *a1;
}

uint64_t sub_29AFBD1F0@<X0>(const pxrInternal__aapl__pxrReserved__::HdMeshTopology *a1@<X0>, unsigned int **a2@<X8>)
{
  v4 = operator new(0x1F8uLL);
  result = pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(v4, a1, 0);
  atomic_store(0, v4 + 124);
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 124, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29AFBD25C(unsigned int **a1, const pxrInternal__aapl__pxrReserved__::HdMeshTopology *a2)
{
  v4 = operator new(0x1F8uLL);
  result = pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(v4, a2, 0);
  atomic_store(0, v4 + 124);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 124, 1u, memory_order_relaxed);
  return result;
}

void sub_29AFBD428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29AFBEC90(v13, *(v12 + 152));
  sub_29AC113C4(v12, v14);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeSceneIndex::_RecursePrims(uint64_t a1, void *a2, _DWORD *a3, uint64_t *a4, _DWORD *a5)
{
  pxrInternal__aapl__pxrReserved__::UsdImaging_GetDrawModeStandin(a2, a3, a4 + 1, &v21);
  if (v21)
  {
    if (a5)
    {
      pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin::ComputePrimAddedEntries(v21, a5);
    }

    v19 = a3;
    v9 = sub_29A46F1CC((a1 + 144), a3, &unk_29B4D6118, &v19);
    v10 = v21;
    v21 = 0uLL;
    v11 = *(v9 + 6);
    *(v9 + 10) = v10;
    if (v11)
    {
      sub_29A014BEC(v11);
    }
  }

  else
  {
    if (a5)
    {
      sub_29AC3C228(&v19, a3, a4);
      sub_29AC3D658(a5, &v19);
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19 + 1);
      sub_29A1DE3A4(&v19);
    }

    v12 = sub_29AC1199C((a1 + 112));
    (*(*v12 + 24))(&v19);
    v13 = v19;
    for (i = v20; v13 != i; v13 += 2)
    {
      v15 = sub_29AC1199C((a1 + 112));
      (*(*v15 + 16))(v17);
      sub_29AFBD71C(v17, &v16);
      pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeSceneIndex::_RecursePrims(a1, &v16, v13, v17, a5);
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v18)
      {
        sub_29A014BEC(v18);
      }

      if ((v17[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v17[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    v17[0] = &v19;
    sub_29A1E234C(v17);
  }

  if (*(&v21 + 1))
  {
    sub_29A014BEC(*(&v21 + 1));
  }
}

void sub_29AFBD68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  sub_29AC3B4B8(&a14);
  if (a18)
  {
    sub_29A014BEC(a18);
  }

  _Unwind_Resume(a1);
}

void sub_29AFBD71C(uint64_t a1@<X0>, atomic_uint **a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1752098, memory_order_acquire) & 1) == 0)
  {
    sub_29B2CD594();
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetFromParent((a1 + 8), &v15);
  pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetNiPrototypePath(&v15, &v13);
  if (v13)
  {
    (*(*v13 + 32))(&v11, 0.0);
    v4 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
    sub_29A1DE3A4(&v11);
  }

  else
  {
    v4 = 0;
  }

  if (v14)
  {
    sub_29A014BEC(v14);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (v4)
  {
    v5 = qword_2A1752090;
    *a2 = qword_2A1752090;
    if ((v5 & 7) != 0)
    {
      v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
      {
        *a2 = v6;
      }
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetFromParent((a1 + 8), &v15);
    pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetApplyDrawMode(&v15, &v13);
    if (v13 && ((*(*v13 + 32))(v13, 0.0) & 1) != 0)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetDrawMode(&v15, &v11);
      if (v11)
      {
        (*(*v11 + 32))(v11, 0.0);
      }

      else
      {
        v9 = qword_2A1752090;
        *a2 = qword_2A1752090;
        if ((v9 & 7) != 0)
        {
          v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
          {
            *a2 = v10;
          }
        }
      }

      if (v12)
      {
        sub_29A014BEC(v12);
      }
    }

    else
    {
      v7 = qword_2A1752090;
      *a2 = qword_2A1752090;
      if ((v7 & 7) != 0)
      {
        v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
        {
          *a2 = v8;
        }
      }
    }

    if (v14)
    {
      sub_29A014BEC(v14);
    }

    if (v16)
    {
      sub_29A014BEC(v16);
    }
  }
}

void sub_29AFBD92C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeSceneIndex::~UsdImagingDrawModeSceneIndex(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeSceneIndex *this)
{
  *this = &unk_2A20A8560;
  sub_29AFBEC90(this + 144, *(this + 19));
  *this = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((this + 120), v2);
  sub_29ABD4DDC();
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeSceneIndex::~UsdImagingDrawModeSceneIndex(this);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeSceneIndex::_FindStandinForPrimOrAncestor@<X0>(uint64_t this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, unint64_t *a3@<X2>, void *a4@<X8>)
{
  v7 = (this + 152);
  if (*(this + 152))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  v8 = (this + 152);
  if (this + 152 == *(this + 144))
  {
    goto LABEL_14;
  }

  v9 = *v8;
  if (*v8)
  {
    do
    {
      v10 = v9;
      v9 = v9[1];
    }

    while (v9);
  }

  else
  {
    do
    {
      v10 = v8[2];
      v11 = *v10 == v8;
      v8 = v10;
    }

    while (v11);
  }

  this = pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a2, (v10 + 4));
  v12 = this ? v10 : v7;
  if (v12 == v7)
  {
LABEL_14:
    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    PathElementCount = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(a2);
    this = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount((v12 + 4));
    *a3 = PathElementCount - this;
    v14 = v12[6];
    *a4 = v12[5];
    a4[1] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeSceneIndex::GetPrim(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t *a3@<X8>)
{
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeSceneIndex::_FindStandinForPrimOrAncestor(this, a2, &v13, &v11);
  if (v11)
  {
    if (v13)
    {
      if (v13 > 2)
      {
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin::GetDescendantPrim(v11, a2, a3);
      }
    }

    else
    {
      Prim = pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin::GetPrim(v11);
      v8 = *Prim;
      *a3 = *Prim;
      if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *a3 &= 0xFFFFFFFFFFFFFFF8;
      }

      v9 = Prim[2];
      a3[1] = Prim[1];
      a3[2] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }
    }

    v10 = v12;
    if (v12)
    {

      sub_29A014BEC(v10);
    }
  }

  else
  {
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    v6 = *(*sub_29AC1199C(this + 14) + 16);

    v6();
  }
}

void sub_29AFBDCAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeSceneIndex::_FindStandinForPrimOrAncestor(this, a2, &v14, &v12);
  v6 = v12;
  if (v12)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin::GetDescendantPrimPaths(v6, v11);
    v7 = v11[0];
    v8 = v11[1];
    while (v7 != v8)
    {
      if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(v7, a2))
      {
        PathElementCount = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(v7);
        if (PathElementCount - pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(a2) == 1)
        {
          sub_29A1E28B4(a3, v7);
        }
      }

      v7 = (v7 + 8);
    }

    v15 = v11;
    sub_29A1E234C(&v15);
    if (v13)
    {
      sub_29A014BEC(v13);
    }
  }

  else
  {
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    v10 = *(*sub_29AC1199C(this + 14) + 24);

    v10();
  }
}

void sub_29AFBDDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1E234C(va);
  if (a7)
  {
    sub_29A014BEC(a7);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeSceneIndex::_DeleteSubtree(uint64_t this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (*(this + 152))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  return this;
}

void **pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeSceneIndex::_PrimsAdded(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeSceneIndex *this, uint64_t a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v24 = 0x1000000000;
  v22 = 0x1000000000;
  if (*(a3 + 65) >= 0x11u)
  {
    v4 = *a3;
  }

  else
  {
    v4 = a3;
  }

  v5 = *(a3 + 64);
  if (v5)
  {
    v6 = 16 * v5;
    do
    {
      v19 = 0;
      pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeSceneIndex::_FindStandinForPrimOrAncestor(this, v4, &v19, &v16);
      if (v16)
      {
        v7 = v19 == 0;
      }

      else
      {
        v7 = 1;
      }

      v8 = !v7;
      if (v17)
      {
        sub_29A014BEC(v17);
      }

      if ((v8 & 1) == 0)
      {
        v9 = sub_29AC1199C(this + 14);
        (*(*v9 + 16))(&v16);
        sub_29AFBD71C(&v16, &v15);
        pxrInternal__aapl__pxrReserved__::UsdImaging_GetDrawModeStandin(&v15, v4, &v17, &v14);
        if (v14)
        {
          pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeSceneIndex::_DeleteSubtree(this, v4);
          sub_29A1E21F4(&v20, v4);
          sub_29A1E2240(&v20 + 1, v4 + 1);
          sub_29AC3D914(v21, &v20);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v20 + 1);
          sub_29A1DE3A4(&v20);
          pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin::ComputePrimAddedEntries(v14, v23);
          v20 = v4;
          v10 = sub_29A46F1CC(this + 18, v4, &unk_29B4D6118, &v20);
          v11 = v14;
          v14 = 0uLL;
          v12 = *(v10 + 6);
          *(v10 + 10) = v11;
          if (v12)
          {
            sub_29A014BEC(v12);
          }
        }

        else
        {
          sub_29AC50374(v23, v4);
        }

        if (*(&v14 + 1))
        {
          sub_29A014BEC(*(&v14 + 1));
        }

        if ((v15 & 7) != 0)
        {
          atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v18)
        {
          sub_29A014BEC(v18);
        }

        if ((v16 & 7) != 0)
        {
          atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      v4 = (v4 + 16);
      v6 -= 16;
    }

    while (v6);
    if (v22)
    {
      pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(this, v21);
    }
  }

  if (v24)
  {
    pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(this, v23);
  }

  sub_29AC26348(v21);
  return sub_29AC263E4(v23);
}

void sub_29AFBE140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  sub_29AC26348(&a18);
  sub_29AC263E4(&a35);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeSceneIndex::_PrimsRemoved(pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeSceneIndex *this, uint64_t a2, uint64_t a3)
{
  if (*(this + 20))
  {
    v5 = *(a3 + 128);
    v6 = *(a3 + 132) >= 0x11u ? *a3 : a3;
    if (v5)
    {
      v7 = 8 * v5;
      do
      {
        pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeSceneIndex::_DeleteSubtree(this, v6);
        v6 = (v6 + 8);
        v7 -= 8;
      }

      while (v7);
    }
  }

  result = pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_IsObserved(this);
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(this, a3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeSceneIndex::_PrimsDirtied(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v49 = *MEMORY[0x29EDCA608];
  v39 = 0;
  v40 = 0;
  v38 = &v39;
  if ((atomic_load_explicit(&qword_2A1752088, memory_order_acquire) & 1) == 0)
  {
    v21 = __cxa_guard_acquire(&qword_2A1752088);
    if (v21)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetDefaultLocator(v21);
      v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      if (!v23)
      {
        v23 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, (v23 + 8), &v42);
      v25 = pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetDefaultLocator(v24);
      v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      if (!v26)
      {
        v26 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v25, (v26 + 16), v43);
      v45[0] = &v42;
      v45[1] = 2;
      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(&unk_2A1751EC0, v45);
      for (i = 56; i != -56; i -= 56)
      {
        sub_29ABC3488(v43 + i + 40);
      }

      __cxa_atexit(sub_29ABE62AC, &unk_2A1751EC0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1752088);
    }
  }

  if (*(v5 + 7428) >= 0x11u)
  {
    v7 = *v5;
  }

  else
  {
    v7 = v5;
  }

  v8 = *(v5 + 7424);
  if (v8)
  {
    v9 = 464 * v8;
    do
    {
      if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects(&unk_2A1751EC0, v7 + 1))
      {
        std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
      }

      v7 = (v7 + 464);
      v9 -= 464;
    }

    while (v9);
  }

  v48 = 0x1000000000;
  v46 = 0x1000000000;
  if (v40)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v33);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v33 + 1);
    v10 = v38;
    if (v38 != &v39)
    {
      do
      {
        if (!pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((v10 + 28), &v33))
        {
          v42 = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v42);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v42 + 1);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        v11 = v10[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v10[2];
            v13 = *v12 == v10;
            v10 = v12;
          }

          while (!v13);
        }

        v10 = v12;
      }

      while (v12 != &v39);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v33 + 1);
    sub_29A1DE3A4(&v33);
  }

  if (*(v6 + 160))
  {
    v44 = 0x1000000000;
    if (*(v5 + 7428) >= 0x11u)
    {
      v14 = *v5;
    }

    else
    {
      v14 = v5;
    }

    v15 = *(v5 + 7424);
    if (v15)
    {
      for (j = 464 * v15; j; j -= 464)
      {
        v37 = 0;
        pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeSceneIndex::_FindStandinForPrimOrAncestor(v6, v14, &v37, &v34);
        if (v34)
        {
          if (!v37)
          {
            v41 = 0;
            (*(*v34 + 24))();
            if (v41 == 1)
            {
              (*(*v34 + 16))(&v36);
              v17 = sub_29AC1199C((v6 + 112));
              (*(*v17 + 16))(&v28);
              pxrInternal__aapl__pxrReserved__::UsdImaging_GetDrawModeStandin(&v36, v14, &v29, &v33);
              if (v30)
              {
                sub_29A014BEC(v30);
              }

              if ((v28 & 7) != 0)
              {
                atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((v36 & 7) != 0)
              {
                atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if (!v33)
              {
                v28 = "usdImaging/drawModeSceneIndex.cpp";
                v29 = "_PrimsDirtied";
                v30 = 494;
                v31 = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingDrawModeSceneIndex::_PrimsDirtied(const HdSceneIndexBase &, const HdSceneIndexObserver::DirtiedPrimEntries &)";
                v32 = 0;
                if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v28, "newStandin", 0) & 1) == 0)
                {
                  goto LABEL_39;
                }
              }

              sub_29A1E21F4(&v28, v14);
              sub_29A1E2240(&v28 + 1, v14 + 1);
              sub_29AC3D914(v47, &v28);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v28 + 1);
              sub_29A1DE3A4(&v28);
              pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin::ComputePrimAddedEntries(v33, v45);
              v28 = v14;
              v18 = sub_29A46F1CC((v6 + 144), v14, &unk_29B4D6118, &v28);
              v19 = v33;
              v33 = 0uLL;
              v20 = *(v18 + 6);
              *(v18 + 10) = v19;
              if (v20)
              {
                sub_29A014BEC(v20);
LABEL_39:
                if (*(&v33 + 1))
                {
                  sub_29A014BEC(*(&v33 + 1));
                }
              }
            }
          }
        }

        else
        {
          sub_29AD9391C(&v42, v14);
        }

        if (v35)
        {
          sub_29A014BEC(v35);
        }

        v14 = (v14 + 464);
      }
    }

    if (v48)
    {
      pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(v6, v47);
    }

    if (v46)
    {
      pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(v6, v45);
    }

    if (v44)
    {
      pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v6, &v42);
    }

    sub_29ABD3844(&v42);
  }

  else
  {
    if (v48)
    {
      pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(v6, v47);
    }

    if (v46)
    {
      pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(v6, v45);
    }

    pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v6, v5);
  }

  sub_29AC263E4(v45);
  sub_29AC26348(v47);
  sub_29A1E2AEC(&v38, v39);
}

void sub_29AFBEAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, void *a23)
{
  v25 = v23 + 56;
  v26 = -112;
  do
  {
    v25 = sub_29ABC3488(v25) - 56;
    v26 += 56;
  }

  while (v26);
  __cxa_guard_abort(&qword_2A1752088);
  sub_29A1E2AEC(&a22, a23);
  _Unwind_Resume(a1);
}

void sub_29AFBEC90(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AFBEC90(a1, *a2);
    sub_29AFBEC90(a1, a2[1]);
    sub_29AFBECEC((a2 + 4));

    operator delete(a2);
  }
}

_DWORD *sub_29AFBECEC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingExtentResolvingSceneIndexTokens_StaticTokenType::~UsdImagingExtentResolvingSceneIndexTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingExtentResolvingSceneIndexTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::UsdImagingExtentResolvingSceneIndexTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingExtentResolvingSceneIndexTokens_StaticTokenType::UsdImagingExtentResolvingSceneIndexTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingExtentResolvingSceneIndexTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "purposes", 0);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingExtentResolvingSceneIndex_Impl::_GetPurposes(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A17520A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17520A8))
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v8)
    {
      v8 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v9 = *(v8 + 36);
    qword_2A17520A0 = v9;
    if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      qword_2A17520A0 &= 0xFFFFFFFFFFFFFFF8;
    }

    __cxa_atexit(sub_29AFC0468, 0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17520A8);
  }

  if ((atomic_load_explicit(&qword_2A17520D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17520D8))
  {
    sub_29AE15FD8(&unk_2A17520B0, &qword_2A17520A0, &qword_2A17520A8, 0);
    __cxa_atexit(sub_29A657A90, &unk_2A17520B0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17520D8);
  }

  v4 = *a1;
  if (v4)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingExtentResolvingSceneIndexTokens))
    {
      sub_29AFBF804(&pxrInternal__aapl__pxrReserved__::UsdImagingExtentResolvingSceneIndexTokens);
    }

    (*(*v4 + 24))(&v10, v4);
    sub_29ABE3E74(&v10, &v12);
    v14 = v12;
    v15 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v13)
      {
        sub_29A014BEC(v13);
      }
    }

    if (v11)
    {
      sub_29A014BEC(v11);
    }

    if (pxrInternal__aapl__pxrReserved__::HdVectorSchema::IsDefined(&v14))
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 1065353216;
      NumElements = pxrInternal__aapl__pxrReserved__::HdVectorSchema::GetNumElements(&v14);
      if (NumElements)
      {
        for (i = 0; i != NumElements; ++i)
        {
          sub_29AFBF8C8(&v14, &v12);
          if (v12)
          {
            (*(*v12 + 32))(&v10, 0.0);
            sub_29A169500(a2, &v10, &v10);
            if ((v10 & 7) != 0)
            {
              atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          if (v13)
          {
            sub_29A014BEC(v13);
          }
        }
      }
    }

    else
    {
      sub_29AFBF78C(a2, &unk_2A17520B0);
    }

    if (v15)
    {
      sub_29A014BEC(v15);
    }
  }

  else
  {
    sub_29AFBF78C(a2, &unk_2A17520B0);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingExtentResolvingSceneIndex_Impl::_ContainsExtentsHintWithoutExtent(uint64_t a1)
{
  DefaultLocator = pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchema::GetDefaultLocator(a1);
  result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects((a1 + 8), DefaultLocator);
  if (result)
  {
    v4 = pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetDefaultLocator(result);
    return !pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Contains((a1 + 8), v4);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingExtentResolvingSceneIndex_Impl::_ExtentAdded(_DWORD *a1@<X0>, _DWORD *a2@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  v4 = sub_29ABD2F88(v6, (a1 + 2));
  DefaultLocator = pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetDefaultLocator(v4);
  pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(v6, DefaultLocator);
  sub_29ABD2F24(a2, a1, v6);
  sub_29ABD3178();
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingExtentResolvingSceneIndex_Impl::_Contains(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    while ((*v2 ^ *a2) >= 8)
    {
      if (++v2 == v3)
      {
        v2 = *(a1 + 8);
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingExtentResolvingSceneIndex::~UsdImagingExtentResolvingSceneIndex(pxrInternal__aapl__pxrReserved__::UsdImagingExtentResolvingSceneIndex *this, const void *a2)
{
  *this = &unk_2A20A85D8;
  v3 = *(this + 19);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  *this = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((this + 120), a2);
  sub_29ABD4DDC();
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingExtentResolvingSceneIndex::~UsdImagingExtentResolvingSceneIndex(this, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingExtentResolvingSceneIndex::GetPrim(pxrInternal__aapl__pxrReserved__::UsdImagingExtentResolvingSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29AC1199C(this + 14);
  (*(*v6 + 16))(v6, a2);
  if (*(a3 + 8))
  {
    sub_29AFBF5A8((a3 + 8), this + 18, &v9);
    v7 = v9;
    v9 = 0uLL;
    v8 = *(a3 + 16);
    *(a3 + 8) = v7;
    if (v8)
    {
      sub_29A014BEC(v8);
      if (*(&v9 + 1))
      {
        sub_29A014BEC(*(&v9 + 1));
      }
    }
  }
}

void *sub_29AFBF5A8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x28uLL);
  v8 = *a1;
  v7 = a1[1];
  *v6 = &unk_2A20A86A0;
  v6[1] = v8;
  v6[2] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = a2[1];
  v6[3] = *a2;
  v6[4] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_29AFC00D0(a3, v6);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingExtentResolvingSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::UsdImagingExtentResolvingSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC1199C(this + 14) + 24);

  return v2();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingExtentResolvingSceneIndex::_PrimsDirtied(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v11 = *MEMORY[0x29EDCA608];
  result = pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_IsObserved(v3);
  if (result)
  {
    sub_29AFC01DC(&v9, v5);
    if (v10[1856])
    {
      v8 = v10;
    }

    else
    {
      v8 = v9;
    }

    pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v6, v8);
    return sub_29ABD3844(v10);
  }

  return result;
}

uint64_t sub_29AFBF78C(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29A169500(a1, i + 2, i + 2);
  }

  return a1;
}

unint64_t sub_29AFBF804(atomic_ullong *a1)
{
  v2 = sub_29AFBF884();
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

pxrInternal__aapl__pxrReserved__::UsdImagingExtentResolvingSceneIndexTokens_StaticTokenType *sub_29AFBF884()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingExtentResolvingSceneIndexTokens_StaticTokenType::UsdImagingExtentResolvingSceneIndexTokens_StaticTokenType(v0);
  return v0;
}

void sub_29AFBF8C8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29ABC562C(&v4, a2);
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

void *sub_29AFBF940@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x40uLL);
  result = sub_29AFBF99C(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *sub_29AFBF99C(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20A8650;
  pxrInternal__aapl__pxrReserved__::UsdImagingExtentResolvingSceneIndex_Impl::_GetPurposes(a2, (a1 + 3));
  return a1;
}

void sub_29AFBFA20(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20A8650;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AFBFA70(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20A86A0;
  v2 = *(this + 4);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AFBFAD8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20A86A0;
  v2 = *(this + 4);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v4);
}

void sub_29AFBFB44(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + 8);
  (*(**(a1 + 8) + 16))(*(a1 + 8));
  pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchema::GetFromParent(v3, &v10);
  IsDefined = pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v10);
  v5 = v11;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (IsDefined)
  {
    SchemaToken = pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetSchemaToken(v5);
    v7 = *a2;
    v8 = a2[1];
    if (*a2 != v8)
    {
      while ((*v7 ^ *SchemaToken) >= 8)
      {
        if (++v7 == v8)
        {
          goto LABEL_9;
        }
      }
    }

    if (v7 == v8)
    {
LABEL_9:
      v9 = pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetSchemaToken(SchemaToken);
      sub_29A1D8028(a2, v9);
    }
  }
}

void sub_29AFBFC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  sub_29A124AB0(&a9);
  _Unwind_Resume(a1);
}

void sub_29AFBFC3C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  (*(**(a1 + 8) + 24))(*(a1 + 8));
  if (!*a3)
  {
    v6 = a3[1];
    if (v6)
    {
      sub_29A014BEC(v6);
    }

    if ((*pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetSchemaToken(v6) ^ *a2) > 7)
    {
      *a3 = 0;
      a3[1] = 0;
    }

    else
    {

      sub_29AFBFCEC(a1, a3);
    }
  }
}

void sub_29AFBFCEC(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(*(a1 + 24) + 24))
  {
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchema::GetFromParent((a1 + 8), &v32);
  if (!pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v32))
  {
    *a2 = 0;
    a2[1] = 0;
    goto LABEL_45;
  }

  v4 = *(a1 + 24);
  if (*(v4 + 24) != 1)
  {
    v6 = *(v4 + 16);
    if (v6)
    {
      v7 = 3.40282347e38;
      v8 = -3.40282347e38;
      v9 = -3.40282347e38;
      v24 = -3.40282347e38;
      v10 = 3.40282347e38;
      v11 = 3.40282347e38;
      do
      {
        pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchema::GetExtent(&v32, v6 + 2, &v28);
        pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetMin(&v28, &v31);
        pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetMax(&v28, &v30);
        if (v31 && v30)
        {
          v12 = (*(*v31 + 32))(0.0);
          v14 = v13;
          v16 = v15;
          (*(*v30 + 32))(v30, 0.0);
          if (v12 < v11)
          {
            v11 = v12;
          }

          if (v14 < v10)
          {
            v10 = v14;
          }

          if (v16 < v7)
          {
            v7 = v16;
          }

          if (v17 > v8)
          {
            v8 = v17;
          }

          if (v18 > v9)
          {
            v9 = v18;
          }

          if (v19 > v24)
          {
            v24 = v19;
          }
        }

        if (*(&v30 + 1))
        {
          sub_29A014BEC(*(&v30 + 1));
        }

        if (*(&v31 + 1))
        {
          sub_29A014BEC(*(&v31 + 1));
        }

        if (*(&v28 + 1))
        {
          sub_29A014BEC(*(&v28 + 1));
        }

        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      v8 = -3.40282347e38;
      v11 = 3.40282347e38;
      v10 = 3.40282347e38;
      v7 = 3.40282347e38;
      v9 = -3.40282347e38;
      v24 = -3.40282347e38;
    }

    v28 = 0u;
    v29 = 0u;
    v20 = operator new(0x20uLL);
    *v20 = &unk_2A20779A8;
    v20[1] = v11;
    v20[2] = v10;
    v20[3] = v7;
    sub_29ABF5720(&v27, v20);
    v30 = v27;
    v27 = 0uLL;
    v21 = pxrInternal__aapl__pxrReserved__::HdExtentSchema::Builder::SetMin(&v28, &v30);
    v22 = operator new(0x20uLL);
    *v22 = &unk_2A20779A8;
    v22[1] = v8;
    v22[2] = v9;
    v22[3] = v24;
    sub_29ABF5720(&v25, v22);
    v26 = v25;
    v25 = 0uLL;
    v23 = pxrInternal__aapl__pxrReserved__::HdExtentSchema::Builder::SetMax(v21, &v26);
    pxrInternal__aapl__pxrReserved__::HdExtentSchema::Builder::Build(v23, &v31);
    *a2 = v31;
    v31 = 0uLL;
    if (*(&v26 + 1))
    {
      sub_29A014BEC(*(&v26 + 1));
    }

    if (*(&v25 + 1))
    {
      sub_29A014BEC(*(&v25 + 1));
    }

    if (*(&v30 + 1))
    {
      sub_29A014BEC(*(&v30 + 1));
    }

    if (*(&v27 + 1))
    {
      sub_29A014BEC(*(&v27 + 1));
    }

    if (*(&v29 + 1))
    {
      sub_29A014BEC(*(&v29 + 1));
    }

    v5 = *(&v28 + 1);
    if (!*(&v28 + 1))
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchema::GetExtent(&v32, (*(v4 + 16) + 16), &v31);
  pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(&v31, &v28);
  *a2 = v28;
  v28 = 0uLL;
  v5 = *(&v31 + 1);
  if (*(&v31 + 1))
  {
LABEL_44:
    sub_29A014BEC(v5);
  }

LABEL_45:
  if (v33)
  {
    sub_29A014BEC(v33);
  }
}

void sub_29AFC000C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    sub_29A014BEC(a22);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  sub_29A95E544(&a17);
  v24 = *(v22 - 88);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  _Unwind_Resume(a1);
}

void *sub_29AFC00D0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A86E8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AFC0128(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFC0144(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFC016C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AFC019C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A8738))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29AFC01DC(uint64_t *a1, uint64_t *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  *a1 = a2;
  v3 = a1 + 1;
  a1[929] = 0x1000000000;
  LODWORD(v4) = *(a2 + 1856);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      if (*(a2 + 1857) >= 0x11u)
      {
        a2 = *a2;
      }

      v7 = pxrInternal__aapl__pxrReserved__::UsdImagingExtentResolvingSceneIndex_Impl::_ContainsExtentsHintWithoutExtent(&a2[v5]);
      a2 = *a1;
      if (v7)
      {
        break;
      }

      ++v6;
      v4 = *(a2 + 1856);
      v5 += 58;
      if (v6 >= v4)
      {
        goto LABEL_10;
      }
    }

    LODWORD(v4) = *(a2 + 1856);
  }

  else
  {
    v6 = 0;
  }

LABEL_10:
  if (v6 != v4)
  {
    v8 = *(a1 + 1859);
    if (v8 < v4)
    {
      sub_29AC14D54(v3, v4);
      v8 = *(a1 + 1859);
    }

    v9 = v3;
    if (v8 >= 0x11)
    {
      v9 = *v3;
    }

    v10 = *a1;
    if (*(*a1 + 7428) >= 0x11u)
    {
      v10 = *v10;
    }

    sub_29AC12278(v3, &v9[58 * *(a1 + 1858)], v10, &v10[116 * v6]);
    v11 = *a1;
    if (*(*a1 + 7428) >= 0x11u)
    {
      v11 = *v11;
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingExtentResolvingSceneIndex_Impl::_ExtentAdded(&v11[116 * v6], v13);
  }

  return a1;
}

void sub_29AFC041C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFC0468()
{
  if ((qword_2A17520A0 & 7) != 0)
  {
    atomic_fetch_add_explicit((qword_2A17520A0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchemaTokens_StaticTokenType::~UsdImagingExtentsHintSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchemaTokens_StaticTokenType::UsdImagingExtentsHintSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchemaTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "extentsHint", 0);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchema::GetExtent(pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchema *this@<X0>, atomic_uint **a2@<X1>, void *a3@<X8>)
{
  v8 = *a2;
  if ((*a2 & 7) != 0)
  {
    v4 = (*a2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v4;
    }
  }

  sub_29ABC2F3C(this, &v9);
  v6 = v9;
  v5 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v5);
    v7 = v10;
    *a3 = v6;
    a3[1] = v5;
    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }

  else
  {
    *a3 = v9;
    a3[1] = 0;
  }

  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

double pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchema::BuildRetained@<D0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(a1, a2, a3, &v6);
  result = *&v6;
  *a4 = v6;
  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchemaTokens))
    {
      sub_29AFC0918(&pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchemaTokens);
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

unint64_t pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchemaTokens);
  if (!result)
  {
    return sub_29AFC0918(&pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1752118, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1752118))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AFC0918(&pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A17520E0, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A17520E0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1752118);
  }

  return &unk_2A17520E0;
}

unint64_t sub_29AFC0918(atomic_ullong *a1)
{
  v2 = sub_29AFC0998();
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

pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchemaTokens_StaticTokenType *sub_29AFC0998()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingExtentsHintSchemaTokens_StaticTokenType::UsdImagingExtentsHintSchemaTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens_StaticTokenType::~UsdImagingGeomModelSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens_StaticTokenType *this)
{
  v20 = (this + 152);
  sub_29A124AB0(&v20);
  v2 = *(this + 18);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 17);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 16);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 15);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 14);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 13);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 12);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 11);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 10);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 9);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 8);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 7);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 6);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 5);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 4);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 3);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 2);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 1);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens_StaticTokenType::UsdImagingGeomModelSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens_StaticTokenType *this)
{
  v45 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "geomModel", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "drawMode", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "applyDrawMode", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "drawModeColor", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "cardGeometry", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "cardTextureXPos", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "cardTextureYPos", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "cardTextureZPos", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "cardTextureXNeg", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "cardTextureYNeg", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "cardTextureZNeg", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "default", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "origin", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "bounds", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 112, "cards", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 120, "inherited", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 128, "cross", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 136, "box", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 144, "fromTexture", 0);
  v3 = (this + 152);
  v4 = *this;
  v26 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v27 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v28 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v29 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v30 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v31 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v32 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v33 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v34 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v35 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v36 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v37 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v38 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v39 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v40 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 15);
  v41 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 16);
  v42 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 17);
  v43 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 18);
  v44 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  sub_29A12EF7C(v3, &v26, &v45, 0x13uLL);
  for (i = 144; i != -8; i -= 8)
  {
    v24 = *(&v26 + i);
    if ((v24 & 7) != 0)
    {
      atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AFC1140(_Unwind_Exception *a1)
{
  v3 = 144;
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
      v5 = v1[18];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[17];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[16];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[15];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[14];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[13];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[12];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[11];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[10];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[9];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[8];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[7];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[6];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[5];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[4];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[3];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[2];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[1];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetDrawMode(pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetApplyDrawMode(pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
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

  sub_29ABCB628(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetDrawModeColor(pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
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

  sub_29AFC159C(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AFC159C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29AFC2CD4(&v4, a2);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetCardGeometry(pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
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

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetCardTextureXPos(pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
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

  sub_29AD0D974(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetCardTextureYPos(pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
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

  sub_29AD0D974(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetCardTextureZPos(pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
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

  sub_29AD0D974(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetCardTextureXNeg(pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
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

  sub_29AD0D974(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetCardTextureYNeg(pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
  }

  v5 = *(v4 + 9);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AD0D974(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetCardTextureZNeg(pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
  }

  v5 = *(v4 + 10);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AD0D974(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, _OWORD *a9@<X8>, uint64_t *a10, uint64_t *a11)
{
  v87 = *MEMORY[0x29EDCA608];
  memset(v86, 0, sizeof(v86));
  v17 = &v84;
  v84 = 0u;
  memset(v85, 0, sizeof(v85));
  v18 = v86;
  if (*a1)
  {
    v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    if (!v20)
    {
      v20 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    }

    v17 = v85;
    v18 = v86 + 1;
    sub_29A166F2C(v86, v20 + 1);
    v22 = *a1;
    v21 = a1[1];
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    v23 = *(&v84 + 1);
    *&v84 = v22;
    *(&v84 + 1) = v21;
    if (v23)
    {
      sub_29A014BEC(v23);
    }

    v24 = 1;
  }

  else
  {
    v24 = 0;
  }

  if (*a2)
  {
    v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    if (!v25)
    {
      v25 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    }

    sub_29A166F2C(v18, v25 + 2);
    ++v24;
    v27 = *a2;
    v26 = a2[1];
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }

    v28 = *(v17 + 1);
    *v17 = v27;
    *(v17 + 1) = v26;
    if (v28)
    {
      sub_29A014BEC(v28);
    }
  }

  if (*a3)
  {
    v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    if (!v29)
    {
      v29 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    }

    sub_29A166F2C(v86 + v24, v29 + 3);
    v30 = v24 + 1;
    v31 = &v85[v24 - 1];
    v33 = *a3;
    v32 = a3[1];
    if (v32)
    {
      atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
    }

    v34 = v31[1];
    *v31 = v33;
    v31[1] = v32;
    if (v34)
    {
      sub_29A014BEC(v34);
    }
  }

  else
  {
    v30 = v24;
  }

  if (*a4)
  {
    v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    if (!v35)
    {
      v35 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    }

    sub_29A166F2C(v86 + v30, v35 + 4);
    v36 = v30 + 1;
    v37 = &v85[v30 - 1];
    v39 = *a4;
    v38 = a4[1];
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
    }

    v40 = v37[1];
    *v37 = v39;
    v37[1] = v38;
    if (v40)
    {
      sub_29A014BEC(v40);
    }
  }

  else
  {
    v36 = v30;
  }

  if (*a5)
  {
    v41 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    if (!v41)
    {
      v41 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    }

    sub_29A166F2C(v86 + v36, v41 + 5);
    v42 = v36 + 1;
    v43 = &v85[v36 - 1];
    v45 = *a5;
    v44 = a5[1];
    if (v44)
    {
      atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
    }

    v46 = v43[1];
    *v43 = v45;
    v43[1] = v44;
    if (v46)
    {
      sub_29A014BEC(v46);
    }
  }

  else
  {
    v42 = v36;
  }

  if (*a6)
  {
    v47 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    if (!v47)
    {
      v47 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    }

    sub_29A166F2C(v86 + v42, v47 + 6);
    v48 = v42 + 1;
    v49 = &v85[v42 - 1];
    v51 = *a6;
    v50 = a6[1];
    if (v50)
    {
      atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
    }

    v52 = v49[1];
    *v49 = v51;
    v49[1] = v50;
    if (v52)
    {
      sub_29A014BEC(v52);
    }
  }

  else
  {
    v48 = v42;
  }

  if (*a7)
  {
    v53 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    if (!v53)
    {
      v53 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    }

    sub_29A166F2C(v86 + v48, v53 + 7);
    v54 = v48 + 1;
    v55 = &v85[v48 - 1];
    v57 = *a7;
    v56 = a7[1];
    if (v56)
    {
      atomic_fetch_add_explicit((v56 + 8), 1uLL, memory_order_relaxed);
    }

    v58 = v55[1];
    *v55 = v57;
    v55[1] = v56;
    if (v58)
    {
      sub_29A014BEC(v58);
    }
  }

  else
  {
    v54 = v48;
  }

  if (*a8)
  {
    v59 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    if (!v59)
    {
      v59 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    }

    sub_29A166F2C(v86 + v54, v59 + 8);
    v60 = v54 + 1;
    v61 = &v85[v54 - 1];
    v63 = *a8;
    v62 = a8[1];
    if (v62)
    {
      atomic_fetch_add_explicit((v62 + 8), 1uLL, memory_order_relaxed);
    }

    v64 = v61[1];
    *v61 = v63;
    v61[1] = v62;
    if (v64)
    {
      sub_29A014BEC(v64);
    }
  }

  else
  {
    v60 = v54;
  }

  if (*a10)
  {
    v65 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    if (!v65)
    {
      v65 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    }

    sub_29A166F2C(v86 + v60, v65 + 9);
    v66 = v60 + 1;
    v67 = &v85[v60 - 1];
    v69 = *a10;
    v68 = a10[1];
    if (v68)
    {
      atomic_fetch_add_explicit((v68 + 8), 1uLL, memory_order_relaxed);
    }

    v70 = v67[1];
    *v67 = v69;
    v67[1] = v68;
    if (v70)
    {
      sub_29A014BEC(v70);
    }
  }

  else
  {
    v66 = v60;
  }

  if (*a11)
  {
    v71 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    if (!v71)
    {
      v71 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    }

    sub_29A166F2C(v86 + v66, v71 + 10);
    v72 = v66 + 1;
    v73 = &v85[v66 - 1];
    v75 = *a11;
    v74 = a11[1];
    if (v74)
    {
      atomic_fetch_add_explicit((v74 + 8), 1uLL, memory_order_relaxed);
    }

    v76 = v73[1];
    *v73 = v75;
    v73[1] = v74;
    if (v76)
    {
      sub_29A014BEC(v76);
    }
  }

  else
  {
    v72 = v66;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v72, v86, &v84, &v83);
  *a9 = v83;
  for (i = 152; i != -8; i -= 16)
  {
    v78 = *(&v85[-1] + i);
    if (v78)
    {
      sub_29A014BEC(v78);
    }
  }

  for (j = 72; j != -8; j -= 8)
  {
    v80 = *(v86 + j);
    if ((v80 & 7) != 0)
    {
      atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AFC2064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v15 = 152;
  while (1)
  {
    v16 = *(&a13 + v15);
    if (v16)
    {
      sub_29A014BEC(v16);
    }

    v15 -= 16;
    if (v15 == -8)
    {
      v17 = 72;
      while (1)
      {
        v18 = *(v13 - 176 + v17);
        if ((v18 & 7) != 0)
        {
          atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v17 -= 8;
        if (v17 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::Builder::SetDrawMode(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::Builder::SetApplyDrawMode(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::Builder::SetDrawModeColor(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::Builder::SetCardGeometry(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::Builder::SetCardTextureXPos(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::Builder::SetCardTextureYPos(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::Builder::SetCardTextureZPos(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::Builder::SetCardTextureXNeg(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::Builder::SetCardTextureYNeg(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 136);
  *(a1 + 128) = v4;
  *(a1 + 136) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::Builder::SetCardTextureZNeg(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 152);
  *(a1 + 144) = v4;
  *(a1 + 152) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens))
    {
      sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
  if (!result)
  {
    return sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1752158, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1752158))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1752120, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1752120, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1752158);
  }

  return &unk_2A1752120;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetDrawModeLocator(pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1752198, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1752198);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1752120, (v3 + 8), dword_2A1752160);
      __cxa_atexit(sub_29ABC33B4, dword_2A1752160, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1752198);
    }
  }

  return dword_2A1752160;
}

double pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::BuildDrawModeDataSource@<D0>(pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema *this@<X0>, uint64_t a2@<X8>)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
  if (!v5)
  {
    v5 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
  }

  if ((*(v5 + 11) ^ *this) > 7)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    if (!v7)
    {
      v7 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    }

    if ((*(v7 + 12) ^ *this) > 7)
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      if (!v8)
      {
        v8 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      }

      if ((*(v8 + 13) ^ *this) > 7)
      {
        v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
        if (!v9)
        {
          v9 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
        }

        if ((*(v9 + 14) ^ *this) > 7)
        {
          v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
          if (!v10)
          {
            v10 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
          }

          if ((*(v10 + 15) ^ *this) > 7)
          {
            sub_29ABCCFA4(this, &v14);
            result = *&v14;
            *a2 = v14;
            return result;
          }

          if ((atomic_load_explicit(&qword_2A1752210, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1752210))
          {
            sub_29ABCCFA4(this, &qword_2A1752200);
            __cxa_atexit(sub_29ABCD02C, &qword_2A1752200, &dword_299FE7000);
            __cxa_guard_release(&qword_2A1752210);
          }

          v6 = &qword_2A1752200;
        }

        else
        {
          if ((atomic_load_explicit(&qword_2A17521F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17521F8))
          {
            sub_29ABCCFA4(this, &qword_2A17521E8);
            __cxa_atexit(sub_29ABCD02C, &qword_2A17521E8, &dword_299FE7000);
            __cxa_guard_release(&qword_2A17521F8);
          }

          v6 = &qword_2A17521E8;
        }
      }

      else
      {
        if ((atomic_load_explicit(&qword_2A17521E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17521E0))
        {
          sub_29ABCCFA4(this, &qword_2A17521D0);
          __cxa_atexit(sub_29ABCD02C, &qword_2A17521D0, &dword_299FE7000);
          __cxa_guard_release(&qword_2A17521E0);
        }

        v6 = &qword_2A17521D0;
      }
    }

    else
    {
      if ((atomic_load_explicit(&qword_2A17521C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17521C8))
      {
        sub_29ABCCFA4(this, &qword_2A17521B8);
        __cxa_atexit(sub_29ABCD02C, &qword_2A17521B8, &dword_299FE7000);
        __cxa_guard_release(&qword_2A17521C8);
      }

      v6 = &qword_2A17521B8;
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A17521B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17521B0))
    {
      sub_29ABCCFA4(this, &qword_2A17521A0);
      __cxa_atexit(sub_29ABCD02C, &qword_2A17521A0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A17521B0);
    }

    v6 = &qword_2A17521A0;
  }

  v12 = *v6;
  v11 = v6[1];
  *a2 = v12;
  *(a2 + 8) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::BuildCardGeometryDataSource@<D0>(pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema *this@<X0>, uint64_t a2@<X8>)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
  if (!v5)
  {
    v5 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
  }

  if ((*(v5 + 16) ^ *this) > 7)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    if (!v7)
    {
      v7 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    }

    if ((*(v7 + 17) ^ *this) > 7)
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      if (!v8)
      {
        v8 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      }

      if ((*(v8 + 18) ^ *this) > 7)
      {
        sub_29ABCCFA4(this, &v12);
        result = *&v12;
        *a2 = v12;
        return result;
      }

      if ((atomic_load_explicit(&qword_2A1752258, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1752258))
      {
        sub_29ABCCFA4(this, &qword_2A1752248);
        __cxa_atexit(sub_29ABCD02C, &qword_2A1752248, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1752258);
      }

      v6 = &qword_2A1752248;
    }

    else
    {
      if ((atomic_load_explicit(&qword_2A1752240, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1752240))
      {
        sub_29ABCCFA4(this, &qword_2A1752230);
        __cxa_atexit(sub_29ABCD02C, &qword_2A1752230, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1752240);
      }

      v6 = &qword_2A1752230;
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A1752228, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1752228))
    {
      sub_29ABCCFA4(this, &qword_2A1752218);
      __cxa_atexit(sub_29ABCD02C, &qword_2A1752218, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1752228);
    }

    v6 = &qword_2A1752218;
  }

  v10 = *v6;
  v9 = v6[1];
  *a2 = v10;
  *(a2 + 8) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29AFC2CD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A2081458, 0)) != 0)
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

uint64_t sub_29AFC2D64()
{
  v1 = nullsub_1754;
  return sub_29AFC3670(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGeomSubsetAdapter::~UsdImagingGeomSubsetAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingGeomSubsetAdapter *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(this);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGeomSubsetAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
{
  v5 = *MEMORY[0x29EDCA608];
  v4 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  result = sub_29A12EF7C(a1, &v4, &v5, 1uLL);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGeomSubsetAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
{
  if (*a1)
  {
    v5 = 0;
LABEL_3:
    *a2 = v5;
    return;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v6)
  {
    v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  v7 = *(v6 + 6);
  *a2 = v7;
  if ((v7 & 7) != 0)
  {
    v5 = (v7 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      goto LABEL_3;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGeomSubsetAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals *a3@<X3>, void *a4@<X8>)
{
  if (!*a2)
  {
    v6 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v10, a1);
    v10[0] = &unk_2A20606A0;
    pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchema::GetSchemaToken(v6);
    v8 = 0u;
    v9 = 0u;
    pxrInternal__aapl__pxrReserved__::UsdGeomSubset::GetIndicesAttr(v10, v7);
    sub_29AF7C664(v7, a3);
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_29AFC326C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, std::__shared_weak_count *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, std::__shared_weak_count *a28, char a29)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  sub_29A1DCEA8(&a10);
  v31 = *(v29 - 136);
  if (v31)
  {
    sub_29A014BEC(v31);
  }

  v32 = *(v29 - 152);
  if (v32)
  {
    sub_29A014BEC(v32);
  }

  v33 = *(v29 - 168);
  if (v33)
  {
    sub_29A014BEC(v33);
  }

  if (a20)
  {
    sub_29A014BEC(a20);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  sub_29A5888DC(&a13);
  if (a28)
  {
    sub_29A014BEC(a28);
  }

  if (a26)
  {
    sub_29A014BEC(a26);
  }

  sub_29A5888DC(&a21);
  sub_29A95E544(&a29);
  pxrInternal__aapl__pxrReserved__::UsdGeomSubset::~UsdGeomSubset((v29 - 104));
  _Unwind_Resume(a1);
}

void sub_29AFC336C(__int128 *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x90uLL);
  v7 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  v8 = *a2;
  v9 = v7;
  *a2 = 0;
  *(a2 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource::HdOverlayContainerDataSource(v6, &v9, &v8);
  sub_29ABDE960(a3, v6);
  if (*(&v8 + 1))
  {
    sub_29A014BEC(*(&v8 + 1));
  }

  if (*(&v9 + 1))
  {
    sub_29A014BEC(*(&v9 + 1));
  }
}

void sub_29AFC33FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (v13)
  {
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGeomSubsetAdapter::InvalidateImagingSubprim(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a2@<X3>, int a3@<W4>, uint64_t a4@<X8>)
{
  v14[57] = *MEMORY[0x29EDCA608];
  *(a4 + 448) = 0x800000000;
  v8 = *a2;
  v9 = a2[1];
  if (*a2 == v9)
  {
LABEL_16:
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::Invalidate(a1, a2, a3, v14);
    pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a4, v14);
    sub_29ABD3178();
  }

  while (1)
  {
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v10)
    {
      v10 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    if ((*(v10 + 58) ^ *v8) > 7)
    {
      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v12)
      {
        v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v12 + 35) ^ *v8) > 7)
      {
        goto LABEL_15;
      }

      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
      if (!v13)
      {
        v13 = sub_29AC31EA0(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v14, (v13 + 8));
      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a4, v14);
    }

    else
    {
      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
      if (!v11)
      {
        v11 = sub_29AC31EA0(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v14, (v11 + 16));
      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a4, v14);
    }

    sub_29ABC3488(v14);
LABEL_15:
    v8 = (v8 + 8);
    if (v8 == v9)
    {
      goto LABEL_16;
    }
  }
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingGeomSubsetAdapter::Populate@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(a1);
  sub_29A1E21F4(a2, v3);

  return sub_29A1E2240(a2 + 1, v3 + 1);
}

uint64_t sub_29AFC3670(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20A89A0;
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

void sub_29AFC36FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFC3720(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29AFC3748@<D0>(_OWORD *a1@<X8>)
{
  sub_29AFC3784(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29AFC3784(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20A89E0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20A8760;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29AFC3830(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20A89E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AFC389C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20A8A30;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AFC38F8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20A8A30;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void *sub_29AFC3958@<X0>(uint64_t a1@<X0>, atomic_uint **a2@<X8>)
{
  result = (*(*a1 + 32))(&v6);
  v4 = v6;
  *a2 = v6;
  a2[1] = (&off_2A2044E88 + 1);
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v5;
    }
  }

  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t sub_29AFC39F0(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void sub_29AFC3A20(uint64_t a1@<X0>, atomic_uint **a2@<X8>)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    *a2 = 0;
    return;
  }

  (*(*v3 + 32))(&v15);
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v5)
  {
    v5 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v5 + 39) ^ v15) <= 7)
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
    if (!v6)
    {
      v6 = sub_29AC31EA0(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
    }

    v7 = *(v6 + 3);
    goto LABEL_15;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v8 + 101) ^ v15) <= 7)
  {
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
    if (!v9)
    {
      v9 = sub_29AC31EA0(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
    }

    v7 = *(v9 + 4);
LABEL_15:
    *a2 = v7;
    if ((v7 & 7) == 0)
    {
      goto LABEL_24;
    }

    v10 = (v7 & 0xFFFFFFFFFFFFFFF8);
    if (atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed))
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v13[0] = "usdImaging/geomSubsetAdapter.cpp";
  v13[1] = "GetTypedValue";
  v13[2] = 85;
  v13[3] = "virtual TfToken pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ElementTypeConversionDataSource::GetTypedValue(const Time)";
  v14 = 0;
  v11 = v15 & 0xFFFFFFFFFFFFFFF8;
  if ((v15 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v12 = (v11 + 16);
    if (*(v11 + 39) < 0)
    {
      v12 = *v12;
    }
  }

  else
  {
    v12 = "";
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v13, "Unsupported GeomSubset type: %s", v4, v12);
  v10 = 0;
LABEL_23:
  *a2 = v10;
LABEL_24:
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AFC3BCC(_Unwind_Exception *a1)
{
  v2 = *(v1 - 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_29AFC3BF0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFC3C18(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AFC3C48(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A8AD0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AFC3C88()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_LEGACY_UPDATE_FOR_TIME))
  {
    sub_29B2CD608();
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::_AddHdPrimInfo(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate **a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__ **a3, uint64_t a4)
{
  v7 = *a4;
  if (*a4)
  {
    v8 = *(a4 + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_AdapterLookup(*a1, a3, 0);
    v7 = *v9;
    v8 = v9[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v7)
    {
      __p[0] = "usdImaging/indexProxy.cpp";
      __p[1] = "_AddHdPrimInfo";
      v29 = 38;
      v30 = "UsdImagingDelegate::_HdPrimInfo *pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::_AddHdPrimInfo(const SdfPath &, const UsdPrim &, const UsdImagingPrimAdapterSharedPtr &)";
      v31 = 0;
      pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a3);
    }
  }

  if (sub_29AF49C14(2))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::TfType::GetCanonicalTypeName(*(*v7 - 8), __p);
    v13 = v29 >= 0 ? __p : __p[0];
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Add HdPrim Info] <%s> adapter=%s\n", v11, v12, Text, v13);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v14 = *a1;
  *v26 = 0u;
  memset(v27, 0, 56);
  v25 = 0u;
  LODWORD(v26[0]) = 1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v27);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v27 + 1);
  *(&v27[0] + 1) = 0;
  memset(&v27[1] + 8, 0, 32);
  sub_29AFC5AC8(__p, a2, &v25);
  v15 = sub_29AFC5FA4(v14 + 9, __p, __p);
  v17 = v16;
  sub_29AFA2200(__p);
  v18 = *&v27[3];
  *&v27[3] = 0;
  if (v18)
  {
    v19 = sub_29A1DE590(v18);
    operator delete(v19);
  }

  v32 = &v27[1] + 1;
  sub_29A1E234C(&v32);
  if ((BYTE8(v27[0]) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v27[0] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v27 + 1);
  sub_29A1DE3A4(v27);
  if (v26[1])
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v26[1], v20);
  }

  if (*(&v25 + 1))
  {
    sub_29A014BEC(*(&v25 + 1));
  }

  if (v17)
  {
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = v15[4];
    v15[3] = v7;
    v15[4] = v8;
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    v15[9] = 0;
    *(v15 + 10) = *a3;
    v22 = a3[1];
    if (v22)
    {
      atomic_fetch_add_explicit(v22 + 6, 1uLL, memory_order_relaxed);
    }

    v23 = v15[6];
    if (v23)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v23, v20);
    }

    v15[6] = v22;
    sub_29A2258F0(v15 + 14, a3 + 4);
    sub_29A225948(v15 + 15, a3 + 5);
    sub_29A166F2C(v15 + 8, a3 + 3);
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a3);
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }

  return 0;
}

void sub_29AFC4120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_29A1DCEA8(&a11);
  if (v28)
  {
    sub_29A014BEC(v28);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AFC41BC(uint64_t a1)
{
  v2 = (a1 + 56);
  sub_29A1DE554((a1 + 80), 0);
  v8 = v2;
  sub_29A1E234C(&v8);
  v3 = *(a1 + 40);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v5 = *(a1 + 24);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5, v4);
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::_RemoveDependencies(pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  HdPrimInfo = pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GetHdPrimInfo(*this, a2);
  if (HdPrimInfo || (result = sub_29B2CD63C(v5, a2), (result & 1) != 0))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath((HdPrimInfo + 2));
  }

  return result;
}

void sub_29AFC4380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  sub_29A3BFBFC(&a11);
  sub_29A1DCEA8(&a9);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AFC43B4(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AFC6588(a1, a2);
  }

  else
  {
    result = sub_29AFC6538(v3, a2) + 4;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::RemovePrimInfoDependency(pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  HdPrimInfo = pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GetHdPrimInfo(*this, a2);
  if (HdPrimInfo || (result = sub_29B2CD6AC(v5, a2), (result & 1) != 0))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath((HdPrimInfo + 2));
  }

  return result;
}

void sub_29AFC453C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::AddDependency(pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::UsdPrim *a3)
{
  if (pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GetHdPrimInfo(*this, a2) || (result = sub_29B2CD71C(v6, a2), (result & 1) != 0))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a3);
  }

  return result;
}

void sub_29AFC4670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_29A3BFBFC(va);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFC469C(uint64_t *a1, unsigned int *a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = (a1[1] - *a1) >> 3;
    sub_29A1E21F4(&v9, a2);
    sub_29A1E2240(&v10, a2 + 1);
    v11 = v5;
    v12 = v9;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(&v9);
    v13 = v10;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(&v10);
    v14 = v11;
    v6 = sub_29A2F49C0(v4, &v12, &v12);
    LOBYTE(v5) = v7;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
    sub_29A1DE3A4(&v12);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
    sub_29A1DE3A4(&v9);
    if ((v5 & 1) == 0)
    {
      return *a1 + 8 * v6[3];
    }
  }

  else
  {
    result = sub_29A377CFC(a1, a2);
    if (a1[1] != result)
    {
      return result;
    }
  }

  sub_29A1E28B4(a1, a2);
  sub_29AFC684C(a1);
  return a1[1] - 8;
}

void sub_29AFC47D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, int a11)
{
  sub_29A377C7C(&a11);
  sub_29A377CBC(&a9);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::InsertRprim(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__ **a4, uint64_t a5)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::_AddHdPrimInfo(a1, a3, a4, a5);
  if (result)
  {
    v9 = result;
    v10 = *(*a1 + 8);
    sub_29AF9B468(*a1, a3, &v11);
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertRprim(v10, a2, *a1, &v11);
    *(v9 + 52) = -3;
    sub_29A43A86C(*a1 + 216, a3, a3);
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_AddTask(*a1, *(a1 + 8), a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
    return sub_29A1DE3A4(&v11);
  }

  return result;
}

void sub_29AFC48BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::InsertSprim(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__ **a4, uint64_t a5)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::_AddHdPrimInfo(a1, a3, a4, a5);
  if (result)
  {
    v9 = result;
    v10 = *(*a1 + 8);
    sub_29AF9B468(*a1, a3, &v11);
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertSprim(v10, a2, *a1, &v11);
    *(v9 + 52) = -3;
    sub_29A43A86C(*a1 + 216, a3, a3);
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_AddTask(*a1, *(a1 + 8), a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
    return sub_29A1DE3A4(&v11);
  }

  return result;
}

void sub_29AFC4990(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::InsertBprim(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__ **a4, uint64_t a5)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::_AddHdPrimInfo(a1, a3, a4, a5);
  if (result)
  {
    v9 = result;
    v10 = *(*a1 + 8);
    sub_29AF9B468(*a1, a3, &v11);
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertBprim(v10, a2, *a1, &v11);
    *(v9 + 52) = -3;
    sub_29A43A86C(*a1 + 216, a3, a3);
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_AddTask(*a1, *(a1 + 8), a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
    return sub_29A1DE3A4(&v11);
  }

  return result;
}

void sub_29AFC4A64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::InsertInstancer(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__ **a3, void *a4)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::_AddHdPrimInfo(a1, a2, a3, a4);
  if (result)
  {
    v8 = result;
    v9 = *(*a1 + 8);
    sub_29AF9B468(*a1, a2, &v17);
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertInstancer(v9, *a1, &v17);
    v8[13] = -3;
    sub_29A43A86C(*a1 + 216, a2, a2);
    if (sub_29AF49C14(4))
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      v13 = *a4;
      if (v13)
      {
        pxrInternal__aapl__pxrReserved__::TfType::GetCanonicalTypeName(*(*v13 - 8), __p);
        if (v16 >= 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = __p[0];
        }
      }

      else
      {
        v14 = "none";
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Instancer Inserted] %s, adapter = %s\n", v10, v11, Text, v14);
      if (v13)
      {
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_AddTask(*a1, *(a1 + 8), a2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
    return sub_29A1DE3A4(&v17);
  }

  return result;
}

int *pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::_UniqueifyPathsToRepopulate(pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *this)
{
  v2 = this + 16;
  v3 = *(this + 3);
  result = *(this + 2);
  if (result != v3)
  {
    sub_29A24ED30(result, v3, &v12, 126 - 2 * __clz((v3 - result) >> 3), 1);
    v5 = *(this + 2);
    v6 = *(this + 3);
    if (v5 != v6)
    {
      do
      {
        v7 = v5 + 8;
        if (v5 + 8 == v6)
        {
          v5 = v6;
          return sub_29A362D50(v2, v5, *(this + 3));
        }

        HasPrefix = pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((v5 + 8), v5);
        v5 = v7;
      }

      while (!HasPrefix);
      v9 = (v7 - 8);
      if (v7 + 8 != v6)
      {
        v10 = v7 + 12;
        do
        {
          if (!pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((v10 - 4), v9))
          {
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
          }

          v11 = v10 + 4;
          v10 += 8;
        }

        while (v11 != v6);
      }

      v5 = v9 + 8;
    }

    return sub_29A362D50(v2, v5, *(this + 3));
  }

  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkRprimDirty(pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3)
{
  HdPrimInfo = pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GetHdPrimInfo(*this, a2);
  if (HdPrimInfo || (sub_29B2CD78C(v11, a2) & 1) != 0)
  {
    *(HdPrimInfo + 13) |= a3;
    if (sub_29AFC4DEC())
    {
      sub_29A43A86C(*this + 216, a2, a2);
    }
  }

  v7 = *(*this + 8);
  sub_29AF9B468(*this, a2, &v9);
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty((v7 + 440), &v9, a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
  return sub_29A1DE3A4(&v9);
}

uint64_t sub_29AFC4DEC()
{
  if ((atomic_load_explicit(&qword_2A1752268, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1752268))
  {
    v1 = atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_LEGACY_UPDATE_FOR_TIME);
    if (!v1)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
    }

    byte_2A1752260 = *v1 == 0;
    __cxa_guard_release(&qword_2A1752268);
  }

  return byte_2A1752260;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkSprimDirty(pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3)
{
  HdPrimInfo = pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GetHdPrimInfo(*this, a2);
  if (HdPrimInfo || (sub_29B2CD7FC(v11, a2) & 1) != 0)
  {
    *(HdPrimInfo + 13) |= a3;
    if (sub_29AFC4DEC())
    {
      sub_29A43A86C(*this + 216, a2, a2);
    }
  }

  v7 = *(*this + 8);
  sub_29AF9B468(*this, a2, &v9);
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkSprimDirty((v7 + 440), &v9, a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
  return sub_29A1DE3A4(&v9);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkBprimDirty(pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3)
{
  HdPrimInfo = pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GetHdPrimInfo(*this, a2);
  if (HdPrimInfo || (sub_29B2CD86C(v11, a2) & 1) != 0)
  {
    *(HdPrimInfo + 13) |= a3;
    if (sub_29AFC4DEC())
    {
      sub_29A43A86C(*this + 216, a2, a2);
    }
  }

  v7 = *(*this + 8);
  sub_29AF9B468(*this, a2, &v9);
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkBprimDirty((v7 + 440), &v9, a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
  return sub_29A1DE3A4(&v9);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkInstancerDirty(pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3)
{
  HdPrimInfo = pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GetHdPrimInfo(*this, a2);
  if (HdPrimInfo || (sub_29B2CD8DC(v11, a2) & 1) != 0)
  {
    *(HdPrimInfo + 13) |= a3;
    if (sub_29AFC4DEC())
    {
      sub_29A43A86C(*this + 216, a2, a2);
    }
  }

  v7 = *(*this + 8);
  sub_29AF9B468(*this, a2, &v9);
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkInstancerDirty((v7 + 440), &v9, a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
  return sub_29A1DE3A4(&v9);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::GetMaterialAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate **this@<X0>, pxrInternal__aapl__pxrReserved__ **a2@<X1>, void *a3@<X8>)
{
  v5 = pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_AdapterLookup(*this, a2, 1);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7 && (*(*v7 + 512))(v7, this))
  {
    *a3 = v7;
    a3[1] = v6;
    if (!v6)
    {
      return;
    }

    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    if (!v6)
    {
      return;
    }
  }

  sub_29A014BEC(v6);
}

void sub_29AFC51D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::_ProcessRemovals(uint64_t *this, uint64_t a2, char *a3)
{
  v3 = this;
  v4 = *(*this + 8);
  v7 = this[5];
  v6 = this[6];
  v5 = (this + 5);
  v63 = v7;
  v64 = v6;
  if (v7 != v6)
  {
    do
    {
      if (sub_29AF49C14(2))
      {
        v10 = sub_29AFC5854(&v63);
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(*v10);
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Remove Rprim] <%s>\n", v12, v13, Text);
      }

      v14 = *v3;
      v15 = sub_29A1E25CC(&v63, v8, v9);
      sub_29AF9B468(v14, v15, &v58);
      pxrInternal__aapl__pxrReserved__::HdRenderIndex::RemoveRprim(v4, &v58);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v59);
      sub_29A1DE3A4(&v58);
      this = sub_29A1E264C(&v63);
    }

    while (v63 != v64);
    v7 = v3[5];
    v6 = v3[6];
  }

  while (v6 != v7)
  {
    v6 -= 2;
    this = sub_29A1E230C(v5, v6);
  }

  v3[6] = v7;
  v17 = v3[14];
  v16 = v3[15];
  v63 = v17;
  v64 = v16;
  if (v17 != v16)
  {
    do
    {
      if (sub_29AF49C14(2))
      {
        v20 = sub_29AFC5854(&v63);
        v21 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(*v20);
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Remove Instancer] <%s>\n", v22, v23, v21);
      }

      v24 = *v3;
      v25 = sub_29A1E25CC(&v63, v18, v19);
      sub_29AF9B468(v24, v25, &v58);
      pxrInternal__aapl__pxrReserved__::HdRenderIndex::RemoveInstancer(v4, &v58);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v59);
      sub_29A1DE3A4(&v58);
      this = sub_29A1E264C(&v63);
    }

    while (v63 != v64);
    v17 = v3[14];
    v16 = v3[15];
  }

  while (v16 != v17)
  {
    v16 -= 2;
    this = sub_29A1E230C((v3 + 14), v16);
  }

  v3[15] = v17;
  v27 = v3[8];
  v26 = v3[9];
  v63 = v27;
  v64 = v26;
  if (v27 != v26)
  {
    do
    {
      v28 = *sub_29AFC588C(&v63);
      v29 = *sub_29AFC588C(&v63);
      if (sub_29AF49C14(2))
      {
        v30 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v29 + 8));
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Remove Sprim] <%s>\n", v31, v32, v30);
      }

      sub_29AF9B468(*v3, (v29 + 8), &v58);
      pxrInternal__aapl__pxrReserved__::HdRenderIndex::RemoveSprim(v4, v28, &v58);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v59);
      sub_29A1DE3A4(&v58);
      this = sub_29AFC58C4(&v63);
    }

    while (v63 != v64);
    v27 = v3[8];
    v26 = v3[9];
  }

  while (v26 != v27)
  {
    v26 -= 16;
    this = sub_29AFA2400((v3 + 8), v26);
  }

  v3[9] = v27;
  v34 = v3[11];
  v33 = v3[12];
  v63 = v34;
  v64 = v33;
  if (v34 != v33)
  {
    do
    {
      v35 = *sub_29AFC588C(&v63);
      v36 = *sub_29AFC588C(&v63);
      if (sub_29AF49C14(2))
      {
        v37 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v36 + 8));
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Remove Bprim] <%s>\n", v38, v39, v37);
      }

      sub_29AF9B468(*v3, (v36 + 8), &v58);
      pxrInternal__aapl__pxrReserved__::HdRenderIndex::RemoveBprim(v4, v35, &v58);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v59);
      sub_29A1DE3A4(&v58);
      this = sub_29AFC58C4(&v63);
    }

    while (v63 != v64);
    v34 = v3[11];
    v33 = v3[12];
  }

  while (v33 != v34)
  {
    v33 -= 16;
    this = sub_29AFA2400((v3 + 11), v33);
  }

  v40 = v3[17];
  v3[12] = v34;
  v41 = v3[18];
  if (v41 != v40)
  {
    *(*v3 + 1200) = 0;
    v63 = v40;
    v64 = v41;
    do
    {
      v42 = sub_29A1E25CC(&v63, a2, a3);
      sub_29A1E21F4(&v58, v42);
      sub_29A1E2240(&v59, v42 + 1);
      if (sub_29AF49C14(2))
      {
        v43 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v58);
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Remove PrimInfo] <%s>\n", v44, v45, v43);
      }

      sub_29AFC5944((*v3 + 296), &v58);
      sub_29AFC6934((*v3 + 256), &v58);
      sub_29AFC696C((*v3 + 72), &v58);
      sub_29AF9B468(*v3, &v58, &v61);
      sub_29AFC6A00((*v3 + 136), &v58);
      sub_29AFC6A00((*v3 + 176), &v61);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v62);
      sub_29A1DE3A4(&v61);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v59);
      sub_29A1DE3A4(&v58);
      this = sub_29A1E264C(&v63);
    }

    while (v63 != v64);
    v40 = v3[17];
    v41 = v3[18];
  }

  while (v41 != v40)
  {
    v41 -= 2;
    this = sub_29A1E230C((v3 + 17), v41);
  }

  v3[18] = v40;
  v47 = v3[20];
  v46 = v3[21];
  v63 = v47;
  v64 = v46;
  if (v47 != v46)
  {
    do
    {
      v48 = sub_29AFC59C8(&v63, a2, a3);
      sub_29A23F744(&v58, v48);
      if (sub_29AF49C14(2))
      {
        v49 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v58);
        v50 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v60);
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Remove dependency] <%s> -> <%s>\n", v51, v52, v49, v50);
      }

      v54 = sub_29AFAF990(*v3 + 112);
      if (v54 != v53)
      {
        while (*(v54 + 36) != v60)
        {
          v55 = *(v54 + 8);
          if (v55)
          {
            do
            {
              v56 = v55;
              v55 = *v55;
            }

            while (v55);
          }

          else
          {
            do
            {
              v56 = *(v54 + 16);
              v57 = *v56 == v54;
              v54 = v56;
            }

            while (!v57);
          }

          v54 = v56;
          if (v56 == v53)
          {
            goto LABEL_50;
          }
        }

        sub_29A03AFE8((*v3 + 112), v54);
        sub_29A1EF8E4((v54 + 28));
        operator delete(v54);
      }

LABEL_50:
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v60 + 1);
      sub_29A1DE3A4(&v60);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v59);
      sub_29A1DE3A4(&v58);
      this = sub_29AFC5A48(&v63);
    }

    while (v63 != v64);
    v47 = v3[20];
    v46 = v3[21];
  }

  while (v46 != v47)
  {
    v46 -= 4;
    this = sub_29AFA2324((v3 + 20), v46);
  }

  v3[21] = v47;
  return this;
}

void sub_29AFC57E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A3BFBFC(va);
  _Unwind_Resume(a1);
}

void *sub_29AFC5854(void *result)
{
  if (*result == result[1])
  {
    sub_29B2CD94C();
  }

  return result;
}

void *sub_29AFC588C(void *result)
{
  if (*result == result[1])
  {
    sub_29B2CD998();
  }

  return result;
}

void *sub_29AFC58C4(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::_TypeAndPath>>::operator++() [T = std::vector<pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::_TypeAndPath>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

_DWORD *sub_29AFC5944(_BYTE *a1, _DWORD *a2)
{
  sub_29AFA2658(a2, &v4);
  sub_29AFC5BD4(a1, &v4);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v5);
  return sub_29A1DE3A4(&v4);
}

uint64_t sub_29AFC59C8(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<std::pair<const pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>>>::operator*() [T = std::vector<std::pair<const pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29AFC5A48(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<std::pair<const pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>>>::operator++() [T = std::vector<std::pair<const pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

uint64_t sub_29AFC5AC8(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v6 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v6 + 1, a2 + 1);
  *(a1 + 8) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 24) = *(a3 + 16);
  *(a1 + 32) = *(a3 + 24);
  *(a3 + 24) = 0;
  sub_29A1DDD84((a1 + 40), (a3 + 32));
  sub_29A1DDDC0((a1 + 44), (a3 + 36));
  *(a1 + 48) = *(a3 + 40);
  *(a3 + 40) = 0;
  *(a1 + 56) = *(a3 + 48);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = *(a3 + 56);
  v7 = *(a3 + 80);
  *(a1 + 80) = *(a3 + 72);
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a1 + 88) = v7;
  return a1;
}

_DWORD *sub_29AFC5B78(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  v6 = sub_29A1DDD84(a1, a2);
  sub_29A1DDDC0(v6 + 1, a2 + 1);
  sub_29A1E21F4(a1 + 2, a3);
  sub_29A1E2240(a1 + 3, a3 + 1);
  return a1;
}

uint64_t sub_29AFC5BD4(_BYTE *a1, unsigned int *a2)
{
  if (*a1 != 1)
  {
    return sub_29AFC5C28((a1 + 8), a2);
  }

  result = sub_29B2CD9E4(v5);
  if (result)
  {
    return sub_29AFC5C28((a1 + 8), a2);
  }

  return result;
}

uint64_t sub_29AFC5C28(uint64_t a1, unsigned int *a2)
{
  sub_29AFC5D34(a1, a2, &v9);
  v3 = 0;
  if (v9 != v11 || v10 != v12)
  {
    v5 = v9;
    do
    {
      ++v3;
      do
      {
        v5 = *v5;
      }

      while (v5 && (*(v5 + 48) & 1) == 0);
    }

    while (v5 != v11 || v10 != v12);
  }

  sub_29AFC5CA4(a1, v9, v10, v11, v12, &v8);
  return v3;
}

uint64_t sub_29AFC5CA4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v9 = a2;
  for (i = result; v9 != a4 || a3 != a5; result = sub_29AFC5E68(i, v12, a3, &v14))
  {
    v12 = v9;
    do
    {
      v9 = *v9;
    }

    while (v9 && (*(v9 + 48) & 1) == 0);
  }

  *a6 = v9;
  a6[1] = a3;
  return result;
}

void sub_29AFC5D34(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v6 = bswap64(0x9E3779B97F4A7C55 * (*(a2 + 1) & 0xFFFFFFFFFFFFFFF8));
  v7 = bswap64(0x9E3779B97F4A7C55 * (v6 + ((v5 + v6 + (v5 + v6) * (v5 + v6)) >> 1)));
  v18 = 0;
  v19 = v7;
  v8 = &v19;
  for (i = 7; i != -1; --i)
  {
    v10 = *v8++;
    *(&v18 + i) = byte_29B734F74[v10];
  }

  v11 = v18;
  v12 = a1 + 16;
  sub_29AFA282C(a1, v7, &v19);
  v13 = v19;
  if (v19)
  {
    v14 = v11 | 1;
    while (1)
    {
      v15 = v13[6];
      if (v15 > v14)
      {
        v13 = 0;
        v17 = 0;
        goto LABEL_15;
      }

      if (v15 == v14 && v13[1] == *a2 && (*(a2 + 1) ^ v13[2]) <= 7uLL)
      {
        break;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    v17 = v13;
    do
    {
      v17 = *v17;
    }

    while (v17 && (v17[6] & 1) == 0);
LABEL_15:
    *a3 = v13;
    a3[1] = v12;
    a3[2] = v17;
  }

  else
  {
LABEL_13:
    *a3 = 0;
    a3[1] = v12;
    a3[2] = 0;
  }

  a3[3] = v12;
}

uint64_t sub_29AFC5E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = bswap64(0x9E3779B97F4A7C55 * (*(a2 + 12) + ((*(a2 + 12) + *(a2 + 8) + (*(a2 + 12) + *(a2 + 8)) * (*(a2 + 12) + *(a2 + 8))) >> 1)));
  v9 = bswap64(0x9E3779B97F4A7C55 * (*(a2 + 16) & 0xFFFFFFFFFFFFFFF8));
  sub_29AFA282C(a1, bswap64(0x9E3779B97F4A7C55 * (v9 + ((v8 + v9 + (v8 + v9) * (v8 + v9)) >> 1))), &v14);
  result = a1 + 16;
  v11 = v14;
  if (v14)
  {
    while (1)
    {
      v12 = *v11;
      if (*v11 == a2 && result == a3)
      {
        break;
      }

      v14 = *v11;
      v11 = v12;
      if (!v12)
      {
        goto LABEL_7;
      }
    }

    v15 = v11;
    return sub_29AFC5F40(a2, result, &v15, a4);
  }

  else
  {
LABEL_7:
    *a4 = 0;
    *(a4 + 8) = result;
  }

  return result;
}

uint64_t sub_29AFC5F40@<X0>(uint64_t ***this@<X2>, uint64_t a2@<X0>, uint64_t ****a3@<X1>, uint64_t ***a4@<X8>)
{
  v6 = *this;
  **a3 = *this;
  result = sub_29AFA16D0(a2, this);
  --*(a2 + 8);
  for (; v6; v6 = *v6)
  {
    if (v6[6])
    {
      break;
    }
  }

  *a4 = v6;
  a4[1] = a2;
  return result;
}

void *sub_29AFC5FA4(void *a1, unsigned int *a2, uint64_t a3)
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
    sub_29AFC61EC(a1, v4, a3, v11);
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

void sub_29AFC61D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AFC6410(va, 0);
  _Unwind_Resume(a1);
}

void sub_29AFC61EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x70uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  sub_29AFC625C((v8 + 2), a3);
}

void sub_29AFC625C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, (a2 + 4));
  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 32);
  *(a1 + 32) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 40), (a2 + 40));
  sub_29A1E2240((a1 + 44), (a2 + 44));
  v7 = *(a2 + 48);
  *(a1 + 48) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 48) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 56) = *(a2 + 56);
  sub_29AFC6358((a1 + 64));
}