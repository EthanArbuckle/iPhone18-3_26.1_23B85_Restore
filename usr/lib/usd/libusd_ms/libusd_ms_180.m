pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens_StaticTokenType *sub_29AF8D490(atomic_ullong *a1)
{
  result = sub_29AF8D4D8();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens_StaticTokenType::~UsdImagingUsdRenderProductSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens_StaticTokenType *sub_29AF8D4D8()
{
  v0 = operator new(0x78uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens_StaticTokenType::UsdImagingUsdRenderProductSchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens_StaticTokenType *sub_29AF8D51C(atomic_ullong *a1)
{
  result = sub_29AF8D564();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens_StaticTokenType::~UsdImagingUsdRenderVarSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens_StaticTokenType *sub_29AF8D564()
{
  v0 = operator new(0x40uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens_StaticTokenType::UsdImagingUsdRenderVarSchemaTokens_StaticTokenType(v0);
  return v0;
}

void sub_29AF8D5A8(_DWORD *a1)
{
  *a1 = &unk_2A20A7200;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdRenderPass::~UsdRenderPass((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF8D618(_DWORD *a1)
{
  *a1 = &unk_2A20A7200;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdRenderPass::~UsdRenderPass((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29AF8D68C(void *a1@<X8>)
{
  sub_29AF8B540();
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;

  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

pxrInternal__aapl__pxrReserved__::UsdRenderTokensType *sub_29AF8D6E0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
  if (!v6)
  {
    v6 = sub_29A816EDC(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
  }

  if ((*(v6 + 25) ^ *a2) <= 7)
  {
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::UsdRenderPass::GetPassTypeAttr((a1 + 16), v9);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
  }

  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
  if (!result)
  {
    result = sub_29A816EDC(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
  }

  if ((*(result + 36) ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdRenderPass::GetRenderSourceRel((a1 + 16), v9);
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v9);
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

void sub_29AF8D8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  a9 = &a12;
  sub_29A1E234C(&a9);
  sub_29A5B6480(&a15);
  _Unwind_Resume(a1);
}

void sub_29AF8D938(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF8D960(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF8D990(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A7298))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF8D9D0(_DWORD *a1)
{
  *a1 = &unk_2A20A72C0;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdRenderSettings::~UsdRenderSettings((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF8DA40(_DWORD *a1)
{
  *a1 = &unk_2A20A72C0;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdRenderSettings::~UsdRenderSettings((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29AF8DAB4(void *a1@<X8>)
{
  sub_29AF8BC94();
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;

  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29AF8DB08(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  if (!v6)
  {
    v6 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
  }

  if ((*(v6 + 12) ^ *a2) > 7)
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    if (!v8)
    {
      v8 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
    }

    if ((*(v8 + 7) ^ *a2) > 7)
    {
      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      if (!v10)
      {
        v10 = sub_29AF8D404(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderSettingsSchemaTokens);
      }

      if ((*(v10 + 11) ^ *a2) > 7)
      {
        sub_29A580660(v17, (a1 + 24), (a1 + 32));
        pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(v17, a2, &v13);
        if ((v19 & 7) != 0)
        {
          atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
        sub_29A1DE3A4(&v18);
        if (v17[1])
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17[1], v12);
        }

        pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v13);
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      pxrInternal__aapl__pxrReserved__::UsdRenderSettings::GetProductsRel((a1 + 16), v17);
      pxrInternal__aapl__pxrReserved__::UsdRelationship::GetForwardedTargets(v17, &v13);
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
      sub_29A1DE3A4(&v18);
      if (v17[1])
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17[1], v11);
      }

      sub_29AF8AE74(v17, v13, v14);
      sub_29ABE9C5C(v17, &v16);
      *a3 = v16;
      sub_29ABED558(v17);
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      pxrInternal__aapl__pxrReserved__::UsdRenderSettingsBase::GetCameraRel((a1 + 16), v17);
      pxrInternal__aapl__pxrReserved__::UsdRelationship::GetForwardedTargets(v17, &v13);
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
      sub_29A1DE3A4(&v18);
      if (v17[1])
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17[1], v9);
      }

      if (v13 == v14)
      {
        *a3 = 0;
        *(a3 + 8) = 0;
      }

      else
      {
        sub_29ABE8360(v13, v17);
        *a3 = *v17;
      }
    }

    v17[0] = &v13;
    sub_29A1E234C(v17);
  }

  else
  {
    sub_29A580660(v17, (a1 + 24), (a1 + 32));
    sub_29AF8DF9C(v17, &v13);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
    sub_29A1DE3A4(&v18);
    if (v17[1])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17[1], v7);
    }

    pxrInternal__aapl__pxrReserved__::HdUtils::ConvertVtDictionaryToContainerDS(&v13, v17);
    *a3 = *v17;
    sub_29A184A10(&v13, 0);
  }
}

void sub_29AF8DED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_29ABC3488(va1);
  sub_29A5888DC(va);
  _Unwind_Resume(a1);
}

void sub_29AF8DF9C(pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X0>, void *a2@<X8>)
{
  memset(v2, 0, sizeof(v2));
  pxrInternal__aapl__pxrReserved__::UsdRenderComputeNamespacedSettings(a1, a2);
  v3 = v2;
  sub_29A124AB0(&v3);
}

void sub_29AF8DFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A124AB0(&a12);
  _Unwind_Resume(a1);
}

void sub_29AF8E000(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF8E028(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF8E058(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A7358))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF8E098(_DWORD *a1)
{
  *a1 = &unk_2A20A7380;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdRenderProduct::~UsdRenderProduct((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF8E108(_DWORD *a1)
{
  *a1 = &unk_2A20A7380;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdRenderProduct::~UsdRenderProduct((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29AF8E17C(void *a1@<X8>)
{
  sub_29AF8C4AC();
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;

  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29AF8E1D0(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  if (!v6)
  {
    v6 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
  }

  if ((*(v6 + 11) ^ *a2) > 7)
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    if (!v8)
    {
      v8 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
    }

    if ((*(v8 + 7) ^ *a2) > 7)
    {
      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
      if (!v10)
      {
        v10 = sub_29AF8D490(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderProductSchemaTokens);
      }

      if ((*(v10 + 10) ^ *a2) > 7)
      {
        sub_29A580660(v17, (a1 + 24), (a1 + 32));
        pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(v17, a2, &v13);
        if ((v19 & 7) != 0)
        {
          atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
        sub_29A1DE3A4(&v18);
        if (v17[1])
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17[1], v12);
        }

        pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v13);
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      pxrInternal__aapl__pxrReserved__::UsdRenderProduct::GetOrderedVarsRel((a1 + 16), v17);
      pxrInternal__aapl__pxrReserved__::UsdRelationship::GetForwardedTargets(v17, &v13);
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
      sub_29A1DE3A4(&v18);
      if (v17[1])
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17[1], v11);
      }

      sub_29AF8AE74(v17, v13, v14);
      sub_29ABE9C5C(v17, &v16);
      *a3 = v16;
      sub_29ABED558(v17);
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      pxrInternal__aapl__pxrReserved__::UsdRenderSettingsBase::GetCameraRel((a1 + 16), v17);
      pxrInternal__aapl__pxrReserved__::UsdRelationship::GetForwardedTargets(v17, &v13);
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
      sub_29A1DE3A4(&v18);
      if (v17[1])
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17[1], v9);
      }

      if (v13 == v14)
      {
        *a3 = 0;
        *(a3 + 8) = 0;
      }

      else
      {
        sub_29ABE8360(v13, v17);
        *a3 = *v17;
      }
    }

    v17[0] = &v13;
    sub_29A1E234C(v17);
  }

  else
  {
    sub_29A580660(v17, (a1 + 24), (a1 + 32));
    sub_29AF8DF9C(v17, &v13);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18 + 1);
    sub_29A1DE3A4(&v18);
    if (v17[1])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17[1], v7);
    }

    pxrInternal__aapl__pxrReserved__::HdUtils::ConvertVtDictionaryToContainerDS(&v13, v17);
    *a3 = *v17;
    sub_29A184A10(&v13, 0);
  }
}

void sub_29AF8E638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_guard_abort(qword_2A1751D90);
  sub_29A5888DC(va);
  _Unwind_Resume(a1);
}

void sub_29AF8E728(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF8E750(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF8E780(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A7418))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF8E7C0(_DWORD *a1)
{
  *a1 = &unk_2A20A7440;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdRenderVar::~UsdRenderVar((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF8E830(_DWORD *a1)
{
  *a1 = &unk_2A20A7440;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdRenderVar::~UsdRenderVar((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29AF8E8A4(void *a1@<X8>)
{
  sub_29AF8CCC4();
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;

  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29AF8E8F8(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, _OWORD *a3@<X8>)
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
  if (!v6)
  {
    v6 = sub_29AF8D51C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdRenderVarSchemaTokens);
  }

  if ((*(v6 + 4) ^ *a2) > 7)
  {
    sub_29A580660(v10, (a1 + 24), (a1 + 32));
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(v10, a2, &v9);
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
    sub_29A1DE3A4(&v11);
    if (v10[1])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10[1], v8);
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v9);
  }

  sub_29A580660(v10, (a1 + 24), (a1 + 32));
  sub_29AF8DF9C(v10, &v9);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
  sub_29A1DE3A4(&v11);
  if (v10[1])
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10[1], v7);
  }

  pxrInternal__aapl__pxrReserved__::HdUtils::ConvertVtDictionaryToContainerDS(&v9, v10);
  *a3 = *v10;
  sub_29A184A10(&v9, 0);
}

void sub_29AF8EB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_29ABC3488(va1);
  sub_29A5888DC(va);
  _Unwind_Resume(a1);
}

void sub_29AF8EBC8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF8EBF0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF8EC20(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A74D8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStage::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStage *this@<X0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x29EDCA608];
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdSystemSchema::GetSchemaToken(this);
  v4 = *SchemaToken;
  v10 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v10 = v4 & 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetSchemaToken(SchemaToken);
  v11 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v6;
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A12EF7C(a2, &v10, &v12, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v9 = *(&v10 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AF8ED50(_Unwind_Exception *a1)
{
  v2 = 8;
  while (1)
  {
    v3 = *(v1 + v2);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v2 -= 8;
    if (v2 == -8)
    {
      _Unwind_Resume(a1);
    }
  }
}

pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStage::Get@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStage *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdSystemSchema::GetSchemaToken(this);
  if ((*SchemaToken ^ *a2) <= 7)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdarSystemSchemaTokens))
    {
      sub_29AD11348(&pxrInternal__aapl__pxrReserved__::HdarSystemSchemaTokens);
    }

    v20 = 0uLL;
    v8 = sub_29A5A70E0(this + 1);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPathResolverContext(v8, v18);
  }

  result = pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::GetSchemaToken(SchemaToken);
  if ((*result ^ *a2) <= 7)
  {
    memset(&__p, 0, sizeof(__p));
    v10 = sub_29A5A70E0(this + 1);
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
    if (!v11)
    {
      v11 = sub_29A816EDC(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
    }

    if (pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredMetadata(v10, (v11 + 280)))
    {
      v12 = sub_29A5A70E0(this + 1);
      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
      if (!v13)
      {
        v13 = sub_29A816EDC(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
      }

      sub_29A81B024(v12, (v13 + 280), &__p);
    }

    v14 = 0uLL;
    memset(v18, 0, sizeof(v18));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v17, &__p);
      sub_29ABE8360(&v17, &v20);
      v14 = v20;
    }

    v21 = v14;
    v20 = 0uLL;
    pxrInternal__aapl__pxrReserved__::HdSceneGlobalsSchema::Builder::SetActiveRenderSettingsPrim(v18, &v21);
    v16 = sub_29A5A70E0(this + 1);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v16);
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

void sub_29AF8F148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_29A1DCEA8(&a14);
  sub_29ABEF2C0(&a16);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceStage::UsdImagingDataSourceStage(void *result, uint64_t *a2)
{
  v2 = *a2;
  *result = &unk_2A20A7500;
  result[1] = v2;
  *a2 = 0;
  return result;
}

{
  v2 = *a2;
  *result = &unk_2A20A7500;
  result[1] = v2;
  *a2 = 0;
  return result;
}

void sub_29AF8F3C4(void *a1)
{
  *a1 = &unk_2A20A7548;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>>::__init_with_size[abi:ne200100]<std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>*,std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>*>();
}

void sub_29AF8F434(void **a1)
{
  *a1 = &unk_2A20A7548;
  v2 = a1 + 1;
  sub_29A0176E4(&v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF8F490(void **a1)
{
  *a1 = &unk_2A20A7548;
  v3 = a1 + 1;
  sub_29A0176E4(&v3);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
  operator delete(v2);
}

void sub_29AF8F510(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>>::__init_with_size[abi:ne200100]<std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>*,std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>*>();
}

uint64_t *sub_29AF8F52C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AF8F54C(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29AF8F698(a1);
}

void sub_29AF8F698(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (atomic_fetch_add_explicit((v1 + 24), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = v1;
      sub_29A0176E4(&v2);
      operator delete(v1);
    }
  }
}

uint64_t sub_29AF8F6F0(uint64_t a1)
{
  v1 = atomic_load((*a1 + 24));
  if (v1 != 1)
  {
    sub_29AF8F758();
  }

  return *a1;
}

void sub_29AF8F758()
{
  v0 = operator new(0x20uLL);
  v0[1] = 0;
  v0[2] = 0;
  *v0 = 0;
  std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>>::__init_with_size[abi:ne200100]<std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>*,std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>*>();
}

void sub_29AF8F7D0()
{
  v0 = operator new(0x20uLL);
  v0[1] = 0;
  v0[2] = 0;
  *v0 = 0;
  std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>>::__init_with_size[abi:ne200100]<std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>*,std::shared_ptr<pxrInternal__aapl__pxrReserved__::ArResolverContext::_Untyped>*>();
}

void *sub_29AF8F848(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A7660;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF8F8A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF8F8BC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF8F8E4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF8F914(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A76B0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMeshTopology::UsdImagingDataSourceTetMeshTopology(uint64_t a1, _DWORD *a2, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3, uint64_t a4)
{
  *a1 = &unk_2A20A7720;
  v8 = (a1 + 16);
  sub_29A1E21F4((a1 + 8), a2);
  sub_29A1E2240((a1 + 12), a2 + 1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v8, a3);
  *(a1 + 16) = &unk_2A20606F8;
  *(a1 + 40) = a4;
  return a1;
}

void sub_29AF8FA00(_Unwind_Exception *a1)
{
  sub_29A1DCEA8(v1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMeshTopology::GetNames@<X0>(void *a1@<X8>)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  if (!v3)
  {
    v3 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  }

  v4 = *(v3 + 3);
  v13 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v5;
    }
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  if (!v6)
  {
    v6 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  }

  v7 = *(v6 + 1);
  v14 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v14 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  if (!v8)
  {
    v8 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  }

  v9 = *(v8 + 2);
  v15 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v15 &= 0xFFFFFFFFFFFFFFF8;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v12 = *(&v13 + i);
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AF8FBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMeshTopology::Get@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMeshTopology *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  if (!v6)
  {
    v6 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) <= 7)
  {
    TetVertexIndicesAttr = pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::GetTetVertexIndicesAttr((this + 16), &v15);
    v8 = *(this + 5);
    TetVertexIndicesLocator = pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::GetTetVertexIndicesLocator(TetVertexIndicesAttr);
    sub_29AF8FE08(&v15, v8, this + 8, TetVertexIndicesLocator);
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  if (!v10)
  {
    v10 = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  }

  if ((*(v10 + 2) ^ *a2) <= 7)
  {
    SurfaceFaceVertexIndicesAttr = pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::GetSurfaceFaceVertexIndicesAttr((this + 16), &v15);
    v12 = *(this + 5);
    SurfaceFaceVertexIndicesLocator = pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchema::GetSurfaceFaceVertexIndicesLocator(SurfaceFaceVertexIndicesAttr);
    sub_29AF8FE94(&v15, v12, this + 8, SurfaceFaceVertexIndicesLocator);
  }

  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  if (!result)
  {
    result = sub_29ACE1D00(&pxrInternal__aapl__pxrReserved__::HdTetMeshTopologySchemaTokens);
  }

  if ((*(result + 3) ^ *a2) <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomGprim::GetOrientationAttr((this + 16), &v15);
    sub_29AF6E290(&v15, *(this + 5));
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMesh::UsdImagingDataSourceTetMesh(uint64_t a1, _DWORD *a2, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a3, uint64_t a4)
{
  *a1 = &unk_2A20A7750;
  v8 = (a1 + 16);
  sub_29A1E21F4((a1 + 8), a2);
  sub_29A1E2240((a1 + 12), a2 + 1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v8, a3);
  *(a1 + 16) = &unk_2A20606F8;
  *(a1 + 40) = a4;
  return a1;
}

void sub_29AF8FFC0(_Unwind_Exception *a1)
{
  sub_29A1DCEA8(v1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMesh::GetNames@<X0>(void *a1@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  if (!v3)
  {
    v3 = sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  }

  v4 = *(v3 + 1);
  v12 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v5;
    }
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  }

  v7 = *(v6 + 2);
  v13 = v7;
  if ((v7 & 7) != 0)
  {
    v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v8;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v12, &v14, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v11 = *(&v12 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMesh::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMesh *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) > 7)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
    if (!v7)
    {
      v7 = sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
    }

    if ((*(v7 + 2) ^ *a2) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomGprim::GetDoubleSidedAttr((this + 16), v8);
      sub_29AF7D438(v8, *(this + 5));
    }

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    sub_29AF9027C(this + 2, (this + 16), *(this + 5), v8);
    *a3 = *v8;
  }
}

void sub_29AF9027C(_DWORD *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v9, a2);
  v9[0] = &unk_2A20606F8;
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMeshTopology::UsdImagingDataSourceTetMeshTopology(v8, a1, v9, a3);
  sub_29AF90C94(a4, v8);
  pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::~UsdGeomTetMesh(v9);
}

void sub_29AF90320(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::~UsdGeomTetMesh(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMeshPrim::UsdImagingDataSourceTetMeshPrim(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = &unk_2A20A7780;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMeshPrim::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMeshPrim *this@<X0>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::GetNames(this, a2);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  if (!v3)
  {
    v3 = sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  }

  return sub_29A1D8028(a2, v3);
}

void sub_29AF904DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMeshPrim::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMeshPrim *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ACE0D0C(&pxrInternal__aapl__pxrReserved__::HdTetMeshSchemaTokens);
  }

  if ((*v6 ^ *a2) > 7)
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Get(this, a2, a3);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v7, (this + 16));
    v7[0] = &unk_2A20606F8;
    sub_29AF905F8(this + 2, v7, *(this + 6), &v8);
    *a3 = v8;
    v8 = 0uLL;
    pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::~UsdGeomTetMesh(v7);
  }
}

void sub_29AF905E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::~UsdGeomTetMesh(va);
  _Unwind_Resume(a1);
}

void sub_29AF905F8(_DWORD *a1@<X0>, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v9, a2);
  v9[0] = &unk_2A20606F8;
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMesh::UsdImagingDataSourceTetMesh(v8, a1, v9, a3);
  sub_29AF90DA0(a4, v8);
  pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::~UsdGeomTetMesh(v9);
}

void sub_29AF9069C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::~UsdGeomTetMesh(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceTetMeshPrim::Invalidate(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X2>, int a4@<W3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  v16[57] = *MEMORY[0x29EDCA608];
  *(a5 + 56) = 0x800000000;
  v10 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    do
    {
      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v12)
      {
        v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v12 + 134) ^ *v10) < 8)
      {
        goto LABEL_11;
      }

      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v12)
      {
        v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v12 + 131) ^ *v10) < 8)
      {
        goto LABEL_11;
      }

      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v12)
      {
        v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v12 + 91) ^ *v10) <= 7)
      {
LABEL_11:
        TopologyLocator = pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::GetTopologyLocator(v12);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, TopologyLocator);
      }

      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v14)
      {
        v14 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v14 + 30) ^ *v10) <= 7)
      {
        DoubleSidedLocator = pxrInternal__aapl__pxrReserved__::HdTetMeshSchema::GetDoubleSidedLocator(v14);
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, DoubleSidedLocator);
      }

      v10 = (v10 + 8);
    }

    while (v10 != v11);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Invalidate(a1, a2, a3, a4, v16);
  pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, v16);
  sub_29ABD3178();
}

