pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens_StaticTokenType *sub_29ABED640()
{
  v0 = operator new(0x40uLL);
  pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens_StaticTokenType::HdInstancerTopologySchemaTokens_StaticTokenType(v0);
  return v0;
}

void sub_29ABED684(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2076A98;
  sub_29ABED558(a1 + 1);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ABED6DC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2076A98;
  sub_29ABED558(a1 + 1);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

uint64_t sub_29ABED758@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_29ABED78C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29ABED7AC(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29ABED924(a1);
}

void *sub_29ABED810(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29ABEDAEC);
  return a2;
}

void *sub_29ABED90C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2076AF0;
  return sub_29A18ECC8(a2, v2);
}

void sub_29ABED924(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_29ABED558(v1);

    operator delete(v1);
  }
}

unint64_t sub_29ABED98C(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = (a2[4] + 4);
    v4 = *a2;
    do
    {
      v5 = *(v3 - 1);
      v6 = v2 + v5 + (v2 + v5) * (v2 + v5);
      v2 = *v3 + ((v5 + *v3 + (v6 >> 1) + (v5 + *v3 + (v6 >> 1)) * (v5 + *v3 + (v6 >> 1))) >> 1);
      v3 += 2;
      --v4;
    }

    while (v4);
    v2 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v2);
}

