void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_CountAllInstancesToDraw(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v2 = 0u;
  v3 = 0u;
  v4 = 1065353216;
  pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_CountAllInstancesToDrawImpl(this, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsInstanceTransformVarying(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v3 = this;
  sub_29B002198(&v4, 0, 0.0, 0.5);
  sub_29AFF76C0(v3, a2);
}

void sub_29AFF6A2C(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1 + 24;
  sub_29B0023C8((v2 - 40));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInstanceMapVariability(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, uint64_t a3)
{
  v5 = a3 + 88;
  sub_29B002198(v6, 0, 0.0, 0.5);
  v6[10] = a1;
  v6[11] = v5;
  sub_29B0003AC(a1, a2);
}

void sub_29AFF6B3C(_Unwind_Exception *a1)
{
  *(v2 - 56) = v1 + 8;
  sub_29B0023C8((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_29AFF7258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29AFF7308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF744C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GatherInstancePrimvarTimeSamples(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29AFF7560(a1, a2);
}

void sub_29AFF753C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29B294B14((v17 + 40));
  _Unwind_Resume(a1);
}

void sub_29AFF7688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29AFF77E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvar(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *a4)
{
  v18[2] = *MEMORY[0x29EDCA608];
  v16[0] = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetScalarType(a4);
  DefaultValue = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDefaultValue(v16);
  sub_29A186EF4(v18, DefaultValue);
  if (sub_29A3F9C34(v18))
  {
    sub_29AFF7E24(a1, a2, a3);
  }

  if (sub_29A3FBEFC(v18))
  {
    sub_29AFF8000(a1, a2, a3);
  }

  if (sub_29AD8F100(v18))
  {
    sub_29AFF81DC(a1, a2, a3);
  }

  if (sub_29A3FC38C(v18))
  {
    sub_29AFF83B8(a1, a2, a3);
  }

  if (sub_29A76D024(v18))
  {
    sub_29AFF8594(a1, a2, a3);
  }

  if (sub_29A3FD4E0(v18))
  {
    sub_29AFF8770(a1, a2, a3);
  }

  if (sub_29A3FD314(v18))
  {
    sub_29AFF894C(a1, a2, a3);
  }

  if (sub_29A3FD158(v18))
  {
    sub_29AFF8B28(a1, a2, a3);
  }

  if (sub_29A3FCE54(v18))
  {
    sub_29AFF8D04(a1, a2, a3);
  }

  if (sub_29A3FE138(v18))
  {
    sub_29AFF8EE0(a1, a2, a3);
  }

  if (sub_29A3FDE60(v18))
  {
    sub_29AFF90BC(a1, a2, a3);
  }

  if (sub_29A3FDC80(v18))
  {
    sub_29AFF9298(a1, a2, a3);
  }

  if (sub_29A3FD868(v18))
  {
    sub_29AFF9474(a1, a2, a3);
  }

  if (sub_29A3FED30(v18))
  {
    sub_29AFF9650(a1, a2, a3);
  }

  if (sub_29A3FEA70(v18))
  {
    sub_29AFF982C(a1, a2, a3);
  }

  if (sub_29A3FE8A4(v18))
  {
    sub_29AFF9A08(a1, a2, a3);
  }

  if (sub_29A3FE4B4(v18))
  {
    sub_29AFF9BE4(a1, a2, a3);
  }

  if (sub_29A1EFCDC(v18))
  {
    sub_29AFF9DC0(a1, a2, a3);
  }

  if (sub_29A1F8DE8(v18))
  {
    sub_29AFF9F9C(a1, a2, a3);
  }

  if (sub_29A346994(v18))
  {
    sub_29AFFA178(a1, a2, a3);
  }

  if (sub_29A3F9DF4(v18))
  {
    sub_29AFFA354(a1, a2, a3);
  }

  if (sub_29AD81948(v18))
  {
    sub_29AFFA530(a1, a2, a3);
  }

  if (sub_29A293A9C(v18))
  {
    sub_29AFFA70C(a1, a2, a3);
  }

  if (sub_29AD81C64(v18))
  {
    sub_29AFFA8E8(a1, a2, a3);
  }

  if (sub_29A3F94B8(v18))
  {
    sub_29AFFAAC4(a1, a2, a3);
  }

  if (sub_29A1F9040(v18))
  {
    sub_29AFFACA0(a1, a2, a3);
  }

  if (sub_29A1EFC10(v18))
  {
    sub_29AFFAE7C(a1, a2, a3);
  }

  if (sub_29A1FA780(v18))
  {
    sub_29AFFB058(a1, a2, a3);
  }

  v16[0] = "usdImaging/instanceAdapter.cpp";
  v16[1] = "_ComputeInheritedPrimvar";
  v16[2] = 1113;
  v16[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvar(const UsdPrim &, const TfToken &, const SdfValueTypeName &, VtValue *, UsdTimeCode) const";
  v17 = 0;
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(a4, &v15);
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

  v13 = *a3 & 0xFFFFFFFFFFFFFFF8;
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

  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v16, "Native instancing: unrecognized inherited primvar type '%s' for primvar '%s'", v10, v12, v14);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A186B14(v18);
  return 0;
}

void sub_29AFF7DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if ((a5 & 7) != 0)
  {
    atomic_fetch_add_explicit((a5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29AFF7E24(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B006970(a1, a2);
}

void sub_29AFF7FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF8000(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B00753C(a1, a2);
}

void sub_29AFF81B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF81DC(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B008158(a1, a2);
}

void sub_29AFF838C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF83B8(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B008F10(a1, a2);
}

void sub_29AFF8568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF8594(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B009B34(a1, a2);
}

void sub_29AFF8744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF8770(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B00A728(a1, a2);
}

void sub_29AFF8920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF894C(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B00B2F4(a1, a2);
}

void sub_29AFF8AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF8B28(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B00BEC0(a1, a2);
}

void sub_29AFF8CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF8D04(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B00CA8C(a1, a2);
}

void sub_29AFF8EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF8EE0(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B00D658(a1, a2);
}

void sub_29AFF9090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF90BC(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B00E244(a1, a2);
}

void sub_29AFF926C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF9298(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B00EE30(a1, a2);
}

void sub_29AFF9448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF9474(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B00FA1C(a1, a2);
}

void sub_29AFF9624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF9650(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B01069C(a1, a2);
}

void sub_29AFF9800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF982C(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B011278(a1, a2);
}

void sub_29AFF99DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF9A08(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B011E44(a1, a2);
}

void sub_29AFF9BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF9BE4(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B012A10(a1, a2);
}

void sub_29AFF9D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF9DC0(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B013670(a1, a2);
}

void sub_29AFF9F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF9F9C(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B014368(a1, a2);
}

void sub_29AFFA14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFFA178(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B015060(a1, a2);
}

void sub_29AFFA328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFFA354(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B015C30(a1, a2);
}

void sub_29AFFA504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFFA530(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B016800(a1, a2);
}

void sub_29AFFA6E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFFA70C(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B0174B0(a1, a2);
}

void sub_29AFFA8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFFA8E8(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B018078(a1, a2);
}

void sub_29AFFAA98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFFAAC4(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B018D28(a1, a2);
}

void sub_29AFFAC74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFFACA0(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B0198F0(a1, a2);
}

void sub_29AFFAE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFFAE7C(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B01A4B8(a1, a2);
}

void sub_29AFFB02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFFB058(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  sub_29B01B030(a1, a2);
}

void sub_29AFFB208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFFB35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (v4)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5 == 0;
    }

    if (v7)
    {
      goto LABEL_34;
    }

    return 1;
  }

  if (v4 != v5)
  {
    v8 = v4 & 0xFFFFFFFFFFFFFFF8;
    v9 = v5 & 0xFFFFFFFFFFFFFFF8;
    v10 = *((v4 & 0xFFFFFFFFFFFFFFF8) + 8);
    v11 = *((v5 & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v10 < v11)
    {
      return 1;
    }

    if (v10 == v11)
    {
      v15 = *(v9 + 16);
      v13 = v9 + 16;
      v14 = v15;
      v16 = *(v13 + 23);
      v19 = *(v8 + 16);
      v17 = v8 + 16;
      v18 = v19;
      v20 = *(v17 + 23);
      if (v20 >= 0)
      {
        v21 = *(v17 + 23);
      }

      else
      {
        v21 = *(v17 + 8);
      }

      if (v20 >= 0)
      {
        v22 = v17;
      }

      else
      {
        v22 = v18;
      }

      if (v16 >= 0)
      {
        v23 = *(v13 + 23);
      }

      else
      {
        v23 = *(v13 + 8);
      }

      if (v16 >= 0)
      {
        v24 = v13;
      }

      else
      {
        v24 = v14;
      }

      if (v23 >= v21)
      {
        v25 = v21;
      }

      else
      {
        v25 = v23;
      }

      v26 = memcmp(v22, v24, v25);
      v27 = v21 < v23;
      if (v26)
      {
        v27 = v26 < 0;
      }

      if (v27)
      {
        return 1;
      }
    }
  }

LABEL_34:
  if (v4)
  {
    v28 = v5 == 0;
  }

  else
  {
    v28 = 1;
  }

  if (v28)
  {
    if (!v4 || v5)
    {
      goto LABEL_64;
    }

    return 0;
  }

  if (v5 != v4)
  {
    v29 = v5 & 0xFFFFFFFFFFFFFFF8;
    v30 = v4 & 0xFFFFFFFFFFFFFFF8;
    v31 = *((v5 & 0xFFFFFFFFFFFFFFF8) + 8);
    v32 = *((v4 & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v31 < v32)
    {
      return 0;
    }

    if (v31 == v32)
    {
      v35 = *(v30 + 16);
      v33 = v30 + 16;
      v34 = v35;
      v36 = *(v33 + 23);
      v39 = *(v29 + 16);
      v37 = v29 + 16;
      v38 = v39;
      v40 = *(v37 + 23);
      if (v40 >= 0)
      {
        v41 = *(v37 + 23);
      }

      else
      {
        v41 = *(v37 + 8);
      }

      if (v40 >= 0)
      {
        v42 = v37;
      }

      else
      {
        v42 = v38;
      }

      if (v36 >= 0)
      {
        v43 = *(v33 + 23);
      }

      else
      {
        v43 = *(v33 + 8);
      }

      if (v36 >= 0)
      {
        v44 = v33;
      }

      else
      {
        v44 = v34;
      }

      if (v43 >= v41)
      {
        v45 = v41;
      }

      else
      {
        v45 = v43;
      }

      v46 = memcmp(v42, v44, v45);
      v47 = v41 < v43;
      if (v46)
      {
        v47 = v46 < 0;
      }

      if (v47)
      {
        return 0;
      }
    }
  }

LABEL_64:
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken((a1 + 1), &v70);
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken((a2 + 1), &v69);
  v49 = v69;
  v48 = v70;
  if (v70 && v69)
  {
    if (v70 == v69)
    {
      goto LABEL_94;
    }

    v50 = v70 & 0xFFFFFFFFFFFFFFF8;
    v51 = v69 & 0xFFFFFFFFFFFFFFF8;
    v52 = *((v70 & 0xFFFFFFFFFFFFFFF8) + 8);
    v53 = *((v69 & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v52 < v53)
    {
      result = 1;
      goto LABEL_95;
    }

    if (v52 != v53)
    {
LABEL_94:
      result = 0;
      goto LABEL_95;
    }

    v57 = *(v51 + 16);
    v55 = v51 + 16;
    v56 = v57;
    v58 = *(v55 + 23);
    v61 = *(v50 + 16);
    v59 = v50 + 16;
    v60 = v61;
    v62 = *(v59 + 23);
    if (v62 >= 0)
    {
      v63 = *(v59 + 23);
    }

    else
    {
      v63 = *(v59 + 8);
    }

    if (v62 >= 0)
    {
      v64 = v59;
    }

    else
    {
      v64 = v60;
    }

    if (v58 >= 0)
    {
      v65 = *(v55 + 23);
    }

    else
    {
      v65 = *(v55 + 8);
    }

    if (v58 >= 0)
    {
      v66 = v55;
    }

    else
    {
      v66 = v56;
    }

    if (v65 >= v63)
    {
      v67 = v63;
    }

    else
    {
      v67 = v65;
    }

    v68 = memcmp(v64, v66, v67);
    if (v68)
    {
      result = v68 < 0;
    }

    else
    {
      result = v63 < v65;
    }
  }

  else
  {
    if (v70)
    {
      v54 = 1;
    }

    else
    {
      v54 = v69 == 0;
    }

    result = !v54;
  }

LABEL_95:
  if ((v49 & 7) != 0)
  {
    atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    v48 = v70;
  }

  if ((v48 & 7) != 0)
  {
    atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::UpdateForTime(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t a4, double a5)
{
  v30 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimvarDescCache(a1);
  if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(a1, a2, a3))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v18);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v19);
  v20 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
  v24 = 0u;
  v23 = 0u;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v17);
  ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(a1, &v17, a3, &v18);
  if (*(ProtoPrim + 1) || (v25 = "usdImaging/instanceAdapter.cpp", v26 = "UpdateForTime", v27 = 1212, v28 = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::UpdateForTime(const UsdPrim &, const SdfPath &, UsdTimeCode, HdDirtyBits, const UsdImagingInstancerContext *) const", v29 = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3), v16 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v14, v15, Text), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v25, "proto.adapter", v16) & 1) != 0))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, ProtoPrim, &v25);
    (*(**(ProtoPrim + 1) + 112))(*(ProtoPrim + 1), &v25, a3, a4, &v18, a5);
    if ((v28 & 7) != 0)
    {
      atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v27 + 1);
    sub_29A1DE3A4(&v27);
    if (v26)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v26, v11);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17 + 1);
    sub_29A1DE3A4(&v17);
  }

  else
  {
    sub_29A1DCEA8(&v17);
  }

  return sub_29B0020F0(&v18);
}

void sub_29AFFB9C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(this, a2, a3))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v23);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v24);
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v26);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v27);
    v28 = 0u;
    v29 = 0u;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v21);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(this, &v21, a3, &v23);
    if (*(ProtoPrim + 1))
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(this, ProtoPrim, &v16);
      v10 = (*(**(ProtoPrim + 1) + 128))(*(ProtoPrim + 1), &v16, a3, a4);
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
      sub_29A1DE3A4(&v18);
      if (v17)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17, v11);
      }
    }

    else
    {
      v10 = 0;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
    sub_29A1DE3A4(&v21);
    sub_29B0020F0(&v23);
  }

  else
  {
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v12)
    {
      v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    if ((*(v12 + 114) ^ *a4) >= 8)
    {
      if (pxrInternal__aapl__pxrReserved__::UsdGeomXformable::IsTransformationAffectedByAttrNamed(a4, v8))
      {
        return 64;
      }

      else
      {
        v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v15)
        {
          v15 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        if ((*(v15 + 158) ^ *a4) >= 8)
        {
          if (pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::CanContainPropertyName(a4, v13))
          {

            pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessPrefixedPrimvarPropertyChange(this, a2, a3, a4, 0x40u, 1);
          }

          return 0;
        }

        else
        {
          return 0x20000;
        }
      }
    }

    else
    {
      return 4294967293;
    }
  }

  return v10;
}

void sub_29AFFBCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, char a15)
{
  sub_29A57F434(&a9);
  sub_29A1DCEA8(&a13);
  sub_29B0020F0(&a15);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ResyncPath(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3, char a4)
{
  v23[0] = 0;
  v23[1] = 0;
  v21 = 0;
  v22 = v23;
  v19 = 0;
  v20 = 0;
  sub_29A1E28B4(&v19, a2);
  for (i = v20; v19 != v20; i = v20)
  {
    sub_29A1E21F4(&v17, (i - 8));
    sub_29A1E2240(&v18, (i - 4));
    v8 = v20 - 8;
    sub_29A1E230C(&v19, (v20 - 8));
    v20 = v8;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v15);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v16);
    v9 = sub_29A2F4F50(this + 9, &v17);
    if (v9)
    {
      sub_29A2258F0(&v15, v9 + 6);
      sub_29A225948(&v16, v9 + 7);
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
    sub_29A1DE3A4(&v15);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
    sub_29A1DE3A4(&v17);
  }

  v10 = v22;
  if (v22 != v23)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ResyncInstancer(this, (v10 + 28), a3, a4);
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

    while (v12 != v23);
  }

  v14 = &v19;
  sub_29A1E234C(&v14);
  sub_29A1E2AEC(&v22, v23[0]);
}

