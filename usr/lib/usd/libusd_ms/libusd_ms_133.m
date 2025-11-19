uint64_t pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider::Context::GetFlattenedDataSourceFromParentPrim@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath **this@<X0>, void *a2@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath(this[1]);
  if (result)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v5 = *this;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(this[1], &v6);
    (*(*v5 + 16))(&v8, v5, &v6);
    sub_29ABC2F3C(&v9, a2);
    if (v10)
    {
      sub_29A014BEC(v10);
    }

    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
    return sub_29A1DE3A4(&v6);
  }

  return result;
}

void sub_29AC26584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProviders(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1749B10, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_2A1749B10);
    if (v4)
    {
      SchemaToken = pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchema::GetSchemaToken(v4);
      sub_29AC26894(&v22);
      v23 = v22;
      v22 = 0uLL;
      v7 = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetSchemaToken(v6);
      sub_29AC26944(&v20);
      v21 = v20;
      v20 = 0uLL;
      v9 = pxrInternal__aapl__pxrReserved__::HdPurposeSchema::GetSchemaToken(v8);
      sub_29AC269F4(&v18);
      v19 = v18;
      v18 = 0uLL;
      v11 = pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::GetSchemaToken(v10);
      sub_29AC26AA4(&v16);
      v17 = v16;
      v16 = 0uLL;
      v13 = pxrInternal__aapl__pxrReserved__::HdXformSchema::GetSchemaToken(v12);
      sub_29AC26B54(&v14);
      v15 = v14;
      v14 = 0uLL;
      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(SchemaToken, &v23, v7, &v21, v9, &v19, v11, &v17, &v24, v13, &v15);
      xmmword_2A1749B00 = v24;
      v24 = 0uLL;
      if (*(&v15 + 1))
      {
        sub_29A014BEC(*(&v15 + 1));
      }

      if (*(&v14 + 1))
      {
        sub_29A014BEC(*(&v14 + 1));
      }

      if (*(&v17 + 1))
      {
        sub_29A014BEC(*(&v17 + 1));
      }

      if (*(&v16 + 1))
      {
        sub_29A014BEC(*(&v16 + 1));
      }

      if (*(&v19 + 1))
      {
        sub_29A014BEC(*(&v19 + 1));
      }

      if (*(&v18 + 1))
      {
        sub_29A014BEC(*(&v18 + 1));
      }

      if (*(&v21 + 1))
      {
        sub_29A014BEC(*(&v21 + 1));
      }

      if (*(&v20 + 1))
      {
        sub_29A014BEC(*(&v20 + 1));
      }

      if (*(&v23 + 1))
      {
        sub_29A014BEC(*(&v23 + 1));
      }

      if (*(&v22 + 1))
      {
        sub_29A014BEC(*(&v22 + 1));
      }

      __cxa_atexit(sub_29ABE5FF4, &xmmword_2A1749B00, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1749B10);
    }
  }

  v3 = *(&xmmword_2A1749B00 + 1);
  *a1 = xmmword_2A1749B00;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_29AC267C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if (a22)
  {
    sub_29A014BEC(a22);
  }

  if (a20)
  {
    sub_29A014BEC(a20);
  }

  if (a26)
  {
    sub_29A014BEC(a26);
  }

  if (a24)
  {
    sub_29A014BEC(a24);
  }

  v28 = *(v26 - 88);
  if (v28)
  {
    sub_29A014BEC(v28);
  }

  v29 = *(v26 - 104);
  if (v29)
  {
    sub_29A014BEC(v29);
  }

  __cxa_guard_abort(&qword_2A1749B10);
  _Unwind_Resume(a1);
}

