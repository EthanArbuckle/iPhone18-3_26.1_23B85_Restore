void sub_29AC696B4(uint64_t a1)
{
  *a1 = &unk_2A207CB40;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 148));
  sub_29A1DE3A4((a1 + 144));
  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 120), v2);
  sub_29ABD4DDC();
}

void sub_29AC69744(uint64_t a1)
{
  *a1 = &unk_2A207CB40;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 148));
  sub_29A1DE3A4((a1 + 144));
  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 120), v2);
  sub_29ABD4DDC();
}

uint64_t sub_29AC697D8(uint64_t a1, _DWORD *a2, void *a3)
{
  *a1 = &unk_2A207CC18;
  sub_29A1E21F4((a1 + 8), a2);
  sub_29A1E2240((a1 + 12), a2 + 1);
  v6 = a3[1];
  *(a1 + 16) = *a3;
  *(a1 + 24) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_29AC69850(uint64_t a1)
{
  *a1 = &unk_2A207CC18;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AC698C0(uint64_t a1)
{
  *a1 = &unk_2A207CC18;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void *sub_29AC69934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    (*(*v3 + 16))(a2);
    v7 = *a2;
  }

  else
  {
    *(a2 + 16) = 0;
    v7 = 0u;
    *a2 = 0u;
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC6A6D4(&pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens);
  }

  v5 = sub_29A35CD28(v7, *(&v7 + 1), v4);
  return sub_29A3203E8(a2, v5, *(a2 + 8));
}

void sub_29AC699F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29AC69A0C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens);
  if (!v6)
  {
    v6 = sub_29AC6A6D4(&pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens);
  }

  if ((*v6 ^ *a2) > 7)
  {

    sub_29AC69BBC(a1, a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_29AC69AA0(uint64_t a1)
{
  *a1 = &unk_2A207CC18;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AC69B10(uint64_t a1)
{
  *a1 = &unk_2A207CC18;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

uint64_t sub_29AC69B84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 16))();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void sub_29AC69BBC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_31:
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  (*(*v4 + 24))(&v21);
  v5 = v21;
  if (v21)
  {
    sub_29ABC3244(&v21, &v19);
    v6 = v19;
    if (v19)
    {
      v7 = operator new(0x20uLL);
      v8 = v20;
      v22 = v6;
      v23 = v20;
      v19 = 0;
      v20 = 0;
      sub_29AC697D8(v7, (a1 + 8), &v22);
      sub_29AC69ED0(&v18, v7);
      if (v8)
      {
        sub_29A014BEC(v8);
      }

      *a2 = v18;
      v9 = v20;
      if (!v20)
      {
        goto LABEL_28;
      }

LABEL_27:
      sub_29A014BEC(v9);
      goto LABEL_28;
    }

    if (v20)
    {
      sub_29A014BEC(v20);
    }

    sub_29ABE1B68(&v21, &v22);
    v10 = v22;
    if (v22)
    {
      v11 = operator new(0x20uLL);
      v12 = v11;
      v13 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *v11 = &unk_2A207CCC0;
      sub_29A1E21F4(v11 + 2, (a1 + 8));
      sub_29A1E2240(v12 + 3, (a1 + 12));
      *(v12 + 2) = v10;
      *(v12 + 3) = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = operator new(0x20uLL);
      v15 = &unk_2A207CD10;
    }

    else
    {
      if (v23)
      {
        sub_29A014BEC(v23);
      }

      sub_29AC34FD4(&v21, &v22);
      v16 = v22;
      if (!v22)
      {
        if (v23)
        {
          sub_29A014BEC(v23);
        }

        *a2 = v21;
        v21 = 0uLL;
        goto LABEL_28;
      }

      v17 = operator new(0x20uLL);
      v12 = v17;
      v13 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *v17 = &unk_2A207CD88;
      sub_29A1E21F4(v17 + 2, (a1 + 8));
      sub_29A1E2240(v12 + 3, (a1 + 12));
      *(v12 + 2) = v16;
      *(v12 + 3) = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = operator new(0x20uLL);
      v15 = &unk_2A207CDD8;
    }

    *v14 = v15;
    v14[1] = 0;
    v14[2] = 0;
    v14[3] = v12;
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    *a2 = v12;
    a2[1] = v14;
    v9 = v23;
    if (v23)
    {
      goto LABEL_27;
    }
  }

LABEL_28:
  if (*(&v21 + 1))
  {
    sub_29A014BEC(*(&v21 + 1));
  }

  if (!v5)
  {
    goto LABEL_31;
  }
}

void sub_29AC69E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  (*(*v16 + 8))(v16);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(a1);
}

void *sub_29AC69ED0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207CC48;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AC69F28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC69F44(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC69F6C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC69F9C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207CC98))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AC69FDC(uint64_t a1)
{
  *a1 = &unk_2A207CCC0;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AC6A04C(uint64_t a1)
{
  *a1 = &unk_2A207CCC0;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

_DWORD *sub_29AC6A0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 32))(&v4);
  *(a2 + 8) = &off_2A20470E8 + 1;
  sub_29A1E21F4(a2, &v4);
  sub_29A1E2240((a2 + 4), &v4 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v4 + 1);
  return sub_29A1DE3A4(&v4);
}

uint64_t sub_29AC6A150(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

_DWORD *sub_29AC6A180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    (*(*v4 + 32))(&v8);
    IsAbsolutePath = pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(&v8);
    if (IsAbsolutePath)
    {
      v6 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(IsAbsolutePath);
      pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(a2, &v8, v6, (a1 + 8), 1);
    }

    else
    {
      sub_29A1DDD84(a2, &v8);
      sub_29A1DDDC0((a2 + 4), &v8 + 1);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8 + 1);
    return sub_29A1DE3A4(&v8);
  }

  else
  {
    *a2 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a2);

    return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a2 + 4));
  }
}