void sub_29AFFBF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, int a17, int a18, char a19, uint64_t a20, uint64_t a21, char a22, void *a23)
{
  sub_29A1DCEA8(&a15);
  sub_29A1DCEA8(&a17);
  a10 = &a19;
  sub_29A1E234C(&a10);
  sub_29A1E2AEC(&a22, a23);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ResyncInstancer(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3, char a4)
{
  v8 = sub_29A2F4F50(this + 4, a2);
  if (v8 || (sub_29B2CE300(v26) & 1) != 0)
  {
    for (i = *(v8 + 19); i; i = *i)
    {
      (*(**(i + 4) + 144))(*(i + 4), i + 2, a3);
      v10 = sub_29A2F4F50(this + 19, i + 4);
      if (v10)
      {
        sub_29AFC6A38(this + 19, v10);
      }
    }

    v11 = sub_29B0038C4(this + 14, v8 + 6);
    if (v11 != v12)
    {
      v13 = v11;
      while (v13[3] != *a2)
      {
        v13 = *v13;
        if (v13 == v12)
        {
          goto LABEL_12;
        }
      }

      sub_29AFC6A38(this + 14, v13);
    }

LABEL_12:
    if (pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsPopulated(a3, a2))
    {
      sub_29B000258(a3, a2);
    }

    v14 = &v24;
    v15 = *(v8 + 11);
    v24 = *(v8 + 10);
    v25[0] = v15;
    v16 = *(v8 + 12);
    *(v8 + 12) = 0;
    *(v8 + 11) = 0;
    v25[1] = v16;
    v17 = (v15 + 2);
    if (v16)
    {
      v14 = v17;
    }

    *v14 = v25;
    *(v8 + 10) = v8 + 22;
    sub_29B01CC5C(this + 4, v8);
    v18 = v24;
    if (v24 != v25)
    {
      do
      {
        v19 = sub_29A2F4F50(this + 9, v18 + 7);
        sub_29AFC6A38(this + 9, v19);
        v20 = *(v18 + 1);
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = *(v18 + 2);
            v22 = *v21 == v18;
            v18 = v21;
          }

          while (!v22);
        }

        v18 = v21;
      }

      while (v21 != v25);
    }

    if ((a4 & 1) != 0 && v24 != v25)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(this, (v24 + 7), &v23);
      pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v23);
    }

    sub_29A1E2AEC(&v24, v25[0]);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::ProcessPrimResync(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  if ((*(*this + 352))(this))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v6);
    pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ResyncPath(this, &v6, a3, 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
    sub_29A1DE3A4(&v6);
  }

  else
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ResyncPath(this, a2, a3, 1);
  }
}

void sub_29AFFC360(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::ProcessPrimRemoval(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  if ((*(*this + 352))(this))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v6);
    pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ResyncPath(this, &v6, a3, 0);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
    sub_29A1DE3A4(&v6);
  }

  else
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ResyncPath(this, a2, a3, 0);
  }
}

void sub_29AFFC448(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkDirty(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t a4, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a5)
{
  if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(this, a2, a3))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
  v23 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v24);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v25);
  v26 = 0u;
  v27 = 0u;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v19);
  ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(this, &v19, a3, &v21);
  v11 = ProtoPrim[1];
  if (!v11)
  {
    LOBYTE(v18) = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    v16 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v14, v15, Text, "usdImaging/instanceAdapter.cpp", "MarkDirty", 1383, "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkDirty(const UsdPrim &, const SdfPath &, HdDirtyBits, UsdImagingIndexProxy *)", v18);
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v17, "proto.adapter", v16))
    {
      goto LABEL_4;
    }

    v11 = ProtoPrim[1];
  }

  (*(*v11 + 152))(v11, a2, a3, a4, a5);
LABEL_4:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v20);
  sub_29A1DE3A4(&v19);
  return sub_29B0020F0(&v21);
}

void sub_29AFFC61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkRefineLevelDirty(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(this, a2, a3);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20);
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v23);
    v24 = 0u;
    v25 = 0u;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v17);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(this, &v17, a3, &v19);
    v10 = ProtoPrim[1];
    if (!v10)
    {
      LOBYTE(v16) = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      v14 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v12, v13, Text, "usdImaging/instanceAdapter.cpp", "MarkRefineLevelDirty", 1411, "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkRefineLevelDirty(const UsdPrim &, const SdfPath &, UsdImagingIndexProxy *)", v16);
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v15, "proto.adapter", v14))
      {
        goto LABEL_4;
      }

      v10 = ProtoPrim[1];
    }

    (*(*v10 + 160))(v10, a2, a3, a4);
LABEL_4:
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
    sub_29A1DE3A4(&v17);
    return sub_29B0020F0(&v19);
  }

  return result;
}

void sub_29AFFC7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkReprDirty(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(this, a2, a3);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20);
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v23);
    v24 = 0u;
    v25 = 0u;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v17);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(this, &v17, a3, &v19);
    v10 = ProtoPrim[1];
    if (!v10)
    {
      LOBYTE(v16) = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      v14 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v12, v13, Text, "usdImaging/instanceAdapter.cpp", "MarkReprDirty", 1431, "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkReprDirty(const UsdPrim &, const SdfPath &, UsdImagingIndexProxy *)", v16);
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v15, "proto.adapter", v14))
      {
        goto LABEL_4;
      }

      v10 = ProtoPrim[1];
    }

    (*(*v10 + 168))(v10, a2, a3, a4);
LABEL_4:
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
    sub_29A1DE3A4(&v17);
    return sub_29B0020F0(&v19);
  }

  return result;
}

void sub_29AFFC950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkCullStyleDirty(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(this, a2, a3);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20);
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v23);
    v24 = 0u;
    v25 = 0u;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v17);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(this, &v17, a3, &v19);
    v10 = ProtoPrim[1];
    if (!v10)
    {
      LOBYTE(v16) = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      v14 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v12, v13, Text, "usdImaging/instanceAdapter.cpp", "MarkCullStyleDirty", 1451, "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkCullStyleDirty(const UsdPrim &, const SdfPath &, UsdImagingIndexProxy *)", v16);
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v15, "proto.adapter", v14))
      {
        goto LABEL_4;
      }

      v10 = ProtoPrim[1];
    }

    (*(*v10 + 176))(v10, a2, a3, a4);
LABEL_4:
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
    sub_29A1DE3A4(&v17);
    return sub_29B0020F0(&v19);
  }

  return result;
}

void sub_29AFFCAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkRenderTagDirty(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(this, a2, a3);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20);
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v23);
    v24 = 0u;
    v25 = 0u;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v17);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(this, &v17, a3, &v19);
    v10 = ProtoPrim[1];
    if (!v10)
    {
      LOBYTE(v16) = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      v14 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v12, v13, Text, "usdImaging/instanceAdapter.cpp", "MarkRenderTagDirty", 1471, "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkRenderTagDirty(const UsdPrim &, const SdfPath &, UsdImagingIndexProxy *)", v16);
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v15, "proto.adapter", v14))
      {
        goto LABEL_4;
      }

      v10 = ProtoPrim[1];
    }

    (*(*v10 + 184))(v10, a2, a3, a4);
LABEL_4:
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
    sub_29A1DE3A4(&v17);
    return sub_29B0020F0(&v19);
  }

  return result;
}

void sub_29AFFCC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkTransformDirty(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(this, a2, a3))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20);
  v21 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v23);
  v24 = 0u;
  v25 = 0u;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v17);
  ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(this, &v17, a3, &v19);
  v9 = ProtoPrim[1];
  if (!v9)
  {
    LOBYTE(v16) = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    v14 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v12, v13, Text, "usdImaging/instanceAdapter.cpp", "MarkTransformDirty", 1488, "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkTransformDirty(const UsdPrim &, const SdfPath &, UsdImagingIndexProxy *)", v16);
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v15, "proto.adapter", v14))
    {
      goto LABEL_4;
    }

    v9 = ProtoPrim[1];
  }

  (*(*v9 + 192))(v9, a2, a3, a4);
LABEL_4:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
  sub_29A1DE3A4(&v17);
  return sub_29B0020F0(&v19);
}

void sub_29AFFCE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkVisibilityDirty(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(this, a2, a3))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20);
  v21 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v23);
  v24 = 0u;
  v25 = 0u;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v17);
  ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(this, &v17, a3, &v19);
  v9 = ProtoPrim[1];
  if (!v9)
  {
    LOBYTE(v16) = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    v14 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v12, v13, Text, "usdImaging/instanceAdapter.cpp", "MarkVisibilityDirty", 1515, "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::MarkVisibilityDirty(const UsdPrim &, const SdfPath &, UsdImagingIndexProxy *)", v16);
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v15, "proto.adapter", v14))
    {
      goto LABEL_4;
    }

    v9 = ProtoPrim[1];
  }

  (*(*v9 + 200))(v9, a2, a3, a4);
LABEL_4:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
  sub_29A1DE3A4(&v17);
  return sub_29B0020F0(&v19);
}

void sub_29AFFD030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetInstanceCategories(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
}

void sub_29AFFD10C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ABF5B1C(va);
  _Unwind_Resume(a1);
}

void sub_29AFFD280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetInstancerTransform@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20);
  v21 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v23);
  v24 = 0u;
  v25 = 0u;
  v18 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v18, &v19))
  {
    v10 = *(v18 + 1);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, v18, &v13);
    (*(*v10 + 256))(v10, &v13, a3, a5);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
    sub_29A1DE3A4(&v15);
    if (v14)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetRootTransform(a1, a4);
  }

  return sub_29B0020F0(&v19);
}

void sub_29AFFD410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A57F434(&a9);
  sub_29B0020F0(&a14);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, void *a4, uint64_t a5)
{
  if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(a1, a2, a3))
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v18);
  ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(a1, &v18, a3, a5);
  *a4 = ProtoPrim;
  if (ProtoPrim[1])
  {
    v10 = 1;
  }

  else
  {
    v16[0] = "usdImaging/instanceAdapter.cpp";
    v16[1] = "_GetProtoPrimForChild";
    v16[2] = 2318;
    v16[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(const UsdPrim &, const SdfPath &, const _ProtoPrim **, UsdImagingInstancerContext *) const";
    v17 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    v15 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v13, v14, Text);
    v10 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v16, "(*proto)->adapter", v15);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
  sub_29A1DE3A4(&v18);
  return v10;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetInstancerId@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, _DWORD *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v14);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v15);
  v16 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v17);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v18);
  v19 = 0u;
  v20 = 0u;
  ProtoPrimForChild = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(this, a2, a3, &v13, &v14);
  if (ProtoPrimForChild)
  {
    sub_29A1E21F4(a4, &v14);
    v9 = a4 + 1;
    v10 = &v15;
  }

  else
  {
    v11 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(ProtoPrimForChild);
    sub_29A1E21F4(a4, v11);
    v9 = a4 + 1;
    v10 = v11 + 1;
  }

  sub_29A1E2240(v9, v10);
  return sub_29B0020F0(&v14);
}

void sub_29AFFD624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29B0020F0(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetInstancerPrototypes@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, void *a4@<X8>)
{
  if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(this, a2, a3))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v23);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v24);
  v25 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v26);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v27);
  v28 = 0u;
  v29 = 0u;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v21);
  ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(this, &v21, a3, &v23);
  v9 = *(ProtoPrim + 1);
  if (!v9)
  {
    v17 = "GetInstancerPrototypes";
    v18 = 1637;
    v19 = "virtual SdfPathVector pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetInstancerPrototypes(const UsdPrim &, const SdfPath &) const";
    v20 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    v15 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v13, v14, Text, "usdImaging/instanceAdapter.cpp");
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v16, "proto.adapter", v15))
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      goto LABEL_7;
    }

    v9 = *(ProtoPrim + 1);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(this, ProtoPrim, &v16);
  (*(*v9 + 280))(v9, &v16, a3);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
  sub_29A1DE3A4(&v18);
  if (v17)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17, v10);
  }

LABEL_7:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
  sub_29A1DE3A4(&v21);
  return sub_29B0020F0(&v23);
}

void sub_29AFFD858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::SampleInstancerTransform(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, _OWORD *a6)
{
  if (!a4)
  {
    return 0;
  }

  *a5 = 0;
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetRootTransform(a1, v12);
  v7 = v12[5];
  a6[4] = v12[4];
  a6[5] = v7;
  v8 = v12[7];
  a6[6] = v12[6];
  a6[7] = v8;
  v9 = v12[1];
  *a6 = v12[0];
  a6[1] = v9;
  v10 = v12[3];
  a6[2] = v12[2];
  a6[3] = v10;
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::SampleTransform(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  if (!a4)
  {
    return 0;
  }

  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(a1, a2, a3))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v32);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v33);
    v34 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v35);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v36);
    v37 = 0u;
    v38 = 0u;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v30);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(a1, &v30, a3, &v32);
    v15 = ProtoPrim;
    v16 = *(ProtoPrim + 1);
    if (!v16)
    {
      v20 = ProtoPrim;
      v26 = "SampleTransform";
      v27 = 1697;
      v28 = "virtual size_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::SampleTransform(const UsdPrim &, const SdfPath &, UsdTimeCode, size_t, float *, GfMatrix4d *)";
      v29 = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      v24 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v22, v23, Text, "usdImaging/instanceAdapter.cpp");
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v25, "proto.adapter", v24))
      {
        v17 = 0;
LABEL_8:
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v31);
        sub_29A1DE3A4(&v30);
        sub_29B0020F0(&v32);
        return v17;
      }

      v15 = v20;
      v16 = *(v20 + 1);
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, v15, &v25);
    v17 = (*(*v16 + 384))(v16, &v25, a3, a4, a5, a6, a7);
    if ((v28 & 7) != 0)
    {
      atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v27 + 1);
    sub_29A1DE3A4(&v27);
    if (v26)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v26, v18);
    }

    goto LABEL_8;
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::SampleTransform(a1, a2, a3, a4);
}

void sub_29AFFDB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::SamplePrimvar(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate **a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v38 = *MEMORY[0x29EDCA608];
  v34 = a9;
  if (!a5)
  {
    return 0;
  }

  if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(a1, a2, a3))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetCurrentTimeSamplingInterval(a1, v31);
    memset(__p, 0, sizeof(__p));
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(&v29);
    v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    if (!v22)
    {
      v22 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    }

    if ((*(v22 + 6) ^ *a4) >= 8)
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
    }

    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    if (!v23)
    {
      v23 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    }

    if ((*(v23 + 6) ^ *a4) <= 7)
    {
      v35 = *v31;
      *v36 = v32;
      pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GatherInstanceTransformsTimeSamples(a1, a2);
    }

    v35 = *v31;
    *v36 = v32;
    pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GatherInstancePrimvarTimeSamples(a1, a2, a4);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v35);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v35 + 1);
  *(&v35 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v36);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v36[4]);
  v37 = 0u;
  *&v36[8] = 0u;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, __p);
  ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(a1, __p, a3, &v35);
  v19 = *(ProtoPrim + 1);
  if (v19)
  {
    goto LABEL_4;
  }

  v31[0] = "usdImaging/instanceAdapter.cpp";
  v31[1] = "SamplePrimvar";
  *&v32 = 1735;
  *(&v32 + 1) = "virtual size_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::SamplePrimvar(const UsdPrim &, const SdfPath &, const TfToken &, UsdTimeCode, size_t, float *, VtValue *, VtIntArray *)";
  v33 = 0;
  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
  v28 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v26, v27, Text);
  if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v31, "proto.adapter", v28))
  {
    v19 = *(ProtoPrim + 1);
LABEL_4:
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, ProtoPrim, v31);
    v20 = (*(*v19 + 288))(v19, v31, a3, a4, a5, a6, a7, a8, a9);
    if ((BYTE8(v32) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v32 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v32 + 1);
    sub_29A1DE3A4(&v32);
    if (v31[1])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v31[1], v21);
    }

    goto LABEL_8;
  }

  v20 = 0;