void sub_29AC26894(_OWORD *a1@<X8>)
{
  v2 = operator new(0x20uLL);
  v2->__shared_owners_ = 0;
  v2->__shared_weak_owners_ = 0;
  v2->__vftable = &unk_2A207B650;
  v2[1].__vftable = &unk_2A207B7E0;
  v3 = v2 + 1;
  v4 = v2;
  sub_29AC26C04(&v3, &v5);
  *a1 = v5;
  v5 = 0uLL;
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29AC2692C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC26944(_OWORD *a1@<X8>)
{
  v2 = operator new(0x20uLL);
  v2->__shared_owners_ = 0;
  v2->__shared_weak_owners_ = 0;
  v2->__vftable = &unk_2A207B6A0;
  v2[1].__vftable = &unk_2A207B828;
  v3 = v2 + 1;
  v4 = v2;
  sub_29AC26C04(&v3, &v5);
  *a1 = v5;
  v5 = 0uLL;
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29AC269DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC269F4(_OWORD *a1@<X8>)
{
  v2 = operator new(0x20uLL);
  v2->__shared_owners_ = 0;
  v2->__shared_weak_owners_ = 0;
  v2->__vftable = &unk_2A207B6F0;
  v2[1].__vftable = &unk_2A207B9A0;
  v3 = v2 + 1;
  v4 = v2;
  sub_29AC26C04(&v3, &v5);
  *a1 = v5;
  v5 = 0uLL;
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29AC26A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC26AA4(_OWORD *a1@<X8>)
{
  v2 = operator new(0x20uLL);
  v2->__shared_owners_ = 0;
  v2->__shared_weak_owners_ = 0;
  v2->__vftable = &unk_2A207B740;
  v2[1].__vftable = &unk_2A207B9E8;
  v3 = v2 + 1;
  v4 = v2;
  sub_29AC26C04(&v3, &v5);
  *a1 = v5;
  v5 = 0uLL;
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29AC26B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC26B54(_OWORD *a1@<X8>)
{
  v2 = operator new(0x20uLL);
  v2->__shared_owners_ = 0;
  v2->__shared_weak_owners_ = 0;
  v2->__vftable = &unk_2A207B790;
  v2[1].__vftable = &unk_2A207BA30;
  v3 = v2 + 1;
  v4 = v2;
  sub_29AC26C04(&v3, &v5);
  *a1 = v5;
  v5 = 0uLL;
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29AC26BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AC26C04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  v6 = *a1;
  v5 = a1[1];
  *v4 = &unk_2A207B4A8;
  v4[1] = v6;
  v4[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_29AC26F6C(a2, v4);
}

void sub_29AC26C7C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A207B4A8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AC26CD8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A207B4A8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

uint64_t sub_29AC26D50@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29AC26D6C(void *a1, void *a2)
{
  a1[1] = &off_2A207B500;
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

uint64_t *sub_29AC26DD0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AC26DF0(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A1D2264(a1);
}

void *sub_29AC26F5C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = 0;
  return sub_29AC26D6C(a2, v2);
}

void *sub_29AC26F6C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207B5D8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AC26FC4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC26FE0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC27008(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC27038(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207B628))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AC27098(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A207B650;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AC27124(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A207B6A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AC271B0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A207B6F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AC2723C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A207B740;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AC272C8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A207B790;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdFlattenedOverlayDataSourceProvider::GetFlattenedDataSource(uint64_t **a1@<X1>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider::Context::GetInputDataSource(a1, &v7);
  pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider::Context::GetFlattenedDataSourceFromParentPrim(a1, &v5);
  pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource::OverlayedContainerDataSources(&v7, &v5, a2);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29AC273A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_29AC273D4(pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider *a1)
{
  pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider::~HdFlattenedDataSourceProvider(a1);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdFlattenedPrimvarsDataSourceProvider::GetFlattenedDataSource(uint64_t **a1@<X1>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider::Context::GetInputDataSource(a1, &v16);
  pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider::Context::GetFlattenedDataSourceFromParentPrim(a1, &v14);
  v5 = v14;
  v6 = v15;
  v14 = 0;
  v15 = 0;
  if (v5)
  {
    v7 = __dynamic_cast(v5, &unk_2A2075C58, &unk_2A207B878, 0);
    if (v7 && v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = v6;
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = 0;
LABEL_7:
  v9 = operator new(0x280uLL);
  v10 = v9;
  v12 = v16;
  v11 = v17;
  *v9 = &unk_2A207B8A0;
  *(v9 + 1) = v12;
  *(v9 + 2) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(v9 + 3) = v7;
  *(v9 + 4) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(v9 + 72) = 0;
  *(v9 + 75) = 0;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  *(v9 + 6) = 0u;
  *(v9 + 7) = 0u;
  *(v9 + 8) = 0u;
  *(v9 + 9) = 0u;
  *(v9 + 10) = 0u;
  *(v9 + 11) = 0u;
  *(v9 + 12) = 0u;
  *(v9 + 13) = 0u;
  *(v9 + 14) = 0u;
  *(v9 + 15) = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 17) = 0u;
  *(v9 + 18) = 0u;
  *(v9 + 19) = 0u;
  *(v9 + 20) = 0u;
  *(v9 + 21) = 0u;
  *(v9 + 22) = 0u;
  *(v9 + 23) = 0u;
  *(v9 + 24) = 0u;
  *(v9 + 25) = 0u;
  *(v9 + 26) = 0u;
  *(v9 + 27) = 0u;
  *(v9 + 28) = 0u;
  *(v9 + 29) = 0u;
  *(v9 + 30) = 0u;
  *(v9 + 31) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 33) = 0u;
  *(v9 + 34) = 0u;
  __dmb(0xBu);
  *(v9 + 5) = 0;
  __dmb(0xBu);
  *(v9 + 70) = 0;
  *(v9 + 568) = 0u;
  *(v9 + 584) = 0u;
  *(v9 + 600) = 0u;
  *(v9 + 6) = v9 + 568;
  __dmb(0xBu);
  *(v9 + 5) = 1;
  *(v9 + 39) = 0u;
  v13 = operator new(0x20uLL);
  *v13 = &unk_2A207B928;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = v10;
  *a2 = v10;
  a2[1] = v13;
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }

  if (v15)
  {
    sub_29A014BEC(v15);
  }

  if (v17)
  {
    sub_29A014BEC(v17);
  }
}

void sub_29AC275F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  (*(*v14 + 8))(v14);
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (v12)
  {
    sub_29A014BEC(v12);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdFlattenedPrimvarsDataSourceProvider::ComputeDirtyLocatorsForDescendants(pxrInternal__aapl__pxrReserved__::HdFlattenedPrimvarsDataSourceProvider *this, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::begin(a2);
  result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::end(a2);
  if (v3 != result)
  {
    v5 = result;
    while (1)
    {
      result = sub_29AC27714(v3);
      if (result)
      {
        break;
      }

      v3 = (v3 + 56);
      if (v3 == v5)
      {
        return result;
      }
    }

    result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::UniversalSet(result);
    if (result != a2)
    {

      sub_29AC0BC18();
    }
  }

  return result;
}

BOOL sub_29AC27714(pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a1)
{
  if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetElementCount(a1) < 2)
  {
    return 1;
  }

  Element = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetElement(a1, 1);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  return (*(v4 + 3) ^ *Element) < 8uLL;
}

void sub_29AC27790(pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider *a1)
{
  pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider::~HdFlattenedDataSourceProvider(a1);

  operator delete(v1);
}

void sub_29AC277B8(unint64_t *a1)
{
  *a1 = &unk_2A207B8A0;
  v2 = a1[79];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29AC28208(a1 + 5);
  v3 = a1[4];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AC27838(unint64_t *a1)
{
  *a1 = &unk_2A207B8A0;
  v2 = a1[79];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29AC28208(a1 + 5);
  v3 = a1[4];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v5);
}

void sub_29AC278BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(a1 + 8);
  if (v4)
  {
    (*(*v4 + 16))(&v10);
    sub_29A2F7B20(a2);
    *a2 = v10;
    *(a2 + 16) = v11;
    v11 = 0;
    v10 = 0uLL;
    v8 = &v10;
    sub_29A124AB0(&v8);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    sub_29AC28344(v5, &v8);
    sub_29AC289F4(&v10, v8);
    if (v9)
    {
      sub_29A014BEC(v9);
    }

    if (v11)
    {
      v7 = *a2;
      v6 = *(a2 + 8);
      if (*a2 != v6)
      {
        do
        {
          sub_29A975058(&v10, v7++);
        }

        while (v7 != v6);
        v6 = *(a2 + 8);
      }

      sub_29A499A9C(a2, v6, v10, &v10 + 1);
    }

    sub_29A1602D4(&v10, *(&v10 + 1));
  }
}

void sub_29AC279D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, void *a12)
{
  sub_29A1602D4(&a11, a12);
  sub_29A124AB0(&a11);
  _Unwind_Resume(a1);
}

void *sub_29AC27A1C@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 0;
  v6 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v7 = a1 + 5;
  v8 = a1[5];
  v9 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  __dmb(0xBu);
  while (1)
  {
    v10 = sub_29AC28BA0(v54, v7, v8 & v9);
    v11 = (v55 + 16);
    while (1)
    {
      v11 = *v11;
      if (v11 < 0x40)
      {
        break;
      }

      if ((*(v11 + 2) ^ *a2) < 8)
      {
        goto LABEL_7;
      }
    }

    if (v11)
    {
LABEL_7:
      v12 = v5;
      goto LABEL_8;
    }

    if (!v5)
    {
      v5 = sub_29AC28B3C(v10, a2);
    }

    if ((v54[1] & 1) == 0)
    {
      LOBYTE(v54[1]) = 1;
      if ((tbb::spin_rw_mutex_v3::internal_upgrade(v54[0]) & 1) == 0)
      {
        v11 = (v55 + 16);
        while (1)
        {
          v11 = *v11;
          if (v11 < 0x40)
          {
            break;
          }

          if ((*(v11 + 2) ^ *a2) <= 7)
          {
            if (LOBYTE(v54[1]) == 1)
            {
              atomic_fetch_add(v54[0], 3uLL);
              LOBYTE(v54[1]) = 0;
            }

            goto LABEL_7;
          }
        }
      }
    }

    v19 = *v7;
    __dmb(0xBu);
    if (v8 == v19)
    {
      break;
    }

    if (!sub_29A108BB8(v7, v9, v8, v19))
    {
      goto LABEL_27;
    }

LABEL_19:
    sub_29A0F845C(v54);
    v8 = v19;
  }

  v19 = v8;
LABEL_27:
  v6 = sub_29A108650(v7, v55, v5, v19);
  v12 = 0;
  v11 = v5;
LABEL_8:
  v51 = 1;
  if (!tbb::spin_rw_mutex_v3::internal_try_acquire_writer(v11 + 1))
  {
    sched_yield();
    v13 = 2;
    while (1)
    {
      v51 = 1;
      if (tbb::spin_rw_mutex_v3::internal_try_acquire_writer(v11 + 1))
      {
        break;
      }

      sched_yield();
      v14 = v13 < 16;
      v13 *= 2;
      if (!v14)
      {
        v15 = v54[0];
        v54[0] = 0;
        if (LOBYTE(v54[1]) == 1)
        {
LABEL_13:
          v16 = *v15;
          v17 = *v15 & 0xFFFFFFFFFFFFFFFCLL;
          while (1)
          {
            v18 = v16;
            atomic_compare_exchange_strong(v15, &v18, v17);
            if (v18 == v16)
            {
              break;
            }

            if (atomic_fetch_add_explicit(v15, 0, memory_order_relaxed) != v16)
            {
              sched_yield();
              goto LABEL_13;
            }
          }
        }

        else
        {
          atomic_fetch_add(v15, 0xFFFFFFFFFFFFFFFCLL);
        }

        sched_yield();
        v19 = *v7;
        __dmb(0xBu);
        v5 = v12;
        goto LABEL_19;
      }
    }
  }

  v50 = (v11 + 8);
  sub_29A0F845C(v54);
  v52 = v11;
  v53 = v9;
  if (v6)
  {
    if (v6 < 8)
    {
      v25 = tbb::internal::allocate_via_handler_v3(0x17D0);
      v26 = (v25 + 16);
      v27 = 254;
      do
      {
        *(v26 - 1) = 0;
        *v26 = 3;
        v26 += 3;
        --v27;
      }

      while (v27);
      v28 = 0;
      v29 = v25 - 48;
      v30 = xmmword_29B43B8D0;
      v31 = a1 + 8;
      v32 = vdupq_n_s64(7uLL);
      v33 = vdupq_n_s64(1uLL);
      v34 = vdupq_n_s64(2uLL);
      v24 = 255;
      do
      {
        v35 = vorrq_s8(vdupq_n_s64(v28), xmmword_29B430070);
        v36 = vshlq_u64(v33, v30);
        if (vmovn_s64(vcgtq_u64(v32, v35)).u8[0])
        {
          *(v31 - 1) = v29 + 24 * v36.i64[0];
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), v35)).i32[1])
        {
          *v31 = v29 + 24 * v36.i64[1];
        }

        v28 += 2;
        v30 = vaddq_s64(v30, v34);
        v31 += 2;
      }

      while (v28 != 8);
    }

    else
    {
      v21 = tbb::internal::allocate_via_handler_v3((24 << v6));
      v22 = 1 << v6;
      v23 = (v21 + 16);
      do
      {
        *(v23 - 1) = 0;
        *v23 = 3;
        v23 += 3;
        --v22;
      }

      while (v22);
      a1[v6 + 6] = v21;
      v24 = (2 << v6) - 1;
    }

    __dmb(0xBu);
    *v7 = v24;
  }

  if (v12)
  {
    sub_29AC282F4(v12, v20);
  }

  sub_29ABEC66C(v52 + 3, v54);
  if (v54[0])
  {
    sub_29ABC3244(v54, &v49);
    *a3 = v49;
    v37 = v54[1];
    if (!v54[1])
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if (v54[1])
  {
    sub_29A014BEC(v54[1]);
  }

  v38 = a1[1];
  if (!v38)
  {
LABEL_60:
    v40 = a1[3];
    if (v40)
    {
      (*(*v40 + 24))(v54);
      sub_29ABC3244(v54, &v49);
      if (v54[1])
      {
        sub_29A014BEC(v54[1]);
      }

      if (sub_29AC286A0(&v49))
      {
        v39 = v49;
        if (v49)
        {
          goto LABEL_65;
        }

LABEL_76:
        v45 = v52;
        v47 = 0;
        pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(&v47, &v48);
        *v54 = v48;
        v48 = 0uLL;
        sub_29AC28AD4(v45 + 3, v54);
        if (v54[1])
        {
          sub_29A014BEC(v54[1]);
        }

        v42 = *(&v48 + 1);
        if (*(&v48 + 1))
        {
          goto LABEL_68;
        }

        goto LABEL_69;
      }

      if (*(&v49 + 1))
      {
        sub_29A014BEC(*(&v49 + 1));
      }
    }

    v49 = 0uLL;
    goto LABEL_76;
  }

  (*(*v38 + 24))(v54);
  sub_29ABC3244(v54, &v49);
  if (v54[1])
  {
    sub_29A014BEC(v54[1]);
  }

  v39 = v49;
  if (!v49)
  {
    if (*(&v49 + 1))
    {
      sub_29A014BEC(*(&v49 + 1));
    }

    goto LABEL_60;
  }

LABEL_65:
  v41 = v52;
  v54[0] = v39;
  v54[1] = *(&v49 + 1);
  if (*(&v49 + 1))
  {
    atomic_fetch_add_explicit((*(&v49 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  sub_29AC28AD4(v41 + 3, v54);
  v42 = v54[1];
  if (v54[1])
  {
LABEL_68:
    sub_29A014BEC(v42);
  }

LABEL_69:
  v43 = *(&v49 + 1);
  *a3 = v49;
  *(a3 + 8) = v43;
  if (v43)
  {
    atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
    v37 = *(&v49 + 1);
    if (*(&v49 + 1))
    {
LABEL_71:
      sub_29A014BEC(v37);
    }
  }

LABEL_72:
  v52 = 0;
  return sub_29A0F845C(&v50);
}

void sub_29AC27F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  a17 = 0;
  sub_29A0F845C(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC27FE8(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *this)
{
  v4 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::begin(this);
  v5 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::end(this);
  if (v4 == v5)
  {
    v7 = 0;
  }

  else
  {
    v6 = v5;
    v7 = 0;
    while (!sub_29AC27714(v4))
    {
      FirstElement = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetFirstElement(v4);
      v9 = bswap64(0x9E3779B97F4A7C55 * (*FirstElement & 0xFFFFFFFFFFFFFFF8));
      v10 = *(a1 + 40);
      __dmb(0xBu);
      while (2)
      {
        sub_29AC28BA0(&v18, a1 + 40, v10 & v9);
        while (1)
        {
          v11 = (v20 + 16);
          while (1)
          {
            v12 = v11;
            v11 = *v11;
            if (v11 < 0x40)
            {
              break;
            }

            if ((v11[2] ^ *FirstElement) < 8)
            {
              goto LABEL_11;
            }
          }

          if (!v11)
          {
            break;
          }

LABEL_11:
          if (v19 & 1) != 0 || (v19 = 1, (tbb::spin_rw_mutex_v3::internal_upgrade(v18)))
          {
            *v12 = *v11;
            atomic_fetch_add((a1 + 560), 0xFFFFFFFFFFFFFFFFLL);
            sub_29A0F845C(&v18);
            v7 = 1;
            v19 = 1;
            v18 = (v11 + 1);
            tbb::spin_rw_mutex_v3::internal_acquire_writer(v11 + 1);
            sub_29A0F845C(&v18);
            sub_29AC282F4(v11, v15);
            goto LABEL_20;
          }

          v13 = *(a1 + 40);
          __dmb(0xBu);
          if (v10 != v13)
          {
            v14 = sub_29A108BB8(a1 + 40, v9, v10, v13);
            v10 = v13;
            if (v14)
            {
              goto LABEL_18;
            }
          }
        }

        v13 = *(a1 + 40);
        __dmb(0xBu);
        if (v10 != v13 && sub_29A108BB8(a1 + 40, v9, v10, v13))
        {
LABEL_18:
          sub_29A0F845C(&v18);
          v10 = v13;
          continue;
        }

        break;
      }

      sub_29A0F845C(&v18);
LABEL_20:
      v4 = (v4 + 56);
      if (v4 == v6)
      {
        return v7 & 1;
      }
    }

    sub_29AC28208((a1 + 40));
    v16 = *(a1 + 632);
    *(a1 + 624) = 0u;
    if (v16)
    {
      sub_29A014BEC(v16);
    }

    v7 = 1;
  }

  return v7 & 1;
}

void sub_29AC281EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC28208(unint64_t *a1)
{
  v2 = *a1;
  __dmb(0xBu);
  __dmb(0xBu);
  a1[65] = 0;
  v4 = sub_29A0EC0EC(v2);
  for (i = a1 + 1; ; i[v4--] = 0)
  {
    v6 = 0;
    v7 = i[v4];
    v8 = v4 <= 1 ? 1 : v4;
    do
    {
      v9 = v7 + 24 * v6;
      v12 = *(v9 + 16);
      v11 = (v9 + 16);
      v10 = v12;
      if (v12 >= 0x40)
      {
        do
        {
          *v11 = *v10;
          sub_29AC282F4(v10, v3);
          v10 = *v11;
        }

        while (*v11 > 0x3F);
      }

      ++v6;
    }

    while (!(v6 >> v8));
    result = i[v4];
    if (v4 < 8 && v4 != 1)
    {
      break;
    }

    tbb::internal::deallocate_via_handler_v3(result, v3);
LABEL_13:
    ;
  }

  if (v4)
  {
    goto LABEL_13;
  }

  __dmb(0xBu);
  *a1 = 1;
  return result;
}

uint64_t sub_29AC282F4(tbb::internal *this, void *a2)
{
  v3 = *(this + 4);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(this + 2);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return tbb::internal::deallocate_via_handler_v3(this, a2);
}

void sub_29AC28344(void *a1@<X0>, void *a2@<X8>)
{
  sub_29ABEC66C(a1 + 78, a2);
  if (!*a2)
  {
    v14[0] = 0;
    v14[1] = 0;
    v13 = v14;
    if (a1[3])
    {
      sub_29AC28344(&v20);
      if (&v13 != v20)
      {
        sub_29AC287F8(&v13, *v20, v20 + 1);
      }

      if (v21)
      {
        sub_29A014BEC(v21);
      }
    }

    v4 = a1[1];
    if (v4)
    {
      (*(*v4 + 16))(&v20);
      v5 = v20;
      v6 = v21;
      while (v5 != v6)
      {
        (*(*a1[1] + 24))(&v16);
        sub_29ABC3244(&v16, &v18);
        v7 = sub_29AC286A0(&v18);
        if (v19)
        {
          sub_29A014BEC(v19);
        }

        if (v17)
        {
          sub_29A014BEC(v17);
        }

        if (v7)
        {
          sub_29A31B870(&v13, v5, v5);
        }

        ++v5;
      }

      v18 = &v20;
      sub_29A124AB0(&v18);
    }

    sub_29AC285A0(&v13, &v15);
    v8 = v15;
    v15 = 0uLL;
    v9 = a2[1];
    *a2 = v8;
    if (v9)
    {
      sub_29A014BEC(v9);
      if (*(&v15 + 1))
      {
        sub_29A014BEC(*(&v15 + 1));
      }
    }

    sub_29A1602D4(&v13, v14[0]);
    v10 = a2[1];
    v11 = *a2;
    v12 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29ABEC600(a1 + 78, &v11);
    if (v12)
    {
      sub_29A014BEC(v12);
    }
  }
}

void sub_29AC28510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13)
{
  v16 = *(v14 - 64);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  sub_29A1602D4(&a12, a13);
  v17 = *(v13 + 8);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  _Unwind_Resume(a1);
}

void *sub_29AC285A0@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  result = operator new(0x30uLL);
  result[3] = *a1;
  v5 = result + 3;
  result[1] = 0;
  result[2] = 0;
  v6 = a1 + 1;
  v7 = a1[1];
  *result = &unk_2A207B8D8;
  result[4] = v7;
  v8 = result + 4;
  v9 = a1[2];
  result[5] = v9;
  if (v9)
  {
    *(v7 + 16) = v8;
    *a1 = v6;
    *v6 = 0;
    a1[2] = 0;
  }

  else
  {
    *v5 = v8;
  }

  *a2 = v5;
  a2[1] = result;
  return result;
}

void sub_29AC2864C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A207B8D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

BOOL sub_29AC286A0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = v1;
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v1);
    sub_29A014BEC(v1);
  }

  else
  {
    v10 = 0;
  }

  v9 = v2;
  pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::GetInterpolation(&v9, &v7);
  if (v7)
  {
    (*(*v7 + 32))(&v6, 0.0);
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    if (!v3)
    {
      v3 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    }

    v4 = (*(v3 + 6) ^ v6) < 8;
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    v4 = 0;
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  return v4;
}

void sub_29AC287AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

uint64_t **sub_29AC287F8(uint64_t **result, void *a2, void *a3)
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

    v15 = result;
    v16 = v8;
    v17 = v8;
    if (v8)
    {
      v16 = sub_29A028760(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          sub_29A166F2C(v8 + 4, v9 + 4);
          v10 = sub_29A1682D8(v5, &v18, v17 + 4);
          sub_29A00B204(v5, v18, v10, v17);
          v17 = v16;
          if (v16)
          {
            v16 = sub_29A028760(v16);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v17;
          if (v17)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_29A75BE74(&v15);
  }

  if (a2 != a3)
  {
    do
    {
      result = sub_29AC2897C(v5, a2 + 4);
      v13 = a2[1];
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
          v14 = a2[2];
          v12 = *v14 == a2;
          a2 = v14;
        }

        while (!v12);
      }

      a2 = v14;
    }

    while (v14 != a3);
  }

  return result;
}

uint64_t *sub_29AC2897C(uint64_t **a1, uint64_t *a2)
{
  sub_29A1DEB0C(a1, a2, &v6);
  v3 = sub_29A1682D8(a1, &v5, v6 + 4);
  sub_29A00B204(a1, v5, v3, v6);
  return v6;
}

void sub_29AC289D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  v11 = __p;
  __p = 0;
  if (v11)
  {
    sub_29B2C5ED8(&__p, v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29AC289F4(uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_29AC28A4C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *sub_29AC28A4C(uint64_t *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_29A2EF300(v5, v5 + 1, v4 + 4, v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void sub_29AC28AD4(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29ABEC600(a1, &v3);
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29AC28B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AC28B3C(uint64_t a1, uint64_t *a2)
{
  result = tbb::internal::allocate_via_handler_v3(0x28);
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0;
  v4 = *a2;
  *(result + 16) = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_29AC28BA0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v6 = sub_29A1089E0(a2, a3);
  *(a1 + 16) = v6;
  v7 = *(v6 + 16);
  __dmb(0xBu);
  if (v7 == 3 && (v8 = (*(a1 + 16) + 8), *(a1 + 8) = 1, tbb::spin_rw_mutex_v3::internal_try_acquire_writer(v8)))
  {
    *a1 = v8;
    v9 = *(a1 + 16);
    if (*(v9 + 16) == 3)
    {
      __dmb(0xBu);
      *(v9 + 16) = 0;
      if (a3)
      {
        v10 = HIDWORD(a3);
        if (!HIDWORD(a3))
        {
          v10 = a3;
        }

        v11 = 32 * (HIDWORD(a3) != 0);
        if (v10 >= 0x10000)
        {
          v10 >>= 16;
          v11 = (32 * (HIDWORD(a3) != 0)) | 0x10;
        }

        if (v10 >= 0x100)
        {
          v10 >>= 8;
          v11 |= 8u;
        }

        if (v10 >= 0x10)
        {
          v10 >>= 4;
          v11 |= 4u;
        }

        v12 = v10 >= 4;
        if (v10 >= 4)
        {
          LODWORD(v10) = v10 >> 2;
        }

        v13 = (v10 >> 1) & 1;
        if (v12)
        {
          v11 += 2;
        }

        v14 = v13 + v11;
      }

      else
      {
        v14 = -1;
      }

      v17 = ~(-1 << v14);
      sub_29AC28BA0(&v21, a2, v17 & a3);
      v18 = (v23 + 16);
      v19 = *(v23 + 16);
      __dmb(0xBu);
      if (v19 >= 0x40)
      {
        v20 = (2 * v17) | 1;
        while ((bswap64(0x9E3779B97F4A7C55 * (v19[2] & 0xFFFFFFFFFFFFFFF8)) & v20) == a3)
        {
          if (v22 & 1) != 0 || (v22 = 1, (tbb::spin_rw_mutex_v3::internal_upgrade(v21)))
          {
            *v18 = *v19;
            *v19 = *(v9 + 16);
            *(v9 + 16) = v19;
LABEL_29:
            v19 = *v18;
            if (*v18 <= 0x3FuLL)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v18 = (v23 + 16);
            v19 = *(v23 + 16);
            __dmb(0xBu);
            if (v19 < 0x40)
            {
              goto LABEL_32;
            }
          }
        }

        v18 = v19;
        goto LABEL_29;
      }

LABEL_32:
      sub_29A0F845C(&v21);
    }
  }

  else
  {
    v15 = (*(a1 + 16) + 8);
    *(a1 + 8) = 0;
    *a1 = v15;
    tbb::spin_rw_mutex_v3::internal_acquire_reader(v15);
  }

  return a1;
}

void sub_29AC28DA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0F845C(va);
  sub_29A0F845C(v2);
  _Unwind_Resume(a1);
}

void sub_29AC28DCC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC28DF4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC28E24(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207B978))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdFlattenedPurposeDataSourceProvider::GetFlattenedDataSource(uint64_t **a1@<X1>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider::Context::GetInputDataSource(a1, &v22);
  v6 = v22;
  v5 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    v24 = v6;
    v25 = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v5);
    if (v23)
    {
      sub_29A014BEC(v23);
    }
  }

  else
  {
    v24 = v22;
    v25 = 0;
  }

  pxrInternal__aapl__pxrReserved__::HdPurposeSchema::GetPurpose(&v24, &v20);
  v7 = v20;
  if (v21)
  {
    sub_29A014BEC(v21);
  }

  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(&v24, a2);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider::Context::GetFlattenedDataSourceFromParentPrim(a1, &v18);
    v9 = v18;
    v8 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = v9;
      v21 = v8;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v8);
      if (v19)
      {
        sub_29A014BEC(v19);
      }
    }

    else
    {
      v20 = v18;
      v21 = 0;
    }

    pxrInternal__aapl__pxrReserved__::HdPurposeSchema::GetPurpose(&v20, &v16);
    v10 = v16;
    if (v17)
    {
      sub_29A014BEC(v17);
    }

    if (v10)
    {
      pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(&v20, a2);
    }

    else
    {
      if ((atomic_load_explicit(&qword_2A1749B28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749B28))
      {
        v16 = 0;
        v17 = 0;
        v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
        if (!v12)
        {
          v12 = sub_29AC2917C(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
        }

        sub_29ABCCFA4(v12, &v14);
        v15 = v14;
        v14 = 0uLL;
        v13 = pxrInternal__aapl__pxrReserved__::HdPurposeSchema::Builder::SetPurpose(&v16, &v15);
        pxrInternal__aapl__pxrReserved__::HdPurposeSchema::Builder::Build(&qword_2A1749B18, v13);
        if (*(&v15 + 1))
        {
          sub_29A014BEC(*(&v15 + 1));
        }

        if (*(&v14 + 1))
        {
          sub_29A014BEC(*(&v14 + 1));
        }

        if (v17)
        {
          sub_29A014BEC(v17);
        }

        __cxa_atexit(sub_29ABE5FF4, &qword_2A1749B18, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1749B28);
      }

      v11 = unk_2A1749B20;
      *a2 = qword_2A1749B18;
      a2[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }
    }

    if (v21)
    {
      sub_29A014BEC(v21);
    }
  }

  if (v25)
  {
    sub_29A014BEC(v25);
  }
}

void sub_29AC29070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  __cxa_guard_abort(&qword_2A1749B28);
  if (a18)
  {
    sub_29A014BEC(a18);
  }

  v20 = *(v18 - 40);
  if (v20)
  {
    sub_29A014BEC(v20);
  }

  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *pxrInternal__aapl__pxrReserved__::HdFlattenedPurposeDataSourceProvider::ComputeDirtyLocatorsForDescendants(pxrInternal__aapl__pxrReserved__::HdFlattenedPurposeDataSourceProvider *this, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a2)
{
  result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::UniversalSet(this);
  if (result != a2)
  {

    sub_29AC0BC18();
  }

  return result;
}

void sub_29AC29154(pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider *a1)
{
  pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider::~HdFlattenedDataSourceProvider(a1);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::HdRenderTagTokens_StaticTokenType *sub_29AC2917C(atomic_ullong *a1)
{
  result = sub_29AC291C4();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderTagTokens_StaticTokenType::~HdRenderTagTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdRenderTagTokens_StaticTokenType *sub_29AC291C4()
{
  v0 = operator new(0x48uLL);
  pxrInternal__aapl__pxrReserved__::HdRenderTagTokens_StaticTokenType::HdRenderTagTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::HdFlattenedVisibilityDataSourceProvider::GetFlattenedDataSource(uint64_t **a1@<X1>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider::Context::GetInputDataSource(a1, &v22);
  v6 = v22;
  v5 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    v24 = v6;
    v25 = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v5);
    if (v23)
    {
      sub_29A014BEC(v23);
    }
  }

  else
  {
    v24 = v22;
    v25 = 0;
  }

  pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::GetVisibility(&v24, &v20);
  v7 = v20;
  if (v21)
  {
    sub_29A014BEC(v21);
  }

  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(&v24, a2);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider::Context::GetFlattenedDataSourceFromParentPrim(a1, &v18);
    v9 = v18;
    v8 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = v9;
      v21 = v8;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v8);
      if (v19)
      {
        sub_29A014BEC(v19);
      }
    }

    else
    {
      v20 = v18;
      v21 = 0;
    }

    pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::GetVisibility(&v20, &v16);
    v10 = v16;
    if (v17)
    {
      sub_29A014BEC(v17);
    }

    if (v10)
    {
      pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(&v20, a2);
    }

    else
    {
      if ((atomic_load_explicit(&qword_2A1749B40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749B40))
      {
        v16 = 0;
        v17 = 0;
        v13 = 1;
        pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(&v13, &v14);
        v15 = v14;
        v14 = 0uLL;
        v12 = pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::Builder::SetVisibility(&v16, &v15);
        pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::Builder::Build(&qword_2A1749B30, v12);
        if (*(&v15 + 1))
        {
          sub_29A014BEC(*(&v15 + 1));
        }

        if (*(&v14 + 1))
        {
          sub_29A014BEC(*(&v14 + 1));
        }

        if (v17)
        {
          sub_29A014BEC(v17);
        }

        __cxa_atexit(sub_29ABE5FF4, &qword_2A1749B30, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1749B40);
      }

      v11 = *algn_2A1749B38;
      *a2 = qword_2A1749B30;
      a2[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }
    }

    if (v21)
    {
      sub_29A014BEC(v21);
    }
  }

  if (v25)
  {
    sub_29A014BEC(v25);
  }
}

void sub_29AC29400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a16)
  {
    sub_29A014BEC(a16);
  }

  __cxa_guard_abort(&qword_2A1749B40);
  if (a20)
  {
    sub_29A014BEC(a20);
  }

  v22 = *(v20 - 40);
  if (v22)
  {
    sub_29A014BEC(v22);
  }

  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *pxrInternal__aapl__pxrReserved__::HdFlattenedVisibilityDataSourceProvider::ComputeDirtyLocatorsForDescendants(pxrInternal__aapl__pxrReserved__::HdFlattenedVisibilityDataSourceProvider *this, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a2)
{
  result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::UniversalSet(this);
  if (result != a2)
  {

    sub_29AC0BC18();
  }

  return result;
}

void sub_29AC294E4(pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider *a1)
{
  pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider::~HdFlattenedDataSourceProvider(a1);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdFlattenedXformDataSourceProvider::GetFlattenedDataSource(uint64_t **a1@<X1>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1749B58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749B58))
  {
    v47 = 0u;
    v48 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v29 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&v55, 1.0);
    sub_29AC29C64(v29, &v34);
    v46[0] = v34;
    v34 = 0uLL;
    v30 = pxrInternal__aapl__pxrReserved__::HdXformSchema::Builder::SetMatrix(&v47, v46);
    LOBYTE(v40) = 1;
    pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(&v40, &v44);
    v45 = v44;
    v44 = 0uLL;
    v31 = pxrInternal__aapl__pxrReserved__::HdXformSchema::Builder::SetResetXformStack(v30, &v45);
    pxrInternal__aapl__pxrReserved__::HdXformSchema::Builder::Build(v31, &qword_2A1749B48);
    if (*(&v45 + 1))
    {
      sub_29A014BEC(*(&v45 + 1));
    }

    if (*(&v44 + 1))
    {
      sub_29A014BEC(*(&v44 + 1));
    }

    if (*(&v46[0] + 1))
    {
      sub_29A014BEC(*(&v46[0] + 1));
    }

    if (*(&v34 + 1))
    {
      sub_29A014BEC(*(&v34 + 1));
    }

    sub_29A95E544(&v47);
    __cxa_atexit(sub_29ABE5FF4, &qword_2A1749B48, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1749B58);
  }

  pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider::Context::GetInputDataSource(a1, &v42);
  v6 = v42;
  v5 = v43;
  if (v43)
  {
    atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
    *&v45 = v6;
    *(&v45 + 1) = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v5);
    if (v43)
    {
      sub_29A014BEC(v43);
    }
  }

  else
  {
    v45 = v42;
  }

  pxrInternal__aapl__pxrReserved__::HdXformSchema::GetResetXformStack(&v45, &v55);
  if (v55 && (*(*v55 + 32))(v55, 0.0))
  {
    pxrInternal__aapl__pxrReserved__::HdXformSchema::GetMatrix(&v45, &v47);
    v7 = v47;
    if (*(&v47 + 1))
    {
      sub_29A014BEC(*(&v47 + 1));
    }

    if (v7)
    {
      pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(&v45, a2);
    }

    else
    {
      v27 = unk_2A1749B50;
      *a2 = qword_2A1749B48;
      a2[1] = v27;
      if (v27)
      {
        atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
      }
    }

    v26 = *(&v55 + 1);
    if (!*(&v55 + 1))
    {
      goto LABEL_58;
    }

LABEL_57:
    sub_29A014BEC(v26);
    goto LABEL_58;
  }

  if (*(&v55 + 1))
  {
    sub_29A014BEC(*(&v55 + 1));
  }

  pxrInternal__aapl__pxrReserved__::HdXformSchema::GetMatrix(&v45, &v44);
  pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider::Context::GetFlattenedDataSourceFromParentPrim(a1, &v38);
  v9 = v38;
  v8 = v39;
  if (v39)
  {
    atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    v40 = v9;
    v41 = v8;
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v8);
    if (v39)
    {
      sub_29A014BEC(v39);
    }
  }

  else
  {
    v40 = v38;
    v41 = 0;
  }

  pxrInternal__aapl__pxrReserved__::HdXformSchema::GetMatrix(&v40, &v36);
  v10 = v44;
  v11 = v36;
  if (v44)
  {
    if (v36)
    {
      v34 = 0uLL;
      v35 = 0uLL;
      v12 = operator new(0xA8uLL);
      v13 = v12;
      v14 = v37;
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *(&v44 + 1);
      if (*(&v44 + 1))
      {
        atomic_fetch_add_explicit((*(&v44 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      *v12 = &unk_2A207BB40;
      v12[1] = v11;
      v12[2] = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12[3] = v10;
      v12[4] = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v10 + 32))(&v47, v10, 0.0);
      (*(**(v13 + 8) + 32))(v46, 0.0);
      v59 = v51;
      v60 = v52;
      v61 = v53;
      v62 = v54;
      v55 = v47;
      v56 = v48;
      v57 = v49;
      v58 = v50;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v55, v46);
      v16 = v60;
      *(v13 + 104) = v59;
      *(v13 + 120) = v16;
      v17 = v62;
      *(v13 + 136) = v61;
      *(v13 + 152) = v17;
      v18 = v56;
      *(v13 + 40) = v55;
      *(v13 + 56) = v18;
      v19 = v58;
      *(v13 + 72) = v57;
      *(v13 + 88) = v19;
      v20 = operator new(0x20uLL);
      v20->__vftable = &unk_2A207BB90;
      v20->__shared_owners_ = 0;
      v20->__shared_weak_owners_ = 0;
      v20[1].__vftable = v13;
      if (v15)
      {
        sub_29A014BEC(v15);
      }

      if (v14)
      {
        sub_29A014BEC(v14);
      }

      v32 = v13;
      v33 = v20;
      v21 = pxrInternal__aapl__pxrReserved__::HdXformSchema::Builder::SetMatrix(&v34, &v32);
      LOBYTE(v46[0]) = 1;
      pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(v46, &v47);
      v55 = v47;
      v47 = 0uLL;
      v22 = pxrInternal__aapl__pxrReserved__::HdXformSchema::Builder::SetResetXformStack(v21, &v55);
      pxrInternal__aapl__pxrReserved__::HdXformSchema::Builder::Build(v22, a2);
      if (*(&v55 + 1))
      {
        sub_29A014BEC(*(&v55 + 1));
      }

      if (*(&v47 + 1))
      {
        sub_29A014BEC(*(&v47 + 1));
      }

      if (v33)
      {
        sub_29A014BEC(v33);
      }

      if (*(&v35 + 1))
      {
        sub_29A014BEC(*(&v35 + 1));
      }

      v23 = *(&v34 + 1);
      if (!*(&v34 + 1))
      {
        goto LABEL_52;
      }

LABEL_51:
      sub_29A014BEC(v23);
      goto LABEL_52;
    }

    v55 = 0uLL;
    v56 = 0uLL;
    v24 = pxrInternal__aapl__pxrReserved__::HdXformSchema::Builder::SetMatrix(&v55, &v44);
    LOBYTE(v34) = 1;
    pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(&v34, v46);
    v47 = v46[0];
    v46[0] = 0uLL;
    v25 = pxrInternal__aapl__pxrReserved__::HdXformSchema::Builder::SetResetXformStack(v24, &v47);
    pxrInternal__aapl__pxrReserved__::HdXformSchema::Builder::Build(v25, a2);
    if (*(&v47 + 1))
    {
      sub_29A014BEC(*(&v47 + 1));
    }

    if (*(&v46[0] + 1))
    {
      sub_29A014BEC(*(&v46[0] + 1));
    }

    if (*(&v56 + 1))
    {
      sub_29A014BEC(*(&v56 + 1));
    }

    v23 = *(&v55 + 1);
    if (*(&v55 + 1))
    {
      goto LABEL_51;
    }
  }

  else if (v36)
  {
    pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(&v40, a2);
  }

  else
  {
    v28 = unk_2A1749B50;
    *a2 = qword_2A1749B48;
    a2[1] = v28;
    if (v28)
    {
      atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
    }
  }

LABEL_52:
  if (v37)
  {
    sub_29A014BEC(v37);
  }

  if (v41)
  {
    sub_29A014BEC(v41);
  }

  v26 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    goto LABEL_57;
  }

