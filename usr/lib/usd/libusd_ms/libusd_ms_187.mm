void sub_29B041848(_Unwind_Exception *a1, uint64_t a2, ...)
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

double pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetExtent@<D0>(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, uint64_t a3@<X8>)
{
  if ((*(*a1 + 352))(a1, a2))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v9);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v9, a2);
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, v8);
  }

  *&result = pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtent(a3).u64[0];
  return result;
}

void sub_29B0419EC(_Unwind_Exception *a1, uint64_t a2, ...)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetDoubleSided(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  if ((*(*a1 + 352))(a1, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v8);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v8, a3);
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, v7);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetDoubleSided();
}

void sub_29B041B8C(_Unwind_Exception *a1, uint64_t a2, ...)
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

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetMaterialId@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, _DWORD *a3@<X8>)
{
  if ((*(*a1 + 352))(a1, a2))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v9);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v9, a2);
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, v8);
  }

  return pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialId(a3);
}

void sub_29B041DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  sub_29A57F434(va);
  sub_29A1DCEA8(va1);
  sub_29A57F434(va2);
  sub_29A1DCEA8((v3 - 56));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetLightParamValue(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a4@<X3>, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a5@<X8>, double a6@<D0>)
{
  if ((*(*a1 + 352))(a1, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v12);
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v12, a3);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetLightParamValue(a1, a2, a3, a4, a5, a6);
}

void sub_29B042078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_29A57F434(&a9);
  sub_29B03E130(&a13);
  sub_29A1DCEA8((v13 - 72));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetMaterialResource(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, uint64_t a3@<X8>)
{
  if ((*(*a1 + 352))(a1, a2))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v8);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v8, a2);
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, v7);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialResource(a3);
}

void sub_29B042228(_Unwind_Exception *a1, uint64_t a2, ...)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::Get(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, const pxrInternal__aapl__pxrReserved__::TfToken *a4@<X3>, uint64_t a5@<X8>)
{
  if ((*(*a1 + 352))(a1, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, v18);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, v18, a3);
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, v22);
  }

  if (sub_29A2F4F50(a1 + 4, a3))
  {
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    if (!v11)
    {
      v11 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    }

    if ((*(v11 + 9) ^ *a4) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v25, a2);
      v25[0] = &unk_2A2060328;
      v24 = 0;
      *v22 = 0u;
      v23 = 0u;
      pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::GetPositionsAttr(v25, v18);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
    }

    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    if (!v12)
    {
      v12 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    }

    if ((*(v12 + 7) ^ *a4) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v25, a2);
      v25[0] = &unk_2A2060328;
      LODWORD(v18[0]) = 3;
      v18[1] = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v20);
      v21 = 0;
      pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::UsesOrientationsf(v25, v18);
    }

    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    if (!v13)
    {
      v13 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
    }

    if ((*(v13 + 8) ^ *a4) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v25, a2);
      v25[0] = &unk_2A2060328;
      v24 = 0;
      *v22 = 0u;
      v23 = 0u;
      pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::GetScalesAttr(v25, v18);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
    }

    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v14)
    {
      v14 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v14 + 82) ^ *a4) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v25, a2);
      v25[0] = &unk_2A2060328;
      v24 = 0;
      *v22 = 0u;
      v23 = 0u;
      pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::GetVelocitiesAttr(v25, v18);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
    }

    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v15)
    {
      v15 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*v15 ^ *a4) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v25, a2);
      v25[0] = &unk_2A2060328;
      v24 = 0;
      *v22 = 0u;
      v23 = 0u;
      pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::GetAccelerationsAttr(v25, v18);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
    }

    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v16)
    {
      v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v16 + 2) ^ *a4) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v25, a2);
      v25[0] = &unk_2A2060328;
      v24 = 0;
      *v22 = 0u;
      v23 = 0u;
      pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::GetAngularVelocitiesAttr(v25, v18);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
    }

    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v18, a2);
    v21 = 0;
    v18[0] = &unk_2A2060598;
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v18, a4, v22);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::~UsdGeomPrimvarsAPI(v18);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v22, v17);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::Get(a2, a4, a5);
}

void sub_29B042AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_29A186B14(v15);
  sub_29A7A079C(&a9);
  sub_29A7A079C(&a15);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetExtComputationInputs@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v11);
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v13);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v14);
  v15 = 0u;
  v16 = 0u;
  v9 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrimForChild(a1, v6, a2, &v9))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, v9, &v8);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationInputs(a3);
  return sub_29B0020F0(&v10);
}

void sub_29B042E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A57F434(&a9);
  sub_29B0020F0(&a14);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetExtComputationOutputs@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v11);
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v13);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v14);
  v15 = 0u;
  v16 = 0u;
  v9 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrimForChild(a1, v6, a2, &v9))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, v9, &v8);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationOutputs(a3);
  return sub_29B0020F0(&v10);
}

void sub_29B042F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A57F434(&a9);
  sub_29B0020F0(&a14);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetExtComputationPrimvars@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v11);
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v13);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v14);
  v15 = 0u;
  v16 = 0u;
  v9 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrimForChild(a1, v6, a2, &v9))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, v9, &v8);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationPrimvars(a3);
  return sub_29B0020F0(&v10);
}

void sub_29B043118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A57F434(&a9);
  sub_29B0020F0(&a14);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetExtComputationInput@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v11);
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v13);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v14);
  v15 = 0u;
  v16 = 0u;
  v9 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrimForChild(a1, v6, a2, &v9))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, v9, &v8);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationInput(a3);
  return sub_29B0020F0(&v10);
}

void sub_29B0432B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A57F434(&a9);
  sub_29B0020F0(&a14);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetInstanceIndices(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, unsigned int *a3@<X3>, uint64_t a4@<X8>, double a5@<D0>)
{
  if ((*(*a1 + 352))(a1, a2))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v19 + 1);
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v21 + 1);
    v22 = 0u;
    v23 = 0u;
    v18 = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrimForChild(a1, v10, a2, &v18))
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, v18, v17);
    }

    sub_29B0020F0(&v19);
  }

  v11 = sub_29A2F4F50(a1 + 4, a2);
  if (v11)
  {
    v12 = v11;
    v13 = sub_29A328A44(v11 + 4, a3);
    if (v13 && v12[13] != sub_29AD16F3C(v12 + 12, v13 + 16))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(a2, &v19);
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, &v19, v17);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19 + 1);
      sub_29A1DE3A4(&v19);
      pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetPerPrototypeIndices(a1, v17, &v19, a5);
    }

    v19 = "usdImaging/pointInstancerAdapter.cpp";
    v20 = "GetInstanceIndices";
    v21 = 2334;
    *&v22 = "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetInstanceIndices(const UsdPrim &, const SdfPath &, const SdfPath &, UsdTimeCode) const";
    BYTE8(v22) = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v15 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v19, "No matching ProtoRootPath found for (%s, %s)", v16, Text, v15);
  }

  *(a4 + 8) = 0;
}

void sub_29B0435C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29AFA1C7C(va1);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetExtComputationKernel@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v11);
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v13);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v14);
  v15 = 0u;
  v16 = 0u;
  v9 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrimForChild(a1, v6, a2, &v9))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, v9, &v8);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationKernel(a3);
  return sub_29B0020F0(&v10);
}

void sub_29B04377C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A57F434(&a9);
  sub_29B0020F0(&a14);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::PopulateSelection(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = *MEMORY[0x29EDCA608];
  if ((*(*a1 + 352))(a1, a3))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a3, &v21);
    if (*(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v21, a3) + 3))
    {
      if (sub_29AF49C14(9))
      {
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
        v10 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v21);
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("PopulateSelection: proto = %s pi = %s\n", v11, v12, Text, v10, a6);
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a4);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21 + 1);
    sub_29A1DE3A4(&v21);
  }

  else if (sub_29A2F4F50(a1 + 4, a3))
  {
    if (sub_29AF49C14(9))
    {
      v13 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("PopulateSelection: pi = %s\n", v14, v15, v13);
    }

    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    LODWORD(v26[0]) = *a4;
    v16 = *(a4 + 8);
    v26[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 48), 1uLL, memory_order_relaxed);
    }

    sub_29A1E21F4(&v27, (a4 + 16));
    sub_29A1E2240(&v28, (a4 + 20));
    v17 = *(a4 + 24);
    v29 = v17;
    if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v29 &= 0xFFFFFFFFFFFFFFF8;
    }

    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v27))
    {
      sub_29A7E416C(v26, v22);
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v22);
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v26);
  }

  return 0;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetVolumeFieldDescriptors(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  if ((*(*a1 + 352))(a1, a2))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v8);
    ProtoPrim = pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoPrim(a1, &v8, a2);
    pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_GetProtoUsdPrim(a1, ProtoPrim, v7);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetVolumeFieldDescriptors(a3);
}

void sub_29B0448A8(_Unwind_Exception *a1, uint64_t a2, ...)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v3[0] = "usdImaging/pointInstancerAdapter.cpp";
  v3[1] = "_RemovePrim";
  v3[2] = 2634;
  v3[3] = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::_RemovePrim(const SdfPath &, UsdImagingIndexProxy *)";
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Should use overidden ProcessPrimResync/ProcessPrimRemoval");
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPointInstancerAdapter::GetRelativeInstancerTransform(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *a1, double a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::SdfPath *a4)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(a4, v7);
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim(a1, v7, v8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v7 + 1);
  sub_29A1DE3A4(v7);
  memset(v7, 0, sizeof(v7));
  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetTransform(a1, v8, a4, a2);
}

void sub_29B044B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  sub_29A57F434(&a42);
  sub_29A1DCEA8((v42 - 232));
  sub_29A57F434(v42 - 96);
  _Unwind_Resume(a1);
}