LABEL_8:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(__p + 1);
  sub_29A1DE3A4(__p);
  sub_29B0020F0(&v35);
  return v20;
}

void sub_29AFFE0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_29A1DCEA8(&__p);
  sub_29B0020F0(&a21);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetPurpose@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, atomic_uint **a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v18);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v19);
  v20 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v22);
  memset(&v22[1], 0, 32);
  v17 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(this, a2, a3, &v17, &v18))
  {
    v9 = *(v17 + 1);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(this, v17, &v12);
    (*(*v9 + 368))(v9, &v12, a3, &v22[3]);
    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
    sub_29A1DE3A4(&v14);
    if (v13)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13, v10);
    }
  }

  else
  {
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetPurpose(this, a2, &v12, a4);
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return sub_29B0020F0(&v18);
}

void sub_29AFFE2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A57F434(&a9);
  sub_29B0020F0(&a14);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetSubdivTags@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20);
  v21 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v23);
  v24 = 0u;
  v25 = 0u;
  v18 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v18, &v19))
  {
    v10 = *(v18 + 1);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, v18, &v13);
    (*(*v10 + 296))(v10, &v13, a3, a5);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
    sub_29A1DE3A4(&v15);
    if (v14)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetSubdivTags(a4);
  }

  return sub_29B0020F0(&v19);
}

void sub_29AFFE4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A57F434(&a9);
  sub_29B0020F0(&a14);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetTopology@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20);
  v21 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v23);
  v24 = 0u;
  v25 = 0u;
  v18 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v18, &v19))
  {
    v10 = *(v18 + 1);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, v18, &v13);
    (*(*v10 + 408))(v10, &v13, a3, a5);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
    sub_29A1DE3A4(&v15);
    if (v14)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetTopology(a4);
  }

  return sub_29B0020F0(&v19);
}

void sub_29AFFE62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A57F434(&a9);
  sub_29B0020F0(&a14);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetCullStyle(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v18);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v19);
  v20 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
  v23 = 0u;
  v24 = 0u;
  v17 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v17, &v18))
  {
    v8 = *(v17 + 1);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, v17, &v12);
    CullStyle = (*(*v8 + 400))(v8, &v12, a3, a4);
    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
    sub_29A1DE3A4(&v14);
    if (v13)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13, v10);
    }
  }

  else
  {
    CullStyle = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetCullStyle();
  }

  sub_29B0020F0(&v18);
  return CullStyle;
}

void sub_29AFFE7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A57F434(&a9);
  sub_29B0020F0(&a14);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetExtent@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20);
  v21 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v23);
  v24 = 0u;
  v25 = 0u;
  v18 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v18, &v19))
  {
    v10 = *(v18 + 1);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, v18, &v13);
    (*(*v10 + 416))(v10, &v13, a3, a5);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
    sub_29A1DE3A4(&v15);
    if (v14)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtent(a4);
  }

  return sub_29B0020F0(&v19);
}

void sub_29AFFE93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A57F434(&a9);
  sub_29B0020F0(&a14);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::IsChildPath(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if ((atomic_load_explicit(&qword_2A1753DF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753DF8))
  {
    sub_29A0CD6B0(&unk_2A1753DB8, "^proto_[^.\\/\\s]+_id\\d+$", 0);
    __cxa_atexit(sub_29A0CD654, &unk_2A1753DB8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753DF8);
  }

  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(a2);
  v4 = *(Name + 23);
  v5 = Name[1];
  if ((v4 & 0x80u) != 0)
  {
    Name = *Name;
    v4 = v5;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  *__p = 0u;
  memset(v9, 0, sizeof(v9));
  v6 = sub_29A17BEA8(Name, Name + v4, __p, &unk_2A1753DB8, 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v6;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetVisible(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v18);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v19);
  v20 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
  v23 = 0u;
  v24 = 0u;
  v17 = 0;
  if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v17, &v18))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetVisible(a4, a1, a2);
  }

  v8 = *(v17 + 1);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, v17, &v12);
  v9 = (*(*v8 + 360))(v8, &v12, a3, a4);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
  sub_29A1DE3A4(&v14);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13, v10);
  }

  sub_29B0020F0(&v18);
  return v9;
}

void sub_29AFFEBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A57F434(&a9);
  sub_29B0020F0(&a14);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetDoubleSided(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v18);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v19);
  v20 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
  v23 = 0u;
  v24 = 0u;
  v17 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v17, &v18))
  {
    v8 = *(v17 + 1);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, v17, &v12);
    DoubleSided = (*(*v8 + 424))(v8, &v12, a3, a4);
    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
    sub_29A1DE3A4(&v14);
    if (v13)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13, v10);
    }
  }

  else
  {
    DoubleSided = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetDoubleSided();
  }

  sub_29B0020F0(&v18);
  return DoubleSided;
}

void sub_29AFFED7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A57F434(&a9);
  sub_29B0020F0(&a14);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetTransform(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t a4, double a5)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20);
  v21 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v23);
  v24 = 0u;
  v25 = 0u;
  v18 = 0;
  if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v18, &v19))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetTransform(a1, a2, a3, a5);
  }

  v10 = *(v18 + 1);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, v18, &v13);
  (*(*v10 + 376))(v10, &v13, a3, a4, a5);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
  sub_29A1DE3A4(&v15);
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
  }

  return sub_29B0020F0(&v19);
}

void sub_29AFFEF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A57F434(&a9);
  sub_29B0020F0(&a14);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetMaterialId@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, _DWORD *a4@<X8>, double a5@<D0>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
  v23 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v24);
  v10 = &v25;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v25);
  v26 = 0u;
  v27 = 0u;
  v20 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v20, &v21))
  {
    v11 = *(v20 + 1);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, v20, v14);
    (*(*v11 + 432))(&v19, v11, v14, a3, a5);
    if ((v18 & 7) != 0)
    {
      atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17);
    sub_29A1DE3A4(&v16);
    if (v15)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v15, v12);
    }

    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v19))
    {
      sub_29A1E21F4(a4, &v19);
      v10 = &v19 + 1;
    }

    else
    {
      sub_29A1E21F4(a4, &v24);
    }

    sub_29A1E2240(a4 + 1, v10);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19 + 1);
    sub_29A1DE3A4(&v19);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialId(a4);
  }

  return sub_29B0020F0(&v21);
}

void sub_29AFFF0FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A57F434(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetLightParamValue@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a4@<X3>, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a5@<X8>, double a6@<D0>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
  v23 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v24);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v25);
  v26 = 0u;
  v27 = 0u;
  v20 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v20, &v21))
  {
    v12 = v20;
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, v20, &v15);
    (*(**(v12 + 1) + 344))(*(v12 + 1), &v15, a3, a4, a6);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
    sub_29A1DE3A4(&v17);
    if (v16)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v16, v13);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetLightParamValue(a1, a2, a3, a4, a5, a6);
  }

  return sub_29B0020F0(&v21);
}

void sub_29AFFF294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A57F434(&a9);
  sub_29B0020F0(&a14);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetMaterialResource@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20);
  v21 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v23);
  v24 = 0u;
  v25 = 0u;
  v18 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v18, &v19))
  {
    v10 = v18;
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, v18, &v13);
    (*(**(v10 + 1) + 440))(*(v10 + 1), &v13, a3, a5);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
    sub_29A1DE3A4(&v15);
    if (v14)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialResource(a4);
  }

  return sub_29B0020F0(&v19);
}

void sub_29AFFF420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A57F434(&a9);
  sub_29B0020F0(&a14);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetExtComputationInputs@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, void *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v17);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v18);
  v19 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v20);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v21);
  v22 = 0u;
  v23 = 0u;
  v16 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v16, &v17))
  {
    v8 = *(v16 + 1);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, v16, &v11);
    (*(*v8 + 456))(v8, &v11, a3, &v17);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
    sub_29A1DE3A4(&v13);
    if (v12)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v12, v9);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationInputs(a4);
  }

  return sub_29B0020F0(&v17);
}

void sub_29AFFF5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A57F434(&a9);
  sub_29B0020F0(&a14);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetExtComputationOutputs@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, void *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v17);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v18);
  v19 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v20);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v21);
  v22 = 0u;
  v23 = 0u;
  v16 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v16, &v17))
  {
    v8 = *(v16 + 1);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, v16, &v11);
    (*(*v8 + 464))(v8, &v11, a3, &v17);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
    sub_29A1DE3A4(&v13);
    if (v12)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v12, v9);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationOutputs(a4);
  }

  return sub_29B0020F0(&v17);
}

void sub_29AFFF720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A57F434(&a9);
  sub_29B0020F0(&a14);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetExtComputationPrimvars@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20);
  v21 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v23);
  v24 = 0u;
  v25 = 0u;
  v18 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v18, &v19))
  {
    v10 = *(v18 + 1);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, v18, &v13);
    (*(*v10 + 472))(v10, &v13, a3, a4, &v19);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
    sub_29A1DE3A4(&v15);
    if (v14)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationPrimvars(a5);
  }

  return sub_29B0020F0(&v19);
}

void sub_29AFFF8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A57F434(&a9);
  sub_29B0020F0(&a14);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetExtComputationInput@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
  v23 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v24);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v25);
  v26 = 0u;
  v27 = 0u;
  v20 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v20, &v21))
  {
    v12 = *(v20 + 1);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, v20, &v15);
    (*(*v12 + 480))(v12, &v15, a3, a4, &v21, a6);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
    sub_29A1DE3A4(&v17);
    if (v16)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v16, v13);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationInput(a5);
  }

  return sub_29B0020F0(&v21);
}

void sub_29AFFFA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A57F434(&a9);
  sub_29B0020F0(&a14);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetExtComputationKernel@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, void *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v17);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v18);
  v19 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v20);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v21);
  v22 = 0u;
  v23 = 0u;
  v16 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v16, &v17))
  {
    v8 = *(v16 + 1);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, v16, &v11);
    (*(*v8 + 496))(v8, &v11, a3, &v17);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
    sub_29A1DE3A4(&v13);
    if (v12)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v12, v9);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationKernel(a4);
  }

  return sub_29B0020F0(&v17);
}

void sub_29AFFFBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A57F434(&a9);
  sub_29B0020F0(&a14);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetInstanceIndices(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(a1, a2, a3))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v20);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v21);
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v23);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v24);
    v25 = 0u;
    v26 = 0u;
    v19 = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrimForChild(a1, a2, a3, &v19, &v20))
    {
      v12 = *(v19 + 1);
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, v19, &v14);
      (*(*v12 + 504))(v12, &v14, a3, a4, a6);
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17);
      sub_29A1DE3A4(&v16);
      if (v15)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v15, v13);
      }
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetInstanceIndices(a5);
    }

    sub_29B0020F0(&v20);
  }

  else
  {
    if (sub_29A328A44(a1 + 4, a3))
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInstanceMap(a1, a2, &v20);
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetInstanceIndices(a5);
  }
}

void sub_29AFFFDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A57F434(&a9);
  sub_29B0020F0(&a14);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::Get@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdObject *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(a1, a2, a3))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v29);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v30);
  v31 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v32);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v33);
  v35 = 0u;
  v34 = 0u;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v27);
  ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(a1, &v27, a3, &v29);
  v15 = *(ProtoPrim + 1);
  if (!v15)
  {
    v22 = "usdImaging/instanceAdapter.cpp";
    v23 = "Get";
    v24 = 2135;
    v25 = "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::Get(const UsdPrim &, const SdfPath &, const TfToken &, UsdTimeCode, VtIntArray *) const";
    v26 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    v21 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v19, v20, Text);
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v22, "proto.adapter", v21))
    {
      *(a6 + 8) = 0;
      goto LABEL_7;
    }

    v15 = *(ProtoPrim + 1);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, ProtoPrim, &v22);
  (*(*v15 + 392))(v15, &v22, a3, a4, a5, a7);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24 + 1);
  sub_29A1DE3A4(&v24);
  if (v23)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v23, v16);
  }

LABEL_7:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v28);
  sub_29A1DE3A4(&v27);
  return sub_29B0020F0(&v29);
}

void sub_29B0001D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_29B000258(pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29A1E28B4(a1 + 112, a2);
  sub_29A1E28B4(a1 + 136, a2);

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::_RemoveDependencies(a1, a2);
}

void sub_29B000310(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B000324(uint64_t a1)
{
  v2 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v2 + 1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return a1;
}

_DWORD *sub_29B000360(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

void sub_29B0004F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B000658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetScenePrimPath(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  v8 = a3;
  v10 = 0;
  v11 = 0;
  __p = 0;
  sub_29A058D90(&__p, &v8, &__p, 1uLL);
  (*(*a1 + 320))(v12, a1, a2, &__p, 0);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  v7 = v12[0];
  if (v12[1] == v12[0])
  {
    *a4 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a4 + 1);
  }

  else
  {
    sub_29A1E21F4(a4, v12[0]);
    sub_29A1E2240(a4 + 1, v7 + 1);
  }

  __p = v12;
  sub_29A1E234C(&__p);
}

void sub_29B0007A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetScenePrimPaths@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X1>, pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a2@<X0>, int **a3@<X2>, void **a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetAbsoluteRootOrPrimPath(this, &v38);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a2, &v38, v43);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v38 + 1);
  sub_29A1DE3A4(&v38);
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(a2, v43, this))
  {
    if (sub_29AF49C14(9))
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("GetScenePrimPaths: instance proto = %s\n", v9, v10, Text);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v38);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v38 + 1);
    v39 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v40);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v40 + 1);
    v42 = 0u;
    v41 = 0u;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(this, &v36);
    if (*(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(a2, &v36, this, &v38) + 1) && sub_29A328A44(a2 + 4, &v38))
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a2, &v38, v35);
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetTimeWithOffset(a2, 0.0);
      pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInstanceMap(a2, v35, &v34);
    }

    sub_29A2254B4(a4, a3[1] - *a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v37);
    sub_29A1DE3A4(&v36);
    sub_29B0020F0(&v38);
  }

  else
  {
    if (sub_29AF49C14(9))
    {
      v11 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("GetScenePrimPaths: instance = %s\n", v12, v13, v11);
    }

    v14 = sub_29A328A44(a2 + 9, this);
    if (v14)
    {
      v15 = (v14 + 6);
    }

    else
    {
      v15 = 0;
    }

    if (v14 && sub_29A328A44(a2 + 4, v14 + 6))
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v16 = *a3;
      v17 = a3[1];
      if (*a3 != v17)
      {
        v18 = 0;
        v19 = v17 - v16;
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v20 = 0x7FFFFFFF;
        while (1)
        {
          v22 = *v16++;
          v21 = v22;
          if (v22 < v20)
          {
            v20 = v21;
          }

          if (v18 <= v21)
          {
            v18 = v21;
          }

          if (!--v19)
          {
            LODWORD(v38) = 0x7FFFFFFF;
            sub_29B01DC2C(&v33, v18 - v20 + 1, &v38);
            v23 = *a3;
            v24 = a3[1] - *a3;
            v25 = v24 >> 2;
            if (v24)
            {
              v26 = 0;
              v27 = v33;
              if (v25 <= 1)
              {
                v28 = 1;
              }

              else
              {
                v28 = v25;
              }

              do
              {
                v27[v23[v26] - v20] = v26;
                ++v26;
              }

              while (v28 != v26);
            }

            v29 = sub_29A38B6A4(a4, v25);
            v30 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v29);
            v38 = a2;
            v39 = v30;
            v40 = &v33;
            LODWORD(v41) = v20;
            *(&v41 + 1) = a4;
            pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a2, v15, &v34);
            sub_29B000DCC(a2, &v34);
          }
        }
      }
    }

    else
    {
      sub_29A2254B4(a4, a3[1] - *a3);
    }
  }

  if ((v47 & 7) != 0)
  {
    atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v46);
  sub_29A1DE3A4(&v45);
  result = v44;
  if (v44)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v44, v31);
  }

  return result;
}

