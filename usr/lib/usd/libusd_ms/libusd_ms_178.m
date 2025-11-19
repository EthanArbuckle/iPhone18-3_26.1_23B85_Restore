void sub_29AF64B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF64BB8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));

  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::GfMatrix3d>();
}

void *sub_29AF64C48(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A3DC0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF64CA0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF64CBC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF64CE4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF64D14(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A3E10))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF64DE0(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A3E38;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF64EC0(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF64EEC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3E38;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF64F40(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3E38;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF64F98(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2048560;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
}

BOOL sub_29AF65024(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF65268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF65294(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>();
}

void *sub_29AF6532C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A3E88;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF65384(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF653A0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF653C8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF653F8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A3ED8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF654C4(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A3F00;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF655A4(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF655D0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3F00;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF65624(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3F00;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void *sub_29AF6567C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

BOOL sub_29AF65718(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF6595C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF65988(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));

  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::GfMatrix4d>();
}

void *sub_29AF65A1C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A3F50;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF65A74(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF65A90(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF65AB8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF65AE8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A3FA0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF65BB4(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A3FC8;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF65C94(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF65CC0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3FC8;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF65D14(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A3FC8;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF65D6C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043810;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
}

BOOL sub_29AF65DF8(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF6603C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF66068(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>();
}

void *sub_29AF66100(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A4018;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF66158(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF66174(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF6619C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF661CC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A4068))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF66298(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A4090;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF66378(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF663A4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A4090;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF663F8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A4090;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF66450(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 32))(&v3);
  *(a2 + 8) = &off_2A2047D78;
  sub_29A218D70();
}

void sub_29AF664FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A2174F4(va);
  _Unwind_Resume(a1);
}

BOOL sub_29AF66510(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF66754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF66780(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::SdfPathExpression>();
}

void *sub_29AF66818(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A40E0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF66870(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF6688C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF668B4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF668E4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A4130))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF669B0(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A4158;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF66A90(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF66ABC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A4158;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF66B10(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A4158;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

uint64_t sub_29AF66B68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*a1 + 32))(a1);
  *a2 = result;
  a2[1] = &off_2A2042E00 + 1;
  return result;
}

BOOL sub_29AF66BBC(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF66E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF66EA8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A41A8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF66F00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF66F1C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF66F44(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF66F74(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A41F8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF67040(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A4220;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF67120(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF6714C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A4220;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF671A0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A4220;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF671F8(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043A38;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
}

BOOL sub_29AF67284(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF674C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF674F4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>();
}

void *sub_29AF6758C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A4270;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF675E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF67600(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF67628(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF67658(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A42C0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF67724(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A42E8;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF67804(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF67830(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A42E8;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF67884(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A42E8;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

_DWORD *sub_29AF678DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(*a1 + 32))(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  a2[1] = &off_2A2042D48;
  result = operator new(0x14uLL);
  *result = v3;
  result[1] = v5;
  result[2] = v7;
  result[3] = v9;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

BOOL sub_29AF67970(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF67BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF67C60(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A4338;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF67CB8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF67CD4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF67CFC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF67D2C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A4388))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF67DF8(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A43B0;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF67ED8(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF67F04(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A43B0;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF67F58(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A43B0;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF67FB0(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043980;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
}

BOOL sub_29AF6803C(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF68280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF682AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>();
}

void *sub_29AF68344(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A4400;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF6839C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF683B8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF683E0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF68410(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A4450))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF684DC(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A4478;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF685BC(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF685E8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A4478;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF6863C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A4478;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void *sub_29AF68694@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(*a1 + 32))(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  a2[1] = &off_2A2042EB8;
  result = operator new(0x28uLL);
  *result = v3;
  *(result + 1) = v5;
  *(result + 2) = v7;
  *(result + 3) = v9;
  atomic_store(0, result + 8);
  *a2 = result;
  atomic_fetch_add_explicit(result + 8, 1u, memory_order_relaxed);
  return result;
}

BOOL sub_29AF68728(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF6896C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF68A18(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A44C8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF68A70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF68A8C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF68AB4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF68AE4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A4518))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF68BB0(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A4540;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF68C90(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF68CBC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A4540;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF68D10(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A4540;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF68D68(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043AF0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
}

BOOL sub_29AF68DF4(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF69038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF69064(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>();
}

void *sub_29AF690FC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A4590;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF69154(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF69170(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF69198(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF691C8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A45E0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF69294(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A4608;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF69374(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF693A0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A4608;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF693F4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A4608;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF6944C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 32))(__p);
  *(a2 + 8) = &off_2A2044DD0;
  sub_29A1B01B8(a2, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AF694C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29AF694E0(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF69724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF69750(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<std::string>();
}

void sub_29AF697CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF697E8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A4658;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF69840(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF6985C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF69884(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF698B4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A46A8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF69980(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A46D0;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF69A60(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF69A8C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A46D0;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF69AE0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A46D0;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF69B38(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = off_2A20479C8;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
}

BOOL sub_29AF69BC4(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF69E08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF69E34(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>();
}

void *sub_29AF69ECC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A4720;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF69F24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF69F40(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF69F68(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF69F98(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A4770))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF6A064(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A4798;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF6A144(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF6A170(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A4798;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF6A1C4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A4798;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void *sub_29AF6A21C@<X0>(uint64_t a1@<X0>, atomic_uint **a2@<X8>)
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

BOOL sub_29AF6A2B4(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF6A4F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF6A524(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
}

void *sub_29AF6A5B8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A47E8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF6A610(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF6A62C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF6A654(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF6A684(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A4838))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF6A750(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A4860;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF6A830(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF6A85C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A4860;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF6A8B0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A4860;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF6A908(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = off_2A2047A80;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
}

BOOL sub_29AF6A994(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF6ABD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF6AC04(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>();
}

void *sub_29AF6AC9C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A48B0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF6ACF4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF6AD10(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF6AD38(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF6AD68(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A4900))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF6AE34(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A4928;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF6AF14(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF6AF40(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A4928;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF6AF94(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A4928;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

uint64_t sub_29AF6AFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(*a1 + 32))(a1);
  *(a2 + 8) = &unk_2A2044533;
  *a2 = result;
  return result;
}

BOOL sub_29AF6B044(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF6B288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF6B334(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A4978;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF6B38C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF6B3A8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF6B3D0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF6B400(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A49C8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF6B4CC(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A49F0;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF6B5AC(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF6B5D8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A49F0;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF6B62C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A49F0;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF6B684(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043DD0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
}

BOOL sub_29AF6B710(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF6B954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF6B980(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>();
}

void *sub_29AF6BA18(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A4A40;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF6BA70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF6BA8C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF6BAB4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF6BAE4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A4A90))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF6BBB0(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A4AB8;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF6BC90(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF6BCBC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A4AB8;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF6BD10(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A4AB8;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

uint64_t sub_29AF6BD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(*a1 + 32))(a1);
  *(a2 + 8) = &unk_2A2044813;
  *a2 = result;
  return result;
}

BOOL sub_29AF6BDC0(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF6C004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF6C0B0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A4B08;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF6C108(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF6C124(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF6C14C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF6C17C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A4B58))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF6C248(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A4B80;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF6C328(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF6C354(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A4B80;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF6C3A8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A4B80;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF6C400(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043C60;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
}

BOOL sub_29AF6C48C(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF6C6D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF6C6FC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>();
}

void *sub_29AF6C794(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A4BD0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF6C7EC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF6C808(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF6C830(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF6C860(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A4C20))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF6C92C(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A4C48;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF6CA0C(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF6CA38(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A4C48;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF6CA8C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A4C48;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

uint64_t sub_29AF6CAE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*a1 + 32))(a1);
  *a2 = result;
  a2[1] = &unk_2A2044AF3;
  return result;
}

BOOL sub_29AF6CB38(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF6CD7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF6CE28(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A4C98;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF6CE80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF6CE9C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF6CEC4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF6CEF4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A4CE8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF6CFC0(void *a1, const pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A20A4D10;
  v10 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 1), a2);
  a1[16] = a3;
  if (*(a5 + 48))
  {
    if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying(v10, v11))
    {
      (*(*a1[16] + 24))(a1[16], a4, a5);
    }
  }

  Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(Attribute);
}

void sub_29AF6D0A0(_Unwind_Exception *a1)
{
  sub_29A5896C0(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29AF6D0CC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A4D10;
  sub_29A5896C0(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF6D120(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A4D10;
  sub_29A5896C0(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF6D178(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2047718;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
}

BOOL sub_29AF6D204(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v8 = (*(**(a1 + 128) + 16))(*(a1 + 128));
  v30 = v8;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::ValueMightBeTimeVarying((a1 + 8), v9))
  {
    v26 = v8 + a3;
    v27 = fabs(v26) != INFINITY;
    v28 = v8 + a4;
    v29 = fabs(v28) != INFINITY;
    v23 = 0;
    __src = 0;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetTimeSamplesInInterval(a1 + 8, &v26, &v23);
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    *v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v26, &v22, &v21, &v19[1]);
    if (!v19[1] || v22 == v21)
    {
      v22 = v26;
    }

    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetBracketingTimeSamples((a1 + 8), v28, &v21, &v20, v19);
    if (!v19[0] || (v11 = v20, v20 == v21))
    {
      v11 = v28;
      v20 = v28;
    }

    v12 = __src;
    if (v23 == __src || v22 < *v23)
    {
      sub_29A1BFD8C(&v23, v23, &v22);
      v11 = v20;
      v12 = __src;
    }

    if (v11 > *(v12 - 1))
    {
      sub_29A1BFD8C(&v23, v12, &v20);
      v12 = __src;
    }

    sub_29A0A171C(a2, (v12 - v23) >> 3);
    v13 = v23;
    v14 = __src;
    if (__src == v23)
    {
      v17 = *a2;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * v15] - v8;
        v17 = *a2;
        *(*a2 + 4 * v15++) = v16;
      }

      while (v15 < (v14 - v13) >> 3);
    }

    v10 = (a2[1] - v17) > 4;
    if (v13)
    {
      __src = v13;
      operator delete(v13);
    }
  }

  return v10;
}

void sub_29AF6D448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF6D474(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  (*(**(a1 + 128) + 16))(*(a1 + 128));
  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>();
}

void *sub_29AF6D50C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A4D60;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF6D564(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF6D580(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF6D5A8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF6D5D8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A4DB0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29AF6D618(void *a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this)
{
  Hash = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetHash(this);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = Hash;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = Hash;
    if (Hash >= *&v5)
    {
      v9 = Hash % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & Hash;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==(i + 2, this))
      {
        return i;
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
  }

  return i;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceAttributeColorSpace::UsdImagingDataSourceAttributeColorSpace(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A20A4DD8;
  *(a1 + 8) = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 24), (a2 + 16));
  sub_29A1E2240((a1 + 28), (a2 + 20));
  v5 = *(a2 + 24);
  *(a1 + 32) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 32) &= 0xFFFFFFFFFFFFFFF8;
  }

  return a1;
}

void sub_29AF6D7C0(uint64_t a1)
{
  *a1 = &unk_2A20A4DD8;
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

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF6D848(uint64_t a1)
{
  *a1 = &unk_2A20A4DD8;
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

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v5);
}

void *sub_29AF6D8D4@<X0>(uint64_t a1@<X0>, atomic_uint **a2@<X8>)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceAttributeTypeName::UsdImagingDataSourceAttributeTypeName(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A20A4E28;
  *(a1 + 8) = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 24), (a2 + 16));
  sub_29A1E2240((a1 + 28), (a2 + 20));
  v5 = *(a2 + 24);
  *(a1 + 32) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 32) &= 0xFFFFFFFFFFFFFFF8;
  }

  return a1;
}

void sub_29AF6DA28(uint64_t a1)
{
  *a1 = &unk_2A20A4E28;
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

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF6DAB0(uint64_t a1)
{
  *a1 = &unk_2A20A4E28;
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

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v5);
}

void *sub_29AF6DB3C@<X0>(uint64_t a1@<X0>, atomic_uint **a2@<X8>)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceBasisCurvesTopology::UsdImagingDataSourceBasisCurvesTopology(uint64_t a1, _DWORD *a2, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3, uint64_t a4)
{
  *a1 = &unk_2A20A4E78;
  v8 = (a1 + 16);
  sub_29A1E21F4((a1 + 8), a2);
  sub_29A1E2240((a1 + 12), a2 + 1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v8, a3);
  *(a1 + 16) = &unk_2A205FAE0;
  *(a1 + 40) = a4;
  return a1;
}

void sub_29AF6DCBC(_Unwind_Exception *a1)
{
  sub_29A1DCEA8(v1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceBasisCurvesTopology::GetNames@<X0>(void *a1@<X8>)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  if (!v3)
  {
    v3 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  }

  v4 = *(v3 + 1);
  v14 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v14 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  if (!v5)
  {
    v5 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  }

  v6 = *(v5 + 3);
  v15 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v15 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  if (!v7)
  {
    v7 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  }

  v8 = *(v7 + 4);
  v16 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  if (!v9)
  {
    v9 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  }

  v10 = *(v9 + 5);
  v17 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v14, &v18, 4uLL);
  for (i = 24; i != -8; i -= 8)
  {
    v13 = *(&v14 + i);
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AF6DEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  while (1)
  {
    v12 = *(v10 - 1);
    v10 -= 8;
    v11 = v12;
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v10 == &a10)
    {
      _Unwind_Resume(a1);
    }
  }
}

pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceBasisCurvesTopology::Get@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceBasisCurvesTopology *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) <= 7)
  {
    if ((atomic_load_explicit(&qword_2A17517C0, memory_order_acquire) & 1) == 0)
    {
      v10 = __cxa_guard_acquire(&qword_2A17517C0);
      if (v10)
      {
        DefaultLocator = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::GetDefaultLocator(v10);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, a2, dword_2A1751788);
        __cxa_atexit(sub_29ABC33B4, dword_2A1751788, &dword_299FE7000);
        __cxa_guard_release(&qword_2A17517C0);
      }
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomCurves::GetCurveVertexCountsAttr((this + 16), &v12);
    sub_29AF6E204(&v12, *(this + 5), this + 8, dword_2A1751788);
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  if (!v7)
  {
    v7 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  }

  if ((*(v7 + 3) ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomBasisCurves::GetBasisAttr((this + 16), &v12);
    sub_29AF6E290(&v12, *(this + 5));
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  if (!v8)
  {
    v8 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  }

  if ((*(v8 + 4) ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomBasisCurves::GetTypeAttr((this + 16), &v12);
    sub_29AF6E290(&v12, *(this + 5));
  }

  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  if (!result)
  {
    result = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  }

  if ((*(result + 5) ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomBasisCurves::GetWrapAttr((this + 16), &v12);
    sub_29AF6E290(&v12, *(this + 5));
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

void sub_29AF6E290(const pxrInternal__aapl__pxrReserved__::UsdAttribute *a1, uint64_t a2)
{
  v4 = operator new(0x88uLL);
  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v4);
  v6 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::EmptyLocator(v5);
  sub_29AF6EFBC(v4, a1, a2, v5, v6);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceBasisCurves::UsdImagingDataSourceBasisCurves(uint64_t a1, _DWORD *a2, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3, uint64_t a4)
{
  *a1 = &unk_2A20A4EA8;
  v8 = (a1 + 16);
  sub_29A1E21F4((a1 + 8), a2);
  sub_29A1E2240((a1 + 12), a2 + 1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v8, a3);
  *(a1 + 16) = &unk_2A205FAE0;
  *(a1 + 40) = a4;
  return a1;
}

void sub_29AF6E3C4(_Unwind_Exception *a1)
{
  sub_29A1DCEA8(v1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceBasisCurves::GetNames@<X0>(void *a1@<X8>)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
  if (!v3)
  {
    v3 = sub_29ABC3504(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
  }

  v4 = v3[1];
  v7 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v5;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v7, &v8, 1uLL);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceBasisCurves::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceBasisCurves *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABC3504(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
  }

  if ((v6[1] ^ *a2) > 7)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    sub_29AF6E560(this + 2, (this + 16), *(this + 5), &v7);
    *a3 = v7;
  }
}

void sub_29AF6E560(_DWORD *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v9, a2);
  v9[0] = &unk_2A205FAE0;
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceBasisCurvesTopology::UsdImagingDataSourceBasisCurvesTopology(v8, a1, v9, a3);
  sub_29AF6F038(a4, v8);
  pxrInternal__aapl__pxrReserved__::UsdGeomBasisCurves::~UsdGeomBasisCurves(v9);
}

void sub_29AF6E604(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdGeomBasisCurves::~UsdGeomBasisCurves(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceBasisCurvesPrim::UsdImagingDataSourceBasisCurvesPrim(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v12 = *a3;
  v8 = *(a3 + 8);
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v14, (a3 + 16));
  sub_29A1E2240(&v15, (a3 + 20));
  v9 = *(a3 + 24);
  v16 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::UsdImagingDataSourceGprim(a1, a2, &v12, a4);
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

  *a1 = &unk_2A20A4ED8;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceBasisCurvesPrim::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceBasisCurvesPrim *this@<X0>, void *a2@<X8>)
{
  Names = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::GetNames(this, a2);
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchema::GetSchemaToken(Names);
  return sub_29A1D8028(a2, SchemaToken);
}

void sub_29AF6E7A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceBasisCurvesPrim::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceBasisCurvesPrim *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if ((*pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchema::GetSchemaToken(this) ^ *a2) > 7)
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Get(this, a2, a3);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v6, (this + 16));
    v6[0] = &unk_2A205FAE0;
    sub_29AF6E8A4(this + 2, v6, *(this + 6), &v7);
    *a3 = v7;
    v7 = 0uLL;
    pxrInternal__aapl__pxrReserved__::UsdGeomBasisCurves::~UsdGeomBasisCurves(v6);
  }
}

void sub_29AF6E890(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdGeomBasisCurves::~UsdGeomBasisCurves(va);
  _Unwind_Resume(a1);
}

void sub_29AF6E8A4(_DWORD *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v9, a2);
  v9[0] = &unk_2A205FAE0;
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceBasisCurves::UsdImagingDataSourceBasisCurves(v8, a1, v9, a3);
  sub_29AF6F144(a4, v8);
  pxrInternal__aapl__pxrReserved__::UsdGeomBasisCurves::~UsdGeomBasisCurves(v9);
}

void sub_29AF6E948(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdGeomBasisCurves::~UsdGeomBasisCurves(va);
  _Unwind_Resume(a1);
}

double pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceBasisCurvesPrim::Invalidate@<D0>(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v7[57] = *MEMORY[0x29EDCA608];
  *&result = 0x800000000;
  a5[56] = 0x800000000;
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Invalidate(a1, a2, a3, a4, v7);
    if (v7 != a5)
    {
      sub_29AC094F8(a5, v7);
    }

    sub_29ABD3178();
  }

  return result;
}

void sub_29AF6EC3C(_DWORD *a1)
{
  *a1 = &unk_2A20A4E78;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdGeomBasisCurves::~UsdGeomBasisCurves((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF6ECAC(_DWORD *a1)
{
  *a1 = &unk_2A20A4E78;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdGeomBasisCurves::~UsdGeomBasisCurves((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29AF6ED20(_DWORD *a1)
{
  *a1 = &unk_2A20A4EA8;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdGeomBasisCurves::~UsdGeomBasisCurves((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF6ED90(_DWORD *a1)
{
  *a1 = &unk_2A20A4EA8;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdGeomBasisCurves::~UsdGeomBasisCurves((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29AF6EE04(uint64_t a1)
{
  *a1 = &unk_2A20A66D8;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF6EEA0(uint64_t a1)
{
  *a1 = &unk_2A20A66D8;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v5);
}

void sub_29AF6EFA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A5896C0(va);
  _Unwind_Resume(a1);
}

void sub_29AF6F024(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A5896C0(va);
  _Unwind_Resume(a1);
}

void *sub_29AF6F038(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A4F50;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF6F090(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF6F0AC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF6F0D4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF6F104(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A4FA0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF6F144(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A4FC8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF6F19C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF6F1B8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF6F1E0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF6F210(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A5018))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceCamera::UsdImagingDataSourceCamera(uint64_t a1, _DWORD *a2, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3, uint64_t a4)
{
  *a1 = &unk_2A20A5040;
  v8 = (a1 + 16);
  sub_29A1E21F4((a1 + 8), a2);
  sub_29A1E2240((a1 + 12), a2 + 1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v8, a3);
  *(a1 + 16) = &unk_2A205FB90;
  *(a1 + 40) = a4;
  return a1;
}

void sub_29AF6F2F0(_Unwind_Exception *a1)
{
  sub_29A1DCEA8(v1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceCamera::GetNames(void *a1@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomCamera::GetSchemaAttributeNames(0);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;

  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceCamera::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceCamera *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  v11 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v11 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v5)
  {
    v5 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  if ((*(v5 + 11) ^ *a2) <= 7)
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v6)
    {
      v6 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    sub_29A166F2C(&v11, v6 + 126);
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v7)
  {
    v7 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  if ((*(v7 + 12) ^ *a2) <= 7)
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v8)
    {
      v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    sub_29A166F2C(&v11, v8 + 125);
  }

  sub_29A580660(v12, this + 3, this + 8);
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(v12, &v11, v10);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
  sub_29A1DE3A4(&v13);
  if (v12[1])
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v12[1], v9);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v10);
}

void sub_29AF6F7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a15)
  {
    sub_29A014BEC(a15);
  }

  sub_29A5888DC(&a16);
  if ((a20 & 7) != 0)
  {
    atomic_fetch_add_explicit((a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void *sub_29AF6F86C@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x20uLL);
  v7 = v6;
  v8 = *a2;
  v10 = *a1;
  v9 = a1[1];
  *v6 = &unk_2A20A50D0;
  v6[1] = v10;
  v6[2] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(v6 + 6) = v8;
  *a3 = v6;
  result = operator new(0x20uLL);
  *result = &unk_2A20A5120;
  result[1] = 0;
  result[2] = 0;
  result[3] = v7;
  a3[1] = result;
  return result;
}

void *sub_29AF6F948@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  v5 = v4;
  v7 = *a1;
  v6 = a1[1];
  *v4 = &unk_2A20A5198;
  v4[1] = v7;
  v4[2] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v4;
  result = operator new(0x20uLL);
  *result = &unk_2A20A51E8;
  result[1] = 0;
  result[2] = 0;
  result[3] = v5;
  a2[1] = result;
  return result;
}

void *sub_29AF6FA18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A207F0D8, 0)) != 0)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceCameraPrim::UsdImagingDataSourceCameraPrim(void *a1, _DWORD *a2, int *a3, uint64_t a4)
{
  v12 = *a3;
  v8 = *(a3 + 1);
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v14, a3 + 4);
  sub_29A1E2240(&v15, a3 + 5);
  v9 = *(a3 + 3);
  v16 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::UsdImagingDataSourcePrim(a1, a2, &v12, a4);
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

  *a1 = &unk_2A20A5070;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceCameraPrim::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceCameraPrim *this@<X0>, void *a2@<X8>)
{
  Names = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::GetNames(this, a2);
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetSchemaToken(Names);
  return sub_29A1D8028(a2, SchemaToken);
}

void sub_29AF6FC14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceCameraPrim::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceCameraPrim *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if ((*pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetSchemaToken(this) ^ *a2) > 7)
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::Get(this, a2, a3);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v6, (this + 16));
    v6[0] = &unk_2A205FB90;
    sub_29AF6FD14(this + 2, v6, *(this + 6), &v7);
    *a3 = v7;
    v7 = 0uLL;
    pxrInternal__aapl__pxrReserved__::UsdGeomCamera::~UsdGeomCamera(v6);
  }
}

void sub_29AF6FD00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdGeomCamera::~UsdGeomCamera(va);
  _Unwind_Resume(a1);
}

void sub_29AF6FD14(_DWORD *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v9, a2);
  v9[0] = &unk_2A205FB90;
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceCamera::UsdImagingDataSourceCamera(v8, a1, v9, a3);
  sub_29AF70798(a4, v8);
  pxrInternal__aapl__pxrReserved__::UsdGeomCamera::~UsdGeomCamera(v9);
}

void sub_29AF6FDB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdGeomCamera::~UsdGeomCamera(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceCameraPrim::Invalidate(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a2@<X2>, int a3@<W3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a4@<X8>)
{
  v15 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::Invalidate(a1, a2, a3, a4);
  if ((atomic_load_explicit(&qword_2A17517E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17517E0))
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomCamera::GetSchemaAttributeNames(0);
    qword_2A17517C8 = 0;
    unk_2A17517D0 = 0;
    qword_2A17517D8 = 0;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
  }

  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = qword_2A17517C8;
      v9 = unk_2A17517D0;
      while (v8 != v9)
      {
        if ((*v8 ^ *v6) > 7)
        {
          goto LABEL_16;
        }

        v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v10)
        {
          v10 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        if ((*(v10 + 126) ^ *v8) <= 7)
        {
          ShutterOpenLocator = pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetShutterOpenLocator(v10);
LABEL_14:
          pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a4, ShutterOpenLocator);
          goto LABEL_16;
        }

        v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v12)
        {
          v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        if ((*(v12 + 125) ^ *v8) <= 7)
        {
          ShutterOpenLocator = pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetShutterCloseLocator(v12);
          goto LABEL_14;
        }

        DefaultLocator = pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetDefaultLocator(v12);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, v6, v14);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a4, v14);
        sub_29ABC3488(v14);
LABEL_16:
        ++v8;
      }

      v6 = (v6 + 8);
    }

    while (v6 != v7);
  }
}

void sub_29AF70004(_DWORD *a1)
{
  *a1 = &unk_2A20A5040;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdGeomCamera::~UsdGeomCamera((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF70074(_DWORD *a1)
{
  *a1 = &unk_2A20A5040;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdGeomCamera::~UsdGeomCamera((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29AF700E8(uint64_t a1)
{
  *a1 = &unk_2A20A66D8;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF70184(uint64_t a1)
{
  *a1 = &unk_2A20A66D8;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v5);
}

void sub_29AF70224(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20A50D0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AF70280(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20A50D0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29AF702E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(*a1 + 32))(a1);
  *(a2 + 8) = &unk_2A2044C63;
  *a2 = v3;
}

uint64_t sub_29AF70338(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

double sub_29AF70368(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0.0;
  }

  *&result = (*(*v2 + 32))(v2) * *(a1 + 24);
  return result;
}

void sub_29AF703C8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF703F0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF70420(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A5170))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF70460(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20A5198;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AF704BC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20A5198;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29AF7051C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043758;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
}

uint64_t sub_29AF705A8(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_29AF705D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  result = *(a1 + 8);
  if (result)
  {
    (*(*result + 32))(v10);
    memset(v12, 0, sizeof(v12));
    v13 = v12;
    sub_29A196FC0(a2, v10[0], &v13);
    if (v10[0])
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = *(v11 + v5);
        v8 = *(v11 + v5 + 8);
        sub_29A19722C(a2);
        v9 = (*(a2 + 32) + v4);
        *v9 = vcvtq_f64_f32(v7);
        v9[1] = vcvtq_f64_f32(v8);
        ++v6;
        v5 += 16;
        v4 += 32;
      }

      while (v6 < v10[0]);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
  }

  return result;
}

void sub_29AF70700(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF70728(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF70758(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A5238))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF70798(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A5260;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF707F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF7080C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF70834(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF70864(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A52B0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::UsdImagingDataSourceGprim(void *a1, _DWORD *a2, int *a3, uint64_t a4)
{
  v12 = *a3;
  v8 = *(a3 + 1);
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v14, a3 + 4);
  sub_29A1E2240(&v15, a3 + 5);
  v9 = *(a3 + 3);
  v16 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::UsdImagingDataSourcePrim(a1, a2, &v12, a4);
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

  *a1 = &unk_2A20A52D8;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::Get(this, a2, &v13);
  if ((*pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetSchemaToken(v6) ^ *a2) > 7 || (v7 = sub_29AF70B08((this + 16)), *v7 == v7[1]))
  {
    v8 = v14;
    *a3 = v13;
    a3[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_29ABC3244(&v13, &v10);
    sub_29AF71240(this + 8, this + 16, v7, *(this + 6), &v9);
    sub_29AF711A0(&v10, &v9, &v12);
    *a3 = v12;
    v12 = 0uLL;
    if (*(&v9 + 1))
    {
      sub_29A014BEC(*(&v9 + 1));
    }

    if (v11)
    {
      sub_29A014BEC(v11);
    }
  }

  if (v14)
  {
    sub_29A014BEC(v14);
  }
}

void sub_29AF70AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29AF70B08(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1)
{
  v38 = *MEMORY[0x29EDCA608];
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v3);
  IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a1, SchemaInfo);
  if (IsA)
  {
    if ((atomic_load_explicit(&qword_2A1751800, memory_order_acquire) & 1) == 0)
    {
      IsA = __cxa_guard_acquire(&qword_2A1751800);
      if (IsA)
      {
        v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
        if (!v11)
        {
          v11 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
        }

        v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v12)
        {
          v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        v31[0] = 0;
        sub_29AC9BE9C(v32, v11 + 1, v12 + 102, v31);
        v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v13)
        {
          v13 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v14)
        {
          v14 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        v30 = 0;
        sub_29AC9BE9C(v33, v13 + 82, v14 + 153, &v30);
        v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v15)
        {
          v15 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v16)
        {
          v16 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        v29 = 0;
        sub_29AC9BE9C(v34, v15, v16, &v29);
        v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v17)
        {
          v17 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v18)
        {
          v18 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        v28 = 0;
        sub_29AC9BE9C(v35, v17 + 52, v18 + 83, &v28);
        v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v19)
        {
          v19 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v20)
        {
          v20 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        v27 = 0;
        sub_29AC9BE9C(v36, v19 + 8, v20 + 82, &v27);
        v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
        if (!v21)
        {
          v21 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
        }

        v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v22)
        {
          v22 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        v26 = 0;
        sub_29AC9BE9C(v37, v21 + 2, v22 + 88, &v26);
        qword_2A17517E8 = 0;
        qword_2A17517F0 = 0;
        qword_2A17517F8 = 0;
        sub_29AF715C8(&qword_2A17517E8, v32, &v38, 6uLL);
        for (i = 15; i != -3; i -= 3)
        {
          sub_29ABEC7EC(&v32[i]);
        }

        if ((v26 & 7) != 0)
        {
          atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v27 & 7) != 0)
        {
          atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v28 & 7) != 0)
        {
          atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v29 & 7) != 0)
        {
          atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v30 & 7) != 0)
        {
          atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v31[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v31[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        __cxa_atexit(sub_29AF714E8, &qword_2A17517E8, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1751800);
      }
    }

    v6 = pxrInternal__aapl__pxrReserved__::UsdGeomCurves::_GetStaticTfType(IsA);
    v8 = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(v6, v7);
    if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a1, v8))
    {
      if ((atomic_load_explicit(&qword_2A1751820, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2A1751820))
      {
        return &qword_2A1751808;
      }

      else
      {
        v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
        if (!v24)
        {
          v24 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
        }

        v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v25)
        {
          v25 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        v29 = 0;
        sub_29AC9BE9C(v31, v24 + 3, v25 + 165, &v29);
        memset(v32, 0, sizeof(v32));
        sub_29AF715C8(v32, v31, v32, 1uLL);
        sub_29AF71520(v32);
        v30 = v32;
        sub_29AC1C990(&v30);
        sub_29ABEC7EC(v31);
        if ((v29 & 7) != 0)
        {
          atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v9 = &qword_2A1751808;
        __cxa_atexit(sub_29AF714E8, &qword_2A1751808, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1751820);
      }
    }

    else
    {
      return &qword_2A17517E8;
    }
  }

  else if (atomic_load_explicit(&qword_2A1751828, memory_order_acquire))
  {
    return &qword_2A1751830;
  }

  else
  {
    sub_29B2CCA24(v32);
    return v32[0];
  }

  return v9;
}

void sub_29AF711A0(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x90uLL);
  v7 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource::HdOverlayContainerDataSource(v6, a1, &v7);
  sub_29ABDE960(a3, v6);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AF7121C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v11)
  {
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF71240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x50uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceCustomPrimvars::UsdImagingDataSourceCustomPrimvars(v10, a1, a2, a3, a4);

  return sub_29AF719E4(a5, v10);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Invalidate(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X2>, int a4@<W3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  v10[57] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::Invalidate(a2, a3, a4, a5);
  if (!*a2)
  {
    v9 = sub_29AF70B08(a1);
    if (*v9 != v9[1])
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceCustomPrimvars::Invalidate(a3, v9, v10);
      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, v10);
      sub_29ABD3178();
    }
  }
}

void sub_29AF713AC(uint64_t a1)
{
  *a1 = &unk_2A20A66D8;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF71448(uint64_t a1)
{
  *a1 = &unk_2A20A66D8;
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v4 = *(a1 + 24);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v5);
}

void **sub_29AF714E8(void **a1)
{
  v3 = a1;
  sub_29AC1C990(&v3);
  return a1;
}

uint64_t sub_29AF71520(uint64_t **a1)
{
  qword_2A1751808 = 0;
  unk_2A1751810 = 0;
  qword_2A1751818 = 0;
  result = sub_29AF71768(&qword_2A1751808, qword_2A17517E8, qword_2A17517F0, 0xAAAAAAAAAAAAAAABLL * ((qword_2A17517F0 - qword_2A17517E8) >> 3));
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      result = sub_29AF7171C(&qword_2A1751808, v3);
      v3 += 3;
    }

    while (v3 != v4);
  }

  return result;
}

void sub_29AF715B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AC1C990(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AF715C8(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A012BFC(result, a4);
    result = sub_29AF71650(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AF71630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AC1C990(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AF71650(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
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
      sub_29AC1CDDC(a1, v4, v6);
      v6 += 3;
      v4 = v12 + 3;
      v12 += 3;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29AF716E4(v9);
  return v4;
}

uint64_t sub_29AF716E4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AC1CE9C(a1);
  }

  return a1;
}

uint64_t sub_29AF7171C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AF717F0(a1, a2);
  }

  else
  {
    sub_29AC1CDDC(a1, *(a1 + 8), a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t *sub_29AF71768(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A012BFC(result, a4);
    result = sub_29AF71650(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AF717D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AC1C990(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF717F0(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[24 * v2];
  *(&v16 + 1) = &v7[24 * v6];
  sub_29AC1CDDC(a1, v15, a2);
  *&v16 = v15 + 3;
  v8 = *(a1 + 8);
  v9 = (v15 + *a1 - v8);
  sub_29AF71920(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29AC1D2A8(&v14);
  return v13;
}

void sub_29AF7190C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AC1D2A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF71920(uint64_t a1, void *a2, void *a3, void *a4)
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
      *a4 = *v7;
      *v7 = 0;
      a4[1] = v7[1];
      v7[1] = 0;
      a4[2] = v7[2];
      v7[2] = 0;
      v7 += 3;
      a4 += 3;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      sub_29AC1CA18(a1, v5);
      v5 += 3;
    }
  }

  return sub_29AF716E4(v9);
}

void *sub_29AF719E4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A5320;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF71A3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF71A58(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF71A80(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF71AB0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A5370))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::UsdImagingDataSourceMapped(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  return pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::UsdImagingDataSourceMapped(a1, a2, a3, (a4 + 24), a5);
}

{
  return pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::UsdImagingDataSourceMapped(a1, a2, a3, (a4 + 24), a5);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::UsdImagingDataSourceMapped(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4, uint64_t a5)
{
  *a1 = &unk_2A20A5398;
  *(a1 + 8) = *a2;
  v10 = *(a2 + 8);
  *(a1 + 16) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 24), (a2 + 16));
  sub_29A1E2240((a1 + 28), (a2 + 20));
  v11 = *(a2 + 24);
  *(a1 + 32) = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 32) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A1E21F4((a1 + 40), a3);
  sub_29A1E2240((a1 + 44), a3 + 1);
  v12 = a4[1];
  *(a1 + 48) = *a4;
  *(a1 + 56) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = a5;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::~UsdImagingDataSourceMapped(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped *this)
{
  *this = &unk_2A20A5398;
  v2 = *(this + 7);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 11);
  sub_29A1DE3A4(this + 10);
  v3 = *(this + 4);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 7);
  sub_29A1DE3A4(this + 6);
  v5 = *(this + 2);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5, v4);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::~UsdImagingDataSourceMapped(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::GetNames(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

double pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::Get@<D0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v6 = *(this + 6);
  v8 = *v6;
  v7 = *(v6 + 8);
  if (v7 == *v6)
  {
    v8 = *(v6 + 8);
  }

  else
  {
    v9 = (v7 - *v6) >> 3;
    do
    {
      v10 = &v8[v9 >> 1];
      v11 = sub_29A153D90(&v16, v10, a2);
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
        v8 = v10 + 1;
      }
    }

    while (v9);
    v6 = *(this + 6);
    v7 = *(v6 + 8);
  }

  if (v7 == v8 || (*a2 ^ *v8) >= 8)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v13 = (*(v6 + 24) + 104 * ((v8 - *v6) >> 3));
    v14 = *(v13 + 24);
    if (v13)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute((this + 8), v13, v17);
      pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v17);
    }

    if (v14 != 1)
    {
      sub_29A151D68();
    }

    sub_29AF71FDC(this + 8, this + 10, v13, *(this + 8), &v16);
    result = *&v16;
    *a3 = v16;
  }

  return result;
}

void sub_29AF71F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, int a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_29A1DCEA8(&a19);
  sub_29A5888DC(v19 - 96);
  _Unwind_Resume(a1);
}

void *sub_29AF71FDC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x48uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::UsdImagingDataSourceMapped(v10, a1, a2, a3, a4);

  return sub_29AF72CBC(a5, v10);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::Invalidate@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a3@<X8>)
{
  *(a3 + 56) = 0x800000000;
  v4 = *result;
  v5 = *(result + 8);
  if (*result != v5)
  {
    do
    {
      v7 = *a2;
      v8 = *(a2 + 8);
      while (v7 != v8)
      {
        if ((*v4 ^ *v7) <= 7)
        {
          result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a3, (v7 + 1));
        }

        v7 += 12;
      }

      ++v4;
    }

    while (v4 != v5);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::_FindOrCreateChild(uint64_t *a1@<X0>, uint64_t ***a2@<X1>, void *a3@<X8>)
{
  v27 = *MEMORY[0x29EDCA608];
  v6 = *a2;
  v8 = **a2;
  v7 = (*a2)[1];
  if (v7 == v8)
  {
    v12 = (*a2)[1];
  }

  else
  {
    v9 = v7 - v8;
    do
    {
      v10 = &v8[v9 >> 1];
      v11 = sub_29A153D90(&v21, v10, a1);
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
        v8 = v10 + 1;
      }
    }

    while (v9);
    v12 = v8;
    v6 = *a2;
    v8 = **a2;
    v7 = (*a2)[1];
  }

  v13 = &v6[3][13 * ((v12 - v8) >> 3)];
  if (v7 == v12 || (*a1 ^ *v12) > 7)
  {
    v18 = operator new(0x48uLL);
    *(v18 + 1) = 0;
    *(v18 + 2) = 0;
    *v18 = &unk_2A20A5468;
    *(v18 + 24) = 0u;
    *(v18 + 40) = 0u;
    *(v18 + 56) = 0u;
    *a3 = v18 + 24;
    a3[1] = v18;
    sub_29A2FA5B4(v6, v12, a1);
    v19 = *a2;
    v21 = v18 + 24;
    v22 = v18;
    atomic_fetch_add_explicit(v18 + 1, 1uLL, memory_order_relaxed);
    v26 = 1;
    sub_29AF7234C(v19 + 3, v13, &v21);
    sub_29AF72AEC(&v21);
  }

  else
  {
    v14 = *(v13 + 96);
    if (v13)
    {
      v15 = v14 == 1;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v20 = *(v13 + 8);
      *a3 = *v13;
      a3[1] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      if (v14)
      {
        sub_29A151D68();
      }

      v21 = "usdImaging/dataSourceMapped.cpp";
      v22 = "_FindOrCreateChild";
      v23 = 161;
      v24 = "_ContainerMappingsSharedPtr pxrInternal__aapl__pxrReserved__::_FindOrCreateChild(const TfToken &, const _ContainerMappingsSharedPtr &)";
      v25 = 0;
      v16 = *v13 & 0xFFFFFFFFFFFFFFF8;
      if (v16)
      {
        v17 = (v16 + 16);
        if (*(v16 + 39) < 0)
        {
          v17 = *v17;
        }
      }

      else
      {
        v17 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v21, 1, "Adding data source locator when there was already an ascendant locator added for a Usd attribute with name '%s'.", v17);
      *a3 = 0;
      a3[1] = 0;
    }
  }
}

void sub_29AF72320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AF72AEC(va);
  sub_29A014BEC(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF7234C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v8 = *a1;
    v9 = 0x4EC4EC4EC4EC4EC5 * ((v7 - *a1) >> 3) + 1;
    if (v9 > 0x276276276276276)
    {
      sub_29A00C9A4();
    }

    v10 = a2 - v8;
    v11 = 0x4EC4EC4EC4EC4EC5 * ((v6 - v8) >> 3);
    v12 = 2 * v11;
    if (2 * v11 <= v9)
    {
      v12 = 0x4EC4EC4EC4EC4EC5 * ((v7 - *a1) >> 3) + 1;
    }

    if (v11 >= 0x13B13B13B13B13BLL)
    {
      v13 = 0x276276276276276;
    }

    else
    {
      v13 = v12;
    }

    v14 = 0x4EC4EC4EC4EC4EC5 * (v10 >> 3);
    v21 = a1;
    if (v13)
    {
      v15 = sub_29A09B7D4(a1, v13);
    }

    else
    {
      v15 = 0;
    }

    v17 = v15;
    v18 = &v15[104 * v14];
    v19 = v18;
    v20 = &v15[104 * v13];
    sub_29AF72FB8(&v17, a3);
    v4 = sub_29AF73160(a1, &v17, v4);
    sub_29AF737EC(&v17);
  }

  else if (a2 == v7)
  {
    sub_29AF7321C(a1[1], a3);
    a1[1] = v7 + 104;
  }

  else
  {
    sub_29AF72EF8(a1, a2, a1[1], a2 + 104);
    sub_29AF733C4(v4, a3);
  }

  return v4;
}

void pxrInternal__aapl__pxrReserved__::_Add(pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a1, uint64_t *a2, uint64_t ***a3)
{
  v29 = *MEMORY[0x29EDCA608];
  ElementCount = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetElementCount(a1);
  if (ElementCount)
  {
    v7 = ElementCount - 1;
    if (ElementCount == 1)
    {
LABEL_9:
      LastElement = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetLastElement((a2 + 1));
      v14 = *a3;
      v16 = **a3;
      v15 = (*a3)[1];
      if (v15 != v16)
      {
        v17 = (v15 - v16) >> 3;
        do
        {
          v18 = &v16[v17 >> 1];
          v19 = sub_29A153D90(&v24, v18, LastElement);
          if (v19)
          {
            v17 += ~(v17 >> 1);
          }

          else
          {
            v17 >>= 1;
          }

          if (v19)
          {
            v16 = v18 + 1;
          }
        }

        while (v17);
        v15 = v16;
        v14 = *a3;
        v16 = **a3;
      }

      v20 = v14[3];
      sub_29A2FA5B4(v14, v15, LastElement);
      v21 = *a3;
      sub_29AF72B9C(&v24, a2);
      v28 = 0;
      sub_29AF7234C(v21 + 3, &v20[13 * ((v15 - v16) >> 3)], &v24);
      sub_29AF72AEC(&v24);
    }

    else
    {
      v8 = 0;
      while (1)
      {
        Element = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetElement(a1, v8);
        pxrInternal__aapl__pxrReserved__::_FindOrCreateChild(Element, a3, &v24);
        v10 = a3[1];
        v11 = v24;
        *a3 = v24;
        if (v10)
        {
          sub_29A014BEC(v10);
          v12 = *a3;
        }

        else
        {
          v12 = v11;
        }

        if (!v12)
        {
          break;
        }

        if (v7 == ++v8)
        {
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
    *&v24 = "usdImaging/dataSourceMapped.cpp";
    *(&v24 + 1) = "_Add";
    v25 = 185;
    v26 = "void pxrInternal__aapl__pxrReserved__::_Add(const HdDataSourceLocator &, const UsdImagingDataSourceMapped::AttributeMapping &, _ContainerMappingsSharedPtr)";
    v27 = 0;
    v22 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v22)
    {
      v23 = (v22 + 16);
      if (*(v22 + 39) < 0)
      {
        v23 = *v23;
      }
    }

    else
    {
      v23 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v24, 1, "Expected non-trivial data source locator for attribute %s.", v23);
  }
}

void sub_29AF726AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AF72AEC(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::AttributeMappings(uint64_t a1, void *a2, pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a3)
{
  v18[4] = *MEMORY[0x29EDCA608];
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29AF72918(a1, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5));
  v6 = operator new(0x48uLL);
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *v6 = &unk_2A20A5468;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 24) = 0u;
  v7 = *(a1 + 32);
  *(a1 + 24) = v6 + 24;
  *(a1 + 32) = v6;
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  v8 = a2[1];
  if (*a2 != v8)
  {
    v9 = *a2 + 64;
    do
    {
      v10 = *(v9 - 64);
      v16 = v10;
      if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v16 &= 0xFFFFFFFFFFFFFFF8;
      }

      v11 = v9 - 56;
      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(a3, (v9 - 56), v17);
      sub_29AF7383C(v18, v9);
      sub_29AF729F4(a1, &v16);
      v12 = *(a1 + 32);
      v14 = *(a1 + 24);
      v15 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::_Add((v9 - 56), &v16, &v14);
      if (v15)
      {
        sub_29A014BEC(v15);
      }

      sub_29AF72C3C(v18);
      sub_29ABC3488(v17);
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 += 96;
    }

    while (v11 + 88 != v8);
  }

  return a1;
}

void sub_29AF7289C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  v14 = *(v12 + 32);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  a12 = v12;
  sub_29AF738D4(&a12);
  _Unwind_Resume(a1);
}

void **sub_29AF72918(void **result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 5) < a2)
  {
    if (a2 >= 0x2AAAAAAAAAAAAABLL)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A0CFEE8(result, a2);
    v5 = v4 + v3;
    v12 = v4;
    v13 = (v4 + v3);
    v7 = &v4[12 * v6];
    v14 = (v4 + v3);
    v15 = v7;
    v8 = *(v2 + 8);
    v9 = v4 + v3 + *v2 - v8;
    sub_29AF739A4(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    *(v2 + 8) = v5;
    v11 = *(v2 + 16);
    *(v2 + 16) = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29AF73B98(&v12);
  }

  return result;
}

void sub_29AF729E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AF73B98(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF729F4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AF73C14(a1, a2);
  }

  else
  {
    sub_29AF73A70(a1, *(a1 + 8), a2);
    result = v3 + 96;
    *(a1 + 8) = v3 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

void *sub_29AF72A54(void *a1)
{
  sub_29AF72C3C((a1 + 8));
  sub_29ABC3488((a1 + 1));
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::~AttributeMappings(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = this;
  sub_29AF738D4(&v3);
}

uint64_t sub_29AF72AEC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 96);
  if (v2 != -1)
  {
    result = (off_2A20A53D0[v2])(&v3, result);
  }

  *(v1 + 96) = -1;
  return result;
}

uint64_t sub_29AF72B44(uint64_t a1, void *a2)
{
  sub_29AF72C3C((a2 + 8));
  result = sub_29ABC3488((a2 + 1));
  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29AF72B8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }
}

uint64_t sub_29AF72B9C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29ABD30AC((a1 + 8), (a2 + 1));
  sub_29AF7383C(a1 + 64, (a2 + 8));
  return a1;
}

void sub_29AF72C08(_Unwind_Exception *a1)
{
  sub_29ABC3488((v1 + 1));
  if ((*v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AF72C3C(uint64_t a1)
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

void *sub_29AF72CBC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A53F0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF72D14(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF72D30(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF72D58(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF72D88(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A5440))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF72DE8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20A5468;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AF72E2C(uint64_t a1)
{
  v1 = (a1 + 24);
  v2 = (a1 + 48);
  sub_29AF72E74(&v2);
  v2 = v1;
  sub_29A124AB0(&v2);
}

void sub_29AF72E74(void ***a1)
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
        v4 -= 104;
        sub_29AF72AEC(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29AF72EF8(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = *(result + 8);
  v8 = a2 + v7 - a4;
  if (v8 >= a3)
  {
    v10 = *(result + 8);
  }

  else
  {
    v10 = *(result + 8);
    do
    {
      result = sub_29AF7321C(v10, v8);
      v8 += 104;
      v10 += 104;
    }

    while (v8 < a3);
  }

  *(v6 + 8) = v10;
  if (v7 != a4)
  {
    v11 = v7 - 104;
    v12 = a4 - v7;
    v13 = a2 + v7 - 104 - a4;
    do
    {
      result = sub_29AF733C4(v11, v13);
      v11 -= 104;
      v13 -= 104;
      v12 += 104;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_29AF72FB8(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0x9D89D89D89D89D8ALL * ((v4 - *a1) >> 3);
      }

      v10 = v9 >> 2;
      v11 = a1[4];
      v25 = a1[4];
      v12 = sub_29A09B7D4(v11, v9);
      v13 = &v12[104 * v10];
      v22 = v12;
      *&v23 = v13;
      v15 = &v12[104 * v14];
      *(&v23 + 1) = v13;
      v24 = v15;
      v16 = *(a1 + 1);
      v17 = v16;
      v18 = *(&v16 + 1) - v16;
      if (*(&v16 + 1) == v16)
      {
        v19 = v13;
      }

      else
      {
        v19 = v13 + v18;
        do
        {
          sub_29AF7321C(v13, v17);
          v13 += 104;
          v17 += 104;
          v18 -= 104;
        }

        while (v18);
        v12 = v22;
        v13 = v23;
        v16 = *(a1 + 1);
        v15 = v24;
      }

      v22 = *a1;
      *a1 = v12;
      a1[1] = v13;
      v23 = v16;
      v20 = a1[3];
      a1[2] = v19;
      a1[3] = v15;
      v24 = v20;
      sub_29AF737EC(&v22);
      v5 = a1[2];
    }

    else
    {
      v8 = (0x4EC4EC4EC4EC4EC5 * (v7 >> 3) + 1) / -2;
      v5 = v6 - 104 * ((0x4EC4EC4EC4EC4EC5 * (v7 >> 3) + 1) / 2);
      if (v6 != v4)
      {
        do
        {
          sub_29AF733C4(v5, v6);
          v6 += 104;
          v5 += 104;
        }

        while (v6 != v4);
        v6 = a1[1];
      }

      a1[1] = v6 + 104 * v8;
      a1[2] = v5;
    }
  }

  result = sub_29AF7321C(v5, a2);
  a1[2] += 104;
  return result;
}

void sub_29AF73148(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AF737EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF73160(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  sub_29AF73670(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  sub_29AF73670(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_29AF7321C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 96) = -1;
  sub_29AF73264(a1, a2);
  return a1;
}

uint64_t sub_29AF73264(uint64_t a1, uint64_t a2)
{
  result = sub_29AF72AEC(a1);
  v5 = *(a2 + 96);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_2A20A54A8[v5])(&v6, a2);
    *(a1 + 96) = v5;
  }

  return result;
}

__n128 sub_29AF732D0(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

uint64_t sub_29AF732E4(uint64_t a1, void *a2)
{
  *a1 = *a2;
  *a2 = 0;
  sub_29ABD30AC((a1 + 8), (a2 + 1));
  sub_29AF73344(a1 + 64, (a2 + 8));
  return a1;
}

uint64_t sub_29AF73344(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_29AF733C4(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 96);
  if (*(result + 96) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return sub_29AF72AEC(result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_2A20A54B8[v4])(v6);
    }
  }

  return result;
}

uint64_t sub_29AF73444(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 96))
  {
    sub_29AF72AEC(a1);
    result = sub_29AF732E4(a1, a3);
    *(a1 + 96) = 0;
  }

  else
  {
    if (a3 != a2)
    {
      if ((*a2 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *a2 = *a3;
      v7 = (a2 + 1);
      v8 = *(a3 + 8);
      *a3 = 0;
      if (*(a3 + 60) >= 7u)
      {
        v9 = v8;
      }

      else
      {
        v9 = (a3 + 8);
      }

      sub_29ABDFEA4(v7, v9, &v9[8 * *(a3 + 56)]);
    }

    return sub_29AF734F0((a2 + 8), a3 + 64);
  }

  return result;
}

uint64_t sub_29AF734F0(uint64_t a1, uint64_t a2)
{
  sub_29AF73574(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_29AF73574(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

__n128 sub_29AF735F8(uint64_t a1, __n128 *a2, __n128 *a3)
{
  if (*(a1 + 96) == 1)
  {
    result = *a3;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    v5 = a2->n128_u64[1];
    *a2 = result;
    if (v5)
    {

      sub_29A014BEC(v5);
    }
  }

  else
  {
    sub_29AF72AEC(a1);
    result = *a3;
    *a1 = *a3;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    *(a1 + 96) = 1;
  }

  return result;
}

uint64_t sub_29AF73670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_29AF73718(a4, v8);
      v8 += 104;
      a4 += 104;
      v7 -= 104;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = sub_29AF72AEC(v6);
      v6 += 104;
    }
  }

  return result;
}

void sub_29AF736F0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 104;
    do
    {
      sub_29AF72AEC(v4);
      v4 -= 104;
      v2 += 104;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AF73718(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 96) = -1;
  sub_29AF73760(a1, a2);
  return a1;
}

uint64_t sub_29AF73760(uint64_t a1, uint64_t a2)
{
  result = sub_29AF72AEC(a1);
  v5 = *(a2 + 96);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_2A20A54C8[v5])(&v6, a2);
    *(a1 + 96) = v5;
  }

  return result;
}

void **sub_29AF737CC(void **result, void *a2)
{
  v2 = *result;
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29AF737EC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 104;
    sub_29AF72AEC(i - 104);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29AF7383C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_29AF738D4(void ***a1)
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
        v4 -= 12;
        sub_29AF7395C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29AF7395C(uint64_t a1, void *a2)
{
  sub_29AF72C3C((a2 + 8));
  result = sub_29ABC3488((a2 + 1));
  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t sub_29AF739A4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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
      sub_29AF73A70(a1, a4, v7);
      v7 += 12;
      a4 = v12 + 96;
      v12 += 96;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29AF7395C(a1, v5);
      v5 += 12;
    }
  }

  return sub_29AF73B0C(v9);
}

uint64_t sub_29AF73A70(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  *a2 = *a3;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29ABD30AC((a2 + 8), (a3 + 1));
  return sub_29AF7383C(a2 + 64, (a3 + 8));
}

void sub_29AF73AD8(_Unwind_Exception *a1)
{
  sub_29ABC3488((v1 + 1));
  if ((*v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AF73B0C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AF73B44(a1);
  }

  return a1;
}

uint64_t *sub_29AF73B44(uint64_t *result)
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
      v3 -= 12;
      result = sub_29AF7395C(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29AF73B98(void **a1)
{
  sub_29AF73BCC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29AF73BCC(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 32);
      *(v3 + 16) = v1 - 96;
      result = sub_29AF7395C(v4, (v1 - 96));
      v1 = *(v3 + 16);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29AF73C14(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A0CFEE8(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[12 * v2];
  *(&v16 + 1) = &v7[12 * v6];
  sub_29AF73A70(a1, v15, a2);
  *&v16 = v15 + 12;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  sub_29AF739A4(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29AF73B98(&v14);
  return v13;
}

void sub_29AF73D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AF73B98(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterial *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterial::UsdImagingDataSourceMaterial(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterial *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  *this = &unk_2A20A54E8;
  *(this + 2) = *a2;
  v8 = *(a2 + 1);
  *(this + 2) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(this + 6, a2 + 4);
  sub_29A1E2240(this + 7, a2 + 5);
  v9 = *(a2 + 3);
  *(this + 4) = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 4) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 5) = a3;
  v10 = *a4;
  *(this + 6) = *a4;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 6) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29AF7B7F8(this + 56, 8uLL, &v12);
  return this;
}

void sub_29AF73E58(_Unwind_Exception *a1)
{
  v4 = *(v1 + 6);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A57F434(v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterial::~UsdImagingDataSourceMaterial(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterial *this)
{
  *this = &unk_2A20A54E8;
  v2 = this + 56;
  sub_29AF73F48(this + 28);
  sub_29AF762BC(v2, v3);
  v4 = *(this + 6);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 4);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 7);
  sub_29A1DE3A4(this + 6);
  v7 = *(this + 2);
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7, v6);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterial::~UsdImagingDataSourceMaterial(this);

  operator delete(v1);
}

uint64_t sub_29AF73F48(__int16 *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = sub_29AF7BA24(v4, a1);
  if ((pxrInternal__aapl__pxrReserved__::Work_ShouldSynchronizeAsyncDestroyCalls(v1) & 1) == 0)
  {
    sub_29AF7B950(v4);
  }

  return sub_29AF762BC(v4, v2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterial::GetNames(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterial *this@<X0>, void *a2@<X8>)
{
  v12[2] = *MEMORY[0x29EDCA608];
  if (*(this + 6))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialSchemaTokens);
    if (!v3)
    {
      v3 = sub_29ABEE484(&pxrInternal__aapl__pxrReserved__::HdMaterialSchemaTokens);
    }

    v4 = *(v3 + 1);
    v11 = v4;
    if ((v4 & 7) != 0)
    {
      v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
      {
        v11 = v5;
      }
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    sub_29A12EF7C(a2, &v11, v12, 1uLL);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v10, (this + 8));
    v10[0] = &unk_2A2061320;
    pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::GetOutputs(v10, 1, &v11);
    pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::~UsdShadeNodeGraph(v10);
    v6 = v11;
    for (i = v12[0]; v6 != i; v6 = (v6 + 32))
    {
      sub_29AF74250(v6, v10);
      v8 = *a2;
      v9 = a2[1];
      if (*a2 != v9)
      {
        while ((*v8 ^ v10[0]) >= 8uLL)
        {
          if (++v8 == v9)
          {
            goto LABEL_15;
          }
        }
      }

      if (v8 == v9)
      {
LABEL_15:
        sub_29A1D8028(a2, v10);
      }

      if ((v10[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v10[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    v10[0] = &v11;
    sub_29A7D6D78(v10);
  }
}

void sub_29AF74250(pxrInternal__aapl__pxrReserved__::UsdProperty *a1@<X0>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdProperty::GetNamespace(a1, &v19);
  if ((v19 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v19 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v3);
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
  if (!v5)
  {
    v5 = sub_29A7CFC64(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
  }

  if ((*(v5 + 16) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v6 = ((*(v5 + 16) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v6 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  if (*(v6 + 23) >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = *v6;
  }

  v8 = *(EmptyString + 23);
  if (v8 >= 0)
  {
    v9 = *(EmptyString + 23);
  }

  else
  {
    v9 = EmptyString[1];
  }

  v10 = strlen(v7);
  if (v9 < v10 || ((v11 = v10, v8 >= 0) ? (v12 = EmptyString) : (v12 = *EmptyString), v13 = strncmp(v12, v7, v11), v13))
  {
    *a2 = 0;
  }

  else
  {
    if ((v19 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v14 = ((v19 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v14 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v13);
    }

    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
    if (!v15)
    {
      v15 = sub_29A7CFC64(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
    }

    v16 = *(v15 + 16) & 0xFFFFFFFFFFFFFFF8;
    if (v16)
    {
      v17 = *(v16 + 39);
      if ((v17 & 0x8000000000000000) != 0)
      {
        v17 = *(v16 + 24);
      }
    }

    else
    {
      v17 = 0;
    }

    std::string::basic_string(&v18, v14, v17, 0xFFFFFFFFFFFFFFFFLL, &v20);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a2);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AF743D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterial::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterial *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v12 = *MEMORY[0x29EDCA608];
  sub_29AF16C00(this + 56, a2, v10);
  if (v10[0])
  {
    v5 = 0;
  }

  else
  {
    v5 = v10[1] == this + 72;
  }

  if (v5)
  {
    *a3 = 0;
    a3[1] = 0;
    v8 = *(this + 6);
    v7 = this + 48;
    if (v8)
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v11, (v7 - 40));
      v11[3] = 0;
      v11[0] = off_2A2060F50;
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath((v7 - 40));
    }

    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v9, (v7 - 40));
    *&v9 = &unk_2A2061320;
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath((v7 - 40));
  }

  v6 = *(v10[0] + 24);
  *a3 = *(v10[0] + 16);
  a3[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_29AF7570C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AF75D60(uint64_t a1, uint64_t *a2)
{
  sub_29AF16C00(a1, a2, &v11);
  v4 = v11;
  if (v11)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v11 + 1) == a1 + 16;
  }

  if (v5)
  {
    v6 = *a2;
    if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 &= 0xFFFFFFFFFFFFFFF8;
    }

    v8[1] = 0;
    v9 = 0;
    v8[0] = v6;
    sub_29AF16F34(a1, v8, 0, &v10);
    v11 = v10;
    if (v9)
    {
      sub_29A014BEC(v9);
    }

    if ((v8[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v8[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 = v11;
  }

  return v4 + 16;
}

void sub_29AF75E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  sub_29B294B14(&a10);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterialPrim *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterialPrim::UsdImagingDataSourceMaterialPrim(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterialPrim *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::UsdPrim *a3, const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals *a4)
{
  v12 = *a3;
  v8 = *(a3 + 1);
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v14, a3 + 4);
  sub_29A1E2240(&v15, a3 + 5);
  v9 = *(a3 + 3);
  v16 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::UsdImagingDataSourcePrim(this, a2, &v12, a4);
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

  *this = &unk_2A20A5518;
  return this;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterialPrim::~UsdImagingDataSourceMaterialPrim(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterialPrim *this)
{
  *this = &unk_2A20A66D8;
  v2 = *(this + 5);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 9);
  sub_29A1DE3A4(this + 8);
  v4 = *(this + 3);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 3);
  sub_29A1DE3A4(this + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterialPrim::~UsdImagingDataSourceMaterialPrim(this);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterialPrim::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterialPrim *this@<X0>, void *a2@<X8>)
{
  Names = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::GetNames(this, a2);
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdMaterialSchema::GetSchemaToken(Names);
  return sub_29A1D8028(a2, SchemaToken);
}

void sub_29AF7606C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterialPrim::Get(const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals **this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if ((*pxrInternal__aapl__pxrReserved__::HdMaterialSchema::GetSchemaToken(this) ^ *a2) > 7)
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::Get(this, a2, a3);
  }

  else
  {
    sub_29AF7611C((this + 2), this[6], &v6);
    *a3 = v6;
  }
}

void *sub_29AF7611C@<X0>(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x268uLL);
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterial::UsdImagingDataSourceMaterial(v6, a1, a2, &v8);

  return sub_29AF7BD80(a3, v6);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterialPrim::Invalidate(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X2>, int a4@<W3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::Invalidate(a2, a3, a4, a5);
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v14, a1);
    v14 = &unk_2A2061000;
    if (v15)
    {
      if ((*(v15 + 57) & 8) == 0)
      {
        IsInterfaceInputName = off_2A2061020(&v14);
        if (IsInterfaceInputName)
        {
          v11 = *a3;
          v10 = a3[1];
          while (v11 != v10)
          {
            if ((*v11 & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              EmptyString = ((*v11 & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(IsInterfaceInputName);
            }

            IsInterfaceInputName = pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInterfaceInputName(EmptyString);
            if (IsInterfaceInputName)
            {
              DefaultLocator = pxrInternal__aapl__pxrReserved__::HdMaterialSchema::GetDefaultLocator(IsInterfaceInputName);
              pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, DefaultLocator);
              break;
            }

            v11 = (v11 + 8);
          }
        }
      }
    }

    pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::~UsdShadeMaterial(&v14);
  }
}

void sub_29AF76290(uint64_t a1, ...)
{
  va_start(va, a1);
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::~UsdShadeMaterial(va);
  sub_29ABD3178();
}

uint64_t sub_29AF762BC(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AF762F0(a1 + 16);
  return a1;
}

uint64_t sub_29AF762F0(uint64_t a1)
{
  sub_29AF15210(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29AF15258(a1, v2);
  return a1;
}

const pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI *sub_29AF7632C(const pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI *result, uint64_t a2, uint64_t a3, uint64_t *a4, _DWORD *a5, uint64_t a6, const pxrInternal__aapl__pxrReserved__::SdfPath *a7)
{
  v42 = *MEMORY[0x29EDCA608];
  v7 = *(result + 1);
  if (v7)
  {
    if ((*(v7 + 57) & 8) == 0)
    {
      v13 = result;
      result = (*(*result + 32))(result);
      if (result)
      {
        v14 = sub_29A735768(v13, &v37);
        v15 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v14);
        if (v37 != *v15)
        {
          sub_29AF768B4(a7, &v37, v38);
          v16 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetToken(v38);
          v36 = v16;
          if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v36 &= 0xFFFFFFFFFFFFFFF8;
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v38 + 1);
          sub_29A1DE3A4(v38);
          if (*(a2 + 8) == sub_29ACB3BCC(a2, &v36))
          {
            v17 = operator new(0x78uLL);
            pxrInternal__aapl__pxrReserved__::UsdShadeShader::UsdShadeShader(v38, v13);
            *v17 = &unk_2A20A5578;
            pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase((v17 + 1), v38);
            v17[1] = &unk_2A2061448;
            v18 = *a4;
            v17[4] = a3;
            v17[5] = v18;
            if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v17[5] &= 0xFFFFFFFFFFFFFFF8;
            }

            sub_29A1E21F4(v17 + 12, a5);
            sub_29A1E2240(v17 + 13, a5 + 1);
            sub_29ABD30AC(v17 + 14, a6);
            sub_29A1E21F4(v17 + 28, a7);
            sub_29A1E2240(v17 + 29, a7 + 1);
            v19 = operator new(0x20uLL);
            v19->__vftable = &unk_2A20A5B50;
            v19->__shared_owners_ = 0;
            v19->__shared_weak_owners_ = 0;
            v19[1].__vftable = v17;
            v25 = v19;
            pxrInternal__aapl__pxrReserved__::UsdShadeShader::~UsdShadeShader(v38);
            v38[0] = v36;
            if ((v36 & 7) != 0 && (atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v38[0] = (v38[0] & 0xFFFFFFFFFFFFFFF8);
            }

            v38[1] = v17;
            v39 = v25;
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_29AF7694C(a2, v38);
            if (v39)
            {
              sub_29A014BEC(v39);
            }

            if ((v38[0] & 7) != 0)
            {
              atomic_fetch_add_explicit((v38[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetInputs(v13, 1, &v34);
            v20 = v34;
            for (i = v35; v20 != i; v20 = (v20 + 32))
            {
              pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetValueProducingAttributes(v38, v20, 1);
              v21 = v38[0];
              if (v41 < 2)
              {
                v21 = v38;
              }

              if (v40)
              {
                v22 = 32 * v40;
                v23 = v21 + 1;
                do
                {
                  sub_29A580660(v28, v23, v23 + 2);
                  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v33, v28);
                  v33[3] = 0;
                  v33[0] = off_2A2060F50;
                  sub_29AF7632C(v33, a2, a3, a4, a5, a6, a7);
                  pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::~UsdShadeConnectableAPI(v33);
                  if ((v32 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v31);
                  sub_29A1DE3A4(&v30);
                  if (v29)
                  {
                    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v29, v24);
                  }

                  v23 += 4;
                  v22 -= 32;
                }

                while (v22);
              }

              sub_29A7D1904(v38);
            }

            v38[0] = &v34;
            sub_29A7D6840(v38);
            sub_29A014BEC(v25);
          }

          if ((v36 & 7) != 0)
          {
            atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v37 + 1);
        return sub_29A1DE3A4(&v37);
      }
    }
  }

  return result;
}

void sub_29AF76744(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_29A014BEC(a3);
  if ((a17 & 7) != 0)
  {
    atomic_fetch_add_explicit((a17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AF768B4@<X0>(const pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a1);
  if (v6)
  {
    v7 = pxrInternal__aapl__pxrReserved__::SdfPath::ReflexiveRelativePath(v6);

    return pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(a3, a2, a1, v7, 1);
  }

  else
  {
    sub_29A1E21F4(a3, a2);

    return sub_29A1E2240((a3 + 4), a2 + 1);
  }
}

void *sub_29AF7694C(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
    v6 = *a2;
    if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 &= 0xFFFFFFFFFFFFFFF8;
    }

    v15 = v6;
    v16 = v5;
    v7 = sub_29A162678(v4, &v15, &v15);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v8 & 1) == 0)
    {
      return (*a1 + 24 * v7[3]);
    }

    goto LABEL_14;
  }

  result = *a1;
  v10 = a1[1];
  if (*a1 != v10)
  {
    while ((*result ^ *a2) >= 8)
    {
      result += 3;
      if (result == v10)
      {
        goto LABEL_14;
      }
    }
  }

  if (result == v10)
  {
LABEL_14:
    v11 = *a2;
    v15 = v11;
    if ((v11 & 7) != 0)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed) & 1) == 0)
      {
        v15 = v12;
      }
    }

    v13 = a2[2];
    v16 = a2[1];
    v17 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29AF7A724(a1, &v15);
    if (v17)
    {
      sub_29A014BEC(v17);
    }

    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v14 = a1[1];
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3) >= 0x80)
    {
      sub_29AF7A994(a1);
      v14 = a1[1];
    }

    return (v14 - 24);
  }

  return result;
}

void sub_29AF76ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  sub_29B294B14(&a10);
  _Unwind_Resume(a1);
}

void sub_29AF76B1C(uint64_t a1)
{
  *a1 = &unk_2A20A5578;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 116));
  sub_29A1DE3A4((a1 + 112));
  sub_29ABC3488(a1 + 56);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 52));
  sub_29A1DE3A4((a1 + 48));
  v2 = *(a1 + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::~UsdShadeShader((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF76BB8(uint64_t a1)
{
  sub_29AF76B1C(a1);

  operator delete(v1);
}

void sub_29AF76BE0(void *a1@<X8>)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens))
  {
    sub_29AC0FF34(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;

  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29AF76C48(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v51 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  if (!v6)
  {
    v6 = sub_29AC0FF34(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  }

  if ((*(v6 + 2) ^ *a2) <= 7)
  {
    v38 = 0;
    sub_29A580660(&v41, (a1 + 16), (a1 + 24));
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v45, &v41);
    v48 = 0;
    v45[0] = &unk_2A20612C8;
    if ((v44 & 7) != 0)
    {
      atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v43 + 1);
    sub_29A1DE3A4(&v43);
    if (v42)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v42, v7);
    }

    if (v45[1] && (*(v45[1] + 57) & 8) == 0 && (*(v45[0] + 4))(v45))
    {
      pxrInternal__aapl__pxrReserved__::UsdShadeNodeDefAPI::GetShaderId(v45, &v38);
    }

    sub_29A580660(&v41, (a1 + 16), (a1 + 24));
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v39, &v41);
    v39 = &unk_2A2061A18;
    if ((v44 & 7) != 0)
    {
      atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v43 + 1);
    sub_29A1DE3A4(&v43);
    if (v42)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v42, v14);
    }

    if (v40 && (*(v40 + 57) & 8) == 0 && v39[4](&v39))
    {
      v15 = *(a1 + 40);
      v50 = v15;
      if ((v15 & 7) != 0)
      {
        v16 = (v15 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed) & 1) == 0)
        {
          v50 = v16;
        }
      }

      v41 = 0;
      v42 = 0;
      v43 = 0;
      sub_29A12EF7C(&v41, &v50, &v51, 1uLL);
      pxrInternal__aapl__pxrReserved__::UsdLuxLightFilter::GetShaderId(&v39, &v41, &v32);
    }

    sub_29A580660(&v34, (a1 + 16), (a1 + 24));
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v41, &v34);
    v44 = 0;
    v41 = &unk_2A20618F0;
    if ((v37 & 7) != 0)
    {
      atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v36 + 1);
    sub_29A1DE3A4(&v36);
    if (v35)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v35, v17);
    }

    if (v42 && (*(v42 + 57) & 8) == 0 && v41[4](&v41))
    {
      v18 = *(a1 + 40);
      v49 = v18;
      if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v49 &= 0xFFFFFFFFFFFFFFF8;
      }

      v34 = 0;
      v35 = 0;
      v36 = 0;
      sub_29A12EF7C(&v34, &v49, &v50, 1uLL);
      pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::GetShaderId(&v41, &v34, &v50);
    }

    sub_29A580660(&v34, (a1 + 16), (a1 + 24));
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v32, &v34);
    v32 = &unk_2A2061320;
    if ((v37 & 7) != 0)
    {
      atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v36 + 1);
    sub_29A1DE3A4(&v36);
    if (v35)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v35, v19);
    }

    if (v33 && (*(v33 + 57) & 8) == 0 && v32[4](&v32))
    {
      if ((v38 & 7) != 0)
      {
        atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v38 = 0;
    }

    pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::~UsdShadeNodeGraph(&v32);
    pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::~UsdLuxLightAPI(&v41);
    pxrInternal__aapl__pxrReserved__::UsdLuxLightFilter::~UsdLuxLightFilter(&v39);
    pxrInternal__aapl__pxrReserved__::UsdShadeNodeDefAPI::~UsdShadeNodeDefAPI(v45);
    sub_29ABCCFA4(&v38, v45);
    *a3 = *v45;
    if ((v38 & 7) != 0)
    {
      atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    return;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  if (!v8)
  {
    v8 = sub_29AC0FF34(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  }

  if ((*(v8 + 3) ^ *a2) <= 7)
  {
    sub_29A580660(&v41, (a1 + 16), (a1 + 24));
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v45, &v41);
    v48 = 0;
    v45[0] = &unk_2A20618F0;
    if ((v44 & 7) != 0)
    {
      atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v43 + 1);
    sub_29A1DE3A4(&v43);
    if (v42)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v42, v9);
    }

    if (v45[1] && (*(v45[1] + 57) & 8) == 0 && (*(v45[0] + 4))(v45))
    {
      v10 = operator new(0x28uLL);
      *v10 = &unk_2A20A55C0;
      v11 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase((v10 + 1), v45);
      v10[1] = &unk_2A205F368;
      v12 = v48;
      v10[4] = v48;
      if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v10[4] &= 0xFFFFFFFFFFFFFFF8;
      }

      *v11 = &unk_2A20618F0;
      v13 = operator new(0x20uLL);
      *v13 = &unk_2A20A5608;
      v13[1] = 0;
      v13[2] = 0;
      v13[3] = v10;
      *a3 = v10;
      *(a3 + 8) = v13;
      pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::~UsdLuxLightAPI(v45);
      return;
    }

    pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::~UsdLuxLightAPI(v45);
    sub_29A580660(v45, (a1 + 16), (a1 + 24));
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v41, v45);
    v41 = &unk_2A2061A18;
    if ((v48 & 7) != 0)
    {
      atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v47);
    sub_29A1DE3A4(&v46);
    if (v45[1])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v45[1], v21);
    }

    if (v42 && (*(v42 + 57) & 8) == 0 && v41[4](&v41))
    {
      v22 = operator new(0x20uLL);
      *v22 = &unk_2A20A5680;
      *pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase((v22 + 1), &v41) = &unk_2A2061A18;
      v23 = operator new(0x20uLL);
      *v23 = &unk_2A20A56C8;
      v23[1] = 0;
      v23[2] = 0;
      v23[3] = v22;
      *a3 = v22;
      *(a3 + 8) = v23;
      pxrInternal__aapl__pxrReserved__::UsdLuxLightFilter::~UsdLuxLightFilter(&v41);
      return;
    }

    pxrInternal__aapl__pxrReserved__::UsdLuxLightFilter::~UsdLuxLightFilter(&v41);
LABEL_73:
    *a3 = 0;
    *(a3 + 8) = 0;
    return;
  }

  v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  if (!v20)
  {
    v20 = sub_29AC0FF34(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  }

  if ((*(v20 + 4) ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetImplementationSource((a1 + 8));
  }

  v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  if (!v24)
  {
    v24 = sub_29AC0FF34(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  }

  if ((*v24 ^ *a2) > 7)
  {
    v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
    if (!v26)
    {
      v26 = sub_29AC0FF34(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
    }

    if ((*(v26 + 1) ^ *a2) <= 7)
    {
      v27 = *(a1 + 32);
      v28 = operator new(0x30uLL);
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v45, (a1 + 8));
      v45[0] = &unk_2A2061448;
      *v28 = &unk_2A20A5A90;
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase((v28 + 1), v45);
      v28[1] = &unk_2A2061448;
      v28[4] = v27;
      sub_29A1E21F4(v28 + 10, (a1 + 112));
      sub_29A1E2240(v28 + 11, (a1 + 116));
      v29 = operator new(0x20uLL);
      *v29 = &unk_2A20A5AD8;
      v29[1] = 0;
      v29[2] = 0;
      v29[3] = v28;
      pxrInternal__aapl__pxrReserved__::UsdShadeShader::~UsdShadeShader(v45);
      *a3 = v28;
      *(a3 + 8) = v29;
      return;
    }

    goto LABEL_73;
  }

  v25 = *(a1 + 32);
  if (*(a1 + 104))
  {
    sub_29A580660(&v34, (a1 + 16), (a1 + 24));
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v34);
  }

  sub_29ABD30AC(v45, a1 + 56);
  v30 = operator new(0x68uLL);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v39, (a1 + 8));
  v39 = &unk_2A2061448;
  *v30 = &unk_2A20A58E0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase((v30 + 1), &v39);
  v30[1] = &unk_2A2061448;
  v30[4] = v25;
  sub_29A1E21F4(v30 + 10, (a1 + 48));
  sub_29A1E2240(v30 + 11, (a1 + 52));
  sub_29ABD30AC(v30 + 12, v45);
  v31 = operator new(0x20uLL);
  *v31 = &unk_2A20A5A18;
  v31[1] = 0;
  v31[2] = 0;
  v31[3] = v30;
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::~UsdShadeShader(&v39);
  *a3 = v30;
  *(a3 + 8) = v31;
  sub_29ABC3488(v45);
}

void sub_29AF7788C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if ((a27 & 7) != 0)
  {
    atomic_fetch_add_explicit((a27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF77C0C(uint64_t a1)
{
  *a1 = &unk_2A20A55C0;
  pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::~UsdLuxLightAPI((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF77C60(uint64_t a1)
{
  *a1 = &unk_2A20A55C0;
  pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::~UsdLuxLightAPI((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF77CB8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v22[4] = *MEMORY[0x29EDCA608];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_29A580660(&v17, (a1 + 16), (a1 + 24));
  v22[3] = 0;
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetPropertyNames(&v17, v22, &v19);
  sub_29A58C6CC(v22);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17.__r_.__value_.__r.__words[2] + 1);
  sub_29A1DE3A4(&v17.__r_.__value_.__r.__words[2]);
  size = v17.__r_.__value_.__l.__size_;
  if (v17.__r_.__value_.__l.__size_)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17.__r_.__value_.__l.__size_, v3);
  }

  v5 = v19;
  for (i = v20; v5 != i; ++v5)
  {
    if ((*v5 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*v5 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(size);
    }

    if ((atomic_load_explicit(&qword_2A1751860, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751860))
    {
      v14 = sub_29AF78128(&v17);
      v15 = v17.__r_.__value_.__s.__data_[0];
      v16 = (v17.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8);
      if ((v17.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v14);
      }

      std::operator+<char>();
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_release);
      }

      __cxa_atexit(MEMORY[0x29EDC9388], &qword_2A1751848, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1751860);
    }

    v8 = byte_2A175185F;
    if (byte_2A175185F >= 0)
    {
      v9 = &qword_2A1751848;
    }

    else
    {
      v9 = qword_2A1751848;
    }

    v10 = *(EmptyString + 23);
    if (v10 >= 0)
    {
      v11 = *(EmptyString + 23);
    }

    else
    {
      v11 = EmptyString[1];
    }

    size = strlen(v9);
    if (v11 >= size)
    {
      v12 = *EmptyString;
      if (v10 >= 0)
      {
        v12 = EmptyString;
      }

      size = strcmp((v12 + v11 - size), v9);
      if (!size)
      {
        if ((v8 & 0x80u) == 0)
        {
          v13 = v8;
        }

        else
        {
          v13 = qword_2A1751850;
        }

        std::string::basic_string(&v17, EmptyString, 0, v11 - v13, &v21);
        pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v22);
        size = sub_29A153214(a2, v22);
        if ((v22[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v22[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v17.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v17.__r_.__value_.__r.__words[0] = &v19;
  sub_29A124AB0(&v17);
}

void sub_29AF780EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if ((a5 & 7) != 0)
  {
    atomic_fetch_add_explicit((a5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A5888DC(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::UsdLuxTokensType *sub_29AF78128@<X0>(atomic_uint **a1@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
  if (!result)
  {
    result = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
  }

  v3 = *(result + 47);
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

void sub_29AF78190(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF781B8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF781E8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A5658))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF78228(uint64_t a1)
{
  *a1 = &unk_2A20A5680;
  pxrInternal__aapl__pxrReserved__::UsdLuxLightFilter::~UsdLuxLightFilter((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF7827C(uint64_t a1)
{
  *a1 = &unk_2A20A5680;
  pxrInternal__aapl__pxrReserved__::UsdLuxLightFilter::~UsdLuxLightFilter((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF782D4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v22[4] = *MEMORY[0x29EDCA608];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_29A580660(&v17, (a1 + 16), (a1 + 24));
  v22[3] = 0;
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetPropertyNames(&v17, v22, &v19);
  sub_29A58C6CC(v22);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17.__r_.__value_.__r.__words[2] + 1);
  sub_29A1DE3A4(&v17.__r_.__value_.__r.__words[2]);
  size = v17.__r_.__value_.__l.__size_;
  if (v17.__r_.__value_.__l.__size_)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17.__r_.__value_.__l.__size_, v3);
  }

  v5 = v19;
  for (i = v20; v5 != i; ++v5)
  {
    if ((*v5 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*v5 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(size);
    }

    if ((atomic_load_explicit(&qword_2A1751880, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751880))
    {
      v14 = sub_29AF78744(&v17);
      v15 = v17.__r_.__value_.__s.__data_[0];
      v16 = (v17.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8);
      if ((v17.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v14);
      }

      std::operator+<char>();
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_release);
      }

      __cxa_atexit(MEMORY[0x29EDC9388], &qword_2A1751868, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1751880);
    }

    v8 = byte_2A175187F;
    if (byte_2A175187F >= 0)
    {
      v9 = &qword_2A1751868;
    }

    else
    {
      v9 = qword_2A1751868;
    }

    v10 = *(EmptyString + 23);
    if (v10 >= 0)
    {
      v11 = *(EmptyString + 23);
    }

    else
    {
      v11 = EmptyString[1];
    }

    size = strlen(v9);
    if (v11 >= size)
    {
      v12 = *EmptyString;
      if (v10 >= 0)
      {
        v12 = EmptyString;
      }

      size = strcmp((v12 + v11 - size), v9);
      if (!size)
      {
        if ((v8 & 0x80u) == 0)
        {
          v13 = v8;
        }

        else
        {
          v13 = qword_2A1751870;
        }

        std::string::basic_string(&v17, EmptyString, 0, v11 - v13, &v21);
        pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v22);
        size = sub_29A153214(a2, v22);
        if ((v22[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v22[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v17.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v17.__r_.__value_.__r.__words[0] = &v19;
  sub_29A124AB0(&v17);
}

void sub_29AF78708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if ((a5 & 7) != 0)
  {
    atomic_fetch_add_explicit((a5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A5888DC(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::UsdLuxTokensType *sub_29AF78744@<X0>(atomic_uint **a1@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
  if (!result)
  {
    result = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
  }

  v3 = *(result + 42);
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

void sub_29AF787AC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF787D4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF78804(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A5718))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF78844(uint64_t a1)
{
  *a1 = &unk_2A20A5740;
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::~UsdShadeShader((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF78898(uint64_t a1)
{
  *a1 = &unk_2A20A5740;
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::~UsdShadeShader((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF788F0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v21[4] = *MEMORY[0x29EDCA608];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
  if (!v4)
  {
    v4 = sub_29A7CFC64(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
  }

  sub_29A1D8028(a2, v4 + 21);
  sub_29A580660(&v16, (a1 + 16), (a1 + 24));
  v21[3] = 0;
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetPropertyNames(&v16, v21, &v18);
  sub_29A58C6CC(v21);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16.__r_.__value_.__r.__words[2] + 1);
  sub_29A1DE3A4(&v16.__r_.__value_.__r.__words[2]);
  size = v16.__r_.__value_.__l.__size_;
  if (v16.__r_.__value_.__l.__size_)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v16.__r_.__value_.__l.__size_, v5);
  }

  v7 = v18;
  for (i = v19; v7 != i; ++v7)
  {
    if ((*v7 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*v7 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(size);
    }

    size = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
    if (!size)
    {
      size = sub_29A7CFC64(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
    }

    if ((*(size + 64) ^ *v7) >= 8)
    {
      sub_29AF78F04();
      v10 = byte_2A175189F >= 0 ? &qword_2A1751888 : qword_2A1751888;
      v11 = *(EmptyString + 23);
      v12 = v11 >= 0 ? *(EmptyString + 23) : EmptyString[1];
      size = strlen(v10);
      if (v12 >= size)
      {
        v13 = size;
        v14 = v11 >= 0 ? EmptyString : *EmptyString;
        size = strncmp(v14, v10, v13);
        if (!size)
        {
          sub_29AF78F04();
          if (byte_2A175189F >= 0)
          {
            v15 = byte_2A175189F;
          }

          else
          {
            v15 = qword_2A1751890;
          }

          std::string::basic_string(&v16, EmptyString, v15, 0xFFFFFFFFFFFFFFFFLL, &v20);
          pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v21);
          size = sub_29A153214(a2, v21);
          if ((v21[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((v21[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v16.__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  v16.__r_.__value_.__r.__words[0] = &v18;
  sub_29A124AB0(&v16);
}

void sub_29AF78B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF78BD8(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
  if (!v4)
  {
    v4 = sub_29A7CFC64(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
  }

  if ((*(v4 + 21) ^ *a2) <= 7)
  {
    v14 = 0;
    sub_29A580660(__p, (a1 + 16), (a1 + 24));
    v8[0] = 0;
    sub_29A5B06DC(__p, a2);
  }

  sub_29AF78F04();
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&qword_2A1751888, EmptyString, __p);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v14);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A580660(v8, (a1 + 16), (a1 + 24));
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(v8, &v14, __p);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
  sub_29A1DE3A4(&v9);
  if (v8[1])
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8[1], v7);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(__p);
}

void sub_29AF78E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_29A5888DC(&__p);
  v20 = *(v18 - 40);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_29AF78F04()
{
  if ((atomic_load_explicit(&qword_2A17518A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17518A0))
  {
    sub_29A008E78(&qword_2A1751888, "info:");
    __cxa_atexit(MEMORY[0x29EDC9388], &qword_2A1751888, &dword_299FE7000);

    __cxa_guard_release(&qword_2A17518A0);
  }
}

void *sub_29AF78FB4@<X0>(const pxrInternal__aapl__pxrReserved__::VtDictionary *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  sub_29AF79020(v4, a1);

  return sub_29AF79158(a2, v4);
}

void *sub_29AF79020(void *a1, const pxrInternal__aapl__pxrReserved__::VtDictionary *a2)
{
  *a1 = &unk_2A20A5788;
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((a1 + 1), a2);
  return a1;
}

void sub_29AF79078(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A5788;
  sub_29A184A10(a1 + 1, 0);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF790D0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A5788;
  sub_29A184A10(a1 + 1, 0);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void *sub_29AF79158(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A57F0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF791B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF791CC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF791F4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF79224(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A5840))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF79268(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF79290(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF792C0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A58B8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF79300(_DWORD *a1)
{
  *a1 = &unk_2A20A58E0;
  v2 = a1 + 11;
  sub_29ABC3488((a1 + 12));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 10);
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::~UsdShadeShader((a1 + 2));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF79378(_DWORD *a1)
{
  *a1 = &unk_2A20A58E0;
  v2 = a1 + 11;
  sub_29ABC3488((a1 + 12));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 10);
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::~UsdShadeShader((a1 + 2));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29AF793F4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v15 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs((a1 + 8), 1, &v9);
  sub_29A1D7F98(a2, (v10 - v9) >> 5);
  v3 = v9;
  for (i = v10; v3 != i; v3 = (v3 + 32))
  {
    pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetValueProducingAttributes(v12, v3, 0);
    if (v14 >= 2)
    {
      v5 = v12[0];
    }

    else
    {
      v5 = v12;
    }

    if (v13)
    {
      v6 = 32 * v13;
      while (1)
      {
        v7 = sub_29A5A6058(v5);
        if (pxrInternal__aapl__pxrReserved__::UsdShadeUtils::GetType(v7, v8) == 1)
        {
          break;
        }

        v5 += 4;
        v6 -= 32;
        if (!v6)
        {
          goto LABEL_12;
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetBaseName(v3, &v11);
      sub_29A153214(a2, &v11);
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

LABEL_12:
    sub_29A7D1904(v12);
  }

  v12[0] = &v9;
  sub_29A7D6840(v12);
}