void sub_29AF90898(_DWORD *a1)
{
  *a1 = &unk_2A20A7720;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::~UsdGeomTetMesh((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF90908(_DWORD *a1)
{
  *a1 = &unk_2A20A7720;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::~UsdGeomTetMesh((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29AF9097C(_DWORD *a1)
{
  *a1 = &unk_2A20A7750;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::~UsdGeomTetMesh((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF909EC(_DWORD *a1)
{
  *a1 = &unk_2A20A7750;
  v2 = a1 + 3;
  pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh::~UsdGeomTetMesh((a1 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v3);
}

void sub_29AF90A60(uint64_t a1)
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

void sub_29AF90AFC(uint64_t a1)
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

void sub_29AF90C04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A5896C0(va);
  _Unwind_Resume(a1);
}

void sub_29AF90C80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A5896C0(va);
  _Unwind_Resume(a1);
}

void *sub_29AF90C94(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A77F8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF90CEC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF90D08(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF90D30(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF90D60(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A7848))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AF90DA0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A7870;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF90DF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF90E14(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF90E3C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF90E6C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A78C0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceUsdPrimInfo::UsdImagingDataSourceUsdPrimInfo(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A20A78E8;
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

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceUsdPrimInfo::~UsdImagingDataSourceUsdPrimInfo(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceUsdPrimInfo *this)
{
  *this = &unk_2A20A78E8;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 7);
  sub_29A1DE3A4(this + 6);
  v4 = *(this + 2);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceUsdPrimInfo::~UsdImagingDataSourceUsdPrimInfo(this);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceUsdPrimInfo::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceUsdPrimInfo *this@<X0>, void *a2@<X8>)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  v5 = *(v4 + 1);
  v21 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v21 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v6)
  {
    v6 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  v7 = *(v6 + 2);
  v22 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v8)
  {
    v8 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  v9 = *(v8 + 3);
  v23 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v10)
  {
    v10 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  v11 = *(v10 + 4);
  v24 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v12)
  {
    v12 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  v13 = *(v12 + 5);
  v25 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_29A12EF7C(a2, &v21, &v26, 5uLL);
  for (i = 32; i != -8; i -= 8)
  {
    v16 = *(&v21 + i);
    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  if (sub_29A656834(this + 8, v14))
  {
    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v18)
    {
      v18 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    sub_29A1D8028(a2, v18 + 6);
  }

  result = sub_29A5B9DEC(this + 8, v17);
  if (result)
  {
    v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v20)
    {
      v20 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    return sub_29A1D8028(a2, v20 + 7);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceUsdPrimInfo::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceUsdPrimInfo *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v6)
  {
    v6 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) > 7)
  {
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    if (!v9)
    {
      v9 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
    }

    if ((*(v9 + 2) ^ *a2) > 7)
    {
      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
      if (!v11)
      {
        v11 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
      }

      if ((*(v11 + 3) ^ *a2) > 7)
      {
        v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
        if (!v12)
        {
          v12 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
        }

        if ((*(v12 + 4) ^ *a2) <= 7)
        {
          pxrInternal__aapl__pxrReserved__::UsdPrim::GetAppliedSchemas((this + 8), a2, v20);
        }

        v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
        if (!v15)
        {
          v15 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
        }

        if ((*(v15 + 5) ^ *a2) <= 7)
        {
          v20[0] = 0;
          pxrInternal__aapl__pxrReserved__::UsdPrim::GetKind((this + 8), v20);
        }

        v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
        if (!v16)
        {
          v16 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
        }

        if ((*(v16 + 6) ^ *a2) <= 7)
        {
          if (sub_29A656834(this + 8, a2))
          {
            pxrInternal__aapl__pxrReserved__::UsdPrim::GetPrototype((this + 8), v17, v19);
            pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v19);
          }

          goto LABEL_44;
        }

        v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
        if (!v18)
        {
          v18 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
        }

        if ((*(v18 + 7) ^ *a2) > 7 || (sub_29A5B9DEC(this + 8, a2) & 1) == 0)
        {
          goto LABEL_44;
        }

        LOBYTE(v20[0]) = 1;
      }

      else
      {
        LOBYTE(v20[0]) = sub_29AF91744(this + 8, a2);
      }

      pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(v20, v19);
    }

    else
    {
      v10 = *(this + 2);
      if (!v10 || (*(v10 + 57) & 8) != 0)
      {
        pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v10, a2);
      }

      sub_29ABCCFA4(*(v10 + 24), v19);
    }

    *a3 = *v19;
    return;
  }

  v7 = sub_29A5970D0(this + 8, a2);
  if ((atomic_load_explicit(&qword_2A1751DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751DD0))
  {
    sub_29AF917CC();
    __cxa_atexit(sub_29AF918BC, &xmmword_2A1751DA0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1751DD0);
  }

  if (v7)
  {
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        v8 = &xmmword_2A1751DC0;
        goto LABEL_28;
      }

LABEL_44:
      *a3 = 0;
      *(a3 + 8) = 0;
      return;
    }

    v8 = &xmmword_2A1751DB0;
  }

  else
  {
    v8 = &xmmword_2A1751DA0;
  }

LABEL_28:
  v14 = *v8;
  v13 = *(v8 + 1);
  *a3 = v14;
  *(a3 + 8) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t sub_29AF91744(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (v3 = *(v2 + 56), (v3 & 0x800) != 0))
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
    v3 = *(v2 + 56);
  }

  return (v3 >> 1) & 1;
}

uint64_t sub_29AF91780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29A8446C0(a1, a2, a3);
  return a1;
}

double sub_29AF917CC()
{
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v0)
  {
    v0 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  sub_29ABCCFA4(v0 + 9, &v4);
  xmmword_2A1751DA0 = v4;
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v1)
  {
    v1 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  sub_29ABCCFA4(v1 + 10, &v4);
  xmmword_2A1751DB0 = v4;
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  if (!v2)
  {
    v2 = sub_29AF4751C(&pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchemaTokens);
  }

  sub_29ABCCFA4(v2 + 11, &v4);
  result = *&v4;
  xmmword_2A1751DC0 = v4;
  return result;
}

void sub_29AF91888(_Unwind_Exception *exception_object)
{
  if (*(&xmmword_2A1751DB0 + 1))
  {
    sub_29A014BEC(*(&xmmword_2A1751DB0 + 1));
  }

  if (*(&xmmword_2A1751DA0 + 1))
  {
    sub_29A014BEC(*(&xmmword_2A1751DA0 + 1));
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF918BC(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  return a1;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVolumeFieldBindings::UsdImagingDataSourceVolumeFieldBindings(void *a1, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2, uint64_t a3)
{
  *a1 = &unk_2A20A7930;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase((a1 + 1), a2);
  a1[1] = &unk_2A2060BE0;
  a1[4] = a3;
  return a1;
}

void sub_29AF91A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void **a12)
{
  sub_29A124AB0(&a12);
  sub_29A349AC0(&a9, a10);
  _Unwind_Resume(a1);
}

void sub_29AF91AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVolumePrim::UsdImagingDataSourceVolumePrim(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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

  *a1 = &unk_2A20A7960;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVolumePrim::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVolumePrim *this@<X0>, void *a2@<X8>)
{
  Names = pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::GetNames(this, a2);
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchema::GetSchemaToken(Names);
  return sub_29A1D8028(a2, SchemaToken);
}

void sub_29AF91C48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVolumePrim::Get(pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVolumePrim *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if ((*pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchema::GetSchemaToken(this) ^ *a2) > 7)
  {

    pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Get(this, a2, a3);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v6, (this + 16));
    v6[0] = &unk_2A2060BE0;
    sub_29AF91D44(v6, *(this + 6), &v7);
    *a3 = v7;
    v7 = 0uLL;
    pxrInternal__aapl__pxrReserved__::UsdVolVolume::~UsdVolVolume(v6);
  }
}

void sub_29AF91D30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdVolVolume::~UsdVolVolume(va);
  _Unwind_Resume(a1);
}

void sub_29AF91D44(const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v7, a1);
  v7[0] = &unk_2A2060BE0;
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVolumeFieldBindings::UsdImagingDataSourceVolumeFieldBindings(v6, v7, a2);
  sub_29AF921A8(a3, v6);
  pxrInternal__aapl__pxrReserved__::UsdVolVolume::~UsdVolVolume(v7);
}

void sub_29AF91DE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdVolVolume::~UsdVolVolume(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceVolumePrim::Invalidate(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdGeomXformable **a3@<X2>, int a4@<W3>, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a5@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourceGprim::Invalidate(a1, a2, a3, a4, a5);
  if ((atomic_load_explicit(&qword_2A1751DF0, memory_order_acquire) & 1) == 0)
  {
    v7 = __cxa_guard_acquire(&qword_2A1751DF0);
    if (v7)
    {
      v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
      if (!v17)
      {
        v17 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
      }

      if ((*(v17 + 5) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*(v17 + 5) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v17);
      }

      sub_29A911628(":", EmptyString, &qword_2A1751DD8);
      __cxa_atexit(MEMORY[0x29EDC9388], &qword_2A1751DD8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1751DF0);
    }
  }

  v8 = *a3;
  v9 = a3[1];
  if (*a3 != v9)
  {
    while (1)
    {
      v10 = (*v8 & 0xFFFFFFFFFFFFFFF8) != 0 ? ((*v8 & 0xFFFFFFFFFFFFFFF8) + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
      v11 = byte_2A1751DEF >= 0 ? &qword_2A1751DD8 : qword_2A1751DD8;
      v12 = *(v10 + 23);
      v13 = v12 >= 0 ? *(v10 + 23) : v10[1];
      v7 = strlen(v11);
      if (v13 >= v7)
      {
        v14 = v7;
        v15 = v12 >= 0 ? v10 : *v10;
        v7 = strncmp(v15, v11, v14);
        if (!v7)
        {
          break;
        }
      }

      v8 = (v8 + 8);
      if (v8 == v9)
      {
        return;
      }
    }

    DefaultLocator = pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchema::GetDefaultLocator(v7);
    pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a5, DefaultLocator);
  }
}

void sub_29AF91FC0(uint64_t a1)
{
  *a1 = &unk_2A20A7930;
  pxrInternal__aapl__pxrReserved__::UsdVolVolume::~UsdVolVolume((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF92014(uint64_t a1)
{
  *a1 = &unk_2A20A7930;
  pxrInternal__aapl__pxrReserved__::UsdVolVolume::~UsdVolVolume((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void sub_29AF9206C(uint64_t a1)
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

void sub_29AF92108(uint64_t a1)
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

void *sub_29AF921A8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A79C0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF92200(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF9221C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF92244(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF92274(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A7A10))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF922B4()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20A7A28, 2, "USDIMAGING_CHANGES", 0);
  v0 = sub_29AF4A7DC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v0 + 8, "USDIMAGING_CHANGES", "Report change processing events");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20A7A28, 0, "USDIMAGING_COLLECTIONS", 0);
  v1 = sub_29AF4A7DC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v1, "USDIMAGING_COLLECTIONS", "Report collection queries");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20A7A28, 3, "USDIMAGING_COMPUTATIONS", 0);
  v2 = sub_29AF4A7DC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v2 + 12, "USDIMAGING_COMPUTATIONS", "Report Hydra computation usage in usdImaging.");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20A7A28, 1, "USDIMAGING_COORDSYS", 0);
  v3 = sub_29AF4A7DC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v3 + 4, "USDIMAGING_COORDSYS", "Coordinate systems");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20A7A28, 4, "USDIMAGING_INSTANCER", 0);
  v4 = sub_29AF4A7DC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v4 + 16, "USDIMAGING_INSTANCER", "Report instancer messages");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20A7A28, 5, "USDIMAGING_PLUGINS", 0);
  v5 = sub_29AF4A7DC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v5 + 20, "USDIMAGING_PLUGINS", "Report plugin status messages");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20A7A28, 6, "USDIMAGING_POINT_INSTANCER_PROTO_CREATED", 0);
  v6 = sub_29AF4A7DC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v6 + 24, "USDIMAGING_POINT_INSTANCER_PROTO_CREATED", "Report PI prototype stats as they are created");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20A7A28, 7, "USDIMAGING_POINT_INSTANCER_PROTO_CULLING", 0);
  v7 = sub_29AF4A7DC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v7 + 28, "USDIMAGING_POINT_INSTANCER_PROTO_CULLING", "Report PI culling debug info");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20A7A28, 8, "USDIMAGING_POPULATION", 0);
  v8 = sub_29AF4A7DC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v8 + 32, "USDIMAGING_POPULATION", "Report population events");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20A7A28, 9, "USDIMAGING_SELECTION", 0);
  v9 = sub_29AF4A7DC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v9 + 36, "USDIMAGING_SELECTION", "Report selection messages");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20A7A28, 10, "USDIMAGING_SHADERS", 0);
  v10 = sub_29AF4A7DC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v10 + 40, "USDIMAGING_SHADERS", "Report shader status messages");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20A7A28, 11, "USDIMAGING_UPDATES", 0);
  v11 = sub_29AF4A7DC() + 44;

  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v11, "USDIMAGING_UPDATES", "Report non-authored, time-varying data changes");
}

void sub_29AF92550()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_ENABLE_DRAWMODE_CACHE))
  {
    sub_29B2CCE3C();
  }
}

pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::UsdImagingDelegate(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v5 = pxrInternal__aapl__pxrReserved__::HdSceneDelegate::HdSceneDelegate(this, a2, a3);
  *(v5 + 3) = 0;
  *v5 = &unk_2A20A7A48;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 16) = 1065353216;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 15) = 0;
  *(v5 + 26) = 1065353216;
  *(v5 + 14) = v5 + 120;
  *(v5 + 16) = 0;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 11) = 0u;
  *(v5 + 42) = 1065353216;
  *(v5 + 12) = 0u;
  *(v5 + 52) = 1065353216;
  *(v5 + 216) = 0u;
  *(v5 + 232) = 0u;
  *(v5 + 62) = 1065353216;
  *(v5 + 16) = 0u;
  *(v5 + 17) = 0u;
  *(v5 + 72) = 1065353216;
  *(v5 + 296) = 0;
  sub_29AFA14F4(v5 + 304, 8uLL, v32);
  *(this + 108) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 218);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 219);
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 55) = 0u;
  *(this + 240) = 1065353216;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 242);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 243);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(this + 976, 1.0);
  *(this + 1104) = 1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 277);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 278);
  *(this + 140) = 0x7FF0000000000000;
  *(this + 141) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 282);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 283);
  *(this + 284) = 0;
  *(this + 143) = 0;
  *(this + 145) = 0;
  *(this + 144) = 0;
  *(this + 292) = 0;
  *(this + 147) = 0;
  *(this + 149) = 0;
  *(this + 148) = 0;
  *(this + 1200) = 0;
  *(this + 1208) = 0u;
  *(this + 1224) = 0u;
  *(this + 1240) = 0u;
  *(this + 1256) = 0u;
  *(this + 159) = 0;
  *(this + 320) = 1065353216;
  v6 = *(this + 140);
  memset(v30, 0, sizeof(v30));
  v31 = 1065353216;
  sub_29AFA2B9C(this + 1288, 0, v30, v6);
  sub_29AFA17D0(v30);
  RenderDelegate = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(a2);
  (*(*RenderDelegate + 280))(v32);
  sub_29AFA18C0(this + 240, v32);
  if ((v32[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v32[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 140);
  memset(v28, 0, sizeof(v28));
  v29 = 1065353216;
  sub_29AFA33B4(this + 3048, this + 1920, v28, v8);
  sub_29AFA1974(v28);
  sub_29AFA6514(this + 3680);
  v9 = *(this + 140);
  memset(v26, 0, sizeof(v26));
  v27 = 1065353216;
  sub_29AFA3BB8(this + 4312, 0, v26, v9);
  sub_29AFA1A78(v26);
  sub_29AFA42D0(this + 4944);
  v10 = *(this + 140);
  memset(v24, 0, sizeof(v24));
  v25 = 1065353216;
  sub_29AFA4648(this + 5576, 0, v24, v10);
  sub_29AFA1A78(v24);
  *(this + 389) = 0u;
  *(this + 388) = 0u;
  *(this + 1560) = 1065353216;
  *(this + 6248) = 0u;
  *(this + 6264) = 0u;
  *(this + 1570) = 1065353216;
  *(this + 393) = 0u;
  *(this + 394) = 0u;
  *(this + 1580) = 1065353216;
  *(this + 6328) = 0u;
  *(this + 6344) = 0u;
  *(this + 1590) = 1065353216;
  *(this + 6376) = 0u;
  *(this + 796) = this + 6376;
  *(this + 799) = 850045863;
  *(this + 806) = 0;
  *(this + 402) = 0u;
  *(this + 401) = 0u;
  *(this + 400) = 0u;
  sub_29AFA4A60(this + 6456);
  v11 = *(this + 140);
  memset(v22, 0, sizeof(v22));
  v23 = 1065353216;
  sub_29AFA4DCC(this + 7088, 0, v22, v11);
  sub_29AFA1B80(v22);
  v12 = *(this + 140);
  memset(v20, 0, sizeof(v20));
  v21 = 1065353216;
  sub_29AFA55EC(this + 7720, 0, v20, v12);
  sub_29AFA1D18(v20);
  v13 = *(this + 140);
  memset(v18, 0, sizeof(v18));
  v19 = 1065353216;
  sub_29AFA5D80(this + 8352, 0, v18, v13);
  sub_29AFA1E08(v18);
  *(this + 2246) = 16843009;
  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::_instance);
  if (!v14)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::_CreateInstance();
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingAdapterKeyTokens);
  if (!v15)
  {
    v15 = sub_29AF4AD48(&pxrInternal__aapl__pxrReserved__::UsdImagingAdapterKeyTokens);
  }

  *(this + 8988) = pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry::HasAdapter(v14, (v15 + 1));
  *(this + 8989) = 257;
  *(this + 2248) = 0;
  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v16)
  {
    v16 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  *(this + 8996) = pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsSprimTypeSupported(a2, v16 + 20);
  *(this + 8997) = 0;
  return this;
}

void sub_29AF92A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AFA1E08(va);
  sub_29AFAA89C(v4 + v7);
  sub_29AFAA1C8(v4 + v6);
  sub_29AFA99F8(v4 + v5);
  sub_29AF92C70(v4 + 6208);
  sub_29AFA91F8(v4 + 5576);
  sub_29AFA8A1C(v4 + 4944);
  sub_29AFA8348(v4 + 4312);
  sub_29AFA7A38(v4 + 3680);
  sub_29AFA71F4(v4 + 3048);
  sub_29AFA2078((v4 + 1920));
  sub_29AFA69C4(v4 + 1288);
  sub_29AFA68F8(v4 + 1248);
  *(v8 - 96) = v4 + 1224;
  sub_29A1E234C((v8 - 96));
  v9 = *(v4 + 1216);
  if (v9)
  {
    if (atomic_fetch_add_explicit(v9 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v9 + 8))(v9);
    }
  }

  *(v8 - 96) = v4 + 1176;
  sub_29A1E234C((v8 - 96));
  sub_29ABEC7EC((v4 + 1144));
  sub_29A1DCEA8((v4 + 1128));
  sub_29A1DCEA8((v4 + 1108));
  sub_29A1DCEA8((v4 + 968));
  sub_29AFA20CC(v4 + 928);
  *(v8 - 96) = v4 + 904;
  sub_29A1E234C((v8 - 96));
  *(v8 - 96) = v4 + 880;
  sub_29A1E234C((v8 - 96));
  sub_29A1DCEA8((v4 + 872));
  sub_29A5AD4D8();
}

uint64_t sub_29AF92C70(uint64_t a1)
{
  std::mutex::~mutex((a1 + 184));
  sub_29A1E2AEC(a1 + 160, *(a1 + 168));
  sub_29AFA1EF8(a1 + 120);
  sub_29A58D230(a1 + 80);
  sub_29AFA1F78(a1 + 40);

  return sub_29AFA1FF8(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::~UsdImagingDelegate(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this)
{
  *this = &unk_2A20A7A48;
  pxrInternal__aapl__pxrReserved__::TfNotice::Revoke(this + 1208);
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::RemoveSubtree(*(this + 1), (this + 16), this);
  sub_29AFAB644(this + 256);
  sub_29AFAB6A0(this + 72);
  sub_29A1EF938(this + 112, *(this + 15));
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = this + 120;
  sub_29AFAB6FC(this + 32);
  sub_29AFAAF70(this + 8352);
  sub_29AFAA89C(this + 7720);
  sub_29AFAA1C8(this + 7088);
  sub_29AFA99F8(this + 6456);
  std::mutex::~mutex((this + 6392));
  sub_29A1E2AEC(this + 6368, *(this + 797));
  sub_29AFA1EF8(this + 6328);
  sub_29A58D230(this + 6288);
  sub_29AFA1F78(this + 6248);
  sub_29AFA1FF8(this + 6208);
  sub_29AFA91F8(this + 5576);
  sub_29AFA8A1C(this + 4944);
  sub_29AFA8348(this + 4312);
  sub_29AFA7A38(this + 3680);
  sub_29AFA71F4(this + 3048);
  sub_29AFA2078((this + 1920));
  sub_29AFA69C4(this + 1288);
  sub_29AFA68F8(this + 1248);
  v6 = (this + 1224);
  sub_29A1E234C(&v6);
  v2 = *(this + 152);
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  v6 = (this + 1176);
  sub_29A1E234C(&v6);
  v3 = *(this + 145);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 144);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 143);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 283);
  sub_29A1DE3A4(this + 282);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 278);
  sub_29A1DE3A4(this + 277);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 243);
  sub_29A1DE3A4(this + 242);
  sub_29AFA20CC(this + 928);
  v6 = (this + 904);
  sub_29A1E234C(&v6);
  v6 = (this + 880);
  sub_29A1E234C(&v6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 219);
  sub_29A1DE3A4(this + 218);
  sub_29A5AD4D8();
}

{
  pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::~UsdImagingDelegate(this);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_IsDrawModeApplied(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (*(this + 8997) == 1 && !sub_29AF91744(a2, a2))
  {
    IsKind = 1;
  }

  else if (sub_29A7557D8(a2, a2))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GetModelDrawMode(this, a2, &v13);
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v4)
    {
      v4 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v5 = v13;
    if ((*(v4 + 29) ^ v13) >= 8)
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v10, a2);
      v12 = 0;
      v10 = &unk_2A205FFB0;
      if (v11 && (*(v11 + 57) & 8) == 0 && off_2A205FFD0(&v10))
      {
        pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::GetModelApplyDrawModeAttr(&v10, v9);
        pxrInternal__aapl__pxrReserved__::UsdAttribute::HasAuthoredValue(v9);
      }

      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v9, a2);
      v9[3] = 0;
      v9[0] = &unk_2A205F668;
      v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::KindTokens);
      if (!v7)
      {
        v7 = sub_29A1D8548(&pxrInternal__aapl__pxrReserved__::KindTokens);
      }

      IsKind = pxrInternal__aapl__pxrReserved__::UsdModelAPI::IsKind(v9, (v7 + 8), 1);
      pxrInternal__aapl__pxrReserved__::UsdModelAPI::~UsdModelAPI(v9);
      pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::~UsdGeomModelAPI(&v10);
      v5 = v13;
    }

    else
    {
      IsKind = 0;
    }

    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    IsKind = 0;
  }

  return IsKind & 1;
}

void sub_29AF9320C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v15 = *(v14 - 40);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GetModelDrawMode(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2@<X1>, atomic_uint **a3@<X8>)
{
  v4 = this;
  if (*(this + 8997) == 1 && (sub_29AF91744(a2, a2) & 1) == 0)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v7)
    {
      v7 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v8 = *(v7 + 8);
    *a3 = v8;
    if ((v8 & 7) != 0)
    {
      v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
      {
        *a3 = v9;
      }
    }
  }

  else
  {
    v6 = &unk_2A1751000;
    if ((atomic_load_explicit(&qword_2A1751E08, memory_order_acquire) & 1) == 0)
    {
      v10 = __cxa_guard_acquire(&qword_2A1751E08);
      v6 = &unk_2A1751000;
      if (v10)
      {
        v11 = atomic_load(pxrInternal__aapl__pxrReserved__::USDIMAGING_ENABLE_DRAWMODE_CACHE);
        if (!v11)
        {
          pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
        }

        byte_2A1751E00 = *v11 == 1;
        __cxa_guard_release(&qword_2A1751E08);
        v6 = &unk_2A1751000;
      }
    }

    if (v6[3584] == 1)
    {

      sub_29AF933F8(v4 + 5576, a2);
    }

    sub_29AF9358C(a2, a3);
  }
}