void sub_29AC6A278(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29AC6A290(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC6A2B8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC6A2E8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207CD60))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AC6A328(uint64_t a1)
{
  *a1 = &unk_2A207CD88;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AC6A398(uint64_t a1)
{
  *a1 = &unk_2A207CD88;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29AC6A40C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2076AF0;
  sub_29A18ECC8(a2, v3);
  sub_29ABED558(v3);
}

void sub_29AC6A480(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ABED558(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC6A498(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

double sub_29AC6A4C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    (*(*v4 + 32))(a2);
    sub_29AC6A5F4(a2, v5, v6);
    v7 = *(a2 + 32);
    sub_29AC6A5F4(a2, v8, v9);
    for (i = *(a2 + 32) + 8 * *a2; v7 != i; v7 = (v7 + 8))
    {
      IsAbsolutePath = pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(v7);
      if (IsAbsolutePath)
      {
        v13 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(IsAbsolutePath);
        pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v14, v7, v13, (a1 + 8), 1);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }
    }
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_29AC6A5F4(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    if (*(a1 + 24) || (v4 = atomic_load((v3 - 16)), v4 != 1))
    {
      sub_29B2C647C(a1, (a1 + 32), a3);
    }
  }
}

void sub_29AC6A63C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC6A664(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC6A694(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207CE28))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens_StaticTokenType *sub_29AC6A6D4(atomic_ullong *a1)
{
  result = sub_29AC6A71C();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens_StaticTokenType::~HdSystemSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens_StaticTokenType *sub_29AC6A71C()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::HdSystemSchemaTokens_StaticTokenType::HdSystemSchemaTokens_StaticTokenType(v0);
  return v0;
}

void sub_29AC6A764(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC6A794(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207CEA0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AC6A7D4(uint64_t a1)
{
  if (a1)
  {
    *a1 = &unk_2A207CC18;
    v2 = *(a1 + 24);
    if (v2)
    {
      sub_29A014BEC(v2);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
    sub_29A1DE3A4((a1 + 8));
    pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

    operator delete(v3);
  }
}

void pxrInternal__aapl__pxrReserved__::HdPrimDataSourceOverlayCache::~HdPrimDataSourceOverlayCache(pxrInternal__aapl__pxrReserved__::HdPrimDataSourceOverlayCache *this)
{
  *this = &unk_2A207CEC8;
  sub_29AC6B9D8(this + 64, *(this + 9));
  sub_29AC2C840(this + 3);
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void *pxrInternal__aapl__pxrReserved__::HdPrimDataSourceOverlayCache::GetPrim@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, atomic_uint **a3@<X8>)
{
  result = sub_29A41AA50((a1 + 24), a2);
  if (result)
  {
    v5 = result[1];
    *a3 = v5;
    if ((v5 & 7) != 0)
    {
      v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
      {
        *a3 = v6;
      }
    }

    v7 = result[3];
    a3[1] = result[2];
    a3[2] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdPrimDataSourceOverlayCache::HandlePrimsAdded(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  if (a2[65] >= 0x11u)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = a2[64];
  if (v4)
  {
    v7 = &v3[4 * v4];
    while (1)
    {
      v22 = 0;
      v23 = 0;
      v8 = sub_29AC1199C(a3);
      (*(*v8 + 16))(v19);
      v21 = *&v19[8];
      *&v19[8] = 0;
      *&v19[16] = 0;
      if ((v19[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      sub_29A1E21F4(v19, v3);
      sub_29A1E2240(&v19[4], v3 + 1);
      *&v19[8] = 0;
      *&v19[16] = 0;
      v20 = 0;
      v9 = sub_29AC2DBE8((a1 + 24), v19);
      if (v20)
      {
        sub_29A014BEC(v20);
      }

      if ((v19[8] & 7) != 0)
      {
        atomic_fetch_add_explicit((*&v19[8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19[4]);
      sub_29A1DE3A4(v19);
      v10 = v3 + 2;
      sub_29A166F2C(v9 + 1, v10);
      if (*(v9 + 2))
      {
        break;
      }

      sub_29A014C58(&v17, (a1 + 8));
      sub_29AC6AC74(&v21, &v22, &v17, v19);
      v15 = *v19;
      *v19 = 0uLL;
      v14 = *(v9 + 3);
      *(v9 + 1) = v15;
      if (v14)
      {
        goto LABEL_18;
      }

LABEL_22:
      if (v18)
      {
        sub_29A014BEC(v18);
      }

      if (*(&v21 + 1))
      {
        sub_29A014BEC(*(&v21 + 1));
      }

      if (v23)
      {
        sub_29A014BEC(v23);
      }

      v3 = v10 + 1;
      if (v3 == v7)
      {
        return;
      }
    }

    v11 = *(v9 + 3);
    v17 = *(v9 + 2);
    v18 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29AC6AB8C(&v17, v19);
    v12 = *v19;
    v13 = *(&v21 + 1);
    v16 = v21;
    if (*(&v21 + 1))
    {
      atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
      pxrInternal__aapl__pxrReserved__::HdPrimDataSourceOverlayCache::_HdPrimDataSourceOverlay::UpdateInputDataSource(v12, &v16);
      v14 = v13;
LABEL_18:
      sub_29A014BEC(v14);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::HdPrimDataSourceOverlayCache::_HdPrimDataSourceOverlay::UpdateInputDataSource(*v19, &v16);
    }

    if (*&v19[8])
    {
      sub_29A014BEC(*&v19[8]);
    }

    goto LABEL_22;
  }
}

void sub_29AC6AB38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  if (a20)
  {
    sub_29A014BEC(a20);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AC6AB8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
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

void pxrInternal__aapl__pxrReserved__::HdPrimDataSourceOverlayCache::_HdPrimDataSourceOverlay::UpdateInputDataSource(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[2];
  a1[1] = v4;
  a1[2] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v7 = a1[8];
  v6 = a1 + 8;
  sub_29AC6B960((v6 - 1), v7);
  *v6 = 0;
  v6[1] = 0;
  *(v6 - 1) = v6;
}

void sub_29AC6AC74(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x50uLL);
  v9 = v8;
  v10 = *a1;
  v11 = a1[1];
  v18[0] = v10;
  v18[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *a2;
  v13 = a2[1];
  v17[0] = v12;
  v17[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *a3;
  v15 = a3[1];
  v16[0] = v14;
  v16[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::HdPrimDataSourceOverlayCache::_HdPrimDataSourceOverlay::_HdPrimDataSourceOverlay(v8, v18, v17, v16);
  sub_29AC6BA7C(a4, v9);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (v11)
  {

    sub_29A014BEC(v11);
  }
}

void sub_29AC6AD74(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
    if (!v2)
    {
LABEL_3:
      if (!v1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  sub_29A014BEC(v2);
  if (!v1)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  sub_29A014BEC(v1);
  goto LABEL_5;
}

void pxrInternal__aapl__pxrReserved__::HdPrimDataSourceOverlayCache::HandlePrimsRemoved(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 128);
  if (*(a2 + 132) >= 0x11u)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  if (v2)
  {
    v5 = &v3[2 * v2];
    do
    {
      if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath(v3))
      {
        pxrInternal__aapl__pxrReserved__::Sdf_VisitPathTableInParallel(*(a1 + 24), (*(a1 + 32) - *(a1 + 24)) >> 3, &v10, sub_29AC2D8C0);
        v10 = *(a1 + 24);
        *(a1 + 24) = 0u;
        v6 = *(a1 + 40);
        *(a1 + 40) = 0;
        v11 = v6;
        v12 = 0;
        v13 = *(a1 + 56);
        *(a1 + 48) = 0u;
        sub_29AC2C840(&v10);
      }

      else
      {
        *(&v10 + 1) = 0;
        *&v10 = sub_29A41AA50((a1 + 24), v3);
        v7 = sub_29A41AAB8(&v10);
        v8 = v10;
        *(&v10 + 1) = v7;
        v9 = v10;
        if (v7 != v10)
        {
          v7 = v10;
          do
          {
            sub_29AC2BAB4((v7 + 16));
            v7 = *(v9 + 40);
            if (!v7)
            {
              v7 = sub_29A41AAB8(&v9);
            }

            v9 = v7;
          }

          while (*(&v10 + 1) != v7);
          v8 = v10;
        }

        if (v8 != v7)
        {
          sub_29AC2BC80((a1 + 24), &v10);
        }
      }

      v3 += 2;
    }

    while (v3 != v5);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdPrimDataSourceOverlayCache::HandlePrimsDirtied(uint64_t result, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet ***a2, uint64_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  if (*(a2 + 1857) >= 0x11u)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  if (*(a2 + 1856))
  {
    v5 = result;
    v6 = (result + 72);
    v18 = 0x800000000;
    v7 = *(result + 64);
    if (v7 != (result + 72))
    {
      do
      {
        if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects((v7 + 5), v3 + 1))
        {
          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&v15, (v7 + 4));
          pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(v17, &v15);
          sub_29ABC3488(&v15);
        }

        v8 = v7[1];
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
            v9 = v7[2];
            v10 = *v9 == v7;
            v7 = v9;
          }

          while (!v10);
        }

        v7 = v9;
      }

      while (v9 != v6);
    }

    if (!pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::IsEmpty(v17))
    {
      v11 = sub_29A41AA50((v5 + 24), v3);
      if (v11)
      {
        v12 = v11[3];
        v13 = v11[2];
        v14 = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_29AC6AB8C(&v13, &v15);
        pxrInternal__aapl__pxrReserved__::HdPrimDataSourceOverlayCache::_HdPrimDataSourceOverlay::PrimDirtied(v15, v17);
        if (v16)
        {
          sub_29A014BEC(v16);
        }

        if (v14)
        {
          sub_29A014BEC(v14);
        }
      }

      if (a3)
      {
        sub_29ABD2F24(&v15, v3, v17);
        sub_29AC3DA10(a3, &v15);
        sub_29ABD3178();
      }
    }

    sub_29ABD3178();
  }

  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdPrimDataSourceOverlayCache::_HdPrimDataSourceOverlay::PrimDirtied(uint64_t **this, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::begin(a2);
  result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::end(a2);
  if (v4 != result)
  {
    v6 = result;
    do
    {
      FirstElement = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetFirstElement(v4);
      result = sub_29AC6BB88(this + 7, FirstElement);
      v4 += 14;
    }

    while (v4 != v6);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdPrimDataSourceOverlayCache::_HdPrimDataSourceOverlay::_HdPrimDataSourceOverlay(void *result, uint64_t *a2, void *a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = &unk_2A207CEF0;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a3[1];
  result[3] = *a3;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a4[1];
  result[5] = *a4;
  result[6] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  result[9] = 0;
  result[8] = 0;
  result[7] = result + 8;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdPrimDataSourceOverlayCache::_HdPrimDataSourceOverlay::GetNames(pxrInternal__aapl__pxrReserved__::HdPrimDataSourceOverlayCache::_HdPrimDataSourceOverlay *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 1);
  if (!v4)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return;
  }

  (*(*v4 + 16))(a2);
  sub_29AC6BC28(v27, *a2, *(a2 + 8));
  v5 = *(this + 6);
  if (v5 && (v6 = std::__shared_weak_count::lock(v5)) != 0)
  {
    v7 = v6;
    v8 = *(this + 5);
    if (v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
  }

  v25[0] = "hd/primDataSourceOverlayCache.cpp";
  v25[1] = "GetNames";
  v25[2] = 152;
  v25[3] = "virtual TfTokenVector pxrInternal__aapl__pxrReserved__::HdPrimDataSourceOverlayCache::_HdPrimDataSourceOverlay::GetNames()";
  v26 = 0;
  if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v25, "cache", 0))
  {
    v8 = 0;
LABEL_9:
    v9 = *(v8 + 64);
    v10 = (v8 + 72);
    if (v9 != (v8 + 72))
    {
      v11 = 0;
      do
      {
        if (*(v9 + 952) == 1)
        {
LABEL_16:
          sub_29A1D8028(a2, v9 + 4);
          v11 = 1;
        }

        else
        {
          v12 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::begin(v9 + 10);
          v13 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::end((v9 + 5));
          while (v12 != v13)
          {
            FirstElement = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetFirstElement(v12);
            v15 = sub_29A372B90(v27, FirstElement);
            if (v27[1] != v15)
            {
              goto LABEL_16;
            }

            v12 += 14;
          }
        }

        v16 = v9[1];
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = v9[2];
            v18 = *v17 == v9;
            v9 = v17;
          }

          while (!v18);
        }

        v9 = v17;
      }

      while (v17 != v10);
      if (v11)
      {
        v19 = *(a2 + 8);
        v20 = 126 - 2 * __clz((v19 - *a2) >> 3);
        if (v19 == *a2)
        {
          v21 = 0;
        }

        else
        {
          v21 = v20;
        }

        sub_29A2815F8(*a2, v19, &v29, v21, 1);
        v22 = sub_29A5AE88C(*a2, *(a2 + 8));
        sub_29A3203E8(a2, v22, *(a2 + 8));
      }
    }
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }

  v23 = v28;
  v28 = 0;
  if (v23)
  {
    v24 = sub_29A155EF4(v23);
    operator delete(v24);
  }

  v25[0] = v27;
  sub_29A124AB0(v25);
}

void sub_29AC6B448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  sub_29A372B4C(&a14);
  sub_29A124AB0(&a9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdPrimDataSourceOverlayCache::_HdPrimDataSourceOverlay::Get(pxrInternal__aapl__pxrReserved__::HdPrimDataSourceOverlayCache::_HdPrimDataSourceOverlay *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, std::__shared_weak_count **a3@<X8>)
{
  if (!*(this + 1))
  {
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v6 = *(this + 6);
  if (v6 && (v7 = std::__shared_weak_count::lock(v6)) != 0)
  {
    v8 = v7;
    v9 = *(this + 5);
    if (v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0;
  }

  v29 = "hd/primDataSourceOverlayCache.cpp";
  v30 = "Get";
  v31 = 189;
  v32 = "virtual HdDataSourceBaseHandle pxrInternal__aapl__pxrReserved__::HdPrimDataSourceOverlayCache::_HdPrimDataSourceOverlay::Get(const TfToken &)";
  v33 = 0;
  if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v29, "cache", 0) & 1) == 0)
  {
    goto LABEL_13;
  }

  v9 = 0;
LABEL_9:
  v10 = sub_29A31B8F0(v9 + 64, a2);
  if (v9 + 72 != v10)
  {
    v11 = sub_29A31B8F0(this + 56, a2);
    if ((this + 64) == v11)
    {
      if ((*(v10 + 952) & 1) == 0)
      {
        v18 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::begin((v10 + 40));
        v19 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::end((v10 + 40));
        while (v18 != v19)
        {
          v20 = *(this + 1);
          FirstElement = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetFirstElement(v18);
          (*(*v20 + 24))(&v29, v20, FirstElement);
          v22 = v29;
          if (v30)
          {
            sub_29A014BEC(v30);
          }

          if (!v22)
          {
            v23 = *a2;
            v29 = v23;
            if ((v23 & 7) != 0)
            {
              v24 = (v23 & 0xFFFFFFFFFFFFFFF8);
              if ((atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed) & 1) == 0)
              {
                v29 = v24;
              }
            }

            v30 = 0;
            sub_29AC6BDA8(this + 7, &v29, &v29);
            if ((v29 & 7) != 0)
            {
              atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            *a3 = 0;
            a3[1] = 0;
            goto LABEL_14;
          }

          v18 += 14;
        }
      }

      v13 = *(this + 2);
      v27 = *(this + 1);
      v28 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = *(this + 4);
      v25 = *(this + 3);
      v26 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v9 + 16))(v9, a2, &v27, &v25);
      if (v26)
      {
        sub_29A014BEC(v26);
      }

      if (v28)
      {
        sub_29A014BEC(v28);
      }

      v15 = *a2;
      v29 = v15;
      if ((v15 & 7) != 0)
      {
        v16 = (v15 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed) & 1) == 0)
        {
          v29 = v16;
        }
      }

      v17 = a3[1];
      v30 = *a3;
      v31 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29AC6BE34(this + 7, &v29, &v29);
      if (v31)
      {
        sub_29A014BEC(v31);
      }

      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      *a3 = v11[5];
      v12 = v11[6];
      a3[1] = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    goto LABEL_14;
  }

LABEL_13:
  (*(**(this + 1) + 24))(*(this + 1), a2);
LABEL_14:
  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29AC6B7B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC6B85C(uint64_t a1)
{
  *a1 = &unk_2A207CEF0;
  sub_29AC6B960(a1 + 56, *(a1 + 64));
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AC6B8DC(uint64_t a1)
{
  *a1 = &unk_2A207CEF0;
  sub_29AC6B960(a1 + 56, *(a1 + 64));
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v5);
}

void sub_29AC6B960(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AC6B960(a1, *a2);
    sub_29AC6B960(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      sub_29A014BEC(v4);
    }

    v5 = a2[4];
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a2);
  }
}

uint64_t sub_29AC6B9D8(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    sub_29AC6B9D8(result, *a2);
    sub_29AC6B9D8(v3, a2[1]);
    sub_29AC6BA34();
  }

  return result;
}

void *sub_29AC6BA7C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207CF70;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AC6BAD4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC6BAF0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC6BB18(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC6BB48(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207CFC0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29AC6BB88(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_29A31B8F0(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_29AC6BBD0(a1, v3);
  return 1;
}

uint64_t *sub_29AC6BBD0(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_29A03AFE8(a1, a2);
  v4 = a2[6];
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = a2[4];
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(a2);
  return v3;
}

uint64_t sub_29AC6BC28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29AC6BC84(a1, a2, a3);
  return a1;
}

void sub_29AC6BC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_29A1601D8((v10 + 24), 0);
  a10 = v10;
  sub_29A124AB0(&a10);
  _Unwind_Resume(a1);
}

void sub_29AC6BC84(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  if ((((a1[1] - *a1) >> 3) + a3 - a2) >= 0x80 && !a1[3])
  {
    v6 = operator new(0x28uLL);
    *v6 = 0u;
    v6[1] = 0u;
    *(v6 + 8) = 1065353216;
    sub_29A019AA0(v6, 0x80uLL);
    sub_29A1601D8(a1 + 3, v6);
    v7 = *a1;
    if (a1[1] != *a1)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = a1[3];
        v11 = (v7 + v8);
        sub_29A160544(v10, (v7 + v8), &unk_29B4D6118, &v11)[3] = v9++;
        v7 = *a1;
        v8 += 8;
      }

      while (v9 < (a1[1] - *a1) >> 3);
    }
  }

  for (; v4 != a3; ++v4)
  {
    sub_29A372A50(a1, v4);
  }
}

void sub_29AC6BD90(_Unwind_Exception *a1)
{
  v3 = sub_29A155EF4(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AC6BDA8(uint64_t **a1, uint64_t *a2, uint64_t *a3)
{
  v5 = sub_29A153CF4(a1, &v10, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = operator new(0x38uLL);
    v8 = *a3;
    *a3 = 0;
    v6[5] = 0;
    v6[6] = 0;
    v6[4] = v8;
    sub_29A00B204(a1, v10, v7, v6);
  }

  return v6;
}

char *sub_29AC6BE34(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_29A153CF4(a1, &v9, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = operator new(0x38uLL);
    *(v6 + 4) = *a3;
    *(v6 + 40) = *(a3 + 8);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    sub_29A00B204(a1, v9, v7, v6);
  }

  return v6;
}

void *pxrInternal__aapl__pxrReserved__::HdPrimGather::Filter(void *a1, uint64_t *a2, void *a3, void *a4, uint64_t a5)
{
  pxrInternal__aapl__pxrReserved__::HdPrimGather::_SetupFilter(a1, a3, a4);
  pxrInternal__aapl__pxrReserved__::HdPrimGather::_GatherPaths(a1, a2);
  v8 = a1[3];
  v10 = a1[4];
  v11 = v8;
  return sub_29AC6C2A4(a2, &v11, &v10, a5);
}

int *pxrInternal__aapl__pxrReserved__::HdPrimGather::_SetupFilter(uint64_t a1, void *a2, void *a3)
{
  v7 = *a1;
  for (i = *(a1 + 8); i != v7; sub_29AC1C900(a1, i))
  {
    i -= 3;
  }

  *(a1 + 8) = v7;
  sub_29AC6CE58(a1, ((a3[1] - *a3) >> 3) + ((a2[1] - *a2) >> 3));
  v8 = *a2;
  for (j = *(a1 + 8); v8 != a2[1]; v8 += 2)
  {
    v15 = 1;
    if (j >= *(a1 + 16))
    {
      j = sub_29AC6D80C(a1, v8, &v15);
    }

    else
    {
      sub_29A1E21F4(j, v8);
      sub_29A1E2240((j + 4), v8 + 1);
      *(j + 8) = 1;
      j += 12;
    }

    *(a1 + 8) = j;
  }

  for (k = *a3; k != a3[1]; k += 2)
  {
    v14 = 0;
    if (j >= *(a1 + 16))
    {
      j = sub_29AC6D80C(a1, k, &v14);
    }

    else
    {
      sub_29A1E21F4(j, k);
      sub_29A1E2240((j + 4), k + 1);
      *(j + 8) = 0;
      j += 12;
    }

    *(a1 + 8) = j;
  }

  v11 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((j - *a1) >> 2));
  if (j == *a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  return sub_29AC6D950(*a1, j, &v16, v12, 1);
}

void pxrInternal__aapl__pxrReserved__::HdPrimGather::_GatherPaths(void *a1, uint64_t *a2)
{
  v4 = sub_29ABCF8C0(27);
  v5 = *a2;
  if (v4)
  {
    v6 = a2[1];
    if (v5 != v6 && v5 + 8 != v6)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
    }

    v5 = *a2;
  }

  v7 = (a1 + 3);
  a1[4] = a1[3];
  v8 = a2[1];
  if (v5 != v8)
  {
    v9 = *a1;
    if (a1[1] - *a1 == 12 && *(v9 + 8) == 1 && (v10 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v4), v5 = *a2, v8 = a2[1], *v9 == *v10))
    {
      v11 = ((v8 - v5) >> 3) - 1;
      v13 = a1[4];
      v12 = a1[5];
      if (v13 >= v12)
      {
        v15 = *v7;
        v16 = v13 - *v7;
        v17 = v16 >> 4;
        v18 = (v16 >> 4) + 1;
        if (v18 >> 60)
        {
          sub_29A00C9A4();
        }

        v19 = v12 - v15;
        if (v19 >> 3 > v18)
        {
          v18 = v19 >> 3;
        }

        v20 = v19 >= 0x7FFFFFFFFFFFFFF0;
        v21 = 0xFFFFFFFFFFFFFFFLL;
        if (!v20)
        {
          v21 = v18;
        }

        if (v21)
        {
          v22 = sub_29A017BD4((a1 + 3), v21);
          v21 = v23;
          v15 = a1[3];
          v16 = a1[4] - v15;
        }

        else
        {
          v22 = 0;
        }

        v24 = &v22[16 * v17];
        v25 = &v22[16 * v21];
        *v24 = 0;
        *(v24 + 1) = v11;
        v14 = v24 + 16;
        v26 = &v24[-16 * (v16 >> 4)];
        memcpy(v26, v15, v16);
        v27 = a1[3];
        a1[3] = v26;
        a1[4] = v14;
        a1[5] = v25;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        *v13 = 0;
        *(v13 + 1) = v11;
        v14 = v13 + 16;
      }

      a1[4] = v14;
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::HdPrimGather::_FilterRange(a1, a2, 0, ((v8 - v5) >> 3) - 1, 0);
    }
  }
}

void *sub_29AC6C2A4(void *a1, uint64_t **a2, uint64_t **a3, uint64_t a4)
{
  v9 = *a4;
  for (i = *(a4 + 8); i != v9; sub_29A1E230C(a4, i))
  {
    i -= 2;
  }

  *(a4 + 8) = v9;
  v10 = *a2;
  if (*a3 == *a2)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      v13 = *v10;
      v12 = v10[1];
      v10 += 2;
      v11 = v11 + v12 - v13 + 1;
    }

    while (v10 != *a3);
  }

  result = sub_29A2FCAE8(a4, v11);
  for (j = *a2; j != *a3; result = sub_29A23DE4C(a4, *(a4 + 8), (*a1 + 8 * v16), (*a1 + 8 * v17 + 8), (*a1 + 8 * v17 + 8 - (*a1 + 8 * v16)) >> 3))
  {
    v16 = *j;
    v17 = j[1];
    j += 2;
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::HdPrimGather::PredicatedFilter(void *a1, uint64_t *a2, void *a3, void *a4, unsigned int (*a5)(unint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v31 = a5;
  pxrInternal__aapl__pxrReserved__::HdPrimGather::_SetupFilter(a1, a3, a4);
  pxrInternal__aapl__pxrReserved__::HdPrimGather::_GatherPaths(a1, a2);
  v13 = a1[3];
  v12 = a1[4];
  v14 = (v12 - v13) >> 4;
  v21[0] = v14;
  if (v14 <= 0xA)
  {
    if (v12 != v13)
    {
      v15 = 0;
      if (v14 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = (v12 - v13) >> 4;
      }

      do
      {
        pxrInternal__aapl__pxrReserved__::HdPrimGather::_DoPredicateTestOnRange(a1, a2, (a1[3] + v15), a5, a6);
        v15 += 16;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v23 = v21;
    v24 = a1;
    v25 = a2;
    v26 = &v31;
    v27 = &v30;
    *&v22[0] = &unk_2A207CFE8;
    *(&v22[0] + 1) = &v23;
    tbb::interface7::internal::isolate_within_arena(v22, 0);
  }

  v23 = a1 + 6;
  v24 = a1 + 10;
  v25 = 0;
  v26 = 0;
  v17 = a1[13];
  __dmb(0xBu);
  v18 = tbb::internal::concurrent_vector_base_v3::internal_capacity((a1 + 11));
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v27 = a1 + 10;
  v28 = v19;
  v29 = 0;
  sub_29AC6C67C(&v23, v22);
  sub_29AC6C704(&v23, v21);
  return sub_29AC6C560(a2, v22, v21, a7);
}

void pxrInternal__aapl__pxrReserved__::HdPrimGather::_DoPredicateTestOnRange(uint64_t a1, void *a2, uint64_t *a3, unsigned int (*a4)(unint64_t, uint64_t), uint64_t a5)
{
  v5 = *a3;
  *&v11 = a3[1] + 1;
  *(&v11 + 1) = v5;
  v12 = 10;
  if ((v11 - v5) < 0xB)
  {
    pxrInternal__aapl__pxrReserved__::HdPrimGather::_DoPredicateTestOnPrims(a1, a2, &v11, a4, a5);
  }

  else
  {
    *&v6 = pxrInternal__aapl__pxrReserved__::HdPrimGather::_DoPredicateTestOnPrims;
    *(&v6 + 1) = 0;
    v7 = a1;
    v8 = a2;
    v9 = a4;
    v10 = a5;
    sub_29AC6EEF8(&v11, &v6, &v13, a4);
  }
}

BOOL sub_29AC6C560(void *a1, __int128 *a2, void *a3, uint64_t a4)
{
  v9 = *a4;
  for (i = *(a4 + 8); i != v9; sub_29A1E230C(a4, i))
  {
    i -= 2;
  }

  *(a4 + 8) = v9;
  v10 = a2[1];
  v15 = *a2;
  v16 = v10;
  v17 = *(a2 + 4);
  v11 = 0;
  while (!sub_29AC6D4DC(&v15, a3))
  {
    v11 = v11 + v17[1] - *v17 + 1;
    sub_29AC6D590(&v15);
  }

  sub_29A2FCAE8(a4, v11);
  v12 = a2[1];
  v15 = *a2;
  v16 = v12;
  v17 = *(a2 + 4);
  while (1)
  {
    result = sub_29AC6D4DC(&v15, a3);
    if (result)
    {
      break;
    }

    v14 = (*a1 + 8 * v17[1] + 8);
    sub_29A23DE4C(a4, *(a4 + 8), (*a1 + 8 * *v17), v14, (v14 - *a1 + -8 * *v17) >> 3);
    sub_29AC6D590(&v15);
  }

  return result;
}

__n128 sub_29AC6C67C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *(a1 + 8);
  v11 = *(a1 + 24);
  v9[0] = *a1;
  v3 = *(v9[0] + 56);
  __dmb(0xBu);
  v4 = tbb::internal::concurrent_vector_base_v3::internal_capacity((v9[0] + 40));
  if (v4 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v9[1] = v9[0] + 32;
  v9[2] = v5;
  v9[3] = 0;
  v9[4] = 0;
  v6 = sub_29AC6D3D8(v9, &v10);
  result = *v6;
  v8 = *(v6 + 1);
  *a2 = *v6;
  *(a2 + 16) = v8;
  *(a2 + 32) = v6[4];
  return result;
}

__n128 sub_29AC6C704@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v9[0] = *a1;
  v3 = *(v9[0] + 56);
  __dmb(0xBu);
  v4 = tbb::internal::concurrent_vector_base_v3::internal_capacity((v9[0] + 40));
  if (v4 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v9[1] = v9[0] + 32;
  v9[2] = v5;
  v9[3] = 0;
  v9[4] = 0;
  v6 = sub_29AC6D3D8(v9, &v10);
  result = *v6;
  v8 = *(v6 + 1);
  *a2 = *v6;
  *(a2 + 16) = v8;
  *(a2 + 32) = v6[4];
  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdPrimGather::Subtree(uint64_t a1, void *a2, _DWORD *a3, void *a4)
{
  v9 = *a4;
  for (i = a4[1]; i != v9; sub_29A1E230C(a4, i))
  {
    i -= 2;
  }

  a4[1] = v9;
  pxrInternal__aapl__pxrReserved__::HdPrimGather::_FilterSubTree(a1, a2, a3);
  v10 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = v10;
  return sub_29AC6C2A4(a2, &v13, &v12, a4);
}

void pxrInternal__aapl__pxrReserved__::HdPrimGather::_FilterSubTree(uint64_t a1, void *a2, _DWORD *a3)
{
  if (*a2 != a2[1])
  {
    v13 = v3;
    v14 = v4;
    v9 = *a1;
    for (i = *(a1 + 8); i != v9; sub_29AC1C900(a1, i))
    {
      i -= 3;
    }

    *(a1 + 8) = v9;
    sub_29AC6CE58(a1, 1uLL);
    v12 = 1;
    v10 = *(a1 + 8);
    if (v10 >= *(a1 + 16))
    {
      v11 = sub_29AC6D80C(a1, a3, &v12);
    }

    else
    {
      sub_29A1E21F4(*(a1 + 8), a3);
      sub_29A1E2240((v10 + 4), a3 + 1);
      *(v10 + 8) = 1;
      v11 = v10 + 12;
    }

    *(a1 + 8) = v11;
    pxrInternal__aapl__pxrReserved__::HdPrimGather::_FilterRange(a1, a2, 0, ((a2[1] - *a2) >> 3) - 1, 0);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdPrimGather::SubtreeAsRange(uint64_t a1, void *a2, _DWORD *a3, void *a4, void *a5)
{
  pxrInternal__aapl__pxrReserved__::HdPrimGather::_FilterSubTree(a1, a2, a3);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  if (v8 == v9)
  {
    return 0;
  }

  if ((v9 - v8) >= 0x11)
  {
    v11[0] = "hd/primGather.cpp";
    v11[1] = "SubtreeAsRange";
    v11[2] = 125;
    v11[3] = "BOOL pxrInternal__aapl__pxrReserved__::HdPrimGather::SubtreeAsRange(const SdfPathVector &, const SdfPath &, size_t *, size_t *)";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, "Subtree produced more than 1 range.  List unsorted?");
    return 0;
  }

  *a4 = *v8;
  *a5 = *(v8 + 1);
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdPrimGather::_FindLowerBound(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  return a3;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdPrimGather::_FindUpperBound(int a1, void *a2, uint64_t a3, uint64_t a4, pxrInternal__aapl__pxrReserved__::SdfPath *a5)
{
  v6 = a4;
  if (!pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((*a2 + 8 * a4), a5))
  {
    v9 = v6 - a3;
    while (v9)
    {
      v10 = a3 + (v9 >> 1);
      HasPrefix = pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((*a2 + 8 * v10), a5);
      if (HasPrefix)
      {
        v9 += ~(v9 >> 1);
      }

      else
      {
        v9 >>= 1;
      }

      if (HasPrefix)
      {
        a3 = v10 + 1;
      }
    }

    return a3 - 1;
  }

  return v6;
}

void pxrInternal__aapl__pxrReserved__::HdPrimGather::_FilterRange(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = a1[1];
  if (*a1 != v8)
  {
    sub_29A1E21F4(&v26, (v8 - 12));
    sub_29A1E2240(&v27, (v8 - 8));
    v28 = *(v8 - 4);
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  if (a5)
  {
    v10 = a1[4];
    v9 = a1[5];
    if (v10 >= v9)
    {
      v12 = a1[3];
      v13 = v10 - v12;
      v14 = (v10 - v12) >> 4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 60)
      {
        sub_29A00C9A4();
      }

      v16 = v9 - v12;
      if (v16 >> 3 > v15)
      {
        v15 = v16 >> 3;
      }

      v17 = v16 >= 0x7FFFFFFFFFFFFFF0;
      v18 = 0xFFFFFFFFFFFFFFFLL;
      if (!v17)
      {
        v18 = v15;
      }

      if (v18)
      {
        v19 = sub_29A017BD4((a1 + 3), v18);
        v18 = v20;
        v12 = a1[3];
        v13 = a1[4] - v12;
        v21 = v13 >> 4;
      }

      else
      {
        v19 = 0;
        v21 = v14;
      }

      v22 = &v19[16 * v14];
      v23 = &v19[16 * v18];
      *v22 = a3;
      *(v22 + 1) = a4;
      v11 = v22 + 16;
      v24 = &v22[-16 * v21];
      memcpy(v24, v12, v13);
      v25 = a1[3];
      a1[3] = v24;
      a1[4] = v11;
      a1[5] = v23;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v10 = a3;
      *(v10 + 1) = a4;
      v11 = v10 + 16;
    }

    a1[4] = v11;
  }
}

_DWORD *sub_29AC6CE18(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void **sub_29AC6CE58(void **result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 >= 0x1555555555555556)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A379A50(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[12 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = *(v2 + 8);
    v9 = &v4[v3 + *v2 - v8];
    sub_29AC6D630(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    *(v2 + 8) = v5;
    v11 = *(v2 + 16);
    *(v2 + 16) = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29AC6D790(&v12);
  }

  return result;
}

void sub_29AC6CF20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AC6D790(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdPrimGather::_DoPredicateTestOnPrims(uint64_t a1, void *a2, void *a3, unsigned int (*a4)(unint64_t, uint64_t), uint64_t a5)
{
  v8 = a3[1];
  v9 = *a3 - 1;
  v44 = 0;
  v10 = sub_29A0ED084((a1 + 48), &v44);
  if (v8 <= v9)
  {
    v11 = v8;
    do
    {
      if (a4(*a2 + 8 * v8, a5))
      {
        ++v8;
      }

      else
      {
        if (v11 < v8)
        {
          v12 = v8 - 1;
          v14 = v10[1];
          v13 = v10[2];
          if (v14 >= v13)
          {
            v16 = *v10;
            v17 = v14 - *v10;
            v18 = v17 >> 4;
            v19 = (v17 >> 4) + 1;
            if (v19 >> 60)
            {
              goto LABEL_37;
            }

            v20 = v13 - v16;
            if (v20 >> 3 > v19)
            {
              v19 = v20 >> 3;
            }

            v21 = v20 >= 0x7FFFFFFFFFFFFFF0;
            v22 = 0xFFFFFFFFFFFFFFFLL;
            if (!v21)
            {
              v22 = v19;
            }

            if (v22)
            {
              v23 = sub_29A017BD4(v10, v22);
              v22 = v24;
              v16 = *v10;
              v17 = v10[1] - *v10;
            }

            else
            {
              v23 = 0;
            }

            v25 = &v23[16 * v18];
            v26 = &v23[16 * v22];
            *v25 = v11;
            v25[1] = v12;
            v15 = v25 + 2;
            v27 = &v25[-2 * (v17 >> 4)];
            memcpy(v27, v16, v17);
            v28 = *v10;
            *v10 = v27;
            v10[1] = v15;
            v10[2] = v26;
            if (v28)
            {
              operator delete(v28);
            }
          }

          else
          {
            *v14 = v11;
            v14[1] = v12;
            v15 = v14 + 2;
          }

          v10[1] = v15;
        }

        v11 = ++v8;
      }
    }

    while (v8 <= v9);
  }

  else
  {
    v11 = v8;
  }

  if (v11 <= v9)
  {
    v30 = v10[1];
    v29 = v10[2];
    if (v30 >= v29)
    {
      v32 = *v10;
      v33 = v30 - *v10;
      v34 = v33 >> 4;
      v35 = (v33 >> 4) + 1;
      if (v35 >> 60)
      {
LABEL_37:
        sub_29A00C9A4();
      }

      v36 = v29 - v32;
      if (v36 >> 3 > v35)
      {
        v35 = v36 >> 3;
      }

      v21 = v36 >= 0x7FFFFFFFFFFFFFF0;
      v37 = 0xFFFFFFFFFFFFFFFLL;
      if (!v21)
      {
        v37 = v35;
      }

      if (v37)
      {
        v38 = sub_29A017BD4(v10, v37);
        v37 = v39;
        v32 = *v10;
        v33 = v10[1] - *v10;
      }

      else
      {
        v38 = 0;
      }

      v40 = &v38[16 * v34];
      v41 = &v38[16 * v37];
      *v40 = v11;
      v40[1] = v9;
      v31 = v40 + 2;
      v42 = &v40[-2 * (v33 >> 4)];
      memcpy(v42, v32, v33);
      v43 = *v10;
      *v10 = v42;
      v10[1] = v31;
      v10[2] = v41;
      if (v43)
      {
        operator delete(v43);
      }
    }

    else
    {
      *v30 = v11;
      v30[1] = v9;
      v31 = v30 + 2;
    }

    v10[1] = v31;
  }
}

void sub_29AC6D15C(uint64_t a1)
{
  v13[9] = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 8);
  v2 = *(v1 + 8);
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(v11);
  if (**v1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(v1 + 16);
      v9 = *(*(v2 + 24) + v3);
      v6 = **(v1 + 24);
      v7 = **(v1 + 32);
      v10[0] = 0;
      v10[1] = v12;
      v8 = tbb::internal::allocate_additional_child_of_proxy::allocate(v10, 0x50uLL);
      *(v8 - 11) = 1;
      *v8 = &unk_2A207D028;
      *(v8 + 8) = pxrInternal__aapl__pxrReserved__::HdPrimGather::_DoPredicateTestOnRange;
      *(v8 + 16) = 0;
      *(v8 + 24) = v2;
      *(v8 + 32) = v5;
      *(v8 + 40) = v9;
      *(v8 + 56) = v6;
      *(v8 + 64) = v7;
      *(v8 + 72) = v13;
      (***(v8 - 40))();
      ++v4;
      v3 += 16;
    }

    while (v4 < **v1);
  }

  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(v11);
}

uint64_t sub_29AC6D300(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29AC6D3A4(a1 + 8);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 72));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29AC6D390(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC6D3A4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = (*(a1 + 16) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3, *(a1 + 24), a1 + 32, *(a1 + 48), *(a1 + 56));
}

uint64_t *sub_29AC6D3D8(uint64_t *a1, __int128 *a2)
{
  v3 = *a2;
  a1[3] = *(a2 + 2);
  *(a1 + 1) = v3;
  for (i = *a1; ; i = *a1)
  {
    v5 = i + 32;
    v6 = *(i + 56);
    __dmb(0xBu);
    v7 = tbb::internal::concurrent_vector_base_v3::internal_capacity((i + 40));
    v8 = v7 >= v6 ? v6 : v7;
    if (a1[2] == v8 && a1[1] == v5)
    {
      break;
    }

    v10 = sub_29AC6D47C(a1 + 1);
    if (*v10 != v10[1])
    {
      a1[4] = *sub_29AC6D47C(a1 + 1);
      return a1;
    }

    ++a1[2];
    a1[3] = 0;
  }

  return a1;
}

uint64_t sub_29AC6D47C(uint64_t *a1)
{
  result = a1[2];
  if (!result)
  {
    v4 = *a1;
    v3 = a1[1];
    v5 = sub_29A0EC0EC(v3);
    v6 = *(v4 + 32);
    __dmb(0xBu);
    result = *(v6 + 8 * v5) + ((v3 - ((1 << v5) & 0x1FFFFFFFFFFFFFELL)) << 7);
    a1[2] = result;
  }

  return result;
}

BOOL sub_29AC6D4DC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (*a1 != *a2)
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  if (a1[2] != a2[2] || a1[1] != a2[1])
  {
    return 0;
  }

  v7 = v2 + 32;
  v8 = *(v2 + 56);
  __dmb(0xBu);
  v9 = tbb::internal::concurrent_vector_base_v3::internal_capacity((v2 + 40));
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  return a1[2] == v10 && a1[1] == v7 || a1[4] == a2[4];
}

unint64_t sub_29AC6D590(uint64_t *a1)
{
  a1[4] += 16;
  for (i = a1 + 1; ; i = a1 + 1)
  {
    result = sub_29AC6D47C(i);
    if (a1[4] != *(result + 8))
    {
      break;
    }

    ++a1[2];
    a1[3] = 0;
    v4 = *a1;
    v5 = *a1 + 32;
    v6 = *(*a1 + 56);
    __dmb(0xBu);
    result = tbb::internal::concurrent_vector_base_v3::internal_capacity((v4 + 40));
    v7 = result >= v6 ? v6 : result;
    if (a1[2] == v7 && a1[1] == v5)
    {
      break;
    }

    a1[4] = *sub_29AC6D47C(a1 + 1);
  }

  return result;
}

uint64_t sub_29AC6D630(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
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
      sub_29A1DDDC0((v4 + 4), v8 + 1);
      *(v4 + 8) = *(v8 + 8);
      v8 += 3;
      v4 = v13 + 12;
      v13 += 12;
    }

    while (v8 != a3);
    v11 = 1;
    while (v6 != a3)
    {
      sub_29AC1C900(a1, v6);
      v6 += 3;
    }
  }

  return sub_29AC6D704(v10);
}

uint64_t sub_29AC6D704(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AC6D73C(a1);
  }

  return a1;
}

uint64_t *sub_29AC6D73C(uint64_t *result)
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
      result = sub_29AC1C900(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29AC6D790(void **a1)
{
  sub_29AC6D7C4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29AC6D7C4(_DWORD *result)
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
      result = sub_29AC1C900(v4, (v1 - 12));
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29AC6D80C(uint64_t a1, _DWORD *a2, char *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 2);
  v4 = v3 + 1;
  if (v3 + 1 > 0x1555555555555555)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 2) >= 0xAAAAAAAAAAAAAAALL)
  {
    v8 = 0x1555555555555555;
  }

  else
  {
    v8 = v4;
  }

  v21 = a1;
  if (v8)
  {
    v9 = sub_29A379A50(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = &v9[12 * v3];
  v18 = v9;
  v19 = v10;
  *(&v20 + 1) = &v9[12 * v8];
  v11 = *a3;
  sub_29A1E21F4(v10, a2);
  sub_29A1E2240(v10 + 1, a2 + 1);
  v10[8] = v11;
  *&v20 = v10 + 12;
  v12 = *(a1 + 8);
  v13 = &v10[*a1 - v12];
  sub_29AC6D630(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_29AC6D790(&v18);
  return v17;
}

void sub_29AC6D93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AC6D790(va);
  _Unwind_Resume(a1);
}

int *sub_29AC6D950(int *result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a2 - result;
  v6 = 0xAAAAAAAAAAAAAAABLL * (a2 - result);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:

        sub_29AC6DD64();
      case 4:
        sub_29AC6DD64();
      case 5:

        sub_29AC6DE10();
    }
  }

  else
  {
    if (v6 < 2)
    {
      return result;
    }

    if (v6 == 2)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
    }
  }

  if (v5 <= 287)
  {
    if (a5)
    {

      return sub_29AC6DF3C(result, a2);
    }

    else
    {

      return sub_29AC6E098(result, a2);
    }
  }

  else
  {
    if (a4 != 0)
    {
      if (v5 >= 0x601)
      {
        sub_29AC6DD64();
      }

      sub_29AC6DD64();
    }

    if (result != a2)
    {

      return sub_29AC6E89C(result, a2, a2, a3);
    }
  }

  return result;
}

uint64_t sub_29AC6DF3C(uint64_t result, uint64_t a2)
{
  if (result != a2 && result + 12 != a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  return result;
}

uint64_t sub_29AC6E098(uint64_t result, uint64_t a2)
{
  if (result != a2 && result + 12 != a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  return result;
}

void sub_29AC6E1D0(int *a1)
{
  v2 = *a1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(a1);
  v3 = a1[1];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(a1 + 1);
  v4 = *(a1 + 8);
  pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
}

void sub_29AC6E380(int *a1)
{
  v2 = *a1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(a1);
  v3 = a1[1];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(a1 + 1);
  v4 = *(a1 + 8);
  pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
}

uint64_t sub_29AC6E53C(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_29AC6DD64();
      case 4:
        sub_29AC6DD64();
      case 5:
        sub_29AC6DE10();
    }

LABEL_11:
    sub_29AC6DD64();
  }

  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
    }

    goto LABEL_11;
  }

  return 1;
}

void sub_29AC6E7D8(int *a1)
{
  v2 = *a1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(a1);
  v3 = a1[1];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(a1 + 1);
  v4 = *(a1 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

uint64_t sub_29AC6E89C(int *a1, int *a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
    if (a2 - a1 >= 13)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[3 * v10];
      do
      {
        sub_29AC6E9CC(a1, a4, v9, v12);
        v12 -= 12;
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
    }

    if (v8 >= 13)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2);
      do
      {
        sub_29AC6EB98(a1, v6, a4, v14);
        v6 -= 12;
      }

      while (v14-- > 2);
    }

    return v13;
  }

  return a3;
}

uint64_t sub_29AC6E9CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 2 && ((a3 - 2) >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 2)))
  {
    if (0x5555555555555556 * ((a4 - result) >> 2) + 2 < a3)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  return result;
}

int *sub_29AC6EB98(int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v6 = result;
    v7 = *result;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(result);
    v8 = *(v6 + 4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=((v6 + 4));
    v9 = *(v6 + 8);
    sub_29AC6ECFC(v6, a3, a4);
  }

  return result;
}

void sub_29AC6ECFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29AC6EDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }
}

void sub_29AC6EEF8(__int128 *a1, __int128 *a2, uint64_t a3, void *a4)
{
  v15 = *MEMORY[0x29EDCA608];
  if (*(a1 + 1) < *a1)
  {
    v12[0] = 1;
    v13 = 65539;
    v14 = 49;
    tbb::task_group_context::init(v12, a2, a3, a4);
    v11 = v12;
    v6 = tbb::internal::allocate_root_with_context_proxy::allocate(&v11, 0x60uLL);
    *(v6 - 11) = 1;
    *v6 = &unk_2A207D070;
    v7 = *a1;
    *(v6 + 24) = *(a1 + 2);
    *(v6 + 8) = v7;
    v8 = *a2;
    v9 = a2[2];
    *(v6 + 48) = a2[1];
    *(v6 + 64) = v9;
    *(v6 + 32) = v8;
    initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v6);
    *(v6 + 88) = 0;
    *(v6 + 92) = 5;
    *(v6 + 80) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
    (*(**(v6 - 40) + 16))(*(v6 - 40), v6, v6 - 8);
    tbb::task_group_context::~task_group_context(v12);
  }
}