BOOL sub_29ABED9E4(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_29A18EAFC(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_29A18EAFC(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = *(a2 + 32);
  v7 = 8 * *a1 - 8;
  do
  {
    v9 = *v5++;
    v8 = v9;
    v10 = *v6++;
    result = v8 == v10;
    v11 = v8 != v10 || v7 == 0;
    v7 -= 8;
  }

  while (!v11);
  return result;
}

uint64_t sub_29ABEDA84(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29ABED924(a1);
    *a1 = v4;
    v4 = 0;
    sub_29ABED924(&v4);
  }

  return *a1;
}

void *sub_29ABEDAEC(pxrInternal__aapl__pxrReserved__::SdfPath **a1, void *a2)
{
  v3 = *a1;
  *a1 = (*a1 + 8);
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

void *sub_29ABEDB04(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2076BD0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ABEDB5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABEDB78(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABEDBA0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABEDBD0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2076C20))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens_StaticTokenType *sub_29ABEDC10(atomic_ullong *a1)
{
  result = sub_29ABEDC58();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens_StaticTokenType::~HdLegacyDisplayStyleSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens_StaticTokenType *sub_29ABEDC58()
{
  v0 = operator new(0x68uLL);
  pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens_StaticTokenType::HdLegacyDisplayStyleSchemaTokens_StaticTokenType(v0);
  return v0;
}

void sub_29ABEDC9C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2076C48;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ABEDCFC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2076C48;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

_DWORD *sub_29ABEDD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_2A20470E8 + 1;
  v3 = sub_29A1E21F4(a2, (a1 + 8)) + 1;

  return sub_29A1E2240(v3, (a1 + 12));
}

_DWORD *sub_29ABEDDBC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_29A1E21F4(a2, (a1 + 8)) + 1;

  return sub_29A1E2240(v3, (a1 + 12));
}

void *sub_29ABEDE00(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2076C98;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ABEDE58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABEDE74(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABEDE9C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABEDECC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2076CE8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens_StaticTokenType *sub_29ABEDF0C(atomic_ullong *a1)
{
  result = sub_29ABEDF54();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens_StaticTokenType::~HdExtComputationSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens_StaticTokenType *sub_29ABEDF54()
{
  v0 = operator new(0x58uLL);
  pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens_StaticTokenType::HdExtComputationSchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens_StaticTokenType *sub_29ABEDF98(atomic_ullong *a1)
{
  result = sub_29ABEDFE0();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens_StaticTokenType::~HdRenderBufferSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens_StaticTokenType *sub_29ABEDFE0()
{
  v0 = operator new(0x38uLL);
  pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens_StaticTokenType::HdRenderBufferSchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens_StaticTokenType *sub_29ABEE024(atomic_ullong *a1)
{
  result = sub_29ABEE06C();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens_StaticTokenType::~HdRenderSettingsSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens_StaticTokenType *sub_29ABEE06C()
{
  v0 = operator new(0x58uLL);
  pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens_StaticTokenType::HdRenderSettingsSchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens_StaticTokenType *sub_29ABEE0B0(atomic_ullong *a1)
{
  result = sub_29ABEE0F8();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens_StaticTokenType::~HdImageShaderSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens_StaticTokenType *sub_29ABEE0F8()
{
  v0 = operator new(0x48uLL);
  pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens_StaticTokenType::HdImageShaderSchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens_StaticTokenType *sub_29ABEE13C(atomic_ullong *a1)
{
  result = sub_29ABEE184();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens_StaticTokenType::~HdPrimvarsSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens_StaticTokenType *sub_29ABEE184()
{
  v0 = operator new(0x38uLL);
  pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens_StaticTokenType::HdPrimvarsSchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens_StaticTokenType *sub_29ABEE1C8(atomic_ullong *a1)
{
  result = sub_29ABEE210();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens_StaticTokenType::~HdExtComputationPrimvarsSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens_StaticTokenType *sub_29ABEE210()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens_StaticTokenType::HdExtComputationPrimvarsSchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens_StaticTokenType *sub_29ABEE254(atomic_ullong *a1)
{
  result = sub_29ABEE29C();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens_StaticTokenType::~HdPurposeSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens_StaticTokenType *sub_29ABEE29C()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens_StaticTokenType::HdPurposeSchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens_StaticTokenType *sub_29ABEE2E0(atomic_ullong *a1)
{
  result = sub_29ABEE328();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens_StaticTokenType::~HdVisibilitySchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens_StaticTokenType *sub_29ABEE328()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens_StaticTokenType::HdVisibilitySchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens_StaticTokenType *sub_29ABEE36C(atomic_ullong *a1)
{
  result = sub_29ABEE3B4();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens_StaticTokenType::~HdXformSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens_StaticTokenType *sub_29ABEE3B4()
{
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens_StaticTokenType::HdXformSchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens_StaticTokenType *sub_29ABEE3F8(atomic_ullong *a1)
{
  result = sub_29ABEE440();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens_StaticTokenType::~HdExtentSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens_StaticTokenType *sub_29ABEE440()
{
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens_StaticTokenType::HdExtentSchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdMaterialSchemaTokens_StaticTokenType *sub_29ABEE484(atomic_ullong *a1)
{
  result = sub_29ABEE4CC();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdMaterialSchemaTokens_StaticTokenType::~HdMaterialSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdMaterialSchemaTokens_StaticTokenType *sub_29ABEE4CC()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::HdMaterialSchemaTokens_StaticTokenType::HdMaterialSchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdLightSchemaTokens_StaticTokenType *sub_29ABEE510(atomic_ullong *a1)
{
  result = sub_29ABEE558();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdLightSchemaTokens_StaticTokenType::~HdLightSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdLightSchemaTokens_StaticTokenType *sub_29ABEE558()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::HdLightSchemaTokens_StaticTokenType::HdLightSchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens_StaticTokenType *sub_29ABEE59C(atomic_ullong *a1)
{
  result = sub_29ABEE5E4();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens_StaticTokenType::~HdDependenciesSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens_StaticTokenType *sub_29ABEE5E4()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens_StaticTokenType::HdDependenciesSchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchemaTokens_StaticTokenType *sub_29ABEE628(atomic_ullong *a1)
{
  result = sub_29ABEE670();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchemaTokens_StaticTokenType::~HdInstanceCategoriesSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchemaTokens_StaticTokenType *sub_29ABEE670()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchemaTokens_StaticTokenType::HdInstanceCategoriesSchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens_StaticTokenType *sub_29ABEE6B4(atomic_ullong *a1)
{
  result = sub_29ABEE6FC();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens_StaticTokenType::~HdInstancedBySchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens_StaticTokenType *sub_29ABEE6FC()
{
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens_StaticTokenType::HdInstancedBySchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens_StaticTokenType *sub_29ABEE740(atomic_ullong *a1)
{
  result = sub_29ABEE788();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens_StaticTokenType::~HdIntegratorSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens_StaticTokenType *sub_29ABEE788()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens_StaticTokenType::HdIntegratorSchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens_StaticTokenType *sub_29ABEE7CC(atomic_ullong *a1)
{
  result = sub_29ABEE814();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens_StaticTokenType::~HdSampleFilterSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens_StaticTokenType *sub_29ABEE814()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens_StaticTokenType::HdSampleFilterSchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens_StaticTokenType *sub_29ABEE858(atomic_ullong *a1)
{
  result = sub_29ABEE8A0();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens_StaticTokenType::~HdDisplayFilterSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens_StaticTokenType *sub_29ABEE8A0()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens_StaticTokenType::HdDisplayFilterSchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchemaTokens_StaticTokenType *sub_29ABEE8E4(atomic_ullong *a1)
{
  result = sub_29ABEE92C();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchemaTokens_StaticTokenType::~HdVolumeFieldBindingSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchemaTokens_StaticTokenType *sub_29ABEE92C()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchemaTokens_StaticTokenType::HdVolumeFieldBindingSchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens_StaticTokenType *sub_29ABEE970(atomic_ullong *a1)
{
  result = sub_29ABEE9B8();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens_StaticTokenType::~HdSceneIndexEmulationTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens_StaticTokenType *sub_29ABEE9B8()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens_StaticTokenType::HdSceneIndexEmulationTokens_StaticTokenType(v0);
  return v0;
}

void sub_29ABEE9FC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29ABEEA50(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_29ABEEA50(uint64_t result, uint64_t a2)
{
  for (i = *(result + 8); i != a2; i -= 32)
  {
    v3 = *(i - 16);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v5 = *(i - 32);
    v4 = v5;
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  *(result + 8) = a2;
  return result;
}

void *sub_29ABEEA98(void *a1)
{
  sub_29A1601D8(a1 + 3, 0);
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 4;
        sub_29ABEC7EC(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_29ABEEB08(uint64_t a1)
{
  *a1 = &unk_2A2076D20;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 44));
  sub_29A1DE3A4((a1 + 40));
  sub_29A1601D8((a1 + 32), 0);
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v3 -= 4;
        sub_29ABEC7EC(v3);
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ABEEBB4(uint64_t a1)
{
  *a1 = &unk_2A2076D20;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 44));
  sub_29A1DE3A4((a1 + 40));
  sub_29A1601D8((a1 + 32), 0);
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v3 -= 4;
        sub_29ABEC7EC(v3);
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v5);
}

void *sub_29ABEEC64@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A1D7F98(a2, (*(a1 + 16) - *(a1 + 8)) >> 5);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    result = sub_29A1D8028(a2, v5);
    v5 += 4;
  }

  return result;
}

void sub_29ABEECD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29ABEECF0(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = sub_29A160470(v6, a2);
    if (!v7)
    {
LABEL_14:
      *a3 = 0;
      a3[1] = 0;
      return;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 8) + 32 * v7[3];
  }

  else
  {
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (v9 != v8)
    {
      while ((*v9 ^ *a2) >= 8)
      {
        v9 += 32;
        if (v9 == v8)
        {
          goto LABEL_14;
        }
      }
    }
  }

  if (v9 == v8)
  {
    goto LABEL_14;
  }

  if (*(v9 + 24) == 1)
  {
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v22 = 0uLL;
    v10 = operator new(0x88uLL);
    v11 = v10;
    v12 = *a2;
    *v10 = &unk_2A2076D68;
    v10[1] = v12;
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v10[1] &= 0xFFFFFFFFFFFFFFF8;
    }

    sub_29A1E21F4(v10 + 4, (a1 + 40));
    sub_29A1E2240(v11 + 5, (a1 + 44));
    sub_29ABEF720(v11 + 3);
  }

  v25 = 0uLL;
  v26 = 0uLL;
  v23 = 0uLL;
  v24 = 0uLL;
  v22 = 0uLL;
  v13 = operator new(0x58uLL);
  sub_29ABF0CA8(v13, a2, (a1 + 40), *(a1 + 48));
  sub_29ABF0DD4(&v21, v13);
  v27 = v21;
  v21 = 0uLL;
  v14 = pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::SetPrimvarValue(&v22, &v27);
  pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildInterpolationDataSource((v9 + 8), &v19);
  v15 = pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::SetInterpolation(v14, &v19);
  pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildRoleDataSource((v9 + 16), &v17);
  v16 = pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::SetRole(v15, &v17);
  pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::Build(v16, &v28);
  *a3 = v28;
  v28 = 0uLL;
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  if (v20)
  {
    sub_29A014BEC(v20);
  }

  if (*(&v27 + 1))
  {
    sub_29A014BEC(*(&v27 + 1));
  }

  if (*(&v21 + 1))
  {
    sub_29A014BEC(*(&v21 + 1));
  }

  if (*(&v26 + 1))
  {
    sub_29A014BEC(*(&v26 + 1));
  }

  if (*(&v25 + 1))
  {
    sub_29A014BEC(*(&v25 + 1));
  }

  if (*(&v24 + 1))
  {
    sub_29A014BEC(*(&v24 + 1));
  }

  if (*(&v23 + 1))
  {
    sub_29A014BEC(*(&v23 + 1));
  }

  if (*(&v22 + 1))
  {
    sub_29A014BEC(*(&v22 + 1));
  }
}

void sub_29ABEF118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  sub_29ABEF320(v7 + 24);
  sub_29A1DCEA8((v7 + 16));
  v9 = *(v7 + 8);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v7);
  operator delete(v10);
  if (a7)
  {
    sub_29A014BEC(a7);
  }

  sub_29ABEF2C0(va);
  _Unwind_Resume(a1);
}

void *sub_29ABEF2C0(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = a1[1];
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  return a1;
}

uint64_t sub_29ABEF320(uint64_t a1)
{
  *a1 = &unk_2A2076DB0;
  sub_29ABF024C(a1 + 56);
  *a1 = &unk_2A2076DF0;
  sub_29ABEFF98(a1 + 32);
  if (*(a1 + 28) >= 2u)
  {
    free(*(a1 + 16));
  }

  return a1;
}

void sub_29ABEF39C(uint64_t a1)
{
  *a1 = &unk_2A2076D68;
  *(a1 + 24) = &unk_2A2076DB0;
  sub_29ABF024C(a1 + 80);
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

void sub_29ABEF478(uint64_t a1)
{
  *a1 = &unk_2A2076D68;
  *(a1 + 24) = &unk_2A2076DB0;
  sub_29ABF024C(a1 + 80);
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

void sub_29ABEF558(uint64_t a1@<X0>, void *a2@<X8>, float a3@<S0>)
{
  v6[7] = *MEMORY[0x29EDCA608];
  if (a3 == 0.0)
  {
    sub_29A19D6E4(v6, 0);
    (*(**(a1 + 128) + 128))(*(a1 + 128), a1 + 16, a1 + 8, v6);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  if (!*(a1 + 32))
  {
    sub_29ABF0314(*(a1 + 128), a1 + 16, a1 + 8, a1 + 24);
  }

  sub_29ABF028C(a1 + 24, v6, a3);
  sub_29A186EF4(a2, v6);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29ABEF660(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABEF6A4(uint64_t a1, const void **a2, float a3, float a4)
{
  v8 = *(a1 + 32);
  if (!v8)
  {
    sub_29ABF0314(*(a1 + 128), a1 + 16, a1 + 8, a1 + 24);
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

void sub_29ABEF720(void *a1)
{
  v1 = sub_29ABEF7C8(a1);
  *v1 = &unk_2A2076DB0;
  v1[12] = 0x100000000;
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  sub_29ABEF8B8((v1 + 7), 1uLL, v2);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void *sub_29ABEF7C8(void *a1)
{
  v3[2] = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A2076DF0;
  a1[3] = 0x100000000;
  a1[6] = 0x100000000;
  LODWORD(v3[0]) = 0;
  sub_29ABEFA88(a1 + 2, 1uLL, v3, 0x100000000);
  v3[1] = 0;
  sub_29ABEFBB4((a1 + 4), 1uLL, v3);
  sub_29A186B14(v3);
  a1[1] = 0;
  return a1;
}

void sub_29ABEF880(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  sub_29ABEFF98(v2 + 32);
  if (*(v2 + 28) >= 2u)
  {
    free(*(v2 + 16));
  }

  _Unwind_Resume(a1);
}

void sub_29ABEF8B8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  if (v5 <= a2)
  {
    if (v5 < a2)
    {
      v9 = *(a1 + 44);
      if (v9 < a2)
      {
        sub_29ABF0140(a1, a2);
        LODWORD(v9) = *(a1 + 44);
      }

      v10 = a1;
      if (v9 >= 2)
      {
        v10 = *a1;
      }

      v11 = *(a1 + 40);
      if (v11 != a2)
      {
        v12 = v10 + 40 * a2;
        v13 = v10 + 40 * v11;
        do
        {
          v14 = *(a3 + 16);
          *v13 = *a3;
          *(v13 + 16) = v14;
          v15 = *(a3 + 32);
          *(v13 + 32) = v15;
          if (v15)
          {
            v16 = (v15 - 16);
            if (*(v13 + 24))
            {
              v16 = *(v13 + 24);
            }

            atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
          }

          v13 += 40;
        }

        while (v13 != v12);
      }

      *(a1 + 40) = a2;
    }
  }

  else
  {
    v6 = a1;
    if (*(a1 + 44) >= 2u)
    {
      v6 = *a1;
    }

    v7 = v6 + 40 * a2;

    sub_29ABEFFFC(a1, v7, v6 + 40 * v5);
  }
}

uint64_t sub_29ABEF9C0(uint64_t a1)
{
  *a1 = &unk_2A2076DF0;
  sub_29ABEFF98(a1 + 32);
  if (*(a1 + 28) >= 2u)
  {
    free(*(a1 + 16));
  }

  return a1;
}

void sub_29ABEFA18(uint64_t a1, unsigned int a2, int16x4_t a3)
{
  sub_29ABEFCE4(a1, a2, a3);
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  sub_29ABEF8B8(a1 + 56, a2, v5);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29ABEFA88(uint64_t *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v6 = *(a1 + 2);
  if (v6 > a2)
  {
LABEL_2:
    *(a1 + 2) = a2;
    return;
  }

  if (v6 < a2)
  {
    v8 = *(a1 + 3);
    if (v8 < a2)
    {
      sub_29ABEFD8C(a1, a2);
      LODWORD(v8) = *(a1 + 3);
    }

    v9 = a1;
    if (v8 >= 2)
    {
      v9 = *a1;
    }

    v10 = *(a1 + 2);
    if (v10 != a2)
    {
      v11 = 0;
      a4.i32[0] = *a3;
      v12 = (4 * a2 - 4 * v10 - 4) >> 2;
      v13 = vdupq_n_s64(v12);
      v14 = (v12 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v15 = v9 + v10 + 2;
      do
      {
        v16 = vdupq_n_s64(v11);
        v17 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v16, xmmword_29B430070)));
        if (vuzp1_s16(v17, a4).u8[0])
        {
          *(v15 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v17, a4).i8[2])
        {
          *(v15 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v16, xmmword_29B433E10)))).i32[1])
        {
          *v15 = a4.i32[0];
          v15[1] = a4.i32[0];
        }

        v11 += 4;
        v15 += 4;
      }

      while (v14 != v11);
    }

    goto LABEL_2;
  }
}

void sub_29ABEFBB4(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = *(a1 + 16);
  if (v5 <= a2)
  {
    if (v5 < a2)
    {
      v9 = *(a1 + 20);
      if (v9 < a2)
      {
        sub_29ABEFED0(a1, a2);
        LODWORD(v9) = *(a1 + 20);
      }

      v10 = a1;
      if (v9 >= 2)
      {
        v10 = *a1;
      }

      v11 = *(a1 + 16);
      if (v11 != a2)
      {
        v12 = 0;
        v13 = 16 * v11 - 16 * a2;
        v14 = (v10 + 16 * v11);
        do
        {
          v14 = sub_29A186EF4(v14, a3) + 2;
          v12 -= 16;
        }

        while (v13 != v12);
      }

      *(a1 + 16) = a2;
    }
  }

  else
  {
    v6 = a1;
    if (*(a1 + 20) >= 2u)
    {
      v6 = *a1;
    }

    v7 = (v6 + 16 * a2);

    sub_29ABEFE10(a1, v7, (v6 + 16 * v5));
  }
}

void sub_29ABEFCA8(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      sub_29A186B14(v1);
      v1 += 16;
      v3 -= 16;
    }

    while (v3);
  }

  __cxa_rethrow();
}

uint64_t sub_29ABEFCE4(uint64_t a1, unsigned int a2, int16x4_t a3)
{
  v6[2] = *MEMORY[0x29EDCA608];
  v4 = a2;
  LODWORD(v6[0]) = 0;
  sub_29ABEFA88((a1 + 16), a2, v6, a3);
  v6[1] = 0;
  sub_29ABEFBB4(a1 + 32, v4, v6);
  result = sub_29A186B14(v6);
  *(a1 + 8) = v4;
  return result;
}

void sub_29ABEFD70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29ABEFD8C(int *a1, uint64_t a2)
{
  v2 = a2;
  v4 = malloc(4 * a2);
  v5 = v4;
  v6 = a1[3];
  v7 = a1;
  if (v6 >= 2)
  {
    v7 = *a1;
  }

  v8 = a1[2];
  if (v8)
  {
    v9 = 4 * v8;
    v10 = v4;
    do
    {
      v11 = *v7++;
      *v10++ = v11;
      v9 -= 4;
    }

    while (v9);
  }

  if (v6 >= 2)
  {
    free(*a1);
  }

  *a1 = v5;
  a1[3] = v2;
}

char *sub_29ABEFE10(uint64_t *a1, char *a2, char *a3)
{
  if (a2 != a3)
  {
    v4 = a3;
    v6 = a3 - a2;
    v7 = a1;
    if (*(a1 + 5) >= 2u)
    {
      v7 = *a1;
    }

    v8 = v6 >> 4;
    v9 = &v7[2 * *(a1 + 4)];
    if (v9 != a3)
    {
      v10 = a2;
      do
      {
        sub_29A18606C(v10, v4);
        v4 += 16;
        v10 += 16;
      }

      while (v4 != v9);
    }

    v11 = 16 * v8;
    v12 = &v9[-16 * v8];
    do
    {
      v12 = sub_29A186B14(v12) + 16;
      v11 -= 16;
    }

    while (v11);
    *(a1 + 4) -= v6 >> 4;
  }

  return a2;
}

void sub_29ABEFED0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = malloc(16 * a2);
  v5 = v4;
  v6 = *(a1 + 20);
  v7 = a1;
  if (v6 >= 2)
  {
    v7 = *a1;
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = 16 * v8;
    do
    {
      v10 = sub_29A186A3C(v4, v7);
      v7 += 2;
      v4 = v10 + 2;
      v9 -= 16;
    }

    while (v9);
    v6 = *(a1 + 20);
  }

  v11 = a1;
  if (v6 >= 2)
  {
    v11 = *a1;
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = 16 * v12;
    do
    {
      v11 = sub_29A186B14(v11) + 16;
      v13 -= 16;
    }

    while (v13);
    v6 = *(a1 + 20);
  }

  if (v6 >= 2)
  {
    free(*a1);
  }

  *a1 = v5;
  *(a1 + 20) = v2;
}

uint64_t sub_29ABEFF98(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 20);
  if (v2 >= 2)
  {
    a1 = *a1;
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 16 * v3;
    do
    {
      a1 = sub_29A186B14(a1) + 16;
      v4 -= 16;
    }

    while (v4);
    v2 = *(v1 + 20);
  }

  if (v2 >= 2)
  {
    free(*v1);
  }

  return v1;
}

uint64_t sub_29ABEFFFC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v3 = a1;
    if (*(a1 + 11) >= 2u)
    {
      v3 = *a1;
    }

    sub_29ABF00C0(&v5, a3, &v3[5 * *(a1 + 10)], a2);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  return a2;
}

uint64_t sub_29ABF00C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
      }

      v5 += 40;
      a4 += 40;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_29ABF0140(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = malloc(40 * a2);
  v5 = v4;
  v6 = a1;
  if (*(a1 + 44) >= 2u)
  {
    v6 = *a1;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = &v6[40 * v7];
    v9 = v4;
    do
    {
      v10 = *(v6 + 1);
      *v9 = *v6;
      v9[1] = v10;
      *v6 = 0uLL;
      *(v6 + 1) = 0uLL;
      *(v9 + 4) = *(v6 + 4);
      *(v6 + 4) = 0;
      v6 += 40;
      v9 = (v9 + 40);
    }

    while (v6 != v8);
  }

  sub_29ABF01F4(a1);
  if (*(a1 + 44) >= 2u)
  {
    free(*a1);
  }

  *a1 = v5;
  *(a1 + 44) = v2;
}

uint64_t sub_29ABF01F4(uint64_t result)
{
  if (*(result + 40))
  {
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  return result;
}

uint64_t sub_29ABF024C(uint64_t a1)
{
  sub_29ABF01F4(a1);
  if (*(a1 + 44) >= 2u)
  {
    free(*a1);
  }

  return a1;
}

void *sub_29ABF028C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v3 = (a1 + 16);
  if (*(a1 + 28) >= 2u)
  {
    v3 = *v3;
  }

  v4 = (a1 + 32);
  if (*(a1 + 52) >= 2u)
  {
    v4 = *v4;
  }

  v5 = (a1 + 56);
  if (*(a1 + 100) >= 2u)
  {
    v5 = *v5;
  }

  return sub_29ABF049C(*(a1 + 8), v3, v4, v5, a2, a3);
}

unint64_t sub_29ABF0314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v12 = (a4 + 56);
  v13 = (a4 + 56);
  if (*(a4 + 100) >= 2u)
  {
    v13 = *v12;
  }

  result = (*(*a1 + 232))(a1, a2, a3, 1, v9, v11, v13);
  v15 = result;
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

    if (*(a4 + 100) >= 2u)
    {
      v12 = *v12;
    }

    result = (*(*a1 + 232))(a1, a2, a3, v15, v8, v10, v12);
    if (v15 != result)
    {
      result = sub_29B2C5004(v16);
    }
  }

  *(a4 + 8) = v15;
  return result;
}

void *sub_29ABF049C@<X0>(uint64_t a1@<X0>, float *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, float a6@<S0>)
{
  v30 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    *&v27 = "hd/timeSampleArray.h";
    *(&v27 + 1) = "HdResampleRawTimeSamples";
    *&v28 = 113;
    *(&v28 + 1) = "std::pair<T, VtIntArray> pxrInternal__aapl__pxrReserved__::HdResampleRawTimeSamples(float, size_t, const float *, const T *, const VtIntArray *) [T = pxrInternal__aapl__pxrReserved__::VtValue]";
    LOBYTE(v29) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v27, 1, "HdResampleRawTimeSamples: Zero samples provided");
    v26[1] = 0;
    sub_29A19D6E4(&v27, 0);
    sub_29A186A3C(a5, v26);
    v13 = v28;
    *(a5 + 16) = v27;
    *(a5 + 32) = v13;
    v27 = 0u;
    v28 = 0u;
    *(a5 + 48) = v29;
    v29 = 0;
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  v9 = 0;
  v10 = 0;
  v11 = a4;
  while (1)
  {
    v12 = *a2;
    if (*a2 == a6)
    {
      result = sub_29A186EF4(a5, &a3[-v9]);
      v15 = *(v11 + 16);
      *(a5 + 16) = *v11;
      *(a5 + 32) = v15;
      v16 = *(v11 + 32);
      goto LABEL_15;
    }

    if (*a2 > a6)
    {
      break;
    }

    ++v10;
    v9 -= 16;
    ++a2;
    v11 += 40;
    if (a1 == v10)
    {
      goto LABEL_11;
    }
  }

  if (!v10)
  {
    result = sub_29A186EF4(a5, a3);
    v19 = *(a4 + 16);
    *(a5 + 16) = *a4;
    *(a5 + 32) = v19;
    v16 = *(a4 + 32);
    goto LABEL_15;
  }

  if (a1 == v10)
  {
LABEL_11:
    v17 = a4 + 40 * (a1 - 1);
    result = sub_29A186EF4(a5, &a3[16 * a1 - 16]);
    v18 = *(v17 + 16);
    *(a5 + 16) = *v17;
    *(a5 + 32) = v18;
    v16 = *(v17 + 32);
    goto LABEL_15;
  }

  v20 = *(a2 - 1);
  if (v12 == v20)
  {
    *&v27 = "hd/timeSampleArray.h";
    *(&v27 + 1) = "HdResampleRawTimeSamples";
    *&v28 = 137;
    *(&v28 + 1) = "std::pair<T, VtIntArray> pxrInternal__aapl__pxrReserved__::HdResampleRawTimeSamples(float, size_t, const float *, const T *, const VtIntArray *) [T = pxrInternal__aapl__pxrReserved__::VtValue]";
    LOBYTE(v29) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v27, "HdResampleRawTimeSamples: overlapping samples at %f; using first sample", a3, v12);
    result = sub_29A186EF4(a5, &a3[-v9 - 16]);
    v21 = *(v11 - 24);
    *(a5 + 16) = *(v11 - 40);
    *(a5 + 32) = v21;
    v16 = *(v11 - 8);
LABEL_15:
    *(a5 + 48) = v16;
    if (v16)
    {
      v22 = (v16 - 16);
      if (*(a5 + 40))
      {
        v22 = *(a5 + 40);
      }

      atomic_fetch_add_explicit(v22, 1uLL, memory_order_relaxed);
    }

    return result;
  }

  pxrInternal__aapl__pxrReserved__::HdResampleNeighbors(&a3[-v9 - 16], (v12 - a6) / (v12 - v20), &a3[-v9], &v27);
  sub_29A186A3C(a5, &v27);
  v23 = *(v11 - 24);
  *(a5 + 16) = *(v11 - 40);
  *(a5 + 32) = v23;
  v24 = *(v11 - 8);
  *(a5 + 48) = v24;
  if (v24)
  {
    v25 = (v24 - 16);
    if (*(a5 + 40))
    {
      v25 = *(a5 + 40);
    }

    atomic_fetch_add_explicit(v25, 1uLL, memory_order_relaxed);
  }

  return sub_29A186B14(&v27);
}

void sub_29ABF0724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABF0754(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF077C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF07AC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2076E58))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABF07EC(uint64_t a1)
{
  *a1 = &unk_2A2076E80;
  *(a1 + 24) = &unk_2A2076DB0;
  sub_29ABF024C(a1 + 80);
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

void sub_29ABF08C8(uint64_t a1)
{
  *a1 = &unk_2A2076E80;
  *(a1 + 24) = &unk_2A2076DB0;
  sub_29ABF024C(a1 + 80);
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

void sub_29ABF09A8(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043D18;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

uint64_t sub_29ABF0A34(uint64_t a1, const void **a2, float a3, float a4)
{
  v8 = *(a1 + 32);
  if (!v8)
  {
    sub_29ABF0314(*(a1 + 128), a1 + 16, a1 + 8, a1 + 24);
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

uint64_t sub_29ABF0AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a3 != 0.0)
  {
    if (!*(a1 + 32))
    {
      sub_29ABF0314(*(a1 + 128), a1 + 16, a1 + 8, a1 + 24);
    }

    sub_29ABF028C(a1 + 24, v10, a3);
    v6 = v12;
    *a2 = v11;
    *(a2 + 16) = v6;
    v7 = v13;
    *(a2 + 32) = v13;
    if (v7)
    {
      v8 = (v7 - 16);
      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  sub_29A19D6E4(a2, 0);
  (*(**(a1 + 128) + 128))(v10);
  return sub_29A186B14(v10);
}

void sub_29ABF0BD8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void sub_29ABF0C10(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF0C38(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF0C68(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2076F20))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29ABF0CA8(uint64_t a1, uint64_t *a2, _DWORD *a3, uint64_t a4)
{
  v7 = *a2;
  *a1 = &unk_2A2076F48;
  *(a1 + 8) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A1E21F4((a1 + 16), a3);
  sub_29A1E2240((a1 + 20), a3 + 1);
  sub_29ABEF7C8((a1 + 24));
  *(a1 + 80) = a4;
  if (!a4)
  {
    v9[0] = "hd/dataSourceLegacyPrim.cpp";
    v9[1] = "Hd_DataSourceLegacyPrimvarValue";
    v9[2] = 132;
    v9[3] = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Hd_DataSourceLegacyPrimvarValue::Hd_DataSourceLegacyPrimvarValue(const TfToken &, const SdfPath &, HdSceneDelegate *)";
    v10 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "_sceneDelegate", 0);
  }

  return a1;
}

void sub_29ABF0D90(_Unwind_Exception *a1)
{
  sub_29ABEF9C0(v1 + 24);
  sub_29A1DCEA8((v1 + 16));
  v3 = *(v1 + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void *sub_29ABF0DD4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2076F90;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ABF0E2C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABF0E44(uint64_t a1)
{
  *a1 = &unk_2A2076F48;
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

void sub_29ABF0EFC(uint64_t a1)
{
  *a1 = &unk_2A2076F48;
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

void sub_29ABF0FB8(uint64_t a1@<X0>, void *a2@<X8>, float a3@<S0>)
{
  if (a3 == 0.0)
  {
    (*(**(a1 + 80) + 120))(a2);
    if (!a2[1])
    {
      v6 = 0;
      (*(**(a1 + 80) + 216))(*(a1 + 80), a1 + 16, a1 + 8, 1, &v6, a2);
    }
  }

  else
  {
    if (!*(a1 + 32))
    {
      sub_29ABF118C(*(a1 + 80), a1 + 16, a1 + 8, a1 + 24);
    }

    sub_29ABF1158(a1 + 24, a2, a3);
  }
}

BOOL sub_29ABF10D4(uint64_t a1, const void **a2, float a3, float a4)
{
  v8 = *(a1 + 32);
  if (!v8)
  {
    sub_29ABF118C(*(a1 + 80), a1 + 16, a1 + 8, a1 + 24);
    v8 = *(a1 + 32);
  }

  v9 = (a1 + 40);
  if (*(a1 + 52) >= 2u)
  {
    v9 = *v9;
  }

  return pxrInternal__aapl__pxrReserved__::HdGetContributingSampleTimesForInterval(v8, v9, a2, a3, a4);
}

void sub_29ABF1158(uint64_t a1@<X0>, void *a2@<X8>, float a3@<S0>)
{
  v4 = *(a1 + 8);
  v5 = (a1 + 16);
  if (*(a1 + 28) >= 2u)
  {
    v5 = *v5;
  }

  v6 = (a1 + 32);
  if (*(a1 + 52) >= 2u)
  {
    v6 = *v6;
  }

  sub_29ABF12E8(v4, v5, v6, a2, a3);
}

unint64_t sub_29ABF118C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  result = (*(*a1 + 216))(a1, a2, a3, 1, v9, v11);
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

    result = (*(*a1 + 216))(a1, a2, a3, v13, v8, v10);
    if (v13 != result)
    {
      result = sub_29B2C504C(v14);
    }
  }

  *(a4 + 8) = v13;
  return result;
}

void sub_29ABF12E8(uint64_t a1@<X0>, float *a2@<X1>, char *a3@<X2>, void *a4@<X8>, float a5@<S0>)
{
  if (a1)
  {
    v6 = 0;
    v7 = a3;
    while (1)
    {
      v8 = *a2;
      if (*a2 == a5)
      {
        v9 = a4;
        v10 = v7;
LABEL_13:

        sub_29A186EF4(v9, v10);
        return;
      }

      if (*a2 > a5)
      {
        break;
      }

      --v6;
      ++a2;
      ++v7;
      if (-a1 == v6)
      {
        goto LABEL_11;
      }
    }

    if (!v6)
    {
      v9 = a4;
      v10 = a3;
      goto LABEL_13;
    }

    if (-a1 == v6)
    {
LABEL_11:
      v10 = &a3[16 * a1 - 16];
      v9 = a4;
      goto LABEL_13;
    }

    v11 = *(a2 - 1);
    if (v8 == v11)
    {
      v13 = "hd/timeSampleArray.h";
      v14 = "HdResampleRawTimeSamples";
      v15 = 91;
      v16 = "T pxrInternal__aapl__pxrReserved__::HdResampleRawTimeSamples(float, size_t, const float *, const T *) [T = pxrInternal__aapl__pxrReserved__::VtValue]";
      v17 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v13, "HdResampleRawTimeSamples: overlapping samples at %f; using first sample", a3, v8);
      sub_29A186EF4(a4, &v7[-1].__vftable);
    }

    else
    {
      v12 = (a5 - v11) / (v8 - v11);

      pxrInternal__aapl__pxrReserved__::HdResampleNeighbors(&v7[-1], v12, v7, a4);
    }
  }

  else
  {
    v13 = "hd/timeSampleArray.h";
    v14 = "HdResampleRawTimeSamples";
    v15 = 67;
    v16 = "T pxrInternal__aapl__pxrReserved__::HdResampleRawTimeSamples(float, size_t, const float *, const T *) [T = pxrInternal__aapl__pxrReserved__::VtValue]";
    v17 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v13, 1, "HdResampleRawTimeSamples: Zero samples provided");
    a4[1] = 0;
  }
}

void sub_29ABF1474(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF149C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF14CC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2076FE0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABF1510(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF1538(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF1568(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2077058))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABF15A8(void ***a1)
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
        v4 -= 64;
        sub_29ABF1630(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29ABF1630(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 32));
  result = sub_29A1DE3A4((a2 + 28));
  v5 = *(a2 + 16);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29ABF16AC(uint64_t a1)
{
  *a1 = &unk_2A2077080;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 44));
  sub_29A1DE3A4((a1 + 40));
  sub_29A1601D8((a1 + 32), 0);
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v3 -= 56;
        sub_29ABECADC(v3);
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ABF1758(uint64_t a1)
{
  *a1 = &unk_2A2077080;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 44));
  sub_29A1DE3A4((a1 + 40));
  sub_29A1601D8((a1 + 32), 0);
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v3 -= 56;
        sub_29ABECADC(v3);
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v5);
}

void *sub_29ABF1808@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A1D7F98(a2, 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    result = sub_29A1D8028(a2, v5);
    v5 += 7;
  }

  return result;
}

void sub_29ABF188C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29ABF18A8(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = a1[4];
  if (v5)
  {
    v6 = sub_29A160470(v5, a2);
    if (!v6)
    {
LABEL_45:
      *a3 = 0;
      a3[1] = 0;
      return;
    }

    v7 = a1[2];
    v8 = a1[1] + 56 * v6[3];
  }

  else
  {
    v8 = a1[1];
    v7 = a1[2];
    if (v8 != v7)
    {
      while ((*v8 ^ *a2) >= 8)
      {
        v8 += 56;
        if (v8 == v7)
        {
          goto LABEL_45;
        }
      }
    }
  }

  if (v8 == v7)
  {
    goto LABEL_45;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v9 = *(v8 + 8);
  v26 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildInterpolationDataSource(&v26, &v27);
  v10 = pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::Builder::SetInterpolation(&v29, &v27);
  v11 = *(v8 + 16);
  v23 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildRoleDataSource(&v23, &v24);
  v12 = pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::Builder::SetRole(v10, &v24);
  sub_29ABE8360((v8 + 24), &v21);
  v22 = v21;
  v21 = 0uLL;
  v13 = pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::Builder::SetSourceComputation(v12, &v22);
  sub_29ABCCFA4((v8 + 32), &v19);
  v20 = v19;
  v19 = 0uLL;
  v14 = pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::Builder::SetSourceComputationOutputName(v13, &v20);
  v15 = operator new(0x18uLL);
  *v15 = &unk_2A20770C8;
  *(v15 + 8) = *(v8 + 40);
  sub_29ABF1ED4(&v17, v15);
  v18 = v17;
  v17 = 0uLL;
  v16 = pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::Builder::SetValueType(v14, &v18);
  pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarSchema::Builder::Build(v16, &v34);
  *a3 = v34;
  v34 = 0uLL;
  if (*(&v18 + 1))
  {
    sub_29A014BEC(*(&v18 + 1));
  }

  if (*(&v17 + 1))
  {
    sub_29A014BEC(*(&v17 + 1));
  }

  if (*(&v20 + 1))
  {
    sub_29A014BEC(*(&v20 + 1));
  }

  if (*(&v19 + 1))
  {
    sub_29A014BEC(*(&v19 + 1));
  }

  if (*(&v22 + 1))
  {
    sub_29A014BEC(*(&v22 + 1));
  }

  if (*(&v21 + 1))
  {
    sub_29A014BEC(*(&v21 + 1));
  }

  if (v25)
  {
    sub_29A014BEC(v25);
  }

  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v28)
  {
    sub_29A014BEC(v28);
  }

  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(&v33 + 1))
  {
    sub_29A014BEC(*(&v33 + 1));
  }

  if (*(&v32 + 1))
  {
    sub_29A014BEC(*(&v32 + 1));
  }

  if (*(&v31 + 1))
  {
    sub_29A014BEC(*(&v31 + 1));
  }

  if (*(&v30 + 1))
  {
    sub_29A014BEC(*(&v30 + 1));
  }

  if (*(&v29 + 1))
  {
    sub_29A014BEC(*(&v29 + 1));
  }
}

void sub_29ABF1B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (a20)
  {
    sub_29A014BEC(a20);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  if (a23)
  {
    sub_29A014BEC(a23);
  }

  if ((a21 & 7) != 0)
  {
    atomic_fetch_add_explicit((a21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a26)
  {
    sub_29A014BEC(a26);
  }

  if ((a24 & 7) != 0)
  {
    atomic_fetch_add_explicit((a24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29ABEF2C0((v26 - 128));
  _Unwind_Resume(a1);
}

void sub_29ABF1C44(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

unsigned int *sub_29ABF1C6C@<X0>(uint64_t a1@<X0>, unsigned int **a2@<X8>)
{
  a2[1] = (&off_2A2077120 + 2);
  result = operator new(0x18uLL);
  *result = *(a1 + 8);
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29ABF1CD8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29ABF1CF4(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 4, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29ABF1D1C(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unsigned int *sub_29ABF1E7C@<X0>(_OWORD **a1@<X0>, unsigned int **a2@<X8>)
{
  v3 = *a1;
  a2[1] = (&off_2A2077120 + 2);
  result = operator new(0x18uLL);
  *result = *v3;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

void *sub_29ABF1ED4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20771F8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ABF1F2C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABF1F48(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF1F70(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF1FA0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2077248))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABF1FE4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF200C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF203C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20772C0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchemaTokens_StaticTokenType *sub_29ABF207C(atomic_ullong *a1)
{
  result = sub_29ABF20C4();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchemaTokens_StaticTokenType::~HdMaterialBindingsSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchemaTokens_StaticTokenType *sub_29ABF20C4()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchemaTokens_StaticTokenType::HdMaterialBindingsSchemaTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29ABF2108(uint64_t a1)
{
  *a1 = &unk_2A2077350;
  if (*(a1 + 164) >= 2u)
  {
    free(*(a1 + 32));
  }

  if (*(a1 + 28) >= 2u)
  {
    free(*(a1 + 16));
  }

  return a1;
}

void sub_29ABF2170(uint64_t a1)
{
  *a1 = &unk_2A20772E8;
  *(a1 + 24) = &unk_2A2077350;
  if (*(a1 + 188) >= 2u)
  {
    free(*(a1 + 56));
  }

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

void sub_29ABF2234(uint64_t a1)
{
  *a1 = &unk_2A20772E8;
  *(a1 + 24) = &unk_2A2077350;
  if (*(a1 + 188) >= 2u)
  {
    free(*(a1 + 56));
  }

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

void *sub_29ABF22FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_29ABF2398(unint64_t a1, const void **a2, float a3, float a4)
{
  sub_29ABF27B8(a1);
  v8 = (a1 + 40);
  if (*(a1 + 52) >= 2u)
  {
    v8 = *v8;
  }

  pxrInternal__aapl__pxrReserved__::HdGetContributingSampleTimesForInterval(*(a1 + 32), v8, a2, a3, a4);
  return 1;
}

void sub_29ABF23FC(unint64_t a1@<X0>, float64x2_t *a2@<X8>, float a3@<S0>)
{
  if (a3 == 0.0)
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v5)
    {
      v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v6 = **(a1 + 192);
    if ((*(v5 + 21) ^ *(a1 + 8)) > 7)
    {
      v9 = *(v6 + 72);

      v9();
    }

    else
    {
      v7 = *(v6 + 256);

      v7();
    }
  }

  else
  {
    sub_29ABF27B8(a1);

    sub_29ABF2AE8(a1 + 24, a2, a3);
  }
}

void *sub_29ABF2524(void *a1)
{
  *a1 = &unk_2A2077350;
  a1[3] = 0x100000000;
  a1[20] = 0x100000000;
  LODWORD(v3[0]) = 0;
  sub_29ABEFA88(a1 + 2, 1uLL, v3, 0x100000000);
  memset(v3, 0, sizeof(v3));
  sub_29ABF25F0((a1 + 4), 1uLL, v3);
  a1[1] = 0;
  return a1;
}

void sub_29ABF25B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 164) >= 2u)
  {
    free(*(v1 + 32));
  }

  if (*(v1 + 28) >= 2u)
  {
    free(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABF25F0(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v5 = *(a1 + 128);
  if (v5 > a2)
  {
LABEL_2:
    *(a1 + 128) = a2;
    return;
  }

  if (v5 < a2)
  {
    v7 = *(a1 + 132);
    if (v7 < a2)
    {
      sub_29ABF2714(a1, a2);
      LODWORD(v7) = *(a1 + 132);
    }

    v8 = a1;
    if (v7 >= 2)
    {
      v8 = *a1;
    }

    v9 = *(a1 + 128);
    if (v9 != a2)
    {
      v10 = (v8 + (v9 << 7));
      v11 = (a2 << 7) - (v9 << 7);
      do
      {
        v12 = *a3;
        v13 = a3[1];
        v14 = a3[3];
        v10[2] = a3[2];
        v10[3] = v14;
        *v10 = v12;
        v10[1] = v13;
        v15 = a3[4];
        v16 = a3[5];
        v17 = a3[7];
        v10[6] = a3[6];
        v10[7] = v17;
        v10[4] = v15;
        v10[5] = v16;
        v10 += 8;
        v11 -= 128;
      }

      while (v11);
    }

    goto LABEL_2;
  }
}

void sub_29ABF26AC(uint64_t a1, unsigned int a2, int16x4_t a3)
{
  v4 = a2;
  LODWORD(v5[0]) = 0;
  sub_29ABEFA88((a1 + 16), a2, v5, a3);
  memset(v5, 0, sizeof(v5));
  sub_29ABF25F0(a1 + 32, v4, v5);
  *(a1 + 8) = v4;
}

void sub_29ABF2714(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = malloc(a2 << 7);
  v5 = v4;
  v6 = *(a1 + 132);
  v7 = a1;
  if (v6 >= 2)
  {
    v7 = *a1;
  }

  v8 = *(a1 + 128);
  if (v8)
  {
    v9 = v8 << 7;
    v10 = v4;
    do
    {
      v11 = *v7;
      v12 = v7[1];
      v13 = v7[3];
      v10[2] = v7[2];
      v10[3] = v13;
      *v10 = v11;
      v10[1] = v12;
      v14 = v7[4];
      v15 = v7[5];
      v16 = v7[7];
      v10[6] = v7[6];
      v10[7] = v16;
      v10[4] = v14;
      v10[5] = v15;
      v7 += 8;
      v10 += 8;
      v9 -= 128;
    }

    while (v9);
  }

  if (v6 >= 2)
  {
    free(*a1);
  }

  *a1 = v5;
  *(a1 + 132) = v2;
}

unint64_t sub_29ABF27B8(unint64_t result)
{
  if (!*(result + 32))
  {
    v1 = result;
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v2)
    {
      v2 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v3 = *(v2 + 21) ^ *(v1 + 8);
    v4 = *(v1 + 192);
    v5 = v1 + 16;
    v6 = v1 + 24;
    if (v3 > 7)
    {

      return sub_29ABF29A0(v4, v5, v6);
    }

    else
    {

      return sub_29ABF2858(v4, v5, v6);
    }
  }

  return result;
}

unint64_t sub_29ABF2858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a3 + 16);
  v7 = (a3 + 16);
  if (*(a3 + 28) >= 2u)
  {
    v7 = *v6;
  }

  v8 = (a3 + 32);
  v9 = (a3 + 32);
  if (*(a3 + 164) >= 2u)
  {
    v9 = *v8;
  }

  result = (*(*a1 + 200))(a1, a2, 1, v7, v9);
  v11 = result;
  if (result >= 2)
  {
    (**a3)(a3, result);
    if (*(a3 + 28) >= 2u)
    {
      v6 = *v6;
    }

    if (*(a3 + 164) >= 2u)
    {
      v8 = *v8;
    }

    result = (*(*a1 + 200))(a1, a2, v11, v6, v8);
    if (v11 != result)
    {
      result = sub_29B2C5094(v12);
    }
  }

  *(a3 + 8) = v11;
  return result;
}

unint64_t sub_29ABF29A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a3 + 16);
  v7 = (a3 + 16);
  if (*(a3 + 28) >= 2u)
  {
    v7 = *v6;
  }

  v8 = (a3 + 32);
  v9 = (a3 + 32);
  if (*(a3 + 164) >= 2u)
  {
    v9 = *v8;
  }

  result = (*(*a1 + 184))(a1, a2, 1, v7, v9);
  v11 = result;
  if (result >= 2)
  {
    (**a3)(a3, result);
    if (*(a3 + 28) >= 2u)
    {
      v6 = *v6;
    }

    if (*(a3 + 164) >= 2u)
    {
      v8 = *v8;
    }

    result = (*(*a1 + 184))(a1, a2, v11, v6, v8);
    if (v11 != result)
    {
      result = sub_29B2C50DC(v12);
    }
  }

  *(a3 + 8) = v11;
  return result;
}

void sub_29ABF2AE8(uint64_t a1@<X0>, float64x2_t *a2@<X8>, float a3@<S0>)
{
  v4 = *(a1 + 8);
  v5 = (a1 + 16);
  if (*(a1 + 28) >= 2u)
  {
    v5 = *v5;
  }

  v6 = (a1 + 32);
  if (*(a1 + 164) >= 2u)
  {
    v6 = *&v6->f64[0];
  }

  sub_29ABF2B1C(v4, v5, v6, a2, a3);
}

void sub_29ABF2B1C(uint64_t a1@<X0>, float *a2@<X1>, float64x2_t *a3@<X2>, float64x2_t *a4@<X8>, float a5@<S0>)
{
  v67 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v6 = 0;
    v7 = a3;
    while (1)
    {
      v8 = *a2;
      if (*a2 == a5)
      {
        v9 = v7[5];
        a4[4] = v7[4];
        a4[5] = v9;
        v10 = v7[7];
        a4[6] = v7[6];
        a4[7] = v10;
        v11 = v7[1];
        *a4 = *v7;
        a4[1] = v11;
        v12 = v7[2];
        v13 = v7[3];
LABEL_15:
        a4[2] = v12;
        a4[3] = v13;
        return;
      }

      if (*a2 > a5)
      {
        break;
      }

      --v6;
      ++a2;
      v7 += 8;
      if (-a1 == v6)
      {
        goto LABEL_11;
      }
    }

    if (!v6)
    {
      v18 = a3[5];
      a4[4] = a3[4];
      a4[5] = v18;
      v19 = a3[7];
      a4[6] = a3[6];
      a4[7] = v19;
      v20 = a3[1];
      *a4 = *a3;
      a4[1] = v20;
      v12 = a3[2];
      v13 = a3[3];
      goto LABEL_15;
    }

    if (-a1 == v6)
    {
LABEL_11:
      v14 = &a3[8 * a1];
      v15 = v14[-3];
      a4[4] = v14[-4];
      a4[5] = v15;
      v16 = v14[-1];
      a4[6] = v14[-2];
      a4[7] = v16;
      v17 = v14[-7];
      *a4 = v14[-8];
      a4[1] = v17;
      v12 = v14[-6];
      v13 = v14[-5];
      goto LABEL_15;
    }

    v21 = *(a2 - 1);
    if (v8 == v21)
    {
      *&v51.f64[0] = "hd/timeSampleArray.h";
      *&v51.f64[1] = "HdResampleRawTimeSamples";
      *&v52.f64[0] = 91;
      *&v52.f64[1] = "T pxrInternal__aapl__pxrReserved__::HdResampleRawTimeSamples(float, size_t, const float *, const T *) [T = pxrInternal__aapl__pxrReserved__::GfMatrix4d]";
      LOBYTE(v53.f64[0]) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v51, "HdResampleRawTimeSamples: overlapping samples at %f; using first sample", a3, v8);
      v22 = v7[-3];
      a4[4] = v7[-4];
      a4[5] = v22;
      v23 = v7[-1];
      a4[6] = v7[-2];
      a4[7] = v23;
      v24 = v7[-7];
      *a4 = v7[-8];
      a4[1] = v24;
      v12 = v7[-6];
      v13 = v7[-5];
      goto LABEL_15;
    }

    v25 = v7[-3];
    v26 = ((a5 - v21) / (v8 - v21));
    v55 = v7[-4];
    v56 = v25;
    v27 = v7[-1];
    v57 = v7[-2];
    v58 = v27;
    v28 = v7[-7];
    v51 = v7[-8];
    v52 = v28;
    v29 = v7[-5];
    v53 = v7[-6];
    v54 = v29;
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v51, 1.0 - v26);
    v31 = v30[5];
    v63 = v30[4];
    v64 = v31;
    v32 = v30[7];
    v65 = v30[6];
    v66 = v32;
    v33 = v30[1];
    v59 = *v30;
    v60 = v33;
    v34 = v30[3];
    v61 = v30[2];
    v62 = v34;
    v35 = v7[5];
    v55 = v7[4];
    v56 = v35;
    v36 = v7[7];
    v57 = v7[6];
    v58 = v36;
    v37 = v7[1];
    v51 = *v7;
    v52 = v37;
    v38 = v7[3];
    v53 = v7[2];
    v54 = v38;
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v51, v26);
    v40 = v39[3];
    v42 = *v39;
    v41 = v39[1];
    v50[2] = v39[2];
    v50[3] = v40;
    v50[0] = v42;
    v50[1] = v41;
    v43 = v39[7];
    v45 = v39[4];
    v44 = v39[5];
    v50[6] = v39[6];
    v50[7] = v43;
    v50[4] = v45;
    v50[5] = v44;
    v46 = v64;
    a4[4] = v63;
    a4[5] = v46;
    v47 = v66;
    a4[6] = v65;
    a4[7] = v47;
    v48 = v60;
    *a4 = v59;
    a4[1] = v48;
    v49 = v62;
    a4[2] = v61;
    a4[3] = v49;
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator+=(a4->f64, v50);
  }

  else
  {
    *&v51.f64[0] = "hd/timeSampleArray.h";
    *&v51.f64[1] = "HdResampleRawTimeSamples";
    *&v52.f64[0] = 67;
    *&v52.f64[1] = "T pxrInternal__aapl__pxrReserved__::HdResampleRawTimeSamples(float, size_t, const float *, const T *) [T = pxrInternal__aapl__pxrReserved__::GfMatrix4d]";
    LOBYTE(v53.f64[0]) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v51, 1, "HdResampleRawTimeSamples: Zero samples provided");
    a4[6] = 0u;
    a4[7] = 0u;
    a4[4] = 0u;
    a4[5] = 0u;
    a4[2] = 0u;
    a4[3] = 0u;
    *a4 = 0u;
    a4[1] = 0u;
  }
}

void sub_29ABF2DCC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF2DF4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF2E24(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20773C8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29ABF2E64(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B6CD591 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20773E0);
}

void *sub_29ABF2EF0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  sub_29ABF33C0(v4, a1);

  return sub_29ABF34E4(a2, v4);
}

void *sub_29ABF2F5C(void *a1)
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

uint64_t sub_29ABF2FA4(uint64_t a1)
{
  sub_29ABF3348(a1 + 32, *(a1 + 40));
  sub_29A5B0668(a1 + 8, *(a1 + 16));
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_29ABF2FF8(void *a1)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>,void *> *,long>>>();
}

void sub_29ABF3050(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2*,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2*>();
}

uint64_t sub_29ABF30DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  if (a2 != a3)
  {
    std::allocator<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdMaterialConnection2,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2&>();
  }

  v7 = 1;
  sub_29ABF3170(v6);
  return a4;
}

uint64_t sub_29ABF3170(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29ABF31A8(a1);
  }

  return a1;
}

uint64_t *sub_29ABF31A8(uint64_t *result)
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
      v3 -= 16;
      result = sub_29ABF31FC(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

_DWORD *sub_29ABF31FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 4));

  return sub_29A1DE3A4(a2);
}

void sub_29ABF3254(void ***a1)
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
        sub_29ABF31FC(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29ABF32DC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v4 = (a2 + 40);
    sub_29ABF3254(&v4);
    v3 = *(a2 + 32);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_29ABF3348(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_29ABF3348(a1, *a2);
    sub_29ABF3348(a1, *(a2 + 1));
    v5 = (a2 + 40);
    sub_29ABF3254(&v5);
    v4 = *(a2 + 4);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a2);
  }
}

void *sub_29ABF33C0(void *a1, void *a2)
{
  *a1 = &unk_2A2077400;
  sub_29A186EF4(a1 + 1, a2);
  return a1;
}

void sub_29ABF3418(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2077400;
  sub_29A186B14(a1 + 8);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ABF346C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2077400;
  sub_29A186B14(a1 + 8);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void *sub_29ABF34E4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2077468;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ABF353C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABF3558(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF3580(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF35B0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20774B8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABF35F0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20774E0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 5);
  sub_29A1DE3A4(a1 + 4);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ABF3650(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20774E0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 5);
  sub_29A1DE3A4(a1 + 4);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void *sub_29ABF36B4@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v2)
  {
    v2 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  }

  sub_29A1D8028(a1, v2 + 1);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v3)
  {
    v3 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  }

  sub_29A1D8028(a1, v3 + 2);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  }

  sub_29A1D8028(a1, v4 + 3);
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v5)
  {
    v5 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  }

  sub_29A1D8028(a1, v5 + 4);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  }

  sub_29A1D8028(a1, v6 + 5);
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v7)
  {
    v7 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  }

  sub_29A1D8028(a1, v7 + 6);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v8)
  {
    v8 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  }

  sub_29A1D8028(a1, v8 + 7);
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v9)
  {
    v9 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  }

  sub_29A1D8028(a1, v9 + 8);
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v10)
  {
    v10 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  }

  return sub_29A1D8028(a1, v10 + 9);
}

void sub_29ABF3830(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29ABF3848(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v37 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) <= 7)
  {
    if (*(a1 + 36) == 1)
    {
      v7 = *(a1 + 24);
      if (v7)
      {
LABEL_6:
        v8 = operator new(0x10uLL);
        *v8 = &unk_2A2077528;
        v8[2] = v7;
        sub_29ABF40E4(v35, v8);
LABEL_39:
        v13 = *v35;
        goto LABEL_40;
      }
    }

    else
    {
      v11 = (*(**(a1 + 8) + 112))(*(a1 + 8), a1 + 16);
      v7 = v11;
      *(a1 + 24) = v11;
      *(a1 + 32) = v12;
      *(a1 + 36) = 1;
      if (v11)
      {
        goto LABEL_6;
      }
    }

    v13 = 0uLL;
LABEL_40:
    *a3 = v13;
    return;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v9)
  {
    v9 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  }

  if ((*(v9 + 2) ^ *a2) <= 7)
  {
    if ((*(a1 + 36) & 1) == 0)
    {
      *(a1 + 24) = (*(**(a1 + 8) + 112))(*(a1 + 8), a1 + 16);
      *(a1 + 32) = v10;
      *(a1 + 36) = 1;
    }

    pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New((a1 + 28), v35);
    goto LABEL_39;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v14)
  {
    v14 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  }

  if ((*(v14 + 3) ^ *a2) <= 7)
  {
    if ((*(a1 + 36) & 1) == 0)
    {
      *(a1 + 24) = (*(**(a1 + 8) + 112))(*(a1 + 8), a1 + 16);
      *(a1 + 32) = v15;
      *(a1 + 36) = 1;
    }

    pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New((a1 + 29), v35);
    goto LABEL_39;
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v16)
  {
    v16 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  }

  if ((*(v16 + 4) ^ *a2) <= 7)
  {
    if ((*(a1 + 36) & 1) == 0)
    {
      *(a1 + 24) = (*(**(a1 + 8) + 112))(*(a1 + 8), a1 + 16);
      *(a1 + 32) = v17;
      *(a1 + 36) = 1;
    }

    pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New((a1 + 30), v35);
    goto LABEL_39;
  }

  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v18)
  {
    v18 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  }

  if ((*(v18 + 5) ^ *a2) <= 7)
  {
    if ((*(a1 + 36) & 1) == 0)
    {
      *(a1 + 24) = (*(**(a1 + 8) + 112))(*(a1 + 8), a1 + 16);
      *(a1 + 32) = v19;
      *(a1 + 36) = 1;
    }

    pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New((a1 + 31), v35);
    goto LABEL_39;
  }

  v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v20)
  {
    v20 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  }

  if ((*(v20 + 6) ^ *a2) <= 7)
  {
    if ((*(a1 + 36) & 1) == 0)
    {
      *(a1 + 24) = (*(**(a1 + 8) + 112))(*(a1 + 8), a1 + 16);
      *(a1 + 32) = v21;
      *(a1 + 36) = 1;
    }

    pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New((a1 + 32), v35);
    goto LABEL_39;
  }

  v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v22)
  {
    v22 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  }

  if ((*(v22 + 7) ^ *a2) > 7)
  {
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
    if (!v23)
    {
      v23 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
    }

    if ((*(v23 + 8) ^ *a2) <= 7)
    {
      (*(**(a1 + 8) + 136))(&v32);
      for (i = 0; i != 3; ++i)
      {
        if (*pxrInternal__aapl__pxrReserved__::HdReprSelector::operator[](&v32, i))
        {
          sub_29A214860(v35, 3uLL);
          v28 = 0;
          for (j = 0; j != 3; ++j)
          {
            v30 = pxrInternal__aapl__pxrReserved__::HdReprSelector::operator[](&v32, j);
            sub_29A215100(v35);
            sub_29A166F2C((v36 + v28), v30);
            v28 += 8;
          }

          sub_29ABF3FFC(v35, &v31);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
        }
      }

      *a3 = 0uLL;
      if ((v34 & 7) != 0)
      {
        atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v33 & 7) != 0)
      {
        atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      goto LABEL_93;
    }

    v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
    if (!v25)
    {
      v25 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
    }

    if ((*(v25 + 9) ^ *a2) > 7 || (v26 = (*(**(a1 + 8) + 96))(*(a1 + 8), a1 + 16)) == 0)
    {
LABEL_67:
      *a3 = 0;
      *(a3 + 8) = 0;
      return;
    }

    v32 = 0;
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCullStyleTokens);
    if (v26 <= 2)
    {
      if (v26 == 1)
      {
        if (!v27)
        {
          v27 = sub_29ABF4404(&pxrInternal__aapl__pxrReserved__::HdCullStyleTokens);
        }

        v27 = (v27 + 8);
        goto LABEL_91;
      }

      if (v26 == 2)
      {
        if (!v27)
        {
          v27 = sub_29ABF4404(&pxrInternal__aapl__pxrReserved__::HdCullStyleTokens);
        }

        v27 = (v27 + 16);
        goto LABEL_91;
      }
    }

    else
    {
      switch(v26)
      {
        case 3:
          if (!v27)
          {
            v27 = sub_29ABF4404(&pxrInternal__aapl__pxrReserved__::HdCullStyleTokens);
          }

          v27 = (v27 + 24);
          goto LABEL_91;
        case 4:
          if (!v27)
          {
            v27 = sub_29ABF4404(&pxrInternal__aapl__pxrReserved__::HdCullStyleTokens);
          }

          v27 = (v27 + 32);
          goto LABEL_91;
        case 5:
          if (!v27)
          {
            v27 = sub_29ABF4404(&pxrInternal__aapl__pxrReserved__::HdCullStyleTokens);
          }

          v27 = (v27 + 40);
LABEL_91:
          sub_29A166F2C(&v32, v27);
          sub_29ABCCFA4(&v32, v35);
          goto LABEL_92;
      }
    }

    if (!v27)
    {
      v27 = sub_29ABF4404(&pxrInternal__aapl__pxrReserved__::HdCullStyleTokens);
    }

    goto LABEL_91;
  }

  (*(**(a1 + 8) + 104))(v35);
  *&v31 = 0;
  sub_29A4406A4(v35, &v31, &v32);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A186B14(v35);
  if (!v32)
  {
    goto LABEL_67;
  }

  sub_29ABCCFA4(&v32, v35);
LABEL_92:
  *a3 = *v35;
LABEL_93:
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ABF3F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29ABF3FFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A2077608;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ABF42F8(a2, v4);
}

void sub_29ABF4090(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

uint64_t sub_29ABF40B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_2A204475B;
  *a2 = *(result + 8);
  return result;
}

void *sub_29ABF40E4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2077590;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ABF413C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABF4158(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF4180(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF41B0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20775E0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29ABF42C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ABF42F8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2077670;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ABF4350(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABF436C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF4394(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF43C4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20776C0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdCullStyleTokens_StaticTokenType *sub_29ABF4404(atomic_ullong *a1)
{
  result = sub_29ABF444C();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdCullStyleTokens_StaticTokenType::~HdCullStyleTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdCullStyleTokens_StaticTokenType *sub_29ABF444C()
{
  v0 = operator new(0x48uLL);
  pxrInternal__aapl__pxrReserved__::HdCullStyleTokens_StaticTokenType::HdCullStyleTokens_StaticTokenType(v0);
  return v0;
}

void sub_29ABF4494(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF44BC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF44EC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2077738))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABF452C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v8 = a2;
  sub_29ABF458C(a1);
  v6[0] = &v8;
  v6[1] = &v7;
  sub_29ABF4614(a1, (a3 - a2) >> 3, v6);
}

void sub_29ABF458C(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    if (a1[3] || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      sub_29ABED558(a1);
    }

    else if (*a1)
    {
      v4 = a1[4];
      v5 = 8 * *a1;
      do
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v4 + 1);
        sub_29A1DE3A4(v4);
        v4 += 2;
        v5 -= 8;
      }

      while (v5);
    }

    *a1 = 0;
  }
}

void sub_29ABF4614(unint64_t *a1, unint64_t a2, _DWORD ***a3)
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
            v13 = &v7[a2];
            v14 = 8 * v3 - 8 * a2;
            do
            {
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v13 + 1);
              sub_29A1DE3A4(v13);
              v13 += 2;
              v14 -= 8;
            }

            while (v14);