void *sub_29B044B8C(void *a1)
{
  *a1 = &unk_2A20AFF78;
  sub_29B044E80((a1 + 4));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_29B044BDC(void *a1)
{
  *a1 = &unk_2A20AFF78;
  sub_29B044E80((a1 + 4));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(a1);
}

uint64_t sub_29B044C3C(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B01B8;
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

void sub_29B044CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B044CEC(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B044D14@<D0>(_OWORD *a1@<X8>)
{
  sub_29B044D50(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B044D50(void *a1@<X8>)
{
  v2 = operator new(0x60uLL);
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *v2 = &unk_2A20B01F8;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 3) = &unk_2A20AFF78;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 22) = 1065353216;
  *a1 = v2 + 24;
  a1[1] = v2;
  *(v2 + 2) = 0u;

  sub_29A017894(a1, v2 + 4, (v2 + 24));
}

void sub_29B044E14(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B01F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B044E80(uint64_t a1)
{
  sub_29B044EBC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29B044EBC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29B044F00((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29B044F00(uint64_t a1)
{
  std::mutex::~mutex((a1 + 112));
  sub_29A1DE554((a1 + 104), 0);
  v3 = (a1 + 80);
  sub_29B044F8C(&v3);
  v3 = (a1 + 56);
  sub_29A1E234C(&v3);
  sub_29B0451E8(a1 + 16);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

void sub_29B044F8C(void ***a1)
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
        v4 -= 4;
        sub_29B045014(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29B045014(uint64_t a1, _DWORD *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 1);

  return sub_29A1DE3A4(a2);
}

_DWORD *sub_29B045054(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void sub_29B045094(uint64_t *a1, uint64_t a2, char *a3)
{
  v3 = a1[4];
  if (v3)
  {
    if (a1[3] || (v4 = atomic_load((v3 - 16)), v4 != 1))
    {
      sub_29B2CF498(a1, a1 + 4, a3);
    }
  }
}

void *sub_29B0450D8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  result = sub_29B045150(a1, a3);
  if (a4)
  {
    v7 = a2 + 40 * a4;
    v8 = result;
    do
    {
      v9 = *(a2 + 16);
      *v8 = *a2;
      *(v8 + 1) = v9;
      v10 = *(a2 + 32);
      v8[4] = v10;
      if (v10)
      {
        v11 = (v10 - 16);
        if (v8[3])
        {
          v11 = v8[3];
        }

        atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
      }

      a2 += 40;
      v8 += 5;
    }

    while (a2 != v7);
  }

  return result;
}

void *sub_29B045150(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_AllocateNew(size_t) [ELEM = pxrInternal__aapl__pxrReserved__::VtArray<int>]");
  if (a2 > 0x333333333333332)
  {
    v3 = -1;
  }

  else
  {
    v3 = 40 * a2 + 16;
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

uint64_t sub_29B0451E8(uint64_t a1)
{
  sub_29B045224(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29B045224(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29B045268((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29B045268(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 52));
  sub_29A1DE3A4((a1 + 48));
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v4 = (a1 + 8);
  sub_29A1E234C(&v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

void *sub_29B0452D4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B0248;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B04532C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B045348(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B045370(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B0453A0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B0298))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29B0453E0(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

  sub_29B045628(a1, v6, a4, &v22);
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

void sub_29B045610(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29B045778(va, 0);
  _Unwind_Resume(a1);
}

_DWORD *sub_29B045628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0xD8uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v10 = *a3;
  result = sub_29B0456AC(v8 + 4, &v10);
  *(a4 + 16) = 1;
  return result;
}

_DWORD *sub_29B0456AC(_DWORD *a1, _DWORD **a2)
{
  v3 = *a2;
  v4 = sub_29A1E21F4(a1, *a2);
  sub_29A1E2240(v4 + 1, (v3 + 4));
  sub_29B045704((a1 + 2));
  return a1;
}

uint64_t sub_29B045704(uint64_t a1)
{
  v2 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v2 + 1);
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 850045863;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  return a1;
}

void sub_29B045778(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B044F00(v2 + 16);
    }

    operator delete(v2);
  }
}

void *sub_29B0457D4(uint64_t *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = (a1[1] - *a1) >> 4;
    sub_29A1E21F4(&v11, a2);
    sub_29A1E2240(&v12, (a2 + 4));
    v13 = v5;
    v14 = v11;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(&v11);
    v15 = v12;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(&v12);
    v16 = v13;
    v6 = sub_29A2F49C0(v4, &v14, &v14);
    LOBYTE(v5) = v7;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
    sub_29A1DE3A4(&v14);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
    sub_29A1DE3A4(&v11);
    if ((v5 & 1) == 0)
    {
      return (*a1 + 16 * v6[3]);
    }

    goto LABEL_9;
  }

  result = *a1;
  v9 = a1[1];
  if (*a1 != v9)
  {
    while (*result != *a2)
    {
      result += 2;
      if (result == v9)
      {
        goto LABEL_9;
      }
    }
  }

  if (result == v9)
  {
LABEL_9:
    sub_29A1E21F4(&v14, a2);
    sub_29A1E2240(&v15, (a2 + 4));
    v16 = *(a2 + 8);
    sub_29B0459A8(a1, &v14);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
    sub_29A1DE3A4(&v14);
    v10 = a1[1];
    if ((v10 - *a1) >= 0x7F1)
    {
      sub_29B045D14(a1);
      v10 = a1[1];
    }

    return (v10 - 16);
  }

  return result;
}

void sub_29B04596C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29B045054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B0459A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = sub_29B045A18(a1, a2);
  }

  else
  {
    sub_29A1E21F4(*(a1 + 8), a2);
    sub_29A1E2240((v4 + 4), (a2 + 4));
    *(v4 + 8) = *(a2 + 8);
    result = v4 + 16;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29B045A18(uint64_t a1, uint64_t a2)
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

  v19 = a1;
  if (v7)
  {
    v8 = sub_29A017BD4(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[16 * v2];
  v16 = v8;
  v17 = v9;
  *(&v18 + 1) = &v8[16 * v7];
  sub_29A1E21F4(v9, a2);
  sub_29A1E2240(v9 + 1, (a2 + 4));
  *(v9 + 1) = *(a2 + 8);
  *&v18 = v9 + 16;
  v10 = *(a1 + 8);
  v11 = &v9[*a1 - v10];
  sub_29B045B38(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29B045C98(&v16);
  return v15;
}

void sub_29B045B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29B045C98(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B045B38(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
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
      sub_29A1E21F4(v4, v8);
      sub_29A1E2240((v4 + 4), v8 + 1);
      *(v4 + 8) = *(v8 + 1);
      v8 += 4;
      v4 = v13 + 16;
      v13 += 16;
    }

    while (v8 != a3);
    v11 = 1;
    while (v6 != a3)
    {
      sub_29B045014(a1, v6);
      v6 += 4;
    }
  }

  return sub_29B045C0C(v10);
}

uint64_t sub_29B045C0C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29B045C44(a1);
  }

  return a1;
}

uint64_t *sub_29B045C44(uint64_t *result)
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
      v3 -= 4;
      result = sub_29B045014(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29B045C98(void **a1)
{
  sub_29B045CCC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29B045CCC(_DWORD *result)
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
      result = sub_29B045014(v4, (v1 - 16));
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

void sub_29B045D14(uint64_t *a1)
{
  v1 = a1 + 3;
  if (!a1[3])
  {
    v3 = operator new(0x28uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 8) = 1065353216;
    sub_29A019AA0(v3, 0x80uLL);
    sub_29A1DE554(v1, v3);
    v4 = *a1;
    if (a1[1] != *a1)
    {
      v5 = 0;
      v6 = 4;
      do
      {
        v7 = *v1;
        v8 = (v4 + v6);
        sub_29A1E21F4(&v9, (v4 + v6 - 4));
        sub_29A1E2240(&v10, v8);
        v11 = v5;
        v12 = v9;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(&v9);
        v13 = v10;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(&v10);
        v14 = v11;
        sub_29A2F49C0(v7, &v12, &v12);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
        sub_29A1DE3A4(&v12);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
        sub_29A1DE3A4(&v9);
        ++v5;
        v4 = *a1;
        v6 += 16;
      }

      while (v5 < (a1[1] - *a1) >> 4);
    }
  }
}

void sub_29B045E48(_Unwind_Exception *a1)
{
  v3 = sub_29A1DE590(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_29B045E88(void ***a1)
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
        sub_29B045F10(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29B045F10(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 20));

  return sub_29A1DE3A4((a2 + 16));
}

uint64_t sub_29B045F50(uint64_t *a1, uint64_t a2)
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

  v19 = a1;
  if (v6)
  {
    v7 = sub_29A040BCC(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[56 * v2];
  v16 = v7;
  v17 = v8;
  *(&v18 + 1) = &v7[56 * v6];
  *v8 = *a2;
  sub_29A1DDD84(v8 + 4, (a2 + 16));
  sub_29A1DDDC0(v8 + 5, (a2 + 20));
  v9 = *(a2 + 24);
  *(v8 + 37) = *(a2 + 37);
  *(v8 + 24) = v9;
  *&v18 = v8 + 56;
  v10 = a1[1];
  v11 = &v8[*a1 - v10];
  sub_29B0460B8(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29B04622C(&v16);
  return v15;
}

void sub_29B0460A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29B04622C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B0460B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v4 = a4;
    v6 = a2;
    v8 = a2 + 16;
    do
    {
      *v4 = *(v8 - 16);
      sub_29A1DDD84((v4 + 16), v8);
      sub_29A1DDDC0((v4 + 20), (v8 + 4));
      v9 = *(v8 + 8);
      *(v4 + 37) = *(v8 + 21);
      *(v4 + 24) = v9;
      v4 = v15 + 56;
      v15 += 56;
      v10 = v8 + 40;
      v8 += 56;
    }

    while (v10 != a3);
    v13 = 1;
    while (v6 != a3)
    {
      sub_29B045F10(a1, v6);
      v6 += 56;
    }
  }

  return sub_29B0461A0(v12);
}

uint64_t sub_29B0461A0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29B0461D8(a1);
  }

  return a1;
}

uint64_t *sub_29B0461D8(uint64_t *result)
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
      result = sub_29B045F10(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29B04622C(void **a1)
{
  sub_29B046260(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29B046260(_DWORD *result)
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
      result = sub_29B045F10(v4, v1 - 56);
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_29B0462A8(uint64_t *a1, uint64_t a2)
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

  v19 = a1;
  if (v6)
  {
    v7 = sub_29A040BCC(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[56 * v2];
  v16 = v7;
  v17 = v8;
  *(&v18 + 1) = &v7[56 * v6];
  *v8 = *a2;
  sub_29A1E21F4(v8 + 4, (a2 + 16));
  sub_29A1E2240(v8 + 5, (a2 + 20));
  v9 = *(a2 + 24);
  *(v8 + 37) = *(a2 + 37);
  *(v8 + 24) = v9;
  *&v18 = v8 + 56;
  v10 = a1[1];
  v11 = &v8[*a1 - v10];
  sub_29B0460B8(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29B04622C(&v16);
  return v15;
}

void sub_29B0463FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29B04622C(va);
  _Unwind_Resume(a1);
}

void *sub_29B046410(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

  sub_29B046658(a1, v6, a4, &v22);
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

void sub_29B046640(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29B04674C(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29B046658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x50uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v10 = *a3;
  result = sub_29B0466DC((v8 + 2), &v10);
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29B0466DC(uint64_t a1, _DWORD **a2)
{
  v3 = *a2;
  v4 = sub_29A1E21F4(a1, *a2);
  sub_29A1E2240(v4 + 1, (v3 + 4));
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 48));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 52));
  *(a1 + 56) = 0;
  *(a1 + 60) = 1;
  return a1;
}

void sub_29B04674C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B045268(v2 + 16);
    }

    operator delete(v2);
  }
}

uint64_t *sub_29B0467A8(void *a1, unsigned int *a2)
{
  result = sub_29A2F4F50(a1, a2);
  if (result)
  {
    sub_29B0467E0(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29B0467E0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29B045268(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t sub_29B04683C(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29B0468B4(a1, i + 4, i + 4);
  }

  return a1;
}

void *sub_29B0468B4(void *a1, unsigned int *a2, _DWORD *a3)
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
    sub_29B046AFC(a1, v4, a3, v11);
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

void sub_29B046AE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29B04674C(va, 0);
  _Unwind_Resume(a1);
}

void sub_29B046AFC(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x50uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  sub_29B046B6C((v8 + 2), a3);
}

void sub_29B046B6C(uint64_t a1, _DWORD *a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, a2 + 1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

uint64_t sub_29B046C14(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29B044F00(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

void **sub_29B046C70(void **a1)
{
  sub_29B046CA4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29B046CA4(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_29AEE6928(&v5);
  }
}

uint64_t sub_29B046CF8()
{
  v1 = nullsub_1799;
  return sub_29B046FE8(&var8);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPortalLightAdapter::~UsdImagingPortalLightAdapter(pxrInternal__aapl__pxrReserved__::UsdImagingPortalLightAdapter *this)
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

void *pxrInternal__aapl__pxrReserved__::UsdImagingPortalLightAdapter::GetImagingSubprims@<X0>(void *a1@<X8>)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingPortalLightAdapter::GetImagingSubprimType(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, atomic_uint **a2@<X8>)
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

  v7 = *(v6 + 31);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingPortalLightAdapter::Populate(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2)
{
  v3[0] = "usdImaging/portalLightAdapter.cpp";
  v3[1] = "Populate";
  v3[2] = 56;
  v3[3] = "virtual SdfPath pxrInternal__aapl__pxrReserved__::UsdImagingPortalLightAdapter::Populate(const UsdPrim &, UsdImagingIndexProxy *, const UsdImagingInstancerContext *)";
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Portal lights are not yet supported in USD imaging");
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPortalLightAdapter::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImagingPortalLightAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  v3[0] = "usdImaging/portalLightAdapter.cpp";
  v3[1] = "_RemovePrim";
  v3[2] = 64;
  v3[3] = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingPortalLightAdapter::_RemovePrim(const SdfPath &, UsdImagingIndexProxy *)";
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Portal lights are not yet supported in USD imaging");
}

uint64_t sub_29B046FE8(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20B0500;
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

void sub_29B047074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B047098(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

double sub_29B0470C0@<D0>(_OWORD *a1@<X8>)
{
  sub_29B0470FC(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B0470FC(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20B0540;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = &unk_2A20B02C0;
  *a1 = v2 + 3;
  a1[1] = v2;
  v2[4] = 0;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void sub_29B0471A8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B0540;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B047238()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_ENABLE_SHARED_XFORM_CACHE))
  {
    sub_29B2CF4F4();
  }
}

void sub_29B047268()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_ENABLE_BINDING_CACHE))
  {
    sub_29B2CF524();
  }
}

void sub_29B047298()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_ENABLE_VIS_CACHE))
  {
    sub_29B2CF554();
  }
}

void sub_29B0472C8()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_ENABLE_PURPOSE_CACHE))
  {
    sub_29B2CF584();
  }
}

void sub_29B0472F8()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_ENABLE_POINT_INSTANCER_INDICES_CACHE))
  {
    sub_29B2CF5B4();
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetImagingSubprims(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this@<X0>, void *a2@<X8>)
{
  v8[0] = "usdImaging/primAdapter.cpp";
  v8[1] = "GetImagingSubprims";
  v8[2] = 84;
  v8[3] = "virtual TfTokenVector pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetImagingSubprims(const UsdPrim &)";
  v9 = 0;
  if (!this)
  {
    __cxa_bad_typeid();
  }

  pxrInternal__aapl__pxrReserved__::TfType::GetCanonicalTypeName(*(*this - 8), __p);
  if (v7 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v8, "Datasource support not yet added for adapter '%s'", v4, v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_29B0473DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::InvalidateImagingSubprim(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a2@<X3>, int a3@<W4>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a4@<X8>)
{
  if (*a1)
  {
    *(a4 + 56) = 0x800000000;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::Invalidate(a1, a2, a3, a4);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::ShouldCullSubtree(pxrInternal__aapl__pxrReserved__ **this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdRenderSettingsBase::_GetStaticTfType(this);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v4);
  IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(this, SchemaInfo);
  if (IsA)
  {
    v8 = this[1];
    if (!v8 || (*(v8 + 57) & 8) != 0)
    {
      IsA = pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(this[1], v7);
    }

    if (**(v8 + 3))
    {
      return 0;
    }
  }

  v9 = pxrInternal__aapl__pxrReserved__::UsdGeomImageable::_GetStaticTfType(IsA);
  v11 = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(v9, v10);
  if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(this, v11))
  {
    return 0;
  }

  v14 = this[1];
  if (!v14 || (*(v14 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v14, v12);
  }

  return **(v14 + 3) != 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::ProcessPrimChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
  }

  v5 = *a4;
  v6 = *(a4 + 8);
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    FieldDefinition = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetFieldDefinition(v4, v5);
    if (FieldDefinition)
    {
      if (pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FieldDefinition::IsPlugin(FieldDefinition))
      {
        break;
      }
    }

    ++v5;
  }

  return 4294967293;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::ProcessPrimResync(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  (*(*this + 528))(this);
  v5 = sub_29A5A70E0((*(this + 3) + 864));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(v5, a2, &v6);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v6);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrim@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_29A5A70E0((*(this + 3) + 864));

  return pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(v5, a2, a3);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ResyncDependents(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a3)
{
  result = sub_29AFAF990(*(this + 3) + 112);
  if (result != v7)
  {
    v8 = result;
    v9 = v7;
    do
    {
      if (*(v8 + 9) != *a2)
      {
        if (sub_29AF49C14(2))
        {
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
          v11 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v8 + 9));
          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("<%s> Resyncing dependent %s\n", v12, v13, Text, v11);
        }

        result = pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GetHdPrimInfo(*(this + 3), v8 + 9);
        if (result)
        {
          v14 = result;
          if (*result || (v18[0] = "usdImaging/primAdapter.cpp", v18[1] = "_ResyncDependents", v18[2] = 245, v18[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ResyncDependents(const SdfPath &, UsdImagingIndexProxy *)", v19 = 0, result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v18, "primInfo->adapter != nullptr", 0), (result & 1) != 0))
          {
            result = (*(**v14 + 136))(*v14, v8 + 9, a3);
          }
        }
      }

      v15 = *(v8 + 1);
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = *(v8 + 2);
          v17 = *v16 == v8;
          v8 = v16;
        }

        while (!v17);
      }

      v8 = v16;
    }

    while (v16 != v9);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetInstanceCategories(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

double pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetSubdivTags@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetInstancerId@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this@<X0>, _DWORD *a2@<X8>)
{
  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(this);
  sub_29A1E21F4(a2, v5);

  return sub_29A1E2240(a2 + 1, v5 + 1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetInstancerPrototypes(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::SamplePrimvar(double a1, uint64_t a2, const pxrInternal__aapl__pxrReserved__::UsdPrim *a3, uint64_t a4, const pxrInternal__aapl__pxrReserved__::TfToken *a5, uint64_t a6)
{
  v8[9] = *MEMORY[0x29EDCA608];
  *&v8[4] = a1;
  if (a6)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v8, a3);
    v8[3] = 0;
    v8[0] = &unk_2A2060598;
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::FindPrimvarWithInheritance(v8, a5);
  }

  return 0;
}

void sub_29B047EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  sub_29A7A079C(&a22);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::~UsdGeomPrimvarsAPI(&a28);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetScenePrimPath@<X0>(_DWORD *a1@<X1>, _DWORD *a2@<X8>)
{
  v3 = sub_29A1E21F4(a2, a1) + 1;

  return sub_29A1E2240(v3, a1 + 1);
}

void sub_29B048404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_29A008B0C(&a17);
  sub_29A1DCEA8((v17 - 76));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetVolumeFieldDescriptors(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::LookupLightParamAttribute(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v89[2] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1754158, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1754158))
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v6)
    {
      v6 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v7)
    {
      v7 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(v63, v6, v7 + 13);
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v8)
    {
      v8 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v9)
    {
      v9 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v64, v8 + 1, v9 + 14);
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v10)
    {
      v10 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v11)
    {
      v11 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v65, v10 + 2, v11 + 15);
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v12)
    {
      v12 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v13)
    {
      v13 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v66, v12 + 14, v13 + 16);
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v14)
    {
      v14 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v15)
    {
      v15 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v67, v14 + 3, v15 + 17);
    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v16)
    {
      v16 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v17)
    {
      v17 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v68, v16 + 5, v17 + 18);
    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v18)
    {
      v18 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v19)
    {
      v19 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v69, v18 + 6, v19 + 19);
    v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v20)
    {
      v20 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v21)
    {
      v21 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v70, v20 + 7, v21 + 20);
    v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v22)
    {
      v22 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v23)
    {
      v23 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v71, v22 + 9, v23 + 21);
    v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v24)
    {
      v24 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v25)
    {
      v25 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v72, v24 + 16, v25 + 22);
    v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v26)
    {
      v26 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v27)
    {
      v27 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v73, v26 + 8, v27 + 23);
    v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v28)
    {
      v28 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v29)
    {
      v29 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v74, v28 + 15, v29 + 36);
    v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v30)
    {
      v30 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v31)
    {
      v31 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v75, v30 + 10, v31 + 37);
    v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v32)
    {
      v32 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v33)
    {
      v33 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v76, v32 + 11, v33 + 38);
    v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v34)
    {
      v34 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v35)
    {
      v35 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v77, v34 + 12, v35 + 39);
    v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v36)
    {
      v36 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v37)
    {
      v37 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v78, v36 + 18, v37 + 31);
    v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v38)
    {
      v38 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v39)
    {
      v39 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v79, v38 + 19, v39 + 32);
    v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v40)
    {
      v40 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v41 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v41)
    {
      v41 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v80, v40 + 20, v41 + 29);
    v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v42)
    {
      v42 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v43)
    {
      v43 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v81, v42 + 21, v43 + 30);
    v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v44)
    {
      v44 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v45)
    {
      v45 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v82, v44 + 22, v45 + 34);
    v46 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v46)
    {
      v46 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v47 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v47)
    {
      v47 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v83, v46 + 23, v47 + 33);
    v48 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v48)
    {
      v48 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v49 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v49)
    {
      v49 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v84, v48 + 24, v49 + 35);
    v50 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v50)
    {
      v50 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v51 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v51)
    {
      v51 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v85, v50 + 25, v51 + 26);
    v52 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v52)
    {
      v52 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v53 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v53)
    {
      v53 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v86, v52 + 26, v53 + 24);
    v54 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v54)
    {
      v54 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v55 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v55)
    {
      v55 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v87, v54 + 27, v55 + 25);
    v56 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v56)
    {
      v56 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v57)
    {
      v57 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(&v88, v56 + 28, v57 + 27);
    v58 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v58)
    {
      v58 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    v59 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v59)
    {
      v59 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    sub_29A3AA17C(v89, v58 + 29, v59 + 28);
    sub_29B04E448(qword_2A1754130, v63, 27);
    v60 = 54;
    do
    {
      v61 = v63[v60 - 1];
      if ((v61 & 7) != 0)
      {
        atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v62 = v63[v60 - 2];
      if ((v62 & 7) != 0)
      {
        atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v60 -= 2;
    }

    while (v60 * 8);
    __cxa_atexit(sub_29B048E64, qword_2A1754130, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1754158);
  }

  v5 = sub_29A16039C(qword_2A1754130, a2);
  if (v5)
  {
    a2 = (v5 + 3);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::HasAttribute(this, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetLightParamValue(void *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, uint64_t a3@<X2>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a4@<X3>, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a5@<X8>, double a6@<D0>)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v33, a2);
  v35 = 0;
  v33 = &unk_2A20618F0;
  v13 = a1[3];
  if (v34 && (*(v34 + 57) & 8) == 0 && (off_2A2061910(&v33) & 1) != 0)
  {
    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v15)
    {
      v15 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v15 + 45) ^ *a4) > 7)
    {
      v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v23)
      {
        v23 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(v23 + 34) ^ *a4) <= 7)
      {
        memset(v32, 0, sizeof(v32));
        pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::GetFiltersRel(&v33, &v36);
        pxrInternal__aapl__pxrReserved__::UsdRelationship::GetForwardedTargets(&v36, v32);
        if ((v40 & 7) != 0)
        {
          atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v39);
        sub_29A1DE3A4(&v38);
        if (v37)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v37, v24);
        }

        *(a5 + 1) = &off_2A2048F00;
        sub_29A23E64C();
      }

      v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v25)
      {
        v25 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(v25 + 73) ^ *a4) > 7)
      {
        v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
        if (!v26)
        {
          v26 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
        }

        if ((*(v26 + 7) ^ *a4) > 7)
        {
          v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
          if (!v27)
          {
            v27 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
          }

          if ((*(v27 + 85) ^ *a4) <= 7)
          {
            if (!v34 || (*(v34 + 57) & 8) != 0)
            {
              v28 = 0;
            }

            else
            {
              v28 = v33[4](&v33);
            }

            *(a5 + 1) = &unk_2A20443C3;
            *a5 = v28;
            goto LABEL_41;
          }

          v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
          if (!v29)
          {
            v29 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
          }

          if ((*(v29 + 51) ^ *a4) <= 7)
          {
            *(a5 + 1) = 0;
            pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::GetMaterialSyncModeAttr(&v33, &v36);
            v30.n128_f64[0] = a6;
            pxrInternal__aapl__pxrReserved__::UsdAttribute::Get(&v36, a5, v30);
            sub_29A5888DC(&v36);
            goto LABEL_41;
          }
        }

        else if ((*(a1[3] + 8990) & 1) == 0 || ((*(*a1 + 360))(a1, a2, a3, a6) & 1) == 0)
        {
          *(a5 + 1) = &unk_2A2044C63;
          *a5 = 0;
          goto LABEL_41;
        }

        *(a5 + 1) = 0;
        pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::LookupLightParamAttribute(a2, a4, v14);
      }

      pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::GetShadowLinkCollectionAPI(&v33, &v36);
      pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::GetIdForCollection((v13 + 6208), &v36, v32);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::GetLightLinkCollectionAPI(&v33, &v36);
      pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::GetIdForCollection((v13 + 6208), &v36, v32);
    }

    v16 = v32[0];
    *a5 = v32[0];
    *(a5 + 1) = &off_2A2044E88 + 1;
    if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *a5 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v32[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v32[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::~UsdCollectionAPI(&v36);
  }

  else
  {
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v17)
    {
      v17 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v17 + 48) ^ *a4) > 7)
    {
      v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v21)
      {
        v21 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(v21 + 47) ^ *a4) > 7)
      {
        *(a5 + 1) = 0;
        pxrInternal__aapl__pxrReserved__::UsdPrim::HasAttribute(a2, a4);
      }

      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v32, a2);
      v32[0] = &unk_2A2061A18;
      pxrInternal__aapl__pxrReserved__::UsdLuxLightFilter::GetFilterLinkCollectionAPI(v32, &v36);
      pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::GetIdForCollection((v13 + 6208), &v36, &v31);
      v22 = v31;
      *a5 = v31;
      *(a5 + 1) = &off_2A2044E88 + 1;
      if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *a5 &= 0xFFFFFFFFFFFFFFF8;
      }

      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::~UsdCollectionAPI(&v36);
      pxrInternal__aapl__pxrReserved__::UsdLuxLightFilter::~UsdLuxLightFilter(v32);
    }

    else
    {
      v18 = *(a2 + 1);
      if (!v18 || (*(v18 + 57) & 8) != 0)
      {
        pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v18, v12);
      }

      v19 = *(v18 + 24);
      *(a5 + 1) = &off_2A2044E88 + 1;
      v20 = *(v19 + 48);
      *a5 = v20;
      if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *a5 &= 0xFFFFFFFFFFFFFFF8;
      }
    }
  }