void sub_29AC6F038(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  tbb::task_group_context::~task_group_context(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC6F084(uint64_t a1)
{
  v3 = *(a1 + 80);
  v2 = a1 + 80;
  if (!v3)
  {
    *(a1 + 80) = 1;
    if (*(a1 - 11) < 0)
    {
      v4 = *(a1 - 32);
      if (*(v4 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v4 + 8) = 1;
        v5 = *(a1 + 92);
        if (v5 <= 1)
        {
          LOBYTE(v5) = 1;
        }

        *(a1 + 92) = v5 + 1;
      }
    }
  }

  sub_29AC6F0F4(v2, a1, (a1 + 8));
  return 0;
}

void sub_29AC6F0F4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3[2] < *a3 - a3[1])
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
          sub_29AC6F1A8(a2);
          if (a3[2] >= *a3 - a3[1])
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

  sub_29AC6F2CC(a1, a2, a3);
}

uint64_t sub_29AC6F1A8(uint64_t a1)
{
  v2 = tbb::internal::allocate_continuation_proxy::allocate(a1, 0x10uLL);
  *(v2 - 11) = 1;
  *v2 = &unk_2A204C520;
  __dmb(0xBu);
  v2[8] = 0;
  *(a1 - 32) = v2;
  *(v2 - 3) = 2;
  v3 = tbb::internal::allocate_child_proxy::allocate(v2, 0x60uLL);
  *(v3 - 11) = 1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *v3 = &unk_2A207D070;
  *(v3 + 8) = v4;
  v6 = v5 + ((v4 - v5) >> 1);
  *(a1 + 8) = v6;
  v7 = *(a1 + 24);
  *(v3 + 16) = v6;
  *(v3 + 24) = v7;
  v9 = *(a1 + 48);
  v8 = *(a1 + 64);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  *(v3 + 64) = v8;
  v10 = *(a1 + 80) >> 1;
  *(a1 + 80) = v10;
  *(v3 + 80) = v10;
  *(v3 + 88) = 2;
  *(v3 + 92) = *(a1 + 92);
  v11 = ***(v3 - 40);

  return v11();
}

