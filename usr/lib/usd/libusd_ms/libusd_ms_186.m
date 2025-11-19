double sub_29B021734@<D0>(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, _OWORD *a3@<X8>)
{
  v19 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v6)
  {
    v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v6 + 34) ^ *a2) <= 7)
  {
    v12[0] = 0;
    v12[1] = 0;
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::GetFiltersRel((a1 + 8), v14);
    pxrInternal__aapl__pxrReserved__::UsdRelationship::GetForwardedTargets(v14, v12);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
    sub_29A1DE3A4(&v15);
    if (v14[1])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14[1], v7);
    }

    v18 = &off_2A2048F00;
    sub_29A23E64C();
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v8)
  {
    v8 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v8 + 85) ^ *a2) > 7)
  {
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v10)
    {
      v10 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v10 + 51) ^ *a2) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::GetMaterialSyncModeAttr((a1 + 8), v14);
      pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v14);
    }

    sub_29A580660(v14, (a1 + 16), (a1 + 24));
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::LookupLightParamAttribute(v14, a2, v11);
  }

  LOBYTE(v12[0]) = 1;
  pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(v12, v14);
  result = *v14;
  *a3 = *v14;
  return result;
}

void sub_29B021B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v11 = *(v9 - 88);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A5888DC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29B021BF0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::~UsdLuxLightAPI((v2 + 8));
    pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v2);
    operator delete(v3);
  }

  return a1;
}

void sub_29B021C38(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B021C68(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AD3F0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29B021CA8(uint64_t a1)
{
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::~UsdLuxLightAPI((a1 + 8));
    pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

    operator delete(v2);
  }
}

uint64_t sub_29B021CF0()
{
  v1 = nullsub_1782;
  return sub_29B022A84(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::~UsdImagingLightFilterAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter *this)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::IsEnabledSceneLights(this);
  if (result)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v4)
    {
      v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsSprimTypeSupported(a2, v4 + 37);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::Populate(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(this);
}

void sub_29B021F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return sub_29AFB3F6C(a3, v5 + 37, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::TrackVariability(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, int *a2, uint64_t a3, _DWORD *a4)
{
  v22 = *a2;
  v7 = *(a2 + 1);
  v23 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v24, a2 + 4);
  sub_29A1E2240(&v25, a2 + 5);
  v8 = *(a2 + 3);
  v26 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v9)
  {
    v9 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsTransformVarying(a1, &v22, 1, (v9 + 128), a4);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25);
  sub_29A1DE3A4(&v24);
  if (v23)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v23, v10);
  }

  if (pxrInternal__aapl__pxrReserved__::UsdImagingIsHdMaterialNetworkTimeVarying(a2, v10))
  {
    *a4 |= 0x10u;
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttributes(a2, v21);
  v11 = v21[0];
  v12 = v21[1];
  while (v11 != v12)
  {
    v13 = sub_29A5A6058(v11);
    if ((pxrInternal__aapl__pxrReserved__::UsdGeomXformable::IsTransformationAffectedByAttrNamed(v13, v14) & 1) == 0)
    {
      pxrInternal__aapl__pxrReserved__::UsdAttribute::GetNumTimeSamples(v11, v15);
    }

    v11 = (v11 + 32);
  }

  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v19, a2);
  v19 = &unk_2A2061A18;
  if (v20 && (*(v20 + 57) & 8) == 0 && (off_2A2061A38(&v19) & 1) != 0 || (v17[0] = "usdImaging/lightFilterAdapter.cpp", v17[1] = "TrackVariability", v17[2] = 100, v17[3] = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::TrackVariability(const UsdPrim &, const SdfPath &, HdDirtyBits *, const UsdImagingInstancerContext *) const", v18 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v17, "lightFilter", 0) & 1) != 0))
  {
    CollectionCache = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetCollectionCache(a1);
    pxrInternal__aapl__pxrReserved__::UsdLuxLightFilter::GetFilterLinkCollectionAPI(&v19, v17);
    pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::UpdateCollection(CollectionCache, v17);
    pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::~UsdCollectionAPI(v17);
  }

  pxrInternal__aapl__pxrReserved__::UsdLuxLightFilter::~UsdLuxLightFilter(&v19);
  v17[0] = v21;
  sub_29A5BB908(v17);
}

void sub_29B022240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, char a18)
{
  pxrInternal__aapl__pxrReserved__::UsdLuxLightFilter::~UsdLuxLightFilter(&a15);
  a15 = &a18;
  sub_29A5BB908(&a15);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  if (pxrInternal__aapl__pxrReserved__::UsdGeomXformable::IsTransformationAffectedByAttrNamed(a4, a2))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::GetMaterialResource@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x29EDCA608];
  result = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetSceneLightsEnabled(a1);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v9, a2);
    v9 = &unk_2A2061A18;
    if (v10 && (*(v10 + 57) & 8) == 0 && (off_2A2061A38(&v9) & 1) != 0)
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(a2, v6, v7);
      pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
    }

    v7[3] = "usdImaging/lightFilterAdapter.cpp";
    v7[4] = "GetMaterialResource";
    v7[5] = 174;
    v7[6] = "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::GetMaterialResource(const UsdPrim &, const SdfPath &, UsdTimeCode) const";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
  }

  *(a3 + 8) = 0;
  return result;
}