void sub_29B000CC0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  sub_29A1E234C(&a10);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29B000EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::PopulateSelection(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, int a2, pxrInternal__aapl__pxrReserved__::SdfPath *this, pxrInternal__aapl__pxrReserved__::UsdObject *a4)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetAbsoluteRootOrPrimPath(this, v25);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, v25, &v20);
  IsChildPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(a1, &v20, this);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22 + 1);
  sub_29A1DE3A4(&v22);
  if (v21)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v21, v8);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v25 + 1);
  sub_29A1DE3A4(v25);
  if (IsChildPrim)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v20);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20 + 1);
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22 + 1);
    v23 = 0u;
    v24 = 0u;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(this, &v31);
    if (*(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(a1, &v31, this, &v20) + 1) && sub_29A328A44(a1 + 4, &v20))
    {
      if (sub_29AF49C14(9))
      {
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
        v10 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v20);
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("PopulateSelection: proto = %s instancer = %s\n", v11, v12, Text, v10);
      }

      v26 = 1;
      v27 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v28);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v29);
      v30 = 0;
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a4);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v32);
    sub_29A1DE3A4(&v31);
    sub_29B0020F0(&v20);
  }

  else
  {
    v13 = sub_29A328A44(a1 + 9, this);
    if (v13)
    {
      v14 = v13;
      if (sub_29A328A44(a1 + 4, v13 + 6))
      {
        if (sub_29AF49C14(9))
        {
          v15 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(this);
          v16 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v14 + 6));
          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("PopulateSelection: instance = %s instancer = %s\n", v17, v18, v15, v16);
        }

        pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, (v14 + 6), &v26);
        pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetTimeWithOffset(a1, 0.0);
        pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInstanceMap(a1, &v26, v25);
      }
    }
  }

  return 0;
}

void sub_29B001480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27)
{
  sub_29A1DCEA8(&a27);
  sub_29A57F434(v27 - 128);
  sub_29A1DCEA8((v27 - 96));
  sub_29B0020F0(&a12);
  _Unwind_Resume(a1);
}

void sub_29B0016A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetVolumeFieldDescriptors(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdObject *a2@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  if ((*(*a1 + 352))(a1, a3))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v20);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v21);
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v23);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v24);
    v25 = 0u;
    v26 = 0u;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v18);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(a1, &v18, a3, &v20);
    v11 = *(ProtoPrim + 1);
    if (!v11)
    {
      v13 = "usdImaging/instanceAdapter.cpp";
      v14 = "GetVolumeFieldDescriptors";
      v15 = 3026;
      v16 = "virtual HdVolumeFieldDescriptorVector pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetVolumeFieldDescriptors(const UsdPrim &, const SdfPath &, UsdTimeCode) const";
      v17 = 0;
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, ProtoPrim, &v13);
    (*(*v11 + 336))(v11, &v13, a3, a5);
    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15 + 1);
    sub_29A1DE3A4(&v15);
    if (v14)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v12);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
    sub_29A1DE3A4(&v18);
    sub_29B0020F0(&v20);
  }

  else
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetVolumeFieldDescriptors(a4);
  }
}

void sub_29B001948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v3[0] = "usdImaging/instanceAdapter.cpp";
  v3[1] = "_RemovePrim";
  v3[2] = 3042;
  v3[3] = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_RemovePrim(const SdfPath &, UsdImagingIndexProxy *)";
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Should use overidden ProcessPrimResync/ProcessPrimRemoval");
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::GetRelativeInstancerTransform(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(a3, &v4);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, &v4, v6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v5);
  sub_29A1DE3A4(&v4);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v6);
}

void sub_29B001AE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29A57F434(va1);
  _Unwind_Resume(a1);
}

void *sub_29B001B18(void *a1)
{
  *a1 = &unk_2A20ACCD0;
  sub_29A55B678((a1 + 19));
  sub_29A55B678((a1 + 14));
  sub_29A55B678((a1 + 9));
  sub_29B001E68((a1 + 4));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_29B001B80(void *a1)
{
  *a1 = &unk_2A20ACCD0;
  sub_29A55B678((a1 + 19));
  sub_29A55B678((a1 + 14));
  sub_29A55B678((a1 + 9));
  sub_29B001E68((a1 + 4));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(a1);
}

uint64_t sub_29B001BF8(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20ACF10;
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

void sub_29B001C84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B001CA8(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B001CD0@<D0>(_OWORD *a1@<X8>)
{
  sub_29B001D0C(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B001D0C(void *a1@<X8>)
{
  v2 = operator new(0xD8uLL);
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *v2 = &unk_2A20ACF50;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 10) = 0u;
  *(v2 + 11) = 0u;
  *(v2 + 12) = 0u;
  *(v2 + 26) = 0;
  *(v2 + 3) = &unk_2A20ACCD0;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 22) = 1065353216;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 32) = 1065353216;
  *(v2 + 152) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 42) = 1065353216;
  *(v2 + 11) = 0u;
  *(v2 + 12) = 0u;
  *(v2 + 52) = 1065353216;
  *a1 = v2 + 24;
  a1[1] = v2;
  *(v2 + 2) = 0u;

  sub_29A017894(a1, v2 + 4, (v2 + 24));
}

void sub_29B001DFC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20ACF50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B001E68(uint64_t a1)
{
  sub_29B001EA4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29B001EA4(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29B001EE8(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29B001EE8(_DWORD *a1)
{
  sub_29B001F30((a1 + 2));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

_DWORD *sub_29B001F30(uint64_t a1)
{
  v6 = (a1 + 200);
  sub_29A1E234C(&v6);
  v6 = (a1 + 176);
  sub_29A1E234C(&v6);
  sub_29A1E2AEC(a1 + 152, *(a1 + 160));
  sub_29B002010(a1 + 112);
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  sub_29A1E2AEC(a1 + 56, *(a1 + 64));
  v6 = (a1 + 32);
  sub_29A15EE8C(&v6);
  v3 = *(a1 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 16);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

uint64_t sub_29B002010(uint64_t a1)
{
  sub_29B00204C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29B00204C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29B002090((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29B002090(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

_DWORD *sub_29B0020F0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 32);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 24);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  v5 = *(a1 + 8);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29B002198(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v13 = a2;
  v7 = sub_29A10A6B8(a1, &v13);
  sub_29B00233C(v7 + 1, v13);
  v8 = *(a1 + 8);
  if (v8 == *(a1 + 16))
  {
    v8 = sub_29B002304();
  }

  v9 = v13;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v9 >= 0x555555555555556)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v9)
  {
    *(*(a1 + 16) - 42) = 1;
  }

  v10 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v10;
  *(a1 + 56) = (v10 * v9);
  return a1;
}

void sub_29B0022DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29B0023C8(va);
  _Unwind_Resume(a1);
}

int *sub_29B002304()
{
  if ((atomic_load_explicit(&qword_2A14FA1E8, memory_order_acquire) & 1) == 0)
  {
    sub_29B2CE348();
  }

  return &dword_2A14FA1B8;
}

void *sub_29B00233C(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A1C11FC(a1, a2);
    v4 = a1[1];
    v5 = v4 + 48 * a2;
    do
    {
      *v4 = 0;
      *(v4 + 4) = -1;
      *(v4 + 6) = 0;
      v4 += 48;
    }

    while (v4 != v5);
    a1[1] = v5;
  }

  return a1;
}

void sub_29B0023C8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29B00241C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

pxrInternal__aapl__pxrReserved__ *sub_29B00241C(pxrInternal__aapl__pxrReserved__ *result)
{
  v1 = result;
  v3 = *result;
  v2 = *(result + 1);
  if (v2 != *result)
  {
    v4 = v2 - 48;
    do
    {
      if (*(v4 + 4) != -1)
      {
        result = sub_29B0024C4(v4);
        *(v4 + 4) = -1;
      }

      v5 = v4 == v3;
      v4 -= 48;
    }

    while (!v5);
  }

  *(v1 + 1) = v3;
  return result;
}

uint64_t sub_29B002484(uint64_t a1)
{
  if (*(a1 + 4) != -1)
  {
    sub_29B0024C4(a1);
    *(a1 + 4) = -1;
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__ *sub_29B0024C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  result = *(a1 + 16);
  if (result)
  {

    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result, v3);
  }

  return result;
}

__int128 *sub_29B002534(__int128 *result, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  v8 = result;
  v20 = a2;
  v21 = result;
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
      v20 = (v7 - 2);
      result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v7 - 2, v8);
      if (result)
      {
        v18 = &v21;
        v19 = &v20;
        return sub_29B002860(v18, v19);
      }

      return result;
    }

LABEL_10:
    if (v10 <= 23)
    {
      if (a5)
      {
        return sub_29B002A90(v8, v7);
      }

      else
      {
        return sub_29B002BE4(v8, v7);
      }
    }

    if (i == 1)
    {
      if (v8 != v7)
      {
        return sub_29B003348(v8, v7, v7, a3);
      }

      return result;
    }

    v11 = v10 >> 1;
    v12 = (v7 - 2);
    if (v10 < 0x81)
    {
      sub_29B0028AC(&v8[v10 >> 1], v8, v12);
      if (a5)
      {
LABEL_17:
        v7 = v20;
        goto LABEL_18;
      }
    }

    else
    {
      sub_29B0028AC(v8, &v8[v10 >> 1], v12);
      v13 = 16 * v11 - 16;
      sub_29B0028AC(v21 + 1, (v21 + v13), v20 - 2);
      v14 = 16 * v11 + 16;
      sub_29B0028AC(v21 + 2, (v21 + v14), v20 - 3);
      sub_29B0028AC((v21 + v13), &v21[v11], (v21 + v14));
      v25 = &v21[v11];
      sub_29B002860(&v21, &v25);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    v7 = v20;
    if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v21 - 2, v21))
    {
      result = sub_29B002D14(v21, v20);
      v8 = result;
LABEL_26:
      a5 = 0;
      v21 = v8;
      a4 = -i;
      goto LABEL_2;
    }

LABEL_18:
    v15 = sub_29B002EE4(v21, v7);
    if ((v16 & 1) == 0)
    {
      goto LABEL_25;
    }

    v17 = sub_29B0030AC(v21, v15);
    v8 = v15 + 1;
    result = sub_29B0030AC(v15 + 1, v7);
    if (result)
    {
      if (v17)
      {
        return result;
      }

      v20 = v15;
      v8 = v21;
      v7 = v15;
    }

    else
    {
      if (!v17)
      {
LABEL_25:
        result = sub_29B002534(v21, v15, a3, -i, a5 & 1);
        v8 = v15 + 1;
        goto LABEL_26;
      }

      v21 = v15 + 1;
    }
  }

  if (v10 == 3)
  {
    v20 = (v7 - 2);
    return sub_29B0028AC(v8, v8 + 1, v7 - 1);
  }

  if (v10 != 4)
  {
    if (v10 == 5)
    {
      v20 = (v7 - 2);
      return sub_29B002964(v8, v8 + 1, v8 + 2, v8 + 3, v7 - 1);
    }

    goto LABEL_10;
  }

  v20 = (v7 - 2);
  v24 = v8 + 1;
  v25 = v8;
  v22 = (v7 - 2);
  v23 = v8 + 2;
  sub_29B0028AC(v8, v8 + 1, v8 + 2);
  result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v7 - 2, v8 + 4);
  if (result)
  {
    sub_29B002860(&v23, &v22);
    result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v23, v8 + 2);
    if (result)
    {
      sub_29B002860(&v24, &v23);
      result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v24, v8);
      if (result)
      {
        v18 = &v25;
        v19 = &v24;
        return sub_29B002860(v18, v19);
      }
    }
  }

  return result;
}

__int128 **sub_29B002860(__int128 **result, __int128 **a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = **result;
  *v2 = 0;
  if (v3 != v2)
  {
    *v2 = *v3;
    *v3 = 0;
  }

  *(v2 + 1) = *(v3 + 1);
  if ((*v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *v3 = v4;
  return result;
}

BOOL sub_29B0028AC(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v10 = a2;
  v11 = a1;
  v9 = a3;
  v5 = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(a2, a1);
  result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(a3, a2);
  if (v5)
  {
    if (result)
    {
      v7 = &v11;
LABEL_9:
      v8 = &v9;
      goto LABEL_10;
    }

    sub_29B002860(&v11, &v10);
    if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v9, v10))
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

    sub_29B002860(&v10, &v9);
    if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v10, v11))
    {
      v7 = &v11;
      v8 = &v10;
LABEL_10:
      sub_29B002860(v7, v8);
    }
  }

  return 1;
}

__int128 **sub_29B002964(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
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
  sub_29B0028AC(a1, a2, a3);
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(a4, a3))
  {
    sub_29B002860(&v17, &v16);
    if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v17, a2))
    {
      sub_29B002860(&v18, &v17);
      if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v18, a1))
      {
        sub_29B002860(&v19, &v18);
      }
    }
  }

  result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(a5, a4);
  if (result)
  {
    sub_29B002860(&v12, &v11);
    result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v12, a3);
    if (result)
    {
      sub_29B002860(&v13, &v12);
      result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v13, a2);
      if (result)
      {
        sub_29B002860(&v14, &v13);
        result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v14, a1);
        if (result)
        {
          return sub_29B002860(&v15, &v14);
        }
      }
    }
  }

  return result;
}

