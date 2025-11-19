void sub_29A33310C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_29A184A10(&a18, 0);
  sub_29A1DD644(&a24);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::_SetData(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v4[0] = "sdf/layer.cpp";
  v4[1] = "_SetData";
  v4[2] = 4186;
  v4[3] = "void pxrInternal__aapl__pxrReserved__::SdfLayer::_SetData(const SdfAbstractDataPtr &, const SdfSchemaBase *)";
  LOBYTE(v5) = 0;
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(v3, "Setting layer data", v4);
  sub_29A3403BC(a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::IsDirty(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v1 = (this + 120);
  if (!*(this + 15) && (sub_29B29B2AC(v4) & 1) == 0)
  {
    return 0;
  }

  v2 = sub_29A32D670(v1);
  return pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::IsDirty(v2);
}

pxrInternal__aapl__pxrReserved__::SdfChangeBlock *pxrInternal__aapl__pxrReserved__::SdfLayer::UpdateAssetInfo(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v23 = *MEMORY[0x29EDCA608];
  if (sub_29A1D9440(3))
  {
    v4 = *(this + 60);
    if (*(v4 + 23) < 0)
    {
      v4 = *v4;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("SdfLayer::UpdateAssetInfo('%s')\n", v2, v3, v4);
  }

  pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v16);
  v5 = *(this + 60);
  if ((*(v5 + 119) & 0x8000000000000000) != 0)
  {
    if (*(v5 + 104))
    {
      goto LABEL_7;
    }
  }

  else if (*(v5 + 119))
  {
LABEL_7:
    v6 = operator new(0x30uLL);
    pxrInternal__aapl__pxrReserved__::ArResolverContextBinder::ArResolverContextBinder(v6, (v5 + 48));
    goto LABEL_10;
  }

  v6 = 0;
LABEL_10:
  sub_29A32FC5C();
  v14[0] = 0;
  v15 = 0;
  tbb::queuing_rw_mutex::scoped_lock::acquire(v14, &qword_2A173F938, 1);
  v7 = *(this + 60);
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  v22 = 0;
  __p = 0u;
  v21 = 0u;
  *v18 = 0u;
  v19 = 0u;
  *v17 = 0u;
  pxrInternal__aapl__pxrReserved__::SdfLayer::_InitializeFromIdentifier(this, v7, v12, v10, v17);
  sub_29A186B14(&v21 + 8);
  if (SBYTE7(v21) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[1]);
  }

  if (SHIBYTE(v18[0]) < 0)
  {
    operator delete(v17[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  sub_29A344D60(v14);
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::ArResolverContextBinder::~ArResolverContextBinder(v6);
    operator delete(v8);
  }

  return sub_29A1DD644(v16);
}

void sub_29A333F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30)
{
  operator delete(v30);
  sub_29A1DD644(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_29A334000(pxrInternal__aapl__pxrReserved__::VtValue *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v3 = a1;
  result = sub_29A345CC4(a1);
  if (result)
  {
    result = sub_29A345CC4(a2);
    if (result)
    {
      v5 = *(v3 + 8);
      if ((v5 & 4) != 0)
      {
        v3 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v3);
      }

      v6 = *(a2 + 1);
      if ((v6 & 4) != 0)
      {
        a2 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
      }

      return *v3 == *a2;
    }
  }

  return result;
}

uint64_t sub_29A3340A0(pxrInternal__aapl__pxrReserved__::VtDictionary *a1, uint64_t *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::VtDictionary::size(a1);
  if (v4 == pxrInternal__aapl__pxrReserved__::VtDictionary::size(a2))
  {
    v5 = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(a1);
    v7 = v6;
    v8 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a1);
    if (v9)
    {
      v10 = v5 == v8;
    }

    else
    {
      v10 = 1;
    }

    v11 = v10 && v7 == v9;
    v12 = v11;
    if (!v11)
    {
      v13 = pxrInternal__aapl__pxrReserved__::VtDictionary::find(a2, (v5 + 32));
      v15 = v14;
      v16 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a2);
      if (v15 != v17 || v15 && v13 != v16)
      {
        if (sub_29A334000((v5 + 56), (v13 + 56)))
        {
          pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> const*,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment();
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

BOOL sub_29A3341A0(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 1;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) != 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::ReloadLayers(uint64_t a1, const char *a2, char *a3)
{
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Reloading %zu layer(s)", a2, a3, *(a1 + 16));
  v13[0] = "sdf/layer.cpp";
  v13[1] = "ReloadLayers";
  v13[2] = 1143;
  v13[3] = "static BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::ReloadLayers(const set<SdfLayerHandle> &, BOOL)";
  v14 = 0;
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(v18, &__p, v13);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v12);
  __p = *a1;
  v16 = (a1 + 8);
  while (__p != v16)
  {
    v6 = sub_29A3343D0(&__p, v4, v5);
    v7 = sub_29B293A0C(v6);
    if (v8 & 1 | v7)
    {
      v10 = sub_29A3343D0(&__p, v8, v9);
      sub_29A1DA6E4(v10);
    }

    sub_29A334454(&__p);
  }

  sub_29A1DD644(v12);
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(v18);
  return 1;
}

uint64_t sub_29A3343D0(void *a1, uint64_t a2, char *a3)
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
    v8[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::set<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::operator*() [T = const std::set<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>, Reverse = false]";
    v9 = 0;
    v10 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v8, "iterator exhausted", a3);
  }

  return *a1 + 32;
}

void *sub_29A334454(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::set<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>::operator++() [T = const std::set<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>, Reverse = false]";
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

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::Import(uint64_t a1, std::string *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_ResolvePath(a2);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    pxrInternal__aapl__pxrReserved__::SdfLayer::_Read(a1, a2, &__p, 0);
  }

  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_29A334588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::IsIncludedByDetachedLayerRules(std::string *a1)
{
  v2 = atomic_load(&qword_2A173F918);
  if (!v2)
  {
    v2 = sub_29A3476D4();
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::DetachedLayerRules::IsIncluded(v2, a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::_Read(uint64_t a1, uint64_t a2, const std::string *a3, uint64_t a4, pxrInternal__aapl__pxrReserved__ *a5)
{
  v9 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v9)
  {
    v10 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("SdfLayer::_Read", 0);
  }

  else
  {
    v10 = 0;
  }

  v34 = v10;
  v35 = v10 != 0;
  memset(&v33, 0, sizeof(v33));
  if (pxrInternal__aapl__pxrReserved__::Sdf_IsAnonLayerIdentifier(a2))
  {
    __p[0] = 0;
    __p[1] = 0;
    v32 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_SplitIdentifier(a2, &v33, __p);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    std::string::operator=(&v33, a3);
  }

  v13 = &v33;
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v13 = v33.__r_.__value_.__r.__words[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Loading layer '%s'", v11, v12, v13);
  v25[0] = "sdf/layer.cpp";
  v25[1] = "_Read";
  v26 = 1242;
  v27 = "BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::_Read(const string &, const ArResolvedPath &, const std::vector<std::byte> &, BOOL)";
  v28 = 0;
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(__p, v29, v25);
  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (sub_29A1D9440(3))
  {
    v14 = *(a2 + 23);
    v15 = *a2;
    v16 = a5;
    v17 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
    v18 = a3->__r_.__value_.__r.__words[0];
    pxrInternal__aapl__pxrReserved__::TfStringify(v16, v25);
    v21 = (v17 >= 0 ? a3 : v18);
    v22 = v14 >= 0 ? a2 : v15;
    v23 = v26 >= 0 ? v25 : v25[0];
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("SdfLayer::_Read('%s', '%s', metadataOnly=%s)\n", v19, v20, v22, v21, v23);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }
  }

  v24 = *(a1 + 48);
  v29[0] = *(a1 + 40);
  v29[1] = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(v24 + 2, 1u, memory_order_relaxed);
  }

  sub_29A1DA734(v29);
}

void sub_29A3349A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(&a27);
  if (*(v32 - 105) < 0)
  {
    operator delete(*(v32 - 128));
  }

  sub_29A0E9CEC(v32 - 104);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::Find(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5[0] = 0;
  v6 = 0;
  sub_29A334AF4(a1, a2, v5, 0, &v4);
  sub_29A321960(a3, &v4);
  sub_29A321930();
}

uint64_t sub_29A334AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, tbb::queuing_rw_mutex::scoped_lock *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v18 = *MEMORY[0x29EDCA608];
  v11[0] = 0;
  v11[1] = 0;
  v12[0] = 0;
  v12[1] = 0;
  v11[2] = v12;
  v13 = 0;
  v17 = 0;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  memset(v16, 0, sizeof(v16));
  if (pxrInternal__aapl__pxrReserved__::SdfLayer::_ComputeInfoToFindOrOpenLayer(a1, a2, v11))
  {
    sub_29A32FC5C();
    tbb::queuing_rw_mutex::scoped_lock::acquire(a3, &qword_2A173F938, 0);
    sub_29A331DB4(v16, v15 + 1, a3, a4, &v10);
    if (!v10)
    {
      sub_29A321930();
    }

    v8 = sub_29A3302A8(&v10);
    if (pxrInternal__aapl__pxrReserved__::SdfLayer::_WaitForInitializationAndCheckIfSuccessful(v8))
    {
      *a5 = v10;
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_AddRef();
    }

    *a5 = 0;
    sub_29A321930();
  }

  *a5 = 0;
  return sub_29B299F0C(v11);
}

void sub_29A334C28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29B299F0C(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::ListAllTimeSamples(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v1 = *(*sub_29A2EDBE4(this + 14) + 240);

  return v1();
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::ListTimeSamplesForPath(pxrInternal__aapl__pxrReserved__::SdfLayer *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29A2EDBE4(this + 14) + 248);

  return v2();
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::GetBracketingTimeSamples(pxrInternal__aapl__pxrReserved__::SdfLayer *this, double a2, double *a3, double *a4)
{
  v5 = *(*sub_29A2EDBE4(this + 14) + 256);
  v6.n128_f64[0] = a2;

  return v5(v6);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::GetNumTimeSamplesForPath(pxrInternal__aapl__pxrReserved__::SdfLayer *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29A2EDBE4(this + 14) + 264);

  return v2();
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::GetBracketingTimeSamplesForPath(pxrInternal__aapl__pxrReserved__::SdfLayer *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, double a3, double *a4, double *a5)
{
  v6 = *(*sub_29A2EDBE4(this + 14) + 272);
  v7.n128_f64[0] = a3;

  return v6(v7);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(pxrInternal__aapl__pxrReserved__::SdfLayer *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, double a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v5 = *(*sub_29A2EDBE4(this + 14) + 280);
  v6.n128_f64[0] = a3;

  return v5(v6);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(uint64_t a1, double a2)
{
  v3 = *(*sub_29A2EDBE4((a1 + 112)) + 288);
  v4.n128_f64[0] = a2;

  return v3(v4);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::SetTimeSample(pxrInternal__aapl__pxrReserved__::SdfLayer *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, double a3, const pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v24[2] = *MEMORY[0x29EDCA608];
  if (*(this + 521) == 1 && !pxrInternal__aapl__pxrReserved__::SdfLayer::IsMuted(this))
  {
    if (sub_29A2F1FA8(a4))
    {

      pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimSetTimeSample<pxrInternal__aapl__pxrReserved__::VtValue>();
    }

    v9 = sub_29A335258(this, a2);
    v18 = v9;
    pxrInternal__aapl__pxrReserved__::TfType::TfType(&v19);
    if (v19 != v9)
    {
      if (v9 == pxrInternal__aapl__pxrReserved__::VtValue::GetType(a4, v10))
      {
        pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimSetTimeSample<pxrInternal__aapl__pxrReserved__::VtValue>();
      }

      Typeid = pxrInternal__aapl__pxrReserved__::TfType::GetTypeid(&v18);
      pxrInternal__aapl__pxrReserved__::VtValue::CastToTypeid(a4, Typeid, v24);
      if (v24[1])
      {
        pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimSetTimeSample<pxrInternal__aapl__pxrReserved__::VtValue>();
      }

      v19 = "sdf/layer.cpp";
      v20 = "SetTimeSample";
      v21 = 1436;
      v22 = "void pxrInternal__aapl__pxrReserved__::SdfLayer::SetTimeSample(const SdfPath &, double, const VtValue &)";
      v23 = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      sub_29A1F87E8(a4);
      TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v18);
      p_p = &__p;
      if (v17 < 0)
      {
        p_p = __p;
      }

      if (*(TypeName + 23) >= 0)
      {
        v15 = TypeName;
      }

      else
      {
        v15 = *TypeName;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v19, 1, "Can't set time sample on <%s> to %s: expected a value of type %s", Text, p_p, v15);
      if (v17 < 0)
      {
        operator delete(__p);
      }

      sub_29A186B14(v24);
    }
  }

  else
  {
    v19 = "sdf/layer.cpp";
    v20 = "SetTimeSample";
    v21 = 1409;
    v22 = "void pxrInternal__aapl__pxrReserved__::SdfLayer::SetTimeSample(const SdfPath &, double, const VtValue &)";
    v23 = 0;
    v7 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v8 = *(this + 60);
    if (v8[23] < 0)
    {
      v8 = *v8;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v19, 1, "Cannot set time sample on <%s>.  Layer @%s@ is not editable.", v7, v8);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::PermissionToEdit(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  if (*(this + 521) == 1)
  {
    return pxrInternal__aapl__pxrReserved__::SdfLayer::IsMuted(this) ^ 1;
  }

  else
  {
    return 0;
  }
}

char *sub_29A335258(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v4 = sub_29A2EDBE4((a1 + 112));
  v5 = (*(*v4 + 96))(v4, a2);
  if (v5 == 1)
  {
    pxrInternal__aapl__pxrReserved__::TfType::TfType(&v15);
    v9 = 0;
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v6)
    {
      v6 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    v11 = &v9;
    v12 = &stru_2A2040480;
    LOWORD(v13) = 0;
    Type = &unk_2A204B290;
    if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, v6 + 58, &Type) && (v13 & 1) == 0)
    {
      Type = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(*(a1 + 80), &v9);
      v15 = *pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetType(&Type);
    }

    pxrInternal__aapl__pxrReserved__::TfType::TfType(&Type);
    if (v15 == Type)
    {
      Type = "sdf/layer.cpp";
      v11 = "_GetExpectedTimeSampleValueType";
      v12 = 1395;
      v13 = "TfType pxrInternal__aapl__pxrReserved__::_GetExpectedTimeSampleValueType(const SdfLayer &, const SdfPath &)";
      v14 = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&Type, 1, "Cannot determine value type for <%s>", Text);
    }

    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    Type = "sdf/layer.cpp";
    v11 = "_GetExpectedTimeSampleValueType";
    if (v5)
    {
      v12 = 1383;
      v13 = "TfType pxrInternal__aapl__pxrReserved__::_GetExpectedTimeSampleValueType(const SdfLayer &, const SdfPath &)";
      v14 = 0;
      pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&Type, 1, "Cannot set time sample at <%s> because spec is not an attribute");
    }

    else
    {
      v12 = 1377;
      v13 = "TfType pxrInternal__aapl__pxrReserved__::_GetExpectedTimeSampleValueType(const SdfLayer &, const SdfPath &)";
      v14 = 0;
      pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&Type, 1, "Cannot set time sample at <%s> since spec does not exist");
    }

    pxrInternal__aapl__pxrReserved__::TfType::TfType(&v15);
  }

  return v15;
}

void sub_29A335460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::SetTimeSample(pxrInternal__aapl__pxrReserved__::SdfLayer *this, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3)
{
  v29 = *MEMORY[0x29EDCA608];
  if (*(this + 521) == 1 && !pxrInternal__aapl__pxrReserved__::SdfLayer::IsMuted(this))
  {
    v8 = *(a3 + 16);
    if ((atomic_load_explicit(&qword_2A173F930, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F930))
    {
      qword_2A173F928 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2048EE0, v17);
      __cxa_guard_release(&qword_2A173F930);
    }

    Typeid = pxrInternal__aapl__pxrReserved__::TfType::GetTypeid(&qword_2A173F928);
    if (sub_29A00E9CC(v8, Typeid))
    {

      pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimSetTimeSample<pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstValue>();
    }

    v20 = sub_29A335258(this, a2);
    pxrInternal__aapl__pxrReserved__::TfType::TfType(&v21);
    if (v20 != v21)
    {
      v10 = *(a3 + 16);
      v11 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeid(&v20);
      if (!strcmp((*(v10 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(v11 + 8) & 0x7FFFFFFFFFFFFFFFLL)))
      {
        pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimSetTimeSample<pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstValue>();
      }

      v28 = 0;
      (**a3)(a3, v27);
      v12 = pxrInternal__aapl__pxrReserved__::TfType::GetTypeid(&v20);
      pxrInternal__aapl__pxrReserved__::VtValue::CastToTypeid(v27, v12, v26);
      if (v26[1])
      {
        pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimSetTimeSample<pxrInternal__aapl__pxrReserved__::VtValue>();
      }

      v21 = "sdf/layer.cpp";
      v22 = "SetTimeSample";
      v23 = 1492;
      v24 = "void pxrInternal__aapl__pxrReserved__::SdfLayer::SetTimeSample(const SdfPath &, double, const SdfAbstractDataConstValue &)";
      v25 = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      sub_29A1F87E8(v27);
      TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v20);
      p_p = &__p;
      if (v19 < 0)
      {
        p_p = __p;
      }

      if (*(TypeName + 23) >= 0)
      {
        v16 = TypeName;
      }

      else
      {
        v16 = *TypeName;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v21, 1, "Can't set time sample on <%s> to %s: expected a value of type %s", Text, p_p, v16);
      if (v19 < 0)
      {
        operator delete(__p);
      }

      sub_29A186B14(v26);
      sub_29A186B14(v27);
    }
  }

  else
  {
    v21 = "sdf/layer.cpp";
    v22 = "SetTimeSample";
    v23 = 1463;
    v24 = "void pxrInternal__aapl__pxrReserved__::SdfLayer::SetTimeSample(const SdfPath &, double, const SdfAbstractDataConstValue &)";
    v25 = 0;
    v6 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v7 = *(this + 60);
    if (v7[23] < 0)
    {
      v7 = *v7;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v21, 1, "Cannot set time sample on <%s>.  Layer @%s@ is not editable.", v6, v7);
  }
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::EraseTimeSample(pxrInternal__aapl__pxrReserved__::SdfLayer *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, double a3)
{
  v16 = *MEMORY[0x29EDCA608];
  if (*(this + 521) == 1 && !pxrInternal__aapl__pxrReserved__::SdfLayer::IsMuted(this))
  {
    v8 = sub_29A2EDBE4(this + 14);
    if ((*(*v8 + 72))(v8, a2))
    {
      v9 = sub_29A2EDBE4(this + 14);
      if ((*(*v9 + 280))(v9, a2, 0, a3))
      {
        v12 = 0;
        pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimSetTimeSample<pxrInternal__aapl__pxrReserved__::VtValue>();
      }
    }

    else
    {
      v11 = "sdf/layer.cpp";
      v12 = "EraseTimeSample";
      v13 = 1512;
      v14 = "void pxrInternal__aapl__pxrReserved__::SdfLayer::EraseTimeSample(const SdfPath &, double)";
      v15 = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 1, "Cannot SetTimeSample at <%s> since spec does not exist", Text);
    }
  }

  else
  {
    v11 = "sdf/layer.cpp";
    v12 = "EraseTimeSample";
    v13 = 1507;
    v14 = "void pxrInternal__aapl__pxrReserved__::SdfLayer::EraseTimeSample(const SdfPath &, double)";
    v15 = 0;
    v6 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v7 = *(this + 60);
    if (v7[23] < 0)
    {
      v7 = *v7;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 1, "Cannot set time sample on <%s>.  Layer @%s@ is not editable.", v6, v7);
  }
}

void sub_29A3359C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::HasSpec(pxrInternal__aapl__pxrReserved__::SdfLayer *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29A2EDBE4(this + 14) + 72);

  return v2();
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::GetColorConfiguration@<X0>(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **this@<X0>, uint64_t a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return sub_29A335A98(this, (v4 + 24), a2);
}

uint64_t sub_29A335A98@<X0>(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x29EDCA608];
  v16 = 0;
  v6 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, v6, a2, v15))
  {
    v7 = sub_29A3467F8(v15);
    v8 = v7;
    if (*(v7 + 23) < 0)
    {
      sub_29A008D14(a3, *v7, v7[1]);
    }

    else
    {
      v9 = *v7;
      *(a3 + 16) = v7[2];
      *a3 = v9;
    }

    if (*(v8 + 47) < 0)
    {
LABEL_12:
      sub_29A008D14((a3 + 24), v8[3], v8[4]);
      return sub_29A186B14(v15);
    }
  }

  else
  {
    Fallback = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetFallback(a1[10], a2);
    v11 = sub_29A3467F8(Fallback);
    v8 = v11;
    if (*(v11 + 23) < 0)
    {
      sub_29A008D14(a3, *v11, v11[1]);
    }

    else
    {
      v12 = *v11;
      *(a3 + 16) = v11[2];
      *a3 = v12;
    }

    if (*(v8 + 47) < 0)
    {
      goto LABEL_12;
    }
  }

  v13 = *(v8 + 3);
  *(a3 + 40) = v8[5];
  *(a3 + 24) = v13;
  return sub_29A186B14(v15);
}

void sub_29A335BD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::SetColorConfiguration(const char **this, const pxrInternal__aapl__pxrReserved__::SdfAssetPath *a2)
{
  v3 = this;
  v10[2] = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    this = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    v4 = this;
  }

  if (*(a2 + 23) < 0)
  {
    this = sub_29A008D14(v6, *a2, *(a2 + 1));
  }

  else
  {
    *v6 = *a2;
    v7 = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    this = sub_29A008D14(__p, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    *__p = *(a2 + 24);
    v9 = *(a2 + 5);
  }

  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v10[1] = &off_2A2047B38;
  sub_29A215A28(v10, v6);
  pxrInternal__aapl__pxrReserved__::SdfLayer::SetField(v3, v5, (v4 + 24), v10);
  sub_29A186B14(v10);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_29A335D38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::HasColorConfiguration(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(this, v2, (v3 + 24), 0);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::ClearColorConfiguration(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfLayer::EraseField(this, v2, (v3 + 24));
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::EraseField(pxrInternal__aapl__pxrReserved__::SdfLayer *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (*(this + 521) != 1 || pxrInternal__aapl__pxrReserved__::SdfLayer::IsMuted(this))
  {
    sub_29B29B2F4(a3, a2, this);
  }

  else
  {
    v6 = sub_29A2EDBE4(this + 14);
    if ((*(*v6 + 112))(v6, a2, a3, 0))
    {
      v7 = *(this + 10);
      v8 = *(v7 + 928);
      v9 = *(v7 + 936);
      if (v8 == v9)
      {
        goto LABEL_7;
      }

      while ((*v8 ^ *a3) > 7)
      {
        if (++v8 == v9)
        {
          goto LABEL_7;
        }
      }

      v10 = sub_29A2EDBE4(this + 14);
      v11 = (*(*v10 + 96))(v10, a2);
      if (v11 > 0xB)
      {
        v13 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_IssueErrorForInvalidSpecType(v7, v11);
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v12 = v7 + 72 * v11;
        if ((*(v12 + 120) & 1) == 0)
        {
          goto LABEL_7;
        }

        v13 = (v12 + 56);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SpecDefinition::IsRequiredField(v13, a3))
      {
        FieldDefinition = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetFieldDefinition(v7, a3);
        if (FieldDefinition)
        {
          v15 = FieldDefinition;
          pxrInternal__aapl__pxrReserved__::SdfLayer::GetField(this, a2, a3, v16);
          pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FieldDefinition::GetFallbackValue(v15);
          pxrInternal__aapl__pxrReserved__::VtValue::operator==();
        }
      }

LABEL_7:
      v17 = 0;
      pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimSetField<pxrInternal__aapl__pxrReserved__::VtValue>();
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::GetColorManagementSystem@<X0>(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return sub_29A3360AC(this, (v4 + 32), a2);
}

uint64_t sub_29A3360AC@<X0>(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  v13 = 0;
  v6 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, v6, a2, v12))
  {
    v7 = sub_29A27A0F8(v12);
  }

  else
  {
    Fallback = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetFallback(a1[10], a2);
    v7 = sub_29A27A0F8(Fallback);
  }

  v9 = *v7;
  *a3 = *v7;
  if ((v9 & 7) != 0)
  {
    v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a3 = v10;
    }
  }

  return sub_29A186B14(v12);
}

void sub_29A336178(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::SetColorManagementSystem(const char **this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = this;
  v8[2] = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    this = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    v4 = this;
  }

  v5 = *a2;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v5 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v8[0] = v5;
  v8[1] = &off_2A2044E88 + 1;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v8[0] = v5 & 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::SdfLayer::SetField(v3, v6, (v4 + 32), v8);
  result = sub_29A186B14(v8);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29A33628C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  if (v3)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::HasColorManagementSystem(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(this, v2, (v3 + 32), 0);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::ClearColorManagementSystem(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfLayer::EraseField(this, v2, (v3 + 32));
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::SetComment(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t a2)
{
  v3 = a1;
  v8[2] = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    a1 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    v4 = a1;
  }

  if (*(a2 + 23) < 0)
  {
    a1 = sub_29A008D14(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  v8[1] = &off_2A2044DD0;
  sub_29A1B01B8(v8, __p);
  pxrInternal__aapl__pxrReserved__::SdfLayer::SetField(v3, v5, (v4 + 48), v8);
  sub_29A186B14(v8);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::GetComment@<X0>(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **this@<X0>, uint64_t a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return sub_29A336514(this, (v4 + 48), a2);
}

uint64_t sub_29A336514@<X0>(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x29EDCA608];
  v12 = 0;
  v6 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, v6, a2, v11))
  {
    v7 = sub_29A1EFC48(v11);
  }

  else
  {
    Fallback = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetFallback(a1[10], a2);
    v7 = sub_29A1EFC48(Fallback);
  }

  if (*(v7 + 23) < 0)
  {
    sub_29A008D14(a3, *v7, v7[1]);
  }

  else
  {
    v9 = *v7;
    *(a3 + 16) = v7[2];
    *a3 = v9;
  }

  return sub_29A186B14(v11);
}

void sub_29A3365E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::SetDefaultPrim(const char **this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = this;
  v8[2] = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    this = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    v4 = this;
  }

  v5 = *a2;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v5 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v8[0] = v5;
  v8[1] = &off_2A2044E88 + 1;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v8[0] = v5 & 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::SdfLayer::SetField(v3, v6, (v4 + 96), v8);
  result = sub_29A186B14(v8);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29A3366F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  if (v3)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::GetDefaultPrim@<X0>(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return sub_29A3360AC(this, (v4 + 96), a2);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::GetDefaultPrimAsPath(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **this@<X0>, int *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  v5 = sub_29A3360AC(this, (v4 + 96), &v10);
  if ((v10 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v10 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(__p, *EmptyString, EmptyString[1]);
  }

  else
  {
    v7 = *EmptyString;
    v12 = EmptyString[2];
    *__p = v7;
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsValidPathString(__p, 0))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v10, __p);
  }

  else
  {
    v10 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10 + 1);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(&v10))
  {
    IsAbsolutePath = pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(&v10);
    if (IsAbsolutePath)
    {
      sub_29A1E21F4(a2, &v10);
      sub_29A1E2240(a2 + 1, &v10 + 1);
    }

    else
    {
      v9 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(IsAbsolutePath);
      pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(&v10, v9, a2);
    }
  }

  else
  {
    *a2 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a2 + 1);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
  sub_29A1DE3A4(&v10);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A336910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::ClearDefaultPrim(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfLayer::EraseField(this, v2, (v3 + 96));
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::HasDefaultPrim(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(this, v2, (v3 + 96), 0);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::SetDocumentation(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t a2)
{
  v3 = a1;
  v8[2] = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    a1 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    v4 = a1;
  }

  if (*(a2 + 23) < 0)
  {
    a1 = sub_29A008D14(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  v8[1] = &off_2A2044DD0;
  sub_29A1B01B8(v8, __p);
  pxrInternal__aapl__pxrReserved__::SdfLayer::SetField(v3, v5, (v4 + 136), v8);
  sub_29A186B14(v8);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::GetDocumentation@<X0>(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **this@<X0>, uint64_t a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return sub_29A336514(this, (v4 + 136), a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::SetStartTimeCode(const char **this, double a2)
{
  v3 = this;
  v7[2] = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    this = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    v4 = this;
  }

  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v7[1] = &unk_2A2044D1B;
  *v7 = a2;
  pxrInternal__aapl__pxrReserved__::SdfLayer::SetField(v3, v5, (v4 + 336), v7);
  return sub_29A186B14(v7);
}

void sub_29A336C70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

double pxrInternal__aapl__pxrReserved__::SdfLayer::GetStartTimeCode(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **this)
{
  v1 = this;
  v9 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    this = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    v2 = this;
  }

  v8 = 0;
  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v1, v3, (v2 + 336), v7))
  {
    Fallback = v7;
  }

  else
  {
    Fallback = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetFallback(v1[10], (v2 + 336));
  }

  v5 = *sub_29A337248(Fallback);
  sub_29A186B14(v7);
  return *&v5;
}

void sub_29A336D4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::HasStartTimeCode(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(this, v2, (v3 + 336), 0);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::ClearStartTimeCode(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfLayer::EraseField(this, v2, (v3 + 336));
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::SetEndTimeCode(const char **this, double a2)
{
  v3 = this;
  v7[2] = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    this = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    v4 = this;
  }

  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v7[1] = &unk_2A2044D1B;
  *v7 = a2;
  pxrInternal__aapl__pxrReserved__::SdfLayer::SetField(v3, v5, (v4 + 144), v7);
  return sub_29A186B14(v7);
}

void sub_29A336EE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

double pxrInternal__aapl__pxrReserved__::SdfLayer::GetEndTimeCode(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **this)
{
  v1 = this;
  v9 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    this = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    v2 = this;
  }

  v8 = 0;
  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v1, v3, (v2 + 144), v7))
  {
    Fallback = v7;
  }

  else
  {
    Fallback = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetFallback(v1[10], (v2 + 144));
  }

  v5 = *sub_29A337248(Fallback);
  sub_29A186B14(v7);
  return *&v5;
}

void sub_29A336FC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::HasEndTimeCode(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(this, v2, (v3 + 144), 0);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::ClearEndTimeCode(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfLayer::EraseField(this, v2, (v3 + 144));
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::SetTimeCodesPerSecond(const char **this, double a2)
{
  v3 = this;
  v7[2] = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    this = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    v4 = this;
  }

  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v7[1] = &unk_2A2044D1B;
  *v7 = a2;
  pxrInternal__aapl__pxrReserved__::SdfLayer::SetField(v3, v5, (v4 + 456), v7);
  return sub_29A186B14(v7);
}

void sub_29A337158(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

double pxrInternal__aapl__pxrReserved__::SdfLayer::GetTimeCodesPerSecond(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v8 = *MEMORY[0x29EDCA608];
  v7 = 0;
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(this, v2, (v3 + 456), v6))
  {
    FramesPerSecond = *sub_29A337248(v6);
  }

  else
  {
    FramesPerSecond = pxrInternal__aapl__pxrReserved__::SdfLayer::GetFramesPerSecond(this);
  }

  sub_29A186B14(v6);
  return FramesPerSecond;
}

void sub_29A337234(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void **sub_29A337248(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A346994(a1))
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
    v4 = MEMORY[0x29EDC94B8];

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A3469CC, v4);
  }
}

double pxrInternal__aapl__pxrReserved__::SdfLayer::GetFramesPerSecond(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **this)
{
  v1 = this;
  v9 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    this = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    v2 = this;
  }

  v8 = 0;
  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v1, v3, (v2 + 168), v7))
  {
    Fallback = v7;
  }

  else
  {
    Fallback = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetFallback(v1[10], (v2 + 168));
  }

  v5 = *sub_29A337248(Fallback);
  sub_29A186B14(v7);
  return *&v5;
}

void sub_29A3373A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::HasTimeCodesPerSecond(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(this, v2, (v3 + 456), 0);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::ClearTimeCodesPerSecond(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfLayer::EraseField(this, v2, (v3 + 456));
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::SetFramesPerSecond(const char **this, double a2)
{
  v3 = this;
  v7[2] = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    this = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    v4 = this;
  }

  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v7[1] = &unk_2A2044D1B;
  *v7 = a2;
  pxrInternal__aapl__pxrReserved__::SdfLayer::SetField(v3, v5, (v4 + 168), v7);
  return sub_29A186B14(v7);
}

void sub_29A33753C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::HasFramesPerSecond(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(this, v2, (v3 + 168), 0);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::ClearFramesPerSecond(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfLayer::EraseField(this, v2, (v3 + 168));
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::SetFramePrecision(const char **this, int a2)
{
  v3 = this;
  v9 = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    this = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    v4 = this;
  }

  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v8 = &unk_2A204475B;
  v7 = a2;
  pxrInternal__aapl__pxrReserved__::SdfLayer::SetField(v3, v5, (v4 + 160), &v7);
  return sub_29A186B14(&v7);
}

void sub_29A3376D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::GetFramePrecision(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **this)
{
  v1 = this;
  v9 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    this = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    v2 = this;
  }

  v8 = 0;
  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v1, v3, (v2 + 160), v7))
  {
    Fallback = v7;
  }

  else
  {
    Fallback = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetFallback(v1[10], (v2 + 160));
  }

  v5 = *sub_29A346A20(Fallback);
  sub_29A186B14(v7);
  return v5;
}

void sub_29A3377A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::HasFramePrecision(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(this, v2, (v3 + 160), 0);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::ClearFramePrecision(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfLayer::EraseField(this, v2, (v3 + 160));
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::GetOwner@<X0>(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **this@<X0>, uint64_t a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return sub_29A336514(this, (v4 + 240), a2);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::SetOwner(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t a2)
{
  v3 = a1;
  v8[2] = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    a1 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    v4 = a1;
  }

  if (*(a2 + 23) < 0)
  {
    a1 = sub_29A008D14(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  v8[1] = &off_2A2044DD0;
  sub_29A1B01B8(v8, __p);
  pxrInternal__aapl__pxrReserved__::SdfLayer::SetField(v3, v5, (v4 + 240), v8);
  sub_29A186B14(v8);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::HasOwner(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(this, v2, (v3 + 240), 0);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::ClearOwner(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfLayer::EraseField(this, v2, (v3 + 240));
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::GetSessionOwner@<X0>(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **this@<X0>, uint64_t a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return sub_29A336514(this, (v4 + 304), a2);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::SetSessionOwner(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t a2)
{
  v3 = a1;
  v8[2] = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    a1 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    v4 = a1;
  }

  if (*(a2 + 23) < 0)
  {
    a1 = sub_29A008D14(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  v8[1] = &off_2A2044DD0;
  sub_29A1B01B8(v8, __p);
  pxrInternal__aapl__pxrReserved__::SdfLayer::SetField(v3, v5, (v4 + 304), v8);
  sub_29A186B14(v8);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::HasSessionOwner(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(this, v2, (v3 + 304), 0);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::ClearSessionOwner(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfLayer::EraseField(this, v2, (v3 + 304));
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::GetHasOwnedSubLayers(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **this)
{
  v1 = this;
  v9 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    this = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    v2 = this;
  }

  v8 = 0;
  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v1, v3, (v2 + 184), v7))
  {
    Fallback = v7;
  }

  else
  {
    Fallback = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetFallback(v1[10], (v2 + 184));
  }

  v5 = *sub_29A1EFD10(Fallback);
  sub_29A186B14(v7);
  return v5;
}

void sub_29A337DF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::SetHasOwnedSubLayers(const char **this, char a2)
{
  v3 = this;
  v9 = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    this = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    v4 = this;
  }

  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v8 = &unk_2A20443C3;
  v7[0] = a2;
  pxrInternal__aapl__pxrReserved__::SdfLayer::SetField(v3, v5, (v4 + 184), v7);
  return sub_29A186B14(v7);
}

void sub_29A337EC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::GetCustomLayerData@<X0>(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **this@<X0>, pxrInternal__aapl__pxrReserved__::VtDictionary *a2@<X8>)
{
  v2 = this;
  v11 = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    this = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    v4 = this;
  }

  v10 = 0;
  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v2, v5, (v4 + 80), v9))
  {
    Fallback = v9;
  }

  else
  {
    Fallback = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetFallback(v2[10], (v4 + 80));
  }

  v7 = sub_29A187B1C(Fallback);
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(a2, v7);
  return sub_29A186B14(v9);
}

void sub_29A337FA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::SetCustomLayerData(const char **this, const pxrInternal__aapl__pxrReserved__::VtDictionary *a2)
{
  v8[2] = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  v5 = pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(&v7, a2);
  v6 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v5);
  v8[1] = &off_2A2042030;
  sub_29A187864(v8, &v7);
  pxrInternal__aapl__pxrReserved__::SdfLayer::SetField(this, v6, (v4 + 80), v8);
  sub_29A186B14(v8);
  sub_29A184A10(&v7, 0);
}

void sub_29A338094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, char a10)
{
  sub_29A186B14(&a10);
  sub_29A184A10(&a9, 0);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::HasCustomLayerData(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(this, v2, (v3 + 80), 0);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::ClearCustomLayerData(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfLayer::EraseField(this, v2, (v3 + 80));
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::GetExpressionVariables@<X0>(pxrInternal__aapl__pxrReserved__::SdfSchemaBase **this@<X0>, pxrInternal__aapl__pxrReserved__::VtDictionary *a2@<X8>)
{
  v2 = this;
  v11 = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    this = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    v4 = this;
  }

  v10 = 0;
  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v2, v5, (v4 + 152), v9))
  {
    Fallback = v9;
  }

  else
  {
    Fallback = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetFallback(v2[10], (v4 + 152));
  }

  v7 = sub_29A187B1C(Fallback);
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(a2, v7);
  return sub_29A186B14(v9);
}

void sub_29A338260(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::SetExpressionVariables(const char **this, const pxrInternal__aapl__pxrReserved__::VtDictionary *a2)
{
  v8[2] = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  v5 = pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(&v7, a2);
  v6 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v5);
  v8[1] = &off_2A2042030;
  sub_29A187864(v8, &v7);
  pxrInternal__aapl__pxrReserved__::SdfLayer::SetField(this, v6, (v4 + 152), v8);
  sub_29A186B14(v8);
  sub_29A184A10(&v7, 0);
}

void sub_29A33834C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, char a10)
{
  sub_29A186B14(&a10);
  sub_29A184A10(&a9, 0);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::HasExpressionVariables(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(this, v2, (v3 + 152), 0);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::ClearExpressionVariables(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfLayer::EraseField(this, v2, (v3 + 152));
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::GetPseudoRoot(uint64_t **this@<X0>, void *a2@<X8>)
{
  v4 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  pxrInternal__aapl__pxrReserved__::Sdf_IdentityRegistry::Identify(this + 11, v4, &v8);
  v5 = v8;
  *a2 = v8;
  if (v5)
  {
    atomic_fetch_add(v5, 1u);
    v6 = v8;
    if (v8)
    {
      v7 = *(v8 + 2);
      if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Identity::_UnregisterOrDelete(v7, v6);
      }
    }
  }
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::GetRootPrims(uint64_t **this)
{
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetPseudoRoot(this, &v2);
  v1 = sub_29A2F6760(&v2);
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetNameChildren(v1);
}

void sub_29A338504(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::SetRootPrims(uint64_t **a1)
{
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetPseudoRoot(a1, &v2);
  v1 = sub_29A2F6760(&v2);
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetNameChildren(v1);
}

void sub_29A338560(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::InsertRootPrim(uint64_t **a1)
{
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetPseudoRoot(a1, &v2);
  v1 = sub_29A2F6760(&v2);
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::InsertNameChild(v1);
}

void sub_29A3385CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::RemoveRootPrim(uint64_t **a1, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a2)
{
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetPseudoRoot(a1, &v4);
  v3 = sub_29A2F6760(&v4);
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::RemoveNameChild(v3, a2);
}

void sub_29A338628(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::GetRootPrimOrder(uint64_t **this@<X0>, uint64_t a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetPseudoRoot(this, &v4);
  v3 = sub_29A2F6760(&v4);
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetNameChildrenOrder(v3, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v4);
}

void sub_29A338684(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::SetRootPrimOrder(uint64_t **a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetPseudoRoot(a1, &v4);
  v3 = sub_29A2F6760(&v4);
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::SetNameChildrenOrder(v3, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v4);
}

void sub_29A3386E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::InsertInRootPrimOrder(uint64_t **this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, uint64_t a3)
{
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetPseudoRoot(this, &v6);
  v5 = sub_29A2F6760(&v6);
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::InsertInNameChildrenOrder(v5, a2, a3);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v6);
}

void sub_29A338744(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::RemoveFromRootPrimOrder(uint64_t **this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetPseudoRoot(this, &v4);
  v3 = sub_29A2F6760(&v4);
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::RemoveFromNameChildrenOrder(v3, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v4);
}

void sub_29A3387A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::RemoveFromRootPrimOrderByIndex(uint64_t **this, int a2)
{
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetPseudoRoot(this, &v4);
  v3 = sub_29A2F6760(&v4);
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::RemoveFromNameChildrenOrderByIndex(v3, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v4);
}

void sub_29A3387FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::ApplyRootPrimOrder(uint64_t **a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetPseudoRoot(a1, &v4);
  v3 = sub_29A2F6760(&v4);
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::ApplyNameChildrenOrder(v3, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v4);
}

void sub_29A338858(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::GetSubLayerPaths(pxrInternal__aapl__pxrReserved__::SdfLayer *this@<X0>, uint64_t a2@<X8>)
{
  v4 = operator new(0x48uLL);
  pxrInternal__aapl__pxrReserved__::Sdf_SubLayerListEditor::Sdf_SubLayerListEditor(v4, this + 24);
  v5 = operator new(0x20uLL);
  v5->__shared_owners_ = 0;
  v5->__vftable = &unk_2A204B2C8;
  v5->__shared_weak_owners_ = 0;
  v5[1].__vftable = v4;
  *a2 = v4;
  *(a2 + 8) = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a2 + 16) = 3;

  sub_29A014BEC(v5);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::SetSubLayerPaths(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetSubLayerPaths(a1, &v3);
  sub_29A3389A4(&v3, a2);
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29A33898C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *sub_29A3389A4(unsigned int *a1, void *a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = (*(*v4 + 112))(v4, a1[4]);
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 3);
  }

  else
  {
    v6 = 0;
  }

  sub_29A346BA4(a1, 0, v6, a2);
  return a1;
}

unint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::GetNumSubLayerPaths(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetSubLayerPaths(this, v3);
  v1 = sub_29A1DCE30(v3);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  return v1;
}

void sub_29A338A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::InsertSubLayerPath(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, __int128 *a2, int a3)
{
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetSubLayerPaths(a1, &v5);
  if (a3 == -1)
  {
    a3 = sub_29A1DCE30(&v5);
  }

  sub_29A338B08(&v5, a3, a2);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29A338AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A338B08(unsigned int *a1, int a2, __int128 *a3)
{
  if (a2 == -1)
  {
    v5 = *a1;
    if (*a1)
    {
      v6 = (*(*v5 + 112))(v5, a1[4]);
      a2 = -1431655765 * ((v6[1] - *v6) >> 3);
    }

    else
    {
      a2 = 0;
    }
  }

  v7 = a2;
  sub_29A111510(v8, 1uLL, a3);
  sub_29A346BA4(a1, v7, 0, v8);
  v9 = v8;
  sub_29A012C90(&v9);
}

void sub_29A338BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::RemoveSubLayerPath(pxrInternal__aapl__pxrReserved__::SdfLayer *this, int a2)
{
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetSubLayerPaths(this, &v3);
  sub_29A338C44(&v3, a2);
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29A338C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A338C44(unsigned int *a1, uint64_t a2)
{
  memset(v2, 0, sizeof(v2));
  sub_29A346BA4(a1, a2, 1, v2);
  v3 = v2;
  sub_29A012C90(&v3);
}

void sub_29A338C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A012C90(&a12);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::GetSubLayerOffsets(pxrInternal__aapl__pxrReserved__::SdfLayer *this@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  v5 = sub_29A2EDBE4(this + 14);
  (*(*v5 + 136))(&v6);
  if (sub_29A1DF804(&v6))
  {
    if ((v7 & 4) != 0)
    {
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(&v6);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset*,pxrInternal__aapl__pxrReserved__::SdfLayerOffset*>();
}

void sub_29A338DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A338EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::SetSubLayerOffset(pxrInternal__aapl__pxrReserved__::SdfLayer *this, const pxrInternal__aapl__pxrReserved__::SdfLayerOffset *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  v4 = sub_29A2EDBE4(this + 14);
  (*(*v4 + 136))(&v5);
  if (sub_29A1DF804(&v5))
  {
    if ((v6 & 4) != 0)
    {
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(&v5);
    }
  }

  std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset*,pxrInternal__aapl__pxrReserved__::SdfLayerOffset*>();
}

void sub_29A3390D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_29A186B14(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::SetField(const char **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v15 = *MEMORY[0x29EDCA608];
  if (*(a4 + 1))
  {
    if (*(this + 521) != 1 || pxrInternal__aapl__pxrReserved__::SdfLayer::IsMuted(this))
    {
      sub_29B29B394(a3, a2, this);
    }

    else
    {
      if (*(this + 523) != 1 || (sub_29A33F92C(this, a2, a3) & 1) != 0)
      {
        pxrInternal__aapl__pxrReserved__::SdfLayer::GetField(this, a2, a3, v13);
        pxrInternal__aapl__pxrReserved__::VtValue::operator==();
      }

      v13[0] = "sdf/layer.cpp";
      v13[1] = "SetField";
      v13[2] = 3995;
      v13[3] = "void pxrInternal__aapl__pxrReserved__::SdfLayer::SetField(const SdfPath &, const TfToken &, const VtValue &)";
      v14 = 0;
      v11 = &unk_2A204B6C0;
      v12 = 0;
      v7 = *a3 & 0xFFFFFFFFFFFFFFF8;
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

      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      v10 = this[60];
      if (v10[23] < 0)
      {
        v10 = *v10;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, &v11, "Cannot set %s on <%s>. Field is not valid for layer @%s@.", v8, Text, v10);
    }
  }

  else
  {

    pxrInternal__aapl__pxrReserved__::SdfLayer::EraseField(this, a2, a3);
  }
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::GetRelocates(pxrInternal__aapl__pxrReserved__::SdfLayer *this@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  v5 = sub_29A2EDBE4(this + 14);
  (*(*v5 + 136))(&v6);
  if (sub_29A346DCC(&v6))
  {
    if ((v7 & 4) != 0)
    {
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(&v6);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>::__init_with_size[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>*,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>*>();
}

void sub_29A339460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  sub_29A23F9D4(&a13);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::SetRelocates(pxrInternal__aapl__pxrReserved__::SdfPath *a1)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A339500();
}

void sub_29A339500()
{
  v1 = *MEMORY[0x29EDCA608];
  v0 = &off_2A2049080;
  sub_29A23FC78();
}

void sub_29A339598(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::HasRelocates(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(this, v2, (v3 + 216), 0);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::ClearRelocates(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfLayer::EraseField(this, v2, (v3 + 216));
}

BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::_CanGetSpecAtPath(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, _DWORD *a4)
{
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a2);
  if (result)
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(a2) || pxrInternal__aapl__pxrReserved__::SdfPath::ContainsTargetPath(a2))
    {
      sub_29B29B434(a2);
    }

    v8 = sub_29A2EDBE4((a1 + 112));
    v9 = (*(*v8 + 96))(v8, a2);
    *a4 = v9;
    return v9 != 0;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::GetSpecType(pxrInternal__aapl__pxrReserved__::SdfLayer *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29A2EDBE4(this + 14) + 96);

  return v2();
}

_DWORD *pxrInternal__aapl__pxrReserved__::SdfLayer::GetObjectAtPath@<X0>(uint64_t **this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, atomic_uint **a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v13);
  v11 = 0;
  if (pxrInternal__aapl__pxrReserved__::SdfLayer::_CanGetSpecAtPath(this, a2, &v12, &v11))
  {
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v12))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_IdentityRegistry::Identify(this + 11, &v12, &v10);
      sub_29B29B4A0(&v10, a3);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::Sdf_IdentityRegistry::Identify(this + 11, a2, &v10);
      v6 = v10;
      *a3 = v10;
      if (v6)
      {
        atomic_fetch_add(v6, 1u);
        v7 = v10;
        if (v10)
        {
          v8 = *(v10 + 2);
          if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
          {
            pxrInternal__aapl__pxrReserved__::Sdf_Identity::_UnregisterOrDelete(v8, v7);
          }
        }
      }
    }
  }

  else
  {
    *a3 = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
  return sub_29A1DE3A4(&v12);
}

void sub_29A339880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::GetPrimAtPath(uint64_t **this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, atomic_uint **a3@<X8>)
{
  if (*a2 == *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this))
  {

    pxrInternal__aapl__pxrReserved__::SdfLayer::GetPseudoRoot(this, a3);
  }

  else
  {

    sub_29A33992C(this, a2, a3);
  }
}

_DWORD *sub_29A33992C@<X0>(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, atomic_uint **a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v13);
  v11 = 0;
  if (pxrInternal__aapl__pxrReserved__::SdfLayer::_CanGetSpecAtPath(a1, a2, &v12, &v11) && pxrInternal__aapl__pxrReserved__::Sdf_SpecType::CanCast(v11, &unk_2A204AA18))
  {
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v12))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_IdentityRegistry::Identify((a1 + 88), &v12, &v10);
      sub_29B29B4A0(&v10, a3);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::Sdf_IdentityRegistry::Identify((a1 + 88), a2, &v10);
      v6 = v10;
      *a3 = v10;
      if (v6)
      {
        atomic_fetch_add(v6, 1u);
        v7 = v10;
        if (v10)
        {
          v8 = *(v10 + 2);
          if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
          {
            pxrInternal__aapl__pxrReserved__::Sdf_Identity::_UnregisterOrDelete(v8, v7);
          }
        }
      }
    }
  }

  else
  {
    *a3 = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
  return sub_29A1DE3A4(&v12);
}

void sub_29A339A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A339A60@<X0>(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, atomic_uint **a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v13);
  v11 = 0;
  if (pxrInternal__aapl__pxrReserved__::SdfLayer::_CanGetSpecAtPath(a1, a2, &v12, &v11) && pxrInternal__aapl__pxrReserved__::Sdf_SpecType::CanCast(v11, &unk_2A204A990))
  {
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v12))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_IdentityRegistry::Identify((a1 + 88), &v12, &v10);
      sub_29B29B4A0(&v10, a3);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::Sdf_IdentityRegistry::Identify((a1 + 88), a2, &v10);
      v6 = v10;
      *a3 = v10;
      if (v6)
      {
        atomic_fetch_add(v6, 1u);
        v7 = v10;
        if (v10)
        {
          v8 = *(v10 + 2);
          if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
          {
            pxrInternal__aapl__pxrReserved__::Sdf_Identity::_UnregisterOrDelete(v8, v7);
          }
        }
      }
    }
  }

  else
  {
    *a3 = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
  return sub_29A1DE3A4(&v12);
}

void sub_29A339B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A339B94@<X0>(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, atomic_uint **a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v13);
  v11 = 0;
  if (pxrInternal__aapl__pxrReserved__::SdfLayer::_CanGetSpecAtPath(a1, a2, &v12, &v11) && pxrInternal__aapl__pxrReserved__::Sdf_SpecType::CanCast(v11, &unk_2A204A9A8))
  {
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v12))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_IdentityRegistry::Identify((a1 + 88), &v12, &v10);
      sub_29B29B4A0(&v10, a3);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::Sdf_IdentityRegistry::Identify((a1 + 88), a2, &v10);
      v6 = v10;
      *a3 = v10;
      if (v6)
      {
        atomic_fetch_add(v6, 1u);
        v7 = v10;
        if (v10)
        {
          v8 = *(v10 + 2);
          if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
          {
            pxrInternal__aapl__pxrReserved__::Sdf_Identity::_UnregisterOrDelete(v8, v7);
          }
        }
      }
    }
  }

  else
  {
    *a3 = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
  return sub_29A1DE3A4(&v12);
}

void sub_29A339CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A339CC8@<X0>(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, atomic_uint **a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v13);
  v11 = 0;
  if (pxrInternal__aapl__pxrReserved__::SdfLayer::_CanGetSpecAtPath(a1, a2, &v12, &v11) && pxrInternal__aapl__pxrReserved__::Sdf_SpecType::CanCast(v11, &unk_2A204AA30))
  {
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v12))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_IdentityRegistry::Identify((a1 + 88), &v12, &v10);
      sub_29B29B4A0(&v10, a3);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::Sdf_IdentityRegistry::Identify((a1 + 88), a2, &v10);
      v6 = v10;
      *a3 = v10;
      if (v6)
      {
        atomic_fetch_add(v6, 1u);
        v7 = v10;
        if (v10)
        {
          v8 = *(v10 + 2);
          if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
          {
            pxrInternal__aapl__pxrReserved__::Sdf_Identity::_UnregisterOrDelete(v8, v7);
          }
        }
      }
    }
  }

  else
  {
    *a3 = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
  return sub_29A1DE3A4(&v12);
}

void sub_29A339DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::PermissionToSave(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  if (*(this + 522) != 1 || pxrInternal__aapl__pxrReserved__::Sdf_IsAnonLayerIdentifier(*(this + 60)) || (pxrInternal__aapl__pxrReserved__::SdfLayer::IsMuted(this) & 1) != 0)
  {
    return 0;
  }

  v3 = (*(this + 60) + 24);

  return pxrInternal__aapl__pxrReserved__::Sdf_CanWriteLayerToPath(v3);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::CanApply(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1u, memory_order_relaxed);
  }

  v8 = operator new(0x20uLL);
  *v8 = &unk_2A204B328;
  v8[1] = sub_29A33A070;
  v8[2] = v7;
  v8[3] = v6;
  v17 = v8;
  v10 = *(a1 + 24);
  v9 = *(a1 + 32);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
  }

  v11 = operator new(0x20uLL);
  *v11 = &unk_2A204B3E8;
  v11[1] = sub_29A33A0D4;
  v11[2] = v10;
  v11[3] = v9;
  v15 = v11;
  v12 = pxrInternal__aapl__pxrReserved__::SdfBatchNamespaceEdit::Process(a2, 0, v16, v14, a3, 0);
  sub_29A346F8C(v14);
  sub_29A346EB0(v16);
  if (v12)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

void sub_29A339FC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_29A346F8C(va);
  sub_29A346EB0(va1);
  _Unwind_Resume(a1);
}

void sub_29A33A0C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void sub_29A33A0D4(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(this))
  {
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 2))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath((this + 8), &v4);
      sub_29A1DA6E4(a1);
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(this, &v4);
    pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(this);
    pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::CanRemoveChildForBatchNamespaceEdit();
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 2))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfPath::IsRelationalAttributePath((this + 8)))
    {
      sub_29A1DA6E4(a1);
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath((this + 8), &v4);
    sub_29A1DA6E4(a1);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsRelationalAttributePath(this))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(this, &v4);
    pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(this);
    pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::CanRemoveChildForBatchNamespaceEdit();
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(this, &v4);
  pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(this);
  pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::CanRemoveChildForBatchNamespaceEdit();
}

