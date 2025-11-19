void sub_29AFDC3B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFDC3D8(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29AFDC400@<D0>(_OWORD *a1@<X8>)
{
  sub_29AFDC43C(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29AFDC43C(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20A9970;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20A96F0;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29AFDC4E8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20A9970;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

float64x2_t *sub_29AFDC554(float64x2_t **a1, float32x2_t *a2, float32x2_t *a3, unint64_t a4)
{
  v6 = a2;
  v8 = a1[2];
  result = *a1;
  if (a4 > (v8 - result) >> 5)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 >> 59)
    {
      sub_29A00C9A4();
    }

    v10 = v8 >> 4;
    if (v8 >> 4 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = sub_29A15A71C(a1, v11);
    v12 = a1[1];
    while (v6 != a3)
    {
      v13 = *v6;
      v14 = v6[1];
      v6 += 2;
      *v12 = vcvtq_f64_f32(v13);
      v12[1] = vcvtq_f64_f32(v14);
      v12 += 2;
    }

LABEL_21:
    a1[1] = v12;
    return result;
  }

  v15 = a1[1];
  v16 = (v15 - result) >> 5;
  if (v16 < a4)
  {
    v17 = &a2[2 * v16];
    if (v15 != result)
    {
      do
      {
        v18 = *v6;
        v19 = v6[1];
        v6 += 2;
        *result = vcvtq_f64_f32(v18);
        result[1] = vcvtq_f64_f32(v19);
        result += 2;
      }

      while (v6 != v17);
      v15 = a1[1];
    }

    v20 = v15;
    if (v17 != a3)
    {
      v20 = v15;
      v21 = v15;
      do
      {
        v22 = *v17;
        v23 = v17[1];
        v17 += 2;
        *v21 = vcvtq_f64_f32(v22);
        v21[1] = vcvtq_f64_f32(v23);
        v21 += 2;
        v20 += 2;
      }

      while (v17 != a3);
    }

    v12 = v20;
    goto LABEL_21;
  }

  while (v6 != a3)
  {
    v24 = *v6;
    v25 = v6[1];
    v6 += 2;
    *result = vcvtq_f64_f32(v24);
    result[1] = vcvtq_f64_f32(v25);
    result += 2;
  }

  a1[1] = result;
  return result;
}

void *sub_29AFDC6A0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A99C0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AFDC6F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFDC714(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFDC73C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AFDC76C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A9A10))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29AFDC7AC()
{
  v1 = nullsub_1762;
  return sub_29AFDCBB8(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCollectionAPIAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X3>, void *a4@<X8>)
{
  if (*a2)
  {
    v7 = 1;
  }

  else
  {
    v7 = *a3 == 0;
  }

  if (v7)
  {
    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCollectionsSchemaTokens);
    if (!v10)
    {
      v10 = sub_29ABDBB64(&pxrInternal__aapl__pxrReserved__::HdCollectionsSchemaTokens);
    }

    v11 = operator new(0x28uLL);
    v11->~__shared_weak_count = &unk_2A20A9B20;
    *sub_29A741E54(&v11->~__shared_weak_count_0, a1, a3) = &unk_2A205F450;
    v12 = operator new(0x20uLL);
    v12->__vftable = &unk_2A20A9C28;
    v12->__shared_owners_ = 0;
    v12->__shared_weak_owners_ = 0;
    v12[1].__vftable = v11;
    v13 = v11;
    v14 = v12;
    pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v10, &v13, &v15);
    *a4 = v15;
    v15 = 0uLL;
    if (v14)
    {
      sub_29A014BEC(v14);
    }
  }
}

void sub_29AFDC938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCollectionAPIAdapter::InvalidateImagingSubprim(const char *a1@<X1>, char *a2@<X2>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X3>, uint64_t a4@<X4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  v24 = *MEMORY[0x29EDCA608];
  if (*a2 || (v7 = *a3) == 0)
  {
    *(a5 + 56) = 0x800000000;
  }

  else
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFF8;
    if ((v7 & 0xFFFFFFFFFFFFFFF8) != 0)
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

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("collection:%s:", a1, a2, v10);
    v12 = *a4;
    v13 = *(a4 + 8);
    if (*a4 == v13)
    {
LABEL_25:
      *(a5 + 56) = 0x800000000;
    }

    else
    {
      while (1)
      {
        v14 = (*v12 & 0xFFFFFFFFFFFFFFF8) != 0 ? ((*v12 & 0xFFFFFFFFFFFFFFF8) + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
        v15 = v22 >= 0 ? &__p : __p;
        v16 = *(v14 + 23);
        v17 = v16 >= 0 ? *(v14 + 23) : v14[1];
        v11 = strlen(v15);
        if (v17 >= v11)
        {
          v18 = v11;
          v19 = v16 >= 0 ? v14 : *v14;
          v11 = strncmp(v19, v15, v18);
          if (!v11)
          {
            break;
          }
        }

        if (++v12 == v13)
        {
          goto LABEL_25;
        }
      }

      v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCollectionsSchemaTokens);
      if (!v20)
      {
        v20 = sub_29ABDBB64(&pxrInternal__aapl__pxrReserved__::HdCollectionsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v23, v20, a3);
      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(a5, v23);
      sub_29ABC3488(v23);
    }

    if (v22 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_29AFDCB54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_29ABC3488(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_29AFDCB90(pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter::~UsdImagingAPISchemaAdapter(a1);

  operator delete(v1);
}

uint64_t sub_29AFDCBB8(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20A9A90;
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

void sub_29AFDCC44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFDCC68(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29AFDCC90@<D0>(_OWORD *a1@<X8>)
{
  sub_29AFDCCCC(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29AFDCCCC(void *a1@<X8>)
{
  v2 = operator new(0x30uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20A9AD0;
  v2[5] = 0;
  v2[3] = &unk_2A20A9A38;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29AFDCD78(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20A9AD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AFDCDE4(uint64_t a1)
{
  *a1 = &unk_2A20A9B20;
  pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::~UsdCollectionAPI((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AFDCE38(uint64_t a1)
{
  *a1 = &unk_2A20A9B20;
  pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::~UsdCollectionAPI((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void *sub_29AFDCE90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 32);
  v7 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v5;
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A12EF7C(a2, &v7, &v8, 1uLL);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void *sub_29AFDCF54@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = result;
  v5 = result[4];
  if ((v5 & 7) != 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFF8;
    if (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
    {
      v6 = v5;
    }

    v7 = v6 ^ *a2;
    if ((v6 & 7) == 0)
    {
      if (v7 <= 7)
      {
        goto LABEL_8;
      }

LABEL_13:
      *a3 = 0;
      a3[1] = 0;
      return result;
    }

    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  else
  {
    v7 = v5 ^ *a2;
  }

  if (v7 >= 8)
  {
    goto LABEL_13;
  }

LABEL_8:
  v8 = operator new(0x28uLL);
  *v8 = &unk_2A20A9B68;
  v9 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase((v8 + 1), (v3 + 1));
  v8[1] = &unk_2A205F368;
  v10 = v3[4];
  v8[4] = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v8[4] &= 0xFFFFFFFFFFFFFFF8;
  }

  *v9 = &unk_2A205F450;
  result = operator new(0x20uLL);
  *result = &unk_2A20A9BB0;
  result[1] = 0;
  result[2] = 0;
  result[3] = v8;
  *a3 = v8;
  a3[1] = result;
  return result;
}

void sub_29AFDD0E8(uint64_t a1)
{
  *a1 = &unk_2A20A9B68;
  pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::~UsdCollectionAPI((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AFDD13C(uint64_t a1)
{
  *a1 = &unk_2A20A9B68;
  pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::~UsdCollectionAPI((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AFDD194(void *a1@<X8>)
{
  v1 = a1;
  v8 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1752958, memory_order_acquire) & 1) == 0)
  {
    v3 = __cxa_guard_acquire(&qword_2A1752958);
    v1 = a1;
    if (v3)
    {
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCollectionSchemaTokens);
      if (!v4)
      {
        v4 = sub_29ABDB580(&pxrInternal__aapl__pxrReserved__::HdCollectionSchemaTokens);
      }

      v5 = v4[1];
      v7 = v5;
      if ((v5 & 7) != 0)
      {
        v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
        {
          v7 = v6;
        }
      }

      qword_2A1752940 = 0;
      *algn_2A1752948 = 0;
      qword_2A1752950 = 0;
      sub_29A12EF7C(&qword_2A1752940, &v7, &v8, 1uLL);
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      __cxa_atexit(sub_29A3C73E0, &qword_2A1752940, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1752958);
      v1 = a1;
    }
  }

  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

atomic_uint **sub_29AFDD340@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCollectionSchemaTokens);
  if (!result)
  {
    result = sub_29ABDB580(&pxrInternal__aapl__pxrReserved__::HdCollectionSchemaTokens);
  }

  if ((result[1] ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::ComputeMembershipQuery((a1 + 8), &v8);
    if (pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQueryBase::_HasEmptyRuleMap(&v8))
    {
      pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::ResolveCompleteMembershipExpression((a1 + 8));
    }

    pxrInternal__aapl__pxrReserved__::UsdComputePathExpressionFromCollectionMembershipQueryRuleMap(&v9, &v7);
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

void sub_29AFDD47C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFDD4A4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AFDD4D4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A9C00))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AFDD518(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFDD540(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AFDD570(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A9C78))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29AFDD5B0()
{
  v1 = nullsub_1763;
  return sub_29AFDE678(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingConeAdapter::~UsdImagingConeAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingConeAdapter *this)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingConeAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingConeAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v7 = *(v6 + 2);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingConeAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a3@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_29AFDD858(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29AFDD86C@<X0>(_DWORD *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  v13 = *a2;
  v9 = *(a2 + 1);
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v15, a2 + 4);
  sub_29A1E2240(&v16, a2 + 5);
  v10 = *(a2 + 3);
  v17 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29AFDE8A4(v8, a1, &v13, a3);
  sub_29AFDEE98(a4, v8);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
  sub_29A1DE3A4(&v15);
  result = v14;
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::UsdImagingConeAdapter::InvalidateImagingSubprim@<D0>(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X3>, int a4@<W4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (!*a2)
  {
    sub_29AFDD9D4(a1, a2, a3, a4, a5);
  }

  *&result = 0x800000000;
  *(a5 + 56) = 0x800000000;
  return result;
}

void sub_29AFDD9D4(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X2>, int a4@<W3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  v11[57] = *MEMORY[0x29EDCA608];
  v10 = sub_29AFDEC04();
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::Invalidate(a3, v10, a5);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Invalidate(a1, a2, a3, a4, v11);
  pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, v11);
  sub_29ABD3178();
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingConeAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingConeAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsRprimTypeSupported(a2, v3 + 7);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingConeAdapter::Populate(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialUsdPath(a1, a2);
}

void sub_29AFDDBC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingConeAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingConeAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v8 + 51) ^ *a4) < 8)
  {
    return 32;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v9)
  {
    v9 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v9 + 115) ^ *a4) < 8)
  {
    return 32;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v10)
  {
    v10 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v10 + 3) ^ *a4) < 8)
  {
    return 32;
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::ProcessPropertyChange(this, a2, a3, a4);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingConeAdapter::GetPoints(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  sub_29A0ECEEC(&v7, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingConeAdapter::GetPoints(const UsdPrim &, UsdTimeCode) const");
  v3 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v6, a2);
  v5 = 0x4000000000000000;
  v6 = &unk_2A205FC98;
  pxrInternal__aapl__pxrReserved__::UsdGeomCone::GetHeightAttr(v3, v4);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<double>();
}

void sub_29AFDE470(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomCone::~UsdGeomCone((v1 - 160));
  sub_29A0E9CEC(v1 - 136);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingConeAdapter::GetTopology@<X0>(uint64_t a1@<X8>)
{
  sub_29A0ECEEC(&v4, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingConeAdapter::GetTopology(const UsdPrim &, const SdfPath &, UsdTimeCode) const");
  if ((atomic_load_explicit(&qword_2A1752B50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1752B50))
  {
    pxrInternal__aapl__pxrReserved__::GeomUtilConeMeshGenerator::GenerateTopology(0xA, 1, v3);
    pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(&unk_2A1752960, v3, 0);
    sub_29AB72E30();
  }

  *(a1 + 8) = &off_2A20A8498;
  result = sub_29AFBD25C(a1, &unk_2A1752960);
  if (v4)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v5, v4);
  }

  return result;
}

uint64_t sub_29AFDE678(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20A9F00;
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

void sub_29AFDE704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFDE728(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29AFDE750@<D0>(_OWORD *a1@<X8>)
{
  sub_29AFDE78C(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29AFDE78C(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20A9F40;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20A9CA0;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29AFDE838(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20A9F40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29AFDE8A4(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = &unk_2A20A9F90;
  return a1;
}

void sub_29AFDE9D0(uint64_t a1)
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

void sub_29AFDEA6C(uint64_t a1)
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

void *sub_29AFDEB0C@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim *a1@<X0>, void *a2@<X8>)
{
  Names = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::GetNames(a1, a2);
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdConeSchema::GetSchemaToken(Names);
  return sub_29A1D8028(a2, SchemaToken);
}

void sub_29AFDEB48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29AFDEB60(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if ((*pxrInternal__aapl__pxrReserved__::HdConeSchema::GetSchemaToken(a1) ^ *a2) > 7)
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Get(a1, a2, a3);
  }

  else
  {
    v6 = sub_29AFDEC04();
    sub_29AF7E758(a1 + 16, (a1 + 8), v6, *(a1 + 48), &v7);
    *a3 = v7;
  }
}

void *sub_29AFDEC04()
{
  if ((atomic_load_explicit(&qword_2A14FA100, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14FA100))
  {
    v1 = sub_29AFDECE4(v3);
    DefaultLocator = pxrInternal__aapl__pxrReserved__::HdConeSchema::GetDefaultLocator(v1);
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::AttributeMappings(&unk_2A14FA0D8, v3, DefaultLocator);
    v4 = v3;
    sub_29AF738D4(&v4);
    __cxa_atexit(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::~AttributeMappings, &unk_2A14FA0D8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A14FA100);
  }

  return &unk_2A14FA0D8;
}

unint64_t sub_29AFDECE4@<X0>(void *a1@<X8>)
{
  v8[4] = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = pxrInternal__aapl__pxrReserved__::UsdGeomCone::GetSchemaAttributeNames(0);
  v3 = *result;
  v4 = *(result + 8);
  if (*result != v4)
  {
    do
    {
      result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!result)
      {
        result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      v5 = *v3;
      if ((*(result + 296) ^ *v3) >= 8)
      {
        v6 = *v3;
        if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v6 &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v7, v3);
        v8[0] = &unk_2A20A6098;
        v8[1] = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceAttributeNew;
        v8[3] = v8;
        sub_29AF7EF90(a1, &v6);
        sub_29AF72C3C(v8);
        result = sub_29ABC3488(v7);
        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      v3 = (v3 + 8);
    }

    while (v3 != v4);
  }

  return result;
}

void sub_29AFDEE4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AF738D4(va);
  _Unwind_Resume(a1);
}

void *sub_29AFDEE98(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A9FD8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AFDEEF0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFDEF0C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFDEF34(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AFDEF64(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AA028))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29AFDEFA4()
{
  v1 = nullsub_1764;
  return sub_29AFDF69C(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCoordSysAdapter::~UsdImagingCoordSysAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingCoordSysAdapter *this)
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

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingCoordSysAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingCoordSysAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsSprimTypeSupported(a2, v3 + 20);
}

void sub_29AFDF418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29AF9F520(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingCoordSysAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingCoordSysAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return sub_29AFB3F6C(a3, v5 + 20, a2);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdImagingCoordSysAdapter::TrackVariability(uint64_t a1, int *a2, uint64_t a3, _DWORD *a4)
{
  v12 = *a2;
  v7 = *(a2 + 1);
  v13 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v14, a2 + 4);
  sub_29A1E2240(&v15, a2 + 5);
  v8 = *(a2 + 3);
  v16 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v9)
  {
    v9 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsTransformVarying(a1, &v12, 2, (v9 + 128), a4);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
  sub_29A1DE3A4(&v14);
  result = v13;
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13, v10);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingCoordSysAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingCoordSysAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  if (pxrInternal__aapl__pxrReserved__::UsdGeomXformable::IsTransformationAffectedByAttrNamed(a4, a2))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29AFDF69C(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AA290;
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

void sub_29AFDF728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFDF74C(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29AFDF774@<D0>(_OWORD *a1@<X8>)
{
  sub_29AFDF7B0(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29AFDF7B0(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AA2D0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AA050;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29AFDF85C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AA2D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFDF8C8()
{
  v1 = nullsub_1765;
  return sub_29AFDFBE0(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCoordSysAPIAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X3>, void *a4@<X8>)
{
  if (*a3 && !*a2)
  {
    sub_29A741E54(v6, a1, a3);
    v6[0] = &unk_2A2060FA8;
    pxrInternal__aapl__pxrReserved__::UsdShadeCoordSysAPI::GetLocalBinding(v6, v7);
  }

  *a4 = 0;
  a4[1] = 0;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCoordSysAPIAdapter::InvalidateImagingSubprim(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, void *a2@<X2>, void *a3@<X3>, pxrInternal__aapl__pxrReserved__::UsdShadeCoordSysAPI **a4@<X4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (*a3 && !*a2)
  {
    v6 = *a4;
    v7 = a4[1];
    while (v6 != v7)
    {
      CanContainPropertyName = pxrInternal__aapl__pxrReserved__::UsdShadeCoordSysAPI::CanContainPropertyName(v6, a1);
      if (CanContainPropertyName)
      {
        DefaultLocator = pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchema::GetDefaultLocator(CanContainPropertyName);

        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(a5, DefaultLocator);
        return;
      }

      v6 = (v6 + 8);
    }
  }

  *(a5 + 56) = 0x800000000;
}

void sub_29AFDFBB8(pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter::~UsdImagingAPISchemaAdapter(a1);

  operator delete(v1);
}

uint64_t sub_29AFDFBE0(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AA378;
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

void sub_29AFDFC6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFDFC90(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29AFDFCB8@<D0>(_OWORD *a1@<X8>)
{
  sub_29AFDFCF4(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29AFDFCF4(void *a1@<X8>)
{
  v2 = operator new(0x30uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AA3B8;
  v2[5] = 0;
  v2[3] = &unk_2A20AA320;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29AFDFDA0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AA3B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFDFE0C()
{
  v1 = nullsub_1766;
  return sub_29AFE0968(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCubeAdapter::~UsdImagingCubeAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingCubeAdapter *this)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingCubeAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingCubeAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v7 = *(v6 + 3);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingCubeAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a3@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_29AFE00B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29AFE00C8@<X0>(_DWORD *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  v13 = *a2;
  v9 = *(a2 + 1);
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v15, a2 + 4);
  sub_29A1E2240(&v16, a2 + 5);
  v10 = *(a2 + 3);
  v17 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29AFE0B94(v8, a1, &v13, a3);
  sub_29AFE1188(a4, v8);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
  sub_29A1DE3A4(&v15);
  result = v14;
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::UsdImagingCubeAdapter::InvalidateImagingSubprim@<D0>(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X3>, int a4@<W4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (!*a2)
  {
    sub_29AFE0230(a1, a2, a3, a4, a5);
  }

  *&result = 0x800000000;
  *(a5 + 56) = 0x800000000;
  return result;
}

void sub_29AFE0230(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X2>, int a4@<W3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  v11[57] = *MEMORY[0x29EDCA608];
  v10 = sub_29AFE0EF4();
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::Invalidate(a3, v10, a5);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Invalidate(a1, a2, a3, a4, v11);
  pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, v11);
  sub_29ABD3178();
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingCubeAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingCubeAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsRprimTypeSupported(a2, v3 + 7);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCubeAdapter::Populate(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialUsdPath(a1, a2);
}

void sub_29AFE041C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingCubeAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingCubeAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v8 + 127) ^ *a4) < 8)
  {
    return 32;
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::ProcessPropertyChange(this, a2, a3, a4);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCubeAdapter::GetPoints(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v3, a2);
  v2 = 0x4000000000000000;
  v3[0] = &unk_2A205FCF0;
  pxrInternal__aapl__pxrReserved__::UsdGeomCube::GetSizeAttr(v3, &v4);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<double>();
}

void sub_29AFE07EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  pxrInternal__aapl__pxrReserved__::UsdGeomCube::~UsdGeomCube(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingCubeAdapter::GetTopology@<X0>(uint64_t a1@<X8>)
{
  sub_29A0ECEEC(&v4, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingCubeAdapter::GetTopology(const UsdPrim &, const SdfPath &, UsdTimeCode) const");
  if ((atomic_load_explicit(&qword_2A1752D48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1752D48))
  {
    pxrInternal__aapl__pxrReserved__::GeomUtilCuboidMeshGenerator::GenerateTopology(v3);
    pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(&unk_2A1752B58, v3, 0);
    sub_29AB72E30();
  }

  *(a1 + 8) = &off_2A20A8498;
  result = sub_29AFBD25C(a1, &unk_2A1752B58);
  if (v4)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v5, v4);
  }

  return result;
}

uint64_t sub_29AFE0968(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AA668;
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

void sub_29AFE09F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFE0A18(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29AFE0A40@<D0>(_OWORD *a1@<X8>)
{
  sub_29AFE0A7C(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29AFE0A7C(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AA6A8;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AA408;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29AFE0B28(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AA6A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29AFE0B94(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = &unk_2A20AA6F8;
  return a1;
}

void sub_29AFE0CC0(uint64_t a1)
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

void sub_29AFE0D5C(uint64_t a1)
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

void *sub_29AFE0DFC@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim *a1@<X0>, void *a2@<X8>)
{
  Names = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::GetNames(a1, a2);
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdCubeSchema::GetSchemaToken(Names);
  return sub_29A1D8028(a2, SchemaToken);
}

void sub_29AFE0E38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29AFE0E50(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if ((*pxrInternal__aapl__pxrReserved__::HdCubeSchema::GetSchemaToken(a1) ^ *a2) > 7)
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Get(a1, a2, a3);
  }

  else
  {
    v6 = sub_29AFE0EF4();
    sub_29AF7E758(a1 + 16, (a1 + 8), v6, *(a1 + 48), &v7);
    *a3 = v7;
  }
}

void *sub_29AFE0EF4()
{
  if ((atomic_load_explicit(&qword_2A14FA130, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14FA130))
  {
    v1 = sub_29AFE0FD4(v3);
    DefaultLocator = pxrInternal__aapl__pxrReserved__::HdCubeSchema::GetDefaultLocator(v1);
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::AttributeMappings(&unk_2A14FA108, v3, DefaultLocator);
    v4 = v3;
    sub_29AF738D4(&v4);
    __cxa_atexit(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::~AttributeMappings, &unk_2A14FA108, &dword_299FE7000);
    __cxa_guard_release(&qword_2A14FA130);
  }

  return &unk_2A14FA108;
}

unint64_t sub_29AFE0FD4@<X0>(void *a1@<X8>)
{
  v8[4] = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = pxrInternal__aapl__pxrReserved__::UsdGeomCube::GetSchemaAttributeNames(0);
  v3 = *result;
  v4 = *(result + 8);
  if (*result != v4)
  {
    do
    {
      result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!result)
      {
        result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      v5 = *v3;
      if ((*(result + 296) ^ *v3) >= 8)
      {
        v6 = *v3;
        if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v6 &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v7, v3);
        v8[0] = &unk_2A20A6098;
        v8[1] = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceAttributeNew;
        v8[3] = v8;
        sub_29AF7EF90(a1, &v6);
        sub_29AF72C3C(v8);
        result = sub_29ABC3488(v7);
        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      v3 = (v3 + 8);
    }

    while (v3 != v4);
  }

  return result;
}

void sub_29AFE113C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AF738D4(va);
  _Unwind_Resume(a1);
}

void *sub_29AFE1188(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20AA740;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AFE11E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFE11FC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFE1224(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AFE1254(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AA790))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29AFE1294()
{
  v1 = nullsub_1767;
  return sub_29AFE2CC0(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCylinderAdapter::~UsdImagingCylinderAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingCylinderAdapter *this)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingCylinderAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingCylinderAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v7 = *(v6 + 4);
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

pxrInternal__aapl__pxrReserved__::UsdGeomCylinder *pxrInternal__aapl__pxrReserved__::UsdImagingCylinderAdapter::GetImagingSubprimData@<X0>(pxrInternal__aapl__pxrReserved__::UsdGeomCylinder *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, void *a4@<X8>)
{
  if (!*a3)
  {
    StaticTfType = pxrInternal__aapl__pxrReserved__::UsdGeomCylinder::_GetStaticTfType(this);
    SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v7);
    if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo))
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
  }

  *a4 = 0;
  a4[1] = 0;
  return this;
}

void sub_29AFE158C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29AFE15A4@<X0>(_DWORD *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  v13 = *a2;
  v9 = *(a2 + 1);
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v15, a2 + 4);
  sub_29A1E2240(&v16, a2 + 5);
  v10 = *(a2 + 3);
  v17 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29AFE2EEC(v8, a1, &v13, a3);
  sub_29AFE34E0(a4, v8);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
  sub_29A1DE3A4(&v15);
  result = v14;
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__ *sub_29AFE16E0@<X0>(_DWORD *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  v13 = *a2;
  v9 = *(a2 + 1);
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v15, a2 + 4);
  sub_29A1E2240(&v16, a2 + 5);
  v10 = *(a2 + 3);
  v17 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29AFE35EC(v8, a1, &v13, a3);
  sub_29AFE3BE0(a4, v8);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
  sub_29A1DE3A4(&v15);
  result = v14;
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::UsdImagingCylinderAdapter::InvalidateImagingSubprim@<D0>(pxrInternal__aapl__pxrReserved__::UsdGeomCylinder *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a4@<X3>, int a5@<W4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a6@<X8>)
{
  if (!*a3)
  {
    StaticTfType = pxrInternal__aapl__pxrReserved__::UsdGeomCylinder::_GetStaticTfType(a1);
    SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v13);
    if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo))
    {

      sub_29AFE18F4(a2, a3, a4, a5, a6);
    }

    sub_29AFE19CC(a2, a3, a4, a5, a6);
  }

  *&result = 0x800000000;
  *(a6 + 56) = 0x800000000;
  return result;
}

void sub_29AFE18F4(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X2>, int a4@<W3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  v11[57] = *MEMORY[0x29EDCA608];
  v10 = sub_29AFE324C();
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::Invalidate(a3, v10, a5);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Invalidate(a1, a2, a3, a4, v11);
  pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, v11);
  sub_29ABD3178();
}

void sub_29AFE19CC(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X2>, int a4@<W3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  v11[57] = *MEMORY[0x29EDCA608];
  v10 = sub_29AFE394C();
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::Invalidate(a3, v10, a5);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Invalidate(a1, a2, a3, a4, v11);
  pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, v11);
  sub_29ABD3178();
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingCylinderAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingCylinderAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsRprimTypeSupported(a2, v3 + 7);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCylinderAdapter::Populate(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialUsdPath(a1, a2);
}

void sub_29AFE1BB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29AFE216C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingCylinderAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingCylinderAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v8 + 51) ^ *a4) < 8)
  {
    return 32;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v9)
  {
    v9 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v9 + 115) ^ *a4) < 8)
  {
    return 32;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v10)
  {
    v10 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v10 + 116) ^ *a4) < 8)
  {
    return 32;
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v11)
  {
    v11 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v11 + 117) ^ *a4) < 8)
  {
    return 32;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v12)
  {
    v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v12 + 3) ^ *a4) < 8)
  {
    return 32;
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::ProcessPropertyChange(this, a2, a3, a4);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCylinderAdapter::GetPoints(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v25[2] = 0x3FF0000000000000;
  v25[3] = 0x4000000000000000;
  v25[1] = 0x3FF0000000000000;
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v3)
  {
    v3 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v4 = *(v3 + 170);
  v25[0] = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25[0] &= 0xFFFFFFFFFFFFFFF8;
  }

  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdGeomCylinder::_GetStaticTfType(v3);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v6);
  IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, SchemaInfo);
  if (IsA)
  {
    v9 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v26, a2);
    v26[0] = &unk_2A205FDA0;
    pxrInternal__aapl__pxrReserved__::UsdGeomCylinder::GetHeightAttr(v9, v17);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<double>();
  }

  v10 = pxrInternal__aapl__pxrReserved__::UsdGeomCylinder_1::_GetStaticTfType(IsA);
  v12 = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(v10, v11);
  if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a2, v12))
  {
    v13 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v26, a2);
    v26[0] = &unk_2A205FDF8;
    pxrInternal__aapl__pxrReserved__::UsdGeomCylinder_1::GetHeightAttr(v13, v17);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<double>();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *v17 = 0u;
  v18 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::GetImplicitBasis(v25, v17);
  v14 = pxrInternal__aapl__pxrReserved__::GeomUtilCylinderMeshGenerator::ComputeNumPoints(0xA, 1);
  sub_29A193124(v15, v14);
  sub_29A1935CC(v15);
  v26[5] = v17;
  v27 = v16;
  v26[0] = sub_29AD318A8;
  v26[1] = 0;
  v26[2] = sub_29AD318E4;
  v26[3] = 0;
  v26[4] = &v27;
  pxrInternal__aapl__pxrReserved__::GeomUtilCylinderMeshGenerator::_GeneratePointsImpl<pxrInternal__aapl__pxrReserved__::GfVec3f>();
}

void sub_29AFE2A74(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomCylinder_1::~UsdGeomCylinder_1((v1 - 120));
  v3 = *(v1 - 152);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingCylinderAdapter::GetTopology@<X0>(uint64_t a1@<X8>)
{
  sub_29A0ECEEC(&v4, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingCylinderAdapter::GetTopology(const UsdPrim &, const SdfPath &, UsdTimeCode) const");
  if ((atomic_load_explicit(&qword_2A1752F40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1752F40))
  {
    pxrInternal__aapl__pxrReserved__::GeomUtilCylinderMeshGenerator::GenerateTopology(0xA, 1, v3);
    pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(&unk_2A1752D50, v3, 0);
    sub_29AB72E30();
  }

  *(a1 + 8) = &off_2A20A8498;
  result = sub_29AFBD25C(a1, &unk_2A1752D50);
  if (v4)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v5, v4);
  }

  return result;
}

uint64_t sub_29AFE2CC0(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AAA18;
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

void sub_29AFE2D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFE2D70(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29AFE2D98@<D0>(_OWORD *a1@<X8>)
{
  sub_29AFE2DD4(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29AFE2DD4(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AAA58;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AA7B8;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29AFE2E80(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AAA58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29AFE2EEC(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = &unk_2A20AAAA8;
  return a1;
}

void sub_29AFE3018(uint64_t a1)
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

void sub_29AFE30B4(uint64_t a1)
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

void *sub_29AFE3154@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim *a1@<X0>, void *a2@<X8>)
{
  Names = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::GetNames(a1, a2);
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdCylinderSchema::GetSchemaToken(Names);
  return sub_29A1D8028(a2, SchemaToken);
}

void sub_29AFE3190(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29AFE31A8(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if ((*pxrInternal__aapl__pxrReserved__::HdCylinderSchema::GetSchemaToken(a1) ^ *a2) > 7)
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Get(a1, a2, a3);
  }

  else
  {
    v6 = sub_29AFE324C();
    sub_29AF7E758(a1 + 16, (a1 + 8), v6, *(a1 + 48), &v7);
    *a3 = v7;
  }
}

void *sub_29AFE324C()
{
  if ((atomic_load_explicit(&qword_2A14FA160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14FA160))
  {
    v1 = sub_29AFE332C(v3);
    DefaultLocator = pxrInternal__aapl__pxrReserved__::HdCylinderSchema::GetDefaultLocator(v1);
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::AttributeMappings(&unk_2A14FA138, v3, DefaultLocator);
    v4 = v3;
    sub_29AF738D4(&v4);
    __cxa_atexit(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::~AttributeMappings, &unk_2A14FA138, &dword_299FE7000);
    __cxa_guard_release(&qword_2A14FA160);
  }

  return &unk_2A14FA138;
}

unint64_t sub_29AFE332C@<X0>(void *a1@<X8>)
{
  v8[4] = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = pxrInternal__aapl__pxrReserved__::UsdGeomCylinder::GetSchemaAttributeNames(0);
  v3 = *result;
  v4 = *(result + 8);
  if (*result != v4)
  {
    do
    {
      result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!result)
      {
        result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      v5 = *v3;
      if ((*(result + 296) ^ *v3) >= 8)
      {
        v6 = *v3;
        if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v6 &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v7, v3);
        v8[0] = &unk_2A20A6098;
        v8[1] = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceAttributeNew;
        v8[3] = v8;
        sub_29AF7EF90(a1, &v6);
        sub_29AF72C3C(v8);
        result = sub_29ABC3488(v7);
        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      v3 = (v3 + 8);
    }

    while (v3 != v4);
  }

  return result;
}

void sub_29AFE3494(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AF738D4(va);
  _Unwind_Resume(a1);
}

void *sub_29AFE34E0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20AAAF0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AFE3538(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFE3554(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFE357C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AFE35AC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AAB40))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AFE35EC(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = &unk_2A20AAB68;
  return a1;
}

void sub_29AFE3718(uint64_t a1)
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

void sub_29AFE37B4(uint64_t a1)
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

void *sub_29AFE3854@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim *a1@<X0>, void *a2@<X8>)
{
  Names = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::GetNames(a1, a2);
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdCylinderSchema::GetSchemaToken(Names);
  return sub_29A1D8028(a2, SchemaToken);
}

void sub_29AFE3890(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29AFE38A8(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if ((*pxrInternal__aapl__pxrReserved__::HdCylinderSchema::GetSchemaToken(a1) ^ *a2) > 7)
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Get(a1, a2, a3);
  }

  else
  {
    v6 = sub_29AFE394C();
    sub_29AF7E758(a1 + 16, (a1 + 8), v6, *(a1 + 48), &v7);
    *a3 = v7;
  }
}

void *sub_29AFE394C()
{
  if ((atomic_load_explicit(&qword_2A14FA190, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14FA190))
  {
    v1 = sub_29AFE3A2C(v3);
    DefaultLocator = pxrInternal__aapl__pxrReserved__::HdCylinderSchema::GetDefaultLocator(v1);
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::AttributeMappings(&unk_2A14FA168, v3, DefaultLocator);
    v4 = v3;
    sub_29AF738D4(&v4);
    __cxa_atexit(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::~AttributeMappings, &unk_2A14FA168, &dword_299FE7000);
    __cxa_guard_release(&qword_2A14FA190);
  }

  return &unk_2A14FA168;
}

unint64_t sub_29AFE3A2C@<X0>(void *a1@<X8>)
{
  v8[4] = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = pxrInternal__aapl__pxrReserved__::UsdGeomCylinder_1::GetSchemaAttributeNames(0);
  v3 = *result;
  v4 = *(result + 8);
  if (*result != v4)
  {
    do
    {
      result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!result)
      {
        result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      v5 = *v3;
      if ((*(result + 296) ^ *v3) >= 8)
      {
        v6 = *v3;
        if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v6 &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v7, v3);
        v8[0] = &unk_2A20A6098;
        v8[1] = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceAttributeNew;
        v8[3] = v8;
        sub_29AF7EF90(a1, &v6);
        sub_29AF72C3C(v8);
        result = sub_29ABC3488(v7);
        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      v3 = (v3 + 8);
    }

    while (v3 != v4);
  }

  return result;
}

void sub_29AFE3B94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AF738D4(va);
  _Unwind_Resume(a1);
}

void *sub_29AFE3BE0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20AABB0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AFE3C38(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFE3C54(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFE3C7C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AFE3CAC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AAC00))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29AFE3CEC()
{
  v1 = nullsub_1768;
  return sub_29AFE406C(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCylinderLightAdapter::~UsdImagingCylinderLightAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingCylinderLightAdapter *this)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingCylinderLightAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingCylinderLightAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v7 = *(v6 + 27);
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingCylinderLightAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingCylinderLightAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::IsEnabledSceneLights(this);
  if (result)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v4)
    {
      v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsSprimTypeSupported(a2, v4 + 27);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCylinderLightAdapter::Populate(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v4)
  {
    LODWORD(v4) = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_AddSprim(a1, v4 + 216, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingCylinderLightAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingCylinderLightAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v6)
  {
    v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_RemoveSprim(this, (v6 + 216), a2, a3);
}

uint64_t sub_29AFE406C(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AAE68;
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

void sub_29AFE40F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFE411C(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29AFE4144@<D0>(_OWORD *a1@<X8>)
{
  sub_29AFE4180(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29AFE4180(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AAEA8;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AAC28;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29AFE422C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AAEA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFE4298()
{
  v1 = nullsub_1769;
  return sub_29AFE4618(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDiskLightAdapter::~UsdImagingDiskLightAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingDiskLightAdapter *this)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingDiskLightAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingDiskLightAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v7 = *(v6 + 28);
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDiskLightAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingDiskLightAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::IsEnabledSceneLights(this);
  if (result)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v4)
    {
      v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsSprimTypeSupported(a2, v4 + 28);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDiskLightAdapter::Populate(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v4)
  {
    LODWORD(v4) = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_AddSprim(a1, v4 + 224, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDiskLightAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingDiskLightAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v6)
  {
    v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_RemoveSprim(this, (v6 + 224), a2, a3);
}

uint64_t sub_29AFE4618(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AB138;
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

void sub_29AFE46A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFE46C8(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29AFE46F0@<D0>(_OWORD *a1@<X8>)
{
  sub_29AFE472C(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29AFE472C(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AB178;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AAEF8;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29AFE47D8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AB178;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFE4844()
{
  v1 = nullsub_1770;
  return sub_29AFE4BC4(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDistantLightAdapter::~UsdImagingDistantLightAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingDistantLightAdapter *this)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingDistantLightAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingDistantLightAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v7 = *(v6 + 29);
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDistantLightAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingDistantLightAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::IsEnabledSceneLights(this);
  if (result)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v4)
    {
      v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsSprimTypeSupported(a2, v4 + 29);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDistantLightAdapter::Populate(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v4)
  {
    LODWORD(v4) = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_AddSprim(a1, v4 + 232, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDistantLightAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingDistantLightAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v6)
  {
    v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_RemoveSprim(this, (v6 + 232), a2, a3);
}

uint64_t sub_29AFE4BC4(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AB408;
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

void sub_29AFE4C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFE4C74(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29AFE4C9C@<D0>(_OWORD *a1@<X8>)
{
  sub_29AFE4CD8(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29AFE4CD8(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AB448;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AB1C8;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29AFE4D84(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AB448;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFE4DF0()
{
  v1 = nullsub_1771;
  return sub_29AFE5510(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDomeLightAdapter::~UsdImagingDomeLightAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingDomeLightAdapter *this)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingDomeLightAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingDomeLightAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v7 = *(v6 + 30);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingDomeLightAdapter::GetImagingSubprimData(pxrInternal__aapl__pxrReserved__::UsdImagingDomeLightAdapter *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, _OWORD *a4@<X8>)
{
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdLightSchema::GetSchemaToken(this);
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v9)
  {
    v9 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v10 = operator new(0x28uLL);
  v11 = v10;
  *v10 = &unk_2A20AB768;
  v10[2] = *a2;
  v12 = *(a2 + 1);
  *(v10 + 2) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(v10 + 6, a2 + 4);
  sub_29A1E2240((v11 + 28), a2 + 5);
  v13 = *(a2 + 3);
  *(v11 + 32) = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(v11 + 32) &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = operator new(0x20uLL);
  v14->__vftable = &unk_2A20AB7B8;
  v14->__shared_owners_ = 0;
  v14->__shared_weak_owners_ = 0;
  v14[1].__vftable = v11;
  v17 = v11;
  v18 = v14;
  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v9 + 61, &v17, &v19);
  v20 = v19;
  v19 = 0uLL;
  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(SchemaToken, &v20, &v21);
  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::GetImagingSubprimData(a2, a3, &v15);
  sub_29AFE526C(&v21, &v15, &v22);
  *a4 = v22;
  v22 = 0uLL;
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (*(&v21 + 1))
  {
    sub_29A014BEC(*(&v21 + 1));
  }

  if (*(&v20 + 1))
  {
    sub_29A014BEC(*(&v20 + 1));
  }

  if (*(&v19 + 1))
  {
    sub_29A014BEC(*(&v19 + 1));
  }

  if (v18)
  {
    sub_29A014BEC(v18);
  }
}

void sub_29AFE51DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFE526C(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x90uLL);
  v7 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource::HdOverlayContainerDataSource(v6, &v7, a2);
  sub_29ABDE960(a3, v6);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AFE52E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingDomeLightAdapter::InvalidateImagingSubprim(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a2@<X3>, int a3@<W4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::InvalidateImagingSubprim(a1, a2, a3, a4);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
      if (!v8)
      {
        v8 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
      }

      if ((*(v8 + 54) ^ *v6) <= 7)
      {
        DefaultLocator = pxrInternal__aapl__pxrReserved__::HdLightSchema::GetDefaultLocator(v8);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a4, DefaultLocator);
      }

      v6 = (v6 + 8);
    }

    while (v6 != v7);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDomeLightAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingDomeLightAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::IsEnabledSceneLights(this);
  if (result)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v4)
    {
      v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsSprimTypeSupported(a2, v4 + 30);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDomeLightAdapter::Populate(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v4)
  {
    LODWORD(v4) = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_AddSprim(a1, v4 + 240, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDomeLightAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingDomeLightAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v6)
  {
    v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_RemoveSprim(this, (v6 + 240), a2, a3);
}

uint64_t sub_29AFE5510(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AB6D8;
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

void sub_29AFE559C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFE55C0(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29AFE55E8@<D0>(_OWORD *a1@<X8>)
{
  sub_29AFE5624(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29AFE5624(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AB718;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AB498;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29AFE56D0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AB718;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AFE573C(uint64_t a1)
{
  *a1 = &unk_2A20AB768;
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

void sub_29AFE57C4(uint64_t a1)
{
  *a1 = &unk_2A20AB768;
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

void sub_29AFE5850(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 32))(v3);
  *(a2 + 8) = &off_2A2048F00;
  sub_29A23E64C();
}

void sub_29AFE58C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

void sub_29AFE58E8(uint64_t a1@<X0>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v3, (a1 + 8));
  v3[0] = &unk_2A20617E8;
  pxrInternal__aapl__pxrReserved__::UsdLuxDomeLight::GetPortalsRel(v3, v4);
  pxrInternal__aapl__pxrReserved__::UsdLuxDomeLight::~UsdLuxDomeLight(v3);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v4);
}

void sub_29AFE59B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdLuxDomeLight::~UsdLuxDomeLight(va);
  _Unwind_Resume(a1);
}

void sub_29AFE59E4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFE5A0C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AFE5A3C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AB808))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29AFE5A7C()
{
  v1 = nullsub_1772;
  return sub_29AFE673C(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDomeLight_1Adapter::~UsdImagingDomeLight_1Adapter(pxrInternal__aapl__pxrReserved__::UsdImagingDomeLight_1Adapter *this)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingDomeLight_1Adapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingDomeLight_1Adapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v7 = *(v6 + 30);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingDomeLight_1Adapter::GetImagingSubprimData(pxrInternal__aapl__pxrReserved__::UsdImagingDomeLight_1Adapter *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, _OWORD *a4@<X8>)
{
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdLightSchema::GetSchemaToken(this);
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v9)
  {
    v9 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  v10 = operator new(0x28uLL);
  v11 = v10;
  *v10 = &unk_2A20ABB00;
  v10[2] = *a2;
  v12 = *(a2 + 1);
  *(v10 + 2) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(v10 + 6, a2 + 4);
  sub_29A1E2240((v11 + 28), a2 + 5);
  v13 = *(a2 + 3);
  *(v11 + 32) = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(v11 + 32) &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = operator new(0x20uLL);
  v14->__vftable = &unk_2A20ABB50;
  v14->__shared_owners_ = 0;
  v14->__shared_weak_owners_ = 0;
  v14[1].__vftable = v11;
  v25 = v11;
  v26 = v14;
  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v15)
  {
    v15 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v16 = operator new(0x28uLL);
  v17 = v16;
  *v16 = &unk_2A20ABBC8;
  v16[2] = *a2;
  v18 = *(a2 + 1);
  *(v16 + 2) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(v16 + 6, a2 + 4);
  sub_29A1E2240((v17 + 28), a2 + 5);
  v19 = *(a2 + 3);
  *(v17 + 32) = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(v17 + 32) &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = operator new(0x20uLL);
  v20->__vftable = &unk_2A20ABC18;
  v20->__shared_owners_ = 0;
  v20->__shared_weak_owners_ = 0;
  v20[1].__vftable = v17;
  v23 = v17;
  v24 = v20;
  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v9 + 4, &v25, v15 + 61, &v23, &v27);
  v28 = v27;
  v27 = 0uLL;
  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(SchemaToken, &v28, &v29);
  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::GetImagingSubprimData(a2, a3, &v21);
  sub_29AFE526C(&v29, &v21, &v30);
  *a4 = v30;
  v30 = 0uLL;
  if (v22)
  {
    sub_29A014BEC(v22);
  }

  if (*(&v29 + 1))
  {
    sub_29A014BEC(*(&v29 + 1));
  }

  if (*(&v28 + 1))
  {
    sub_29A014BEC(*(&v28 + 1));
  }

  if (*(&v27 + 1))
  {
    sub_29A014BEC(*(&v27 + 1));
  }

  if (v24)
  {
    sub_29A014BEC(v24);
  }

  if (v26)
  {
    sub_29A014BEC(v26);
  }
}

void sub_29AFE5F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDomeLight_1Adapter::InvalidateImagingSubprim(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a2@<X3>, int a3@<W4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::InvalidateImagingSubprim(a1, a2, a3, a4);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
      if (!v8)
      {
        v8 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
      }

      if ((*(v8 + 53) ^ *v6) < 8)
      {
        goto LABEL_8;
      }

      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
      if (!v8)
      {
        v8 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
      }

      if ((*(v8 + 54) ^ *v6) <= 7)
      {
LABEL_8:
        DefaultLocator = pxrInternal__aapl__pxrReserved__::HdLightSchema::GetDefaultLocator(v8);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a4, DefaultLocator);
      }

      v6 = (v6 + 8);
    }

    while (v6 != v7);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDomeLight_1Adapter::GetLightParamValue(void *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, uint64_t a3@<X2>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a4@<X3>, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a5@<X8>, double a6@<D0>)
{
  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v12)
  {
    v12 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  if ((*(v12 + 4) ^ *a4) > 7)
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetLightParamValue(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    sub_29AFE6224(a2, v18);
    *(a5 + 1) = &off_2A2042BD8 + 2;
    v13 = operator new(0x88uLL);
    v14 = v18[5];
    *(v13 + 4) = v18[4];
    *(v13 + 5) = v14;
    v15 = v18[7];
    *(v13 + 6) = v18[6];
    *(v13 + 7) = v15;
    v16 = v18[1];
    *v13 = v18[0];
    *(v13 + 1) = v16;
    v17 = v18[3];
    *(v13 + 2) = v18[2];
    *(v13 + 3) = v17;
    atomic_store(0, v13 + 32);
    *a5 = v13;
    atomic_fetch_add_explicit(v13 + 32, 1u, memory_order_relaxed);
  }
}

void sub_29AFE6224(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X0>, pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2@<X8>)
{
  v16 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a2, 1.0);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v12, a1);
  v12 = &unk_2A2061840;
  if (v13 && (*(v13 + 57) & 8) == 0 && off_2A2061860(&v12))
  {
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::UsdLuxDomeLight_1::GetPoleAxisAttr(&v12, &v9);
    v4.n128_u64[0] = 0x7FF8000000000000;
    pxrInternal__aapl__pxrReserved__::UsdAttribute::Get(&v9, v14, v4);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
    sub_29A1DE3A4(&v10);
    if (*&v9.f64[1])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*&v9.f64[1], v5);
    }

    if ((atomic_load_explicit(&qword_2A1752F68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1752F68))
    {
      v10 = 0;
      v9 = 0x3FF0000000000000uLL;
      sub_29A143404(xmmword_2A1752F48, &v9, 90.0);
      __cxa_guard_release(&qword_2A1752F68);
    }

    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v6)
    {
      v6 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    if (sub_29AFE6968(v14, v6 + 55))
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(a1, v7, &v9);
      pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
    }

    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v8)
    {
      v8 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    if (sub_29AFE6968(v14, v8 + 61))
    {
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(a2, xmmword_2A1752F48);
    }

    sub_29A186B14(v14);
  }

  pxrInternal__aapl__pxrReserved__::UsdLuxDomeLight_1::~UsdLuxDomeLight_1(&v12);
}

void sub_29AFE6508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  __cxa_guard_abort(&qword_2A1752F68);
  sub_29A186B14(v7 - 56);
  pxrInternal__aapl__pxrReserved__::UsdLuxDomeLight_1::~UsdLuxDomeLight_1(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDomeLight_1Adapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingDomeLight_1Adapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::IsEnabledSceneLights(this);
  if (result)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v4)
    {
      v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsSprimTypeSupported(a2, v4 + 30);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDomeLight_1Adapter::Populate(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v4)
  {
    LODWORD(v4) = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_AddSprim(a1, v4 + 240, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDomeLight_1Adapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingDomeLight_1Adapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v6)
  {
    v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_RemoveSprim(this, (v6 + 240), a2, a3);
}

uint64_t sub_29AFE673C(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20ABA70;
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

void sub_29AFE67C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFE67EC(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29AFE6814@<D0>(_OWORD *a1@<X8>)
{
  sub_29AFE6850(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29AFE6850(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20ABAB0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AB830;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29AFE68FC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20ABAB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFE6968(pxrInternal__aapl__pxrReserved__::VtValue *a1, void *a2)
{
  v3 = a1;
  result = sub_29A1FA710(a1);
  if (result)
  {
    v5 = *(v3 + 1);
    if ((v5 & 4) != 0)
    {
      v3 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v3);
    }

    return (*a2 ^ *v3) < 8uLL;
  }

  return result;
}

void sub_29AFE69C8(uint64_t a1)
{
  *a1 = &unk_2A20ABB00;
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

void sub_29AFE6A50(uint64_t a1)
{
  *a1 = &unk_2A20ABB00;
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

void *sub_29AFE6ADC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

void sub_29AFE6B8C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFE6BB4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AFE6BE4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20ABBA0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AFE6C24(uint64_t a1)
{
  *a1 = &unk_2A20ABBC8;
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

void sub_29AFE6CAC(uint64_t a1)
{
  *a1 = &unk_2A20ABBC8;
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

void sub_29AFE6D38(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 32))(v3);
  *(a2 + 8) = &off_2A2048F00;
  sub_29A23E64C();
}

void sub_29AFE6DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

void sub_29AFE6DD0(uint64_t a1@<X0>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v3, (a1 + 8));
  v3[0] = &unk_2A2061840;
  pxrInternal__aapl__pxrReserved__::UsdLuxDomeLight_1::GetPortalsRel(v3, v4);
  pxrInternal__aapl__pxrReserved__::UsdLuxDomeLight_1::~UsdLuxDomeLight_1(v3);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v4);
}

void sub_29AFE6E98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdLuxDomeLight_1::~UsdLuxDomeLight_1(va);
  _Unwind_Resume(a1);
}

void sub_29AFE6ECC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFE6EF4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AFE6F24(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20ABC68))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29AFE6F64()
{
  v1 = nullsub_1773;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingFieldAdapter::~UsdImagingFieldAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingFieldAdapter *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingFieldAdapter::IsSupported(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 536))(&v4);
  result = pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsBprimTypeSupported(a2, &v4);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29AFE71B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, int a11, uint64_t a12)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  sub_29A1DCEA8(&a11);
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingFieldAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingFieldAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  (*(*this + 536))(&v6);
  result = sub_29AFE7290(a3, &v6, a2);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

_DWORD *sub_29AFE7290(pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a1, uint64_t *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
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
  sub_29AFBB0A4(a1 + 88, &v8);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingFieldAdapter::TrackVariability(uint64_t a1, int *a2, uint64_t a3, _DWORD *a4)
{
  v13 = *a2;
  v7 = *(a2 + 1);
  v14 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v15, a2 + 4);
  sub_29A1E2240(&v16, a2 + 5);
  v8 = *(a2 + 3);
  v17 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v9)
  {
    v9 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsTransformVarying(a1, &v13, 1, (v9 + 128), a4);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
  sub_29A1DE3A4(&v15);
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v10);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttributes(a2, v12);
  if (v12[0] != v12[1])
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::ValueMightBeTimeVarying(v12[0], v11);
  }

  v18 = v12;
  sub_29A5BB908(&v18);
}

void sub_29AFE74C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingFieldAdapter::Get(pxrInternal__aapl__pxrReserved__::UsdPrim *this@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, pxrInternal__aapl__pxrReserved__::TfToken *a3@<X3>, uint64_t a4@<X8>)
{
  v16 = *MEMORY[0x29EDCA608];
  v8 = atomic_load(qword_2A1752F70);
  if (!v8)
  {
    v8 = sub_29AFE7700();
  }

  v9 = *a3;
  if ((*v8 ^ *a3) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(this, a3, v13);
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v13);
  }

  v13[0] = "usdImaging/fieldAdapter.cpp";
  v13[1] = "Get";
  v13[2] = 143;
  v13[3] = "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingFieldAdapter::Get(const UsdPrim &, const SdfPath &, const TfToken &, UsdTimeCode, VtIntArray *) const";
  v14 = 0;
  v10 = v9 & 0xFFFFFFFFFFFFFFF8;
  if (v10)
  {
    v11 = (v10 + 16);
    if (*(v10 + 39) < 0)
    {
      v11 = *v11;
    }
  }

  else
  {
    v11 = "";
  }

  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 1, "Property %s not supported for fields by UsdImaging, path: %s", v11, Text);
  *(a4 + 8) = 0;
}

void sub_29AFE76C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29AFE7700()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "textureMemory", 0);
  v1 = *v0;
  v5 = v1;
  if ((v1 & 7) != 0)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed) & 1) == 0)
    {
      v5 = v2;
    }
  }

  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0;
  sub_29A12EF7C(v0 + 1, &v5, &v6, 1uLL);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = 0;
  atomic_compare_exchange_strong(qword_2A1752F70, &v3, v0);
  if (v3)
  {
    v5 = (v0 + 1);
    sub_29A124AB0(&v5);
    if ((*v0 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v0);
    return atomic_load(qword_2A1752F70);
  }

  return v0;
}

void sub_29AFE7820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(v9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingFlattenedDataSourceProviders(void *a1@<X8>)
{
  v24[3] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1752F90, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_2A1752F90);
    if (v4)
    {
      v12 = a1;
      SchemaToken = pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema::GetSchemaToken(v4);
      sub_29AFE7C60(&v19);
      v20 = v19;
      v19 = 0uLL;
      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(SchemaToken, &v20, &v21);
      v23[0] = v21;
      v21 = 0uLL;
      v7 = pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetSchemaToken(v6);
      sub_29AFE7D10(&v16);
      v17 = v16;
      v16 = 0uLL;
      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v7, &v17, &v18);
      v23[1] = v18;
      v18 = 0uLL;
      v9 = pxrInternal__aapl__pxrReserved__::UsdImagingModelSchema::GetSchemaToken(v8);
      sub_29AC26894(&v13);
      v14 = v13;
      v13 = 0uLL;
      pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v9, &v14, &v15);
      v23[2] = v15;
      v15 = 0uLL;
      pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProviders(v24);
      sub_29AFE7BEC(v23, 4, &v22);
      xmmword_2A1752F80 = v22;
      v22 = 0uLL;
      for (i = 56; i != -8; i -= 16)
      {
        v11 = *(v23 + i);
        if (v11)
        {
          sub_29A014BEC(v11);
        }
      }

      if (*(&v15 + 1))
      {
        sub_29A014BEC(*(&v15 + 1));
      }

      if (*(&v14 + 1))
      {
        sub_29A014BEC(*(&v14 + 1));
      }

      if (*(&v13 + 1))
      {
        sub_29A014BEC(*(&v13 + 1));
      }

      if (*(&v18 + 1))
      {
        sub_29A014BEC(*(&v18 + 1));
      }

      if (*(&v17 + 1))
      {
        sub_29A014BEC(*(&v17 + 1));
      }

      if (*(&v16 + 1))
      {
        sub_29A014BEC(*(&v16 + 1));
      }

      if (*(&v21 + 1))
      {
        sub_29A014BEC(*(&v21 + 1));
      }

      if (*(&v20 + 1))
      {
        sub_29A014BEC(*(&v20 + 1));
      }

      if (*(&v19 + 1))
      {
        sub_29A014BEC(*(&v19 + 1));
      }

      __cxa_atexit(sub_29ABE5FF4, &xmmword_2A1752F80, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1752F90);
      a1 = v12;
    }
  }

  v3 = *(&xmmword_2A1752F80 + 1);
  *a1 = xmmword_2A1752F80;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_29AFE7AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, std::__shared_weak_count *a28)
{
  v30 = 56;
  while (1)
  {
    v31 = *(v28 + v30);
    if (v31)
    {
      sub_29A014BEC(v31);
    }

    v30 -= 16;
    if (v30 == -8)
    {
      if (a16)
      {
        sub_29A014BEC(a16);
      }

      if (a14)
      {
        sub_29A014BEC(a14);
      }

      if (a12)
      {
        sub_29A014BEC(a12);
      }

      if (a22)
      {
        sub_29A014BEC(a22);
      }

      if (a20)
      {
        sub_29A014BEC(a20);
      }

      if (a18)
      {
        sub_29A014BEC(a18);
      }

      if (a28)
      {
        sub_29A014BEC(a28);
      }

      if (a26)
      {
        sub_29A014BEC(a26);
      }

      if (a24)
      {
        sub_29A014BEC(a24);
      }

      __cxa_guard_abort(&qword_2A1752F90);
      _Unwind_Resume(a1);
    }
  }
}

void *sub_29AFE7BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x90uLL);
  pxrInternal__aapl__pxrReserved__::HdOverlayContainerDataSource::HdOverlayContainerDataSource(v6, a1, a2);

  return sub_29ABDE960(a3, v6);
}

void sub_29AFE7C60(_OWORD *a1@<X8>)
{
  v2 = operator new(0x20uLL);
  v2->__shared_owners_ = 0;
  v2->__shared_weak_owners_ = 0;
  v2->__vftable = &unk_2A20ABED8;
  v2[1].__vftable = &unk_2A20AC080;
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

void sub_29AFE7CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFE7D10(_OWORD *a1@<X8>)
{
  v2 = operator new(0x20uLL);
  v2->__shared_owners_ = 0;
  v2->__shared_weak_owners_ = 0;
  v2->__vftable = &unk_2A20ABF28;
  v2[1].__vftable = &unk_2A20ABF78;
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

void sub_29AFE7DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFE7DE0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20ABED8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AFE7E6C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20ABF28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingFlattenedGeomModelDataSourceProvider::~UsdImagingFlattenedGeomModelDataSourceProvider(pxrInternal__aapl__pxrReserved__::UsdImagingFlattenedGeomModelDataSourceProvider *this)
{
  pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider::~HdFlattenedDataSourceProvider(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingFlattenedGeomModelDataSourceProvider::GetFlattenedDataSource(uint64_t **a1@<X1>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider::Context::GetInputDataSource(a1, &v15);
  pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider::Context::GetFlattenedDataSourceFromParentPrim(a1, &v13);
  v5 = v15;
  v6 = v13;
  if (v15)
  {
    if (v13)
    {
      v7 = operator new(0x28uLL);
      v8 = v7;
      *v7 = &unk_2A20ABFC0;
      v7[1] = v5;
      v9 = v16;
      v7[2] = v16;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = v14;
      v7[3] = v6;
      v7[4] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = operator new(0x20uLL);
      *v11 = &unk_2A20AC008;
      v11[1] = 0;
      v11[2] = 0;
      v11[3] = v8;
      *a2 = v8;
      a2[1] = v11;
      goto LABEL_12;
    }

    v12 = v16;
    *a2 = v15;
  }

  else
  {
    v12 = v14;
    *a2 = v13;
  }

  a2[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_12:
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }
}

void sub_29AFE802C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  (*(*v12 + 8))(v12);
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

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingFlattenedGeomModelDataSourceProvider::ComputeDirtyLocatorsForDescendants(pxrInternal__aapl__pxrReserved__::UsdImagingFlattenedGeomModelDataSourceProvider *this, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1752FD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1752FD0))
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    if (!v4)
    {
      v4 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1752F98, (v4 + 8));
    __cxa_atexit(sub_29ABC33B4, &unk_2A1752F98, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1752FD0);
  }

  if ((atomic_load_explicit(&qword_2A17531A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17531A0))
  {
    sub_29ABD30AC(v6, &unk_2A1752F98);
    v5[0] = v6;
    v5[1] = 1;
    pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(&qword_2A1752FD8, v5);
    sub_29ABC3488(v6);
    __cxa_atexit(sub_29ABE62AC, &qword_2A1752FD8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17531A0);
  }

  result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects(a2, &unk_2A1752F98);
  if (!result)
  {
    v7 = 0x800000000;
    if (v6 != a2)
    {
      sub_29AC094F8(a2, v6);
    }

    sub_29ABD3178();
  }

  if (a2 != &qword_2A1752FD8)
  {
    sub_29AC0BC18();
  }

  return result;
}

void sub_29AFE826C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29ABC3488(va);
  __cxa_guard_abort(&qword_2A17531A0);
  _Unwind_Resume(a1);
}

void sub_29AFE82BC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20ABFC0;
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

void sub_29AFE8324(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20ABFC0;
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

void sub_29AFE8390(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (!sub_29AFE8744(a2))
  {
    (*(**(a1 + 24) + 16))(v6);
    v4 = sub_29AFE8744(v6);
    v7 = v6;
    sub_29A124AB0(&v7);
    if (v4)
    {
      v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      if (!v5)
      {
        v5 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      }

      sub_29A1D8028(a2, v5 + 1);
    }
  }
}

void sub_29AFE8470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, void **a12)
{
  sub_29A124AB0(&a12);
  sub_29A124AB0(&a9);
  _Unwind_Resume(a1);
}

void sub_29AFE84A0(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
  if (!v6)
  {
    v6 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) >= 8)
  {
    v7 = *(**(a1 + 8) + 24);

    v7();
    return;
  }

  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v16 = v8;
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v8);
  }

  else
  {
    v16 = 0;
  }

  v15 = v9;
  pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetDrawMode(&v15, &v17);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }

  if (v17)
  {
    (*(*v17 + 32))(&v15, 0.0);
    v10 = v15;
    if (v15)
    {
      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v11)
      {
        v11 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      v10 = v15;
      if ((*(v11 + 59) ^ v15) >= 8)
      {
        *a3 = v17;
        v17 = 0uLL;
        if ((v10 & 7) != 0)
        {
          atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v12 = 0;
        goto LABEL_25;
      }
    }

    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v12 = 1;
LABEL_25:
  if (*(&v17 + 1))
  {
    sub_29A014BEC(*(&v17 + 1));
  }

  if (v12)
  {
    v13 = *(a1 + 24);
    v14 = *(a1 + 32);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = v13;
      v16 = v14;
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v14);
    }

    else
    {
      v15 = v13;
      v16 = 0;
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetDrawMode(&v15, &v17);
    *a3 = v17;
    v17 = 0uLL;
    if (v16)
    {
      sub_29A014BEC(v16);
    }

    if (v14)
    {
      sub_29A014BEC(v14);
    }
  }
}

void sub_29AFE86D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29AFE8744(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v2 = *a1 + 8;
  do
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    if (!v3)
    {
      v3 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
    }

    v4 = *(v3 + 1) ^ *(v2 - 8);
    result = v4 < 8;
    v6 = v4 < 8 || v2 == v1;
    v2 += 8;
  }

  while (!v6);
  return result;
}

void sub_29AFE87C0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFE87E8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AFE8818(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AC058))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingFlattenedDirectMaterialBindingsDataSourceProvider::GetFlattenedDataSource(uint64_t **a1@<X1>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider::Context::GetInputDataSource(a1, &v15);
  pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider::Context::GetFlattenedDataSourceFromParentPrim(a1, &v13);
  v5 = v15;
  v6 = v13;
  if (v15)
  {
    if (v13)
    {
      v7 = operator new(0x28uLL);
      v8 = v7;
      *v7 = &unk_2A20AC0C8;
      v7[1] = v5;
      v9 = v16;
      v7[2] = v16;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = v14;
      v7[3] = v6;
      v7[4] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = operator new(0x20uLL);
      *v11 = &unk_2A20AC110;
      v11[1] = 0;
      v11[2] = 0;
      v11[3] = v8;
      *a2 = v8;
      a2[1] = v11;
      goto LABEL_12;
    }

    v12 = v16;
    *a2 = v15;
  }

  else
  {
    v12 = v14;
    *a2 = v13;
  }

  a2[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_12:
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }
}

void sub_29AFE897C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  (*(*v12 + 8))(v12);
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

pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *pxrInternal__aapl__pxrReserved__::UsdImagingFlattenedDirectMaterialBindingsDataSourceProvider::ComputeDirtyLocatorsForDescendants(pxrInternal__aapl__pxrReserved__::UsdImagingFlattenedDirectMaterialBindingsDataSourceProvider *this, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::begin(a2);
  result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::end(a2);
  if (v3 != result)
  {
    v5 = result;
    do
    {
      result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetElementCount(v3);
      if (result != 1)
      {
        v11 = 0x800000000;
        v6 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::begin(a2);
        v7 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::end(a2);
        while (v6 != v7)
        {
          FirstElement = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetFirstElement(v6);
          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v9, FirstElement);
          pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(v10, v9);
          sub_29ABC3488(v9);
          v6 += 14;
        }

        if (v10 != a2)
        {
          sub_29AC094F8(a2, v10);
        }

        sub_29ABD3178();
      }

      v3 = (v3 + 56);
    }

    while (v3 != v5);
  }

  return result;
}

void sub_29AFE8B24(pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider *a1)
{
  pxrInternal__aapl__pxrReserved__::HdFlattenedDataSourceProvider::~HdFlattenedDataSourceProvider(a1);

  operator delete(v1);
}

void sub_29AFE8B4C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20AC0C8;
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

void sub_29AFE8BB4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20AC0C8;
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

void sub_29AFE8C20(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14[3] = *MEMORY[0x29EDCA608];
  v10 = 0u;
  v11 = 0u;
  (*(**(a1 + 8) + 16))(v13);
  (*(**(a1 + 24) + 16))(v14);
  for (i = 0; i != 6; i += 3)
  {
    sub_29AFE8FFC(&v10, v13[i], v13[i + 1]);
  }

  for (j = 3; j != -3; j -= 3)
  {
    v12 = &v13[j];
    sub_29A124AB0(&v12);
  }

  v6 = v10;
  v7 = (*(&v10 + 1) - v10) >> 3;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  sub_29AC65AD4(a2, v6, *(&v6 + 1), v7);
  v8 = *(&v11 + 1);
  *(&v11 + 1) = 0;
  if (v8)
  {
    v9 = sub_29A155EF4(v8);
    operator delete(v9);
  }

  v13[0] = &v10;
  sub_29A124AB0(v13);
}

void sub_29AFE8DC8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(**(a1 + 24) + 24))(&v12);
  sub_29ABC3244(&v12, &v13);
  v7 = v13;
  v6 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = v7;
    v16 = v6;
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v6);
    if (v14)
    {
      sub_29A014BEC(v14);
    }
  }

  else
  {
    v15 = v13;
    v16 = 0;
  }

  if (*(&v12 + 1))
  {
    sub_29A014BEC(*(&v12 + 1));
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchema::GetBindingStrength(&v15, &v12);
  if (v12)
  {
    (*(*v12 + 32))(&v11, 0.0);
    v8 = atomic_load(&qword_2A17531A8);
    if (!v8)
    {
      v8 = sub_29AFE9120();
    }

    if ((*v8 ^ v11) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(&v15, &v10);
      *a3 = v10;
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (*(&v12 + 1))
      {
        sub_29A014BEC(*(&v12 + 1));
      }

      goto LABEL_23;
    }

    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  if (*(&v12 + 1))
  {
    sub_29A014BEC(*(&v12 + 1));
  }

  (*(**(a1 + 8) + 24))(*(a1 + 8), a2);
  if (!*a3)
  {
    v9 = *(a3 + 8);
    if (v9)
    {
      sub_29A014BEC(v9);
    }

    pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(&v15, &v12);
    *a3 = v12;
  }

LABEL_23:
  if (v16)
  {
    sub_29A014BEC(v16);
  }
}

void sub_29AFE8FA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  v16 = *(v14 - 40);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFE8FFC(uint64_t *a1, uint64_t *a2, uint64_t *a3)
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
    sub_29AC6542C(a1, v4);
  }
}

void sub_29AFE9108(_Unwind_Exception *a1)
{
  v3 = sub_29A155EF4(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

unint64_t sub_29AFE9120()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "strongerThanDescendants", 0);
  v1 = *v0;
  v5 = v1;
  if ((v1 & 7) != 0)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed) & 1) == 0)
    {
      v5 = v2;
    }
  }

  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0;
  sub_29A12EF7C(v0 + 1, &v5, &v6, 1uLL);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = 0;
  atomic_compare_exchange_strong(&qword_2A17531A8, &v3, v0);
  if (v3)
  {
    v5 = (v0 + 1);
    sub_29A124AB0(&v5);
    if ((*v0 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v0);
    return atomic_load(&qword_2A17531A8);
  }

  return v0;
}

void sub_29AFE9240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_29AFE9290(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFE92B8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AFE92E8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AC160))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29AFE9328()
{
  v1 = nullsub_1774;
  return sub_29AFE9504(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGeometryLightAdapter::~UsdImagingGeometryLightAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingGeometryLightAdapter *this)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingGeometryLightAdapter::Populate(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2)
{
  v3[0] = "usdImaging/geometryLightAdapter.cpp";
  v3[1] = "Populate";
  v3[2] = 40;
  v3[3] = "virtual SdfPath pxrInternal__aapl__pxrReserved__::UsdImagingGeometryLightAdapter::Populate(const UsdPrim &, UsdImagingIndexProxy *, const UsdImagingInstancerContext *)";
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Geometry lights are not yet supported in USD imaging");
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGeometryLightAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingGeometryLightAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v3[0] = "usdImaging/geometryLightAdapter.cpp";
  v3[1] = "_RemovePrim";
  v3[2] = 48;
  v3[3] = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingGeometryLightAdapter::_RemovePrim(const SdfPath &, UsdImagingIndexProxy *)";
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Geometry lights are not yet supported in USD imaging");
}

uint64_t sub_29AFE9504(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AC3C8;
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

void sub_29AFE9590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFE95B4(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29AFE95DC@<D0>(_OWORD *a1@<X8>)
{
  sub_29AFE9618(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29AFE9618(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AC408;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AC188;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29AFE96C4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AC408;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AFE9730()
{
  v1 = nullsub_1775;
  return sub_29AFE9C90(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelAPIAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X3>, void *a4@<X8>)
{
  if (!(*a2 | *a3))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_29AFE99FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29AFEA120(va);
  __cxa_guard_abort(&qword_2A17531C0);
  v9 = *(v7 + 168);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  _Unwind_Resume(a1);
}

void *sub_29AFE9A90@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x48uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::UsdImagingDataSourceMapped(v10, a1, a2, a3, a4);

  return sub_29AF72CBC(a5, v10);
}

void sub_29AFE9B1C()
{
  if ((atomic_load_explicit(&qword_2A17531F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2A17531F0))
    {
      sub_29AFE9EBC(v2);
      DefaultLocator = pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetDefaultLocator(v0);
      pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::AttributeMappings(&unk_2A17531C8, v2, DefaultLocator);
      v3 = v2;
      sub_29AF738D4(&v3);
      __cxa_atexit(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::~AttributeMappings, &unk_2A17531C8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A17531F0);
    }
  }
}

double pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelAPIAdapter::InvalidateImagingSubprim@<D0>(void *a1@<X2>, void *a2@<X3>, uint64_t a3@<X4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a4@<X8>)
{
  if (*a1 | *a2)
  {
    *&result = 0x800000000;
    *(a4 + 56) = 0x800000000;
  }

  else
  {
    sub_29AFE9B1C();

    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::Invalidate(a3, &unk_2A17531C8, a4);
  }

  return result;
}

void sub_29AFE9C68(pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter::~UsdImagingAPISchemaAdapter(a1);

  operator delete(v1);
}

uint64_t sub_29AFE9C90(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AC4B0;
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

void sub_29AFE9D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFE9D40(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29AFE9D68@<D0>(_OWORD *a1@<X8>)
{
  sub_29AFE9DA4(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29AFE9DA4(void *a1@<X8>)
{
  v2 = operator new(0x30uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AC4F0;
  v2[5] = 0;
  v2[3] = &unk_2A20AC458;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29AFE9E50(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AC4F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AFE9EBC(void *a1@<X8>)
{
  v12[4] = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  SchemaAttributeNames = pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::GetSchemaAttributeNames(0);
  v3 = *SchemaAttributeNames;
  v4 = *(SchemaAttributeNames + 1);
  if (*SchemaAttributeNames != v4)
  {
    do
    {
      if ((*v3 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*v3 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(SchemaAttributeNames);
      }

      sub_29A008E78(&__p, "model");
      pxrInternal__aapl__pxrReserved__::SdfPath::StripPrefixNamespace(EmptyString, &__p, &v8);
      if ((v11[15] & 0x80000000) != 0)
      {
        operator delete(__p);
      }

      if (v9 == 1)
      {
        v6 = *v3;
        __p = v6;
        if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          __p = (__p & 0xFFFFFFFFFFFFFFF8);
        }

        pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v7);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v11, &v7);
        v12[0] = &unk_2A20A6098;
        v12[1] = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceAttributeNew;
        v12[3] = v12;
        sub_29AF7EF90(a1, &__p);
        sub_29AF72C3C(v12);
        SchemaAttributeNames = sub_29ABC3488(v11);
        if ((__p & 7) != 0)
        {
          atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v7 & 7) != 0)
        {
          atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v8.__r_.__value_.__l.__data_);
      }

      ++v3;
    }

    while (v3 != v4);
  }
}

void *sub_29AFEA120(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = a1[17];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = a1[15];
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = a1[13];
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = a1[11];
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  v7 = a1[9];
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  v8 = a1[7];
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  v9 = a1[5];
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  v10 = a1[3];
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  v11 = a1[1];
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  return a1;
}

uint64_t *sub_29AFEA1BC()
{
  v1 = nullsub_1776;
}

void sub_29AFEA744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26)
{
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  sub_29A57F434(&a22);
  sub_29A1DCEA8(&a26);
  sub_29A57F434(v27 - 112);
  sub_29A1DCEA8(v26);
  _Unwind_Resume(a1);
}

void sub_29AFEB208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_29A57F434(&a14);
  sub_29A57F434(&a18);
  sub_29A57F434(&a22);
  sub_29A57F434(&a26);
  v28 = *(v26 - 104);
  if (v28)
  {
    sub_29A014BEC(v28);
  }

  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::_IsBuiltinPrimvar(pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v3)
  {
    v3 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v3 + 19) ^ *a2) < 8)
  {
    return 1;
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v5)
  {
    v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  return (*(v5 + 20) ^ *a2) < 8uLL;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::UpdateForTime(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, _DWORD *a3, char a4)
{
  v26 = *MEMORY[0x29EDCA608];
  PrimvarDescCache = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimvarDescCache(a1);
  v9 = sub_29AFB9C00(PrimvarDescCache, a3);
  if ((a4 & 0x20) != 0)
  {
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v10)
    {
      v10 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
    if (!v11)
    {
      v11 = sub_29AD033E0(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_MergePrimvar(a1, v9, v10 + 59, 3, v11 + 4, 0);
    v12 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v23, a2);
    v23 = &unk_2A2060168;
    v18 = 0;
    *v16 = 0u;
    v17 = 0u;
    pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetVelocitiesAttr(v12, &v21);
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v21);
  }

  memset(v20, 0, sizeof(v20));
  if ((a4 & 0xC0) != 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialUsdPath(a1, a2);
  }

  if ((a4 & 0x40) != 0)
  {
    v13 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v21, a2);
    v21 = &unk_2A205FF00;
    if (v22 && (*(v22 + 57) & 8) == 0 && off_2A205FF20(v13))
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomSubset::GetAllGeomSubsets(&v21, &v15);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomImageable::~UsdGeomImageable(&v21);
    v19 = 0;
    v25 = 0;
    sub_29A19D6E4(v14, 0);
    pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::GetColor(a2, &v19, v24, &v21);
  }

  v16[0] = v20;
  sub_29A1E234C(v16);
}

void sub_29AFEC070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void **a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomImageable::~UsdGeomImageable((v39 - 224));
  a31 = &a39;
  sub_29A1E234C(&a31);
  _Unwind_Resume(a1);
}

void sub_29AFEC4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29AFEC634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::GetColor(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v20, "usdImaging", "static BOOL pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::GetColor(const UsdPrim &, UsdTimeCode, TfToken *, VtValue *, VtIntArray *)");
  v21 = 0x3F0000003F000000;
  LODWORD(v22) = 1056964608;
  sub_29A9F8F9C(&v19, 1uLL, &v21);
  sub_29A19D6E4(&v18, 0);
  v17 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v21, a1);
  v24 = 0;
  v21 = &unk_2A20611A8;
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
  if (!v6)
  {
    v6 = sub_29A7CFC64(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetDirectBindingRel(&v21, v6, v9);
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::~UsdShadeMaterialBindingAPI(&v21);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdRelationship::GetForwardedTargets(v9, &v14) && v14 != v15)
  {
    if ((v15 - v14) >= 9)
    {
      v21 = "usdImaging/gprimAdapter.cpp";
      v22 = "GetColor";
      v23 = 838;
      v24 = "static BOOL pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::GetColor(const UsdPrim &, UsdTimeCode, TfToken *, VtValue *, VtIntArray *)";
      LOBYTE(v25) = 0;
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(a1, v7, &v13);
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v21 = &v14;
  sub_29A1E234C(&v21);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
  sub_29A1DE3A4(&v10);
  if (v9[1])
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9[1], v8);
  }

  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v13, a1);
  v13 = &unk_2A205FE50;
  pxrInternal__aapl__pxrReserved__::UsdGeomGprim::GetDisplayColorPrimvar(&v13, &v21);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(&v21, v9);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = v9[0];
  if (a4)
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
  }

  sub_29AFEF1E8();
}

void sub_29AFECE10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::GetOpacity(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v20, "usdImaging", "static BOOL pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::GetOpacity(const UsdPrim &, UsdTimeCode, TfToken *, VtValue *, VtIntArray *)");
  LODWORD(v21[0]) = 1065353216;
  sub_29A878A0C(&v19, 1uLL, v21);
  sub_29A19D6E4(&v18, 0);
  v17 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v21, a1);
  v22 = 0;
  v21[0] = &unk_2A20611A8;
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
  if (!v6)
  {
    v6 = sub_29A7CFC64(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetDirectBindingRel(v21, v6, v9);
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::~UsdShadeMaterialBindingAPI(v21);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdRelationship::GetForwardedTargets(v9, &v14) && v14 != v15)
  {
    if ((v15 - v14) >= 9)
    {
      v21[0] = "usdImaging/gprimAdapter.cpp";
      v21[1] = "GetOpacity";
      v21[2] = 951;
      v22 = "static BOOL pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::GetOpacity(const UsdPrim &, UsdTimeCode, TfToken *, VtValue *, VtIntArray *)";
      LOBYTE(v23) = 0;
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(a1, v7, &v13);
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
  }

  v21[0] = &v14;
  sub_29A1E234C(v21);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
  sub_29A1DE3A4(&v10);
  if (v9[1])
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9[1], v8);
  }

  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v13, a1);
  v13 = &unk_2A205FE50;
  pxrInternal__aapl__pxrReserved__::UsdGeomGprim::GetDisplayOpacityPrimvar(&v13, v21);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(v21, v9);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = v9[0];
  if (a4)
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<float>>();
  }

  sub_29A85BD04();
}

void sub_29AFED784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v8 + 158) ^ *a4) < 8)
  {
    return 1024;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v10)
  {
    v10 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v10 + 114) ^ *a4) < 8)
  {
    return 0x80000;
  }

  if (pxrInternal__aapl__pxrReserved__::UsdGeomXformable::IsTransformationAffectedByAttrNamed(a4, a2))
  {
    return 512;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v12)
  {
    v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v12 + 37) ^ *a4) < 8)
  {
    return 8;
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v13)
  {
    v13 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v13 + 30) ^ *a4) < 8)
  {
    return 4096;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v14)
  {
    v14 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v14 + 153) ^ *a4) < 8)
  {
    return 32;
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v15)
  {
    v15 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*v15 ^ *a4) < 8)
  {
    return 32;
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v16)
  {
    v16 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v16 + 83) ^ *a4) < 8)
  {
    return 32;
  }

  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v17)
  {
    v17 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v17 + 82) ^ *a4) < 8)
  {
    return 32;
  }

  if (pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::CanContainPropertyName(a4, v11))
  {
    return 192;
  }

  CanContainPropertyName = pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::CanContainPropertyName(a4, v18);
  if (CanContainPropertyName)
  {
    return 192;
  }

  if ((*a4 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a4 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(CanContainPropertyName);
  }

  if (sub_29AFEDBC0(EmptyString, "inputs:"))
  {
    return 64;
  }

  result = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::CanContainPropertyName(a4, v21);
  if (result)
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessPrefixedPrimvarPropertyChange(this, a2, a3, a4, 0x40u, 1);
  }

  return result;
}