void sub_29AC6F2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a3 + 16) < *a3 - *(a3 + 8) && *(a1 + 12))
  {
    *v9 = 0x10000;
    v10 = *a3;
    v11 = *(a3 + 16);
    while (1)
    {
      sub_29A3B10B4(v9, *(a1 + 12));
      v5 = *(*(a2 - 32) + 8);
      __dmb(0xBu);
      if (v5)
      {
        v6 = *(a1 + 12) + 1;
        *(a1 + 12) = v6;
        v7 = v9[2];
        if (v9[2] >= 2u)
        {
          sub_29AC6F4AC(a2, &v10 + 24 * v9[1], v9[v9[1] + 3]);
          v7 = --v9[2];
          v9[1] = (v9[1] + 1) & 7;
          goto LABEL_9;
        }

        v8 = v9[0];
        if (v9[v9[0] + 3] < v6 && *(&v10 + 3 * v9[0] + 2) < *(&v10 + 3 * v9[0]) - *(&v10 + 3 * v9[0] + 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v8 = v9[0];
      }

      sub_29AC6F5DC(a2 + 32, &v10 + 24 * v8);
      v7 = --v9[2];
      v9[0] = (v9[0] - 1) & 7;
LABEL_9:
      if (!v7 || tbb::task_group_context::is_group_execution_cancelled(*(a2 - 56)))
      {
        return;
      }
    }
  }

  sub_29AC6F5DC(a2 + 32, a3);
}

uint64_t sub_29AC6F4AC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = tbb::internal::allocate_continuation_proxy::allocate(a1, 0x10uLL);
  *(v6 - 11) = 1;
  *v6 = &unk_2A204C520;
  __dmb(0xBu);
  v6[8] = 0;
  *(a1 - 32) = v6;
  *(v6 - 3) = 2;
  v7 = tbb::internal::allocate_child_proxy::allocate(v6, 0x60uLL);
  *(v7 - 11) = 1;
  *v7 = &unk_2A207D070;
  v8 = *(a2 + 16);
  *(v7 + 8) = *a2;
  *(v7 + 24) = v8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 64);
  *(v7 + 48) = *(a1 + 48);
  *(v7 + 64) = v10;
  *(v7 + 32) = v9;
  v11 = *(a1 + 80) >> 1;
  *(a1 + 80) = v11;
  *(v7 + 80) = v11;
  *(v7 + 88) = 2;
  *(v7 + 92) = *(a1 + 92) - a3;
  v12 = ***(v7 - 40);

  return v12();
}

uint64_t sub_29AC6F5DC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (*(a1 + 16) + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *(a1 + 24), a2, *(a1 + 32), *(a1 + 40));
}

void pxrInternal__aapl__pxrReserved__::HdPrimOriginSchemaTokens_StaticTokenType::~HdPrimOriginSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdPrimOriginSchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdPrimOriginSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdPrimOriginSchemaTokens_StaticTokenType::HdPrimOriginSchemaTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "primOrigin", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "scenePath", 0);
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

void sub_29AC6F78C(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdPrimOriginSchema::GetOriginPath(pxrInternal__aapl__pxrReserved__::HdPrimOriginSchema *this@<X0>, _DWORD *a2@<X8>)
{
  v4 = *this;
  if (v4)
  {
    (*(*v4 + 24))(&v5);
    sub_29AC6F948(&v5, &v7);
    if (v6)
    {
      sub_29A014BEC(v6);
    }

    if (v7)
    {
      (*(*v7 + 32))(&v5, 0.0);
      sub_29A1E21F4(a2, &v5);
      sub_29A1E2240(a2 + 1, &v5 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v5 + 1);
      sub_29A1DE3A4(&v5);
    }

    else
    {
      *a2 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a2);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a2 + 1);
    }

    if (v8)
    {
      sub_29A014BEC(v8);
    }
  }

  else
  {
    *a2 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a2);

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a2 + 1);
  }
}

void sub_29AC6F930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AC6F948@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A207D0A8, 0)) != 0)
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

void *pxrInternal__aapl__pxrReserved__::operator<<(void *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v3 = sub_29A00911C(a1, "HdPrimOriginSchema::OriginPath(", 31);
  v4 = pxrInternal__aapl__pxrReserved__::operator<<(v3, a2);

  return sub_29A00911C(v4, ")", 1);
}

{
  v4 = sub_29A00911C(a1, "RenderVar \n", 11);
  v5 = sub_29A00911C(v4, "    varPath : ", 14);
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(v5, a2);
  v7 = sub_29A00911C(v6, "    namespacedSettings", 22);
  pxrInternal__aapl__pxrReserved__::operator<<(v7, a2 + 6);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdPrimOriginSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimOriginSchemaTokens))
    {
      sub_29AC6FCFC(&pxrInternal__aapl__pxrReserved__::HdPrimOriginSchemaTokens);
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

atomic_uint **pxrInternal__aapl__pxrReserved__::HdPrimOriginSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdPrimOriginSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimOriginSchemaTokens);
  if (!result)
  {
    return sub_29AC6FCFC(&pxrInternal__aapl__pxrReserved__::HdPrimOriginSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdPrimOriginSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdPrimOriginSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174ACA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174ACA0))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimOriginSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AC6FCFC(&pxrInternal__aapl__pxrReserved__::HdPrimOriginSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174AC68, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A174AC68, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174ACA0);
  }

  return &unk_2A174AC68;
}

void *pxrInternal__aapl__pxrReserved__::HdPrimOriginSchema::GetScenePathLocator(pxrInternal__aapl__pxrReserved__::HdPrimOriginSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174ACE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174ACE0))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimOriginSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AC6FCFC(&pxrInternal__aapl__pxrReserved__::HdPrimOriginSchemaTokens);
    }

    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimOriginSchemaTokens);
    if (!v3)
    {
      v3 = sub_29AC6FCFC(&pxrInternal__aapl__pxrReserved__::HdPrimOriginSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174ACA8, v2, (v3 + 1));
    __cxa_atexit(sub_29ABC33B4, &unk_2A174ACA8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174ACE0);
  }

  return &unk_2A174ACA8;
}

atomic_uint **sub_29AC6FCFC(atomic_ullong *a1)
{
  result = sub_29AC6FD44();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdPrimOriginSchemaTokens_StaticTokenType::~HdPrimOriginSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

atomic_uint **sub_29AC6FD44()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::HdPrimOriginSchemaTokens_StaticTokenType::HdPrimOriginSchemaTokens_StaticTokenType(v0);
  return v0;
}

double pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::Hd_PrimTypeIndex(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return result;
}

{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::~Hd_PrimTypeIndex(uint64_t a1)
{
  v4 = (a1 + 88);
  sub_29A124AB0(&v4);
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  sub_29A155EF4(a1 + 24);
  v4 = a1;
  sub_29AC73DFC(&v4);
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::InitPrimTypes(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = (v4 - *a2) >> 3;
  sub_29AC6FF24(a1, v6);
  result = sub_29A1D7F98(a1 + 11, v6);
  v12 = 0;
  if (v4 != v5)
  {
    v8 = 0;
    do
    {
      sub_29A410854((a1 + 3), (*a2 + 8 * v8), (*a2 + 8 * v8), &v12);
      v9 = (*a2 + 8 * v12);
      v10 = a1[12];
      if (v10 >= a1[13])
      {
        std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::TfToken const&>();
      }

      v11 = *v9;
      *v10 = *v9;
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v10 &= 0xFFFFFFFFFFFFFFF8;
      }

      result = v10 + 1;
      a1[12] = result;
      v8 = v12 + 1;
      v12 = v8;
    }

    while (v8 < v6);
  }

  return result;
}

void *sub_29AC6FF24(void *result, unint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((result[1] - *result) >> 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    return sub_29AC73EAC(result, v4);
  }

  if (!v3)
  {
    return sub_29AC73E50(result, *result + 112 * a2);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::Clear(void *a1, uint64_t *a2, uint64_t a3)
{
  sub_29A0ECEEC(&v12, "hd", "void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::Clear(HdChangeTracker &, HdRenderDelegate *) [PrimType = pxrInternal__aapl__pxrReserved__::HdSprim]");
  v6 = a1[1] - *a1;
  if (v6)
  {
    v7 = 0;
    v8 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 4);
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    do
    {
      v10 = *a1 + 112 * v7;
      for (i = *(v10 + 16); i; i = *i)
      {
        pxrInternal__aapl__pxrReserved__::HdChangeTracker::RemoveSprimFromSprimSprimDependencies(a2, (i + 2));
        pxrInternal__aapl__pxrReserved__::HdChangeTracker::SprimRemoved(a2, (i + 2));
        pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::_RenderDelegateDestroyPrim(a3, i[4]);
        i[4] = 0;
      }

      sub_29AC746F4(v10);
      pxrInternal__aapl__pxrReserved__::Hd_SortedIds::Clear((v10 + 40));
      ++v7;
    }

    while (v7 != v9);
  }

  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::_TrackerRemovePrim(uint64_t *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::RemoveSprimFromSprimSprimDependencies(a1, a2);

  return pxrInternal__aapl__pxrReserved__::HdChangeTracker::SprimRemoved(a1, a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::_RenderDelegateDestroyPrim(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = (*(*a1 + 48))(a1);
    (*(*a2 + 24))(a2, v4);
  }

  v5 = *(*a1 + 240);

  return v5(a1, a2);
}

void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::InsertPrim(void *a1, void *a2, unint64_t a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4, pxrInternal__aapl__pxrReserved__::HdChangeTracker *a5, uint64_t a6)
{
  sub_29A0ECEEC(&v27, "hd", "void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::InsertPrim(const TfToken &, HdSceneDelegate *, const SdfPath &, HdChangeTracker &, HdRenderDelegate *) [PrimType = pxrInternal__aapl__pxrReserved__::HdSprim]");
  v12 = sub_29A160470(a1 + 3, a2);
  if (v12)
  {
    if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a4, (a3 + 16)))
    {
      v13 = (*(*a6 + 224))(a6, a2, a4);
      v14 = v13;
      if (v13)
      {
        v15 = (*(*v13 + 32))(v13);
        pxrInternal__aapl__pxrReserved__::HdChangeTracker::SprimInserted(a5, a4, v15);
        v16 = *a1 + 112 * v12[3];
        v23.n128_u64[0] = a3;
        v23.n128_u64[1] = v14;
        sub_29AC74750(v16, a4, a4, &v23);
        if (v17)
        {
          pxrInternal__aapl__pxrReserved__::Hd_SortedIds::Insert((v16 + 40), a4);
        }

        else
        {
          v22 = (*(*a6 + 48))(a6);
          (*(*v14 + 24))(v14, v22);
          (*(*a6 + 240))(a6, v14);
        }
      }
    }

    else
    {
      v23.n128_u64[0] = "hd/primTypeIndex.cpp";
      v23.n128_u64[1] = "InsertPrim";
      v24 = 94;
      v25 = "void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::InsertPrim(const TfToken &, HdSceneDelegate *, const SdfPath &, HdChangeTracker &, HdRenderDelegate *) [PrimType = pxrInternal__aapl__pxrReserved__::HdSprim]";
      v26 = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a3 + 16));
      v21 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a4);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 1, "Scene Delegate Id (%s) must prefix prim Id (%s)", Text, v21);
    }
  }

  else
  {
    v23.n128_u64[0] = "hd/primTypeIndex.cpp";
    v23.n128_u64[1] = "InsertPrim";
    v24 = 87;
    v25 = "void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::InsertPrim(const TfToken &, HdSceneDelegate *, const SdfPath &, HdChangeTracker &, HdRenderDelegate *) [PrimType = pxrInternal__aapl__pxrReserved__::HdSprim]";
    v26 = 0;
    v18 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v18)
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

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 1, "Unsupported prim type: %s", v19);
  }

  if (v27)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v28, v27);
  }
}

void sub_29AC70414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::RemovePrim(void *a1, void *a2, unsigned int *a3, uint64_t *a4, uint64_t a5)
{
  sub_29A0ECEEC(&v17, "hd", "void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::RemovePrim(const TfToken &, const SdfPath &, HdChangeTracker &, HdRenderDelegate *) [PrimType = pxrInternal__aapl__pxrReserved__::HdSprim]");
  v10 = sub_29A160470(a1 + 3, a2);
  if (v10)
  {
    v11 = (*a1 + 112 * v10[3]);
    v12 = sub_29A2F4F50(v11, a3);
    if (v12)
    {
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::RemoveSprimFromSprimSprimDependencies(a4, a3);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::SprimRemoved(a4, a3);
      pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::_RenderDelegateDestroyPrim(a5, v12[4]);
      v12[4] = 0;
      sub_29AC74A14(v11, v12);
      pxrInternal__aapl__pxrReserved__::Hd_SortedIds::Remove((v11 + 5), a3);
    }
  }

  else
  {
    v15[0] = "hd/primTypeIndex.cpp";
    v15[1] = "RemovePrim";
    v15[2] = 137;
    v15[3] = "void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::RemovePrim(const TfToken &, const SdfPath &, HdChangeTracker &, HdRenderDelegate *) [PrimType = pxrInternal__aapl__pxrReserved__::HdSprim]";
    v16 = 0;
    v13 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v13)
    {
      v14 = (v13 + 16);
      if (*(v13 + 39) < 0)
      {
        v14 = *v14;
      }
    }

    else
    {
      v14 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v15, 1, "Unsupported prim type: %s", v14);
  }

  if (v17)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v18, v17);
  }
}