void sub_29B0225D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void **a27, char a28)
{
  sub_29A124AB0(&a27);
  a11 = &a14;
  sub_29A124AB0(&a11);
  sub_29ABE8884(&a17);
  pxrInternal__aapl__pxrReserved__::ArResolverScopedCache::~ArResolverScopedCache(&a28);
  pxrInternal__aapl__pxrReserved__::ArResolverContextBinder::~ArResolverContextBinder((v28 - 136));
  pxrInternal__aapl__pxrReserved__::UsdLuxLightFilter::~UsdLuxLightFilter(&a24);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v7 = *(v6 + 37);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals *a3@<X3>, void *a4@<X8>)
{
  if (!*a2)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v7)
    {
      v7 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens);
    if (!v8)
    {
      v8 = sub_29AC4497C(&pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens);
    }

    sub_29B020FB4(a1, a3, (v8 + 32), &v9);
    v10 = v9;
    v9 = 0uLL;
    pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v7 + 19, &v10, &v11);
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_29B02291C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  sub_29A1DCEA8(&a10);
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

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::InvalidateImagingSubprim(uint64_t *EmptyString@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X3>, int a4@<W4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (*a2)
  {
    *(a5 + 56) = 0x800000000;
    v6 = *a3;
    v7 = a3[1];
    if (*a3 != v7)
    {
      while (1)
      {
        if ((*v6 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = ((*v6 & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
        }

        v8 = *(EmptyString + 23);
        v9 = v8;
        if ((v8 & 0x80u) != 0)
        {
          v8 = EmptyString[1];
        }

        if (v8 >= 7)
        {
          if (v9 < 0)
          {
            EmptyString = *EmptyString;
          }

          EmptyString = strncmp(EmptyString, "inputs:", 7uLL);
          if (!EmptyString)
          {
            break;
          }
        }

        v6 = (v6 + 8);
        if (v6 == v7)
        {
          return;
        }
      }

      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdMaterialSchema::GetDefaultLocator(EmptyString);
      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, DefaultLocator);
    }
  }

  else
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::Invalidate(a2, a3, a4, a5);
  }
}

uint64_t sub_29B022A84(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AD658;
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

void sub_29B022B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B022B34(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B022B5C@<D0>(_OWORD *a1@<X8>)
{
  sub_29B022B98(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B022B98(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AD698;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AD418;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B022C44(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AD698;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B022CB0()
{
  v1 = nullsub_1783;
  sub_29B024A58(&v2);
  v1 = nullsub_1784;
  v2.__vftable = *pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20AD9A8, &v2, &v1, 1, 32, 0, 0);
  sub_29B024B00(&v2);
  v1 = nullsub_1789;
  v2.__vftable = *pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20ADC78, &v2, &v1, 1, 32, 0, 0);
  return sub_29B024BA8(&v2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter::~UsdImagingMaterialAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter *this)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v7 = *(v6 + 19);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a3@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_29B022FF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void *sub_29B023004@<X0>(const pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStageGlobals *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterialPrim::UsdImagingDataSourceMaterialPrim(v8, a1, a2, a3);

  return sub_29B025248(a4, v8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter::InvalidateImagingSubprim(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X3>, int a4@<W4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (*a2)
  {
    *(a5 + 56) = 0x800000000;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMaterialPrim::Invalidate(a1, a2, a3, a4, a5);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter::InvalidateImagingSubprimFromDescendent@<X0>(pxrInternal__aapl__pxrReserved__::HdMaterialSchema *a1@<X0>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a2@<X8>)
{
  *(a2 + 56) = 0x800000000;
  DefaultLocator = pxrInternal__aapl__pxrReserved__::HdMaterialSchema::GetDefaultLocator(a1);
  return pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a2, DefaultLocator);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsSprimTypeSupported(a2, v3 + 19);
}

void sub_29B02374C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_29A57F434(&a33);
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::~UsdShadeShader((v33 - 176));
  a13 = (v33 - 152);
  sub_29A124AB0(&a13);
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::~UsdShadeMaterial((v33 - 128));
  sub_29A1DCEA8((v33 - 104));
  sub_29A0E9CEC(v33 - 96);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter::TrackVariability(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v7, a2);
  v7 = &unk_2A2061000;
  if (v8 && (*(v8 + 57) & 8) == 0 && (off_2A2061020(v4) & 1) != 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetMaterialRenderContexts(v5, a1);
    pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::ComputeSurfaceSource(&v7, v5);
  }

  v5[3] = "usdImaging/materialAdapter.cpp";
  v5[4] = "TrackVariability";
  v5[5] = 199;
  v5[6] = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter::TrackVariability(const UsdPrim &, const SdfPath &, HdDirtyBits *, const UsdImagingInstancerContext *) const";
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
}

void sub_29B023C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void **a21)
{
  sub_29A57F434(&a21);
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::~UsdShadeShader(&a12);
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::~UsdShadeShader(&a15);
  a21 = &a18;
  sub_29A124AB0(&a21);
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::~UsdShadeMaterial((v21 - 56));
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v5)
  {
    v5 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  return 8 * ((*(v5 + 158) ^ *a4) > 7uLL);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter::MarkDirty(pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, unsigned int a4, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a5)
{
  sub_29A1E21F4(&v14, a3);
  sub_29A1E2240(&v15, a3 + 1);
  v9 = *a2;
  v7 = *(a2 + 1);
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v11, a2 + 4);
  sub_29A1E2240(&v12, a2 + 5);
  v8 = *(a2 + 3);
  v13 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v13 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v9);
}

void sub_29B023F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A57F434(va);
  sub_29A1DCEA8((v6 - 56));
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return sub_29AFB3F6C(a3, v5 + 19, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter::ProcessPrimResync(pxrInternal__aapl__pxrReserved__::UsdImagingMaterialAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ResyncDependents(this, a2, a3);

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::ProcessPrimResync(this, a2, a3);
}

void sub_29B024848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, char a46)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B024A58(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AD928;
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

void sub_29B024AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B024B00(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AD9D0;
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

void sub_29B024B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B024BA8(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20ADCA0;
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

void sub_29B024C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B024C58(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B024C80@<D0>(_OWORD *a1@<X8>)
{
  sub_29B024CBC(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B024CBC(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AD968;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AD6E8;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B024D68(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AD968;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B024DDC(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B024E04@<D0>(_OWORD *a1@<X8>)
{
  sub_29B024E40(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B024E40(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20ADA10;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = 0;
  v2[3] = &unk_2A20ADA60;
  *a1 = v2 + 3;
  a1[1] = v2;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B024EEC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20ADA10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B024F58(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_29B024F88(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_29B024FE0(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B025008@<D0>(_OWORD *a1@<X8>)
{
  sub_29B025044(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B025044(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20ADCE0;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = 0;
  v2[3] = &unk_2A20ADD30;
  *a1 = v2 + 3;
  a1[1] = v2;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B0250F0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20ADCE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B02515C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_29B02518C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void *sub_29B0251CC(void *__dst, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  sub_29A186EF4(__dst + 3, a3);
  return __dst;
}

void sub_29B02522C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B025248(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20ADF58;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B0252A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B0252BC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B0252E4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B025314(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20ADFA8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29B025354()
{
  v1 = nullsub_1790;
  return sub_29B02594C(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingMaterialBindingAPIAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X3>, void *a4@<X8>)
{
  if (*a2 | *a3)
  {
    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
    if (!v8)
    {
      v8 = sub_29A7CFC64(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
    }

    if ((*(v8 + 14) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*(v8 + 14) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
    }

    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAuthoredPropertiesInNamespace(a1, EmptyString, v27);
    v10 = v27[0];
    v11 = atomic_load(&qword_2A1753E50);
    if (!v11)
    {
      v11 = sub_29B025B78();
    }

    if ((*v11 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v12 = ((*v11 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v12 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
    }

    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAuthoredPropertiesInNamespace(a1, v12, &v25);
    v13 = v26 - v25;
    v14 = *(&v27[0] + 1) - *&v27[0];
    v23 = &v25;
    sub_29A58C74C(&v23);
    v25 = v27;
    sub_29A58C74C(&v25);
    SchemaToken = pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema::GetSchemaToken(v15);
    v17 = SchemaToken;
    if (v13 <= v14)
    {
      v18 = 0;
      v19 = 0;
    }

    else
    {
      v18 = operator new(0x28uLL);
      *v18 = &unk_2A20AE0B8;
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase((v18 + 1), a1);
      v18[4] = 0;
      v18[1] = &unk_2A20611A8;
      SchemaToken = operator new(0x20uLL);
      v19 = SchemaToken;
      *SchemaToken = &unk_2A20AE100;
      SchemaToken[1] = 0;
      SchemaToken[2] = 0;
      SchemaToken[3] = v18;
    }

    v25 = v18;
    v26 = v19;
    v20 = pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchema::GetSchemaToken(SchemaToken);
    if (v10 == *(&v10 + 1))
    {
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v21 = operator new(0x28uLL);
      v21->~__shared_weak_count = &unk_2A20AE178;
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v21->~__shared_weak_count_0, a1);
      v21->__on_zero_shared_weak = 0;
      v21->~__shared_weak_count_0 = &unk_2A20611A8;
      v22 = operator new(0x20uLL);
      v22->__vftable = &unk_2A20AE1C0;
      v22->__shared_owners_ = 0;
      v22->__shared_weak_owners_ = 0;
      v22[1].__vftable = v21;
    }

    v23 = v21;
    v24 = v22;
    pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v17, &v25, v20, &v23, v27);
    *a4 = v27[0];
    v27[0] = 0uLL;
    if (v24)
    {
      sub_29A014BEC(v24);
    }

    if (v26)
    {
      sub_29A014BEC(v26);
    }
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::UsdImagingMaterialBindingAPIAdapter::InvalidateImagingSubprim@<X0>(unint64_t result@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (*a2 | *a3 || (DefaultLocator = pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema::GetDefaultLocator(result), result = pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchema::GetDefaultLocator(DefaultLocator), v8 = *a4, v9 = *(a4 + 8), *a4 == v9))
  {
LABEL_43:
    *(a5 + 56) = 0x800000000;
  }

  else
  {
    v10 = result;
    while (1)
    {
      if ((*v8 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*v8 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
      }

      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
      if (!v12)
      {
        v12 = sub_29A7CFC64(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
      }

      if ((*(v12 + 14) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v13 = ((*(v12 + 14) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
      }

      if (*(v13 + 23) >= 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = *v13;
      }

      v15 = *(EmptyString + 23);
      if (v15 >= 0)
      {
        v16 = *(EmptyString + 23);
      }

      else
      {
        v16 = EmptyString[1];
      }

      v17 = strlen(v14);
      if (v16 >= v17)
      {
        v18 = v17;
        v19 = v15 >= 0 ? EmptyString : *EmptyString;
        v17 = strncmp(v19, v14, v18);
        if (!v17)
        {
          v28 = a5;
          v29 = v10;
          goto LABEL_46;
        }
      }

      if ((*v8 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v20 = ((*v8 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v20 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v17);
      }

      v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
      if (!v21)
      {
        v21 = sub_29A7CFC64(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
      }

      v22 = (*(v21 + 13) & 0xFFFFFFFFFFFFFFF8) != 0 ? ((*(v21 + 13) & 0xFFFFFFFFFFFFFFF8) + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v21);
      v23 = *(v22 + 23) >= 0 ? v22 : *v22;
      v24 = *(v20 + 23);
      v25 = v24 >= 0 ? *(v20 + 23) : v20[1];
      result = strlen(v23);
      if (v25 >= result)
      {
        v26 = result;
        v27 = v24 >= 0 ? v20 : *v20;
        result = strncmp(v27, v23, v26);
        if (!result)
        {
          break;
        }
      }

      if (++v8 == v9)
      {
        goto LABEL_43;
      }
    }

    v28 = a5;
    v29 = DefaultLocator;
LABEL_46:

    return pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(v28, v29);
  }

  return result;
}

void sub_29B025924(pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter::~UsdImagingAPISchemaAdapter(a1);

  operator delete(v1);
}

uint64_t sub_29B02594C(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AE028;
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

void sub_29B0259D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B0259FC(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B025A24@<D0>(_OWORD *a1@<X8>)
{
  sub_29B025A60(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B025A60(void *a1@<X8>)
{
  v2 = operator new(0x30uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AE068;
  v2[5] = 0;
  v2[3] = &unk_2A20ADFD0;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B025B0C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AE068;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

unint64_t sub_29B025B78()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "material:", 0);
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
  atomic_compare_exchange_strong(&qword_2A1753E50, &v3, v0);
  if (v3)
  {
    v5 = (v0 + 1);
    sub_29A124AB0(&v5);
    if ((*v0 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v0);
    return atomic_load(&qword_2A1753E50);
  }

  return v0;
}

void sub_29B025C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
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

void sub_29B025CE4(uint64_t a1)
{
  *a1 = &unk_2A20AE0B8;
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::~UsdShadeMaterialBindingAPI((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29B025D38(uint64_t a1)
{
  *a1 = &unk_2A20AE0B8;
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::~UsdShadeMaterialBindingAPI((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29B025F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, std::__shared_weak_count *a11, ...)
{
  va_start(va, a11);
  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (a9)
  {
    sub_29A014BEC(a9);
  }

  sub_29A95E544(va);
  sub_29AAF2D20(v11 - 120);
  sub_29A5B6480(v11 - 64);
  _Unwind_Resume(a1);
}

void sub_29B026010(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B026038(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B026068(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AE150))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29B0260A8(uint64_t a1)
{
  *a1 = &unk_2A20AE178;
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::~UsdShadeMaterialBindingAPI((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29B0260FC(uint64_t a1)
{
  *a1 = &unk_2A20AE178;
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::~UsdShadeMaterialBindingAPI((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29B026158(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetCollectionBindings((a1 + 8), a2, &v25);
  if (v25 == v26)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    sub_29A039314(&v22, 0xAAAAAAAAAAAAAAABLL * ((v26 - v25) >> 4));
    v5 = v25;
    for (i = v26; v5 != i; v5 += 48)
    {
      if (sub_29A7E7F1C(v5, v4))
      {
        v19 = 0u;
        v17 = 0u;
        v18 = 0u;
        sub_29ABE8360(v5, &v15);
        v16 = v15;
        v15 = 0uLL;
        v7 = pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchema::Builder::SetCollectionPath(&v17, &v16);
        sub_29ABE8360(v5 + 2, &v13);
        v14 = v13;
        v13 = 0uLL;
        v8 = pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchema::Builder::SetMaterialPath(v7, &v14);
        pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetMaterialBindingStrength((v5 + 16), &v10);
        sub_29ABCCFA4(&v10, &v11);
        v12 = v11;
        v11 = 0uLL;
        v9 = pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchema::Builder::SetBindingStrength(v8, &v12);
        pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingSchema::Builder::Build(v9, &v20);
        v21 = v20;
        v20 = 0uLL;
        sub_29A01729C(&v22, &v21);
        if (*(&v21 + 1))
        {
          sub_29A014BEC(*(&v21 + 1));
        }

        if (*(&v20 + 1))
        {
          sub_29A014BEC(*(&v20 + 1));
        }

        if (*(&v12 + 1))
        {
          sub_29A014BEC(*(&v12 + 1));
        }

        if (*(&v11 + 1))
        {
          sub_29A014BEC(*(&v11 + 1));
        }

        if ((v10 & 7) != 0)
        {
          atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (*(&v14 + 1))
        {
          sub_29A014BEC(*(&v14 + 1));
        }

        if (*(&v13 + 1))
        {
          sub_29A014BEC(*(&v13 + 1));
        }

        if (*(&v16 + 1))
        {
          sub_29A014BEC(*(&v16 + 1));
        }

        if (*(&v15 + 1))
        {
          sub_29A014BEC(*(&v15 + 1));
        }

        if (*(&v19 + 1))
        {
          sub_29A014BEC(*(&v19 + 1));
        }

        if (*(&v18 + 1))
        {
          sub_29A014BEC(*(&v18 + 1));
        }

        if (*(&v17 + 1))
        {
          sub_29A014BEC(*(&v17 + 1));
        }
      }
    }

    *&v21 = (v23 - v22) >> 4;
    *&v20 = v22;
    sub_29AC00FD8(&v21, &v20, &v17);
    *a3 = v17;
    *&v17 = &v22;
    sub_29A0176E4(&v17);
  }

  *&v17 = &v25;
  sub_29A7EC448(&v17);
}

void sub_29B026398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  a23 = (v23 - 112);
  sub_29A0176E4(&a23);
  a23 = (v23 - 88);
  sub_29A7EC448(&a23);
  _Unwind_Resume(a1);
}

void sub_29B026488(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B0264B0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B0264E0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AE210))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingMaterialBindingsResolvingSceneIndex::UsdImagingMaterialBindingsResolvingSceneIndex(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::HdSingleInputFilteringSceneIndexBase(a1, a2);
}

{
  pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::HdSingleInputFilteringSceneIndexBase(a1, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingMaterialBindingsResolvingSceneIndex::~UsdImagingMaterialBindingsResolvingSceneIndex(pxrInternal__aapl__pxrReserved__::UsdImagingMaterialBindingsResolvingSceneIndex *this, const void *a2)
{
  *this = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((this + 120), a2);
  sub_29ABD4DDC();
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingMaterialBindingsResolvingSceneIndex::~UsdImagingMaterialBindingsResolvingSceneIndex(this, a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingMaterialBindingsResolvingSceneIndex::GetPrim@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingMaterialBindingsResolvingSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29AC1199C(this + 14);
  result = (*(*v6 + 16))(v6, a2);
  v8 = *(a3 + 8);
  if (v8)
  {
    v9 = operator new(0x28uLL);
    *v9 = &unk_2A20AE2B0;
    v9[1] = v8;
    v10 = *(a3 + 16);
    v9[2] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v9[3] = *(this + 14);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
  }

  return result;
}

void sub_29B0267C4(_Unwind_Exception *a1)
{
  sub_29B0273DC(v2);
  sub_29AC2B620(v1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingMaterialBindingsResolvingSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::UsdImagingMaterialBindingsResolvingSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC1199C(this + 14) + 24);

  return v2();
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingMaterialBindingsResolvingSceneIndex::_PrimsDirtied(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v27 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1754020, memory_order_acquire) & 1) == 0)
  {
    v17 = __cxa_guard_acquire(&qword_2A1754020);
    if (v17)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema::GetDefaultLocator(v17);
      v19 = sub_29ABD30AC(v24, DefaultLocator);
      v20 = pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchema::GetDefaultLocator(v19);
      sub_29ABD30AC(v25, v20);
      v22[0] = v24;
      v22[1] = 2;
      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(&unk_2A1753E58, v22);
      for (i = 14; i != -14; i -= 14)
      {
        sub_29ABC3488(&v24[i]);
      }

      __cxa_atexit(sub_29ABE62AC, &unk_2A1753E58, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1754020);
    }
  }

  v7 = *v5;
  if (*(v5 + 7428) < 0x11u)
  {
    v7 = v5;
  }

  v8 = *(v5 + 7424);
  if (!v8)
  {
    return pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v6, v5);
  }

  v9 = (v7 + 2);
  v10 = 464 * v8;
  while ((pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects(v9, &unk_2A1753E58) & 1) == 0)
  {
    v9 = (v9 + 464);
    v10 -= 464;
    if (!v10)
    {
      return pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v6, v5);
    }
  }

  v26 = 0x1000000000;
  if (*(v5 + 7428) >= 0x11u)
  {
    v12 = *v5;
  }

  else
  {
    v12 = v5;
  }

  v13 = *(v5 + 7424);
  if (v13)
  {
    v14 = 464 * v13;
    do
    {
      if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects((v12 + 2), &unk_2A1753E58))
      {
        v15 = sub_29ABD2F88(v23, (v12 + 2));
        v16 = pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema::GetDefaultLocator(v15);
        pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchema::GetDefaultLocator(v16);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::ReplacePrefix(v23, v22);
        sub_29AC094F8(v23, v22);
        sub_29ABD3178();
      }

      sub_29AD9391C(v24, v12);
      v12 += 116;
      v14 -= 464;
    }

    while (v14);
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v6, v24);
  return sub_29ABD3844(v24);
}

void sub_29B026B34(_Unwind_Exception *a1)
{
  v2 = &STACK[0x3D8];
  v3 = -112;
  do
  {
    v2 = (sub_29ABC3488(v2) - 56);
    v3 += 56;
  }

  while (v3);
  __cxa_guard_abort(&qword_2A1754020);
  _Unwind_Resume(a1);
}

void sub_29B026BEC(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  sub_29ABD4DDC();
}

void sub_29B026C48(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  sub_29ABD4DDC();
}

void *sub_29B026CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchema::GetSchemaToken(v3);
  return sub_29A1D8028(a2, SchemaToken);
}

void sub_29B026D08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

double sub_29B026D20@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = a1 + 1;
  v7 = (*(*a1[1] + 24))(&v14);
  if ((*pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchema::GetSchemaToken(v7) ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema::GetFromParent(v6, &v16);
    if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v16))
    {
      IsDefined = 1;
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingCollectionMaterialBindingsSchema::GetFromParent(v6, &v15);
      IsDefined = pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v15);
      if (*(&v15 + 1))
      {
        sub_29A014BEC(*(&v15 + 1));
      }
    }

    if (v17)
    {
      sub_29A014BEC(v17);
    }

    if (IsDefined)
    {
      sub_29ABC3244(&v14, &v13);
      v9 = operator new(0x28uLL);
      v11 = a1[1];
      v10 = a1[2];
      *v9 = &unk_2A20AE2F8;
      v9[1] = v11;
      v9[2] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v9[3] = a1[3];
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
    }
  }

  result = *&v14;
  *a3 = v14;
  return result;
}

void sub_29B026F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_29A014BEC(v12);
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

void sub_29B026FB0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  sub_29ABD4DDC();
}

void sub_29B02700C(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  sub_29ABD4DDC();
}

void sub_29B02706C(uint64_t a1@<X0>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema::GetFromParent((a1 + 8), &v3);
  pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema::GetPurposes(&v3, a2);
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29B0270B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B0270D0(uint64_t a1@<X0>, atomic_uint **a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema::GetFromParent((a1 + 8), &v11);
  pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingsSchema::GetDirectMaterialBinding(&v11, a2, &v9);
  pxrInternal__aapl__pxrReserved__::UsdImagingDirectMaterialBindingSchema::GetMaterialPath(&v9, &v7);
  if (v7)
  {
    (*(*v7 + 32))(&v6, 0.0);
    v15 = 0;
    v16 = 0;
    sub_29ABE8360(&v6, &v13);
    v14 = v13;
    v13 = 0uLL;
    v5 = pxrInternal__aapl__pxrReserved__::HdMaterialBindingSchema::Builder::SetPath(&v15, &v14);
    pxrInternal__aapl__pxrReserved__::HdMaterialBindingSchema::Builder::Build(&v17, v5);
    *a3 = v17;
    v17 = 0uLL;
    if (*(&v14 + 1))
    {
      sub_29A014BEC(*(&v14 + 1));
    }

    if (*(&v13 + 1))
    {
      sub_29A014BEC(*(&v13 + 1));
    }

    if (v16)
    {
      sub_29A014BEC(v16);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6 + 1);
    sub_29A1DE3A4(&v6);
    if (v8)
    {
      sub_29A014BEC(v8);
    }
  }

  else
  {
    if (v8)
    {
      sub_29A014BEC(v8);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if (v12)
  {
    sub_29A014BEC(v12);
  }
}

void sub_29B027208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  v18 = *(v16 - 40);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  sub_29A1DCEA8(&a10);
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  _Unwind_Resume(a1);
}

void sub_29B027288(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B0272B8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AE390))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29B0272F8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((result + 36));
    sub_29A1DE3A4((v1 + 32));
    sub_29ABD4DDC();
  }

  return result;
}

void sub_29B02736C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B02739C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AE408))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29B0273DC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((result + 36));
    sub_29A1DE3A4((v1 + 32));
    sub_29ABD4DDC();
  }

  return result;
}

uint64_t sub_29B02744C()
{
  v1 = nullsub_1791;
  return sub_29B02A710(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::~UsdImagingMeshAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter *this)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v7 = *(v6 + 7);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a3@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_29B0276F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B027708@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMeshPrim::UsdImagingDataSourceMeshPrim(v8, a1, &v13, a3);
  sub_29B02A93C(a4, v8);
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

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsRprimTypeSupported(a2, v3 + 7);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::Populate(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialUsdPath(a1, a2);
}

void sub_29B027C84(_Unwind_Exception *a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::~UsdShadeMaterialBindingAPI(va);
  sub_29A1DCEA8(a3);
  _Unwind_Resume(a1);
}

void sub_29B028818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_29A57F434(&a33);
  v35 = *(v33 - 128);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::_IsBuiltinPrimvar(pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
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

  return pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::_IsBuiltinPrimvar(this, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::UpdateForTime(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, _DWORD *a3, __int16 a4)
{
  if (sub_29AF49C14(2))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::UpdateForTime(a1, a2, a3, a4);
  if ((a4 & 0x800) != 0)
  {
    PrimvarDescCache = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimvarDescCache(a1);
    sub_29AFB9C00(PrimvarDescCache, a3);
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v9)
    {
      v9 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    sub_29B02893C(a1, a2, (v9 + 1040));
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
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

  if ((*(v10 + 35) ^ *a4) < 8)
  {
    return 256;
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v11)
  {
    v11 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v11 + 58) ^ *a4) < 8)
  {
    return 256;
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v13)
  {
    v13 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v13 + 130) ^ *a4) < 8)
  {
    return 2304;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v14)
  {
    v14 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v14 + 42) ^ *a4) < 8)
  {
    return 256;
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v15)
  {
    v15 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v15 + 43) ^ *a4) < 8)
  {
    return 256;
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v16)
  {
    v16 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v16 + 53) ^ *a4) < 8)
  {
    return 256;
  }

  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v17)
  {
    v17 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v17 + 91) ^ *a4) < 8)
  {
    return 256;
  }

  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v18)
  {
    v18 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v18 + 60) ^ *a4) < 8)
  {
    return 0x4000;
  }

  v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v19)
  {
    v19 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v19 + 41) ^ *a4) < 8)
  {
    return 0x4000;
  }

  v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v20)
  {
    v20 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v20 + 135) ^ *a4) < 8)
  {
    return 0x4000;
  }

  v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v21)
  {
    v21 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v21 + 23) ^ *a4) < 8)
  {
    return 0x4000;
  }

  v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v22)
  {
    v22 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v22 + 24) ^ *a4) < 8)
  {
    return 0x4000;
  }

  v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v23)
  {
    v23 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v23 + 25) ^ *a4) < 8)
  {
    return 0x4000;
  }

  v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v24)
  {
    v24 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v24 + 18) ^ *a4) < 8)
  {
    return 0x4000;
  }

  v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v25)
  {
    v25 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v25 + 19) ^ *a4) < 8)
  {
    return 0x4000;
  }

  v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v26)
  {
    v26 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v26 + 88) ^ *a4) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v36, a2);
    v36[0] = &unk_2A2060168;
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens))
    {
      sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetNormalsInterpolation(v36, &v34);
    v35 = pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdInterpolation(&v34, v28);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessNonPrefixedPrimvarPropertyChange(this, a2, a3, a4);
  }

  v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v29)
  {
    v29 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  if ((*(v29 + 5) ^ *a4) <= 7)
  {
    goto LABEL_63;
  }

  v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v30)
  {
    v30 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v30 + 88) ^ *a4) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v36, a2);
    v36[0] = &unk_2A205FF58;
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens))
    {
      sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetNormalsInterpolation(v36, &v34);
    v35 = pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdInterpolation(&v34, v32);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessNonPrefixedPrimvarPropertyChange(this, a2, a3, a4);
  }

  v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v33)
  {
    v33 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  if ((*(v33 + 5) ^ *a4) <= 7)
  {
LABEL_63:

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessPrefixedPrimvarPropertyChange(this, a2, a3, a4, 0x800u, 1);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::ProcessPropertyChange(this, a2, a3, a4);
}

void sub_29B029524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::~UsdGeomMesh(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::GetTopology(int a1, pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  sub_29A0ECEEC(&v6, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::GetTopology(const UsdPrim &, const SdfPath &, UsdTimeCode) const");
  v5 = 0;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v4)
  {
    v4 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  sub_29B02893C(a1, a2, (v4 + 1040));
}

void sub_29B029A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if ((a19 & 7) != 0)
  {
    atomic_fetch_add_explicit((a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::GetSubdivTags@<X0>(pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_29A0ECEEC(&v11, "usdImaging", "virtual PxOsdSubdivTags pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::GetSubdivTags(const UsdPrim &, const SdfPath &, UsdTimeCode) const");
  *(a2 + 224) = 0;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdGeomMesh::_GetStaticTfType(v4);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v6);
  result = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a1, SchemaInfo);
  if (result)
  {
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v9)
    {
      v9 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    sub_29AFD7134(a1, (v9 + 480), &v10);
  }

  if (v11)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v12, v11);
  }

  return result;
}

void sub_29B02A038()
{
  v1 = *(v0 - 120);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = *(v0 - 104);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(v0 - 88);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29AB72D70();
}

void sub_29B02A150(pxrInternal__aapl__pxrReserved__::UsdPrim *this@<X1>, pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(this, a2, &v3);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<float>>();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::Get@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>, double a6@<D0>)
{
  sub_29A0ECEEC(&v15, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingMeshAdapter::Get(const UsdPrim &, const SdfPath &, const TfToken &, UsdTimeCode, VtIntArray *) const");
  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v12)
  {
    v12 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v12 + 54) ^ *a3) <= 7)
  {
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v13)
    {
      v13 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    sub_29B02893C(a1, a2, (v13 + 1040));
  }

  result = pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::Get(a1, a2, a3, a4, a5, a6);
  if (v15)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v16, v15);
  }

  return result;
}