BOOL sub_29AFEDBC0(uint64_t a1, char *__s)
{
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = *(a1 + 8);
  }

  v6 = strlen(__s);
  if (v5 < v6)
  {
    return 0;
  }

  v8 = v6;
  if (v4 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  return strncmp(v9, __s, v8) == 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::MarkDirty(pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t a4, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a5)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkRprimDirty(a5, a3, a4);
  result = pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsAnyPrimvarDirty(a4, a3, v8);
  if ((a4 & 0x80) != 0 || result)
  {

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::RequestUpdateForTime(a5, a3);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::MarkMaterialDirty(pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkRprimDirty(a4, a3, 128);

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::RequestUpdateForTime(a4, a3);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::GetPoints(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  sub_29A0ECEEC(&v5, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::GetPoints(const UsdPrim &, UsdTimeCode) const");
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v3)
  {
    v3 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  sub_29AFEDE64(a2, (v3 + 816), v4);
}

void sub_29AFEDE64(pxrInternal__aapl__pxrReserved__::UsdPrim *this@<X1>, pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(this, a2, &v3);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::GetExtent(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, uint64_t a2@<X8>)
{
  sub_29A0ECEEC(&v10, "usdImaging", "virtual GfRange3d pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::GetExtent(const UsdPrim &, const SdfPath &, UsdTimeCode) const");
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v8, a1);
  v8 = &unk_2A205FE50;
  if (v9 && (*(v9 + 57) & 8) == 0 && (off_2A205FE70(&v8) & 1) != 0 || (*&v5 = "usdImaging/gprimAdapter.cpp", *(&v5 + 1) = "GetExtent", *&v6 = 603, *(&v6 + 1) = "virtual GfRange3d pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::GetExtent(const UsdPrim &, const SdfPath &, UsdTimeCode) const", LOBYTE(v7) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v5, "gprim", 0) & 1) != 0))
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    pxrInternal__aapl__pxrReserved__::UsdGeomBoundable::GetExtentAttr(&v8, &v4);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
  }

  *a2 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
  *(a2 + 16) = xmmword_29B43C5A0;
  *(a2 + 32) = vdupq_n_s64(0xC7EFFFFFE0000000);
  pxrInternal__aapl__pxrReserved__::UsdGeomGprim::~UsdGeomGprim(&v8);
  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v11, v10);
  }
}