uint64_t *sub_29B002A90(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 2;
    if (result + 2 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v4;
        result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v4, v6);
        if (result)
        {
          v8 = *v7;
          *v7 = 0;
          v9 = v6[3];
          v19 = v8;
          v20 = v9;
          v10 = v5;
          while (1)
          {
            v11 = (v3 + v10);
            v12 = *(v3 + v10 + 16);
            if ((v12 & 7) != 0)
            {
              atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v13 = *v11;
            v14 = v11[1];
            *v11 = 0;
            v11[2] = v13;
            v11[3] = v14;
            if (!v10)
            {
              break;
            }

            result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(&v19, (v3 + v10 - 16));
            v10 -= 16;
            if ((result & 1) == 0)
            {
              v15 = (v3 + v10 + 16);
              goto LABEL_12;
            }
          }

          v15 = v3;
LABEL_12:
          if (&v19 == v15)
          {
            v18 = v19;
            v15[1] = v20;
            if ((v18 & 7) != 0)
            {
              atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          else
          {
            if ((*v15 & 7) != 0)
            {
              atomic_fetch_add_explicit((*v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v16 = v19;
            v17 = v20;
            v19 = 0;
            *v15 = v16;
            v15[1] = v17;
          }
        }

        v4 = v7 + 2;
        v5 += 16;
        v6 = v7;
      }

      while (v7 + 2 != a2);
    }
  }

  return result;
}

uint64_t *sub_29B002BE4(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 2;
    if (result + 2 != a2)
    {
      v5 = result - 2;
      do
      {
        v6 = v4;
        result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v4, v3);
        if (result)
        {
          v7 = *v6;
          *v6 = 0;
          v8 = v3[3];
          v17 = v7;
          v18 = v8;
          v9 = v5;
          do
          {
            v10 = v9[4];
            if ((v10 & 7) != 0)
            {
              atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v11 = v9[2];
            v12 = v9[3];
            v9[2] = 0;
            v9[4] = v11;
            v9[5] = v12;
            result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(&v17, v9);
            v9 -= 2;
          }

          while ((result & 1) != 0);
          if (v9 + 4 == &v17)
          {
            v16 = v17;
            v9[5] = v18;
            if ((v16 & 7) != 0)
            {
              atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          else
          {
            v13 = v9[4];
            if ((v13 & 7) != 0)
            {
              atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v14 = v17;
            v15 = v18;
            v17 = 0;
            v9[4] = v14;
            v9[5] = v15;
          }
        }

        v4 = v6 + 2;
        v5 += 2;
        v3 = v6;
      }

      while (v6 + 2 != a2);
    }
  }

  return result;
}

__int128 *sub_29B002D14(uint64_t a1, __int128 *a2)
{
  v11 = a2;
  v12 = a1;
  v3 = *a1;
  *a1 = 0;
  v10 = v3;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(&v10, a2 - 2))
  {
    v4 = a1;
    do
    {
      v12 = ++v4;
    }

    while (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(&v10, v4));
  }

  else
  {
    v5 = (a1 + 16);
    do
    {
      v4 = v5;
      v12 = v5;
      if (v5 >= v11)
      {
        break;
      }

      v6 = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(&v10, v5);
      v5 = v4 + 1;
    }

    while (!v6);
  }

  v7 = v11;
  if (v4 < v11)
  {
    do
    {
      v11 = --v7;
    }

    while (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(&v10, v7));
    v4 = v12;
  }

  if (v4 < v7)
  {
    do
    {
      sub_29B002860(&v12, &v11);
      do
      {
        ++v12;
      }

      while (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(&v10, v12));
      do
      {
        --v11;
      }

      while (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(&v10, v11));
      v4 = v12;
    }

    while (v12 < v11);
  }

  v8 = v4 - 1;
  if (v4 - 1 != a1)
  {
    if ((*a1 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a1 = *(v4 - 2);
    *(v4 - 2) = 0;
    *(a1 + 8) = *(v4 - 1);
  }

  if (&v10 != v8)
  {
    if ((*v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *v8 = v10;
    *&v10 = 0;
  }

  *(v4 - 1) = *(&v10 + 1);
  result = v12;
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29B002EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

__int128 *sub_29B002EE4(uint64_t a1, __int128 *a2)
{
  v3 = 0;
  v12 = a2;
  v4 = *a1;
  *a1 = 0;
  v11 = v4;
  do
  {
    v13 = (a1 + v3 + 16);
    v3 += 16;
  }

  while (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v13, &v11));
  v5 = v12;
  if (v3 == 16)
  {
    v8 = (a1 + 16);
    do
    {
      if (v8 >= v5)
      {
        break;
      }

      v12 = --v5;
    }

    while (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v5, &v11));
  }

  else
  {
    v6 = v12 - 1;
    do
    {
      v12 = v6;
    }

    while (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v6--, &v11));
    v8 = v13;
  }

  v9 = v8;
  if (v8 < v12)
  {
    do
    {
      sub_29B002860(&v13, &v12);
      do
      {
        ++v13;
      }

      while (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v13, &v11));
      do
      {
        --v12;
      }

      while (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v12, &v11));
      v9 = v13;
    }

    while (v13 < v12);
  }

  result = v9 - 1;
  if (v9 - 1 != a1)
  {
    if ((*a1 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a1 = *(v9 - 2);
    *(v9 - 2) = 0;
    *(a1 + 8) = *(v9 - 1);
  }

  if (&v11 != result)
  {
    if ((*result & 7) != 0)
    {
      atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *result = v11;
    *&v11 = 0;
  }

  *(v9 - 1) = *(&v11 + 1);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29B003080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

BOOL sub_29B0030AC(__int128 *a1, uint64_t *a2)
{
  v18 = a2;
  v19 = a1;
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_29B0028AC(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        v17[0] = a1;
        v15 = a2 - 2;
        v21 = a1 + 2;
        v22 = a1 + 1;
        v20 = (a2 - 2);
        sub_29B0028AC(a1, a1 + 1, a1 + 2);
        if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v15, a1 + 4))
        {
          return 1;
        }

        sub_29B002860(&v21, &v20);
        if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v21, a1 + 2))
        {
          return 1;
        }

        sub_29B002860(&v22, &v21);
        if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v22, a1))
        {
          return 1;
        }

        v5 = v17;
        v6 = &v22;
        goto LABEL_6;
      case 5:
        sub_29B002964(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
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
      v18 = a2 - 2;
      if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(a2 - 2, a1))
      {
        v5 = &v19;
        v6 = &v18;
LABEL_6:
        sub_29B002860(v5, v6);
      }

      return 1;
    }
  }

  v7 = (a1 + 2);
  sub_29B0028AC(a1, a1 + 1, a1 + 2);
  v8 = (a1 + 3);
  if (v8 == a2)
  {
    return 1;
  }

  v9 = 0;
  while (1)
  {
    if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v8, v7))
    {
      v10 = *v8;
      *v8 = 0;
      *v17 = v10;
      do
      {
        v11 = v7;
        v12 = v7[2];
        if ((v12 & 7) != 0)
        {
          atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v7[2] = *v7;
        *v7 = 0;
        v7[3] = v7[1];
        if (v7 == v19)
        {
          break;
        }

        v7 -= 2;
      }

      while (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v17, v11 - 2));
      if (v11 == v17)
      {
        v13 = v17[0];
      }

      else
      {
        if ((*v11 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v13 = 0;
        *v11 = v17[0];
        v17[0] = 0;
      }

      v11[1] = v17[1];
      v14 = v18;
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (++v9 == 8)
      {
        break;
      }
    }

    v7 = v8;
    v8 += 2;
    if (v8 == v18)
    {
      return 1;
    }
  }

  return v8 + 2 == v14;
}

__int128 *sub_29B003348(__int128 *a1, __int128 *a2, uint64_t *a3, uint64_t a4)
{
  v22 = a1;
  if (a1 != a2)
  {
    v7 = a1;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_29B00350C(v7, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v21 = a2;
    v12 = a2;
    if (a2 != a3)
    {
      do
      {
        if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v12, v22))
        {
          sub_29B002860(&v21, &v22);
          sub_29B00350C(v22, a4, v8, v22);
        }

        v12 = (v21 + 1);
        v21 = v12;
      }

      while (v12 != a3);
      v7 = v22;
      v8 = a2 - v22;
    }

    if (v8 >= 2)
    {
      v13 = a2 - 1;
      do
      {
        v14 = *v7;
        v15 = *(v7 + 1);
        *v7 = 0;
        v16 = sub_29B0036C8(v7, a4, v8);
        v17 = *v16;
        v18 = *v16 & 7;
        if (v13 == v16)
        {
          if (v18)
          {
            atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v16 = v14;
          *(v16 + 1) = v15;
        }

        else
        {
          if (v18)
          {
            atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v16 = *v13;
          *v13 = 0;
          *(v16 + 1) = *(v13 + 1);
          if ((*v13 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v13 = v14;
          *(v13 + 1) = v15;
          sub_29B003798(v7, (v16 + 1), a4, v16 + 1 - v7);
        }

        --v13;
      }

      while (v8-- > 2);
      return v21;
    }

    return v12;
  }

  return a3;
}

BOOL sub_29B00350C(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 4)
    {
      v9 = (a4 - result) >> 3;
      v10 = v9 + 1;
      v11 = (result + 16 * (v9 + 1));
      v12 = v9 + 2;
      if (v9 + 2 < a3 && pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<((result + 16 * (v9 + 1)), v11 + 2))
      {
        v11 += 2;
        v10 = v12;
      }

      result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v11, v5);
      if (!result)
      {
        v13 = *v5;
        *v5 = 0;
        v17 = v13;
        do
        {
          v14 = v11;
          if (v11 != v5)
          {
            if ((*v5 & 7) != 0)
            {
              atomic_fetch_add_explicit((*v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            *v5 = *v11;
            *v11 = 0;
          }

          v5[1] = v11[1];
          if (v7 < v10)
          {
            break;
          }

          v15 = (2 * v10) | 1;
          v11 = (v6 + 16 * v15);
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v10 = v15;
          }

          else if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<((v6 + 16 * v15), v11 + 2))
          {
            v11 += 2;
          }

          else
          {
            v10 = v15;
          }

          result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v11, &v17);
          v5 = v14;
        }

        while (!result);
        if (&v17 == v14)
        {
          v16 = v17;
          v14[1] = *(&v17 + 1);
          if ((v16 & 7) != 0)
          {
            atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          if ((*v14 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v14 = v17;
        }
      }
    }
  }

  return result;
}

void *sub_29B0036C8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[2 * v5];
    v8 = v7 + 2;
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v9 + 2 < a3)
    {
      v11 = v7 + 4;
      if (pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v7 + 2, v7 + 4))
      {
        v8 = v11;
        v5 = v10;
      }
    }

    if (v8 != a1)
    {
      if ((*a1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *a1 = *v8;
      *v8 = 0;
    }

    a1[1] = v8[1];
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

BOOL sub_29B003798(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = result;
    v6 = v4 >> 1;
    v7 = (result + 16 * (v4 >> 1));
    v8 = (a2 - 16);
    result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v7, (a2 - 16));
    if (result)
    {
      v9 = *v8;
      *v8 = 0;
      v12 = v9;
      do
      {
        v10 = v7;
        if (v7 != v8)
        {
          if ((*v8 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v8 = *v7;
          *v7 = 0;
        }

        v8[1] = v7[1];
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = (v5 + 16 * v6);
        result = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InstancerData::PrimvarInfo::operator<(v7, &v12);
        v8 = v10;
      }

      while (result);
      if (&v12 == v10)
      {
        v11 = v12;
        v10[1] = *(&v12 + 1);
        if ((v11 & 7) != 0)
        {
          atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        if ((*v10 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v10 = v12;
      }
    }
  }

  return result;
}

void *sub_29B0038C4(void *a1, unsigned int *a2)
{
  result = sub_29A2F4F50(a1, a2);
  if (result)
  {
    v4 = result;
    do
    {
      v4 = *v4;
    }

    while (v4 && v4[2] == *a2);
  }

  return result;
}

void *sub_29B003910(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

  sub_29B003B58(a1, v6, a4, &v22);
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

void sub_29B003B40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29B003CC8(va, 0);
  _Unwind_Resume(a1);
}

_DWORD *sub_29B003B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x100uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v10 = *a3;
  result = sub_29B003BDC(v8 + 4, &v10);
  *(a4 + 16) = 1;
  return result;
}

_DWORD *sub_29B003BDC(_DWORD *a1, _DWORD **a2)
{
  v3 = *a2;
  v4 = sub_29A1E21F4(a1, *a2);
  sub_29A1E2240(v4 + 1, (v3 + 4));
  sub_29B003C34((a1 + 2));
  return a1;
}

uint64_t sub_29B003C34(uint64_t a1)
{
  v2 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v2 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 12));
  *(a1 + 72) = 0;
  *(a1 + 64) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 1065353216;
  *(a1 + 168) = 0;
  *(a1 + 160) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  return a1;
}

void sub_29B003CC8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B001EE8(v2 + 4);
    }

    operator delete(v2);
  }
}

void sub_29B003D60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A55CDA0(va, 0);
  _Unwind_Resume(a1);
}

_DWORD *sub_29B003D78@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x20uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *v6 = 0;
  v6[1] = 0;
  result = sub_29A23F744(v6 + 4, a2);
  *(a3 + 16) = 1;
  v6[1] = bswap64(0x9E3779B97F4A7C55 * (*(v6 + 5) + ((*(v6 + 5) + *(v6 + 4) + (*(v6 + 5) + *(v6 + 4)) * (*(v6 + 5) + *(v6 + 4))) >> 1)));
  return result;
}

uint64_t *sub_29B003DFC(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (a4 > (result[2] - *result) >> 4)
  {
    sub_29B003F78(result);
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
    result = sub_29B003FE8(v7, v6, a3, *(v7 + 8));
LABEL_14:
    *(v7 + 8) = result;
    return result;
  }

  v12 = result[1];
  if (a4 > (v12 - v8) >> 4)
  {
    v13 = (a2 + v12 - v8);
    if (v12 != v8)
    {
      do
      {
        sub_29A166F2C(v8, v6);
        v8[1] = v6[1];
        v6 += 2;
        v8 += 2;
      }

      while (v6 != v13);
      v12 = *(v7 + 8);
    }

    result = sub_29B003FE8(v7, v13, a3, v12);
    goto LABEL_14;
  }

  if (a2 != a3)
  {
    do
    {
      result = sub_29A166F2C(v8, v6);
      v8[1] = v6[1];
      v6 += 2;
      v8 += 2;
    }

    while (v6 != a3);
    v12 = *(v7 + 8);
  }

  while (v12 != v8)
  {
    v15 = *(v12 - 2);
    v12 -= 2;
    v14 = v15;
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  *(v7 + 8) = v8;
  return result;
}

void sub_29B003F78(void **a1)
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
        v6 = *(v3 - 2);
        v3 -= 16;
        v5 = v6;
        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
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

uint64_t *sub_29B003FE8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  for (result = a4; a2 != a3; result += 2)
  {
    v5 = *a2;
    *result = *a2;
    if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *result &= 0xFFFFFFFFFFFFFFF8;
    }

    result[1] = a2[1];
    a2 += 2;
  }

  return result;
}

void *sub_29B00403C(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

  sub_29B004284(a1, v6, a4, &v22);
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

void sub_29B00426C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29B004360(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29B004284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v10 = *a3;
  result = sub_29B004308((v8 + 2), &v10);
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29B004308(uint64_t a1, _DWORD **a2)
{
  v3 = *a2;
  v4 = sub_29A1E21F4(a1, *a2);
  sub_29A1E2240(v4 + 1, (v3 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 12));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return a1;
}

void sub_29B004360(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B002090(v2 + 16);
    }

    operator delete(v2);
  }
}

uint64_t *sub_29B0043BC(void *a1, unsigned int *a2)
{
  result = sub_29A2F4F50(a1, a2);
  if (result)
  {
    sub_29B0043F4(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29B0043F4(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29B002090(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

void *sub_29B004450(void *a1, unsigned int *a2)
{
  result = sub_29A328A44(a1, a2);
  if (result)
  {
    v4 = result;
    do
    {
      v4 = *v4;
    }

    while (v4 && v4[2] == *a2);
  }

  return result;
}

double sub_29B00449C(uint64_t a1, unint64_t a2)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8[0] = &v9;
  sub_29A197F54((a1 + 16), a2, v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetRootTransform(*a1, v8);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(v8, 0, 0.0, &v9);
  v3 = v14;
  *(a1 + 120) = v13;
  *(a1 + 136) = v3;
  v4 = v16;
  *(a1 + 152) = v15;
  *(a1 + 168) = v4;
  v5 = v10;
  *(a1 + 56) = v9;
  *(a1 + 72) = v5;
  result = *&v11;
  v7 = v12;
  *(a1 + 88) = v11;
  *(a1 + 104) = v7;
  return result;
}

void sub_29B0049B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_29B004A38(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = (a1 + 16);
  if (*(a1 + 16) <= a3)
  {
    *&v27 = "usdImaging/instanceAdapter.cpp";
    *(&v27 + 1) = "operator()";
    *&v28 = 730;
    *(&v28 + 1) = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInstanceTransformFn::operator()(const std::vector<UsdPrim> &, size_t)";
    LOBYTE(v29) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v27, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      *&v19 = &v27;
      sub_29A197F54(v6, a3 + 1, &v19);
    }
  }

  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&v27, 1.0);
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  v7 = *(a1 + 136);
  v23 = *(a1 + 120);
  v24 = v7;
  v8 = *(a1 + 168);
  v25 = *(a1 + 152);
  v26 = v8;
  v9 = *(a1 + 72);
  v19 = *(a1 + 56);
  v20 = v9;
  v10 = *(a1 + 104);
  v21 = *(a1 + 88);
  v22 = v10;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v19, &v27);
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v27 = v19;
  v28 = v20;
  v29 = v21;
  v30 = v22;
  sub_29A198240(v6);
  v11 = (*(a1 + 48) + (a3 << 7));
  v12 = v27;
  v13 = v28;
  v14 = v30;
  v11[2] = v29;
  v11[3] = v14;
  *v11 = v12;
  v11[1] = v13;
  v15 = v31;
  v16 = v32;
  v17 = v34;
  v11[6] = v33;
  v11[7] = v17;
  v11[4] = v15;
  v11[5] = v16;
  return 1;
}

void sub_29B004C84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B005110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_29B005194(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdPrim **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = off_2A20608C8;
    do
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v6, v2);
      v6 = &unk_2A20608A8;
      if (v7 && (*(v7 + 57) & 8) == 0 && v4(&v6))
      {
        pxrInternal__aapl__pxrReserved__::UsdGeomXformable::GetTimeSamplesInInterval(&v6);
      }

      pxrInternal__aapl__pxrReserved__::UsdGeomXformable::~UsdGeomXformable(&v6);
      v2 = (v2 + 32);
    }

    while (v2 != v3);
  }

  return 1;
}