LABEL_41:
  pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::~UsdLuxLightAPI(&v33);
}

void sub_29B04945C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::~UsdLuxLightAPI(va);
  _Unwind_Resume(a1);
}

__n128 pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetRootTransform@<Q0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 3);
  v3 = *(v2 + 1056);
  *(a2 + 64) = *(v2 + 1040);
  *(a2 + 80) = v3;
  v4 = *(v2 + 1088);
  *(a2 + 96) = *(v2 + 1072);
  *(a2 + 112) = v4;
  v5 = *(v2 + 992);
  *a2 = *(v2 + 976);
  *(a2 + 16) = v5;
  result = *(v2 + 1008);
  v7 = *(v2 + 1024);
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X8>)
{
  v4 = *a2;
  if (a2[1] == *a2)
  {
    *a3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);

    return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  }

  else
  {
    sub_29A1E21F4(a3, *a2);
    result = sub_29A1E2240(a3 + 1, v4 + 1);
    if ((a2[1] - *a2) >= 9)
    {
      v8 = sub_29A5A70E0((*(a1 + 24) + 864));
      pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(v8, a3, &v18);
      if ((sub_29A5A9294(&v18) & 1) == 0)
      {
        v13 = "usdImaging/primAdapter.cpp";
        v14 = "_GetPrimPathFromInstancerChain";
        v15 = 874;
        v16 = "SdfPath pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetPrimPathFromInstancerChain(const SdfPathVector &) const";
        v17 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v13, "prim.IsInPrototype()", 0);
      }

      LODWORD(v13) = v18;
      v14 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(v19 + 6, 1uLL, memory_order_relaxed);
      }

      sub_29A1E21F4(&v15, &v20);
      sub_29A1E2240(&v15 + 1, &v21);
      v16 = v22;
      if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v16 &= 0xFFFFFFFFFFFFFFF8;
      }

      if (sub_29A5B9DEC(&v13, v9))
      {
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v13);
      }

      sub_29A5B9D18(&v13, &v11);
      LODWORD(v13) = v11;
      if (v14)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v10);
      }

      v14 = v12;
      v12 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }
  }

  return result;
}