void sub_29A33A350(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::Apply(pxrInternal__aapl__pxrReserved__::SdfLayer *this, const pxrInternal__aapl__pxrReserved__::SdfBatchNamespaceEdit *a2)
{
  v23[4] = *MEMORY[0x29EDCA608];
  if (*(this + 521) != 1 || (pxrInternal__aapl__pxrReserved__::SdfLayer::IsMuted(this) & 1) != 0)
  {
    return 0;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v7 = *(this + 3);
  v6 = *(this + 4);
  v5 = this + 24;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 2, 1u, memory_order_relaxed);
  }

  v8 = operator new(0x20uLL);
  *v8 = &unk_2A204B490;
  v8[1] = sub_29A33A070;
  v8[2] = v7;
  v8[3] = v6;
  v23[3] = v8;
  v10 = *(this + 3);
  v9 = *(this + 4);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
  }

  v11 = operator new(0x20uLL);
  *v11 = &unk_2A204B518;
  v11[1] = sub_29A33A0D4;
  v11[2] = v10;
  v11[3] = v9;
  v22 = v11;
  v4 = pxrInternal__aapl__pxrReserved__::SdfBatchNamespaceEdit::Process(a2, &v18, v23, v21, 0, 0);
  sub_29A346F8C(v21);
  sub_29A346EB0(v23);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v17);
    if (v18 != v19)
    {
      v12 = (v18 + 8);
      if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(v18))
      {
        if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v12))
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v12, v21);
          sub_29A1DA6E4(v5);
        }

        pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath((v12 - 8), v21);
        NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v12 - 8));
        if ((*NameToken & 0xFFFFFFFFFFFFFFF8) == 0)
        {
          pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(NameToken);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::RemoveChild();
      }

      if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v12))
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPath::IsRelationalAttributePath(v12))
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v12, v21);
          sub_29A1DA6E4(v5);
        }

        pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v12, v21);
        sub_29A1DA6E4(v5);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfPath::IsRelationalAttributePath((v12 - 8)))
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath((v12 - 8), v21);
        v14 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v12 - 8));
        if ((*v14 & 0xFFFFFFFFFFFFFFF8) == 0)
        {
          pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v14);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::RemoveChild();
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath((v12 - 8), v21);
      v15 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v12 - 8));
      if ((*v15 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v15);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::RemoveChild();
    }

    sub_29A1DD644(v17);
  }

  v23[0] = &v18;
  sub_29A34700C(v23);
  return v4;
}