void sub_29AC705BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::RemoveSubtree(void *a1, _DWORD *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v71 = *MEMORY[0x29EDCA608];
  result = sub_29A0ECEEC(&v68, "hd", "void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::RemoveSubtree(const SdfPath &, HdSceneDelegate *, HdChangeTracker &, HdRenderDelegate *) [PrimType = pxrInternal__aapl__pxrReserved__::HdSprim]");
  v10 = a1[1] - *a1;
  if (v10)
  {
    v11 = 0;
    v12 = 0x6DB6DB6DB6DB6DB7 * (v10 >> 4);
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v58 = a5;
    v59 = v12;
    v56 = a2;
    v57 = a1;
    while (1)
    {
      v13 = *a1;
      sub_29AC1C43C(v70);
      v14 = (v13 + 112 * v11);
      __p = 0;
      v64 = 0;
      v65 = 0;
      Ids = pxrInternal__aapl__pxrReserved__::Hd_SortedIds::GetIds((v14 + 5));
      if (pxrInternal__aapl__pxrReserved__::HdPrimGather::SubtreeAsRange(v70, Ids, a2, &v66, &v67))
      {
        break;
      }

      v19 = __p;
      if (__p)
      {
        goto LABEL_9;
      }

LABEL_10:
      result = sub_29AC1C940(v70);
      if (++v11 == v59)
      {
        goto LABEL_54;
      }
    }

    v17 = v66;
    v16 = v67;
    if (v66 <= v67)
    {
      v20 = 8 * v66;
      v18 = v66;
      do
      {
        v21 = *Ids;
        v22 = sub_29A2F4F50(v14, (*Ids + v20));
        v23 = v22;
        if (v22)
        {
          if (v22[3] == a3)
          {
            pxrInternal__aapl__pxrReserved__::HdChangeTracker::RemoveSprimFromSprimSprimDependencies(a4, (v21 + v20));
            pxrInternal__aapl__pxrReserved__::HdChangeTracker::SprimRemoved(a4, (v21 + v20));
            pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::_RenderDelegateDestroyPrim(a5, v23[4]);
            v23[4] = 0;
            sub_29AC74A14(v14, v23);
          }

          else
          {
            if (v18 < v17)
            {
              v24 = v17 - 1;
              v25 = v64;
              if (v64 >= v65)
              {
                v28 = __p;
                v29 = v64 - __p;
                v30 = (v64 - __p) >> 4;
                v31 = v30 + 1;
                if ((v30 + 1) >> 60)
                {
                  sub_29A00C9A4();
                }

                v32 = v65 - __p;
                if ((v65 - __p) >> 3 > v31)
                {
                  v31 = v32 >> 3;
                }

                v33 = v32 >= 0x7FFFFFFFFFFFFFF0;
                v34 = 0xFFFFFFFFFFFFFFFLL;
                if (!v33)
                {
                  v34 = v31;
                }

                if (v34)
                {
                  v35 = sub_29A017BD4(&__p, v34);
                  v34 = v36;
                  v28 = __p;
                  v29 = v64 - __p;
                }

                else
                {
                  v35 = 0;
                }

                v37 = (v64 - __p) >> 4;
                v38 = &v35[16 * v30];
                v39 = &v35[16 * v34];
                *v38 = v18;
                *(v38 + 1) = v24;
                v26 = v38 + 16;
                v40 = &v38[-16 * v37];
                memcpy(v40, v28, v29);
                v41 = __p;
                __p = v40;
                v64 = v26;
                v65 = v39;
                if (v41)
                {
                  operator delete(v41);
                }

                a5 = v58;
              }

              else
              {
                *v64 = v18;
                *(v25 + 1) = v24;
                v26 = v25 + 16;
              }

              v64 = v26;
            }

            v18 = v17 + 1;
          }
        }

        else
        {
          v61[0] = "hd/primTypeIndex.cpp";
          v61[1] = "RemoveSubtree";
          v61[2] = 204;
          v61[3] = "void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::RemoveSubtree(const SdfPath &, HdSceneDelegate *, HdChangeTracker &, HdRenderDelegate *) [PrimType = pxrInternal__aapl__pxrReserved__::HdSprim]";
          v62 = 0;
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v21 + v20));
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v61, 1, "Prim in id list not in info map: %s", Text);
        }

        ++v17;
        v16 = v67;
        v20 += 8;
      }

      while (v17 <= v67);
      a2 = v56;
    }

    else
    {
      v18 = v66;
    }

    v42 = v64;
    if (v18 <= v16)
    {
      if (v64 >= v65)
      {
        v43 = __p;
        v44 = v64 - __p;
        v45 = (v64 - __p) >> 4;
        v46 = v45 + 1;
        if ((v45 + 1) >> 60)
        {
          sub_29A00C9A4();
        }

        v47 = v65 - __p;
        if ((v65 - __p) >> 3 > v46)
        {
          v46 = v47 >> 3;
        }

        v33 = v47 >= 0x7FFFFFFFFFFFFFF0;
        v48 = 0xFFFFFFFFFFFFFFFLL;
        if (!v33)
        {
          v48 = v46;
        }

        if (v48)
        {
          v49 = sub_29A017BD4(&__p, v48);
          v48 = v50;
          v43 = __p;
          v44 = v64 - __p;
          v51 = (v64 - __p) >> 4;
          v16 = v67;
        }

        else
        {
          v49 = 0;
          v51 = (v64 - __p) >> 4;
        }

        v52 = &v49[16 * v45];
        v53 = &v49[16 * v48];
        *v52 = v18;
        *(v52 + 1) = v16;
        v42 = v52 + 16;
        v54 = &v52[-16 * v51];
        memcpy(v54, v43, v44);
        v55 = __p;
        __p = v54;
        v64 = v42;
        v65 = v53;
        if (v55)
        {
          operator delete(v55);
        }
      }

      else
      {
        *v64 = v18;
        *(v42 + 1) = v16;
        v42 += 16;
      }

      v64 = v42;
    }

    v19 = __p;
    while (v19 != v42)
    {
      pxrInternal__aapl__pxrReserved__::Hd_SortedIds::RemoveRange((v14 + 5), *(v42 - 2), *(v42 - 1));
      v19 = __p;
      v42 = v64 - 16;
      v64 -= 16;
    }

    a1 = v57;
    if (!v19)
    {
      goto LABEL_10;
    }

LABEL_9:
    v64 = v19;
    operator delete(v19);
    goto LABEL_10;
  }

LABEL_54:
  if (v68)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v69, v68);
  }

  return result;
}

void sub_29AC709E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::GetPrim(void *a1, void *a2, unsigned int *a3)
{
  v6 = sub_29A16039C(a1 + 3, a2);
  if (v6)
  {
    result = sub_29A328A44((*a1 + 112 * v6[3]), a3);
    if (result)
    {
      return result[4];
    }
  }

  else
  {
    v10[0] = "hd/primTypeIndex.cpp";
    v10[1] = "GetPrim";
    v10[2] = 252;
    v10[3] = "PrimType *pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::GetPrim(const TfToken &, const SdfPath &) const [PrimType = pxrInternal__aapl__pxrReserved__::HdSprim]";
    v11 = 0;
    v8 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v8)
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

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v10, 1, "Unsupported prim type: %s", v9);
    return 0;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::GetFallbackPrim(void *a1, void *a2)
{
  v4 = sub_29A16039C(a1 + 3, a2);
  if (v4)
  {
    return *(*a1 + 112 * v4[3] + 104);
  }

  v8[0] = "hd/primTypeIndex.cpp";
  v8[1] = "GetFallbackPrim";
  v8[2] = 274;
  v8[3] = "PrimType *pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::GetFallbackPrim(const TfToken &) const [PrimType = pxrInternal__aapl__pxrReserved__::HdSprim]";
  v9 = 0;
  v6 = *a2 & 0xFFFFFFFFFFFFFFF8;
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

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 1, "Unsupported prim type: %s", v7);
  return 0;
}

void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::GetPrimSubtree(uint64_t *a1, void *a2, _DWORD *a3, void *a4)
{
  v18 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v14, "hd", "void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::GetPrimSubtree(const TfToken &, const SdfPath &, SdfPathVector *) [PrimType = pxrInternal__aapl__pxrReserved__::HdSprim]");
  v8 = sub_29A160470(a1 + 3, a2);
  if (v8)
  {
    v9 = v8[3];
    v10 = *a1;
    sub_29AC1C43C(v16);
    Ids = pxrInternal__aapl__pxrReserved__::Hd_SortedIds::GetIds((v10 + 112 * v9 + 40));
    pxrInternal__aapl__pxrReserved__::HdPrimGather::Subtree(v16, Ids, a3, a4);
    sub_29AC1C940(v16);
  }

  else
  {
    v16[0] = "hd/primTypeIndex.cpp";
    v16[1] = "GetPrimSubtree";
    v16[2] = 295;
    v16[3] = "void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::GetPrimSubtree(const TfToken &, const SdfPath &, SdfPathVector *) [PrimType = pxrInternal__aapl__pxrReserved__::HdSprim]";
    v17 = 0;
    v12 = *a2 & 0xFFFFFFFFFFFFFFF8;
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

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 1, "Unsupported prim type: %s", v13);
  }

  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v15, v14);
  }
}

void sub_29AC70D28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::CreateFallbackPrims(uint64_t *a1, uint64_t a2)
{
  sub_29A0ECEEC(&v10, "hd", "BOOL pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::CreateFallbackPrims(HdRenderDelegate *) [PrimType = pxrInternal__aapl__pxrReserved__::HdSprim]");
  v4 = a1[5];
  if (v4)
  {
    LOBYTE(v5) = 1;
    do
    {
      v6 = v4[3];
      v7 = *a1;
      v8 = (*(*a2 + 232))(a2, v4 + 2);
      *(v7 + 112 * v6 + 104) = v8;
      v5 = v5 & (v8 != 0);
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    v5 = 1;
  }

  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v11, v10);
  }

  return v5;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::DestroyFallbackPrims(uint64_t *a1, uint64_t a2)
{
  result = sub_29A0ECEEC(&v10, "hd", "void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::DestroyFallbackPrims(HdRenderDelegate *) [PrimType = pxrInternal__aapl__pxrReserved__::HdSprim]");
  v5 = a1[1] - *a1;
  if (v5)
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * (v5 >> 4);
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    v8 = 104;
    do
    {
      v9 = *a1;
      result = pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::_RenderDelegateDestroyPrim(a2, *(*a1 + v8));
      *(v9 + v8) = 0;
      v8 += 112;
      --v7;
    }

    while (v7);
  }

  if (v10)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v11, v10);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::SyncPrims(uint64_t *a1, pxrInternal__aapl__pxrReserved__::HdChangeTracker *a2, uint64_t a3, uint64_t a4)
{
  v32[4] = *MEMORY[0x29EDCA608];
  v5 = *a1;
  v4 = a1[1];
  v6 = (a1 + 8);
  a1[9] = a1[8];
  v7 = v4 - v5;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 4);
    if (v13 <= 1)
    {
      v13 = 1;
    }

    v21 = v13;
    do
    {
      v14 = (*(*a4 + 368))(a4, a1[11] + 8 * v12);
      v15 = *a1 + 112 * v12;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = a3;
      v31 = a2;
      v32[0] = &unk_2A207D1E0;
      v32[1] = pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::_TrackerMarkPrimClean;
      v32[3] = v32;
      sub_29AC71284(&v27, *(v15 + 24));
      for (i = *(v15 + 16); i; i = *i)
      {
        v23[0] = pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetSprimDirtyBits(a2, (i + 2));
        if (v23[0])
        {
          if (v14)
          {
            sub_29A1E21F4(&v24, i + 4);
            sub_29A1E2240(&v24 + 1, i + 5);
            v17 = i[3];
            *&v25 = i[4];
            DWORD2(v25) = v23[0];
            v26 = v17;
            v18 = v28;
            if (v28 >= v29)
            {
              v20 = sub_29AC74DFC(&v27, &v24);
            }

            else
            {
              sub_29A1DDD84(v28, &v24);
              sub_29A1DDDC0(v18 + 1, &v24 + 1);
              v19 = v25;
              *(v18 + 3) = v26;
              *(v18 + 2) = v19;
              v20 = v18 + 8;
            }

            v28 = v20;
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24 + 1);
            sub_29A1DE3A4(&v24);
          }

          else
          {
            (*(*i[4] + 16))(i[4], i[3], a3, v23);
            pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkSprimClean(a2, (i + 2), v23[0]);
          }

          if (v11 != i[3])
          {
            sub_29A0A71C8(v6, i + 3);
            v11 = i[3];
          }
        }
      }

      if (v27 != v28)
      {
        *v23 = &v27;
        v24 = &unk_2A207D0D0;
        *&v25 = v23;
        tbb::interface7::internal::isolate_within_arena(&v24, 0);
      }

      sub_29AC734C4(v32);
      v24 = &v27;
      sub_29AC74A70(&v24);
      ++v12;
    }

    while (v12 != v21);
  }
}

void sub_29AC71238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_29AC71384(va);
  _Unwind_Resume(a1);
}

void **sub_29AC71284(void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (a2 >> 59)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A10CB10(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[32 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = *(v2 + 8);
    v9 = &v4[v3 + *v2 - v8];
    sub_29AC74C18(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    *(v2 + 8) = v5;
    v11 = *(v2 + 16);
    *(v2 + 16) = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29AC74D80(&v12);
  }

  return result;
}

void sub_29AC7132C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AC74D80(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AC71344(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void **sub_29AC71384(void **a1)
{
  sub_29AC734C4((a1 + 5));
  v3 = a1;
  sub_29AC74A70(&v3);
  return a1;
}

uint64_t **pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::GetSceneDelegatesForDirtyPrims(uint64_t a1)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = (a1 + 64);
  v6 = 126 - 2 * __clz((v4 - v3) >> 3);
  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  sub_29AC74F24(v3, v4, &v10, v7, 1);
  v8 = sub_29AC75DB0(*v5, v5[1]);
  if (v8 != v5[1])
  {
    *(a1 + 72) = v8;
  }

  return v5;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::_PrimTypeEntry::_PrimTypeEntry(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  pxrInternal__aapl__pxrReserved__::Hd_SortedIds::Hd_SortedIds((a1 + 40));
  *(a1 + 104) = 0;
  return a1;
}

double pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::Hd_PrimTypeIndex(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return result;
}

{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::~Hd_PrimTypeIndex(uint64_t a1)
{
  v4 = (a1 + 88);
  sub_29A124AB0(&v4);
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  sub_29A155EF4(a1 + 24);
  v4 = a1;
  sub_29AC75E2C(&v4);
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::InitPrimTypes(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = (v4 - *a2) >> 3;
  sub_29AC7165C(a1, v6);
  result = sub_29A1D7F98(a1 + 11, v6);
  v12 = 0;
  if (v4 != v5)
  {
    v8 = 0;
    do
    {
      sub_29A410854((a1 + 3), (*a2 + 8 * v8), (*a2 + 8 * v8), &v12);
      v9 = (*a2 + 8 * v12);
      v10 = a1[12];
      if (v10 >= a1[13])
      {
        std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::TfToken const&>();
      }

      v11 = *v9;
      *v10 = *v9;
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v10 &= 0xFFFFFFFFFFFFFFF8;
      }

      result = v10 + 1;
      a1[12] = result;
      v8 = v12 + 1;
      v12 = v8;
    }

    while (v8 < v6);
  }

  return result;
}

void *sub_29AC7165C(void *result, unint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((result[1] - *result) >> 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    return sub_29AC75EDC(result, v4);
  }

  if (!v3)
  {
    return sub_29AC75E80(result, *result + 112 * a2);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::Clear(void *a1, pxrInternal__aapl__pxrReserved__::HdChangeTracker *a2, uint64_t a3)
{
  sub_29A0ECEEC(&v12, "hd", "void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::Clear(HdChangeTracker &, HdRenderDelegate *) [PrimType = pxrInternal__aapl__pxrReserved__::HdBprim]");
  v6 = a1[1] - *a1;
  if (v6)
  {
    v7 = 0;
    v8 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 4);
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    do
    {
      v10 = *a1 + 112 * v7;
      for (i = *(v10 + 16); i; i = *i)
      {
        pxrInternal__aapl__pxrReserved__::HdChangeTracker::BprimRemoved(a2, (i + 2));
        pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::_RenderDelegateDestroyPrim(a3, i[4]);
        i[4] = 0;
      }

      sub_29AC766AC(v10);
      pxrInternal__aapl__pxrReserved__::Hd_SortedIds::Clear((v10 + 40));
      ++v7;
    }

    while (v7 != v9);
  }

  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::_RenderDelegateDestroyPrim(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = (*(*a1 + 48))(a1);
    (*(*a2 + 24))(a2, v4);
  }

  v5 = *(*a1 + 264);

  return v5(a1, a2);
}

void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::InsertPrim(void *a1, void *a2, unint64_t a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4, pxrInternal__aapl__pxrReserved__::HdChangeTracker *a5, uint64_t a6)
{
  sub_29A0ECEEC(&v27, "hd", "void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::InsertPrim(const TfToken &, HdSceneDelegate *, const SdfPath &, HdChangeTracker &, HdRenderDelegate *) [PrimType = pxrInternal__aapl__pxrReserved__::HdBprim]");
  v12 = sub_29A160470(a1 + 3, a2);
  if (v12)
  {
    if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a4, (a3 + 16)))
    {
      v13 = (*(*a6 + 248))(a6, a2, a4);
      v14 = v13;
      if (v13)
      {
        v15 = (*(*v13 + 32))(v13);
        pxrInternal__aapl__pxrReserved__::HdChangeTracker::BprimInserted(a5, a4, v15);
        v16 = *a1 + 112 * v12[3];
        v23.n128_u64[0] = a3;
        v23.n128_u64[1] = v14;
        sub_29AC76708(v16, a4, a4, &v23);
        if (v17)
        {
          pxrInternal__aapl__pxrReserved__::Hd_SortedIds::Insert((v16 + 40), a4);
        }

        else
        {
          v22 = (*(*a6 + 48))(a6);
          (*(*v14 + 24))(v14, v22);
          (*(*a6 + 264))(a6, v14);
        }
      }
    }

    else
    {
      v23.n128_u64[0] = "hd/primTypeIndex.cpp";
      v23.n128_u64[1] = "InsertPrim";
      v24 = 94;
      v25 = "void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::InsertPrim(const TfToken &, HdSceneDelegate *, const SdfPath &, HdChangeTracker &, HdRenderDelegate *) [PrimType = pxrInternal__aapl__pxrReserved__::HdBprim]";
      v26 = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a3 + 16));
      v21 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a4);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 1, "Scene Delegate Id (%s) must prefix prim Id (%s)", Text, v21);
    }
  }

  else
  {
    v23.n128_u64[0] = "hd/primTypeIndex.cpp";
    v23.n128_u64[1] = "InsertPrim";
    v24 = 87;
    v25 = "void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::InsertPrim(const TfToken &, HdSceneDelegate *, const SdfPath &, HdChangeTracker &, HdRenderDelegate *) [PrimType = pxrInternal__aapl__pxrReserved__::HdBprim]";
    v26 = 0;
    v18 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v18)
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

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 1, "Unsupported prim type: %s", v19);
  }

  if (v27)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v28, v27);
  }
}