void sub_29B0498D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A57F434(va);
  sub_29A1DCEA8(v11);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetMaterialBindingPurpose(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this)
{
  v1 = *(*pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(*(*(this + 3) + 8)) + 280);

  return v1();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetMaterialRenderContexts(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this)
{
  v1 = *(*pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(*(*(this + 3) + 8)) + 296);

  return v1();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetRenderSettingsNamespaces(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this)
{
  v1 = *(*pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(*(*(this + 3) + 8)) + 304);

  return v1();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsPrimvarFilteringNeeded(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this)
{
  v1 = *(*pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(*(*(this + 3) + 8)) + 312);

  return v1();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_GetShaderSourceTypes(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this)
{
  v1 = *(*pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(*(*(this + 3) + 8)) + 320);

  return v1();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_MergePrimvar(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, uint64_t *a5, char a6)
{
  sub_29ACCA394(&v11, a3, a4, a5, a6);
  v9 = *a2;
  v8 = a2[1];
  if (*a2 == v8)
  {
LABEL_4:
    result = sub_29AE70BB0(a2, &v11);
  }

  else
  {
    while ((*a3 ^ *v9) > 7)
    {
      v9 += 32;
      if (v9 == v8)
      {
        goto LABEL_4;
      }
    }

    sub_29A166F2C(v9, &v11);
    *(v9 + 8) = v12;
    result = sub_29A166F2C((v9 + 16), &v13);
    *(v9 + 24) = v14;
  }

  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29B049C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29B294B14(&a9);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_RemovePrimvar(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v7 = *a2;
  v6 = *(a2 + 8);
  if (*a2 != v6)
  {
    v13 = v3;
    v14 = v4;
    v9 = *a3;
    while ((v9 ^ *v7) > 7)
    {
      v7 += 4;
      if (v7 == v6)
      {
        return result;
      }
    }

    sub_29AE75CE8(&v12, (v7 + 4), v6, v7);
    return sub_29ABEEA50(a2, v10);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ComputeAndMergePrimvar(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *this, double a4, uint64_t a5, uint64_t a6)
{
  v19 = *MEMORY[0x29EDCA608];
  v18 = 0;
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetPrimvarName(this, &v16);
  if (pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::Get<pxrInternal__aapl__pxrReserved__::VtValue>(this, v17, a4))
  {
    if (!a6)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(this, __p);
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdInterpolation(__p, v12);
      if ((__p[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::GetRoleName(this, __p);
    pxrInternal__aapl__pxrReserved__::UsdImagingUsdToHdRole(__p, &v15);
    if ((__p[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (sub_29AF49C14(10))
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsIndexed(this);
  }

  v11 = sub_29AF49C14(10);
  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_RemovePrimvar(v11, a5, &v16);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return sub_29A186B14(v17);
}

void sub_29B049F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t __p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if ((__p & 7) != 0)
  {
    atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a20 & 7) != 0)
  {
    atomic_fetch_add_explicit((a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A186B14(&a21);
  _Unwind_Resume(a1);
}

void sub_29B04A194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A5888DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B04A1B4(uint64_t result, void *a2, uint64_t *a3, pxrInternal__aapl__pxrReserved__::SdfPath *a4)
{
  v5 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    v8 = -v5;
    while ((*a2 ^ *v5) >= 8)
    {
      v5 += 32;
      v8 -= 32;
      if (v5 == v4)
      {
        return result;
      }
    }

    if (v5 != v4 && (result & 1) == 0)
    {
      if (sub_29AF49C14(2))
      {
        v9 = *v5 & 0xFFFFFFFFFFFFFFF8;
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

        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a4);
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Removing primvar descriptor %s for cachePath %s.\n", v12, v13, v10, Text);
      }

      sub_29AE75CE8(&v15, 32 - v8, a3[1], -v8);
      return sub_29ABEEA50(a3, v14);
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_ProcessPrefixedPrimvarPropertyChange(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, unsigned int a5, int a6)
{
  v18 = 3;
  v19 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v20);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v21);
  v22 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v17, a2);
  v17[3] = 0;
  v17[0] = &unk_2A2060598;
  if (a6)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::FindPrimvarWithInheritance(v17, a4);
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::GetPrimvar(v17, a4, &v12);
  v18 = v12;
  v10 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 6, 1uLL, memory_order_relaxed);
  }

  if (v19)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v19, v9);
  }

  v19 = v10;
  sub_29A2258F0(&v20, &v14);
  sub_29A225948(&v21, &v15);
  sub_29A166F2C(&v22, &v16);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(&v12, v11);
}

void sub_29B04A5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  sub_29A7A079C(va);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::~UsdGeomPrimvarsAPI(va1);
  sub_29A5888DC(va2);
  _Unwind_Resume(a1);
}

void sub_29B04A7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B04A91C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B04A94C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::ResolveCachePath@<X0>(_DWORD *a1@<X1>, _DWORD *a2@<X8>)
{
  v3 = sub_29A1E21F4(a2, a1) + 1;

  return sub_29A1E2240(v3, a1 + 1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsVarying(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  sub_29A0ECEEC(&v12, "usdImaging", "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsVarying(UsdPrim, const TfToken &, HdDirtyBits, const TfToken &, HdDirtyBits *, BOOL, BOOL *) const");
  if (a8)
  {
    *a8 = 0;
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(a2, a3, &v11);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v11);
}

void sub_29B04AC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_29A5888DC(va);
  sub_29A0E9CEC(va1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsTransformVarying(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdPrim *a2, int a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, _DWORD *a5)
{
  sub_29A0ECEEC(&v19, "usdImaging", "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::_IsTransformVarying(UsdPrim, HdDirtyBits, const TfToken &, HdDirtyBits *) const");
  v10 = *(a1 + 24);
  v11 = sub_29AFB0654(v10 + 1288, a2);
  v12 = pxrInternal__aapl__pxrReserved__::UsdGeomXformable::XformQuery::TransformMightBeTimeVarying(v11);
  if (v12)
  {
    *a5 |= a3;
    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
    if (!v15)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
    }

    pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v15, a4);
  }

  else if ((*(sub_29AFB0654(v10 + 1288, a2) + 24) & 1) == 0)
  {
    sub_29A5B9D18(a2, &v17);
    *a2 = v17;
    v14 = *(a2 + 1);
    if (v14)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v13);
    }

    *(a2 + 1) = v18;
    v18 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  if (v19)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v20, v19);
  }

  return v12;
}

void sub_29B04AE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetTransform(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4)
{
  v17 = a4;
  sub_29A0ECEEC(&v16, "usdImaging", "virtual GfMatrix4d pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetTransform(const UsdPrim &, const SdfPath &, UsdTimeCode, BOOL) const");
  v7 = *(a1 + 24);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&v15, 1.0);
  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(a3);
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v9)
  {
    v9 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v9 + 20) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(v9 + 20) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::StripPrefixNamespace(Name, EmptyString, &__p);
  if (v14 == 1)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
  }

  if ((atomic_load_explicit(&qword_2A1754168, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1754168))
  {
    v11 = atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_ENABLE_SHARED_XFORM_CACHE);
    if (!v11)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
    }

    byte_2A1754160 = *v11 == 1;
    __cxa_guard_release(&qword_2A1754168);
  }

  if (byte_2A1754160 == 1 && *(v7 + 1848) == v17)
  {
    sub_29B04B214(v7 + 1288, a2);
  }

  sub_29B04B3A8(a2, &v12);
}

void sub_29B04B190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  __cxa_guard_abort(&qword_2A1754168);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  sub_29A0E9CEC(v36 - 120);
  _Unwind_Resume(a1);
}

void sub_29B04B388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B04B3A8(int *a1@<X0>, uint64_t a2@<X8>)
{
  v10[135] = 0;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a2, 1.0);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v10, 1.0);
  v5 = *a1;
  v3 = *(a1 + 1);
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(v3 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v7, a1 + 4);
  sub_29A1E2240(&v8, a1 + 5);
  v4 = *(a1 + 3);
  v9 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v9 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v5);
}

void sub_29B04B660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::SampleTransform(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2);
  }

  return 0;
}

void sub_29B04BBC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::Get(pxrInternal__aapl__pxrReserved__::UsdPrim *this@<X1>, pxrInternal__aapl__pxrReserved__::TfToken *a2@<X3>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(this, a2, &v4);
  *(a3 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v4);
}

void sub_29B04BCF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_29A186B14(v9);
  sub_29A5888DC(&a9);
  _Unwind_Resume(a1);
}

void sub_29B04C0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B04C0C4(pxrInternal__aapl__pxrReserved__::UsdPrim *a1, double a2)
{
  v3 = a2;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v2, a1);
  v2[0] = &unk_2A205FF00;
  pxrInternal__aapl__pxrReserved__::UsdGeomImageable::ComputeVisibility(v2, &v3);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetPurpose(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, atomic_uint **a3@<X3>, atomic_uint **a4@<X8>)
{
  if (sub_29B04C244())
  {
    sub_29B04C2E8(*(this + 6) + 4944, a2);
  }

  sub_29B04C484(a2, &v12);
  if ((v13 & 1) != 0 || (v9 = *a3) == 0)
  {
    v9 = v12;
    if (!v12)
    {
      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v10)
      {
        v10 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      v9 = *(v10 + 29);
    }
  }

  *a4 = v9;
  if ((v9 & 7) != 0)
  {
    v11 = (v9 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a4 = v11;
    }
  }

  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t sub_29B04C244()
{
  if ((atomic_load_explicit(&qword_2A1754188, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1754188))
  {
    v1 = atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_ENABLE_PURPOSE_CACHE);
    if (!v1)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
    }

    byte_2A1754180 = *v1 == 1;
    __cxa_guard_release(&qword_2A1754188);
  }

  return byte_2A1754180;
}

void sub_29B04C464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B04C484(pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X0>, uint64_t a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v3, a1);
  v3[0] = &unk_2A205FF00;
  pxrInternal__aapl__pxrReserved__::UsdGeomImageable::ComputePurposeInfo(v3, a2);
  pxrInternal__aapl__pxrReserved__::UsdGeomImageable::~UsdGeomImageable(v3);
}

void sub_29B04C4EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdGeomImageable::~UsdGeomImageable(va);
  _Unwind_Resume(a1);
}

void *sub_29B04C500(void *result)
{
  if ((*result & 7) != 0)
  {
    atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

atomic_uint **pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetInheritablePurpose@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, atomic_uint **a3@<X8>)
{
  if (sub_29B04C244())
  {
    sub_29B04C2E8(*(this + 6) + 4944, a2);
  }

  sub_29B04C484(a2, v9);
  result = sub_29A751ED0(v9);
  v7 = *result;
  *a3 = *result;
  if ((v7 & 7) != 0)
  {
    v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a3 = v8;
    }
  }

  if ((v9[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v9[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialUsdPath(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v2 = a2;
  if ((atomic_load_explicit(&qword_2A1754198, memory_order_acquire) & 1) == 0)
  {
    v8 = this;
    v4 = __cxa_guard_acquire(&qword_2A1754198);
    v2 = a2;
    v5 = v4;
    this = v8;
    if (v5)
    {
      v6 = atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_ENABLE_BINDING_CACHE);
      if (!v6)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
      }

      byte_2A1754190 = *v6 == 1;
      __cxa_guard_release(&qword_2A1754198);
      v2 = a2;
      this = v8;
    }
  }

  v3 = *(this + 3);
  if (byte_2A1754190 == 1)
  {

    sub_29AFAD758(v3 + 3048, v2);
  }

  sub_29B04C708(v2);
}

void sub_29B04C708(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1)
{
  v3 = 4;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v6);
  v7 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v2, a1);
  v2[3] = 0;
  v2[0] = &unk_2A20611A8;
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial(v2);
}

void sub_29B04C880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A5B6480(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetFullModelDrawMode@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate **this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, uint64_t a3@<X8>)
{
  v10[8] = *MEMORY[0x29EDCA608];
  sub_29ACB7794(a3);
  result = sub_29A7557D8(a2, v6);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GetModelDrawMode(this[3], a2, &v9);
    if (&v9 == a3)
    {
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if ((*a3 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *a3 = v9;
    }

    *(a3 + 8) = pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_IsDrawModeApplied(this[3], a2);
    v8 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v10, a2);
    v10[3] = 0;
    v10[0] = &unk_2A205FFB0;
    pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::GetModelDrawModeColorAttr(v8, &v9);
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v9);
  }

  return result;
}

void sub_29B04D174(_Unwind_Exception *a1)
{
  sub_29A186B14(v3 - 104);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A5888DC(v3 - 184);
  pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::~UsdGeomModelAPI((v3 - 136));
  sub_29AFA24D0(v1);
  _Unwind_Resume(a1);
}

void sub_29B04D3DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

int64x2_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtent@<Q0>(uint64_t a1@<X8>)
{
  *a1 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
  *(a1 + 16) = xmmword_29B43C5A0;
  result = vdupq_n_s64(0xC7EFFFFFE0000000);
  *(a1 + 32) = result;
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetMaterialId@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + 1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1);

  return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationSceneInputNames(pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if ((atomic_load_explicit(&qword_2A17541B0, memory_order_acquire) & 1) == 0)
  {
    sub_29B2CF5E4();
  }

  return &qword_2A17541B8;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationInputs(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationOutputs(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationPrimvars(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::SampleExtComputationInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, void *a8)
{
  v10[2] = *MEMORY[0x29EDCA608];
  if (!a6)
  {
    return 0;
  }

  *a7 = 0;
  (*(*a1 + 480))(v10);
  sub_29A18606C(a8, v10);
  sub_29A186B14(v10);
  return 1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetExtComputationKernel(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetPerPrototypeIndices(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdObject *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v6 = *(a1 + 24);
  v7 = &unk_2A1754000;
  if ((atomic_load_explicit(&qword_2A17541A8, memory_order_acquire) & 1) == 0)
  {
    v8 = __cxa_guard_acquire(&qword_2A17541A8);
    v7 = &unk_2A1754000;
    if (v8)
    {
      v9 = atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_ENABLE_POINT_INSTANCER_INDICES_CACHE);
      if (!v9)
      {
        pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
      }

      byte_2A17541A0 = *v9 == 1;
      __cxa_guard_release(&qword_2A17541A8);
      v7 = &unk_2A1754000;
    }
  }

  if (v7[416] == 1 && *(v6 + 7648) == a4)
  {
    sub_29B04D704(v6 + 7088, a2);
  }

  sub_29B04D8A4(a2, a3);
}

void sub_29B04D884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29B04D8A4(pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v7, a1);
  v7 = &unk_2A2060328;
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::GetProtoIndicesAttr(v2, &__p);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
}

void sub_29B04DAE4(uint64_t *a1, unint64_t a2)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  v4 = v2;
  sub_29B04DB74(a1, a2, &v4);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29B04DB74(uint64_t *a1, unint64_t a2, uint64_t *a3)
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
            pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
          }

          v9 = a1[4];
          if (*(v9 - 8) < a2)
          {
            v7 = sub_29B0450D8(a1, v9, a2, *a1);
          }

          v10 = *a3;
          v11 = &v7[5 * v3];
          do
          {
            v12 = *(v10 + 16);
            *v11 = *v10;
            *(v11 + 1) = v12;
            v13 = *(v10 + 32);
            v11[4] = v13;
            if (v13)
            {
              v14 = (v13 - 16);
              if (v11[3])
              {
                v14 = v11[3];
              }

              atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed);
            }

            v11 += 5;
          }

          while (v11 != &v7[5 * a2]);
LABEL_40:
          if (v7 != a1[4])
          {
            sub_29AFA1C7C(a1);
            a1[4] = v7;
          }

          *a1 = a2;
          return;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v20 = a2;
      }

      else
      {
        v20 = *a1;
      }

      v21 = sub_29B0450D8(a1, v7, a2, v20);
      v7 = v21;
      if (v3 < a2)
      {
        v22 = *a3;
        v23 = &v21[5 * v3];
        do
        {
          v24 = *(v22 + 16);
          *v23 = *v22;
          *(v23 + 1) = v24;
          v25 = *(v22 + 32);
          v23[4] = v25;
          if (v25)
          {
            v26 = (v25 - 16);
            if (v23[3])
            {
              v26 = v23[3];
            }

            atomic_fetch_add_explicit(v26, 1uLL, memory_order_relaxed);
          }

          v23 += 5;
        }

        while (v23 != &v21[5 * a2]);
      }

      goto LABEL_40;
    }

    if (a2 < 0x666666666666667)
    {
      v7 = sub_29B045150(a1, a2);
      v15 = *a3;
      v16 = v7;
      do
      {
        v17 = *(v15 + 16);
        *v16 = *v15;
        *(v16 + 1) = v17;
        v18 = *(v15 + 32);
        v16[4] = v18;
        if (v18)
        {
          v19 = (v18 - 16);
          if (v16[3])
          {
            v19 = v16[3];
          }

          atomic_fetch_add_explicit(v19, 1uLL, memory_order_relaxed);
        }

        v16 += 5;
      }

      while (v16 != &v7[5 * a2]);
      goto LABEL_40;
    }
  }

  sub_29B04DDA8(a1);
}