void sub_29AFEE17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  pxrInternal__aapl__pxrReserved__::UsdGeomGprim::~UsdGeomGprim(va);
  sub_29A0E9CEC(v10 - 64);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::GetDoubleSided(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  sub_29A0ECEEC(&v8, "usdImaging", "virtual BOOL pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::GetDoubleSided(const UsdPrim &, const SdfPath &, UsdTimeCode) const");
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v6, a2);
  v6 = &unk_2A205FE50;
  if (v7 && (*(v7 + 57) & 8) == 0 && (off_2A205FE70(&v6) & 1) != 0 || (v4[0] = "usdImaging/gprimAdapter.cpp", v4[1] = "GetDoubleSided", v4[2] = 632, v4[3] = "virtual BOOL pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::GetDoubleSided(const UsdPrim &, const SdfPath &, UsdTimeCode) const", v5 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v4, "gprim", 0) & 1) != 0))
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomGprim::GetDoubleSidedAttr(&v6, v4);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<BOOL>();
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomGprim::~UsdGeomGprim(&v6);
  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v9, v8);
  }

  return 0;
}

void sub_29AFEE34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  pxrInternal__aapl__pxrReserved__::UsdGeomGprim::~UsdGeomGprim(va);
  sub_29A0E9CEC(v8 - 64);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::Get@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>, double a6@<D0>)
{
  v42[2] = *MEMORY[0x29EDCA608];
  v38 = a6;
  sub_29A0ECEEC(&v36, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::Get(const UsdPrim &, const SdfPath &, const TfToken &, UsdTimeCode, VtIntArray *) const");
  v42[1] = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v34, a2);
  v34 = &unk_2A205FE50;
  if (v35 && (*(v35 + 57) & 8) == 0 && (off_2A205FE70(&v34) & 1) != 0 || (v31[0] = "usdImaging/gprimAdapter.cpp", v31[1] = "Get", *&v32 = 663, *(&v32 + 1) = "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::Get(const UsdPrim &, const SdfPath &, const TfToken &, UsdTimeCode, VtIntArray *) const", LOBYTE(v33) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v31, "gprim", 0) & 1) != 0))
  {
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v11)
    {
      v11 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v11 + 19) ^ *a3) <= 7)
    {
      v30[0] = 0;
      pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::GetColor(a2, v30, v42, a4);
    }

    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v12)
    {
      v12 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v12 + 20) ^ *a3) <= 7)
    {
      v30[0] = 0;
      pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::GetOpacity(a2, v30, v42, a4);
    }

    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v13)
    {
      v13 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v13 + 54) ^ *a3) <= 7)
    {
      v39 = 0;
      LODWORD(v40) = 0;
      sub_29A9F8F9C(v31, 1uLL, &v39);
      v40 = &off_2A20433C0;
      v14 = operator new(0x30uLL);
      v15 = v32;
      *v14 = *v31;
      *(v14 + 1) = v15;
      v16 = v33;
      *(v14 + 4) = v33;
      if (v16)
      {
        v17 = (v16 - 16);
        if (*(v14 + 3))
        {
          v17 = *(v14 + 3);
        }

        atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
      }

      atomic_store(0, v14 + 10);
      v39 = v14;
      atomic_fetch_add_explicit(v14 + 10, 1u, memory_order_relaxed);
      sub_29A18606C(v42, &v39);
      sub_29A186B14(&v39);
      sub_29A186A3C(a5, v42);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
    }

    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v18)
    {
      v18 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v18 + 84) ^ *a3) <= 7)
    {
      LODWORD(v39) = 1065353216;
      sub_29A878A0C(v31, 1uLL, &v39);
      v40 = &off_2A2042F70;
      v19 = operator new(0x30uLL);
      v20 = v32;
      *v19 = *v31;
      *(v19 + 1) = v20;
      v21 = v33;
      *(v19 + 4) = v33;
      if (v21)
      {
        v22 = (v21 - 16);
        if (*(v19 + 3))
        {
          v22 = *(v19 + 3);
        }

        atomic_fetch_add_explicit(v22, 1uLL, memory_order_relaxed);
      }

      atomic_store(0, v19 + 10);
      v39 = v19;
      atomic_fetch_add_explicit(v19 + 10, 1u, memory_order_relaxed);
      sub_29A18606C(v42, &v39);
      sub_29A186B14(&v39);
      sub_29A186A3C(a5, v42);
      pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
    }

    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v23)
    {
      v23 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v23 + 59) ^ *a3) > 7)
    {
      v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v25)
      {
        v25 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(v25 + 82) ^ *a3) <= 7)
      {
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v30, a2);
        v30[0] = &unk_2A2060168;
        v33 = 0;
        *v31 = 0u;
        v32 = 0u;
        pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetVelocitiesAttr(v30, &v39);
        pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v39);
      }

      v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v26)
      {
        v26 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*v26 ^ *a3) <= 7)
      {
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v30, a2);
        v30[0] = &unk_2A2060168;
        v33 = 0;
        *v31 = 0u;
        v32 = 0u;
        pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetAccelerationsAttr(v30, &v39);
        pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v39);
      }

      v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v27)
      {
        v27 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(v27 + 52) ^ *a3) <= 7)
      {
        v31[0] = *(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetNonlinearSampleCountCache(a1) + 560);
        pxrInternal__aapl__pxrReserved__::operator==();
      }

      v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v28)
      {
        v28 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(v28 + 8) ^ *a3) <= 7)
      {
        v31[0] = *(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetBlurScaleCache(a1) + 560);
        pxrInternal__aapl__pxrReserved__::operator==();
      }

      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v39, &v34);
      *(&v41 + 1) = 0;
      v39 = &unk_2A2060598;
      pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(&v39, a3, v31);
      pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::~UsdGeomPrimvarsAPI(&v39);
      pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v31, v29);
    }

    (*(*a1 + 536))(a1, a2, v38);
  }

  else
  {
    sub_29A186A3C(a5, v42);
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomGprim::~UsdGeomGprim(&v34);
  result = sub_29A186B14(v42);
  if (v36)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v37, v36);
  }

  return result;
}