void sub_29AF9356C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29AF9358C(pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X0>, atomic_uint **a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v4, a1);
  v4[3] = 0;
  v3 = 0;
  v4[0] = &unk_2A205FFB0;
  pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::ComputeModelDrawMode(v4, &v3, a2);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::~UsdGeomModelAPI(v4);
}

void sub_29AF93614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI::~UsdGeomModelAPI(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_AdapterLookup(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, pxrInternal__aapl__pxrReserved__ **a2, char a3)
{
  v15 = 0;
  if ((a3 & 1) == 0 && sub_29A656834(a2, a2))
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingAdapterKeyTokens);
    if (!v5)
    {
      v5 = sub_29AF4AD48(&pxrInternal__aapl__pxrReserved__::UsdImagingAdapterKeyTokens);
    }

    goto LABEL_19;
  }

  if (*(this + 8997) == 1 && (sub_29AF91744(a2, a2) & 1) == 0)
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingAdapterKeyTokens);
    if (!v6)
    {
LABEL_17:
      v6 = sub_29AF4AD48(&pxrInternal__aapl__pxrReserved__::UsdImagingAdapterKeyTokens);
    }

LABEL_18:
    v5 = v6 + 1;
    goto LABEL_19;
  }

  if (*(this + 8988) == 1 && *(this + 8987) == 1 && pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_IsDrawModeApplied(this, a2))
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingAdapterKeyTokens);
    if (!v6)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v7 = a2[1];
  if (!v7 || (*(v7 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(a2[1], a2);
  }

  v5 = (*(v7 + 3) + 48);
LABEL_19:
  sub_29A166F2C(&v15, v5);
  v8 = pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_AdapterLookup(this, &v15);
  v9 = v8;
  if (!*v8)
  {
    StaticTfType = pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI::_GetStaticTfType(v8);
    SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v11);
    if (pxrInternal__aapl__pxrReserved__::UsdPrim::_HasAPI(a2, SchemaInfo))
    {
      v13 = atomic_load(&qword_2A1751DF8);
      if (!v13)
      {
        v13 = sub_29AFAC5E0();
      }

      v9 = pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_AdapterLookup(this, (v13 + 8));
    }
  }

  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v9;
}

void sub_29AF937D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_AdapterLookup(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v4 = sub_29A160470(this + 4, a2);
  if (!v4)
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::_instance);
    if (!v5)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::_CreateInstance();
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry::ConstructAdapter(v5, a2, &v20);
    if (v20)
    {
      v16[0] = this;
      memset(&v16[1], 0, 32);
      memset(v17, 0, sizeof(v17));
      memset(v18, 0, sizeof(v18));
      memset(v19, 0, sizeof(v19));
      if ((*(*v20 + 512))())
      {
        pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::SetDelegate(v20, this);
      }

      else
      {
        v14[0] = "usdImaging/delegate.cpp";
        v14[1] = "_AdapterLookup";
        v14[2] = 263;
        v14[3] = "const UsdImagingPrimAdapterSharedPtr &pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_AdapterLookup(const TfToken &)";
        v15 = 0;
        v7 = *a2 & 0xFFFFFFFFFFFFFFF8;
        if (v7)
        {
          v8 = (v7 + 16);
          if (*(v7 + 39) < 0)
          {
            v8 = *v8;
          }
        }

        else
        {
          v8 = "";
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v14, "Selected hydra renderer doesn't support prim type '%s'", v6, v8);
        v9 = v21;
        v20 = 0;
        v21 = 0;
        if (v9)
        {
          sub_29A014BEC(v9);
        }
      }

      v14[0] = &v19[1] + 1;
      sub_29AFA229C(v14);
      v14[0] = v19;
      sub_29A1E234C(v14);
      v14[0] = &v18[1] + 1;
      sub_29A1E234C(v14);
      v14[0] = v18;
      sub_29AFA2378(v14);
      v14[0] = &v17[1] + 1;
      sub_29AFA2378(v14);
      v14[0] = v17;
      sub_29A1E234C(v14);
      v14[0] = &v16[2];
      sub_29A1E234C(v14);
    }

    v10 = *a2;
    if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v10 &= 0xFFFFFFFFFFFFFFF8;
    }

    v12 = v20;
    v11 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16[0] = v10;
    v16[1] = v12;
    v16[2] = v11;
    v4 = sub_29AFAC7A0(this + 32, v16, v16);
    if (v16[2])
    {
      sub_29A014BEC(v16[2]);
    }

    if ((v16[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v16[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v21)
    {
      sub_29A014BEC(v21);
    }
  }

  return v4 + 3;
}

void sub_29AF93A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29AF93AA0(va);
  v10 = *(v8 - 56);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  _Unwind_Resume(a1);
}

void **sub_29AF93AA0(void **a1)
{
  v3 = a1 + 20;
  sub_29AFA229C(&v3);
  v3 = a1 + 17;
  sub_29A1E234C(&v3);
  v3 = a1 + 14;
  sub_29A1E234C(&v3);
  v3 = a1 + 11;
  sub_29AFA2378(&v3);
  v3 = a1 + 8;
  sub_29AFA2378(&v3);
  v3 = a1 + 5;
  sub_29A1E234C(&v3);
  v3 = a1 + 2;
  sub_29A1E234C(&v3);
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GetHdPrimInfo(uint64_t a1, unsigned int *a2)
{
  v2 = sub_29A2F4F50((a1 + 72), a2);
  if (v2)
  {
    return v2 + 3;
  }

  else
  {
    return 0;
  }
}

__n128 pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GetDisplayPredicate@<Q0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, __n128 *a2@<X8>)
{
  if (*(this + 8997) == 1)
  {
    sub_29B2AFCB4();
  }

  UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(this);
  result = *UsdPrimDefaultPredicate;
  *a2 = *UsdPrimDefaultPredicate;
  a2[1].n128_u64[0] = UsdPrimDefaultPredicate[1].n128_u64[0];
  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GetDisplayPredicateForPrototypes(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this)
{
  if (*(this + 8997) == 1)
  {
    sub_29B2AFCB4();
  }

  sub_29B2AFCB4();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SyncAll(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, int a2)
{
  memset(v24, 0, 24);
  v24[3] = this;
  v22 = *(this + 11);
  v23 = 0;
  while (v22 != v23)
  {
    v3 = *sub_29AF93F64(&v22);
    v4 = sub_29AF93F64(&v22);
    v5 = *v4;
    v6 = *(*v4 + 76);
    if (a2)
    {
      *(v5 + 76) = v6 | 0xFFFFFFFD;
    }

    else if (!v6)
    {
      goto LABEL_18;
    }

    v7 = *(v5 + 24);
    v8 = *(v5 + 32);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v7 || (__p[0] = "usdImaging/delegate.cpp", __p[1] = "SyncAll", v19 = 422, v20 = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SyncAll(BOOL)", v21 = 0, v14 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v3 + 16)), v17 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s\n", v15, v16, v14), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(__p, "adapter", v17) & 1) != 0))
    {
      if (sub_29AF49C14(11))
      {
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v3 + 16));
        v10 = *(v5 + 76);
        pxrInternal__aapl__pxrReserved__::HdChangeTracker::StringifyDirtyBits(v10, __p);
        if (v19 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Sync] PREP: <%s> dirtyFlags: 0x%x [%s]\n", v11, v12, Text, v10, v13);
        if (SHIBYTE(v19) < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_29A1E28B4(v24, (v3 + 16));
    }

    if (v8)
    {
      sub_29A014BEC(v8);
    }

LABEL_18:
    sub_29AF93F9C(&v22);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_ExecuteWorkForTimeUpdate(v24);
  __p[0] = v24;
  sub_29A1E234C(__p);
}

void sub_29AF93F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (v22)
  {
    sub_29A014BEC(v22);
  }

  __p = &a22;
  sub_29A1E234C(&__p);
  _Unwind_Resume(a1);
}

void *sub_29AF93F64(void *result)
{
  if (*result == result[1])
  {
    sub_29B2CCE70();
  }

  return result;
}

uint64_t sub_29AF93F9C(uint64_t a1)
{
  if (*a1 == *(a1 + 8))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_HdPrimInfo, pxrInternal__aapl__pxrReserved__::SdfPath::Hash>>::operator++() [T = pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_HdPrimInfo, pxrInternal__aapl__pxrReserved__::SdfPath::Hash>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 = **a1;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_ExecuteWorkForTimeUpdate(void *a1)
{
  sub_29A0ECEEC(&v4, "usdImaging", "static void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_ExecuteWorkForTimeUpdate(_Worker *)");
  *(a1[3] + 296) = 1;
  v2 = (a1[1] - *a1) >> 3;
  v3[0] = sub_29AF96E04;
  v3[1] = 0;
  v3[2] = a1;
  sub_29AFAE758(v2, v3, 1);
  *(a1[3] + 296) = 0;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v5, v4);
  }
}

void sub_29AF940B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::Sync(void *a1)
{
  if (a1[30])
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = a1;
    if (sub_29AF49C14(11) && (v2 = a1[29]) != 0)
    {
      do
      {
        v3 = sub_29A2F4F50(a1 + 9, v2 + 4);
        if (v3 && sub_29AF49C14(11))
        {
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v2 + 4));
          v5 = *(v3 + 19);
          pxrInternal__aapl__pxrReserved__::HdChangeTracker::StringifyDirtyBits(v5, __p);
          v8 = v14 >= 0 ? __p : __p[0];
          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Sync] PREP: <%s> dirtyFlags: 0x%x [%s]\n", v6, v7, Text, v5, v8);
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v2 = *v2;
      }

      while (v2);
      v9 = v16;
    }

    else
    {
      v9 = 0;
    }

    v10 = a1[29];
    if (v10)
    {
      v11 = 0;
      v12 = a1[29];
      do
      {
        ++v11;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v11 = 0;
    }

    sub_29AFAC9F8(&v15, v9, v10, 0, v11);
    sub_29ACC9560((a1 + 27));
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_ExecuteWorkForTimeUpdate(&v15);
    __p[0] = &v15;
    sub_29A1E234C(__p);
  }
}

void sub_29AF94200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  __p = &a18;
  sub_29A1E234C(&__p);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::Populate(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  memset(v3, 0, sizeof(v3));
  memset(v2, 0, sizeof(v2));
  pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::Populate(this, a2);
  v4 = v2;
  sub_29A1E234C(&v4);
  v2[0] = v3;
  sub_29A1E234C(v2);
}

void sub_29AF942A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 40) = v13;
  sub_29A1E234C((v14 - 40));
  a10 = &a13;
  sub_29A1E234C(&a10);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::Populate(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  result = pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_CanPopulate(a1, a2);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_SetStateForPopulation(a1, a2);
    memset(v18, 0, 24);
    v18[3] = a1;
    v5 = a1;
    v6 = v18;
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2);
  }

  return result;
}

void sub_29AF94428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_29A1DCEA8((v9 - 56));
  sub_29AF93AA0(&a9);
  a9 = (v9 - 88);
  sub_29A1E234C(&a9);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_CanPopulate(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!*(this + 108) || (sub_29B2CCEBC(v4) & 1) != 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2);
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_SetStateForPopulation(uint64_t result, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  if (!*(result + 864))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(this, this, v2);
    if (v2[1])
    {
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
    }

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef();
  }

  return result;
}

void sub_29AF9469C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    sub_29B28D068(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_Populate(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a2)
{
  v31 = *MEMORY[0x29EDCA608];
  result = sub_29A0ECEEC(&v27, "usdImaging", "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_Populate(UsdImagingIndexProxy *)");
  if (*(a2 + 2) != *(a2 + 3))
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry>::_instance))
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry>::_CreateInstance();
    }

    memset(v25, 0, sizeof(v25));
    v26 = 1065353216;
    v8 = *(this + 111);
    v29 = *(this + 110);
    v30 = v8;
    while (v29 != v30)
    {
      v9 = sub_29A1E25CC(&v29, v5, v6);
      sub_29A43A86C(v25, v9, v9);
      sub_29A1E264C(&v29);
    }

    if (sub_29AF49C14(2))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetString((this + 872));
      v10 = sub_29A5A70E0(this + 108);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(v10, v24);
      sub_29A1DA6E4(v24);
    }

    v16 = *(this + 1);
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::SceneIndexEmulationNoticeBatchBegin(v16);
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(&v29);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    sub_29AF9673C(&v21, (*(a2 + 3) - *(a2 + 2)) >> 3);
    memset(v20, 0, sizeof(v20));
    v11 = a2;
    v12 = *(a2 + 2);
    v15 = v11;
    if (v12 != *(v11 + 3))
    {
      sub_29AF96818(this, v12);
    }

    v18 = v21;
    v19 = v22;
    while (v18 != v19)
    {
      v13 = *(*sub_29AF96AE8(&v18) + 32);
      v14 = sub_29AF96AE8(&v18);
      (*(*v13 + 64))(&v17, v13, *v14, v15, 0);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17 + 1);
      sub_29A1DE3A4(&v17);
      sub_29AF96B20(&v18);
    }

    pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait(&v29);
    v18 = v20;
    sub_29A65E064(&v18);
    v18 = &v21;
    sub_29AFAD26C(&v18);
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(&v29);
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::SceneIndexEmulationNoticeBatchEnd(v16);
    result = sub_29A43A24C(v25);
  }

  if (v27)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v28, v27);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_ExecuteWorkForVariabilityUpdate(void *a1)
{
  if (sub_29AF49C14(2))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Repopulate] %zu variability tasks in worker\n", v2, v3, (a1[1] - *a1) >> 3);
  }

  v4 = a1[3];
  v5 = a1[1] - *a1;
  if (v5)
  {
    *(v4 + 1200) = 0;
  }

  *(v4 + 296) = 1;
  v6[0] = sub_29AF96BA0;
  v6[1] = 0;
  v6[2] = a1;
  sub_29AFAE758((v5 >> 3), v6, 1);
  *(a1[3] + 296) = 0;
}