void sub_29B005290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomXformable::~UsdGeomXformable(&a12);
  _Unwind_Resume(a1);
}

void sub_29B005738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B0057BC(uint64_t *a1, uint64_t a2)
{
  memset(v5, 0, sizeof(v5));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v5, v4);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v4, &v3);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v3);
}

void sub_29B005974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_29A57F434(&a15);
  sub_29A1DCEA8((v15 - 64));
  a15 = v15 - 56;
  sub_29A1E234C(&a15);
  _Unwind_Resume(a1);
}

void sub_29B005EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_29B005F38(uint64_t *a1, uint64_t a2)
{
  v4 = sub_29B0060B0(a1 + 2, a2);
  if (a1[6] + 48 * a1[7] == v4)
  {
    v6 = *a1;
    v12 = *a2;
    v7 = *(a2 + 8);
    v13 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 6, 1uLL, memory_order_relaxed);
    }

    v17 = 0;
    sub_29A1E21F4(&v14, (a2 + 16));
    sub_29A1E2240(&v15, (a2 + 20));
    v8 = *(a2 + 24);
    v16 = v8;
    if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 &= 0xFFFFFFFFFFFFFFF8;
    }

    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    if (!v9)
    {
      v9 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    }

    IsTransformVarying = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsTransformVarying(v6, &v12, 512, (v9 + 8), &v17);
    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
    sub_29A1DE3A4(&v14);
    if (v13)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13, v10);
    }

    v18 = a2;
    *(sub_29B0061B8(a1 + 2, a2, &unk_29B4D6118, &v18) + 40) = IsTransformVarying;
  }

  else
  {
    IsTransformVarying = *(v4 + 40);
  }

  return IsTransformVarying & 1;
}

uint64_t sub_29B0060B0(void *a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;
  sub_29A5BD47C(&v5, a2, (a2 + 8), (a2 + 16), (a2 + 24));
  return sub_29B006120(a1, a2, bswap64(0x9E3779B97F4A7C55 * v5));
}

uint64_t sub_29B006120(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[4];
  v4 = *a1 & a3;
  v5 = v3 + 48 * v4;
  if (*(v5 + 4) < 0)
  {
    return v3 + 48 * a1[5];
  }

  LOWORD(v6) = 0;
  while (*(v5 + 8) != *a2 || *(v5 + 16) != *(a2 + 8) || *(v5 + 24) != *(a2 + 16) || (*(a2 + 24) ^ *(v5 + 32)) >= 8)
  {
    v6 = (v6 + 1);
    v4 = (v4 + 1) & *a1;
    v5 = v3 + 48 * v4;
    if (v6 > *(v5 + 4))
    {
      return v3 + 48 * a1[5];
    }
  }

  return v5;
}

uint64_t sub_29B0061B8(void *a1, uint64_t a2, uint64_t a3, _DWORD **a4)
{
  v15 = 0;
  v16 = 0;
  sub_29A5BD47C(&v15, a2, (a2 + 8), (a2 + 16), (a2 + 24));
  v8 = bswap64(0x9E3779B97F4A7C55 * v15);
  v9 = a1[4];
  v10 = v8 & *a1;
  result = v9 + 48 * v10;
  if (*(result + 4) < 0)
  {
    v12 = 0;
LABEL_10:
    while (sub_29B0063B4(a1, v12))
    {
      v13 = a1[4];
      v10 = v8 & *a1;
      if (*(v13 + 48 * v10 + 4) < 0)
      {
        v12 = 0;
      }

      else
      {
        LOWORD(v12) = 0;
        do
        {
          v12 = (v12 + 1);
          v10 = (v10 + 1) & *a1;
        }

        while (v12 <= *(v13 + 48 * v10 + 4));
      }
    }

    v14 = a1[4] + 48 * v10;
    if (*(v14 + 4) != -1)
    {
      sub_29B006488(a1, v10, v12, v8, a3, a4);
    }

    v15 = *a4;
    sub_29B00679C(v14 + 8, &v15);
    *v14 = v8;
    *(v14 + 4) = v12;
    ++a1[6];
    return a1[4] + 48 * v10;
  }

  else
  {
    LOWORD(v12) = 0;
    while (*(result + 8) != *a2 || *(result + 16) != *(a2 + 8) || *(result + 24) != *(a2 + 16) || (*(a2 + 24) ^ *(result + 32)) >= 8)
    {
      v12 = (v12 + 1);
      v10 = (v10 + 1) & *a1;
      result = v9 + 48 * v10;
      if (v12 > *(result + 4))
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_29B0063B4(uint64_t a1, int a2)
{
  if (a2 > 0x2000 || (*(a1 + 72) & 1) != 0 || (v3 = *(a1 + 48), v3 >= *(a1 + 56)))
  {
    v7 = sub_29A10A428(a1);
    sub_29B00653C(a1, v7);
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

        sub_29B00653C(a1, v12);
        return 1;
      }
    }
  }

  return 0;
}

void sub_29B006488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD **a6)
{
  v11 = *a6;
  sub_29B00679C(&v10, &v11);
  sub_29B00682C(a1, a2, a3, a4, &v10);
}

void sub_29B00653C(uint64_t a1, unint64_t a2)
{
  sub_29B002198(&v7, a2, *(a1 + 64), *(a1 + 68));
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 != v4)
  {
    v5 = v8[4];
    do
    {
      if (*(v3 + 2) != -1)
      {
        if (v5 > 0x100000000)
        {
          v9 = 0;
          v10 = 0;
          sub_29A5BD47C(&v9, v3 + 2, v3 + 2, v3 + 6, v3 + 4);
          v6 = bswap64(0x9E3779B97F4A7C55 * v9);
        }

        else
        {
          v6 = *v3;
        }

        sub_29B006670(&v7, v7 & v6, 0, v6, v3 + 2);
      }

      v3 += 12;
    }

    while (v3 != v4);
  }

  v8[5] = *(a1 + 48);
  sub_29A10A4B4(&v7, a1);
  v9 = v8;
  sub_29B0023C8(&v9);
}

void sub_29B00664C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 72) = &a11;
  sub_29B0023C8((v11 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_29B006670(void *a1, uint64_t a2, __int16 a3, int a4, int *a5)
{
  while (1)
  {
    v8 = a1[4] + 48 * a2;
    v9 = *(v8 + 4);
    if (v9 < a3)
    {
      break;
    }

    ++a3;
    a2 = *a1 & (a2 + 1);
  }

  if (v9 != -1)
  {
    sub_29A742A58(a5, (v8 + 8));
  }

  result = sub_29B006734(v8 + 8, a5);
  *v8 = a4;
  *(v8 + 4) = a3;
  return result;
}

uint64_t sub_29B006734(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  sub_29A1DDD84((a1 + 16), (a2 + 16));
  sub_29A1DDDC0((a1 + 20), (a2 + 20));
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t sub_29B00679C(uint64_t a1, _DWORD **a2)
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

  *(a1 + 32) = 0;
  return a1;
}

void sub_29B006AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B006AF8(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
}

void sub_29B006FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B007054(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = a1 + 3;
  if (a1[3] <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::pxr_half::half>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v7 = 0;
      v10[0] = &v7;
      sub_29A18EFA8(v6, a3 + 1, v10);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v8, &v7);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void sub_29B0076D0(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
}

void sub_29B007BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B007C2C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (a1[3] <= a3)
  {
    *&v10 = "usdImaging/instanceAdapter.cpp";
    *(&v10 + 1) = "operator()";
    *&v11 = 959;
    *(&v11 + 1) = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfMatrix3d]";
    LOBYTE(v12) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v7 = &v10;
      sub_29A222544(v6, a3 + 1, &v7);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v8, &v7);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void sub_29B0082B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B0082E8(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3f>::_DecRef();
}

void sub_29B0087C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B008844(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (a1[3] <= a3)
  {
    *&v10 = "usdImaging/instanceAdapter.cpp";
    *(&v10 + 1) = "operator()";
    *&v11 = 959;
    *(&v11 + 1) = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfMatrix3f>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfMatrix3f]";
    LOBYTE(v12) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      LODWORD(v12) = 0;
      v10 = 0u;
      v11 = 0u;
      v7 = &v10;
      sub_29A85C1D4(v6, a3 + 1, &v7);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v8, &v7);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void **sub_29B008D4C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29AD8F100(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfMatrix3f>::Invoke, &stru_2A20407E8);
  }
}

void **sub_29B008DE0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29AD57258(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29B008E74, &stru_2A2042230);
  }
}

double sub_29B008E74@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29B008EC4;
  a1[2] = &stru_2A2042230;
  return result;
}

uint64_t sub_29B008EC4(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3f>::_DecRef();
  }

  return result;
}

void sub_29B0090A8(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
}

void sub_29B009580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B009604(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (a1[3] <= a3)
  {
    *&v10 = "usdImaging/instanceAdapter.cpp";
    *(&v10 + 1) = "operator()";
    *&v11 = 959;
    *(&v11 + 1) = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfMatrix4d]";
    LOBYTE(v12) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v7 = &v10;
      sub_29A197F54(v6, a3 + 1, &v7);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v8, &v7);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void sub_29B009CC4(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::_DecRef();
}

void sub_29B00A19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B00A220(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (a1[3] <= a3)
  {
    *&v10 = "usdImaging/instanceAdapter.cpp";
    *(&v10 + 1) = "operator()";
    *&v11 = 959;
    *(&v11 + 1) = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfMatrix4f]";
    LOBYTE(v12) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v7 = &v10;
      sub_29A198B30(v6, a3 + 1, &v7);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v8, &v7);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void sub_29B00A878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B00A8B0(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
}

void sub_29B00AD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B00AE0C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (a1[3] <= a3)
  {
    *&v10 = "usdImaging/instanceAdapter.cpp";
    *(&v10 + 1) = "operator()";
    v11 = 959;
    v12 = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfVec2d>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec2d]";
    LOBYTE(v13) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v10 = 0uLL;
      v7 = &v10;
      sub_29A192304(v6, a3 + 1, &v7);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v8, &v7);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void sub_29B00B444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B00B47C(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
}

void sub_29B00B954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B00B9D8(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (a1[3] <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfVec2f>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec2f]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v7 = 0;
      v10[0] = &v7;
      sub_29A190CF4(v6, a3 + 1, v10);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v8, &v7);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void sub_29B00C010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B00C048(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
}

void sub_29B00C520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B00C5A4(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (a1[3] <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfVec2h>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec2h]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v7 = 0;
      v10[0] = &v7;
      sub_29A1917E4(v6, a3 + 1, v10);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v8, &v7);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void sub_29B00CBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B00CC14(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
}

void sub_29B00D0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B00D170(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (a1[3] <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfVec2i>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec2i]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v7 = 0;
      v10[0] = &v7;
      sub_29A21A48C(v6, a3 + 1, v10);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v8, &v7);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void sub_29B00D7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B00D7E4(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
}

void sub_29B00DCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B00DD40(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (a1[3] <= a3)
  {
    *&v10 = "usdImaging/instanceAdapter.cpp";
    *(&v10 + 1) = "operator()";
    v11 = 959;
    v12 = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfVec3d>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec3d]";
    LOBYTE(v13) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v10 = 0uLL;
      v11 = 0;
      v7 = &v10;
      sub_29A194A04(v6, a3 + 1, &v7);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v8, &v7);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void sub_29B00E398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B00E3D0(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void sub_29B00E8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B00E92C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (a1[3] <= a3)
  {
    v10 = "usdImaging/instanceAdapter.cpp";
    v11 = "operator()";
    v12 = 959;
    v13 = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfVec3f>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec3f]";
    LOBYTE(v14) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      LODWORD(v11) = 0;
      v10 = 0;
      v7 = &v10;
      sub_29A193304(v6, a3 + 1, &v7);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v8, &v7);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void sub_29B00EF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B00EFBC(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
}

void sub_29B00F494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B00F518(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (a1[3] <= a3)
  {
    v11[0] = "usdImaging/instanceAdapter.cpp";
    v11[1] = "operator()";
    v11[2] = 959;
    v11[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfVec3h>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec3h]";
    LOBYTE(v12) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v11, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v8 = 0;
      v7 = 0;
      v11[0] = &v7;
      sub_29A193E08(v6, a3 + 1, v11);
    }
  }

  memset(v10, 0, sizeof(v10));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v10, v9);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v9, &v7);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void sub_29B00FB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B00FBA8(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
}

void sub_29B010080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B010104(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (a1[3] <= a3)
  {
    v10 = "usdImaging/instanceAdapter.cpp";
    v11 = "operator()";
    v12 = 959;
    v13 = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfVec3i>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec3i]";
    LOBYTE(v14) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      LODWORD(v11) = 0;
      v10 = 0;
      v7 = &v10;
      sub_29A21C418(v6, a3 + 1, &v7);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v8, &v7);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void **sub_29B010608(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FD868(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec3i>::Invoke, &stru_2A20409B8);
  }
}

void sub_29B0107F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B010828(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
}

void sub_29B010D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B010D84(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (a1[3] <= a3)
  {
    *&v10 = "usdImaging/instanceAdapter.cpp";
    *(&v10 + 1) = "operator()";
    *&v11 = 959;
    *(&v11 + 1) = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfVec4d>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec4d]";
    LOBYTE(v12) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v10 = 0u;
      v11 = 0u;
      v7 = &v10;
      sub_29A196FC0(v6, a3 + 1, &v7);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v8, &v7);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void sub_29B0113C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B011400(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
}

void sub_29B0118D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B01195C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (a1[3] <= a3)
  {
    *&v10 = "usdImaging/instanceAdapter.cpp";
    *(&v10 + 1) = "operator()";
    v11 = 959;
    v12 = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfVec4f>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec4f]";
    LOBYTE(v13) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v10 = 0uLL;
      v7 = &v10;
      sub_29A19596C(v6, a3 + 1, &v7);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v8, &v7);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void sub_29B011F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B011FCC(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
}

void sub_29B0124A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B012528(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (a1[3] <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfVec4h>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec4h]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v7 = 0;
      v10[0] = &v7;
      sub_29A196490(v6, a3 + 1, v10);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v8, &v7);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void sub_29B012B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B012B98(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
}

void sub_29B013070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B0130F4(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (a1[3] <= a3)
  {
    *&v10 = "usdImaging/instanceAdapter.cpp";
    *(&v10 + 1) = "operator()";
    v11 = 959;
    v12 = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<pxrInternal__aapl__pxrReserved__::GfVec4i>::operator()(const std::vector<UsdPrim> &, size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec4i]";
    LOBYTE(v13) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v10 = 0uLL;
      v7 = &v10;
      sub_29A21E52C(v6, a3 + 1, &v7);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v8, &v7);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void **sub_29B0135DC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FE4B4(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec4i>::Invoke, &stru_2A20409F8);
  }
}

void sub_29B0137C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B0137F8(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
}

void sub_29B013CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B013D54(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (a1[3] <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<BOOL>::operator()(const std::vector<UsdPrim> &, size_t) [T = BOOL]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v7[0] = 0;
      v10[0] = v7;
      sub_29A20CFDC(v6, a3 + 1, v10);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v8, v7);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v7);
}

void **sub_29B014238(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A2CB120(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29B0142CC, &stru_2A2042410);
  }
}

double sub_29B0142CC@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29B01431C;
  a1[2] = &stru_2A2042410;
  return result;
}

uint64_t sub_29B01431C(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
  }

  return result;
}