void sub_29AC71B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::RemovePrim(void *a1, void *a2, unsigned int *a3, pxrInternal__aapl__pxrReserved__::HdChangeTracker *a4, uint64_t a5)
{
  sub_29A0ECEEC(&v17, "hd", "void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::RemovePrim(const TfToken &, const SdfPath &, HdChangeTracker &, HdRenderDelegate *) [PrimType = pxrInternal__aapl__pxrReserved__::HdBprim]");
  v10 = sub_29A160470(a1 + 3, a2);
  if (v10)
  {
    v11 = (*a1 + 112 * v10[3]);
    v12 = sub_29A2F4F50(v11, a3);
    if (v12)
    {
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::BprimRemoved(a4, a3);
      pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::_RenderDelegateDestroyPrim(a5, v12[4]);
      v12[4] = 0;
      sub_29AC76950(v11, v12);
      pxrInternal__aapl__pxrReserved__::Hd_SortedIds::Remove((v11 + 5), a3);
    }
  }

  else
  {
    v15[0] = "hd/primTypeIndex.cpp";
    v15[1] = "RemovePrim";
    v15[2] = 137;
    v15[3] = "void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::RemovePrim(const TfToken &, const SdfPath &, HdChangeTracker &, HdRenderDelegate *) [PrimType = pxrInternal__aapl__pxrReserved__::HdBprim]";
    v16 = 0;
    v13 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v13)
    {
      v14 = (v13 + 16);
      if (*(v13 + 39) < 0)
      {
        v14 = *v14;
      }
    }

    else
    {
      v14 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v15, 1, "Unsupported prim type: %s", v14);
  }

  if (v17)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v18, v17);
  }
}

void sub_29AC71CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::RemoveSubtree(void *a1, _DWORD *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::HdChangeTracker *a4, uint64_t a5)
{
  v71 = *MEMORY[0x29EDCA608];
  result = sub_29A0ECEEC(&v68, "hd", "void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::RemoveSubtree(const SdfPath &, HdSceneDelegate *, HdChangeTracker &, HdRenderDelegate *) [PrimType = pxrInternal__aapl__pxrReserved__::HdBprim]");
  v10 = a1[1] - *a1;
  if (v10)
  {
    v11 = 0;
    v12 = 0x6DB6DB6DB6DB6DB7 * (v10 >> 4);
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v58 = a5;
    v59 = v12;
    v56 = a2;
    v57 = a1;
    while (1)
    {
      v13 = *a1;
      sub_29AC1C43C(v70);
      v14 = (v13 + 112 * v11);
      __p = 0;
      v64 = 0;
      v65 = 0;
      Ids = pxrInternal__aapl__pxrReserved__::Hd_SortedIds::GetIds((v14 + 5));
      if (pxrInternal__aapl__pxrReserved__::HdPrimGather::SubtreeAsRange(v70, Ids, a2, &v66, &v67))
      {
        break;
      }

      v19 = __p;
      if (__p)
      {
        goto LABEL_9;
      }

LABEL_10:
      result = sub_29AC1C940(v70);
      if (++v11 == v59)
      {
        goto LABEL_54;
      }
    }

    v17 = v66;
    v16 = v67;
    if (v66 <= v67)
    {
      v20 = 8 * v66;
      v18 = v66;
      do
      {
        v21 = *Ids;
        v22 = sub_29A2F4F50(v14, (*Ids + v20));
        v23 = v22;
        if (v22)
        {
          if (v22[3] == a3)
          {
            pxrInternal__aapl__pxrReserved__::HdChangeTracker::BprimRemoved(a4, (v21 + v20));
            pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::_RenderDelegateDestroyPrim(a5, v23[4]);
            v23[4] = 0;
            sub_29AC76950(v14, v23);
          }

          else
          {
            if (v18 < v17)
            {
              v24 = v17 - 1;
              v25 = v64;
              if (v64 >= v65)
              {
                v28 = __p;
                v29 = v64 - __p;
                v30 = (v64 - __p) >> 4;
                v31 = v30 + 1;
                if ((v30 + 1) >> 60)
                {
                  sub_29A00C9A4();
                }

                v32 = v65 - __p;
                if ((v65 - __p) >> 3 > v31)
                {
                  v31 = v32 >> 3;
                }

                v33 = v32 >= 0x7FFFFFFFFFFFFFF0;
                v34 = 0xFFFFFFFFFFFFFFFLL;
                if (!v33)
                {
                  v34 = v31;
                }

                if (v34)
                {
                  v35 = sub_29A017BD4(&__p, v34);
                  v34 = v36;
                  v28 = __p;
                  v29 = v64 - __p;
                }

                else
                {
                  v35 = 0;
                }

                v37 = (v64 - __p) >> 4;
                v38 = &v35[16 * v30];
                v39 = &v35[16 * v34];
                *v38 = v18;
                *(v38 + 1) = v24;
                v26 = v38 + 16;
                v40 = &v38[-16 * v37];
                memcpy(v40, v28, v29);
                v41 = __p;
                __p = v40;
                v64 = v26;
                v65 = v39;
                if (v41)
                {
                  operator delete(v41);
                }

                a5 = v58;
              }

              else
              {
                *v64 = v18;
                *(v25 + 1) = v24;
                v26 = v25 + 16;
              }

              v64 = v26;
            }

            v18 = v17 + 1;
          }
        }

        else
        {
          v61[0] = "hd/primTypeIndex.cpp";
          v61[1] = "RemoveSubtree";
          v61[2] = 204;
          v61[3] = "void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::RemoveSubtree(const SdfPath &, HdSceneDelegate *, HdChangeTracker &, HdRenderDelegate *) [PrimType = pxrInternal__aapl__pxrReserved__::HdBprim]";
          v62 = 0;
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v21 + v20));
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v61, 1, "Prim in id list not in info map: %s", Text);
        }

        ++v17;
        v16 = v67;
        v20 += 8;
      }

      while (v17 <= v67);
      a2 = v56;
    }

    else
    {
      v18 = v66;
    }

    v42 = v64;
    if (v18 <= v16)
    {
      if (v64 >= v65)
      {
        v43 = __p;
        v44 = v64 - __p;
        v45 = (v64 - __p) >> 4;
        v46 = v45 + 1;
        if ((v45 + 1) >> 60)
        {
          sub_29A00C9A4();
        }

        v47 = v65 - __p;
        if ((v65 - __p) >> 3 > v46)
        {
          v46 = v47 >> 3;
        }

        v33 = v47 >= 0x7FFFFFFFFFFFFFF0;
        v48 = 0xFFFFFFFFFFFFFFFLL;
        if (!v33)
        {
          v48 = v46;
        }

        if (v48)
        {
          v49 = sub_29A017BD4(&__p, v48);
          v48 = v50;
          v43 = __p;
          v44 = v64 - __p;
          v51 = (v64 - __p) >> 4;
          v16 = v67;
        }

        else
        {
          v49 = 0;
          v51 = (v64 - __p) >> 4;
        }

        v52 = &v49[16 * v45];
        v53 = &v49[16 * v48];
        *v52 = v18;
        *(v52 + 1) = v16;
        v42 = v52 + 16;
        v54 = &v52[-16 * v51];
        memcpy(v54, v43, v44);
        v55 = __p;
        __p = v54;
        v64 = v42;
        v65 = v53;
        if (v55)
        {
          operator delete(v55);
        }
      }

      else
      {
        *v64 = v18;
        *(v42 + 1) = v16;
        v42 += 16;
      }

      v64 = v42;
    }

    v19 = __p;
    while (v19 != v42)
    {
      pxrInternal__aapl__pxrReserved__::Hd_SortedIds::RemoveRange((v14 + 5), *(v42 - 2), *(v42 - 1));
      v19 = __p;
      v42 = v64 - 16;
      v64 -= 16;
    }

    a1 = v57;
    if (!v19)
    {
      goto LABEL_10;
    }

LABEL_9:
    v64 = v19;
    operator delete(v19);
    goto LABEL_10;
  }

LABEL_54:
  if (v68)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v69, v68);
  }

  return result;
}

void sub_29AC720C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::GetPrim(void *a1, void *a2, unsigned int *a3)
{
  v6 = sub_29A16039C(a1 + 3, a2);
  if (v6)
  {
    result = sub_29A328A44((*a1 + 112 * v6[3]), a3);
    if (result)
    {
      return result[4];
    }
  }

  else
  {
    v10[0] = "hd/primTypeIndex.cpp";
    v10[1] = "GetPrim";
    v10[2] = 252;
    v10[3] = "PrimType *pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::GetPrim(const TfToken &, const SdfPath &) const [PrimType = pxrInternal__aapl__pxrReserved__::HdBprim]";
    v11 = 0;
    v8 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v8)
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

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v10, 1, "Unsupported prim type: %s", v9);
    return 0;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::GetFallbackPrim(void *a1, void *a2)
{
  v4 = sub_29A16039C(a1 + 3, a2);
  if (v4)
  {
    return *(*a1 + 112 * v4[3] + 104);
  }

  v8[0] = "hd/primTypeIndex.cpp";
  v8[1] = "GetFallbackPrim";
  v8[2] = 274;
  v8[3] = "PrimType *pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::GetFallbackPrim(const TfToken &) const [PrimType = pxrInternal__aapl__pxrReserved__::HdBprim]";
  v9 = 0;
  v6 = *a2 & 0xFFFFFFFFFFFFFFF8;
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

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 1, "Unsupported prim type: %s", v7);
  return 0;
}

void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::GetPrimSubtree(uint64_t *a1, void *a2, _DWORD *a3, void *a4)
{
  v18 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v14, "hd", "void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::GetPrimSubtree(const TfToken &, const SdfPath &, SdfPathVector *) [PrimType = pxrInternal__aapl__pxrReserved__::HdBprim]");
  v8 = sub_29A160470(a1 + 3, a2);
  if (v8)
  {
    v9 = v8[3];
    v10 = *a1;
    sub_29AC1C43C(v16);
    Ids = pxrInternal__aapl__pxrReserved__::Hd_SortedIds::GetIds((v10 + 112 * v9 + 40));
    pxrInternal__aapl__pxrReserved__::HdPrimGather::Subtree(v16, Ids, a3, a4);
    sub_29AC1C940(v16);
  }

  else
  {
    v16[0] = "hd/primTypeIndex.cpp";
    v16[1] = "GetPrimSubtree";
    v16[2] = 295;
    v16[3] = "void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::GetPrimSubtree(const TfToken &, const SdfPath &, SdfPathVector *) [PrimType = pxrInternal__aapl__pxrReserved__::HdBprim]";
    v17 = 0;
    v12 = *a2 & 0xFFFFFFFFFFFFFFF8;
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

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 1, "Unsupported prim type: %s", v13);
  }

  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v15, v14);
  }
}

void sub_29AC72410(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::CreateFallbackPrims(uint64_t *a1, uint64_t a2)
{
  sub_29A0ECEEC(&v10, "hd", "BOOL pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::CreateFallbackPrims(HdRenderDelegate *) [PrimType = pxrInternal__aapl__pxrReserved__::HdBprim]");
  v4 = a1[5];
  if (v4)
  {
    LOBYTE(v5) = 1;
    do
    {
      v6 = v4[3];
      v7 = *a1;
      v8 = (*(*a2 + 256))(a2, v4 + 2);
      *(v7 + 112 * v6 + 104) = v8;
      v5 = v5 & (v8 != 0);
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    v5 = 1;
  }

  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v11, v10);
  }

  return v5;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::DestroyFallbackPrims(uint64_t *a1, uint64_t a2)
{
  result = sub_29A0ECEEC(&v10, "hd", "void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::DestroyFallbackPrims(HdRenderDelegate *) [PrimType = pxrInternal__aapl__pxrReserved__::HdBprim]");
  v5 = a1[1] - *a1;
  if (v5)
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * (v5 >> 4);
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    v8 = 104;
    do
    {
      v9 = *a1;
      result = pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::_RenderDelegateDestroyPrim(a2, *(*a1 + v8));
      *(v9 + v8) = 0;
      v8 += 112;
      --v7;
    }

    while (v7);
  }

  if (v10)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v11, v10);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::SyncPrims(uint64_t *a1, pxrInternal__aapl__pxrReserved__::HdChangeTracker *a2, uint64_t a3, uint64_t a4)
{
  v32[4] = *MEMORY[0x29EDCA608];
  v5 = *a1;
  v4 = a1[1];
  v6 = (a1 + 8);
  a1[9] = a1[8];
  v7 = v4 - v5;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 4);
    if (v13 <= 1)
    {
      v13 = 1;
    }

    v21 = v13;
    do
    {
      v14 = (*(*a4 + 368))(a4, a1[11] + 8 * v12);
      v15 = *a1 + 112 * v12;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = a3;
      v31 = a2;
      v32[0] = &unk_2A207D1E0;
      v32[1] = pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::_TrackerMarkPrimClean;
      v32[3] = v32;
      sub_29AC7297C(&v27, *(v15 + 24));
      for (i = *(v15 + 16); i; i = *i)
      {
        v23[0] = pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetBprimDirtyBits(a2, (i + 2));
        if (v23[0])
        {
          if (v14)
          {
            sub_29A1E21F4(&v24, i + 4);
            sub_29A1E2240(&v24 + 1, i + 5);
            v17 = i[3];
            *&v25 = i[4];
            DWORD2(v25) = v23[0];
            v26 = v17;
            v18 = v28;
            if (v28 >= v29)
            {
              v20 = sub_29AC76C58(&v27, &v24);
            }

            else
            {
              sub_29A1DDD84(v28, &v24);
              sub_29A1DDDC0(v18 + 1, &v24 + 1);
              v19 = v25;
              *(v18 + 3) = v26;
              *(v18 + 2) = v19;
              v20 = v18 + 8;
            }

            v28 = v20;
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24 + 1);
            sub_29A1DE3A4(&v24);
          }

          else
          {
            (*(*i[4] + 16))(i[4], i[3], a3, v23);
            pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkBprimClean(a2, (i + 2), v23[0]);
          }

          if (v11 != i[3])
          {
            sub_29A0A71C8(v6, i + 3);
            v11 = i[3];
          }
        }
      }

      if (v27 != v28)
      {
        *v23 = &v27;
        v24 = &unk_2A207D158;
        *&v25 = v23;
        tbb::interface7::internal::isolate_within_arena(&v24, 0);
      }

      sub_29AC734C4(v32);
      v24 = &v27;
      sub_29AC769AC(&v24);
      ++v12;
    }

    while (v12 != v21);
  }
}

void sub_29AC72930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_29AC72A7C(va);
  _Unwind_Resume(a1);
}