void sub_29AFEEEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  sub_29A7A079C(va);
  pxrInternal__aapl__pxrReserved__::UsdGeomGprim::~UsdGeomGprim(va1);
  sub_29A186B14(v5 - 104);
  sub_29A0E9CEC(va2);
  _Unwind_Resume(a1);
}

void sub_29AFEF0C4(pxrInternal__aapl__pxrReserved__::UsdPrim *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v1, a1);
  v1[3] = 0;
  v1[0] = &unk_2A2060008;
  pxrInternal__aapl__pxrReserved__::UsdGeomMotionAPI::ComputeNonlinearSampleCount(v1);
}

void sub_29AFEF154(pxrInternal__aapl__pxrReserved__::UsdPrim *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v1, a1);
  v1[3] = 0;
  v1[0] = &unk_2A2060008;
  pxrInternal__aapl__pxrReserved__::UsdGeomMotionAPI::ComputeMotionBlurScale(v1);
}

void sub_29AFEF1E8()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
}

void sub_29AFEF3EC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

double pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::GetImplicitBasis@<D0>(pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter *this@<X0>, uint64_t a2@<X8>)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v5)
  {
    v5 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v5 + 167) ^ *this) >= 8)
  {
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v9)
    {
      v9 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v10 = *(v9 + 169) ^ *this;
    v8 = 1.0;
    v7 = 0.0;
    if (v10 >= 8)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.0;
    }

    if (v10 >= 8)
    {
      v8 = 0.0;
    }
  }

  else
  {
    v6 = 0.0;
    v7 = 1.0;
    v8 = 0.0;
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = 0;
  *(a2 + 32) = v8;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 56) = 0;
  *(a2 + 64) = v7;
  *(a2 + 72) = v8;
  *(a2 + 80) = v6;
  result = 0.0;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0x3FF0000000000000;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::_CollectMaterialPrimvars@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *MEMORY[0x29EDCA608];
  *(a3 + 16) = 0;
  *a3 = 0u;
  if (*a2 != *(a2 + 8))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, *a2, v7);
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v7);
  }

  sub_29A2815F8(0, 0, &v6, 0, 1);
  v4 = sub_29A5AE88C(*a3, *(a3 + 8));
  return sub_29A3203E8(a3, v4, *(a3 + 8));
}