void sub_29AF96138(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(this))
  {
    if (*this != *(a1 + 568))
    {
      sub_29AFA6A1C(a1);
      atomic_store(1u, (a1 + 576));
      sub_29A2258F0((a1 + 568), this);

      sub_29A225948((a1 + 572), this + 1);
    }
  }

  else
  {
    v6[0] = "usdImaging/resolvedAttributeCache.h";
    v6[1] = "SetRootPath";
    v6[2] = 152;
    v6[3] = "void pxrInternal__aapl__pxrReserved__::UsdImaging_ResolvedAttributeCache<pxrInternal__aapl__pxrReserved__::UsdImaging_XfStrategy>::SetRootPath(const SdfPath &) [Strategy = pxrInternal__aapl__pxrReserved__::UsdImaging_XfStrategy, ImplData = BOOL]";
    v7 = 0;
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(this);
    if (*(String + 23) >= 0)
    {
      v5 = String;
    }

    else
    {
      v5 = *String;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 1, "Invalid root path: %s", v5);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_OnUsdObjectsChanged(void *a1, pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged *a2, uint64_t a3)
{
  result = sub_29B2ACEC8(a3);
  if (v7 & 1 | result)
  {
    if (sub_29B2A21F4(a3, a1 + 108) || (result = sub_29B2CCFE4(v45), (result & 1) != 0))
    {
      if (sub_29AF49C14(2))
      {
        pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->();
      }

      ResyncedPaths = pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::GetResyncedPaths(a2);
      v8 = ResyncedPaths + 1;
      v9 = *ResyncedPaths;
      if (*ResyncedPaths != ResyncedPaths + 1)
      {
        do
        {
          if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPropertyPath((v9 + 4)) && pxrInternal__aapl__pxrReserved__::_HasConnectionChanged((v9 + 4), &ResyncedPaths))
          {
            pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath((v9 + 4), &v40);
            v10 = a1[154];
            if (v10 >= a1[155])
            {
              v11 = sub_29A378160((a1 + 153), &v40);
            }

            else
            {
              sub_29A1DDD84(a1[154], &v40);
              sub_29A1DDDC0((v10 + 4), &v40 + 1);
              v11 = v10 + 8;
            }

            a1[154] = v11;
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v40 + 1);
            sub_29A1DE3A4(&v40);
          }

          else
          {
            v12 = a1[154];
            if (v12 >= a1[155])
            {
              std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>();
            }

            sub_29A1E21F4(a1[154], v9 + 8);
            sub_29A1E2240((v12 + 4), v9 + 9);
            a1[154] = v12 + 8;
          }

          v13 = v9[1];
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
              v14 = v9[2];
              v15 = *v14 == v9;
              v9 = v14;
            }

            while (!v15);
          }

          v9 = v14;
        }

        while (v14 != v8);
      }

      ResolvedAssetPathsResyncedPaths = pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::GetResolvedAssetPathsResyncedPaths(a2);
      v17 = ResolvedAssetPathsResyncedPaths + 1;
      v18 = *ResolvedAssetPathsResyncedPaths;
      if (*ResolvedAssetPathsResyncedPaths != ResolvedAssetPathsResyncedPaths + 1)
      {
        v19 = a1[154];
        do
        {
          if (v19 >= a1[155])
          {
            std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>();
          }

          sub_29A1E21F4(v19, v18 + 8);
          sub_29A1E2240(v19 + 1, v18 + 9);
          v19 += 2;
          a1[154] = v19;
          v20 = v18[1];
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
              v21 = v18[2];
              v15 = *v21 == v18;
              v18 = v21;
            }

            while (!v15);
          }

          v18 = v21;
        }

        while (v21 != v17);
      }

      ChangedInfoOnlyPaths = pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::GetChangedInfoOnlyPaths(a2);
      v22 = ChangedInfoOnlyPaths + 1;
      v23 = *ChangedInfoOnlyPaths;
      if (*ChangedInfoOnlyPaths != ChangedInfoOnlyPaths + 1)
      {
        do
        {
          if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath((v23 + 4)))
          {
            pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::GetChangedFields(a2, &v40);
            if (v40 != i)
            {
              v46 = v23 + 4;
              v24 = sub_29AFAF480((a1 + 156), v23 + 8, &unk_29B4D6118, &v46);
              sub_29A372808(v24 + 3, v24[4], v40, i, i - v40);
            }

            v47 = &v40;
            sub_29A124AB0(&v47);
          }

          else if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath((v23 + 4)))
          {
            v40 = 0;
            i = 0;
            v42 = 0;
            sub_29AFAF724((a1 + 156), v23 + 8, v23 + 8, &v40);
            v47 = &v40;
            sub_29A124AB0(&v47);
            if (pxrInternal__aapl__pxrReserved__::_HasConnectionChanged((v23 + 4), &ChangedInfoOnlyPaths))
            {
              pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath((v23 + 4), &v40);
              v25 = a1[154];
              if (v25 >= a1[155])
              {
                v26 = sub_29A378160((a1 + 153), &v40);
              }

              else
              {
                sub_29A1DDD84(a1[154], &v40);
                sub_29A1DDDC0((v25 + 4), &v40 + 1);
                v26 = v25 + 8;
              }

              a1[154] = v26;
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v40 + 1);
              sub_29A1DE3A4(&v40);
            }
          }

          v27 = v23[1];
          if (v27)
          {
            do
            {
              v28 = v27;
              v27 = *v27;
            }

            while (v27);
          }

          else
          {
            do
            {
              v28 = v23[2];
              v15 = *v28 == v23;
              v23 = v28;
            }

            while (!v15);
          }

          v23 = v28;
        }

        while (v28 != v22);
      }

      result = sub_29AF49C14(2);
      if (result)
      {
        v40 = *ResyncedPaths;
        for (i = ResyncedPaths + 1; v40 != i; result = sub_29AF99AC0(&v40))
        {
          if (sub_29AF49C14(2))
          {
            v31 = sub_29AF99A88(&v40);
            Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((*v31 + 32));
            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - Resync queued: %s\n", v33, v34, Text);
          }
        }

        v40 = *ChangedInfoOnlyPaths;
        for (i = ChangedInfoOnlyPaths + 1; v40 != i; result = sub_29AF99AC0(&v40))
        {
          v35 = sub_29AF99B68(&v40, v29, v30);
          if (sub_29A2F4F50(a1 + 156, v35))
          {
            if (sub_29AF49C14(2))
            {
              v36 = sub_29AF99A88(&v40);
              v37 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((*v36 + 32));
              pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - Refresh queued: %s\n", v38, v39, v37);
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_29AF966E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29AF9673C(pxrInternal__aapl__pxrReserved__ *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(result + 2) - *result) >> 4) < a2)
  {
    if (a2 >= 0x555555555555556)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = *(result + 1) - *result;
    v16 = result;
    v4 = sub_29A08E058(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[48 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = v2[1];
    v9 = &v4[v3 + *v2 - v8];
    sub_29AFAD370(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29AFAD518(&v12);
  }

  return result;
}

void sub_29AF96804(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AFAD518(va);
  _Unwind_Resume(a1);
}

void sub_29AF96818(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v3 = sub_29A5A70E0((a1 + 864));
  pxrInternal__aapl__pxrReserved__::SdfPath::GetAbsoluteRootOrPrimPath(a2, &v4);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(v3, &v4, &v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v4 + 1);
  sub_29A1DE3A4(&v4);
  pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v5);
}

void sub_29AF9699C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A57F434(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF969DC(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29AFAE62C(a1, a2);
  }

  else
  {
    result = sub_29AFAD420(v3, a2) + 48;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29AF96A24(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

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

uint64_t sub_29AF96A8C(uint64_t a1)
{
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

void *sub_29AF96AE8(void *result)
{
  if (*result == result[1])
  {
    sub_29B2CD02C();
  }

  return result;
}

void *sub_29AF96B20(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim, std::shared_ptr<pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter>>>>::operator++() [T = std::vector<std::pair<pxrInternal__aapl__pxrReserved__::UsdPrim, std::shared_ptr<pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter>>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 48;
  }

  return a1;
}

void sub_29AF96BA0(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3 - a2;
  if (a3 > a2)
  {
    v5 = 8 * a2;
    do
    {
      v22 = a1[3];
      memset(v23, 0, sizeof(v23));
      memset(v24, 0, sizeof(v24));
      memset(v25, 0, sizeof(v25));
      memset(v26, 0, sizeof(v26));
      v6 = *a1;
      v7 = sub_29A2F4F50((v22 + 72), (*a1 + v5));
      if (v7)
      {
        v8 = v7 + 3;
      }

      else
      {
        v8 = 0;
      }

      if (v7 || (v17 = "usdImaging/delegate.cpp", v18 = "UpdateVariability", v19 = 353, v20 = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_Worker::UpdateVariability(size_t, size_t)", v21 = 0, v9 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v6 + v5)), v12 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s\n", v10, v11, v9), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v17, "primInfo", v12) & 1) != 0))
      {
        if (*v8 || (v17 = "usdImaging/delegate.cpp", v18 = "UpdateVariability", v19 = 355, v20 = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_Worker::UpdateVariability(size_t, size_t)", v21 = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v6 + v5)), v16 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s\n", v14, v15, Text), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v17, "adapter", v16) & 1) != 0))
        {
          (*(**v8 + 104))(*v8, v8 + 2, v6 + v5, v8 + 6, 0);
        }
      }

      v17 = &v26[1] + 1;
      sub_29AFA229C(&v17);
      v17 = v26;
      sub_29A1E234C(&v17);
      v17 = &v25[1] + 1;
      sub_29A1E234C(&v17);
      v17 = v25;
      sub_29AFA2378(&v17);
      v17 = &v24[1] + 1;
      sub_29AFA2378(&v17);
      v17 = v24;
      sub_29A1E234C(&v17);
      v17 = &v23[8];
      sub_29A1E234C(&v17);
      v5 += 8;
      --v3;
    }

    while (v3);
  }
}

void sub_29AF96DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29AF93AA0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF96E04(uint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = a3 - a2;
  if (a3 > a2)
  {
    v4 = result;
    v5 = 8 * a2;
    do
    {
      v6 = v4[3];
      v7 = *v4;
      result = sub_29A2F4F50((v6 + 72), (*v4 + v5));
      if (result)
      {
        v8 = (result + 24);
      }

      else
      {
        v8 = 0;
      }

      if (result)
      {
        if (*(result + 24) || (v13[0] = "usdImaging/delegate.cpp", v13[1] = "UpdateForTime", v13[2] = 379, v13[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_Worker::UpdateForTime(size_t, size_t)", v14 = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v7 + v5)), v12 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s\n", v10, v11, Text), result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v13, "adapter", v12), (result & 1) != 0))
        {
          result = (*(**v8 + 112))(*v8, v8 + 4, v7 + v5, v8[13], 0, *(v6 + 1120));
          v8[13] = 0;
        }
      }

      v5 += 8;
      --v3;
    }

    while (v3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetTime(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *a1, double a2)
{
  *&v3[2] = a2;
  sub_29A0ECEEC(v3, "usdImaging", "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetTime(UsdTimeCode)");
  pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::ApplyPendingUpdates(a1);
  pxrInternal__aapl__pxrReserved__::operator==();
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::ApplyPendingUpdates(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this)
{
  v82[9] = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v77, "usdImaging", "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::ApplyPendingUpdates()");
  if (*(this + 153) != *(this + 154) || *(this + 159))
  {
    if (sub_29AF49C14(11))
    {
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Update] Update for scene edits\n", v2, v3);
    }

    sub_29AFA6A1C(this + 644);
    atomic_store(1u, this + 466);
    pxrInternal__aapl__pxrReserved__::UsdImaging_MaterialBindingImplData::ClearCaches((this + 1920));
    sub_29AFA724C(this + 1524);
    atomic_store(1u, this + 906);
    sub_29AFA83A0(this + 2156);
    atomic_store(1u, this + 1222);
    sub_29AFA8A74(this + 2472);
    atomic_store(1u, this + 1380);
    sub_29AFA9250(this + 2788);
    atomic_store(1u, this + 1538);
    sub_29AFA7A90(this + 1840);
    atomic_store(1u, this + 1064);
    sub_29AFA9A50(this + 3228);
    atomic_store(1u, this + 1758);
    sub_29AFAA220(this + 3544);
    atomic_store(1u, this + 1916);
    sub_29AFAA8F4(this + 3860);
    atomic_store(1u, this + 2074);
    sub_29AFAAFC8(this + 4176);
    atomic_store(1u, this + 2232);
    memset(v76, 0, 24);
    v76[3] = this;
    v70[0] = this;
    v70[1] = v76;
    memset(v71, 0, sizeof(v71));
    memset(v72, 0, sizeof(v72));
    memset(v73, 0, sizeof(v73));
    v74 = 0u;
    v75 = 0;
    v69[0] = 0;
    v69[1] = 0;
    v68 = v69;
    v6 = *(this + 153);
    v7 = *(this + 154);
    if (v6 != v7)
    {
      v57 = 0;
      v58 = 0uLL;
      sub_29A2FCAE8(&v57, (v7 - v6) >> 3);
      v8 = *(this + 153);
      v9 = *(this + 154);
      v10 = 126 - 2 * __clz((v9 - v8) >> 3);
      if (v9 == v8)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      sub_29A24ED30(v8, v9, &v65, v11, 1);
      v12 = *(this + 153);
      v13 = *(this + 154);
      if (v12 != v13)
      {
        sub_29A1E28B4(&v57, *(this + 153));
        for (i = (v12 + 8); i != v13; i = (i + 8))
        {
          if (!pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(i, v12))
          {
            sub_29A1E28B4(&v57, i);
            v12 = i;
          }
        }
      }

      v15 = *(this + 154);
      v16 = *(this + 153);
      while (v15 != v16)
      {
        v15 -= 2;
        sub_29A1E230C(this + 1224, v15);
      }

      *(this + 154) = v16;
      v65 = 0u;
      v66 = 0u;
      v67 = 1065353216;
      pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(&v80);
      v17 = v57;
      for (j = v58; v17 != j; v17 = (v17 + 8))
      {
        if (sub_29AF49C14(2))
        {
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v17);
          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[usdPathsToResync] Updating cache map for %s\n", v20, v21, Text);
        }

        v63 = 0uLL;
        v64 = 0;
        sub_29A1E21F4(&v53, v17);
        sub_29A1E2240(&v53 + 1, v17 + 1);
        v54 = v63;
        v55 = v64;
        v64 = 0;
        v63 = 0uLL;
        sub_29A4B4590(&v60, &v53);
        v22 = sub_29AFAEFA4(&v65, &v60, &v60);
        v24 = v23;
        v79 = &v60 + 1;
        sub_29A1E234C(&v79);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v60 + 1);
        sub_29A1DE3A4(&v60);
        v79 = &v54;
        sub_29A1E234C(&v79);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v53 + 1);
        sub_29A1DE3A4(&v53);
        v79 = &v63;
        sub_29A1E234C(&v79);
        if (v24)
        {
          *&v60 = 0;
          *(&v60 + 1) = v81;
          v25 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v60, 0x28uLL);
          *(v25 - 11) = 1;
          *v25 = &unk_2A20A8018;
          v25[1] = this;
          v25[2] = v17;
          v25[3] = v22 + 3;
          v25[4] = v82;
          (***(v25 - 5))();
        }
      }

      pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait(&v80);
      v27 = v57;
      for (k = v58; v27 != k; v27 = (v27 + 8))
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(v27))
        {
          v60 = 0uLL;
          *&v61 = 0;
          pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_RefreshUsdObject(this, v27, &v60, &v65, v70);
          v53 = &v60;
          sub_29A124AB0(&v53);
        }

        else if (pxrInternal__aapl__pxrReserved__::SdfPath::IsTargetPath(v27))
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v27, &v63);
          v60 = 0uLL;
          *&v61 = 0;
          pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_RefreshUsdObject(this, &v63, &v60, &v65, v70);
          v53 = &v60;
          sub_29A124AB0(&v53);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v63 + 1);
          sub_29A1DE3A4(&v63);
        }

        else if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath(v27))
        {
          pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_ResyncUsdPrim(this, v27, &v65, v70, 0);
        }

        else
        {
          *&v60 = "usdImaging/delegate.cpp";
          *(&v60 + 1) = "ApplyPendingUpdates";
          *&v61 = 1085;
          *(&v61 + 1) = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::ApplyPendingUpdates()";
          LOBYTE(v62) = 0;
          v28 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v27);
          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v60, "Unexpected path type to resync: <%s>", v29, v28);
        }
      }

      pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(&v80);
      sub_29AD2C48C(&v65);
      v80 = &v57;
      sub_29A1E234C(&v80);
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::_ProcessRemovals(v70, v4, v5);
    if (*(this + 159))
    {
      v65 = 0u;
      v66 = 0u;
      v67 = 1065353216;
      sub_29A1C04D0(&v65, this + 1248);
      pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(&v80);
      v60 = 0u;
      v61 = 0u;
      v62 = 1065353216;
      for (m = v66; m; m = *m)
      {
        if (sub_29AF49C14(2))
        {
          v31 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((m + 2));
          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[usdPathsToUpdate] Updating cache map for %s\n", v32, v33, v31);
        }

        v63 = 0uLL;
        v64 = 0;
        sub_29A1E21F4(&v57, m + 4);
        sub_29A1E2240(&v57 + 1, m + 5);
        v58 = v63;
        v59 = v64;
        v64 = 0;
        v63 = 0uLL;
        sub_29A4B4590(&v53, &v57);
        v34 = sub_29AFAEFA4(&v60, &v53, &v53);
        v36 = v35;
        v79 = &v54;
        sub_29A1E234C(&v79);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v53 + 1);
        sub_29A1DE3A4(&v53);
        v79 = &v58;
        sub_29A1E234C(&v79);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v57 + 1);
        sub_29A1DE3A4(&v57);
        v79 = &v63;
        sub_29A1E234C(&v79);
        if (v36)
        {
          v53 = 0;
          *&v54 = v81;
          v37 = tbb::internal::allocate_additional_child_of_proxy::allocate(&v53, 0x28uLL);
          *(v37 - 11) = 1;
          *v37 = &unk_2A20A8060;
          v37[1] = this;
          v37[2] = m + 2;
          v37[3] = v34 + 3;
          v37[4] = v82;
          (***(v37 - 5))();
        }
      }

      pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait(&v80);
      v57 = v66;
      *&v58 = 0;
      while (v57 != v58)
      {
        v38 = *sub_29AF9995C(&v57);
        v39 = *sub_29AF9995C(&v57);
        if ((pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath((v38 + 16)) & 1) != 0 || pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath((v38 + 16)))
        {
          if (pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_RefreshUsdObject(this, (v38 + 16), v39 + 24, &v60, v70))
          {
            pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::_ProcessRemovals(v70, v40, v41);
            sub_29AFAF424(&v60);
          }
        }

        else
        {
          v53 = "usdImaging/delegate.cpp";
          *&v54 = "ApplyPendingUpdates";
          *(&v54 + 1) = 1145;
          v55 = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::ApplyPendingUpdates()";
          v56 = 0;
          v42 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v38 + 16));
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v53, 3, "Unexpected path type to update: <%s>", v42);
        }

        sub_29AF99994(&v57);
      }

      sub_29AD2C48C(&v60);
      pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(&v80);
      sub_29AFA68F8(&v65);
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::_UniqueifyPathsToRepopulate(v70);
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_Populate(this, v70);
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_ExecuteWorkForVariabilityUpdate(v76);
    DirtyPaths = pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::GetDirtyPaths((this + 6208));
    if (DirtyPaths[2])
    {
      v44 = (DirtyPaths + 1);
      v45 = *DirtyPaths;
      if (*DirtyPaths != (DirtyPaths + 1))
      {
        do
        {
          if (sub_29AF49C14(2))
          {
            v46 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v45 + 7));
            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Update]: invalidate collection member prim %s\n", v47, v48, v46);
          }

          v49 = sub_29A2F4F50(this + 9, v45 + 7);
          if (v49)
          {
            pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((v49 + 5));
          }

          v50 = *(v45 + 1);
          if (v50)
          {
            do
            {
              v51 = v50;
              v50 = *v50;
            }

            while (v50);
          }

          else
          {
            do
            {
              v51 = *(v45 + 2);
              v52 = *v51 == v45;
              v45 = v51;
            }

            while (!v52);
          }

          v45 = v51;
        }

        while (v51 != v44);
      }

      pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::ClearDirtyPaths((this + 6208));
    }

    sub_29A1E2AEC(&v68, v69[0]);
    v80 = &v74;
    sub_29AFA229C(&v80);
    v80 = &v73[1] + 1;
    sub_29A1E234C(&v80);
    v80 = v73;
    sub_29A1E234C(&v80);
    v80 = &v72[1] + 1;
    sub_29AFA2378(&v80);
    v80 = v72;
    sub_29AFA2378(&v80);
    v80 = &v71[1] + 1;
    sub_29A1E234C(&v80);
    v80 = v71;
    sub_29A1E234C(&v80);
    v80 = v76;
    sub_29A1E234C(&v80);
  }

  if (v77)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v78, v77);
  }
}

void sub_29AF97C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, void *a35, uint64_t a36, char *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_29A1E2AEC(&a34, a35);
  sub_29AF93AA0(&a37);
  a37 = &a60;
  sub_29A1E234C(&a37);
  sub_29A0E9CEC(&a64);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF97E28(uint64_t result, double a2)
{
  if (a2 != *(result + 560))
  {
    atomic_fetch_add((result + 576), 2u);
    *(result + 560) = a2;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetTimes(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate ***a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 - *a1 == *(a2 + 8) - *a2)
  {
    if (v2 != v3)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetTime(*v2, **a2);
    }
  }

  else
  {
    v4[0] = "usdImaging/delegate.cpp";
    v4[1] = "SetTimes";
    v4[2] = 897;
    v4[3] = "static void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetTimes(const std::vector<UsdImagingDelegate *> &, const std::vector<UsdTimeCode> &)";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Mismatched parameters");
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GatherDependencies(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (*(result + 120))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
    }
  }

  return result;
}

void sub_29AF981C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a9;
  sub_29A1E234C(&a14);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GatherDependencies(uint64_t a1, unsigned int *a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    v7 = sub_29A328A44(a3, a2);
    v8 = sub_29AF49C14(2);
    if (v7)
    {
      if (v8)
      {
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[_GatherDependencies] Found entry in flattened cache for %s with %lu paths\n", v10, v11, Text, (v7[4] - v7[3]) >> 3);
      }

      if (v7 + 3 != a4)
      {
        v12 = v7[3];
        v13 = v7[4];

        sub_29A324D54(a4, v12, v13, (v13 - v12) >> 3);
      }
    }

    else
    {
      if (v8)
      {
        v14 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[_GatherDependencies] No entry in flattened cache for %s\n ", v15, v16, v14);
      }

      pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GatherDependencies(a1, a2, a4);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_RefreshUsdObject(uint64_t *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, void *a4, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a5)
{
  v45 = a4;
  sub_29A0ECEEC(&v60, "usdImaging", "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_RefreshUsdObject(const SdfPath &, const TfTokenVector &, const _FlattenedDependenciesCacheMap &, UsdImagingIndexProxy *, SdfPathSet *)");
  if (sub_29AF49C14(2))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    sub_29A99AE50(a3);
    v10 = v51 >= 0 ? &__p : __p;
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Refresh Object]: %s %s\n", v8, v9, Text, v10, v45);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(__p);
    }
  }

  v57 = 0;
  v58 = 0;
  v59 = 0;
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootOrPrimPath(a2))
  {
    v11 = sub_29AFAF990((a1 + 14));
    v13 = v12;
    if (v11 != v12)
    {
      do
      {
        sub_29A1E21F4(&__p, (v11 + 36));
        sub_29A1E2240(&__p + 1, (v11 + 40));
        if (sub_29A2F4F50(a1 + 9, &__p))
        {
          sub_29A1E28B4(&v57, &__p);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&__p + 1);
        sub_29A1DE3A4(&__p);
        v14 = *(v11 + 8);
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
            v15 = *(v11 + 16);
            v16 = *v15 == v11;
            v11 = v15;
          }

          while (!v16);
        }

        v11 = v15;
      }

      while (v15 != v13);
    }

    goto LABEL_32;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath(a2))
  {
LABEL_32:
    v23 = 0;
    goto LABEL_33;
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(a2, &v55);
  NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(a2);
  v18 = sub_29A5A70E0(a1 + 108);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(v18, &v55, &__p);
  v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v20)
  {
    v20 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v20 + 79) ^ *NameToken) < 8)
  {
    goto LABEL_26;
  }

  v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v21)
  {
    v21 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v21 + 71) ^ *NameToken) < 8 || pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::CanContainPropertyName(NameToken, v19))
  {
    goto LABEL_26;
  }

  v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v32)
  {
    v32 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v32 + 158) ^ *NameToken) < 8)
  {
    goto LABEL_53;
  }

  v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v33)
  {
    v33 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v33 + 114) ^ *NameToken) < 8)
  {
    goto LABEL_53;
  }

  v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v34)
  {
    v34 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v34 + 83) ^ *NameToken) < 8 || pxrInternal__aapl__pxrReserved__::UsdGeomXformable::IsTransformationAffectedByAttrNamed(NameToken, v22) || pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::CanContainPropertyName(NameToken, v35))
  {
LABEL_53:
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GatherDependencies(a1, &v55, v45, &v57);
LABEL_54:
    v23 = 0;
    goto LABEL_27;
  }

  if (pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::CanContainPropertyName(NameToken, v36))
  {
    if (sub_29AF49C14(2))
    {
      v38 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Refresh Object]: Collection property <%s> modified; conservatively invalidating all prims to ensure that we discover material binding changes.\n", v39, v40, v38);
    }

    v53 = a1[11];
    v54 = 0;
    while (v53 != v54)
    {
      v41 = sub_29AF93F64(&v53);
      sub_29A1E28B4(&v57, (*v41 + 16));
      sub_29AF93F9C(&v53);
    }

    goto LABEL_54;
  }

  if (!pxrInternal__aapl__pxrReserved__::UsdShadeCoordSysAPI::CanContainPropertyName(NameToken, v37))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p);
  }

  if (sub_29AF49C14(2))
  {
    v42 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Refresh Object]: HdCoordSys bindings affected for %s\n", v43, v44, v42);
  }

LABEL_26:
  v23 = 1;
  pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_ResyncUsdPrim(a1, &v55, v45, a5, 1);
LABEL_27:
  if ((v52 & 7) != 0)
  {
    atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v51);
  sub_29A1DE3A4(&v50);
  if (v49)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v49, v24);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v56);
  sub_29A1DE3A4(&v55);
LABEL_33:
  v26 = v57;
  for (i = v58; v26 != i; v26 += 2)
  {
    v27 = sub_29A2F4F50(a1 + 9, v26);
    if (sub_29AF49C14(2))
    {
      v28 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v26);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("  - affected prim: <%s>\n", v29, v30, v28);
    }

    if (v27)
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((v27 + 5));
    }
  }

  __p = &v57;
  sub_29A1E234C(&__p);
  if (v60)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v61, v60);
  }

  return v23 & 1;
}

void sub_29AF98BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, __int16 *a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, __int16 a29, char a30, char a31)
{
  sub_29A57F434(&__p);
  sub_29A1DCEA8(&a27);
  a23 = &a29;
  sub_29A1E234C(&a23);
  sub_29A0E9CEC(v31 - 104);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_ResyncUsdPrim(uint64_t *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, void *a3, pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy *a4, int a5)
{
  sub_29A0ECEEC(&v68, "usdImaging", "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_ResyncUsdPrim(const SdfPath &, const _FlattenedDependenciesCacheMap &, UsdImagingIndexProxy *, BOOL)");
  v49 = a3;
  if (sub_29AF49C14(2))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("[Resync Prim]: <%s>\n", v9, v10, Text);
  }

  sub_29A1E21F4(v63, a2);
  v11 = sub_29A1E2240(v63 + 1, a2 + 1);
  v12 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v11);
  v13 = *&v63[0];
  v14 = *v12;
  if (*&v63[0] != *v12)
  {
    v15 = sub_29AFAF990((a1 + 14));
    v17 = v16;
    if (v15 != v16)
    {
      do
      {
        if (*&v63[0] == *a2)
        {
          if (sub_29AF49C14(2))
          {
            v18 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v15 + 9));
            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("  - affected prim: <%s>\n", v19, v20, v18);
          }
        }

        else if (sub_29AF49C14(2))
        {
          v21 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v15 + 9));
          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("  - affected ancestor prim: <%s>\n", v22, v23, v21);
        }

        v24 = sub_29A2F4F50(a1 + 9, v15 + 9);
        if (v24)
        {
          v25 = (v24 + 3);
        }

        else
        {
          v25 = 0;
        }

        if (v24)
        {
          if (v24[3] || (v58 = "usdImaging/delegate.cpp", v59 = "_ResyncUsdPrim", v60 = 1386, v61 = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_ResyncUsdPrim(const SdfPath &, const _FlattenedDependenciesCacheMap &, UsdImagingIndexProxy *, BOOL)", v62 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v58, "primInfo->adapter != nullptr", 0) & 1) != 0))
          {
            if ((sub_29AF99BEC(v25) & 1) == 0)
            {
              (*(**v25 + 136))(*v25, v15 + 9, a4);
            }
          }
        }

        v26 = *(v15 + 1);
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = *(v15 + 2);
            v28 = *v27 == v15;
            v15 = v27;
          }

          while (!v28);
        }

        v15 = v27;
      }

      while (v27 != v17);
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v63, &v58);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v63 + 1);
  sub_29A1DE3A4(v63);
  v65 = 0;
  v66 = 0;
  v67 = 0;
  pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GatherDependencies(a1, a2, v49, &v65);
  v30 = v65;
  v29 = v66;
  if (v66 == v65)
  {
    v42 = sub_29A5A70E0(a1 + 108);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(v42, a2, &v58);
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v58);
  }

  do
  {
    if (sub_29AF49C14(2))
    {
      v31 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v30);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("  - affected child prim: <%s>\n", v32, v33, v31);
    }

    v34 = sub_29A2F4F50(a1 + 9, v30);
    if (v34)
    {
      v37 = (v34 + 3);
    }

    else
    {
      v37 = 0;
    }

    if (v34)
    {
      if (v34[3] || (v58 = "usdImaging/delegate.cpp", v59 = "_ResyncUsdPrim", v60 = 1423, v61 = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_ResyncUsdPrim(const SdfPath &, const _FlattenedDependenciesCacheMap &, UsdImagingIndexProxy *, BOOL)", v62 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v58, "primInfo->adapter != nullptr", 0) & 1) != 0))
      {
        if (v13 == v14)
        {
          v38 = *v37;
LABEL_40:
          (*(*v38 + 136))(v38, v30, a4);
          goto LABEL_41;
        }

        v39 = sub_29AF99BEC(v37);
        v38 = *v37;
        {
          goto LABEL_40;
        }
      }
    }

LABEL_41:
    v30 = (v30 + 8);
  }

  while (v30 != v29);
  if (v13 == v14)
  {
    if (a5)
    {
      if (sub_29AF49C14(2))
      {
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("  (repopulating from root)\n", v40, v41);
      }

      pxrInternal__aapl__pxrReserved__::UsdImagingIndexProxy::Repopulate(a4, a2);
    }

    else
    {
      memset(v63, 0, sizeof(v63));
      v64 = 1065353216;
      v43 = a1[111];
      v58 = a1[110];
      v59 = v43;
      while (v58 != v59)
      {
        v44 = sub_29A1E25CC(&v58, v35, v36);
        sub_29A43A86C(v63, v44, v44);
        sub_29A1E264C(&v58);
      }

      v45 = sub_29A5A70E0(a1 + 108);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(v45, a2, &v55);
      pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_GetDisplayPredicate(a1, &v51);
      sub_29A58C2CC(&v58, &v55, &v51);
      if ((v57 & 7) != 0)
      {
        atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v56 + 1);
      sub_29A1DE3A4(&v56);
      if (*(&v55 + 1))
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v55 + 1), v46);
      }

      sub_29A58BB1C(&v58, &v55);
      v51.n128_u64[0] = v59;
      v51.n128_u64[1] = &v58;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v52);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v52 + 1);
      v53 = 0;
      v54 = 0;
      if (v55 == *&v51)
      {
        v47 = 1;
        if (v56 == v52 && !v57 && !BYTE4(v57))
        {
          v47 = BYTE5(v57);
        }
      }

      else
      {
        v47 = 1;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v52 + 1);
      sub_29A1DE3A4(&v52);
      if (v47)
      {
        sub_29A58BDD8(&v55, &v51);
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v51);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v56 + 1);
      sub_29A1DE3A4(&v56);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v60 + 1);
      sub_29A1DE3A4(&v60);
      sub_29A43A24C(v63);
    }
  }

  v58 = &v65;
  sub_29A1E234C(&v58);
  if (v68)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v69, v68);
  }
}