void sub_29A33A794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  a18 = &a11;
  sub_29A34700C(&a18);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::SdfChangeBlock *pxrInternal__aapl__pxrReserved__::SdfLayer::ScheduleRemoveIfInert(pxrInternal__aapl__pxrReserved__::SdfLayer *this, atomic_uint **a2)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_CreateInstance();
  }

  return pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::RemoveSpecIfInert(v2, a2);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::_RemoveIfInert(pxrInternal__aapl__pxrReserved__::SdfLayer *this, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a2)
{
  if ((pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a2) & 1) == 0)
  {
    v5 = *a2;
    v13 = v5;
    if (v5)
    {
      atomic_fetch_add(v5, 1u);
    }

    if (pxrInternal__aapl__pxrReserved__::Sdf_CanCastToType(&v13, &unk_2A204AA18, v4))
    {
      v14 = v13;
      if (v13)
      {
        atomic_fetch_add(v13, 1u);
        v12 = v14;
        if (v14)
        {
          atomic_fetch_add(v14, 1u);
        }
      }

      else
      {
        v12 = 0;
      }

      pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v14);
    }

    else
    {
      v12 = 0;
    }

    if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(&v12))
    {
      if (pxrInternal__aapl__pxrReserved__::Sdf_CanCastToType(&v13, &unk_2A204A990, v6))
      {
        v14 = v13;
        if (v13)
        {
          atomic_fetch_add(v13, 1u);
          v10 = v14;
          if (v14)
          {
            atomic_fetch_add(v14, 1u);
          }
        }

        else
        {
          v10 = 0;
        }

        pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v14);
      }

      else
      {
        v10 = 0;
      }

      if ((pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(&v10) & 1) == 0)
      {
        v9 = v10;
        if (v10)
        {
          atomic_fetch_add(v10, 1u);
        }

        pxrInternal__aapl__pxrReserved__::SdfLayer::RemovePropertyIfHasOnlyRequiredFields(this, &v9);
        pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v9);
      }

      v8 = &v10;
    }

    else
    {
      v7 = sub_29A2F6760(&v12);
      if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsInert(v7))
      {
LABEL_29:
        pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v12);
        pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v13);
        return;
      }

      v11 = v12;
      if (v12)
      {
        atomic_fetch_add(v12, 1u);
      }

      pxrInternal__aapl__pxrReserved__::SdfLayer::RemovePrimIfInert(this, &v11);
      v8 = &v11;
    }

    pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(v8);
    goto LABEL_29;
  }
}

void sub_29A33AAA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a9);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a10);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a16);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a20);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::RemovePrimIfInert(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  if ((pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(this) & 1) == 0)
  {
    v4 = *this;
    v9 = v4;
    if (v4)
    {
      atomic_fetch_add(v4, 1u);
    }

    v5 = pxrInternal__aapl__pxrReserved__::SdfLayer::_RemoveInertDFS(a1, &v9);
    pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v9);
    if (v5)
    {
      v7 = *this;
      v8 = v7;
      if (v7)
      {
        atomic_fetch_add(v7, 1u);
      }

      pxrInternal__aapl__pxrReserved__::SdfLayer::_RemoveInertToRootmost(v6, &v8);
      pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v8);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::RemovePropertyIfHasOnlyRequiredFields(int a1, pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  result = pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(this);
  if ((result & 1) == 0)
  {
    v4 = sub_29A1F190C(this);
    pxrInternal__aapl__pxrReserved__::SdfPropertySpec::HasOnlyRequiredFields(v4);
  }

  return result;
}

void sub_29A33AE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  sub_29A1DCEA8(va);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va1);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((v3 - 32));
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::_RemoveInertDFS(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = sub_29A2F6760(a2);
  if ((pxrInternal__aapl__pxrReserved__::SdfSpec::IsInert(v3) & 1) == 0)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v5 = sub_29A2F6760(a2);
    pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetNameChildren(v5);
  }

  return 1;
}

void sub_29A33B22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, __int16 *a33)
{
  sub_29A1F1B88(v33 - 168);
  a33 = &a28;
  sub_29A1F19E8(&a33);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::_RemoveInertToRootmost(int a1, pxrInternal__aapl__pxrReserved__::Sdf_Identity **this)
{
  result = pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(this);
  if ((result & 1) == 0)
  {
    v4 = sub_29A2F6760(this);
    result = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetSpecifier(v4);
    if (result == 1)
    {
      v5 = sub_29A2F6760(this);
      result = pxrInternal__aapl__pxrReserved__::SdfSpec::IsInert(v5);
      if (result)
      {
        v6 = sub_29A2F6760(this);
        pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetRealNameParent(v6);
      }
    }
  }

  return result;
}

void sub_29A33B3B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::SdfChangeBlock *pxrInternal__aapl__pxrReserved__::SdfLayer::RemoveInertSceneDescription(uint64_t **this)
{
  pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v4);
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetPseudoRoot(this, &v3);
  pxrInternal__aapl__pxrReserved__::SdfLayer::_RemoveInertDFS(this, &v3);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v3);
  return sub_29A1DD644(v4);
}

void sub_29A33B424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a9);
  sub_29A1DD644(&a10);
  _Unwind_Resume(a1);
}

void sub_29A33B448(uint64_t a1, uint64_t a2, char *a3)
{
  if (*(a1 + 8) != *(a1 + 24))
  {
    sub_29A1F1B3C();
  }

  v3[0] = "tf/iterator.h";
  v3[1] = "operator*";
  v3[2] = 254;
  v3[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::SdfChildrenView<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>>::operator*() [T = pxrInternal__aapl__pxrReserved__::SdfChildrenView<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>, Reverse = false]";
  v4 = 0;
  v5 = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "iterator exhausted", a3);
}

uint64_t sub_29A33B4D8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == *(a1 + 24))
  {
    v4[0] = "tf/iterator.h";
    v4[1] = "operator++";
    v4[2] = 233;
    v4[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::SdfChildrenView<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>>::operator++() [T = pxrInternal__aapl__pxrReserved__::SdfChildrenView<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>, Reverse = false]";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "iterator exhausted");
  }

  else
  {
    *(a1 + 8) = v2 + 1;
  }

  return a1;
}

uint64_t sub_29A33B55C(uint64_t result)
{
  if (*(result + 16) == *(result + 40))
  {
    sub_29B29B4EC();
  }

  return result;
}