void sub_29B04DDA8(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    if (a1[3] || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      sub_29AFA1C7C(a1);
    }

    else if (*a1)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }

    *a1 = 0;
  }
}

void sub_29B04DE2C(double *a1, char *a2, double *a3, uint64_t a4, double a5)
{
  v9 = (a2 - a1) >> 3;
  v10 = (a3 - a2) >> 3;
  if (v10 >= v9)
  {
    v11 = (a2 - a1) >> 3;
  }

  else
  {
    v11 = (a3 - a2) >> 3;
  }

  if (v11 < 1)
  {
    v16 = 0;
  }

  else
  {
    v12 = MEMORY[0x29EDC9418];
    while (1)
    {
      v13 = operator new(8 * v11, v12);
      if (v13)
      {
        break;
      }

      v14 = v11 >> 1;
      v15 = v11 > 1;
      v11 >>= 1;
      if (!v15)
      {
        v16 = 0;
        v11 = v14;
        goto LABEL_11;
      }
    }

    v16 = v13;
  }

LABEL_11:
  sub_29B04DF48(a1, a2, a3, a4, v9, v10, v16, v11, a5);
  if (v16)
  {

    operator delete(v16);
  }
}

void sub_29B04DF30(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B04DF48(double *a1, char *a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, double *a7, uint64_t a8, double a9)
{
  if (a6)
  {
    v10 = a6;
    while (v10 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return;
      }

      v13 = 0;
      v14 = *a2;
      v15 = -a5;
      while (1)
      {
        v16 = a1[v13 / 8];
        if (v14 < v16)
        {
          break;
        }

        v13 += 8;
        if (__CFADD__(v15++, 1))
        {
          return;
        }
      }

      v18 = -v15;
      v41 = a3;
      v42 = a8;
      if (-v15 >= v10)
      {
        if (v15 == -1)
        {
          a1[v13 / 8] = v14;
          *a2 = v16;
          return;
        }

        v27 = v18 / 2;
        v28 = &a1[v18 / 2];
        v20 = a2;
        if (a2 != a3)
        {
          v29 = (a3 - a2) >> 3;
          v20 = a2;
          do
          {
            v30 = v29 >> 1;
            v31 = &v20[8 * (v29 >> 1)];
            v33 = *v31;
            v32 = (v31 + 1);
            v29 += ~(v29 >> 1);
            if (v33 < v28[v13 / 8])
            {
              v20 = v32;
            }

            else
            {
              v29 = v30;
            }
          }

          while (v29);
        }

        v19 = (v20 - a2) >> 3;
        v21 = &v28[v13 / 8];
      }

      else
      {
        v19 = v10 / 2;
        v20 = &a2[8 * (v10 / 2)];
        v21 = a2;
        if (a2 - a1 != v13)
        {
          v22 = (a2 - a1 - v13) >> 3;
          v21 = &a1[v13 / 8];
          do
          {
            v23 = v22 >> 1;
            v24 = &v21[8 * (v22 >> 1)];
            v26 = *v24;
            v25 = (v24 + 1);
            v22 += ~(v22 >> 1);
            if (*v20 < v26)
            {
              v22 = v23;
            }

            else
            {
              v21 = v25;
            }
          }

          while (v22);
        }

        v27 = (v21 - a1 - v13) >> 3;
      }

      a5 = -(v27 + v15);
      v34 = v10 - v19;
      v35 = v27;
      v36 = sub_29B04E2B0(v21, a2, v20);
      v37 = v35;
      v38 = v36;
      if (v37 + v19 >= v10 - (v37 + v19) - v15)
      {
        v40 = v37;
        sub_29B04DF48(v36, v20, v41, a4, a5, v34, a7, v42);
        v20 = v21;
        v34 = v19;
        a8 = v42;
        a5 = v40;
        a3 = v38;
        a1 = (a1 + v13);
      }

      else
      {
        v39 = v19;
        a8 = v42;
        sub_29B04DF48(&a1[v13 / 8], v21, v36, a4, v37, v39, a7, v42);
        a1 = v38;
        a3 = v41;
      }

      v10 = v34;
      a2 = v20;
      if (!v34)
      {
        return;
      }
    }

    sub_29B04E1B4(a1, a2, a3, a4, a5, v10, a7, a9);
  }
}

double sub_29B04E1B4(double *a1, double *a2, double *a3, int a4, uint64_t a5, uint64_t a6, double *__src, double result)
{
  if (a5 <= a6)
  {
    if (a1 != a2)
    {
      v10 = -__src;
      v11 = __src;
      v12 = a1;
      do
      {
        v13 = *v12++;
        *v11++ = v13;
        v10 -= 8;
      }

      while (v12 != a2);
      while (a2 != a3)
      {
        result = *a2;
        v14 = *a2 >= *__src;
        if (*a2 >= *__src)
        {
          result = *__src;
        }

        a2 += *a2 < *__src;
        __src += v14;
        *a1++ = result;
        if (v11 == __src)
        {
          return result;
        }
      }

      memmove(a1, __src, -(__src + v10));
    }
  }

  else if (a2 != a3)
  {
    v8 = 0;
    do
    {
      result = a2[v8];
      __src[v8++] = result;
    }

    while (&a2[v8] != a3);
    v9 = &__src[v8];
    while (a2 != a1)
    {
      result = *(v9 - 1);
      if (result >= *(a2 - 1))
      {
        --v9;
      }

      else
      {
        result = *--a2;
      }

      *--a3 = result;
      if (v9 == __src)
      {
        return result;
      }
    }

    if (v9 != __src)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
      do
      {
        v16 = *--v9;
        result = v16;
        a3[v15--] = v16;
      }

      while (v9 != __src);
    }
  }

  return result;
}

char *sub_29B04E2B0(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 8 == a2)
    {
      v7 = *__src;
      memmove(__src, __src + 8, v6);
      v4 = &__src[v6];
      *v4 = v7;
    }

    else if (a2 + 8 == a3)
    {
      v8 = *(a3 - 1);
      v4 = __src + 8;
      v9 = a3 - 8 - __src;
      if (a3 - 8 != __src)
      {
        memmove(__src + 8, __src, v9);
      }

      *__src = v8;
    }

    else
    {
      return sub_29B04E37C(__src, a2, a3);
    }
  }

  return v4;
}

char *sub_29B04E37C(char *a1, char *a2, char *a3)
{
  v3 = (a2 - a1) >> 3;
  v4 = a3 - a2;
  if (v3 == (a3 - a2) >> 3)
  {
    if (a2 != a1 && a3 != a2)
    {
      v5 = a1 + 8;
      v6 = a2 + 8;
      do
      {
        v7 = *(v5 - 1);
        *(v5 - 1) = *(v6 - 1);
        *(v6 - 1) = v7;
        if (v5 == a2)
        {
          break;
        }

        v5 += 8;
        v8 = v6 == a3;
        v6 += 8;
      }

      while (!v8);
    }
  }

  else
  {
    v9 = v4 >> 3;
    v10 = (a2 - a1) >> 3;
    do
    {
      v11 = v10;
      v10 = v9;
      v9 = v11 % v9;
    }

    while (v9);
    v12 = &a1[8 * v10];
    do
    {
      v13 = *(v12 - 1);
      v12 -= 8;
      v14 = v13;
      v15 = &v12[a2 - a1];
      v16 = v12;
      do
      {
        v17 = v15;
        *v16 = *v15;
        v18 = &v15[8 * v3];
        v19 = __OFSUB__(v3, (a3 - v15) >> 3);
        v21 = v3 - ((a3 - v15) >> 3);
        v20 = (v21 < 0) ^ v19;
        v15 = &a1[8 * v21];
        if (v20)
        {
          v15 = v18;
        }

        v16 = v17;
      }

      while (v15 != v12);
      *v17 = v14;
    }

    while (v12 != a1);
    return &a1[v4];
  }

  return a2;
}

uint64_t sub_29B04E448(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 16 * a3;
    do
    {
      sub_29A57764C(a1, a2, a2);
      a2 += 2;
      v5 -= 16;
    }

    while (v5);
  }

  return a1;
}

void sub_29B04E4C0(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  {
    sub_29B2CF65C();
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
}

unint64_t sub_29B04E5F8(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  sub_29B04EB64(a1, a2, v26);
  v4 = v26[0];
  if (v26[0])
  {
    v5 = 0;
  }

  else
  {
    v5 = v26[1] == a1 + 16;
  }

  if (v5)
  {
    sub_29B04EEF0(v19);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v12, a2);
    v15 = 0;
    v12.n128_u64[0] = &unk_2A2060598;
    v7 = v12.n128_u64[1];
    if (v12.n128_u64[1])
    {
      atomic_fetch_add_explicit((v12.n128_u64[1] + 48), 1uLL, memory_order_relaxed);
    }

    if (v20)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v20, v6);
    }

    v20 = v7;
    sub_29A2258F0(&v21, &v13);
    sub_29A225948(&v22, &v14);
    sub_29A166F2C(v23, &v15);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::~UsdGeomPrimvarsAPI(&v12);
    v8 = v24;
    v23[1] = 0;
    v24 = 0;
    if (v8)
    {
      sub_29A014BEC(v8);
    }

    v9 = atomic_load((a1 + 576));
    atomic_store(v9 - 1, &v25);
    sub_29B04F3CC(&v12, a2, v19);
    sub_29B04EFC8(a1, &v12, 0, v18);
    v4 = v18[0];
    if (v17)
    {
      sub_29A014BEC(v17);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::~UsdGeomPrimvarsAPI(&v16);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
    sub_29A1DE3A4(&v13);
    if (v12.n128_u64[1])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v12.n128_u64[1], v10);
    }

    if (v24)
    {
      sub_29A014BEC(v24);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::~UsdGeomPrimvarsAPI(v19);
  }

  return v4 + 40;
}

void sub_29B04E798(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_29B04EAB4(va);
  sub_29B04EB24(va1);
  _Unwind_Resume(a1);
}

void sub_29B04E7C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = (a4 + 48);
  v5 = atomic_load((a4 + 48));
  v6 = (a1 + 576);
  v7 = atomic_load((a1 + 576));
  if (v5 < v7 && (v8 = atomic_load(v6), v9 = v5, atomic_compare_exchange_strong(v4, &v9, v8), v9 == v5))
  {
    v13 = *a3;
    v12 = a3[1];
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(a4 + 40);
    *(a4 + 32) = v13;
    *(a4 + 40) = v12;
    if (v14)
    {
      sub_29A014BEC(v14);
    }

    v15 = atomic_load((a1 + 576));
    atomic_store(v15 + 1, (a4 + 48));
  }

  else
  {
    do
    {
      v16 = atomic_load(v4);
      v17 = atomic_load(v6);
    }

    while (v16 != v17 + 1);
  }
}

void sub_29B04E860(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v3 = a2[1];
  if (v3 && (*(v3 + 57) & 8) == 0)
  {
    if ((*(*a2 + 32))(a2))
    {
      sub_29A5B9D18(a1, &v5);
      pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v5);
    }
  }
}

void sub_29B04EA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  a9 = &a12;
  sub_29A7A3864(&a9);
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29B04EAB4(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::~UsdGeomPrimvarsAPI((a1 + 32));
  v3 = *(a1 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  v5 = *(a1 + 8);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5, v4);
  }

  return a1;
}

void sub_29B04EB24(pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::~UsdGeomPrimvarsAPI(this);
}

