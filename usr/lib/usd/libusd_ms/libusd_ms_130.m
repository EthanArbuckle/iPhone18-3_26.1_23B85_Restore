void sub_29ABFCB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29ABFCB84(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABFCBAC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABFCBDC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2079008))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ABFCC1C@<X0>(_DWORD *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x20uLL);
  sub_29ABFD138(v8, a1, a2, *a3);

  return sub_29ABFD24C(a4, v8);
}

void sub_29ABFCCA0(uint64_t a1)
{
  *a1 = &unk_2A2079030;
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ABFCD1C(uint64_t a1)
{
  *a1 = &unk_2A2079030;
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

uint64_t sub_29ABFCD9C@<X0>(void **a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  if (a3 == 0.0)
  {
    v4 = *(*a1[3] + 328);
    v5 = a1 + 1;
    v6 = a1 + 2;
    v7 = a1[3];

    return v4(v7, v5, v6);
  }

  else
  {
    result = ((*a1)[4])(a1);
    *(a2 + 8) = &unk_2A204475B;
    *a2 = result;
  }

  return result;
}

uint64_t sub_29ABFCE54(uint64_t a1, uint64_t a2, float a3, float a4)
{
  sub_29ABFC664((a1 + 16), (a1 + 8), (a1 + 24), &v9);
  v7 = (*(*v9 + 24))(v9, a2, a3, a4);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  return v7;
}

void sub_29ABFCEEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABFCF04(uint64_t a1, float a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v10 = 0;
  if (a2 == 0.0)
  {
    (*(**(a1 + 24) + 328))(v8);
    sub_29A18606C(&v9, v8);
    sub_29A186B14(v8);
  }

  else
  {
    sub_29ABFC664((a1 + 16), (a1 + 8), (a1 + 24), &v6);
    (*(*v6 + 16))(v8, a2);
    sub_29A18606C(&v9, v8);
    sub_29A186B14(v8);
    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }

  if (sub_29A293A9C(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = &v9;
    }

    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29ABFD06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29ABFD0A0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABFD0C8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABFD0F8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20790D0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29ABFD138(uint64_t a1, _DWORD *a2, uint64_t *a3, uint64_t a4)
{
  *a1 = &unk_2A20790F8;
  sub_29A1E21F4((a1 + 8), a2);
  sub_29A1E2240((a1 + 12), a2 + 1);
  v8 = *a3;
  *(a1 + 16) = *a3;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 24) = a4;
  if (!a4)
  {
    v10[0] = "hd/dataSourceLegacyPrim.cpp";
    v10[1] = "Hd_TypedDataSourceLegacyCameraParamValue";
    v10[2] = 923;
    v10[3] = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Hd_TypedDataSourceLegacyCameraParamValue<float>::Hd_TypedDataSourceLegacyCameraParamValue(const SdfPath &, const TfToken &, HdSceneDelegate *) [T = float]";
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "_sceneDelegate", 0);
  }

  return a1;
}

void sub_29ABFD218(_Unwind_Exception *a1)
{
  v3 = *(v1 + 16);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8((v1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void *sub_29ABFD24C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2079148;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ABFD2A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABFD2BC(uint64_t a1)
{
  *a1 = &unk_2A20790F8;
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ABFD338(uint64_t a1)
{
  *a1 = &unk_2A20790F8;
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29ABFD3B8(void **a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  if (a3 == 0.0)
  {
    v4 = *(*a1[3] + 328);
    v5 = a1 + 1;
    v6 = a1 + 2;
    v7 = a1[3];

    v4(v7, v5, v6);
  }

  else
  {
    v8 = ((*a1)[4])(a1);
    *(a2 + 8) = &unk_2A2044C63;
    *a2 = v8;
  }
}

uint64_t sub_29ABFD470(uint64_t a1, uint64_t a2, float a3, float a4)
{
  sub_29ABFC664((a1 + 16), (a1 + 8), (a1 + 24), &v9);
  v7 = (*(*v9 + 24))(v9, a2, a3, a4);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  return v7;
}

void sub_29ABFD508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

float sub_29ABFD520(uint64_t a1, float a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v10 = 0;
  if (a2 == 0.0)
  {
    (*(**(a1 + 24) + 328))(v8);
    sub_29A18606C(&v9, v8);
    sub_29A186B14(v8);
  }

  else
  {
    sub_29ABFC664((a1 + 16), (a1 + 8), (a1 + 24), &v6);
    (*(*v6 + 16))(v8, a2);
    sub_29A18606C(&v9, v8);
    sub_29A186B14(v8);
    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }

  v3 = 0.0;
  if (sub_29A3F9DF4(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v4 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v4 = &v9;
    }

    v3 = *v4;
  }

  sub_29A186B14(&v9);
  return v3;
}

void sub_29ABFD684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29ABFD6B8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABFD6E0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABFD710(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2079198))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ABFD750@<X0>(_DWORD *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x20uLL);
  v9 = *a3;
  *v8 = &unk_2A2079288;
  sub_29A1E21F4(v8 + 2, a1);
  sub_29A1E2240(v8 + 3, a1 + 1);
  v10 = *a2;
  *(v8 + 2) = *a2;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(v8 + 2) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(v8 + 3) = v9;
  if (!v9)
  {
    v12[0] = "hd/dataSourceLegacyPrim.cpp";
    v12[1] = "Hd_TypedDataSourceLegacyCameraParamValue";
    v12[2] = 923;
    v12[3] = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Hd_TypedDataSourceLegacyCameraParamValue<pxrInternal__aapl__pxrReserved__::GfVec2f>::Hd_TypedDataSourceLegacyCameraParamValue(const SdfPath &, const TfToken &, HdSceneDelegate *) [T = pxrInternal__aapl__pxrReserved__::GfVec2f]";
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v12, "_sceneDelegate", 0);
  }

  *a4 = v8;
  result = operator new(0x20uLL);
  *result = &unk_2A20792D8;
  result[1] = 0;
  result[2] = 0;
  result[3] = v8;
  a4[1] = result;
  return result;
}

void sub_29ABFD878(_Unwind_Exception *a1)
{
  v3 = *(v1 + 16);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8((v1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_29ABFD8E0(uint64_t a1)
{
  *a1 = &unk_2A20791C0;
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ABFD95C(uint64_t a1)
{
  *a1 = &unk_2A20791C0;
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void *sub_29ABFD9DC@<X0>(void **a1@<X0>, atomic_uint **a2@<X8>, float a3@<S0>)
{
  if (a3 == 0.0)
  {
    v4 = *(*a1[3] + 328);
    v5 = a1 + 1;
    v6 = a1 + 2;
    v7 = a1[3];

    return v4(v7, v5, v6);
  }

  else
  {
    result = ((*a1)[4])(&v11);
    v9 = v11;
    *a2 = v11;
    a2[1] = (&off_2A2044E88 + 1);
    if ((v9 & 7) != 0)
    {
      v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
      {
        *a2 = v10;
      }
    }

    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

uint64_t sub_29ABFDAD8(uint64_t a1, uint64_t a2, float a3, float a4)
{
  sub_29ABFC664((a1 + 16), (a1 + 8), (a1 + 24), &v9);
  v7 = (*(*v9 + 24))(v9, a2, a3, a4);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  return v7;
}

void sub_29ABFDB70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABFDB88@<X0>(uint64_t a1@<X0>, atomic_uint **a2@<X8>, float a3@<S0>)
{
  v14 = *MEMORY[0x29EDCA608];
  v13 = 0;
  if (a3 == 0.0)
  {
    (*(**(a1 + 24) + 328))(v11);
    sub_29A18606C(&v12, v11);
    sub_29A186B14(v11);
  }

  else
  {
    sub_29ABFC664((a1 + 16), (a1 + 8), (a1 + 24), &v9);
    (*(*v9 + 16))(v11, a3);
    sub_29A18606C(&v12, v11);
    sub_29A186B14(v11);
    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }

  if (!sub_29A1FA710(&v12))
  {
    v7 = 0;
LABEL_12:
    *a2 = v7;
    return sub_29A186B14(&v12);
  }

  if ((v13 & 4) != 0)
  {
    v5 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(&v12);
  }

  else
  {
    v5 = &v12;
  }

  v6 = *v5;
  *a2 = *v5;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return sub_29A186B14(&v12);
}

void sub_29ABFDD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29ABFDD44(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABFDD6C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABFDD9C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2079260))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABFDDDC(uint64_t a1)
{
  *a1 = &unk_2A2079288;
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ABFDE58(uint64_t a1)
{
  *a1 = &unk_2A2079288;
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29ABFDED8(void **a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  if (a3 == 0.0)
  {
    v4 = *(*a1[3] + 328);
    v5 = a1 + 1;
    v6 = a1 + 2;
    v7 = a1[3];

    v4(v7, v5, v6);
  }

  else
  {
    v8 = ((*a1)[4])(a1);
    *(a2 + 8) = &off_2A2042618 + 3;
    *a2 = v8;
    *(a2 + 4) = v9;
  }
}

uint64_t sub_29ABFDF90(uint64_t a1, uint64_t a2, float a3, float a4)
{
  sub_29ABFC664((a1 + 16), (a1 + 8), (a1 + 24), &v9);
  v7 = (*(*v9 + 24))(v9, a2, a3, a4);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  return v7;
}

void sub_29ABFE028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

float sub_29ABFE040(uint64_t a1, float a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v10 = 0;
  if (a2 == 0.0)
  {
    (*(**(a1 + 24) + 328))(v8);
    sub_29A18606C(&v9, v8);
    sub_29A186B14(v8);
  }

  else
  {
    sub_29ABFC664((a1 + 16), (a1 + 8), (a1 + 24), &v6);
    (*(*v6 + 16))(v8, a2);
    sub_29A18606C(&v9, v8);
    sub_29A186B14(v8);
    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }

  v3 = 0.0;
  if (sub_29A3FD314(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v4 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v4 = &v9;
    }

    v3 = *v4;
  }

  sub_29A186B14(&v9);
  return v3;
}

void sub_29ABFE1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29ABFE1E0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABFE208(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABFE238(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2079328))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABFE278(uint64_t a1)
{
  *a1 = &unk_2A2079350;
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ABFE2F4(uint64_t a1)
{
  *a1 = &unk_2A2079350;
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29ABFE374(uint64_t a1, float a2)
{
  if (a2 == 0.0)
  {
    v2 = *(**(a1 + 24) + 328);

    v2();
  }

  else
  {
    sub_29ABFC664((a1 + 16), (a1 + 8), (a1 + 24), &v4);
    (*(*v4 + 16))(v4, a2);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }
}

void sub_29ABFE460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABFE478(uint64_t a1, uint64_t a2, float a3, float a4)
{
  sub_29ABFC664((a1 + 16), (a1 + 8), (a1 + 24), &v9);
  v7 = (*(*v9 + 24))(v9, a2, a3, a4);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  return v7;
}

void sub_29ABFE510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABFE52C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABFE554(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABFE584(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20793E8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABFE5C8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABFE5F0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABFE620(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2079460))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABFE660(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2079488;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ABFE6C0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2079488;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void *sub_29ABFE724@<X0>(void *a1@<X8>)
{
  v26 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v2)
  {
    v2 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v3 = *(v2 + 34);
  v19 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v19 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v4)
  {
    v4 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v5 = *(v4 + 45);
  v20 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v6)
  {
    v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v7 = *(v6 + 73);
  v21 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v21 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v8)
  {
    v8 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v9 = *(v8 + 47);
  v22 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v10)
  {
    v10 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v11 = *(v10 + 85);
  v23 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v12)
  {
    v12 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v13 = *(v12 + 51);
  v24 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v14)
  {
    v14 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v15 = *(v14 + 61);
  v25 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v19, &v26, 7uLL);
  for (i = 48; i != -8; i -= 8)
  {
    v18 = *(&v19 + i);
    if ((v18 & 7) != 0)
    {
      atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29ABFE9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t sub_29ABFEA30@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v14[2] = *MEMORY[0x29EDCA608];
  v14[1] = 0;
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v6)
  {
    v6 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  if ((*(v6 + 30) ^ *a2) < 8)
  {
    goto LABEL_10;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v7)
  {
    v7 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  if ((*(v7 + 32) ^ *a2) < 8)
  {
    goto LABEL_10;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v8)
  {
    v8 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  if ((*(v8 + 31) ^ *a2) > 7)
  {
    (*(**(a1 + 16) + 320))(&v13);
  }

  else
  {
LABEL_10:
    (*(**(a1 + 16) + 120))(&v13);
  }

  sub_29A18606C(v14, &v13);
  sub_29A186B14(&v13);
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v9)
  {
    v9 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  if ((*(v9 + 30) ^ *a2) <= 7)
  {
    goto LABEL_21;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v10)
  {
    v10 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  if ((*(v10 + 32) ^ *a2) <= 7)
  {
    goto LABEL_21;
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v11)
  {
    v11 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  if ((*(v11 + 31) ^ *a2) > 7)
  {
    pxrInternal__aapl__pxrReserved__::HdCreateTypedRetainedDataSource(v14, &v13);
  }

  else
  {
LABEL_21:
    sub_29ABFECA8(v14, &v13);
  }

  *a3 = v13;
  return sub_29A186B14(v14);
}

void sub_29ABFEC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ABFECA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6[2] = *MEMORY[0x29EDCA608];
  v4 = operator new(0x18uLL);
  sub_29A186EF4(v6, a1);
  sub_29ABFEE00(v4, v6);
  sub_29ABFEF18(a2, v4);
  return sub_29A186B14(v6);
}

void sub_29ABFED40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdLightTokens_StaticTokenType *sub_29ABFED74(atomic_ullong *a1)
{
  result = sub_29ABFEDBC();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdLightTokens_StaticTokenType::~HdLightTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdLightTokens_StaticTokenType *sub_29ABFEDBC()
{
  v0 = operator new(0x120uLL);
  pxrInternal__aapl__pxrReserved__::HdLightTokens_StaticTokenType::HdLightTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29ABFEE00(void *a1, void *a2)
{
  *a1 = &unk_2A20794D0;
  sub_29A186EF4(a1 + 1, a2);
  return a1;
}

void sub_29ABFEE58(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20794D0;
  sub_29A186B14(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ABFEEAC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20794D0;
  sub_29A186B14(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void *sub_29ABFEF18(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2079518;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ABFEF70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABFEF8C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABFEFB4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABFEFE4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2079568))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABFF028(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABFF050(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABFF080(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20795E0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABFF0C0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2079608;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 5);
  sub_29A1DE3A4(a1 + 4);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ABFF120(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2079608;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 5);
  sub_29A1DE3A4(a1 + 4);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void *sub_29ABFF184@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
  if (!v2)
  {
    v2 = sub_29ABEDF98(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
  }

  sub_29A1D8028(a1, v2 + 1);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
  if (!v3)
  {
    v3 = sub_29ABEDF98(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
  }

  sub_29A1D8028(a1, v3 + 2);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEDF98(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
  }

  return sub_29A1D8028(a1, v4 + 3);
}

void sub_29ABFF228(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

double sub_29ABFF240@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABEDF98(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) > 7)
  {
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
    if (!v9)
    {
      v9 = sub_29ABEDF98(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
    }

    if ((*(v9 + 2) ^ *a2) > 7)
    {
      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
      if (!v11)
      {
        v11 = sub_29ABEDF98(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
      }

      if ((*(v11 + 3) ^ *a2) > 7)
      {
        sub_29ABFF3AC((a1 + 8), (a1 + 16), a2, &v13);
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New((a1 + 40), &v13);
      }
    }

    else
    {
      v10 = operator new(0x10uLL);
      *v10 = &unk_2A2079730;
      v10[2] = *(a1 + 36);
      sub_29ABFF890(&v13, v10);
    }
  }

  else
  {
    v7 = operator new(0x18uLL);
    v8 = *(a1 + 24);
    *v7 = &unk_2A2079650;
    v7[1] = v8;
    *(v7 + 4) = *(a1 + 32);
    sub_29ABFF55C(&v13, v7);
  }

  result = *&v13;
  *a3 = v13;
  return result;
}

void *sub_29ABFF3AC@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x20uLL);
  v9 = *a1;
  *v8 = &unk_2A20798D8;
  v8[1] = v9;
  sub_29A1E21F4(v8 + 4, a2);
  sub_29A1E2240(v8 + 5, a2 + 1);
  v10 = *a3;
  v8[3] = *a3;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v8[3] &= 0xFFFFFFFFFFFFFFF8;
  }

  *a4 = v8;
  result = operator new(0x20uLL);
  *result = &unk_2A2079920;
  result[1] = 0;
  result[2] = 0;
  result[3] = v8;
  a4[1] = result;
  return result;
}

void sub_29ABFF4BC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

_DWORD *sub_29ABFF4E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = &off_2A2048058 + 2;
  result = operator new(0x10uLL);
  *result = *(a1 + 8);
  result[2] = *(a1 + 16);
  atomic_store(0, result + 3);
  *a2 = result;
  atomic_fetch_add_explicit(result + 3, 1u, memory_order_relaxed);
  return result;
}

void *sub_29ABFF55C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20796B8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ABFF5B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABFF5D0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABFF5F8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABFF628(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2079708))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABFF66C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

uint64_t sub_29ABFF694@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_2A2079788 + 3;
  *a2 = *(result + 8);
  return result;
}

_DWORD *sub_29ABFF7E0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_2A2079788 + 3;
  *a2 = *result;
  return result;
}

void *sub_29ABFF7FC(unsigned int *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&unk_2A2079840, *a1, __p);
  if ((v8 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = sub_29A00911C(a2, v3, v4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_29ABFF874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29ABFF890(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2079860;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ABFF8E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABFF904(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABFF92C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABFF95C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20798B0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABFF99C(uint64_t a1)
{
  *a1 = &unk_2A20798D8;
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ABFFA18(uint64_t a1)
{
  *a1 = &unk_2A20798D8;
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29ABFFAD8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABFFB00(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABFFB30(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2079970))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABFFB74(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABFFB9C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABFFBCC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20799E8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABFFC0C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2079A10;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 5);
  sub_29A1DE3A4(a1 + 4);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ABFFC6C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2079A10;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 5);
  sub_29A1DE3A4(a1 + 4);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29ABFFCD0(void *a1@<X8>)
{
  v1 = a1;
  v21 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17492B0, memory_order_acquire) & 1) == 0)
  {
    v3 = __cxa_guard_acquire(&qword_2A17492B0);
    v1 = a1;
    if (v3)
    {
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      if (!v4)
      {
        v4 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      }

      v5 = *(v4 + 1);
      v16 = v5;
      if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v16 &= 0xFFFFFFFFFFFFFFF8;
      }

      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      if (!v6)
      {
        v6 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      }

      v7 = *(v6 + 3);
      v17 = v7;
      if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v17 &= 0xFFFFFFFFFFFFFFF8;
      }

      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      if (!v8)
      {
        v8 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      }

      v9 = *(v8 + 4);
      v18 = v9;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v18 &= 0xFFFFFFFFFFFFFFF8;
      }

      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      if (!v10)
      {
        v10 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      }

      v11 = *(v10 + 5);
      v19 = v11;
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v19 &= 0xFFFFFFFFFFFFFFF8;
      }

      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      if (!v12)
      {
        v12 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
      }

      v13 = *(v12 + 6);
      v20 = v13;
      if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v20 &= 0xFFFFFFFFFFFFFFF8;
      }

      qword_2A1749298 = 0;
      unk_2A17492A0 = 0;
      qword_2A17492A8 = 0;
      sub_29A12EF7C(&qword_2A1749298, &v16, &v21, 5uLL);
      for (i = 32; i != -8; i -= 8)
      {
        v15 = *(&v16 + i);
        if ((v15 & 7) != 0)
        {
          atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      __cxa_atexit(sub_29A3C73E0, &qword_2A1749298, &dword_299FE7000);
      __cxa_guard_release(&qword_2A17492B0);
      v1 = a1;
    }
  }

  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

double sub_29AC00008@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v106 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) <= 7)
  {
    v7 = *(a1 + 8);
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v8)
    {
      v8 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    (*(*v7 + 120))(v93, v7, a1 + 16, v8 + 8);
    if (sub_29A185258(v93))
    {
      if ((v93[1] & 4) != 0)
      {
        v9 = (*((v93[1] & 0xFFFFFFFFFFFFFFF8) + 168))(v93);
      }

      else
      {
        v9 = v93[0];
      }

      pxrInternal__aapl__pxrReserved__::HdUtils::ConvertVtDictionaryToContainerDS(v9, &v89);
      goto LABEL_142;
    }

    sub_29A186B14(v93);
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  if (!v10)
  {
    v10 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  }

  if ((*(v10 + 3) ^ *a2) <= 7)
  {
    v11 = *(a1 + 8);
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v12)
    {
      v12 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    (*(*v11 + 120))(&v91, v11, a1 + 16, v12 + 16);
    if (sub_29AC00EC0(&v91))
    {
      if ((v92 & 4) != 0)
      {
        v13 = (*((v92 & 0xFFFFFFFFFFFFFFF8) + 168))(&v91);
      }

      else
      {
        v13 = v91;
      }

      v90 = 0;
      v89 = 0uLL;
      sub_29A039314(&v89, 0xEEEEEEEEEEEEEEEFLL * ((v13[1] - *v13) >> 3));
      v14 = *v13;
      v15 = v13[1];
      if (*v13 != v15)
      {
        do
        {
          v86 = 0;
          v87 = 0;
          v88 = 0;
          v16 = *(v14 + 32);
          v17 = *(v14 + 40);
          while (v16 != v17)
          {
            v96 = 0uLL;
            v97 = 0uLL;
            v94 = 0uLL;
            v95 = 0uLL;
            *v93 = 0uLL;
            sub_29ABE8360(v16, &v82);
            v83 = v82;
            v82 = 0uLL;
            v18 = pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::Builder::SetPath(v93, &v83);
            v19 = (v16 + 2);
            sub_29ABCCFA4(v19, &v80);
            v81 = v80;
            v80 = 0uLL;
            v20 = pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::Builder::SetDataType(v18, &v81);
            pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v74);
            sub_29ABCCFA4(&v74, &v78);
            v79 = v78;
            v78 = 0uLL;
            v21 = pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::Builder::SetSourceName(v20, &v79);
            v19 += 4;
            sub_29ABCCFA4(v19, &v76);
            v77 = v76;
            v76 = 0uLL;
            v22 = pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::Builder::SetSourceType(v21, &v77);
            v23 = (v19 + 1);
            pxrInternal__aapl__pxrReserved__::HdUtils::ConvertVtDictionaryToContainerDS(v23, &v75);
            v24 = pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::Builder::SetNamespacedSettings(v22, &v75);
            pxrInternal__aapl__pxrReserved__::HdRenderVarSchema::Builder::Build(v24, &v84);
            v85 = v84;
            v84 = 0uLL;
            sub_29A01729C(&v86, &v85);
            if (*(&v85 + 1))
            {
              sub_29A014BEC(*(&v85 + 1));
            }

            if (*(&v84 + 1))
            {
              sub_29A014BEC(*(&v84 + 1));
            }

            if (*(&v75 + 1))
            {
              sub_29A014BEC(*(&v75 + 1));
            }

            if (*(&v77 + 1))
            {
              sub_29A014BEC(*(&v77 + 1));
            }

            if (*(&v76 + 1))
            {
              sub_29A014BEC(*(&v76 + 1));
            }

            if (*(&v79 + 1))
            {
              sub_29A014BEC(*(&v79 + 1));
            }

            if (*(&v78 + 1))
            {
              sub_29A014BEC(*(&v78 + 1));
            }

            if ((v74 & 7) != 0)
            {
              atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if (*(&v81 + 1))
            {
              sub_29A014BEC(*(&v81 + 1));
            }

            if (*(&v80 + 1))
            {
              sub_29A014BEC(*(&v80 + 1));
            }

            if (*(&v83 + 1))
            {
              sub_29A014BEC(*(&v83 + 1));
            }

            if (*(&v82 + 1))
            {
              sub_29A014BEC(*(&v82 + 1));
            }

            if (*(&v97 + 1))
            {
              sub_29A014BEC(*(&v97 + 1));
            }

            if (*(&v96 + 1))
            {
              sub_29A014BEC(*(&v96 + 1));
            }

            if (*(&v95 + 1))
            {
              sub_29A014BEC(*(&v95 + 1));
            }

            if (*(&v94 + 1))
            {
              sub_29A014BEC(*(&v94 + 1));
            }

            if (v93[1])
            {
              sub_29A014BEC(v93[1]);
            }

            v16 = (v23 + 8);
          }

          v104 = 0uLL;
          v105 = 0uLL;
          v102 = 0uLL;
          v103 = 0uLL;
          v100 = 0uLL;
          v101 = 0uLL;
          v98 = 0uLL;
          v99 = 0uLL;
          v96 = 0uLL;
          v97 = 0uLL;
          v94 = 0uLL;
          v95 = 0uLL;
          *v93 = 0uLL;
          sub_29ABE8360(v14, &v82);
          v83 = v82;
          v82 = 0uLL;
          v25 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetPath(v93, &v83);
          sub_29ABCCFA4((v14 + 8), &v80);
          v81 = v80;
          v80 = 0uLL;
          v26 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetType(v25, &v81);
          sub_29ABCCFA4((v14 + 16), &v78);
          v79 = v78;
          v78 = 0uLL;
          v27 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetName(v26, &v79);
          v28 = operator new(0x10uLL);
          *v28 = &unk_2A2079A68;
          v28[1] = *(v14 + 24);
          sub_29AC010A0(&v76, v28);
          v77 = v76;
          v76 = 0uLL;
          v29 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetResolution(v27, &v77);
          v72 = v86;
          v73 = (v87 - v86) >> 4;
          sub_29AC00FD8(&v73, &v72, &v74);
          v75 = v74;
          v74 = 0uLL;
          v30 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetRenderVars(v29, &v75);
          sub_29ABE8360((v14 + 56), &v70);
          v71 = v70;
          v70 = 0uLL;
          v31 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetCameraPrim(v30, &v71);
          v32 = operator new(0x10uLL);
          *v32 = &unk_2A2079BC0;
          v32[2] = *(v14 + 64);
          sub_29AC01310(&v68, v32);
          v69 = v68;
          v68 = 0uLL;
          v33 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetPixelAspectRatio(v31, &v69);
          sub_29ABCCFA4((v14 + 72), &v66);
          v67 = v66;
          v66 = 0uLL;
          v34 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetAspectRatioConformPolicy(v33, &v67);
          v35 = operator new(0x10uLL);
          *v35 = &unk_2A2078B78;
          v35[1] = *(v14 + 80);
          sub_29ABFBC18(&v64, v35);
          v65 = v64;
          v64 = 0uLL;
          v36 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetApertureSize(v34, &v65);
          v55 = *(v14 + 88);
          v37 = operator new(0x18uLL);
          *v37 = &unk_2A2079C88;
          *(v37 + 8) = v55;
          sub_29AC014B4(&v62, v37);
          v63 = v62;
          v62 = 0uLL;
          v38 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetDataWindowNDC(v36, &v63);
          pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New((v14 + 104), &v60);
          v61 = v60;
          v60 = 0uLL;
          v39 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetDisableMotionBlur(v38, &v61);
          pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New((v14 + 105), &v58);
          v59 = v58;
          v58 = 0uLL;
          v40 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetDisableDepthOfField(v39, &v59);
          pxrInternal__aapl__pxrReserved__::HdUtils::ConvertVtDictionaryToContainerDS((v14 + 112), &v57);
          v41 = pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetNamespacedSettings(v40, &v57);
          pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::Build(v41, &v84);
          v85 = v84;
          v84 = 0uLL;
          sub_29A01729C(&v89, &v85);
          if (*(&v85 + 1))
          {
            sub_29A014BEC(*(&v85 + 1));
          }

          if (*(&v84 + 1))
          {
            sub_29A014BEC(*(&v84 + 1));
          }

          if (*(&v57 + 1))
          {
            sub_29A014BEC(*(&v57 + 1));
          }

          if (*(&v59 + 1))
          {
            sub_29A014BEC(*(&v59 + 1));
          }

          if (*(&v58 + 1))
          {
            sub_29A014BEC(*(&v58 + 1));
          }

          if (*(&v61 + 1))
          {
            sub_29A014BEC(*(&v61 + 1));
          }

          if (*(&v60 + 1))
          {
            sub_29A014BEC(*(&v60 + 1));
          }

          if (*(&v63 + 1))
          {
            sub_29A014BEC(*(&v63 + 1));
          }

          if (*(&v62 + 1))
          {
            sub_29A014BEC(*(&v62 + 1));
          }

          if (*(&v65 + 1))
          {
            sub_29A014BEC(*(&v65 + 1));
          }

          if (*(&v64 + 1))
          {
            sub_29A014BEC(*(&v64 + 1));
          }

          if (*(&v67 + 1))
          {
            sub_29A014BEC(*(&v67 + 1));
          }

          if (*(&v66 + 1))
          {
            sub_29A014BEC(*(&v66 + 1));
          }

          if (*(&v69 + 1))
          {
            sub_29A014BEC(*(&v69 + 1));
          }

          if (*(&v68 + 1))
          {
            sub_29A014BEC(*(&v68 + 1));
          }

          if (*(&v71 + 1))
          {
            sub_29A014BEC(*(&v71 + 1));
          }

          if (*(&v70 + 1))
          {
            sub_29A014BEC(*(&v70 + 1));
          }

          if (*(&v75 + 1))
          {
            sub_29A014BEC(*(&v75 + 1));
          }

          if (*(&v74 + 1))
          {
            sub_29A014BEC(*(&v74 + 1));
          }

          if (*(&v77 + 1))
          {
            sub_29A014BEC(*(&v77 + 1));
          }

          if (*(&v76 + 1))
          {
            sub_29A014BEC(*(&v76 + 1));
          }

          if (*(&v79 + 1))
          {
            sub_29A014BEC(*(&v79 + 1));
          }

          if (*(&v78 + 1))
          {
            sub_29A014BEC(*(&v78 + 1));
          }

          if (*(&v81 + 1))
          {
            sub_29A014BEC(*(&v81 + 1));
          }

          if (*(&v80 + 1))
          {
            sub_29A014BEC(*(&v80 + 1));
          }

          if (*(&v83 + 1))
          {
            sub_29A014BEC(*(&v83 + 1));
          }

          if (*(&v82 + 1))
          {
            sub_29A014BEC(*(&v82 + 1));
          }

          sub_29AC015C0(v93);
          v93[0] = &v86;
          sub_29A0176E4(v93);
          v14 += 120;
        }

        while (v14 != v15);
      }

      v86 = (*(&v89 + 1) - v89) >> 4;
      *&v85 = v89;
      sub_29AC00FD8(&v86, &v85, v93);
      v56 = *v93;
      v93[0] = &v89;
      sub_29A0176E4(v93);
      *a3 = v56;
      v42 = &v91;
      goto LABEL_143;
    }

    sub_29A186B14(&v91);
  }

  v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  if (!v43)
  {
    v43 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  }

  if ((*(v43 + 4) ^ *a2) <= 7)
  {
    v44 = *(a1 + 8);
    v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v45)
    {
      v45 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    (*(*v44 + 120))(v93, v44, a1 + 16, v45 + 24);
    if (sub_29A1FA748(v93))
    {
      if ((v93[1] & 4) == 0)
      {
        v46 = v93[0];
LABEL_122:
        sub_29ABF3FFC(v46, &v89);
LABEL_142:
        *a3 = v89;
        v42 = v93;
LABEL_143:
        sub_29A186B14(v42);
        return result;
      }

      goto LABEL_148;
    }

    sub_29A186B14(v93);
  }

  v47 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  if (!v47)
  {
    v47 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  }

  if ((*(v47 + 5) ^ *a2) <= 7)
  {
    v48 = *(a1 + 8);
    v49 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v49)
    {
      v49 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    (*(*v48 + 120))(v93, v48, a1 + 16, v49 + 32);
    if (sub_29A1FA748(v93))
    {
      if ((v93[1] & 4) == 0)
      {
        v46 = v93[0];
        goto LABEL_122;
      }

LABEL_148:
      v46 = (*((v93[1] & 0xFFFFFFFFFFFFFFF8) + 168))(v93);
      goto LABEL_122;
    }

    sub_29A186B14(v93);
  }

  v50 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  if (!v50)
  {
    v50 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
  }

  if ((*(v50 + 6) ^ *a2) <= 7)
  {
    v51 = *(a1 + 8);
    v52 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    if (!v52)
    {
      v52 = sub_29AC00F4C(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens);
    }

    (*(*v51 + 120))(v93, v51, a1 + 16, v52 + 40);
    if (sub_29A1FA710(v93))
    {
      if ((v93[1] & 4) != 0)
      {
        v53 = (*((v93[1] & 0xFFFFFFFFFFFFFFF8) + 168))(v93);
      }

      else
      {
        v53 = v93;
      }

      sub_29ABCCFA4(v53, &v89);
      goto LABEL_142;
    }

    sub_29A186B14(v93);
  }

  sub_29ABFF3AC((a1 + 8), (a1 + 16), a2, v93);
  result = *v93;
  *a3 = *v93;
  return result;
}

uint64_t sub_29AC00EC0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B6D34C5 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2079A48);
}

pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens_StaticTokenType *sub_29AC00F4C(atomic_ullong *a1)
{
  result = sub_29AC00F94();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens_StaticTokenType::~HdRenderSettingsPrimTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens_StaticTokenType *sub_29AC00F94()
{
  v0 = operator new(0x50uLL);
  pxrInternal__aapl__pxrReserved__::HdRenderSettingsPrimTokens_StaticTokenType::HdRenderSettingsPrimTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29AC00FD8@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x210uLL);
  pxrInternal__aapl__pxrReserved__::HdRetainedSmallVectorDataSource::HdRetainedSmallVectorDataSource(v6, *a1, *a2);

  return sub_29AC011AC(a3, v6);
}

void sub_29AC01050(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

uint64_t sub_29AC01078@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = *(result + 8);
  a2[1] = &off_2A2047EE8 + 3;
  return result;
}

void *sub_29AC010A0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2079AD0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AC010F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC01114(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC0113C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC0116C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2079B20))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AC011AC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2079B48;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AC01204(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC01220(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC01248(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC01278(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2079B98))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AC012BC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

float sub_29AC012E4@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_2A2044C63;
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

void *sub_29AC01310(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2079C10;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AC01368(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC01384(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC013AC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC013DC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2079C60))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AC01420(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

unsigned int *sub_29AC01448@<X0>(uint64_t a1@<X0>, unsigned int **a2@<X8>)
{
  a2[1] = (&off_2A2042A68 + 2);
  result = operator new(0x14uLL);
  *result = *(a1 + 8);
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

void *sub_29AC014B4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2079CF0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AC0150C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC01528(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC01550(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC01580(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2079D40))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AC015C0(void *a1)
{
  v2 = a1[25];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = a1[23];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = a1[21];
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = a1[19];
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = a1[17];
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  v7 = a1[15];
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  v8 = a1[13];
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  v9 = a1[11];
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  v10 = a1[9];
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  v11 = a1[7];
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  v12 = a1[5];
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  v13 = a1[3];
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  v14 = a1[1];
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  return a1;
}

void sub_29AC01684(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC016AC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC016DC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2079DB8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AC0171C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2079DE0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AC0177C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2079DE0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void *sub_29AC017E0@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  if (!v2)
  {
    v2 = sub_29ABED4CC(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  }

  sub_29A1D8028(a1, v2 + 1);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  if (!v3)
  {
    v3 = sub_29ABED4CC(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  }

  sub_29A1D8028(a1, v3 + 2);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABED4CC(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  }

  sub_29A1D8028(a1, v4 + 3);
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  if (!v5)
  {
    v5 = sub_29ABED4CC(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  }

  sub_29A1D8028(a1, v5 + 4);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABED4CC(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
  }

  return sub_29A1D8028(a1, v6 + 5);
}

void sub_29AC018CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC018E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6[2] = *MEMORY[0x29EDCA608];
  (*(**(a1 + 16) + 120))(v6, *(a1 + 16), a1 + 8, a2);
  pxrInternal__aapl__pxrReserved__::HdCreateTypedRetainedDataSource(v6, &v5);
  *a3 = v5;
  return sub_29A186B14(v6);
}

void sub_29AC0198C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29AC019AC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC019D4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC01A04(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2079E78))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AC01A44(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2079EA0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 5);
  sub_29A1DE3A4(a1 + 4);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AC01AA4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2079EA0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 5);
  sub_29A1DE3A4(a1 + 4);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AC01B08(void *a1@<X8>)
{
  if (!atomic_load(&qword_2A17492B8))
  {
    sub_29AC01BB0();
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;

  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

double sub_29AC01B68@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29ABFF3AC((a1 + 8), (a1 + 16), a2, &v5);
  result = *&v5;
  *a3 = v5;
  return result;
}

unint64_t sub_29AC01BB0()
{
  v28 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x50uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "camera", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "collection", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "drawTargetSet", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "enable", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "resolution", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "aovBindings", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "depthPriority", 0);
  v1 = v0 + 7;
  v2 = *v0;
  v21 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v3;
    }
  }

  v4 = v0[1];
  v22 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v5;
    }
  }

  v6 = v0[2];
  v23 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v7;
    }
  }

  v8 = v0[3];
  v24 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v9;
    }
  }

  v10 = v0[4];
  v25 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v11;
    }
  }

  v12 = v0[5];
  v26 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v13;
    }
  }

  v14 = v0[6];
  v27 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v15;
    }
  }

  *v1 = 0;
  v0[8] = 0;
  v0[9] = 0;
  sub_29A12EF7C(v1, &v21, &v28, 7uLL);
  for (i = 48; i != -8; i -= 8)
  {
    v17 = *(&v21 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v18 = 0;
  atomic_compare_exchange_strong(&qword_2A17492B8, &v18, v0);
  if (v18)
  {
    v19 = sub_29A1E6CA0(v0);
    operator delete(v19);
    return atomic_load(&qword_2A17492B8);
  }

  return v0;
}

void sub_29AC01E0C(_Unwind_Exception *a1)
{
  v4 = 48;
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
      v6 = v1[6];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[5];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[4];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[3];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[2];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[1];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

void sub_29AC01F2C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC01F54(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC01F84(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2079F38))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AC01FC4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2079F60;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AC02024(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2079F60;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void *sub_29AC02088@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
  if (!v2)
  {
    v2 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
  }

  sub_29A1D8028(a1, v2 + 1);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
  if (!v3)
  {
    v3 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
  }

  sub_29A1D8028(a1, v3 + 2);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
  }

  sub_29A1D8028(a1, v4 + 3);
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
  if (!v5)
  {
    v5 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
  }

  sub_29A1D8028(a1, v5 + 4);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
  }

  return sub_29A1D8028(a1, v6 + 5);
}

void sub_29AC02174(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29AC0218C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v47 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) <= 7)
  {
    v7 = operator new(0x18uLL);
    v8 = *(a1 + 16);
    *v7 = &unk_2A2079FA8;
    sub_29A1E21F4(v7 + 2, (a1 + 8));
    sub_29A1E2240(v7 + 3, (a1 + 12));
    *(v7 + 2) = v8;
    v9 = operator new(0x20uLL);
    *v9 = &unk_2A207A0B0;
    v9[1] = 0;
    v9[2] = 0;
    v9[3] = v7;
    *a3 = v7;
    a3[1] = v9;
    return;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
  if (!v10)
  {
    v10 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
  }

  if ((*(v10 + 2) ^ *a2) > 7)
  {
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
    if (!v17)
    {
      v17 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
    }

    if ((*(v17 + 3) ^ *a2) > 7)
    {
      v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
      if (!v22)
      {
        v22 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
      }

      if ((*(v22 + 4) ^ *a2) > 7)
      {
        v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
        if (!v23)
        {
          v23 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
        }

        if ((*(v23 + 5) ^ *a2) > 7)
        {
          v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
          if (!v26)
          {
            v26 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
          }

          if ((*(v26 + 6) ^ *a2) > 7)
          {
            v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
            if (!v29)
            {
              v29 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
            }

            if ((*(v29 + 7) ^ *a2) > 7)
            {
              *a3 = 0;
              a3[1] = 0;
              return;
            }

            v30 = *(a1 + 16);
            v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
            if (!v31)
            {
              v31 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
            }

            (*(*v30 + 376))(&v45, v30, a1 + 8, v31 + 240);
            *&v38 = 0;
            v40 = sub_29AC02C3C(&v45, &v38);
            sub_29AC02BD8(&v40, &v43);
          }

          else
          {
            v27 = *(a1 + 16);
            v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
            if (!v28)
            {
              v28 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
            }

            (*(*v27 + 376))(&v45, v27, a1 + 8, v28 + 144);
            *&v38 = 0;
            v40 = sub_29AC02C3C(&v45, &v38);
            sub_29AC02BD8(&v40, &v43);
          }

          *a3 = v43;
          sub_29A186B14(&v45);
          return;
        }

        v24 = operator new(0x30uLL);
        v24[1] = 0;
        v24[2] = 0;
        *v24 = &unk_2A207A3B0;
        v25 = *(a1 + 16);
        v24[3] = &unk_2A207A400;
        sub_29A1E21F4(v24 + 8, (a1 + 8));
        sub_29A1E2240(v24 + 9, (a1 + 12));
        v24[5] = v25;
        *&v43 = v24 + 3;
        *(&v43 + 1) = v24;
        sub_29AC02B60(&v43, &v45);
        *a3 = v45;
        v45 = 0uLL;
        if (*(&v43 + 1))
        {
          sub_29A014BEC(*(&v43 + 1));
        }
      }

      else
      {
        (*(**(a1 + 16) + 400))(&v45);
        sub_29AC02AF4(&v45, &v43);
        *a3 = v43;
        if (SBYTE7(v46) < 0)
        {
          operator delete(v45);
        }
      }
    }

    else
    {
      (*(**(a1 + 16) + 360))(&v45);
      v43 = 0uLL;
      v44 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      sub_29A1D7F98(&v43, 0xAAAAAAAAAAAAAAABLL * ((*(&v45 + 1) - v45) >> 3));
      sub_29A039314(&v40, 0xAAAAAAAAAAAAAAABLL * ((*(&v45 + 1) - v45) >> 3));
      v19 = *(&v45 + 1);
      for (i = v45; i != v19; i += 24)
      {
        sub_29A1D8028(&v43, i);
        v36 = 0uLL;
        v20 = operator new(0x18uLL);
        *v20 = &unk_2A20770C8;
        *(v20 + 8) = *(i + 8);
        sub_29ABF1ED4(&v34, v20);
        v35 = v34;
        v34 = 0uLL;
        v21 = pxrInternal__aapl__pxrReserved__::HdExtComputationOutputSchema::Builder::SetValueType(&v36, &v35);
        pxrInternal__aapl__pxrReserved__::HdExtComputationOutputSchema::Builder::Build(&v37, v21);
        v38 = v37;
        v37 = 0uLL;
        sub_29A01729C(&v40, &v38);
        if (*(&v38 + 1))
        {
          sub_29A014BEC(*(&v38 + 1));
        }

        if (*(&v37 + 1))
        {
          sub_29A014BEC(*(&v37 + 1));
        }

        if (*(&v35 + 1))
        {
          sub_29A014BEC(*(&v35 + 1));
        }

        if (*(&v34 + 1))
        {
          sub_29A014BEC(*(&v34 + 1));
        }

        if (*(&v36 + 1))
        {
          sub_29A014BEC(*(&v36 + 1));
        }
      }

      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New((*(&v43 + 1) - v43) >> 3, v43, v40, &v38);
      *a3 = v38;
      *&v38 = &v40;
      sub_29A0176E4(&v38);
      v40 = &v43;
      sub_29A124AB0(&v40);
      *&v43 = &v45;
      sub_29ABC6FA0(&v43);
    }
  }

  else
  {
    (*(**(a1 + 16) + 352))(&v43);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v38 = 0uLL;
    v39 = 0;
    sub_29A1D7F98(&v40, 0xAAAAAAAAAAAAAAABLL * ((*(&v43 + 1) - v43) >> 3));
    sub_29A039314(&v38, 0xAAAAAAAAAAAAAAABLL * ((*(&v43 + 1) - v43) >> 3));
    v12 = *(&v43 + 1);
    for (j = v43; j != v12; j = v15 + 1)
    {
      sub_29A1D8028(&v40, j);
      v45 = 0u;
      v46 = 0u;
      v13 = j + 1;
      sub_29ABE8360(v13, &v34);
      v35 = v34;
      v34 = 0uLL;
      v14 = pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchema::Builder::SetSourceComputation(&v45, &v35);
      v15 = (v13 + 2);
      sub_29ABCCFA4(v15, &v32);
      v33 = v32;
      v32 = 0uLL;
      v16 = pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchema::Builder::SetSourceComputationOutputName(v14, &v33);
      pxrInternal__aapl__pxrReserved__::HdExtComputationInputComputationSchema::Builder::Build(v16, &v36);
      v37 = v36;
      v36 = 0uLL;
      sub_29A01729C(&v38, &v37);
      if (*(&v37 + 1))
      {
        sub_29A014BEC(*(&v37 + 1));
      }

      if (*(&v36 + 1))
      {
        sub_29A014BEC(*(&v36 + 1));
      }

      if (*(&v33 + 1))
      {
        sub_29A014BEC(*(&v33 + 1));
      }

      if (*(&v32 + 1))
      {
        sub_29A014BEC(*(&v32 + 1));
      }

      if (*(&v35 + 1))
      {
        sub_29A014BEC(*(&v35 + 1));
      }

      if (*(&v34 + 1))
      {
        sub_29A014BEC(*(&v34 + 1));
      }

      if (*(&v46 + 1))
      {
        sub_29A014BEC(*(&v46 + 1));
      }

      if (*(&v45 + 1))
      {
        sub_29A014BEC(*(&v45 + 1));
      }
    }

    pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New((v41 - v40) >> 3, v40, v38, &v45);
    *a3 = v45;
    *&v45 = &v38;
    sub_29A0176E4(&v45);
    *&v45 = &v40;
    sub_29A124AB0(&v45);
    *&v45 = &v43;
    sub_29AC03488(&v45);
  }
}

void *sub_29AC02AF4@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x20uLL);
  sub_29AC03574(v4, a1);

  return sub_29AC036FC(a2, v4);
}

void *sub_29AC02B60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  v6 = *a1;
  v5 = a1[1];
  *v4 = &unk_2A207A208;
  v4[1] = v6;
  v4[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_29AC03AF8(a2, v4);
}

void *sub_29AC02BD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  v5 = *a1;
  *v4 = &unk_2A207A440;
  v4[1] = v5;

  return sub_29AC03DE4(a2, v4);
}

uint64_t sub_29AC02C3C(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t a2)
{
  if (sub_29AC03EF0(a1))
  {
    v4 = *(a1 + 1);
    if ((v4 & 4) != 0)
    {
      a2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
    }

    else
    {
      a2 = a1;
    }
  }

  return *a2;
}

void sub_29AC02C90(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2079FA8;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AC02CF0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2079FA8;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void *sub_29AC02D8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x58uLL);
  v7 = v6;
  v8 = *(a1 + 16);
  v9 = *a2;
  *v6 = &unk_2A2079FF0;
  v6[1] = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v6[1] &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A1E21F4(v6 + 4, (a1 + 8));
  sub_29A1E2240(v7 + 5, (a1 + 12));
  sub_29ABEF7C8(v7 + 3);
  v7[10] = v8;
  if (!v8)
  {
    v11[0] = "hd/dataSourceLegacyPrim.cpp";
    v11[1] = "Hd_DataSourceLegacyExtComputationInput";
    v11[2] = 1853;
    v11[3] = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Hd_DataSourceLegacyExtComputationInput::Hd_DataSourceLegacyExtComputationInput(const TfToken &, const SdfPath &, HdSceneDelegate *)";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v11, "_sceneDelegate", 0);
  }

  result = operator new(0x20uLL);
  *result = &unk_2A207A038;
  result[1] = 0;
  result[2] = 0;
  result[3] = v7;
  *a3 = v7;
  a3[1] = result;
  return result;
}

void sub_29AC02EB4(_Unwind_Exception *a1)
{
  sub_29ABEF9C0(v1 + 24);
  sub_29A1DCEA8((v1 + 16));
  v3 = *(v1 + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_29AC02F2C(uint64_t a1)
{
  *a1 = &unk_2A2079FF0;
  *(a1 + 24) = &unk_2A2076DF0;
  sub_29ABEFF98(a1 + 56);
  if (*(a1 + 52) >= 2u)
  {
    free(*(a1 + 40));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AC02FE4(uint64_t a1)
{
  *a1 = &unk_2A2079FF0;
  *(a1 + 24) = &unk_2A2076DF0;
  sub_29ABEFF98(a1 + 56);
  if (*(a1 + 52) >= 2u)
  {
    free(*(a1 + 40));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29AC030A0(uint64_t a1@<X0>, void *a2@<X8>, float a3@<S0>)
{
  if (a3 == 0.0)
  {
    v5 = *(**(a1 + 80) + 376);

    v5();
  }

  else
  {
    if (!*(a1 + 32))
    {
      sub_29AC031E4(*(a1 + 80), a1 + 16, a1 + 8, a1 + 24);
    }

    sub_29ABF1158(a1 + 24, a2, a3);
  }
}

uint64_t sub_29AC03168(uint64_t a1, const void **a2, float a3, float a4)
{
  v8 = *(a1 + 32);
  if (!v8)
  {
    sub_29AC031E4(*(a1 + 80), a1 + 16, a1 + 8, a1 + 24);
    v8 = *(a1 + 32);
  }

  v9 = (a1 + 40);
  if (*(a1 + 52) >= 2u)
  {
    v9 = *v9;
  }

  pxrInternal__aapl__pxrReserved__::HdGetContributingSampleTimesForInterval(v8, v9, a2, a3, a4);
  return 1;
}

unint64_t sub_29AC031E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (a4 + 16);
  v9 = (a4 + 16);
  if (*(a4 + 28) >= 2u)
  {
    v9 = *v8;
  }

  v10 = (a4 + 32);
  v11 = (a4 + 32);
  if (*(a4 + 52) >= 2u)
  {
    v11 = *v10;
  }

  result = (*(*a1 + 384))(a1, a2, a3, 1, v9, v11);
  v13 = result;
  if (result >= 2)
  {
    (**a4)(a4, result);
    if (*(a4 + 28) >= 2u)
    {
      v8 = *v8;
    }

    if (*(a4 + 52) >= 2u)
    {
      v10 = *v10;
    }

    result = (*(*a1 + 384))(a1, a2, a3, v13, v8, v10);
    if (v13 != result)
    {
      result = sub_29B2C5124(v14);
    }
  }

  *(a4 + 8) = v13;
  return result;
}

void sub_29AC03354(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC0337C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC033AC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207A088))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AC033F0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC03418(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC03448(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207A100))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AC03488(void ***a1)
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
        sub_29AC03510(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29AC03510(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 12));
  result = sub_29A1DE3A4((a2 + 8));
  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void *sub_29AC03574(void *a1, __int128 *a2)
{
  *a1 = &unk_2A207A128;
  v3 = a1 + 1;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v4;
  }

  return a1;
}

void sub_29AC035F0(void **this)
{
  *this = &unk_2A207A128;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AC03650(void **this)
{
  *this = &unk_2A207A128;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v2);
}

char *sub_29AC036D4@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[31] < 0)
  {
    return sub_29A008D14(a2, *(result + 1), *(result + 2));
  }

  *a2 = *(result + 8);
  *(a2 + 16) = *(result + 3);
  return result;
}

void *sub_29AC036FC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207A190;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AC03754(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC03770(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC03798(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC037C8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207A1E0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AC03808(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A207A208;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AC03864(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A207A208;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

uint64_t sub_29AC038DC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
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

void *sub_29AC038F8(void *a1, void *a2)
{
  a1[1] = &off_2A207A260;
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

uint64_t *sub_29AC0395C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AC0397C(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A1D2264(a1);
}

void *sub_29AC03AE8@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = 0;
  return sub_29AC038F8(a2, v2);
}

void *sub_29AC03AF8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207A338;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AC03B50(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC03B6C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC03B94(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC03BC4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207A388))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AC03C24(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A207A3B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AC03C90(pxrInternal__aapl__pxrReserved__::HdExtComputationCpuCallback *a1)
{
  *a1 = &unk_2A207A400;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdExtComputationCpuCallback::~HdExtComputationCpuCallback(a1);
}

void sub_29AC03CF0(pxrInternal__aapl__pxrReserved__::HdExtComputationCpuCallback *a1)
{
  *a1 = &unk_2A207A400;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdExtComputationCpuCallback::~HdExtComputationCpuCallback(a1);

  operator delete(v2);
}

void sub_29AC03D94(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

uint64_t sub_29AC03DBC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = *(result + 8);
  a2[1] = &unk_2A2044983;
  return result;
}

void *sub_29AC03DE4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207A4A8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AC03E3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC03E58(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC03E80(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC03EB0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207A4F8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29AC03EF0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(MEMORY[0x29EDC94E8] + 8) & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  v4 = MEMORY[0x29EDC94E8];

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, v4);
}

void sub_29AC03F7C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC03FA4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC03FD4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207A570))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AC04014(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A207A598;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AC04074(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A207A598;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AC040D8(void *a1@<X8>)
{
  v1 = a1;
  v21 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17492D8, memory_order_acquire) & 1) == 0)
  {
    v3 = __cxa_guard_acquire(&qword_2A17492D8);
    v1 = a1;
    if (v3)
    {
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
      if (!v4)
      {
        v4 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
      }

      v5 = *(v4 + 1);
      v16 = v5;
      if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v16 &= 0xFFFFFFFFFFFFFFF8;
      }

      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
      if (!v6)
      {
        v6 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
      }

      v7 = *(v6 + 2);
      v17 = v7;
      if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v17 &= 0xFFFFFFFFFFFFFFF8;
      }

      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
      if (!v8)
      {
        v8 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
      }

      v9 = *(v8 + 3);
      v18 = v9;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v18 &= 0xFFFFFFFFFFFFFFF8;
      }

      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
      if (!v10)
      {
        v10 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
      }

      v11 = *(v10 + 4);
      v19 = v11;
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v19 &= 0xFFFFFFFFFFFFFFF8;
      }

      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
      if (!v12)
      {
        v12 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
      }

      v13 = *(v12 + 5);
      v20 = v13;
      if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v20 &= 0xFFFFFFFFFFFFFFF8;
      }

      qword_2A17492C0 = 0;
      *algn_2A17492C8 = 0;
      qword_2A17492D0 = 0;
      sub_29A12EF7C(&qword_2A17492C0, &v16, &v21, 5uLL);
      for (i = 32; i != -8; i -= 8)
      {
        v15 = *(&v16 + i);
        if ((v15 & 7) != 0)
        {
          atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      __cxa_atexit(sub_29A3C73E0, &qword_2A17492C0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A17492D8);
      v1 = a1;
    }
  }

  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

double sub_29AC04410@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) <= 7)
  {
    v7 = *(a1 + 16);
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
    if (!v8)
    {
      v8 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
    }

    (*(*v7 + 120))(v29, v7, a1 + 8, v8 + 8);
    if (sub_29A1EFCDC(v29))
    {
      if ((v29[1] & 4) != 0)
      {
        v9 = (*((v29[1] & 0xFFFFFFFFFFFFFFF8) + 168))(v29);
      }

      else
      {
        v9 = v29;
      }

      pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(v9, &v28);
LABEL_46:
      *a3 = v28;
LABEL_48:
      sub_29A186B14(v29);
      return result;
    }

    goto LABEL_47;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
  if (!v10)
  {
    v10 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
  }

  if ((*(v10 + 2) ^ *a2) <= 7)
  {
    v11 = *(a1 + 16);
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
    if (!v12)
    {
      v12 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
    }

    (*(*v11 + 120))(v29, v11, a1 + 8, v12 + 16);
    if (sub_29A293A9C(v29))
    {
      if ((v29[1] & 4) != 0)
      {
        v13 = (*((v29[1] & 0xFFFFFFFFFFFFFFF8) + 168))(v29);
      }

      else
      {
        v13 = v29;
      }

      v14 = operator new(0x10uLL);
      *v14 = &unk_2A2077528;
      v14[2] = *v13;
      sub_29ABF40E4(&v28, v14);
      goto LABEL_46;
    }

LABEL_47:
    *a3 = 0;
    *(a3 + 8) = 0;
    goto LABEL_48;
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
  if (!v15)
  {
    v15 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
  }

  if ((*(v15 + 3) ^ *a2) <= 7)
  {
    v16 = *(a1 + 16);
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
    if (!v17)
    {
      v17 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
    }

    (*(*v16 + 120))(v29, v16, a1 + 8, v17 + 24);
    if (sub_29A1EFC10(v29))
    {
      if ((v29[1] & 4) != 0)
      {
        v18 = (*((v29[1] & 0xFFFFFFFFFFFFFFF8) + 168))(v29);
      }

      else
      {
        v18 = v29[0];
      }

      sub_29AC02AF4(v18, &v28);
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
  if (!v19)
  {
    v19 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
  }

  if ((*(v19 + 4) ^ *a2) <= 7)
  {
    v20 = *(a1 + 16);
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
    if (!v21)
    {
      v21 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
    }

    (*(*v20 + 120))(v29, v20, a1 + 8, v21 + 32);
    if (sub_29A185258(v29))
    {
      if ((v29[1] & 4) != 0)
      {
        v22 = (*((v29[1] & 0xFFFFFFFFFFFFFFF8) + 168))(v29);
      }

      else
      {
        v22 = v29[0];
      }

      pxrInternal__aapl__pxrReserved__::HdUtils::ConvertVtDictionaryToContainerDS(v22, &v28);
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
  if (!v23)
  {
    v23 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
  }

  if ((*(v23 + 5) ^ *a2) <= 7)
  {
    v24 = *(a1 + 16);
    v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
    if (!v25)
    {
      v25 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
    }

    (*(*v24 + 120))(v29, v24, a1 + 8, v25 + 40);
    if (sub_29ABE87F8(v29))
    {
      if ((v29[1] & 4) != 0)
      {
        v26 = (*((v29[1] & 0xFFFFFFFFFFFFFFF8) + 168))(v29);
      }

      else
      {
        v26 = v29[0];
      }

      pxrInternal__aapl__pxrReserved__::HdUtils::ConvertHdMaterialNetworkToHdMaterialNetworkSchema(v26, &v28);
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  sub_29ABFF3AC((a1 + 16), (a1 + 8), a2, v29);
  result = *v29;
  *a3 = *v29;
  return result;
}

void sub_29AC04868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29AC048AC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC048D4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC04904(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207A630))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AC04944(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A207A658;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AC049A4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A207A658;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void *sub_29AC04A08@<X0>(void *a1@<X8>)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens);
  if (!v2)
  {
    v2 = sub_29AC04C7C(&pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens);
  }

  v3 = *v2;
  v11 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v4;
    }
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens);
  if (!v5)
  {
    v5 = sub_29AC04C7C(&pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens);
  }

  v6 = *(v5 + 1);
  v12 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v7;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v10 = *(&v11 + i);
    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens_StaticTokenType *sub_29AC04B6C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens);
  if (!v6)
  {
    v6 = sub_29AC04C7C(&pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens);
  }

  if ((*v6 ^ *a2) > 7)
  {
    result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens);
    if (!result)
    {
      result = sub_29AC04C7C(&pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens);
    }

    if ((*(result + 1) ^ *a2) > 7)
    {
      *a3 = 0;
      a3[1] = 0;
      return result;
    }

    v7 = *(a1 + 16);
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens))
    {
      sub_29AC04C7C(&pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens);
    }

    v9 = a1 + 8;
  }

  else
  {
    v7 = *(a1 + 16);
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens))
    {
      sub_29AC04C7C(&pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens);
    }

    v9 = a1 + 8;
  }

  return sub_29AC04D08(v9, v7, a3);
}

pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens_StaticTokenType *sub_29AC04C7C(atomic_ullong *a1)
{
  result = sub_29AC04CC4();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens_StaticTokenType::~HdCollectionEmulationTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens_StaticTokenType *sub_29AC04CC4()
{
  v0 = operator new(0x48uLL);
  pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens_StaticTokenType::HdCollectionEmulationTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29AC04D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  (*(*a2 + 320))(&v5, a2, a1);
  if (sub_29A1FD484(&v5))
  {
    if ((v6 & 4) != 0)
    {
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(&v5);
    }

    sub_29AC04E80();
  }

  *a3 = 0;
  a3[1] = 0;
  return sub_29A186B14(&v5);
}

void sub_29AC04E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  sub_29A186B14(v14 - 40);
  _Unwind_Resume(a1);
}

void sub_29AC04F44(uint64_t a1)
{
  *a1 = &unk_2A207A6A0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v3 = (a1 + 56);
  sub_29A218CE8(&v3);
  v3 = (a1 + 32);
  sub_29A21859C(&v3);
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AC04FD0(uint64_t a1)
{
  *a1 = &unk_2A207A6A0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v4 = (a1 + 56);
  sub_29A218CE8(&v4);
  v4 = (a1 + 32);
  sub_29A21859C(&v4);
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
  operator delete(v3);
}

void *sub_29AC0508C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207A6F0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AC050E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC05100(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC05128(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC05158(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207A740))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AC0519C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC051C4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC051F4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207A7B8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AC05234(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A207A7E0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AC05294(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A207A7E0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void *sub_29AC052F8@<X0>(void *a1@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens);
  if (!v2)
  {
    v2 = sub_29AC04C7C(&pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens);
  }

  v3 = *(v2 + 2);
  v6 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 = v4;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v6, &v7, 1uLL);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens_StaticTokenType *sub_29AC053E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens);
  if (!result)
  {
    result = sub_29AC04C7C(&pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens);
  }

  if ((*(result + 2) ^ *a2) > 7)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v7 = *(a1 + 16);
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens))
    {
      sub_29AC04C7C(&pxrInternal__aapl__pxrReserved__::HdCollectionEmulationTokens);
    }

    return sub_29AC04D08(a1 + 8, v7, a3);
  }

  return result;
}