LABEL_23:
            if (v7 != a1[4])
            {
              sub_29ABED558(a1);
              a1[4] = v7;
            }

            *a1 = a2;
            return;
          }

          v9 = a1[4];
          if (*(v9 - 1) < a2)
          {
            v7 = sub_29ABF47AC(a1, a2);
            sub_29A7D8ED8(v9, &v9[2 * v3], v7);
          }

          goto LABEL_19;
        }

        v7 = a1[4];
      }

      v11 = v7;
      if (v3 >= a2)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a1;
      }

      v7 = sub_29ABF47AC(a1, a2);
      sub_29A7D8ED8(v11, &v11[2 * v12], v7);
      if (v3 >= a2)
      {
        goto LABEL_23;
      }

LABEL_19:
      v10 = &v7[v3];
      goto LABEL_20;
    }

    if (8 * a2 / a2 == 8)
    {
      v10 = sub_29ABF47AC(a1, a2);
      v7 = v10;
LABEL_20:
      sub_29A7D8ED8(**a3, *a3[1], v10);
      goto LABEL_23;
    }
  }

  sub_29ABF458C(a1);
}

void *sub_29ABF47AC(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfPath>::_AllocateNew(size_t) [ELEM = pxrInternal__aapl__pxrReserved__::SdfPath]");
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
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

void sub_29ABF4840(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v8 = a2;
  sub_29ABF458C(a1);
  v6[0] = &v8;
  v6[1] = &v7;
  sub_29ABF4C74(a1, (a3 - a2) >> 3, v6);
}

void sub_29ABF48A0(uint64_t a1)
{
  *a1 = &unk_2A2077760;
  sub_29ABED558((a1 + 24));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ABF490C(uint64_t a1)
{
  *a1 = &unk_2A2077760;
  sub_29ABED558((a1 + 24));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void *sub_29ABF497C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  if (!v2)
  {
    v2 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  }

  sub_29A1D8028(a1, v2 + 1);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  if (!v3)
  {
    v3 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  }

  return sub_29A1D8028(a1, v3 + 2);
}

void sub_29ABF49FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29ABF4A14(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) > 7)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
    if (!v7)
    {
      v7 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
    }

    if ((*(v7 + 2) ^ *a2) > 7)
    {
      *a3 = 0;
      a3[1] = 0;
    }

    else
    {
      v8 = operator new(0x40uLL);
      v9 = v8;
      v10 = *(a1 + 16);
      v11 = *(a1 + 40);
      v17 = *(a1 + 24);
      v18 = v11;
      v12 = *(a1 + 56);
      v19 = v12;
      if (v12)
      {
        v13 = *(&v18 + 1);
        if (!*(&v18 + 1))
        {
          v13 = (v12 - 16);
        }

        atomic_fetch_add_explicit(v13, 1uLL, memory_order_relaxed);
      }

      *v8 = &unk_2A20777A8;
      sub_29A1E21F4(v8 + 2, (a1 + 8));
      sub_29A1E2240(v9 + 3, (a1 + 12));
      *(v9 + 2) = v10;
      v14 = v18;
      *(v9 + 6) = v17;
      *(v9 + 10) = v14;
      *(v9 + 7) = v12;
      if (v12)
      {
        v15 = *(v9 + 6);
        if (!v15)
        {
          v15 = (v12 - 16);
        }

        atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
        v10 = *(v9 + 2);
      }

      if (!v10)
      {
        *&v20 = "hd/dataSourceLegacyPrim.cpp";
        *(&v20 + 1) = "Hd_InstanceIndicesDataSource";
        v21 = 1512;
        v22 = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Hd_InstancerTopologyDataSource::Hd_InstanceIndicesDataSource::Hd_InstanceIndicesDataSource(const SdfPath &, HdSceneDelegate *, const VtArray<SdfPath>)";
        v23 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v20, "_sceneDelegate", 0);
      }

      v16 = operator new(0x20uLL);
      *v16 = &unk_2A20778B8;
      v16[1] = 0;
      v16[2] = 0;
      v16[3] = v9;
      sub_29ABED558(&v17);
      *a3 = v9;
      a3[1] = v16;
    }
  }

  else
  {
    sub_29ABE9C5C(a1 + 24, &v20);
    *a3 = v20;
  }
}