void sub_29B02A650(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_29A5888DC(va);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

uint64_t sub_29B02A710(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AE690;
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

void sub_29B02A79C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B02A7C0(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B02A7E8@<D0>(_OWORD *a1@<X8>)
{
  sub_29B02A824(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B02A824(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AE6D0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AE430;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B02A8D0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AE6D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B02A93C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20AE720;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B02A994(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B02A9B0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B02A9D8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B02AA08(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AE770))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29B02AA48()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_SHOW_NATIVE_PROTOTYPE_SCENE_INDICES))
  {
    sub_29B2CF170();
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::New(void *a1)
{
  v2 = 0;
  v3 = 0;
  v1 = 0;
  sub_29B02C560(&v4, a1);
}

void sub_29B02AB04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::UsdImagingNiPrototypePropagatingSceneIndex(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::HdSceneIndexBase(a1);
  *v8 = &unk_2A20AE798;
  v8[14] = &unk_2A20AE7E0;
  v9 = *a2;
  v8[15] = *a2;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 120) &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = a3[1];
  v13 = *a3;
  v14 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = pxrInternal__aapl__pxrReserved__::HdDataSourceHash(&v13, 0.0, 0.0);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  *(a1 + 128) = v11;
  *(a1 + 136) = *a4;
  v12 = a4[1];
  *(a1 + 144) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29AC899B0((a1 + 152));
  *(a1 + 168) = 0;
  *(a1 + 160) = a1 + 168;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = &unk_2A20AE7F8;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = a1;
  *(a1 + 208) = a1;
  *(a1 + 216) = &unk_2A20AE838;
  sub_29B02AF68(*(a1 + 136), a2, *(a1 + 128), &v13);
}

void sub_29B02AE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  sub_29ABD4DDC();
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::_InstanceAggregationSceneIndexObserver::_InstanceAggregationSceneIndexObserver(void *result, uint64_t a2)
{
  *result = &unk_2A20AE7F8;
  result[1] = 0;
  result[2] = a2;
  return result;
}

{
  *result = &unk_2A20AE7F8;
  result[1] = 0;
  result[2] = a2;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::_MergingSceneIndexObserver::_MergingSceneIndexObserver(void *result, uint64_t a2)
{
  *result = &unk_2A20AE838;
  result[1] = 0;
  result[2] = a2;
  return result;
}

{
  *result = &unk_2A20AE838;
  result[1] = 0;
  result[2] = a2;
  return result;
}

void sub_29B02AF68(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a3;
  *a4 = 0;
  a4[1] = 0;
  *&v5 = a2;
  v4 = sub_29B02BFC0((a1 + 64), a2, &unk_29B4D6118, &v5);
  *&v5 = &v7;
  sub_29B02C144(v4 + 7, &v7, &unk_29B4D6118, &v5);
  if (v4[6])
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  v6 = 0;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::_Populate(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::HdSceneIndexPrimView(v5, a2, v3);
  v4 = *pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::begin(v5);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::~UsdImagingNiPrototypePropagatingSceneIndex(pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex *this)
{
  v2 = (this + 168);
  sub_29B02C93C(this + 160, *(this + 21));
  *(this + 20) = v2;
  *(this + 22) = 0;
  *v2 = 0;
  *(this + 23) = 0;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_RemoveRef();
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::~UsdImagingNiPrototypePropagatingSceneIndex(this);
}

void sub_29B02B5B0(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v5 = sub_29A31B8F0(a1 + 64, a2);
  if (a1 + 72 != v5)
  {
    v6 = v5;
    sub_29B02C498((v5 + 56), a3);
    if (!v6[9])
    {
      v7 = sub_29B2C6E8C((v6 + 5));
      if (!(v8 & 1 | v7))
      {
        sub_29A03AFE8((a1 + 64), v6);
        sub_29B2CF034((v6 + 4));

        operator delete(v6);
      }
    }
  }
}

pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::_AddPrim(pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex::GetPrototypeNameFromInstancerPath(a2, &v8);
  if (v8)
  {
    v9 = a2;
    v5 = sub_29A88FF4C(this + 20, a2, &unk_29B4D6118, &v9);
    sub_29B02CACC(v5 + 5, 0);
    pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex::GetBindingScopeFromInstancerPath(a2, &v11);
    v6 = sub_29AC1199C(this + 23);
    (*(*v6 + 16))(&v9);
    v7 = v10;
    v10 = 0uLL;
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
    sub_29A1DE3A4(&v11);
    pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::_New(&v8, &v7, this + 17);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::_RemovePrim(uint64_t this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (*(this + 168))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::GetInputScenes(pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex *this)
{
  v1 = atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_SHOW_NATIVE_PROTOTYPE_SCENE_INDICES);
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
  }

  if (*v1 != 1)
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
  }

  v2 = *(*sub_29AC899F8(this + 19) + 40);

  return v2();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::GetEncapsulatedScenes(pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex *this)
{
  v2 = *MEMORY[0x29EDCA608];
  v1 = *(this + 19);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::GetPrim(pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC899F8(this + 19) + 16);

  return v2();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC899F8(this + 19) + 24);

  return v2();
}

pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::_InstanceAggregationSceneIndexObserver::PrimsAdded(pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens_StaticTokenType *result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 260) >= 0x11u)
  {
    v3 = *a3;
  }

  else
  {
    v3 = a3;
  }

  v4 = *(a3 + 256);
  if (v4)
  {
    v5 = result;
    v6 = 16 * v4;
    do
    {
      result = pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::_AddPrim(*(v5 + 2), v3);
      v3 = (v3 + 16);
      v6 -= 16;
    }

    while (v6);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::_InstanceAggregationSceneIndexObserver::PrimsRemoved(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 128);
  if (*(a3 + 132) >= 0x11u)
  {
    v4 = *a3;
  }

  else
  {
    v4 = a3;
  }

  if (v3)
  {
    v5 = result;
    v6 = 8 * v3;
    do
    {
      result = pxrInternal__aapl__pxrReserved__::UsdImagingNiPrototypePropagatingSceneIndex::_RemovePrim(*(v5 + 16), v4);
      v4 = (v4 + 8);
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

void sub_29B02BD2C(pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver *a1, const void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver(a1, a2);

  operator delete(v2);
}

void sub_29B02BD54(pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver *a1, const void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver(a1, a2);

  operator delete(v2);
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **sub_29B02BD7C@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if (*a2)
  {
    v6 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
    appended = pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(v6, a2, &v10);
    PrototypePath = pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndex::GetPrototypePath(appended);
    sub_29B02C268(a1, &v10, PrototypePath, &v12);
    *a3 = v12;
    v12 = 0;
    sub_29B02C308(&v12);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
    return sub_29A1DE3A4(&v10);
  }

  else
  {
    sub_29B02C210(a1, &v12);
    *a3 = v12;
    v12 = 0;
    return sub_29B02C2D8(&v12);
  }
}

uint64_t *sub_29B02BFC0(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v6 = sub_29A153CF4(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29B02C058(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

double sub_29B02C058@<D0>(uint64_t a1@<X0>, uint64_t **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x50uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v7 = **a2;
  *(v6 + 4) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(v6 + 4) &= 0xFFFFFFFFFFFFFFF8;
  }

  result = 0.0;
  *(v6 + 56) = 0u;
  *(v6 + 9) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 7) = v6 + 64;
  *(a3 + 16) = 1;
  return result;
}

void sub_29B02C0E8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29B02C0E8(a1, *a2);
    sub_29B02C0E8(a1, a2[1]);
    sub_29B2CF0B8((a2 + 4));

    operator delete(a2);
  }
}

uint64_t **sub_29B02C144(uint64_t **a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v8 = *a2;
    while (1)
    {
      while (1)
      {
        v9 = v6;
        v10 = v6[4];
        if (v8 >= v10)
        {
          break;
        }

        v6 = *v9;
        v7 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = v9[1];
      if (!v6)
      {
        v7 = v9 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = a1 + 1;
LABEL_10:
    v11 = operator new(0x48uLL);
    *(v11 + 4) = **a4;
    *(v11 + 56) = 0u;
    *(v11 + 40) = 0u;
    sub_29A00B204(a1, v9, v7, v11);
    return v11;
  }

  return v9;
}

uint64_t sub_29B02C210@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0xA8uLL);
  result = pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypePruningSceneIndex::UsdImaging_NiPrototypePruningSceneIndex(v4, a1);
  *a2 = v4;
  return result;
}

uint64_t sub_29B02C268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0xC0uLL);
  result = pxrInternal__aapl__pxrReserved__::UsdImagingRerootingSceneIndex::UsdImagingRerootingSceneIndex(v8, a1, a2, a3);
  *a4 = v8;
  return result;
}

uint64_t sub_29B02C338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x1340uLL);
  result = pxrInternal__aapl__pxrReserved__::HdFlatteningSceneIndex::HdFlatteningSceneIndex(v6, a1, a2);
  *a3 = v6;
  return result;
}

uint64_t sub_29B02C3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0xA8uLL);
  result = pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex::UsdImaging_NiInstanceAggregationSceneIndex(v8, a1, a2, a3);
  *a4 = v8;
  return result;
}

void sub_29B02C498(uint64_t **a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    v4 = (a1 + 1);
    do
    {
      v5 = v2[4];
      v6 = v5 >= a2;
      v7 = v5 < a2;
      if (v6)
      {
        v4 = v2;
      }

      v2 = v2[v7];
    }

    while (v2);
    if (v4 != (a1 + 1) && v4[4] <= a2)
    {
      v8 = sub_29B2C6E8C((v4 + 5));
      if (!(v9 & 1 | v8))
      {
        v10 = sub_29B2C6E8C((v4 + 7));
        if (!(v11 & 1 | v10))
        {
          sub_29A03AFE8(a1, v4);
          sub_29B2CF0B8((v4 + 4));

          operator delete(v4);
        }
      }
    }
  }
}

void sub_29B02C5D4(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20AE8E0;
  sub_29B02C6C4(a1 + 3, a2);
}

void sub_29B02C650(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AE8E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B02C748(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_29A124AB0(va);
  sub_29ABD4DDC();
}

uint64_t sub_29B02C770(uint64_t a1, uint64_t a2)
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

void sub_29B02C808(uint64_t a1, uint64_t a2)
{
  sub_29B02C85C(a2 + 64, *(a2 + 72));
  sub_29B02C88C(a2 + 32);
  v3 = (a2 + 8);
  sub_29A124AB0(&v3);
  sub_29ABD4DDC();
}

void sub_29B02C85C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29B2CF1A4(a2, a1);
  }
}

uint64_t sub_29B02C88C(uint64_t a1)
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

void sub_29B02C93C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29B02C93C(a1, *a2);
    sub_29B02C93C(a1, a2[1]);
    sub_29B02C998((a2 + 4));

    operator delete(a2);
  }
}

_DWORD *sub_29B02C998(uint64_t a1)
{
  sub_29B02CACC((a1 + 8), 0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

void *sub_29B02C9E4(void *a1, uint64_t a2)
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

void sub_29B02CA40(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B02CA58(void *a1, uint64_t a2)
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

void sub_29B02CAB4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29B02CACC(uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_29B02CB08(result);
  }

  return result;
}

void sub_29B02CB08(uint64_t *a1)
{
  v2 = sub_29AC899F8(a1 + 1);
  pxrInternal__aapl__pxrReserved__::HdMergingSceneIndex::RemoveInputScene(v2, a1);
  sub_29AC4F160();
}

void sub_29B02CB58(pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndex *a1, uint64_t a2, uint64_t a3, void *a4)
{
  InstancerPath = pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndex::GetInstancerPath(a1);
  sub_29B02C268(a3, InstancerPath, a2, &v9);
  *a1 = v9;
  v9 = 0;
  sub_29B02C308(&v9);
  *(a1 + 1) = *a4;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdMergingSceneIndex>::_AddRef();
}

uint64_t sub_29B02CC10()
{
  v1 = nullsub_1792;
  return sub_29B02EE64(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter::~UsdImagingNurbsCurvesAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter *this)
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

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsRprimTypeSupported(a2, v3 + 10);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter::Populate(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialUsdPath(a1, a2);
}

void sub_29B02CE2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter::_IsBuiltinPrimvar(pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter::UpdateForTime(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, _DWORD *a3, __int16 a4)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::UpdateForTime(a1, a2, a3, a4);
  PrimvarDescCache = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimvarDescCache(a1);
  result = sub_29AFB9C00(PrimvarDescCache, a3);
  if (a4 < 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v15, a2);
    v16 = 0;
    v15[0] = &unk_2A2060598;
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v10)
    {
      v10 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v15, (v10 + 48), v14);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v14, v11);
  }

  if ((a4 & 0x800) != 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v15, a2);
    v16 = 0;
    v15[0] = &unk_2A2060598;
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v12)
    {
      v12 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v15, (v12 + 40), v14);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v14, v13);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
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

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v11)
  {
    v11 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v11 + 165) ^ *a4) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v28, a2);
    v28[0] = &unk_2A205FD48;
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens))
    {
      sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomCurves::GetWidthsInterpolation(v28, &v26);
    v27 = pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdInterpolation(&v26, v13);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessNonPrefixedPrimvarPropertyChange(this, a2, a3, a4);
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v14)
  {
    v14 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v14 + 88) ^ *a4) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v28, a2);
    v28[0] = &unk_2A2060168;
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens))
    {
      sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetNormalsInterpolation(v28, &v26);
    v27 = pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdInterpolation(&v26, v16);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessNonPrefixedPrimvarPropertyChange(this, a2, a3, a4);
  }

  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v18)
  {
    v18 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  if ((*(v18 + 6) ^ *a4) <= 7)
  {
    v19 = this;
    v20 = a2;
    v21 = a3;
    v22 = a4;
    v23 = 0x8000;
    goto LABEL_30;
  }

  v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v24)
  {
    v24 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  v25 = *(v24 + 5) ^ *a4;
  v19 = this;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  if (v25 <= 7)
  {
    v23 = 2048;
LABEL_30:

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessPrefixedPrimvarPropertyChange(v19, v20, v21, v22, v23, 1);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::ProcessPropertyChange(this, a2, a3, a4);
}

void sub_29B02E20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::~UsdGeomPointBased(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter::GetTopology(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
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

void sub_29B02E3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::~HdBasisCurvesTopology(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter::Get@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>, double a6@<D0>)
{
  sub_29A0ECEEC(&v22, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter::Get(const UsdPrim &, const SdfPath &, const TfToken &, UsdTimeCode, VtIntArray *) const");
  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v12)
  {
    v12 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v12 + 54) ^ *a3) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v20, a2);
    v21 = 0;
    v20[0] = &unk_2A2060598;
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v13)
    {
      v13 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v20, (v13 + 40), v19);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v19, v14);
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v15)
  {
    v15 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v15 + 84) ^ *a3) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v20, a2);
    v21 = 0;
    v20[0] = &unk_2A2060598;
    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v16)
    {
      v16 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v20, (v16 + 48), v19);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v19, v17);
  }

  result = pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::Get(a1, a2, a3, a4, a5, a6);
  if (v22)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v23, v22);
  }

  return result;
}