void sub_29AFEF800(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void **);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  va_copy(va3, va2);
  va_arg(va3, void);
  va_copy(v13, va);
  sub_29A124AB0(va2);
  sub_29A186B14(va3);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29A57F434(va1);
  sub_29A124AB0(va1);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::_GetRprimPrimvarNames(pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter *this)
{
  if ((atomic_load_explicit(&qword_2A17531F8, memory_order_acquire) & 1) == 0)
  {
    sub_29B2CE188();
  }

  return &qword_2A1753200;
}

void sub_29AFEF8D8(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  {
    sub_29B2CE200();
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
}

unint64_t sub_29AFEFA84(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  sub_29AFEFE24(a1, a2, v9);
  if (v9[0])
  {
    v4 = 0;
  }

  else
  {
    v4 = v9[1] == a1 + 16;
  }

  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(v7);
    v8 = 0xFFFFFFFFLL;
    sub_29AFEFCA0(a2, v6);
    sub_29A758894(v7, v6);
  }

  return v9[0] + 40;
}

void sub_29AFEFBA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AFEFDC0(va);
  sub_29A5896C0(v2 - 176);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFEFBCC(int a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *this)
{
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::HasAuthoredValue(this))
  {
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<int>();
  }

  sub_29A5B9D18(a2, &v8);
  v5 = *sub_29AFEF8D8(a1, &v8);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
  sub_29A1DE3A4(&v10);
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9, v6);
  }

  return v5;
}