LABEL_58:
  if (*(&v45 + 1))
  {
    sub_29A014BEC(*(&v45 + 1));
  }
}

void sub_29AC29A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a28)
  {
    sub_29A014BEC(a28);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  sub_29A95E544(&a43);
  __cxa_guard_abort(&qword_2A1749B58);
  _Unwind_Resume(a1);
}

void *sub_29AC29C64@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x88uLL);
  v5 = a1[5];
  *(v4 + 72) = a1[4];
  *(v4 + 88) = v5;
  v6 = a1[7];
  *(v4 + 104) = a1[6];
  *(v4 + 120) = v6;
  v7 = a1[1];
  *(v4 + 8) = *a1;
  *(v4 + 24) = v7;
  v8 = a1[3];
  *(v4 + 40) = a1[2];
  *v4 = &unk_2A207BA78;
  *(v4 + 56) = v8;

  return sub_29AC29E70(a2, v4);
}

pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *pxrInternal__aapl__pxrReserved__::HdFlattenedXformDataSourceProvider::ComputeDirtyLocatorsForDescendants(pxrInternal__aapl__pxrReserved__::HdFlattenedXformDataSourceProvider *this, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a2)
{
  result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::UniversalSet(this);
  if (result != a2)
  {

    sub_29AC0BC18();
  }

  return result;
}

void sub_29AC29D60(pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider *a1)
{
  pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider::~HdFlattenedDataSourceProvider(a1);

  operator delete(v1);
}

void sub_29AC29D8C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

void *sub_29AC29DB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = &off_2A2042BD8 + 2;
  result = operator new(0x88uLL);
  v5 = *(a1 + 88);
  *(result + 4) = *(a1 + 72);
  *(result + 5) = v5;
  v6 = *(a1 + 120);
  *(result + 6) = *(a1 + 104);
  *(result + 7) = v6;
  v7 = *(a1 + 24);
  *result = *(a1 + 8);
  *(result + 1) = v7;
  v8 = *(a1 + 56);
  *(result + 2) = *(a1 + 40);
  *(result + 3) = v8;
  atomic_store(0, result + 32);
  *a2 = result;
  atomic_fetch_add_explicit(result + 32, 1u, memory_order_relaxed);
  return result;
}

__n128 sub_29AC29E3C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 88);
  *(a2 + 64) = *(a1 + 72);
  *(a2 + 80) = v2;
  v3 = *(a1 + 120);
  *(a2 + 96) = *(a1 + 104);
  *(a2 + 112) = v3;
  v4 = *(a1 + 24);
  *a2 = *(a1 + 8);
  *(a2 + 16) = v4;
  result = *(a1 + 40);
  v6 = *(a1 + 56);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

void *sub_29AC29E70(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207BAC8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AC29EC8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC29EE4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC29F0C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC29F3C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207BB18))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AC29F7C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A207BB40;
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

void sub_29AC29FE4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A207BB40;
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

void *sub_29AC2A050@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v8);
  a2[1] = &off_2A2042BD8 + 2;
  result = operator new(0x88uLL);
  v4 = v8[5];
  *(result + 4) = v8[4];
  *(result + 5) = v4;
  v5 = v8[7];
  *(result + 6) = v8[6];
  *(result + 7) = v5;
  v6 = v8[1];
  *result = v8[0];
  *(result + 1) = v6;
  v7 = v8[3];
  *(result + 2) = v8[2];
  *(result + 3) = v7;
  atomic_store(0, result + 32);
  *a2 = result;
  atomic_fetch_add_explicit(result + 32, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29AC2A0EC(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  v8 = (*(**(a1 + 8) + 24))(*(a1 + 8), v16);
  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
  v9 = (*(**(a1 + 24) + 24))(*(a1 + 24), __p, a3, a4);
  v10 = v9;
  if (!a2)
  {
    goto LABEL_12;
  }

  if ((v8 & v9) == 1)
  {
    sub_29ABE4008(v16[0], v16[1], __p[0], __p[1], a2, &v18);
    goto LABEL_12;
  }

  if (v8)
  {
    v11 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v11;
      operator delete(v11);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    *a2 = *v16;
    *(a2 + 16) = v17;
    v16[1] = 0;
    v17 = 0;
    v16[0] = 0;
    goto LABEL_12;
  }

  if (!v9)
  {
LABEL_12:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    goto LABEL_14;
  }

  v12 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v12;
    operator delete(v12);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  *a2 = *__p;
  *(a2 + 16) = v15;
LABEL_14:
  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }

  return (v8 | v10) & 1;
}

void sub_29AC2A264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC2A298(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  if (a3 == 0.0)
  {
    v5 = *(a1 + 120);
    *(a2 + 64) = *(a1 + 104);
    *(a2 + 80) = v5;
    v6 = *(a1 + 152);
    *(a2 + 96) = *(a1 + 136);
    *(a2 + 112) = v6;
    v7 = *(a1 + 56);
    *a2 = *(a1 + 40);
    *(a2 + 16) = v7;
    v8 = *(a1 + 88);
    *(a2 + 32) = *(a1 + 72);
    *(a2 + 48) = v8;
  }

  else
  {
    (*(**(a1 + 24) + 32))(v15);
    (*(**(a1 + 8) + 32))(v14, a3);
    v10 = v15[5];
    *(a2 + 64) = v15[4];
    *(a2 + 80) = v10;
    v11 = v15[7];
    *(a2 + 96) = v15[6];
    *(a2 + 112) = v11;
    v12 = v15[1];
    *a2 = v15[0];
    *(a2 + 16) = v12;
    v13 = v15[3];
    *(a2 + 32) = v15[2];
    *(a2 + 48) = v13;
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(a2, v14);
  }
}