void sub_29B02EA54(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_29A5888DC(va);
  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v7 = *(v6 + 11);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a3@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_29B02ECE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B02ECFC@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceNurbsCurvesPrim::UsdImagingDataSourceNurbsCurvesPrim(v8, a1, &v13, a3);
  sub_29B02F090(a4, v8);
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

double pxrInternal__aapl__pxrReserved__::UsdImagingNurbsCurvesAdapter::InvalidateImagingSubprim@<D0>(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X3>, int a4@<W4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceNurbsCurvesPrim::Invalidate(a1, a2, a3, a4, a5);
  }

  *&result = 0x800000000;
  *(a5 + 56) = 0x800000000;
  return result;
}

uint64_t sub_29B02EE64(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AEB90;
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

void sub_29B02EEF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B02EF14(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B02EF3C@<D0>(_OWORD *a1@<X8>)
{
  sub_29B02EF78(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B02EF78(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AEBD0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AE930;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B02F024(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AEBD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B02F090(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20AEC20;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B02F0E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B02F104(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B02F12C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B02F15C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AEC70))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29B02F19C()
{
  v1 = nullsub_1793;
  return sub_29B0302C0(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNurbsPatchAdapter::~UsdImagingNurbsPatchAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingNurbsPatchAdapter *this)
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

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingNurbsPatchAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingNurbsPatchAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsRprimTypeSupported(a2, v3 + 7);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNurbsPatchAdapter::Populate(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialUsdPath(a1, a2);
}

void sub_29B02F3B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNurbsPatchAdapter::GetMeshPoints(pxrInternal__aapl__pxrReserved__::UsdPrim *a1)
{
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v2)
  {
    v2 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a1, (v2 + 816), v3);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingNurbsPatchAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingNurbsPatchAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
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

  if ((*(v10 + 151) ^ *a4) < 8)
  {
    return 256;
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v11)
  {
    v11 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v11 + 163) ^ *a4) < 8)
  {
    return 256;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v12)
  {
    v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v12 + 91) ^ *a4) < 8)
  {
    return 256;
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::ProcessPropertyChange(this, a2, a3, a4);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingNurbsPatchAdapter::GetMeshTopology(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v3, a1);
  v2[62] = 0;
  v3 = &unk_2A20600B8;
  pxrInternal__aapl__pxrReserved__::UsdGeomNurbsPatch::GetUVertexCountAttr(v1, v2);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<int>();
}

void sub_29B02FDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingNurbsPatchAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingNurbsPatchAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v7 = *(v6 + 9);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingNurbsPatchAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a3@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_29B030144(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B030158@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceNurbsPatchPrim::UsdImagingDataSourceNurbsPatchPrim(v8, a1, &v13, a3);
  sub_29B0304EC(a4, v8);
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

double pxrInternal__aapl__pxrReserved__::UsdImagingNurbsPatchAdapter::InvalidateImagingSubprim@<D0>(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X3>, int a4@<W4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceNurbsPatchPrim::Invalidate(a1, a2, a3, a4, a5);
  }

  *&result = 0x800000000;
  *(a5 + 56) = 0x800000000;
  return result;
}

uint64_t sub_29B0302C0(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AEEF8;
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

void sub_29B03034C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B030370(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B030398@<D0>(_OWORD *a1@<X8>)
{
  sub_29B0303D4(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B0303D4(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AEF38;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AEC98;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B030480(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AEF38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B0304EC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20AEF88;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B030544(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B030560(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B030588(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B0305B8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AEFD8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29B0305F8()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_SHOW_POINT_PROTOTYPE_SCENE_INDICES))
  {
    sub_29B2CF1FC();
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex::_GetDataSource(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex *this@<X0>, void *a2@<X8>)
{
  (*(*this + 16))(&v6);
  v8 = v7;
  v7 = 0uLL;
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetFromParent(&v8, &v6);
  pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetPiPropagatedPrototypes(&v6, &v4);
  v5 = v4;
  v4 = 0uLL;
  sub_29B030728(&v5, a2);
  if (*(&v5 + 1))
  {
    sub_29A014BEC(*(&v5 + 1));
  }

  if (*(&v4 + 1))
  {
    sub_29A014BEC(*(&v4 + 1));
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if (*(&v8 + 1))
  {
    sub_29A014BEC(*(&v8 + 1));
  }
}

void sub_29B0306FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_29A014BEC(a15);
  }

  v17 = *(v15 - 24);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B030728@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A20AF138, 0)) != 0)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex::_CreateDataSource@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t *a3@<X8>)
{
  v24 = *MEMORY[0x29EDCA608];
  v6 = operator new(0x20uLL);
  v6[3] = 0;
  v6[2] = 0;
  *v6 = &unk_2A20AF160;
  v6[1] = v6 + 2;
  sub_29B033074(a3, v6);
  sub_29A1E21F4(&v20, a2);
  v7 = sub_29A1E2240(&v21, a2 + 1);
  v22 = 0;
  SchemaToken = pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetSchemaToken(v7);
  memset(v14, 0, sizeof(v14));
  v9 = a3[1];
  v12 = *a3;
  v13 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::Builder::SetPiPropagatedPrototypes(v14, &v12);
  pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::Builder::Build(v10, &v15);
  v16 = v15;
  v15 = 0uLL;
  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(SchemaToken, &v16, &v17);
  v23 = v17;
  v17 = 0uLL;
  memset(v18, 0, sizeof(v18));
  sub_29AC3E6DC(v18, &v20, &v24, 1uLL);
  (*(*this + 40))(this, v18);
  v19 = v18;
  sub_29AC3E968(&v19);
  if (*(&v23 + 1))
  {
    sub_29A014BEC(*(&v23 + 1));
  }

  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21);
  sub_29A1DE3A4(&v20);
  if (*(&v17 + 1))
  {
    sub_29A014BEC(*(&v17 + 1));
  }

  if (*(&v16 + 1))
  {
    sub_29A014BEC(*(&v16 + 1));
  }

  if (*(&v15 + 1))
  {
    sub_29A014BEC(*(&v15 + 1));
  }

  if (v13)
  {
    sub_29A014BEC(v13);
  }

  return sub_29ABF7D9C(v14);
}

void sub_29B0309B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex::_GetOrCreateDataSource(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex::_GetDataSource(this, &v7);
  if (v7)
  {
    v6 = v8;
    *a3 = v7;
    a3[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex::_CreateDataSource(this, a2, a3);
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29B030AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex::AddPropagatedPrototype(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4)
{
  v4 = MEMORY[0x2A1C7C4A8](this, a2, a3);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v4;
  v20 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex::_GetOrCreateDataSource(v4, v9, &v15);
  sub_29B030D64(v15, v8, v6);
  if ((atomic_load_explicit(&qword_2A1754060, memory_order_acquire) & 1) == 0)
  {
    v12 = __cxa_guard_acquire(&qword_2A1754060);
    if (v12)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetDefaultLocator(v12);
      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
      if (!v14)
      {
        v14 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, (v14 + 64), dword_2A1754028);
      __cxa_atexit(sub_29ABC33B4, dword_2A1754028, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1754060);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(v16, dword_2A1754028);
  sub_29ABD2F24(v17, v10, v16);
  v19 = 0x1000000001;
  sub_29ABD3720(v17, v18, v18);
  (*(*v11 + 56))(v11, v18);
  sub_29ABD3844(v18);
  sub_29ABD3178();
}

void sub_29B030CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  __cxa_guard_abort(&qword_2A1754060);
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(a1);
}

int *sub_29B030D64(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v6 = a2;
  v4 = sub_29B032D44((a1 + 8), a2, &unk_29B4D6118, &v6);
  sub_29A2258F0(v4 + 10, a3);
  return sub_29A225948(v4 + 11, a3 + 1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex::RemovePropagatedPrototype(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v10[17] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex::_GetDataSource(this, &v6);
  if (v6)
  {
    sub_29B032E48((v6 + 8), a3);
    if (!*(v6 + 24))
    {
      sub_29A1E21F4(&v8, a2);
      sub_29A1E2240(&v9, a2 + 1);
      v10[16] = 0x1000000001;
      sub_29A1E21F4(v10, &v8);
      sub_29A1E2240(v10 + 1, &v9);
      (*(*this + 48))(this, v10);
      sub_29AC26348(v10);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
      sub_29A1DE3A4(&v8);
    }
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void sub_29B030EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_RerootingSceneIndex@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X1>, void *a2@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, void *a4@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath(this) && pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath(a3))
  {
    *a4 = *a2;

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
  }

  sub_29B02C268(a2, this, a3, &v9);
  *a4 = v9;
  v9 = 0;
  return sub_29B02C308(&v9);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_InstancerObserver(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v7);
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v7 + 1);
  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v4);
  v6 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v5);
  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_InstancerObserver(a1, a2, &v7, v5, v6);
}

{
  v7 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v7);
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v7 + 1);
  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v4);
  v6 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v5);
  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_InstancerObserver(a1, a2, &v7, v5, v6);
}

void sub_29B031068(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_InstancerObserver(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::SdfPath *a4, _DWORD *a5)
{
  *a1 = &unk_2A20AF000;
  *(a1 + 8) = 0;
  *(a1 + 16) = *a2;
  v9 = *(a2 + 8);
  *(a1 + 24) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 32), a4);
  sub_29A1E2240((a1 + 36), a4 + 1);
  sub_29A1E21F4((a1 + 40), a5);
  sub_29A1E2240((a1 + 44), a5 + 1);
  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_RerootingSceneIndex(a4, *a2, a4, &v10);
  pxrInternal__aapl__pxrReserved__::UsdImaging_PiPrototypeSceneIndex::New(&v10);
}

void sub_29B0311F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11);
    }
  }

  sub_29B0331B0(v11, *v12);
  sub_29ABD4DDC();
}

void sub_29B031334(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_Populate(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver *this)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::HdSceneIndexPrimView(v2, this + 48, this + 32);
  v1 = *pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::begin(v2);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::~_InstancerObserver(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver *this)
{
  v11[17] = *MEMORY[0x29EDCA608];
  v2 = *(this + 10);
  if (v2)
  {
    v11[16] = 0x1000000000;
    if (v2 >= 0x11)
    {
      sub_29AC3D990(v11, v2);
    }

    v3 = *(this + 8);
    v4 = this + 72;
    if (v3 != this + 72)
    {
      do
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v10, (v3 + 32), (this + 32), (this + 40), 1);
        sub_29AC4DAF8(v11, &v10);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
        sub_29A1DE3A4(&v10);
        v5 = *(v3 + 1);
        if (v5)
        {
          do
          {
            v6 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v6 = *(v3 + 2);
            v7 = *v6 == v3;
            v3 = v6;
          }

          while (!v7);
        }

        v3 = v6;
      }

      while (v6 != v4);
    }

    v8 = sub_29AF2A104((*(this + 2) + 8));
    (*(*v8 + 48))(v8, v11);
    sub_29B0331B0(this + 64, *(this + 9));
    *(this + 9) = 0;
    *(this + 10) = 0;
    *(this + 8) = v4;
    sub_29AC26348(v11);
  }

  v9 = sub_29AC899F8((*(this + 2) + 24));
  pxrInternal__aapl__pxrReserved__::HdMergingSceneIndex::RemoveInputScene(v9, this + 7);
  sub_29B0331B0(this + 64, *(this + 9));
  sub_29ABD4DDC();
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::~_InstancerObserver(this);
}

void sub_29B031754(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_InstancerHash(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(this + 10);
  v6 = *(this + 11);
  v7 = v5 + *(a2 + 1) + ((*(a2 + 1) + *a2 + (*(a2 + 1) + *a2) * (*(a2 + 1) + *a2)) >> 1);
  v8 = v6 + v5 + ((v7 + v7 * v7) >> 1);
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("ForInstancer%zx", a2, a3, bswap64(0x9E3779B97F4A7C55 * (v6 + ((v8 + v8 * v8) >> 1))));
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a4);
  if (v10 < 0)
  {
    operator delete(__p);
  }
}

void sub_29B03185C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerTopology(pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema *a1@<X0>, _OWORD *a2@<X8>)
{
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetSchemaToken(a1);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  sub_29ABE9C5C(a1, &v6);
  v7 = v6;
  v6 = 0uLL;
  v5 = pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::Builder::SetPrototypes(&v8, &v7);
  pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::Builder::Build(v5, &v12);
  v13 = v12;
  v12 = 0uLL;
  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(SchemaToken, &v13, &v14);
  *a2 = v14;
  v14 = 0uLL;
  if (*(&v13 + 1))
  {
    sub_29A014BEC(*(&v13 + 1));
  }

  if (*(&v12 + 1))
  {
    sub_29A014BEC(*(&v12 + 1));
  }

  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }

  if (*(&v6 + 1))
  {
    sub_29A014BEC(*(&v6 + 1));
  }

  if (*(&v11 + 1))
  {
    sub_29A014BEC(*(&v11 + 1));
  }

  if (*(&v10 + 1))
  {
    sub_29A014BEC(*(&v10 + 1));
  }

  if (*(&v9 + 1))
  {
    sub_29A014BEC(*(&v9 + 1));
  }

  if (*(&v8 + 1))
  {
    sub_29A014BEC(*(&v8 + 1));
  }
}