void sub_29AF99768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  a28 = (v28 - 128);
  sub_29A1E234C(&a28);
  sub_29A0E9CEC(v28 - 104);
  _Unwind_Resume(a1);
}

void *sub_29AF9995C(void *result)
{
  if (*result == result[1])
  {
    sub_29B2CD078();
  }

  return result;
}

uint64_t sub_29AF99994(uint64_t a1)
{
  if (*a1 == *(a1 + 8))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::unordered_map<pxrInternal__aapl__pxrReserved__::SdfPath, std::vector<pxrInternal__aapl__pxrReserved__::TfToken>, pxrInternal__aapl__pxrReserved__::SdfPath::Hash>>::operator++() [T = std::unordered_map<pxrInternal__aapl__pxrReserved__::SdfPath, std::vector<pxrInternal__aapl__pxrReserved__::TfToken>, pxrInternal__aapl__pxrReserved__::SdfPath::Hash>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 = **a1;
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::_HasConnectionChanged(uint64_t a1, uint64_t *a2)
{
  v3 = sub_29A55CDFC(*a2);
  if (*a2 + 8 == v3)
  {
    return 0;
  }

  v5 = *(v3 + 40);
  v4 = *(v3 + 48);
  if (v5 == v4)
  {
    return 0;
  }

  v6 = v5 + 8;
  do
  {
    v7 = *(*(v6 - 8) + 184);
    result = (v7 >> 12) & 1;
    if ((v7 & 0x1000) != 0)
    {
      break;
    }

    v9 = v6 == v4;
    v6 += 8;
  }

  while (!v9);
  return result;
}

void *sub_29AF99A88(void *result)
{
  if (*result == result[1])
  {
    sub_29B2CD0C4();
  }

  return result;
}

void *sub_29AF99AC0(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::PathRange>::operator++() [T = const pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::PathRange, Reverse = false]";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "iterator exhausted");
  }

  else
  {
    v3 = v2[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    *a1 = v4;
  }

  return a1;
}

uint64_t sub_29AF99B68(void *a1, uint64_t a2, char *a3)
{
  if (*a1 == a1[1])
  {
    v11 = v4;
    v12 = v3;
    v13 = v5;
    v14 = v6;
    v8[0] = "tf/iterator.h";
    v8[1] = "operator*";
    v8[2] = 254;
    v8[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::PathRange>::operator*() [T = const pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::PathRange, Reverse = false]";
    v9 = 0;
    v10 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v8, "iterator exhausted", a3);
  }

  return *a1 + 32;
}

const void *sub_29AF99BEC(const void **a1)
{
  result = *a1;
  if (result)
  {
  }

  return result;
}

uint64_t sub_29AF99C54(pxrInternal__aapl__pxrReserved__::UsdShadeShader *a1)
{
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdShadeShader::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v3);

  return pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a1, SchemaInfo);
}

uint64_t sub_29AF99C94(pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph *a1)
{
  StaticTfType = pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::_GetStaticTfType(a1);
  SchemaInfo = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(StaticTfType, v3);

  return pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(a1, SchemaInfo);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_UpdateSingleValue(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3)
{
  v6 = sub_29A2F4F50(this + 9, a2);
  if (v6)
  {
    v7 = v6 + 3;
  }

  else
  {
    v7 = 0;
  }

  if (v6 || (result = sub_29B2CD110(v16), (result & 1) != 0))
  {
    v8 = *v7;
    if (!*v7)
    {
      v14[0] = "usdImaging/delegate.cpp";
      v14[1] = "_UpdateSingleValue";
      v14[2] = 1720;
      v14[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_UpdateSingleValue(const SdfPath &, int)";
      v15 = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      v13 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s\n", v11, v12, Text);
      result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v14, "primInfo->adapter", v13);
      if (!result)
      {
        return result;
      }

      v8 = *v7;
    }

    return (*(*v8 + 112))(v8, v7 + 2, a2, a3, 0, *(this + 140));
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_MarkRenderTagsDirty(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this)
{
  v8[0] = this;
  memset(&v8[1], 0, 32);
  memset(v9, 0, sizeof(v9));
  memset(v10, 0, sizeof(v10));
  memset(v11, 0, sizeof(v11));
  for (i = *(this + 11); i; i = *i)
  {
    if (!i[3])
    {
      v6[0] = "usdImaging/delegate.cpp";
      v6[1] = "_MarkRenderTagsDirty";
      v6[2] = 1738;
      v6[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_MarkRenderTagsDirty()";
      v7 = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((i + 2));
      v5 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v3, v4, Text);
      if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v6, "primInfo.adapter", v5) & 1) == 0)
      {
        continue;
      }
    }

    (*(*i[3] + 184))(i[3], i + 5, i + 2, v8);
  }

  v6[0] = &v11[1] + 1;
  sub_29AFA229C(v6);
  v6[0] = v11;
  sub_29A1E234C(v6);
  v6[0] = &v10[1] + 1;
  sub_29A1E234C(v6);
  v6[0] = v10;
  sub_29AFA2378(v6);
  v6[0] = &v9[1] + 1;
  sub_29AFA2378(v6);
  v6[0] = v9;
  sub_29A1E234C(v6);
  v6[0] = &v8[2];
  sub_29A1E234C(v6);
}

void sub_29AF99F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29AF93AA0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetDisplayRender(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, int a2)
{
  if (*(this + 8984) != a2)
  {
    *(this + 8984) = a2;
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_MarkRenderTagsDirty(this);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetDisplayProxy(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, int a2)
{
  if (*(this + 8985) != a2)
  {
    *(this + 8985) = a2;
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_MarkRenderTagsDirty(this);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetDisplayGuides(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, int a2)
{
  if (*(this + 8986) != a2)
  {
    *(this + 8986) = a2;
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_MarkRenderTagsDirty(this);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetUsdDrawModesEnabled(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, int a2)
{
  if (*(this + 8987) != a2)
  {
    if (*(this + 12))
    {
      v6 = v2;
      v7 = v3;
      v4[0] = "usdImaging/delegate.cpp";
      v4[1] = "SetUsdDrawModesEnabled";
      v4[2] = 1803;
      v4[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetUsdDrawModesEnabled(BOOL)";
      v5 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "SetUsdDrawModesEnabled() was called after population; this is currently unsupported...");
    }

    else
    {
      *(this + 8987) = a2;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetSceneMaterialsEnabled(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, int a2)
{
  if (*(this + 8989) != a2)
  {
    *(this + 8989) = a2;
    v9[0] = this;
    memset(&v9[1], 0, 32);
    memset(v10, 0, sizeof(v10));
    memset(v11, 0, sizeof(v11));
    memset(v12, 0, sizeof(v12));
    for (i = *(this + 11); i; i = *i)
    {
      if (!i[3])
      {
        v7[0] = "usdImaging/delegate.cpp";
        v7[1] = "SetSceneMaterialsEnabled";
        v7[2] = 1824;
        v7[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetSceneMaterialsEnabled(BOOL)";
        v8 = 0;
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((i + 2));
        v6 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v4, v5, Text);
        if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v7, "primInfo.adapter", v6) & 1) == 0)
        {
          continue;
        }
      }

      (*(*i[3] + 208))(i[3], i + 5, i + 2, v9);
    }

    v7[0] = &v12[1] + 1;
    sub_29AFA229C(v7);
    v7[0] = v12;
    sub_29A1E234C(v7);
    v7[0] = &v11[1] + 1;
    sub_29A1E234C(v7);
    v7[0] = v11;
    sub_29AFA2378(v7);
    v7[0] = &v10[1] + 1;
    sub_29AFA2378(v7);
    v7[0] = v10;
    sub_29A1E234C(v7);
    v7[0] = &v9[2];
    sub_29A1E234C(v7);
  }
}

void sub_29AF9A20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29AF93AA0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetSceneLightsEnabled(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, int a2)
{
  if (*(this + 8990) != a2)
  {
    *(this + 8990) = a2;
    v9[0] = this;
    memset(&v9[1], 0, 32);
    memset(v10, 0, sizeof(v10));
    memset(v11, 0, sizeof(v11));
    memset(v12, 0, sizeof(v12));
    for (i = *(this + 11); i; i = *i)
    {
      if (!i[3])
      {
        v7[0] = "usdImaging/delegate.cpp";
        v7[1] = "SetSceneLightsEnabled";
        v7[2] = 1846;
        v7[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetSceneLightsEnabled(BOOL)";
        v8 = 0;
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((i + 2));
        v6 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v4, v5, Text);
        if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v7, "primInfo.adapter", v6) & 1) == 0)
        {
          continue;
        }
      }

      (*(*i[3] + 152))(i[3], i + 5, i + 2, 18, v9);
    }

    v7[0] = &v12[1] + 1;
    sub_29AFA229C(v7);
    v7[0] = v12;
    sub_29A1E234C(v7);
    v7[0] = &v11[1] + 1;
    sub_29A1E234C(v7);
    v7[0] = v11;
    sub_29AFA2378(v7);
    v7[0] = &v10[1] + 1;
    sub_29AFA2378(v7);
    v7[0] = v10;
    sub_29A1E234C(v7);
    v7[0] = &v9[2];
    sub_29A1E234C(v7);
  }
}

void sub_29AF9A3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29AF93AA0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetWindowPolicy(uint64_t a1, int a2)
{
  if (*(a1 + 8992) != a2)
  {
    *(a1 + 8992) = a2;
    v9[0] = a1;
    memset(&v9[1], 0, 32);
    memset(v10, 0, sizeof(v10));
    memset(v11, 0, sizeof(v11));
    memset(v12, 0, sizeof(v12));
    for (i = *(a1 + 88); i; i = *i)
    {
      if (!i[3])
      {
        v7[0] = "usdImaging/delegate.cpp";
        v7[1] = "SetWindowPolicy";
        v7[2] = 1867;
        v7[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetWindowPolicy(CameraUtilConformWindowPolicy)";
        v8 = 0;
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((i + 2));
        v6 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v4, v5, Text);
        if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v7, "primInfo.adapter", v6) & 1) == 0)
        {
          continue;
        }
      }

      (*(*i[3] + 224))(i[3], i + 5, i + 2, v9);
    }

    v7[0] = &v12[1] + 1;
    sub_29AFA229C(v7);
    v7[0] = v12;
    sub_29A1E234C(v7);
    v7[0] = &v11[1] + 1;
    sub_29A1E234C(v7);
    v7[0] = v11;
    sub_29AFA2378(v7);
    v7[0] = &v10[1] + 1;
    sub_29AFA2378(v7);
    v7[0] = v10;
    sub_29A1E234C(v7);
    v7[0] = &v9[2];
    sub_29A1E234C(v7);
  }
}

void sub_29AF9A59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29AF93AA0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetDisplayUnloadedPrimsWithBounds(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, char a2)
{
  if (*(this + 12))
  {
    v2 = "usdImaging/delegate.cpp";
    v3 = "SetDisplayUnloadedPrimsWithBounds";
    v4 = 1881;
    v5 = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetDisplayUnloadedPrimsWithBounds(BOOL)";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v2, 1, "SetDisplayUnloadedPrimsWithBounds() was called after population; this is currently unsupported.");
  }

  else if (*(this + 8988))
  {
    *(this + 8997) = a2;
  }

  else
  {
    v2 = "usdImaging/delegate.cpp";
    v3 = "SetDisplayUnloadedPrimsWithBounds";
    v4 = 1885;
    v5 = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetDisplayUnloadedPrimsWithBounds(BOOL)";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v2, 1, "This delegate does not have draw mode adapter; unloaded prims cannot be displayed with bounds.");
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetCurrentTimeSamplingInterval@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, uint64_t a2@<X8>)
{
  v14[2] = *MEMORY[0x29EDCA608];
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 282);
  v5 = 0.0;
  v6 = 0.0;
  if (result)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    if (!v7)
    {
      v7 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    }

    (*(*this + 328))(v14, this, this + 1128, v7 + 160);
    if (sub_29A346994(v14))
    {
      v8 = *sub_29A337248(v14);
      v5 = v8;
    }

    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    if (!v9)
    {
      v9 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    }

    (*(*this + 328))(v13, this, this + 1128, v9 + 168);
    if (sub_29A346994(v13))
    {
      v10 = *sub_29A337248(v13);
      v6 = v10;
    }

    sub_29A186B14(v13);
    result = sub_29A186B14(v14);
  }

  v11 = *(this + 140);
  v12 = v5 + v11;
  *a2 = v12;
  *(a2 + 8) = fabs(v12) != INFINITY;
  *(a2 + 16) = v6 + v11;
  *(a2 + 24) = fabs(v6 + v11) != INFINITY;
  return result;
}

void sub_29AF9A860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29AF9A890(void *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  JUMPOUT(0x29AF9A888);
}

int *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetCameraForSampling(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29A2258F0(this + 282, a2);

  return sub_29A225948(this + 283, a2 + 1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetRenderTag@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  sub_29AF9AC64(this, a2, &v25);
  v5 = sub_29A2F4F50(this + 9, &v25);
  v6 = v5;
  if (v5)
  {
    v7 = v5 + 3;
  }

  else
  {
    v7 = 0;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v8)
  {
    v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v9 = *(v8 + 29);
  *a3 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a3 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (v6 || (v23[0] = "usdImaging/delegate.cpp", v23[1] = "GetRenderTag", v23[2] = 1938, v23[3] = "virtual TfToken pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetRenderTag(const SdfPath &)", v24 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v23, "primInfo", 0) & 1) != 0))
  {
    (*(**v7 + 368))(v23);
    if (v23 == a3)
    {
      if ((v23[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v23[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if ((*a3 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *a3 = v23[0];
      v23[0] = 0;
    }
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v10)
  {
    v10 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v10 + 29) ^ *a3) <= 7)
  {
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
    if (!v11)
    {
      v11 = sub_29AC2917C(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
    }

LABEL_36:
    sub_29A166F2C(a3, v11);
    goto LABEL_37;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v12)
  {
    v12 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v13 = this + 0x2000;
  if ((*(v12 + 119) ^ *a3) <= 7 && v13[792] != 1)
  {
    goto LABEL_33;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v14)
  {
    v14 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v14 + 111) ^ *a3) <= 7 && v13[793] != 1)
  {
    goto LABEL_33;
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v15)
  {
    v15 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  if ((*(v15 + 49) ^ *a3) <= 7 && (v13[794] & 1) == 0)
  {
LABEL_33:
    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
    if (!v16)
    {
      v16 = sub_29AC2917C(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
    }

    v11 = (v16 + 16);
    goto LABEL_36;
  }

LABEL_37:
  if (sub_29AF49C14(0))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v25);
    v20 = *a3 & 0xFFFFFFFFFFFFFFF8;
    if (v20)
    {
      v21 = (v20 + 16);
      if (*(v20 + 39) < 0)
      {
        v21 = *v21;
      }
    }

    else
    {
      v21 = "";
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("GetRenderTag %s -> %s \n", v18, v19, Text, v21);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v26);
  return sub_29A1DE3A4(&v25);
}

void sub_29AF9AC04(_Unwind_Exception *a1)
{
  if ((*v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t *sub_29AF9AC64@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = sub_29A2F4F50((a1 + 176), a2);
  if (v6)
  {
    v7 = v6;
    sub_29A1E21F4(a3, v6 + 6);
    v8 = a3 + 1;
    v9 = v7 + 7;
LABEL_5:

    return sub_29A1E2240(v8, v9);
  }

  v10 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(0);
  v12 = *(a1 + 16);
  v11 = (a1 + 16);
  if (v12 == *v10)
  {
    sub_29A1E21F4(a3, a2);
    v8 = a3 + 1;
    v9 = a2 + 1;
    goto LABEL_5;
  }

  v14 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v10);

  return pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(a3, a2, v11, v14, 1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetBasisCurvesTopology@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *a3@<X8>)
{
  v16 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v12, "usdImaging", "virtual HdBasisCurvesTopology pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetBasisCurvesTopology(const SdfPath &)");
  sub_29AF9AC64(this, a2, &v10);
  v6 = sub_29A2F4F50(this + 9, &v10);
  if (v6)
  {
    v7 = v6 + 3;
  }

  else
  {
    v7 = 0;
  }

  if (v6 || (v14[0] = "usdImaging/delegate.cpp", v14[1] = "GetBasisCurvesTopology", v14[2] = 1969, v14[3] = "virtual HdBasisCurvesTopology pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetBasisCurvesTopology(const SdfPath &)", v15 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v14, "primInfo", 0) & 1) != 0))
  {
    (*(**v7 + 408))(v14, *(this + 140));
    if (sub_29AF9AF0C(v14))
    {
      v8 = sub_29AF9AF94(v14);
      pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::HdBasisCurvesTopology(a3, v8);
      sub_29A186B14(v14);
      goto LABEL_9;
    }

    sub_29A186B14(v14);
  }

  pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::HdBasisCurvesTopology(a3);
LABEL_9:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
  result = sub_29A1DE3A4(&v10);
  if (v12)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return result;
}

void sub_29AF9AEB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29A0E9CEC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF9AF0C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_2A2075CC0 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }
}

void **sub_29AF9AF94(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29AF9AF0C(a1))
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
  }
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetMeshTopology@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t *a3@<X8>)
{
  v28[2] = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v26, "usdImaging", "virtual HdMeshTopology pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetMeshTopology(const SdfPath &)");
  sub_29AF9AC64(this, a2, &v24);
  v6 = sub_29A2F4F50(this + 9, &v24);
  if (v6)
  {
    v7 = v6 + 3;
  }

  else
  {
    v7 = 0;
  }

  if (!v6)
  {
    v16 = "usdImaging/delegate.cpp";
    v17[0] = "GetMeshTopology";
    v17[1] = 1991;
    *&v18 = "virtual HdMeshTopology pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetMeshTopology(const SdfPath &)";
    BYTE8(v18) = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v16, "primInfo", 0) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  (*(**v7 + 408))(v28, *(this + 140));
  if (!sub_29AF9B34C(v28))
  {
    sub_29A186B14(v28);
LABEL_16:
    pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(a3);
    goto LABEL_17;
  }

  v8 = sub_29AF9B3D4(v28);
  pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(a3, v8, 0);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v9 = a3[48];
  if (v9 != a3[49])
  {
    v11 = *v9;
    v10 = v9 + 1;
    LODWORD(v16) = v11;
    sub_29AF9B468(this, v10, &v16 + 1);
    v10 += 2;
    sub_29AF9B468(this, v10, v17 + 1);
    v12 = *(v10 + 3);
    v19 = *(v10 + 7);
    v18 = v12;
    v13 = *(v10 + 11);
    v20 = v13;
    if (v13)
    {
      v14 = (v13 - 16);
      if (*(&v19 + 1))
      {
        v14 = *(&v19 + 1);
      }

      atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed);
    }

    sub_29ACC86E8(&v21, &v16);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  if (a3 + 48 != &v21)
  {
    sub_29AC52FEC((a3 + 48), v21, v22, (v22 - v21) >> 6);
  }

  v16 = &v21;
  sub_29AC5346C(&v16);
  sub_29A186B14(v28);
LABEL_17:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25);
  result = sub_29A1DE3A4(&v24);
  if (v26)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v27, v26);
  }

  return result;
}

void sub_29AF9B2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29A1DCEA8(va);
  sub_29A0E9CEC(v13 - 88);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF9B34C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_2A207C888 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }
}

void **sub_29AF9B3D4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29AF9B34C(a1))
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
  }
}

uint64_t *sub_29AF9B468@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = sub_29A2F4F50((a1 + 136), a2);
  if (v6)
  {
    v7 = v6;
    sub_29A1E21F4(a3, v6 + 6);
    v8 = a3 + 1;
    v9 = v7 + 7;
LABEL_9:

    return sub_29A1E2240(v8, v9);
  }

  v10 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(0);
  v12 = *(a1 + 16);
  v11 = (a1 + 16);
  if (v12 == *v10 || !(v13 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a2)))
  {
    sub_29A1E21F4(a3, a2);
    v8 = a3 + 1;
    v9 = a2 + 1;
    goto LABEL_9;
  }

  v14 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v13);

  return pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(a3, a2, v14, v11, 1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetSubdivTags@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A0ECEEC(&v13, "usdImaging", "virtual UsdImagingDelegate::SubdivTags pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetSubdivTags(const SdfPath &)");
  sub_29AF9AC64(this, a2, &v11);
  v6 = sub_29A2F4F50(this + 9, &v11);
  if (v6)
  {
    v7 = v6 + 3;
  }

  else
  {
    v7 = 0;
  }

  if (v6 || (v9[0] = "usdImaging/delegate.cpp", v9[1] = "GetSubdivTags", v9[2] = 2024, v9[3] = "virtual UsdImagingDelegate::SubdivTags pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetSubdivTags(const SdfPath &)", v10 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "primInfo", 0) & 1) != 0))
  {
    (*(**v7 + 296))(*v7, v7 + 2, &v11, *(this + 140));
  }

  else
  {
    *(a3 + 224) = 0;
    *(a3 + 192) = 0u;
    *(a3 + 208) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
  result = sub_29A1DE3A4(&v11);
  if (v13)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
  }

  return result;
}