void sub_29AC2A3A0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC2A3C8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC2A3F8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207BBE0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex_Impl::_PrimLevelWrappingDataSource::PrimDirtied(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 912))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = (a1 + 40);
    do
    {
      if (*(a2 + 913) >= 9u)
      {
        v9 = *a2;
      }

      else
      {
        v9 = a2;
      }

      if (!pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::IsEmpty(&v9[v5]))
      {
        v10 = v8;
        if (*(a1 + 172) >= 9u)
        {
          v10 = *v8;
        }

        sub_29ABEC66C(&v10[v4], &v21);
        if (v21)
        {
          v12 = *(a2 + 913);
          v13 = *a2;
          v14 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::EmptyLocator(v11);
          v15 = (v12 >= 9 ? v13 : a2);
          if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Contains((v15 + v5 * 8), v14))
          {
            goto LABEL_22;
          }

          sub_29AC2A5EC(&v21, &v19);
          v16 = v19;
          if (v19)
          {
            if (*(a2 + 913) >= 9u)
            {
              v17 = *a2;
            }

            else
            {
              v17 = a2;
            }

            v6 |= (*(*v19 + 32))(v19, &v17[v5]);
          }

          if (v20)
          {
            sub_29A014BEC(v20);
          }

          if (!v16)
          {
LABEL_22:
            v19 = 0;
            v20 = 0;
            sub_29AC28AD4(&v10[v4], &v19);
            if (v20)
            {
              sub_29A014BEC(v20);
            }

            v6 = 1;
          }
        }

        if (v22)
        {
          sub_29A014BEC(v22);
        }
      }

      ++v7;
      v5 += 57;
      v4 += 2;
    }

    while (v7 < *(a2 + 912));
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

void sub_29AC2A5BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void *sub_29AC2A5EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A207B860, 0)) != 0)
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

uint64_t **pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex_Impl::_Insert(uint64_t **result, void *a2)
{
  v3 = result;
  v4 = *result;
  v5 = result[1];
  v6 = v5 - *result;
  v7 = v6 >> 3;
  if ((v6 >> 3) < 0x20)
  {
    v10 = ~(-1 << (v6 >> 3));
    v11 = *a2;
    v12 = a2[1];
    if (*a2 == v12)
    {
LABEL_16:
      if (v5 != v4)
      {
        v15 = 0;
        v16 = 0;
        do
        {
          if ((v10 >> v16))
          {
            result = sub_29A1D8028(a2, &v4[v15]);
            v4 = *v3;
            v5 = v3[1];
          }

          ++v16;
          ++v15;
        }

        while (v16 < v5 - v4);
      }
    }

    else
    {
      if (v7 <= 1)
      {
        v7 = 1;
      }

      while (1)
      {
        if (v5 != v4)
        {
          for (i = 0; i != v7; ++i)
          {
            if ((*v11 ^ v4[i]) < 8)
            {
              v14 = ~(1 << i);
            }

            else
            {
              v14 = -1;
            }

            v10 &= v14;
          }
        }

        if (!v10)
        {
          break;
        }

        if (++v11 == v12)
        {
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    sub_29A822A88(v19, v4, v5);
    v8 = *a2;
    v9 = a2[1];
    while (v8 != v9)
    {
      sub_29AC0FCC4(v19, v8++);
    }

    v18 = *v3;
    v17 = v3[1];
    while (v18 != v17)
    {
      if (sub_29A160470(v19, v18))
      {
        sub_29A1D8028(a2, v18);
      }

      ++v18;
    }

    return sub_29A155EF4(v19);
  }

  return result;
}

void sub_29AC2A7D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A155EF4(va);
  _Unwind_Resume(a1);
}

uint64_t **pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex_Impl::_PrimLevelWrappingDataSource::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex_Impl::_PrimLevelWrappingDataSource *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 3);
  if (!v4)
  {
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;

    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
  }

  (*(*v4 + 16))(a2);
  return pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex_Impl::_Insert((*(this + 1) + 144), a2);
}

void sub_29AC2A89C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex_Impl::_PrimLevelWrappingDataSource::Get(pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex_Impl::_PrimLevelWrappingDataSource *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(this + 1);
  v7 = v6[18];
  v8 = v6[19] - v7;
  if (v8)
  {
    v9 = 0;
    v10 = v8 >> 3;
    if ((v8 >> 3) <= 1)
    {
      v10 = 1;
    }

    while ((*v7 ^ *a2) > 7)
    {
      v9 += 2;
      ++v7;
      if (!--v10)
      {
        goto LABEL_6;
      }
    }

    v13 = (this + 40);
    if (*(this + 43) >= 9u)
    {
      v13 = *v13;
    }

    sub_29ABEC66C(&v13[v9], &v20);
    if (v20)
    {
      sub_29ABC3244(&v20, &v24);
      *a3 = v24;
      v14 = v21;
      if (!v21)
      {
        return;
      }

      goto LABEL_25;
    }

    if (v21)
    {
      sub_29A014BEC(v21);
    }

    v20 = *(this + 1);
    v21 = (this + 16);
    v22 = a2;
    v23 = this + 24;
    (*(**(v6[21] + v9 * 8) + 16))(&v19);
    v15 = *(&v19 + 1);
    v24 = v19;
    if (!v19)
    {
      LOBYTE(v18) = 0;
      pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(&v18, &v19);
      v17 = v19;
      v19 = 0uLL;
      v24 = v17;
      if (v15)
      {
        sub_29A014BEC(v15);
        if (*(&v19 + 1))
        {
          sub_29A014BEC(*(&v19 + 1));
        }
      }
    }

    v19 = 0uLL;
    if (sub_29AC2AAF4(&v13[v9], &v19, &v24))
    {
      v16 = &v24;
    }

    else
    {
      v16 = &v19;
    }

    sub_29ABC3244(v16, &v18);
    *a3 = v18;
    if (*(&v19 + 1))
    {
      sub_29A014BEC(*(&v19 + 1));
    }

    v14 = *(&v24 + 1);
    if (*(&v24 + 1))
    {
LABEL_25:
      sub_29A014BEC(v14);
    }
  }

  else
  {
LABEL_6:
    v11 = *(this + 3);
    if (v11)
    {
      v12 = *(*v11 + 24);

      v12();
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 0;
    }
  }
}

void sub_29AC2AAC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29AC2AAF4(uint64_t *a1, void *a2, uint64_t *a3)
{
  v3 = a3[1];
  v6 = *a3;
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_29AC2C55C(a1, a2, &v6);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  return v4;
}

void sub_29AC2AB4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC2AE10()
{
  sub_29AC2C28C((v0 + 4344));
  sub_29AC2C840((v0 + 4304));
  sub_29AC2C7AC(v0 + 648);
  sub_29ABD3178();
}

void *sub_29AC2AECC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A207B4D0, 0)) != 0)
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

void pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex::~HdFlatteningSceneIndex(pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex *this)
{
  *this = &unk_2A207BC08;
  sub_29AC2C28C(this + 543);
  sub_29AC2C840(this + 538);
  sub_29AC2C7AC(this + 648);
  sub_29ABD3178();
}

{
  pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex::~HdFlatteningSceneIndex(this);
}

void *pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex::GetPrim@<X0>(pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_29A41AA50(this + 538, a2);
  v7 = result;
  if (result && result[2])
  {
    v8 = result[1];
    *a3 = v8;
    if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *a3 &= 0xFFFFFFFFFFFFFFF8;
    }

    a3[1] = result[2];
    v9 = result[3];
    a3[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    return result;
  }

  *&v22 = 0;
  BYTE8(v22) = 0;
  v23 = 0;
  if (sub_29AC2B3D4(this + 543, &v22, a2))
  {
    v10 = v23;
    v11 = *(v23 + 24);
    *a3 = v11;
    if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *a3 &= 0xFFFFFFFFFFFFFFF8;
    }

    a3[1] = *(v10 + 32);
    v12 = *(v10 + 40);
    a3[2] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v23 = 0;
    v13 = &v22;
    return sub_29A0F845C(v13);
  }

  v23 = 0;
  sub_29A0F845C(&v22);
  v14 = sub_29AC1199C(this + 14);
  result = (*(*v14 + 16))(v14, a2);
  if (v7 || a3[1])
  {
    sub_29AC2B454(this, a2, a3 + 1, &v22);
    v15 = v22;
    v22 = 0uLL;
    v16 = a3[2];
    *(a3 + 1) = v15;
    if (v16)
    {
      sub_29A014BEC(v16);
      if (*(&v22 + 1))
      {
        sub_29A014BEC(*(&v22 + 1));
      }
    }

    sub_29AC2C638(&v26, a2, a3);
    sub_29AC2C6C0(&v22, &v26);
    v17 = sub_29AC2CAC4(this + 543, 1, &v22, &v22 + 8, 0, 0, sub_29AC2D4C8, 0);
    if (v24)
    {
      sub_29A014BEC(v24);
    }

    if ((BYTE8(v22) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v22 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22 + 1);
    sub_29A1DE3A4(&v22);
    if (v29)
    {
      sub_29A014BEC(v29);
    }

    if ((v27 & 7) != 0)
    {
      atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v26 + 1);
    result = sub_29A1DE3A4(&v26);
    if ((v17 & 1) == 0)
    {
      v26 = 0;
      LOBYTE(v27) = 0;
      v28 = 0;
      if (sub_29AC2B5A0(this + 543, &v26, a2) & 1) != 0 || (*&v22 = "hd/flatteningSceneIndex.cpp", *(&v22 + 1) = "GetPrim", v23 = 289, v24 = "virtual HdSceneIndexPrim pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex::GetPrim(const SdfPath &) const", v25 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v22, "_recentPrims.find(accessor, primPath)", 0)))
      {
        v18 = v28;
        sub_29A166F2C(a3, (v28 + 24));
        v20 = *(v18 + 32);
        v19 = *(v18 + 40);
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        v21 = a3[2];
        a3[1] = v20;
        a3[2] = v19;
        if (v21)
        {
          sub_29A014BEC(v21);
        }
      }

      v28 = 0;
      v13 = &v26;
      return sub_29A0F845C(v13);
    }
  }

  return result;
}

void sub_29AC2B374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  a17 = 0;
  sub_29A0F845C(&a15);
  sub_29AC2B620(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC2B3D4(uint64_t *a1, uint64_t a2, unsigned int *a3)
{
  if (*(a2 + 16))
  {
    sub_29A0F8494(a2);
    *(a2 + 16) = 0;
  }

  return sub_29AC2CAC4(a1, 0, a3, 0, a2, 0, sub_29AC2CDDC, 0);
}

void *sub_29AC2B454@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0xB0uLL);
  sub_29AC2D28C(v8, a1, a2, a3);

  return sub_29AC2D3BC(a4, v8);
}

_DWORD *sub_29AC2B4D8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

_DWORD *sub_29AC2B53C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29AC2B5A0(uint64_t *a1, uint64_t a2, unsigned int *a3)
{
  if (*(a2 + 16))
  {
    sub_29A0F8494(a2);
    *(a2 + 16) = 0;
  }

  return sub_29AC2CAC4(a1, 0, a3, 0, a2, 1, sub_29AC2CDDC, 0);
}

void *sub_29AC2B620(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC1199C(this + 14) + 24);

  return v2();
}

uint64_t pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex::_PrimsAdded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v17 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex::_ConsolidateRecentPrims(v3);
  v16 = 0x1000000000;
  if (*(v5 + 260) >= 0x11u)
  {
    v7 = *v5;
  }

  else
  {
    v7 = v5;
  }

  v8 = *(v5 + 256);
  if (v8)
  {
    v9 = 16 * v8;
    do
    {
      pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex::_DirtyHierarchy(v6, v7, v6 + 81, (v6 + 24), v15);
      v7 += 4;
      v9 -= 16;
    }

    while (v9);
    v10 = *(v5 + 256);
    v11 = *(v5 + 260) >= 0x11u ? *v5 : v5;
    if (v10)
    {
      v12 = 16 * v10;
      do
      {
        v13 = sub_29A41AA50(v6 + 538, v11);
        if (v13)
        {
          sub_29AC2BAB4((v13 + 2));
        }

        v11 += 4;
        v12 -= 16;
      }

      while (v12);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsAdded(v6, v5);
  if (v16)
  {
    pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v6, v15);
  }

  return sub_29ABD3844(v15);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex::_ConsolidateRecentPrims(pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex *this)
{
  v2 = (this + 4344);
  v3 = *(this + 611);
  v15[0] = this + 4344;
  v15[1] = 0;
  v15[2] = this + 4872;
  v16 = v3;
  v4 = (this + 4344);
  if (v3 <= 0x3F)
  {
    sub_29A10CE74(v15);
    v3 = v16;
    v4 = v15[0];
  }

  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 == v2;
  }

  if (!v5)
  {
    while (1)
    {
      v6 = sub_29AC2C1D8(this + 538, (v3 + 16));
      v7 = (v3 + 24);
      v8 = *v6;
      v9 = *(v6 + 8);
      *v6 = 0;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      if ((v3 + 24) != v6)
      {
        *v6 = *v7;
        *v7 = 0;
      }

      v10 = *(v3 + 32);
      *(v3 + 32) = 0;
      *(v3 + 40) = 0;
      v11 = *(v6 + 2);
      *(v6 + 8) = v10;
      if (v11)
      {
        v14 = v9;
        sub_29A014BEC(v11);
        v9 = v14;
      }

      if ((*v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *(v3 + 24) = v8;
      v12 = *(v3 + 40);
      *(v3 + 32) = v9;
      if (v12)
      {
        sub_29A014BEC(v12);
      }

      v3 = *v16;
      v16 = v3;
      if (!v3)
      {
        sub_29A10CE74(v15);
        v3 = v16;
        if (!v16 && v15[0] == v2)
        {
          break;
        }
      }
    }
  }

  return sub_29AC2C28C(v2);
}

void *pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex::_DirtyHierarchy(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v16 = 0;
  v15 = sub_29A41AA50((a1 + 4304), a2);
  v9 = sub_29A41AAB8(&v15);
  result = v15;
  v14 = v15;
  while (result != v9)
  {
    v11 = result[3];
    v12 = result[2];
    v13 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29AC2C358(&v12, &v15);
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    if (v15)
    {
      if (!pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex_Impl::_PrimLevelWrappingDataSource::PrimDirtied(v15, a3))
      {
        result = sub_29A41AAB8(&v14);
        v14 = result;
        if (v16)
        {
          sub_29A014BEC(v16);
          result = v14;
        }

        continue;
      }

      if (*v14 != *a2)
      {
        sub_29AC2C3E8(a5, v14, a4);
      }
    }

    if (v16)
    {
      sub_29A014BEC(v16);
    }

    result = *(v14 + 5);
    if (!result)
    {
      result = sub_29A41AAB8(&v14);
    }

    v14 = result;
  }

  return result;
}

void sub_29AC2BA98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC2BAB4(pxrInternal__aapl__pxrReserved__ *a1)
{
  v1 = *(a1 + 1);
  v2 = *a1;
  v3 = v1;
  *a1 = 0;
  *(a1 + 1) = 0;
  if ((pxrInternal__aapl__pxrReserved__::Work_ShouldSynchronizeAsyncDestroyCalls(a1) & 1) == 0)
  {
    sub_29AC2D5D0(&v2);
    v1 = v3;
  }

  if (v1)
  {
    sub_29A014BEC(v1);
  }
}

void sub_29AC2BB04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex::_PrimsRemoved(uint64_t a1, uint64_t a2, uint64_t a3)
{
  pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex::_ConsolidateRecentPrims(a1);
  v5 = *(a3 + 128);
  if (*(a3 + 132) >= 0x11u)
  {
    v6 = *a3;
  }

  else
  {
    v6 = a3;
  }

  if (v5)
  {
    v7 = &v6[2 * v5];
    do
    {
      if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath(v6))
      {
        pxrInternal__aapl__pxrReserved__::Sdf_VisitPathTableInParallel(*(a1 + 4304), (*(a1 + 4312) - *(a1 + 4304)) >> 3, &v13, sub_29AC2D8C0);
        v13 = *(a1 + 4304);
        *(a1 + 4304) = 0u;
        v8 = *(a1 + 4320);
        *(a1 + 4320) = 0;
        v14 = v8;
        v15 = 0;
        v16 = *(a1 + 4336);
        *(a1 + 4328) = 0u;
        sub_29AC2C840(&v13);
      }

      else
      {
        *(&v13 + 1) = 0;
        *&v13 = sub_29A41AA50((a1 + 4304), v6);
        v9 = sub_29A41AAB8(&v13);
        v10 = v13;
        *(&v13 + 1) = v9;
        v12 = v13;
        if (v9 != v13)
        {
          v9 = v13;
          do
          {
            sub_29AC2BAB4((v9 + 16));
            v9 = *(v12 + 40);
            if (!v9)
            {
              v9 = sub_29A41AAB8(&v12);
            }

            v12 = v9;
          }

          while (*(&v13 + 1) != v9);
          v10 = v13;
        }

        if (v10 != v9)
        {
          sub_29AC2BC80((a1 + 4304), &v13);
        }
      }

      v6 += 2;
    }

    while (v6 != v7);
  }

  return pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(a1, a3);
}

void sub_29AC2BC80(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t *a2)
{
  v3 = *a2;
  sub_29AC2D938(a1, *a2);
  sub_29AC2D98C(a1, v3);

  sub_29AC2DA28(a1, v3);
}

void pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex::_PrimDirtied(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v26 = v4;
  v6 = v5;
  v7 = v3;
  v44 = *MEMORY[0x29EDCA608];
  v8 = (v3 + 152);
  v9 = (v3 + 144);
  sub_29AC2DB64(v42, (*(v3 + 152) - *(v3 + 144)) >> 3);
  v41 = 0x800000000;
  v10 = *v9;
  if (*v8 == *v9)
  {
LABEL_21:
    IsEmpty = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::IsEmpty(v40);
    if ((IsEmpty & 1) == 0)
    {
      IsEmpty = pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex::_DirtyHierarchy(v7, v6, v42, v40, v26);
    }

    v22 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::EmptyLocator(IsEmpty);
    if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Contains((v6 + 2), v22))
    {
      v23 = sub_29A41AA50(v7 + 538, v6);
      if (v23)
      {
        v25 = v23[2];
        v24 = (v23 + 2);
        if (v25)
        {
          sub_29AC2BAB4(v24);
        }
      }
    }

    sub_29ABD3178();
  }

  v11 = 0;
  while (1)
  {
    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v39, (v10 + 8 * v11));
    if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects((v6 + 2), v39))
    {
      if (v43 >= 9)
      {
        v12 = v42[0];
      }

      else
      {
        v12 = v42;
      }

      v13 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Contains((v6 + 2), v39);
      v14 = &v12[57 * v11];
      if (v13)
      {
        if (v14 != pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::UniversalSet(v13))
        {
          sub_29AC0BC18();
        }
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersection((v6 + 2), v39, &v34);
        v31 = v34;
        v32 = v35;
        sub_29ABD30AC(v33, v36);
        v28 = *&v36[56];
        v29 = v37;
        sub_29ABD30AC(v30, v38);
        while (*(&v31 + 1) != *(&v28 + 1))
        {
          v15 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::IntersectionIterator::operator*(&v31);
          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::RemoveFirstElement(v15, v27);
          pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(v14, v27);
          sub_29ABC3488(v27);
          pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::IntersectionIterator::operator++(&v31);
        }

        sub_29ABC3488(v30);
        sub_29ABC3488(v33);
        sub_29ABC3488(v38);
        sub_29ABC3488(v36);
        v16 = *(v7[21] + 16 * v11);
        v17 = (*(*v16 + 24))(v16, v14);
        v18 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::EmptyLocator(v17);
        if (!pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Contains(v14, v18))
        {
          v19 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::begin(v14);
          v20 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::end(v14);
          while (v19 != v20)
          {
            pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v39, v19, &v34);
            pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(v40, &v34);
            sub_29ABC3488(&v34);
            v19 += 7;
          }

          goto LABEL_16;
        }
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(v40, v39);
    }