void sub_29B031974(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  v7 = *(v5 - 56);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  v8 = *(v5 - 72);
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  if (a5)
  {
    sub_29A014BEC(a5);
  }

  if (a3)
  {
    sub_29A014BEC(a3);
  }

  sub_29AD0B460(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_UpdateInstancerPrototypes(void *a1, uint64_t **a2, pxrInternal__aapl__pxrReserved__::SdfPath *this, uint64_t a4)
{
  v28 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v23, this, (a1 + 4), (a1 + 5), 1);
  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_InstancerHash(a1, this, v8, &v22);
  sub_29B0333C4(v20, *(a4 + 32), *(a4 + 32) + 8 * *a4);
  if (*a2 != (a2 + 1))
  {
    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::find<pxrInternal__aapl__pxrReserved__::SdfPath>();
  }

  sub_29A1E2AEC(v20, *(&v20[0] + 1));
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_29B031ED4(v20, *a4);
  v9 = *a4;
  if (*a4)
  {
    v10 = *(a4 + 32);
    v11 = 8 * v9;
    do
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(v10, &v22, v19);
      sub_29B033448(v20, v19);
      v25 = v10;
      v12 = (sub_29A88FF4C(a2, v10, &unk_29B4D6118, &v25) + 10);
      if (!*v12)
      {
        v13 = operator new(0x58uLL);
        pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_InstancerObserver(v13, a1 + 2, &v23, v10, v19);
        sub_29B03353C(v12, v13);
        v14 = sub_29B031E54((a1[2] + 16));
        pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_UsdPrimInfoSceneIndex::AddPropagatedPrototype(v14, v10, &v22, v19);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v19 + 1);
      sub_29A1DE3A4(v19);
      v10 = (v10 + 8);
      v11 -= 8;
    }

    while (v11);
  }

  v15 = sub_29AF2A104((a1[2] + 8));
  sub_29A1E21F4(&v25, &v23);
  sub_29A1E2240(&v25 + 1, &v23 + 1);
  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v16)
  {
    v16 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  v17 = *(v16 + 21);
  v26 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerTopology(v20, &v27);
  memset(v19, 0, sizeof(v19));
  sub_29AC3E6DC(v19, &v25, &v28, 1uLL);
  (*(*v15 + 40))(v15, v19);
  v24 = v19;
  sub_29AC3E968(&v24);
  if (*(&v27 + 1))
  {
    sub_29A014BEC(*(&v27 + 1));
  }

  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25 + 1);
  sub_29A1DE3A4(&v25);
  sub_29ABED558(v20);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23 + 1);
  return sub_29A1DE3A4(&v23);
}

void sub_29B031D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  sub_29A1DCEA8(va2);
  sub_29ABED558(va);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_29B031E54(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    v6 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", v6, 0x2F);
  }

  return result;
}

void sub_29B031ED4(unint64_t *a1, unint64_t a2)
{
  v3 = a1[4];
  if (!v3)
  {
    if (!a2)
    {
      return;
    }

    v6 = sub_29ABF47AC(a1, a2);
    goto LABEL_9;
  }

  if (a1[3])
  {
    v4 = a1;
  }

  else
  {
    v4 = (v3 - 2);
  }

  if (*v4 < a2)
  {
    v5 = *a1;
    v6 = sub_29ABF47AC(a1, a2);
    sub_29A7D8ED8(v3, &v3[2 * v5], v6);
LABEL_9:
    sub_29ABED558(a1);
    a1[4] = v6;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_GetPrototypes(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetFromParent((a1 + 8), &v5);
  pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetPrototypes(&v5, &v3);
  if (v3)
  {
    (*(*v3 + 32))(v3, 0.0);
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  if (v4)
  {
    sub_29A014BEC(v4);
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B031FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_UpdateInstancer(void *a1, uint64_t **a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = sub_29AC1199C(a1 + 6);
  (*(*v6 + 16))(v7);
  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_GetPrototypes(v7, v9);
  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_UpdateInstancerPrototypes(a1, a2, a3, v9);
  sub_29ABED558(v9);
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  if ((v7[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v7[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29B0320E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  sub_29ABED558(va);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  if ((a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_UpdateInstancer(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v7[0] = a2;
  v6 = sub_29A389294((a1 + 64), a2, &unk_29B4D6118, v7);
  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_GetPrototypes(a3, v7);
  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_UpdateInstancerPrototypes(a1, v6 + 5, a2, v7);
  sub_29ABED558(v7);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_UpdateInstancer(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v5 = a2;
  v4 = sub_29A389294(this + 8, a2, &unk_29B4D6118, &v5);
  pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_UpdateInstancer(this, v4 + 5, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::PrimsAdded(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver *this, uint64_t a2, uint64_t a3)
{
  v12[17] = *MEMORY[0x29EDCA608];
  if (*(a3 + 260) >= 0x11u)
  {
    v3 = *a3;
  }

  else
  {
    v3 = a3;
  }

  v4 = *(a3 + 256);
  if (v4)
  {
    v6 = 16 * v4;
    do
    {
      v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      if (!v7)
      {
        v7 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      if ((*(v7 + 21) ^ *(v3 + 1)) > 7)
      {
        if (sub_29B033578(this + 8))
        {
          v8 = sub_29AF2A104((*(this + 2) + 8));
          pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v9, v3, (this + 32), (this + 40), 1);
          sub_29A1E21F4(&v10, &v9);
          sub_29A1E2240(&v11, &v9 + 1);
          v12[16] = 0x1000000001;
          sub_29A1E21F4(v12, &v10);
          sub_29A1E2240(v12 + 1, &v11);
          (*(*v8 + 48))(v8, v12);
          sub_29AC26348(v12);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
          sub_29A1DE3A4(&v10);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9 + 1);
          sub_29A1DE3A4(&v9);
        }
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_UpdateInstancer(this, v3);
      }

      v3 = (v3 + 16);
      v6 -= 16;
    }

    while (v6);
  }
}

void sub_29B0323D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, void *a12)
{
  sub_29AC26348(&a12);
  sub_29AC3C0E4(&a11);
  sub_29A1DCEA8(&a9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::PrimsDirtied(void *a1, uint64_t a2, uint64_t *a3)
{
  if ((atomic_load_explicit(&qword_2A17540A0, memory_order_acquire) & 1) == 0)
  {
    v9 = __cxa_guard_acquire(&qword_2A17540A0);
    if (v9)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetDefaultLocator(v9);
      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
      if (!v11)
      {
        v11 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, (v11 + 8), dword_2A1754068);
      __cxa_atexit(sub_29ABC33B4, dword_2A1754068, &dword_299FE7000);
      __cxa_guard_release(&qword_2A17540A0);
    }
  }

  if (*(a3 + 1857) >= 0x11u)
  {
    v5 = *a3;
  }

  else
  {
    v5 = a3;
  }

  v6 = *(a3 + 1856);
  if (v6)
  {
    v7 = 464 * v6;
    do
    {
      if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Contains((v5 + 1), dword_2A1754068))
      {
        v8 = sub_29A55CDFC((a1 + 8));
        if (a1 + 9 != v8)
        {
          pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::_UpdateInstancer(a1, (v8 + 40), v5);
        }
      }

      v5 += 58;
      v7 -= 464;
    }

    while (v7);
  }
}

void **pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::PrimsRemoved(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v13 = 0x1000000000;
  v3 = *(a3 + 128);
  if (*(a3 + 132) >= 0x11u)
  {
    v4 = *a3;
  }

  else
  {
    v4 = a3;
  }

  if (v3)
  {
    v6 = (a1 + 72);
    v7 = (v4 + 8 * v3);
    do
    {
      v8 = v6;
      if (*v6)
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
      }

      while (v6 != v8 && pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((v8 + 4), v4))
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v11, (v8 + 4), (a1 + 32), (a1 + 40), 1);
        sub_29AC4DAF8(v12, &v11);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
        sub_29A1DE3A4(&v11);
        v8 = sub_29B0335C0((a1 + 64), v8);
      }

      v4 = (v4 + 8);
    }

    while (v4 != v7);
    if (v13)
    {
      v9 = sub_29AF2A104((*(a1 + 16) + 8));
      (*(*v9 + 48))(v9, v12);
    }
  }

  return sub_29AC26348(v12);
}

void sub_29B0326DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AC26348(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex::UsdImagingPiPrototypePropagatingSceneIndex(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::HdSceneIndexBase(a1);
  *v3 = &unk_2A20AF040;
  v3[14] = &unk_2A20AF088;
  sub_29B03360C(&v4, a2);
}

void sub_29B032834(_Unwind_Exception *a1)
{
  v3 = v2;
  operator delete(v3);
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((v1 + 17), v5);
  v6 = v1[16];
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::~HdSceneIndexBase(v1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex::GetInputScenes(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex *this)
{
  v1 = atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_SHOW_POINT_PROTOTYPE_SCENE_INDICES);
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
  }

  if (*v1 != 1)
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
  }

  v2 = *(*sub_29AC899F8((*(this + 15) + 24)) + 40);

  return v2();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex::GetEncapsulatedScenes(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex *this)
{
  v2 = *MEMORY[0x29EDCA608];
  v1 = *(*(this + 15) + 24);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex::GetPrim(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC899F8((*(this + 15) + 24)) + 16);

  return v2();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC899F8((*(this + 15) + 24)) + 24);

  return v2();
}

pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex::_MergingSceneIndexObserver *pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex::_MergingSceneIndexObserver::_MergingSceneIndexObserver(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex::_MergingSceneIndexObserver *this, pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex *a2)
{
  *this = &unk_2A20AF0A0;
  *(this + 1) = 0;
  *(this + 2) = a2;
  sub_29B033A10(v5, this);
  v3 = sub_29AC899F8((*(*(this + 2) + 120) + 24));
  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::AddObserver(v3, v5);
  sub_29B28F9E0(v5);
  return this;
}

void sub_29B032C78(pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver *a1, const void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver(a1, a2);

  operator delete(v2);
}

void sub_29B032CA0(uint64_t a1)
{
  sub_29B033504((a1 + 160));
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 136), v2);
  v3 = *(a1 + 128);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::~HdSceneIndexBase(a1);
}

void sub_29B032CF0(uint64_t a1)
{
  sub_29B033504((a1 + 160));
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 136), v2);
  v3 = *(a1 + 128);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::~HdSceneIndexBase(a1);

  operator delete(v4);
}

uint64_t *sub_29B032D44(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v6 = sub_29A153CF4(a1, &v10, a2);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x30uLL);
    v11 = *a4;
    sub_29B032DD8((v7 + 4), &v11);
    sub_29A00B204(a1, v10, v8, v7);
  }

  return v7;
}

uint64_t sub_29B032DD8(uint64_t a1, uint64_t **a2)
{
  v3 = **a2;
  *a1 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 12));
  return a1;
}

uint64_t sub_29B032E48(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_29A31B8F0(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_29A03AFE8(a1, v3);
  sub_29A349A74((v4 + 4));
  operator delete(v4);
  return 1;
}

void sub_29B032EA4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20AF160;
  sub_29A349AC0(a1 + 8, *(a1 + 2));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29B032F00(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20AF160;
  sub_29A349AC0(a1 + 8, *(a1 + 2));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void *sub_29B032F60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A1D7F98(a2, a1[3]);
  v5 = a1[1];
  v6 = a1 + 2;
  if (v5 != v6)
  {
    do
    {
      result = sub_29A1D8028(a2, v5 + 4);
      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != v6);
  }

  return result;
}

void sub_29B032FFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B033018@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = sub_29A31B8F0(a1 + 8, a2);
  if (a1 + 16 == result)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    result = sub_29ABE8360((result + 40), &v6);
    *a3 = v6;
  }

  return result;
}

void *sub_29B033074(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20AF190;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B0330CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B0330E8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B033110(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B033140(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AF1E0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29B0331B0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29B0331B0(a1, *a2);
    sub_29B0331B0(a1, a2[1]);
    sub_29B033278((a2 + 5), a2[6]);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 9);
    sub_29A1DE3A4(a2 + 8);

    operator delete(a2);
  }
}

_DWORD *sub_29B03322C(uint64_t a1, uint64_t a2)
{
  sub_29B033278(a2 + 8, *(a2 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 4));

  return sub_29A1DE3A4(a2);
}

void sub_29B033278(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29B033278(a1, *a2);
    sub_29B033278(a1, a2[1]);
    v4 = a2[5];
    a2[5] = 0;
    if (v4)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::~_InstancerObserver(v4);
      operator delete(v5);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 9);
    sub_29A1DE3A4(a2 + 8);

    operator delete(a2);
  }
}

_DWORD *sub_29B0332FC(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::~_InstancerObserver(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

void *sub_29B033350(void *a1, uint64_t a2)
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

void sub_29B0333AC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B0333C4(void *result, uint64_t a2, uint64_t a3)
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

void sub_29B033448(uint64_t a1, _DWORD *a2)
{
  if (!*(a1 + 8))
  {
    v4 = *a1;
    if (!*(a1 + 24))
    {
      v5 = *(a1 + 32);
      if (!v5)
      {
        goto LABEL_10;
      }

      v6 = atomic_load((v5 - 16));
      if (v6 != 1)
      {
        goto LABEL_14;
      }

      v5 = *(a1 + 32);
      if (v5)
      {
        if (*(a1 + 24))
        {
          v7 = a1;
        }

        else
        {
          v7 = (v5 - 8);
        }

        v8 = *v7;
      }

      else
      {
LABEL_10:
        v8 = 0;
      }

      if (v4 != v8)
      {
        v9 = sub_29A1E21F4((v5 + 8 * v4), a2);
        sub_29A1E2240(v9 + 1, a2 + 1);
LABEL_13:
        ++*a1;
        return;
      }
    }

LABEL_14:
    sub_29B2CF2AC(a1, v4, a2);
    goto LABEL_13;
  }

  sub_29B2CF230(a1);
}

pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver **sub_29B033504(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::~_InstancerObserver(v2);
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver *sub_29B03353C(pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver **a1, pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPiPrototypePropagatingSceneIndex_Impl::_InstancerObserver::~_InstancerObserver(result);
  }

  return result;
}

uint64_t sub_29B033578(uint64_t **a1)
{
  v2 = sub_29A55CDFC(a1);
  if (a1 + 1 == v2)
  {
    return 0;
  }

  sub_29B0335C0(a1, v2);
  return 1;
}

uint64_t *sub_29B0335C0(uint64_t **a1, uint64_t *a2)
{
  v4 = sub_29A03AFE8(a1, a2);
  sub_29B03322C(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

void sub_29B033668(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20AF208;
  sub_29B033758(a1 + 3, a2);
}

void sub_29B0336E4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AF208;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B033884(pxrInternal__aapl__pxrReserved__::HdRetainedSceneIndex **a1@<X8>)
{
  v2 = operator new(0x98uLL);
  pxrInternal__aapl__pxrReserved__::HdRetainedSceneIndex::HdRetainedSceneIndex(v2);
  *v2 = &unk_2A20AF258;
  *a1 = v2;
}

void sub_29B0338E8(uint64_t *a1)
{
  *a1 = &unk_2A20844A8;
  sub_29AC3E4EC(a1 + 14);

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::~HdSceneIndexBase(a1);
}

void sub_29B03393C(uint64_t *a1)
{
  *a1 = &unk_2A20844A8;
  sub_29AC3E4EC(a1 + 14);
  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::~HdSceneIndexBase(a1);

  operator delete(v2);
}

void *sub_29B033A10(void *a1, uint64_t a2)
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

void sub_29B033A6C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B033A84()
{
  v1 = nullsub_1794;
  return sub_29B03497C(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter::~UsdImagingPlaneAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter *this)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v7 = *(v6 + 12);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a3@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_29B033D2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B033D40@<X0>(_DWORD *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

  sub_29B034BA8(v8, a1, &v13, a3);
  sub_29B03519C(a4, v8);
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

double pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter::InvalidateImagingSubprim@<D0>(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X3>, int a4@<W4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (!*a2)
  {
    sub_29B033EA8(a1, a2, a3, a4, a5);
  }

  *&result = 0x800000000;
  *(a5 + 56) = 0x800000000;
  return result;
}

void sub_29B033EA8(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X2>, int a4@<W3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  v11[57] = *MEMORY[0x29EDCA608];
  v10 = sub_29B034F08();
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::Invalidate(a3, v10, a5);
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Invalidate(a1, a2, a3, a4, v11);
  pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, v11);
  sub_29ABD3178();
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsRprimTypeSupported(a2, v3 + 7);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter::Populate(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialUsdPath(a1, a2);
}

void sub_29B034094(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v8 + 164) ^ *a4) < 8)
  {
    return 32;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v9)
  {
    v9 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v9 + 67) ^ *a4) < 8)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter::GetMeshPoints(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v8, a1);
  v7 = 0x4000000000000000;
  v8[0] = &unk_2A2060110;
  v6 = 0x4000000000000000;
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v1)
  {
    v1 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v2 = *(v1 + 170);
  v5 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v5 = v3;
    }
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomPlane::GetWidthAttr(v8, v4);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<double>();
}