void sub_29AF9B684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29A0E9CEC(va1);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetExtent@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A0ECEEC(&v13, "usdImaging", "virtual GfRange3d pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetExtent(const SdfPath &)");
  sub_29AF9AC64(this, a2, &v11);
  v6 = sub_29A2F4F50(this + 9, &v11);
  if (v6)
  {
    v7 = v6 + 3;
  }

  else
  {
    v7 = 0;
  }

  if (v6 || (v9[0] = "usdImaging/delegate.cpp", v9[1] = "GetExtent", v9[2] = 2040, v9[3] = "virtual GfRange3d pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetExtent(const SdfPath &)", v10 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "primInfo", 0) & 1) != 0))
  {
    (*(**v7 + 416))(*v7, v7 + 2, &v11, *(this + 140));
  }

  else
  {
    *a3 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
    *(a3 + 16) = xmmword_29B43C5A0;
    *(a3 + 32) = vdupq_n_s64(0xC7EFFFFFE0000000);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
  result = sub_29A1DE3A4(&v11);
  if (v13)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
  }

  return result;
}

void sub_29AF9B7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29A0E9CEC(va1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetDoubleSided(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29AF9AC64(this, a2, &v9);
  v3 = sub_29A2F4F50(this + 9, &v9);
  if (v3)
  {
    v4 = v3 + 3;
  }

  else
  {
    v4 = 0;
  }

  if (v3 || (v7[0] = "usdImaging/delegate.cpp", v7[1] = "GetDoubleSided", v7[2] = 2055, v7[3] = "virtual BOOL pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetDoubleSided(const SdfPath &)", v8 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v7, "primInfo", 0) & 1) != 0))
  {
    v5 = (*(**v4 + 424))(*v4, v4 + 2, &v9, *(this + 140));
  }

  else
  {
    v5 = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
  sub_29A1DE3A4(&v9);
  return v5;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetCullStyle(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29AF9AC64(this, a2, &v9);
  v3 = sub_29A2F4F50(this + 9, &v9);
  if (v3)
  {
    v4 = v3 + 3;
  }

  else
  {
    v4 = 0;
  }

  if (!v3 && (v7[0] = "usdImaging/delegate.cpp", v7[1] = "GetCullStyle", v7[2] = 2074, v7[3] = "virtual HdCullStyle pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetCullStyle(const SdfPath &)", v8 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v7, "primInfo", 0) & 1) == 0) || (v5 = (*(**v4 + 400))(*v4, v4 + 2, &v9, *(this + 140)), !v5))
  {
    v5 = *(this + 292);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
  sub_29A1DE3A4(&v9);
  return v5;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetDisplayStyle(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29AF9AC64(this, a2, &v6);
  v3 = sub_29A328A44(this + 32, &v6);
  v4 = (this + 1136);
  if (v3)
  {
    v4 = (v3 + 3);
  }

  sub_29AD01650(&v8, *v4, 0, 1, 0, 0, 0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  sub_29A1DE3A4(&v6);
  return v8;
}

void sub_29AF9BACC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetModelDrawMode@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29ACB7794(a3);
  sub_29AF9AC64(this, a2, &v11);
  v6 = sub_29A2F4F50(this + 9, &v11);
  if (v6)
  {
    v7 = (v6 + 3);
  }

  else
  {
    v7 = 0;
  }

  if (v6 || (v9[0] = "usdImaging/delegate.cpp", v9[1] = "GetModelDrawMode", v9[2] = 2107, v9[3] = "virtual HdModelDrawMode pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetModelDrawMode(const SdfPath &)", v10 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "primInfo", 0) & 1) != 0))
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingPrimAdapter::GetFullModelDrawMode(*v7, (v7 + 2), v9);
    sub_29AF9BBF8(a3, v9);
    sub_29AFA24D0(v9);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
  return sub_29A1DE3A4(&v11);
}

void sub_29AF9BBC8(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v2 - 40));
  sub_29AFA24D0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF9BBF8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    if ((*a1 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a1 = *a2;
    *a2 = 0;
    *(a1 + 8) = *(a2 + 8);
    v4 = *(a1 + 24);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = 0;
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *(a2 + 55) = 0;
  *(a2 + 32) = 0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v6 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v6;
  *(a2 + 79) = 0;
  *(a2 + 56) = 0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v7 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v7;
  *(a2 + 103) = 0;
  *(a2 + 80) = 0;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v8 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v8;
  *(a2 + 127) = 0;
  *(a2 + 104) = 0;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  v9 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 128) = v9;
  *(a2 + 151) = 0;
  *(a2 + 128) = 0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  v10 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v10;
  *(a2 + 175) = 0;
  *(a2 + 152) = 0;
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  v11 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 176) = v11;
  *(a2 + 199) = 0;
  *(a2 + 176) = 0;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  v12 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v12;
  *(a2 + 223) = 0;
  *(a2 + 200) = 0;
  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  v13 = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 224) = v13;
  *(a2 + 247) = 0;
  *(a2 + 224) = 0;
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  v14 = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 248) = v14;
  *(a2 + 271) = 0;
  *(a2 + 248) = 0;
  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  v15 = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 272) = v15;
  *(a2 + 295) = 0;
  *(a2 + 272) = 0;
  v16 = (a1 + 296);
  if (*(a1 + 319) < 0)
  {
    operator delete(*v16);
  }

  v17 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 312);
  *v16 = v17;
  *(a2 + 319) = 0;
  *(a2 + 296) = 0;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRefineLevelFallback(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, unsigned int a2)
{
  if (*(this + 284) != a2 && sub_29AF9C094(this, a2))
  {
    *(this + 284) = a2;
    v14[0] = this;
    memset(&v14[1], 0, 32);
    memset(v15, 0, sizeof(v15));
    memset(v16, 0, sizeof(v16));
    memset(v17, 0, sizeof(v17));
    v12 = *(this + 11);
    v13 = 0;
    while (v12 != v13)
    {
      v4 = *sub_29AF93F64(&v12);
      v5 = *sub_29AF93F64(&v12);
      if (!sub_29A2F4F50(this + 32, (v4 + 16)))
      {
        if (*(v5 + 24) || (v10[0] = "usdImaging/delegate.cpp", v10[1] = "SetRefineLevelFallback", v10[2] = 2129, v10[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRefineLevelFallback(int)", v11 = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v4 + 16)), v9 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v7, v8, Text), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "primInfo.adapter", v9) & 1) != 0))
        {
          (*(**(v5 + 24) + 160))(*(v5 + 24), v5 + 40, v4 + 16, v14);
        }
      }

      sub_29AF93F9C(&v12);
    }

    v10[0] = &v17[1] + 1;
    sub_29AFA229C(v10);
    v10[0] = v17;
    sub_29A1E234C(v10);
    v10[0] = &v16[1] + 1;
    sub_29A1E234C(v10);
    v10[0] = v16;
    sub_29AFA2378(v10);
    v10[0] = &v15[1] + 1;
    sub_29AFA2378(v10);
    v10[0] = v15;
    sub_29A1E234C(v10);
    v10[0] = &v14[2];
    sub_29A1E234C(v10);
  }
}

void sub_29AF9C070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29AF93AA0(va);
  _Unwind_Resume(a1);
}

BOOL sub_29AF9C094(uint64_t a1, unsigned int a2)
{
  if (a2 >= 9)
  {
    v4[0] = "usdImaging/delegate.h";
    v4[1] = "_ValidateRefineLevel";
    v4[2] = 519;
    v4[3] = "BOOL pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_ValidateRefineLevel(int)";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Invalid refinement level(%d), expected range is [0,8]", a2);
  }

  return a2 < 9;
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRefineLevel(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, unsigned int a3)
{
  if (sub_29AF9C094(this, a3))
  {
    v6 = sub_29A2F4F50(this + 32, a2);
    if (v6)
    {
      if (*(v6 + 6) == a3)
      {
        return;
      }

      *(v6 + 6) = a3;
    }

    else
    {
      v22[0] = a2;
      *(sub_29A85CB40(this + 256, a2, &unk_29B4D6118, v22) + 6) = a3;
      if (*(this + 284) == a3)
      {
        return;
      }
    }

    v22[0] = this;
    memset(&v22[1], 0, 32);
    memset(v23, 0, sizeof(v23));
    memset(v24, 0, sizeof(v24));
    memset(v25, 0, sizeof(v25));
    v7 = sub_29A2F4F50(this + 9, a2);
    if (v7)
    {
      v8 = v7 + 3;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v20[0] = "usdImaging/delegate.cpp";
      v20[1] = "SetRefineLevel";
      v20[2] = 2165;
      v20[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRefineLevel(const SdfPath &, int)";
      v21 = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      v13 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v11, v12, Text);
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v20, "primInfo", v13))
      {
        goto LABEL_12;
      }
    }

    v9 = *v8;
    if (!*v8)
    {
      LOBYTE(v19) = 0;
      v14 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      v17 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v15, v16, v14, "usdImaging/delegate.cpp", "SetRefineLevel", 2166, "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRefineLevel(const SdfPath &, int)", v19);
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v18, "primInfo->adapter", v17))
      {
        goto LABEL_12;
      }

      v9 = *v8;
    }

    (*(*v9 + 160))(v9, v8 + 2, a2, v22);
LABEL_12:
    v20[0] = &v25[1] + 1;
    sub_29AFA229C(v20);
    v20[0] = v25;
    sub_29A1E234C(v20);
    v20[0] = &v24[1] + 1;
    sub_29A1E234C(v20);
    v20[0] = v24;
    sub_29AFA2378(v20);
    v20[0] = &v23[1] + 1;
    sub_29AFA2378(v20);
    v20[0] = v23;
    sub_29A1E234C(v20);
    v20[0] = &v22[2];
    sub_29A1E234C(v20);
  }
}

void sub_29AF9C360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_29AF93AA0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::ClearRefineLevel(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v4 = sub_29A2F4F50(this + 32, a2);
  if (v4)
  {
    v5 = *(v4 + 6);
    sub_29AFAFC20(this + 32, v4);
    if (v5 != *(this + 284))
    {
      v21[0] = this;
      memset(&v21[1], 0, 32);
      memset(v22, 0, sizeof(v22));
      memset(v23, 0, sizeof(v23));
      memset(v24, 0, sizeof(v24));
      v6 = sub_29A2F4F50(this + 9, a2);
      if (v6)
      {
        v7 = v6 + 3;
      }

      else
      {
        v7 = 0;
      }

      if (!v6)
      {
        v19[0] = "usdImaging/delegate.cpp";
        v19[1] = "ClearRefineLevel";
        v19[2] = 2188;
        v19[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::ClearRefineLevel(const SdfPath &)";
        v20 = 0;
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
        v12 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v10, v11, Text);
        if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v19, "primInfo", v12))
        {
          goto LABEL_9;
        }
      }

      v8 = *v7;
      if (!*v7)
      {
        LOBYTE(v18) = 0;
        v13 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
        v16 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v14, v15, v13, "usdImaging/delegate.cpp", "ClearRefineLevel", 2189, "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::ClearRefineLevel(const SdfPath &)", v18);
        if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v17, "primInfo->adapter", v16))
        {
          goto LABEL_9;
        }

        v8 = *v7;
      }

      (*(*v8 + 160))(v8, v7 + 2, a2, v21);
LABEL_9:
      v19[0] = &v24[1] + 1;
      sub_29AFA229C(v19);
      v19[0] = v24;
      sub_29A1E234C(v19);
      v19[0] = &v23[1] + 1;
      sub_29A1E234C(v19);
      v19[0] = v23;
      sub_29AFA2378(v19);
      v19[0] = &v22[1] + 1;
      sub_29AFA2378(v19);
      v19[0] = v22;
      sub_29A1E234C(v19);
      v19[0] = &v21[2];
      sub_29A1E234C(v19);
    }
  }
}

void sub_29AF9C594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_29AF93AA0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetReprFallback(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::HdReprSelector *a2)
{
  if (!pxrInternal__aapl__pxrReserved__::HdReprSelector::operator==(this + 143, a2))
  {
    sub_29A166F2C(this + 143, a2);
    sub_29A166F2C(this + 144, a2 + 1);
    sub_29A166F2C(this + 145, a2 + 2);
    v15[0] = this;
    memset(&v15[1], 0, 32);
    memset(v16, 0, sizeof(v16));
    memset(v17, 0, sizeof(v17));
    memset(v18, 0, sizeof(v18));
    v13 = *(this + 11);
    v14 = 0;
    while (v13 != v14)
    {
      v4 = *sub_29AF93F64(&v13);
      v5 = sub_29AF93F64(&v13);
      v6 = *v5;
      if (*(*v5 + 24) || (v11[0] = "usdImaging/delegate.cpp", v11[1] = "SetReprFallback", v11[2] = 2212, v11[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetReprFallback(const HdReprSelector &)", v12 = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v4 + 16)), v10 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v8, v9, Text), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v11, "primInfo.adapter", v10) & 1) != 0))
      {
        (*(**(v6 + 24) + 168))(*(v6 + 24), v6 + 40, v4 + 16, v15);
      }

      sub_29AF93F9C(&v13);
    }

    v11[0] = &v18[1] + 1;
    sub_29AFA229C(v11);
    v11[0] = v18;
    sub_29A1E234C(v11);
    v11[0] = &v17[1] + 1;
    sub_29A1E234C(v11);
    v11[0] = v17;
    sub_29AFA2378(v11);
    v11[0] = &v16[1] + 1;
    sub_29AFA2378(v11);
    v11[0] = v16;
    sub_29A1E234C(v11);
    v11[0] = &v15[2];
    sub_29A1E234C(v11);
  }
}

void sub_29AF9C7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_29AF93AA0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetCullStyleFallback(uint64_t a1, int a2)
{
  if (*(a1 + 1168) != a2)
  {
    *(a1 + 1168) = a2;
    v13[0] = a1;
    memset(&v13[1], 0, 32);
    memset(v14, 0, sizeof(v14));
    memset(v15, 0, sizeof(v15));
    memset(v16, 0, sizeof(v16));
    v11 = *(a1 + 88);
    v12 = 0;
    while (v11 != v12)
    {
      v2 = *sub_29AF93F64(&v11);
      v3 = sub_29AF93F64(&v11);
      v4 = *v3;
      if (*(*v3 + 24) || (v9[0] = "usdImaging/delegate.cpp", v9[1] = "SetCullStyleFallback", v9[2] = 2235, v9[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetCullStyleFallback(HdCullStyle)", v10 = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v2 + 16)), v8 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v6, v7, Text), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "primInfo.adapter", v8) & 1) != 0))
      {
        (*(**(v4 + 24) + 176))(*(v4 + 24), v4 + 40, v2 + 16, v13);
      }

      sub_29AF93F9C(&v11);
    }

    v9[0] = &v16[1] + 1;
    sub_29AFA229C(v9);
    v9[0] = v16;
    sub_29A1E234C(v9);
    v9[0] = &v15[1] + 1;
    sub_29A1E234C(v9);
    v9[0] = v15;
    sub_29AFA2378(v9);
    v9[0] = &v14[1] + 1;
    sub_29AFA2378(v9);
    v9[0] = v14;
    sub_29A1E234C(v9);
    v9[0] = &v13[2];
    sub_29A1E234C(v9);
  }
}

void sub_29AF9C998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_29AF93AA0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRootTransform(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2)
{
  v4 = (this + 976);
  if (!pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator==(a2, this + 122))
  {
    v5 = *a2;
    v6 = *(a2 + 1);
    v7 = *(a2 + 3);
    v4[2] = *(a2 + 2);
    v4[3] = v7;
    *v4 = v5;
    v4[1] = v6;
    v8 = *(a2 + 4);
    v9 = *(a2 + 5);
    v10 = *(a2 + 7);
    v4[6] = *(a2 + 6);
    v4[7] = v10;
    v4[4] = v8;
    v4[5] = v9;
    v22[0] = this;
    memset(&v22[1], 0, 32);
    memset(v23, 0, sizeof(v23));
    memset(v24, 0, sizeof(v24));
    memset(v25, 0, sizeof(v25));
    v20 = *(this + 11);
    v21 = 0;
    while (v20 != v21)
    {
      v11 = *sub_29AF93F64(&v20);
      v12 = sub_29AF93F64(&v20);
      v13 = *v12;
      if (*(*v12 + 24) || (v18[0] = "usdImaging/delegate.cpp", v18[1] = "SetRootTransform", v18[2] = 2259, v18[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRootTransform(const GfMatrix4d &)", v19 = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v11 + 16)), v17 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v15, v16, Text), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v18, "primInfo.adapter", v17) & 1) != 0))
      {
        (*(**(v13 + 24) + 192))(*(v13 + 24), v13 + 40, v11 + 16, v22);
      }

      sub_29AF93F9C(&v20);
    }

    v18[0] = &v25[1] + 1;
    sub_29AFA229C(v18);
    v18[0] = v25;
    sub_29A1E234C(v18);
    v18[0] = &v24[1] + 1;
    sub_29A1E234C(v18);
    v18[0] = v24;
    sub_29AFA2378(v18);
    v18[0] = &v23[1] + 1;
    sub_29AFA2378(v18);
    v18[0] = v23;
    sub_29A1E234C(v18);
    v18[0] = &v22[2];
    sub_29A1E234C(v18);
  }
}

void sub_29AF9CBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_29AF93AA0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetInvisedPrimPaths(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[114];
  v4 = a1[113];
  v5 = *a2;
  v6 = a2[1];
  if (v3 - v4 == v6 - v5)
  {
    if (v4 == v3)
    {
      return;
    }

    for (i = v5; *v4 == *i; ++i)
    {
      v4 += 8;
      if (v4 == v3)
      {
        return;
      }
    }
  }

  sub_29AFAFC7C(&v20, v5, v6);
  sub_29A31BE04(&v18, a1[113], a1[114]);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  sub_29AFAFD00(v20, &v21, v18, &v19, &v15, &v13);
  pxrInternal__aapl__pxrReserved__::SdfPath::RemoveDescendentPaths(&v15);
  v14[0] = v15;
  v14[1] = v16;
  if (v15 != v16)
  {
    v11 = sub_29A1E25CC(v14, v9, v10);
    sub_29AF96818(a1, v11);
  }

  if (a1 + 113 != a2)
  {
    sub_29A324D54((a1 + 113), *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::ApplyPendingUpdates(a1);
  v13 = &v15;
  sub_29A1E234C(&v13);
  sub_29A1E2AEC(&v18, v19);
  sub_29A1E2AEC(&v20, v21);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRigidXformOverrides(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 928);
  result = sub_29AFAFE74(a1 + 928, a2);
  if ((result & 1) == 0)
  {
    memset(v19, 0, sizeof(v19));
    v20 = 1065353216;
    v12 = *(a2 + 16);
    v13 = 0;
    if (v12)
    {
      v6 = sub_29AF9D414(&v12);
      sub_29AF96818(a1, (*v6 + 16));
    }

    memset(v18, 0, sizeof(v18));
    v12 = *(a1 + 944);
    v13 = 0;
    if (v12)
    {
      v7 = sub_29AF9D4CC(&v12);
      sub_29AF96818(a1, (*v7 + 16));
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    sub_29AF9D584(a1 + 1288, v19, v18);
    pxrInternal__aapl__pxrReserved__::SdfPath::RemoveDescendentPaths(&v15);
    v14[0] = v15;
    v14[1] = v16;
    if (v15 != v16)
    {
      v10 = sub_29A1E25CC(v14, v8, v9);
      sub_29AF96818(a1, v10);
    }

    if (v4 != a2)
    {
      *(a1 + 960) = *(a2 + 32);
      sub_29AFB1238(v4, *(a2 + 16), 0);
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::ApplyPendingUpdates(a1);
    v11 = &v15;
    sub_29A1E234C(&v11);
    v11 = v18;
    sub_29A65E064(&v11);
    return sub_29AFA17D0(v19);
  }

  return result;
}

void sub_29AF9D34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26)
{
  a12 = &a23;
  sub_29A1E234C(&a12);
  a12 = &a26;
  sub_29A65E064(&a12);
  sub_29AFA17D0(v26 - 144);
  _Unwind_Resume(a1);
}

void *sub_29AF9D414(void *result)
{
  if (*result == result[1])
  {
    sub_29B2CD188();
  }

  return result;
}

uint64_t sub_29AF9D44C(uint64_t a1)
{
  if (*a1 == *(a1 + 8))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::GfMatrix4d, pxrInternal__aapl__pxrReserved__::SdfPath::Hash>>::operator++() [T = const pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::GfMatrix4d, pxrInternal__aapl__pxrReserved__::SdfPath::Hash>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 = **a1;
  }

  return a1;
}

void *sub_29AF9D4CC(void *result)
{
  if (*result == result[1])
  {
    sub_29B2CD1D4();
  }

  return result;
}

uint64_t sub_29AF9D504(uint64_t a1)
{
  if (*a1 == *(a1 + 8))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::GfMatrix4d, pxrInternal__aapl__pxrReserved__::SdfPath::Hash>>::operator++() [T = pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::GfMatrix4d, pxrInternal__aapl__pxrReserved__::SdfPath::Hash>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 = **a1;
  }

  return a1;
}

uint64_t sub_29AF9D584(uint64_t result, uint64_t a2, pxrInternal__aapl__pxrReserved__::UsdObject **a3)
{
  v3 = result;
  if (*(a2 + 24) || *a3 != a3[1])
  {
    v39 = 0u;
    v40 = 0u;
    v41 = 1065353216;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v31 = *(a2 + 16);
    v32 = 0;
    if (v31)
    {
      v4 = *sub_29AFB0344(&v31);
      sub_29AFB0344(&v31);
      sub_29AFB037C(v3, (v4 + 16));
    }

    v35[0] = v40;
    v35[1] = 0;
    if (v40)
    {
      v5 = *sub_29AFB061C(v35);
      sub_29AFB061C(v35);
      v6 = (v5 + 16);
      if (v36 != v37)
      {
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v6);
      }

      sub_29A75A400(&v31, v6);
      sub_29A58BB1C(&v31, &v25);
      v20 = v32;
      v21 = &v31;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22 + 1);
      v23 = 0;
      v24 = 0;
      while (v26 != v21 || v25 != v20 || v27 != v22 || v28 != v23 || v29 != v24 || v30 != HIBYTE(v24))
      {
        sub_29A58BBEC(&v25, v15);
        v7 = sub_29AFB0654(v3, v15);
        if (v7)
        {
          v8 = atomic_load((v3 + 576));
          atomic_store(v8 - 1, (v7 + 160));
        }

        if ((v19 & 7) != 0)
        {
          atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
        sub_29A1DE3A4(&v17);
        if (v16)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v16, v9);
        }

        pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::increment(&v25);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22 + 1);
      sub_29A1DE3A4(&v22);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v27 + 1);
      sub_29A1DE3A4(&v27);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v34);
      sub_29A1DE3A4(&v33);
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v6);
    }

    v11 = *a3;
    v10 = a3[1];
    if (*a3 != v10)
    {
      do
      {
        if (sub_29AFB11A4((v3 + 584), v11))
        {
          sub_29A75A400(&v31, v11);
          sub_29A58BB1C(&v31, &v25);
          v20 = v32;
          v21 = &v31;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v22);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22 + 1);
          v23 = 0;
          v24 = 0;
          while (v26 != v21 || v25 != v20 || v27 != v22 || v28 != v23 || v29 != v24 || v30 != HIBYTE(v24))
          {
            sub_29A58BBEC(&v25, v15);
            v12 = sub_29AFB0654(v3, v15);
            if (v12)
            {
              v13 = atomic_load((v3 + 576));
              atomic_store(v13 - 1, (v12 + 160));
            }

            if ((v19 & 7) != 0)
            {
              atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
            sub_29A1DE3A4(&v17);
            if (v16)
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v16, v14);
            }

            pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::increment(&v25);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22 + 1);
          sub_29A1DE3A4(&v22);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v27 + 1);
          sub_29A1DE3A4(&v27);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v34);
          sub_29A1DE3A4(&v33);
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v11);
        }

        v11 = (v11 + 32);
      }

      while (v11 != v10);
    }

    v31 = &v36;
    sub_29A1E234C(&v31);
    return sub_29AFA17D0(&v39);
  }

  return result;
}