LABEL_16:
    sub_29ABC3488(v39);
    ++v11;
    v10 = v7[18];
    if (v11 >= (v7[19] - v10) >> 3)
    {
      goto LABEL_21;
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex::_PrimsDirtied(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v9[929] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex::_ConsolidateRecentPrims(v3);
  v9[928] = 0x1000000000;
  if (*(v5 + 7428) >= 0x11u)
  {
    v7 = *v5;
  }

  else
  {
    v7 = v5;
  }

  if (*(v5 + 7424))
  {
    pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex::_PrimDirtied(v6, v7, v9);
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v6, v5);
  return sub_29ABD3844(v9);
}

char *sub_29AC2C1D8(void *a1, _DWORD *a2)
{
  sub_29A1E21F4(&v6, a2);
  sub_29A1E2240(&v7, a2 + 1);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = sub_29AC2DBE8(a1, &v6);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  sub_29A1DE3A4(&v6);
  return v4 + 8;
}

uint64_t sub_29AC2C28C(unint64_t *a1)
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
          sub_29AC2CF6C(a1, v10);
          v10 = *v11;
        }

        while (*v11 > 0x3FuLL);
      }

      ++v4;
    }

    while (!(v4 >> v8));
    result = sub_29AC2E0F4(a1, v5);
  }

  while (v5);
  __dmb(0xBu);
  *a1 = 1;
  return result;
}

void *sub_29AC2C358@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

_DWORD *sub_29AC2C3E8(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v6 = *(a1 + 7424);
  v7 = *(a1 + 7428);
  if (v6 == v7)
  {
    sub_29AC14D54(a1, v6 + (v6 >> 1) + 1);
    v7 = *(a1 + 7428);
  }

  v8 = a1;
  if (v7 >= 0x11)
  {
    v8 = *a1;
  }

  result = sub_29ABD2F24((v8 + 464 * *(a1 + 7424)), a2, a3);
  ++*(a1 + 7424);
  return result;
}

void sub_29AC2C470(uint64_t a1)
{
  *a1 = &unk_2A207BC68;
  sub_29AC2C710(a1 + 40);
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AC2C4E4(uint64_t a1)
{
  *a1 = &unk_2A207BC68;
  sub_29AC2C710(a1 + 40);
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

BOOL sub_29AC2C55C(uint64_t *a1, void *a2, uint64_t *a3)
{
  sp_mut = std::__get_sp_mut(a1);
  std::__sp_mut::lock(sp_mut);
  v7 = a1[1];
  v8 = a2[1];
  if (v7 == v8)
  {
    *a1 = 0;
    a1[1] = 0;
    v12 = *a3;
    v13 = a3[1];
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v14 = a1[1];
      *a1 = v12;
      a1[1] = v13;
      if (v14)
      {
        sub_29A014BEC(v14);
      }
    }

    else
    {
      *a1 = v12;
      a1[1] = 0;
    }

    v15 = v7;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    v9 = *a1;
    v10 = a1[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      v11 = a2[1];
      *a2 = v9;
      a2[1] = v10;
      if (v11)
      {
        sub_29A014BEC(v11);
      }
    }

    else
    {
      *a2 = v9;
      a2[1] = 0;
    }

    v15 = v8;
  }

  std::__sp_mut::unlock(sp_mut);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  return v7 == v8;
}

uint64_t sub_29AC2C638(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  v6 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v6 + 1, a2 + 1);
  v7 = *a3;
  *(a1 + 8) = *a3;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = a3[2];
  *(a1 + 16) = a3[1];
  *(a1 + 24) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

uint64_t sub_29AC2C6C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A1DDD84(a1, a2);
  sub_29A1DDDC0(v4 + 1, (a2 + 4));
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t sub_29AC2C710(uint64_t a1)
{
  sub_29AC2C750(a1);
  if (*(a1 + 132) >= 9u)
  {
    free(*a1);
  }

  return a1;
}

void sub_29AC2C750(uint64_t *a1)
{
  v1 = a1;
  if (*(a1 + 33) >= 9u)
  {
    v1 = *a1;
  }

  v2 = *(a1 + 32);
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

uint64_t sub_29AC2C7AC(uint64_t a1)
{
  sub_29AC2C7EC(a1);
  if (*(a1 + 3652) >= 9u)
  {
    free(*a1);
  }

  return a1;
}

uint64_t *sub_29AC2C7EC(uint64_t *result)
{
  v1 = result;
  if (*(result + 913) >= 9u)
  {
    result = *result;
  }

  if (*(v1 + 912))
  {
    sub_29ABD3178();
  }

  return result;
}

uint64_t *sub_29AC2C840(uint64_t *a1)
{
  sub_29AC2C878(a1);
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_29AC2C878(uint64_t *a1)
{
  v2 = a1[1] - *a1;
  if (v2)
  {
    v3 = 0;
    v4 = v2 >> 3;
    do
    {
      v5 = *a1;
      v6 = *(*a1 + 8 * v3);
      if (v6)
      {
        do
        {
          v7 = *(v6 + 24);
          v8 = *(v6 + 32);
          if (v7)
          {
            sub_29A014BEC(v7);
          }

          v9 = *(v6 + 8);
          if ((v9 & 7) != 0)
          {
            atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v6 + 4));
          v10 = sub_29A1DE3A4(v6);
          operator delete(v10);
          v6 = v8;
        }

        while (v8);
        v5 = *a1;
      }

      *(v5 + 8 * v3++) = 0;
    }

    while (v3 != v4);
  }

  a1[3] = 0;
}

_DWORD *sub_29AC2C924(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 3648);
  v5 = *(a1 + 3652);
  if (v4 == v5)
  {
    sub_29AC2C99C(a1, v4 + (v4 >> 1) + 1);
    v5 = *(a1 + 3652);
  }

  v6 = a1;
  if (v5 >= 9)
  {
    v6 = *a1;
  }

  result = sub_29ABD2F88((v6 + 456 * *(a1 + 3648)), a2);
  ++*(a1 + 3648);
  return result;
}

void sub_29AC2C99C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = malloc(456 * a2);
  v5 = a1;
  if (*(a1 + 3652) >= 9u)
  {
    v5 = *a1;
  }

  sub_29AC2CA24(v5, v5 + 456 * *(a1 + 3648), v4);
  sub_29AC2C7EC(a1);
  if (*(a1 + 3652) >= 9u)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 3652) = v2;
}

uint64_t sub_29AC2CA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v5 = a1;
  v6 = 0;
  result = a3;
  do
  {
    v7 = sub_29AC14EB8(result, v5);
    v5 += 456;
    result = v7 + 456;
    v6 -= 456;
  }

  while (v5 != a2);
  return result;
}

void sub_29AC2CA88(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_29ABD3178();
  }

  __cxa_rethrow();
}

uint64_t sub_29AC2CAC4(uint64_t *a1, int a2, unsigned int *a3, uint64_t a4, uint64_t a5, int a6, uint64_t (*a7)(uint64_t *, unsigned int *, uint64_t), void *a8)
{
  v13 = 0;
  v14 = bswap64(0x9E3779B97F4A7C55 * (a3[1] + ((a3[1] + *a3 + (a3[1] + *a3) * (a3[1] + *a3)) >> 1)));
  v15 = *a1;
  __dmb(0xBu);
  while (1)
  {
    sub_29AC2CFA0(&v30, a1, v15 & v14, 0);
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
      sub_29AC2CDE4(a1, v13, (a1 + 72), 0);
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
    sub_29AC2CF6C(a1, v18);
  }

  return v17;
}

void sub_29AC2CDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

void sub_29AC2CDE4(uint64_t *a1, unint64_t a2, uint64_t a3, char a4)
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

uint64_t sub_29AC2CFA0(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
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
      sub_29AC2D07C(a2, v11, a3);
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

void *sub_29AC2D07C(uint64_t a1, uint64_t a2, unint64_t a3)
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
  sub_29AC2CFA0(&v15, a1, v10 & a3, 0);
  v11 = (v17 + 16);
  v12 = *(v17 + 16);
  __dmb(0xBu);
  if (v12 >= 0x40)
  {
    v13 = (2 * v10) | 1;
    while ((bswap64(0x9E3779B97F4A7C55 * (*(v12 + 20) + ((*(v12 + 20) + *(v12 + 16) + (*(v12 + 20) + *(v12 + 16)) * (*(v12 + 20) + *(v12 + 16))) >> 1))) & v13) == a3)
    {
      if (v16 & 1) != 0 || (v16 = 1, (tbb::spin_rw_mutex_v3::internal_upgrade(v15)))
      {
        *v11 = *v12;
        *v12 = *(a2 + 16);
        *(a2 + 16) = v12;
LABEL_24:
        v12 = *v11;
        if (*v11 <= 0x3F)
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

void sub_29AC2D214(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AC2D228(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29AC2D28C(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  *a1 = &unk_2A207BC68;
  *(a1 + 8) = a2;
  sub_29A1E21F4((a1 + 16), a3);
  sub_29A1E2240((a1 + 20), a3 + 1);
  v7 = a4[1];
  *(a1 + 24) = *a4;
  *(a1 + 32) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29AC2D348((a1 + 40), (*(*(a1 + 8) + 152) - *(*(a1 + 8) + 144)) >> 3);
  return a1;
}

void sub_29AC2D320(_Unwind_Exception *a1)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29A1DCEA8((v1 + 16));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AC2D348(_DWORD *a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  a1[33] = 8;
  v4 = 16 * a2;
  if (a2 >= 9)
  {
    a1 = malloc(16 * a2);
    *v3 = a1;
    v3[32] = v2;
    v3[33] = v2;
    if (v2 < 9)
    {
      a1 = v3;
    }

    goto LABEL_6;
  }

  a1[32] = a2;
  if (a2)
  {
LABEL_6:
    bzero(a1, v4);
  }

  return v3;
}

void *sub_29AC2D3BC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207BCC8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AC2D414(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC2D430(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC2D458(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC2D488(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207BD18))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

_OWORD *sub_29AC2D4CC(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v6 = tbb::internal::allocate_via_handler_v3(0x30);
  v9[1] = a1;
  v6[2] = 0u;
  *v6 = 0u;
  v6[1] = 0u;
  sub_29AC2D540((v6 + 1), a2, a3);
  v9[0] = 0;
  sub_29AC2D59C(v9, v7);
  return v6;
}

uint64_t sub_29AC2D540(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v6 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v6 + 1, a2 + 1);
  *(a1 + 8) = *a3;
  *a3 = 0;
  *(a1 + 16) = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return a1;
}

uint64_t *sub_29AC2D59C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (v3)
  {
    tbb::internal::deallocate_via_handler_v3(v3, a2);
  }

  return a1;
}

void sub_29AC2D5D0(pxrInternal__aapl__pxrReserved__ *a1)
{
  v2 = *a1;
  v1 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  HasConcurrency = pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(a1);
  if (HasConcurrency)
  {
    DetachedDispatcher = pxrInternal__aapl__pxrReserved__::Work_GetDetachedDispatcher(HasConcurrency);
    v5 = *(DetachedDispatcher + 256);
    v8[0] = 0;
    v8[1] = v5;
    v6 = tbb::internal::allocate_additional_child_of_proxy::allocate(v8, 0x20uLL);
    *(v6 - 11) = 1;
    *v6 = &unk_2A207BD40;
    v6[1] = v2;
    v6[2] = v1;
    v6[3] = DetachedDispatcher + 272;
    v7 = (***(v6 - 5))(*(v6 - 5), v6);
    pxrInternal__aapl__pxrReserved__::Work_EnsureDetachedTaskProgress(v7);
  }

  else
  {
    sub_29AC2D6D4();
    if (v1)
    {
      sub_29A014BEC(v1);
    }
  }
}

void sub_29AC2D6BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC2D6D4()
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

void *sub_29AC2D774(void *a1)
{
  *a1 = &unk_2A207BD40;
  v2 = a1[2];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

void sub_29AC2D7C0(void *__p)
{
  *__p = &unk_2A207BD40;
  v2 = __p[2];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  operator delete(__p);
}

uint64_t sub_29AC2D81C(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29AC2D6D4();
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 24));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29AC2D8AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29AC2D8C0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    do
    {
      v4 = *(v3 + 24);
      v5 = *(v3 + 32);
      if (v4)
      {
        sub_29A014BEC(v4);
      }

      v6 = *(v3 + 8);
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v3 + 4));
      v7 = sub_29A1DE3A4(v3);
      operator delete(v7);
      v3 = v5;
    }

    while (v5);
  }

  *a2 = 0;
}

void sub_29AC2D938(void *a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2)
  {
    sub_29AC2DAEC(a1, *(a2 + 40));

    sub_29AC2DA28(a1, v2);
  }
}

void *sub_29AC2D98C(pxrInternal__aapl__pxrReserved__::SdfPath *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
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

void sub_29AC2DA14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29AC2DA28(void *a1, unsigned int *a2)
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
  v5 = *(v4 + 24);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = *(v4 + 8);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v4 + 4));
  v7 = sub_29A1DE3A4(v4);

  operator delete(v7);
}

void sub_29AC2DAEC(void *a1, uint64_t a2)
{
  (sub_29AC2D938)();
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

      sub_29AC2D938(a1, v5);
      sub_29AC2DA28(a1, v5);
      v5 = v8;
    }

    while (v8);
  }
}

char *sub_29AC2DB64(char *a1, unint64_t a2)
{
  v2 = a2;
  *(a1 + 913) = 8;
  if (a2 < 9)
  {
    *(a1 + 912) = a2;
    v5 = a1;
    if (!a2)
    {
      return a1;
    }
  }

  else
  {
    v4 = malloc(456 * a2);
    *a1 = v4;
    *(a1 + 913) = v2;
    *(a1 + 912) = v2;
    if (v2 >= 9)
    {
      v5 = v4;
    }

    else
    {
      v5 = a1;
    }
  }

  v6 = v5 + 448;
  do
  {
    *v6 = 0x800000000;
    v6 += 57;
    --v2;
  }

  while (v2);
  return a1;
}

pxrInternal__aapl__pxrReserved__::SdfPath *sub_29AC2DBE8(void *a1, unsigned int *a2)
{
  v7 = a2;
  result = sub_29AC2DD48(a1, a2, &v7);
  v5 = result;
  LOBYTE(v6) = v4;
  if (v4)
  {
    sub_29AC2DC3C(a1, &v5);
    return v5;
  }

  return result;
}