void sub_29B034814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_29A5888DC(&a15);
  if ((a19 & 7) != 0)
  {
    atomic_fetch_add_explicit((a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomPlane::~UsdGeomPlane((v19 - 56));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter::GetMeshTopology(pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter *this@<X0>, uint64_t a2@<X8>)
{
  PlaneTopology = pxrInternal__aapl__pxrReserved__::UsdImagingGetPlaneTopology(this);
  pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(v4, PlaneTopology, 0);
  *(a2 + 8) = &off_2A20A8498;
  sub_29AFBD25C(a2, v4);
  pxrInternal__aapl__pxrReserved__::HdMeshTopology::~HdMeshTopology(v4);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter::GetTopology(uint64_t a1@<X8>)
{
  v2 = sub_29A0ECEEC(&v3, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter::GetTopology(const UsdPrim &, const SdfPath &, UsdTimeCode) const");
  pxrInternal__aapl__pxrReserved__::UsdImagingPlaneAdapter::GetMeshTopology(v2, a1);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v4, v3);
  }
}

uint64_t sub_29B03497C(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AF520;
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

void sub_29B034A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B034A2C(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B034A54@<D0>(_OWORD *a1@<X8>)
{
  sub_29B034A90(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B034A90(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AF560;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AF2C0;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B034B3C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AF560;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B034BA8(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = &unk_2A20AF5B0;
  return a1;
}

void sub_29B034CD4(uint64_t a1)
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

void sub_29B034D70(uint64_t a1)
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

void *sub_29B034E10@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim *a1@<X0>, void *a2@<X8>)
{
  Names = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::GetNames(a1, a2);
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdPlaneSchema::GetSchemaToken(Names);
  return sub_29A1D8028(a2, SchemaToken);
}

void sub_29B034E4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29B034E64(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if ((*pxrInternal__aapl__pxrReserved__::HdPlaneSchema::GetSchemaToken(a1) ^ *a2) > 7)
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Get(a1, a2, a3);
  }

  else
  {
    v6 = sub_29B034F08();
    sub_29AF7E758(a1 + 16, (a1 + 8), v6, *(a1 + 48), &v7);
    *a3 = v7;
  }
}

void *sub_29B034F08()
{
  if ((atomic_load_explicit(&qword_2A14FA278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14FA278))
  {
    v1 = sub_29B034FE8(v3);
    DefaultLocator = pxrInternal__aapl__pxrReserved__::HdPlaneSchema::GetDefaultLocator(v1);
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::AttributeMappings(&unk_2A14FA250, v3, DefaultLocator);
    v4 = v3;
    sub_29AF738D4(&v4);
    __cxa_atexit(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceMapped::AttributeMappings::~AttributeMappings, &unk_2A14FA250, &dword_299FE7000);
    __cxa_guard_release(&qword_2A14FA278);
  }

  return &unk_2A14FA250;
}

unint64_t sub_29B034FE8@<X0>(void *a1@<X8>)
{
  v8[4] = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = pxrInternal__aapl__pxrReserved__::UsdGeomPlane::GetSchemaAttributeNames(0);
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

void sub_29B035150(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AF738D4(va);
  _Unwind_Resume(a1);
}

void *sub_29B03519C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20AF5F8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B0351F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B035210(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B035238(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B035268(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AF648))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29B0352A8()
{
  v1 = nullsub_1795;
  return sub_29B035628(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightAdapter::~UsdImagingPluginLightAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightAdapter *this)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v7 = *(v6 + 33);
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::IsEnabledSceneLights(this);
  if (result)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v4)
    {
      v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsSprimTypeSupported(a2, v4 + 33);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightAdapter::Populate(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v4)
  {
    LODWORD(v4) = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_AddSprim(a1, v4 + 264, this);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v6)
  {
    v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::_RemoveSprim(this, (v6 + 264), a2, a3);
}

uint64_t sub_29B035628(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AF8B0;
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

void sub_29B0356B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B0356D8(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B035700@<D0>(_OWORD *a1@<X8>)
{
  sub_29B03573C(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B03573C(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AF8F0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AF670;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B0357E8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AF8F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B035854()
{
  v1 = nullsub_1796;
  return sub_29B035AD8(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightFilterAdapter::~UsdImagingPluginLightFilterAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightFilterAdapter *this)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingLightFilterAdapter::~UsdImagingLightFilterAdapter(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightFilterAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightFilterAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingLightAdapter::IsEnabledSceneLights(this);
  if (result)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v4)
    {
      v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsSprimTypeSupported(a2, v4 + 37);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightFilterAdapter::Populate(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(this);
}

void sub_29B035A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightFilterAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingPluginLightFilterAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return sub_29AFB3F6C(a3, v5 + 37, a2);
}

uint64_t sub_29B035AD8(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AFB80;
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

void sub_29B035B64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B035B88(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B035BB0@<D0>(_OWORD *a1@<X8>)
{
  sub_29B035BEC(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B035BEC(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AFBC0;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = 0;
  v2[3] = &unk_2A20AF940;
  *a1 = v2 + 3;
  a1[1] = v2;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B035C98(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AFBC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B035D04()
{
  v1 = nullsub_1797;
  return sub_29B037C90(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter::~UsdImagingPointsAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter *this)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v7 = *(v6 + 13);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a3@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_29B035FAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B035FC0@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePointsPrim::UsdImagingDataSourcePointsPrim(v8, a1, &v13, a3);
  sub_29B037EBC(a4, v8);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter::InvalidateImagingSubprim(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X3>, int a4@<W4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (*a2)
  {
    *(a5 + 56) = 0x800000000;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePointsPrim::Invalidate(a1, a2, a3, a4, a5);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter::IsSupported(pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::IsRprimTypeSupported(a2, v3 + 13);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter::Populate(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens))
  {
    sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialUsdPath(a1, a2);
}

void sub_29B03623C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter::_IsBuiltinPrimvar(pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter::UpdateForTime(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, _DWORD *a3, __int16 a4)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::UpdateForTime(a1, a2, a3, a4);
  PrimvarDescCache = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimvarDescCache(a1);
  result = sub_29AFB9C00(PrimvarDescCache, a3);
  if (a4 < 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v15, a2);
    v16 = 0;
    v15[0] = &unk_2A2060598;
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v10)
    {
      v10 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v15, (v10 + 48), v14);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v14, v11);
  }

  if ((a4 & 0x800) != 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v15, a2);
    v16 = 0;
    v15[0] = &unk_2A2060598;
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v12)
    {
      v12 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v15, (v12 + 40), v14);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v14, v13);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
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

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v9)
  {
    v9 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v9 + 165) ^ *a4) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v26, a2);
    v26[0] = &unk_2A2060540;
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens))
    {
      sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPoints::GetWidthsInterpolation(v26, &v24);
    v25 = pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdInterpolation(&v24, v11);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessNonPrefixedPrimvarPropertyChange(this, a2, a3, a4);
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v12)
  {
    v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v12 + 88) ^ *a4) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v26, a2);
    v26[0] = &unk_2A2060540;
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens))
    {
      sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetNormalsInterpolation(v26, &v24);
    v25 = pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdInterpolation(&v24, v14);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessNonPrefixedPrimvarPropertyChange(this, a2, a3, a4);
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v16)
  {
    v16 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  if ((*(v16 + 6) ^ *a4) <= 7)
  {
    v17 = this;
    v18 = a2;
    v19 = a3;
    v20 = a4;
    v21 = 0x8000;
    goto LABEL_25;
  }

  v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  if (!v22)
  {
    v22 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
  }

  v23 = *(v22 + 5) ^ *a4;
  v17 = this;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  if (v23 <= 7)
  {
    v21 = 2048;
LABEL_25:

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessPrefixedPrimvarPropertyChange(v17, v18, v19, v20, v21, 1);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::ProcessPropertyChange(this, a2, a3, a4);
}

void sub_29B0374F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::UsdGeomPoints::~UsdGeomPoints(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter::Get@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>, double a6@<D0>)
{
  sub_29A0ECEEC(&v22, "usdImaging", "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingPointsAdapter::Get(const UsdPrim &, const SdfPath &, const TfToken &, UsdTimeCode, VtIntArray *) const");
  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v12)
  {
    v12 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v12 + 54) ^ *a3) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v20, a2);
    v21 = 0;
    v20[0] = &unk_2A2060598;
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v13)
    {
      v13 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v20, (v13 + 40), v19);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v19, v14);
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v15)
  {
    v15 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v15 + 84) ^ *a3) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v20, a2);
    v21 = 0;
    v20[0] = &unk_2A2060598;
    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    if (!v16)
    {
      v16 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v20, (v16 + 48), v19);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v19, v17);
  }

  result = pxrInternal__aapl__pxrReserved__::UsdImagingGprimAdapter::Get(a1, a2, a3, a4, a5, a6);
  if (v22)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v23, v22);
  }

  return result;
}

void sub_29B037B9C(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_29A5888DC(va);
  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

uint64_t sub_29B037C90(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20AFE70;
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

void sub_29B037D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B037D40(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B037D68@<D0>(_OWORD *a1@<X8>)
{
  sub_29B037DA4(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B037DA4(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20AFEB0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20AFC10;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B037E50(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20AFEB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B037EBC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20AFF00;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B037F14(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B037F30(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B037F58(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B037F88(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20AFF50))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29B037FC8()
{
  v1 = nullsub_1798;
  return sub_29B044C3C(&var8);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v7 = *(v6 + 21);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetImagingSubprimData(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, void *a3@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_29B0381D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29B0381E4@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePointInstancerPrim::UsdImagingDataSourcePointInstancerPrim(v8, a1, &v13, a3);
  sub_29B0452D4(a4, v8);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::InvalidateImagingSubprim(pxrInternal__aapl__pxrReserved__ *a1@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X3>, int a4@<W4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  if (*a2)
  {
    *(a5 + 56) = 0x800000000;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePointInstancerPrim::Invalidate(a1, a2, a3, a4, a5);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_Populate(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, uint64_t a3, _DWORD *a4)
{
  if (a4)
  {
    sub_29A1E21F4(&v6, a4);
    sub_29A1E2240(&v6 + 1, a4 + 1);
  }

  else
  {
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v6 + 1);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
}

void sub_29B038BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a29)
  {
    sub_29A014BEC(a29);
  }

  sub_29A57F434(&__p);
  sub_29A1DCEA8(&a24);
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  sub_29A5888DC(&a30);
  sub_29A5888DC(&a34);
  sub_29A5B6480(v34 - 192);
  __p = (v34 - 160);
  sub_29A1E234C(&__p);
  pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::~UsdGeomPointInstancer((v34 - 136));
  sub_29A1DCEA8((v34 - 112));
  sub_29A1DCEA8((v34 - 104));
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_UnloadInstancer(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v6 = sub_29A2F4F50(this + 4, a2);
  sub_29B04683C(v9, (v6 + 4));
  sub_29B046C14(this + 4, v6);
  for (i = v10; i; i = *i)
  {
    (*(*i[6] + 144))(i[6], i + 2, a3);
  }

  sub_29B000258(a3, a2);
  return sub_29B0451E8(v9);
}

void sub_29B038DE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29B0451E8(va);
  _Unwind_Resume(a1);
}

void sub_29B038E00(void *a1)
{
  v3 = *a1;
  for (i = a1[1]; i != v3; sub_29B045014(a1, i))
  {
    i -= 4;
  }

  a1[1] = v3;

  sub_29A1DE554(a1 + 3, 0);
}

void *sub_29B038E64(uint64_t *a1, _DWORD *a2)
{
  sub_29A1E21F4(&v6, a2);
  sub_29A1E2240(&v7, a2 + 1);
  v8 = 0;
  v4 = sub_29B0457D4(a1, &v6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  sub_29A1DE3A4(&v6);
  return v4 + 1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_PopulatePrototype(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate **a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetDisplayPredicateForPrototypes(a1);
}

void sub_29B039E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42, __int16 a43, char a44, char a45)
{
  if ((a26 & 7) != 0)
  {
    atomic_fetch_add_explicit((a26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A57F434(&a37);
  sub_29B0020F0(v45 - 168);
  sub_29A1DCEA8(&a41);
  if (a16)
  {
    sub_29A014BEC(a16);
  }

  sub_29A57F434(v45 - 232);
  *(v45 - 168) = &a43;
  sub_29A1E234C((v45 - 168));
  sub_29A58BBB4(v45 - 200);
  *(v45 - 168) = v45 - 112;
  sub_29B045E88((v45 - 168));
  _Unwind_Resume(a1);
}

unsigned __int8 *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::ResolveCachePath@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, unsigned int *a3@<X8>)
{
  sub_29A1E21F4(a3, a2);
  sub_29A1E2240(a3 + 1, a2 + 1);
  v6 = sub_29A2F4F50((a1 + 32), a3);
  if (v6)
  {
    v7 = atomic_load(v6 + 208);
    if (v7)
    {
      __p[0] = atomic_fetch_add(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_globalVariantCounter, 1u) + 1;
      sub_29A1F8E20(__p);
      sub_29A008E78(__p, "instance");
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendVariantSelection(a3, __p, v11, &v10);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }
  }

  v11[0] = a3;
  result = sub_29B0453E0(a1 + 32, a3, &unk_29B4D6118, v11);
  atomic_store(0, result + 208);
  return result;
}

void sub_29B03A27C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  sub_29A1DCEA8(v22);
  _Unwind_Resume(a1);
}

uint64_t sub_29B03A2C8(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_29B045F50(a1, a2);
  }

  else
  {
    *v4 = *a2;
    sub_29A1DDD84((v4 + 16), (a2 + 16));
    sub_29A1DDDC0((v4 + 20), (a2 + 20));
    v5 = *(a2 + 24);
    *(v4 + 37) = *(a2 + 37);
    *(v4 + 24) = v5;
    result = v4 + 56;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29B03A348(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_29B0462A8(a1, a2);
  }

  else
  {
    *v4 = *a2;
    sub_29A1E21F4((v4 + 16), (a2 + 16));
    sub_29A1E2240((v4 + 20), (a2 + 20));
    v5 = *(a2 + 24);
    *(v4 + 37) = *(a2 + 37);
    *(v4 + 24) = v5;
    result = v4 + 56;
  }

  a1[1] = result;
  return result;
}

_DWORD *sub_29B03A3C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29A58BB1C(a1, v4);
  sub_29A58BBEC(v4, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v6);
  return sub_29A1DE3A4(&v5);
}

uint64_t sub_29B03A518(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_29A324D54(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  }

  v5 = *(a2 + 24);
  v4 = *(a2 + 32);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 32);
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  sub_29A2258F0((a1 + 40), (a2 + 40));
  sub_29A225948((a1 + 44), (a2 + 44));
  v7 = *(a2 + 52);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = v7;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::TrackVariability(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1, int *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t a4)
{
  if ((*(*a1 + 352))(a1, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v32);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v32, a3);
    if (ProtoPrim[3] || (v27 = "usdImaging/pointInstancerAdapter.cpp", v28 = "TrackVariability", v29 = 521, v30 = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::TrackVariability(const UsdPrim &, const SdfPath &, HdDirtyBits *, const UsdImagingInstancerContext *) const", v31 = 0, v14 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3), v17 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v15, v16, v14), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v27, "proto.adapter", v17) & 1) != 0))
    {
      if (ProtoPrim[1] != *ProtoPrim || (v27 = "usdImaging/pointInstancerAdapter.cpp", v28 = "TrackVariability", v29 = 524, v30 = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::TrackVariability(const UsdPrim &, const SdfPath &, HdDirtyBits *, const UsdImagingInstancerContext *) const", v31 = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3), v21 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v19, v20, Text), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v27, "proto.paths.size() > 0", v21) & 1) != 0))
      {
        pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, &v27);
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v33);
    return sub_29A1DE3A4(&v32);
  }

  else
  {
    result = sub_29A2F4F50(a1 + 4, a3);
    if (result)
    {
      v22 = *a2;
      v10 = *(a2 + 1);
      v23 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(v10 + 6, 1uLL, memory_order_relaxed);
      }

      sub_29A1E21F4(&v24, a2 + 4);
      sub_29A1E2240(&v25, a2 + 5);
      v11 = *(a2 + 3);
      v26 = v11;
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v26 &= 0xFFFFFFFFFFFFFFF8;
      }

      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v12)
      {
        v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      if (!v13)
      {
        v13 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      }

      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsVarying(a1, &v22, (v12 + 504), 0x20000, v13 + 8, a4, 0, 0);
    }
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  if ((atomic_load_explicit(&qword_2A17540E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17540E0))
  {
    sub_29B03E0DC(&unk_2A17540A8);
    __cxa_atexit(sub_29B03E130, &unk_2A17540A8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17540E0);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v10);
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimVariantSelectionPath(&v10))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v12);
  }

  else
  {
    sub_29A1E21F4(&v12, a2);
    sub_29A1E2240(&v13, a2 + 1);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
  sub_29A1DE3A4(&v10);
  v6 = sub_29A2F4F50(this + 4, &v12);
  if (v6)
  {
    v7 = sub_29A328A44(v6 + 4, a3);
    if (v7)
    {
      v8 = v7 + 3;
    }

    else
    {
      v8 = &unk_2A17540A8;
    }
  }

  else
  {
    v8 = &unk_2A17540A8;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
  sub_29A1DE3A4(&v12);
  return v8;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_ComputeProtoVisibility(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::UsdObject *a3, uint64_t a4)
{
  if (a4 || (result = sub_29B2CF340(v6), (result & 1) != 0))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a3);
  }

  return result;
}

void sub_29B03BF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetInstancerVisible(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, double a3)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(a2, &v5);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, &v5, v6);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetVisible(a3, a1, v6);
}

void sub_29B03C0D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_29A57F434(va1);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::UpdateForTime(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, int a4)
{
  PrimvarDescCache = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimvarDescCache(a1);
  result = (*(*a1 + 352))(a1, a3);
  if (result)
  {
    if (a4)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v19);
      ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v19, a3);
      if (ProtoPrim[3] || (*&v21 = "usdImaging/pointInstancerAdapter.cpp", *(&v21 + 1) = "UpdateForTime", *&v22 = 688, *(&v22 + 1) = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::UpdateForTime(const UsdPrim &, const SdfPath &, UsdTimeCode, HdDirtyBits, const UsdImagingInstancerContext *) const", LOBYTE(v23) = 0, v11 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3), v14 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v12, v13, v11), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v21, "proto.adapter", v14) & 1) != 0))
      {
        if (ProtoPrim[1] != *ProtoPrim || (*&v21 = "usdImaging/pointInstancerAdapter.cpp", *(&v21 + 1) = "UpdateForTime", *&v22 = 691, *(&v22 + 1) = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::UpdateForTime(const UsdPrim &, const SdfPath &, UsdTimeCode, HdDirtyBits, const UsdImagingInstancerContext *) const", LOBYTE(v23) = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3), v18 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v16, v17, Text), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v21, "proto.paths.size() > 0", v18) & 1) != 0))
        {
          pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, &v21);
        }
      }

      return sub_29A1DCEA8(&v19);
    }
  }

  else
  {
    result = sub_29A2F4F50(a1 + 4, a3);
    if ((a4 & 0x40) != 0 && result)
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v20, a2);
      v20[0] = &unk_2A2060328;
      sub_29AFB9C00(PrimvarDescCache, a3);
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
      pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::GetPositionsAttr(v20, &v19);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::ProcessPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  if ((*(*this + 352))(this, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v38);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(this, &v38, a3);
    if (ProtoPrim[3] && ProtoPrim[1] != *ProtoPrim)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(this, ProtoPrim, &v37);
    }

    v21 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v39);
    sub_29A1DE3A4(&v38);
    return v21;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v10)
  {
    v10 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v11 = *a4;
  if ((*(v10 + 104) ^ *a4) < 8)
  {
    goto LABEL_26;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v12)
  {
    v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v11 = *a4;
  if ((*(v12 + 92) ^ *a4) < 8)
  {
    goto LABEL_26;
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v13)
  {
    v13 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v11 = *a4;
  if ((*(v13 + 93) ^ *a4) < 8)
  {
    goto LABEL_26;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v14)
  {
    v14 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v11 = *a4;
  if ((*(v14 + 123) ^ *a4) < 8)
  {
    goto LABEL_26;
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v15)
  {
    v15 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v11 = *a4;
  if ((*(v15 + 153) ^ *a4) < 8)
  {
    goto LABEL_26;
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v16)
  {
    v16 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v11 = *a4;
  if ((*v16 ^ *a4) < 8)
  {
    goto LABEL_26;
  }

  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v17)
  {
    v17 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v11 = *a4;
  if ((*(v17 + 2) ^ *a4) <= 7)
  {
LABEL_26:
    v37 = v11;
    if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v37 &= 0xFFFFFFFFFFFFFFF8;
    }

    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v18)
    {
      v18 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    if ((*(v18 + 104) ^ *a4) <= 7)
    {
      v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      if (!v19)
      {
        v19 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      }

      v20 = (v19 + 72);
      goto LABEL_47;
    }

    v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v22)
    {
      v22 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    if ((*(v22 + 92) ^ *a4) > 7)
    {
      v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v24)
      {
        v24 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v24 + 93) ^ *a4) > 7)
      {
        v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v26)
        {
          v26 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        if ((*(v26 + 123) ^ *a4) > 7)
        {
          v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
          if (!v28)
          {
            v28 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
          }

          if ((*(v28 + 153) ^ *a4) > 7)
          {
            v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
            if (!v30)
            {
              v30 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
            }

            if ((*v30 ^ *a4) > 7)
            {
              v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
              if (!v31)
              {
                v31 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
              }

              if ((*(v31 + 2) ^ *a4) > 7)
              {
LABEL_48:
                v38 = 5;
                pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessNonPrefixedPrimvarPropertyChange(this, a2, a3, a4);
              }

              v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
              if (!v32)
              {
                v32 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
              }

              v20 = (v32 + 16);
            }

            else
            {
              v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
              if (!v20)
              {
                v20 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
              }
            }
          }

          else
          {
            v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
            if (!v29)
            {
              v29 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
            }

            v20 = (v29 + 656);
          }
        }

        else
        {
          v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
          if (!v27)
          {
            v27 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
          }

          v20 = (v27 + 64);
        }

LABEL_47:
        sub_29A166F2C(&v37, v20);
        goto LABEL_48;
      }

      v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      if (!v23)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      if (!v23)
      {
LABEL_45:
        v23 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      }
    }

    v20 = (v23 + 56);
    goto LABEL_47;
  }

  v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v33)
  {
    v33 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v33 + 109) ^ *a4) < 8)
  {
    return 0x20000;
  }

  v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v34)
  {
    v34 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v34 + 63) ^ *a4) < 8)
  {
    return 0x20000;
  }

  if (pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::CanContainPropertyName(a4, v8))
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessPrefixedPrimvarPropertyChange(this, a2, a3, a4, 0x40u, 1);
  }

  v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v36)
  {
    v36 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v21 = 4294967293;
  if ((*(v36 + 158) ^ *a4) >= 8)
  {
    if (pxrInternal__aapl__pxrReserved__::UsdGeomXformable::IsTransformationAffectedByAttrNamed(a4, v35))
    {
      return 4294967293;
    }

    else
    {
      return 0;
    }
  }

  return v21;
}

void sub_29B03D3E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_ProcessPrimRemoval(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3, uint64_t a4)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v16);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v17);
  if ((*(*a1 + 352))(a1, a2))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v14);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  sub_29A2258F0(&v16, a2);
  sub_29A225948(&v17, a2 + 1);
  v8 = sub_29A2F4F50(a1 + 4, &v16);
  if (v8)
  {
    do
    {
      if (!v8)
      {
        break;
      }

      sub_29A2258F0(&v16, v8 + 4);
      sub_29A225948(&v17, v8 + 5);
      sub_29A1E21F4(&v14, v8 + 6);
      sub_29A1E2240(&v15, v8 + 7);
      v9 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
      v10 = v9;
      if (v9)
      {
        v8 = sub_29A2F4F50(a1 + 4, &v14);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
      sub_29A1DE3A4(&v14);
    }

    while (v10);
    if (a4)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v16, &v12);
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, &v12, &v14);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
      sub_29A1DE3A4(&v12);
      pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v14);
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_UnloadInstancer(a1, &v16, a3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17);
  return sub_29A1DE3A4(&v16);
}