void sub_29AFEFCA0(pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v9, a1);
  v11 = 0;
  v9 = &unk_2A2060008;
  if (v10 && (*(v10 + 57) & 8) == 0 && off_2A2060028(&v9))
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomMotionAPI::GetNonlinearSampleCountAttr(&v9, &v4);
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

    pxrInternal__aapl__pxrReserved__::UsdGeomMotionAPI::~UsdGeomMotionAPI(&v9);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomMotionAPI::~UsdGeomMotionAPI(&v9);
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(a2);
  }
}

void sub_29AFEFD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_29A5888DC(&a9);
  pxrInternal__aapl__pxrReserved__::UsdGeomMotionAPI::~UsdGeomMotionAPI(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFEFDC0(uint64_t a1)
{
  sub_29A5896C0(a1 + 32);
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

void sub_29AFEFE24(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
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
  sub_29AFEFF5C(a1, v6, &v14);
  v11 = v14;
  if (v14)
  {
    v12 = v10 | 1;
    while (1)
    {
      v13 = *(v11 + 168);
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

void sub_29AFEFF5C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
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
    sub_29AFEFFF8(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29AFEFFF8(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29AFEFFF8(a1, v4);
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

  sub_29AFF00DC(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29AFF00DC@<X0>(uint64_t a1@<X0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0xB0);
  *(result + 21) = a3;
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
      v10 = i[21];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AFA5880(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

void sub_29AFF01B0(uint64_t a1@<X0>, uint64_t a2@<X1>, tbb::internal *a3@<X2>, uint64_t a4@<X8>)
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
  sub_29AFEFF5C(a1, v8, &v24);
  v13 = a1 + 16;
  if (a3)
  {
    *(a3 + 21) = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v24;
    v16 = *v24;
    if (*v24)
    {
      v17 = *(v16 + 168);
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
            sub_29AFA5880(a1 + 16, a3);
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

        v17 = *(v16 + 168);
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = sub_29AFF03EC(a1 + 16, v12, a2);
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

void *sub_29AFF03EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0xB0);
  sub_29AFF0464((v5 + 1), a3);
  v5[21] = a2;
  *v5 = 0;
  return v5;
}

void sub_29AFF043C(void *a1)
{
  __cxa_begin_catch(a1);
  tbb::internal::deallocate_via_handler_v3(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_29AFF0464(uint64_t a1, uint64_t a2)
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
  v6 = atomic_load((a2 + 156));
  atomic_store(v6, (a1 + 156));
  return a1;
}

uint64_t sub_29AFF0514(uint64_t a1, uint64_t a2, unsigned int *a3)
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

  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 32), a3);
  *(a1 + 152) = a3[30];
  v8 = atomic_load(a3 + 31);
  atomic_store(v8, (a1 + 156));
  return a1;
}

void sub_29AFF05E4(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  {
    sub_29B2CE254();
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
}

unint64_t sub_29AFF078C(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  sub_29AFF0B68(a1, a2, v10);
  if (v10[0])
  {
    v4 = 0;
  }

  else
  {
    v4 = v10[1] == a1 + 16;
  }

  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(v7);
    v8 = 0;
    v9 = 0;
    sub_29AFF09E4(a2, v6);
    sub_29A758894(v7, v6);
  }

  return v10[0] + 40;
}

void sub_29AFF08C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  sub_29AFF0B04(&a10);
  sub_29A5896C0(&a34);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFF08E8(int a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *this)
{
  if (pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::HasAuthoredValue(this))
  {
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<float>();
  }

  sub_29A5B9D18(a2, &v13);
  v5 = sub_29AFF05E4(a1, &v13);
  v6 = *v5;
  v7 = *(v5 + 4);
  v8 = *(v5 + 7);
  v9 = *(v5 + 5);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
  v10 = v9 | (v8 << 16);
  sub_29A1DE3A4(&v15);
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
  }

  return (v7 << 32) | (v10 << 40) | v6;
}

void sub_29AFF09E4(pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v9, a1);
  v11 = 0;
  v9 = &unk_2A2060008;
  if (v10 && (*(v10 + 57) & 8) == 0 && off_2A2060028(&v9))
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomMotionAPI::GetMotionBlurScaleAttr(&v9, &v4);
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

    pxrInternal__aapl__pxrReserved__::UsdGeomMotionAPI::~UsdGeomMotionAPI(&v9);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomMotionAPI::~UsdGeomMotionAPI(&v9);
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(a2);
  }
}

void sub_29AFF0ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_29A5888DC(&a9);
  pxrInternal__aapl__pxrReserved__::UsdGeomMotionAPI::~UsdGeomMotionAPI(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFF0B04(uint64_t a1)
{
  sub_29A5896C0(a1 + 32);
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

void sub_29AFF0B68(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
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
  sub_29AFF0CA0(a1, v6, &v14);
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

void sub_29AFF0CA0(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
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
    sub_29AFF0D3C(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29AFF0D3C(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29AFF0D3C(a1, v4);
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

  sub_29AFF0E20(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29AFF0E20@<X0>(uint64_t a1@<X0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
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
        result = sub_29AFA6014(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

void sub_29AFF0EF4(uint64_t a1@<X0>, uint64_t a2@<X1>, tbb::internal *a3@<X2>, uint64_t a4@<X8>)
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
  sub_29AFF0CA0(a1, v8, &v24);
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
            sub_29AFA6014(a1 + 16, a3);
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
      a3 = sub_29AFF1130(a1 + 16, v12, a2);
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

void *sub_29AFF1130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0xB8);
  sub_29AFF11A8((v5 + 1), a3);
  v5[22] = a2;
  *v5 = 0;
  return v5;
}

void sub_29AFF1180(void *a1)
{
  __cxa_begin_catch(a1);
  tbb::internal::deallocate_via_handler_v3(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_29AFF11A8(uint64_t a1, uint64_t a2)
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
  v6 = atomic_load((a2 + 160));
  atomic_store(v6, (a1 + 160));
  return a1;
}

uint64_t sub_29AFF1258(uint64_t a1, uint64_t a2, uint64_t a3)
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

  pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery((a1 + 32), a3);
  *(a1 + 152) = *(a3 + 120);
  v8 = atomic_load((a3 + 128));
  atomic_store(v8, (a1 + 160));
  return a1;
}

pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *sub_29AFF1328(void *a1, uint64_t a2, const pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a3, pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 4)) >= a5)
    {
      v18 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 4)) >= a5)
      {
        v21 = 3 * a5;
        sub_29AFF1554(a1, a2, a1[1], a2 + 48 * a5);
        v22 = (v7 + 16 * v21);
        v23 = v5;
        do
        {
          pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::operator=(v23, v7);
          v7 = (v7 + 48);
          v23 += 48;
        }

        while (v7 != v22);
      }

      else
      {
        v19 = (a3 + v18);
        a1[1] = sub_29A7A37C0(a1, (a3 + v18), a4, a1[1]);
        if (v18 >= 1)
        {
          sub_29AFF1554(a1, v5, v10, v5 + 48 * a5);
          v20 = v5;
          do
          {
            pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::operator=(v20, v7);
            v7 = (v7 + 48);
            v20 += 48;
          }

          while (v7 != v19);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 4);
      if (v12 > 0x555555555555555)
      {
        sub_29A00C9A4();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 4);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x2AAAAAAAAAAAAAALL)
      {
        v15 = 0x555555555555555;
      }

      else
      {
        v15 = v12;
      }

      v16 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 4);
      v32 = a1;
      if (v15)
      {
        v17 = sub_29A08E058(a1, v15);
      }

      else
      {
        v17 = 0;
      }

      v24 = &v17[48 * v16];
      v29[0] = v17;
      v29[1] = v24;
      v30 = v24;
      v31 = &v17[48 * v15];
      v25 = 3 * a5;
      v26 = (v24 + 48 * a5);
      v27 = 16 * v25;
      do
      {
        pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::UsdGeomPrimvar(v24, v7);
        v24 = (v24 + 48);
        v7 = (v7 + 48);
        v27 -= 48;
      }

      while (v27);
      v30 = v26;
      v5 = sub_29AFF1614(a1, v29, v5);
      sub_29A7A333C(v29);
    }
  }

  return v5;
}

uint64_t sub_29AFF1554(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = *(result + 8);
  v8 = (a2 + v7 - a4);
  if (v8 >= a3)
  {
    v10 = *(result + 8);
  }

  else
  {
    v10 = *(result + 8);
    do
    {
      result = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::UsdGeomPrimvar(v10, v8);
      v8 = (v8 + 48);
      v10 = (v10 + 48);
    }

    while (v8 < a3);
  }

  *(v6 + 8) = v10;
  if (v7 != a4)
  {
    v11 = v7 - 48;
    v12 = a4 - v7;
    v13 = a2 + v7 - 48 - a4;
    do
    {
      result = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::operator=(v11, v13);
      v11 -= 48;
      v13 -= 48;
      v12 += 48;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_29AFF1614(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a3)
{
  v6 = *(a2 + 8);
  sub_29A7A3160(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_29A7A3160(a1, v7, a3, v9);
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

uint64_t sub_29AFF16D0()
{
  v1 = nullsub_1777;
  return sub_29AFF1EBC(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingHermiteCurvesAdapter::~UsdImagingHermiteCurvesAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingHermiteCurvesAdapter *this)
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

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingHermiteCurvesAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingHermiteCurvesAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsRprimTypeSupported(a2, v3 + 10);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingHermiteCurvesAdapter::Populate(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialUsdPath(a1, a2);
}

void sub_29AFF18EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingHermiteCurvesAdapter::_IsBuiltinPrimvar(pxrInternal__aapl__pxrReserved__::UsdImagingHermiteCurvesAdapter *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v4)
  {
    v4 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v4 + 54) ^ *a2) < 8)
  {
    return 1;
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v5)
  {
    v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v5 + 84) ^ *a2) < 8)
  {
    return 1;
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::_IsBuiltinPrimvar(this, a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingHermiteCurvesAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingHermiteCurvesAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v8 + 102) ^ *a4) < 8)
  {
    return 32;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v10)
  {
    v10 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v10 + 28) ^ *a4) < 8)
  {
    return 256;
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::ProcessPropertyChange(this, a2, a3, a4);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingHermiteCurvesAdapter::GetTopology(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  sub_29A0ECEEC(&v8, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingHermiteCurvesAdapter::GetTopology(const UsdPrim &, const SdfPath &, UsdTimeCode) const");
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens))
  {
    sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens))
  {
    sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens))
  {
    sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v6)
  {
    v6 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  sub_29AFD71F4(a2, (v6 + 224), v7);
}

uint64_t sub_29AFF1EBC(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20ACA00;
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

void sub_29AFF1F48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AFF1F6C(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29AFF1F94@<D0>(_OWORD *a1@<X8>)
{
  sub_29AFF1FD0(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29AFF1FD0(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20ACA40;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AC7A0;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29AFF207C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20ACA40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGetUnitSphereMeshTopology(pxrInternal__aapl__pxrReserved__ *this)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1753240, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753240))
  {
    memcpy(__dst, &unk_29B739800, 0x190uLL);
    sub_29A9096F4(&unk_2A1753218, __dst, 100);
    __cxa_atexit(sub_29AB75C88, &unk_2A1753218, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753240);
  }

  if ((atomic_load_explicit(&qword_2A1753270, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753270))
  {
    memcpy(__dst, &unk_29B739990, sizeof(__dst));
    sub_29A9096F4(&unk_2A1753248, __dst, 380);
    __cxa_atexit(sub_29AB75C88, &unk_2A1753248, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753270);
  }

  if ((atomic_load_explicit(&qword_2A17533F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17533F0))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v2)
    {
      v2 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v3)
    {
      v3 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(&unk_2A1753278, v2 + 56, v3 + 112, &unk_2A1753218, &unk_2A1753248);
    __cxa_atexit(sub_29AD31450, &unk_2A1753278, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17533F0);
  }

  return &unk_2A1753278;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGetUnitSphereMeshPoints(pxrInternal__aapl__pxrReserved__ *this)
{
  v3 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1753420, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753420))
  {
    memcpy(__dst, &unk_29B739F80, sizeof(__dst));
    sub_29A901CD8(&unk_2A17533F8, __dst, 92);
    __cxa_atexit(sub_29AD80908, &unk_2A17533F8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753420);
  }

  return &unk_2A17533F8;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGetUnitCubeMeshTopology(pxrInternal__aapl__pxrReserved__ *this)
{
  v10 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1753450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753450))
  {
    *&v5 = 0x400000004;
    v4 = xmmword_29B73A3D0;
    sub_29A9096F4(&unk_2A1753428, &v4, 6);
    __cxa_atexit(sub_29AB75C88, &unk_2A1753428, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753450);
  }

  if ((atomic_load_explicit(&qword_2A1753480, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753480))
  {
    v6 = xmmword_29B73A408;
    v7 = unk_29B73A418;
    v8 = xmmword_29B73A428;
    v9 = unk_29B73A438;
    v4 = xmmword_29B73A3E8;
    v5 = unk_29B73A3F8;
    sub_29A9096F4(&unk_2A1753458, &v4, 24);
    __cxa_atexit(sub_29AB75C88, &unk_2A1753458, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753480);
  }

  if ((atomic_load_explicit(&qword_2A1753600, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753600))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v2)
    {
      v2 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v3)
    {
      v3 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(&unk_2A1753488, v2 + 48, v3 + 112, &unk_2A1753428, &unk_2A1753458);
    __cxa_atexit(sub_29AD31450, &unk_2A1753488, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753600);
  }

  return &unk_2A1753488;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGetUnitCubeMeshPoints(pxrInternal__aapl__pxrReserved__ *this)
{
  v3 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1753630, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753630))
  {
    v2[2] = xmmword_29B73A468;
    v2[3] = unk_29B73A478;
    v2[4] = xmmword_29B73A488;
    v2[5] = unk_29B73A498;
    v2[0] = xmmword_29B73A448;
    v2[1] = unk_29B73A458;
    sub_29A901CD8(&unk_2A1753608, v2, 8);
    __cxa_atexit(sub_29AD80908, &unk_2A1753608, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753630);
  }

  return &unk_2A1753608;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGetUnitConeMeshTopology(pxrInternal__aapl__pxrReserved__ *this)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1753660, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753660))
  {
    *&v4[32] = xmmword_29B73A4C8;
    *&v4[48] = unk_29B73A4D8;
    *&v4[64] = xmmword_29B73A4E8;
    *v4 = xmmword_29B73A4A8;
    *&v4[16] = unk_29B73A4B8;
    sub_29A9096F4(&unk_2A1753638, v4, 20);
    __cxa_atexit(sub_29AB75C88, &unk_2A1753638, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753660);
  }

  if ((atomic_load_explicit(&qword_2A1753690, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753690))
  {
    memcpy(v4, &unk_29B73A4F8, sizeof(v4));
    sub_29A9096F4(&unk_2A1753668, v4, 70);
    __cxa_atexit(sub_29AB75C88, &unk_2A1753668, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753690);
  }

  if ((atomic_load_explicit(&qword_2A1753810, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753810))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v2)
    {
      v2 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v3)
    {
      v3 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(&unk_2A1753698, v2 + 56, v3 + 112, &unk_2A1753638, &unk_2A1753668);
    __cxa_atexit(sub_29AD31450, &unk_2A1753698, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753810);
  }

  return &unk_2A1753698;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGetUnitConeMeshPoints(pxrInternal__aapl__pxrReserved__ *this)
{
  v3 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1753840, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753840))
  {
    memcpy(__dst, &unk_29B73A610, sizeof(__dst));
    sub_29A901CD8(&unk_2A1753818, __dst, 31);
    __cxa_atexit(sub_29AD80908, &unk_2A1753818, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753840);
  }

  return &unk_2A1753818;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGetUnitCylinderMeshTopology(pxrInternal__aapl__pxrReserved__ *this)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1753870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753870))
  {
    *&v4[7] = 0x300000003;
    v4[4] = xmmword_29B73A7C4;
    v4[5] = unk_29B73A7D4;
    v4[6] = xmmword_29B73A7E4;
    v4[0] = xmmword_29B73A784;
    v4[1] = unk_29B73A794;
    v4[2] = xmmword_29B73A7A4;
    v4[3] = unk_29B73A7B4;
    sub_29A9096F4(&unk_2A1753848, v4, 30);
    __cxa_atexit(sub_29AB75C88, &unk_2A1753848, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753870);
  }

  if ((atomic_load_explicit(&qword_2A17538A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17538A0))
  {
    memcpy(v4, &unk_29B73A7FC, sizeof(v4));
    sub_29A9096F4(&unk_2A1753878, v4, 100);
    __cxa_atexit(sub_29AB75C88, &unk_2A1753878, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17538A0);
  }

  if ((atomic_load_explicit(&qword_2A1753A20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753A20))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v2)
    {
      v2 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v3)
    {
      v3 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(&unk_2A17538A8, v2 + 56, v3 + 112, &unk_2A1753848, &unk_2A1753878);
    __cxa_atexit(sub_29AD31450, &unk_2A17538A8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753A20);
  }

  return &unk_2A17538A8;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGetUnitCylinderMeshPoints(pxrInternal__aapl__pxrReserved__ *this)
{
  v3 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1753A50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753A50))
  {
    memcpy(v2, &unk_29B73A98C, sizeof(v2));
    sub_29A901CD8(&unk_2A1753A28, v2, 42);
    __cxa_atexit(sub_29AD80908, &unk_2A1753A28, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753A50);
  }

  return &unk_2A1753A28;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGetCapsuleMeshTopology(pxrInternal__aapl__pxrReserved__ *this)
{
  if ((atomic_load_explicit(&qword_2A1753BD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753BD0))
  {
    sub_29AFF2E88();
  }

  return &unk_2A1753A58;
}

void sub_29AFF2E88()
{
  v0 = sub_29A19D6E4(v31, 0x5AuLL);
  sub_29A19DBEC(v0);
  v1 = v32;
  sub_29A19D6E4(v29, 0x154uLL);
  sub_29A19DBEC(v29);
  v2 = 0;
  v3 = v30;
  v4 = (v30 + 8);
  do
  {
    *(v1 + 4 * v2) = 3;
    v5 = v2 + 1;
    if (v2 == 9)
    {
      v6 = 1;
    }

    else
    {
      v6 = v2 + 2;
    }

    *(v4 - 2) = v6;
    *(v4 - 1) = v5;
    *v4 = 0;
    v4 += 3;
    v2 = v5;
  }

  while (v5 != 10);
  v7 = 0;
  v8 = 1;
  v9 = 30;
  v10 = 10;
  do
  {
    v11 = 0;
    v12 = v10;
    v13 = v8;
    v14 = v8 + 10.0;
    v15 = (v3 + 8 + 4 * v9);
    do
    {
      v9 += 4;
      v16 = v11;
      v17 = v11 == 9;
      *(v1 + 4 * v12 + 4 * v11++) = 4;
      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = v11;
      }

      *(v15 - 2) = (v13 + v16);
      *(v15 - 1) = (v13 + v18);
      *v15 = (v14 + v18);
      v15[1] = (v14 + v16);
      v15 += 4;
    }

    while (v11 != 10);
    v10 = v12 + 10;
    v8 += 10;
    ++v7;
  }

  while (v7 != 7);
  v19 = 0;
  v20 = v9;
  v21 = (v3 + 4 * v9 + 8);
  v22 = v20 - 340;
  v23 = v12 + 10;
  while (1)
  {
    *(v1 + 4 * v23 + 4 * v19) = 3;
    v24 = v19 + 72;
    if (v19 == 9)
    {
      v24 = 71;
    }

    *(v21 - 2) = v19 + 71;
    *(v21 - 1) = v24;
    *v21 = 81;
    v21 += 3;
    ++v19;
    v22 += 3;
    if (v19 == 10)
    {
      if (90 - v23 != v19 || v22)
      {
        v27[0] = "usdImaging/implicitSurfaceMeshUtils.cpp";
        v27[1] = "operator()";
        v27[2] = 330;
        v27[3] = "auto pxrInternal__aapl__pxrReserved__::UsdImagingGetCapsuleMeshTopology()::(anonymous class)::operator()() const";
        v28 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v27, "face == numCounts && index == numIndices", 0);
      }

      v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v25)
      {
        v25 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      if (!v26)
      {
        v26 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
      }

      pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(&unk_2A1753A58, v25 + 56, v26 + 112, v31, v29);
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGenerateCapsuleMeshPoints(pxrInternal__aapl__pxrReserved__ *this@<X0>, double a2@<D0>, double a3@<D1>, uint64_t a4@<X8>)
{
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v9)
  {
    v9 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v9 + 167) ^ *this) >= 8)
  {
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v11)
    {
      v11 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v12 = vdup_n_s32((*(v11 + 169) ^ *this) < 8uLL);
    v13.i64[0] = v12.u32[0];
    v13.i64[1] = v12.u32[1];
    v68 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v13, 0x3FuLL)), xmmword_29B432B50, xmmword_29B432590);
    v10 = 0.0;
  }

  else
  {
    v68 = 0u;
    v10 = 1.0;
  }

  v67 = v10;
  v14 = a3;
  v66 = v14;
  v15 = a2;
  sub_29AFF3BF4(__p, 0xAuLL);
  v16 = 0;
  v17 = 0;
  v64 = vextq_s8(v68, v68, 8uLL);
  *&v18.f64[0] = v64.i64[0];
  v18.f64[1] = v67;
  v63 = v18;
  do
  {
    v19 = v17 * 6.28318531;
    v20 = __sincosf_stret(v19 / 10.0);
    v21 = v68.f64[0] * v20.__cosval;
    v22 = v67 * v20.__sinval;
    v23 = (__p[0] + v16);
    *v23 = vadd_f32(vcvt_f32_f64(vmulq_n_f64(v63, v20.__cosval)), vcvt_f32_f64(vmulq_n_f64(v68, v20.__sinval)));
    v23[1].f32[0] = v21 + v22;
    ++v17;
    v16 += 12;
  }

  while (v17 != 10);
  sub_29A193124(a4, 0x52uLL);
  sub_29A1935CC(a4);
  v24 = 0;
  v25 = *(a4 + 32);
  v26 = ((v15 * -0.5) - v66);
  v27 = vmuld_lane_f64(v26, v68, 1);
  *&v28.f64[1] = v64.i64[1];
  v28.f64[0] = v67;
  v65 = v28;
  *v25 = vcvt_f32_f64(vmulq_n_f64(v28, v26));
  v25[1].f32[0] = v27;
  v29 = &v25[1] + 1;
  do
  {
    v30 = __sincosf_stret(((++v24 * -0.25) + 1.0) * 1.5708);
    v31 = 0;
    v32 = v30.__cosval * v66;
    v33 = ((v15 * -0.5) - (v30.__sinval * v66));
    v34 = vcvt_f32_f64(vmulq_n_f64(v65, v33));
    v35 = v68.f64[1] * v33;
    do
    {
      v36 = &v29[v31];
      v37 = (v32 * *(__p[0] + v31 * 4 + 8)) + v35;
      *v36 = vadd_f32(vmul_n_f32(*(__p[0] + v31 * 4), v32), v34);
      v36[1].f32[0] = v37;
      v31 += 3;
    }

    while (v31 != 30);
    v29 += 30;
  }

  while (v24 != 3);
  v38 = -0.5;
  v39 = 1;
  do
  {
    v40 = 0;
    v41 = v39;
    v42 = (v38 * v15);
    v43 = v67 * v42;
    v44 = vcvt_f32_f64(vmulq_n_f64(v68, v42));
    do
    {
      v45 = &v29[v40];
      v46 = vadd_f32(vmul_n_f32(*(__p[0] + v40 * 4 + 4), v66), v44);
      *v45 = (*(__p[0] + v40 * 4) * v66) + v43;
      *(v45 + 1) = v46;
      v40 += 3;
    }

    while (v40 != 30);
    v39 = 0;
    v29 += 30;
    v38 = 0.5;
  }

  while ((v41 & 1) != 0);
  v47 = 0;
  v48 = v15 * 0.5;
  do
  {
    v49 = v29;
    v50 = __sincosf_stret(vcvts_n_f32_u32(++v47, 2uLL) * 1.5708);
    v51 = 0;
    v52 = v50.__cosval * v66;
    v53 = (v48 + (v50.__sinval * v66));
    v54 = v67 * v53;
    v55 = v68.f64[0] * v53;
    v56 = v68.f64[1] * v53;
    v57 = v29;
    do
    {
      v58 = (v52 * *(__p[0] + v51 + 4)) + v55;
      v59 = (v52 * *(__p[0] + v51 + 8)) + v56;
      v29 = v57 + 3;
      *v57 = (v52 * *(__p[0] + v51)) + v54;
      v57[1] = v58;
      v57[2] = v59;
      v51 += 12;
      v57 += 3;
    }

    while (v51 != 120);
  }

  while (v47 != 3);
  v60 = (v48 + v66);
  v61 = v67 * v60;
  v62 = v68.f64[0] * v60;
  *&v60 = v68.f64[1] * v60;
  *v29 = v61;
  v29[1] = v62;
  v29[2] = *&v60;
  sub_29A1935CC(a4);
  if (*(a4 + 32) - v49 != -852)
  {
    v69[0] = "usdImaging/implicitSurfaceMeshUtils.cpp";
    v69[1] = "UsdImagingGenerateCapsuleMeshPoints";
    v69[2] = 417;
    v69[3] = "VtVec3fArray pxrInternal__aapl__pxrReserved__::UsdImagingGenerateCapsuleMeshPoints(const double, const double, const TfToken &)";
    v70 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v69, "p - pointsArray.data() == numPoints", 0);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingGetPlaneTopology(pxrInternal__aapl__pxrReserved__ *this)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1753C00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753C00))
  {
    LODWORD(v4) = 4;
    sub_29A9096F4(&unk_2A1753BD8, &v4, 1);
    __cxa_atexit(sub_29AB75C88, &unk_2A1753BD8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753C00);
  }

  if ((atomic_load_explicit(&qword_2A1753C30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753C30))
  {
    v4 = xmmword_29B434060;
    sub_29A9096F4(&unk_2A1753C08, &v4, 4);
    __cxa_atexit(sub_29AB75C88, &unk_2A1753C08, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753C30);
  }

  if ((atomic_load_explicit(&qword_2A1753DB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753DB0))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v2)
    {
      v2 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    if (!v3)
    {
      v3 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
    }

    pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(&unk_2A1753C38, v2 + 48, v3 + 112, &unk_2A1753BD8, &unk_2A1753C08);
    __cxa_atexit(sub_29AD31450, &unk_2A1753C38, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753DB0);
  }

  return &unk_2A1753C38;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGeneratePlaneMeshPoints(pxrInternal__aapl__pxrReserved__ *this@<X0>, double a2@<D0>, double a3@<D1>, uint64_t a4@<X8>)
{
  v32 = *MEMORY[0x29EDCA608];
  sub_29AFF3BF4(__p, 4uLL);
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v9)
  {
    v9 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v9 + 167) ^ *this) > 7)
  {
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v14)
    {
      v14 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    if ((*(v14 + 169) ^ *this) > 7)
    {
      v17 = a2 * 0.5;
      *&__src = v17;
      *(&__src + 1) = a3 * 0.5;
      LODWORD(v25) = 0;
      v18 = a2 * -0.5;
      *(&v25 + 1) = v18;
      v26 = HIDWORD(__src);
      *&v27 = v18;
      *(&v27 + 1) = a3 * -0.5;
      v28 = 0.0;
      v29 = v17;
      v30 = *(&v27 + 1);
      v31 = 0.0;
    }

    else
    {
      *&v15 = a2 * -0.5;
      __src = v15;
      *&v16 = a2 * 0.5;
      *&v25 = a3 * 0.5;
      HIDWORD(v25) = v16;
      LODWORD(v26) = 0;
      *(&v26 + 1) = *&v25;
      v27 = v16;
      v28 = a3 * -0.5;
      v29 = *&v15;
      v30 = 0.0;
      v31 = v28;
    }

    sub_29AB908B8(__p, &__src, &v32, 4uLL);
  }

  else
  {
    v10 = a3 * 0.5;
    *&v11 = a2 * 0.5;
    LODWORD(__src) = 0;
    *(&__src + 1) = v10;
    v25 = v11;
    *&v12 = a3 * -0.5;
    v26 = __PAIR64__(v11, v12);
    v13 = a2 * -0.5;
    LODWORD(v27) = 0;
    HIDWORD(v27) = v12;
    v28 = v13;
    v29 = 0.0;
    v30 = v10;
    v31 = v13;
    sub_29AB908B8(__p, &__src, &v32, 4uLL);
  }

  sub_29A193124(a4, 4uLL);
  sub_29A1935CC(a4);
  v19 = 0;
  v20 = *(a4 + 32);
  do
  {
    v21 = v20 + v19;
    v22 = *(__p[0] + v19);
    *(v21 + 8) = *(__p[0] + v19 + 8);
    *v21 = v22;
    v19 += 12;
  }

  while (v19 != 48);
  sub_29A1935CC(a4);
  if (*(a4 + 32) != v20)
  {
    __src = "usdImaging/implicitSurfaceMeshUtils.cpp";
    v25 = "UsdImagingGeneratePlaneMeshPoints";
    v26 = 470;
    v27 = "VtVec3fArray pxrInternal__aapl__pxrReserved__::UsdImagingGeneratePlaneMeshPoints(const double, const double, const TfToken &)";
    LOBYTE(v28) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__src, "p - pointsArray.data() == numPoints", 0);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingGenerateSphereOrCubeTransform(double a1@<D0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = a1;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = a1;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0x3FF0000000000000;
}