void **sub_29AC7297C(void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (a2 >> 59)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A10CB10(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[32 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = *(v2 + 8);
    v9 = &v4[v3 + *v2 - v8];
    sub_29AC76A74(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    *(v2 + 8) = v5;
    v11 = *(v2 + 16);
    *(v2 + 16) = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29AC76BDC(&v12);
  }

  return result;
}

void sub_29AC72A24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AC76BDC(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AC72A3C(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void **sub_29AC72A7C(void **a1)
{
  sub_29AC734C4((a1 + 5));
  v3 = a1;
  sub_29AC769AC(&v3);
  return a1;
}

uint64_t **pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::GetSceneDelegatesForDirtyPrims(uint64_t a1)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = (a1 + 64);
  v6 = 126 - 2 * __clz((v4 - v3) >> 3);
  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  sub_29AC74F24(v3, v4, &v10, v7, 1);
  v8 = sub_29AC75DB0(*v5, v5[1]);
  if (v8 != v5[1])
  {
    *(a1 + 72) = v8;
  }

  return v5;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::_PrimTypeEntry::_PrimTypeEntry(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  pxrInternal__aapl__pxrReserved__::Hd_SortedIds::Hd_SortedIds((a1 + 40));
  *(a1 + 104) = 0;
  return a1;
}

void sub_29AC72BBC(uint64_t a1)
{
  v1 = **(a1 + 8);
  v2 = (v1[1] - *v1) >> 5;
  v3[0] = sub_29AC72C14;
  v3[1] = 0;
  v3[2] = v1;
  sub_29AC72CA8(v2, v3, 1);
}

uint64_t sub_29AC72C14(uint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = a3 - a2;
  if (a3 > a2)
  {
    v4 = result;
    v5 = 32 * a2;
    do
    {
      (*(**(*v4 + v5 + 8) + 16))(*(*v4 + v5 + 8), *(*v4 + v5 + 24), v4[3], *v4 + v5 + 16);
      result = sub_29AC73470((v4 + 5), v4[4], *v4 + v5, *(*v4 + v5 + 16));
      v5 += 32;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_29AC72CA8(pxrInternal__aapl__pxrReserved__ *a1, uint64_t a2, uint64_t a3)
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
      sub_29AC72DE4(v13, &v12, &v14, v15);
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

void sub_29AC72DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  tbb::task_group_context::~task_group_context(va);
  _Unwind_Resume(a1);
}

void *sub_29AC72DE4(void *result, void *a2, uint64_t a3, tbb::task_group_context *a4)
{
  if (result[1] < *result)
  {
    v5 = result;
    v9 = a4;
    v6 = tbb::internal::allocate_root_with_context_proxy::allocate(&v9, 0x38uLL);
    *(v6 - 11) = 1;
    *v6 = &unk_2A207D110;
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

uint64_t sub_29AC72EE4(uint64_t a1)
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

  sub_29AC72F54(v2, a1, a1 + 8);
  return 0;
}

void sub_29AC72F54(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_29AC73008(a2);
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

  sub_29AC73120(a1, a2, a3);
}

uint64_t sub_29AC73008(uint64_t a1)
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
  *v3 = &unk_2A207D110;
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

void sub_29AC73120(uint64_t a1, uint64_t a2, __int128 *a3)
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
        sub_29AC73350(a2, (&v21 + 24 * v20[1]), v20[v20[1] + 3]);
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

uint64_t sub_29AC73350(uint64_t a1, __int128 *a2, char a3)
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
  *v7 = &unk_2A207D110;
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

uint64_t sub_29AC73470(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_29A0DDCB0();
  }

  return (*(*v4 + 48))(v4, a2, a3, &v6);
}

uint64_t sub_29AC734C4(uint64_t a1)
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

void sub_29AC73548(uint64_t a1)
{
  v1 = **(a1 + 8);
  v2 = (v1[1] - *v1) >> 5;
  v3[0] = sub_29AC735A0;
  v3[1] = 0;
  v3[2] = v1;
  sub_29AC73634(v2, v3, 1);
}

uint64_t sub_29AC735A0(uint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = a3 - a2;
  if (a3 > a2)
  {
    v4 = result;
    v5 = 32 * a2;
    do
    {
      (*(**(*v4 + v5 + 8) + 16))(*(*v4 + v5 + 8), *(*v4 + v5 + 24), v4[3], *v4 + v5 + 16);
      result = sub_29AC73470((v4 + 5), v4[4], *v4 + v5, *(*v4 + v5 + 16));
      v5 += 32;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_29AC73634(pxrInternal__aapl__pxrReserved__ *a1, uint64_t a2, uint64_t a3)
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
      sub_29AC73770(v13, &v12, &v14, v15);
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

void sub_29AC73754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  tbb::task_group_context::~task_group_context(va);
  _Unwind_Resume(a1);
}

void *sub_29AC73770(void *result, void *a2, uint64_t a3, tbb::task_group_context *a4)
{
  if (result[1] < *result)
  {
    v5 = result;
    v9 = a4;
    v6 = tbb::internal::allocate_root_with_context_proxy::allocate(&v9, 0x38uLL);
    *(v6 - 11) = 1;
    *v6 = &unk_2A207D198;
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

uint64_t sub_29AC73870(uint64_t a1)
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

  sub_29AC738E0(v2, a1, a1 + 8);
  return 0;
}

void sub_29AC738E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_29AC73994(a2);
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

  sub_29AC73AAC(a1, a2, a3);
}

uint64_t sub_29AC73994(uint64_t a1)
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
  *v3 = &unk_2A207D198;
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

void sub_29AC73AAC(uint64_t a1, uint64_t a2, __int128 *a3)
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
        sub_29AC73CDC(a2, (&v21 + 24 * v20[1]), v20[v20[1] + 3]);
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

uint64_t sub_29AC73CDC(uint64_t a1, __int128 *a2, char a3)
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
  *v7 = &unk_2A207D198;
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

void sub_29AC73DFC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29AC73E50(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_29AC73E50(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 != a2)
  {
    do
    {
      v5 = v4 - 112;
      pxrInternal__aapl__pxrReserved__::Hd_SortedIds::~Hd_SortedIds((v4 - 72));
      result = sub_29AC74554(v5);
      v4 = v5;
    }

    while (v5 != a2);
  }

  *(v3 + 8) = a2;
  return result;
}

void *sub_29AC73EAC(void *result, unint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  if (0x6DB6DB6DB6DB6DB7 * ((v2 - v3) >> 4) < a2)
  {
    v4 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *result) >> 4);
    if (v4 + a2 <= 0x249249249249249)
    {
      v5 = 0x6DB6DB6DB6DB6DB7 * ((v2 - *result) >> 4);
      v6 = 2 * v5;
      if (2 * v5 <= v4 + a2)
      {
        v6 = v4 + a2;
      }

      if (v5 >= 0x124924924924924)
      {
        v7 = 0x249249249249249;
      }

      else
      {
        v7 = v6;
      }

      if (v7)
      {
        sub_29A466E98(result, v7);
      }

      pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::_PrimTypeEntry::_PrimTypeEntry();
    }

    sub_29A00C9A4();
  }

  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::_PrimTypeEntry::_PrimTypeEntry();
  }

  result[1] = v3;
  return result;
}

void sub_29AC7402C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AC7465C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC74058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
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
      sub_29AC74128(a1, a4, v7);
      v7 += 112;
      a4 = v12 + 112;
      v12 += 112;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      pxrInternal__aapl__pxrReserved__::Hd_SortedIds::~Hd_SortedIds((v5 + 40));
      sub_29AC74554(v5);
      v5 += 112;
    }
  }

  return sub_29AC745D4(v9);
}

uint64_t sub_29AC74128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29AC74180(a2, a3);
  result = pxrInternal__aapl__pxrReserved__::Hd_SortedIds::Hd_SortedIds((a2 + 40), (a3 + 40));
  *(a2 + 104) = *(a3 + 104);
  return result;
}

uint64_t sub_29AC74180(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29AC741F8(a1, i + 4, (i + 4));
  }

  return a1;
}

void *sub_29AC741F8(uint64_t a1, unsigned int *a2, uint64_t a3)
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

  sub_29AC74440(a1, v5, a3, &v21);
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

void sub_29AC74428(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AC744B8(va, 0);
  _Unwind_Resume(a1);
}

__n128 sub_29AC74440@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x28uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  *(v8 + 1) = a2;
  sub_29A1E21F4(v8 + 4, a3);
  sub_29A1E2240(v8 + 5, (a3 + 4));
  result = *(a3 + 8);
  *(v8 + 24) = result;
  *(a4 + 16) = 1;
  return result;
}

void sub_29AC744B8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AC74514(v2 + 4);
    }

    operator delete(v2);
  }
}

_DWORD *sub_29AC74514(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29AC74554(uint64_t a1)
{
  sub_29AC74590(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AC74590(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AC74514(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29AC745D4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AC7460C(a1);
  }

  return a1;
}

uint64_t sub_29AC7460C(uint64_t result)
{
  v1 = **(result + 16);
  v2 = **(result + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 112;
      pxrInternal__aapl__pxrReserved__::Hd_SortedIds::~Hd_SortedIds((v1 - 72));
      result = sub_29AC74554(v3);
      v1 = v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t sub_29AC7465C(uint64_t a1)
{
  sub_29AC74694(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29AC74694(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = v2 - 112;
      *(v4 + 16) = v2 - 112;
      pxrInternal__aapl__pxrReserved__::Hd_SortedIds::~Hd_SortedIds((v2 - 72));
      result = sub_29AC74554(v5);
      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

void sub_29AC746F4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29AC74590(a1, *(a1 + 16));
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

void *sub_29AC74750(uint64_t a1, unsigned int *a2, _DWORD *a3, __n128 *a4)
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

  sub_29AC74998(a1, v6, a3, a4, &v22);
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

void sub_29AC74980(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AC744B8(va, 0);
  _Unwind_Resume(a1);
}

__n128 sub_29AC74998@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, __n128 *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x28uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  *(v10 + 1) = a2;
  sub_29A1E21F4(v10 + 4, a3);
  sub_29A1E2240(v10 + 5, a3 + 1);
  result = *a4;
  *(v10 + 24) = *a4;
  *(a5 + 16) = 1;
  return result;
}

uint64_t sub_29AC74A14(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29AC74514(v3 + 4);
    }

    operator delete(v3);
  }

  return v2;
}

void sub_29AC74A70(void ***a1)
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
        v4 -= 8;
        sub_29AC74AF8(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29AC74AF8(uint64_t a1, _DWORD *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 1);

  return sub_29A1DE3A4(a2);
}

void *sub_29AC74B40(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A207D1E0;
  result[1] = v3;
  return result;
}

uint64_t sub_29AC74B88(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A207D1E0;
  a2[1] = v2;
  return result;
}

uint64_t sub_29AC74BCC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207D260))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29AC74C18(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2;
    do
    {
      sub_29A1DDD84(v4, v8);
      sub_29A1DDDC0((v4 + 4), v8 + 1);
      v9 = *(v8 + 2);
      *(v4 + 24) = *(v8 + 3);
      *(v4 + 8) = v9;
      v8 += 8;
      v4 = v14 + 32;
      v14 += 32;
    }

    while (v8 != a3);
    v12 = 1;
    while (v6 != a3)
    {
      sub_29AC74AF8(a1, v6);
      v6 += 8;
    }
  }

  return sub_29AC74CF4(v11);
}

uint64_t sub_29AC74CF4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AC74D2C(a1);
  }

  return a1;
}