void sub_29B03D684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14)
{
  sub_29A1DCEA8(&a9);
  sub_29A1DCEA8(&a14);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::ProcessPrimResync(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_ProcessPrimRemoval(this, a2, a3, &v6);
  v4 = v6;
  v5 = v7;
  while (v4 != v5)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::Repopulate(a3, v4);
    v4 = (v4 + 8);
  }

  v9 = &v6;
  sub_29A1E234C(&v9);
}

void sub_29B03D750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A1E234C(&a12);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::MarkDirty(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t a4, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a5)
{
  if ((*(*this + 352))(this, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v12);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(this, &v12, a3);
    (*(*ProtoPrim[3] + 152))(ProtoPrim[3], a2, a3, a4, a5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
    return sub_29A1DE3A4(&v12);
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkInstancerDirty(a5, a3, a4);
    if ((a4 & 0x40) != 0)
    {

      return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::RequestUpdateForTime(a5, a3);
    }
  }

  return result;
}

void sub_29B03D8A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::MarkRefineLevelDirty(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  result = (*(*this + 352))(this, a3);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v10);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(this, &v10, a3);
    (*(*ProtoPrim[3] + 160))(ProtoPrim[3], a2, a3, a4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
    return sub_29A1DE3A4(&v10);
  }

  return result;
}

void sub_29B03D994(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::MarkReprDirty(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  result = (*(*this + 352))(this, a3);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v10);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(this, &v10, a3);
    (*(*ProtoPrim[3] + 168))(ProtoPrim[3], a2, a3, a4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
    return sub_29A1DE3A4(&v10);
  }

  return result;
}

void sub_29B03DA80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::MarkCullStyleDirty(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  result = (*(*this + 352))(this, a3);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v10);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(this, &v10, a3);
    (*(*ProtoPrim[3] + 176))(ProtoPrim[3], a2, a3, a4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
    return sub_29A1DE3A4(&v10);
  }

  return result;
}

void sub_29B03DB6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::MarkRenderTagDirty(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  result = (*(*this + 352))(this, a3);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v10);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(this, &v10, a3);
    (*(*ProtoPrim[3] + 184))(ProtoPrim[3], a2, a3, a4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
    return sub_29A1DE3A4(&v10);
  }

  return result;
}

void sub_29B03DC58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::MarkTransformDirty(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  if ((*(*this + 352))(this, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v10);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(this, &v10, a3);
    (*(*ProtoPrim[3] + 192))(ProtoPrim[3], a2, a3, a4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
    return sub_29A1DE3A4(&v10);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkInstancerDirty(a4, a3, 512);
  }
}

void sub_29B03DD74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::MarkVisibilityDirty(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  if ((*(*this + 352))(this, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v10);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(this, &v10, a3);
    (*(*ProtoPrim[3] + 200))(ProtoPrim[3], a2, a3, a4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
    return sub_29A1DE3A4(&v10);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkInstancerDirty(a4, a3, 1024);
  }
}

void sub_29B03DE90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::MarkLightParamsDirty(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  if ((*(*this + 352))(this, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v10);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(this, &v10, a3);
    (*(*ProtoPrim[3] + 216))(ProtoPrim[3], a2, a3, a4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
    return sub_29A1DE3A4(&v10);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkInstancerDirty(a4, a3, 4);
  }
}

void sub_29B03DFAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::MarkCollectionsDirty(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4)
{
  if ((*(*this + 352))(this, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v10);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(this, &v10, a3);
    (*(*ProtoPrim[3] + 232))(ProtoPrim[3], a2, a3, a4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
    return sub_29A1DE3A4(&v10);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::MarkInstancerDirty(a4, a3, 0x200000);
  }
}

void sub_29B03E0C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B03E0DC(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 40));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 44));
  *(a1 + 48) = 0;
  *(a1 + 52) = 1;
  return a1;
}

uint64_t sub_29B03E130(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 44));
  sub_29A1DE3A4((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v4 = a1;
  sub_29A1E234C(&v4);
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrimForChild(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::SdfPath ***a4)
{
  v7 = (*(*a1 + 352))(a1, a3);
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v11);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v11, a3);
    *a4 = ProtoPrim;
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, v10);
  }

  return v7;
}

void sub_29B03E368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A57F434(va);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_UpdateInstancerVisibility(double a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t a4)
{
  if (sub_29AF49C14(4))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[PointInstancer::_UpdateInstancerVisibility] %s\n", v7, v8, Text, *&a1);
  }

  if (*(a4 + 168) == 1)
  {
    std::mutex::lock((a4 + 104));
    pxrInternal__aapl__pxrReserved__::operator==();
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_CorrectTransform(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, uint64_t a2@<X2>, void *a3@<X4>, __int128 *a4@<X5>, _OWORD *a5@<X8>, double a6@<D0>)
{
  memset(v32, 0, sizeof(v32));
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetRootTransform(a1, &v24);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(&v24, 0, 0.0, v32);
  v12 = a4[5];
  v28 = a4[4];
  v29 = v12;
  v13 = a4[7];
  v30 = a4[6];
  v31 = v13;
  v14 = a4[1];
  v24 = *a4;
  v25 = v14;
  v15 = a4[3];
  v26 = a4[2];
  v27 = v15;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v24, v32);
  v16 = v29;
  a5[4] = v28;
  a5[5] = v16;
  v17 = v31;
  a5[6] = v30;
  a5[7] = v17;
  v18 = v25;
  *a5 = v24;
  a5[1] = v18;
  v19 = v27;
  v20 = *a3;
  v21 = a3[1] - *a3;
  a5[2] = v26;
  a5[3] = v19;
  if (v21 >= 9)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, (v20 + 8), v22);
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetTransform(a1, v22, (*a3 + 8), a6);
  }

  sub_29A5B9D18(a2, v23);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v23);
}

void sub_29B03E704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_29A1DCEA8(&a25);
  sub_29A57F434(&a41);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetScenePrimPath@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, _DWORD *a3@<X8>)
{
  v35 = *MEMORY[0x29EDCA608];
  if (sub_29AF49C14(9))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("GetScenePrimPath: proto = %s\n", v7, v8, Text);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v32);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v32 + 1);
  sub_29A1E21F4(&v30, a2);
  sub_29A1E2240(&v31, a2 + 1);
  if ((*(*a1 + 352))(a1, a2))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v19);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  v9 = sub_29A2F4F50(a1 + 4, a2);
  if (v9)
  {
    sub_29A2258F0(&v32, v9 + 6);
    v10 = v9 + 7;
LABEL_11:
    sub_29A225948(&v32 + 1, v10);
  }

  else
  {
    v11 = a1 + 48;
    while (1)
    {
      v11 = *v11;
      if (!v11)
      {
        break;
      }

      if (sub_29A328A44(v11 + 4, a2))
      {
        sub_29A2258F0(&v32, v11 + 4);
        v10 = v11 + 20;
        goto LABEL_11;
      }
    }
  }

  v19 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v19 + 1);
  v12 = v32;
  v13 = v19;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19 + 1);
  sub_29A1DE3A4(&v19);
  if (v12 == v13 || (ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v32, a2), !ProtoPrim[3]))
  {
    *a3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(a1, ProtoPrim, &v28);
    v15 = sub_29A2F4F50(a1 + 4, &v32);
    if (v15)
    {
      sub_29A1E21F4(&v26, v15 + 6);
      sub_29A1E2240(&v27, v15 + 7);
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, &v32, &v19);
      TimeWithOffset = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetTimeWithOffset(a1, 0.0);
      (*(*a1 + 504))(&v33, a1, &v19, &v32, a2, TimeWithOffset);
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21 + 1);
      sub_29A1DE3A4(&v21);
      if (v20)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v20, v17);
      }

      if (sub_29A19D610(&v33))
      {
        if ((v34 & 4) != 0)
        {
          (*((v34 & 0xFFFFFFFFFFFFFFF8) + 168))(&v33);
        }

        sub_29A1E21F4(&v24, &v32);
        sub_29A1E2240(&v25, &v32 + 1);
        pxrInternal__aapl__pxrReserved__::SdfPath::GetAbsoluteRootOrPrimPath(&v26, &v19);
        pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, &v19, v23);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19 + 1);
        sub_29A1DE3A4(&v19);
        pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v23);
      }

      *a3 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
      sub_29A186B14(&v33);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v27);
      sub_29A1DE3A4(&v26);
    }

    else
    {
      *a3 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v29);
    sub_29A1DE3A4(&v28);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v31);
  sub_29A1DE3A4(&v30);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v32 + 1);
  return sub_29A1DE3A4(&v32);
}