void sub_29ABF4BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_29ABED558((v9 + 24));
  sub_29A1DCEA8((v9 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v9);
  sub_29ABED558(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_29ABF4C74(unint64_t *a1, unint64_t a2, _DWORD ***a3)
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
            v13 = &v7[a2];
            v14 = 8 * v3 - 8 * a2;
            do
            {
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v13 + 1);
              sub_29A1DE3A4(v13);
              v13 += 2;
              v14 -= 8;
            }

            while (v14);
LABEL_23:
            if (v7 != a1[4])
            {
              sub_29ABED558(a1);
              a1[4] = v7;
            }

            *a1 = a2;
            return;
          }

          v9 = a1[4];
          if (*(v9 - 1) < a2)
          {
            v7 = sub_29ABF47AC(a1, a2);
            sub_29A7D8ED8(v9, &v9[2 * v3], v7);
          }

          goto LABEL_19;
        }

        v7 = a1[4];
      }

      v11 = v7;
      if (v3 >= a2)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a1;
      }

      v7 = sub_29ABF47AC(a1, a2);
      sub_29A7D8ED8(v11, &v11[2 * v12], v7);
      if (v3 >= a2)
      {
        goto LABEL_23;
      }

LABEL_19:
      v10 = &v7[v3];
      goto LABEL_20;
    }

    if (8 * a2 / a2 == 8)
    {
      v10 = sub_29ABF47AC(a1, a2);
      v7 = v10;
LABEL_20:
      sub_29A7D8ED8(**a3, *a3[1], v10);
      goto LABEL_23;
    }
  }

  sub_29ABF458C(a1);
}