_DWORD *sub_29AC2DC3C(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath **a2)
{
  v3 = *a2;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(*a2, &v13);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v13))
  {
    sub_29A1E21F4(&v8, &v13);
    sub_29A1E2240(&v9, &v14);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v4 = sub_29AC2DBE8(a1, &v8);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
    sub_29A1DE3A4(&v8);
    v5 = *(v4 + 40);
    if (v5)
    {
      v6 = v5 | 1;
    }

    else
    {
      v6 = v4;
    }

    *(v3 + 6) = v6;
    *(v4 + 40) = v3;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
  return sub_29A1DE3A4(&v13);
}

void sub_29AC2DD24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_29AC2B53C(va);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

void *sub_29AC2DD48(void *a1, unsigned int *a2, uint64_t *a3)
{
  v6 = a1[4];
  if (!v6)
  {
    sub_29AC2DE68(a1);
    v6 = a1[4];
  }

  v7 = (*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & v6));
  v8 = *v7;
  if (*v7)
  {
    result = *v7;
    while (*result != *a2)
    {
      result = result[4];
      if (!result)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (a1[3] > ((a1[1] - *a1) >> 3))
    {
      sub_29AC2DE68(a1);
      v7 = (*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & a1[4]));
      v8 = *v7;
    }

    v10 = operator new(0x38uLL);
    result = sub_29AC2E078(v10, *a3);
    result[5] = 0;
    result[6] = 0;
    result[4] = v8;
    *v7 = result;
    ++a1[3];
  }

  return result;
}

void sub_29AC2DE68(uint64_t a1)
{
  sub_29A0ECEEC(&v21, "Sdf", "SdfPathTable::_Grow");
  v2 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v2)
  {
    v3 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("void pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim>::_Grow() [MappedType = pxrInternal__aapl__pxrReserved__::HdSceneIndexPrim]", 0);
  }

  else
  {
    v3 = 0;
  }

  v19 = v3;
  v20 = v3 != 0;
  v4 = 2 * *(a1 + 32);
  if (v4 > 7)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 7;
  }

  *(a1 + 32) = v5;
  sub_29AC2E000(&v17, v5 + 1);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = v7 - *a1;
  if (v7 != *a1)
  {
    v9 = 0;
    v10 = v8 >> 3;
    do
    {
      v11 = *(*a1 + 8 * v9);
      if (v11)
      {
        v12 = *(a1 + 32);
        do
        {
          v13 = *(v11 + 4);
          v14 = bswap64(0x9E3779B97F4A7C55 * (v11[1] + ((v11[1] + *v11 + (v11[1] + *v11) * (v11[1] + *v11)) >> 1))) & v12;
          v15 = v17;
          *(v11 + 4) = *(v17 + 8 * v14);
          *(v15 + 8 * v14) = v11;
          v11 = v13;
        }

        while (v13);
      }

      ++v9;
    }

    while (v9 != v10);
    v6 = *a1;
  }

  *a1 = v17;
  v16 = *(a1 + 16);
  *(a1 + 16) = v18;
  *&v17 = v6;
  v18 = v16;
  if (v6)
  {
    *(&v17 + 1) = v6;
    operator delete(v6);
  }

  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v3 != 0, v3);
  }

  if (v21)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v22, v21);
  }
}

void sub_29AC2DFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void *sub_29AC2E000(void *a1, unint64_t a2)
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

void sub_29AC2E05C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AC2E078(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, (a2 + 4));
  v5 = *(a2 + 8);
  *(a1 + 8) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

uint64_t sub_29AC2E0F4(uint64_t a1, unint64_t a2)
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

void sub_29AC2E14C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 + 3;
  v7 = a1[3];
  v8 = v7;
  sub_29A193124(a3, v7);
  sub_29A19D6E4(v21, v7);
  if (v7 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = v7 & 0x7FFFFFFF;
    do
    {
      sub_29A19DBEC(v21);
      *(v22 + 4 * v9) = v10;
      v10 += *(a1[7] + 4 * v9++);
    }

    while (v11 != v9);
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v12)
  {
    v12 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v13 = a1[2];
  v14 = *(v12 + 71);
  sub_29A1935CC(a3);
  v15 = *(a3 + 32);
  v17[0] = v21;
  v17[1] = v6;
  v17[2] = a1 + 8;
  v18 = (v14 ^ v13) > 7;
  v19 = a2;
  v20 = v15;
  v16[0] = sub_29AC2E718;
  v16[1] = 0;
  v16[2] = v17;
  sub_29AC2E88C(v8, v16, 1);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AC2E2C0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 + 3;
  v7 = a1[3];
  v8 = v7;
  sub_29A1948F8(a3, v7);
  sub_29A19D6E4(v21, v7);
  if (v7 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = v7 & 0x7FFFFFFF;
    do
    {
      sub_29A19DBEC(v21);
      *(v22 + 4 * v9) = v10;
      v10 += *(a1[7] + 4 * v9++);
    }

    while (v11 != v9);
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v12)
  {
    v12 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v13 = a1[2];
  v14 = *(v12 + 71);
  sub_29A194CC8(a3);
  v15 = *(a3 + 32);
  v17[0] = v21;
  v17[1] = v6;
  v17[2] = a1 + 8;
  v18 = (v14 ^ v13) > 7;
  v19 = a2;
  v20 = v15;
  v16[0] = sub_29AC2F054;
  v16[1] = 0;
  v16[2] = v17;
  sub_29AC2F194(v8, v16, 1);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AC2E434(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 + 3;
  v7 = a1[3];
  v8 = v7;
  sub_29AC2F95C(a3, v7);
  sub_29A19D6E4(v21, v7);
  if (v7 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = v7 & 0x7FFFFFFF;
    do
    {
      sub_29A19DBEC(v21);
      *(v22 + 4 * v9) = v10;
      v10 += *(a1[7] + 4 * v9++);
    }

    while (v11 != v9);
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v12)
  {
    v12 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v13 = a1[2];
  v14 = *(v12 + 71);
  sub_29AC2FFC0(a3);
  v15 = *(a3 + 32);
  v17[0] = v21;
  v17[1] = v6;
  v17[2] = a1 + 8;
  v18 = (v14 ^ v13) > 7;
  v19 = a2;
  v20 = v15;
  v16[0] = sub_29AC2F9CC;
  v16[1] = 0;
  v16[2] = v17;
  sub_29AC30004(v8, v16, 1);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AC2E5A8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 + 3;
  v7 = a1[3];
  v8 = v7;
  sub_29AC2F95C(a3, v7);
  sub_29A19D6E4(v21, v7);
  if (v7 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = v7 & 0x7FFFFFFF;
    do
    {
      sub_29A19DBEC(v21);
      *(v22 + 4 * v9) = v10;
      v10 += *(a1[7] + 4 * v9++);
    }

    while (v11 != v9);
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v12)
  {
    v12 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v13 = a1[2];
  v14 = *(v12 + 71);
  sub_29AC2FFC0(a3);
  v15 = *(a3 + 32);
  v17[0] = v21;
  v17[1] = v6;
  v17[2] = a1 + 8;
  v18 = (v14 ^ v13) > 7;
  v19 = a2;
  v20 = v15;
  v16[0] = sub_29AC30858;
  v16[1] = 0;
  v16[2] = v17;
  sub_29AC30A04(v8, v16, 1);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

double sub_29AC2E718(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 < a3)
  {
    result = 1.0;
    do
    {
      v4 = *(*(*(a1 + 8) + 32) + 4 * a2);
      v5 = 0.0;
      v6 = 0.0;
      v7 = 0.0;
      if (v4 >= 3)
      {
        v8 = (*(*(a1 + 16) + 32) + 4 * *(*(*a1 + 32) + 4 * a2));
        v10 = *v8;
        v9 = v8 + 2;
        v11 = *(a1 + 32);
        v12 = (v11 + 12 * v10);
        v13 = *v12;
        v14 = v12[1];
        v15 = v12[2];
        if (*(a1 + 24))
        {
          v16 = -1.0;
        }

        else
        {
          v16 = 1.0;
        }

        v17 = v4 - 2;
        do
        {
          v18 = (v11 + 12 * *(v9 - 1));
          v19 = (v11 + 12 * *v9);
          v20 = *v18 - v13;
          v21 = v18[1] - v14;
          v22 = v18[2] - v15;
          v23 = *v19 - v13;
          v24 = v19[1] - v14;
          v25 = v19[2] - v15;
          v26 = v21 * v25;
          v27 = v20 * v25;
          v28 = (v20 * v24) - (v21 * v23);
          v29 = v16 * (v26 - (v22 * v24));
          v30 = v16 * ((v22 * v23) - v27);
          v31 = v16 * v28;
          v7 = v7 + v29;
          v6 = v6 + v30;
          v5 = v5 + v31;
          ++v9;
          --v17;
        }

        while (v17);
      }

      v32 = 1.0 / fmaxf(sqrtf((v5 * v5) + ((v6 * v6) + (v7 * v7))), 1.0e-10);
      v33 = v32 * v7;
      v34 = v32 * v6;
      v35 = v32 * v5;
      v36 = (*(a1 + 40) + 12 * a2);
      *v36 = v33;
      v36[1] = v34;
      v36[2] = v35;
      ++a2;
    }

    while (a2 != a3);
  }

  return result;
}

void sub_29AC2E88C(pxrInternal__aapl__pxrReserved__ *a1, uint64_t a2, uint64_t a3)
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
      sub_29AC2E9C8(v13, &v12, &v14, v15);
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

void sub_29AC2E9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  tbb::task_group_context::~task_group_context(va);
  _Unwind_Resume(a1);
}

void *sub_29AC2E9C8(void *result, void *a2, uint64_t a3, tbb::task_group_context *a4)
{
  if (result[1] < *result)
  {
    v5 = result;
    v9 = a4;
    v6 = tbb::internal::allocate_root_with_context_proxy::allocate(&v9, 0x38uLL);
    *(v6 - 11) = 1;
    *v6 = &unk_2A207BD88;
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

uint64_t sub_29AC2EAC8(uint64_t a1)
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

  sub_29AC2EB38(v2, a1, a1 + 8);
  return 0;
}

void sub_29AC2EB38(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_29AC2EBEC(a2);
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

  sub_29AC2ED04(a1, a2, a3);
}

uint64_t sub_29AC2EBEC(uint64_t a1)
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
  *v3 = &unk_2A207BD88;
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

void sub_29AC2ED04(uint64_t a1, uint64_t a2, __int128 *a3)
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
        sub_29AC2EF34(a2, (&v21 + 24 * v20[1]), v20[v20[1] + 3]);
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

uint64_t sub_29AC2EF34(uint64_t a1, __int128 *a2, char a3)
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
  *v7 = &unk_2A207BD88;
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

double sub_29AC2F054(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 < a3)
  {
    result = 1.0;
    do
    {
      v4 = *(*(*(a1 + 8) + 32) + 4 * a2);
      v5 = 0.0;
      v6 = 0.0;
      v7 = 0.0;
      if (v4 >= 3)
      {
        v8 = (*(*(a1 + 16) + 32) + 4 * *(*(*a1 + 32) + 4 * a2));
        v10 = *v8;
        v9 = v8 + 2;
        v11 = *(a1 + 32);
        v12 = (v11 + 24 * v10);
        v13 = *v12;
        v14 = v12[1];
        v15 = v12[2];
        if (*(a1 + 24))
        {
          v16 = -1.0;
        }

        else
        {
          v16 = 1.0;
        }

        v17 = v4 - 2;
        do
        {
          v18 = (v11 + 24 * *(v9 - 1));
          v19 = (v11 + 24 * *v9);
          v20 = *v18 - v13;
          v21 = v18[1] - v14;
          v22 = v18[2] - v15;
          v23 = *v19 - v13;
          v24 = v19[1] - v14;
          v25 = v19[2] - v15;
          v7 = v7 + (v21 * v25 - v22 * v24) * v16;
          v6 = v6 + (v22 * v23 - v20 * v25) * v16;
          v5 = v5 + (v20 * v24 - v21 * v23) * v16;
          ++v9;
          --v17;
        }

        while (v17);
      }

      v26 = 1.0 / fmax(sqrt(v5 * v5 + v6 * v6 + v7 * v7), 1.0e-10);
      v27 = (*(a1 + 40) + 24 * a2);
      *v27 = v7 * v26;
      v27[1] = v6 * v26;
      v27[2] = v5 * v26;
      ++a2;
    }

    while (a2 != a3);
  }

  return result;
}

void sub_29AC2F194(pxrInternal__aapl__pxrReserved__ *a1, uint64_t a2, uint64_t a3)
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
      sub_29AC2F2D0(v13, &v12, &v14, v15);
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

void sub_29AC2F2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  tbb::task_group_context::~task_group_context(va);
  _Unwind_Resume(a1);
}

void *sub_29AC2F2D0(void *result, void *a2, uint64_t a3, tbb::task_group_context *a4)
{
  if (result[1] < *result)
  {
    v5 = result;
    v9 = a4;
    v6 = tbb::internal::allocate_root_with_context_proxy::allocate(&v9, 0x38uLL);
    *(v6 - 11) = 1;
    *v6 = &unk_2A207BDD0;
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

uint64_t sub_29AC2F3D0(uint64_t a1)
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

  sub_29AC2F440(v2, a1, a1 + 8);
  return 0;
}

void sub_29AC2F440(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_29AC2F4F4(a2);
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

  sub_29AC2F60C(a1, a2, a3);
}

uint64_t sub_29AC2F4F4(uint64_t a1)
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
  *v3 = &unk_2A207BDD0;
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

void sub_29AC2F60C(uint64_t a1, uint64_t a2, __int128 *a3)
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
        sub_29AC2F83C(a2, (&v21 + 24 * v20[1]), v20[v20[1] + 3]);
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

uint64_t sub_29AC2F83C(uint64_t a1, __int128 *a2, char a3)
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
  *v7 = &unk_2A207BDD0;
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

uint64_t sub_29AC2F95C(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29A2131FC(a1);
  v6 = &v5;
  sub_29AC2FBC0(a1, a2, &v6);
  return a1;
}

void sub_29AC2F9CC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 < a3)
  {
    v40 = v8;
    v41 = v7;
    v42 = v6;
    v43 = v5;
    v44 = v3;
    v45 = v4;
    v10 = a2;
    do
    {
      v39 = 0.0;
      v38 = 0;
      v12 = *(*(*(a1 + 8) + 32) + 4 * v10);
      if (v12 < 3)
      {
        v20 = 0;
        v21 = 0.0;
      }

      else
      {
        v13 = *(*(*a1 + 32) + 4 * v10);
        v14 = *(a1 + 32);
        v15 = *(*(a1 + 16) + 32);
        v16 = (v14 + 12 * *(v15 + 4 * v13));
        if (*(a1 + 24))
        {
          v17 = -1.0;
        }

        else
        {
          v17 = 1.0;
        }

        v18 = (v15 + 4 * v13 + 8);
        v19 = v12 - 2;
        v20 = 0;
        v21 = 0.0;
        do
        {
          v22 = (v14 + 12 * *(v18 - 1));
          v23 = v14 + 12 * *v18;
          v24 = vsub_f32(*v22, *v16);
          v25 = vsub_f32(*(v23 + 4), *(v16 + 4));
          v26 = vrev64_s32(v24);
          v27 = vdup_lane_s32(v25, 0);
          v28.i32[1] = v26.i32[1];
          v29 = vmul_f32(v24, v25);
          v25.f32[0] = *v23 - COERCE_FLOAT(*v16);
          v28.f32[0] = v22[1].f32[0] - *(v16 + 2);
          v30 = vmul_f32(v28, v25);
          v26.f32[1] = v28.f32[0];
          v27.f32[0] = *v23 - COERCE_FLOAT(*v16);
          v20 = vadd_f32(v20, vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vsub_f32(v29, vmul_f32(v26, v27))), v17)));
          LODWORD(v38) = v20.i32[1];
          v31 = v17 * vsub_f32(v30, vdup_lane_s32(v30, 1)).f32[0];
          v21 = v21 + v31;
          *(&v38 + 1) = v21;
          v39 = v20.f32[0];
          ++v18;
          --v19;
        }

        while (v19);
      }

      v32 = vmul_f32(v20, v20);
      v33 = 1.0 / fmaxf(sqrtf((v32.f32[1] + (v21 * v21)) + v32.f32[0]), 1.0e-10);
      *&v34 = v33 * v20.f32[1];
      *&v35 = v33 * v21;
      v38 = __PAIR64__(v35, v34);
      v36 = v33 * v20.f32[0];
      v39 = v36;
      sub_29AC307CC(&v37, &v38);
      *(*(a1 + 40) + 4 * v10++) = v37;
    }

    while (v10 != a3);
  }
}