void sub_29B0144B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B0144F0(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<char>::_DecRef();
}

void sub_29B0149C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B014A4C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (a1[3] <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<char>::operator()(const std::vector<UsdPrim> &, size_t) [T = char]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v7[0] = 0;
      v10[0] = v7;
      sub_29AC82EDC(v6, a3 + 1, v10);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v8, v7);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v7);
}

void **sub_29B014F30(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29AD64314(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29B014FC4, &stru_2A2042428);
  }
}

double sub_29B014FC4@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29B015014;
  a1[2] = &stru_2A2042428;
  return result;
}

uint64_t sub_29B015014(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<char>::_DecRef();
  }

  return result;
}

void sub_29B0151B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B0151E8(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

void sub_29B0156C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B015744(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (a1[3] <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<double>::operator()(const std::vector<UsdPrim> &, size_t) [T = double]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v7 = 0;
      v10[0] = &v7;
      sub_29A18FD48(v6, a3 + 1, v10);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v8, &v7);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void sub_29B015D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B015DB8(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29B016290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B016314(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = a1 + 3;
  if (a1[3] <= a3)
  {
    v11[0] = "usdImaging/instanceAdapter.cpp";
    v11[1] = "operator()";
    v11[2] = 959;
    v11[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<float>::operator()(const std::vector<UsdPrim> &, size_t) [T = float]";
    LOBYTE(v12) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v11, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v8 = 0;
      v11[0] = &v8;
      sub_29A18E224(v6, a3 + 1, v11, v7);
    }
  }

  memset(v10, 0, sizeof(v10));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v10, v9);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v9, &v8);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v8);
}

void sub_29B016950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B016988(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<short>::_DecRef();
}

void sub_29B016E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B016EE4(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = a1 + 3;
  if (a1[3] <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<short>::operator()(const std::vector<UsdPrim> &, size_t) [T = short]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v7 = 0;
      v10[0] = &v7;
      sub_29AC834AC(v6, a3 + 1, v10);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v8, &v7);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void **sub_29B0173C8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29AD81948(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v5(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {
    v4 = MEMORY[0x29EDC94F0];

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29B01745C, v4);
  }
}

_WORD *sub_29B01745C@<X0>(void *a1@<X8>)
{
  result = operator new(2uLL);
  *result = 0;
  *a1 = result;
  v3 = MEMORY[0x29EDC94F0];
  a1[1] = sub_29B0174A4;
  a1[2] = v3;
  return result;
}

void sub_29B0174A4(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29B017600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B017638(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29B017B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B017B94(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = a1 + 3;
  if (a1[3] <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<int>::operator()(const std::vector<UsdPrim> &, size_t) [T = int]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v7 = 0;
      v10[0] = &v7;
      sub_29A19D7EC(v6, a3 + 1, v10);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v8, &v7);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void sub_29B0181C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B018200(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_DecRef();
}

void sub_29B0186D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B01875C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = a1 + 3;
  if (a1[3] <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<unsigned short>::operator()(const std::vector<UsdPrim> &, size_t) [T = unsigned short]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v7 = 0;
      v10[0] = &v7;
      sub_29A19BDAC(v6, a3 + 1, v10);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v8, &v7);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void **sub_29B018C40(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29AD81C64(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v5(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {
    v4 = MEMORY[0x29EDC94F8];

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29B018CD4, v4);
  }
}

_WORD *sub_29B018CD4@<X0>(void *a1@<X8>)
{
  result = operator new(2uLL);
  *result = 0;
  *a1 = result;
  v3 = MEMORY[0x29EDC94F8];
  a1[1] = sub_29B018D1C;
  a1[2] = v3;
  return result;
}

void sub_29B018D1C(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29B018E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B018EB0(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
}

void sub_29B019388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B01940C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = a1 + 3;
  if (a1[3] <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<unsigned int>::operator()(const std::vector<UsdPrim> &, size_t) [T = unsigned int]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v7 = 0;
      v10[0] = &v7;
      sub_29A19CAF8(v6, a3 + 1, v10);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v8, &v7);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7);
}

void sub_29B019A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B019A78(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
}

void sub_29B019F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B019FD4(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 3);
  if (a1[3] <= a3)
  {
    v10[0] = "usdImaging/instanceAdapter.cpp";
    v10[1] = "operator()";
    v10[2] = 959;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInheritedPrimvarFn<unsigned char>::operator()(const std::vector<UsdPrim> &, size_t) [T = unsigned char]";
    LOBYTE(v11) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "instanceIdx < result.size()", 0) & 1) == 0)
    {
      v7[0] = 0;
      v10[0] = v7;
      sub_29A19E2EC(v6, a3 + 1, v10);
    }
  }

  memset(v9, 0, sizeof(v9));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v9, v8);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v8, v7);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v7);
}

void sub_29B01A5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B01A630(uint64_t a1)
{
  v1 = (a1 + 64);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
}

void sub_29B01AB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B01AB8C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8[7] = *MEMORY[0x29EDCA608];
  if (*(a1 + 24) <= a3)
  {
    sub_29B2CEC00(v8, a3, (a1 + 24));
  }

  memset(v7, 0, sizeof(v7));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v7, v6);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v6, v5);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v5);
}

void sub_29B01B170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B01B1A8(uint64_t a1)
{
  v4 = (a1 + 64);
  sub_29A1E234C(&v4);
  sub_29A216064((a1 + 24));
  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_29B01B680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B01B704(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8[7] = *MEMORY[0x29EDCA608];
  if (*(a1 + 24) <= a3)
  {
    sub_29B2CECAC(v8, a3, (a1 + 24));
  }

  memset(v7, 0, sizeof(v7));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v7, v6);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v6, v5);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v5);
}

void **sub_29B01BBC8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A1FA80C(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29B01BC5C, &stru_2A2047398);
  }
}

double sub_29B01BC5C@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29B01BCAC;
  a1[2] = &stru_2A2047398;
  return result;
}

void sub_29B01BCAC(void *a1)
{
  if (a1)
  {
    sub_29A216064(a1);

    operator delete(a1);
  }
}

void sub_29B01C170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B01C1F4(uint64_t *a1, uint64_t a2)
{
  memset(v5, 0, sizeof(v5));
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v5, v4);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, v4, &v3);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v3);
}

void sub_29B01C334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, char a17)
{
  sub_29A57F434(&a11);
  sub_29A1DCEA8(&a15);
  a11 = &a17;
  sub_29A1E234C(&a11);
  _Unwind_Resume(a1);
}

void sub_29B01C808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

void sub_29B01C88C(void *a1, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_29B01C8C8(a1, v4);
  }

  else if (!v3)
  {
    sub_29ABF5B70(a1, *a1 + 40 * a2);
  }
}

void sub_29B01C8C8(uint64_t a1, unint64_t a2)
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
    sub_29ACCE3D0(a1, *a1, v13, v14);
    v15 = *a1;
    *a1 = v14;
    v16 = *(a1 + 16);
    *(a1 + 8) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    sub_29ACCE544(&v17);
  }
}

void sub_29B01CA40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ACCE544(va);
  _Unwind_Resume(a1);
}

BOOL sub_29B01CA54(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_29B01CB68(a1, a2, &v9);
  v5 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::ComputeCollectionsContainingPath(*(a1 + 8), &v9, &v8);
    v6 = **(a1 + 16);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(*(a1 + 16) + 8) - v6) >> 3) > a3)
    {
      if ((v6 + 40 * a3) != &v8)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
    }

    sub_29A792748();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
  sub_29A1DE3A4(&v9);
  return v5;
}

void sub_29B01CB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B01CB68(uint64_t *a1@<X0>, uint64_t a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X8>)
{
  memset(v6, 0, sizeof(v6));
  sub_29A2FCAE8(v6, (*(a2 + 8) - *a2) >> 5);
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(*a1, v6, a3);
  v7 = v6;
  sub_29A1E234C(&v7);
}

void sub_29B01CC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A1E234C(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_29B01CC5C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29B001EE8(v3 + 4);
    }

    operator delete(v3);
  }

  return v2;
}

void sub_29B01D130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_29B01D1B4(void *a1, uint64_t *a2, unint64_t a3)
{
  v6 = a1[11];
  v7 = *v6;
  if (a3 >= (v6[1] - *v6) >> 2)
  {
    v12[0] = "usdImaging/instanceAdapter.cpp";
    v12[1] = "operator()";
    v12[2] = 2341;
    v12[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInstanceMapVariabilityFn::operator()(const std::vector<UsdPrim> &, size_t)";
    v13 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v12, "instanceIdx < visibility->size()", 0))
    {
      return 1;
    }

    v7 = *a1[11];
  }

  v8 = *a2;
  v9 = a2[1];
  while (1)
  {
    if (v8 == v9)
    {
      v10 = sub_29B01D294(a1, a2);
      goto LABEL_8;
    }

    if (sub_29B01D38C(a1, v8))
    {
      break;
    }

    v8 += 32;
  }

  v10 = 2;
LABEL_8:
  *(v7 + 4 * a3) = v10;
  return 1;
}

uint64_t sub_29B01D294(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetTimeWithOffset(*(a1 + 80), 0.0);
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  return 1;
}

void sub_29B01D374(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B01D38C(void *a1, uint64_t a2)
{
  v4 = sub_29B0060B0(a1, a2);
  if (a1[4] + 48 * a1[5] == v4)
  {
    v16 = 0;
    v5 = a1[10];
    v11 = *a2;
    v6 = *(a2 + 8);
    v12 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 6, 1uLL, memory_order_relaxed);
    }

    sub_29A1E21F4(&v13, (a2 + 16));
    sub_29A1E2240(&v14, (a2 + 20));
    v7 = *(a2 + 24);
    v15 = v7;
    if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 &= 0xFFFFFFFFFFFFFFF8;
    }

    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v8)
    {
      v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v9)
    {
      v9 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsVarying(v5, &v11, (v8 + 1264), 1024, v9 + 104, &v16, 1, 0);
  }

  return *(v4 + 40) & 1;
}

void sub_29B01D9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_29B01DA34(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = *v6;
  if (a3 >= (v6[1] - *v6) >> 2)
  {
    v11 = "usdImaging/instanceAdapter.cpp";
    v12 = "operator()";
    v13 = 2445;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInstanceMapFn::operator()(const std::vector<UsdPrim> &, size_t)";
    v15 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v11, "instanceIdx < visibility->size()", 0))
    {
      return 1;
    }

    v7 = **(a1 + 16);
  }

  v8 = *(v7 + 4 * a3);
  if (v8 == 3)
  {
    v11 = "usdImaging/instanceAdapter.cpp";
    v12 = "operator()";
    v13 = 2453;
    v14 = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_ComputeInstanceMapFn::operator()(const std::vector<UsdPrim> &, size_t)";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v11, "instanceVis != _InstancerData::Unknown", 0);
    v8 = *(v7 + 4 * a3);
  }

  if (v8 == 1 || v8 == 2 && sub_29B01DB50(a1, a2))
  {
    v9 = *(a1 + 24);
    LODWORD(v11) = a3;
    sub_29A7ACA64(v9, &v11);
  }

  return 1;
}

uint64_t sub_29B01DB50(uint64_t a1, uint64_t a2)
{
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*a2);
  }

  return 1;
}

void sub_29B01DC14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void *sub_29B01DC2C(void *a1, unint64_t a2, int *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A0111A4(a1, a2);
    v6 = 0;
    v7 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v8 = v7 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v9 = vdupq_n_s64(v7);
    v10 = a1[1];
    v11 = v10 + 4 * a2;
    v12 = *a3;
    v13 = v8 + 4;
    v14 = (v10 + 8);
    do
    {
      v15 = vdupq_n_s64(v6);
      v16 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v15, xmmword_29B430070)));
      if (vuzp1_s16(v16, *v9.i8).u8[0])
      {
        *(v14 - 2) = v12;
      }

      if (vuzp1_s16(v16, *&v9).i8[2])
      {
        *(v14 - 1) = v12;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v15, xmmword_29B433E10)))).i32[1])
      {
        *v14 = v12;
        v14[1] = v12;
      }

      v6 += 4;
      v14 += 4;
    }

    while (v13 != v6);
    a1[1] = v11;
  }

  return a1;
}

void sub_29B01DD24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B01E1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_29B01E23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - *(a1 + 24);
  if (v3 < 0)
  {
    return 1;
  }

  v4 = **(a1 + 16);
  if (v3 < ((*(*(a1 + 16) + 8) - v4) >> 2))
  {
    if (*(v4 + 4 * v3) != 0x7FFFFFFF)
    {
      memset(&v6[4], 0, 24);
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(*a1, *(a1 + 8), v6);
      pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v6);
    }

    return 1;
  }

  return 0;
}

void sub_29B01E3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A57F434(&a10);
  a10 = &a14;
  sub_29A1E234C(&a10);
  _Unwind_Resume(a1);
}

void sub_29B01E430(int **a1)
{
  v1 = *a1;
  v5 = **a1;
  v2 = *(v1 + 1);
  v6 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(v2 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v7, v1 + 4);
  sub_29A1E2240(&v8, v1 + 5);
  v3 = *(v1 + 3);
  v9 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v9 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v7))
  {
    sub_29A7E416C(&v5, &v4);
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v4);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v5);
}

void sub_29B01E65C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29A57F434(va1);
  _Unwind_Resume(a1);
}

void sub_29B01EB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_29A57F434(&a16);
  sub_29A57F434(&a20);
  sub_29A57F434(&a29);
  _Unwind_Resume(a1);
}

int64x2_t sub_29B01EBB8(int64x2_t *a1, _DWORD *a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_29B01EC54(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 >> 9));
  v7 = *v6 + 8 * (v4 & 0x1FF);
  if (a1[1].i64[0] == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  if (v8 == *v6)
  {
    v8 = *(v6 - 1) + 4096;
  }

  sub_29A1DDD84((v8 - 8), a2);
  sub_29A1DDDC0((v8 - 4), a2 + 1);
  result = vaddq_s64(a1[2], xmmword_29B435730);
  a1[2] = result;
  return result;
}

void sub_29B01EC54(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = v3 - v2;
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = ((v3 - v2) << 6) - 1;
  }

  v6 = a1[4];
  if ((v5 - (a1[5] + v6)) < 0x200)
  {
    v7 = a1[3];
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v4 >= v9)
    {
      if (v7 == v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 >> 2;
      }

      v25 = a1;
      v22 = sub_29A00C9BC(a1, v10);
      v23 = v22;
      *&v24 = v22;
      *(&v24 + 1) = &v22[8 * v11];
      v21 = operator new(0x1000uLL);
      sub_29A0D6828(&v22, &v21);
      v13 = a1[1];
      v12 = a1[2];
      if (v13 != v12)
      {
        do
        {
          sub_29A0D6828(&v22, v13);
          v13 += 8;
          v12 = a1[2];
        }

        while (v13 != v12);
        v13 = a1[1];
      }

      v14 = *a1;
      v15 = v23;
      *a1 = v22;
      a1[1] = v15;
      v22 = v14;
      v23 = v13;
      v16 = a1[3];
      v17 = v24;
      *(a1 + 1) = v24;
      *&v24 = v12;
      *(&v24 + 1) = v16;
      if (v17 - v15 == 8)
      {
        v18 = 256;
      }

      else
      {
        v18 = a1[4] + 512;
      }

      a1[4] = v18;
      if (v12 != v13)
      {
        *&v24 = &v12[(v13 - v12 + 7) & 0xFFFFFFFFFFFFFFF8];
      }

      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      if (v2 == v8)
      {
        v22 = operator new(0x1000uLL);
        sub_29A0D6614(a1, &v22);
        v19 = a1[2];
        v22 = *(v19 - 8);
        a1[2] = v19 - 8;
      }

      else
      {
        v22 = operator new(0x1000uLL);
      }

      sub_29A0D671C(a1, &v22);
      if (a1[2] - a1[1] == 8)
      {
        v20 = 256;
      }

      else
      {
        v20 = a1[4] + 512;
      }

      a1[4] = v20;
    }
  }

  else
  {
    a1[4] = v6 + 512;
    v22 = *(v3 - 1);
    a1[2] = v3 - 8;
    sub_29A0D671C(a1, &v22);
  }
}