void sub_29B03F0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (v30)
  {
    sub_29A014BEC(v30);
  }

  sub_29A57F434(&a30);
  sub_29A1DCEA8((v31 - 168));
  sub_29A186B14(v31 - 112);
  sub_29A1DCEA8((v31 - 160));
  sub_29A1DCEA8((v31 - 152));
  sub_29A1DCEA8((v31 - 144));
  sub_29A1DCEA8((v31 - 136));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetScenePrimPaths(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v26 = 0uLL;
  v27 = 0;
  sub_29A2FCAE8(a5, (a3[1] - *a3) >> 2);
  if (a4)
  {
    sub_29B03F4F4(a4, (a3[1] - *a3) >> 2);
  }

  v10 = *a3;
  if (a3[1] != *a3)
  {
    v11 = 0;
    do
    {
      (*(*a1 + 312))(v28, a1, a2, *(v10 + 4 * v11), &v26);
      sub_29A377BD0(a5, v28);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v28 + 1);
      sub_29A1DE3A4(v28);
      if (a4)
      {
        v12 = *(a4 + 8);
        v13 = *(a4 + 16);
        if (v12 >= v13)
        {
          v15 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a4) >> 3);
          v16 = v15 + 1;
          if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_29A00C9A4();
          }

          v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a4) >> 3);
          if (2 * v17 > v16)
          {
            v16 = 2 * v17;
          }

          if (v17 >= 0x555555555555555)
          {
            v18 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v18 = v16;
          }

          v28[4] = a4;
          if (v18)
          {
            v19 = sub_29A012C48(a4, v18);
          }

          else
          {
            v19 = 0;
          }

          v20 = &v19[24 * v15];
          v21 = &v19[24 * v18];
          *v20 = 0;
          *(v20 + 1) = 0;
          *(v20 + 2) = 0;
          *v20 = v26;
          *(v20 + 2) = v27;
          v26 = 0uLL;
          v27 = 0;
          v14 = v20 + 24;
          v22 = *(a4 + 8) - *a4;
          v23 = &v20[-v22];
          memcpy(&v20[-v22], *a4, v22);
          v24 = *a4;
          *a4 = v23;
          *(a4 + 8) = v14;
          v25 = *(a4 + 16);
          *(a4 + 16) = v21;
          v28[2] = v24;
          v28[3] = v25;
          v28[0] = v24;
          v28[1] = v24;
          sub_29B046C70(v28);
        }

        else
        {
          *v12 = 0;
          v12[1] = 0;
          v12[2] = 0;
          *v12 = v26;
          v12[2] = v27;
          v26 = 0uLL;
          v27 = 0;
          v14 = v12 + 3;
        }

        *(a4 + 8) = v14;
      }

      ++v11;
      v10 = *a3;
    }

    while (v11 < (a3[1] - *a3) >> 2);
  }

  v28[0] = &v26;
  sub_29AEE6928(v28);
}

void sub_29B03F4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, void ***a13)
{
  a13 = &a9;
  sub_29AEE6928(&a13);
  sub_29A1E234C(&a9);
  _Unwind_Resume(a1);
}

void **sub_29B03F4F4(void **result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 >= 0xAAAAAAAAAAAAAABLL)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v12[4] = result;
    v4 = sub_29A012C48(result, a2);
    v5 = &v4[v3];
    v7 = &v4[24 * v6];
    v8 = v2[1] - *v2;
    v9 = &v4[v3 - v8];
    memcpy(v9, *v2, v8);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v12[2] = v10;
    v12[3] = v11;
    v12[0] = v10;
    v12[1] = v10;
    return sub_29B046C70(v12);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetInstancerTransform@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, unsigned int *a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_29A2F4F50(a1 + 4, a2);
  if (v8 || (result = sub_29B2CF388(v23, a2, a3), (result & 1) != 0))
  {
    sub_29A1E21F4(&v21, v8 + 6);
    sub_29A1E2240(&v22, v8 + 7);
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v21))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetAbsoluteRootOrPrimPath(&v21, &v19);
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, &v19, &v14);
      PrimAdapter = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(a1, &v14, 0);
      v10 = *PrimAdapter;
      v11 = PrimAdapter[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v10 + 304))(v10, &v21, a2, a4);
      if (v11)
      {
        sub_29A014BEC(v11);
      }

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

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v20);
      sub_29A1DE3A4(&v19);
    }

    else
    {
      (*(*a1 + 304))(a1, &v21, a2, a4);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
    return sub_29A1DE3A4(&v21);
  }

  return result;
}

void sub_29B03F788(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29A57F434(va);
  sub_29A1DCEA8(va1);
  sub_29A1DCEA8(va2);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetInstancerId@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, _DWORD *a3@<X8>)
{
  if ((*(*this + 352))(this, a2))
  {

    return pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, a3);
  }

  else
  {
    v8 = sub_29A2F4F50(this + 4, a2);
    if (v8)
    {
      v9 = v8;
      sub_29A1E21F4(a3, v8 + 6);

      return sub_29A1E2240(a3 + 1, v9 + 7);
    }

    else
    {
      v13[0] = "usdImaging/pointInstancerAdapter.cpp";
      v13[1] = "GetInstancerId";
      v13[2] = 1657;
      v13[3] = "virtual SdfPath pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetInstancerId(const UsdPrim &, const SdfPath &) const";
      v14 = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 1, "Unexpected path <%s>", Text);
      v12 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v11);
      sub_29A1E21F4(a3, v12);
      return sub_29A1E2240(a3 + 1, v12 + 1);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetInstancerPrototypes@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  if ((*(*this + 352))(this, a2))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v11);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(this, &v11, a2);
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(this, ProtoPrim, v10);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = sub_29A2F4F50(this + 4, a2);
  if (result)
  {
    for (i = (result + 48); ; result = sub_29A1E28B4(a3, i + 4))
    {
      i = *i;
      if (!i)
      {
        break;
      }
    }
  }

  return result;
}

void sub_29B03FA8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_29A57F434(va);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::SampleInstancerTransform(uint64_t a1, double a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  *&v20[5] = a2;
  if (a5)
  {
    v7 = sub_29A2F4F50((a1 + 32), a4);
    if (v7 || (sub_29B2CF420(v20) & 1) != 0)
    {
      sub_29A1E21F4(&v18, v7 + 6);
      sub_29A1E2240(&v19, v7 + 7);
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetCurrentTimeSamplingInterval(a1, &v16);
      memset(__p, 0, sizeof(__p));
      v10[0] = v16;
      sub_29A08B03C(__p, v10);
      v10[0] = v17;
      sub_29A08B03C(__p, v10);
      if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v18))
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::GetAbsoluteRootOrPrimPath(&v18, &v14);
        pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, &v14, v12);
        v8 = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimAdapter(a1, v12, 0)[1];
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
        }

        *v10 = v16;
        v11 = v17;
        sub_29B03FF2C(v12);
      }

      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, a4, v10);
      *v12 = v16;
      v13 = v17;
      sub_29B03FF2C(v10);
    }
  }

  return 0;
}

void sub_29B03FE8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, void *__p, uint64_t a32)
{
  if (v32)
  {
    sub_29A014BEC(v32);
  }

  sub_29A57F434(&a25);
  sub_29A1DCEA8(&a30);
  if (__p)
  {
    a32 = __p;
    operator delete(__p);
  }

  sub_29A1DCEA8((v33 - 152));
  _Unwind_Resume(a1);
}

void sub_29B03FF2C(int *a1)
{
  v4 = *a1;
  v2 = *(a1 + 1);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(v2 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v6, a1 + 4);
  sub_29A1E2240(&v7, a1 + 5);
  v3 = *(a1 + 3);
  v8 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v8 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v4);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetTransform@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdObject *a2@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, _OWORD *a4@<X8>, double a5@<D0>)
{
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v30, 1.0);
  if (((*(*a1 + 352))(a1, a3) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetTransform(a1, a2, a3, a5);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v28);
  ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v28, a3);
  if (ProtoPrim[3] || (*&v25 = 1778, *(&v25 + 1) = "virtual GfMatrix4d pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetTransform(const UsdPrim &, const SdfPath &, UsdTimeCode, BOOL) const", LOBYTE(v26) = 0, v12 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3), v15 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v13, v14, v12, "usdImaging/pointInstancerAdapter.cpp", "GetTransform", v25, v26), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v24, "proto.adapter", v15) & 1) != 0))
  {
    if (ProtoPrim[1] != *ProtoPrim || (v24[0] = "usdImaging/pointInstancerAdapter.cpp", v24[1] = "GetTransform", *&v25 = 1781, *(&v25 + 1) = "virtual GfMatrix4d pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetTransform(const UsdPrim &, const SdfPath &, UsdTimeCode, BOOL) const", LOBYTE(v26) = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3), v19 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v17, v18, Text), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v24, "proto.paths.size() > 0", v19) & 1) != 0))
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, v27);
    }
  }

  v20 = v30[5];
  a4[4] = v30[4];
  a4[5] = v20;
  v21 = v30[7];
  a4[6] = v30[6];
  a4[7] = v21;
  v22 = v30[1];
  *a4 = v30[0];
  a4[1] = v22;
  v23 = v30[3];
  a4[2] = v30[2];
  a4[3] = v23;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v29);
  return sub_29A1DE3A4(&v28);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::SampleTransform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, _OWORD *a6)
{
  if (!a4)
  {
    return 0;
  }

  *a5 = 0;
  (*(*a1 + 376))(v12);
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::SamplePrimvar(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t *a4, uint64_t a5, double a6)
{
  if (!a5)
  {
    return 0;
  }

  if ((*(*a1 + 352))(a1, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v28);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v28, a3);
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, &v27);
  }

  v14 = *a4;
  v28 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
  if (!v15)
  {
    v15 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
  }

  if ((*(v15 + 9) ^ *a4) > 7)
  {
    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    if (!v18)
    {
      v18 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    }

    if ((*(v18 + 8) ^ *a4) > 7)
    {
      v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      if (!v21)
      {
        v21 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      }

      if ((*(v21 + 7) ^ *a4) <= 7)
      {
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v27, a2);
        v27 = &unk_2A2060328;
        pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::UsesOrientationsf(&v27, &v28);
      }

      v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v22)
      {
        v22 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(v22 + 82) ^ *a4) > 7)
      {
        v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v24)
        {
          v24 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        if ((*v24 ^ *a4) > 7)
        {
          v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
          if (!v25)
          {
            v25 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
          }

          if ((*(v25 + 2) ^ *a4) > 7)
          {
            goto LABEL_21;
          }

          v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
          if (!v26)
          {
            v26 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
          }

          v17 = (v26 + 16);
        }

        else
        {
          v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
          if (!v17)
          {
            v17 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
          }
        }
      }

      else
      {
        v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v23)
        {
          v23 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        v17 = (v23 + 1224);
      }
    }

    else
    {
      v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v19)
      {
        v19 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      v17 = (v19 + 984);
    }
  }

  else
  {
    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v16)
    {
      v16 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v17 = (v16 + 832);
  }

  sub_29A166F2C(&v28, v17);
LABEL_21:
  v13 = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::SamplePrimvar(a6, a1, a2, a3, &v28, a5);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v13;
}

void sub_29B040A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::~UsdGeomPointInstancer(&a10);
  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::IsChildPath(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if ((atomic_load_explicit(&qword_2A1754128, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1754128))
  {
    sub_29A0CD6B0(&unk_2A17540E8, "^proto\\d+_[^.\\/\\s]+_id\\d+$", 0);
    __cxa_atexit(sub_29A0CD654, &unk_2A17540E8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1754128);
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
  v6 = sub_29A17BEA8(Name, Name + v4, __p, &unk_2A17540E8, 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v6;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetVisible(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4)
{
  if (!(*(*a1 + 352))(a1, a3))
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetVisible(a4, a1, a2);
  }

  v47 = 0;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v45);
  ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v45, a3);
  if (!ProtoPrim[3])
  {
    v40 = "usdImaging/pointInstancerAdapter.cpp";
    v41 = "GetVisible";
    v42 = 1903;
    v43 = "virtual BOOL pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetVisible(const UsdPrim &, const SdfPath &, UsdTimeCode) const";
    v44 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    v25 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v23, v24, Text);
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v40, "proto.adapter", v25) & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  if (ProtoPrim[1] == *ProtoPrim)
  {
    v40 = "usdImaging/pointInstancerAdapter.cpp";
    v41 = "GetVisible";
    v42 = 1906;
    v43 = "virtual BOOL pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetVisible(const UsdPrim &, const SdfPath &, UsdTimeCode) const";
    v44 = 0;
    v26 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    v29 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v27, v28, v26);
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v40, "proto.paths.size() > 0", v29) & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  v9 = *(ProtoPrim + 12);
  v10 = sub_29A2F4F50(a1 + 4, &v45);
  if (v10 || (v40 = "usdImaging/pointInstancerAdapter.cpp", v41 = "GetVisible", v42 = 1914, v43 = "virtual BOOL pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetVisible(const UsdPrim &, const SdfPath &, UsdTimeCode) const", v44 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v40, "it != _instancerData.end()", 0) & 1) != 0))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_UpdateInstancerVisibility(a4, a1, &v45, (v10 + 3));
    v47 = *(v10 + 193);
  }

  v11 = v47;
  if ((v9 & 0x400) != 0)
  {
    if (v47)
    {
      v12 = *ProtoPrim;
      if (ProtoPrim[1] - *ProtoPrim != 8)
      {
        v13 = 0;
        v14 = 8;
        do
        {
          pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, (v12 + v14), v35);
          pxrInternal__aapl__pxrReserved__::UsdPrim::GetPrototype(v35, v15, &v40);
          pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, (*ProtoPrim + v14 - 8), v30);
          pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_ComputeProtoVisibility(a1, &v40, v30, &v47);
          if ((v34 & 7) != 0)
          {
            atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v33);
          sub_29A1DE3A4(&v32);
          if (v31)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v31, v16);
          }

          if ((v43 & 7) != 0)
          {
            atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v42 + 1);
          sub_29A1DE3A4(&v42);
          if (v41)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v41, v17);
          }

          if ((v39 & 7) != 0)
          {
            atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v38);
          sub_29A1DE3A4(&v37);
          if (v36)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v36, v18);
          }

          ++v13;
          v12 = *ProtoPrim;
          v14 += 8;
        }

        while (v13 < ((ProtoPrim[1] - *ProtoPrim) >> 3) - 1);
      }

      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, (ProtoPrim + 5), &v40);
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, (ProtoPrim[1] - 8), v35);
      pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_ComputeProtoVisibility(a1, &v40, v35, &v47);
      if ((v39 & 7) != 0)
      {
        atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v38);
      sub_29A1DE3A4(&v37);
      if (v36)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v36, v19);
      }

      if ((v43 & 7) != 0)
      {
        atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v42 + 1);
      sub_29A1DE3A4(&v42);
      if (v41)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v41, v20);
      }

LABEL_35:
      v11 = v47;
    }
  }

  else
  {
    v11 = v47 & *(ProtoPrim + 52);
    v47 = v11;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v46);
  sub_29A1DE3A4(&v45);
  return v11 & 1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetPurpose(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, atomic_uint **a4@<X8>)
{
  if ((*(*this + 352))(this, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v11);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(this, &v11, a3);
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(this, ProtoPrim, &v10);
  }

  v10 = 0;
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetPurpose(this, a2, &v10, a4);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29B0412FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  if ((a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A57F434(va);
  sub_29A57F434(va1);
  sub_29A1DCEA8((v2 - 56));
  _Unwind_Resume(a1);
}

double pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetSubdivTags@<D0>(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, uint64_t a3@<X8>)
{
  if ((*(*a1 + 352))(a1, a2))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v9);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v9, a2);
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, v8);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetSubdivTags(a3);
}

void sub_29B041504(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_29A57F434(va);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetTopology(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, uint64_t a3@<X8>)
{
  if ((*(*a1 + 352))(a1, a2))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v8);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v8, a2);
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, v7);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetTopology(a3);
}

void sub_29B0416A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_29A57F434(va);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetCullStyle(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  if ((*(*a1 + 352))(a1, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v8);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v8, a3);
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, v7);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetCullStyle();
}