void sub_29AC054A0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC054C8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC054F8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207A878))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AC05538()
{
  if ((qword_2A1749250 & 7) != 0)
  {
    atomic_fetch_add_explicit((qword_2A1749250 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyTaskPrim::HdDataSourceLegacyTaskPrim(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2A207A8A0;
  sub_29A1E21F4((a1 + 8), a2);
  sub_29A1E2240((a1 + 12), a2 + 1);
  *(a1 + 16) = a3;
  *(a1 + 24) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyTaskPrim::~HdDataSourceLegacyTaskPrim(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyTaskPrim *this)
{
  *this = &unk_2A207A8A0;
  v2 = *(this + 4);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 3);
  sub_29A1DE3A4(this + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyTaskPrim::~HdDataSourceLegacyTaskPrim(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyTaskPrim::GetNames(void *a1@<X8>)
{
  v2 = a1;
  v9 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17492F8, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_2A17492F8);
    v2 = a1;
    if (v4)
    {
      v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
      if (!v5)
      {
        v5 = sub_29AC05970(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
      }

      v6 = *v5;
      v8 = v6;
      if ((v6 & 7) != 0)
      {
        v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
        {
          v8 = v7;
        }
      }

      qword_2A17492E0 = 0;
      *algn_2A17492E8 = 0;
      qword_2A17492F0 = 0;
      sub_29A12EF7C(&qword_2A17492E0, &v8, &v9, 1uLL);
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      __cxa_atexit(sub_29A3C73E0, &qword_2A17492E0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A17492F8);
      v2 = a1;
    }
  }

  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

unint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyTaskPrim::Get@<X0>(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyTaskPrim *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if (*(this + 2) || (result = sub_29B2C516C(v11, a3), (result & 1) != 0))
  {
    result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
    if (!result)
    {
      result = sub_29AC05970(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
    }

    if ((*result ^ *a2) > 7)
    {
      *a3 = 0;
      a3[1] = 0;
    }

    else
    {
      v7 = operator new(0x28uLL);
      v8 = v7;
      v10 = *(this + 1);
      v9 = *(this + 4);
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      *v7 = &unk_2A207A8E8;
      sub_29A1E21F4(v7 + 2, this + 2);
      sub_29A1E2240(v8 + 3, this + 3);
      *(v8 + 1) = v10;
      *(v8 + 4) = v9;
      result = operator new(0x20uLL);
      *result = &unk_2A207AD50;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = v8;
      *a3 = v8;
      a3[1] = result;
    }
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens_StaticTokenType *sub_29AC05970(atomic_ullong *a1)
{
  result = sub_29AC059B8();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens_StaticTokenType::~HdLegacyTaskSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens_StaticTokenType *sub_29AC059B8()
{
  v0 = operator new(0x40uLL);
  pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens_StaticTokenType::HdLegacyTaskSchemaTokens_StaticTokenType(v0);
  return v0;
}

void sub_29AC059FC(uint64_t a1)
{
  *a1 = &unk_2A207A8E8;
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AC05A6C(uint64_t a1)
{
  *a1 = &unk_2A207A8E8;
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29AC05AE0(void *a1@<X8>)
{
  v1 = a1;
  v18 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1749318, memory_order_acquire) & 1) == 0)
  {
    v3 = __cxa_guard_acquire(&qword_2A1749318);
    v1 = a1;
    if (v3)
    {
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
      if (!v4)
      {
        v4 = sub_29AC05970(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
      }

      v5 = *(v4 + 1);
      v14 = v5;
      if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v14 &= 0xFFFFFFFFFFFFFFF8;
      }

      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
      if (!v6)
      {
        v6 = sub_29AC05970(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
      }

      v7 = *(v6 + 2);
      v15 = v7;
      if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v15 &= 0xFFFFFFFFFFFFFFF8;
      }

      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
      if (!v8)
      {
        v8 = sub_29AC05970(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
      }

      v9 = *(v8 + 3);
      v16 = v9;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v16 &= 0xFFFFFFFFFFFFFFF8;
      }

      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
      if (!v10)
      {
        v10 = sub_29AC05970(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
      }

      v11 = *(v10 + 4);
      v17 = v11;
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v17 &= 0xFFFFFFFFFFFFFFF8;
      }

      qword_2A1749300 = 0;
      *algn_2A1749308 = 0;
      qword_2A1749310 = 0;
      sub_29A12EF7C(&qword_2A1749300, &v14, &v18, 4uLL);
      for (i = 24; i != -8; i -= 8)
      {
        v13 = *(&v14 + i);
        if ((v13 & 7) != 0)
        {
          atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      __cxa_atexit(sub_29A3C73E0, &qword_2A1749300, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1749318);
      v1 = a1;
    }
  }

  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void *sub_29AC05DCC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v18 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
  if (!v6)
  {
    v6 = sub_29AC05970(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) <= 7)
  {
    result = sub_29AC06198((a1 + 24), &v15);
    *a3 = v15;
    return result;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
  if (!v8)
  {
    v8 = sub_29AC05970(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
  }

  if ((*(v8 + 2) ^ *a2) <= 7)
  {
    v9 = *(a1 + 16);
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v10)
    {
      v10 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    (*(*v9 + 120))(&v16, v9, a1 + 8, v10 + 440);
    sub_29AC060D4(&v16, &v15);
    *a3 = v15;
    v15 = 0uLL;
    return sub_29A186B14(&v16);
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
  if (!v11)
  {
    v11 = sub_29AC05970(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
  }

  if ((*(v11 + 3) ^ *a2) <= 7)
  {
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v12)
    {
      v12 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    (*(**(a1 + 16) + 120))(&v16, *(a1 + 16), a1 + 8, v12 + 96);
    if (sub_29AC0660C(&v16))
    {
      if ((v17 & 4) != 0)
      {
        v13 = (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(&v16);
      }

      else
      {
        v13 = v16;
      }

      sub_29AC06694(v13, &v15);
      *a3 = v15;
      return sub_29A186B14(&v16);
    }

    goto LABEL_29;
  }

  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
  if (!result)
  {
    result = sub_29AC05970(&pxrInternal__aapl__pxrReserved__::HdLegacyTaskSchemaTokens);
  }

  if ((result[4] ^ *a2) <= 7)
  {
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v14)
    {
      v14 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    (*(**(a1 + 16) + 120))(&v16, *(a1 + 16), a1 + 8, v14 + 560);
    if (sub_29A1DE724(&v16))
    {
      if ((v17 & 4) != 0)
      {
        (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(&v16);
      }

      sub_29AC06EC4();
    }

LABEL_29:
    *a3 = 0;
    *(a3 + 8) = 0;
    return sub_29A186B14(&v16);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  return result;
}

void sub_29AC060B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC060D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6[2] = *MEMORY[0x29EDCA608];
  v4 = operator new(0x18uLL);
  sub_29A186A3C(v6, a1);
  sub_29ABFEE00(v4, v6);
  sub_29ABFEF18(a2, v4);
  return sub_29A186B14(v6);
}

void sub_29AC0616C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AC06198@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  v6 = *a1;
  v5 = a1[1];
  *v4 = &unk_2A207A930;
  v4[1] = v6;
  v4[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_29AC06500(a2, v4);
}

void sub_29AC06210(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A207A930;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AC0626C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A207A930;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

uint64_t sub_29AC062E4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
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

void *sub_29AC06300(void *a1, void *a2)
{
  a1[1] = &off_2A207A988;
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

uint64_t *sub_29AC06364(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AC06384(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A1D2264(a1);
}

void *sub_29AC064F0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = 0;
  return sub_29AC06300(a2, v2);
}

void *sub_29AC06500(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207AA60;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AC06558(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC06574(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC0659C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC065CC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207AAB0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29AC0660C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_2A2084590 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }
}

void *sub_29AC06694@<X0>(const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x70uLL);
  sub_29AC06700(v4, a1);

  return sub_29AC06DB8(a2, v4);
}

void *sub_29AC06700(void *a1, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2)
{
  *a1 = &unk_2A207AAD8;
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection((a1 + 1), a2);
  return a1;
}

void sub_29AC06758(uint64_t a1)
{
  *a1 = &unk_2A207AAD8;
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AC067AC(uint64_t a1)
{
  *a1 = &unk_2A207AAD8;
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

uint64_t *sub_29AC06830(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 104), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AC06850(atomic_uint **a1, atomic_uint **a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29AC069B8(a1);
}

unint64_t sub_29AC06868(uint64_t *a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29AC06A04(&v3, (v1 + 8), (v1 + 16), (v1 + 40), v1 + 56, v1 + 80, (v1 + 48));
  return bswap64(0x9E3779B97F4A7C55 * v3);
}

uint64_t sub_29AC069A0@<X0>(const pxrInternal__aapl__pxrReserved__::HdRprimCollection **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A207AB30;
  return sub_29AC06D50(a2, v2);
}

void sub_29AC069B8(atomic_uint **a1)
{
  v2 = *a1;
  if (v2 && atomic_fetch_add_explicit(v2 + 26, 0xFFFFFFFF, memory_order_release) == 1)
  {
    v4 = v1;
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(v2);

    operator delete(v3);
  }
}

uint64_t sub_29AC06A04(uint64_t a1, void *a2, void *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (*(a1 + 8))
  {
    v12 += (*a1 + v12 + (*a1 + v12) * (*a1 + v12)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v12;
  sub_29AC06AEC(a1, a3, a3 + 1, a3 + 2);

  return sub_29AC06AB0(a1, a4, a5, a6, a7);
}

uint64_t sub_29AC06AB0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a2;
  if (*(a1 + 8))
  {
    v5 += (*a1 + v5 + (*a1 + v5) * (*a1 + v5)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return sub_29AC06B70(a1, a3, a4, a5);
}

uint64_t sub_29AC06AEC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return sub_29AC06B28(a1, a3, a4);
}

uint64_t sub_29AC06B28(uint64_t result, void *a2, void *a3)
{
  v3 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (*(result + 8))
  {
    v3 += (*result + v3 + (*result + v3) * (*result + v3)) >> 1;
  }

  else
  {
    *(result + 8) = 1;
  }

  *result = (*a3 & 0xFFFFFFFFFFFFFFF8) + (((*a3 & 0xFFFFFFFFFFFFFFF8) + v3 + ((*a3 & 0xFFFFFFFFFFFFFFF8) + v3) * ((*a3 & 0xFFFFFFFFFFFFFFF8) + v3)) >> 1);
  return result;
}

uint64_t sub_29AC06B70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *a2;
  v9 = *(a2 + 8) - v8;
  if (v9)
  {
    v10 = v9 >> 3;
    do
    {
      --v10;
      v11 = v8 + 2;
      sub_29A1E33B4(a1, v8);
      v8 = v11;
    }

    while (v10);
  }

  return sub_29AC06BF4(a1, a3, a4);
}

uint64_t sub_29AC06BF4(uint64_t result, uint64_t a2, void *a3)
{
  v5 = result;
  v6 = *a2;
  v7 = *(a2 + 8) - v6;
  if (v7)
  {
    v8 = v7 >> 3;
    do
    {
      --v8;
      v9 = v6 + 2;
      result = sub_29A1E33B4(v5, v6);
      v6 = v9;
    }

    while (v8);
  }

  v10 = *a3 & 0xFFFFFFFFFFFFFFF8;
  if (*(v5 + 8))
  {
    v10 += (*v5 + v10 + (*v5 + v10) * (*v5 + v10)) >> 1;
  }

  else
  {
    *(v5 + 8) = 1;
  }

  *v5 = v10;
  return result;
}

const pxrInternal__aapl__pxrReserved__::HdRprimCollection *sub_29AC06C80(const pxrInternal__aapl__pxrReserved__::HdRprimCollection **a1)
{
  v2 = atomic_load(*a1 + 26);
  if (v2 != 1)
  {
    sub_29AC06CE8(*a1, &v4);
    sub_29AC069B8(a1);
    *a1 = v4;
    v4 = 0;
    sub_29AC069B8(&v4);
  }

  return *a1;
}

uint64_t sub_29AC06CE8@<X0>(const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a1@<X0>, unsigned int **a2@<X8>)
{
  v4 = operator new(0x70uLL);
  result = pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(v4, a1);
  atomic_store(0, v4 + 26);
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 26, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29AC06D50(unsigned int **a1, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2)
{
  v4 = operator new(0x70uLL);
  result = pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(v4, a2);
  atomic_store(0, v4 + 26);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 26, 1u, memory_order_relaxed);
  return result;
}

void *sub_29AC06DB8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207ABF8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AC06E10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC06E2C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC06E54(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC06E84(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207AC48))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AC06F30(void *a1)
{
  *a1 = &unk_2A207AC70;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29AC06FA0(void **a1)
{
  *a1 = &unk_2A207AC70;
  v2 = a1 + 1;
  sub_29A124AB0(&v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AC06FFC(void **a1)
{
  *a1 = &unk_2A207AC70;
  v3 = a1 + 1;
  sub_29A124AB0(&v3);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
  operator delete(v2);
}

void sub_29AC0707C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void *sub_29AC07098(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207ACD8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AC070F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC0710C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC07134(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC07164(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207AD28))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AC071A8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC071D0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC07200(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207ADA0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::EmptyLocator(pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *this)
{
  if ((atomic_load_explicit(&qword_2A17494F8, memory_order_acquire) & 1) == 0)
  {
    sub_29B2C51D8();
  }

  return &unk_2A1749520;
}

double pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *this)
{
  *&result = 0x600000000;
  *(this + 6) = 0x600000000;
  return result;
}

{
  *&result = 0x600000000;
  *(this + 6) = 0x600000000;
  return result;
}

pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  *(this + 6) = 0x600000000;
  if (*a2)
  {
    sub_29AC0A304(this, a2);
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(uint64_t this, atomic_uint **a2, atomic_uint **a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  v11 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v4;
    }
  }

  v5 = *a3;
  v12 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v6;
    }
  }

  v7 = 0;
  *(this + 48) = 0x600000002;
  do
  {
    v8 = (&v11)[v7];
    *(this + v7 * 8) = v8;
    if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *(this + v7 * 8) &= 0xFFFFFFFFFFFFFFF8;
    }

    ++v7;
  }

  while (v7 != 2);
  for (i = 1; i != -1; --i)
  {
    v10 = (&v11)[i];
    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(uint64_t this, atomic_uint **a2, atomic_uint **a3, atomic_uint **a4)
{
  v17 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  v14 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v5;
    }
  }

  v6 = *a3;
  v15 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v7;
    }
  }

  v8 = *a4;
  v16 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 = v9;
    }
  }

  v10 = 0;
  *(this + 48) = 0x600000003;
  do
  {
    v11 = (&v14)[v10];
    *(this + v10 * 8) = v11;
    if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *(this + v10 * 8) &= 0xFFFFFFFFFFFFFFF8;
    }

    ++v10;
  }

  while (v10 != 3);
  for (i = 2; i != -1; --i)
  {
    v13 = (&v14)[i];
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(uint64_t this, atomic_uint **a2, atomic_uint **a3, atomic_uint **a4, atomic_uint **a5)
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = *a2;
  v17 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v6;
    }
  }

  v7 = *a3;
  v18 = v7;
  if ((v7 & 7) != 0)
  {
    v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v8;
    }
  }

  v9 = *a4;
  v19 = v9;
  if ((v9 & 7) != 0)
  {
    v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v10;
    }
  }

  v11 = *a5;
  v20 = v11;
  if ((v11 & 7) != 0)
  {
    v12 = (v11 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v12;
    }
  }

  v13 = 0;
  *(this + 48) = 0x600000004;
  do
  {
    v14 = (&v17)[v13];
    *(this + v13 * 8) = v14;
    if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *(this + v13 * 8) &= 0xFFFFFFFFFFFFFFF8;
    }

    ++v13;
  }

  while (v13 != 4);
  for (i = 3; i != -1; --i)
  {
    v16 = (&v17)[i];
    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(uint64_t this, atomic_uint **a2, atomic_uint **a3, atomic_uint **a4, atomic_uint **a5, atomic_uint **a6)
{
  v25 = *MEMORY[0x29EDCA608];
  v6 = *a2;
  v20 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v7;
    }
  }

  v8 = *a3;
  v21 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v9;
    }
  }

  v10 = *a4;
  v22 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v11;
    }
  }

  v12 = *a5;
  v23 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v13;
    }
  }

  v14 = *a6;
  v24 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v15;
    }
  }

  v16 = 0;
  *(this + 48) = 0x600000005;
  do
  {
    v17 = (&v20)[v16];
    *(this + v16 * 8) = v17;
    if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *(this + v16 * 8) &= 0xFFFFFFFFFFFFFFF8;
    }

    ++v16;
  }

  while (v16 != 5);
  for (i = 4; i != -1; --i)
  {
    v19 = (&v20)[i];
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(uint64_t this, atomic_uint **a2, atomic_uint **a3, atomic_uint **a4, atomic_uint **a5, atomic_uint **a6, atomic_uint **a7)
{
  v29 = *MEMORY[0x29EDCA608];
  v7 = *a2;
  v23 = v7;
  if ((v7 & 7) != 0)
  {
    v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v8;
    }
  }

  v9 = *a3;
  v24 = v9;
  if ((v9 & 7) != 0)
  {
    v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v10;
    }
  }

  v11 = *a4;
  v25 = v11;
  if ((v11 & 7) != 0)
  {
    v12 = (v11 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v12;
    }
  }

  v13 = *a5;
  v26 = v13;
  if ((v13 & 7) != 0)
  {
    v14 = (v13 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v14;
    }
  }

  v15 = *a6;
  v27 = v15;
  if ((v15 & 7) != 0)
  {
    v16 = (v15 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v16;
    }
  }

  v17 = *a7;
  v28 = v17;
  if ((v17 & 7) != 0)
  {
    v18 = (v17 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 = v18;
    }
  }

  v19 = 0;
  *(this + 48) = 0x600000006;
  do
  {
    v20 = (&v23)[v19];
    *(this + v19 * 8) = v20;
    if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *(this + v19 * 8) &= 0xFFFFFFFFFFFFFFF8;
    }

    ++v19;
  }

  while (v19 != 6);
  for (i = 5; i != -1; --i)
  {
    v22 = (&v23)[i];
    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *this, unint64_t a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v4 = a2;
  *(this + 6) = 0x600000000;
  if (a2 < 7)
  {
    if (!a2)
    {
      return this;
    }
  }

  else
  {
    sub_29ABDFF98(this, a2);
  }

  do
  {
    sub_29AC0A304(this, a3);
    a3 = (a3 + 8);
    --v4;
  }

  while (v4);
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetElement(pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *this, uint64_t a2)
{
  if (*(this + 13) >= 7u)
  {
    this = *this;
  }

  return this + 8 * a2;
}

char *pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetLastElement(pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *this)
{
  v3 = *(this + 12);
  if (v3)
  {
    if (*(this + 13) >= 7u)
    {
      this = *this;
    }

    return this + 8 * v3 - 8;
  }

  else
  {
    result = &unk_2A1749500;
    if ((atomic_load_explicit(&qword_2A1749508, memory_order_acquire) & 1) == 0)
    {
      v5[1] = v1;
      v5[2] = v2;
      sub_29B2C5254(v5);
      return v5[0];
    }
  }

  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetFirstElement(_DWORD *this)
{
  if (this[12])
  {
    if (this[13] >= 7u)
    {
      return *this;
    }
  }

  else
  {
    this = &unk_2A1749510;
    if ((atomic_load_explicit(&qword_2A1749518, memory_order_acquire) & 1) == 0)
    {
      v3[1] = v1;
      v3[2] = v2;
      sub_29B2C52A4(v3);
      return v3[0];
    }
  }

  return this;
}

void *pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::ReplaceLastElement@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _DWORD *a3@<X8>)
{
  v4 = *(a1 + 48);
  result = sub_29ABD30AC(a3, a1);
  if (v4)
  {
    v6 = *result;
    if (*(result + 13) < 7u)
    {
      v6 = result;
    }

    v7 = &v6[*(result + 12) - 1];

    return sub_29A166F2C(v7, a2);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::RemoveLastElement@<X0>(pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *this@<X0>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a2@<X8>)
{
  v2 = *(this + 12);
  if (v2 > 1)
  {
    v3 = this;
    if (*(this + 13) >= 7u)
    {
      v3 = *this;
    }

    return pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(a2, v2 - 1, v3);
  }

  else
  {
    *(a2 + 6) = 0x600000000;
  }

  return this;
}

pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::RemoveFirstElement@<X0>(pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *this@<X0>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a2@<X8>)
{
  v2 = *(this + 12);
  if (v2 > 1)
  {
    if (*(this + 13) >= 7u)
    {
      this = *this;
    }

    return pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(a2, v2 - 1, (this + 8));
  }

  else
  {
    *(a2 + 6) = 0x600000000;
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *this@<X0>, atomic_uint ***a2@<X1>, _DWORD *a3@<X8>)
{
  sub_29ABD30AC(a3, this);
  v5 = *a3;
  if (a3[13] < 7u)
  {
    v5 = a3;
  }

  if (*(a2 + 13) >= 7u)
  {
    v6 = *a2;
  }

  else
  {
    v6 = a2;
  }

  sub_29AC07CB0(a3, &v5[2 * a3[12]], v6, &v6[*(a2 + 12)]);
}

void sub_29AC07CB0(uint64_t a1, char *a2, atomic_uint **a3, char *a4)
{
  v5 = a3;
  v6 = a2;
  v8 = *(a1 + 52);
  v9 = a1;
  if (v8 >= 7)
  {
    v9 = *a1;
  }

  v10 = *(a1 + 48);
  v11 = &v9[v10];
  v12 = a4 - a3;
  v13 = v10 + ((a4 - a3) >> 3);
  v14 = v8 + (v8 >> 1);
  if (v14 + 1 > v13)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = v10 + ((a4 - a3) >> 3);
  }

  if (v11 != a2)
  {
    if (v13 <= v8)
    {
      v23 = v12 >> 3;
      v24 = a1;
      if (v8 >= 7)
      {
        v24 = *a1;
      }

      v25 = &v24[v10];
      v26 = (v25 - a2) >> 3;
      if (v26 >= v23)
      {
        v27 = v12 >> 3;
      }

      else
      {
        v27 = (v25 - a2) >> 3;
      }

      v28 = &a2[8 * (v26 - v27)];
      if (v28 != v25)
      {
        v29 = &v25[8 * (v23 - v27)];
        do
        {
          *v29 = *v28;
          v29 += 8;
          *v28 = 0;
          v28 += 8;
        }

        while (v28 != v25);
      }

      if (v26 > v23)
      {
        v30 = 8 * v27 - 8 * v26;
        v31 = &a2[8 * v26 - 8 * v27 - 8];
        v32 = (v24 + 8 * v23 + 8 * v10 - 8 * v27 - 8);
        do
        {
          sub_29A166F2C(v32, v31);
          v31 -= 8;
          --v32;
          v30 += 8;
        }

        while (v30);
      }

      if (v27 >= 1)
      {
        do
        {
          sub_29A166F2C(v6++, v5++);
          --v27;
        }

        while (v27);
      }

      v33 = a1;
      if (*(a1 + 52) >= 7u)
      {
        v33 = *a1;
      }

      if (v5 != a4)
      {
        v34 = &v33[*(a1 + 48)];
        do
        {
          v35 = *v5;
          *v34 = *v5;
          if ((v35 & 7) != 0 && (atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v34 &= 0xFFFFFFFFFFFFFFF8;
          }

          ++v5;
          ++v34;
        }

        while (v5 != a4);
      }
    }

    else
    {
      if (v8 > 6)
      {
        v36 = &a2[-*a1];
        v16 = malloc(8 * v15);
        v17 = &v36[v16];
        v18 = *a1;
      }

      else
      {
        v16 = malloc(8 * v15);
        v17 = (v6 + v16 - a1);
        v18 = a1;
      }

      if (v18 != v6)
      {
        v37 = v16;
        do
        {
          *v37++ = *v18;
          *v18++ = 0;
        }

        while (v18 != v6);
      }

      if (v5 != a4)
      {
        v38 = v17;
        do
        {
          v39 = *v5;
          *v38 = *v5;
          if ((v39 & 7) != 0)
          {
            v40 = (v39 & 0xFFFFFFFFFFFFFFF8);
            if ((atomic_fetch_add_explicit(v40, 2u, memory_order_relaxed) & 1) == 0)
            {
              *v38 = v40;
            }
          }

          ++v5;
          ++v38;
        }

        while (v5 != a4);
        LODWORD(v8) = *(a1 + 52);
      }

      v41 = a1;
      if (v8 >= 7)
      {
        v41 = *a1;
      }

      v42 = *(a1 + 48);
      v43 = &v41[v42];
      if (v43 != v6)
      {
        v44 = v17 + v12;
        do
        {
          *v44 = *v6;
          v44 += 8;
          *v6++ = 0;
        }

        while (v6 != v43);
      }

      v45 = a1;
      if (v8 >= 7)
      {
        v45 = *a1;
      }

      if (v42)
      {
        v46 = 8 * v42;
        do
        {
          if ((*v45 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          ++v45;
          v46 -= 8;
        }

        while (v46);
        LODWORD(v8) = *(a1 + 52);
      }

      if (v8 >= 7)
      {
        free(*a1);
      }

      *a1 = v16;
      *(a1 + 52) = v15;
    }

LABEL_70:
    LODWORD(v20) = *(a1 + 48);
    goto LABEL_71;
  }

  if (v13 > v8)
  {
    sub_29ABDFF98(a1, v15);
    LODWORD(v8) = *(a1 + 52);
  }

  v19 = a1;
  if (v8 >= 7)
  {
    v19 = *a1;
  }

  v20 = *(a1 + 48);
  if (v5 != a4)
  {
    v21 = &v19[8 * v20];
    do
    {
      v22 = *v5;
      *v21 = *v5;
      if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v21 &= 0xFFFFFFFFFFFFFFF8;
      }

      ++v5;
      v21 += 8;
    }

    while (v5 != a4);
    goto LABEL_70;
  }

LABEL_71:
  *(a1 + 48) = v20 + (v12 >> 3);
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Prepend(atomic_uint **this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 0x600000000;
  sub_29AC0A304(a3, a2);
  v5 = *a3;
  if (*(a3 + 52) < 7u)
  {
    v5 = a3;
  }

  v6 = this;
  if (*(this + 13) >= 7u)
  {
    v6 = *this;
  }

  sub_29AC07CB0(a3, (v5 + 8 * *(a3 + 48)), v6, &v6[*(this + 12)]);
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Prepend(atomic_uint **this@<X0>, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a2@<X1>, _DWORD *a3@<X8>)
{
  sub_29ABD30AC(a3, a2);
  v5 = *a3;
  if (a3[13] < 7u)
  {
    v5 = a3;
  }

  v6 = this;
  if (*(this + 13) >= 7u)
  {
    v6 = *this;
  }

  sub_29AC07CB0(a3, &v5[2 * a3[12]], v6, &v6[*(this + 12)]);
}

BOOL pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *this, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocator **a2)
{
  v2 = *(a2 + 12);
  if (!v2)
  {
    return 1;
  }

  if (v2 > *(this + 12))
  {
    return 0;
  }

  v4 = 0;
  if (*(a2 + 13) >= 7u)
  {
    v5 = *a2;
  }

  else
  {
    v5 = a2;
  }

  v6 = 8 * v2 - 8;
  do
  {
    v7 = this;
    if (*(this + 13) >= 7u)
    {
      v7 = *this;
    }

    v8 = *(v5 + v4) ^ *(v7 + v4);
    v3 = v8 < 8;
    v9 = v8 > 7 || v6 == v4;
    v4 += 8;
  }

  while (!v9);
  return v3;
}

pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetCommonPrefix@<X0>(pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *this@<X0>, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a2@<X1>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a3@<X8>)
{
  LODWORD(v5) = *(a2 + 12);
  v7 = *(this + 12);
  v6 = *(this + 13);
  if (v5 >= v7)
  {
    v5 = v7;
  }

  else
  {
    v5 = v5;
  }

  if (v5)
  {
    v8 = a2;
    v9 = 0;
    if (*(v8 + 13) >= 7u)
    {
      v8 = *v8;
    }

    while (1)
    {
      v10 = this;
      if (v6 >= 7)
      {
        v10 = *this;
      }

      if ((*(v8 + v9) ^ *(v10 + v9)) > 7)
      {
        break;
      }

      if (v5 == ++v9)
      {
        v9 = v5;
        break;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  if (v6 >= 7)
  {
    this = *this;
  }

  return pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(a3, v9, this);
}

BOOL pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Intersects(pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *this, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a2)
{
  LODWORD(v2) = *(a2 + 12);
  v3 = *(this + 12);
  if (v3 >= v2)
  {
    v2 = v2;
  }

  else
  {
    v2 = v3;
  }

  if (v2)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 13) >= 7u)
    {
      v6 = *a2;
    }

    else
    {
      v6 = a2;
    }

    do
    {
      v7 = this;
      if (*(this + 13) >= 7u)
      {
        v7 = *this;
      }

      if ((*(v7 + v5) ^ *(v6 + v5)) >= 8)
      {
        break;
      }

      v4 = ++v5 >= v2;
    }

    while (v2 != v5);
  }

  else
  {
    return 1;
  }

  return v4;
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::ReplacePrefix(pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *this@<X0>, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocator **a2@<X1>, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a3@<X2>, _DWORD *a4@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(this, a2))
  {
    sub_29ABD30AC(a4, a3);
    v8 = *a4;
    if (a4[13] < 7u)
    {
      v8 = a4;
    }

    v9 = &v8[2 * a4[12]];
    v10 = this;
    if (*(this + 13) >= 7u)
    {
      v10 = *this;
    }

    sub_29AC07CB0(a4, v9, v10 + *(a2 + 12), v10 + 8 * *(this + 12));
  }

  else
  {

    sub_29ABD30AC(a4, this);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetString@<X0>(uint64_t this@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  if (*(this + 48))
  {
    v4 = this;
    sub_29A00B6DC(&v18);
    v5 = *(v4 + 48);
    v6 = v5 - 1;
    if (v5 != 1)
    {
      v7 = 0;
      do
      {
        v8 = v4;
        if (*(v4 + 52) >= 7u)
        {
          v8 = *v4;
        }

        v9 = *(v8 + 8 * v7) & 0xFFFFFFFFFFFFFFF8;
        if (v9)
        {
          v10 = (v9 + 16);
          if (*(v9 + 39) < 0)
          {
            v10 = *v10;
          }
        }

        else
        {
          v10 = "";
        }

        v11 = strlen(v10);
        v12 = sub_29A00911C(&v18, v10, v11);
        v13 = strlen(a2);
        sub_29A00911C(v12, a2, v13);
        ++v7;
      }

      while (v6 != v7);
    }

    v14 = v4;
    if (*(v4 + 52) >= 7u)
    {
      v14 = *v4;
    }

    v15 = *(v14 + 8 * *(v4 + 48) - 8) & 0xFFFFFFFFFFFFFFF8;
    if (v15)
    {
      v16 = (v15 + 16);
      if (*(v15 + 39) < 0)
      {
        v16 = *v16;
      }
    }

    else
    {
      v16 = "";
    }

    v17 = strlen(v16);
    sub_29A00911C(&v18, v16, v17);
    std::stringbuf::str();
    v18 = *MEMORY[0x29EDC9538];
    *(&v18 + *(v18 - 24)) = *(MEMORY[0x29EDC9538] + 24);
    v19 = MEMORY[0x29EDC9570] + 16;
    if (v21 < 0)
    {
      operator delete(v20[7].__locale_);
    }

    v19 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v20);
    std::ostream::~ostream();
    return MEMORY[0x29C2C4390](&v22);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return this;
}

void sub_29AC085B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A00B848(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(uint64_t *a1, uint64_t *a2)
{
  LODWORD(v2) = *(a1 + 12);
  v3 = *(a2 + 12);
  if (v3 >= v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  if (!v4)
  {
    LOBYTE(v2) = v2 < v3;
    return v2 & 1;
  }

  v53 = *(a1 + 12);
  v6 = 0;
  v7 = *(a1 + 13);
  if (*(a2 + 13) >= 7u)
  {
    v8 = *a2;
  }

  else
  {
    v8 = a2;
  }

  v9 = 1;
  while (1)
  {
    v10 = a1;
    if (v7 >= 7)
    {
      v10 = *a1;
    }

    v11 = v10[v6];
    v12 = v8[v6];
    if (!v11 || v12 == 0)
    {
      if (v11)
      {
        v14 = 1;
      }

      else
      {
        v14 = v12 == 0;
      }

      if (!v14)
      {
        goto LABEL_73;
      }
    }

    else if (v11 != v12)
    {
      v15 = v11 & 0xFFFFFFFFFFFFFFF8;
      v16 = v12 & 0xFFFFFFFFFFFFFFF8;
      v17 = *(v15 + 8);
      v18 = *((v12 & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v17 < v18)
      {
        goto LABEL_73;
      }

      if (v17 == v18)
      {
        v21 = *(v16 + 16);
        v19 = v16 + 16;
        v20 = v21;
        v22 = *(v19 + 23);
        v25 = *(v15 + 16);
        v23 = v15 + 16;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = *(v23 + 23);
        }

        else
        {
          v27 = *(v23 + 8);
        }

        if (v26 >= 0)
        {
          v28 = v23;
        }

        else
        {
          v28 = v24;
        }

        if (v22 >= 0)
        {
          v29 = *(v19 + 23);
        }

        else
        {
          v29 = *(v19 + 8);
        }

        if (v22 >= 0)
        {
          v30 = v19;
        }

        else
        {
          v30 = v20;
        }

        if (v29 >= v27)
        {
          v31 = v27;
        }

        else
        {
          v31 = v29;
        }

        v32 = memcmp(v28, v30, v31);
        v33 = v27 < v29;
        if (v32)
        {
          v33 = v32 < 0;
        }

        if (v33)
        {
LABEL_73:
          LOBYTE(v2) = 1;
          goto LABEL_75;
        }
      }
    }

    v34 = a1;
    if (v7 >= 7)
    {
      v34 = *a1;
    }

    v2 = v34[v6];
    if (v12)
    {
      if (v2)
      {
        break;
      }
    }

    if (!v12 && v2)
    {
      goto LABEL_74;
    }

LABEL_70:
    v9 = ++v6 < v4;
    if (v4 == v6)
    {
      goto LABEL_75;
    }
  }

  if (v12 == v2)
  {
    goto LABEL_70;
  }

  v35 = v12 & 0xFFFFFFFFFFFFFFF8;
  v2 &= 0xFFFFFFFFFFFFFFF8;
  v36 = *((v12 & 0xFFFFFFFFFFFFFFF8) + 8);
  v37 = *(v2 + 8);
  if (v36 >= v37)
  {
    if (v36 != v37)
    {
      goto LABEL_70;
    }

    v40 = *(v2 + 16);
    v38 = v2 + 16;
    v39 = v40;
    v41 = *(v38 + 23);
    v44 = *(v35 + 16);
    v42 = v35 + 16;
    v43 = v44;
    v45 = *(v42 + 23);
    if (v45 >= 0)
    {
      v46 = *(v42 + 23);
    }

    else
    {
      v46 = *(v42 + 8);
    }

    if (v45 >= 0)
    {
      v47 = v42;
    }

    else
    {
      v47 = v43;
    }

    if (v41 >= 0)
    {
      v48 = *(v38 + 23);
    }

    else
    {
      v48 = *(v38 + 8);
    }

    if (v41 >= 0)
    {
      v49 = v38;
    }

    else
    {
      v49 = v39;
    }

    if (v48 >= v46)
    {
      v50 = v46;
    }

    else
    {
      v50 = v48;
    }

    v51 = memcmp(v47, v49, v50);
    LOBYTE(v2) = v46 < v48;
    if (v51)
    {
      LOBYTE(v2) = v51 < 0;
    }

    if ((v2 & 1) == 0)
    {
      goto LABEL_70;
    }
  }

LABEL_74:
  LOBYTE(v2) = 0;
LABEL_75:
  if (!v9)
  {
    LOBYTE(v2) = v53 < v3;
  }

  return v2 & 1;
}

void *pxrInternal__aapl__pxrReserved__::operator<<(void *a1, pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *this)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetString(this, "/", __p);
  if ((v8 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = sub_29A00911C(a1, v3, v4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_29AC0886C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::_Normalize(uint64_t this)
{
  v3 = *(this + 448);
  if (v3 >= 2)
  {
    v9 = v1;
    v10 = v2;
    v4 = this;
    if (*(this + 452) >= 9u)
    {
      this = *this;
    }

    this = sub_29AC0A394(this, this + 56 * v3, &v8, 126 - 2 * __clz(v3), 1);
    v5 = *(v4 + 448);
    if (v5 >= 2)
    {
      v6 = 1;
      do
      {
        if (*(v4 + 452) > 8u)
        {
          v7 = *v4;
          this = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Intersects((*v4 + 56 * v6), (*v4 + 56 * v6 - 56));
          if (this)
          {
LABEL_10:
            this = sub_29AC08C3C(v4, v7 + 56 * v6, v7 + 56 * v6 + 56);
            v5 = *(v4 + 448);
            continue;
          }
        }

        else
        {
          this = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Intersects((v4 + 56 * v6), (v4 - 56 + 56 * v6));
          v7 = v4;
          if (this)
          {
            goto LABEL_10;
          }
        }

        ++v6;
      }

      while (v6 < v5);
    }
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::UniversalSet(pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *this)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1749328, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1749328);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::EmptyLocator(v2);
      sub_29ABD30AC(v4, &unk_2A1749520);
      v3[0] = v4;
      v3[1] = 1;
      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(dword_2A1749330, v3);
      __cxa_atexit(sub_29ABE62AC, dword_2A1749330, &dword_299FE7000);
      sub_29ABC3488(v4);
      qword_2A1749320 = dword_2A1749330;
      __cxa_guard_release(&qword_2A1749328);
    }
  }

  return qword_2A1749320;
}

void sub_29AC08A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29ABC3488(va);
  __cxa_guard_abort(&qword_2A1749328);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *this, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  sub_29ABD30AC(v4, a2);
  *(this + 56) = 0x800000001;
  sub_29ABD300C(v4, &v5, this);
  sub_29ABC3488(v4);
  return this;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(_DWORD *a1, uint64_t *a2)
{
  v3 = sub_29AC0B7F8(a1, *a2, *a2 + 56 * a2[1]);
  pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::_Normalize(v3);
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::_InsertAndDeleteSuffixes(pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *this, pxrInternal__aapl__pxrReserved__::HdDataSourceLocator **a2, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a3)
{
  v5 = sub_29AC0B890(this, *a2, a3);
  *a2 = v5;
  v6 = *(this + 113);
  v7 = *(this + 112);
  for (i = 56; ; i += 56)
  {
    v9 = this;
    if (v6 >= 9)
    {
      v9 = *this;
    }

    result = v5 + i;
    if (v5 + i == v9 + 56 * v7)
    {
      break;
    }

    result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(result, v5);
    if (!result)
    {
      break;
    }
  }

  if (i != 56)
  {
    result = sub_29AC08C3C(this, v5 + 56, v5 + i);
    *a2 = (result - 56);
  }

  return result;
}

uint64_t sub_29AC08C3C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v5 = 0x6DB6DB6DB6DB6DB7 * ((a3 - a2) >> 3);
    v6 = a1;
    if (*(a1 + 113) >= 9u)
    {
      v6 = *a1;
    }

    v7 = &v6[7 * *(a1 + 112)];
    sub_29AC0BAA0(&v11, a3, v7, a2);
    v8 = v7 - 56 * v5;
    v9 = 56 * v5;
    do
    {
      v8 = sub_29ABC3488(v8) + 56;
      v9 -= 56;
    }

    while (v9);
    *(a1 + 112) -= v5;
  }

  return a2;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *this, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a2)
{
  v4 = *(this + 112);
  if (v4)
  {
    v5 = *(this + 113);
    v6 = this;
    if (v5 >= 9)
    {
      v6 = *this;
    }

    v7 = *(this + 112);
    do
    {
      v8 = (v6 + 56 * (v7 >> 1));
      v9 = sub_29AC08E20(v8, a2);
      if (v9)
      {
        v7 += ~(v7 >> 1);
      }

      else
      {
        v7 >>= 1;
      }

      if (v9)
      {
        v6 = (v8 + 7);
      }
    }

    while (v7);
    v12 = v6;
    v10 = this;
    if (v5 >= 9)
    {
      v10 = *this;
    }

    if (v6 == (v10 + 56 * v4))
    {
      return pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::_InsertAndDeleteSuffixes(this, &v12, a2);
    }

    result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(a2, v6);
    if ((result & 1) == 0)
    {
      return pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::_InsertAndDeleteSuffixes(this, &v12, a2);
    }
  }

  else
  {

    return sub_29AC0BB18(this, a2);
  }

  return result;
}

unint64_t sub_29AC08E20(uint64_t *a1, uint64_t *a2)
{
  LODWORD(v2) = *(a1 + 12);
  if (!v2)
  {
    return v2 & 1;
  }

  v3 = *(a2 + 12);
  if (v3 >= v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  if (!v3)
  {
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  v5 = 0;
  if (*(a1 + 13) >= 7u)
  {
    v6 = *a1;
  }

  else
  {
    v6 = a1;
  }

  LODWORD(v2) = *(a2 + 13);
  if (v2 >= 7)
  {
    v7 = *a2;
  }

  else
  {
    v7 = a2;
  }

  v8 = 1;
  while (1)
  {
    v9 = v6[v5];
    v10 = v7[v5];
    if (!v9 || v10 == 0)
    {
      if (v9)
      {
        v12 = 1;
      }

      else
      {
        v12 = v10 == 0;
      }

      if (!v12)
      {
        goto LABEL_79;
      }
    }

    else if (v9 != v10)
    {
      v13 = v9 & 0xFFFFFFFFFFFFFFF8;
      v2 = v10 & 0xFFFFFFFFFFFFFFF8;
      v14 = *((v9 & 0xFFFFFFFFFFFFFFF8) + 8);
      v15 = *((v10 & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v14 < v15)
      {
        goto LABEL_79;
      }

      if (v14 == v15)
      {
        v18 = *(v2 + 16);
        v16 = v2 + 16;
        v17 = v18;
        v19 = *(v16 + 23);
        v22 = *(v13 + 16);
        v20 = v13 + 16;
        v21 = v22;
        v23 = *(v20 + 23);
        if (v23 >= 0)
        {
          v24 = *(v20 + 23);
        }

        else
        {
          v24 = *(v20 + 8);
        }

        if (v23 >= 0)
        {
          v25 = v20;
        }

        else
        {
          v25 = v21;
        }

        if (v19 >= 0)
        {
          v26 = *(v16 + 23);
        }

        else
        {
          v26 = *(v16 + 8);
        }

        if (v19 >= 0)
        {
          v27 = v16;
        }

        else
        {
          v27 = v17;
        }

        if (v26 >= v24)
        {
          v28 = v24;
        }

        else
        {
          v28 = v26;
        }

        v29 = memcmp(v25, v27, v28);
        LOBYTE(v2) = v24 < v26;
        if (v29)
        {
          LOBYTE(v2) = v29 < 0;
        }

        if (v2)
        {
LABEL_79:
          LOBYTE(v2) = 1;
          goto LABEL_81;
        }
      }
    }

    if (!v10 || v9 == 0)
    {
      break;
    }

    if (v10 != v9)
    {
      v32 = v10 & 0xFFFFFFFFFFFFFFF8;
      v2 = v9 & 0xFFFFFFFFFFFFFFF8;
      v33 = *((v10 & 0xFFFFFFFFFFFFFFF8) + 8);
      v34 = *((v9 & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v33 < v34)
      {
        goto LABEL_80;
      }

      if (v33 == v34)
      {
        v37 = *(v2 + 16);
        v35 = v2 + 16;
        v36 = v37;
        v38 = *(v35 + 23);
        v41 = *(v32 + 16);
        v39 = v32 + 16;
        v40 = v41;
        v42 = *(v39 + 23);
        v43 = v42 >= 0 ? *(v39 + 23) : *(v39 + 8);
        v44 = (v42 >= 0 ? v39 : v40);
        v45 = v38 >= 0 ? *(v35 + 23) : *(v35 + 8);
        v46 = (v38 >= 0 ? v35 : v36);
        v47 = v45 >= v43 ? v43 : v45;
        v48 = memcmp(v44, v46, v47);
        LOBYTE(v2) = v43 < v45;
        if (v48)
        {
          LOBYTE(v2) = v48 < 0;
        }

        if (v2)
        {
          goto LABEL_80;
        }
      }
    }

LABEL_76:
    v8 = ++v5 < v4;
    if (v4 == v5)
    {
      goto LABEL_81;
    }
  }

  if (v9)
  {
    v31 = v10 == 0;
  }

  else
  {
    v31 = 0;
  }

  if (!v31)
  {
    goto LABEL_76;
  }

LABEL_80:
  LOBYTE(v2) = 0;
LABEL_81:
  LOBYTE(v2) = v8 & v2;
  return v2 & 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(uint64_t this, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a2)
{
  v16 = *(a2 + 112);
  if (v16)
  {
    v3 = this;
    if (*(this + 448))
    {
      v4 = this;
      if (*(this + 452) >= 9u)
      {
        v4 = *this;
      }

      v17 = v4;
      v5 = *(a2 + 113);
      v6 = v5 < 9;
      v7 = *a2;
      if (v5 >= 9)
      {
        v8 = *a2;
      }

      else
      {
        v8 = a2;
      }

      while (1)
      {
        v9 = *(v3 + 113);
        v10 = *(v3 + 112);
        for (i = v17; ; i += 7)
        {
          v12 = v3;
          if (v9 >= 9)
          {
            v12 = *v3;
          }

          if (i == (v12 + 56 * v10) || !sub_29AC08E20(i, v8))
          {
            break;
          }
        }

        v17 = i;
        v13 = v3;
        if (v9 >= 9)
        {
          v13 = *v3;
        }

        if (i == (v13 + 56 * v10))
        {
          break;
        }

        this = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(v8, i);
        if ((this & 1) == 0)
        {
          this = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::_InsertAndDeleteSuffixes(v3, &v17, v8);
          v5 = *(a2 + 113);
          v7 = *a2;
          v16 = *(a2 + 112);
        }

        v8 += 7;
        v6 = v5 < 9;
        if (v5 >= 9)
        {
          v14 = v7;
        }

        else
        {
          v14 = a2;
        }

        if (v8 == (v14 + 56 * v16))
        {
          return this;
        }
      }

      if (v6)
      {
        v15 = a2;
      }

      else
      {
        v15 = v7;
      }

      return sub_29AC091D4(v3, i, v8, v15 + 56 * v16);
    }

    else if (this != a2)
    {

      sub_29AC0BC18();
    }
  }

  return this;
}

_DWORD *sub_29AC091D4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v8 = *(a1 + 452);
  v9 = a1;
  if (v8 >= 9)
  {
    v9 = *a1;
  }

  v10 = *(a1 + 448);
  v11 = 0x6DB6DB6DB6DB6DB7 * ((a4 - a3) >> 3);
  v12 = v11 + v10;
  v13 = v8 + (v8 >> 1);
  if (v13 + 1 > v11 + v10)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = v11 + v10;
  }

  if ((v9 + 56 * v10) == a2)
  {
    if (v12 > v8)
    {
      sub_29AC0BB90(a1, v14);
    }

    v18 = a1;
    if (v8 >= 9)
    {
      v18 = *a1;
    }

    v19 = (v18 + 56 * *(a1 + 448));
  }

  else
  {
    if (v12 > v8)
    {
      if (v8 > 8)
      {
        v30 = &a2[-*a1];
        v15 = malloc(56 * v14);
        v16 = &v30[v15];
        v17 = *a1;
      }

      else
      {
        v15 = malloc(56 * v14);
        v16 = &v6[v15 - a1];
        v17 = a1;
      }

      sub_29ABDE7B4(v17, v6, v15);
      sub_29ABD300C(v5, a4, v16);
      v31 = a1;
      if (*(a1 + 452) >= 9u)
      {
        v31 = *a1;
      }

      sub_29ABDE7B4(v6, v31 + 56 * *(a1 + 448), &v16[a4 - v5]);
      pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::_Destruct();
    }

    v20 = a1;
    if (v8 >= 9)
    {
      v20 = *a1;
    }

    v21 = 0x6DB6DB6DB6DB6DB7 * ((v20 + 56 * v10 - a2) >> 3);
    if (v21 >= v11)
    {
      v22 = 0x6DB6DB6DB6DB6DB7 * ((a4 - a3) >> 3);
    }

    else
    {
      v22 = 0x6DB6DB6DB6DB6DB7 * ((v20 + 56 * v10 - a2) >> 3);
    }

    v23 = &a2[56 * (v21 - v22)];
    v24 = a1;
    if (v8 >= 9)
    {
      v24 = *a1;
    }

    v25 = v24 + 56 * v10;
    v26 = (v25 + 56 * (v11 - v22));
    sub_29ABDE7B4(v23, v25, v26);
    sub_29AC0BCA8(&v32, v6, v23, v26);
    if (v22 >= 1)
    {
      do
      {
        if (v5 != v6)
        {
          if (*(v5 + 52) >= 7u)
          {
            v27 = *v5;
          }

          else
          {
            v27 = v5;
          }

          sub_29ABDFEA4(v6, v27, &v27[8 * *(v5 + 48)]);
        }

        v5 += 56;
        v6 += 56;
        --v22;
      }

      while (v22);
    }

    v28 = a1;
    if (*(a1 + 452) >= 9u)
    {
      v28 = *a1;
    }

    v19 = (v28 + 56 * *(a1 + 448));
  }

  result = sub_29ABD300C(v5, a4, v19);
  *(a1 + 448) += v11;
  return result;
}

unsigned int *pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(unsigned int *this, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a2)
{
  v3 = this;
  v4 = this[112];
  if (v4)
  {
    if (v4 + 5 < *(a2 + 112))
    {
      sub_29AC094F8(this, a2);
    }

    return pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(v3, a2);
  }

  else if (this != a2)
  {

    return sub_29AC094F8(this, a2);
  }

  return this;
}

uint64_t sub_29AC094F8(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 452);
  if (*(result + 452) > 8u)
  {
    if (v3 >= 9)
    {
      v25 = *result;
      *result = *a2;
      *a2 = v25;
      LODWORD(v25) = *(result + 448);
      *(result + 448) = *(a2 + 448);
      *(a2 + 448) = v25;
      LODWORD(v25) = *(result + 452);
      *(result + 452) = *(a2 + 452);
      *(a2 + 452) = v25;
      return result;
    }

    v15 = a2;
  }

  else
  {
    if (v3 <= 8)
    {
      v4 = *(result + 448);
      v5 = *(a2 + 448);
      if (v4 >= v5)
      {
        v6 = a2;
      }

      else
      {
        v6 = result;
      }

      if (v4 < v5)
      {
        v2 = a2;
      }

      v7 = v6;
      if (*(v6 + 452) >= 9u)
      {
        v7 = *v6;
      }

      v8 = v2;
      if (*(v2 + 452) >= 9u)
      {
        v8 = *v2;
      }

      result = sub_29AC0BD28(v7, v7 + 56 * *(v6 + 448), v8);
      v9 = *(v6 + 448);
      LODWORD(v10) = *(v2 + 448);
      if (v9 < v10)
      {
        v11 = 56 * v9;
        do
        {
          v12 = v6;
          if (*(v6 + 452) >= 9u)
          {
            v12 = *v6;
          }

          v13 = v2;
          if (*(v2 + 452) >= 9u)
          {
            v13 = *v2;
          }

          sub_29ABD30AC((v12 + v11), v13 + v11);
          v14 = v2;
          if (*(v2 + 452) >= 9u)
          {
            v14 = *v2;
          }

          result = sub_29ABC3488(v14 + v11);
          ++v9;
          v10 = *(v2 + 448);
          v11 += 56;
        }

        while (v9 < v10);
        LODWORD(v9) = *(v6 + 448);
      }

      *(v6 + 448) = v10;
      *(v2 + 448) = v9;
      return result;
    }

    v15 = result;
    v2 = a2;
  }

  v16 = *v2;
  LODWORD(v17) = *(v15 + 448);
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    v20 = v2;
    do
    {
      v21 = v15;
      if (*(v15 + 452) >= 9u)
      {
        v21 = *v15;
      }

      sub_29ABD30AC(v20, v21 + v18);
      v22 = v15;
      if (*(v15 + 452) >= 9u)
      {
        v22 = *v15;
      }

      result = sub_29ABC3488(v22 + v18);
      ++v19;
      v17 = *(v15 + 448);
      v20 += 14;
      v18 += 56;
    }

    while (v19 < v17);
  }

  *v15 = v16;
  v23 = *(v2 + 448);
  *(v2 + 448) = v17;
  *(v15 + 448) = v23;
  v24 = *(v2 + 452);
  *(v2 + 452) = *(v15 + 452);
  *(v15 + 452) = v24;
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::append(pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *this, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a2)
{
  v4 = *(this + 112);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = this;
  if (*(this + 113) >= 9u)
  {
    v5 = *this;
  }

  if (!sub_29AC08E20(v5 + 7 * v4 - 7, a2))
  {

    return pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(this, a2);
  }

  else
  {
LABEL_5:

    return sub_29AC0BB18(this, a2);
  }
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::begin(_DWORD *this)
{
  if (this[113] >= 9u)
  {
    return *this;
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::end(pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *this)
{
  v1 = this;
  if (*(this + 113) >= 9u)
  {
    v1 = *this;
  }

  return v1 + 56 * *(this + 112);
}

pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::_FirstIntersection(pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *this, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a2)
{
  v3 = this;
  v4 = *(this + 112);
  v5 = *(this + 113);
  v6 = this;
  if (v4 <= 4)
  {
    if (v5 >= 9)
    {
      v6 = *this;
    }

    v7 = (this + 56 * v4);
    while (1)
    {
      if (v5 > 8)
      {
        if (v6 == (*v3 + 56 * v4))
        {
          v3 = *v3;
          return (v3 + 56 * v4);
        }
      }

      else if (v6 == v7)
      {
        return (v3 + 56 * v4);
      }

      if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Intersects(v6, a2))
      {
        return v6;
      }

      v6 = (v6 + 56);
    }
  }

  if (v5 >= 9)
  {
    v6 = *this;
  }

  v8 = *(this + 112);
  do
  {
    v9 = (v6 + 56 * (v8 >> 1));
    v10 = sub_29AC08E20(v9, a2);
    if (v10)
    {
      v8 += ~(v8 >> 1);
    }

    else
    {
      v8 >>= 1;
    }

    if (v10)
    {
      v6 = (v9 + 7);
    }
  }

  while (v8);
  v11 = v3;
  if (v5 >= 9)
  {
    v11 = *v3;
  }

  if (v6 == (v11 + 56 * v4) || !pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(a2, v6) && !pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(v6, a2))
  {
    if (v5 >= 9)
    {
      v3 = *v3;
    }

    return (v3 + 56 * v4);
  }

  return v6;
}

BOOL pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects(pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *this, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a2)
{
  Intersection = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::_FirstIntersection(this, a2);
  v4 = this;
  if (*(this + 113) >= 9u)
  {
    v4 = *this;
  }

  return Intersection != (v4 + 56 * *(this + 112));
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects(pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *this, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet **a2)
{
  v2 = this;
  v3 = *(this + 112);
  v4 = *(a2 + 112);
  v5 = *(this + 113);
  if (v4 * v3 <= 8)
  {
    if (v5 >= 9)
    {
      v2 = *this;
    }

    if (v3)
    {
      v6 = (v2 + 56 * v3);
      if (*(a2 + 113) >= 9u)
      {
        v7 = *a2;
      }

      else
      {
        v7 = a2;
      }

      while (1)
      {
        v8 = 56 * v4;
        v9 = v7;
        if (v4)
        {
          break;
        }

LABEL_11:
        result = 0;
        v2 = (v2 + 56);
        if (v2 == v6)
        {
          return result;
        }
      }

      while (!pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Intersects(v2, v9))
      {
        v9 = (v9 + 56);
        v8 -= 56;
        if (!v8)
        {
          goto LABEL_11;
        }
      }

      return 1;
    }

    return 0;
  }

  v11 = this;
  if (v5 >= 9)
  {
    v11 = *this;
  }

  if (*(a2 + 113) >= 9u)
  {
    v12 = *a2;
  }

  else
  {
    v12 = a2;
  }

  if (!v4)
  {
    return 0;
  }

  v13 = &v12[7 * v4];
  while (1)
  {
    while (1)
    {
      v14 = v2;
      if (v5 >= 9)
      {
        v14 = *v2;
      }

      if (v11 == (v14 + 56 * v3) || !sub_29AC08E20(v11, v12))
      {
        break;
      }

      v11 += 7;
    }

    v15 = v2;
    if (v5 >= 9)
    {
      v15 = *v2;
    }

    if (v11 == (v15 + 56 * v3))
    {
      break;
    }

    if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(v12, v11) || pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(v11, v12))
    {
      v17 = 1;
      v16 = 1;
      return v17 & v16;
    }

    v12 += 7;
    if (v12 == v13)
    {
      v17 = 0;
      return v17 & v16;
    }
  }

  v16 = 0;
  v17 = 1;
  return v17 & v16;
}

BOOL pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Contains(pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *this, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a2)
{
  v3 = this;
  v4 = *(this + 112);
  v5 = *(this + 113);
  if (v4 <= 4)
  {
    if (v5 >= 9)
    {
      v3 = *this;
    }

    if (v4)
    {
      v6 = 56 * v4 - 56;
      do
      {
        result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(a2, v3);
        if (result)
        {
          break;
        }

        v3 = (v3 + 56);
        v8 = v6;
        v6 -= 56;
      }

      while (v8);
      return result;
    }

    return 0;
  }

  v9 = this;
  if (v5 >= 9)
  {
    v9 = *this;
  }

  v10 = *(this + 112);
  do
  {
    v11 = &v9[7 * (v10 >> 1)];
    v12 = sub_29AC08E20(v11, a2);
    if (v12)
    {
      v10 += ~(v10 >> 1);
    }

    else
    {
      v10 >>= 1;
    }

    if (v12)
    {
      v9 = (v11 + 7);
    }
  }

  while (v10);
  if (v5 >= 9)
  {
    v3 = *v3;
  }

  if (v9 == (v3 + 56 * v4))
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(a2, v9);
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::ReplacePrefix@<X0>(pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *this@<X0>, _DWORD *a2@<X8>)
{
  if (*(this + 112))
  {
    pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::TfToken,6u>::operator==();
  }

  return sub_29ABD2F88(a2, this);
}

const pxrInternal__aapl__pxrReserved__::HdDataSourceLocator **pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::IntersectionIterator::operator*(uint64_t a1)
{
  if ((*a1 & 1) == 0)
  {
    return *(a1 + 8);
  }

  v1 = a1 + 24;
  v2 = *(a1 + 8);
  if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix((a1 + 24), v2))
  {
    return v1;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::IntersectionIterator::operator++(uint64_t a1)
{
  *a1 = 0;
  v2 = *(a1 + 16);
  v3 = (*(a1 + 8) + 56);
  *(a1 + 8) = v3;
  if (v3 != v2 && !pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(v3, (a1 + 24)))
  {
    *(a1 + 8) = v2;
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::IntersectionIterator::operator++@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  sub_29ABD30AC((a2 + 24), a1 + 24);
  *a1 = 0;
  v3 = *(a1 + 16);
  result = (*(a1 + 8) + 56);
  *(a1 + 8) = result;
  if (result != v3)
  {
    result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(result, (a1 + 24));
    if ((result & 1) == 0)
    {
      *(a1 + 8) = v3;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersection@<X0>(pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *this@<X0>, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a2@<X1>, uint64_t a3@<X8>)
{
  v18 = *MEMORY[0x29EDCA608];
  Intersection = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::_FirstIntersection(this, a2);
  v7 = this;
  if (*(this + 113) >= 9u)
  {
    v7 = *this;
  }

  v8 = *(this + 112);
  LOBYTE(v15) = 1;
  *(&v15 + 1) = Intersection;
  v16 = v7 + 56 * v8;
  sub_29ABD30AC(v17, a2);
  v9 = this;
  if (*(this + 113) >= 9u)
  {
    v9 = *this;
  }

  v10 = *(this + 112);
  LOBYTE(v12) = 0;
  *(&v12 + 1) = v9 + 56 * v10;
  v13 = *(&v12 + 1);
  sub_29ABD30AC(v14, a2);
  sub_29AC0A294(a3, &v15, &v12);
  sub_29ABC3488(v14);
  return sub_29ABC3488(v17);
}

void sub_29AC0A1B8(_Unwind_Exception *a1)
{
  sub_29ABC3488(v1 + 24);
  sub_29ABC3488(v2 + 24);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC0A294(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v5 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v5;
  sub_29ABD30AC((a1 + 24), a2 + 24);
  v6 = *a3;
  *(a1 + 96) = *(a3 + 2);
  *(a1 + 80) = v6;
  sub_29ABD30AC((a1 + 104), a3 + 24);
  return a1;
}

void sub_29AC0A304(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 52);
  if (v4 == v5)
  {
    sub_29ABDFF98(a1, v4 + (v4 >> 1) + 1);
    v5 = *(a1 + 52);
  }

  v6 = a1;
  if (v5 >= 7)
  {
    v6 = *a1;
  }

  v7 = *(a1 + 48);
  v8 = *a2;
  *(v6 + 8 * v7) = *a2;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(v6 + 8 * v7) &= 0xFFFFFFFFFFFFFFF8;
  }

  ++*(a1 + 48);
}

uint64_t *sub_29AC0A394(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  v8 = result;
  v21 = a2;
  v22 = result;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = v7 - v8;
    v11 = 0x6DB6DB6DB6DB6DB7 * (v7 - v8);
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v21 = v7 - 7;
      result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v7 - 7, v8);
      if (result)
      {
        v19 = &v22;
        v20 = &v21;
        return sub_29ABDF12C(v19, v20);
      }

      return result;
    }

LABEL_10:
    if (v10 <= 1343)
    {
      if (a5)
      {
        return sub_29AC0A8D4(v8, v7);
      }

      else
      {
        return sub_29AC0AA20(v8, v7);
      }
    }

    if (i == 1)
    {
      if (v8 != v7)
      {
        return sub_29AC0B168(v8, v7, v7, a3);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = v7 - 7;
    if (v10 < 0x1C01)
    {
      sub_29AC0A6F0(&v8[7 * (v11 >> 1)], v8, v13);
    }

    else
    {
      sub_29AC0A6F0(v8, &v8[7 * (v11 >> 1)], v13);
      v14 = 56 * v12 - 56;
      sub_29AC0A6F0(v22 + 7, (v22 + v14), v21 - 14);
      sub_29AC0A6F0(v22 + 14, &v22[7 * v12 + 7], v21 - 21);
      sub_29AC0A6F0((v22 + v14), &v22[7 * v12], &v22[7 * v12 + 7]);
      v26 = &v22[7 * v12];
      sub_29ABDF5E0(&v22, &v26);
    }

    v15 = v22;
    if (a5)
    {
      v7 = v21;
    }

    else
    {
      v7 = v21;
      if ((pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v22 - 7, v22) & 1) == 0)
      {
        result = sub_29AC0AB48(v15, v21);
        v8 = result;
        goto LABEL_27;
      }
    }

    v16 = sub_29AC0AD00(v15, v7);
    if ((v17 & 1) == 0)
    {
      goto LABEL_25;
    }

    v18 = sub_29AC0AEBC(v22, v16);
    v8 = v16 + 7;
    result = sub_29AC0AEBC(v16 + 7, v7);
    if (!result)
    {
      if (v18)
      {
        v22 = v16 + 7;
        continue;
      }

LABEL_25:
      result = sub_29AC0A394(v22, v16, a3, -i, a5 & 1);
      v8 = v16 + 7;
LABEL_27:
      a5 = 0;
      v22 = v8;
      a4 = -i;
      goto LABEL_2;
    }

    if (v18)
    {
      return result;
    }

    v21 = v16;
    v8 = v22;
    v7 = v16;
  }

  if (v11 == 3)
  {
    v21 = v7 - 7;
    return sub_29AC0A6F0(v8, v8 + 7, v7 - 7);
  }

  if (v11 != 4)
  {
    if (v11 == 5)
    {
      v21 = v7 - 7;
      return sub_29AC0A7A8(v8, v8 + 7, v8 + 14, v8 + 21, v7 - 7);
    }

    goto LABEL_10;
  }

  v21 = v7 - 7;
  v25 = v8 + 7;
  v26 = v8;
  v23 = v7 - 7;
  v24 = v8 + 14;
  sub_29AC0A6F0(v8, v8 + 7, v8 + 14);
  result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v7 - 7, v8 + 14);
  if (result)
  {
    sub_29ABDF12C(&v24, &v23);
    result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v24, v8 + 7);
    if (result)
    {
      sub_29ABDF12C(&v25, &v24);
      result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v25, v8);
      if (result)
      {
        v19 = &v26;
        v20 = &v25;
        return sub_29ABDF12C(v19, v20);
      }
    }
  }

  return result;
}

uint64_t sub_29AC0A6F0(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v10 = a2;
  v11 = a1;
  v9 = a3;
  v5 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(a2, a1);
  result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(a3, a2);
  if (v5)
  {
    if (result)
    {
      v7 = &v11;
LABEL_9:
      v8 = &v9;
      goto LABEL_10;
    }

    sub_29ABDF12C(&v11, &v10);
    if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v9, v10))
    {
      v7 = &v10;
      goto LABEL_9;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    sub_29ABDF12C(&v10, &v9);
    if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v10, v11))
    {
      v7 = &v11;
      v8 = &v10;
LABEL_10:
      sub_29ABDF12C(v7, v8);
    }
  }

  return 1;
}

uint64_t sub_29AC0A7A8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v14 = a2;
  v15 = a1;
  v12 = a4;
  v13 = a3;
  v11 = a5;
  v19 = a1;
  v17 = a3;
  v18 = a2;
  v16 = a4;
  sub_29AC0A6F0(a1, a2, a3);
  if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(a4, a3))
  {
    sub_29ABDF12C(&v17, &v16);
    if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v17, a2))
    {
      sub_29ABDF12C(&v18, &v17);
      if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v18, a1))
      {
        sub_29ABDF12C(&v19, &v18);
      }
    }
  }

  result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(a5, a4);
  if (result)
  {
    sub_29ABDF12C(&v12, &v11);
    result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v12, a3);
    if (result)
    {
      sub_29ABDF12C(&v13, &v12);
      result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v13, a2);
      if (result)
      {
        sub_29ABDF12C(&v14, &v13);
        result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v14, a1);
        if (result)
        {
          return sub_29ABDF12C(&v15, &v14);
        }
      }
    }
  }

  return result;
}

uint64_t sub_29AC0A8D4(uint64_t result, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if (result != a2)
  {
    v3 = result;
    v4 = (result + 56);
    if (result + 56 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v6;
        v6 = v4;
        result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v4, v7);
        if (result)
        {
          sub_29ABD30AC(v12, v6);
          v8 = v5;
          while (1)
          {
            v9 = *(v3 + v8 + 52) >= 7u ? *(v3 + v8) : v3 + v8;
            sub_29ABDFEA4(v3 + v8 + 56, v9, &v9[8 * *(v3 + v8 + 48)]);
            if (!v8)
            {
              break;
            }

            v8 -= 56;
            if ((pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v12, (v3 + v8)) & 1) == 0)
            {
              v10 = (v3 + v8 + 56);
              goto LABEL_13;
            }
          }

          v10 = v3;
LABEL_13:
          if (v10 != v12)
          {
            if (v14 >= 7)
            {
              v11 = v12[0];
            }

            else
            {
              v11 = v12;
            }

            sub_29ABDFEA4(v10, v11, &v11[8 * v13]);
          }

          result = sub_29ABC3488(v12);
        }

        v4 = (v6 + 56);
        v5 += 56;
      }

      while (v6 + 56 != a2);
    }
  }

  return result;
}

uint64_t sub_29AC0AA20(uint64_t result, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (result != a2)
  {
    v3 = result;
    for (i = (result + 56); v3 + 56 != a2; i = (v3 + 56))
    {
      v5 = v3;
      v3 = i;
      result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(i, v5);
      if (result)
      {
        sub_29ABD30AC(v10, v3);
        v6 = v3;
        do
        {
          if (*(v6 - 1) >= 7u)
          {
            v7 = *(v6 - 7);
          }

          else
          {
            v7 = (v6 - 7);
          }

          sub_29ABDFEA4(v6, v7, &v7[8 * *(v6 - 2)]);
          v8 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v10, v6 - 14);
          v6 -= 7;
        }

        while ((v8 & 1) != 0);
        if (v6 != v10)
        {
          if (v12 >= 7)
          {
            v9 = v10[0];
          }

          else
          {
            v9 = v10;
          }

          sub_29ABDFEA4(v6, v9, &v9[8 * v11]);
        }

        result = sub_29ABC3488(v10);
      }
    }
  }

  return result;
}

uint64_t sub_29AC0AB48(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v16 = *MEMORY[0x29EDCA608];
  v11 = a2;
  sub_29ABD30AC(v13, a1);
  if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v13, v2 - 7))
  {
    v4 = a1;
    do
    {
      v4 += 7;
      v12 = v4;
    }

    while ((pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v13, v4) & 1) == 0);
  }

  else
  {
    v5 = (a1 + 56);
    do
    {
      v4 = v5;
      v12 = v5;
      if (v5 >= v2)
      {
        break;
      }

      v6 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v13, v5);
      v5 = v4 + 7;
    }

    while (!v6);
  }

  if (v4 < v2)
  {
    do
    {
      v2 -= 7;
      v11 = v2;
    }

    while ((pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v13, v2) & 1) != 0);
  }

  while (v4 < v2)
  {
    sub_29ABDF12C(&v12, &v11);
    v4 = v12;
    do
    {
      v4 += 7;
      v12 = v4;
    }

    while (!pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v13, v4));
    v2 = v11;
    do
    {
      v2 -= 7;
      v11 = v2;
    }

    while ((pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v13, v2) & 1) != 0);
  }

  if (v4 - 7 != a1)
  {
    if (*(v4 - 1) >= 7u)
    {
      v7 = *(v4 - 7);
    }

    else
    {
      v7 = (v4 - 7);
    }

    sub_29ABDFEA4(a1, v7, &v7[8 * *(v4 - 2)]);
  }

  if (v4 - 7 != v13)
  {
    if (v15 >= 7)
    {
      v8 = v13[0];
    }

    else
    {
      v8 = v13;
    }

    sub_29ABDFEA4((v4 - 7), v8, &v8[8 * v14]);
  }

  v9 = v12;
  sub_29ABC3488(v13);
  return v9;
}