void sub_29B01EE30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_29B01EE7C(uint64_t a1, void *a2, int a3)
{
  if (a2[1] != *a2 && *(a1 + 104))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath((a2[1] - 32));
  }

  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v4 = *(a1 + 32);
  v5 = *v4;
  if (*v4)
  {
    v6 = 0;
    v7 = v4[4];
    while (*(v7 + 4 * v6) != a3)
    {
      if (v5 == ++v6)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v12) = v6;
    sub_29A7ACA64(v16, &v12);
    if (*&v16[0])
    {
      if (!*(a1 + 104))
      {
        for (i = *(*(a1 + 24) + 128); i; i = *i)
        {
          v9 = *(a1 + 40);
          pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath((i + 2), &v11);
          pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(v9, &v11, &v12);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
          sub_29A1DE3A4(&v11);
          *(a1 + 112) |= (*(*i[4] + 328))(i[4], *(a1 + 48), i + 2, &v12, *(a1 + 8), v16, *(a1 + 56));
          if ((v15 & 7) != 0)
          {
            atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14 + 1);
          sub_29A1DE3A4(&v14);
          if (v13)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13, v10);
          }
        }
      }
    }
  }

LABEL_17:
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29B01F348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void **a21)
{
  sub_29A1DCEA8(&a10);
  a21 = &a18;
  sub_29A1E234C(&a21);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void *sub_29B01F3FC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = *(a2 + 24);
  v6 = *(a3 + 24);
  if (v5 != v6)
  {
    v4 = ((v5 - **(a2 + 16)) >> 3) + ((*(a2 + 16) - *(a3 + 16)) << 6) - ((v6 - **(a3 + 16)) >> 3);
  }

  v7 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v7;
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  sub_29B01F48C(a1, v11, v10, v4);
  return a1;
}

void *sub_29B01F48C(void *result, _OWORD *a2, _OWORD *a3, unint64_t a4)
{
  v11 = result;
  v12 = 0;
  if (a4)
  {
    v6 = result;
    sub_29A00C968(result, a4);
    v7 = a2[1];
    v10[0] = *a2;
    v10[1] = v7;
    v8 = a3[1];
    v9[0] = *a3;
    v9[1] = v8;
    return sub_29B01F514(v6, v10, v9);
  }

  return result;
}

_DWORD *sub_29B01F514(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  v4 = *(a1 + 8);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  v6 = a3[1];
  v8[0] = *a3;
  v8[1] = v6;
  result = sub_29B01F56C(a1, v9, v8, v4);
  *(a1 + 8) = result;
  return result;
}

_DWORD *sub_29B01F56C(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  v5 = *(a2 + 24);
  if (v5 != *(a3 + 24))
  {
    v8 = *(a2 + 16);
    do
    {
      if (v5 == *v8)
      {
        v5 = *(v8 - 1) + 4096;
      }

      sub_29A1E21F4(v4, (v5 - 8));
      sub_29A1E2240(v4 + 1, (v5 - 4));
      v8 = *(a2 + 16);
      v9 = *(a2 + 24);
      if (v9 == *v8)
      {
        *(a2 + 16) = v8 - 1;
        v9 = *--v8 + 4096;
      }

      v5 = v9 - 8;
      *(a2 + 24) = v9 - 8;
      v4 = v14 + 2;
      v14 += 2;
    }

    while (*(a3 + 24) != v9 - 8);
  }

  v12 = 1;
  sub_29A1E2280(v11);
  return v4;
}

void *sub_29B01F654@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  result[1] = v2;
  return result;
}

uint64_t sub_29B01F660()
{
  v1 = nullsub_1780;
  return sub_29B020A78(&var8);
}

void sub_29B01F6C8()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_ENABLE_SCENE_LIGHTS))
  {
    sub_29B2CEEAC();
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::IsEnabledSceneLights(pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter *this)
{
  if ((atomic_load_explicit(&qword_2A1753E28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753E28))
  {
    v2 = atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_ENABLE_SCENE_LIGHTS);
    if (!v2)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
    }

    byte_2A1753E20 = *v2 == 1;
    __cxa_guard_release(&qword_2A1753E28);
  }

  return byte_2A1753E20;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a3@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_29B01F828(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::IsEnabledSceneLights(this);
  if (result)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v4)
    {
      v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsSprimTypeSupported(a2, v4 + 31);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::Populate(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v4)
  {
    LODWORD(v4) = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_AddSprim(a1, v4 + 248, a2);
}

void sub_29B01FB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  sub_29A57F434(va);
  sub_29A1DCEA8(v7);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_UnregisterLightCollections(pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetCollectionCache(this);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v4)
  {
    v4 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(a2, v4, &v6);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetStage(this, &v5);
}

void sub_29B01FD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11);
    }
  }

  sub_29A5AD4D8();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_UpdateCollectionsChanged(pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  CollectionCache = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetCollectionCache(this);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v6, a2);
  v6[3] = 0;
  v6[0] = &unk_2A20618F0;
  pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::GetLightLinkCollectionAPI(v6, v5);
  LOBYTE(a2) = pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::UpdateCollection(CollectionCache, v5);
  pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::~UsdCollectionAPI(v5);
  pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::GetShadowLinkCollectionAPI(v6, v5);
  LOBYTE(CollectionCache) = pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::UpdateCollection(CollectionCache, v5);
  pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::~UsdCollectionAPI(v5);
  pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::~UsdLuxLightAPI(v6);
  return (a2 | CollectionCache) & 1;
}

void sub_29B01FF00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::~UsdCollectionAPI(&a9);
  pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::~UsdLuxLightAPI(&a13);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::TrackVariability(uint64_t a1, int *a2, uint64_t a3, _DWORD *a4)
{
  v20 = *a2;
  v7 = *(a2 + 1);
  v21 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v22, a2 + 4);
  sub_29A1E2240(&v23, a2 + 5);
  v8 = *(a2 + 3);
  v24 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v9)
  {
    v9 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsTransformVarying(a1, &v20, 1, (v9 + 128), a4);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23);
  sub_29A1DE3A4(&v22);
  if (v21)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v21, v10);
  }

  v15 = *a2;
  v11 = *(a2 + 1);
  v16 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v17, a2 + 4);
  sub_29A1E2240(&v18, a2 + 5);
  v12 = *(a2 + 3);
  v19 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v19 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v13)
  {
    v13 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v14)
  {
    v14 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsVarying(a1, &v15, (v13 + 1264), 2, v14 + 104, a4, 1, 0);
}

void sub_29B02032C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  a12 = &a18;
  sub_29A7A3864(&a12);
  a12 = &a21;
  sub_29A5BB908(&a12);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  IsTransformationAffectedByAttrNamed = pxrInternal__aapl__pxrReserved__::UsdGeomXformable::IsTransformationAffectedByAttrNamed(a4, a2);
  if (IsTransformationAffectedByAttrNamed)
  {
    return 1;
  }

  if ((*a4 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a4 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(IsTransformationAffectedByAttrNamed);
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v10)
  {
    v10 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  if ((*(v10 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v11 = ((*(v10 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v11 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v10);
  }

  if (*(v11 + 23) >= 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = *v11;
  }

  v13 = *(EmptyString + 23);
  if (v13 >= 0)
  {
    v14 = *(EmptyString + 23);
  }

  else
  {
    v14 = EmptyString[1];
  }

  v15 = strlen(v12);
  if (v14 < v15 || ((v16 = v15, v13 >= 0) ? (v17 = EmptyString) : (v17 = *EmptyString), v15 = strncmp(v17, v12, v16), v15))
  {
    if ((*a4 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v18 = ((*a4 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v18 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v15);
    }

    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v19)
    {
      v19 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    v20 = (*v19 & 0xFFFFFFFFFFFFFFF8) != 0 ? ((*v19 & 0xFFFFFFFFFFFFFFF8) + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v19);
    v21 = *(v20 + 23) >= 0 ? v20 : *v20;
    v22 = *(v18 + 23);
    v23 = v22 >= 0 ? *(v18 + 23) : v18[1];
    v24 = strlen(v21);
    if (v23 < v24)
    {
      return 2;
    }

    v25 = v24;
    v26 = v22 >= 0 ? v18 : *v18;
    if (strncmp(v26, v21, v25))
    {
      return 2;
    }
  }

  if (pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_UpdateCollectionsChanged(this, a2))
  {
    return 8;
  }

  else
  {
    return 2;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::GetMaterialResource(pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI *a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v4);
  if (pxrInternal__aapl__pxrReserved__::UsdPrim::_HasAPI(a2, SchemaInfo))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(a2, v6, v7);
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v7[3] = "usdImaging/lightAdapter.cpp";
  v7[4] = "GetMaterialResource";
  v7[5] = 262;
  v7[6] = "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::GetMaterialResource(const UsdPrim &, const SdfPath &, UsdTimeCode) const";
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
}

void sub_29B0208D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23, char a24, uint64_t a25, char a26)
{
  sub_29A124AB0(&a23);
  a10 = &a13;
  sub_29A124AB0(&a10);
  sub_29ABE8884(&a16);
  pxrInternal__aapl__pxrReserved__::ArResolverScopedCache::~ArResolverScopedCache(&a24);
  pxrInternal__aapl__pxrReserved__::ArResolverContextBinder::~ArResolverContextBinder(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_29B020A08(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_29B020A38(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

uint64_t sub_29B020A78(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AD1E0;
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

void sub_29B020B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B020B28(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B020B50@<D0>(_OWORD *a1@<X8>)
{
  sub_29B020B8C(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B020B8C(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AD220;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20ACFA0;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B020C38(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AD220;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B020CA4()
{
  v1 = nullsub_1781;
  return sub_29B0211F4(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingLightAPIAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X3>, const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals *a4@<X4>, void *a5@<X8>)
{
  if (*a2 | *a3)
  {
    *a5 = 0;
    a5[1] = 0;
  }

  else
  {
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v9)
    {
      v9 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens);
    if (!v10)
    {
      v10 = sub_29AC4497C(&pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens);
    }

    sub_29B020FB4(a1, a4, (v10 + 24), &v19);
    v20 = v19;
    v19 = 0uLL;
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightSchemaTokens);
    if (!v11)
    {
      v11 = sub_29ABEE510(&pxrInternal__aapl__pxrReserved__::HdLightSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v15, a1);
    v16 = 0;
    v15[0] = &unk_2A20618F0;
    v12 = operator new(0x30uLL);
    v12->~__shared_weak_count = &unk_2A20AD358;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v12->~__shared_weak_count_0, v15);
    v12->~__shared_weak_count_0 = &unk_2A205F368;
    v13 = v16;
    v12->__on_zero_shared_weak = v16;
    if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v12->__on_zero_shared_weak = (v12->__on_zero_shared_weak & 0xFFFFFFFFFFFFFFF8);
    }

    v12->~__shared_weak_count_0 = &unk_2A20618F0;
    v12[1].~__shared_weak_count = a4;
    v22 = v12;
    v14 = operator new(0x20uLL);
    v14->__vftable = &unk_2A20AD3A0;
    v14->__shared_owners_ = 0;
    v14->__shared_weak_owners_ = 0;
    v14[1].__vftable = v12;
    v22 = 0;
    sub_29B021BF0(&v22);
    v17 = v12;
    v18 = v14;
    pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v9 + 19, &v20, v11, &v17, &v21);
    *a5 = v21;
    v21 = 0uLL;
    if (v18)
    {
      sub_29A014BEC(v18);
    }

    pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::~UsdLuxLightAPI(v15);
    if (*(&v20 + 1))
    {
      sub_29A014BEC(*(&v20 + 1));
    }

    if (*(&v19 + 1))
    {
      sub_29A014BEC(*(&v19 + 1));
    }
  }
}

void sub_29B020F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_29A014BEC(a18);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B020FB4@<X0>(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x268uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterial::UsdImagingDataSourceMaterial(v8, a1, a2, a3);

  return sub_29AF7BD80(a4, v8);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingLightAPIAdapter::InvalidateImagingSubprim@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  *(a5 + 56) = 0x800000000;
  if (!(v6 | v7))
  {
    v8 = *a4;
    v9 = *(a4 + 8);
    if (*a4 != v9)
    {
      v10 = 0;
      v11 = 0;
      while (1)
      {
        if (v10)
        {
          goto LABEL_5;
        }

        if ((*v8 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          result = ((*v8 & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
        }

        v12 = *(result + 23);
        v13 = v12;
        if ((v12 & 0x80u) != 0)
        {
          v12 = result[1];
        }

        if (v12 >= 7)
        {
          if (v13 < 0)
          {
            result = *result;
          }

          result = strncmp(result, "inputs:", 7uLL);
          if (!result)
          {
            break;
          }
        }

        if ((v11 & 1) == 0)
        {
          if ((*v8 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            result = ((*v8 & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
          }

          v17 = *(result + 23);
          v18 = v17;
          if ((v17 & 0x80u) != 0)
          {
            v17 = result[1];
          }

          if (v17 < 6)
          {
            goto LABEL_27;
          }

          if (v18 < 0)
          {
            result = *result;
          }

          result = strncmp(result, "light:", 6uLL);
          if (result)
          {
LABEL_27:
            v10 = 0;
            v11 = 0;
            goto LABEL_28;
          }

          DefaultLocator = pxrInternal__aapl__pxrReserved__::HdLightSchema::GetDefaultLocator(result);
          result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, DefaultLocator);
        }

        v10 = 0;
        v11 = 1;
LABEL_28:
        if (++v8 == v9)
        {
          return result;
        }
      }

      v14 = pxrInternal__aapl__pxrReserved__::HdMaterialSchema::GetDefaultLocator(result);
      v15 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, v14);
      v16 = pxrInternal__aapl__pxrReserved__::HdLightSchema::GetDefaultLocator(v15);
      result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, v16);
LABEL_5:
      v10 = 1;
      goto LABEL_28;
    }
  }

  return result;
}

void sub_29B0211CC(pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter::~UsdImagingAPISchemaAdapter(a1);

  operator delete(v1);
}

uint64_t sub_29B0211F4(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AD2C8;
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

void sub_29B021280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B0212A4(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B0212CC@<D0>(_OWORD *a1@<X8>)
{
  sub_29B021308(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B021308(void *a1@<X8>)
{
  v2 = operator new(0x30uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AD308;
  v2[5] = 0;
  v2[3] = &unk_2A20AD270;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B0213B4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AD308;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B021420(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::~UsdLuxLightAPI((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29B02145C(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::~UsdLuxLightAPI((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29B02149C(void *a1@<X8>)
{
  v1 = a1;
  v16 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1753E48, memory_order_acquire) & 1) == 0)
  {
    v3 = __cxa_guard_acquire(&qword_2A1753E48);
    v1 = a1;
    if (v3)
    {
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v4)
      {
        v4 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v5 = *(v4 + 34);
      v13 = v5;
      if ((v5 & 7) != 0)
      {
        v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
        {
          v13 = v6;
        }
      }

      v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v7)
      {
        v7 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v8 = *(v7 + 85);
      v14 = v8;
      if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v14 &= 0xFFFFFFFFFFFFFFF8;
      }

      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v9)
      {
        v9 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v10 = *(v9 + 51);
      v15 = v10;
      if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v15 &= 0xFFFFFFFFFFFFFFF8;
      }

      qword_2A1753E30 = 0;
      *algn_2A1753E38 = 0;
      qword_2A1753E40 = 0;
      sub_29A12EF7C(&qword_2A1753E30, &v13, &v16, 3uLL);
      for (i = 16; i != -8; i -= 8)
      {
        v12 = *(&v13 + i);
        if ((v12 & 7) != 0)
        {
          atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      __cxa_atexit(sub_29A3C73E0, &qword_2A1753E30, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1753E48);
      v1 = a1;
    }
  }

  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}