void sub_29A33B64C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A33B668(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == *(a1 + 40))
  {
    v4[0] = "tf/iterator.h";
    v4[1] = "operator++";
    v4[2] = 233;
    v4[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::SdfChildrenProxy<pxrInternal__aapl__pxrReserved__::SdfChildrenView<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>>>::operator++() [T = pxrInternal__aapl__pxrReserved__::SdfChildrenProxy<pxrInternal__aapl__pxrReserved__::SdfChildrenView<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>>, Reverse = false]";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "iterator exhausted");
  }

  else
  {
    *(a1 + 16) = v2 + 1;
  }

  return a1;
}

uint64_t sub_29A33B6EC(uint64_t a1)
{
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  sub_29A1F1D04(a1 + 48);
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::SdfLayer::GetIdentifierCopy@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this[60];
  if (*(v2 + 23) < 0)
  {
    return sub_29A008D14(a2, *v2, *(v2 + 1));
  }

  v3 = *v2;
  *(a2 + 16) = *(v2 + 2);
  *a2 = v3;
  return this;
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::SetIdentifier(void *a1, std::string *a2)
{
  v55 = *MEMORY[0x29EDCA608];
  if (sub_29A1D9440(3))
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = a2->__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("SdfLayer::SetIdentifier('%s')\n", v4, v5, v6);
  }

  v45 = 0uLL;
  v46 = 0;
  v43 = 0;
  v44 = 0;
  v42 = &v43;
  if (pxrInternal__aapl__pxrReserved__::Sdf_SplitIdentifier(a1[60], &v45, &v42) & 1) != 0 || (*&v47 = "sdf/layer.cpp", *(&v47 + 1) = "SetIdentifier", *&v48 = 2647, *(&v48 + 1) = "void pxrInternal__aapl__pxrReserved__::SdfLayer::SetIdentifier(const string &)", LOBYTE(v49) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v47, "Sdf_SplitIdentifier( GetIdentifier(), &oldLayerPath, &oldArguments)", 0)))
  {
    __p = 0uLL;
    v41 = 0;
    v38 = 0;
    v39 = 0;
    v37 = &v38;
    if (pxrInternal__aapl__pxrReserved__::Sdf_SplitIdentifier(a2, &__p, &v37))
    {
      if (v44 != v39)
      {
LABEL_34:
        *&v47 = "sdf/layer.cpp";
        *(&v47 + 1) = "SetIdentifier";
        *&v48 = 2662;
        *(&v48 + 1) = "void pxrInternal__aapl__pxrReserved__::SdfLayer::SetIdentifier(const string &)";
        LOBYTE(v49) = 0;
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = a2;
        }

        else
        {
          v18 = a2->__r_.__value_.__r.__words[0];
        }

        v19 = a1[60];
        if (v19[23] < 0)
        {
          v19 = *v19;
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v47, 1, "Identifier '%s' contains arguments that differ from the layer's current arguments ('%s').", v18, v19);
        goto LABEL_67;
      }

      v7 = v42;
      if (v42 != &v43)
      {
        v8 = v37;
        while (sub_29A1B0B38(&v47, (v7 + 4), (v8 + 4)))
        {
          v9 = v7[1];
          v10 = v7;
          if (v9)
          {
            do
            {
              v7 = v9;
              v9 = *v9;
            }

            while (v9);
          }

          else
          {
            do
            {
              v7 = v10[2];
              v11 = *v7 == v10;
              v10 = v7;
            }

            while (!v11);
          }

          v12 = v8[1];
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
              v13 = v8[2];
              v11 = *v13 == v8;
              v8 = v13;
            }

            while (!v11);
          }

          v8 = v13;
          if (v7 == &v43)
          {
            goto LABEL_23;
          }
        }

        goto LABEL_34;
      }

LABEL_23:
      v35[0] = 0;
      v35[1] = 0;
      v36 = 0;
      NewLayerWithIdentifier = pxrInternal__aapl__pxrReserved__::Sdf_CanCreateNewLayerWithIdentifier(&__p, v35);
      if (NewLayerWithIdentifier)
      {
        Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(NewLayerWithIdentifier);
        v28[0] = 0;
        v28[1] = 0;
        v29 = 0;
        pxrInternal__aapl__pxrReserved__::ArResolver::CreateIdentifierForNewAsset(Resolver);
        if (SHIBYTE(v41) < 0)
        {
          operator delete(__p);
        }

        __p = v47;
        v41 = v48;
        BYTE7(v48) = 0;
        LOBYTE(v47) = 0;
        if (SHIBYTE(v29) < 0)
        {
          operator delete(v28[0]);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&__p, &v37, &v34);
        v16 = a1[60];
        if (*(v16 + 47) < 0)
        {
          sub_29A008D14(__dst, *(v16 + 24), *(v16 + 32));
        }

        else
        {
          *__dst = *(v16 + 24);
          v33 = *(v16 + 40);
        }

        pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v31);
        v28[0] = 0;
        v30 = 0;
        *(&v47 + 1) = 0;
        *&v48 = 0;
        *&v47 = &v47 + 8;
        sub_29A334AF4(&v34, &v47, v28, 1, &v27);
        sub_29A01752C(&v47, *(&v47 + 1));
        if (v27 && v27 != a1)
        {
          *&v47 = "sdf/layer.cpp";
          *(&v47 + 1) = "SetIdentifier";
          *&v48 = 2705;
          *(&v48 + 1) = "void pxrInternal__aapl__pxrReserved__::SdfLayer::SetIdentifier(const string &)";
          LOBYTE(v49) = 0;
          v22 = *(sub_29A3302A8(&v27) + 480);
          if (v22[23] < 0)
          {
            v22 = *v22;
          }

          v23 = *(sub_29A3302A8(&v27) + 480);
          v24 = (v23 + 24);
          if (*(v23 + 47) < 0)
          {
            v24 = *v24;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v47, 1, "Layer with identifier '%s' and resolved path '%s' exists.", v22, v24);
          sub_29A321930();
        }

        v53[0] = 0;
        v53[1] = 0;
        v54 = 0;
        v25[0] = 0;
        v25[1] = 0;
        v26 = 0;
        v52 = 0;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        pxrInternal__aapl__pxrReserved__::SdfLayer::_InitializeFromIdentifier(a1, &v34, v53, v25, &v47);
        sub_29A186B14(&v51 + 8);
        if (SBYTE7(v51) < 0)
        {
          operator delete(v50);
        }

        if (SHIBYTE(v49) < 0)
        {
          operator delete(*(&v48 + 1));
        }

        if (SBYTE7(v48) < 0)
        {
          operator delete(v47);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25[0]);
        }

        if (SHIBYTE(v54) < 0)
        {
          operator delete(v53[0]);
        }

        sub_29A321930();
      }

      *&v47 = "sdf/layer.cpp";
      *(&v47 + 1) = "SetIdentifier";
      *&v48 = 2669;
      *(&v48 + 1) = "void pxrInternal__aapl__pxrReserved__::SdfLayer::SetIdentifier(const string &)";
      LOBYTE(v49) = 0;
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = a2->__r_.__value_.__r.__words[0];
      }

      v21 = v35;
      if (v36 < 0)
      {
        v21 = v35[0];
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v47, 1, "Cannot change identifier to '%s': %s", v20, v21);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(v35[0]);
      }
    }

    else
    {
      *&v47 = "sdf/layer.cpp";
      *(&v47 + 1) = "SetIdentifier";
      *&v48 = 2654;
      *(&v48 + 1) = "void pxrInternal__aapl__pxrReserved__::SdfLayer::SetIdentifier(const string &)";
      LOBYTE(v49) = 0;
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = a2->__r_.__value_.__r.__words[0];
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v47, 1, "Invalid identifier '%s'", v17);
    }

LABEL_67:
    sub_29A01752C(&v37, v38);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(__p);
    }
  }

  sub_29A01752C(&v42, v43);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45);
  }
}