uint64_t *sub_29AC0AD00(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v16 = *MEMORY[0x29EDCA608];
  v11 = a2;
  sub_29ABD30AC(v13, a1);
  v4 = 0;
  do
  {
    v4 += 56;
    v12 = (v4 + a1);
  }

  while ((pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<((v4 + a1), v13) & 1) != 0);
  v5 = a1 + v4;
  if (v4 == 56)
  {
    do
    {
      if (v5 >= v2)
      {
        break;
      }

      v2 -= 7;
      v11 = v2;
    }

    while ((pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v2, v13) & 1) == 0);
  }

  else
  {
    do
    {
      v2 -= 7;
      v11 = v2;
    }

    while (!pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v2, v13));
  }

  v6 = (a1 + v4);
  if (v5 < v2)
  {
    do
    {
      sub_29ABDF12C(&v12, &v11);
      v6 = v12;
      do
      {
        v6 += 7;
        v12 = v6;
      }

      while ((pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v6, v13) & 1) != 0);
      v7 = v11;
      do
      {
        v7 -= 7;
        v11 = v7;
      }

      while (!pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v7, v13));
    }

    while (v6 < v7);
  }

  if (v6 - 7 != a1)
  {
    if (*(v6 - 1) >= 7u)
    {
      v8 = *(v6 - 7);
    }

    else
    {
      v8 = (v6 - 7);
    }

    sub_29ABDFEA4(a1, v8, &v8[8 * *(v6 - 2)]);
  }

  if (v6 - 7 != v13)
  {
    if (v15 >= 7)
    {
      v9 = v13[0];
    }

    else
    {
      v9 = v13;
    }

    sub_29ABDFEA4((v6 - 7), v9, &v9[8 * v14]);
  }

  sub_29ABC3488(v13);
  return v6 - 7;
}