pxrInternal__aapl__pxrReserved__::UsdGeomTokensType *pxrInternal__aapl__pxrReserved__::UsdImagingGenerateConeOrCylinderTransform@<X0>(pxrInternal__aapl__pxrReserved__ *this@<X0>, double a2@<D0>, double a3@<D1>, uint64_t a4@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!result)
  {
    result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v10 = a3 + a3;
  if ((*(result + 167) ^ *this) <= 7)
  {
    *a4 = 0;
    *(a4 + 8) = v10;
    v11 = 0uLL;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = v10;
    *(a4 + 56) = 0;
    *(a4 + 64) = a2;
    *(a4 + 72) = 0u;
LABEL_10:
    *(a4 + 88) = v11;
    *(a4 + 104) = v11;
    goto LABEL_11;
  }

  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!result)
  {
    result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(result + 169) ^ *this) > 7)
  {
    *a4 = v10;
    v11 = 0uLL;
    *(a4 + 8) = 0u;
    *(a4 + 24) = 0u;
    *(a4 + 40) = v10;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = a2;
    goto LABEL_10;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = v10;
  *(a4 + 24) = 0;
  *(a4 + 32) = v10;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = a2;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0;
LABEL_11:
  *(a4 + 120) = 0x3FF0000000000000;
  return result;
}