void sub_29AC2FBC0(unint64_t *a1, unint64_t a2, int **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 >= a2)
          {
            v13 = a1[4];
          }

          else
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_29AC2FF2C(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  *(v10 + v11) = *(v9 + v11);
                  v11 += 4;
                }

                while (4 * v3 != v11);
              }
            }

            v12 = 0;
            v13 = v7;
            v14 = **a3;
            v15 = (4 * a2 - 4 * v3 - 4) >> 2;
            v16 = vdupq_n_s64(v15);
            v17 = (v15 + 4) & 0x7FFFFFFFFFFFFFFCLL;
            v18 = v7 + v3 + 2;
            do
            {
              v19 = vdupq_n_s64(v12);
              v20 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_29B430070)));
              if (vuzp1_s16(v20, *v16.i8).u8[0])
              {
                *(v18 - 2) = v14;
              }

              if (vuzp1_s16(v20, *&v16).i8[2])
              {
                *(v18 - 1) = v14;
              }

              if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_29B433E10)))).i32[1])
              {
                *v18 = v14;
                v18[1] = v14;
              }

              v12 += 4;
              v18 += 4;
            }

            while (v17 != v12);
          }

LABEL_51:
          if (v13 != a1[4])
          {
            sub_29A213190(a1);
            a1[4] = v13;
          }

          *a1 = a2;
          return;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v29 = a2;
      }

      else
      {
        v29 = *a1;
      }

      v30 = sub_29AC2FF2C(a1, a2);
      v13 = v30;
      if (v3)
      {
        v31 = 4 * v29;
        v32 = v30;
        do
        {
          v33 = *v7;
          v7 = (v7 + 4);
          *v32 = v33;
          v32 = (v32 + 4);
          v31 -= 4;
        }

        while (v31);
      }

      if (v3 < a2)
      {
        v34 = 0;
        v35 = **a3;
        v36 = (4 * a2 - 4 * v3 - 4) >> 2;
        v37 = vdupq_n_s64(v36);
        v38 = (v36 + 4) & 0x7FFFFFFFFFFFFFFCLL;
        v39 = v30 + v3 + 2;
        do
        {
          v40 = vdupq_n_s64(v34);
          v41 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_29B430070)));
          if (vuzp1_s16(v41, 2).u8[0])
          {
            *(v39 - 2) = v35;
          }

          if (vuzp1_s16(v41, 2).i8[2])
          {
            *(v39 - 1) = v35;
          }

          if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_29B433E10)))).i32[1])
          {
            *v39 = v35;
            v39[1] = v35;
          }

          v34 += 4;
          v39 += 4;
        }

        while (v38 != v34);
      }

      goto LABEL_51;
    }

    if (4 * a2 / a2 == 4)
    {
      v13 = sub_29AC2FF2C(a1, a2);
      v21 = 0;
      v22 = **a3;
      v23 = (4 * a2 - 4) >> 2;
      v24 = vdupq_n_s64(v23);
      v25 = (v23 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v26 = v13 + 1;
      do
      {
        v27 = vdupq_n_s64(v21);
        v28 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_29B430070)));
        if (vuzp1_s16(v28, *v24.i8).u8[0])
        {
          *(v26 - 2) = v22;
        }

        if (vuzp1_s16(v28, *&v24).i8[2])
        {
          *(v26 - 1) = v22;
        }

        if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_29B433E10)))).i32[1])
        {
          *v26 = v22;
          v26[1] = v22;
        }

        v21 += 4;
        v26 += 4;
      }

      while (v25 != v21);
      goto LABEL_51;
    }
  }

  sub_29A2131FC(a1);
}

void *sub_29AC2FF2C(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::HdVec4f_2_10_10_10_REV>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::HdVec4f_2_10_10_10_REV]");
  if (a2 > 0x1FFFFFFFFFFFFFFBLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 4 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 + 2;
}

void sub_29AC2FFC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B2C5F18();
    }
  }
}

void sub_29AC30004(pxrInternal__aapl__pxrReserved__ *a1, uint64_t a2, uint64_t a3)
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
      sub_29AC30140(v13, &v12, &v14, v15);
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

void sub_29AC30124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  tbb::task_group_context::~task_group_context(va);
  _Unwind_Resume(a1);
}

void *sub_29AC30140(void *result, void *a2, uint64_t a3, tbb::task_group_context *a4)
{
  if (result[1] < *result)
  {
    v5 = result;
    v9 = a4;
    v6 = tbb::internal::allocate_root_with_context_proxy::allocate(&v9, 0x38uLL);
    *(v6 - 11) = 1;
    *v6 = &unk_2A207BE18;
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

uint64_t sub_29AC30240(uint64_t a1)
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

  sub_29AC302B0(v2, a1, a1 + 8);
  return 0;
}

void sub_29AC302B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_29AC30364(a2);
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

  sub_29AC3047C(a1, a2, a3);
}

uint64_t sub_29AC30364(uint64_t a1)
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
  *v3 = &unk_2A207BE18;
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

void sub_29AC3047C(uint64_t a1, uint64_t a2, __int128 *a3)
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
        sub_29AC306AC(a2, (&v21 + 24 * v20[1]), v20[v20[1] + 3]);
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

uint64_t sub_29AC306AC(uint64_t a1, __int128 *a2, char a3)
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
  *v7 = &unk_2A207BE18;
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

float sub_29AC307CC(unsigned int *a1, float *a2)
{
  v2 = *a2;
  if (*a2 < -1.0)
  {
    v2 = -1.0;
  }

  if (v2 > 1.0)
  {
    v2 = 1.0;
  }

  v3 = llroundf(v2 * 511.0) & 0x3FF;
  v4 = *a1 & 0xFFFFFC00 | v3;
  *a1 = v4;
  v5 = a2[1];
  if (v5 < -1.0)
  {
    v5 = -1.0;
  }

  if (v5 > 1.0)
  {
    v5 = 1.0;
  }

  v6 = llroundf(v5 * 511.0);
  *a1 = v4 & 0xFFF003FF | ((v6 & 0x3FF) << 10);
  v7 = a2[2];
  if (v7 < -1.0)
  {
    v7 = -1.0;
  }

  if (v7 > 1.0)
  {
    v7 = 1.0;
  }

  result = v7 * 511.0;
  *a1 = v3 & 0xC00003FF | ((llroundf(result) & 0x3FF) << 20) | ((v6 & 0x3FF) << 10);
  return result;
}

void sub_29AC30858(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 < a3)
  {
    v38 = v8;
    v39 = v7;
    v40 = v6;
    v41 = v5;
    v42 = v3;
    v43 = v4;
    v10 = a2;
    do
    {
      v35 = 0.0;
      v36 = 0.0;
      v37 = 0.0;
      v12 = *(*(*(a1 + 8) + 32) + 4 * v10);
      v13 = 0.0;
      v14 = 0.0;
      v15 = 0.0;
      if (v12 >= 3)
      {
        v16 = *(*(*a1 + 32) + 4 * v10);
        v17 = *(a1 + 32);
        v18 = *(*(a1 + 16) + 32);
        v19 = (v17 + 24 * *(v18 + 4 * v16));
        if (*(a1 + 24))
        {
          v20 = -1.0;
        }

        else
        {
          v20 = 1.0;
        }

        v21 = (v18 + 4 * v16 + 8);
        v22 = v12 - 2;
        do
        {
          v23 = (v17 + 24 * *(v21 - 1));
          v24 = (v17 + 24 * *v21);
          v25 = v19[1];
          v26 = *v23 - *v19;
          v27 = v23[1] - v25;
          v28 = v19[2];
          v29 = v23[2] - v28;
          v30 = *v24 - *v19;
          v31 = v24[1] - v25;
          v32 = v24[2] - v28;
          v15 = v15 + (v27 * v32 - v29 * v31) * v20;
          v14 = (v29 * v30 - v26 * v32) * v20 + v14;
          v35 = v15;
          v36 = v14;
          v13 = (v26 * v31 - v27 * v30) * v20 + v13;
          v37 = v13;
          ++v21;
          --v22;
        }

        while (v22);
      }

      v33 = 1.0 / fmax(sqrt(v15 * v15 + v14 * v14 + v13 * v13), 1.0e-10);
      v35 = v15 * v33;
      v36 = v14 * v33;
      v37 = v13 * v33;
      sub_29AC311CC(&v34, &v35);
      *(*(a1 + 40) + 4 * v10++) = v34;
    }

    while (v10 != a3);
  }
}

void sub_29AC30A04(pxrInternal__aapl__pxrReserved__ *a1, uint64_t a2, uint64_t a3)
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
      sub_29AC30B40(v13, &v12, &v14, v15);
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

void sub_29AC30B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  tbb::task_group_context::~task_group_context(va);
  _Unwind_Resume(a1);
}

void *sub_29AC30B40(void *result, void *a2, uint64_t a3, tbb::task_group_context *a4)
{
  if (result[1] < *result)
  {
    v5 = result;
    v9 = a4;
    v6 = tbb::internal::allocate_root_with_context_proxy::allocate(&v9, 0x38uLL);
    *(v6 - 11) = 1;
    *v6 = &unk_2A207BE60;
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

uint64_t sub_29AC30C40(uint64_t a1)
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

  sub_29AC30CB0(v2, a1, a1 + 8);
  return 0;
}

void sub_29AC30CB0(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_29AC30D64(a2);
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

  sub_29AC30E7C(a1, a2, a3);
}

uint64_t sub_29AC30D64(uint64_t a1)
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
  *v3 = &unk_2A207BE60;
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

void sub_29AC30E7C(uint64_t a1, uint64_t a2, __int128 *a3)
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
        sub_29AC310AC(a2, (&v21 + 24 * v20[1]), v20[v20[1] + 3]);
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

uint64_t sub_29AC310AC(uint64_t a1, __int128 *a2, char a3)
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
  *v7 = &unk_2A207BE60;
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

float sub_29AC311CC(unsigned int *a1, double *a2)
{
  v2 = *a2;
  if (v2 < -1.0)
  {
    v2 = -1.0;
  }

  if (v2 > 1.0)
  {
    v2 = 1.0;
  }

  v3 = llroundf(v2 * 511.0) & 0x3FF;
  v4 = *a1 & 0xFFFFFC00 | v3;
  *a1 = v4;
  v5 = a2[1];
  if (v5 < -1.0)
  {
    v5 = -1.0;
  }

  if (v5 > 1.0)
  {
    v5 = 1.0;
  }

  v6 = llroundf(v5 * 511.0);
  *a1 = v4 & 0xFFF003FF | ((v6 & 0x3FF) << 10);
  v7 = a2[2];
  if (v7 < -1.0)
  {
    v7 = -1.0;
  }

  if (v7 > 1.0)
  {
    v7 = 1.0;
  }

  result = v7 * 511.0;
  *a1 = v3 & 0xC00003FF | ((llroundf(result) & 0x3FF) << 20) | ((v6 & 0x3FF) << 10);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4) && *(a1 + 12) == *(a2 + 12))
  {
    return pxrInternal__aapl__pxrReserved__::UsdSkelTopology::operator==(a1 + 24, a2 + 24);
  }

  else
  {
    return 0;
  }
}

{
  if (*a1 != *a2 || (*(a2 + 8) ^ *(a1 + 8)) > 7)
  {
    return 0;
  }

  v4 = *(a1 + 39);
  if (v4 >= 0)
  {
    v5 = *(a1 + 39);
  }

  else
  {
    v5 = *(a1 + 24);
  }

  v6 = *(a2 + 39);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 24);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v8 = v4 >= 0 ? (a1 + 16) : *(a1 + 16);
  v9 = v7 >= 0 ? (a2 + 16) : *(a2 + 16);
  if (memcmp(v8, v9, v5) || (*(a2 + 40) ^ *(a1 + 40)) > 7)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::operator==((a1 + 48), (a2 + 48), v10);
}

{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || *(a1 + 24) != *(a2 + 24) || *(a1 + 28) != *(a2 + 28) || *(a1 + 32) != *(a2 + 32) || *(a1 + 36) != *(a2 + 36) || *(a1 + 40) != *(a2 + 40) || *(a1 + 44) != *(a2 + 44) || *(a1 + 48) != *(a2 + 48) || *(a1 + 52) != *(a2 + 52) || *(a1 + 53) != *(a2 + 53) || *(a1 + 56) != *(a2 + 56) || *(a1 + 60) != *(a2 + 60) || *(a1 + 61) != *(a2 + 61) || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  if (*(a1 + 68) != *(a2 + 68) || *(a1 + 72) != *(a2 + 72) || *(a1 + 76) != *(a2 + 76) || *(a1 + 80) != *(a2 + 80) || *(a1 + 84) != *(a2 + 84) || *(a1 + 88) != *(a2 + 88) || *(a1 + 92) != *(a2 + 92) || *(a1 + 96) != *(a2 + 96))
  {
    return 0;
  }

  result = sub_29AEC1C20(a1 + 104, a2 + 104);
  if (!result)
  {
    return result;
  }

  result = sub_29AEC1C20(a1 + 128, a2 + 128);
  if (!result)
  {
    return result;
  }

  if (*(a1 + 152) != *(a2 + 152) || *(a1 + 153) != *(a2 + 153) || *(a1 + 156) != *(a2 + 156) || *(a1 + 160) != *(a2 + 160) || *(a1 + 164) != *(a2 + 164) || *(a1 + 168) != *(a2 + 168) || *(a1 + 172) != *(a2 + 172) || *(a1 + 176) != *(a2 + 176) || *(a1 + 180) != *(a2 + 180) || *(a1 + 184) != *(a2 + 184) || *(a1 + 188) != *(a2 + 188) || *(a1 + 192) != *(a2 + 192) || *(a1 + 196) != *(a2 + 196) || *(a1 + 200) != *(a2 + 200) || *(a1 + 204) != *(a2 + 204) || *(a1 + 208) != *(a2 + 208) || *(a1 + 212) != *(a2 + 212) || *(a1 + 216) != *(a2 + 216) || *(a1 + 220) != *(a2 + 220) || *(a1 + 224) != *(a2 + 224) || *(a1 + 228) != *(a2 + 228) || *(a1 + 232) != *(a2 + 232) || *(a1 + 236) != *(a2 + 236) || *(a1 + 240) != *(a2 + 240) || *(a1 + 241) != *(a2 + 241) || *(a1 + 242) != *(a2 + 242) || *(a1 + 243) != *(a2 + 243) || *(a1 + 244) != *(a2 + 244))
  {
    return 0;
  }

  result = pxrInternal__aapl__pxrReserved__::CameraUtilFraming::operator==(a1 + 252, a2 + 252);
  if (!result)
  {
    return result;
  }

  if (*(a1 + 288) != *(a2 + 288) || *(a1 + 296) != *(a2 + 296) || *(a1 + 304) != *(a2 + 304) || *(a1 + 312) != *(a2 + 312) || *(a1 + 320) != *(a2 + 320))
  {
    return 0;
  }

  v3 = *(a2 + 328);
  v4 = *(a1 + 328);
  result = v4 == v3;
  if (v4 == v3)
  {
    if (*(a1 + 328))
    {
      return *(a1 + 324) == *(a2 + 324);
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens_StaticTokenType::~HdGeomSubsetSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens_StaticTokenType *this)
{
  v7 = (this + 48);
  sub_29A124AB0(&v7);
  v2 = *(this + 5);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 4);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 3);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 2);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 1);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens_StaticTokenType::HdGeomSubsetSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens_StaticTokenType *this)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "geomSubset", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "type", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "indices", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "typeFaceSet", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "typePointSet", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "typeCurveSet", 0);
  v3 = (this + 48);
  v4 = *this;
  v19 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v5;
    }
  }

  v6 = *(this + 1);
  v20 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v7;
    }
  }

  v8 = *(this + 2);
  v21 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v9;
    }
  }

  v10 = *(this + 3);
  v22 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v11;
    }
  }

  v12 = *(this + 4);
  v23 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v13;
    }
  }

  v14 = *(this + 5);
  v24 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v15;
    }
  }

  *v3 = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  sub_29A12EF7C(v3, &v19, &v25, 6uLL);
  for (i = 40; i != -8; i -= 8)
  {
    v17 = *(&v19 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AC31564(_Unwind_Exception *a1)
{
  v3 = 40;
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
      v5 = v1[5];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[4];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[3];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[2];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[1];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchema::GetType(pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC31EA0(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchema::GetIndices(pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC31EA0(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
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

  sub_29ABC4A68(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
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
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
    if (!v8)
    {
      v8 = sub_29AC31EA0(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
    }

    v5 = &v23;
    v6 = v25;
    sub_29A166F2C(&v24, v8 + 1);
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
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
    if (!v13)
    {
      v13 = sub_29AC31EA0(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
    }

    sub_29A166F2C(v6, v13 + 2);
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

void sub_29AC3194C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
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

void *pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchema::Builder::SetType(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchema::Builder::SetIndices(uint64_t a1, uint64_t *a2)
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

void pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens))
    {
      sub_29AC31EA0(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
  if (!result)
  {
    return sub_29AC31EA0(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1749B98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749B98))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AC31EA0(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1749B60, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1749B60, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1749B98);
  }

  return &unk_2A1749B60;
}

double pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchema::BuildTypeDataSource@<D0>(pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchema *this@<X0>, uint64_t a2@<X8>)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
  if (!v5)
  {
    v5 = sub_29AC31EA0(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
  }

  if ((*(v5 + 3) ^ *this) > 7)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
    if (!v7)
    {
      v7 = sub_29AC31EA0(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
    }

    if ((*(v7 + 4) ^ *this) > 7)
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
      if (!v8)
      {
        v8 = sub_29AC31EA0(&pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens);
      }

      if ((*(v8 + 5) ^ *this) > 7)
      {
        sub_29ABCCFA4(this, &v12);
        result = *&v12;
        *a2 = v12;
        return result;
      }

      if ((atomic_load_explicit(&qword_2A1749BE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749BE0))
      {
        sub_29ABCCFA4(this, &qword_2A1749BD0);
        __cxa_atexit(sub_29ABCD02C, &qword_2A1749BD0, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1749BE0);
      }

      v6 = &qword_2A1749BD0;
    }

    else
    {
      if ((atomic_load_explicit(&qword_2A1749BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749BC8))
      {
        sub_29ABCCFA4(this, &qword_2A1749BB8);
        __cxa_atexit(sub_29ABCD02C, &qword_2A1749BB8, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1749BC8);
      }

      v6 = &qword_2A1749BB8;
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A1749BB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749BB0))
    {
      sub_29ABCCFA4(this, &qword_2A1749BA0);
      __cxa_atexit(sub_29ABCD02C, &qword_2A1749BA0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1749BB0);
    }

    v6 = &qword_2A1749BA0;
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

pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens_StaticTokenType *sub_29AC31EA0(atomic_ullong *a1)
{
  result = sub_29AC31EE8();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens_StaticTokenType::~HdGeomSubsetSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens_StaticTokenType *sub_29AC31EE8()
{
  v0 = operator new(0x48uLL);
  pxrInternal__aapl__pxrReserved__::HdGeomSubsetSchemaTokens_StaticTokenType::HdGeomSubsetSchemaTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::HdImageShaderTokens_StaticTokenType::~HdImageShaderTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdImageShaderTokens_StaticTokenType *this)
{
  v6 = (this + 40);
  sub_29A124AB0(&v6);
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 3);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 2);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 1);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdImageShaderTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdImageShaderTokens_StaticTokenType::HdImageShaderTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdImageShaderTokens_StaticTokenType *this)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "enabled", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "priority", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "filePath", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "constants", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "materialNetwork", 0);
  v3 = (this + 40);
  v4 = *this;
  v17 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v5;
    }
  }

  v6 = *(this + 1);
  v18 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v7;
    }
  }

  v8 = *(this + 2);
  v19 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v9;
    }
  }

  v10 = *(this + 3);
  v20 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v11;
    }
  }

  v12 = *(this + 4);
  v21 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v13;
    }
  }

  *v3 = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  sub_29A12EF7C(v3, &v17, &v22, 5uLL);
  for (i = 32; i != -8; i -= 8)
  {
    v15 = *(&v17 + i);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AC32198(_Unwind_Exception *a1)
{
  v3 = 32;
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
      v5 = v1[4];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

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

      _Unwind_Resume(a1);
    }
  }
}