void sub_29AF9DB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  a19 = (v19 - 152);
  sub_29A1E234C(&a19);
  sub_29AFA17D0(v19 - 128);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRootVisibility(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, int a2)
{
  if (*(this + 1104) != a2)
  {
    *(this + 1104) = a2;
    v13[0] = this;
    memset(&v13[1], 0, 32);
    memset(v14, 0, sizeof(v14));
    memset(v15, 0, sizeof(v15));
    memset(v16, 0, sizeof(v16));
    v11 = *(this + 11);
    v12 = 0;
    while (v11 != v12)
    {
      v2 = *sub_29AF93F64(&v11);
      v3 = sub_29AF93F64(&v11);
      v4 = *v3;
      if (*(*v3 + 24) || (v9[0] = "usdImaging/delegate.cpp", v9[1] = "SetRootVisibility", v9[2] = 2401, v9[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRootVisibility(BOOL)", v10 = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v2 + 16)), v8 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v6, v7, Text), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "primInfo.adapter", v8) & 1) != 0))
      {
        (*(**(v4 + 24) + 200))(*(v4 + 24), v4 + 40, v2 + 16, v13);
      }

      sub_29AF93F9C(&v11);
    }

    v9[0] = &v16[1] + 1;
    sub_29AFA229C(v9);
    v9[0] = v16;
    sub_29A1E234C(v9);
    v9[0] = &v15[1] + 1;
    sub_29A1E234C(v9);
    v9[0] = v15;
    sub_29AFA2378(v9);
    v9[0] = &v14[1] + 1;
    sub_29AFA2378(v9);
    v9[0] = v14;
    sub_29A1E234C(v9);
    v9[0] = &v13[2];
    sub_29A1E234C(v9);
  }
}

void sub_29AF9DDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_29AF93AA0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRootInstancerId(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v3 = (this + 1108);
  if (*a2 != *v3)
  {
    sub_29A2258F0(v3, a2);
    sub_29A225948(this + 278, a2 + 1);
    v16[0] = this;
    memset(&v16[1], 0, 32);
    memset(v17, 0, sizeof(v17));
    memset(v18, 0, sizeof(v18));
    memset(v19, 0, sizeof(v19));
    v14 = *(this + 11);
    v15 = 0;
    while (v14 != v15)
    {
      v5 = *sub_29AF93F64(&v14);
      v6 = sub_29AF93F64(&v14);
      v7 = *v6;
      if (*(*v6 + 24) || (v12[0] = "usdImaging/delegate.cpp", v12[1] = "SetRootInstancerId", v12[2] = 2423, v12[3] = "void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SetRootInstancerId(const SdfPath &)", v13 = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v5 + 16)), v11 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v9, v10, Text), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v12, "primInfo.adapter", v11) & 1) != 0))
      {
        (*(**(v7 + 24) + 152))(*(v7 + 24), v7 + 40, v5 + 16, 0x10000, v16);
      }

      sub_29AF93F9C(&v14);
    }

    v12[0] = &v19[1] + 1;
    sub_29AFA229C(v12);
    v12[0] = v19;
    sub_29A1E234C(v12);
    v12[0] = &v18[1] + 1;
    sub_29A1E234C(v12);
    v12[0] = v18;
    sub_29AFA2378(v12);
    v12[0] = &v17[1] + 1;
    sub_29AFA2378(v12);
    v12[0] = v17;
    sub_29A1E234C(v12);
    v12[0] = &v16[2];
    sub_29A1E234C(v12);
  }
}

void sub_29AF9E008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_29AF93AA0(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetScenePrimPath@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, unsigned int **a4@<X3>, pxrInternal__aapl__pxrReserved__::SdfPath *a5@<X8>)
{
  sub_29AF9AC64(a1, a2, &v34);
  v10 = sub_29A2F4F50((a1 + 72), &v34);
  if (v10 && (v11 = v10[3]) != 0)
  {
    (*(*v11 + 312))(v11, &v34, a3, a4);
    if (sub_29AF49C14(9))
    {
      sub_29A008864(v28);
      if (a4)
      {
        v12 = *a4;
        v13 = a4[1];
        if (*a4 != v13)
        {
          do
          {
            v14 = pxrInternal__aapl__pxrReserved__::operator<<(&v29, v12);
            v15 = sub_29A00911C(v14, ": ", 2);
            v16 = MEMORY[0x29C2C1ED0](v15, v12[2]);
            sub_29A00911C(v16, ",", 1);
            v12 += 3;
          }

          while (v12 != v13);
        }
      }

      else
      {
        sub_29A00911C(&v29, "no instancerContext", 19);
      }

      if (sub_29AF49C14(9))
      {
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v34);
        v20 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a5);
        std::stringbuf::str();
        v23 = v27 >= 0 ? &__p : __p;
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("GetScenePrimPath(%s, %d) = %s [%s]\n", v21, v22, Text, a3, v20, v23);
        if (v27 < 0)
        {
          operator delete(__p);
        }
      }

      v28[0] = *MEMORY[0x29EDC9528];
      v24 = *(MEMORY[0x29EDC9528] + 72);
      *(v28 + *(v28[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
      v29 = v24;
      v30 = (MEMORY[0x29EDC9570] + 16);
      if (v32 < 0)
      {
        operator delete(v31[7].__locale_);
      }

      v30 = (MEMORY[0x29EDC9568] + 16);
      std::locale::~locale(v31);
      std::iostream::~basic_iostream();
      MEMORY[0x29C2C4390](&v33);
    }
  }

  else
  {
    v28[0] = "usdImaging/delegate.cpp";
    v28[1] = "GetScenePrimPath";
    v29 = 2441;
    v30 = "virtual SdfPath pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetScenePrimPath(const SdfPath &, int, HdInstancerContext *)";
    LOBYTE(v31[0].__locale_) = 0;
    v17 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v28, "GetScenePrimPath: Couldn't find rprim <%s>", v18, v17);
    sub_29A1DDD84(a5, &v34);
    sub_29A1DDDC0(a5 + 1, &v35);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v35);
  return sub_29A1DE3A4(&v34);
}

void sub_29AF9E370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_29A008B0C(&a20);
  sub_29A1DCEA8(v20);
  sub_29A1DCEA8((v21 - 72));
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetScenePrimPaths@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_29AF9AC64(a1, a2, &v17);
  v10 = sub_29A2F4F50((a1 + 72), &v17);
  if (v10 && (v11 = v10[3]) != 0)
  {
    (*(*v11 + 320))(v11, &v17, a3, a4);
  }

  else
  {
    v15[0] = "usdImaging/delegate.cpp";
    v15[1] = "GetScenePrimPaths";
    v15[2] = 2475;
    v15[3] = "virtual SdfPathVector pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetScenePrimPaths(const SdfPath &, std::vector<int>, std::vector<HdInstancerContext> *)";
    v16 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v15, "GetScenePrimPaths: Couldn't find rprim <%s>", v13, Text);
    sub_29A34A4F0(a5, (a3[1] - *a3) >> 2, &v17);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
  return sub_29A1DE3A4(&v17);
}

void sub_29AF9E4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::PopulateSelection(uint64_t *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  if (a1[108])
  {
    pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::ApplyPendingUpdates(a1);
    if (sub_29AF49C14(9))
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Prim selection: %s\n", v6, v7, Text);
    }

    v8 = sub_29A5A70E0(a1 + 108);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(v8, a3, &v10);
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v10);
  }

  return 0;
}

void sub_29AF9E9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va4, a3);
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  va_copy(va3, va2);
  v15 = va_arg(va3, void);
  va_copy(va4, va3);
  v17 = va_arg(va4, void);
  v19 = va_arg(va4, void);
  v20 = va_arg(va4, void);
  v21 = va_arg(va4, void);
  va_copy(v4, va1);
  sub_29A1E234C(va);
  sub_29A1DCEA8(va2);
  sub_29A57F434(va3);
  sub_29A57F434(va4);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetTransform@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, _OWORD *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v17, 1.0);
  sub_29AF9AC64(this, a2, &v15);
  v6 = sub_29A2F4F50(this + 9, &v15);
  if (v6)
  {
    v7 = v6 + 3;
  }

  else
  {
    v7 = 0;
  }

  if (v6 || (v13[0] = "usdImaging/delegate.cpp", v13[1] = "GetTransform", v13[2] = 2572, v13[3] = "virtual GfMatrix4d pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetTransform(const SdfPath &)", v14 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v13, "primInfo", 0) & 1) != 0))
  {
    (*(**v7 + 376))(*v7, v7 + 2, &v15, 0, *(this + 140));
  }

  else
  {
    v9 = v17[5];
    a3[4] = v17[4];
    a3[5] = v9;
    v10 = v17[7];
    a3[6] = v17[6];
    a3[7] = v10;
    v11 = v17[1];
    *a3 = v17[0];
    a3[1] = v11;
    v12 = v17[3];
    a3[2] = v17[2];
    a3[3] = v12;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
  return sub_29A1DE3A4(&v15);
}

void sub_29AF9EB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SampleTransform(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, float *a4, pxrInternal__aapl__pxrReserved__::GfMatrix4d *a5)
{
  sub_29AF9AC64(this, a2, &v15);
  v9 = sub_29A2F4F50(this + 9, &v15);
  if (v9)
  {
    v10 = v9 + 3;
  }

  else
  {
    v10 = 0;
  }

  if (v9 || (v13[0] = "usdImaging/delegate.cpp", v13[1] = "SampleTransform", v13[2] = 2592, v13[3] = "virtual size_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SampleTransform(const SdfPath &, size_t, float *, GfMatrix4d *)", v14 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v13, "primInfo", 0) & 1) != 0))
  {
    v11 = (*(**v10 + 384))(*v10, v10 + 2, &v15, a3, a4, a5, *(this + 140));
  }

  else
  {
    v11 = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
  sub_29A1DE3A4(&v15);
  return v11;
}

void sub_29AF9ECC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::IsInInvisedPaths(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(this + 113);
  v3 = *(this + 114);
  if (v2 == v3)
  {
    return 0;
  }

  do
  {
    result = pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a2, v2);
    if (result)
    {
      break;
    }

    v2 = (v2 + 8);
  }

  while (v2 != v3);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetVisible(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (*(this + 1104) != 1)
  {
    return 0;
  }

  sub_29AF9AC64(this, a2, &v11);
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(&v11))
  {
    v3 = *(this + 113);
    v4 = *(this + 114);
    while (v3 != v4)
    {
      if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(&v11, v3))
      {
        goto LABEL_16;
      }

      v3 = (v3 + 8);
    }
  }

  v6 = sub_29A2F4F50(this + 9, &v11);
  if (v6)
  {
    v7 = v6 + 3;
  }

  else
  {
    v7 = 0;
  }

  if (v6 || (v9[0] = "usdImaging/delegate.cpp", v9[1] = "GetVisible", v9[2] = 2632, v9[3] = "virtual BOOL pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetVisible(const SdfPath &)", v10 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "primInfo", 0) & 1) != 0))
  {
    v5 = (*(**v7 + 360))(*v7, v7 + 2, &v11, *(this + 140));
  }

  else
  {
LABEL_16:
    v5 = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
  sub_29A1DE3A4(&v11);
  return v5;
}

void sub_29AF9EE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_Get@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  sub_29AF9AC64(a1, a2, &v10);
  *(a4 + 8) = 0;
  if (a3)
  {
    sub_29A19D79C(a3);
  }

  v7 = sub_29A2F4F50((a1 + 72), &v10);
  if (v7)
  {
    v8 = v7 + 3;
  }

  else
  {
    v8 = 0;
  }

  if (v7 || (v12[0] = "usdImaging/delegate.cpp", v12[1] = "_Get", v12[2] = 2670, v12[3] = "VtValue pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_Get(const SdfPath &, const TfToken &, VtIntArray *)", v13 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v12, "primInfo", 0) & 1) != 0))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((v8 + 2));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
  return sub_29A1DE3A4(&v10);
}

void sub_29AF9F078(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(v2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetCoordSysBindings@<X0>(_DWORD *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  if (this[2249])
  {
    v4 = this;
    sub_29AF9AC64(this, a2, &v9);
    v5 = sub_29A2F4F50(v4 + 9, &v9);
    if (v5)
    {
      v6 = v5 + 3;
    }

    else
    {
      v6 = 0;
    }

    if (v5 || (v7[0] = "usdImaging/delegate.cpp", v7[1] = "GetCoordSysBindings", v7[2] = 2696, v7[3] = "virtual HdIdVectorSharedPtr pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetCoordSysBindings(const SdfPath &)", v8 = 0, pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v7, "primInfo", 0)))
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((v6 + 2));
    }

    *a3 = 0;
    a3[1] = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
    return sub_29A1DE3A4(&v9);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return this;
}

void sub_29AF9F500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF9F520(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_SamplePrimvar(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  sub_29AF9AC64(a1, a2, &v19);
  v13 = sub_29A2F4F50((a1 + 72), &v19);
  if (v13)
  {
    v14 = v13 + 3;
  }

  else
  {
    v14 = 0;
  }

  if (v13 || (v17[0] = "usdImaging/delegate.cpp", v17[1] = "_SamplePrimvar", v17[2] = 2749, v17[3] = "size_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::_SamplePrimvar(const SdfPath &, const TfToken &, size_t, float *, VtValue *, VtIntArray *)", LOBYTE(v18) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v17, "primInfo", 0) & 1) != 0))
  {
    if (a7)
    {
      sub_29A19D6E4(v17, 0);
      if (v17 != a7)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
      }

      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }

    v15 = (*(**v14 + 288))(*v14, v14 + 2, &v19, a3, a4, a5, a6, 0, *(a1 + 1120));
  }

  else
  {
    v15 = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v20);
  sub_29A1DE3A4(&v19);
  return v15;
}

void sub_29AF9F6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetReprSelector@<X0>(void *result@<X0>, atomic_uint **a2@<X8>)
{
  v2 = result[143];
  *a2 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v3;
    }
  }

  v4 = result[144];
  a2[1] = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      a2[1] = v5;
    }
  }

  v6 = result[145];
  a2[2] = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      a2[2] = v7;
    }
  }

  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetCategories@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29AF9AC64(this, a2, &v9);
  v5 = sub_29A2F4F50(this + 9, &v9);
  v6 = v5;
  if (v5 && (v7 = v5[3]) != 0 && (*(*v7 + 88))(v7) && (*(*v6[3] + 352))(v6[3], &v9))
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdImaging_CollectionCache::ComputeCollectionsContainingPath((this + 6208), &v9, a3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
  return sub_29A1DE3A4(&v9);
}

void sub_29AF9F87C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetInstanceCategories@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  sub_29AF9AC64(this, a2, &v10);
  v5 = sub_29A2F4F50(this + 9, &v10);
  if (v5)
  {
    v6 = v5 + 3;
  }

  else
  {
    v6 = 0;
  }

  if (v5 || (v8[0] = "usdImaging/delegate.cpp", v8[1] = "GetInstanceCategories", v8[2] = 2807, v8[3] = "virtual std::vector<VtArray<TfToken>> pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetInstanceCategories(const SdfPath &)", v9 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v8, "primInfo", 0) & 1) != 0))
  {
    (*(**v6 + 248))(*v6, v6 + 2);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
  return sub_29A1DE3A4(&v10);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetPrimvarDescriptors@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  sub_29AF9AC64(a1, a2, &v17);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if ((sub_29AF9FB30(a1 + 296, &v17, &v14) & 1) == 0)
  {
    v7 = sub_29A2F4F50((a1 + 72), &v17);
    v8 = v7 ? v7 + 3 : 0;
    if (v7 || (v12[0] = "usdImaging/delegate.cpp", v12[1] = "GetPrimvarDescriptors", v12[2] = 2839, v12[3] = "virtual HdPrimvarDescriptorVector pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetPrimvarDescriptors(const SdfPath &, HdInterpolation)", v13 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v12, "primInfo", 0) & 1) != 0))
    {
      (*(**v8 + 112))(*v8, v8 + 2, &v17, 34912, 0, *(a1 + 1120));
      sub_29AF9FB30(a1 + 296, &v17, &v14);
    }
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v9 = v14;
  v10 = v15;
  while (v9 != v10)
  {
    if (*(v9 + 8) == a3)
    {
      sub_29AE70BB0(a4, v9);
    }

    v9 += 32;
  }

  v12[0] = &v14;
  sub_29ABEE9FC(v12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
  return sub_29A1DE3A4(&v17);
}

void sub_29AF9FAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  a10 = &a15;
  sub_29ABEE9FC(&a10);
  sub_29A1DCEA8((v15 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_29AF9FB30(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  sub_29AFA2658(a2, &v7);
  v5 = sub_29AFA25E4(a1, &v7, a3);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
  sub_29A1DE3A4(&v7);
  return v5;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetInstanceIndices@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, uint64_t a4@<X8>)
{
  v29 = *MEMORY[0x29EDCA608];
  sub_29AF9AC64(this, a3, &v20);
  v28 = 0;
  sub_29AF9AC64(this, a2, &v18);
  v8 = sub_29A2F4F50(this + 9, &v18);
  if (v8)
  {
    v9 = v8 + 3;
  }

  else
  {
    v9 = 0;
  }

  if (v8 || (v22 = "usdImaging/delegate.cpp", v23 = "GetInstanceIndices", v24 = 2878, v25 = "virtual VtIntArray pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetInstanceIndices(const SdfPath &, const SdfPath &)", v26 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v22, "primInfo", 0) & 1) != 0))
  {
    (*(**v9 + 504))(&v22, *(this + 140));
    sub_29A18606C(&v27, &v22);
    sub_29A186B14(&v22);
  }

  if (v28)
  {
    v10 = sub_29A19D57C(&v27);
    v11 = *(v10 + 1);
    *a4 = *v10;
    *(a4 + 16) = v11;
    v12 = v10[4];
    *(a4 + 32) = v12;
    if (v12)
    {
      v13 = (v12 - 16);
      if (*(a4 + 24))
      {
        v13 = *(a4 + 24);
      }

      atomic_fetch_add_explicit(v13, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v22 = "usdImaging/delegate.cpp";
    v23 = "GetInstanceIndices";
    v24 = 2885;
    v25 = "virtual VtIntArray pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetInstanceIndices(const SdfPath &, const SdfPath &)";
    v26 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v15 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v22, "Empty InstanceIndices (%s, %s)\n", v16, Text, v15);
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
  sub_29A1DE3A4(&v18);
  sub_29A186B14(&v27);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v21);
  return sub_29A1DE3A4(&v20);
}

void sub_29AF9FDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  sub_29A1DCEA8(va);
  sub_29A186B14(va2);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetInstancerTransform@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, _OWORD *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a3, 1.0);
  sub_29AF9AC64(this, a2, &v21);
  v6 = sub_29A2F4F50(this + 9, &v21);
  if (v6)
  {
    v7 = v6 + 3;
  }

  else
  {
    v7 = 0;
  }

  if (v6 || (*&v13 = "usdImaging/delegate.cpp", *(&v13 + 1) = "GetInstancerTransform", *&v14 = 2901, *(&v14 + 1) = "virtual GfMatrix4d pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetInstancerTransform(const SdfPath &)", LOBYTE(v15) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v13, "primInfo", 0) & 1) != 0))
  {
    (*(**v7 + 256))(&v13, *(this + 140));
    v8 = v18;
    a3[4] = v17;
    a3[5] = v8;
    v9 = v20;
    a3[6] = v19;
    a3[7] = v9;
    v10 = v14;
    *a3 = v13;
    a3[1] = v10;
    v11 = v16;
    a3[2] = v15;
    a3[3] = v11;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
  return sub_29A1DE3A4(&v21);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SampleInstancerTransform(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, float *a4, pxrInternal__aapl__pxrReserved__::GfMatrix4d *a5)
{
  sub_29AF9AC64(this, a2, &v15);
  v9 = sub_29A2F4F50(this + 9, &v15);
  if (v9)
  {
    v10 = v9 + 3;
  }

  else
  {
    v10 = 0;
  }

  if (v9 || (v13[0] = "usdImaging/delegate.cpp", v13[1] = "SampleInstancerTransform", v13[2] = 2919, v13[3] = "virtual size_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SampleInstancerTransform(const SdfPath &, size_t, float *, GfMatrix4d *)", v14 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v13, "primInfo", 0) & 1) != 0))
  {
    v11 = (*(**v10 + 264))(*v10, v10 + 2, &v15, a3, a4, a5, *(this + 140));
  }

  else
  {
    v11 = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
  sub_29A1DE3A4(&v15);
  return v11;
}