uint64_t sub_29AC0AEBC(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v22 = *MEMORY[0x29EDCA608];
  v14 = a2;
  v15 = a1;
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_29AC0A6F0(a1, a1 + 7, (a2 - 56));
        return 1;
      case 4:
        v18 = a1 + 7;
        v19[0] = a1;
        v11 = (a2 - 56);
        v16 = a2 - 56;
        v17 = a1 + 14;
        sub_29AC0A6F0(a1, a1 + 7, a1 + 14);
        if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v11, a1 + 14))
        {
          sub_29ABDF12C(&v17, &v16);
          if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v17, a1 + 7))
          {
            sub_29ABDF12C(&v18, &v17);
            if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v18, a1))
            {
              sub_29ABDF12C(v19, &v18);
            }
          }
        }

        return 1;
      case 5:
        sub_29AC0A7A8(a1, a1 + 7, a1 + 14, a1 + 21, (a2 - 56));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v14 = (a2 - 56);
      if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<((a2 - 56), a1))
      {
        sub_29ABDF12C(&v15, &v14);
      }

      return 1;
    }
  }

  v5 = a1 + 14;
  sub_29AC0A6F0(a1, a1 + 7, a1 + 14);
  v6 = a1 + 21;
  if (v6 != v2)
  {
    v7 = 0;
    do
    {
      if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v6, v5))
      {
        sub_29ABD30AC(v19, v6);
        do
        {
          v8 = v5;
          if (*(v5 + 13) >= 7u)
          {
            v9 = *v5;
          }

          else
          {
            v9 = v5;
          }

          sub_29ABDFEA4((v5 + 7), v9, &v9[8 * *(v5 + 12)]);
          if (v5 == v15)
          {
            break;
          }

          v5 -= 7;
        }

        while ((pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v19, v8 - 7) & 1) != 0);
        if (v8 != v19)
        {
          if (v21 >= 7)
          {
            v10 = v19[0];
          }

          else
          {
            v10 = v19;
          }

          sub_29ABDFEA4(v8, v10, &v10[8 * v20]);
        }

        if (++v7 == 8)
        {
          v12 = v6 + 7 == v14;
          sub_29ABC3488(v19);
          return v12;
        }

        sub_29ABC3488(v19);
        v2 = v14;
      }

      v5 = v6;
      v6 += 7;
    }

    while (v6 != v2);
  }

  return 1;
}

