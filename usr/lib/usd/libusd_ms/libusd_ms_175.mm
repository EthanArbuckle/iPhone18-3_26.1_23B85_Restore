void sub_29AF2DEF8(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A207D940;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<short>::_DecRef();
}

uint64_t sub_29AF2DF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29AC83134(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF2E05C((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29AC83A44(a2);
      *(*(a2 + 32) + 2 * v9) = v10;
      v11 = v7[1];
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
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF2E05C(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29AD81948(&v9))
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
    if (sub_29AD659D8(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<short>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF2E170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF2E1A0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209EBF0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF2E1F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF2E214(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF2E23C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF2E26C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209EC40))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF2E330(void *a1, void *a2)
{
  *a1 = &unk_2A209EC68;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF2E3E4(void *a1)
{
  *a1 = &unk_2A209EC68;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF2E460(void *a1)
{
  *a1 = &unk_2A209EC68;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF2E4E0(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043BA8;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_DecRef();
}

uint64_t sub_29AF2E574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A19BBD0(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF2E644((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A19C344(a2);
      *(*(a2 + 32) + 2 * v9) = v10;
      v11 = v7[1];
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
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF2E644(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29AD81C64(&v9))
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
    if (sub_29A19C440(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF2E758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF2E788(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209ECB8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF2E7E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF2E7FC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF2E824(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF2E854(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209ED08))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF2E918(void *a1, void *a2)
{
  *a1 = &unk_2A209ED30;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF2E9CC(void *a1)
{
  *a1 = &unk_2A209ED30;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF2EA48(void *a1)
{
  *a1 = &unk_2A209ED30;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF2EAC8(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043D18;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

uint64_t sub_29AF2EB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A19D6E4(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF2EC2C((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A19DBEC(a2);
      *(*(a2 + 32) + 4 * v9) = v10;
      v11 = v7[1];
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
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF2EC2C(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
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
    if (sub_29A19D610(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF2ED40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF2ED70(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209ED80;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF2EDC8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF2EDE4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF2EE0C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF2EE3C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209EDD0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF2EF00(void *a1, void *a2)
{
  *a1 = &unk_2A209EDF8;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF2EFB4(void *a1)
{
  *a1 = &unk_2A209EDF8;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF2F030(void *a1)
{
  *a1 = &unk_2A209EDF8;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF2F0B0(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043C60;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
}

uint64_t sub_29AF2F144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A19C954(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF2F214((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A19CEF8(a2);
      *(*(a2 + 32) + 4 * v9) = v10;
      v11 = v7[1];
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
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF2F214(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3F94B8(&v9))
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
    if (sub_29A19BC88(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF2F328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF2F358(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209EE48;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF2F3B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF2F3CC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF2F3F4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF2F424(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209EE98))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF2F4E8(void *a1, void *a2)
{
  *a1 = &unk_2A209EEC0;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF2F59C(void *a1)
{
  *a1 = &unk_2A209EEC0;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF2F618(void *a1)
{
  *a1 = &unk_2A209EEC0;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF2F698(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2047630;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
}

uint64_t sub_29AF2F72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A20F8FC(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF2F7FC((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A21013C(a2);
      *(*(a2 + 32) + 8 * v9) = v10;
      v11 = v7[1];
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
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF2F7FC(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A298D2C(&v9))
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
    if (sub_29A27DEAC(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF2F910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF2F940(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209EF10;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF2F998(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF2F9B4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF2F9DC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF2FA0C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209EF60))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF2FAD0(void *a1, void *a2)
{
  *a1 = &unk_2A209EF88;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF2FB84(void *a1)
{
  *a1 = &unk_2A209EF88;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF2FC00(void *a1)
{
  *a1 = &unk_2A209EF88;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF2FC80(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2047718;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
}

uint64_t sub_29AF2FD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A2109E8(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF2FDE4((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A2111A0(a2);
      *(*(a2 + 32) + 8 * v9) = v10;
      v11 = v7[1];
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
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF2FDE4(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3F9968(&v9))
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
    if (sub_29A27F920(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF2FEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF2FF28(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209EFD8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF2FF80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF2FF9C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF2FFC4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF2FFF4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209F028))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF300B8(void *a1, void *a2)
{
  *a1 = &unk_2A209F050;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF3016C(void *a1)
{
  *a1 = &unk_2A209F050;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF301E8(void *a1)
{
  *a1 = &unk_2A209F050;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF30268(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20430E0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

uint64_t sub_29AF302FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A18FC40(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF303D4((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A190088(a2);
      *(*(a2 + 32) + 8 * v9) = v10;
      v11 = v7[1];
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
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

double sub_29AF303D4(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A346994(&v9))
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
    v4 = 0.0;
    if (sub_29A190184(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
    }
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF304E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF30514(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209F0A0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF3056C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF30588(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF305B0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF305E0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209F0F0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF306A4(void *a1, void *a2)
{
  *a1 = &unk_2A209F118;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF30758(void *a1)
{
  *a1 = &unk_2A209F118;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF307D4(void *a1)
{
  *a1 = &unk_2A209F118;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF30854(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2042F70;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

uint64_t sub_29AF308E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A18E048(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF309C0((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A18E624(a2);
      *(*(a2 + 32) + 4 * v9) = v10;
      v11 = v7[1];
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
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

float sub_29AF309C0(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3F9DF4(&v9))
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
    v4 = 0.0;
    if (sub_29A18E720(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
    }
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF30AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF30B00(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209F168;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF30B58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF30B74(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF30B9C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF30BCC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209F1B8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF30C90(void *a1, void *a2)
{
  *a1 = &unk_2A209F1E0;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF30D44(void *a1)
{
  *a1 = &unk_2A209F1E0;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF30DC0(void *a1)
{
  *a1 = &unk_2A209F1E0;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF30E40(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043028;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
}

uint64_t sub_29AF30ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A18EE04(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF30FA4((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A18F540(a2);
      *(*(a2 + 32) + 2 * v9) = v10;
      v11 = v7[1];
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
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF30FA4(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3F9C34(&v9))
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
    if (sub_29A18E100(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF310B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF310E8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209F230;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF31140(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF3115C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF31184(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF311B4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209F280))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF31278(void *a1, void *a2)
{
  *a1 = &unk_2A209F2A8;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF3132C(void *a1)
{
  *a1 = &unk_2A209F2A8;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF313A8(void *a1)
{
  *a1 = &unk_2A209F2A8;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF31428(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = off_2A20479C8;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
}

void sub_29AF314BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29A213A04(a2, *(*(a1 + 16) + 16));
  v4 = *(a1 + 16);
  v7 = *v4;
  v5 = v4 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    v8 = 0;
    do
    {
      sub_29AF315D8((a1 + 8), (a1 + 32), &v14);
      sub_29A214388(a2);
      v9 = *(a2 + 32) + 24 * v8;
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v10 = v14;
      *(v9 + 16) = v15;
      *v9 = v10;
      v11 = v6[1];
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
          v12 = v6[2];
          v13 = *v12 == v6;
          v6 = v12;
        }

        while (!v13);
      }

      ++v8;
      v6 = v12;
    }

    while (v12 != v5);
  }
}

uint64_t sub_29AF315D8@<X0>(uint64_t *a1@<X0>, atomic_uint **a2@<X2>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a2, &v12);
  if (sub_29A1EFC10(&v12))
  {
    if ((v13 & 4) != 0)
    {
      v4 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(&v12);
    }

    else
    {
      v4 = v12;
    }

    if (*(v4 + 23) < 0)
    {
      sub_29A008D14(a3, *v4, *(v4 + 8));
    }

    else
    {
      v5 = *v4;
      *(a3 + 16) = *(v4 + 16);
      *a3 = v5;
    }
  }

  else
  {
    if (sub_29A1FA6D8(&v12))
    {
      if ((v13 & 4) != 0)
      {
        v6 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(&v12);
      }

      else
      {
        v6 = v12;
      }

      v11 = *v6;
      v7 = *(v6 + 32);
      if (v7)
      {
        v8 = *(v6 + 24);
        if (!v8)
        {
          v8 = (v7 - 1);
        }

        atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
      }

      if (v11)
      {
        if (*(v7 + 23) < 0)
        {
          sub_29A008D14(a3, *v7, *(v7 + 1));
        }

        else
        {
          v9 = *v7;
          *(a3 + 16) = *(v7 + 2);
          *a3 = v9;
        }
      }

      else
      {
        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
      }

      pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return sub_29A186B14(&v12);
}

void sub_29AF3173C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF31780(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209F2F8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF317D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF317F4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF3181C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF3184C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209F348))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF31910(void *a1, void *a2)
{
  *a1 = &unk_2A209F370;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF319C4(void *a1)
{
  *a1 = &unk_2A209F370;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF31A40(void *a1)
{
  *a1 = &unk_2A209F370;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF31AC0(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = off_2A2047A80;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
}

uint64_t sub_29AF31B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A214860(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      sub_29AF31C98((a1 + 8), (a1 + 32), &v14);
      result = sub_29A215100(a2);
      v10 = (*(a2 + 32) + 8 * v9);
      if (&v14 == v10)
      {
        if ((v14 & 7) != 0)
        {
          atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        if ((*v10 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v10 = v14;
      }

      v11 = v7[1];
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
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF31C98@<X0>(uint64_t *a1@<X0>, atomic_uint **a2@<X2>, atomic_uint **a3@<X8>)
{
  v16 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a2, &v14);
  if (!sub_29A1FA710(&v14))
  {
    if (!sub_29A1FA748(&v14))
    {
      *a3 = 0;
      return sub_29A186B14(&v14);
    }

    if ((v15 & 4) != 0)
    {
      v7 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(&v14);
    }

    else
    {
      v7 = v14;
    }

    v13 = *v7;
    v8 = *(v7 + 32);
    if (v8)
    {
      v9 = *(v7 + 24);
      if (!v9)
      {
        v9 = (v8 - 2);
      }

      atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
    }

    if (v13)
    {
      v10 = *v8;
      *a3 = v10;
      if (v10 & 7) == 0 || (v11 = (v10 & 0xFFFFFFFFFFFFFFF8), (atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed)))
      {
LABEL_21:
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
      }
    }

    else
    {
      v11 = 0;
    }

    *a3 = v11;
    goto LABEL_21;
  }

  if ((v15 & 4) != 0)
  {
    v4 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(&v14);
  }

  else
  {
    v4 = &v14;
  }

  v5 = *v4;
  *a3 = *v4;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a3 = v6;
    }
  }

  return sub_29A186B14(&v14);
}

void sub_29AF31DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF31E1C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209F3C0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF31E74(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF31E90(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF31EB8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF31EE8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209F410))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF31FAC(void *a1, void *a2)
{
  *a1 = &unk_2A209F438;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF32060(void *a1)
{
  *a1 = &unk_2A209F438;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF320DC(void *a1)
{
  *a1 = &unk_2A209F438;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3215C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2048280;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
}

uint64_t sub_29AF321F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A21DF14(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF322D0((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      result = sub_29A21E784(a2);
      v13 = (*(a2 + 32) + 16 * v9);
      *v13 = v10;
      v13[1] = v12;
      v14 = v7[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v7[2];
          v16 = *v15 == v7;
          v7 = v15;
        }

        while (!v16);
      }

      ++v9;
      v7 = v15;
    }

    while (v15 != v6);
  }

  return result;
}

uint64_t sub_29AF322D0(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FE4B4(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = v9;
    }

    v4 = *v3;
  }

  else
  {
    if (sub_29A3FE614(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF323F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF32420(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209F488;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF32478(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF32494(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF324BC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF324EC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209F4D8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF325B0(void *a1, void *a2)
{
  *a1 = &unk_2A209F500;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF32664(void *a1)
{
  *a1 = &unk_2A209F500;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF326E0(void *a1)
{
  *a1 = &unk_2A209F500;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF32760(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2048110;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
}

uint64_t sub_29AF327F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A21BE0C(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF328DC((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      result = sub_29A21C6E0(a2);
      v13 = *(a2 + 32) + 12 * v9;
      *v13 = v10;
      *(v13 + 8) = v12;
      v14 = v7[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v7[2];
          v16 = *v15 == v7;
          v7 = v15;
        }

        while (!v16);
      }

      ++v9;
      v7 = v15;
    }

    while (v15 != v6);
  }

  return result;
}

uint64_t sub_29AF328DC(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FD868(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = v9;
    }

    v4 = *v3;
  }

  else
  {
    if (sub_29A3FD9D0(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF32A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF32A34(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209F550;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF32A8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF32AA8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF32AD0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF32B00(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209F5A0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF32BC4(void *a1, void *a2)
{
  *a1 = &unk_2A209F5C8;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF32C78(void *a1)
{
  *a1 = &unk_2A209F5C8;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF32CF4(void *a1)
{
  *a1 = &unk_2A209F5C8;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF32D74(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2047FA0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
}

uint64_t sub_29AF32E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A219F48(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF32ED8((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A21A6E8(a2);
      *(*(a2 + 32) + 8 * v9) = v10;
      v11 = v7[1];
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
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF32ED8(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FCE54(&v9))
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
    if (sub_29A3FCEC4(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF32FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF3301C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209F618;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF33074(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF33090(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF330B8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF330E8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209F668))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF331AC(void *a1, void *a2)
{
  *a1 = &unk_2A209F690;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF33260(void *a1)
{
  *a1 = &unk_2A209F690;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF332DC(void *a1)
{
  *a1 = &unk_2A209F690;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3335C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20436A0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
}

uint64_t sub_29AF333F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A1962EC(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF334C0((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A1966EC(a2);
      *(*(a2 + 32) + 8 * v9) = v10;
      v11 = v7[1];
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
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF334C0(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FE8A4(&v9))
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
    if (sub_29A195848(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF335D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF33604(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209F6E0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF3365C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF33678(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF336A0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF336D0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209F730))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF33794(void *a1, void *a2)
{
  *a1 = &unk_2A209F758;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF33848(void *a1)
{
  *a1 = &unk_2A209F758;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF338C4(void *a1)
{
  *a1 = &unk_2A209F758;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF33944(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043478;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
}

uint64_t sub_29AF339D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A193C60(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF33AC0((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A1940CC(a2);
      v11 = *(a2 + 32) + 6 * v9;
      *(v11 + 4) = WORD2(v10);
      *v11 = v10;
      v12 = v7[1];
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
          v13 = v7[2];
          v14 = *v13 == v7;
          v7 = v13;
        }

        while (!v14);
      }

      ++v9;
      v7 = v13;
    }

    while (v13 != v6);
  }

  return result;
}

unint64_t sub_29AF33AC0(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FDC80(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = &v9;
    }

    v4 = *v3 | (*(v3 + 2) << 32);
  }

  else
  {
    if (sub_29A1931E0(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF33BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF33C14(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209F7A8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF33C6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF33C88(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF33CB0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF33CE0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209F7F8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF33DA4(void *a1, void *a2)
{
  *a1 = &unk_2A209F820;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF33E58(void *a1)
{
  *a1 = &unk_2A209F820;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF33ED4(void *a1)
{
  *a1 = &unk_2A209F820;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF33F54(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043250;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
}

uint64_t sub_29AF33FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A191640(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF340B8((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A191A40(a2);
      *(*(a2 + 32) + 4 * v9) = v10;
      v11 = v7[1];
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
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF340B8(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FD158(&v9))
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
    if (sub_29A190BD0(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF341CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF341FC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209F870;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF34254(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF34270(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF34298(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF342C8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209F8C0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF3438C(void *a1, void *a2)
{
  *a1 = &unk_2A209F8E8;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF34440(void *a1)
{
  *a1 = &unk_2A209F8E8;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF344BC(void *a1)
{
  *a1 = &unk_2A209F8E8;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3453C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20435E8;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
}

uint64_t sub_29AF345D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A195790(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF346C4((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      v14 = v13;
      v16 = v15;
      result = sub_29A195BC4(a2);
      v17 = (*(a2 + 32) + 16 * v9);
      *v17 = v10;
      *(v17 + 1) = v12;
      *(v17 + 2) = v14;
      *(v17 + 3) = v16;
      v18 = v7[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v7[2];
          v20 = *v19 == v7;
          v7 = v19;
        }

        while (!v20);
      }

      ++v9;
      v7 = v19;
    }

    while (v19 != v6);
  }

  return result;
}

float sub_29AF346C4(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FEA70(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = v9;
    }

    v4 = *v3;
  }

  else
  {
    v4 = 0.0;
    if (sub_29A195CC0(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
    }
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF347FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF3482C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209F938;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF34884(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF348A0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF348C8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF348F8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209F988))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF349BC(void *a1, void *a2)
{
  *a1 = &unk_2A209F9B0;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF34A70(void *a1)
{
  *a1 = &unk_2A209F9B0;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF34AEC(void *a1)
{
  *a1 = &unk_2A209F9B0;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF34B6C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20433C0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

uint64_t sub_29AF34C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A193124(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF34CF4((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      v14 = v13;
      result = sub_29A1935CC(a2);
      v15 = (*(a2 + 32) + 12 * v9);
      *v15 = v10;
      *(v15 + 1) = v12;
      *(v15 + 2) = v14;
      v16 = v7[1];
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
          v17 = v7[2];
          v18 = *v17 == v7;
          v7 = v17;
        }

        while (!v18);
      }

      ++v9;
      v7 = v17;
    }

    while (v17 != v6);
  }

  return result;
}

float sub_29AF34CF4(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FDE60(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = v9;
    }

    v4 = *v3;
  }

  else
  {
    v4 = 0.0;
    if (sub_29A1936C8(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
    }
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF34E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF34E54(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209FA00;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF34EAC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF34EC8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF34EF0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF34F20(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209FA50))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF34FE4(void *a1, void *a2)
{
  *a1 = &unk_2A209FA78;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF35098(void *a1)
{
  *a1 = &unk_2A209FA78;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF35114(void *a1)
{
  *a1 = &unk_2A209FA78;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF35194(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043198;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
}

uint64_t sub_29AF35228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A190B18(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF35308((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      result = sub_29A190F50(a2);
      v13 = (*(a2 + 32) + 8 * v9);
      *v13 = v10;
      *(v13 + 1) = v12;
      v14 = v7[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v7[2];
          v16 = *v15 == v7;
          v7 = v15;
        }

        while (!v16);
      }

      ++v9;
      v7 = v15;
    }

    while (v15 != v6);
  }

  return result;
}

float sub_29AF35308(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FD314(&v9))
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
    v4 = 0.0;
    if (sub_29A19104C(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
    }
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF35420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF35450(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209FAC8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF354A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF354C4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF354EC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF3551C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209FB18))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF355E0(void *a1, void *a2)
{
  *a1 = &unk_2A209FB40;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF35694(void *a1)
{
  *a1 = &unk_2A209FB40;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF35710(void *a1)
{
  *a1 = &unk_2A209FB40;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF35790(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043758;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
}

uint64_t sub_29AF35824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A196EB8(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF35918((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      v14 = v13;
      v16 = v15;
      result = sub_29A19722C(a2);
      v17 = (*(a2 + 32) + 32 * v9);
      *v17 = v10;
      *(v17 + 1) = v12;
      *(v17 + 2) = v14;
      *(v17 + 3) = v16;
      v18 = v7[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v7[2];
          v20 = *v19 == v7;
          v7 = v19;
        }

        while (!v20);
      }

      ++v9;
      v7 = v19;
    }

    while (v19 != v6);
  }

  return result;
}

double sub_29AF35918(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FED30(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = v9;
    }

    v4 = *v3;
  }

  else
  {
    v4 = 0.0;
    if (sub_29A197328(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
    }
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF35A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF35A80(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209FB90;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF35AD8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF35AF4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF35B1C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF35B4C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209FBE0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF35C10(void *a1, void *a2)
{
  *a1 = &unk_2A209FC08;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF35CC4(void *a1)
{
  *a1 = &unk_2A209FC08;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF35D40(void *a1)
{
  *a1 = &unk_2A209FC08;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF35DC0(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043530;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
}

uint64_t sub_29AF35E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A1948F8(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF35F48((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      v14 = v13;
      result = sub_29A194CC8(a2);
      v15 = (*(a2 + 32) + 24 * v9);
      *v15 = v10;
      *(v15 + 1) = v12;
      *(v15 + 2) = v14;
      v16 = v7[1];
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
          v17 = v7[2];
          v18 = *v17 == v7;
          v7 = v17;
        }

        while (!v18);
      }

      ++v9;
      v7 = v17;
    }

    while (v17 != v6);
  }

  return result;
}

double sub_29AF35F48(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FE138(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = v9;
    }

    v4 = *v3;
  }

  else
  {
    v4 = 0.0;
    if (sub_29A194DC4(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
    }
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF36078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF360A8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209FC58;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF36100(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF3611C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF36144(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF36174(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209FCA8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF36238(void *a1, void *a2)
{
  *a1 = &unk_2A209FCD0;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF362EC(void *a1)
{
  *a1 = &unk_2A209FCD0;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF36368(void *a1)
{
  *a1 = &unk_2A209FCD0;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF363E8(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043308;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
}

uint64_t sub_29AF3647C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A1921FC(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF3655C((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      result = sub_29A19255C(a2);
      v13 = (*(a2 + 32) + 16 * v9);
      *v13 = v10;
      *(v13 + 1) = v12;
      v14 = v7[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v7[2];
          v16 = *v15 == v7;
          v7 = v15;
        }

        while (!v16);
      }

      ++v9;
      v7 = v15;
    }

    while (v15 != v6);
  }

  return result;
}

double sub_29AF3655C(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FD4E0(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = v9;
    }

    v4 = *v3;
  }

  else
  {
    v4 = 0.0;
    if (sub_29A192658(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
    }
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF36674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF366A4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209FD20;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF366FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF36718(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF36740(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF36770(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209FD70))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF36834(void *a1, void *a2)
{
  *a1 = &unk_2A209FD98;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF368E8(void *a1)
{
  *a1 = &unk_2A209FD98;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF36964(void *a1)
{
  *a1 = &unk_2A209FD98;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF369E4(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20438C8;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::_DecRef();
}

uint64_t sub_29AF36A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A198988(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      sub_29AF36B60((a1 + 8), (a1 + 32), v17);
      result = sub_29A198DC8(a2);
      v10 = (*(a2 + 32) + (v9 << 6));
      v11 = v17[0];
      v12 = v17[1];
      v13 = v17[3];
      v10[2] = v17[2];
      v10[3] = v13;
      *v10 = v11;
      v10[1] = v12;
      v14 = v7[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v7[2];
          v16 = *v15 == v7;
          v7 = v15;
        }

        while (!v16);
      }

      ++v9;
      v7 = v15;
    }

    while (v15 != v6);
  }

  return result;
}

uint64_t sub_29AF36B60@<X0>(uint64_t *a1@<X0>, atomic_uint **a2@<X2>, _OWORD *a3@<X8>)
{
  v16 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a2, &v14);
  if (sub_29A76D024(&v14))
  {
    if ((v15 & 4) != 0)
    {
      v4 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(&v14);
    }

    else
    {
      v4 = v14;
    }

    v5 = v4[1];
    *a3 = *v4;
    a3[1] = v5;
    v6 = v4[3];
    a3[2] = v4[2];
    a3[3] = v6;
  }

  else
  {
    if (sub_29A197E30(&v14))
    {
      if ((v15 & 4) != 0)
      {
        v7 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(&v14);
      }

      else
      {
        v7 = v14;
      }

      v13 = *v7;
      v8 = *(v7 + 32);
      if (v8)
      {
        v9 = *(v7 + 24);
        if (!v9)
        {
          v9 = (v8 - 1);
        }

        atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
      }

      if (v13)
      {
        v10 = v8[1];
        *a3 = *v8;
        a3[1] = v10;
        v11 = v8[3];
        a3[2] = v8[2];
        a3[3] = v11;
      }

      else
      {
        a3[2] = 0u;
        a3[3] = 0u;
        *a3 = 0u;
        a3[1] = 0u;
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::_DecRef();
    }

    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return sub_29A186B14(&v14);
}

void sub_29AF36C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF36CCC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209FDE8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF36D24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF36D40(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF36D68(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF36D98(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209FE38))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF36E5C(void *a1, void *a2)
{
  *a1 = &unk_2A209FE60;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF36F10(void *a1)
{
  *a1 = &unk_2A209FE60;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF36F8C(void *a1)
{
  *a1 = &unk_2A209FE60;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3700C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A207D2C8;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3f>::_DecRef();
}

uint64_t sub_29AF370A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A859D60(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      sub_29AF37190((a1 + 8), (a1 + 32), v16);
      result = sub_29A85C4A8(a2);
      v10 = *(a2 + 32) + 36 * v9;
      v11 = v16[0];
      v12 = v16[1];
      *(v10 + 32) = v17;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v7[1];
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
          v14 = v7[2];
          v15 = *v14 == v7;
          v7 = v14;
        }

        while (!v15);
      }

      ++v9;
      v7 = v14;
    }

    while (v14 != v6);
  }

  return result;
}

uint64_t sub_29AF37190@<X0>(uint64_t *a1@<X0>, atomic_uint **a2@<X2>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a2, &v12);
  if (sub_29AD8F100(&v12))
  {
    if ((v13 & 4) != 0)
    {
      v4 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(&v12);
    }

    else
    {
      v4 = v12;
    }

    v5 = *(v4 + 16);
    *a3 = *v4;
    *(a3 + 16) = v5;
    *(a3 + 32) = *(v4 + 32);
  }

  else
  {
    if (sub_29AD57258(&v12))
    {
      if ((v13 & 4) != 0)
      {
        v6 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(&v12);
      }

      else
      {
        v6 = v12;
      }

      v11 = *v6;
      v7 = *(v6 + 32);
      if (v7)
      {
        v8 = *(v6 + 24);
        if (!v8)
        {
          v8 = (v7 - 16);
        }

        atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
      }

      if (v11)
      {
        v9 = *(v7 + 16);
        *a3 = *v7;
        *(a3 + 16) = v9;
        *(a3 + 32) = *(v7 + 32);
      }

      else
      {
        *(a3 + 32) = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3f>::_DecRef();
    }

    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return sub_29A186B14(&v12);
}

void sub_29AF372CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF372FC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209FEB0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF37354(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF37370(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF37398(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF373C8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209FF00))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF3748C(void *a1, void *a2)
{
  *a1 = &unk_2A209FF28;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF37540(void *a1)
{
  *a1 = &unk_2A209FF28;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF375BC(void *a1)
{
  *a1 = &unk_2A209FF28;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3763C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A207D380;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2f>::_DecRef();
}

uint64_t sub_29AF376D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29AC7F660(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF377C4((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      v14 = v13;
      v16 = v15;
      result = sub_29AC7FCAC(a2);
      v17 = (*(a2 + 32) + 16 * v9);
      *v17 = v10;
      *(v17 + 1) = v12;
      *(v17 + 2) = v14;
      *(v17 + 3) = v16;
      v18 = v7[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v7[2];
          v20 = *v19 == v7;
          v7 = v19;
        }

        while (!v20);
      }

      ++v9;
      v7 = v19;
    }

    while (v19 != v6);
  }

  return result;
}

float sub_29AF377C4(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29AD8F444(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = v9;
    }

    v4 = *v3;
  }

  else
  {
    v4 = 0.0;
    if (sub_29AD57C40(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2f>::_DecRef();
    }
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF378FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF3792C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209FF78;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF37984(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF379A0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF379C8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF379F8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209FFC8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF37ABC(void *a1, void *a2)
{
  *a1 = &unk_2A209FFF0;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF37B70(void *a1)
{
  *a1 = &unk_2A209FFF0;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF37BEC(void *a1)
{
  *a1 = &unk_2A209FFF0;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF37C6C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043810;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
}

uint64_t sub_29AF37D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A197D6C(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      sub_29AF37DF8((a1 + 8), (a1 + 32), v20);
      result = sub_29A198240(a2);
      v10 = (*(a2 + 32) + (v9 << 7));
      v11 = v20[0];
      v12 = v20[1];
      v13 = v20[3];
      v10[2] = v20[2];
      v10[3] = v13;
      v14 = v20[7];
      v16 = v20[4];
      v15 = v20[5];
      v10[6] = v20[6];
      v10[7] = v14;
      v10[4] = v16;
      v10[5] = v15;
      *v10 = v11;
      v10[1] = v12;
      v17 = v7[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v7[2];
          v19 = *v18 == v7;
          v7 = v18;
        }

        while (!v19);
      }

      ++v9;
      v7 = v18;
    }

    while (v18 != v6);
  }

  return result;
}

uint64_t sub_29AF37DF8@<X0>(uint64_t *a1@<X0>, atomic_uint **a2@<X2>, _OWORD *a3@<X8>)
{
  v20 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a2, &v18);
  if (sub_29A3FC38C(&v18))
  {
    if ((v19 & 4) != 0)
    {
      v4 = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(&v18);
    }

    else
    {
      v4 = v18;
    }

    v5 = v4[5];
    a3[4] = v4[4];
    a3[5] = v5;
    v6 = v4[7];
    a3[6] = v4[6];
    a3[7] = v6;
    v7 = v4[1];
    *a3 = *v4;
    a3[1] = v7;
    v8 = v4[3];
    a3[2] = v4[2];
    a3[3] = v8;
  }

  else
  {
    if (sub_29A19833C(&v18))
    {
      if ((v19 & 4) != 0)
      {
        v9 = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(&v18);
      }

      else
      {
        v9 = v18;
      }

      v17 = *v9;
      v10 = *(v9 + 32);
      if (v10)
      {
        v11 = *(v9 + 24);
        if (!v11)
        {
          v11 = (v10 - 1);
        }

        atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
      }

      if (v17)
      {
        v12 = v10[5];
        a3[4] = v10[4];
        a3[5] = v12;
        v13 = v10[7];
        a3[6] = v10[6];
        a3[7] = v13;
        v14 = v10[1];
        *a3 = *v10;
        a3[1] = v14;
        v15 = v10[3];
        a3[2] = v10[2];
        a3[3] = v15;
      }

      else
      {
        a3[6] = 0u;
        a3[7] = 0u;
        a3[4] = 0u;
        a3[5] = 0u;
        a3[2] = 0u;
        a3[3] = 0u;
        *a3 = 0u;
        a3[1] = 0u;
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
    }

    a3[6] = 0u;
    a3[7] = 0u;
    a3[4] = 0u;
    a3[5] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return sub_29A186B14(&v18);
}

void sub_29AF37F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF37F94(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A0040;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF37FEC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF38008(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF38030(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF38060(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A0090))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF38124(void *a1, void *a2)
{
  *a1 = &unk_2A20A00B8;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF381D8(void *a1)
{
  *a1 = &unk_2A20A00B8;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF38254(void *a1)
{
  *a1 = &unk_2A20A00B8;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF382D4(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2048560;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
}

uint64_t sub_29AF38368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A221F2C(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      sub_29AF38464((a1 + 8), (a1 + 32), v17);
      result = sub_29A222868(a2);
      v10 = *(a2 + 32) + 72 * v9;
      v11 = v17[1];
      v12 = v17[2];
      v13 = v17[3];
      *(v10 + 64) = v18;
      *(v10 + 32) = v12;
      *(v10 + 48) = v13;
      *v10 = v17[0];
      *(v10 + 16) = v11;
      v14 = v7[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v7[2];
          v16 = *v15 == v7;
          v7 = v15;
        }

        while (!v16);
      }

      ++v9;
      v7 = v15;
    }

    while (v15 != v6);
  }

  return result;
}

uint64_t sub_29AF38464@<X0>(uint64_t *a1@<X0>, atomic_uint **a2@<X2>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a2, &v14);
  if (sub_29A3FBEFC(&v14))
  {
    if ((v15 & 4) != 0)
    {
      v4 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(&v14);
    }

    else
    {
      v4 = v14;
    }

    v5 = *(v4 + 48);
    *(a3 + 32) = *(v4 + 32);
    *(a3 + 48) = v5;
    *(a3 + 64) = *(v4 + 64);
    v6 = *(v4 + 16);
    *a3 = *v4;
    *(a3 + 16) = v6;
  }

  else
  {
    if (sub_29A3FC06C(&v14))
    {
      if ((v15 & 4) != 0)
      {
        v7 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(&v14);
      }

      else
      {
        v7 = v14;
      }

      v13 = *v7;
      v8 = *(v7 + 32);
      if (v8)
      {
        v9 = *(v7 + 24);
        if (!v9)
        {
          v9 = (v8 - 16);
        }

        atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
      }

      if (v13)
      {
        v10 = *(v8 + 48);
        *(a3 + 32) = *(v8 + 32);
        *(a3 + 48) = v10;
        *(a3 + 64) = *(v8 + 64);
        v11 = *(v8 + 16);
        *a3 = *v8;
        *(a3 + 16) = v11;
      }

      else
      {
        *(a3 + 64) = 0;
        *(a3 + 32) = 0u;
        *(a3 + 48) = 0u;
        *a3 = 0u;
        *(a3 + 16) = 0u;
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
    }

    *(a3 + 64) = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return sub_29A186B14(&v14);
}

void sub_29AF385B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF385E8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A0108;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF38640(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF3865C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF38684(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF386B4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A0158))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF38778(void *a1, void *a2)
{
  *a1 = &unk_2A20A0180;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF3882C(void *a1)
{
  *a1 = &unk_2A20A0180;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF388A8(void *a1)
{
  *a1 = &unk_2A20A0180;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF38928(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20483F0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
}

uint64_t sub_29AF389BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A220F88(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF38AB0((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      v14 = v13;
      v16 = v15;
      result = sub_29A2216E8(a2);
      v17 = (*(a2 + 32) + 32 * v9);
      *v17 = v10;
      *(v17 + 1) = v12;
      *(v17 + 2) = v14;
      *(v17 + 3) = v16;
      v18 = v7[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v7[2];
          v20 = *v19 == v7;
          v7 = v19;
        }

        while (!v20);
      }

      ++v9;
      v7 = v19;
    }

    while (v19 != v6);
  }

  return result;
}

double sub_29AF38AB0(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FB9E8(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = v9;
    }

    v4 = *v3;
  }

  else
  {
    v4 = 0.0;
    if (sub_29A3FBB48(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
    }
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF38BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF38C18(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A01D0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF38C70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF38C8C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF38CB4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF38CE4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A0220))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF38DA8(void *a1, void *a2)
{
  *a1 = &unk_2A20A0248;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF38E5C(void *a1)
{
  *a1 = &unk_2A20A0248;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF38ED8(void *a1)
{
  *a1 = &unk_2A20A0248;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF38F58(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2044220;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3f>::_DecRef();
}

uint64_t sub_29AF38FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A1A253C(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      sub_29AF390D8((a1 + 8), (a1 + 32), &v15);
      result = sub_29A1A29B4(a2);
      v10 = *(a2 + 32) + 24 * v9;
      v11 = v15;
      *(v10 + 16) = v16;
      *v10 = v11;
      v12 = v7[1];
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
          v13 = v7[2];
          v14 = *v13 == v7;
          v7 = v13;
        }

        while (!v14);
      }

      ++v9;
      v7 = v13;
    }

    while (v13 != v6);
  }

  return result;
}

uint64_t sub_29AF390D8@<X0>(uint64_t *a1@<X0>, atomic_uint **a2@<X2>, uint64_t a3@<X8>)
{
  v12 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a2, &v10);
  if (sub_29AD9009C(&v10))
  {
    if ((v11 & 4) != 0)
    {
      v4 = (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(&v10);
    }

    else
    {
      v4 = v10;
    }

    *a3 = *v4;
    *(a3 + 16) = *(v4 + 16);
  }

  else
  {
    if (sub_29A1A19C0(&v10))
    {
      if ((v11 & 4) != 0)
      {
        v5 = (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(&v10);
      }

      else
      {
        v5 = v10;
      }

      v9 = *v5;
      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      if (v9)
      {
        *a3 = *v6;
        *(a3 + 16) = *(v6 + 16);
      }

      else
      {
        *a3 = xmmword_29B480F60;
        *(a3 + 16) = 0x80000000800000;
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3f>::_DecRef();
    }

    *a3 = xmmword_29B480F60;
    *(a3 + 16) = 0x80000000800000;
  }

  return sub_29A186B14(&v10);
}

void sub_29AF39224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF39254(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A0298;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF392AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF392C8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF392F0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF39320(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A02E8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF393E4(void *a1, void *a2)
{
  *a1 = &unk_2A20A0310;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF39498(void *a1)
{
  *a1 = &unk_2A20A0310;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF39514(void *a1)
{
  *a1 = &unk_2A20A0310;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF39594(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2044168;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3d>::_DecRef();
}

uint64_t sub_29AF39628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A1A18E4(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      sub_29AF39714((a1 + 8), (a1 + 32), v16);
      result = sub_29A1A1DA8(a2);
      v10 = *(a2 + 32) + 48 * v9;
      v11 = v16[0];
      v12 = v16[2];
      *(v10 + 16) = v16[1];
      *(v10 + 32) = v12;
      *v10 = v11;
      v13 = v7[1];
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
          v14 = v7[2];
          v15 = *v14 == v7;
          v7 = v14;
        }

        while (!v15);
      }

      ++v9;
      v7 = v14;
    }

    while (v14 != v6);
  }

  return result;
}

uint64_t sub_29AF39714@<X0>(uint64_t *a1@<X0>, atomic_uint **a2@<X2>, int64x2_t *a3@<X8>)
{
  v16 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a2, &v14);
  if (sub_29AD903E4(&v14))
  {
    if ((v15 & 4) != 0)
    {
      v4 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(&v14);
    }

    else
    {
      v4 = v14;
    }

    v5 = v4[1];
    *a3 = *v4;
    a3[1] = v5;
    v6 = v4[2];
  }

  else
  {
    if (sub_29A1A1EA4(&v14))
    {
      if ((v15 & 4) != 0)
      {
        v7 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(&v14);
      }

      else
      {
        v7 = v14;
      }

      v13 = *v7;
      v8 = *(v7 + 32);
      if (v8)
      {
        i64 = *(v7 + 24);
        if (!i64)
        {
          i64 = v8[-1].i64;
        }

        atomic_fetch_add_explicit(i64, 1uLL, memory_order_relaxed);
      }

      if (v13)
      {
        v10 = v8[1];
        *a3 = *v8;
        a3[1] = v10;
        v11 = v8[2];
      }

      else
      {
        *a3 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
        a3[1] = xmmword_29B43C5A0;
        v11 = vdupq_n_s64(0xC7EFFFFFE0000000);
      }

      a3[2] = v11;
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3d>::_DecRef();
    }

    *a3 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
    a3[1] = xmmword_29B43C5A0;
    v6 = vdupq_n_s64(0xC7EFFFFFE0000000);
  }

  a3[2] = v6;
  return sub_29A186B14(&v14);
}

void sub_29AF39880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF398B0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A0360;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF39908(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF39924(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF3994C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF3997C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A03B0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF39A40(void *a1, void *a2)
{
  *a1 = &unk_2A20A03D8;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF39AF4(void *a1)
{
  *a1 = &unk_2A20A03D8;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF39B70(void *a1)
{
  *a1 = &unk_2A20A03D8;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF39BF0(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20440B0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2f>::_DecRef();
}

uint64_t sub_29AF39C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A1A0CBC(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF39D78((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      v14 = v13;
      v16 = v15;
      result = sub_29A1A10C0(a2);
      v17 = (*(a2 + 32) + 16 * v9);
      *v17 = v10;
      *(v17 + 1) = v12;
      *(v17 + 2) = v14;
      *(v17 + 3) = v16;
      v18 = v7[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v7[2];
          v20 = *v19 == v7;
          v7 = v19;
        }

        while (!v20);
      }

      ++v9;
      v7 = v19;
    }

    while (v19 != v6);
  }

  return result;
}

float sub_29AF39D78(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29AD90734(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = v9;
    }

    v4 = *v3;
  }

  else
  {
    if (sub_29A1A0250(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2f>::_DecRef();
    }

    v4 = 3.4028e38;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF39ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF39F08(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A0428;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF39F60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF39F7C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF39FA4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF39FD4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A0478))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF3A098(void *a1, void *a2)
{
  *a1 = &unk_2A20A04A0;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF3A14C(void *a1)
{
  *a1 = &unk_2A20A04A0;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3A1C8(void *a1)
{
  *a1 = &unk_2A20A04A0;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3A248(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043FF8;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2d>::_DecRef();
}

uint64_t sub_29AF3A2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A1A0180(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF3A3D0((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      v14 = v13;
      v16 = v15;
      result = sub_29A1A05E0(a2);
      v17 = (*(a2 + 32) + 32 * v9);
      *v17 = v10;
      *(v17 + 1) = v12;
      *(v17 + 2) = v14;
      *(v17 + 3) = v16;
      v18 = v7[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v7[2];
          v20 = *v19 == v7;
          v7 = v19;
        }

        while (!v20);
      }

      ++v9;
      v7 = v19;
    }

    while (v19 != v6);
  }

  return result;
}

double sub_29AF3A3D0(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29AD90A84(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = v9;
    }

    v4 = *v3;
  }

  else
  {
    if (sub_29A1A06DC(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2d>::_DecRef();
    }

    v4 = 3.40282347e38;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF3A52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF3A55C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A04F0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF3A5B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF3A5D0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF3A5F8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF3A628(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A0540))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF3A6EC(void *a1, void *a2)
{
  *a1 = &unk_2A20A0568;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF3A7A0(void *a1)
{
  *a1 = &unk_2A20A0568;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3A81C(void *a1)
{
  *a1 = &unk_2A20A0568;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3A89C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043F40;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1f>::_DecRef();
}

uint64_t sub_29AF3A930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A19F70C(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF3AA10((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      result = sub_29A19FB14(a2);
      v13 = (*(a2 + 32) + 8 * v9);
      *v13 = v10;
      *(v13 + 1) = v12;
      v14 = v7[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v7[2];
          v16 = *v15 == v7;
          v7 = v15;
        }

        while (!v16);
      }

      ++v9;
      v7 = v15;
    }

    while (v15 != v6);
  }

  return result;
}

float sub_29AF3AA10(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29ABC9D4C(&v9))
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
    if (sub_29A19EE3C(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1f>::_DecRef();
    }

    v4 = 3.4028e38;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF3AB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF3AB78(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A05B8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF3ABD0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF3ABEC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF3AC14(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF3AC44(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A0608))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF3AD08(void *a1, void *a2)
{
  *a1 = &unk_2A20A0630;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF3ADBC(void *a1)
{
  *a1 = &unk_2A20A0630;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3AE38(void *a1)
{
  *a1 = &unk_2A20A0630;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3AEB8(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043E88;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1d>::_DecRef();
}

uint64_t sub_29AF3AF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A19ED7C(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF3B02C((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      result = sub_29A19F1B8(a2);
      v13 = (*(a2 + 32) + 16 * v9);
      *v13 = v10;
      *(v13 + 1) = v12;
      v14 = v7[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v7[2];
          v16 = *v15 == v7;
          v7 = v15;
        }

        while (!v16);
      }

      ++v9;
      v7 = v15;
    }

    while (v15 != v6);
  }

  return result;
}

double sub_29AF3B02C(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29AD910B4(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = v9;
    }

    v4 = *v3;
  }

  else
  {
    if (sub_29A19F2B4(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1d>::_DecRef();
    }

    v4 = 3.40282347e38;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF3B160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF3B190(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A0680;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF3B1E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF3B204(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF3B22C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF3B25C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A06D0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF3B320(void *a1, void *a2)
{
  *a1 = &unk_2A20A06F8;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF3B3D4(void *a1)
{
  *a1 = &unk_2A20A06F8;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3B450(void *a1)
{
  *a1 = &unk_2A20A06F8;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3B4D0(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A207D438;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfInterval>::_DecRef();
}

uint64_t sub_29AF3B564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29AC7FCF0(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      sub_29AF3B65C((a1 + 8), (a1 + 32), &v14);
      result = sub_29AC803F8(a2);
      v10 = *(a2 + 32) + 32 * v9;
      *v10 = v14;
      *(v10 + 8) = v15;
      *(v10 + 16) = v16;
      *(v10 + 24) = v17;
      v11 = v7[1];
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
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF3B65C@<X0>(uint64_t *a1@<X0>, atomic_uint **a2@<X2>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a2, &v12);
  if (sub_29AD913E0(&v12))
  {
    if ((v13 & 4) != 0)
    {
      v4 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(&v12);
    }

    else
    {
      v4 = v12;
    }

    v5 = v4[1];
    *a3 = *v4;
    *(a3 + 16) = v5;
  }

  else
  {
    if (sub_29AD5E0DC(&v12))
    {
      if ((v13 & 4) != 0)
      {
        v6 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(&v12);
      }

      else
      {
        v6 = v12;
      }

      v11 = *v6;
      v7 = *(v6 + 32);
      if (v7)
      {
        v8 = *(v6 + 24);
        if (!v8)
        {
          v8 = (v7 - 1);
        }

        atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
      }

      if (v11)
      {
        v9 = v7[1];
        *a3 = *v7;
        *(a3 + 16) = v9;
      }

      else
      {
        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfInterval>::_DecRef();
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
  }

  return sub_29A186B14(&v12);
}

void sub_29AF3B790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF3B7C0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A0748;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF3B818(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF3B834(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF3B85C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF3B88C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A0798))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF3B950(void *a1, void *a2)
{
  *a1 = &unk_2A20A07C0;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF3BA04(void *a1)
{
  *a1 = &unk_2A20A07C0;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3BA80(void *a1)
{
  *a1 = &unk_2A20A07C0;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3BB00(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A207D4F0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRect2i>::_DecRef();
}

uint64_t sub_29AF3BB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29AC8043C(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF3BC74((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      result = sub_29AC80B84(a2);
      v13 = (*(a2 + 32) + 16 * v9);
      *v13 = v10;
      v13[1] = v12;
      v14 = v7[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v7[2];
          v16 = *v15 == v7;
          v7 = v15;
        }

        while (!v16);
      }

      ++v9;
      v7 = v15;
    }

    while (v15 != v6);
  }

  return result;
}

unint64_t sub_29AF3BC74(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v12 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v10);
  if (sub_29AD91718(&v10))
  {
    if ((v11 & 4) != 0)
    {
      v3 = (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(&v10);
    }

    else
    {
      v3 = v10;
    }

    v4 = *v3;
    v5 = *v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    if (sub_29AD5EAC4(&v10))
    {
      if ((v11 & 4) != 0)
      {
        v6 = (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(&v10);
      }

      else
      {
        v6 = v10;
      }

      v7 = *(v6 + 32);
      if (v7)
      {
        v8 = *(v6 + 24);
        if (!v8)
        {
          v8 = (v7 - 16);
        }

        atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRect2i>::_DecRef();
    }

    v5 = 0;
    LODWORD(v4) = 0;
  }

  sub_29A186B14(&v10);
  return v4 | v5;
}

void sub_29AF3BDB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF3BDE0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A0810;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF3BE38(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF3BE54(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF3BE7C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF3BEAC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A0860))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF3BF70(void *a1, void *a2)
{
  *a1 = &unk_2A20A0888;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF3C024(void *a1)
{
  *a1 = &unk_2A20A0888;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3C0A0(void *a1)
{
  *a1 = &unk_2A20A0888;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3C120(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043A38;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
}

uint64_t sub_29AF3C1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A19A1A4(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF3C284((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A19A5A0(a2);
      *(*(a2 + 32) + 8 * v9) = v10;
      v11 = v7[1];
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
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF3C284(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FC630(&v9))
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

  else if (sub_29A1996F4(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v5 = v9;
    }

    v6 = *(v5 + 32);
    if (v6)
    {
      v7 = *(v5 + 24);
      if (!v7)
      {
        v7 = (v6 - 16);
      }

      atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
  }

  sub_29A186B14(&v9);
  return v3;
}

void sub_29AF3C38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF3C3BC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A08D8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF3C414(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF3C430(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF3C458(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF3C488(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A0928))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF3C54C(void *a1, void *a2)
{
  *a1 = &unk_2A20A0950;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF3C600(void *a1)
{
  *a1 = &unk_2A20A0950;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3C67C(void *a1)
{
  *a1 = &unk_2A20A0950;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3C6FC(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043980;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
}

uint64_t sub_29AF3C790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A199640(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF3C884((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      v14 = v13;
      v16 = v15;
      result = sub_29A199A70(a2);
      v17 = (*(a2 + 32) + 16 * v9);
      *v17 = v10;
      *(v17 + 1) = v12;
      *(v17 + 2) = v14;
      *(v17 + 3) = v16;
      v18 = v7[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v7[2];
          v20 = *v19 == v7;
          v7 = v19;
        }

        while (!v20);
      }

      ++v9;
      v7 = v19;
    }

    while (v19 != v6);
  }

  return result;
}

float sub_29AF3C884(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FC86C(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v4 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v4 = v9;
    }

    v3 = *v4;
  }

  else if (sub_29A199B6C(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v5 = v9;
    }

    v6 = *(v5 + 32);
    if (v6)
    {
      v7 = *(v5 + 24);
      if (!v7)
      {
        v7 = (v6 - 16);
      }

      atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
  }

  sub_29A186B14(&v9);
  return v3;
}

void sub_29AF3C9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF3C9E0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A09A0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF3CA38(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF3CA54(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF3CA7C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF3CAAC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A09F0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF3CB70(void *a1, void *a2)
{
  *a1 = &unk_2A20A0A18;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF3CC24(void *a1)
{
  *a1 = &unk_2A20A0A18;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3CCA0(void *a1)
{
  *a1 = &unk_2A20A0A18;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3CD20(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043AF0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
}

uint64_t sub_29AF3CDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A19AD54(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF3CEA8((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      v14 = v13;
      v16 = v15;
      result = sub_29A19B0C4(a2);
      v17 = (*(a2 + 32) + 32 * v9);
      *v17 = v10;
      *(v17 + 1) = v12;
      *(v17 + 2) = v14;
      *(v17 + 3) = v16;
      v18 = v7[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v7[2];
          v20 = *v19 == v7;
          v7 = v19;
        }

        while (!v20);
      }

      ++v9;
      v7 = v19;
    }

    while (v19 != v6);
  }

  return result;
}

double sub_29AF3CEA8(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FCAF4(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v4 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v4 = v9;
    }

    v3 = *v4;
  }

  else if (sub_29A19B1C0(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v5 = v9;
    }

    v6 = *(v5 + 32);
    if (v6)
    {
      v7 = *(v5 + 24);
      if (!v7)
      {
        v7 = (v6 - 16);
      }

      atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
  }

  sub_29A186B14(&v9);
  return v3;
}

void sub_29AF3CFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF3D004(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A0A68;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF3D05C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF3D078(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF3D0A0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF3D0D0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A0AB8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF3D194(void *a1, void *a2)
{
  *a1 = &unk_2A20A0AE0;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF3D248(void *a1)
{
  *a1 = &unk_2A20A0AE0;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3D2C4(void *a1)
{
  *a1 = &unk_2A20A0AE0;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3D344(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A207D5A8;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuaternion>::_DecRef();
}

uint64_t sub_29AF3D3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29AC80BC8(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF3D4CC((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      v14 = v13;
      v16 = v15;
      result = sub_29AC81278(a2);
      v17 = (*(a2 + 32) + 32 * v9);
      *v17 = v10;
      *(v17 + 1) = v12;
      *(v17 + 2) = v14;
      *(v17 + 3) = v16;
      v18 = v7[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v7[2];
          v20 = *v19 == v7;
          v7 = v19;
        }

        while (!v20);
      }

      ++v9;
      v7 = v19;
    }

    while (v19 != v6);
  }

  return result;
}

double sub_29AF3D4CC(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29AD92320(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v4 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v4 = v9;
    }

    v3 = *v4;
  }

  else if (sub_29AD611E8(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v5 = v9;
    }

    v6 = *(v5 + 32);
    if (v6)
    {
      v7 = *(v5 + 24);
      if (!v7)
      {
        v7 = (v6 - 16);
      }

      atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuaternion>::_DecRef();
  }

  sub_29A186B14(&v9);
  return v3;
}

void sub_29AF3D5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF3D628(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A0B30;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF3D680(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF3D69C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF3D6C4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF3D6F4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A0B80))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF3D7B8(void *a1, void *a2)
{
  *a1 = &unk_2A20A0BA8;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF3D86C(void *a1)
{
  *a1 = &unk_2A20A0BA8;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3D8E8(void *a1)
{
  *a1 = &unk_2A20A0BA8;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3D968(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A207D660;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuath>::_DecRef();
}

uint64_t sub_29AF3D9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29AC812BC(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF3DADC((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      result = sub_29AC81A94(a2);
      v13 = (*(a2 + 32) + 16 * v9);
      *v13 = v10;
      v13[1] = v12;
      v14 = v7[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v7[2];
          v16 = *v15 == v7;
          v7 = v15;
        }

        while (!v16);
      }

      ++v9;
      v7 = v15;
    }

    while (v15 != v6);
  }

  return result;
}

uint64_t sub_29AF3DADC(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29AD92638(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v4 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v4 = v9;
    }

    v3 = *v4;
  }

  else if (sub_29AD61BD0(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v5 = v9;
    }

    v6 = *(v5 + 32);
    if (v6)
    {
      v7 = *(v5 + 24);
      if (!v7)
      {
        v7 = (v6 - 16);
      }

      atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuath>::_DecRef();
  }

  sub_29A186B14(&v9);
  return v3;
}

void sub_29AF3DBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF3DC18(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A0BF8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF3DC70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF3DC8C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF3DCB4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF3DCE4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A0C48))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF3DDA8(void *a1, void *a2)
{
  *a1 = &unk_2A20A0C70;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF3DE5C(void *a1)
{
  *a1 = &unk_2A20A0C70;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3DED8(void *a1)
{
  *a1 = &unk_2A20A0C70;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3DF58(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A207D718;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuatf>::_DecRef();
}

uint64_t sub_29AF3DFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29AC81AD8(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      sub_29AF3E0CC((a1 + 8), (a1 + 32), v15);
      result = sub_29AC822C8(a2);
      v10 = (*(a2 + 32) + 32 * v9);
      v11 = v15[1];
      *v10 = v15[0];
      v10[1] = v11;
      v12 = v7[1];
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
          v13 = v7[2];
          v14 = *v13 == v7;
          v7 = v13;
        }

        while (!v14);
      }

      ++v9;
      v7 = v13;
    }

    while (v13 != v6);
  }

  return result;
}

uint64_t sub_29AF3E0CC@<X0>(uint64_t *a1@<X0>, atomic_uint **a2@<X2>, _OWORD *a3@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a2, &v12);
  if (sub_29AD92950(&v12))
  {
    if ((v13 & 4) != 0)
    {
      v4 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(&v12);
    }

    else
    {
      v4 = v12;
    }

    v5 = v4[1];
    *a3 = *v4;
    a3[1] = v5;
  }

  else if (sub_29AD625D4(&v12))
  {
    if ((v13 & 4) != 0)
    {
      v6 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(&v12);
    }

    else
    {
      v6 = v12;
    }

    v11 = *v6;
    v7 = *(v6 + 32);
    if (v7)
    {
      v8 = *(v6 + 24);
      if (!v8)
      {
        v8 = (v7 - 1);
      }

      atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
    }

    if (v11)
    {
      v9 = v7[1];
      *a3 = *v7;
      a3[1] = v9;
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuatf>::_DecRef();
  }

  return sub_29A186B14(&v12);
}

void sub_29AF3E1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF3E208(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A0CC0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF3E260(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF3E27C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF3E2A4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF3E2D4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A0D10))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF3E398(void *a1, void *a2)
{
  *a1 = &unk_2A20A0D38;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF3E44C(void *a1)
{
  *a1 = &unk_2A20A0D38;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3E4C8(void *a1)
{
  *a1 = &unk_2A20A0D38;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3E548(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A207D7D0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuatd>::_DecRef();
}

uint64_t sub_29AF3E5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29AC8230C(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      sub_29AF3E6C4((a1 + 8), (a1 + 32), v17);
      result = sub_29AC82B28(a2);
      v10 = (*(a2 + 32) + (v9 << 6));
      v11 = v17[0];
      v12 = v17[1];
      v13 = v17[3];
      v10[2] = v17[2];
      v10[3] = v13;
      *v10 = v11;
      v10[1] = v12;
      v14 = v7[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v7[2];
          v16 = *v15 == v7;
          v7 = v15;
        }

        while (!v16);
      }

      ++v9;
      v7 = v15;
    }

    while (v15 != v6);
  }

  return result;
}

uint64_t sub_29AF3E6C4@<X0>(uint64_t *a1@<X0>, atomic_uint **a2@<X2>, _OWORD *a3@<X8>)
{
  v16 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a2, &v14);
  if (sub_29AD92C70(&v14))
  {
    if ((v15 & 4) != 0)
    {
      v4 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(&v14);
    }

    else
    {
      v4 = v14;
    }

    v5 = v4[1];
    *a3 = *v4;
    a3[1] = v5;
    v6 = v4[3];
    a3[2] = v4[2];
    a3[3] = v6;
  }

  else if (sub_29AD62FE8(&v14))
  {
    if ((v15 & 4) != 0)
    {
      v7 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(&v14);
    }

    else
    {
      v7 = v14;
    }

    v13 = *v7;
    v8 = *(v7 + 32);
    if (v8)
    {
      v9 = *(v7 + 24);
      if (!v9)
      {
        v9 = (v8 - 1);
      }

      atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
    }

    if (v13)
    {
      v10 = v8[1];
      *a3 = *v8;
      a3[1] = v10;
      v11 = v8[3];
      a3[2] = v8[2];
      a3[3] = v11;
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuatd>::_DecRef();
  }

  return sub_29A186B14(&v14);
}

void sub_29AF3E7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF3E810(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A0D88;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF3E868(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF3E884(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF3E8AC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF3E8DC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A0DD8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF3E9A0(void *a1, void *a2)
{
  *a1 = &unk_2A20A0E00;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF3EA54(void *a1)
{
  *a1 = &unk_2A20A0E00;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3EAD0(void *a1)
{
  *a1 = &unk_2A20A0E00;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF3EB50(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20A0E58;
  sub_29A18ECC8(a2, v3);
  sub_29AF3F114(v3);
}

void sub_29AF3EBC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AF3F114(va);
  _Unwind_Resume(a1);
}

void sub_29AF3EBE4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29AF3F1A8(a2, *(*(a1 + 16) + 16));
  v4 = *(a1 + 16);
  v7 = *v4;
  v5 = v4 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    v8 = 0;
    do
    {
      sub_29AF3F23C((a1 + 8), (a1 + 32), v12);
      sub_29AF3F880(a2);
      sub_29AF3F3A8(*(a2 + 32) + (v8 << 7), v12);
      pxrInternal__aapl__pxrReserved__::GfFrustum::~GfFrustum(v12);
      v9 = v6[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v6[2];
          v11 = *v10 == v6;
          v6 = v10;
        }

        while (!v11);
      }

      ++v8;
      v6 = v10;
    }

    while (v10 != v5);
  }
}

uint64_t *sub_29AF3ECDC(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AF3ECFC(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29AF3EE74(a1);
}

void *sub_29AF3ED60(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29AF3F0FC);
  return a2;
}