void sub_29AFA0098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetInstancerId(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29AF9AC64(this, a2, &v9);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v7);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v8);
  v3 = sub_29A2F4F50(this + 9, &v9);
  if (v3)
  {
    v4 = v3 + 3;
  }

  else
  {
    v4 = 0;
  }

  if (!v3)
  {
    v5[0] = "usdImaging/delegate.cpp";
    v5[1] = "GetInstancerId";
    v5[2] = 2936;
    v5[3] = "virtual SdfPath pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetInstancerId(const SdfPath &)";
    v6 = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v5, "primInfo", 0) & 1) == 0)
    {
      sub_29AF9B468(this, &v7, v5);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }
  }

  (*(**v4 + 272))(v5);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29AFA027C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  sub_29A1DCEA8(va);
  sub_29A1DCEA8(va1);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetInstancerPrototypes@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  sub_29AF9AC64(this, a2, &v12);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = sub_29A2F4F50(this + 9, &v12);
  if (v5)
  {
    v6 = v5 + 3;
  }

  else
  {
    v6 = 0;
  }

  if (v5 || (*&v8 = "usdImaging/delegate.cpp", *(&v8 + 1) = "GetInstancerPrototypes", v9 = 2958, v10 = "virtual SdfPathVector pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetInstancerPrototypes(const SdfPath &)", v11 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v8, "primInfo", 0) & 1) != 0))
  {
    (*(**v6 + 280))(&v8);
    sub_29A1E23D4(a3);
    *a3 = v8;
    a3[2] = v9;
    v9 = 0;
    v8 = 0uLL;
    v14 = &v8;
    sub_29A1E234C(&v14);
  }

  if (a3[1] != *a3)
  {
    sub_29AF9B468(this, *a3, &v8);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
  return sub_29A1DE3A4(&v12);
}

void sub_29AFA0454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15)
{
  sub_29A1E234C(&a9);
  sub_29A1DCEA8(&a15);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetMaterialId@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, _DWORD *a3@<X8>)
{
  sub_29AF9AC64(this, a2, &v18);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v16);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v17);
  v6 = sub_29A2F4F50(this + 9, &v18);
  if (v6)
  {
    v7 = v6 + 3;
  }

  else
  {
    v7 = 0;
  }

  if (v6 || (v14[0] = "usdImaging/delegate.cpp", v14[1] = "GetMaterialId", v14[2] = 2979, v14[3] = "virtual SdfPath pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetMaterialId(const SdfPath &)", v15 = 0, Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2), v10 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v18), v13 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("No primInfo for <%s> <%s>", v11, v12, Text, v10), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v14, "primInfo", v13) & 1) != 0))
  {
    (*(**v7 + 432))(v14, *(this + 140));
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  sub_29AF9B468(this, &v16, a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17);
  sub_29A1DE3A4(&v16);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
  return sub_29A1DE3A4(&v18);
}

void sub_29AFA0610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A1DCEA8(va);
  sub_29A1DCEA8((v9 - 56));
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetMaterialResource@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29AF9AC64(this, a2, &v10);
  v5 = sub_29A2F4F50(this + 9, &v10);
  if (v5)
  {
    v6 = v5 + 3;
  }

  else
  {
    v6 = 0;
  }

  if (v5 || (v8[0] = "usdImaging/delegate.cpp", v8[1] = "GetMaterialResource", v8[2] = 2993, v8[3] = "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetMaterialResource(const SdfPath &)", v9 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v8, "primInfo", 0) & 1) != 0))
  {
    (*(**v6 + 440))(*v6, v6 + 2, &v10, *(this + 140));
  }

  else
  {
    *(a3 + 8) = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
  return sub_29A1DE3A4(&v10);
}

void sub_29AFA0734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetLightParamValue@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, uint64_t a4@<X8>)
{
  v17 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v17);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v17 + 1);
  if (*a2 == v17)
  {
    v12 = "usdImaging/delegate.cpp";
    v13 = "GetLightParamValue";
    v14 = 3005;
    v15 = "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetLightParamValue(const SdfPath &, const TfToken &)";
    v16 = 0;
    v11 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v12, "id != SdfPath()", 0);
    result = sub_29A1DCEA8(&v17);
    if ((v11 & 1) == 0)
    {
      *(a4 + 8) = 0;
      return result;
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17 + 1);
    sub_29A1DE3A4(&v17);
  }

  sub_29AF9AC64(this, a2, &v17);
  v8 = sub_29A2F4F50(this + 9, &v17);
  if (v8)
  {
    v9 = v8 + 3;
  }

  else
  {
    v9 = 0;
  }

  if (v8 || (v12 = "usdImaging/delegate.cpp", v13 = "GetLightParamValue", v14 = 3011, v15 = "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetLightParamValue(const SdfPath &, const TfToken &)", v16 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v12, "primInfo", 0) & 1) != 0))
  {
    (*(**v9 + 344))(*v9, v9 + 2, &v17, a3, *(this + 140));
  }

  else
  {
    *(a4 + 8) = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17 + 1);
  return sub_29A1DE3A4(&v17);
}

void sub_29AFA08F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdCameraTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetCameraParamValue@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, uint64_t a4@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!result)
  {
    result = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  if ((*(result + 23) ^ *a3) > 7)
  {
    sub_29AF9AC64(this, a2, &v13);
    v9 = sub_29A2F4F50(this + 9, &v13);
    if (v9)
    {
      v10 = v9 + 3;
    }

    else
    {
      v10 = 0;
    }

    if (v9 || (v11[0] = "usdImaging/delegate.cpp", v11[1] = "GetCameraParamValue", v11[2] = 3034, v11[3] = "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetCameraParamValue(const SdfPath &, const TfToken &)", v12 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v11, "primInfo", 0) & 1) != 0))
    {
      (*(**v10 + 392))(*v10, v10 + 2, &v13, a3, 0, *(this + 140));
    }

    else
    {
      *(a4 + 8) = 0;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
    return sub_29A1DE3A4(&v13);
  }

  else
  {
    *(a4 + 8) = &off_2A2078C98 + 3;
    *a4 = *(this + 2248);
  }

  return result;
}

void sub_29AFA0A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetVolumeFieldDescriptors@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  sub_29AF9AC64(this, a2, &v10);
  v5 = sub_29A2F4F50(this + 9, &v10);
  if (v5)
  {
    v6 = v5 + 3;
  }

  else
  {
    v6 = 0;
  }

  if (v5 || (v8[0] = "usdImaging/delegate.cpp", v8[1] = "GetVolumeFieldDescriptors", v8[2] = 3052, v8[3] = "virtual HdVolumeFieldDescriptorVector pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetVolumeFieldDescriptors(const SdfPath &)", v9 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v8, "primInfo", 0) & 1) != 0))
  {
    (*(**v6 + 336))(*v6, v6 + 2, &v10, *(this + 140));
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
  return sub_29A1DE3A4(&v10);
}

void sub_29AFA0B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetExtComputationSceneInputNames@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  sub_29AF9AC64(this, a2, &v9);
  v5 = sub_29A2F4F50(this + 9, &v9);
  if (v5 || (v7[0] = "usdImaging/delegate.cpp", v7[1] = "GetExtComputationSceneInputNames", v7[2] = 3068, v7[3] = "virtual TfTokenVector pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetExtComputationSceneInputNames(const SdfPath &)", v8 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v7, "primInfo", 0) & 1) != 0))
  {
    (*(*v5[3] + 448))(v5[3], &v9);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
  return sub_29A1DE3A4(&v9);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetExtComputationInputDescriptors@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  sub_29AF9AC64(this, a2, &v10);
  v5 = sub_29A2F4F50(this + 9, &v10);
  if (v5)
  {
    v6 = v5 + 3;
  }

  else
  {
    v6 = 0;
  }

  if (v5 || (v8[0] = "usdImaging/delegate.cpp", v8[1] = "GetExtComputationInputDescriptors", v8[2] = 3083, v8[3] = "virtual HdExtComputationInputDescriptorVector pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetExtComputationInputDescriptors(const SdfPath &)", v9 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v8, "primInfo", 0) & 1) != 0))
  {
    (*(**v6 + 456))(*v6, v6 + 2, &v10, 0);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
  return sub_29A1DE3A4(&v10);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetExtComputationOutputDescriptors@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  sub_29AF9AC64(this, a2, &v10);
  v5 = sub_29A2F4F50(this + 9, &v10);
  if (v5)
  {
    v6 = v5 + 3;
  }

  else
  {
    v6 = 0;
  }

  if (v5 || (v8[0] = "usdImaging/delegate.cpp", v8[1] = "GetExtComputationOutputDescriptors", v8[2] = 3099, v8[3] = "virtual HdExtComputationOutputDescriptorVector pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetExtComputationOutputDescriptors(const SdfPath &)", v9 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v8, "primInfo", 0) & 1) != 0))
  {
    (*(**v6 + 464))(*v6, v6 + 2, &v10, 0);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
  return sub_29A1DE3A4(&v10);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetExtComputationPrimvarDescriptors@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_29AF9AC64(a1, a2, &v12);
  v7 = sub_29A2F4F50((a1 + 72), &v12);
  if (v7)
  {
    v8 = v7 + 3;
  }

  else
  {
    v8 = 0;
  }

  if (v7 || (v10[0] = "usdImaging/delegate.cpp", v10[1] = "GetExtComputationPrimvarDescriptors", v10[2] = 3116, v10[3] = "virtual HdExtComputationPrimvarDescriptorVector pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetExtComputationPrimvarDescriptors(const SdfPath &, HdInterpolation)", v11 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "primInfo", 0) & 1) != 0))
  {
    (*(**v8 + 472))(*v8, v8 + 2, &v12, a3, 0);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
  return sub_29A1DE3A4(&v12);
}

void sub_29AFA0FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetExtComputationInput@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, uint64_t a4@<X8>)
{
  sub_29AF9AC64(this, a2, &v12);
  v7 = sub_29A2F4F50(this + 9, &v12);
  if (v7)
  {
    v8 = v7 + 3;
  }

  else
  {
    v8 = 0;
  }

  if (v7 || (v10[0] = "usdImaging/delegate.cpp", v10[1] = "GetExtComputationInput", v10[2] = 3135, v10[3] = "virtual VtValue pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetExtComputationInput(const SdfPath &, const TfToken &)", v11 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "primInfo", 0) & 1) != 0))
  {
    (*(**v8 + 480))(*v8, v8 + 2, &v12, a3, 0, *(this + 140));
  }

  else
  {
    *(a4 + 8) = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
  return sub_29A1DE3A4(&v12);
}

void sub_29AFA10EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SampleExtComputationInput(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t a4, float *a5, pxrInternal__aapl__pxrReserved__::VtValue *a6)
{
  sub_29AF9AC64(this, a2, &v17);
  v11 = sub_29A2F4F50(this + 9, &v17);
  if (v11)
  {
    v12 = v11 + 3;
  }

  else
  {
    v12 = 0;
  }

  if (v11 || (v15[0] = "usdImaging/delegate.cpp", v15[1] = "SampleExtComputationInput", v15[2] = 3156, v15[3] = "virtual size_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::SampleExtComputationInput(const SdfPath &, const TfToken &, size_t, float *, VtValue *)", v16 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v15, "primInfo", 0) & 1) != 0))
  {
    v13 = (*(**v12 + 488))(*v12, v12 + 2, &v17, a3, 0, a4, a5, a6, *(this + 140));
  }

  else
  {
    v13 = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
  sub_29A1DE3A4(&v17);
  return v13;
}

void sub_29AFA1228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetExtComputationKernel@<X0>(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a2);
  if (result)
  {
    sub_29AF9AC64(this, a2, &v11);
    v7 = sub_29A2F4F50(this + 9, &v11);
    if (v7)
    {
      v8 = v7 + 3;
    }

    else
    {
      v8 = 0;
    }

    if (v7 || (v9[0] = "usdImaging/delegate.cpp", v9[1] = "GetExtComputationKernel", v9[2] = 3177, v9[3] = "virtual std::string pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::GetExtComputationKernel(const SdfPath &)", v10 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "primInfo", 0) & 1) != 0))
    {
      (*(**v8 + 496))(*v8, v8 + 2, &v11, 0);
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
    return sub_29A1DE3A4(&v11);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void sub_29AFA1360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::InvokeExtComputation(pxrInternal__aapl__pxrReserved__::UsdImagingDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::HdExtComputationContext *a3)
{
  sub_29AF9AC64(this, a2, &v21);
  v5 = sub_29A2F4F50(this + 9, &v21);
  if (v5)
  {
    v6 = v5 + 3;
  }

  else
  {
    v6 = 0;
  }

  if (v5 || (v19[0] = "usdImaging/delegate.cpp", v19[1] = "InvokeExtComputation", v19[2] = 3193, v19[3] = "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::InvokeExtComputation(const SdfPath &, HdExtComputationContext *)", v20 = 0, v9 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v21), v12 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s\n", v10, v11, v9), pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v19, "primInfo", v12)))
  {
    v7 = *v6;
    if (!*v6)
    {
      LOBYTE(v18) = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v21);
      v16 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s\n", v14, v15, Text, "usdImaging/delegate.cpp", "InvokeExtComputation", 3194, "virtual void pxrInternal__aapl__pxrReserved__::UsdImagingDelegate::InvokeExtComputation(const SdfPath &, HdExtComputationContext *)", v18);
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v17, "primInfo->adapter", v16))
      {
        goto LABEL_7;
      }

      v7 = *v6;
    }

    (*(*v7 + 240))(v7, &v21, a3);
  }

LABEL_7:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
  return sub_29A1DE3A4(&v21);
}

uint64_t sub_29AFA14F4(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x38);
  v5[6] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AFA164C(uint64_t a1)
{
  sub_29AFA1688(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29AFA16D0(a1, v2);
  return a1;
}

uint64_t sub_29AFA1688(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *v2;
  *v2 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      result = sub_29AFA16D0(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29AFA16D0(uint64_t a1, tbb::internal *this)
{
  if (*(this + 48))
  {
    sub_29AFA1714(a1, this);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

_DWORD *sub_29AFA1714(uint64_t a1, uint64_t a2)
{
  v5 = (a2 + 24);
  sub_29ABEE9FC(&v5);
  v3 = *(a2 + 16);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 12));
  return sub_29A1DE3A4((a2 + 8));
}

_DWORD *sub_29AFA1778(uint64_t a1)
{
  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29AFA17D0(uint64_t a1)
{
  sub_29AFA180C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AFA180C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AFA1850((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

pxrInternal__aapl__pxrReserved__ *sub_29AFA1850(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  result = *(a1 + 8);
  if (result)
  {

    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result, v3);
  }

  return result;
}

uint64_t *sub_29AFA18C0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A7ED778((a1 + 1), 8uLL, &v5);
  sub_29A7ED8D0((a1 + 71), 8uLL, &v6);
  return a1;
}

void sub_29AFA1940(_Unwind_Exception *a1, void *a2)
{
  sub_29A7EC1E8((v2 + 1), a2);
  if ((*v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AFA1974(uint64_t a1)
{
  sub_29AFA19B0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AFA19B0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AFA19F4((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

pxrInternal__aapl__pxrReserved__ *sub_29AFA19F4(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  result = *(a1 + 8);
  if (result)
  {

    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result, v3);
  }

  return result;
}

uint64_t sub_29AFA1A78(uint64_t a1)
{
  sub_29AFA1AB4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AFA1AB4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AFA1AF8((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

pxrInternal__aapl__pxrReserved__ *sub_29AFA1AF8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  result = *(a1 + 8);
  if (result)
  {

    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result, v4);
  }

  return result;
}

uint64_t sub_29AFA1B80(uint64_t a1)
{
  sub_29AFA1BBC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AFA1BBC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AFA1C00((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

pxrInternal__aapl__pxrReserved__ *sub_29AFA1C00(uint64_t a1)
{
  sub_29AFA1C7C((a1 + 32));
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  result = *(a1 + 8);
  if (result)
  {

    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result, v3);
  }

  return result;
}

void sub_29AFA1C7C(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_29B2943EC(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      if (*a1)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
      }

      operator delete((a1[4] - 16));
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

uint64_t sub_29AFA1D18(uint64_t a1)
{
  sub_29AFA1D54(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AFA1D54(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AFA1D98((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

pxrInternal__aapl__pxrReserved__ *sub_29AFA1D98(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  result = *(a1 + 8);
  if (result)
  {

    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result, v3);
  }

  return result;
}

uint64_t sub_29AFA1E08(uint64_t a1)
{
  sub_29AFA1E44(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AFA1E44(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AFA1E88((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

pxrInternal__aapl__pxrReserved__ *sub_29AFA1E88(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  result = *(a1 + 8);
  if (result)
  {

    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result, v3);
  }

  return result;
}

uint64_t sub_29AFA1EF8(uint64_t a1)
{
  sub_29AFA1F34(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AFA1F34(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29B2CC770((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29AFA1F78(uint64_t a1)
{
  sub_29AFA1FB4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AFA1FB4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29B2CC6A4((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29AFA1FF8(uint64_t a1)
{
  sub_29AFA2034(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AFA2034(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29B2CC5D8((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

pxrInternal__aapl__pxrReserved__::UsdImaging_MaterialBindingImplData *sub_29AFA2078(pxrInternal__aapl__pxrReserved__::UsdImaging_MaterialBindingImplData *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdImaging_MaterialBindingImplData::ClearCaches(a1);
  sub_29A7EC098(a1 + 568, v2);
  sub_29A7EC1E8(a1 + 8, v3);
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

uint64_t sub_29AFA20CC(uint64_t a1)
{
  sub_29AFA2108(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AFA2108(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AEC0AF8(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29AFA214C(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AFA164C(a1 + 16);
  return a1;
}

uint64_t sub_29AFA2180(uint64_t a1)
{
  sub_29AFA21BC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AFA21BC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AFA2200((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29AFA2200(uint64_t a1)
{
  v2 = (a1 + 64);
  sub_29A1DE554((a1 + 88), 0);
  v8 = v2;
  sub_29A1E234C(&v8);
  v3 = *(a1 + 48);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 44));
  sub_29A1DE3A4((a1 + 40));
  v5 = *(a1 + 32);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5, v4);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

void sub_29AFA229C(void ***a1)
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
        sub_29AFA2324(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29AFA2324(uint64_t a1, _DWORD *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 3);
  sub_29A1DE3A4(a2 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 1);

  return sub_29A1DE3A4(a2);
}

void sub_29AFA2378(void ***a1)
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
        v4 -= 16;
        sub_29AFA2400(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29AFA2400(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 12));
  result = sub_29A1DE3A4((a2 + 8));
  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t sub_29AFA244C(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  sub_29A1DDD84((a1 + 16), (a2 + 16));
  sub_29A1DDDC0((a1 + 20), (a2 + 20));
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  v6 = a3[1];
  *(a1 + 32) = *a3;
  *(a1 + 40) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

uint64_t sub_29AFA24D0(uint64_t a1)
{
  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

uint64_t sub_29AFA25E4(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  sub_29AFA271C(a1 + 8, a2, v9);
  if (v9[0])
  {
    v5 = 0;
  }

  else
  {
    v5 = v9[1] == a1 + 24;
  }

  v6 = !v5;
  if (v6 == 1 && v9[0] + 24 != a3)
  {
    sub_29AFA2A80(a3, *(v9[0] + 24), *(v9[0] + 32), (*(v9[0] + 32) - *(v9[0] + 24)) >> 5);
  }

  return v6;
}

uint64_t sub_29AFA2658@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A14F9F80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F9F80))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&qword_2A14F9F78, "primvars");
    __cxa_atexit(sub_29A424A8C, &qword_2A14F9F78, &dword_299FE7000);
    __cxa_guard_release(&qword_2A14F9F80);
  }

  return sub_29AC3C228(a2, a1, &qword_2A14F9F78);
}

void sub_29AFA271C(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v6 = bswap64(0x9E3779B97F4A7C55 * (*(a2 + 1) & 0xFFFFFFFFFFFFFFF8));
  v7 = bswap64(0x9E3779B97F4A7C55 * (v6 + ((v5 + v6 + (v5 + v6) * (v5 + v6)) >> 1)));
  v17 = 0;
  v18 = v7;
  v8 = &v18;
  for (i = 7; i != -1; --i)
  {
    v10 = *v8++;
    *(&v17 + i) = byte_29B734F74[v10];
  }

  v11 = v17;
  v12 = a1 + 16;
  sub_29AFA282C(a1, v7, &v18);
  v13 = v18;
  if (v18)
  {
    v14 = v11 | 1;
    while (1)
    {
      v15 = v13[6];
      if (v15 > v14)
      {
        break;
      }

      if (v15 == v14 && v13[1] == *a2 && (*(a2 + 1) ^ v13[2]) < 8uLL)
      {
        goto LABEL_15;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    v13 = 0;
LABEL_15:
    *a3 = v13;
  }

  else
  {
LABEL_13:
    *a3 = 0;
  }

  a3[1] = v12;
}

void sub_29AFA282C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
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
    sub_29AFA28C8(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29AFA28C8(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29AFA28C8(a1, v4);
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

  sub_29AFA29AC(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29AFA29AC@<X0>(uint64_t a1@<X0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0x38);
  *(result + 6) = a3;
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
      v10 = i[6];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AFA16D0(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

uint64_t sub_29AFA2A80(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    sub_29AE78200(a1);
    if (a4 >> 59)
    {
      sub_29A00C9A4();
    }

    v9 = a1[2] - *a1;
    v10 = v9 >> 4;
    if (v9 >> 4 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_29A15A71C(a1, v11);
    result = sub_29ACCD254(a1, a2, a3, a1[1]);
    goto LABEL_11;
  }

  v13 = a1[1] - v8;
  if (a4 > v13 >> 5)
  {
    sub_29AE75A78(&v15, a2, a2 + v13, v8);
    result = sub_29ACCD254(a1, (a2 + v13), a3, a1[1]);
LABEL_11:
    a1[1] = result;
    return result;
  }

  sub_29AE75A78(&v16, a2, a3, v8);
  return sub_29ABEEA50(a1, v14);
}

uint64_t sub_29AFA2B9C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_29AFA2C54(a1, 8uLL, &v11);
  v8[70] = a4;
  v9 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v8);
  sub_29A1E21F4((a1 + 568), v9);
  sub_29A1E2240((a1 + 572), v9 + 1);
  *(a1 + 576) = 1;
  sub_29AFA2F58(a1 + 584, a3);
  *(a1 + 624) = a2;
  return a1;
}

void sub_29AFA2C30(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v1 + 568));
  sub_29AFA3380(v1, v3);
  _Unwind_Resume(a1);
}

uint64_t sub_29AFA2C54(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0xD8);
  v5[26] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AFA2DAC(uint64_t a1)
{
  sub_29AFA2DE8(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29AFA2E30(a1, v2);
  return a1;
}

uint64_t sub_29AFA2DE8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *v2;
  *v2 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      result = sub_29AFA2E30(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}