void sub_29AC0B148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29ABC3488(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC0B168(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v18 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = a2 - a1;
    v9 = 0x6DB6DB6DB6DB6DB7 * (a2 - a1);
    if (a2 - a1 >= 57)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[7 * v10];
      do
      {
        sub_29AC0B2C0(v7, a4, v9, v12);
        v12 -= 7;
        --v11;
      }

      while (v11);
    }

    v17 = v6;
    v13 = v6;
    if (v6 != a3)
    {
      do
      {
        if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v13, v18))
        {
          sub_29ABDF12C(&v17, &v18);
          sub_29AC0B2C0(v18, a4, v9, v18);
          v13 = v17;
        }

        v13 += 7;
        v17 = v13;
      }

      while (v13 != a3);
      v7 = v18;
      v8 = v6 - v18;
    }

    if (v8 >= 57)
    {
      v14 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 3);
      do
      {
        sub_29AC0B498(v7, v6, a4, v14);
        v6 -= 56;
      }

      while (v14-- > 2);
      return v17;
    }

    return v13;
  }

  return a3;
}

uint64_t sub_29AC0B2C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= 0x6DB6DB6DB6DB6DB7 * ((a4 - result) >> 3))
    {
      v9 = (0xDB6DB6DB6DB6DB6ELL * ((a4 - result) >> 3)) | 1;
      v10 = result + 56 * v9;
      v11 = 0xDB6DB6DB6DB6DB6ELL * ((a4 - result) >> 3) + 2;
      if (v11 < a3 && pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<((result + 56 * v9), (v10 + 56)))
      {
        v10 += 56;
        v9 = v11;
      }

      result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v10, v5);
      if ((result & 1) == 0)
      {
        sub_29ABD30AC(v17, v5);
        do
        {
          v12 = v10;
          if (v5 != v10)
          {
            if (*(v10 + 52) >= 7u)
            {
              v13 = *v10;
            }

            else
            {
              v13 = v10;
            }

            sub_29ABDFEA4(v5, v13, &v13[8 * *(v10 + 48)]);
          }

          if (v7 < v9)
          {
            break;
          }

          v14 = (2 * v9) | 1;
          v10 = v6 + 56 * v14;
          v15 = 2 * v9 + 2;
          if (v15 < a3 && pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<((v6 + 56 * v14), (v10 + 56)))
          {
            v10 += 56;
            v14 = v15;
          }

          v5 = v12;
          v9 = v14;
        }

        while (!pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v10, v17));
        if (v12 != v17)
        {
          if (v19 >= 7)
          {
            v16 = v17[0];
          }

          else
          {
            v16 = v17;
          }

          sub_29ABDFEA4(v12, v16, &v16[8 * v18]);
        }

        return sub_29ABC3488(v17);
      }
    }
  }

  return result;
}