void *sub_29AFF3BF4(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A379A04(a1, a2);
    v4 = a1[1];
    v5 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero(v4, v5);
    a1[1] = &v4[v5];
  }

  return a1;
}

void sub_29AFF3C74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29AFF3C90()
{
  v1 = nullsub_1778;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceablePrimAdapter::ResolveCachePath@<X0>(_DWORD *a1@<X1>, _DWORD *a2@<X2>, int *a3@<X8>)
{
  sub_29A1E21F4(a3, a1);
  result = sub_29A1E2240(a3 + 1, a1 + 1);
  if (a2)
  {
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a2);
    if (result)
    {
      sub_29A2258F0(a3, a2);
      result = sub_29A225948(a3 + 1, a2 + 1);
    }

    if (*(a2 + 1))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(a3, (a2 + 2), &v7);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }
  }

  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceablePrimAdapter::ResolveProxyPrimPath@<X0>(_DWORD *a1@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, _DWORD *a3@<X8>)
{
  if (a2 && pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a2))
  {

    return pxrInternal__aapl__pxrReserved__::SdfPath::GetAbsoluteRootOrPrimPath(a2, a3);
  }

  else
  {
    sub_29A1E21F4(a3, a1);

    return sub_29A1E2240(a3 + 1, a1 + 1);
  }
}

uint64_t sub_29AFF3E50()
{
  v1 = nullsub_1779;
  return sub_29B001BF8(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::Populate(pxrInternal__aapl__pxrReserved__::SdfPath *a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);

  pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_Populate(a1, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_Populate(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2)
{
  if (sub_29AF49C14(4))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
}

void sub_29AFF5A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _DWORD *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, int a29, int a30, __int16 a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  sub_29A1DCEA8(&a27);
  sub_29A1DCEA8(&a29);
  sub_29B0020F0(&a31);
  if ((a38 & 7) != 0)
  {
    atomic_fetch_add_explicit((a38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a39 & 7) != 0)
  {
    atomic_fetch_add_explicit((a39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(&a40);
  if ((a41 & 7) != 0)
  {
    atomic_fetch_add_explicit((a41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A57F434(&a42);
  sub_29A58BBB4(&a46);
  sub_29A58BD10(&a50);
  sub_29A57F434(&a59);
  sub_29B0020F0(v73 - 160);
  *(v73 - 160) = &a63;
  sub_29A65E064((v73 - 160));
  sub_29A1DCEA8(&a66);
  sub_29A1DCEA8(a16);
  a50 = &a68;
  sub_29A15EE8C(&a50);
  if ((a71 & 7) != 0)
  {
    atomic_fetch_add_explicit((a71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a72 & 7) != 0)
  {
    atomic_fetch_add_explicit((a72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  a50 = &a73;
  sub_29A1E234C(&a50);
  sub_29A1DCEA8(&STACK[0x200]);
  if (STACK[0x210])
  {
    sub_29A014BEC(STACK[0x210]);
  }

  sub_29A57F434(v73 - 248);
  sub_29A1DCEA8((v73 - 216));
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_InsertProtoPrim(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator *a2, void *a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4, uint64_t a5)
{
  sub_29A58BBEC(a2, &v21);
  sub_29A58BDD8(a2, &v16);
  v11 = sub_29A5B9DEC(&v16, v10);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
  sub_29A1DE3A4(&v18);
  if (v17)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17, v12);
  }

  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, a4, &v16);
    v21 = v16;
    if (v22)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v22, v13);
    }

    v22 = v17;
    v17 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  (*(**a3 + 64))(*a3, &v21, a5, a4);
  if ((*(**a3 + 72))())
  {
    pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::PruneChildren(a2);
  }

  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24);
  sub_29A1DE3A4(&v23);
  result = v22;
  if (v22)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v22, v14);
  }

  return result;
}

void sub_29AFF6220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFF6264(uint64_t a1, uint64_t a2)
{
  sub_29A2258F0(a1, a2);
  sub_29A225948((a1 + 4), (a2 + 4));
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 16);
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  if (((*(*this + 352))(this, a3) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
  }

  return 1;
}

void sub_29AFF6370(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::TrackVariability(pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter *a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t a4)
{
  if (!pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_IsChildPrim(a1, a2, a3))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v22);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v22 + 1);
  v22[1] = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v23);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v24);
  v25 = 0u;
  v26 = 0u;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v20);
  ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(a1, &v20, a3, v22);
  if (*(ProtoPrim + 1) || (v16 = "TrackVariability", v17 = 521, v18 = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::TrackVariability(const UsdPrim &, const SdfPath &, HdDirtyBits *, const UsdImagingInstancerContext *) const", v19 = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3), v14 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v12, v13, Text, "usdImaging/instanceAdapter.cpp"), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v15, "proto.adapter", v14) & 1) != 0))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, ProtoPrim, &v15);
    (*(**(ProtoPrim + 1) + 104))(*(ProtoPrim + 1), &v15, a3, a4, v22);
    if ((v18 & 7) != 0)
    {
      atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17 + 1);
    sub_29A1DE3A4(&v17);
    if (v16)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v16, v9);
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21);
  sub_29A1DE3A4(&v20);
  return sub_29B0020F0(v22);
}

void sub_29AFF65F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29B0020F0(va1);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingInstanceAdapter::_GetProtoPrim(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  if ((atomic_load_explicit(&qword_2A1753E18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1753E18))
  {
    sub_29B000324(&unk_2A1753E00);
    __cxa_atexit(sub_29B000360, &unk_2A1753E00, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1753E18);
  }

  v8 = sub_29A328A44((a1 + 32), a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20);
  v17 = 0;
  v18 = 0;
  if (!v8)
  {
    v14 = sub_29A328A44((a1 + 152), a3);
    if (v14)
    {
      v15 = sub_29A328A44((a1 + 32), v14 + 6);
      v8 = v15;
      if (v15)
      {
        v9 = sub_29A328A44(v15 + 17, a3);
        if (v9)
        {
          sub_29A2258F0(&v21, v14 + 6);
          v10 = v14 + 7;
          goto LABEL_5;
        }
      }
    }

LABEL_13:
    v11 = &unk_2A1753E00;
    goto LABEL_14;
  }

  v9 = sub_29A328A44(v8 + 17, a3);
  if (!v9)
  {
    goto LABEL_13;
  }

  sub_29A2258F0(&v21, a2);
  v10 = a2 + 1;
LABEL_5:
  sub_29A225948(&v22, v10);
  sub_29A2258F0(&v19, v8 + 8);
  sub_29A225948(&v20, v8 + 9);
  sub_29A166F2C(&v18, v8 + 5);
  sub_29A166F2C(&v17, v8 + 6);
  v11 = v9 + 3;
  sub_29A2258F0(a4, &v21);
  sub_29A225948((a4 + 4), &v22);
  sub_29A2258F0((a4 + 16), &v19);
  sub_29A225948((a4 + 20), &v20);
  sub_29A166F2C((a4 + 24), &v18);
  sub_29A166F2C((a4 + 32), &v17);
  v12 = *(a4 + 8);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(a4 + 8) = 0;
  v13 = *(a4 + 48);
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  if (v13)
  {
    sub_29A014BEC(v13);
  }

LABEL_14:
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v20);
  sub_29A1DE3A4(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
  sub_29A1DE3A4(&v21);
  return v11;
}