void sub_29ABF4E0C(uint64_t a1)
{
  *a1 = &unk_2A20777A8;
  sub_29ABED558((a1 + 24));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ABF4E78(uint64_t a1)
{
  *a1 = &unk_2A20777A8;
  sub_29ABED558((a1 + 24));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

uint64_t sub_29ABF4EF0@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(result + 24) > a2)
  {
    (*(**(result + 16) + 248))(v5, *(result + 16), result + 8, *(result + 56) + 8 * a2);
    sub_29ABF4FA0(v5, &v4);
    *a3 = v4;
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  return result;
}

void *sub_29ABF4FA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A20777F0;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ABF5138(a2, v4);
}

uint64_t sub_29ABF5104@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ABF5138(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2077840;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ABF5190(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABF51AC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF51D4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF5204(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2077890))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABF5248(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF5270(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF52A0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2077908))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABF52E4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF530C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF533C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2077980))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABF537C(void ***a1)
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
        sub_29ABF5404(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29ABF5404(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 20));
  result = sub_29A1DE3A4((a2 + 16));
  v4 = *(a2 + 8);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

unint64_t sub_29ABF5468()
{
  v16 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "binding", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "coordSys", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "lightLinkingCollectionsDependency", 0);
  v1 = v0 + 3;
  v2 = *v0;
  v13 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v3;
    }
  }

  v4 = v0[1];
  v14 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v5;
    }
  }

  v6 = v0[2];
  v15 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v7;
    }
  }

  *v1 = 0;
  v0[4] = 0;
  v0[5] = 0;
  sub_29A12EF7C(v1, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v9 = *(&v13 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v10 = 0;
  atomic_compare_exchange_strong(&qword_2A1749260, &v10, v0);
  if (v10)
  {
    v11 = sub_29A764EAC(v0);
    operator delete(v11);
    return atomic_load(&qword_2A1749260);
  }

  return v0;
}

void sub_29ABF55E4(_Unwind_Exception *a1)
{
  v4 = 16;
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
      v6 = v1[2];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[1];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

void sub_29ABF5684(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

void *sub_29ABF56AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = &off_2A20428F8 + 2;
  result = operator new(0x20uLL);
  *result = *(a1 + 8);
  *(result + 2) = *(a1 + 24);
  atomic_store(0, result + 6);
  *a2 = result;
  atomic_fetch_add_explicit(result + 6, 1u, memory_order_relaxed);
  return result;
}

void *sub_29ABF5720(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2077A10;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ABF5778(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABF5794(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF57BC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF57EC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2077A60))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABF582C(uint64_t a1)
{
  *a1 = &unk_2A2077A88;
  v2 = (a1 + 12);
  v3 = (a1 + 32);
  sub_29A0176E4(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ABF58A0(uint64_t a1)
{
  *a1 = &unk_2A2077A88;
  v2 = (a1 + 12);
  v4 = (a1 + 32);
  sub_29A0176E4(&v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v2);
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
  operator delete(v3);
}

uint64_t sub_29ABF5918(uint64_t a1)
{
  v2 = atomic_load((a1 + 24));
  if ((v2 & 1) == 0)
  {
    sub_29ABF59D0(a1);
  }

  return (*(a1 + 40) - *(a1 + 32)) >> 4;
}

void sub_29ABF5958(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load((a1 + 24));
  if ((v6 & 1) == 0)
  {
    sub_29ABF59D0(a1);
  }

  v7 = *(a1 + 32);
  if (a2 >= (*(a1 + 40) - v7) >> 4)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v8 = *(v7 + 16 * a2);
    *a3 = v8;
    if (*(&v8 + 1))
    {
      atomic_fetch_add_explicit((*(&v8 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_29ABF59D0(uint64_t a1)
{
  v1 = atomic_load((a1 + 24));
  if ((v1 & 1) == 0)
  {
    (*(**(a1 + 16) + 160))(&v7);
    if (v7 != v8)
    {
      sub_29A039314((a1 + 32), 0xCCCCCCCCCCCCCCCDLL * ((v8 - v7) >> 3));
      v3 = v7;
      v4 = v8;
      while (v3 != v4)
      {
        pxrInternal__aapl__pxrReserved__::HdCategoriesSchema::BuildRetained(*v3, 0, *(v3 + 32), 0, &v5);
        v6 = v5;
        v5 = 0uLL;
        sub_29A01729C((a1 + 32), &v6);
        if (*(&v6 + 1))
        {
          sub_29A014BEC(*(&v6 + 1));
        }

        if (*(&v5 + 1))
        {
          sub_29A014BEC(*(&v5 + 1));
        }

        v3 += 40;
      }
    }

    atomic_store(1u, (a1 + 24));
    *&v6 = &v7;
    sub_29ABF5B1C(&v6);
  }
}

void sub_29ABF5ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, char a14)
{
  a11 = &a14;
  sub_29ABF5B1C(&a11);
  _Unwind_Resume(a1);
}

void sub_29ABF5B1C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29ABF5B70(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_29ABF5B70(uint64_t result, uint64_t a2)
{
  if (*(result + 8) != a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
  }

  *(result + 8) = a2;
  return result;
}

void sub_29ABF5BC4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF5BEC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF5C1C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2077B20))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABF5C5C(uint64_t a1)
{
  *a1 = &unk_2A2077B48;
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ABF5CCC(uint64_t a1)
{
  *a1 = &unk_2A2077B48;
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

void *sub_29ABF5D40@<X0>(void *a1@<X8>)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  if (!v2)
  {
    v2 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  }

  v3 = *(v2 + 1);
  v13 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v13 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  }

  v5 = *(v4 + 3);
  v14 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v14 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  }

  v7 = *(v6 + 2);
  v15 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v15 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  if (!v8)
  {
    v8 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  }

  v9 = *(v8 + 4);
  v16 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v13, &v17, 4uLL);
  for (i = 24; i != -8; i -= 8)
  {
    v12 = *(&v13 + i);
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29ABF5F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
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

void sub_29ABF5F68(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) <= 7)
  {
    sub_29ABF66D4(a1, v49);
    v7 = operator new(0x18uLL);
    v9 = v49[1];
    v8 = v49[0];
    *v7 = &unk_2A2077B90;
    *(v7 + 8) = __PAIR128__(v9, v8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = operator new(0x20uLL);
    v11 = &unk_2A2077FE8;
LABEL_7:
    *v10 = v11;
    v10[1] = 0;
    v10[2] = 0;
    v10[3] = v7;
    *a3 = v7;
    a3[1] = v10;
    if (v9)
    {
      sub_29A014BEC(v9);
    }

    return;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  if (!v12)
  {
    v12 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  }

  if ((*(v12 + 3) ^ *a2) <= 7)
  {
    (*(**(a1 + 16) + 56))(v49);
    memset(v47, 0, sizeof(v47));
    v44 = v49[1];
    if ((v49[1] & 7) != 0)
    {
      v13 = v49[1] & 0xFFFFFFFFFFFFFFF8;
      if ((atomic_fetch_add_explicit((v49[1] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v44 = v13;
      }
    }

    sub_29ABCCFA4(&v44, &v45);
    v46 = v45;
    v45 = 0uLL;
    v14 = pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::Builder::SetFaceVaryingLinearInterpolation(v47, &v46);
    v41 = v49[0];
    if ((v49[0] & 7) != 0)
    {
      v15 = v49[0] & 0xFFFFFFFFFFFFFFF8;
      if ((atomic_fetch_add_explicit((v49[0] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v41 = v15;
      }
    }

    sub_29ABCCFA4(&v41, &v42);
    v43 = v42;
    v42 = 0uLL;
    v16 = pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::Builder::SetInterpolateBoundary(v14, &v43);
    v38 = v50;
    if ((v50 & 7) != 0)
    {
      v17 = v50 & 0xFFFFFFFFFFFFFFF8;
      if ((atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v38 = v17;
      }
    }

    sub_29ABCCFA4(&v38, &v39);
    v40 = v39;
    v39 = 0uLL;
    v18 = pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::Builder::SetTriangleSubdivisionRule(v16, &v40);
    sub_29ABF4FA0(&v54, &v36);
    v37 = v36;
    v36 = 0uLL;
    v19 = pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::Builder::SetCornerIndices(v18, &v37);
    sub_29ABF6834(&v55, &v34);
    v35 = v34;
    v34 = 0uLL;
    v20 = pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::Builder::SetCornerSharpnesses(v19, &v35);
    sub_29ABF4FA0(&v51, &v32);
    v33 = v32;
    v32 = 0uLL;
    v21 = pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::Builder::SetCreaseIndices(v20, &v33);
    sub_29ABF4FA0(&v52, &v30);
    v31 = v30;
    v30 = 0uLL;
    v22 = pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::Builder::SetCreaseLengths(v21, &v31);
    sub_29ABF6834(&v53, &v28);
    v29 = v28;
    v28 = 0uLL;
    v23 = pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::Builder::SetCreaseSharpnesses(v22, &v29);
    pxrInternal__aapl__pxrReserved__::HdSubdivisionTagsSchema::Builder::Build(v23, &v48);
    *a3 = v48;
    v48 = 0uLL;
    if (*(&v29 + 1))
    {
      sub_29A014BEC(*(&v29 + 1));
    }

    if (*(&v28 + 1))
    {
      sub_29A014BEC(*(&v28 + 1));
    }

    if (*(&v31 + 1))
    {
      sub_29A014BEC(*(&v31 + 1));
    }

    if (*(&v30 + 1))
    {
      sub_29A014BEC(*(&v30 + 1));
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

    if (*(&v37 + 1))
    {
      sub_29A014BEC(*(&v37 + 1));
    }

    if (*(&v36 + 1))
    {
      sub_29A014BEC(*(&v36 + 1));
    }

    if (*(&v40 + 1))
    {
      sub_29A014BEC(*(&v40 + 1));
    }

    if (*(&v39 + 1))
    {
      sub_29A014BEC(*(&v39 + 1));
    }

    if ((v38 & 7) != 0)
    {
      atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (*(&v43 + 1))
    {
      sub_29A014BEC(*(&v43 + 1));
    }

    if (*(&v42 + 1))
    {
      sub_29A014BEC(*(&v42 + 1));
    }

    if ((v41 & 7) != 0)
    {
      atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (*(&v46 + 1))
    {
      sub_29A014BEC(*(&v46 + 1));
    }

    if (*(&v45 + 1))
    {
      sub_29A014BEC(*(&v45 + 1));
    }

    if ((v44 & 7) != 0)
    {
      atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_29ABF7D9C(v47);
    sub_29AB72D70();
  }

  v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  if (!v24)
  {
    v24 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  }

  if ((*(v24 + 2) ^ *a2) <= 7)
  {
    sub_29ABF66D4(a1, v49);
    v25 = operator new(0x18uLL);
    v7 = v25;
    v9 = v49[1];
    v26 = v49[0];
    *v25 = &unk_2A2077F38;
    *(v25 + 8) = __PAIR128__(v9, v26);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *v25 = &unk_2A2078190;
    v10 = operator new(0x20uLL);
    v11 = &unk_2A20781E0;
    goto LABEL_7;
  }

  v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  if (!v27)
  {
    v27 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  }

  if ((*(v27 + 4) ^ *a2) > 7)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    LOBYTE(v47[0]) = (*(**(a1 + 16) + 88))(*(a1 + 16), a1 + 8);
    pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(v47, v49);
    *a3 = *v49;
  }
}

void sub_29ABF64F0(_Unwind_Exception *a1)
{
  sub_29ABF7E7C(v2);
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(a1);
}

void sub_29ABF66D4(uint64_t a1@<X0>, void *a2@<X8>)
{
  sp_mut = std::__get_sp_mut((a1 + 24));
  std::__sp_mut::lock(sp_mut);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = v6;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__sp_mut::unlock(sp_mut);
  if (!v6)
  {
    v7 = operator new(0x38uLL);
    v7[1] = 0;
    v7[2] = 0;
    *v7 = &unk_2A2078060;
    v8 = *(a1 + 16);
    sub_29A1E21F4(v7 + 6, (a1 + 8));
    sub_29A1E2240(v7 + 7, (a1 + 12));
    v7[5] = 0;
    v7[6] = 0;
    v7[4] = v8;
    *a2 = v7 + 3;
    a2[1] = v7;
    if (v5)
    {
      sub_29A014BEC(v5);
    }

    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    v9 = std::__get_sp_mut((a1 + 24));
    std::__sp_mut::lock(v9);
    v10 = *(a1 + 32);
    *(a1 + 24) = v7 + 3;
    *(a1 + 32) = v7;
    std::__sp_mut::unlock(v9);
    if (v10)
    {

      sub_29A014BEC(v10);
    }
  }
}

void sub_29ABF6808(_Unwind_Exception *a1)
{
  sub_29A014BEC(v1);
  sub_29A014BEC(v1);
  _Unwind_Resume(a1);
}

void *sub_29ABF6834@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A20780B0;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ABF7C90(a2, v4);
}

void sub_29ABF68C4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2077B90;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ABF6920(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2077B90;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void *sub_29ABF6980@<X0>(void *a1@<X8>)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!v2)
  {
    v2 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  }

  v3 = *(v2 + 1);
  v13 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v13 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  }

  v5 = *(v4 + 2);
  v14 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v14 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  }

  v7 = *(v6 + 3);
  v15 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v15 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!v8)
  {
    v8 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  }

  v9 = *(v8 + 4);
  v16 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v13, &v17, 4uLL);
  for (i = 24; i != -8; i -= 8)
  {
    v12 = *(&v13 + i);
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29ABF6B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
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

void *sub_29ABF6BA8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) <= 7)
  {
    v7 = operator new(0x18uLL);
    v8 = v7;
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    *v7 = &unk_2A2077C40;
    v7[1] = v10;
    v7[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    *v7 = &unk_2A2077BD8;
    result = operator new(0x20uLL);
    v12 = &unk_2A2077CC8;
LABEL_25:
    *result = v12;
    result[1] = 0;
    result[2] = 0;
    result[3] = v8;
    *a3 = v8;
    a3[1] = result;
    return result;
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!v13)
  {
    v13 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  }

  if ((*(v13 + 2) ^ *a2) <= 7)
  {
    v14 = operator new(0x18uLL);
    v8 = v14;
    v16 = *(a1 + 8);
    v15 = *(a1 + 16);
    *v14 = &unk_2A2077C40;
    v14[1] = v16;
    v14[2] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    *v14 = &unk_2A2077D40;
    result = operator new(0x20uLL);
    v12 = &unk_2A2077D90;
    goto LABEL_25;
  }

  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!v17)
  {
    v17 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  }

  if ((*(v17 + 3) ^ *a2) <= 7)
  {
    v18 = operator new(0x18uLL);
    v8 = v18;
    v20 = *(a1 + 8);
    v19 = *(a1 + 16);
    *v18 = &unk_2A2077C40;
    v18[1] = v20;
    v18[2] = v19;
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    *v18 = &unk_2A2077E08;
    result = operator new(0x20uLL);
    v12 = &unk_2A2077E58;
    goto LABEL_25;
  }

  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!result)
  {
    result = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  }

  if ((result[4] ^ *a2) <= 7)
  {
    v21 = operator new(0x18uLL);
    v8 = v21;
    v23 = *(a1 + 8);
    v22 = *(a1 + 16);
    *v21 = &unk_2A2077F38;
    v21[1] = v23;
    v21[2] = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    *v21 = &unk_2A2077ED0;
    result = operator new(0x20uLL);
    v12 = &unk_2A2077F70;
    goto LABEL_25;
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens_StaticTokenType *sub_29ABF6EE4(atomic_ullong *a1)
{
  result = sub_29ABF6F2C();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens_StaticTokenType::~HdMeshTopologySchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens_StaticTokenType *sub_29ABF6F2C()
{
  v0 = operator new(0x50uLL);
  pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens_StaticTokenType::HdMeshTopologySchemaTokens_StaticTokenType(v0);
  return v0;
}

void sub_29ABF6F70(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2077C40;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ABF6FCC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2077C40;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29ABF702C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043D18;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29ABF70C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29ABF713C(*(a1 + 8), &v7);
  v3 = v7;
  v4 = *(v7 + 40);
  *a2 = *(v7 + 24);
  *(a2 + 16) = v4;
  v5 = *(v3 + 56);
  *(a2 + 32) = v5;
  if (v5)
  {
    v6 = (v5 - 16);
    if (*(a2 + 24))
    {
      v6 = *(a2 + 24);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29ABF713C(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29ABEC66C((a1 + 16), a2);
  if (!*a2)
  {
    (*(**(a1 + 8) + 40))(v9);
    sub_29ABF7258(v9, &v10);
    v4 = v10;
    v10 = 0uLL;
    v5 = a2[1];
    *a2 = v4;
    if (v5)
    {
      sub_29A014BEC(v5);
      if (*(&v10 + 1))
      {
        sub_29A014BEC(*(&v10 + 1));
      }
    }

    pxrInternal__aapl__pxrReserved__::HdMeshTopology::~HdMeshTopology(v9);
    v6 = a2[1];
    v7 = *a2;
    v8 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29ABEC600((a1 + 16), &v7);
    if (v8)
    {
      sub_29A014BEC(v8);
    }
  }
}

void sub_29ABF721C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  v13 = *(v11 + 8);
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29ABF7258@<X0>(const pxrInternal__aapl__pxrReserved__::HdMeshTopology *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x208uLL);
  result = sub_29ABF72B4(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *sub_29ABF72B4(void *a1, const pxrInternal__aapl__pxrReserved__::HdMeshTopology *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2077C78;
  pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology((a1 + 3), a2, 0);
  return a1;
}

void sub_29ABF7334(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2077C78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29ABF73A4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF73CC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF73FC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2077D18))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABF743C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2077C40;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ABF7498(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2077C40;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29ABF74F8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29ABF713C(*(a1 + 8), &v7);
  v3 = v7;
  v4 = *(v7 + 80);
  *a2 = *(v7 + 64);
  *(a2 + 16) = v4;
  v5 = *(v3 + 96);
  *(a2 + 32) = v5;
  if (v5)
  {
    v6 = (v5 - 16);
    if (*(a2 + 24))
    {
      v6 = *(a2 + 24);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29ABF756C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF7594(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF75C4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2077DE0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABF7604(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2077C40;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ABF7660(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2077C40;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29ABF76C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29ABF713C(*(a1 + 8), &v7);
  v3 = v7;
  v4 = *(v7 + 120);
  *a2 = *(v7 + 104);
  *(a2 + 16) = v4;
  v5 = *(v3 + 136);
  *(a2 + 32) = v5;
  if (v5)
  {
    v6 = (v5 - 16);
    if (*(a2 + 24))
    {
      v6 = *(a2 + 24);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29ABF7738(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF7760(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF7790(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2077EA8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABF77D0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2077F38;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ABF782C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2077F38;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void *sub_29ABF788C@<X0>(uint64_t a1@<X0>, atomic_uint **a2@<X8>)
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

void sub_29ABF792C(uint64_t a1@<X0>, atomic_uint **a2@<X8>)
{
  sub_29ABF713C(*(a1 + 8), &v5);
  v3 = *(v5 + 16);
  *a2 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v4;
    }
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29ABF79A0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF79C8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF79F8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2077FC0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABF7A3C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF7A64(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF7A94(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2078038))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABF7AF4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2078060;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

_DWORD *sub_29ABF7B38(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));

  return sub_29A1DE3A4((a1 + 24));
}

uint64_t sub_29ABF7C5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ABF7C90(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2078118;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ABF7CE8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABF7D04(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF7D2C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF7D5C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2078168))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ABF7D9C(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = a1[13];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = a1[9];
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  v7 = a1[5];
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  v8 = a1[3];
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  v9 = a1[1];
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  return a1;
}

void sub_29ABF7E20(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2077F38;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ABF7E7C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2077F38;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29ABF7EDC(uint64_t a1@<X0>, atomic_uint **a2@<X8>)
{
  sub_29ABF713C(*(a1 + 8), &v5);
  v3 = *(v5 + 8);
  *a2 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v4;
    }
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29ABF7F48(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF7F70(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF7FA0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2078230))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABF7FE4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF800C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF803C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20782A8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABF807C(uint64_t a1)
{
  *a1 = &unk_2A20782D0;
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ABF80EC(uint64_t a1)
{
  *a1 = &unk_2A20782D0;
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

void *sub_29ABF8160@<X0>(void *a1@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
  if (!v2)
  {
    v2 = sub_29ABC3504(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
  }

  v3 = v2[1];
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

void sub_29ABF824C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
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
    sp_mut = std::__get_sp_mut((a1 + 24));
    std::__sp_mut::lock(sp_mut);
    v9 = *(a1 + 24);
    v8 = *(a1 + 32);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::__sp_mut::unlock(sp_mut);
    if (!v9)
    {
      v10 = operator new(0x38uLL);
      v10->__shared_owners_ = 0;
      v10->__shared_weak_owners_ = 0;
      v10->__vftable = &unk_2A20788B0;
      v9 = v10 + 1;
      v11 = *(a1 + 16);
      sub_29A1E21F4(&v10[1], (a1 + 8));
      sub_29A1E2240(&v10[1].__vftable + 1, (a1 + 12));
      v10[1].__shared_weak_owners_ = 0;
      v10[2].__vftable = 0;
      v10[1].__shared_owners_ = v11;
      if (v8)
      {
        sub_29A014BEC(v8);
      }

      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = std::__get_sp_mut((a1 + 24));
      std::__sp_mut::lock(v12);
      v13 = *(a1 + 32);
      *(a1 + 24) = v9;
      *(a1 + 32) = v10;
      std::__sp_mut::unlock(v12);
      if (v13)
      {
        sub_29A014BEC(v13);
      }

      v8 = v10;
    }

    v14 = operator new(0x18uLL);
    *v14 = &unk_2A2078318;
    v14[1] = v9;
    v14[2] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = operator new(0x20uLL);
    *v15 = &unk_2A2078838;
    v15[1] = 0;
    v15[2] = 0;
    v15[3] = v14;
    *a3 = v14;
    a3[1] = v15;
    if (v8)
    {

      sub_29A014BEC(v8);
    }
  }
}

void sub_29ABF842C(_Unwind_Exception *a1)
{
  sub_29A014BEC(v1);
  sub_29A014BEC(v1);
  _Unwind_Resume(a1);
}

void sub_29ABF846C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2078318;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ABF84C8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2078318;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void *sub_29ABF8528@<X0>(void *a1@<X8>)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  if (!v2)
  {
    v2 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  }

  v3 = *(v2 + 1);
  v15 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v15 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  }

  v5 = *(v4 + 2);
  v16 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  }

  v7 = *(v6 + 3);
  v17 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  if (!v8)
  {
    v8 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  }

  v9 = *(v8 + 4);
  v18 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v18 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  if (!v10)
  {
    v10 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  }

  v11 = *(v10 + 5);
  v19 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v19 &= 0xFFFFFFFFFFFFFFF8;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v15, &v20, 5uLL);
  for (i = 32; i != -8; i -= 8)
  {
    v14 = *(&v15 + i);
    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29ABF8748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

void *sub_29ABF879C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) <= 7)
  {
    v7 = operator new(0x18uLL);
    v8 = v7;
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    *v7 = &unk_2A20783C8;
    v7[1] = v10;
    v7[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    *v7 = &unk_2A2078360;
    result = operator new(0x20uLL);
    v12 = &unk_2A2078450;
LABEL_31:
    *result = v12;
    result[1] = 0;
    result[2] = 0;
    result[3] = v8;
    *a3 = v8;
    a3[1] = result;
    return result;
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  if (!v13)
  {
    v13 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  }

  if ((*(v13 + 2) ^ *a2) <= 7)
  {
    v14 = operator new(0x18uLL);
    v8 = v14;
    v16 = *(a1 + 8);
    v15 = *(a1 + 16);
    *v14 = &unk_2A20783C8;
    v14[1] = v16;
    v14[2] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    *v14 = &unk_2A20784C8;
    result = operator new(0x20uLL);
    v12 = &unk_2A2078518;
    goto LABEL_31;
  }

  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  if (!v17)
  {
    v17 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  }

  if ((*(v17 + 3) ^ *a2) <= 7)
  {
    v18 = operator new(0x18uLL);
    v8 = v18;
    v20 = *(a1 + 8);
    v19 = *(a1 + 16);
    *v18 = &unk_2A20785F8;
    v18[1] = v20;
    v18[2] = v19;
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    *v18 = &unk_2A2078590;
    result = operator new(0x20uLL);
    v12 = &unk_2A2078630;
    goto LABEL_31;
  }

  v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  if (!v21)
  {
    v21 = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  }

  if ((*(v21 + 4) ^ *a2) <= 7)
  {
    v22 = operator new(0x18uLL);
    v8 = v22;
    v24 = *(a1 + 8);
    v23 = *(a1 + 16);
    *v22 = &unk_2A20785F8;
    v22[1] = v24;
    v22[2] = v23;
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
    }

    *v22 = &unk_2A20786A8;
    result = operator new(0x20uLL);
    v12 = &unk_2A20786F8;
    goto LABEL_31;
  }

  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  if (!result)
  {
    result = sub_29ABC5510(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchemaTokens);
  }

  if ((result[5] ^ *a2) <= 7)
  {
    v25 = operator new(0x18uLL);
    v8 = v25;
    v27 = *(a1 + 8);
    v26 = *(a1 + 16);
    *v25 = &unk_2A20785F8;
    v25[1] = v27;
    v25[2] = v26;
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }

    *v25 = &unk_2A2078770;
    result = operator new(0x20uLL);
    v12 = &unk_2A20787C0;
    goto LABEL_31;
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

void sub_29ABF8B94(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20783C8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ABF8BF0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20783C8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29ABF8C50(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043D18;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29ABF8CE4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29ABF8D5C(*(a1 + 8), &v7);
  v3 = v7;
  v4 = *(v7 + 48);
  *a2 = *(v7 + 32);
  *(a2 + 16) = v4;
  v5 = *(v3 + 64);
  *(a2 + 32) = v5;
  if (v5)
  {
    v6 = (v5 - 16);
    if (*(a2 + 24))
    {
      v6 = *(a2 + 24);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29ABF8D5C(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29ABEC66C((a1 + 16), a2);
  if (!*a2)
  {
    (*(**(a1 + 8) + 48))(v9);
    sub_29ABF8E78(v9, &v10);
    v4 = v10;
    v10 = 0uLL;
    v5 = a2[1];
    *a2 = v4;
    if (v5)
    {
      sub_29A014BEC(v5);
      if (*(&v10 + 1))
      {
        sub_29A014BEC(*(&v10 + 1));
      }
    }

    pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::~HdBasisCurvesTopology(v9);
    v6 = a2[1];
    v7 = *a2;
    v8 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29ABEC600((a1 + 16), &v7);
    if (v8)
    {
      sub_29A014BEC(v8);
    }
  }
}

void sub_29ABF8E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  v14 = *(v12 + 8);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29ABF8E78@<X0>(const pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xE0uLL);
  result = sub_29ABF8ED4(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *sub_29ABF8ED4(void *a1, const pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2078400;
  pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::HdBasisCurvesTopology((a1 + 3), a2);
  return a1;
}

void sub_29ABF8F50(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2078400;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29ABF8FC0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF8FE8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF9018(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20784A0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABF9058(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20783C8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ABF90B4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20783C8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29ABF9114(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29ABF8D5C(*(a1 + 8), &v7);
  v3 = v7;
  v4 = *(v7 + 88);
  *a2 = *(v7 + 72);
  *(a2 + 16) = v4;
  v5 = *(v3 + 104);
  *(a2 + 32) = v5;
  if (v5)
  {
    v6 = (v5 - 16);
    if (*(a2 + 24))
    {
      v6 = *(a2 + 24);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29ABF918C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF91B4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF91E4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2078568))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABF9224(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20785F8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ABF9280(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20785F8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void *sub_29ABF92E0@<X0>(uint64_t a1@<X0>, atomic_uint **a2@<X8>)
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

void sub_29ABF9380(uint64_t a1@<X0>, atomic_uint **a2@<X8>)
{
  sub_29ABF8D5C(*(a1 + 8), &v5);
  v3 = *(v5 + 16);
  *a2 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v4;
    }
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29ABF93F4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF941C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF944C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2078680))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABF948C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20785F8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ABF94E8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20785F8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29ABF9548(uint64_t a1@<X0>, atomic_uint **a2@<X8>)
{
  sub_29ABF8D5C(*(a1 + 8), &v5);
  v3 = *(v5 + 8);
  *a2 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v4;
    }
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29ABF95B4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF95DC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF960C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2078748))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABF964C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20785F8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ABF96A8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20785F8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29ABF9708(uint64_t a1@<X0>, atomic_uint **a2@<X8>)
{
  sub_29ABF8D5C(*(a1 + 8), &v5);
  v3 = *(v5 + 24);
  *a2 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v4;
    }
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29ABF9774(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF979C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF97CC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2078810))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABF9810(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF9838(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF9868(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2078888))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABF98C8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20788B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

_DWORD *sub_29ABF990C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));

  return sub_29A1DE3A4((a1 + 24));
}

void sub_29ABF9960(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF9988(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF99B8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2078950))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABF99FC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

uint64_t sub_29ABF9A24@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = *(result + 8);
  a2[1] = &off_2A20789D0 + 3;
  return result;
}

void *sub_29ABF9B78@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &off_2A20789D0 + 3;
  return result;
}

void *sub_29ABF9B90(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2078AB8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ABF9BE8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABF9C04(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABF9C2C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABF9C5C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2078B08))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABF9C9C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2078B30;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ABF9CFC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2078B30;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

void *sub_29ABF9D60@<X0>(void *a1@<X8>)
{
  v56 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v2)
  {
    v2 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v3 = *(v2 + 1);
  v39 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v5 = *(v4 + 2);
  v40 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v7 = *(v6 + 3);
  v41 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v8)
  {
    v8 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v9 = *(v8 + 4);
  v42 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v10)
  {
    v10 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v11 = *(v10 + 5);
  v43 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v12)
  {
    v12 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v13 = *(v12 + 6);
  v44 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v14)
  {
    v14 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v15 = *(v14 + 7);
  v45 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v45 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v16)
  {
    v16 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v17 = *(v16 + 8);
  v46 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v46 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v18)
  {
    v18 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v19 = *(v18 + 9);
  v47 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v47 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v20)
  {
    v20 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v21 = *(v20 + 10);
  v48 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v48 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v22)
  {
    v22 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v23 = *(v22 + 11);
  v49 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v49 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v24)
  {
    v24 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v25 = *(v24 + 12);
  v50 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v50 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v26)
  {
    v26 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v27 = *(v26 + 13);
  v51 = v27;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v51 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v28)
  {
    v28 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v29 = *(v28 + 14);
  v52 = v29;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v52 &= 0xFFFFFFFFFFFFFFF8;
  }

  v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v30)
  {
    v30 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v31 = *(v30 + 15);
  v53 = v31;
  if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v53 &= 0xFFFFFFFFFFFFFFF8;
  }

  v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v32)
  {
    v32 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v33 = *(v32 + 16);
  v54 = v33;
  if ((v33 & 7) != 0 && (atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v54 &= 0xFFFFFFFFFFFFFFF8;
  }

  v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v34)
  {
    v34 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  v35 = *(v34 + 17);
  v55 = v35;
  if ((v35 & 7) != 0 && (atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v55 &= 0xFFFFFFFFFFFFFFF8;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v39, &v56, 0x11uLL);
  for (i = 128; i != -8; i -= 8)
  {
    v38 = *(&v39 + i);
    if ((v38 & 7) != 0)
    {
      atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29ABFA310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

void *sub_29ABFA364@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v52 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) <= 7)
  {
    (*(**(a1 + 16) + 328))(&v49);
    if (sub_29ABC9C6C(&v49) && ((BYTE8(v49) & 4) != 0 ? (v7 = (*((*(&v49 + 1) & 0xFFFFFFFFFFFFFFF8) + 168))(&v49)) : (v7 = &v49), *v7))
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      if (!v8)
      {
        v8 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      }

      v9 = (v8 + 160);
    }

    else
    {
      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      if (!v13)
      {
        v13 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      }

      v9 = (v13 + 152);
    }

    sub_29ABCCFA4(v9, v45);
    goto LABEL_57;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v10)
  {
    v10 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  if ((*(v10 + 7) ^ *a2) <= 7)
  {
    (*(**(a1 + 16) + 328))(&v49);
    if (sub_29ABC9D4C(&v49))
    {
      if ((BYTE8(v49) & 4) != 0)
      {
        v11 = (*((*(&v49 + 1) & 0xFFFFFFFFFFFFFFF8) + 168))(&v49);
      }

      else
      {
        v11 = &v49;
      }

      v12 = *v11;
    }

    else
    {
      v12 = 0xFF7FFFFF7F7FFFFFLL;
    }

    v27 = operator new(0x10uLL);
    *v27 = &unk_2A2078B78;
    v27[1] = v12;
    sub_29ABFBC18(v45, v27);
LABEL_57:
    *a3 = v45[0];
    return sub_29A186B14(&v49);
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v14)
  {
    v14 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  if ((*(v14 + 23) ^ *a2) <= 7)
  {
    (*(**(a1 + 16) + 328))(&v49);
    if (sub_29ABC9DE0(&v49))
    {
      if ((BYTE8(v49) & 4) != 0)
      {
        v15 = (*((*(&v49 + 1) & 0xFFFFFFFFFFFFFFF8) + 168))(&v49);
      }

      else
      {
        v15 = &v49;
      }

      v16 = *v15;
    }

    else
    {
      v16 = 4;
    }

    v34 = operator new(0x10uLL);
    *v34 = &unk_2A2078C40;
    v34[2] = v16;
    sub_29ABFBF4C(v45, v34);
    goto LABEL_57;
  }

  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v17)
  {
    v17 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  if ((*(v17 + 8) ^ *a2) <= 7)
  {
    v18 = *(a1 + 16);
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    if (!v19)
    {
      v19 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
    }

    (*(*v18 + 328))(&v47, v18, a1 + 8, v19 + 56);
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    if (sub_29ABC9EC0(&v47))
    {
      v20 = ((v48 & 4) != 0 ? (*((v48 & 0xFFFFFFFFFFFFFFF8) + 168))(&v47) : v47);
      v21 = (v20[1] - *v20) >> 5;
      memset(v45, 0, sizeof(v45));
      v46 = v45;
      sub_29A196FC0(&v49, v21, &v46);
      v22 = *v20;
      if (v20[1] != *v20)
      {
        v23 = 0;
        v24 = 0;
        do
        {
          sub_29A19722C(&v49);
          v25 = (v51 + v23);
          v26 = *(v22 + v23 + 16);
          *v25 = *(v22 + v23);
          v25[1] = v26;
          ++v24;
          v22 = *v20;
          v23 += 32;
        }

        while (v24 < (v20[1] - *v20) >> 5);
      }
    }

    sub_29ABFABE8(&v49, v45);
    *a3 = v45[0];
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
  }

  v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v28)
  {
    v28 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  if ((*(v28 + 11) ^ *a2) < 8)
  {
    goto LABEL_49;
  }

  v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v29)
  {
    v29 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  if ((*(v29 + 12) ^ *a2) <= 7)
  {
LABEL_49:
    v30 = operator new(0x20uLL);
    v31 = *(a1 + 16);
    *v30 = &unk_2A2078EA0;
    sub_29A1E21F4(v30 + 2, (a1 + 8));
    sub_29A1E2240(v30 + 3, (a1 + 12));
    v32 = *a2;
    *(v30 + 2) = *a2;
    if ((v32 & 7) != 0 && (atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *(v30 + 2) &= 0xFFFFFFFFFFFFFFF8;
    }

    *(v30 + 3) = v31;
    if (!v31)
    {
      *&v49 = "hd/dataSourceLegacyPrim.cpp";
      *(&v49 + 1) = "Hd_TypedDataSourceLegacyCameraParamValue";
      *&v50 = 923;
      *(&v50 + 1) = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Hd_TypedDataSourceLegacyCameraParamValue<double>::Hd_TypedDataSourceLegacyCameraParamValue(const SdfPath &, const TfToken &, HdSceneDelegate *) [T = double]";
      LOBYTE(v51) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v49, "_sceneDelegate", 0);
    }

    result = operator new(0x20uLL);
    *result = &unk_2A2078EF0;
    result[1] = 0;
    result[2] = 0;
    result[3] = v30;
    *a3 = v30;
    *(a3 + 8) = result;
    return result;
  }

  v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v35)
  {
    v35 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  if ((*(v35 + 14) ^ *a2) <= 7)
  {
    result = sub_29ABFAC78((a1 + 8), a2, (a1 + 16), &v49);
LABEL_62:
    *a3 = v49;
    return result;
  }

  v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v36)
  {
    v36 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  if ((*(v36 + 16) ^ *a2) > 7)
  {
    v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v37)
    {
      v37 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    if ((*(v37 + 17) ^ *a2) > 7)
    {
      v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      if (!v38)
      {
        v38 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      }

      v39 = *(v38 + 21);
      v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      if (!v40)
      {
        v43 = v39;
        v40 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
        v39 = v43;
      }

      v41 = *(v40 + 22);
      if (v39 != v41)
      {
        while ((*v39 ^ *a2) >= 8)
        {
          if (++v39 == v41)
          {
            v39 = *(v40 + 22);
            break;
          }
        }
      }

      v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      if (!v42)
      {
        v44 = v39;
        v42 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
        v39 = v44;
      }

      if (v39 == *(v42 + 22))
      {
        result = sub_29ABFBA34((a1 + 8), a2, (a1 + 16), &v49);
      }

      else
      {
        result = sub_29ABFB9B0((a1 + 8), a2, (a1 + 16), &v49);
      }

      goto LABEL_62;
    }

    return sub_29ABFB3DC(a1, a3);
  }

  else
  {

    return sub_29ABFAE08(a1, a3);
  }
}

void sub_29ABFAB20(_Unwind_Exception *a1)
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

void *sub_29ABFABE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A2078DD8;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ABFC160(a2, v4);
}

void *sub_29ABFAC78@<X0>(_DWORD *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x20uLL);
  v9 = *a3;
  *v8 = &unk_2A2078F68;
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
    v12[3] = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Hd_TypedDataSourceLegacyCameraParamValue<BOOL>::Hd_TypedDataSourceLegacyCameraParamValue(const SdfPath &, const TfToken &, HdSceneDelegate *) [T = BOOL]";
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v12, "_sceneDelegate", 0);
  }

  *a4 = v8;
  result = operator new(0x20uLL);
  *result = &unk_2A2078FB8;
  result[1] = 0;
  result[2] = 0;
  result[3] = v8;
  a4[1] = result;
  return result;
}

void sub_29ABFADA0(_Unwind_Exception *a1)
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

void *sub_29ABFAE08@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  memset(v40, 0, sizeof(v40));
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v4)
  {
    v4 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  v5 = operator new(0x20uLL);
  v6 = *(a1 + 16);
  v5->~__shared_weak_count = &unk_2A2079030;
  sub_29A1E21F4(&v5->~__shared_weak_count_0, (a1 + 8));
  sub_29A1E2240(&v5->~__shared_weak_count_0 + 1, (a1 + 12));
  v7 = *(v4 + 12);
  v5->__on_zero_shared = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v5->__on_zero_shared = (v5->__on_zero_shared & 0xFFFFFFFFFFFFFFF8);
  }

  v5->__get_deleter = v6;
  if (!v6)
  {
    *&v42 = "hd/dataSourceLegacyPrim.cpp";
    *(&v42 + 1) = "Hd_TypedDataSourceLegacyCameraParamValue";
    v43 = 923;
    v44 = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Hd_TypedDataSourceLegacyCameraParamValue<int>::Hd_TypedDataSourceLegacyCameraParamValue(const SdfPath &, const TfToken &, HdSceneDelegate *) [T = int]";
    v45 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v42, "_sceneDelegate", 0);
  }

  v8 = operator new(0x20uLL);
  v8->__vftable = &unk_2A2079080;
  v8->__shared_owners_ = 0;
  v8->__shared_weak_owners_ = 0;
  v8[1].__vftable = v5;
  v38 = v5;
  v39 = v8;
  v9 = pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::Builder::SetCount(v40, &v38);
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v10)
  {
    v10 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  sub_29ABFCC1C((a1 + 8), v10 + 13, (a1 + 16), &v37);
  v42 = v37;
  v37 = 0uLL;
  v11 = pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::Builder::SetAngle(v9, &v42);
  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v12)
  {
    v12 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  sub_29ABFCC1C((a1 + 8), v12 + 14, (a1 + 16), &v35);
  v36 = v35;
  v35 = 0uLL;
  v13 = pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::Builder::SetOffset1(v11, &v36);
  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v14)
  {
    v14 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  sub_29ABFCC1C((a1 + 8), v14 + 15, (a1 + 16), &v33);
  v34 = v33;
  v33 = 0uLL;
  v15 = pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::Builder::SetWidth1(v13, &v34);
  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v16)
  {
    v16 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  sub_29ABFCC1C((a1 + 8), v16 + 16, (a1 + 16), &v31);
  v32 = v31;
  v31 = 0uLL;
  v17 = pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::Builder::SetFocusDistance1(v15, &v32);
  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v18)
  {
    v18 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  sub_29ABFCC1C((a1 + 8), v18 + 17, (a1 + 16), &v29);
  v30 = v29;
  v29 = 0uLL;
  v19 = pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::Builder::SetOffset2(v17, &v30);
  v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v20)
  {
    v20 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  sub_29ABFCC1C((a1 + 8), v20 + 18, (a1 + 16), &v27);
  v28 = v27;
  v27 = 0uLL;
  v21 = pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::Builder::SetWidth2(v19, &v28);
  v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v22)
  {
    v22 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  sub_29ABFCC1C((a1 + 8), v22 + 19, (a1 + 16), &v25);
  v26 = v25;
  v25 = 0uLL;
  v23 = pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::Builder::SetFocusDistance2(v21, &v26);
  pxrInternal__aapl__pxrReserved__::HdSplitDiopterSchema::Builder::Build(v23, &v41);
  *a2 = v41;
  v41 = 0uLL;
  if (*(&v26 + 1))
  {
    sub_29A014BEC(*(&v26 + 1));
  }

  if (*(&v25 + 1))
  {
    sub_29A014BEC(*(&v25 + 1));
  }

  if (*(&v28 + 1))
  {
    sub_29A014BEC(*(&v28 + 1));
  }

  if (*(&v27 + 1))
  {
    sub_29A014BEC(*(&v27 + 1));
  }

  if (*(&v30 + 1))
  {
    sub_29A014BEC(*(&v30 + 1));
  }

  if (*(&v29 + 1))
  {
    sub_29A014BEC(*(&v29 + 1));
  }

  if (*(&v32 + 1))
  {
    sub_29A014BEC(*(&v32 + 1));
  }

  if (*(&v31 + 1))
  {
    sub_29A014BEC(*(&v31 + 1));
  }

  if (*(&v34 + 1))
  {
    sub_29A014BEC(*(&v34 + 1));
  }

  if (*(&v33 + 1))
  {
    sub_29A014BEC(*(&v33 + 1));
  }

  if (*(&v36 + 1))
  {
    sub_29A014BEC(*(&v36 + 1));
  }

  if (*(&v35 + 1))
  {
    sub_29A014BEC(*(&v35 + 1));
  }

  if (*(&v42 + 1))
  {
    sub_29A014BEC(*(&v42 + 1));
  }

  if (*(&v37 + 1))
  {
    sub_29A014BEC(*(&v37 + 1));
  }

  if (v39)
  {
    sub_29A014BEC(v39);
  }

  return sub_29ABF7D9C(v40);
}

void sub_29ABFB254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v39 = *(v37 + 16);
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8((v37 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v37);
  operator delete(v40);
  sub_29ABF7D9C(&a37);
  _Unwind_Resume(a1);
}

void *sub_29ABFB3DC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  memset(v40, 0, sizeof(v40));
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v4)
  {
    v4 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  v5 = operator new(0x20uLL);
  v6 = *(a1 + 16);
  v5->~__shared_weak_count = &unk_2A20791C0;
  sub_29A1E21F4(&v5->~__shared_weak_count_0, (a1 + 8));
  sub_29A1E2240(&v5->~__shared_weak_count_0 + 1, (a1 + 12));
  v7 = *(v4 + 26);
  v5->__on_zero_shared = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v5->__on_zero_shared = (v5->__on_zero_shared & 0xFFFFFFFFFFFFFFF8);
  }

  v5->__get_deleter = v6;
  if (!v6)
  {
    *&v42 = "hd/dataSourceLegacyPrim.cpp";
    *(&v42 + 1) = "Hd_TypedDataSourceLegacyCameraParamValue";
    v43 = 923;
    v44 = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Hd_TypedDataSourceLegacyCameraParamValue<pxrInternal__aapl__pxrReserved__::TfToken>::Hd_TypedDataSourceLegacyCameraParamValue(const SdfPath &, const TfToken &, HdSceneDelegate *) [T = pxrInternal__aapl__pxrReserved__::TfToken]";
    v45 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v42, "_sceneDelegate", 0);
  }

  v8 = operator new(0x20uLL);
  v8->__vftable = &unk_2A2079210;
  v8->__shared_owners_ = 0;
  v8->__shared_weak_owners_ = 0;
  v8[1].__vftable = v5;
  v38 = v5;
  v39 = v8;
  v9 = pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::Builder::SetType(v40, &v38);
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v10)
  {
    v10 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  sub_29ABFCC1C((a1 + 8), v10 + 27, (a1 + 16), &v37);
  v42 = v37;
  v37 = 0uLL;
  v11 = pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::Builder::SetK1(v9, &v42);
  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v12)
  {
    v12 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  sub_29ABFCC1C((a1 + 8), v12 + 28, (a1 + 16), &v35);
  v36 = v35;
  v35 = 0uLL;
  v13 = pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::Builder::SetK2(v11, &v36);
  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v14)
  {
    v14 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  sub_29ABFD750((a1 + 8), v14 + 29, (a1 + 16), &v33);
  v34 = v33;
  v33 = 0uLL;
  v15 = pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::Builder::SetCenter(v13, &v34);
  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v16)
  {
    v16 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  sub_29ABFCC1C((a1 + 8), v16 + 30, (a1 + 16), &v31);
  v32 = v31;
  v31 = 0uLL;
  v17 = pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::Builder::SetAnaSq(v15, &v32);
  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v18)
  {
    v18 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  sub_29ABFD750((a1 + 8), v18 + 31, (a1 + 16), &v29);
  v30 = v29;
  v29 = 0uLL;
  v19 = pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::Builder::SetAsym(v17, &v30);
  v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v20)
  {
    v20 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  sub_29ABFCC1C((a1 + 8), v20 + 32, (a1 + 16), &v27);
  v28 = v27;
  v27 = 0uLL;
  v21 = pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::Builder::SetScale(v19, &v28);
  v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v22)
  {
    v22 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  sub_29ABFCC1C((a1 + 8), v22 + 33, (a1 + 16), &v25);
  v26 = v25;
  v25 = 0uLL;
  v23 = pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::Builder::SetIor(v21, &v26);
  pxrInternal__aapl__pxrReserved__::HdLensDistortionSchema::Builder::Build(v23, &v41);
  *a2 = v41;
  v41 = 0uLL;
  if (*(&v26 + 1))
  {
    sub_29A014BEC(*(&v26 + 1));
  }

  if (*(&v25 + 1))
  {
    sub_29A014BEC(*(&v25 + 1));
  }

  if (*(&v28 + 1))
  {
    sub_29A014BEC(*(&v28 + 1));
  }

  if (*(&v27 + 1))
  {
    sub_29A014BEC(*(&v27 + 1));
  }

  if (*(&v30 + 1))
  {
    sub_29A014BEC(*(&v30 + 1));
  }

  if (*(&v29 + 1))
  {
    sub_29A014BEC(*(&v29 + 1));
  }

  if (*(&v32 + 1))
  {
    sub_29A014BEC(*(&v32 + 1));
  }

  if (*(&v31 + 1))
  {
    sub_29A014BEC(*(&v31 + 1));
  }

  if (*(&v34 + 1))
  {
    sub_29A014BEC(*(&v34 + 1));
  }

  if (*(&v33 + 1))
  {
    sub_29A014BEC(*(&v33 + 1));
  }

  if (*(&v36 + 1))
  {
    sub_29A014BEC(*(&v36 + 1));
  }

  if (*(&v35 + 1))
  {
    sub_29A014BEC(*(&v35 + 1));
  }

  if (*(&v42 + 1))
  {
    sub_29A014BEC(*(&v42 + 1));
  }

  if (*(&v37 + 1))
  {
    sub_29A014BEC(*(&v37 + 1));
  }

  if (v39)
  {
    sub_29A014BEC(v39);
  }

  return sub_29ABF7D9C(v40);
}

void sub_29ABFB828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v39 = *(v37 + 16);
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8((v37 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v37);
  operator delete(v40);
  sub_29ABF7D9C(&a37);
  _Unwind_Resume(a1);
}

void *sub_29ABFB9B0@<X0>(_DWORD *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x20uLL);
  sub_29ABFD138(v8, a1, a2, *a3);

  return sub_29ABFD24C(a4, v8);
}

void *sub_29ABFBA34@<X0>(_DWORD *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x20uLL);
  v9 = *a3;
  *v8 = &unk_2A2079350;
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
    v12[1] = "Hd_DataSourceLegacyCameraParamValue";
    v12[2] = 982;
    v12[3] = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Hd_DataSourceLegacyCameraParamValue::Hd_DataSourceLegacyCameraParamValue(const SdfPath &, const TfToken &, HdSceneDelegate *)";
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v12, "_sceneDelegate", 0);
  }

  *a4 = v8;
  result = operator new(0x20uLL);
  *result = &unk_2A2079398;
  result[1] = 0;
  result[2] = 0;
  result[3] = v8;
  a4[1] = result;
  return result;
}

void sub_29ABFBB5C(_Unwind_Exception *a1)
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

void sub_29ABFBBC8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

uint64_t sub_29ABFBBF0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = *(result + 8);
  a2[1] = &off_2A2042618 + 3;
  return result;
}

void *sub_29ABFBC18(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2078BC8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ABFBC70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABFBC8C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABFBCB4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABFBCE4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2078C18))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABFBD28(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

uint64_t sub_29ABFBD50@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_2A2078C98 + 3;
  *a2 = *(result + 8);
  return result;
}

_DWORD *sub_29ABFBE9C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_2A2078C98 + 3;
  *a2 = *result;
  return result;
}

void *sub_29ABFBEB8(unsigned int *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A2072508, *a1, __p);
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

void sub_29ABFBF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29ABFBF4C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2078D60;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ABFBFA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABFBFC0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABFBFE8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABFC018(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2078DB0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29ABFC12C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ABFC160(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2078E28;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ABFC1B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABFC1D4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABFC1FC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABFC22C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2078E78))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABFC26C(uint64_t a1)
{
  *a1 = &unk_2A2078EA0;
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ABFC2E8(uint64_t a1)
{
  *a1 = &unk_2A2078EA0;
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

void sub_29ABFC368(void **a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
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
    *(a2 + 8) = &unk_2A2044D1B;
    *a2 = v8;
  }
}

uint64_t sub_29ABFC420(uint64_t a1, uint64_t a2, float a3, float a4)
{
  sub_29ABFC664((a1 + 16), (a1 + 8), (a1 + 24), &v9);
  v7 = (*(*v9 + 24))(v9, a2, a3, a4);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  return v7;
}

void sub_29ABFC4B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_29ABFC4D0(uint64_t a1, float a2)
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
  if (sub_29A346994(&v9))
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

void sub_29ABFC634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a4)
  {
    sub_29A014BEC(a4);
  }

  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29ABFC664@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x58uLL);
  sub_29ABF0CA8(v8, a1, a2, *a3);

  return sub_29ABF0DD4(a4, v8);
}

void sub_29ABFC6EC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ABFC714(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ABFC744(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2078F40))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ABFC784(uint64_t a1)
{
  *a1 = &unk_2A2078F68;
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ABFC800(uint64_t a1)
{
  *a1 = &unk_2A2078F68;
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

uint64_t sub_29ABFC880@<X0>(void **a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
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
    *(a2 + 8) = &unk_2A20443C3;
    *a2 = result;
  }

  return result;
}

uint64_t sub_29ABFC938(uint64_t a1, uint64_t a2, float a3, float a4)
{
  sub_29ABFC664((a1 + 16), (a1 + 8), (a1 + 24), &v9);
  v7 = (*(*v9 + 24))(v9, a2, a3, a4);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  return v7;
}

void sub_29ABFC9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ABFC9E8(uint64_t a1, float a2)
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

  if (sub_29A1EFCDC(&v9))
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
  return v4 & 1;
}