void sub_29B04EB64(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
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
  sub_29B04EC9C(a1, v6, &v14);
  v11 = v14;
  if (v14)
  {
    v12 = v10 | 1;
    while (1)
    {
      v13 = *(v11 + 96);
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

void sub_29B04EC9C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
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
    sub_29B04ED38(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29B04ED38(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29B04ED38(a1, v4);
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

  sub_29B04EE1C(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29B04EE1C@<X0>(uint64_t a1@<X0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0x68);
  *(result + 12) = a3;
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
      v10 = i[12];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AFA4CD0(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

uint64_t sub_29B04EEF0(uint64_t a1)
{
  v4 = 1;
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v7);
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a1, &v4);
  *(a1 + 24) = 0;
  *a1 = &unk_2A2060598;
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  sub_29A1DE3A4(&v6);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5, v2);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return a1;
}

void sub_29B04EFC8(uint64_t a1@<X0>, __n128 *a2@<X1>, tbb::internal *a3@<X2>, uint64_t a4@<X8>)
{
  v24 = 0;
  v25 = 0;
  sub_29A5BD47C(&v24, a2, &a2->n128_u64[1], &a2[1], &a2[1].n128_u64[1]);
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
  sub_29B04EC9C(a1, v8, &v24);
  v13 = a1 + 16;
  if (a3)
  {
    *(a3 + 12) = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v24;
    v16 = *v24;
    if (*v24)
    {
      v17 = *(v16 + 96);
      while (1)
      {
        v18 = v16;
        if (v17 > v12)
        {
          break;
        }

        if (v17 == v12 && *(v16 + 8) == v14->n128_u32[0] && *(v16 + 16) == v14->n128_u64[1] && *(v16 + 24) == v14[1].n128_u64[0] && (v14[1].n128_u64[1] ^ *(v16 + 32)) <= 7)
        {
          if (a3)
          {
            sub_29AFA4CD0(a1 + 16, a3);
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

        v17 = *(v16 + 96);
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = sub_29B04F204(a1 + 16, v12, a2);
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

void *sub_29B04F204(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0x68);
  sub_29B04F27C((v5 + 1), a3);
  v5[12] = a2;
  *v5 = 0;
  return v5;
}

void sub_29B04F254(void *a1)
{
  __cxa_begin_catch(a1);
  tbb::internal::deallocate_via_handler_v3(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_29B04F27C(uint64_t a1, __n128 *a2)
{
  *a1 = a2->n128_u32[0];
  v4 = a2->n128_u64[1];
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 16), &a2[1]);
  sub_29A1E2240((a1 + 20), &a2[1].n128_u32[1]);
  v5 = a2[1].n128_u64[1];
  *(a1 + 24) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29B04F328((a1 + 32), a2 + 2);
  return a1;
}

__n128 sub_29B04F328(pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a1, __n128 *a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a1, a2);
  v3->n128_u64[0] = &unk_2A205F368;
  v4 = a2[1].n128_u64[1];
  v3[1].n128_u64[1] = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v3[1].n128_u64[1] &= 0xFFFFFFFFFFFFFFF8;
  }

  v3->n128_u64[0] = &unk_2A2060598;
  result = a2[2];
  v3[2] = result;
  a2[2].n128_u64[0] = 0;
  a2[2].n128_u64[1] = 0;
  v6 = atomic_load(&a2[3]);
  atomic_store(v6, &v3[3]);
  return result;
}

uint64_t sub_29B04F3CC(uint64_t a1, uint64_t a2, uint64_t a3)
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

  sub_29B04F484((a1 + 32), a3);
  return a1;
}

void sub_29B04F484(pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a1, uint64_t a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(a1, a2);
  *v3 = &unk_2A205F368;
  v4 = *(a2 + 24);
  *(v3 + 3) = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(v3 + 3) &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = &unk_2A2060598;
  v5 = *(a2 + 40);
  *(v3 + 4) = *(a2 + 32);
  *(v3 + 5) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = atomic_load((a2 + 48));
  atomic_store(v6, v3 + 12);
}

void sub_29B04F554(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B07F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::UsdGeomTokensType *sub_29B04F5C8@<X0>(atomic_uint **a1@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!result)
  {
    result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v3 = *(result + 59);
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

void sub_29B04F62C(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  {
    {
      sub_29B04F5C8(&pxrInternal__aapl__pxrReserved__::UsdImaging_ResolvedAttributeCache<pxrInternal__aapl__pxrReserved__::UsdImaging_VisStrategy,BOOL>::_GetValue(pxrInternal__aapl__pxrReserved__::UsdPrim const&)const::default_);
      __cxa_atexit(sub_29A424A8C, &pxrInternal__aapl__pxrReserved__::UsdImaging_ResolvedAttributeCache<pxrInternal__aapl__pxrReserved__::UsdImaging_VisStrategy,BOOL>::_GetValue(pxrInternal__aapl__pxrReserved__::UsdPrim const&)const::default_, &dword_299FE7000);
    }
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
}

unint64_t sub_29B04F7D0(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  sub_29B04FC4C(a1, a2, v8);
  if (v8[0])
  {
    v4 = 0;
  }

  else
  {
    v4 = v8[1] == a1 + 16;
  }

  if (v4)
  {
    sub_29B04FFD8(v7);
    sub_29B04FAB4(a2, &v6);
    sub_29A758894(v7, &v6);
  }

  return v8[0] + 40;
}

void sub_29B04F938(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29B04FBD0(va);
  v4 = *(v2 - 64);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A5896C0(v2 - 184);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::UsdGeomTokensType *sub_29B04F97C@<X0>(int a1@<W0>, uint64_t a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a3@<X2>, void *a4@<X8>)
{
  sub_29A5B9D18(a2, &v13);
  v7 = sub_29B04F62C(a1, &v13);
  v8 = *v7;
  *a4 = *v7;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a4 = v9;
    }
  }

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

  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!result)
  {
    result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(result + 62) ^ *a4) >= 8)
  {
    Attribute = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::GetAttribute(a3);
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(Attribute);
  }

  return result;
}

void sub_29B04FAB4(pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v9, a1);
  v9 = &unk_2A205FF00;
  if (v10 && (*(v10 + 57) & 8) == 0 && off_2A205FF20(&v9))
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomImageable::GetVisibilityAttr(&v9, v4);
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(a2, v4);
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

    pxrInternal__aapl__pxrReserved__::UsdGeomImageable::~UsdGeomImageable(&v9);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomImageable::~UsdGeomImageable(&v9);
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(a2);
  }
}

void sub_29B04FBA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_29A5888DC(va);
  pxrInternal__aapl__pxrReserved__::UsdGeomImageable::~UsdGeomImageable(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_29B04FBD0(uint64_t a1)
{
  v2 = *(a1 + 152);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A5896C0(a1 + 32);
  v3 = *(a1 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  v5 = *(a1 + 8);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5, v4);
  }

  return a1;
}

void sub_29B04FC4C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
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
  sub_29B04FD84(a1, v6, &v14);
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

void sub_29B04FD84(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
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
    sub_29B04FE20(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29B04FE20(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29B04FE20(a1, v4);
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

  sub_29B04FF04(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29B04FF04@<X0>(uint64_t a1@<X0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
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
        result = sub_29AFA3E4C(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *sub_29B04FFD8(pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a1)
{
  v2 = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(a1);
  sub_29B04F5C8((v2 + 120));
  *(a1 + 32) = 0;
  return a1;
}

void sub_29B050020(uint64_t a1@<X0>, uint64_t a2@<X1>, tbb::internal *a3@<X2>, uint64_t a4@<X8>)
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
  sub_29B04FD84(a1, v8, &v24);
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
            sub_29AFA3E4C(a1 + 16, a3);
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
      a3 = sub_29B05025C(a1 + 16, v12, a2);
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

void *sub_29B05025C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0xB8);
  sub_29AFA95FC((v5 + 1), a3);
  v5[22] = a2;
  *v5 = 0;
  return v5;
}

void sub_29B0502AC(void *a1)
{
  __cxa_begin_catch(a1);
  tbb::internal::deallocate_via_handler_v3(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_29B0502D4(uint64_t a1, uint64_t a2, uint64_t a3)
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

  sub_29AFAC580((a1 + 32), a3);
  return a1;
}

pxrInternal__aapl__pxrReserved__::UsdGeomTokensType *sub_29B05038C@<X0>(uint64_t a1@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!result)
  {
    result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v3 = *(result + 29);
  *a1 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }

  *(a1 + 8) = 0;
  return result;
}

void sub_29B0503F4(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  {
    {
      sub_29B05038C(&pxrInternal__aapl__pxrReserved__::UsdImaging_ResolvedAttributeCache<pxrInternal__aapl__pxrReserved__::UsdImaging_PurposeStrategy,BOOL>::_GetValue(pxrInternal__aapl__pxrReserved__::UsdPrim const&)const::default_);
      __cxa_atexit(sub_29B04C500, &pxrInternal__aapl__pxrReserved__::UsdImaging_ResolvedAttributeCache<pxrInternal__aapl__pxrReserved__::UsdImaging_PurposeStrategy,BOOL>::_GetValue(pxrInternal__aapl__pxrReserved__::UsdPrim const&)const::default_, &dword_299FE7000);
    }
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
}

unint64_t sub_29B050598(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  sub_29B050B74(a1, a2, v8);
  if (v8[0])
  {
    v4 = 0;
  }

  else
  {
    v4 = v8[1] == a1 + 16;
  }

  if (v4)
  {
    sub_29B050F00(v7);
    sub_29B0509DC(a2, &v6);
    sub_29A758894(v7, &v6);
  }

  return v8[0] + 40;
}

void sub_29B050708(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29B050AF8(va);
  v4 = *(v2 - 72);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A5896C0(v2 - 192);
  _Unwind_Resume(a1);
}

unsigned int *sub_29B05074C(unsigned int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a4 + 136);
  v5 = atomic_load((a4 + 136));
  v6 = result + 144;
  v7 = atomic_load(result + 144);
  if (v5 < v7 && (v8 = atomic_load(v6), v9 = v5, atomic_compare_exchange_strong(v4, &v9, v8), v9 == v5))
  {
    v12 = result;
    result = sub_29A166F2C((a4 + 120), a3);
    *(a4 + 128) = *(a3 + 8);
    v13 = atomic_load(v12 + 144);
    atomic_store(v13 + 1, (a4 + 136));
  }

  else
  {
    do
    {
      v14 = atomic_load(v4);
      v15 = atomic_load(v6);
    }

    while (v14 != v15 + 1);
  }

  return result;
}

void sub_29B050998(_Unwind_Exception *exception_object)
{
  if ((*v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B0509DC(pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v9, a1);
  v9 = &unk_2A205FF00;
  if (v10 && (*(v10 + 57) & 8) == 0 && off_2A205FF20(&v9))
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomImageable::GetPurposeAttr(&v9, v4);
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(a2, v4);
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

    pxrInternal__aapl__pxrReserved__::UsdGeomImageable::~UsdGeomImageable(&v9);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomImageable::~UsdGeomImageable(&v9);
    pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(a2);
  }
}

void sub_29B050AD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_29A5888DC(va);
  pxrInternal__aapl__pxrReserved__::UsdGeomImageable::~UsdGeomImageable(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_29B050AF8(uint64_t a1)
{
  v2 = *(a1 + 152);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A5896C0(a1 + 32);
  v3 = *(a1 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  v5 = *(a1 + 8);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5, v4);
  }

  return a1;
}

void sub_29B050B74(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
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
  sub_29B050CAC(a1, v6, &v14);
  v11 = v14;
  if (v14)
  {
    v12 = v10 | 1;
    while (1)
    {
      v13 = *(v11 + 184);
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

void sub_29B050CAC(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
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
    sub_29B050D48(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29B050D48(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29B050D48(a1, v4);
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

  sub_29B050E2C(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29B050E2C@<X0>(uint64_t a1@<X0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0xC0);
  *(result + 23) = a3;
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
      v10 = i[23];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AFA4540(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *sub_29B050F00(pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a1)
{
  v2 = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(a1);
  sub_29B05038C(v2 + 120);
  *(a1 + 34) = 0;
  return a1;
}

void sub_29B050F48(uint64_t a1@<X0>, uint64_t a2@<X1>, tbb::internal *a3@<X2>, uint64_t a4@<X8>)
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
  sub_29B050CAC(a1, v8, &v24);
  v13 = a1 + 16;
  if (a3)
  {
    *(a3 + 23) = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v24;
    v16 = *v24;
    if (*v24)
    {
      v17 = *(v16 + 184);
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
            sub_29AFA4540(a1 + 16, a3);
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

        v17 = *(v16 + 184);
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = sub_29B051184(a1 + 16, v12, a2);
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

void *sub_29B051184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0xC0);
  sub_29B0511FC((v5 + 1), a3);
  v5[23] = a2;
  *v5 = 0;
  return v5;
}

void sub_29B0511D4(void *a1)
{
  __cxa_begin_catch(a1);
  tbb::internal::deallocate_via_handler_v3(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_29B0511FC(uint64_t a1, uint64_t a2)
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
  *(a2 + 152) = 0;
  *(a1 + 160) = *(a2 + 160);
  v6 = atomic_load((a2 + 168));
  atomic_store(v6, (a1 + 168));
  return a1;
}

uint64_t sub_29B0512B8(uint64_t a1, uint64_t a2, uint64_t a3)
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

  sub_29B051370((a1 + 32), a3);
  return a1;
}

void sub_29B051370(pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *a1, uint64_t a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery(a1, a2);
  v4 = *(a2 + 120);
  *(v3 + 120) = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(v3 + 120) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(v3 + 128) = *(a2 + 128);
  v5 = atomic_load((a2 + 136));
  atomic_store(v5, (v3 + 136));
}

void sub_29B0513D8(int a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  {
    sub_29B2CF6C8();
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
}

void sub_29B051508(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AFA1C7C(va);
  _Unwind_Resume(a1);
}

unint64_t sub_29B051524(uint64_t a1, uint64_t a2)
{
  sub_29B05178C(a1, a2, v17);
  v4 = v17[0];
  if (v17[0])
  {
    v5 = 0;
  }

  else
  {
    v5 = v17[1] == a1 + 16;
  }

  if (v5)
  {
    memset(v16, 0, 28);
    v15 = 0u;
    v14 = 0;
    sub_29AFA1C7C(&v15);
    v15 = 0u;
    memset(v16, 0, 24);
    *v9 = 0u;
    v10 = 0u;
    v11 = 0;
    sub_29AFA1C7C(v9);
    v6 = atomic_load((a1 + 576));
    atomic_store(v6 - 1, &v16[3]);
    sub_29B051E98(v9, a2, &v14);
    sub_29B051B18(a1, v9, 0, v13);
    v4 = v13[0];
    sub_29AFA1C7C(v12);
    if ((BYTE8(v10) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v10 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
    sub_29A1DE3A4(&v10);
    if (v9[1])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9[1], v7);
    }

    sub_29AFA1C7C(&v15);
  }

  return v4 + 40;
}

void sub_29B05165C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_29B051724(&a9);
  sub_29AFA1C7C((v9 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_29B05169C(uint64_t result, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v4 = (a4 + 48);
  v5 = atomic_load((a4 + 48));
  v6 = (result + 576);
  v7 = atomic_load((result + 576));
  if (v5 < v7 && (v8 = atomic_load(v6), v9 = v5, atomic_compare_exchange_strong(v4, &v9, v8), v9 == v5))
  {
    v11 = result;
    result = sub_29B051F7C(a4 + 8, a3);
    v12 = atomic_load((v11 + 576));
    atomic_store(v12 + 1, (a4 + 48));
  }

  else
  {
    do
    {
      v13 = atomic_load(v4);
      v14 = atomic_load(v6);
    }

    while (v13 != v14 + 1);
  }

  return result;
}

uint64_t sub_29B051724(uint64_t a1)
{
  sub_29AFA1C7C((a1 + 40));
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

void sub_29B05178C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
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
  sub_29B0518C4(a1, v6, &v14);
  v11 = v14;
  if (v14)
  {
    v12 = v10 | 1;
    while (1)
    {
      v13 = *(v11 + 96);
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

void sub_29B0518C4(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
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
    sub_29B051960(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29B051960(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29B051960(a1, v4);
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

  sub_29B051A44(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29B051A44@<X0>(uint64_t a1@<X0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0x68);
  *(result + 12) = a3;
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
      v10 = i[12];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AFA5060(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

void sub_29B051B18(uint64_t a1@<X0>, uint64_t a2@<X1>, tbb::internal *a3@<X2>, uint64_t a4@<X8>)
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
  sub_29B0518C4(a1, v8, &v24);
  v13 = a1 + 16;
  if (a3)
  {
    *(a3 + 12) = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v24;
    v16 = *v24;
    if (*v24)
    {
      v17 = *(v16 + 96);
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
            sub_29AFA5060(a1 + 16, a3);
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

        v17 = *(v16 + 96);
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = sub_29B051D54(a1 + 16, v12, a2);
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

void *sub_29B051D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0x68);
  sub_29B051DCC((v5 + 1), a3);
  v5[12] = a2;
  *v5 = 0;
  return v5;
}

void sub_29B051DA4(void *a1)
{
  __cxa_begin_catch(a1);
  tbb::internal::deallocate_via_handler_v3(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_29B051DCC(uint64_t a1, uint64_t a2)
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

  *(a1 + 32) = *(a2 + 32);
  v6 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v6;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = 0;
  v7 = atomic_load((a2 + 80));
  atomic_store(v7, (a1 + 80));
  return a1;
}

uint64_t sub_29B051E98(uint64_t a1, uint64_t a2, uint64_t a3)
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

  *(a1 + 32) = *a3;
  v8 = *(a3 + 8);
  *(a1 + 56) = *(a3 + 24);
  *(a1 + 40) = v8;
  v9 = *(a3 + 40);
  *(a1 + 72) = v9;
  if (v9)
  {
    v10 = (v9 - 16);
    if (*(a1 + 64))
    {
      v10 = *(a1 + 64);
    }

    atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
  }

  v11 = atomic_load((a3 + 48));
  atomic_store(v11, (a1 + 80));
  return a1;
}

uint64_t sub_29B051F7C(uint64_t a1, __int128 *a2)
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
      sub_29AFA1C7C(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_29AFA1C7C(&v8);
  }

  return a1;
}

void sub_29B05223C(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  v24 = *(v23 - 72);
  if (v24)
  {
    sub_29A014BEC(v24);
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

  v25 = v22[19];
  if (v25)
  {
    sub_29A014BEC(v25);
  }

  sub_29AC113C4(v22, a2);
}

void *sub_29B0522F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  v6 = *a1;
  v5 = a1[1];
  *v4 = &unk_2A20B0908;
  v4[1] = v6;
  v4[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_29B052D10(a2, v4);
}

void *sub_29B05236C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  v6 = *a1;
  v5 = a1[1];
  *v4 = &unk_2A20B09D0;
  v4[1] = v6;
  v4[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_29B052F44(a2, v4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingRootOverridesSceneIndex::SetRootTransform(double **this, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  result = pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator==(this[18], a2);
  if ((result & 1) == 0)
  {
    v5 = this[18];
    v6 = *a2;
    v7 = *(a2 + 1);
    v8 = *(a2 + 3);
    *(v5 + 2) = *(a2 + 2);
    *(v5 + 3) = v8;
    *v5 = v6;
    *(v5 + 1) = v7;
    v9 = *(a2 + 4);
    v10 = *(a2 + 5);
    v11 = *(a2 + 7);
    *(v5 + 6) = *(a2 + 6);
    *(v5 + 7) = v11;
    *(v5 + 4) = v9;
    *(v5 + 5) = v10;
    if ((atomic_load_explicit(&qword_2A1755ED8, memory_order_acquire) & 1) == 0)
    {
      v12 = __cxa_guard_acquire(&qword_2A1755ED8);
      if (v12)
      {
        v13 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v12);
        DefaultLocator = pxrInternal__aapl__pxrReserved__::HdXformSchema::GetDefaultLocator(v13);
        v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
        if (!v15)
        {
          v15 = sub_29ABEE36C(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, (v15 + 8), v17);
        v16[0] = v17;
        v16[1] = 1;
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(v18, v16);
        sub_29ABD2F24(v19, v13, v18);
        qword_2A1755ED0 = 0x1000000001;
        sub_29ABD3720(v19, &v20, &unk_2A17541D0);
        sub_29ABCFDB8();
      }
    }

    return pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(this, &unk_2A17541D0);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImagingRootOverridesSceneIndex::SetRootVisibility(uint64_t *this, int a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = this[18];
  if (*(v2 + 128) != a2)
  {
    v3 = this;
    *(v2 + 128) = a2;
    if ((atomic_load_explicit(&qword_2A1757BE8, memory_order_acquire) & 1) == 0)
    {
      v4 = __cxa_guard_acquire(&qword_2A1757BE8);
      if (v4)
      {
        v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v4);
        DefaultLocator = pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::GetDefaultLocator(v5);
        v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens);
        if (!v7)
        {
          v7 = sub_29ABEE2E0(&pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, v7, v9);
        v8[0] = v9;
        v8[1] = 1;
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(v10, v8);
        sub_29ABD2F24(v11, v5, v10);
        qword_2A1757BE0 = 0x1000000001;
        sub_29ABD3720(v11, &v12, &unk_2A1755EE0);
        sub_29ABCFDB8();
      }
    }

    return pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v3, &unk_2A1755EE0);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingRootOverridesSceneIndex::GetPrim(pxrInternal__aapl__pxrReserved__::UsdImagingRootOverridesSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29AC1199C(this + 14);
  v7 = (*(*v6 + 16))(v6, a2);
  if (*a2 == *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v7))
  {
    sub_29AD373C8(this + 160, a3 + 8, &v10);
    v8 = v10;
    v10 = 0uLL;
    v9 = *(a3 + 16);
    *(a3 + 8) = v8;
    if (v9)
    {
      sub_29A014BEC(v9);
      if (*(&v10 + 1))
      {
        sub_29A014BEC(*(&v10 + 1));
      }
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingRootOverridesSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::UsdImagingRootOverridesSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC1199C(this + 14) + 24);

  return v2();
}

void sub_29B05290C(void *a1, const void *a2)
{
  *a1 = &unk_2A20B0840;
  v3 = a1[21];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = a1[19];
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 15), a2);
  sub_29ABD4DDC();
}

void sub_29B0529A4(void *a1, const void *a2)
{
  *a1 = &unk_2A20B0840;
  v3 = a1[21];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = a1[19];
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 15), a2);
  sub_29ABD4DDC();
}

uint64_t sub_29B052A40@<X0>(void *a1@<X8>)
{
  v2 = operator new(0xA0uLL);
  result = sub_29B052A8C(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B052A8C(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20B08B8;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 24) = 0u;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a1 + 24, 1.0);
  *(a1 + 152) = 1;
  return a1;
}

void sub_29B052B3C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B08B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B052B88(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20B0908;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29B052BE4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20B0908;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void *sub_29B052C44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

__n128 sub_29B052CE8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 80);
  *(a2 + 64) = *(v2 + 64);
  *(a2 + 80) = v3;
  v4 = *(v2 + 112);
  *(a2 + 96) = *(v2 + 96);
  *(a2 + 112) = v4;
  v5 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v5;
  result = *(v2 + 32);
  v7 = *(v2 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  return result;
}

void *sub_29B052D10(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B0958;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B052D68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B052D84(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B052DAC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B052DDC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B09A8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29B052E1C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20B09D0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29B052E78(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20B09D0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

uint64_t sub_29B052ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(*a1 + 32))(a1);
  *(a2 + 8) = &unk_2A20443C3;
  *a2 = result;
  return result;
}

void *sub_29B052F44(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20B0A20;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B052F9C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B052FB8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B052FE0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B053010(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20B0A70))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUnloadedDrawModeSceneIndex::UsdImagingUnloadedDrawModeSceneIndex(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::HdSingleInputFilteringSceneIndexBase(a1, a2);
}

{
  pxrInternal__aapl__pxrReserved__::HdSingleInputFilteringSceneIndexBase::HdSingleInputFilteringSceneIndexBase(a1, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUnloadedDrawModeSceneIndex::~UsdImagingUnloadedDrawModeSceneIndex(pxrInternal__aapl__pxrReserved__::UsdImagingUnloadedDrawModeSceneIndex *this, const void *a2)
{
  *this = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((this + 120), a2);
  sub_29ABD4DDC();
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingUnloadedDrawModeSceneIndex::~UsdImagingUnloadedDrawModeSceneIndex(this, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUnloadedDrawModeSceneIndex::GetPrim(pxrInternal__aapl__pxrReserved__::UsdImagingUnloadedDrawModeSceneIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29AC1199C(this + 14);
  (*(*v6 + 16))(v6, a2);
  pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetFromParent((a3 + 8), v21);
  pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetIsLoaded(v21, &v24);
  v7 = v24;
  if (v24)
  {
    v3 = (*(*v24 + 32))(v24, 0.0);
  }

  if (*(&v24 + 1))
  {
    sub_29A014BEC(*(&v24 + 1));
  }

  if (*(&v21[0] + 1))
  {
    sub_29A014BEC(*(&v21[0] + 1));
  }

  if (!((v7 == 0) | v3 & 1))
  {
    if ((atomic_load_explicit(&qword_2A1757C00, memory_order_acquire) & 1) == 0)
    {
      v10 = __cxa_guard_acquire(&qword_2A1757C00);
      if (v10)
      {
        SchemaToken = pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetSchemaToken(v10);
        memset(v21, 0, sizeof(v21));
        v18 = 1;
        pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(&v18, &v19);
        v20 = v19;
        v19 = 0uLL;
        v12 = pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::Builder::SetApplyDrawMode(v21, &v20);
        v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
        if (!v13)
        {
          v13 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
        }

        sub_29ABCCFA4(v13 + 13, &v16);
        v17 = v16;
        v16 = 0uLL;
        v14 = pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::Builder::SetDrawMode(v12, &v17);
        pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::Builder::Build(v14, &v22);
        v23 = v22;
        v22 = 0uLL;
        pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(SchemaToken, &v23, &v24);
        xmmword_2A1757BF0 = v24;
        v24 = 0uLL;
        if (*(&v23 + 1))
        {
          sub_29A014BEC(*(&v23 + 1));
        }

        if (*(&v22 + 1))
        {
          sub_29A014BEC(*(&v22 + 1));
        }

        if (*(&v17 + 1))
        {
          sub_29A014BEC(*(&v17 + 1));
        }

        if (*(&v16 + 1))
        {
          sub_29A014BEC(*(&v16 + 1));
        }

        if (*(&v20 + 1))
        {
          sub_29A014BEC(*(&v20 + 1));
        }

        if (*(&v19 + 1))
        {
          sub_29A014BEC(*(&v19 + 1));
        }

        sub_29AFEA120(v21);
        __cxa_atexit(sub_29ABE5FF4, &xmmword_2A1757BF0, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1757C00);
      }
    }

    sub_29AD373C8(&xmmword_2A1757BF0, a3 + 8, &v15);
    v8 = v15;
    v15 = 0uLL;
    v9 = *(a3 + 16);
    *(a3 + 8) = v8;
    if (v9)
    {
      sub_29A014BEC(v9);
      if (*(&v15 + 1))
      {
        sub_29A014BEC(*(&v15 + 1));
      }
    }
  }
}

void sub_29B053444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, ...)
{
  va_start(va, a13);
  v16 = *(v14 - 56);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  v17 = *(v14 - 72);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  if (a7)
  {
    sub_29A014BEC(a7);
  }

  if (a5)
  {
    sub_29A014BEC(a5);
  }

  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a11)
  {
    sub_29A014BEC(a11);
  }

  sub_29AFEA120(va);
  __cxa_guard_abort(&qword_2A1757C00);
  sub_29AC2B620(v13);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUnloadedDrawModeSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::UsdImagingUnloadedDrawModeSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AC1199C(this + 14) + 24);

  return v2();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens_StaticTokenType::~UsdImagingUsdPrimInfoSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens_StaticTokenType *this)
{
  v13 = (this + 96);
  sub_29A124AB0(&v13);
  v2 = *(this + 11);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 10);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 9);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 8);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 7);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 6);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 5);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 4);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 3);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 2);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens_StaticTokenType::UsdImagingUsdPrimInfoSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens_StaticTokenType *this)
{
  v31 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "__usdPrimInfo", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "specifier", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "typeName", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "isLoaded", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "apiSchemas", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "kind", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "niPrototypePath", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "isNiPrototype", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "piPropagatedPrototypes", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "def", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "over", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "class", 0);
  v3 = (this + 96);
  v4 = *this;
  v19 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v19 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v20 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v21 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v21 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v22 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v23 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v24 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v25 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v26 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v27 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v28 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v29 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v30 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  sub_29A12EF7C(v3, &v19, &v31, 0xCuLL);
  for (i = 88; i != -8; i -= 8)
  {
    v17 = *(&v19 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29B053A84(_Unwind_Exception *a1)
{
  v3 = 88;
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
      v5 = v1[11];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[10];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[9];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[8];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[7];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[6];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[5];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[4];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[3];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[2];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[1];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetSpecifier(pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetTypeName(pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
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

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetIsLoaded(pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
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

  sub_29ABCB628(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetApiSchemas(pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
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

  sub_29AC393A4(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetKind(pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
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

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetNiPrototypePath(pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
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

  sub_29ABE18CC(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetIsNiPrototype(pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
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

  sub_29ABCB628(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetPiPropagatedPrototypes(pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
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

  sub_29ABC2F3C(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, _OWORD *a9@<X8>)
{
  v73 = *MEMORY[0x29EDCA608];
  v15 = &v70;
  memset(v72, 0, sizeof(v72));
  v70 = 0u;
  memset(v71, 0, sizeof(v71));
  v16 = v72;
  if (*a1)
  {
    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v18)
    {
      v18 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    v15 = v71;
    v16 = v72 + 1;
    sub_29A166F2C(v72, v18 + 1);
    v20 = *a1;
    v19 = a1[1];
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    v21 = *(&v70 + 1);
    *&v70 = v20;
    *(&v70 + 1) = v19;
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  if (*a2)
  {
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v23)
    {
      v23 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    sub_29A166F2C(v16, v23 + 2);
    ++v22;
    v25 = *a2;
    v24 = a2[1];
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    v26 = *(v15 + 1);
    *v15 = v25;
    *(v15 + 1) = v24;
    if (v26)
    {
      sub_29A014BEC(v26);
    }
  }

  if (*a3)
  {
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v27)
    {
      v27 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    sub_29A166F2C(v72 + v22, v27 + 3);
    v28 = v22 + 1;
    v29 = &v71[v22 - 1];
    v31 = *a3;
    v30 = a3[1];
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    v32 = v29[1];
    *v29 = v31;
    v29[1] = v30;
    if (v32)
    {
      sub_29A014BEC(v32);
    }
  }

  else
  {
    v28 = v22;
  }

  if (*a4)
  {
    v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v33)
    {
      v33 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    sub_29A166F2C(v72 + v28, v33 + 4);
    v34 = v28 + 1;
    v35 = &v71[v28 - 1];
    v37 = *a4;
    v36 = a4[1];
    if (v36)
    {
      atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
    }

    v38 = v35[1];
    *v35 = v37;
    v35[1] = v36;
    if (v38)
    {
      sub_29A014BEC(v38);
    }
  }

  else
  {
    v34 = v28;
  }

  if (*a5)
  {
    v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v39)
    {
      v39 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    sub_29A166F2C(v72 + v34, v39 + 5);
    v40 = v34 + 1;
    v41 = &v71[v34 - 1];
    v43 = *a5;
    v42 = a5[1];
    if (v42)
    {
      atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
    }

    v44 = v41[1];
    *v41 = v43;
    v41[1] = v42;
    if (v44)
    {
      sub_29A014BEC(v44);
    }
  }

  else
  {
    v40 = v34;
  }

  if (*a6)
  {
    v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v45)
    {
      v45 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    sub_29A166F2C(v72 + v40, v45 + 6);
    v46 = v40 + 1;
    v47 = &v71[v40 - 1];
    v49 = *a6;
    v48 = a6[1];
    if (v48)
    {
      atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
    }

    v50 = v47[1];
    *v47 = v49;
    v47[1] = v48;
    if (v50)
    {
      sub_29A014BEC(v50);
    }
  }

  else
  {
    v46 = v40;
  }

  if (*a7)
  {
    v51 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v51)
    {
      v51 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    sub_29A166F2C(v72 + v46, v51 + 7);
    v52 = v46 + 1;
    v53 = &v71[v46 - 1];
    v55 = *a7;
    v54 = a7[1];
    if (v54)
    {
      atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
    }

    v56 = v53[1];
    *v53 = v55;
    v53[1] = v54;
    if (v56)
    {
      sub_29A014BEC(v56);
    }
  }

  else
  {
    v52 = v46;
  }

  if (*a8)
  {
    v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v57)
    {
      v57 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    sub_29A166F2C(v72 + v52, v57 + 8);
    v58 = v52 + 1;
    v59 = &v71[v52 - 1];
    v61 = *a8;
    v60 = a8[1];
    if (v60)
    {
      atomic_fetch_add_explicit((v60 + 8), 1uLL, memory_order_relaxed);
    }

    v62 = v59[1];
    *v59 = v61;
    v59[1] = v60;
    if (v62)
    {
      sub_29A014BEC(v62);
    }
  }

  else
  {
    v58 = v52;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v58, v72, &v70, &v69);
  *a9 = v69;
  for (i = 120; i != -8; i -= 16)
  {
    v64 = *(&v71[-1] + i);
    if (v64)
    {
      sub_29A014BEC(v64);
    }
  }

  for (j = 56; j != -8; j -= 8)
  {
    v66 = *(v72 + j);
    if ((v66 & 7) != 0)
    {
      atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29B054614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v30 = 120;
  while (1)
  {
    v31 = *(&a13 + v30);
    if (v31)
    {
      sub_29A014BEC(v31);
    }

    v30 -= 16;
    if (v30 == -8)
    {
      v32 = 56;
      while (1)
      {
        v33 = *(&a29 + v32);
        if ((v33 & 7) != 0)
        {
          atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v32 -= 8;
        if (v32 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::Builder::SetSpecifier(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::Builder::SetTypeName(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::Builder::SetIsLoaded(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::Builder::SetApiSchemas(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::Builder::SetKind(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::Builder::SetNiPrototypePath(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::Builder::SetIsNiPrototype(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::Builder::SetPiPropagatedPrototypes(uint64_t a1, uint64_t *a2)
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

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens))
    {
      sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!result)
  {
    return sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757C40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1757C40))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1757C08, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1757C08, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1757C40);
  }

  return &unk_2A1757C08;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetNiPrototypePathLocator(pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1757C80, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1757C80);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A1757C08, (v3 + 48), dword_2A1757C48);
      __cxa_atexit(sub_29ABC33B4, dword_2A1757C48, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1757C80);
    }
  }

  return dword_2A1757C48;
}

double pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::BuildSpecifierDataSource@<D0>(pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema *this@<X0>, uint64_t a2@<X8>)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v5)
  {
    v5 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  if ((*(v5 + 9) ^ *this) > 7)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v7)
    {
      v7 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    if ((*(v7 + 10) ^ *this) > 7)
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
      if (!v8)
      {
        v8 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
      }

      if ((*(v8 + 11) ^ *this) > 7)
      {
        sub_29ABCCFA4(this, &v12);
        result = *&v12;
        *a2 = v12;
        return result;
      }

      if ((atomic_load_explicit(&qword_2A1757CC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1757CC8))
      {
        sub_29ABCCFA4(this, &qword_2A1757CB8);
        __cxa_atexit(sub_29ABCD02C, &qword_2A1757CB8, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1757CC8);
      }

      v6 = &qword_2A1757CB8;
    }

    else
    {
      if ((atomic_load_explicit(&qword_2A1757CB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1757CB0))
      {
        sub_29ABCCFA4(this, &qword_2A1757CA0);
        __cxa_atexit(sub_29ABCD02C, &qword_2A1757CA0, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1757CB0);
      }

      v6 = &qword_2A1757CA0;
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A1757C98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1757C98))
    {
      sub_29ABCCFA4(this, &qword_2A1757C88);
      __cxa_atexit(sub_29ABCD02C, &qword_2A1757C88, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1757C98);
    }

    v6 = &qword_2A1757C88;
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

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens_StaticTokenType::~UsdImagingUsdRenderProductSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens_StaticTokenType *this)
{
  v13 = (this + 96);
  sub_29A124AB0(&v13);
  v2 = *(this + 11);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 10);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 9);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 8);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 7);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 6);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 5);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 4);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 3);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 2);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens_StaticTokenType::UsdImagingUsdRenderProductSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens_StaticTokenType *this)
{
  v31 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "__usdRenderProduct", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "resolution", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "pixelAspectRatio", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "aspectRatioConformPolicy", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "dataWindowNDC", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "disableMotionBlur", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "disableDepthOfField", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "camera", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "productType", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "productName", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "orderedVars", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "namespacedSettings", 0);
  v3 = (this + 96);
  v4 = *this;
  v19 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v19 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v20 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v21 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v21 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v22 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v23 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v24 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v25 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v26 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v27 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v28 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v29 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v30 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  sub_29A12EF7C(v3, &v19, &v31, 0xCuLL);
  for (i = 88; i != -8; i -= 8)
  {
    v17 = *(&v19 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29B0552FC(_Unwind_Exception *a1)
{
  v3 = 88;
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
      v5 = v1[11];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[10];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[9];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[8];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[7];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[6];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[5];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[4];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[3];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[2];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[1];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetResolution(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
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

  sub_29AC954CC(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetPixelAspectRatio(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
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

  sub_29ABCABD8(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetAspectRatioConformPolicy(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
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

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetDataWindowNDC(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
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

  sub_29AC959A0(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetDisableMotionBlur(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
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

  sub_29ABCB628(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetDisableDepthOfField(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
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

  sub_29ABCB628(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetCamera(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
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

  sub_29ABE18CC(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetProductType(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
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

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetProductName(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
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

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetOrderedVars(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
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

  sub_29AC3494C(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::GetNamespacedSettings(pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  }

  v5 = *(v4 + 11);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC2F3C(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, _OWORD *a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12)
{
  v95 = *MEMORY[0x29EDCA608];
  v94 = 0;
  v19 = &v91;
  memset(v93, 0, sizeof(v93));
  memset(v92, 0, sizeof(v92));
  v91 = 0u;
  v20 = v93;
  if (*a1)
  {
    v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v22)
    {
      v22 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    v19 = v92;
    v20 = v93 + 1;
    sub_29A166F2C(v93, v22 + 1);
    v24 = *a1;
    v23 = a1[1];
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
    }

    v25 = *(&v91 + 1);
    *&v91 = v24;
    *(&v91 + 1) = v23;
    if (v25)
    {
      sub_29A014BEC(v25);
    }

    v26 = 1;
  }

  else
  {
    v26 = 0;
  }

  if (*a2)
  {
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v27)
    {
      v27 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v20, v27 + 2);
    ++v26;
    v29 = *a2;
    v28 = a2[1];
    if (v28)
    {
      atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
    }

    v30 = *(v19 + 1);
    *v19 = v29;
    *(v19 + 1) = v28;
    if (v30)
    {
      sub_29A014BEC(v30);
    }
  }

  if (*a3)
  {
    v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v31)
    {
      v31 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v93 + v26, v31 + 3);
    v32 = v26 + 1;
    v33 = &v92[v26 - 1];
    v35 = *a3;
    v34 = a3[1];
    if (v34)
    {
      atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
    }

    v36 = v33[1];
    *v33 = v35;
    v33[1] = v34;
    if (v36)
    {
      sub_29A014BEC(v36);
    }
  }

  else
  {
    v32 = v26;
  }

  if (*a4)
  {
    v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v37)
    {
      v37 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v93 + v32, v37 + 4);
    v38 = v32 + 1;
    v39 = &v92[v32 - 1];
    v41 = *a4;
    v40 = a4[1];
    if (v40)
    {
      atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
    }

    v42 = v39[1];
    *v39 = v41;
    v39[1] = v40;
    if (v42)
    {
      sub_29A014BEC(v42);
    }
  }

  else
  {
    v38 = v32;
  }

  if (*a5)
  {
    v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v43)
    {
      v43 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v93 + v38, v43 + 5);
    v44 = v38 + 1;
    v45 = &v92[v38 - 1];
    v47 = *a5;
    v46 = a5[1];
    if (v46)
    {
      atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
    }

    v48 = v45[1];
    *v45 = v47;
    v45[1] = v46;
    if (v48)
    {
      sub_29A014BEC(v48);
    }
  }

  else
  {
    v44 = v38;
  }

  if (*a6)
  {
    v49 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v49)
    {
      v49 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v93 + v44, v49 + 6);
    v50 = v44 + 1;
    v51 = &v92[v44 - 1];
    v53 = *a6;
    v52 = a6[1];
    if (v52)
    {
      atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
    }

    v54 = v51[1];
    *v51 = v53;
    v51[1] = v52;
    if (v54)
    {
      sub_29A014BEC(v54);
    }
  }

  else
  {
    v50 = v44;
  }

  if (*a7)
  {
    v55 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v55)
    {
      v55 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v93 + v50, v55 + 7);
    v56 = v50 + 1;
    v57 = &v92[v50 - 1];
    v59 = *a7;
    v58 = a7[1];
    if (v58)
    {
      atomic_fetch_add_explicit((v58 + 8), 1uLL, memory_order_relaxed);
    }

    v60 = v57[1];
    *v57 = v59;
    v57[1] = v58;
    if (v60)
    {
      sub_29A014BEC(v60);
    }
  }

  else
  {
    v56 = v50;
  }

  if (*a8)
  {
    v61 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v61)
    {
      v61 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v93 + v56, v61 + 8);
    v62 = v56 + 1;
    v63 = &v92[v56 - 1];
    v65 = *a8;
    v64 = a8[1];
    if (v64)
    {
      atomic_fetch_add_explicit((v64 + 8), 1uLL, memory_order_relaxed);
    }

    v66 = v63[1];
    *v63 = v65;
    v63[1] = v64;
    if (v66)
    {
      sub_29A014BEC(v66);
    }
  }

  else
  {
    v62 = v56;
  }

  if (*a10)
  {
    v67 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v67)
    {
      v67 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v93 + v62, v67 + 9);
    v68 = v62 + 1;
    v69 = &v92[v62 - 1];
    v71 = *a10;
    v70 = a10[1];
    if (v70)
    {
      atomic_fetch_add_explicit((v70 + 8), 1uLL, memory_order_relaxed);
    }

    v72 = v69[1];
    *v69 = v71;
    v69[1] = v70;
    if (v72)
    {
      sub_29A014BEC(v72);
    }
  }

  else
  {
    v68 = v62;
  }

  if (*a11)
  {
    v73 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v73)
    {
      v73 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v93 + v68, v73 + 10);
    v74 = v68 + 1;
    v75 = &v92[v68 - 1];
    v77 = *a11;
    v76 = a11[1];
    if (v76)
    {
      atomic_fetch_add_explicit((v76 + 8), 1uLL, memory_order_relaxed);
    }

    v78 = v75[1];
    *v75 = v77;
    v75[1] = v76;
    if (v78)
    {
      sub_29A014BEC(v78);
    }
  }

  else
  {
    v74 = v68;
  }

  if (*a12)
  {
    v79 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v79)
    {
      v79 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v93 + v74, v79 + 11);
    v80 = v74 + 1;
    v81 = &v92[v74 - 1];
    v83 = *a12;
    v82 = a12[1];
    if (v82)
    {
      atomic_fetch_add_explicit((v82 + 8), 1uLL, memory_order_relaxed);
    }

    v84 = v81[1];
    *v81 = v83;
    v81[1] = v82;
    if (v84)
    {
      sub_29A014BEC(v84);
    }
  }

  else
  {
    v80 = v74;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v80, v93, &v91, &v90);
  *a9 = v90;
  for (i = 168; i != -8; i -= 16)
  {
    v86 = *(&v92[-1] + i);
    if (v86)
    {
      sub_29A014BEC(v86);
    }
  }

  for (j = 80; j != -8; j -= 8)
  {
    v88 = *(v93 + j);
    if ((v88 & 7) != 0)
    {
      atomic_fetch_add_explicit((v88 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}