void sub_29A33BDEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45, void *a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, char a55, void *a56)
{
  if (*(v56 - 169) < 0)
  {
    operator delete(*(v56 - 192));
  }

  sub_29A1DD644(&a26);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  sub_29A01752C(&a45, a46);
  if (a53 < 0)
  {
    operator delete(a48);
  }

  sub_29A01752C(&a55, a56);
  if (*(v56 - 193) < 0)
  {
    operator delete(*(v56 - 216));
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::GetFileExtension(pxrInternal__aapl__pxrReserved__::SdfLayer *this@<X0>, uint64_t a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_GetExtension((*(this + 60) + 24));
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (!v4)
  {
    sub_29A1DA734(this + 40);
  }
}

void sub_29A33BFBC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::GetHints(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  if (pxrInternal__aapl__pxrReserved__::SdfLayer::IsDirty(this))
  {
    return 1;
  }

  else
  {
    return *(this + 524);
  }
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::GetMetadata(pxrInternal__aapl__pxrReserved__::SdfLayer **this@<X0>, uint64_t *a2@<X8>)
{
  v12[2] = *MEMORY[0x29EDCA608];
  v4 = operator new(0x58uLL);
  v5 = pxrInternal__aapl__pxrReserved__::SdfAbstractData::SdfAbstractData(v4);
  *v4 = &unk_2A204AED0;
  v4[3] = 0u;
  v4[4] = 0u;
  *(v4 + 20) = 1065353216;
  *a2 = v4;
  v6 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v5);
  v7 = sub_29A22DD10(a2);
  (*(*v7 + 64))(v7, v6, 7);
  pxrInternal__aapl__pxrReserved__::SdfLayer::_ListFields(this[10], this[14], v6, v11);
  v8 = v11[0];
  v9 = v11[1];
  while (v8 != v9)
  {
    pxrInternal__aapl__pxrReserved__::SdfLayer::GetField(this, v6, v8, v12);
    v10 = sub_29A22DD10(a2);
    (*(*v10 + 152))(v10, v6, v8, v12);
    sub_29A186B14(v12);
    v8 = (v8 + 8);
  }

  v12[0] = v11;
  sub_29A124AB0(v12);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::ComputeAbsolutePath@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    v7 = result;
    result = pxrInternal__aapl__pxrReserved__::Sdf_IsAnonLayerIdentifier(a2);
    if (!result)
    {
      pxrInternal__aapl__pxrReserved__::SdfCreateHandle<pxrInternal__aapl__pxrReserved__::SdfLayer>(v7, v10);
      pxrInternal__aapl__pxrReserved__::SdfComputeAssetPathRelativeToLayer(v10, a2, a3);
      return sub_29B28F9E0(v10);
    }

    v6 = *(a2 + 23);
  }

  if (v6 < 0)
  {
    v8 = *a2;
    v9 = *(a2 + 8);

    return sub_29A008D14(a3, v8, v9);
  }

  else
  {
    *a3 = *a2;
    a3[2] = *(a2 + 16);
  }

  return result;
}

void sub_29A33C2CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28D068(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::DetachedLayerRules::Include(uint64_t a1, uint64_t a2)
{
  sub_29A347304(a1, *(a1 + 8), *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  v3 = *(a1 + 8);
  v4 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3));
  if (v3 == *a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_29AA89D34(*a1, v3, &v8, v5, 1);
  v6 = sub_29A3475E4(*a1, *(a1 + 8), &v9);
  sub_29A33C380(a1, v6, *(a1 + 8));
  return a1;
}

uint64_t sub_29A33C380(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    sub_29A2C97CC(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 1);
        v7 -= 3;
        if (v8 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::DetachedLayerRules::Exclude(uint64_t a1, uint64_t a2)
{
  sub_29A347304((a1 + 24), *(a1 + 32), *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3));
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  sub_29AA89D34(v3, v4, &v9, v6, 1);
  v7 = sub_29A3475E4(*(a1 + 24), *(a1 + 32), &v10);
  sub_29A33C380(a1 + 24, v7, *(a1 + 32));
  return a1;
}

BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::DetachedLayerRules::IsIncluded(uint64_t *a1, std::string *a2)
{
  if ((a1[6] & 1) == 0 && *a1 == a1[1] || pxrInternal__aapl__pxrReserved__::Sdf_IsAnonLayerIdentifier(a2))
  {
    return 0;
  }

  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  if ((pxrInternal__aapl__pxrReserved__::Sdf_SplitIdentifier(a2, v14, __p) & 1) == 0)
  {
    goto LABEL_25;
  }

  if (a1[6])
  {
    goto LABEL_16;
  }

  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    while (1)
    {
      v7 = *(v5 + 23) >= 0 ? v5 : *v5;
      if (pxrInternal__aapl__pxrReserved__::TfStringContains(v14, v7))
      {
        break;
      }

      v5 += 24;
      if (v5 == v6)
      {
        v5 = v6;
        break;
      }
    }

    v6 = a1[1];
  }

  if (v5 != v6)
  {
LABEL_16:
    v8 = a1[3];
    v9 = a1[4];
    if (v8 != v9)
    {
      while (1)
      {
        v10 = *(v8 + 23) >= 0 ? v8 : *v8;
        if (pxrInternal__aapl__pxrReserved__::TfStringContains(v14, v10))
        {
          break;
        }

        v8 += 24;
        if (v8 == v9)
        {
          v8 = v9;
          break;
        }
      }

      v9 = a1[4];
    }

    v4 = v8 == v9;
  }

  else
  {
LABEL_25:
    v4 = 0;
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  return v4;
}

void sub_29A33C5E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::SetDetachedLayerRules()
{
  if (!atomic_load(&qword_2A173F918))
  {
    sub_29A3476D4();
  }

  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29A33C86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void *);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  sub_29A1DD644(va);
  pxrInternal__aapl__pxrReserved__::ArResolverScopedCache::~ArResolverScopedCache(va2);
  sub_29A33C9F8(va1);
  _Unwind_Resume(a1);
}

tbb::queuing_rw_mutex::scoped_lock *pxrInternal__aapl__pxrReserved__::SdfLayer::GetLoadedLayers@<X0>(void *a1@<X8>)
{
  sub_29A32FC5C();
  v5[0] = 0;
  v6 = 0;
  tbb::queuing_rw_mutex::scoped_lock::acquire(v5, &qword_2A173F938, 0);
  v3 = atomic_load(&qword_2A173F910);
  if (!v3)
  {
    v3 = sub_29A34641C(&qword_2A173F910);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::GetLayers(v3, a1);
  return sub_29A344D60(v5);
}

void sub_29A33C9E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28D068(a10);
  }

  _Unwind_Resume(exception_object);
}

void **sub_29A33C9F8(void **a1)
{
  v3 = a1 + 3;
  sub_29A012C90(&v3);
  v3 = a1;
  sub_29A012C90(&v3);
  return a1;
}

unint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::GetDetachedLayerRules(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  result = atomic_load(&qword_2A173F918);
  if (!result)
  {
    return sub_29A3476D4();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::GetMutedLayers(uint64_t *a1@<X8>)
{
  v3 = atomic_load(&qword_2A173F900);
  if (!v3)
  {
    v3 = sub_29A181B8C(&qword_2A173F900);
  }

  std::mutex::lock(v3);
  v4 = atomic_load(&qword_2A173F920);
  if (!v4)
  {
    v4 = sub_29A347990(&qword_2A173F920);
  }

  sub_29A3479FC(a1, v4);

  std::mutex::unlock(v3);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::SetMuted(pxrInternal__aapl__pxrReserved__::SdfLayer *this, int a2)
{
  if (pxrInternal__aapl__pxrReserved__::SdfLayer::IsMuted(this) != a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfLayer::_GetMutedPath(this, __p);
    if (a2)
    {
      pxrInternal__aapl__pxrReserved__::SdfLayer::AddToMutedLayers(__p);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::SdfLayer::RemoveFromMutedLayers(__p);
    }

    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29A33CB68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::AddToMutedLayers(const void **a1)
{
  v2 = atomic_load(&qword_2A173F900);
  if (!v2)
  {
    v2 = sub_29A181B8C(&qword_2A173F900);
  }

  std::mutex::lock(v2);
  atomic_fetch_add(&qword_2A14F6AA0, 1uLL);
  v3 = atomic_load(&qword_2A173F920);
  if (!v3)
  {
    v3 = sub_29A347990(&qword_2A173F920);
  }

  sub_29A095658(v3, a1, a1);
  v5 = v4;
  std::mutex::unlock(v2);
  if (v5)
  {
    v7[0] = 0;
    v7[1] = 0;
    v6 = v7;
    pxrInternal__aapl__pxrReserved__::SdfLayer::Find(a1, &v6, &v8);
  }
}

void sub_29A33D0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16)
{
  std::mutex::unlock(v16);
  sub_29A32BD28(&a12);
  sub_29A32BD28((v17 - 72));
  v19 = *(v17 - 56);
  if (v19)
  {
    if (atomic_fetch_add_explicit(v19 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v19 + 8))(v19);
    }
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::RemoveFromMutedLayers(const void **a1)
{
  v2 = atomic_load(&qword_2A173F900);
  if (!v2)
  {
    v2 = sub_29A181B8C(&qword_2A173F900);
  }

  std::mutex::lock(v2);
  atomic_fetch_add(&qword_2A14F6AA0, 1uLL);
  v3 = atomic_load(&qword_2A173F920);
  if (!v3)
  {
    v3 = sub_29A347990(&qword_2A173F920);
  }

  v4 = sub_29A0DD010(v3, a1);
  std::mutex::unlock(v2);
  if (v4)
  {
    v6[0] = 0;
    v6[1] = 0;
    v5 = v6;
    pxrInternal__aapl__pxrReserved__::SdfLayer::Find(a1, &v5, &v7);
  }
}

void sub_29A33D580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *a16, uint64_t a17, uint64_t a18)
{
  sub_29A32BD28(&a16);
  v19 = a18;
  if (a18)
  {
    if (atomic_fetch_add_explicit((a18 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v19 + 8))(v19);
    }
  }

  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::IsMuted(const void **a1)
{
  v2 = atomic_load(&qword_2A173F900);
  if (!v2)
  {
    v2 = sub_29A181B8C(&qword_2A173F900);
  }

  std::mutex::lock(v2);
  v3 = atomic_load(&qword_2A173F920);
  if (!v3)
  {
    v3 = sub_29A347990(&qword_2A173F920);
  }

  v4 = sub_29A00AF58(v3, a1) != 0;
  std::mutex::unlock(v2);
  return v4;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::_ShouldNotify(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  if (*(this + 474) == 1)
  {
    v1 = *(this + 473);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::Clear(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  if (*(this + 521) == 1 && !pxrInternal__aapl__pxrReserved__::SdfLayer::IsMuted(this))
  {
    v2 = sub_29A2EDBE4(this + 14);
    (*(*v2 + 24))(v2);
    sub_29A32F47C(this + 40, *(this + 60));
  }

  v3[0] = "sdf/layer.cpp";
  v3[1] = "Clear";
  v3[2] = 3130;
  v3[3] = "void pxrInternal__aapl__pxrReserved__::SdfLayer::Clear()";
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Clear: Permission denied.");
}

void sub_29A33D840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *a9, uint64_t a10, uint64_t a11)
{
  v12 = a11;
  if (a11)
  {
    if (atomic_fetch_add_explicit((a11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v12 + 8))(v12);
    }
  }

  sub_29A32BD28(&a9);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::_UpdateLastDirtinessState(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  IsDirty = pxrInternal__aapl__pxrReserved__::SdfLayer::IsDirty(this);
  v3 = *(this + 475);
  if (v3 != IsDirty)
  {
    *(this + 475) = pxrInternal__aapl__pxrReserved__::SdfLayer::IsDirty(this);
  }

  return v3 != IsDirty;
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::SetStateDelegate(uint64_t a1, void *a2)
{
  if (*a2)
  {
    v4 = sub_29A32D670((a1 + 120));
    v5 = 0;
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::_SetLayer(v4, &v5);
    sub_29B29B638(&v5, a1 + 120, a2);
  }

  v5 = "sdf/layer.cpp";
  v6 = "SetStateDelegate";
  v7 = 3174;
  v8 = "void pxrInternal__aapl__pxrReserved__::SdfLayer::SetStateDelegate(const SdfLayerStateDelegateBaseRefPtr &)";
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v5, 1, "Invalid layer state delegate");
}

void sub_29A33D998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    sub_29B28D068(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A33DAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (a7)
  {
    sub_29A014BEC(a7);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  sub_29A1F1A6C(va);
  _Unwind_Resume(a1);
}

void sub_29A33DB70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28D068(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::TransferContent(pxrInternal__aapl__pxrReserved__::SdfLayer *this, uint64_t a2)
{
  if (*(this + 521) == 1 && !pxrInternal__aapl__pxrReserved__::SdfLayer::IsMuted(this))
  {
    if (*(this + 474) == 1)
    {
      v5 = *(this + 473);
    }

    else
    {
      v5 = 0;
    }

    v6 = sub_29A2EDBE4(this + 14);
    v7 = (*(*v6 + 24))(v6);
    if ((v5 & 1) != 0 && !v7)
    {
      sub_29A1DA6E4(a2);
    }

    sub_29A32F47C(this + 40, *(this + 60));
  }

  v9[0] = "sdf/layer.cpp";
  v9[1] = "TransferContent";
  v9[2] = 3231;
  v9[3] = "void pxrInternal__aapl__pxrReserved__::SdfLayer::TransferContent(const SdfLayerHandle &)";
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_GetLayerDisplayName(*(this + 60), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 3, "TransferContent of '%s': Permission denied.", p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A33DE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18)
{
  v19 = a18;
  if (a18)
  {
    if (atomic_fetch_add_explicit((a18 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v19 + 8))(v19);
    }
  }

  sub_29A32BD28(&a10);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::GetCompositionAssetDependencies(pxrInternal__aapl__pxrReserved__::SdfLayer *this@<X0>, uint64_t a2@<X8>)
{
  v9 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetSubLayerPaths(this, v5);
  if (sub_29A346D48(v5))
  {
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  *(&v7 + 1) = v4;
  v8 = 0;
  sub_29A33E0F0(v5, &v6);
  sub_29A347E44(a2, &v7, &v6);
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetPseudoRoot(this, &v7);
  sub_29A33E180(&v7);
}

void sub_29A33DF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  sub_29A019EE8(v9, *(v9 + 8));
  if (a5)
  {
    sub_29A014BEC(a5);
  }

  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::UpdateCompositionAssetDependency(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::SdfLayer::GetSubLayerPaths(a1, v12);
    v7 = sub_29A33E5A4(v12, a2);
    v8 = v7;
    if (v7 == -1)
    {
      pxrInternal__aapl__pxrReserved__::SdfLayer::GetPseudoRoot(a1, &v11);
      pxrInternal__aapl__pxrReserved__::SdfLayer::_UpdatePrimCompositionDependencyPaths(a1, &v11, a2);
    }

    pxrInternal__aapl__pxrReserved__::SdfLayer::RemoveSubLayerPath(a1, v7);
    v9 = *(a3 + 23);
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a3 + 8);
    }

    if (v9)
    {
      pxrInternal__aapl__pxrReserved__::SdfLayer::InsertSubLayerPath(a1, a3, v8);
    }

    if (v13)
    {
      sub_29A014BEC(v13);
    }
  }

  return v3 != 0;
}

void sub_29A33E0C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a9);
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(a1);
}

void *sub_29A33E0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29A346D48(a1);
  result = *a1;
  if (*a1)
  {
    result = (*(*result + 112))(result, *(a1 + 16));
    v6 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3);
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 8) = v7;
  *(a2 + 16) = v6;
  return result;
}

void sub_29A33E180(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1)
{
  v2[18] = *MEMORY[0x29EDCA608];
  v1 = sub_29A2F6760(a1);
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(v1, v2);
  sub_29A1DA6E4(v2);
}

void sub_29A33E468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, void *__p, std::__shared_weak_count *a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27)
{
  if (a15)
  {
    sub_29A014BEC(a15);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29A33E5A4(uint64_t a1, const void **a2)
{
  if (!sub_29A1DF890(a1))
  {
    return -1;
  }

  v4 = *a1;
  v5 = *(a1 + 16);

  return sub_29A348124(v4, v5, a2);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::_UpdatePrimCompositionDependencyPaths(uint64_t a1, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a2, uint64_t a3)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = *(a3 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a3 + 8);
  }

  if (v3)
  {
    v4 = sub_29A2F6760(a2);
    pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetReferenceList(v4);
  }

  sub_29B29B784(v5, a2, a3);
}

void sub_29A33E918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_29A1F1A6C(&__p);
  sub_29A1F1B88(v37 - 208);
  _Unwind_Resume(a1);
}

void sub_29A33EA54(uint64_t *a1, uint64_t *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (sub_29A348564(a1))
  {
    v4 = *a1;
    v6 = *a2;
    sub_29A3485E8(v7, (a2 + 1));
    v12 = 0;
    v5 = operator new(0x40uLL);
    *v5 = &unk_2A204B5A0;
    *(v5 + 1) = v6;
    *(v5 + 4) = v8;
    *(v5 + 1) = *v7;
    v7[0] = 0;
    v7[1] = 0;
    v8 = 0;
    *(v5 + 7) = v10;
    *(v5 + 40) = *__p;
    __p[1] = 0;
    v10 = 0;
    __p[0] = 0;
    v12 = v5;
    (*(*v4 + 64))(v4, v11);
    sub_29A3255A8(v11);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }
}

void sub_29A33EB8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_29A3255A8(&a16);
  sub_29A33EBB8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29A33EBB8(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29A33EBFC(uint64_t *a1, uint64_t *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (sub_29A348BCC(a1))
  {
    v4 = *a1;
    v6 = *a2;
    sub_29A3485E8(v7, (a2 + 1));
    v12 = 0;
    v5 = operator new(0x40uLL);
    *v5 = &unk_2A204B638;
    *(v5 + 1) = v6;
    *(v5 + 4) = v8;
    *(v5 + 1) = *v7;
    v7[0] = 0;
    v7[1] = 0;
    v8 = 0;
    *(v5 + 7) = v10;
    *(v5 + 40) = *__p;
    __p[1] = 0;
    v10 = 0;
    __p[0] = 0;
    v12 = v5;
    (*(*v4 + 64))(v4, v11);
    sub_29A325B84(v11);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }
}

void sub_29A33ED34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_29A325B84(&a16);
  sub_29A33EBB8(&a9);
  _Unwind_Resume(a1);
}

tbb::queuing_rw_mutex::scoped_lock *pxrInternal__aapl__pxrReserved__::SdfLayer::DumpLayerInfo(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  sub_29A32FC5C();
  v6[0] = 0;
  v7 = 0;
  tbb::queuing_rw_mutex::scoped_lock::acquire(v6, &qword_2A173F938, 0);
  v1 = sub_29A00911C(MEMORY[0x29EDC93C0], "Layer Registry Dump:", 20);
  std::ios_base::getloc((v1 + *(*v1 - 24)));
  v2 = std::locale::use_facet(&v8, MEMORY[0x29EDC93D0]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v8);
  std::ostream::put();
  std::ostream::flush();
  v3 = atomic_load(&qword_2A173F910);
  if (!v3)
  {
    v3 = sub_29A34641C(&qword_2A173F910);
  }

  pxrInternal__aapl__pxrReserved__::operator<<(v1, v3);
  std::ios_base::getloc((v1 + *(*v1 - 24)));
  v4 = std::locale::use_facet(&v8, MEMORY[0x29EDC93D0]);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v8);
  std::ostream::put();
  std::ostream::flush();
  return sub_29A344D60(v6);
}

void sub_29A33EEE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::locale::~locale((v2 - 24));
  sub_29A344D60(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::WriteDataFile(uint64_t a1)
{
  v7[19] = *MEMORY[0x29EDCA608];
  sub_29A0A0C08(&v5);
  v2 = sub_29A2EDBE4((a1 + 112));
  (*(*v2 + 56))(v2, &v5);
  v3 = *&v6[*(v5 - 24) + 24] == 0;
  v5 = *MEMORY[0x29EDC9520];
  *&v6[*(v5 - 24) - 8] = *(MEMORY[0x29EDC9520] + 24);
  MEMORY[0x29C2C1D20](v6);
  std::ostream::~ostream();
  MEMORY[0x29C2C4390](v7);
  return v3;
}

void *sub_29A33F0A8(void *a1)
{
  v2 = MEMORY[0x29EDC9520];
  v3 = *MEMORY[0x29EDC9520];
  *a1 = *MEMORY[0x29EDC9520];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x29C2C1D20](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x29C2C4390](a1 + 52);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::_ListFields(pxrInternal__aapl__pxrReserved__::SdfLayer *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfSchemaBase *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfAbstractData *a3@<X2>, void *a4@<X8>)
{
  (*(*a2 + 176))(a2, a3);
  v9 = (*(*a2 + 96))(a2, a3);
  v10 = v9;
  if (v9 >= 0xC)
  {
    v23[0] = "sdf/layer.cpp";
    v23[1] = "_ListFields";
    v23[2] = 3730;
    v23[3] = "static vector<TfToken> pxrInternal__aapl__pxrReserved__::SdfLayer::_ListFields(const SdfSchemaBase &, const SdfAbstractData &, const SdfPath &)";
    v24 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v23, 1, "Illegal SpecType int(specType)==<%i> on path <%s>. ", v10, Text);
  }

  else if (v9)
  {
    RequiredFields = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetRequiredFields(this, v9);
    v12 = RequiredFields[1] - *RequiredFields;
    if (v12)
    {
      v13 = 0;
      v14 = v12 >> 3;
      v16 = *a4;
      v15 = a4[1];
      v17 = (v12 >> 3) + ((v15 - *a4) >> 3) > ((a4[2] - *a4) >> 3);
      do
      {
        v18 = (*RequiredFields + 8 * v13);
        v19 = v15;
        if (v16 != v15)
        {
          v19 = v16;
          while ((*v19 ^ *v18) >= 8)
          {
            if (++v19 == v15)
            {
              v19 = v15;
              break;
            }
          }
        }

        if (v19 == v15)
        {
          if (v17)
          {
            v20 = a4[1];
            if (v20 == a4[2])
            {
              sub_29A1D7F98(a4, v14 - v13 + ((v20 - *a4) >> 3));
              v17 = 0;
              v21 = v15 - v16;
              v16 = *a4;
              v15 = (*a4 + v21);
            }

            else
            {
              v17 = 1;
            }
          }

          else
          {
            v17 = 0;
          }

          sub_29A1D8028(a4, v18);
        }

        ++v13;
      }

      while (v13 != v14);
    }
  }
}

void sub_29A33F358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(void *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, void *a3, uint64_t (***a4)(void, uint64_t))
{
  v22 = 0;
  v8 = sub_29A2EDBE4(a1 + 14);
  if ((*(*v8 + 120))(v8, a2, a3, a4, &v22))
  {
    return 1;
  }

  v10 = v22;
  if (v22 >= 0xC)
  {
    v20[0] = "sdf/layer.cpp";
    v20[1] = "HasField";
    v20[2] = 3870;
    v20[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(const SdfPath &, const TfToken &, SdfAbstractDataValue *) const";
    v21 = 0;
    v16 = *a3 & 0xFFFFFFFFFFFFFFF8;
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

    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v19 = a1[60];
    if (v19[23] < 0)
    {
      v19 = *v19;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v20, 1, "Illegal SpecType int(specType)==<%i> for field:%s on path <%s>. SpecType is not valid for layer @%s@.", v10, v17, Text, v19);
    return 0;
  }

  if (!v22)
  {
    return 0;
  }

  v11 = a1[10];
  v12 = *(v11 + 928);
  v13 = *(v11 + 936);
  if (v12 == v13)
  {
    return 0;
  }

  while ((*v12 ^ *a3) > 7)
  {
    if (++v12 == v13)
    {
      return 0;
    }
  }

  v14 = v11 + 72 * v22;
  if (*(v14 + 120) != 1)
  {
    return 0;
  }

  result = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SpecDefinition::IsRequiredField((v14 + 56), a3);
  if (result)
  {
    result = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetFieldDefinition(v11, a3);
    if (result)
    {
      if (!a4)
      {
        return 1;
      }

      FallbackValue = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FieldDefinition::GetFallbackValue(result);
      return (**a4)(a4, FallbackValue);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::HasFieldDictKey(pxrInternal__aapl__pxrReserved__::SdfLayer *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, pxrInternal__aapl__pxrReserved__::VtValue *a5)
{
  v10 = sub_29A2EDBE4(this + 14);
  if ((*(*v10 + 192))(v10, a2, a3, a4, a5))
  {
    return 1;
  }

  v12 = *(this + 10);
  v13 = *(v12 + 928);
  v14 = *(v12 + 936);
  if (v13 == v14)
  {
    return 0;
  }

  while ((*v13 ^ *a3) > 7)
  {
    if (++v13 == v14)
    {
      return 0;
    }
  }

  v15 = sub_29A2EDBE4(this + 14);
  v16 = (*(*v15 + 96))(v15, a2);
  if (v16 > 0xB)
  {
    result = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_IssueErrorForInvalidSpecType(v12, v16);
    if (!result)
    {
      return result;
    }

    goto LABEL_11;
  }

  v17 = v12 + 72 * v16;
  if ((*(v17 + 120) & 1) == 0)
  {
    return 0;
  }

  result = v17 + 56;
LABEL_11:
  result = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SpecDefinition::IsRequiredField(result, a3);
  if (result)
  {
    result = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetFieldDefinition(v12, a3);
    if (result)
    {
      FallbackValue = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FieldDefinition::GetFallbackValue(result);
      result = sub_29A185258(FallbackValue);
      if (result)
      {
        v19 = *(FallbackValue + 1);
        if ((v19 & 4) != 0)
        {
          result = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(FallbackValue);
          v20 = result;
        }

        else
        {
          v20 = *FallbackValue;
        }

        v21 = (*a4 & 0xFFFFFFFFFFFFFFF8) != 0 ? ((*a4 & 0xFFFFFFFFFFFFFFF8) + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
        result = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath(v20, v21, ":");
        if (result)
        {
          if (a5)
          {
            sub_29A1854E8(a5, result);
          }

          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::HasFieldDictKey(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (***a5)(void, uint64_t))
{
  v10 = sub_29A2EDBE4((a1 + 112));
  if ((*(*v10 + 184))(v10, a2, a3, a4, a5))
  {
    return 1;
  }

  v12 = *(a1 + 80);
  v13 = *(v12 + 928);
  v14 = *(v12 + 936);
  if (v13 == v14)
  {
    return 0;
  }

  while ((*v13 ^ *a3) > 7)
  {
    if (++v13 == v14)
    {
      return 0;
    }
  }

  v15 = sub_29A2EDBE4((a1 + 112));
  v16 = (*(*v15 + 96))(v15, a2);
  if (v16 > 0xB)
  {
    result = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_IssueErrorForInvalidSpecType(v12, v16);
    if (!result)
    {
      return result;
    }

    goto LABEL_11;
  }

  v17 = v12 + 72 * v16;
  if ((*(v17 + 120) & 1) == 0)
  {
    return 0;
  }

  result = v17 + 56;
LABEL_11:
  result = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SpecDefinition::IsRequiredField(result, a3);
  if (result)
  {
    result = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetFieldDefinition(v12, a3);
    if (result)
    {
      FallbackValue = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FieldDefinition::GetFallbackValue(result);
      result = sub_29A185258(FallbackValue);
      if (result)
      {
        v19 = *(FallbackValue + 1);
        if ((v19 & 4) != 0)
        {
          result = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(FallbackValue);
          v20 = result;
        }

        else
        {
          v20 = *FallbackValue;
        }

        v21 = (*a4 & 0xFFFFFFFFFFFFFFF8) != 0 ? ((*a4 & 0xFFFFFFFFFFFFFFF8) + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
        result = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath(v20, v21, ":");
        if (result)
        {
          if (!a5)
          {
            return 1;
          }

          v22 = **a5;

          return v22(a5, result);
        }
      }
    }
  }

  return result;
}

void *sub_29A33F92C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 80);
  v6 = sub_29A2EDBE4((a1 + 112));
  v7 = (*(*v6 + 96))(v6, a2);

  return pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsValidFieldForSpec(v5, a3, v7);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::SetField(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t a4)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = 0;
  v8 = (*(*a4 + 8))(a4, &v15);
  sub_29A186B14(&v15);
  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::SdfLayer::EraseField(a1, a2, a3);
  }

  else if (*(a1 + 521) != 1 || pxrInternal__aapl__pxrReserved__::SdfLayer::IsMuted(a1))
  {
    sub_29B29B7DC(a3, a2, a1);
  }

  else if (*(a1 + 523) != 1 || (sub_29A33F92C(a1, a2, a3) & 1) != 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfLayer::GetField(a1, a2, a3, &v15);
    if (((*(*a4 + 8))(a4, &v15) & 1) == 0)
    {
      pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimSetField<pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstValue>();
    }

    sub_29A186B14(&v15);
  }

  else
  {
    v15 = "sdf/layer.cpp";
    v16 = "SetField";
    v17 = 4023;
    v18 = "void pxrInternal__aapl__pxrReserved__::SdfLayer::SetField(const SdfPath &, const TfToken &, const SdfAbstractDataConstValue &)";
    v19 = 0;
    v13 = qword_2A204B6C0;
    v14 = 0;
    v9 = *a3 & 0xFFFFFFFFFFFFFFF8;
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

    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v12 = *(a1 + 480);
    if (v12[23] < 0)
    {
      v12 = *v12;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v15, &v13, "Cannot set %s on <%s>. Field is not valid for layer @%s@.", v10, Text, v12);
  }
}

void sub_29A33FBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::SetFieldDictValueByKey(const char **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, const pxrInternal__aapl__pxrReserved__::VtValue *a5)
{
  v28 = *MEMORY[0x29EDCA608];
  if (*(this + 521) == 1 && !pxrInternal__aapl__pxrReserved__::SdfLayer::IsMuted(this))
  {
    if (*(this + 523) != 1 || (sub_29A33F92C(this, a2, a3) & 1) != 0)
    {
      pxrInternal__aapl__pxrReserved__::SdfLayer::GetFieldDictValueByKey(this, a2, a3, a4, &v23);
      pxrInternal__aapl__pxrReserved__::VtValue::operator==();
    }

    v23 = "sdf/layer.cpp";
    v24 = "SetFieldDictValueByKey";
    v25 = 4051;
    v26 = "void pxrInternal__aapl__pxrReserved__::SdfLayer::SetFieldDictValueByKey(const SdfPath &, const TfToken &, const TfToken &, const VtValue &)";
    v27 = 0;
    v21 = qword_2A204B6C0;
    v22 = 0;
    v15 = *a3 & 0xFFFFFFFFFFFFFFF8;
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

    v17 = *a4 & 0xFFFFFFFFFFFFFFF8;
    if (v17)
    {
      v18 = (v17 + 16);
      if (*(v17 + 39) < 0)
      {
        v18 = *v18;
      }
    }

    else
    {
      v18 = "";
    }

    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v20 = this[60];
    if (v20[23] < 0)
    {
      v20 = *v20;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, &v21, "Cannot set %s:%s on <%s>. Field is not valid for layer @%s@.", v16, v18, Text, v20);
  }

  else
  {
    v23 = "sdf/layer.cpp";
    v24 = "SetFieldDictValueByKey";
    v25 = 4042;
    v26 = "void pxrInternal__aapl__pxrReserved__::SdfLayer::SetFieldDictValueByKey(const SdfPath &, const TfToken &, const TfToken &, const VtValue &)";
    v27 = 0;
    v9 = *a3 & 0xFFFFFFFFFFFFFFF8;
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

    v11 = *a4 & 0xFFFFFFFFFFFFFFF8;
    if (v11)
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

    v13 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v14 = this[60];
    if (v14[23] < 0)
    {
      v14 = *v14;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 1, "Cannot set %s:%s on <%s>. Layer @%s@ is not editable.", v10, v12, v13, v14);
  }
}

void sub_29A33FE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::SetFieldDictValueByKey(const char **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, uint64_t a5)
{
  v29 = *MEMORY[0x29EDCA608];
  if (*(this + 521) == 1 && !pxrInternal__aapl__pxrReserved__::SdfLayer::IsMuted(this))
  {
    if (*(this + 523) != 1 || (sub_29A33F92C(this, a2, a3) & 1) != 0)
    {
      pxrInternal__aapl__pxrReserved__::SdfLayer::GetFieldDictValueByKey(this, a2, a3, a4, &v24);
      if (((*(*a5 + 8))(a5, &v24) & 1) == 0)
      {
        pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimSetFieldDictValueByKey<pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstValue>();
      }

      sub_29A186B14(&v24);
    }

    else
    {
      v24 = "sdf/layer.cpp";
      v25 = "SetFieldDictValueByKey";
      v26 = 4081;
      v27 = "void pxrInternal__aapl__pxrReserved__::SdfLayer::SetFieldDictValueByKey(const SdfPath &, const TfToken &, const TfToken &, const SdfAbstractDataConstValue &)";
      v28 = 0;
      v22 = qword_2A204B6C0;
      v23 = 0;
      v16 = *a3 & 0xFFFFFFFFFFFFFFF8;
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

      v18 = *a4 & 0xFFFFFFFFFFFFFFF8;
      if (v18)
      {
        v19 = (v18 + 16);
        if (*(v18 + 39) < 0)
        {
          v19 = *v19;
        }
      }

      else
      {
        v19 = "";
      }

      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      v21 = this[60];
      if (v21[23] < 0)
      {
        v21 = *v21;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v24, &v22, "Cannot set %s:%s on <%s>. Field is not valid for layer @%s@.", v17, v19, Text, v21);
    }
  }

  else
  {
    v24 = "sdf/layer.cpp";
    v25 = "SetFieldDictValueByKey";
    v26 = 4072;
    v27 = "void pxrInternal__aapl__pxrReserved__::SdfLayer::SetFieldDictValueByKey(const SdfPath &, const TfToken &, const TfToken &, const SdfAbstractDataConstValue &)";
    v28 = 0;
    v10 = *a3 & 0xFFFFFFFFFFFFFFF8;
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

    v12 = *a4 & 0xFFFFFFFFFFFFFFF8;
    if (v12)
    {
      v13 = (v12 + 16);
      if (*(v12 + 39) < 0)
      {
        v13 = *v13;
      }
    }

    else
    {
      v13 = "";
    }

    v14 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v15 = this[60];
    if (v15[23] < 0)
    {
      v15 = *v15;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v24, 1, "Cannot set %s:%s on <%s>. Layer @%s@ is not editable.", v11, v13, v14, v15);
  }
}

void sub_29A3400EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::EraseFieldDictValueByKey(pxrInternal__aapl__pxrReserved__::SdfLayer *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v20 = *MEMORY[0x29EDCA608];
  if (*(this + 521) == 1 && !pxrInternal__aapl__pxrReserved__::SdfLayer::IsMuted(this))
  {
    v14 = sub_29A2EDBE4(this + 14);
    if ((*(*v14 + 192))(v14, a2, a3, a4, 0))
    {
      v16 = 0;
      pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimSetFieldDictValueByKey<pxrInternal__aapl__pxrReserved__::VtValue>();
    }
  }

  else
  {
    v15 = "sdf/layer.cpp";
    v16 = "EraseFieldDictValueByKey";
    v17 = 4134;
    v18 = "void pxrInternal__aapl__pxrReserved__::SdfLayer::EraseFieldDictValueByKey(const SdfPath &, const TfToken &, const TfToken &)";
    v19 = 0;
    v8 = *a3 & 0xFFFFFFFFFFFFFFF8;
    if (v8)
    {
      v9 = (v8 + 16);
      if (*(v8 + 39) < 0)
      {
        v9 = *v9;
      }
    }

    else
    {
      v9 = "";
    }

    v10 = *a4 & 0xFFFFFFFFFFFFFFF8;
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
    v13 = *(this + 60);
    if (v13[23] < 0)
    {
      v13 = *v13;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v15, 1, "Cannot erase %s:%s on <%s>. Layer @%s@ is not editable.", v9, v11, Text, v13);
  }
}

void sub_29A3402A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

std::string *pxrInternal__aapl__pxrReserved__::SdfLayer::_SwapData(uint64_t a1, void *a2)
{
  v3 = a1 + 112;
  v2 = *(a1 + 112);
  *(a1 + 112) = *a2;
  *a2 = v2;
  v4 = sub_29A2EDBE4((a1 + 112));
  v5 = *(v3 + 368);

  return pxrInternal__aapl__pxrReserved__::SdfAbstractData::_SetLayerIdentifier(v4, v5);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::_AdoptData(uint64_t a1, uint64_t *a2)
{
  pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v7);
  v4 = *(a1 + 112);
  *(a1 + 112) = *a2;
  sub_29B293C98(a2);
  sub_29B290B2C(a1 + 112, v4);
  v5 = sub_29A2EDBE4((a1 + 112));
  pxrInternal__aapl__pxrReserved__::SdfAbstractData::_SetLayerIdentifier(v5, *(a1 + 480));
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_instance);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::DidReplaceLayerContent(v6, a1 + 24);
}

void sub_29A3403A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DD644(va);
  _Unwind_Resume(a1);
}

void sub_29A3403BC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29B29B87C();
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::CreateDiff(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v9[0] = "sdf/layer.cpp";
  v9[1] = "CreateDiff";
  v9[2] = 4266;
  v9[3] = "SdfChangeList pxrInternal__aapl__pxrReserved__::SdfLayer::CreateDiff(const SdfLayerHandle &, BOOL) const";
  LOBYTE(v10) = 0;
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(v8, "Generating a diff changelist", v9);
  pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v7);
  v5 = a1;
  v6 = a1;
  v4 = a1;
  sub_29A1DA6E4(a2);
}

void sub_29A340D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, atomic_uint *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  *(v47 - 120) = &a35;
  sub_29A012C90((v47 - 120));
  sub_29A349BDC((v47 - 232));
  if (a15)
  {
    if (atomic_fetch_add_explicit(a15 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a15 + 8))(a15);
    }
  }

  sub_29A1DD644(&a19);
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(&a21);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::_MoveSpec(pxrInternal__aapl__pxrReserved__::SdfLayer *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  if (*(this + 521) == 1 && !pxrInternal__aapl__pxrReserved__::SdfLayer::IsMuted(this))
  {
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a2) && pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a3))
    {
      if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a2, a3) || pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a3, a2))
      {
        v9 = "sdf/layer.cpp";
        v10 = "_MoveSpec";
        v11 = 4801;
        v12 = "BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::_MoveSpec(const SdfPath &, const SdfPath &)";
        v13 = 0;
        pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
        pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "Cannot move <%s> to <%s>. Source and destination must not overlap");
      }

      else
      {
        v7 = sub_29A2EDBE4(this + 14);
        if ((*(*v7 + 72))(v7, a2))
        {
          v8 = sub_29A2EDBE4(this + 14);
          if (((*(*v8 + 72))(v8, a3) & 1) == 0)
          {
            pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimMoveSpec(this, a2, a3, 1);
          }
        }
      }
    }

    else
    {
      v9 = "sdf/layer.cpp";
      v10 = "_MoveSpec";
      v11 = 4794;
      v12 = "BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::_MoveSpec(const SdfPath &, const SdfPath &)";
      v13 = 0;
      pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "Cannot move <%s> to <%s>. Source and destination must be non-empty paths");
    }
  }

  else
  {
    v9 = "sdf/layer.cpp";
    v10 = "_MoveSpec";
    v11 = 4787;
    v12 = "BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::_MoveSpec(const SdfPath &, const SdfPath &)";
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "Cannot move <%s> to <%s>. Layer @%s@ is not editable.");
  }

  return 0;
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimMoveSpec(pxrInternal__aapl__pxrReserved__::SdfLayer *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, int a4)
{
  v10[10] = *MEMORY[0x29EDCA608];
  if (!a4 || !*(this + 15) && (sub_29B29B8C8(v10) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v9);
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_instance);
    if (!v8)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_CreateInstance();
    }

    pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::DidMoveSpec(v8, this + 24);
  }

  v7 = sub_29A32D670(this + 15);
  pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::MoveSpec(v7, a2, a3);
}