double pxrInternal__aapl__pxrReserved__::HdImageShader::HdImageShader(pxrInternal__aapl__pxrReserved__::HdImageShader *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = pxrInternal__aapl__pxrReserved__::HdSprim::HdSprim(this, a2);
  *v2 = &unk_2A207BEA8;
  *(v2 + 16) = 0;
  *(v2 + 8) = 0;
  result = 0.0;
  *(v2 + 20) = 0u;
  *(v2 + 36) = 0u;
  *(v2 + 13) = 0;
  *(v2 + 7) = v2 + 64;
  *(v2 + 12) = 0;
  *(v2 + 11) = 0;
  *(v2 + 9) = 0;
  *(v2 + 10) = v2 + 88;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 17) = 0;
  return result;
}

{
  v2 = pxrInternal__aapl__pxrReserved__::HdSprim::HdSprim(this, a2);
  *v2 = &unk_2A207BEA8;
  *(v2 + 16) = 0;
  *(v2 + 8) = 0;
  result = 0.0;
  *(v2 + 20) = 0u;
  *(v2 + 36) = 0u;
  *(v2 + 13) = 0;
  *(v2 + 7) = v2 + 64;
  *(v2 + 12) = 0;
  *(v2 + 11) = 0;
  *(v2 + 9) = 0;
  *(v2 + 10) = v2 + 88;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 17) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdImageShader::~HdImageShader(pxrInternal__aapl__pxrReserved__::HdImageShader *this)
{
  *this = &unk_2A207BEA8;
  v2 = *(this + 17);
  *(this + 17) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_29A184A10(this + 16, 0);
  v3 = (this + 104);
  sub_29A124AB0(&v3);
  sub_29AC329F8(this + 80, *(this + 11));
  sub_29AC32AB8(this + 56, *(this + 8));
  sub_29A184A10(this + 6, 0);
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  pxrInternal__aapl__pxrReserved__::HdSprim::~HdSprim(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdImageShader::~HdImageShader(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdImageShader::Sync(pxrInternal__aapl__pxrReserved__::HdImageShader *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, unsigned int *a4)
{
  v39[2] = *MEMORY[0x29EDCA608];
  result = sub_29A0ECEEC(&v27, "hd", "virtual void pxrInternal__aapl__pxrReserved__::HdImageShader::Sync(HdSceneDelegate *, HdRenderParam *, HdDirtyBits *)");
  if (a2 || (v30 = "hd/imageShader.cpp", v31 = "Sync", v32 = 38, v33 = "virtual void pxrInternal__aapl__pxrReserved__::HdImageShader::Sync(HdSceneDelegate *, HdRenderParam *, HdDirtyBits *)", LOBYTE(v34) = 0, result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v30, "sceneDelegate != nullptr", 0), (result & 1) != 0))
  {
    v8 = *a4;
    if (*a4)
    {
      if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderTokens))
      {
        sub_29AC32B84(&pxrInternal__aapl__pxrReserved__::HdImageShaderTokens);
      }

      (*(*a2 + 120))(&v30, a2, this + 8);
      if (v31)
      {
        *(this + 16) = *sub_29A1EFD10(&v30);
      }

      result = sub_29A186B14(&v30);
    }

    if ((v8 & 2) != 0)
    {
      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderTokens);
      if (!v10)
      {
        v10 = sub_29AC32B84(&pxrInternal__aapl__pxrReserved__::HdImageShaderTokens);
      }

      (*(*a2 + 120))(&v30, a2, this + 8, v10 + 8);
      if (v31)
      {
        *(this + 5) = *sub_29A346A20(&v30);
      }

      result = sub_29A186B14(&v30);
    }

    if ((v8 & 4) != 0)
    {
      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderTokens);
      if (!v11)
      {
        v11 = sub_29AC32B84(&pxrInternal__aapl__pxrReserved__::HdImageShaderTokens);
      }

      (*(*a2 + 120))(&v30, a2, this + 8, v11 + 16);
      if (v31)
      {
        v12 = sub_29A1EFC48(&v30);
        std::string::operator=(this + 1, v12);
      }

      result = sub_29A186B14(&v30);
    }

    if ((v8 & 8) != 0)
    {
      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderTokens);
      if (!v13)
      {
        v13 = sub_29AC32B84(&pxrInternal__aapl__pxrReserved__::HdImageShaderTokens);
      }

      (*(*a2 + 120))(&v30, a2, this + 8, v13 + 24);
      if (v31)
      {
        v14 = sub_29A187B1C(&v30);
        pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(this + 6, v14);
      }

      result = sub_29A186B14(&v30);
    }

    if ((v8 & 0x10) != 0)
    {
      v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderTokens);
      if (!v15)
      {
        v15 = sub_29AC32B84(&pxrInternal__aapl__pxrReserved__::HdImageShaderTokens);
      }

      (*(*a2 + 120))(v39, a2, this + 8, v15 + 32);
      if (v39[1])
      {
        v16 = sub_29AC32934(v39);
        pxrInternal__aapl__pxrReserved__::HdConvertToHdMaterialNetwork2(v16, 0, &v30);
        v17 = this + 64;
        v18 = (this + 56);
        sub_29AC32AB8(this + 56, *(this + 8));
        v19 = v31;
        *(this + 7) = v30;
        *(this + 8) = v19;
        v20 = v32;
        *(this + 9) = v32;
        if (v20)
        {
          *(v19 + 2) = v17;
          v30 = &v31;
          v31 = 0;
          v32 = 0;
        }

        else
        {
          *v18 = v17;
        }

        v21 = this + 88;
        sub_29AC329F8(this + 80, *(this + 11));
        v22 = v34;
        *(this + 10) = v33;
        *(this + 11) = v22;
        v23 = v35;
        *(this + 12) = v35;
        if (v23)
        {
          v22[2] = v21;
          v33 = &v34;
          v34 = 0;
          v35 = 0;
        }

        else
        {
          *(this + 10) = v21;
        }

        sub_29A2F7B20(this + 13);
        *(this + 104) = v36;
        v24 = v38;
        *(this + 15) = v37;
        v37 = 0;
        v38 = 0;
        v36 = 0uLL;
        sub_29A184A10(this + 16, v24);
        sub_29A184A10(&v38, 0);
        v29 = &v36;
        sub_29A124AB0(&v29);
        sub_29AC329F8(&v33, v34);
        sub_29AC32AB8(&v30, v31);
        v25 = operator new(0x28uLL);
        *v25 = &unk_2A207C550;
        sub_29A1E21F4(v25 + 2, this + 2);
        sub_29A1E2240(v25 + 3, this + 3);
        *(v25 + 3) = 0;
        *(v25 + 4) = 0;
        *(v25 + 2) = v18;
        v26 = *(this + 17);
        *(this + 17) = v25;
        if (v26)
        {
          (*(*v26 + 8))(v26);
        }
      }

      result = sub_29A186B14(v39);
    }

    *a4 = 0;
  }

  if (v27)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v28, v27);
  }

  return result;
}

void sub_29AC3291C(void *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  JUMPOUT(0x29AC32914);
}

void **sub_29AC32934(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29ABE87F8(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29AC32C10, &stru_2A2076D00);
  }
}

void sub_29AC329F8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AC329F8(a1, *a2);
    sub_29AC329F8(a1, a2[1]);
    sub_29AC32A54((a2 + 4));

    operator delete(a2);
  }
}

_DWORD *sub_29AC32A54(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  result = sub_29A1DE3A4((a1 + 8));
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29AC32AB8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AC32AB8(a1, *a2);
    sub_29AC32AB8(a1, a2[1]);
    sub_29AC32B14((a2 + 4));

    operator delete(a2);
  }
}

_DWORD *sub_29AC32B14(uint64_t a1)
{
  sub_29ABF3348(a1 + 40, *(a1 + 48));
  sub_29A5B0668(a1 + 16, *(a1 + 24));
  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

pxrInternal__aapl__pxrReserved__::HdImageShaderTokens_StaticTokenType *sub_29AC32B84(atomic_ullong *a1)
{
  result = sub_29AC32BCC();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdImageShaderTokens_StaticTokenType::~HdImageShaderTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdImageShaderTokens_StaticTokenType *sub_29AC32BCC()
{
  v0 = operator new(0x40uLL);
  pxrInternal__aapl__pxrReserved__::HdImageShaderTokens_StaticTokenType::HdImageShaderTokens_StaticTokenType(v0);
  return v0;
}

double sub_29AC32C10@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *v2 = v2 + 8;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  *a1 = v2;
  a1[1] = sub_29AC32C6C;
  a1[2] = &stru_2A2076D00;
  return result;
}

void sub_29AC32C6C(uint64_t a1)
{
  if (a1)
  {
    sub_29A184A10((a1 + 48), 0);
    v2 = (a1 + 24);
    sub_29A1E234C(&v2);
    sub_29ABED2CC(a1, *(a1 + 8));
    operator delete(a1);
  }
}

void pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens_StaticTokenType::~HdImageShaderSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens_StaticTokenType *this)
{
  v7 = (this + 48);
  sub_29A124AB0(&v7);
  v2 = *(this + 5);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 4);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 3);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 2);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 1);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens_StaticTokenType::HdImageShaderSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens_StaticTokenType *this)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "imageShader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "enabled", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "priority", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "filePath", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "constants", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "materialNetwork", 0);
  v3 = (this + 48);
  v4 = *this;
  v19 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v5;
    }
  }

  v6 = *(this + 1);
  v20 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v7;
    }
  }

  v8 = *(this + 2);
  v21 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v9;
    }
  }

  v10 = *(this + 3);
  v22 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v11;
    }
  }

  v12 = *(this + 4);
  v23 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v13;
    }
  }

  v14 = *(this + 5);
  v24 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v15;
    }
  }

  *v3 = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  sub_29A12EF7C(v3, &v19, &v25, 6uLL);
  for (i = 40; i != -8; i -= 8)
  {
    v17 = *(&v19 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AC32F88(_Unwind_Exception *a1)
{
  v3 = 40;
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
      v5 = v1[5];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[4];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[3];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[2];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[1];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetEnabled(pxrInternal__aapl__pxrReserved__::HdImageShaderSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
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

  sub_29ABCB628(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetPriority(pxrInternal__aapl__pxrReserved__::HdImageShaderSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
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

  sub_29AC331C4(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC331C4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29AC33FB8(&v4, a2);
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

void pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetFilePath(pxrInternal__aapl__pxrReserved__::HdImageShaderSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
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

  sub_29AC22098(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetConstants(pxrInternal__aapl__pxrReserved__::HdImageShaderSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
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

  sub_29ABC2F3C(this, &v8);
  sub_29ABCD3B8(a2, &v8);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC333A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetMaterialNetwork(pxrInternal__aapl__pxrReserved__::HdImageShaderSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
  }

  v5 = *(v4 + 5);
  v10 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v10 = v6;
    }
  }

  sub_29ABC2F3C(this, &v11);
  v8 = v11;
  v7 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v7);
    v9 = v12;
    *a2 = v8;
    a2[1] = v7;
    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    *a2 = v11;
    a2[1] = 0;
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, _OWORD *a6@<X8>)
{
  v50 = *MEMORY[0x29EDCA608];
  v11 = &v46;
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  memset(v47, 0, sizeof(v47));
  v46 = 0u;
  v12 = v48;
  if (*a1)
  {
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
    if (!v14)
    {
      v14 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
    }

    v11 = v47;
    v12 = v48 + 1;
    sub_29A166F2C(v48, v14 + 1);
    v16 = *a1;
    v15 = a1[1];
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    v17 = *(&v46 + 1);
    *&v46 = v16;
    *(&v46 + 1) = v15;
    if (v17)
    {
      sub_29A014BEC(v17);
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  if (*a2)
  {
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
    if (!v19)
    {
      v19 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
    }

    sub_29A166F2C(v12, v19 + 2);
    ++v18;
    v21 = *a2;
    v20 = a2[1];
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    v22 = *(v11 + 1);
    *v11 = v21;
    *(v11 + 1) = v20;
    if (v22)
    {
      sub_29A014BEC(v22);
    }
  }

  if (*a3)
  {
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
    if (!v23)
    {
      v23 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
    }

    sub_29A166F2C(v48 + v18, v23 + 3);
    v24 = v18 + 1;
    v25 = &v47[v18 - 1];
    v27 = *a3;
    v26 = a3[1];
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }

    v28 = v25[1];
    *v25 = v27;
    v25[1] = v26;
    if (v28)
    {
      sub_29A014BEC(v28);
    }
  }

  else
  {
    v24 = v18;
  }

  if (*a4)
  {
    v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
    if (!v29)
    {
      v29 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
    }

    sub_29A166F2C(v48 + v24, v29 + 4);
    v30 = v24 + 1;
    v31 = &v47[v24 - 1];
    v33 = *a4;
    v32 = a4[1];
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

  if (*a5)
  {
    v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
    if (!v35)
    {
      v35 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
    }

    sub_29A166F2C(v48 + v30, v35 + 5);
    v36 = v30 + 1;
    v37 = &v47[v30 - 1];
    v39 = *a5;
    v38 = a5[1];
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

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v36, v48, &v46, &v45);
  *a6 = v45;
  for (i = 72; i != -8; i -= 16)
  {
    v42 = *(&v47[-1] + i);
    if (v42)
    {
      sub_29A014BEC(v42);
    }
  }

  for (j = 32; j != -8; j -= 8)
  {
    v44 = *(v48 + j);
    if ((v44 & 7) != 0)
    {
      atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AC337E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v22 = 72;
  while (1)
  {
    v23 = *(&a11 + v22);
    if (v23)
    {
      sub_29A014BEC(v23);
    }

    v22 -= 16;
    if (v22 == -8)
    {
      v24 = 32;
      while (1)
      {
        v25 = *(&a21 + v24);
        if ((v25 & 7) != 0)
        {
          atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v24 -= 8;
        if (v24 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::Builder::SetEnabled(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::Builder::SetPriority(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::Builder::SetFilePath(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::Builder::SetConstants(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::Builder::SetMaterialNetwork(uint64_t a1, uint64_t *a2)
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

void pxrInternal__aapl__pxrReserved__::HdImageShaderSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens))
    {
      sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
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