uint64_t *sub_29AC74D2C(uint64_t *result)
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
      v3 -= 8;
      result = sub_29AC74AF8(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29AC74D80(void **a1)
{
  sub_29AC74DB4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29AC74DB4(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 32;
      result = sub_29AC74AF8(v4, (v1 - 32));
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29AC74DFC(uint64_t a1, uint64_t a2)
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

  v9 = &v8[32 * v2];
  v17 = v8;
  v18 = v9;
  *(&v19 + 1) = &v8[32 * v7];
  sub_29A1DDD84(v9, a2);
  sub_29A1DDDC0(v9 + 1, (a2 + 4));
  v10 = *(a2 + 8);
  *(v9 + 3) = *(a2 + 24);
  *(v9 + 8) = v10;
  *&v19 = v9 + 32;
  v11 = *(a1 + 8);
  v12 = &v9[*a1 - v11];
  sub_29AC74C18(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29AC74D80(&v17);
  return v16;
}

void sub_29AC74F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AC74D80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC74F24(uint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v56 = *(a2 - 1);
        v57 = *v9;
        if (v56 < *v9)
        {
          *v9 = v56;
          *(a2 - 1) = v57;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v58 = v9 + 1;
      v59 = v9[1];
      v60 = v9 + 2;
      v61 = v9[2];
      v62 = *v9;
      if (v59 >= *v9)
      {
        if (v61 >= v59)
        {
          goto LABEL_120;
        }

        *v58 = v61;
        *v60 = v59;
        v63 = v9;
        v64 = (v9 + 1);
        result = v59;
        if (v61 < v62)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v63 = v9;
        v64 = (v9 + 2);
        result = *v9;
        if (v61 >= v59)
        {
          *v9 = v59;
          v9[1] = v62;
          v63 = v9 + 1;
          v64 = (v9 + 2);
          result = v62;
          if (v61 >= v62)
          {
LABEL_120:
            v59 = v61;
            goto LABEL_121;
          }
        }

LABEL_113:
        *v63 = v61;
        *v64 = v62;
        v59 = result;
      }

LABEL_121:
      v77 = *(a2 - 1);
      if (v77 < v59)
      {
        *v60 = v77;
        *(a2 - 1) = v59;
        v78 = *v60;
        v79 = *v58;
        if (v78 < v79)
        {
          v9[1] = v78;
          v9[2] = v79;
          v80 = *v9;
          if (v78 < *v9)
          {
            *v9 = v78;
            v9[1] = v80;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {
      v47 = v9 + 1;
      v48 = v9[1];
      v50 = v9 + 2;
      v49 = v9[2];
      v51 = *v9;
      if (v48 >= *v9)
      {
        if (v49 >= v48)
        {
          v54 = *v9;
          v51 = v9[1];
        }

        else
        {
          v52 = v9;
          v53 = (v9 + 1);
          *v47 = v49;
          *v50 = v48;
          v54 = v49;
          result = v51;
          v55 = v48;
          if (v49 < v51)
          {
            goto LABEL_129;
          }

          v54 = v51;
          v51 = v49;
          v49 = v48;
        }
      }

      else
      {
        if (v49 < v48)
        {
          v52 = v9;
          v53 = (v9 + 2);
          v54 = v9[2];
          result = v9[1];
          v55 = *v9;
          goto LABEL_129;
        }

        v52 = v9 + 1;
        v53 = (v9 + 2);
        *v9 = v48;
        v9[1] = v51;
        v54 = v48;
        result = v49;
        v55 = v51;
        if (v49 >= v51)
        {
          v54 = v48;
        }

        else
        {
LABEL_129:
          *v52 = v49;
          *v53 = v51;
          v51 = result;
          v49 = v55;
        }
      }

      v82 = v9[3];
      if (v82 >= v49)
      {
        v49 = v9[3];
      }

      else
      {
        v9[2] = v82;
        v9[3] = v49;
        if (v82 < v51)
        {
          *v47 = v82;
          *v50 = v51;
          if (v82 < v54)
          {
            *v9 = v82;
            v9[1] = v54;
          }
        }
      }

      v83 = *(a2 - 1);
      if (v83 >= v49)
      {
        return result;
      }

      v9[3] = v83;
      *(a2 - 1) = v49;
      v84 = v9[2];
      v74 = v9[3];
      if (v74 >= v84)
      {
        return result;
      }

      v9[2] = v74;
      v9[3] = v84;
      v85 = v9[1];
      if (v74 >= v85)
      {
        return result;
      }

      v9[1] = v74;
      v9[2] = v85;
LABEL_141:
      v86 = *v9;
      if (v74 < *v9)
      {
        *v9 = v74;
        v9[1] = v86;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      v65 = v9 + 1;
      v67 = v9 == a2 || v65 == a2;
      if (a5)
      {
        if (!v67)
        {
          v68 = 0;
          v69 = v9;
          do
          {
            v71 = *v69;
            v70 = v69[1];
            v69 = v65;
            if (v70 < v71)
            {
              v72 = v68;
              while (1)
              {
                *(v9 + v72 + 8) = v71;
                if (!v72)
                {
                  break;
                }

                v71 = *(v9 + v72 - 8);
                v72 -= 8;
                if (v70 >= v71)
                {
                  v73 = (v9 + v72 + 8);
                  goto LABEL_99;
                }
              }

              v73 = v9;
LABEL_99:
              *v73 = v70;
            }

            v65 = v69 + 1;
            v68 += 8;
          }

          while (v69 + 1 != a2);
        }
      }

      else if (!v67)
      {
        do
        {
          v76 = *v8;
          v75 = v8[1];
          v8 = v65;
          if (v75 < v76)
          {
            do
            {
              *v65 = v76;
              v76 = *(v65 - 2);
              --v65;
            }

            while (v75 < v76);
            *v65 = v75;
          }

          v65 = v8 + 1;
        }

        while (v8 + 1 != a2);
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return sub_29AC75B20(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *(a2 - 1);
    if (v12 >= 0x81)
    {
      v16 = *v13;
      v17 = *v9;
      if (*v13 >= *v9)
      {
        if (v15 < v16)
        {
          *v13 = v15;
          *(a2 - 1) = v16;
          v20 = *v9;
          if (*v13 < *v9)
          {
            *v9 = *v13;
            *v13 = v20;
          }
        }
      }

      else
      {
        if (v15 < v16)
        {
          *v9 = v15;
          goto LABEL_29;
        }

        *v9 = v16;
        *v13 = v17;
        v22 = *(a2 - 1);
        if (v22 < v17)
        {
          *v13 = v22;
LABEL_29:
          *(a2 - 1) = v17;
        }
      }

      v23 = v13 - 1;
      v24 = *(v13 - 1);
      v25 = v9[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v9[1];
          if (*v23 < v27)
          {
            v9[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 < v24)
        {
          v9[1] = v26;
          goto LABEL_43;
        }

        v9[1] = v24;
        *v23 = v25;
        v29 = *(a2 - 2);
        if (v29 < v25)
        {
          *v23 = v29;
LABEL_43:
          *(a2 - 2) = v25;
        }
      }

      v32 = v13[1];
      v30 = v13 + 1;
      v31 = v32;
      v33 = v9[2];
      v34 = *(a2 - 3);
      if (v32 >= v33)
      {
        if (v34 < v31)
        {
          *v30 = v34;
          *(a2 - 3) = v31;
          v35 = v9[2];
          if (*v30 < v35)
          {
            v9[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v34 < v31)
        {
          v9[2] = v34;
          goto LABEL_52;
        }

        v9[2] = v31;
        *v30 = v33;
        v36 = *(a2 - 3);
        if (v36 < v33)
        {
          *v30 = v36;
LABEL_52:
          *(a2 - 3) = v33;
        }
      }

      v37 = *v14;
      v38 = *v23;
      v39 = *v30;
      if (*v14 >= *v23)
      {
        if (v39 < v37)
        {
          *v14 = v39;
          *v30 = v37;
          v30 = v14;
          v37 = v38;
          if (v39 < v38)
          {
            goto LABEL_59;
          }

          v37 = v39;
        }
      }

      else
      {
        if (v39 >= v37)
        {
          *v23 = v37;
          *v14 = v38;
          v23 = v14;
          v37 = v39;
          if (v39 >= v38)
          {
            v37 = v38;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v23 = v39;
        *v30 = v38;
      }

LABEL_60:
      v40 = *v9;
      *v9 = v37;
      *v14 = v40;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v18 = *v9;
    v19 = *v13;
    if (*v9 < *v14)
    {
      if (v15 < v18)
      {
        *v14 = v15;
        goto LABEL_38;
      }

      *v14 = v18;
      *v9 = v19;
      v28 = *(a2 - 1);
      if (v28 < v19)
      {
        *v9 = v28;
LABEL_38:
        *(a2 - 1) = v19;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v15 >= v18)
    {
      goto LABEL_39;
    }

    *v9 = v15;
    *(a2 - 1) = v18;
    v21 = *v14;
    if (*v9 >= *v14)
    {
      goto LABEL_39;
    }

    *v14 = *v9;
    *v9 = v21;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v9 - 1) >= *v9)
    {
      result = sub_29AC75624(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v41 = sub_29AC756D4(v9, a2);
    if ((v42 & 1) == 0)
    {
      goto LABEL_67;
    }

    v43 = sub_29AC75788(v9, v41);
    v9 = v41 + 1;
    result = sub_29AC75788(v41 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v41;
      if (v43)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v43)
    {
LABEL_67:
      result = sub_29AC74F24(v8, v41, a3, -v11, a5 & 1);
      v9 = v41 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v44 = *v9;
  v45 = v9[1];
  v46 = *(a2 - 1);
  if (v45 >= *v9)
  {
    if (v46 >= v45)
    {
      return result;
    }

    v9[1] = v46;
    *(a2 - 1) = v45;
    v74 = v9[1];
    goto LABEL_141;
  }

  if (v46 >= v45)
  {
    *v9 = v45;
    v9[1] = v44;
    v81 = *(a2 - 1);
    if (v81 >= v44)
    {
      return result;
    }

    v9[1] = v81;
  }

  else
  {
    *v9 = v46;
  }

  *(a2 - 1) = v44;
  return result;
}

unint64_t *sub_29AC75624(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = (a1 + 1);
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 >= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 < v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

unint64_t *sub_29AC756D4(unint64_t *a1, unint64_t *a2)
{
  v2 = 0;
  v3 = *a1;
  do
  {
    v4 = a1[++v2];
  }

  while (v4 < v3);
  v5 = &a1[v2];
  v6 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v8 = *--a2;
    }

    while (v8 >= v3);
  }

  else
  {
    do
    {
      v7 = *--a2;
    }

    while (v7 >= v3);
  }

  if (v5 < a2)
  {
    v9 = *a2;
    v10 = &a1[v2];
    v11 = a2;
    do
    {
      *v10 = v9;
      *v11 = v4;
      do
      {
        v12 = v10[1];
        ++v10;
        v4 = v12;
      }

      while (v12 < v3);
      do
      {
        v13 = *--v11;
        v9 = v13;
      }

      while (v13 >= v3);
    }

    while (v10 < v11);
    v6 = v10 - 1;
  }

  if (v6 != a1)
  {
    *a1 = *v6;
  }

  *v6 = v3;
  return v6;
}

BOOL sub_29AC75788(unint64_t *a1, unint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 < *a1)
      {
        if (v18 >= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v46 = *(a2 - 1);
          if (v46 >= v16)
          {
            return 1;
          }

          a1[1] = v46;
        }

        else
        {
          *a1 = v18;
        }

        *(a2 - 1) = v16;
        return 1;
      }

      if (v18 >= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v33 = a1[1];
LABEL_68:
      v51 = *a1;
      if (v33 < *a1)
      {
        *a1 = v33;
        a1[1] = v51;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          goto LABEL_59;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
LABEL_59:
          v47 = a1[3];
          if (v47 >= v6)
          {
            v6 = a1[3];
          }

          else
          {
            a1[2] = v47;
            a1[3] = v6;
            if (v47 < v8)
            {
              *v4 = v47;
              *v7 = v8;
              if (v47 < v11)
              {
                *a1 = v47;
                a1[1] = v11;
              }
            }
          }

          v48 = *(a2 - 1);
          if (v48 >= v6)
          {
            return 1;
          }

          a1[3] = v48;
          *(a2 - 1) = v6;
          v49 = a1[2];
          v33 = a1[3];
          if (v33 >= v49)
          {
            return 1;
          }

          a1[2] = v33;
          a1[3] = v49;
          v50 = a1[1];
          if (v33 >= v50)
          {
            return 1;
          }

          a1[1] = v33;
          a1[2] = v50;
          goto LABEL_68;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          goto LABEL_59;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      goto LABEL_59;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
LABEL_46:
        v26 = v28;
        goto LABEL_47;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v42 = *(a2 - 1);
        if (v42 < v26)
        {
          *v27 = v42;
          *(a2 - 1) = v26;
          v43 = *v27;
          v44 = *v25;
          if (v43 < v44)
          {
            a1[1] = v43;
            a1[2] = v44;
            v45 = *a1;
            if (v43 < *a1)
            {
              *a1 = v43;
              a1[1] = v45;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
          goto LABEL_46;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v14 = *(a2 - 1);
    v15 = *a1;
    if (v14 < *a1)
    {
      *a1 = v14;
      *(a2 - 1) = v15;
    }

    return 1;
  }

LABEL_16:
  v20 = a1 + 2;
  v19 = a1[2];
  v21 = a1[1];
  v22 = *a1;
  if (v21 >= *a1)
  {
    if (v19 >= v21)
    {
      goto LABEL_29;
    }

    a1[1] = v19;
    *v20 = v21;
    v23 = a1;
    v24 = a1 + 1;
LABEL_27:
    if (v19 >= v22)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v23 = a1;
  v24 = a1 + 2;
  if (v19 >= v21)
  {
    *a1 = v21;
    a1[1] = v22;
    v23 = a1 + 1;
    v24 = a1 + 2;
    goto LABEL_27;
  }

LABEL_28:
  *v23 = v19;
  *v24 = v22;
LABEL_29:
  v34 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v35 = 0;
  for (i = 24; ; i += 8)
  {
    v37 = *v34;
    v38 = *v20;
    if (*v34 < v38)
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v38;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v38 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v37 >= v38)
        {
          v41 = (a1 + v40);
          goto LABEL_37;
        }
      }

      v41 = a1;
LABEL_37:
      *v41 = v37;
      if (++v35 == 8)
      {
        break;
      }
    }

    v20 = v34++;
    if (v34 == a2)
    {
      return 1;
    }
  }

  return v34 + 1 == a2;
}

unint64_t *sub_29AC75B20(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_29AC75CEC(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 < *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          sub_29AC75CEC(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            v20 = v22;
            v23 = *(v21 - 1);
            v24 = v23 >= v22;
            if (v23 < v22)
            {
              v18 = v21;
            }

            else
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v14 = v19;
            }
          }

          *v16 = v20;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          v25 = (v18 - a1 + 8) >> 3;
          v26 = v25 < 2;
          v27 = v25 - 2;
          if (!v26)
          {
            v28 = v27 >> 1;
            v29 = &a1[v28];
            v30 = *v29;
            v31 = *v18;
            if (*v29 < *v18)
            {
              do
              {
                *v18 = v30;
                v18 = v29;
                if (!v28)
                {
                  break;
                }

                v28 = (v28 - 1) >> 1;
                v29 = &a1[v28];
                v30 = *v29;
              }

              while (*v29 < v31);
              *v18 = v31;
            }
          }
        }

        v26 = v8-- <= 2;
      }

      while (!v26);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_29AC75CEC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        if (*v8 < v8[1])
        {
          v10 = v8[1];
          ++v8;
          v7 = v9;
        }
      }

      v11 = *a4;
      if (v10 >= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v12 = (2 * v7) | 1;
          v8 = (result + 8 * v12);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v12;
          }

          else
          {
            v10 = *v8;
            if (*v8 >= v8[1])
            {
              v7 = v12;
            }

            else
            {
              v10 = v8[1];
              ++v8;
            }
          }
        }

        while (v10 >= v11);
        *a4 = v11;
      }
    }
  }

  return result;
}

uint64_t *sub_29AC75DB0(uint64_t *a1, uint64_t *a2)
{
  result = a2;
  if (a1 != a2)
  {
    v4 = a1 + 1;
    while (v4 != a2)
    {
      v5 = *(v4 - 1);
      v6 = *v4++;
      if (v5 == v6)
      {
        v7 = v4 - 2;
        goto LABEL_7;
      }
    }

    v7 = a2;
LABEL_7:
    result = a2;
    if (v7 != a2)
    {
      v8 = v7 + 2;
      if (v7 + 2 != a2)
      {
        v9 = *v7;
        do
        {
          v10 = v9;
          v9 = *v8;
          if (v10 != *v8)
          {
            v7[1] = v9;
            ++v7;
          }

          ++v8;
        }

        while (v8 != a2);
      }

      return v7 + 1;
    }
  }

  return result;
}

void sub_29AC75E2C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29AC75E80(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_29AC75E80(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 != a2)
  {
    do
    {
      v5 = v4 - 112;
      pxrInternal__aapl__pxrReserved__::Hd_SortedIds::~Hd_SortedIds((v4 - 72));
      result = sub_29AC7650C(v5);
      v4 = v5;
    }

    while (v5 != a2);
  }

  *(v3 + 8) = a2;
  return result;
}

void *sub_29AC75EDC(void *result, unint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  if (0x6DB6DB6DB6DB6DB7 * ((v2 - v3) >> 4) < a2)
  {
    v4 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *result) >> 4);
    if (v4 + a2 <= 0x249249249249249)
    {
      v5 = 0x6DB6DB6DB6DB6DB7 * ((v2 - *result) >> 4);
      v6 = 2 * v5;
      if (2 * v5 <= v4 + a2)
      {
        v6 = v4 + a2;
      }

      if (v5 >= 0x124924924924924)
      {
        v7 = 0x249249249249249;
      }

      else
      {
        v7 = v6;
      }

      if (v7)
      {
        sub_29A466E98(result, v7);
      }

      pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::_PrimTypeEntry::_PrimTypeEntry();
    }

    sub_29A00C9A4();
  }

  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::_PrimTypeEntry::_PrimTypeEntry();
  }

  result[1] = v3;
  return result;
}

void sub_29AC7605C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AC76614(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC76088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
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
      sub_29AC76158(a1, a4, v7);
      v7 += 112;
      a4 = v12 + 112;
      v12 += 112;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      pxrInternal__aapl__pxrReserved__::Hd_SortedIds::~Hd_SortedIds((v5 + 40));
      sub_29AC7650C(v5);
      v5 += 112;
    }
  }

  return sub_29AC7658C(v9);
}

uint64_t sub_29AC76158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29AC761B0(a2, a3);
  result = pxrInternal__aapl__pxrReserved__::Hd_SortedIds::Hd_SortedIds((a2 + 40), (a3 + 40));
  *(a2 + 104) = *(a3 + 104);
  return result;
}

uint64_t sub_29AC761B0(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29AC76228(a1, i + 4, (i + 4));
  }

  return a1;
}

void *sub_29AC76228(uint64_t a1, unsigned int *a2, uint64_t a3)
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

  sub_29AC74440(a1, v5, a3, &v21);
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

void sub_29AC76458(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AC76470(va, 0);
  _Unwind_Resume(a1);
}

void sub_29AC76470(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AC764CC(v2 + 4);
    }

    operator delete(v2);
  }
}

_DWORD *sub_29AC764CC(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29AC7650C(uint64_t a1)
{
  sub_29AC76548(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AC76548(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AC764CC(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29AC7658C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AC765C4(a1);
  }

  return a1;
}

uint64_t sub_29AC765C4(uint64_t result)
{
  v1 = **(result + 16);
  v2 = **(result + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 112;
      pxrInternal__aapl__pxrReserved__::Hd_SortedIds::~Hd_SortedIds((v1 - 72));
      result = sub_29AC7650C(v3);
      v1 = v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t sub_29AC76614(uint64_t a1)
{
  sub_29AC7664C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29AC7664C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = v2 - 112;
      *(v4 + 16) = v2 - 112;
      pxrInternal__aapl__pxrReserved__::Hd_SortedIds::~Hd_SortedIds((v2 - 72));
      result = sub_29AC7650C(v5);
      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

void sub_29AC766AC(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29AC76548(a1, *(a1 + 16));
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

void *sub_29AC76708(uint64_t a1, unsigned int *a2, _DWORD *a3, __n128 *a4)
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

  sub_29AC74998(a1, v6, a3, a4, &v22);
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

void sub_29AC76938(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AC76470(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC76950(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29AC764CC(v3 + 4);
    }

    operator delete(v3);
  }

  return v2;
}

void sub_29AC769AC(void ***a1)
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
        v4 -= 8;
        sub_29AC76A34(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29AC76A34(uint64_t a1, _DWORD *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 1);

  return sub_29A1DE3A4(a2);
}

uint64_t sub_29AC76A74(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2;
    do
    {
      sub_29A1DDD84(v4, v8);
      sub_29A1DDDC0((v4 + 4), v8 + 1);
      v9 = *(v8 + 2);
      *(v4 + 24) = *(v8 + 3);
      *(v4 + 8) = v9;
      v8 += 8;
      v4 = v14 + 32;
      v14 += 32;
    }

    while (v8 != a3);
    v12 = 1;
    while (v6 != a3)
    {
      sub_29AC76A34(a1, v6);
      v6 += 8;
    }
  }

  return sub_29AC76B50(v11);
}

uint64_t sub_29AC76B50(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AC76B88(a1);
  }

  return a1;
}

uint64_t *sub_29AC76B88(uint64_t *result)
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
      v3 -= 8;
      result = sub_29AC76A34(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29AC76BDC(void **a1)
{
  sub_29AC76C10(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29AC76C10(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 32;
      result = sub_29AC76A34(v4, (v1 - 32));
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29AC76C58(uint64_t a1, uint64_t a2)
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

  v9 = &v8[32 * v2];
  v17 = v8;
  v18 = v9;
  *(&v19 + 1) = &v8[32 * v7];
  sub_29A1DDD84(v9, a2);
  sub_29A1DDDC0(v9 + 1, (a2 + 4));
  v10 = *(a2 + 8);
  *(v9 + 3) = *(a2 + 24);
  *(v9 + 8) = v10;
  *&v19 = v9 + 32;
  v11 = *(a1 + 8);
  v12 = &v9[*a1 - v11];
  sub_29AC76A74(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29AC76BDC(&v17);
  return v16;
}

void sub_29AC76D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AC76BDC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens_StaticTokenType::~HdPrimvarSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens_StaticTokenType *this)
{
  v21 = (this + 160);
  sub_29A124AB0(&v21);
  v2 = *(this + 19);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 18);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 17);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 16);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 15);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 14);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 13);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 12);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 11);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 10);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 9);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 8);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 7);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 6);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 5);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 4);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 3);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 2);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 1);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens_StaticTokenType::HdPrimvarSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens_StaticTokenType *this)
{
  v47 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "primvarValue", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "indexedPrimvarValue", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "indices", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "interpolation", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "role", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "transform", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "constant", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "uniform", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "varying", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "vertex", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "faceVarying", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "instance", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "point", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "normal", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 112, "vector", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 120, "color", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 128, "pointIndex", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 136, "edgeIndex", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 144, "faceIndex", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 152, "textureCoordinate", 0);
  v3 = (this + 160);
  v4 = *this;
  v27 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v28 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v29 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v30 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v31 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v32 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v33 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v34 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v35 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v36 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v37 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v38 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v39 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v40 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v41 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 15);
  v42 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 16);
  v43 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 17);
  v44 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 18);
  v45 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v45 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *(this + 19);
  v46 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v46 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  sub_29A12EF7C(v3, &v27, &v47, 0x14uLL);
  for (i = 152; i != -8; i -= 8)
  {
    v25 = *(&v27 + i);
    if ((v25 & 7) != 0)
    {
      atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}