void sub_29A3412B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::Traverse(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfAbstractData *a2, uint64_t a3)
{
  pxrInternal__aapl__pxrReserved__::SdfLayer::_ListFields(*(a1 + 80), *(a1 + 112), a2, v45);
  v43 = v45[0];
  v44 = v45[1];
  while (v43 != v44)
  {
    v10 = sub_29A2F8C94(&v43, v6, v7);
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    if (!v11)
    {
      v11 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    }

    if ((*(v11 + 4) ^ *v10) <= 7)
    {
      sub_29A34243C(a1);
    }

    v14 = sub_29A2F8C94(&v43, v8, v9);
    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    if (!v15)
    {
      v15 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    }

    if ((*(v15 + 5) ^ *v14) <= 7)
    {
      sub_29A34265C(a1);
    }

    v18 = sub_29A2F8C94(&v43, v12, v13);
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    if (!v19)
    {
      v19 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    }

    if ((*(v19 + 3) ^ *v18) <= 7)
    {
      sub_29A34287C(a1);
    }

    v22 = sub_29A2F8C94(&v43, v16, v17);
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    if (!v23)
    {
      v23 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    }

    if ((*(v23 + 2) ^ *v22) <= 7)
    {
      sub_29A342A9C(a1);
    }

    v26 = sub_29A2F8C94(&v43, v20, v21);
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    if (!v27)
    {
      v27 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    }

    if ((*(v27 + 7) ^ *v26) <= 7)
    {
      sub_29A342CBC(a1);
    }

    v30 = sub_29A2F8C94(&v43, v24, v25);
    v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    if (!v31)
    {
      v31 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    }

    if ((*(v31 + 8) ^ *v30) <= 7)
    {
      sub_29A342EDC(a1);
    }

    v34 = sub_29A2F8C94(&v43, v28, v29);
    v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    if (!v35)
    {
      v35 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    }

    if ((*v35 ^ *v34) <= 7)
    {
      sub_29A3430FC(a1);
    }

    v38 = sub_29A2F8C94(&v43, v32, v33);
    v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    if (!v39)
    {
      v39 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    }

    if ((*(v39 + 6) ^ *v38) <= 7)
    {
      sub_29A34331C(a1);
    }

    v40 = sub_29A2F8C94(&v43, v36, v37);
    v41 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    if (!v41)
    {
      v41 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    }

    if ((*(v41 + 1) ^ *v40) <= 7)
    {
      sub_29A34353C(a1);
    }

    sub_29A2F8D14(&v43);
  }

  v42 = *(a3 + 24);
  if (!v42)
  {
    sub_29A0DDCB0();
  }

  (*(*v42 + 48))(v42, a2);
  v43 = v45;
  sub_29A124AB0(&v43);
}

void sub_29A34164C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, char a12)
{
  a10 = &a12;
  sub_29A124AB0(&a10);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A34166C(uint64_t *a1, uint64_t **a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4, const pxrInternal__aapl__pxrReserved__::SdfPath *a5)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v10, a3, a4, a5, 0);
  v8 = sub_29A2EDBE4(a1);
  (*(*v8 + 88))(v8, a3, &v10);
  pxrInternal__aapl__pxrReserved__::Sdf_IdentityRegistry::MoveIdentity(a2, a3, &v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
  return sub_29A1DE3A4(&v10);
}

void sub_29A341718(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A34172C(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 36));
  sub_29A1DE3A4((a1 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  sub_29A32BD28((a1 + 8));
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::_CreateSpec(pxrInternal__aapl__pxrReserved__::SdfLayer *this, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  if (*(this + 521) != 1 || pxrInternal__aapl__pxrReserved__::SdfLayer::IsMuted(this))
  {
    v18 = "sdf/layer.cpp";
    v19 = "_CreateSpec";
    v20 = 4869;
    v21 = "BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::_CreateSpec(const SdfPath &, SdfSpecType, BOOL)";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Cannot create spec at <%s>. Layer @%s@ is not editable.");
    return 0;
  }

  if (*(this + 523) == 1)
  {
    v9 = *(this + 10);
    if (a3 >= 0xC)
    {
      if (!pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_IssueErrorForInvalidSpecType(v9, a3))
      {
        goto LABEL_9;
      }
    }

    else if ((*(v9 + 72 * a3 + 120) & 1) == 0)
    {
LABEL_9:
      v18 = "sdf/layer.cpp";
      v19 = "_CreateSpec";
      v20 = 4878;
      v21 = "BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::_CreateSpec(const SdfPath &, SdfSpecType, BOOL)";
      v22 = 0;
      v16 = &unk_2A204B6C0;
      v17 = 1;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&unk_2A2047348, a3, __p);
      if (v15 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      v12 = *(this + 60);
      if (v12[23] < 0)
      {
        v12 = *v12;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, &v16, "Cannot create spec at <%s>. %s is not a valid spec type for layer @%s@", Text, v11, v12);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      return 0;
    }
  }

  v13 = sub_29A2EDBE4(this + 14);
  if (!(*(*v13 + 72))(v13, a2))
  {
    pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimCreateSpec(this, a2, a3, a4, 1);
  }

  v18 = "sdf/layer.cpp";
  v19 = "_CreateSpec";
  v20 = 4885;
  v21 = "BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::_CreateSpec(const SdfPath &, SdfSpecType, BOOL)";
  v22 = 0;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "Cannot create spec <%s> because it already exists in @%s@");
  return 0;
}

void sub_29A3419C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimCreateSpec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!a5 || !*(a1 + 120) && (sub_29B29B910(v9) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(&v8);
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_instance);
    if (!v7)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_CreateInstance();
    }

    pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::DidAddSpec(v7, a1 + 24);
  }

  v6 = sub_29A32D670((a1 + 120));
  pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::CreateSpec(v6);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::_DeleteSpec(pxrInternal__aapl__pxrReserved__::SdfLayer *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if (*(this + 521) == 1 && !pxrInternal__aapl__pxrReserved__::SdfLayer::IsMuted(this))
  {
    v7 = sub_29A2EDBE4(this + 14);
    if ((*(*v7 + 72))(v7, a2))
    {
      if (pxrInternal__aapl__pxrReserved__::SdfLayer::_IsInertSubtree(this, a2))
      {
        pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v9);
        v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_instance);
        if (!v8)
        {
          pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_CreateInstance();
        }

        v10 = &unk_2A204B938;
        v11 = this;
        v12 = v8;
        v13 = &v10;
        pxrInternal__aapl__pxrReserved__::SdfLayer::Traverse(this, a2, &v10);
        sub_29A34A974(&v10);
        pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimDeleteSpec(this, a2, 1, 1);
      }

      pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimDeleteSpec(this, a2, 0, 1);
    }
  }

  else
  {
    v10 = "sdf/layer.cpp";
    v11 = "_DeleteSpec";
    v12 = 4900;
    v13 = "BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::_DeleteSpec(const SdfPath &)";
    v14 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    v5 = *(this + 60);
    if (v5[23] < 0)
    {
      v5 = *v5;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v10, 1, "Cannot delete <%s>. Layer @%s@ is not editable", Text, v5);
  }

  return 0;
}

void sub_29A341CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1DD644(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::_IsInertSubtree(pxrInternal__aapl__pxrReserved__::SdfLayer **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v40 = *MEMORY[0x29EDCA608];
  result = pxrInternal__aapl__pxrReserved__::SdfLayer::_IsInert(this, a2, 1, 1);
  if (result)
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimVariantSelectionPath(a2))
    {
      goto LABEL_10;
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::GetVariantSelection(a2, v32);
    if (v36 >= 0)
    {
      v5 = v36;
    }

    else
    {
      v5 = v35;
    }

    if ((v36 & 0x8000000000000000) != 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32[0]);
      if (v5)
      {
LABEL_10:
        if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimOrPrimVariantSelectionPath(a2))
        {
          v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
          if (!v6)
          {
            v6 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
          }

          v7 = *(v6 + 4);
          v37 = v7;
          if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v37 &= 0xFFFFFFFFFFFFFFF8;
          }

          v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
          if (!v8)
          {
            v8 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
          }

          v9 = *(v8 + 8);
          v38 = v9;
          if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v38 &= 0xFFFFFFFFFFFFFFF8;
          }

          for (i = 0; i != 16; i += 8)
          {
            v30[0] = 0;
            v30[1] = 0;
            v31 = 0;
            v32[0] = &unk_2A204BA68;
            v32[1] = v30;
            v33 = &stru_2A2040490;
            LOWORD(__p) = 0;
            if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(this, a2, (&v37 + i), v32) && (__p & 1) == 0)
            {
              v11 = v30[0];
              v12 = v30[1];
              while (v11 != v12)
              {
                pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(a2, v11, v32);
                IsInertSubtree = pxrInternal__aapl__pxrReserved__::SdfLayer::_IsInertSubtree(this, v32);
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v32 + 1);
                sub_29A1DE3A4(v32);
                if ((IsInertSubtree & 1) == 0)
                {
                  v32[0] = v30;
                  sub_29A124AB0(v32);
                  v14 = 0;
                  goto LABEL_31;
                }

                v11 = (v11 + 8);
              }
            }

            v32[0] = v30;
            sub_29A124AB0(v32);
          }

          v14 = 1;
LABEL_31:
          for (j = 8; j != -8; j -= 8)
          {
            v16 = *(&v37 + j);
            if ((v16 & 7) != 0)
            {
              atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          if ((v14 & 1) == 0)
          {
            return 0;
          }

          v30[0] = 0;
          v30[1] = 0;
          v31 = 0;
          v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
          if (!v17)
          {
            v17 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
          }

          v32[1] = v30;
          v33 = &stru_2A2040490;
          LOWORD(__p) = 0;
          v32[0] = &unk_2A204BA68;
          if (pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(this, a2, v17 + 5, v32))
          {
            if ((__p & 1) == 0)
            {
              v18 = v30[0];
              v19 = v30[1];
              if (v30[0] != v30[1])
              {
                while (1)
                {
                  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(a2, v18, v32);
                  IsInert = pxrInternal__aapl__pxrReserved__::SdfLayer::_IsInert(this, v32, 0, 1);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v32 + 1);
                  sub_29A1DE3A4(v32);
                  if (!IsInert)
                  {
                    break;
                  }

                  v18 = (v18 + 8);
                  if (v18 == v19)
                  {
                    goto LABEL_43;
                  }
                }

                v32[0] = v30;
                sub_29A124AB0(v32);
                return 0;
              }
            }
          }

LABEL_43:
          v32[0] = v30;
          sub_29A124AB0(v32);
        }

        return 1;
      }
    }

    else if (v5)
    {
      goto LABEL_10;
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::GetVariantSelection(a2, v32);
    *v30 = *v32;
    v31 = v33;
    v32[0] = 0;
    v32[1] = 0;
    v33 = 0;
    if (v36 < 0)
    {
      operator delete(__p);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(v32[0]);
      }
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v28);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    if (!v21)
    {
      v21 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    }

    v32[1] = &v37;
    v33 = &stru_2A2040490;
    LOWORD(__p) = 0;
    v32[0] = &unk_2A204BA68;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(this, a2, v21 + 7, v32);
    v23 = 1;
    if (HasField)
    {
      if ((__p & 1) == 0)
      {
        v24 = v38;
        if (v37 != v38)
        {
          v25 = v37 + 8;
          do
          {
            if ((*(v25 - 8) & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              EmptyString = ((*(v25 - 8) & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(HasField);
            }

            pxrInternal__aapl__pxrReserved__::SdfPath::AppendVariantSelection(&v28, v30, EmptyString, v32);
            v23 = pxrInternal__aapl__pxrReserved__::SdfLayer::_IsInertSubtree(this, v32);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v32 + 1);
            HasField = sub_29A1DE3A4(v32);
            if (v25 == v24)
            {
              v27 = 0;
            }

            else
            {
              v27 = v23;
            }

            v25 += 8;
          }

          while ((v27 & 1) != 0);
        }
      }
    }

    v32[0] = &v37;
    sub_29A124AB0(v32);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v29);
    sub_29A1DE3A4(&v28);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30[0]);
      if (v23)
      {
        return 1;
      }
    }

    else if (v23)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

void sub_29A3421D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if ((a24 & 7) != 0)
  {
    atomic_fetch_add_explicit((a24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimDeleteSpec(pxrInternal__aapl__pxrReserved__::SdfLayer *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, BOOL a3, int a4)
{
  v9[9] = *MEMORY[0x29EDCA608];
  if (!a4 || !*(this + 15) && (sub_29B29B958(v9) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v8);
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_instance);
    if (!v7)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_CreateInstance();
    }

    pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::DidRemoveSpec(v7, this + 24);
  }

  v6 = sub_29A32D670(this + 15);
  pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::DeleteSpec(v6, a2);
}

void sub_29A342410(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A34A974(va1);
  sub_29A1DD644(va);
  _Unwind_Resume(a1);
}

void sub_29A34243C(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  sub_29A30560C(v3);
  v2 = sub_29A2EDBE4((a1 + 112));
  (*(*v2 + 136))(&v4);
  if (sub_29A1DE724(&v4))
  {
    if ((v5 & 4) != 0)
    {
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(&v4);
    }
  }

  memset(&v3[1], 0, 24);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29A34265C(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  sub_29A2F81C8(v3);
  v2 = sub_29A2EDBE4((a1 + 112));
  (*(*v2 + 136))(&v4);
  if (sub_29A1DE724(&v4))
  {
    if ((v5 & 4) != 0)
    {
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(&v4);
    }
  }

  memset(&v3[1], 0, 24);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29A34287C(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  sub_29A2FBCC8(v3);
  v2 = sub_29A2EDBE4((a1 + 112));
  (*(*v2 + 136))(&v4);
  if (sub_29A23DDC0(&v4))
  {
    if ((v5 & 4) != 0)
    {
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(&v4);
    }
  }

  memset(&v3[1], 0, 24);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

void sub_29A342A9C(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  sub_29A2FEBA0(v3);
  v2 = sub_29A2EDBE4((a1 + 112));
  (*(*v2 + 136))(&v4);
  if (sub_29A1DE724(&v4))
  {
    if ((v5 & 4) != 0)
    {
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(&v4);
    }
  }

  memset(&v3[1], 0, 24);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29A342CBC(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  sub_29A30F720(v3);
  v2 = sub_29A2EDBE4((a1 + 112));
  (*(*v2 + 136))(&v4);
  if (sub_29A1DE724(&v4))
  {
    if ((v5 & 4) != 0)
    {
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(&v4);
    }
  }

  memset(&v3[1], 0, 24);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29A342EDC(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  sub_29A312D4C(v3);
  v2 = sub_29A2EDBE4((a1 + 112));
  (*(*v2 + 136))(&v4);
  if (sub_29A1DE724(&v4))
  {
    if ((v5 & 4) != 0)
    {
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(&v4);
    }
  }

  memset(&v3[1], 0, 24);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29A3430FC(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  sub_29A318C1C(v3);
  v2 = sub_29A2EDBE4((a1 + 112));
  (*(*v2 + 136))(&v4);
  if (sub_29A23DDC0(&v4))
  {
    if ((v5 & 4) != 0)
    {
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(&v4);
    }
  }

  memset(&v3[1], 0, 24);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

void sub_29A34331C(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  sub_29A316348(v3);
  v2 = sub_29A2EDBE4((a1 + 112));
  (*(*v2 + 136))(&v4);
  if (sub_29A23DDC0(&v4))
  {
    if ((v5 & 4) != 0)
    {
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(&v4);
    }
  }

  memset(&v3[1], 0, 24);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

void sub_29A34353C(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  sub_29A30211C(v3);
  v2 = sub_29A2EDBE4((a1 + 112));
  (*(*v2 + 136))(&v4);
  if (sub_29A1DE724(&v4))
  {
    if ((v5 & 4) != 0)
    {
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(&v4);
    }
  }

  memset(&v3[1], 0, 24);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::_IsInert(pxrInternal__aapl__pxrReserved__::SdfLayer **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3, char a4)
{
  v54 = *MEMORY[0x29EDCA608];
  v8 = (this + 14);
  pxrInternal__aapl__pxrReserved__::SdfLayer::_ListFields(this[10], this[14], a2, &v46);
  if (v46 == v47)
  {
    v12 = 1;
  }

  else
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    LOBYTE(v48) = 0;
    v10 = sub_29A2EDBE4(v8);
    (*(*v10 + 136))(&v49);
    if (sub_29A1EFCDC(&v49))
    {
      if ((v50 & 4) != 0)
      {
        v11 = (*((v50 & 0xFFFFFFFFFFFFFFF8) + 168))(&v49);
      }

      else
      {
        v11 = &v49;
      }
    }

    else
    {
      v11 = &v48;
    }

    v13 = *v11;
    sub_29A186B14(&v49);
    if (v13)
    {
      goto LABEL_10;
    }

    v15 = sub_29A2EDBE4(v8);
    v18 = (*(*v15 + 96))(v15, a2);
    if (v18 == 6)
    {
      if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
      {
        sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      v48 = 1;
      v20 = sub_29A2EDBE4(v8);
      (*(*v20 + 136))(&v49);
      if (sub_29A321798(&v49))
      {
        v21 = (v50 & 4) != 0 ? (*((v50 & 0xFFFFFFFFFFFFFFF8) + 168))(&v49) : &v49;
      }

      else
      {
        v21 = &v48;
      }

      v22 = *v21;
      sub_29A186B14(&v49);
      if (v22 != 1)
      {
        goto LABEL_10;
      }

      if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
      {
        sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      v24 = sub_29A2EDBE4(v8);
      (*(*v24 + 136))(&v49);
      if (sub_29A1FA710(&v49))
      {
        if ((v50 & 4) != 0)
        {
          v25 = (*((v50 & 0xFFFFFFFFFFFFFFF8) + 168))(&v49);
        }

        else
        {
          v25 = &v49;
        }

        v26 = *v25;
        if ((*v25 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v26 &= 0xFFFFFFFFFFFFFFF8;
        }
      }

      else
      {
        v26 = 0;
      }

      sub_29A186B14(&v49);
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v26)
      {
LABEL_10:
        v12 = 0;
        goto LABEL_11;
      }
    }

    if ((a4 & 1) != 0 || (v12 = 0, v18 != 1) && v18 != 8)
    {
      v12 = 0;
      if (v18 <= 0xB && ((1 << v18) & 0xD42) != 0)
      {
        v27 = this[10] + 72 * v18;
        v28 = (v27 + 56);
        v29 = *(v27 + 120);
        if (v29)
        {
          v30 = v28;
        }

        else
        {
          v30 = 0;
        }

        if (v29 & 1) != 0 || (v49 = "sdf/layer.cpp", v50 = "_IsInert", v51 = 5065, v52 = "BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::_IsInert(const SdfPath &, BOOL, BOOL) const", v53 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v49, "specDefinition", 0)))
        {
          v49 = v46;
          v50 = v47;
          while (1)
          {
            v12 = v49 == v50;
            if (v49 == v50)
            {
              goto LABEL_11;
            }

            if (a3)
            {
              if (v18 == 6)
              {
                v33 = sub_29A1FCDD0(&v49, v16, v17);
                v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
                if (!v34)
                {
                  v34 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
                }

                if ((*(v34 + 4) ^ *v33) < 8)
                {
                  goto LABEL_61;
                }

                v37 = sub_29A1FCDD0(&v49, v31, v32);
                v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
                if (!v38)
                {
                  v38 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
                }

                if ((*(v38 + 5) ^ *v37) < 8)
                {
                  goto LABEL_61;
                }

                v39 = sub_29A1FCDD0(&v49, v35, v36);
                v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
                if (!v40)
                {
                  v40 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
                }

                v41 = *v39;
                v42 = *(v40 + 8);
                goto LABEL_59;
              }

              if (v18 == 11)
              {
                v43 = sub_29A1FCDD0(&v49, v16, v17);
                v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
                if (!v44)
                {
                  v44 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
                }

                v41 = *v43;
                v42 = *(v44 + 7);
LABEL_59:
                if ((v42 ^ v41) < 8)
                {
                  goto LABEL_61;
                }
              }
            }

            v45 = sub_29A1FCDD0(&v49, v16, v17);
            if (!pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SpecDefinition::IsRequiredField(v30, v45))
            {
              goto LABEL_11;
            }

LABEL_61:
            sub_29A1FCE50(&v49);
          }
        }

        goto LABEL_10;
      }
    }
  }

LABEL_11:
  v49 = &v46;
  sub_29A124AB0(&v49);
  return v12;
}

void sub_29A343C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A124AB0(&a12);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::ExportToString(uint64_t a1, const char *a2, char *a3)
{
  v4 = *(a1 + 480);
  if (*(v4 + 23) < 0)
  {
    v4 = *v4;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Writing layer @%s@", a2, a3, v4);
  v5[0] = "sdf/layer.cpp";
  v5[1] = "ExportToString";
  v5[2] = 5162;
  v5[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::ExportToString(std::string *) const";
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(v9, &__p, v5);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  sub_29A1DA734(a1 + 40);
}

void sub_29A343D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(&a25);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::_WriteToFile(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v5)
  {
    v9 = *(a1 + 480);
    v10 = *(v9 + 47);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = v9[4];
    }

    if (v5 == v10)
    {
      if (v4 >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      if (v11 >= 0)
      {
        v13 = v9 + 3;
      }

      else
      {
        v13 = v9[3];
      }

      v14 = memcmp(v12, v13, v5);
      v15 = v14 == 0;
      v16 = "Saving";
      if (v14)
      {
        v16 = "Exporting";
      }
    }

    else
    {
      v15 = 0;
      v16 = "Exporting";
    }

    if (*(v9 + 23) < 0)
    {
      v9 = *v9;
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s layer @%s@", a2, v5, v16, v9);
    v25 = "sdf/layer.cpp";
    v26 = "_WriteToFile";
    v27 = 5183;
    v28 = "BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::_WriteToFile(const string &, const string &, SdfFileFormatConstPtr, const FileFormatArguments &) const";
    v29 = 0;
    pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(v32, __p, &v25);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
      if (!v15)
      {
        goto LABEL_26;
      }
    }

    else if (!v15)
    {
LABEL_26:
      v17 = sub_29B299524(a4);
      if (!(v18 & 1 | v17))
      {
        pxrInternal__aapl__pxrReserved__::Sdf_GetExtension(a2);
        v19 = HIBYTE(v27);
        if (v27 < 0)
        {
          v19 = v26;
        }

        if (v19)
        {
          __p[0] = 0;
          __p[1] = 0;
          v31 = 0;
          pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindByExtension(&v25, __p, &v24);
          sub_29B29B168(&v24, a4);
        }

        v20 = sub_29B299524(a4);
        if (!(v21 & 1 | v20))
        {
          *a4 = *(a1 + 40);
          sub_29B28FD1C((a4 + 8), (a1 + 48));
        }

        if (SHIBYTE(v27) < 0)
        {
          operator delete(v25);
        }
      }

      pxrInternal__aapl__pxrReserved__::Sdf_IsPackageOrPackagedLayer(a4);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfLayer::PermissionToSave(a1))
    {
      goto LABEL_26;
    }

    v25 = "sdf/layer.cpp";
    v26 = "_WriteToFile";
    v27 = 5187;
    v28 = "BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::_WriteToFile(const string &, const string &, SdfFileFormatConstPtr, const FileFormatArguments &) const";
    v29 = 0;
    if (*(a2 + 23) >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v25, 3, "Cannot save layer @%s@, saving not allowed", v22);
    pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(v32);
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::_WriteToBuffer(uint64_t a1, const char *a2, char *a3, uint64_t a4)
{
  v5 = *(a1 + 480);
  if (*(v5 + 23) < 0)
  {
    v5 = *v5;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Writing layer @%s@", a2, a3, v5);
  v34[0] = "sdf/layer.cpp";
  v34[1] = "_WriteToBuffer";
  v35 = 5273;
  v36 = "BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::_WriteToBuffer(std::vector<std::byte> &, const string &, const FileFormatArguments &) const";
  v37 = 0;
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(v40, __p, v34);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = 0;
  __p[1] = 0;
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUsdFileFormatTokens);
  if (!v6)
  {
    v6 = sub_29A34ADDC(&pxrInternal__aapl__pxrReserved__::UsdUsdFileFormatTokens);
  }

  if ((*(v6 + 3) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(v6 + 3) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  v8 = sub_29A01BCCC(a4, EmptyString);
  if (a4 + 8 != v8)
  {
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
    if (!v9)
    {
      v9 = sub_29A34AE68(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
    }

    v10 = (v8 + 56);
    if (pxrInternal__aapl__pxrReserved__::TfToken::operator==(v9, (v8 + 56)))
    {
      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
      if (!v11)
      {
        v11 = sub_29A34AE68(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
      }

      pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindById(v11, v34);
      v12 = __p[1];
      *__p = *v34;
      v34[1] = 0;
      if (v12)
      {
LABEL_17:
        sub_29B29AF9C(v12);
      }
    }

    else
    {
      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUsdcFileFormatTokens);
      if (!v13)
      {
        v13 = sub_29A34AEF4(&pxrInternal__aapl__pxrReserved__::UsdUsdcFileFormatTokens);
      }

      if (pxrInternal__aapl__pxrReserved__::TfToken::operator==(v13, (v8 + 56)))
      {
        v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUsdcFileFormatTokens);
        if (!v14)
        {
          v14 = sub_29A34AEF4(&pxrInternal__aapl__pxrReserved__::UsdUsdcFileFormatTokens);
        }

        pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindById(v14, v34);
        v12 = __p[1];
        *__p = *v34;
        v34[1] = 0;
        if (v12)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v34[0] = "sdf/layer.cpp";
        v34[1] = "_WriteToBuffer";
        v35 = 5290;
        v36 = "BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::_WriteToBuffer(std::vector<std::byte> &, const string &, const FileFormatArguments &) const";
        v37 = 0;
        v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUsdFileFormatTokens);
        if (!v15)
        {
          v15 = sub_29A34ADDC(&pxrInternal__aapl__pxrReserved__::UsdUsdFileFormatTokens);
        }

        v16 = *(v15 + 3) & 0xFFFFFFFFFFFFFFF8;
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

        if (*(v8 + 79) < 0)
        {
          v10 = *v10;
        }

        v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
        if (!v18)
        {
          v18 = sub_29A34AE68(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
        }

        v19 = *v18 & 0xFFFFFFFFFFFFFFF8;
        if (v19)
        {
          v20 = (v19 + 16);
          if (*(v19 + 39) < 0)
          {
            v20 = *v20;
          }
        }

        else
        {
          v20 = "";
        }

        v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUsdcFileFormatTokens);
        if (!v21)
        {
          v21 = sub_29A34AEF4(&pxrInternal__aapl__pxrReserved__::UsdUsdcFileFormatTokens);
        }

        v22 = *v21 & 0xFFFFFFFFFFFFFFF8;
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

        v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUsdcFileFormatTokens);
        if (!v24)
        {
          v24 = sub_29A34AEF4(&pxrInternal__aapl__pxrReserved__::UsdUsdcFileFormatTokens);
        }

        v25 = *v24 & 0xFFFFFFFFFFFFFFF8;
        if (v25)
        {
          v26 = (v25 + 16);
          if (*(v25 + 39) < 0)
          {
            v26 = *v26;
          }
        }

        else
        {
          v26 = "";
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v34, 1, "'%s' argument was '%s', must be '%s' or '%s'. Defaulting to '%s'.", v17, v10, v20, v23, v26);
      }
    }
  }

  v27 = sub_29B299524(__p);
  if (!(v28 & 1 | v27))
  {
    v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUsdcFileFormatTokens);
    if (!v29)
    {
      v29 = sub_29A34AEF4(&pxrInternal__aapl__pxrReserved__::UsdUsdcFileFormatTokens);
    }

    pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindById(v29, v34);
    v30 = __p[1];
    *__p = *v34;
    v34[1] = 0;
    if (v30)
    {
      sub_29B29AF9C(v30);
    }
  }

  v31 = sub_29B299524(__p);
  if (v32 & 1 | v31 || (v34[0] = "sdf/layer.cpp", v34[1] = "_WriteToBuffer", v35 = 5301, v36 = "BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::_WriteToBuffer(std::vector<std::byte> &, const string &, const FileFormatArguments &) const", v37 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v34, "fileFormat", 0) & 1) != 0))
  {
    sub_29A1DA734(__p);
  }

  v34[0] = "sdf/layer.cpp";
  v34[1] = "_WriteToBuffer";
  v35 = 5302;
  v36 = "BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::_WriteToBuffer(std::vector<std::byte> &, const string &, const FileFormatArguments &) const";
  v37 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v34, 3, "Unknown file format when attempting create the buffer");
  sub_29B29B9A0(__p);
  return 0;
}

void sub_29A344B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, atomic_uint *a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (a30)
  {
    if (atomic_fetch_add_explicit(a30 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a30 + 8))(a30);
    }
  }

  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(&a35);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::Export(uint64_t a1, void *a2, size_t *a3, char *a4, uint64_t a5)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v7 = pxrInternal__aapl__pxrReserved__::SdfLayer::_WriteToBuffer(a1, &v13, a4, a5);
  v8 = v13;
  if (v7)
  {
    v9 = v14 - v13;
    if (v14 != v13)
    {
      *a3 = v9;
      v10 = operator new[](v9);
      memmove(v10, v8, v9);
      *a2 = v10;
      v11 = 1;
      if (!v8)
      {
        return v11;
      }

      goto LABEL_6;
    }
  }

  v11 = 0;
  if (v13)
  {
LABEL_6:
    v14 = v8;
    operator delete(v8);
  }

  return v11;
}

void sub_29A344D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

tbb::queuing_rw_mutex::scoped_lock *sub_29A344D60(tbb::queuing_rw_mutex::scoped_lock *this)
{
  if (*this)
  {
    tbb::queuing_rw_mutex::scoped_lock::release(this);
  }

  return this;
}

uint64_t sub_29A344F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v27 = *MEMORY[0x29EDCA608];
  v8 = (a2 + 96);
  std::operator+<char>();
  sub_29A181A80(&v25, "Sdf", __p);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  if (sub_29A1D9440(3))
  {
    if (*(a2 + 119) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *(a2 + 96);
    }

    if (*(a2 + 71) >= 0)
    {
      v10 = a2 + 48;
    }

    else
    {
      v10 = *(a2 + 48);
    }

    v11 = sub_29B299524(a2);
    if (v12 & 1 | v11)
    {
      sub_29A1DA734(a2);
    }

    sub_29A33045C((a2 + 16));
    if (v22 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    v16 = "False";
    if (a3)
    {
      v16 = "True";
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("SdfLayer::_OpenLayerAndUnlockRegistry('%s', '%s', '%s', '%s', metadataOnly=%s)\n", v13, v14, v9, v10, "unknown file format", v15, v16);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v17 = sub_29B299524(a2);
  if (v18 & 1 | v17)
  {
    sub_29A1DA734(a2);
  }

  __p[0] = "sdf/layer.cpp";
  __p[1] = "_OpenLayerAndUnlockRegistry";
  v22 = 3487;
  v23 = "static SdfLayerRefPtr pxrInternal__aapl__pxrReserved__::SdfLayer::_OpenLayerAndUnlockRegistry(Lock &, const _FindOrOpenLayerInfo &, BOOL) [Lock = tbb::queuing_rw_mutex::scoped_lock]";
  v24 = 0;
  if (*(a2 + 119) >= 0)
  {
    v19 = v8;
  }

  else
  {
    v19 = *(a2 + 96);
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Cannot determine file format for @%s@", v19);
  result = tbb::queuing_rw_mutex::scoped_lock::release(a1);
  *a4 = 0;
  if (v25)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v26, v25);
  }

  return result;
}

void sub_29A345478(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, atomic_uint *a27)
{
  if (a27)
  {
    if (atomic_fetch_add_explicit(a27 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a27 + 8))(a27);
    }
  }

  sub_29A321930();
}

uint64_t sub_29A345644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, void *a4@<X8>)
{
  v27 = *MEMORY[0x29EDCA608];
  v8 = (a2 + 96);
  std::operator+<char>();
  sub_29A181A80(&v25, "Sdf", __p);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  if (sub_29A1D9440(3))
  {
    if (*(a2 + 119) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *(a2 + 96);
    }

    if (*(a2 + 71) >= 0)
    {
      v10 = a2 + 48;
    }

    else
    {
      v10 = *(a2 + 48);
    }

    v11 = sub_29B299524(a2);
    if (v12 & 1 | v11)
    {
      sub_29A1DA734(a2);
    }

    sub_29A33045C((a2 + 16));
    if (v22 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    v16 = "False";
    if (a3)
    {
      v16 = "True";
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("SdfLayer::_OpenLayerAndUnlockRegistry('%s', '%s', '%s', '%s', metadataOnly=%s)\n", v13, v14, v9, v10, "unknown file format", v15, v16);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v17 = sub_29B299524(a2);
  if (v18 & 1 | v17)
  {
    sub_29A1DA734(a2);
  }

  __p[0] = "sdf/layer.cpp";
  __p[1] = "_OpenLayerAndUnlockRegistry";
  v22 = 3604;
  v23 = "static SdfLayerRefPtr pxrInternal__aapl__pxrReserved__::SdfLayer::_OpenLayerAndUnlockRegistry(Lock &, const _FindOrOpenLayerInfo &, const std::vector<std::byte> &, BOOL) [Lock = tbb::queuing_rw_mutex::scoped_lock]";
  v24 = 0;
  if (*(a2 + 119) >= 0)
  {
    v19 = v8;
  }

  else
  {
    v19 = *(a2 + 96);
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Cannot determine file format for @%s@", v19);
  result = tbb::queuing_rw_mutex::scoped_lock::release(a1);
  *a4 = 0;
  if (v25)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v26, v25);
  }

  return result;
}

void sub_29A345BC0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25, atomic_uint *a26)
{
  if (a26)
  {
    if (atomic_fetch_add_explicit(a26 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a26 + 8))(a26);
    }
  }

  sub_29A321930();
}

uint64_t sub_29A345CC4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B483B22 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2046BD0);
}

uint64_t sub_29A345D58(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  *(a1 + 24) = 0;
  if (sub_29A1FA710(a2))
  {
    v4 = *(v2 + 1);
    if ((v4 & 4) != 0)
    {
      v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    sub_29A166F2C(*(a1 + 8), v2);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(v2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A345DE0(uint64_t a1, __int128 *a2, char a3)
{
  *a1 = &unk_2A204C0B0;
  v5 = a1 + 8;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(v5, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
  }

  *(a1 + 32) = a3;
  return a1;
}

uint64_t sub_29A345E64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A345F30(a1);
  if (result)
  {
    v5 = *a1;
    v7 = 0;
    (*(*v5 + 72))(v5, a2, v6);
    return sub_29A345FB4(v6);
  }

  return result;
}

void sub_29A345F08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A345FB4(va);
  sub_29A2463D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A345F30(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((*a1 + 8)))
  {
    return 1;
  }

  v2[0] = "sdf/listEditorProxy.h";
  v2[1] = "_Validate";
  v2[2] = 406;
  v2[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfListEditorProxy<pxrInternal__aapl__pxrReserved__::SdfReferenceTypePolicy>::_Validate() const [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfReferenceTypePolicy]";
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v2, 1, "Accessing expired list editor");
  return 0;
}

uint64_t sub_29A345FB4(uint64_t a1)
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

uint64_t sub_29A346034@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A346100(a1);
  if (result)
  {
    v5 = *a1;
    v7 = 0;
    (*(*v5 + 72))(v5, a2, v6);
    return sub_29A346184(v6);
  }

  return result;
}

void sub_29A3460D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A346184(va);
  sub_29A24A5D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A346100(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((*a1 + 8)))
  {
    return 1;
  }

  v2[0] = "sdf/listEditorProxy.h";
  v2[1] = "_Validate";
  v2[2] = 406;
  v2[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfListEditorProxy<pxrInternal__aapl__pxrReserved__::SdfPayloadTypePolicy>::_Validate() const [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfPayloadTypePolicy]";
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v2, 1, "Accessing expired list editor");
  return 0;
}

uint64_t sub_29A346184(uint64_t a1)
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

void sub_29A346264(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29A186B14(a2 + 144);
    if (*(a2 + 143) < 0)
    {
      operator delete(*(a2 + 120));
    }

    if (*(a2 + 119) < 0)
    {
      operator delete(*(a2 + 96));
    }

    if (*(a2 + 95) < 0)
    {
      operator delete(*(a2 + 72));
    }

    v3 = (a2 + 48);
    sub_29A0176E4(&v3);
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete(a2);
  }
}

unint64_t sub_29A346304(atomic_ullong *a1)
{
  v2 = operator new(0x18uLL);
  v3 = v2;
  v4 = 0;
  v2[2] = 0;
  v2[1] = 0;
  *v2 = v2 + 1;
  atomic_compare_exchange_strong(a1, &v4, v2);
  if (v4)
  {
    sub_29A346370(v2, v2[1]);
    operator delete(v3);
    return atomic_load(a1);
  }

  return v3;
}

void sub_29A346370(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A346370(a1, *a2);
    sub_29A346370(a1, a2[1]);
    sub_29A3463CC((a2 + 4));

    operator delete(a2);
  }
}

void sub_29A3463CC(uint64_t a1)
{
  sub_29A32BD28((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry *sub_29A34641C(atomic_ullong *a1)
{
  result = sub_29A346464();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      v4 = sub_29A3464A8(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry *sub_29A346464()
{
  v0 = operator new(0x78uLL);
  pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::Sdf_LayerRegistry(v0);
  return v0;
}

uint64_t sub_29A3464A8(uint64_t a1)
{
  sub_29A180AC4(a1 + 80);
  sub_29A180AC4(a1 + 40);

  return sub_29A180AC4(a1);
}

pxrInternal__aapl__pxrReserved__::SdfTextFileFormatTokens_StaticTokenType *sub_29A3464EC(atomic_ullong *a1)
{
  result = sub_29A346534();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::SdfTextFileFormatTokens_StaticTokenType::~SdfTextFileFormatTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::SdfTextFileFormatTokens_StaticTokenType *sub_29A346534()
{
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::SdfTextFileFormatTokens_StaticTokenType::SdfTextFileFormatTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29A346578(void *a1, void *a2)
{
  sub_29A00911C(a1, "< ", 2);
  v6 = *a2;
  v4 = a2 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      v7 = sub_29A00911C(a1, "<", 1);
      v8 = *(v5 + 55);
      if (v8 >= 0)
      {
        v9 = (v5 + 4);
      }

      else
      {
        v9 = v5[4];
      }

      if (v8 >= 0)
      {
        v10 = *(v5 + 55);
      }

      else
      {
        v10 = v5[5];
      }

      v11 = sub_29A00911C(v7, v9, v10);
      v12 = sub_29A00911C(v11, ": ", 2);
      v13 = *(v5 + 79);
      if (v13 >= 0)
      {
        v14 = (v5 + 7);
      }

      else
      {
        v14 = v5[7];
      }

      if (v13 >= 0)
      {
        v15 = *(v5 + 79);
      }

      else
      {
        v15 = v5[8];
      }

      v16 = sub_29A00911C(v12, v14, v15);
      sub_29A00911C(v16, "> ", 2);
      v17 = v5[1];
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
          v18 = v5[2];
          v19 = *v18 == v5;
          v5 = v18;
        }

        while (!v19);
      }

      v5 = v18;
    }

    while (v18 != v4);
  }

  sub_29A00911C(a1, ">", 1);
  return a1;
}

uint64_t sub_29A3466A8(uint64_t a1, const void **a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = a1 + 8;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      sub_29A019430(a1, v4, a2, a2);
      a2 += 6;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_29A34672C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = a1 + 8;
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  *a2 = 0;
  return result;
}

char *sub_29A346784(char *result, char *a2, char *a3, size_t __sz)
{
  if (__sz)
  {
    v6 = result;
    result = sub_29A0101E8(result, __sz);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_29A3467DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **sub_29A3467F8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A1FA780(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A34688C, &stru_2A2047388);
  }
}

uint64_t sub_29A346890@<X0>(uint64_t a1@<X8>)
{
  sub_29A3468E4(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 8) = v2;
  v4[0] = 0;
  *(a1 + 16) = &stru_2A2047388;
  return (v2)(0);
}

void sub_29A3468E4(pxrInternal__aapl__pxrReserved__::SdfAssetPath **a1@<X8>)
{
  v2 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v2);
  *a1 = v2;
  a1[1] = sub_29A346938;
}

void sub_29A346938(void **__p)
{
  if (__p)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }

    if (*(__p + 23) < 0)
    {
      operator delete(*__p);
    }

    operator delete(__p);
  }
}

uint64_t sub_29A346994(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 9)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x29EDC94B8]);
  }

  else
  {
    return 0;
  }
}

void *sub_29A3469CC@<X0>(void *a1@<X8>)
{
  result = operator new(8uLL);
  *result = 0;
  *a1 = result;
  v3 = MEMORY[0x29EDC94B8];
  a1[1] = sub_29A346A14;
  a1[2] = v3;
  return result;
}

void sub_29A346A14(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void **sub_29A346A20(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A293A9C(a1))
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
    v4 = MEMORY[0x29EDC94D0];

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A346AB4, v4);
  }
}

_DWORD *sub_29A346AB4@<X0>(void *a1@<X8>)
{
  result = operator new(4uLL);
  *result = 0;
  *a1 = result;
  v3 = MEMORY[0x29EDC94D0];
  a1[1] = sub_29A346AFC;
  a1[2] = v3;
  return result;
}

void sub_29A346AFC(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29A346B0C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A346B34(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A346B64(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204B308))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29A346BA4(unsigned int *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (sub_29A346D48(a1))
  {
    if (!a3 && *a4 == a4[1])
    {
      (*(**a1 + 32))(__p);
      v8 = v18;
      if (v18 == 1)
      {
        v11 = "sdf/listProxy.h";
        v12 = "_Edit";
        v13 = 739;
        v14 = "void pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy>::_Edit(size_t, size_t, const value_vector_type &) [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy]";
        v15 = 0;
        WhyNot = pxrInternal__aapl__pxrReserved__::SdfAllowed::GetWhyNot(__p);
        if (*(WhyNot + 23) >= 0)
        {
          v10 = WhyNot;
        }

        else
        {
          v10 = *WhyNot;
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 1, "Editing list: %s", v10);
        v8 = v18;
      }

      if ((v8 & 1) != 0 && v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else if (((*(**a1 + 80))(*a1, a1[4], a2, a3, a4) & 1) == 0)
    {
      v11 = "sdf/listProxy.h";
      v12 = "_Edit";
      v13 = 747;
      v14 = "void pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy>::_Edit(size_t, size_t, const value_vector_type &) [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy]";
      v15 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 1, "Inserting invalid value into list editor");
    }
  }
}

void sub_29A346D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A346D48(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((*a1 + 8)))
  {
    return 1;
  }

  v2[0] = "sdf/listProxy.h";
  v2[1] = "_Validate";
  v2[2] = 678;
  v2[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy>::_Validate() [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy]";
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v2, 1, "Accessing expired list editor");
  return 0;
}

uint64_t sub_29A346DCC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B48566ELL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2049138);
}

uint64_t sub_29A346E64(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204B3C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A346EB0(uint64_t a1)
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

uint64_t sub_29A346F40(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204B468))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A346F8C(uint64_t a1)
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

void sub_29A34700C(void ***a1)
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
        v4 -= 5;
        sub_29A347094(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29A347094(uint64_t a1, _DWORD *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 3);
  sub_29A1DE3A4(a2 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 1);

  return sub_29A1DE3A4(a2);
}

uint64_t sub_29A3470F4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204B4F0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A347150(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204B578))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A34719C(_OWORD *a1)
{
  *a1 = 0u;
  a1[1] = 0u;
  pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::Sdf_Children();
}

void sub_29A347214(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::Sdf_Children();
}

std::string *sub_29A347304(char **a1, uint64_t a2, std::string *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * (&v9[-v10] >> 3)) >= a5)
    {
      v18 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v21 = a5;
        sub_29A095A18(a1, a2, a1[1], a2 + 24 * a5);
        v22 = &v7[v21];
        v23 = v5;
        do
        {
          std::string::operator=(v23++, v7++);
        }

        while (v7 != v22);
      }

      else
      {
        v19 = (a3 + v18);
        a1[1] = sub_29A280CD0(a1, (a3 + v18), a4, a1[1]);
        if (v18 >= 1)
        {
          sub_29A095A18(a1, v5, v10, &v5[a5]);
          v20 = v5;
          do
          {
            std::string::operator=(v20++, v7++);
          }

          while (v7 != v19);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_29A00C9A4();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v16 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
      v35 = a1;
      if (v15)
      {
        v17 = sub_29A012C48(a1, v15);
      }

      else
      {
        v17 = 0;
      }

      v32 = v17;
      v33 = &v17[24 * v16];
      *&v34 = v33;
      *(&v34 + 1) = &v17[24 * v15];
      sub_29A347550(&v32, v7, a5);
      v24 = v33;
      memcpy(v34, v5, a1[1] - v5);
      v25 = *a1;
      v26 = v33;
      *&v34 = v34 + a1[1] - v5;
      a1[1] = v5;
      v27 = v5 - v25;
      v28 = &v26[-(v5 - v25)];
      memcpy(v28, v25, v27);
      v29 = *a1;
      *a1 = v28;
      v30 = a1[2];
      *(a1 + 1) = v34;
      *&v34 = v29;
      *(&v34 + 1) = v30;
      v32 = v29;
      v33 = v29;
      sub_29A01FF14(&v32);
      return v24;
    }
  }

  return v5;
}

void *sub_29A347550(void *result, __int128 *a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v6 = v4 + 24 * a3;
    v7 = 24 * a3;
    do
    {
      if (*(a2 + 23) < 0)
      {
        result = sub_29A008D14(v4, *a2, *(a2 + 1));
      }

      else
      {
        v8 = *a2;
        *(v4 + 16) = *(a2 + 2);
        *v4 = v8;
      }

      v4 += 24;
      a2 = (a2 + 24);
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

void **sub_29A3475E4(const void **a1, const void **a2, uint64_t a3)
{
  result = a2;
  if (a1 != a2)
  {
    while (1)
    {
      v7 = a1 + 3;
      if (a1 + 3 == a2)
      {
        break;
      }

      v8 = sub_29A0EC4B8(a3, a1, a1 + 3);
      a1 = v7;
      if (v8)
      {
        v9 = v7 - 3;
        goto LABEL_6;
      }
    }

    v9 = a2;
LABEL_6:
    result = a2;
    if (v9 != a2)
    {
      v10 = v9 + 6;
      if (v9 + 6 == a2)
      {
        v11 = v9;
      }

      else
      {
        do
        {
          if (sub_29A0EC4B8(a3, v9, v10))
          {
            v11 = v9;
          }

          else
          {
            v11 = (v9 + 3);
            if (*(v9 + 47) < 0)
            {
              operator delete(*v11);
            }

            v12 = *v10;
            v9[5] = v10[2];
            *v11 = v12;
            *(v10 + 23) = 0;
            *v10 = 0;
            v9 += 3;
          }

          v10 += 3;
        }

        while (v10 != a2);
      }

      return v11 + 3;
    }
  }

  return result;
}

unint64_t sub_29A3476D4()
{
  v0 = operator new(0x38uLL);
  *v0 = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  *(v0 + 48) = 0;
  v1 = atomic_load(pxrInternal__aapl__pxrReserved__::SDF_LAYER_INCLUDE_DETACHED);
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<std::string>();
  }

  sub_29A008E78(__p, ",");
  pxrInternal__aapl__pxrReserved__::TfStringSplit(v1, __p, &v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v2 = sub_29A3478F0(v11, v12, "*");
  if (v2 == v12)
  {
    if (v11 != v2)
    {
      pxrInternal__aapl__pxrReserved__::SdfLayer::DetachedLayerRules::Include(v0, &v11);
    }
  }

  else
  {
    *(v0 + 48) = 1;
    sub_29A012CE4(v0);
  }

  v3 = atomic_load(pxrInternal__aapl__pxrReserved__::SDF_LAYER_EXCLUDE_DETACHED);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<std::string>();
  }

  sub_29A008E78(v7, ",");
  pxrInternal__aapl__pxrReserved__::TfStringSplit(v3, v7, __p);
  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  if (__p[0] != __p[1])
  {
    pxrInternal__aapl__pxrReserved__::SdfLayer::DetachedLayerRules::Exclude(v0, __p);
  }

  v7[0] = __p;
  sub_29A012C90(v7);
  __p[0] = &v11;
  sub_29A012C90(__p);
  v4 = 0;
  atomic_compare_exchange_strong(&qword_2A173F918, &v4, v0);
  if (v4)
  {
    v6 = sub_29A33C9F8(v0);
    operator delete(v6);
    return atomic_load(&qword_2A173F918);
  }

  return v0;
}

void sub_29A347888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *a16, uint64_t a17, uint64_t a18, char a19)
{
  a16 = &a19;
  sub_29A012C90(&a16);
  _Unwind_Resume(a1);
}

void sub_29A3478D8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x29A3478D0);
}

const void **sub_29A3478F0(const void **a1, const void **a2, char *__s)
{
  v3 = a1;
  if (a1 != a2)
  {
    v6 = strlen(__s);
    do
    {
      v7 = *(v3 + 23);
      if (v7 < 0)
      {
        if (v6 == v3[1])
        {
          if (v6 == -1)
          {
            sub_29A0F26CC();
          }

          v8 = *v3;
LABEL_9:
          if (!memcmp(v8, __s, v6))
          {
            return v3;
          }
        }
      }

      else
      {
        v8 = v3;
        if (v6 == v7)
        {
          goto LABEL_9;
        }
      }

      v3 += 3;
    }

    while (v3 != a2);
  }

  return v3;
}

unint64_t sub_29A347990(atomic_ullong *a1)
{
  v2 = operator new(0x18uLL);
  v3 = v2;
  v4 = 0;
  v2[2] = 0;
  v2[1] = 0;
  *v2 = (v2 + 1);
  atomic_compare_exchange_strong(a1, &v4, v2);
  if (v4)
  {
    sub_29A019EE8(v2, v2[1]);
    operator delete(v3);
    return atomic_load(a1);
  }

  return v3;
}

uint64_t *sub_29A3479FC(uint64_t *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_29A347A54(a1, *a2, a2 + 1);
  return a1;
}

uint64_t *sub_29A347A54(uint64_t *result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_29A09ADD4(v5, (v5 + 1), v4 + 4, (v4 + 4));
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

uint64_t *sub_29A347ADC(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A00B0D0(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A347B74(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

_BYTE *sub_29A347B74@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x40uLL);
  v7 = result;
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    result = sub_29A008D14(result + 32, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    *(result + 6) = *(v8 + 2);
    *(result + 2) = v9;
  }

  *(v7 + 7) = 0;
  *(a3 + 16) = 1;
  return result;
}

void sub_29A347C08(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A3463CC(v2 + 32);
    }

    operator delete(v2);
  }
}

uint64_t *sub_29A347C64(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = 0;
  if (v3)
  {
    sub_29A0ECFD4((v3 + 16), &v6);
    v4 = a1[1];
    a1[1] = v6;
    v6 = 0;
    if (v4)
    {
      sub_29B29BA48(v4);
    }
  }

  return a1;
}

void sub_29A347CC4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A347CDC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = 0;
  if (v3)
  {
    sub_29A0ECFD4((v3 + 16), &v6);
    v4 = a1[1];
    a1[1] = v6;
    v6 = 0;
    if (v4)
    {
      sub_29B29BA48(v4);
    }
  }

  return a1;
}

void sub_29A347D3C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A347D54(uint64_t a1)
{
  if (!sub_29A347DC0(a1))
  {
    return 0;
  }

  result = *a1;
  if (*a1)
  {
    v3 = (*(*result + 112))(result, *(a1 + 16));
    return (v3[1] - *v3) >> 3;
  }

  return result;
}

uint64_t sub_29A347DC0(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((*a1 + 8)))
  {
    return 1;
  }

  v2[0] = "sdf/listProxy.h";
  v2[1] = "_Validate";
  v2[2] = 691;
  v2[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy>::_Validate() const [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy]";
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v2, 1, "Accessing expired list editor");
  return 0;
}

uint64_t sub_29A347E44(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = a1 + 8;
  v7 = *a2;
  v8 = *(a2 + 2);
  v5 = *a3;
  v6 = *(a3 + 2);
  sub_29A347EF0(a1, &v7, &v5);
  return a1;
}

BOOL sub_29A347EF0(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  for (i = a3; ; i = a3)
  {
    result = sub_29A347F68(v6, i);
    if (result)
    {
      break;
    }

    v9 = *(a2 + 16);
    v10[0] = *(a2 + 8);
    v10[1] = v9;
    sub_29A347FEC(a1, (a1 + 1), v10);
    ++*(a2 + 16);
    v6 = a2;
  }

  return result;
}

BOOL sub_29A347F68(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    return *(a1 + 16) == *(a2 + 16);
  }

  v7 = v2;
  v8 = v3;
  v5[0] = "sdf/listProxy.h";
  v5[1] = "equal";
  v5[2] = 255;
  v5[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy>::_Iterator<pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy> *, pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy>::_GetHelper>::equal(const This &) const [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy, Owner = pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy> *, GetItem = pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy>::_GetHelper]";
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Comparing SdfListProxy iterators from different proxies!");
  return 0;
}

uint64_t *sub_29A347FEC(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  sub_29A3480A0(a1, a3, &__p);
  v5 = sub_29A0194B4(a1, a2, &v10, &v9, __p + 4);
  v6 = *v5;
  if (*v5)
  {
    v7 = __p;
    __p = 0;
    if (v7)
    {
      sub_29A01BC68(&v12, v7);
    }
  }

  else
  {
    sub_29A00B204(a1, v10, v5, __p);
    return __p;
  }

  return v6;
}

void sub_29A34807C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **__p, uint64_t a13)
{
  if (__p)
  {
    sub_29A01BC68(&a13, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A3480A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x38uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  result = sub_29A1DF914(*a2, *(a2 + 8), v6 + 4);
  *(a3 + 16) = 1;
  return result;
}

void sub_29A348108(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A01BC68(v3, v2);
  _Unwind_Resume(a1);
}

unint64_t sub_29A348124(uint64_t a1, uint64_t a2, const void **a3)
{
  v4 = (*(*a1 + 112))(a1);
  v5 = sub_29A22B430(*v4, v4[1], a3);
  if (v5 == v4[1])
  {
    return -1;
  }

  else
  {
    return 0xAAAAAAAAAAAAAAABLL * ((v5 - *v4) >> 3);
  }
}

char *sub_29A3481B4(char *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v6;
  }

  return __dst;
}

void sub_29A348230(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A34824C(const void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v6 = *(a3 + 23);
  v7 = *(a3 + 8);
  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  v9 = *(a1 + 23);
  v10 = v9;
  if (v9 < 0)
  {
    v9 = a1[1];
  }

  if (v8 == v9 && ((v12 = *a3, v6 >= 0) ? (v13 = a3) : (v13 = *a3), v10 >= 0 ? (v14 = a1) : (v14 = *a1), !memcmp(v13, v14, v8)))
  {
    v15 = *(a2 + 23);
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(a2 + 8);
    }

    if (v15)
    {
      if (v6 < 0)
      {
        sub_29A008D14(__p, v12, v7);
      }

      else
      {
        *__p = *a3;
        v17 = *(a3 + 16);
      }

      sub_29A1E21F4(&v18, (a3 + 24));
      sub_29A1E2240(&v19, (a3 + 28));
      v20 = *(a3 + 32);
      pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(v21, (a3 + 48));
      sub_29A348408(__p);
      sub_29A32553C(a4, __p);
      sub_29A184A10(v21, 0);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
      sub_29A1DE3A4(&v18);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *a4 = 0;
      a4[56] = 0;
    }
  }

  else
  {

    sub_29A3484BC(a4, a3);
  }
}

void sub_29A348408(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v2);
  if (SHIBYTE(v3) < 0)
  {
    sub_29A008D14(&__dst, v2[0], v2[1]);
  }

  else
  {
    __dst = *v2;
    v7 = v3;
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = __dst;
  *(a1 + 16) = v7;
  HIBYTE(v7) = 0;
  LOBYTE(__dst) = 0;
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v3) < 0)
  {
    operator delete(v2[0]);
  }
}

char *sub_29A3484BC(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  sub_29A1E21F4(__dst + 6, a2 + 6);
  sub_29A1E2240(__dst + 7, a2 + 7);
  *(__dst + 2) = a2[2];
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((__dst + 48), (a2 + 3));
  __dst[56] = 1;
  return __dst;
}

void sub_29A348540(_Unwind_Exception *a1)
{
  sub_29A1DCEA8((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A348564(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((*a1 + 8)))
  {
    return 1;
  }

  v2[0] = "sdf/listEditorProxy.h";
  v2[1] = "_Validate";
  v2[2] = 393;
  v2[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfListEditorProxy<pxrInternal__aapl__pxrReserved__::SdfReferenceTypePolicy>::_Validate() [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfReferenceTypePolicy]";
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v2, 1, "Accessing expired list editor");
  return 0;
}

char *sub_29A3485E8(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_29A008D14(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  return __dst;
}

void sub_29A348660(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A34867C(uint64_t a1)
{
  *a1 = &unk_2A204B5A0;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_29A3486DC(void **__p)
{
  *__p = &unk_2A204B5A0;
  if (*(__p + 63) < 0)
  {
    operator delete(__p[5]);
  }

  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

void *sub_29A34874C(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  v3 = *(a1 + 8);
  *v2 = &unk_2A204B5A0;
  *(v2 + 1) = v3;
  sub_29A3485E8(v2 + 16, (a1 + 16));
  return v2;
}

char *sub_29A3487B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2A204B5A0;
  *(a2 + 8) = v2;
  return sub_29A3485E8((a2 + 16), (a1 + 16));
}

void sub_29A3487F0(void *a1)
{
  sub_29A348890(a1 + 8);

  operator delete(a1);
}

uint64_t sub_29A348844(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204B610))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A348890(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void sub_29A3488E8(const void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a3 + 23);
  v7 = *(a3 + 8);
  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  v9 = *(a1 + 23);
  v10 = v9;
  if (v9 < 0)
  {
    v9 = a1[1];
  }

  if (v8 == v9 && ((v12 = *a3, v6 >= 0) ? (v13 = a3) : (v13 = *a3), v10 >= 0 ? (v14 = a1) : (v14 = *a1), !memcmp(v13, v14, v8)))
  {
    v15 = *(a2 + 23);
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(a2 + 8);
    }

    if (v15)
    {
      if (v6 < 0)
      {
        sub_29A008D14(__p, v12, v7);
      }

      else
      {
        *__p = *a3;
        v17 = *(a3 + 16);
      }

      sub_29A1E21F4(&v18, (a3 + 24));
      sub_29A1E2240(&v19, (a3 + 28));
      v20 = *(a3 + 32);
      sub_29A348AA0(__p);
      *a4 = *__p;
      *(a4 + 16) = v17;
      __p[1] = 0;
      v17 = 0;
      __p[0] = 0;
      sub_29A1DDD84((a4 + 24), &v18);
      sub_29A1DDDC0((a4 + 28), &v19);
      *(a4 + 32) = v20;
      *(a4 + 48) = 1;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
      sub_29A1DE3A4(&v18);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *a4 = 0;
      *(a4 + 48) = 0;
    }
  }

  else
  {

    sub_29A348B54(a4, a3);
  }
}