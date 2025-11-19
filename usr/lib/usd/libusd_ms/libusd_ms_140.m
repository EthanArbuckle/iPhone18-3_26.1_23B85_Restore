void *pxrInternal__aapl__pxrReserved__::HdRenderDelegate::GetMaterialRenderContexts@<X0>(pxrInternal__aapl__pxrReserved__::HdRenderDelegate *this@<X0>, void *a2@<X8>)
{
  v5 = *MEMORY[0x29EDCA608];
  (*(*this + 288))(&v4);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A12EF7C(a2, &v4, &v5, 1uLL);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdRenderDelegate::GetRenderSettingsNamespaces(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

double pxrInternal__aapl__pxrReserved__::HdRenderDelegate::GetDefaultAovDescriptor@<D0>(uint64_t a1@<X8>)
{
  *a1 = -1;
  *(a1 + 4) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1065353216;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdRenderDelegate::GetRenderSettingDescriptors(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderDelegate::SetRenderSetting(pxrInternal__aapl__pxrReserved__::HdRenderDelegate *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  if (sub_29A160470(this + 1, a2))
  {
    pxrInternal__aapl__pxrReserved__::VtValue::operator==();
  }

  v13.__locale_ = a2;
  v6 = sub_29AC1E77C(this + 8, a2, &unk_29B4D6118, &v13) + 3;
  sub_29A1854E8(v6, a3);
  ++*(this + 12);
  result = sub_29ABCF8C0(21);
  if (result)
  {
    v8 = sub_29A00911C(MEMORY[0x29EDC93C8], "Render Setting [", 16);
    v9 = pxrInternal__aapl__pxrReserved__::operator<<(v8, a2);
    v10 = sub_29A00911C(v9, "] = ", 4);
    v11 = pxrInternal__aapl__pxrReserved__::operator<<(v10, a3);
    std::ios_base::getloc((v11 + *(*v11 - 24)));
    v12 = std::locale::use_facet(&v13, MEMORY[0x29EDC93D0]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v13);
    std::ostream::put();
    return std::ostream::flush();
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderDelegate::GetRenderSetting@<X0>(pxrInternal__aapl__pxrReserved__::HdRenderDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v5 = sub_29A16039C(this + 1, a2);
  if (v5)
  {

    return sub_29A186EF4(a3, v5 + 3);
  }

  else
  {
    result = sub_29ABCF8C0(21);
    if (result)
    {
      v7 = sub_29A00911C(MEMORY[0x29EDC93C8], "Render setting not found for key [", 34);
      v8 = pxrInternal__aapl__pxrReserved__::operator<<(v7, a2);
      v9 = sub_29A00911C(v8, "]", 1);
      std::ios_base::getloc((v9 + *(*v9 - 24)));
      v10 = std::locale::use_facet(&v11, MEMORY[0x29EDC93D0]);
      (v10->__vftable[2].~facet_0)(v10, 10);
      std::locale::~locale(&v11);
      std::ostream::put();
      result = std::ostream::flush();
    }

    a3[1] = 0;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdRenderDelegate::GetCommandDescriptors(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void *pxrInternal__aapl__pxrReserved__::HdRenderDelegate::_PopulateDefaultSettings(void *result, uint64_t *a2)
{
  v4 = *a2;
  if (a2[1] != *a2)
  {
    v11[9] = v2;
    v11[10] = v3;
    v6 = result;
    v7 = 0;
    v8 = 24;
    do
    {
      result = sub_29A16039C(v6 + 1, (v4 + v8));
      if (!result)
      {
        v9 = (*a2 + v8);
        v11[0] = v9;
        v10 = sub_29AC1E77C((v6 + 1), v9, &unk_29B4D6118, v11);
        result = sub_29A1854E8(v10 + 3, v9 + 1);
      }

      ++v7;
      v4 = *a2;
      v8 += 48;
    }

    while (v7 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::HdRenderDelegate::IsParallelSyncEnabled(pxrInternal__aapl__pxrReserved__::HdRenderDelegate *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return (*(v3 + 38) ^ *a2) < 8uLL;
}

void sub_29AC86758(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__rehash<true>();
}

void *sub_29AC867D0@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x198uLL);
  result = sub_29AC8681C(v2);
  *a1 = v2 + 3;
  a1[1] = v2;
  return result;
}

void *sub_29AC8681C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A207DD00;
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::HdRenderPassState((a1 + 3));
  return a1;
}

void sub_29AC86898(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A207DD00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdRendererPlugin::CreateDelegate(std::type_info *a1@<X0>, uint64_t a2@<X1>, pxrInternal__aapl__pxrReserved__::HdRendererPluginHandle *a3@<X8>)
{
  v6 = (a1->__vftable[2].~type_info_0)(a1, 1);
  if (v6)
  {
    Instance = pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::GetInstance(v6);
    pxrInternal__aapl__pxrReserved__::HfPluginRegistry::AddPluginReference(Instance, a1);
    __str.__r_.__value_.__r.__words[0] = a1;
    v8 = (a1->__vftable[1].~type_info_0)(a1, a2);
    pxrInternal__aapl__pxrReserved__::HdRendererPluginHandle::HdRendererPluginHandle(a3, &__str);
    *(a3 + 1) = v8;
    pxrInternal__aapl__pxrReserved__::HdRendererPluginHandle::~HdRendererPluginHandle(&__str);
    if (sub_29ABCF8C0(22))
    {
      sub_29A008864(&__str);
      v9 = (a2 + 16);
      while (1)
      {
        v9 = *v9;
        if (!v9)
        {
          break;
        }

        v10 = sub_29A00911C(&__str.__r_.__value_.__r.__words[2], "\t", 1);
        v11 = pxrInternal__aapl__pxrReserved__::operator<<(v10, v9 + 2);
        v12 = sub_29A00911C(v11, ": ", 2);
        v13 = pxrInternal__aapl__pxrReserved__::operator<<(v12, (v9 + 3));
        sub_29A00911C(v13, "\n", 1);
      }

      v14 = sub_29ABCF8C0(22);
      if (v14)
      {
        if (*(a3 + 1))
        {
          v15 = "Created";
        }

        else
        {
          v15 = "Failed to create";
        }

        v16 = pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::GetInstance(v14);
        pxrInternal__aapl__pxrReserved__::HfPluginRegistry::GetPluginId(v16, a1, &v26);
        v17 = v26 & 0xFFFFFFFFFFFFFFF8;
        if ((v26 & 0xFFFFFFFFFFFFFFF8) != 0)
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

        std::stringbuf::str();
        if (v25 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("%s instance of renderer plugin '%s' with settings map:\n%s", v19, v20, v15, v18, p_p);
        if (v25 < 0)
        {
          operator delete(__p);
        }

        if ((v26 & 7) != 0)
        {
          atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      __str.__r_.__value_.__r.__words[0] = *MEMORY[0x29EDC9528];
      v22 = *(MEMORY[0x29EDC9528] + 72);
      *(__str.__r_.__value_.__r.__words + *(__str.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
      __str.__r_.__value_.__r.__words[2] = v22;
      v28 = MEMORY[0x29EDC9570] + 16;
      if (v30 < 0)
      {
        operator delete(v29[7].__locale_);
      }

      v28 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v29);
      std::iostream::~basic_iostream();
      MEMORY[0x29C2C4390](&v31);
    }

    v23 = *(a3 + 1);
    if (v23)
    {
      pxrInternal__aapl__pxrReserved__::HdRendererPlugin::GetDisplayName(a1, &__str);
      std::string::operator=((v23 + 56), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 1) = 0;
  }
}

void sub_29AC86CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if ((a18 & 7) != 0)
  {
    atomic_fetch_add_explicit((a18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A008B0C(&a19);
  pxrInternal__aapl__pxrReserved__::HdPluginRenderDelegateUniqueHandle::~HdPluginRenderDelegateUniqueHandle(v24);
  _Unwind_Resume(a1);
}

const pxrInternal__aapl__pxrReserved__::HfPluginBase **pxrInternal__aapl__pxrReserved__::HdRendererPlugin::GetPluginId@<X0>(pxrInternal__aapl__pxrReserved__::HdRendererPlugin *this@<X0>, void *a2@<X8>)
{
  Instance = pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::GetInstance(this);

  return pxrInternal__aapl__pxrReserved__::HfPluginRegistry::GetPluginId(Instance, this, a2);
}

void pxrInternal__aapl__pxrReserved__::HdRendererPlugin::GetDisplayName(pxrInternal__aapl__pxrReserved__::HdRendererPlugin *this@<X0>, uint64_t a2@<X8>)
{
  Instance = pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::GetInstance(this);
  PluginId = pxrInternal__aapl__pxrReserved__::HfPluginRegistry::GetPluginId(Instance, this, &v12);
  memset(__p, 0, 32);
  v6 = pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::GetInstance(PluginId);
  if (pxrInternal__aapl__pxrReserved__::HfPluginRegistry::GetPluginDesc(v6, &v12, __p))
  {
    if (SHIBYTE(__p[3]) < 0)
    {
      sub_29A008D14(a2, __p[1], __p[2]);
    }

    else
    {
      *a2 = *&__p[1];
      *(a2 + 16) = __p[3];
    }
  }

  else
  {
    v9[0] = "hd/rendererPlugin.cpp";
    v9[1] = "GetDisplayName";
    v9[2] = 94;
    v9[3] = "std::string pxrInternal__aapl__pxrReserved__::HdRendererPlugin::GetDisplayName() const";
    v10 = 0;
    v7 = v12 & 0xFFFFFFFFFFFFFFF8;
    if ((v12 & 0xFFFFFFFFFFFFFFF8) != 0)
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

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 1, "Unable to get display name for '%s'", v8);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC86ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if ((a15 & 7) != 0)
  {
    atomic_fetch_add_explicit((a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(v21 - 24);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry *pxrInternal__aapl__pxrReserved__::HdRendererPluginHandle::HdRendererPluginHandle(pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    Instance = pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::GetInstance(a1);
    pxrInternal__aapl__pxrReserved__::HfPluginRegistry::AddPluginReference(Instance, *a1);
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry *pxrInternal__aapl__pxrReserved__::HdRendererPluginHandle::operator=(pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry *a1, uint64_t *a2)
{
  Instance = pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::GetInstance(a1);
  v5 = pxrInternal__aapl__pxrReserved__::HfPluginRegistry::ReleasePlugin(Instance, *a1);
  v6 = *a2;
  *a1 = *a2;
  if (v6)
  {
    v7 = pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::GetInstance(v5);
    pxrInternal__aapl__pxrReserved__::HfPluginRegistry::AddPluginReference(v7, *a1);
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry *pxrInternal__aapl__pxrReserved__::HdRendererPluginHandle::operator=(pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry *a1)
{
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::HdRendererPluginHandle::operator=(a1, &v3);
  pxrInternal__aapl__pxrReserved__::HdRendererPluginHandle::~HdRendererPluginHandle(&v3);
  return a1;
}

void sub_29AC87024(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::HdRendererPluginHandle::~HdRendererPluginHandle(va);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled(("N32pxrInternal__aapl__pxrReserved__24HdRendererPluginRegistryE" & 0x7FFFFFFFFFFFFFFFLL), &v13);
  v2 = std::string::insert(&v13, 0, "Create Singleton ");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v17 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_29A0EC164(&v14, "Tf", "TfSingleton::_CreateInstance", __p);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::Tf_SingletonPyGILDropper(&v13);
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry*> &)::isInitializing, 1u))
  {
    while (!atomic_load(a1))
    {
      sched_yield();
    }
  }

  else
  {
    if (!atomic_load(a1))
    {
      v8 = operator new(0x48uLL);
      pxrInternal__aapl__pxrReserved__::HfPluginRegistry::HfPluginRegistry(v8, v10);
      *v8 = &unk_2A207DDA8;
      v12 = atomic_load(a1);
      if (v12)
      {
        if (v8 != v12)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v17 = 86;
          v18 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry]";
          v19 = 0;
          v20 = 4;
          pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(__p, "race detected setting singleton instance", v11);
        }
      }

      else if (atomic_exchange(a1, v8))
      {
        __p[0] = "tf/instantiateSingleton.h";
        __p[1] = "_CreateInstance";
        v17 = 90;
        v18 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry]";
        v19 = 0;
        v20 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v11, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry*> &)::isInitializing);
  }

  v6 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v13);
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v15, v14);
  }

  return v6;
}

void sub_29AC87248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry>::SetInstanceConstructed(unint64_t result, uint64_t a2, char *a3)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry>::_instance, result))
  {
    v3[0] = "tf/instantiateSingleton.h";
    v3[1] = "SetInstanceConstructed";
    v3[2] = 54;
    v3[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry]";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry>::DeleteInstance()
{
  for (i = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry>::_instance); i; i = v1)
  {
    v1 = i;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry>::_instance, &v1, 0);
    if (v1 == i)
    {
      pxrInternal__aapl__pxrReserved__::HfPluginRegistry::~HfPluginRegistry(i);

      operator delete(v2);
      return;
    }

    sched_yield();
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::HdRendererPluginRegistry(pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry *this, const std::type_info *a2)
{
  result = pxrInternal__aapl__pxrReserved__::HfPluginRegistry::HfPluginRegistry(this, v3);
  *this = &unk_2A207DDA8;
  return result;
}

{
  result = pxrInternal__aapl__pxrReserved__::HfPluginRegistry::HfPluginRegistry(this, v3);
  *this = &unk_2A207DDA8;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::GetInstance(pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry>::_CreateInstance();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::~HdRendererPluginRegistry(pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry *this)
{
  pxrInternal__aapl__pxrReserved__::HfPluginRegistry::~HfPluginRegistry(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::GetDefaultPluginId(pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry *this@<X0>, uint64_t a2@<X1>, atomic_uint **a3@<X8>)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  pxrInternal__aapl__pxrReserved__::HfPluginRegistry::GetPluginDescs(this, &v22);
  v5 = v22;
  v6 = v23;
  if (v22 == v23)
  {
LABEL_9:
    if (sub_29ABCF8C0(22))
    {
      v13 = "n";
      if (a2)
      {
        v13 = "y";
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Default renderer plugin (gpu: %s): none\n", v11, v12, v13);
    }

    v14 = 0;
LABEL_14:
    *a3 = v14;
    goto LABEL_15;
  }

  while (1)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry>::_instance);
    if (!v7)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry>::_CreateInstance();
    }

    Plugin = pxrInternal__aapl__pxrReserved__::HfPluginRegistry::GetPlugin(v7, v5);
    v9 = Plugin;
    if (Plugin)
    {
      if ((*(*Plugin + 40))(Plugin, a2))
      {
        break;
      }
    }

    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry>::_instance);
    if (!v10)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry>::_CreateInstance();
    }

    pxrInternal__aapl__pxrReserved__::HfPluginRegistry::ReleasePlugin(v10, v9);
    v5 = (v5 + 40);
    if (v5 == v6)
    {
      goto LABEL_9;
    }
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry>::_instance);
  if (!v15)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::HfPluginRegistry::ReleasePlugin(v15, v9);
  if (sub_29ABCF8C0(22))
  {
    v18 = "n";
    if (a2)
    {
      v18 = "y";
    }

    v19 = *v5 & 0xFFFFFFFFFFFFFFF8;
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

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Default renderer plugin (gpu: %s): %s\n", v16, v17, v18, v20);
  }

  v21 = *v5;
  *a3 = *v5;
  if ((v21 & 7) != 0)
  {
    v14 = (v21 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  v25 = &v22;
  sub_29AC877F8(&v25);
}

void sub_29AC87664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  sub_29AC877F8(&a14);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::GetOrCreateRendererPlugin@<X0>(pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::HfPluginRegistry::GetPlugin(this, a2);
  *a3 = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::CreateRenderDelegate(pxrInternal__aapl__pxrReserved__::HfPluginRegistry *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X2>, pxrInternal__aapl__pxrReserved__::HdRendererPluginHandle *a4@<X8>)
{
  Plugin = pxrInternal__aapl__pxrReserved__::HfPluginRegistry::GetPlugin(a1, a2);
  v12 = Plugin;
  if (Plugin)
  {
    pxrInternal__aapl__pxrReserved__::HdRendererPlugin::CreateDelegate(Plugin, a3, a4);
  }

  else
  {
    v10[0] = "hd/rendererPluginRegistry.cpp";
    v10[1] = "CreateRenderDelegate";
    v10[2] = 91;
    v10[3] = "HdPluginRenderDelegateUniqueHandle pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::CreateRenderDelegate(const TfToken &, const HdRenderSettingsMap &)";
    v11 = 0;
    v8 = *a2 & 0xFFFFFFFFFFFFFFF8;
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

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v10, 1, "Couldn't find plugin for id %s", v9);
    *a4 = 0;
    *(a4 + 1) = 0;
  }

  pxrInternal__aapl__pxrReserved__::HdRendererPluginHandle::~HdRendererPluginHandle(&v12);
}

void pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry::_CollectAdditionalMetadata(pxrInternal__aapl__pxrReserved__::HdRendererPluginRegistry *this, const pxrInternal__aapl__pxrReserved__::PlugRegistry *a2, const pxrInternal__aapl__pxrReserved__::TfType *a3)
{
  if (sub_29ABCF8C0(22))
  {
    TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(a3);
    if (*(TypeName + 23) >= 0)
    {
      v7 = TypeName;
    }

    else
    {
      v7 = *TypeName;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Renderer plugin discovery: %s\n", v5, v6, v7);
  }
}

void sub_29AC877F8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29AB10E18(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29AC8784C()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HD_ENABLE_SCENE_INDEX_EMULATION))
  {
    sub_29B2C687C();
  }
}

uint64_t sub_29AC87880()
{
  if ((atomic_load_explicit(&qword_2A174B090, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174B090))
  {
    v1 = atomic_load(pxrInternal__aapl__pxrReserved__::HD_ENABLE_SCENE_INDEX_EMULATION);
    if (!v1)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
    }

    byte_2A174B088 = *v1;
    __cxa_guard_release(&qword_2A174B090);
  }

  return byte_2A174B088;
}

void pxrInternal__aapl__pxrReserved__::HdRenderIndex::HdRenderIndex(uint64_t a1)
{
  *a1 = 0;
  v2 = atomic_load(&qword_2A174B078);
  if (!v2)
  {
    v2 = sub_29AC905F0();
  }

  v3 = operator new(0x18uLL);
  *v3 = 0;
  v3[2] = 0;
  v4 = *v2;
  *(v3 + 2) = *v2;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      *(v3 + 2) = v5;
    }
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = v3;
  *(a1 + 24) = 0;
  v6 = atomic_load(&qword_2A174B078);
  if (!v6)
  {
    v6 = sub_29AC905F0();
  }

  v7 = operator new(0x18uLL);
  *v7 = 0;
  v7[2] = 0;
  v8 = *(v6 + 8);
  *(v7 + 2) = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      *(v7 + 2) = v9;
    }
  }

  *(a1 + 40) = 0u;
  *(a1 + 32) = v7;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1065353216;
  pxrInternal__aapl__pxrReserved__::Hd_SortedIds::Hd_SortedIds((a1 + 88));
  *(a1 + 152) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 208) = 1065353216;
  pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::Hd_PrimTypeIndex();
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdRenderIndex::_ConfigureReprs(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v1)
  {
    v1 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  if (!v2)
  {
    v2 = sub_29AC514DC(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  }

  v3 = *v2;
  if ((*v2 & 7) == 0)
  {
    v205 = 4;
    v206 = v3;
LABEL_12:
    v4 = 1;
    goto LABEL_13;
  }

  if ((atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v3 &= 0xFFFFFFFFFFFFFFF8;
  }

  v205 = 4;
  v206 = v3;
  if ((v3 & 7) == 0)
  {
    goto LABEL_12;
  }

  v4 = 0;
  if ((atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v206 &= 0xFFFFFFFFFFFFFFF8;
  }

LABEL_13:
  v207 = 65537;
  v208 = 0;
  v209 = 0;
  v210 = 257;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  if (!v5)
  {
    v5 = sub_29AC514DC(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  }

  v6 = *v5;
  if ((*v5 & 7) != 0)
  {
    if ((atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 &= 0xFFFFFFFFFFFFFFF8;
    }

    v199 = 0;
    v200 = v6;
    if ((v6 & 7) != 0)
    {
      v7 = 0;
      if ((atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v200 &= 0xFFFFFFFFFFFFFFF8;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v199 = 0;
    v7 = 1;
    v200 = v6;
  }

  v201 = 65792;
  v202 = 0;
  v203 = 0;
  v204 = 257;
  pxrInternal__aapl__pxrReserved__::HdMesh::ConfigureRepr((v1 + 8), &v205, &v199);
  if ((v200 & 7) != 0)
  {
    atomic_fetch_add_explicit((v200 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v7 & 1) == 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v206 & 7) != 0)
  {
    atomic_fetch_add_explicit((v206 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v4 & 1) == 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v8)
  {
    v8 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  if (!v9)
  {
    v9 = sub_29AC514DC(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  }

  v10 = *v9;
  if ((*v9 & 7) == 0)
  {
    v193 = 4;
    v194 = v10;
LABEL_42:
    v11 = 1;
    goto LABEL_43;
  }

  if ((atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v10 &= 0xFFFFFFFFFFFFFFF8;
  }

  v193 = 4;
  v194 = v10;
  if ((v10 & 7) == 0)
  {
    goto LABEL_42;
  }

  v11 = 0;
  if ((atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v194 &= 0xFFFFFFFFFFFFFFF8;
  }

LABEL_43:
  v195 = 0x10000;
  v196 = 0;
  v197 = 0;
  v198 = 257;
  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  if (!v12)
  {
    v12 = sub_29AC514DC(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  }

  v13 = *v12;
  if ((*v12 & 7) != 0)
  {
    if ((atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 &= 0xFFFFFFFFFFFFFFF8;
    }

    v187 = 0;
    v188 = v13;
    if ((v13 & 7) != 0)
    {
      v14 = 0;
      if ((atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v188 &= 0xFFFFFFFFFFFFFFF8;
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v187 = 0;
    v14 = 1;
    v188 = v13;
  }

  v189 = 65792;
  v190 = 0;
  v191 = 0;
  v192 = 257;
  pxrInternal__aapl__pxrReserved__::HdMesh::ConfigureRepr((v8 + 24), &v193, &v187);
  if ((v188 & 7) != 0)
  {
    atomic_fetch_add_explicit((v188 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v14 & 1) == 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v194 & 7) != 0)
  {
    atomic_fetch_add_explicit((v194 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v11 & 1) == 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v15)
  {
    v15 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  if (!v16)
  {
    v16 = sub_29AC514DC(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  }

  v17 = *v16;
  if ((*v16 & 7) == 0)
  {
    v181 = 5;
    v182 = v17;
LABEL_72:
    v18 = 1;
    goto LABEL_73;
  }

  if ((atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  v181 = 5;
  v182 = v17;
  if ((v17 & 7) == 0)
  {
    goto LABEL_72;
  }

  v18 = 0;
  if ((atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v182 &= 0xFFFFFFFFFFFFFFF8;
  }

LABEL_73:
  v183 = 65792;
  v184 = 0;
  v185 = 0;
  v186 = 257;
  v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  if (!v19)
  {
    v19 = sub_29AC514DC(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  }

  v20 = *v19;
  if ((*v19 & 7) != 0)
  {
    if ((atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 &= 0xFFFFFFFFFFFFFFF8;
    }

    v175 = 0;
    v176 = v20;
    if ((v20 & 7) != 0)
    {
      v21 = 0;
      if ((atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v176 &= 0xFFFFFFFFFFFFFFF8;
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v175 = 0;
    v21 = 1;
    v176 = v20;
  }

  v177 = 65792;
  v178 = 0;
  v179 = 0;
  v180 = 257;
  pxrInternal__aapl__pxrReserved__::HdMesh::ConfigureRepr((v15 + 56), &v181, &v175);
  if ((v176 & 7) != 0)
  {
    atomic_fetch_add_explicit((v176 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v21 & 1) == 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v182 & 7) != 0)
  {
    atomic_fetch_add_explicit((v182 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v18 & 1) == 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v22)
  {
    v22 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  if (!v23)
  {
    v23 = sub_29AC514DC(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  }

  v24 = *v23;
  if ((*v23 & 7) == 0)
  {
    v169 = 6;
    v170 = v24;
LABEL_102:
    v25 = 1;
    goto LABEL_103;
  }

  if ((atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v169 = 6;
  v170 = v24;
  if ((v24 & 7) == 0)
  {
    goto LABEL_102;
  }

  v25 = 0;
  if ((atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v170 &= 0xFFFFFFFFFFFFFFF8;
  }

LABEL_103:
  v171 = 256;
  v172 = 0;
  v173 = 0;
  v174 = 257;
  v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  if (!v26)
  {
    v26 = sub_29AC514DC(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  }

  v27 = *v26;
  if ((*v26 & 7) != 0)
  {
    if ((atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 &= 0xFFFFFFFFFFFFFFF8;
    }

    v163 = 0;
    v164 = v27;
    if ((v27 & 7) != 0)
    {
      v28 = 0;
      if ((atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v164 &= 0xFFFFFFFFFFFFFFF8;
      }
    }

    else
    {
      v28 = 1;
    }
  }

  else
  {
    v163 = 0;
    v28 = 1;
    v164 = v27;
  }

  v165 = 65792;
  v166 = 0;
  v167 = 0;
  v168 = 257;
  pxrInternal__aapl__pxrReserved__::HdMesh::ConfigureRepr((v22 + 64), &v169, &v163);
  if ((v164 & 7) != 0)
  {
    atomic_fetch_add_explicit((v164 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v28 & 1) == 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v170 & 7) != 0)
  {
    atomic_fetch_add_explicit((v170 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v25 & 1) == 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v29)
  {
    v29 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  if (!v30)
  {
    v30 = sub_29AC514DC(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  }

  v31 = *v30;
  if ((*v30 & 7) == 0)
  {
    v157 = 1;
    v158 = v31;
LABEL_132:
    v32 = 1;
    goto LABEL_133;
  }

  if ((atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v157 = 1;
  v158 = v31;
  if ((v31 & 7) == 0)
  {
    goto LABEL_132;
  }

  v32 = 0;
  if ((atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v158 &= 0xFFFFFFFFFFFFFFF8;
  }

LABEL_133:
  v159 = 0x10000;
  v160 = 0;
  v161 = 0;
  v162 = 257;
  v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  if (!v33)
  {
    v33 = sub_29AC514DC(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  }

  v34 = *v33;
  if ((*v33 & 7) != 0)
  {
    if ((atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v34 &= 0xFFFFFFFFFFFFFFF8;
    }

    v151 = 0;
    v152 = v34;
    if ((v34 & 7) != 0)
    {
      v35 = 0;
      if ((atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v152 &= 0xFFFFFFFFFFFFFFF8;
      }
    }

    else
    {
      v35 = 1;
    }
  }

  else
  {
    v151 = 0;
    v35 = 1;
    v152 = v34;
  }

  v153 = 65792;
  v154 = 0;
  v155 = 0;
  v156 = 257;
  pxrInternal__aapl__pxrReserved__::HdMesh::ConfigureRepr((v29 + 32), &v157, &v151);
  if ((v152 & 7) != 0)
  {
    atomic_fetch_add_explicit((v152 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v35 & 1) == 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v158 & 7) != 0)
  {
    atomic_fetch_add_explicit((v158 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v32 & 1) == 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v36)
  {
    v36 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  if (!v37)
  {
    v37 = sub_29AC514DC(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  }

  v38 = *v37;
  if ((*v37 & 7) == 0)
  {
    v145 = 2;
    v146 = v38;
LABEL_162:
    v39 = 1;
    goto LABEL_163;
  }

  if ((atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v145 = 2;
  v146 = v38;
  if ((v38 & 7) == 0)
  {
    goto LABEL_162;
  }

  v39 = 0;
  if ((atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v146 &= 0xFFFFFFFFFFFFFFF8;
  }

LABEL_163:
  v147 = 65792;
  v148 = 0;
  v149 = 0;
  v150 = 257;
  v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  if (!v40)
  {
    v40 = sub_29AC514DC(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  }

  v41 = *v40;
  if ((*v40 & 7) != 0)
  {
    if ((atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v41 &= 0xFFFFFFFFFFFFFFF8;
    }

    v139 = 0;
    v140 = v41;
    if ((v41 & 7) != 0)
    {
      v42 = 0;
      if ((atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v140 &= 0xFFFFFFFFFFFFFFF8;
      }
    }

    else
    {
      v42 = 1;
    }
  }

  else
  {
    v139 = 0;
    v42 = 1;
    v140 = v41;
  }

  v141 = 65792;
  v142 = 0;
  v143 = 0;
  v144 = 257;
  pxrInternal__aapl__pxrReserved__::HdMesh::ConfigureRepr((v36 + 40), &v145, &v139);
  if ((v140 & 7) != 0)
  {
    atomic_fetch_add_explicit((v140 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v42 & 1) == 0)
  {
    atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v146 & 7) != 0)
  {
    atomic_fetch_add_explicit((v146 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v39 & 1) == 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v43)
  {
    v43 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  if (!v44)
  {
    v44 = sub_29AC514DC(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  }

  v45 = *v44;
  if ((*v44 & 7) == 0)
  {
    v133 = 3;
    v134 = v45;
LABEL_192:
    v46 = 1;
    goto LABEL_193;
  }

  if ((atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v45 &= 0xFFFFFFFFFFFFFFF8;
  }

  v133 = 3;
  v134 = v45;
  if ((v45 & 7) == 0)
  {
    goto LABEL_192;
  }

  v46 = 0;
  if ((atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v134 &= 0xFFFFFFFFFFFFFFF8;
  }

LABEL_193:
  v135 = 256;
  v136 = 0;
  v137 = 0;
  v138 = 257;
  v47 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  if (!v47)
  {
    v47 = sub_29AC514DC(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  }

  v48 = *v47;
  if ((*v47 & 7) != 0)
  {
    if ((atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v48 &= 0xFFFFFFFFFFFFFFF8;
    }

    v127 = 0;
    v128 = v48;
    if ((v48 & 7) != 0)
    {
      v49 = 0;
      if ((atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v128 &= 0xFFFFFFFFFFFFFFF8;
      }
    }

    else
    {
      v49 = 1;
    }
  }

  else
  {
    v127 = 0;
    v49 = 1;
    v128 = v48;
  }

  v129 = 65792;
  v130 = 0;
  v131 = 0;
  v132 = 257;
  pxrInternal__aapl__pxrReserved__::HdMesh::ConfigureRepr((v43 + 48), &v133, &v127);
  if ((v128 & 7) != 0)
  {
    atomic_fetch_add_explicit((v128 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v49 & 1) == 0)
  {
    atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v134 & 7) != 0)
  {
    atomic_fetch_add_explicit((v134 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v46 & 1) == 0)
  {
    atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v50 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v50)
  {
    v50 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v51 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  if (!v51)
  {
    v51 = sub_29AC514DC(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  }

  v52 = *(v51 + 6);
  if ((v52 & 7) == 0)
  {
    v121 = 0x100000007;
    v122 = v52;
LABEL_222:
    v53 = 1;
    goto LABEL_223;
  }

  if ((atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v52 &= 0xFFFFFFFFFFFFFFF8;
  }

  v121 = 0x100000007;
  v122 = v52;
  if ((v52 & 7) == 0)
  {
    goto LABEL_222;
  }

  v53 = 0;
  if ((atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v122 &= 0xFFFFFFFFFFFFFFF8;
  }

LABEL_223:
  v123 = 0x10000;
  v124 = 0;
  v125 = 0;
  v126 = 257;
  v54 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  if (!v54)
  {
    v54 = sub_29AC514DC(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
  }

  v55 = *v54;
  if ((*v54 & 7) != 0)
  {
    if ((atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v55 &= 0xFFFFFFFFFFFFFFF8;
    }

    v115 = 0;
    v116 = v55;
    if ((v55 & 7) != 0)
    {
      v56 = 0;
      if ((atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v116 &= 0xFFFFFFFFFFFFFFF8;
      }
    }

    else
    {
      v56 = 1;
    }
  }

  else
  {
    v115 = 0;
    v56 = 1;
    v116 = v55;
  }

  v117 = 65792;
  v118 = 0;
  v119 = 0;
  v120 = 257;
  pxrInternal__aapl__pxrReserved__::HdMesh::ConfigureRepr((v50 + 16), &v121, &v115);
  if ((v116 & 7) != 0)
  {
    atomic_fetch_add_explicit((v116 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v56 & 1) == 0)
  {
    atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v122 & 7) != 0)
  {
    atomic_fetch_add_explicit((v122 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v53 & 1) == 0)
  {
    atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v57)
  {
    v57 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v58 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens);
  if (!v58)
  {
    v58 = sub_29ABC2BDC(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens);
  }

  v59 = *v58;
  if ((*v58 & 7) == 0)
  {
    v113 = 2;
    v114 = v59;
LABEL_252:
    v60 = 1;
    goto LABEL_253;
  }

  if ((atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v59 &= 0xFFFFFFFFFFFFFFF8;
  }

  v113 = 2;
  v114 = v59;
  if ((v59 & 7) == 0)
  {
    goto LABEL_252;
  }

  v60 = 0;
  if ((atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v114 &= 0xFFFFFFFFFFFFFFF8;
  }

LABEL_253:
  pxrInternal__aapl__pxrReserved__::HdBasisCurves::ConfigureRepr((v57 + 8), &v113);
  if ((v114 & 7) != 0)
  {
    atomic_fetch_add_explicit((v114 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v60 & 1) == 0)
  {
    atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v61 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v61)
  {
    v61 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v62 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens);
  if (!v62)
  {
    v62 = sub_29ABC2BDC(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens);
  }

  v63 = *v62;
  if ((*v62 & 7) == 0)
  {
    v111 = 2;
    v112 = v63;
LABEL_268:
    v64 = 1;
    goto LABEL_269;
  }

  if ((atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v63 &= 0xFFFFFFFFFFFFFFF8;
  }

  v111 = 2;
  v112 = v63;
  if ((v63 & 7) == 0)
  {
    goto LABEL_268;
  }

  v64 = 0;
  if ((atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v112 &= 0xFFFFFFFFFFFFFFF8;
  }

LABEL_269:
  pxrInternal__aapl__pxrReserved__::HdBasisCurves::ConfigureRepr((v61 + 24), &v111);
  if ((v112 & 7) != 0)
  {
    atomic_fetch_add_explicit((v112 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v64 & 1) == 0)
  {
    atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v65 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v65)
  {
    v65 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v66 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens);
  if (!v66)
  {
    v66 = sub_29ABC2BDC(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens);
  }

  v67 = *v66;
  if ((*v66 & 7) != 0)
  {
    if ((atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v67 &= 0xFFFFFFFFFFFFFFF8;
    }

    v68 = 1;
    v109 = 1;
    v110 = v67;
    if ((v67 & 7) != 0)
    {
      v68 = 0;
      if ((atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v110 &= 0xFFFFFFFFFFFFFFF8;
      }
    }
  }

  else
  {
    v68 = 1;
    v109 = 1;
    v110 = v67;
  }

  pxrInternal__aapl__pxrReserved__::HdBasisCurves::ConfigureRepr((v65 + 56), &v109);
  if ((v110 & 7) != 0)
  {
    atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v68 & 1) == 0)
  {
    atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v69 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v69)
  {
    v69 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v70 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens);
  if (!v70)
  {
    v70 = sub_29ABC2BDC(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens);
  }

  v71 = *v70;
  if ((*v70 & 7) == 0)
  {
    v107 = 2;
    v108 = v71;
LABEL_299:
    v72 = 1;
    goto LABEL_300;
  }

  if ((atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v71 &= 0xFFFFFFFFFFFFFFF8;
  }

  v107 = 2;
  v108 = v71;
  if ((v71 & 7) == 0)
  {
    goto LABEL_299;
  }

  v72 = 0;
  if ((atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v108 &= 0xFFFFFFFFFFFFFFF8;
  }

LABEL_300:
  pxrInternal__aapl__pxrReserved__::HdBasisCurves::ConfigureRepr((v69 + 64), &v107);
  if ((v108 & 7) != 0)
  {
    atomic_fetch_add_explicit((v108 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v72 & 1) == 0)
  {
    atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v73 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v73)
  {
    v73 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v74 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens);
  if (!v74)
  {
    v74 = sub_29ABC2BDC(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens);
  }

  v75 = *v74;
  if ((*v74 & 7) == 0)
  {
    v105 = 2;
    v106 = v75;
LABEL_315:
    v76 = 1;
    goto LABEL_316;
  }

  if ((atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v75 &= 0xFFFFFFFFFFFFFFF8;
  }

  v105 = 2;
  v106 = v75;
  if ((v75 & 7) == 0)
  {
    goto LABEL_315;
  }

  v76 = 0;
  if ((atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v106 &= 0xFFFFFFFFFFFFFFF8;
  }

LABEL_316:
  pxrInternal__aapl__pxrReserved__::HdBasisCurves::ConfigureRepr((v73 + 32), &v105);
  if ((v106 & 7) != 0)
  {
    atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v76 & 1) == 0)
  {
    atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v77 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v77)
  {
    v77 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v78 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens);
  if (!v78)
  {
    v78 = sub_29ABC2BDC(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens);
  }

  v79 = *v78;
  if ((*v78 & 7) != 0)
  {
    if ((atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v79 &= 0xFFFFFFFFFFFFFFF8;
    }

    v80 = 1;
    v103 = 1;
    v104 = v79;
    if ((v79 & 7) != 0)
    {
      v80 = 0;
      if ((atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v104 &= 0xFFFFFFFFFFFFFFF8;
      }
    }
  }

  else
  {
    v80 = 1;
    v103 = 1;
    v104 = v79;
  }

  pxrInternal__aapl__pxrReserved__::HdBasisCurves::ConfigureRepr((v77 + 40), &v103);
  if ((v104 & 7) != 0)
  {
    atomic_fetch_add_explicit((v104 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v80 & 1) == 0)
  {
    atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v81 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v81)
  {
    v81 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v82 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens);
  if (!v82)
  {
    v82 = sub_29ABC2BDC(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens);
  }

  v83 = *v82;
  if ((*v82 & 7) == 0)
  {
    v101 = 2;
    v102 = v83;
LABEL_346:
    v84 = 1;
    goto LABEL_347;
  }

  if ((atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v83 &= 0xFFFFFFFFFFFFFFF8;
  }

  v101 = 2;
  v102 = v83;
  if ((v83 & 7) == 0)
  {
    goto LABEL_346;
  }

  v84 = 0;
  if ((atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v102 &= 0xFFFFFFFFFFFFFFF8;
  }

LABEL_347:
  pxrInternal__aapl__pxrReserved__::HdBasisCurves::ConfigureRepr((v81 + 48), &v101);
  if ((v102 & 7) != 0)
  {
    atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v84 & 1) == 0)
  {
    atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v85 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v85)
  {
    v85 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v86 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens);
  if (!v86)
  {
    v86 = sub_29ABC2BDC(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens);
  }

  v87 = *v86;
  if ((*v86 & 7) == 0)
  {
    v99 = 3;
    v100 = v87;
LABEL_362:
    v88 = 1;
    goto LABEL_363;
  }

  if ((atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v87 &= 0xFFFFFFFFFFFFFFF8;
  }

  v99 = 3;
  v100 = v87;
  if ((v87 & 7) == 0)
  {
    goto LABEL_362;
  }

  v88 = 0;
  if ((atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v100 = v87 & 0xFFFFFFFFFFFFFFF8;
  }

LABEL_363:
  pxrInternal__aapl__pxrReserved__::HdBasisCurves::ConfigureRepr((v85 + 16), &v99);
  if ((v100 & 7) != 0)
  {
    atomic_fetch_add_explicit((v100 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v88 & 1) == 0)
  {
    atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v89 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v89)
  {
    v89 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v98 = 1;
  pxrInternal__aapl__pxrReserved__::HdPoints::ConfigureRepr((v89 + 8), &v98);
  v90 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v90)
  {
    v90 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v98 = 1;
  pxrInternal__aapl__pxrReserved__::HdPoints::ConfigureRepr((v90 + 24), &v98);
  v91 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v91)
  {
    v91 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v98 = 1;
  pxrInternal__aapl__pxrReserved__::HdPoints::ConfigureRepr((v91 + 56), &v98);
  v92 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v92)
  {
    v92 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v98 = 1;
  pxrInternal__aapl__pxrReserved__::HdPoints::ConfigureRepr((v92 + 64), &v98);
  v93 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v93)
  {
    v93 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v98 = 1;
  pxrInternal__aapl__pxrReserved__::HdPoints::ConfigureRepr((v93 + 32), &v98);
  v94 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v94)
  {
    v94 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v98 = 1;
  pxrInternal__aapl__pxrReserved__::HdPoints::ConfigureRepr((v94 + 40), &v98);
  v95 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v95)
  {
    v95 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v98 = 1;
  pxrInternal__aapl__pxrReserved__::HdPoints::ConfigureRepr((v95 + 48), &v98);
  v96 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v96)
  {
    v96 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v98 = 1;
  return pxrInternal__aapl__pxrReserved__::HdPoints::ConfigureRepr((v96 + 16), &v98);
}

void sub_29AC8962C(_Unwind_Exception *a1)
{
  v4 = *(v2 + 40);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v3 & 1) == 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_29AC8994C(pxrInternal__aapl__pxrReserved__::HdRetainedSceneIndex **a1@<X8>)
{
  v2 = operator new(0x98uLL);
  pxrInternal__aapl__pxrReserved__::HdRetainedSceneIndex::HdRetainedSceneIndex(v2);
  *v2 = &unk_2A207C0D8;
  *a1 = v2;
}

void sub_29AC899B0(pxrInternal__aapl__pxrReserved__::HdMergingSceneIndex **a1@<X8>)
{
  v2 = operator new(0xA0uLL);
  pxrInternal__aapl__pxrReserved__::HdMergingSceneIndex::HdMergingSceneIndex(v2);
  *a1 = v2;
}

uint64_t sub_29AC899F8(uint64_t *a1)
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

void **sub_29AC89B2C(void **a1)
{
  v3 = a1 + 7;
  sub_29A1E234C(&v3);
  v3 = a1 + 4;
  sub_29AC1C990(&v3);
  v3 = a1 + 1;
  sub_29A124AB0(&v3);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdRenderIndex::~HdRenderIndex(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this)
{
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::Clear(this);
  if (sub_29AC87880())
  {
    sub_29AC89EAC(this);
  }

  pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::DestroyFallbackPrims();
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdRenderIndex::Clear(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this)
{
  v8[17] = *MEMORY[0x29EDCA608];
  for (i = *(this + 24); i; i = *i)
  {
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::TaskRemoved((this + 440), (i + 2));
  }

  sub_29AC90DE8(this + 176);
  if ((sub_29AC87880() & 1) == 0)
  {

    pxrInternal__aapl__pxrReserved__::HdRenderIndex::_Clear(this);
  }

  v3 = sub_29AC8A638(this);
  v4 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v3);
  sub_29A1E21F4(&v6, v4);
  sub_29A1E2240(&v7, v4 + 1);
  v8[16] = 0x1000000001;
  sub_29A1E21F4(v8, &v6);
  sub_29A1E2240(v8 + 1, &v7);
  (*(*v3 + 48))(v3, v8);
  sub_29AC26348(v8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  return sub_29A1DE3A4(&v6);
}

void sub_29AC89E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderIndex::New(uint64_t a1)
{
  if (a1)
  {
    v1 = operator new(0xF50uLL);
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::HdRenderIndex(v1);
  }

  v3[0] = "hd/renderIndex.cpp";
  v3[1] = "New";
  v3[2] = 242;
  v3[3] = "static HdRenderIndex *pxrInternal__aapl__pxrReserved__::HdRenderIndex::New(HdRenderDelegate *, const HdDriverVector &, const std::string &, const std::string &)";
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Null Render Delegate provided to create render index");
  return 0;
}

void pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertSceneIndex(uint64_t a1, void *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  if (sub_29AC87880())
  {
    v7[0] = *a2;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
  }

  v7[0] = "hd/renderIndex.cpp";
  v7[1] = "InsertSceneIndex";
  v7[2] = 256;
  v7[3] = "void pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertSceneIndex(const HdSceneIndexBaseRefPtr &, const SdfPath &, BOOL)";
  v8 = 0;
  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v7, "Unable to add scene index at prefix %s because emulation is off.", v6, Text);
}

uint64_t sub_29AC8A128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x98uLL);
  result = pxrInternal__aapl__pxrReserved__::HdPrefixingSceneIndex::HdPrefixingSceneIndex(v6, a1, a2);
  *a3 = v6;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdRenderIndex::RemoveSceneIndex(uint64_t a1, void *a2)
{
  if (sub_29AC87880())
  {
    v4 = sub_29AC899F8((a1 + 24));
    (*(*v4 + 40))(&v7);
    if (v7 != v8)
    {
      v5 = v7;
      while (*a2 != *v5)
      {
        if (++v5 == v8)
        {
          if (*v7)
          {
          }

          pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdPrefixingSceneIndex>::_AddRef();
        }
      }

      v6 = sub_29AC899F8((a1 + 24));
      pxrInternal__aapl__pxrReserved__::HdMergingSceneIndex::RemoveInputScene(v6, v5);
    }

    v9 = &v7;
    sub_29AC262C4(&v9);
  }
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdRenderIndex::RemoveSubtree(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a3)
{
  v10[17] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveTaskSubtree(this, a2, a3);
  if (!sub_29AC87880())
  {

    pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveSubtree(this, a2, a3);
  }

  v6 = sub_29AC8A638(this);
  sub_29A1E21F4(&v8, a2);
  sub_29A1E2240(&v9, a2 + 1);
  v10[16] = 0x1000000001;
  sub_29A1E21F4(v10, &v8);
  sub_29A1E2240(v10 + 1, &v9);
  (*(*v6 + 48))(v6, v10);
  sub_29AC26348(v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
  return sub_29A1DE3A4(&v8);
}

void sub_29AC8A540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveTaskSubtree(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a3)
{
  result = sub_29A0ECEEC(&v8, "hd", "void pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveTaskSubtree(const SdfPath &, HdSceneDelegate *)");
  for (i = *(this + 24); i; i = *i)
  {
    while (!a3 || *(i + 24) == a3)
    {
      result = pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((i + 16), a2);
      if (!result)
      {
        break;
      }

      pxrInternal__aapl__pxrReserved__::HdChangeTracker::TaskRemoved((this + 440), (i + 16));
      result = sub_29AC91228(this + 22, i);
      i = result;
      if (!result)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:
  if (v8)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v9, v8);
  }

  return result;
}

uint64_t sub_29AC8A638(uint64_t *a1)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveRprimSubtree(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a3)
{
  v45 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v42, "hd", "void pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveRprimSubtree(const SdfPath &, HdSceneDelegate *)");
  sub_29AC1C43C(v44);
  Ids = pxrInternal__aapl__pxrReserved__::Hd_SortedIds::GetIds((this + 88));
  if (pxrInternal__aapl__pxrReserved__::HdPrimGather::SubtreeAsRange(v44, Ids, a2, &v40, &v41))
  {
    v7 = v40;
    if (v40 <= v41)
    {
      v9 = 0;
      v8 = 0;
      v35 = 0;
      v36 = Ids;
      v10 = 8 * v40;
      v37 = v40;
      do
      {
        v11 = *Ids;
        v12 = sub_29A2F4F50(this + 6, (*Ids + v10));
        v13 = v12;
        if (v12)
        {
          if (v12[3] == a3)
          {
            v16 = v12[4];
            sub_29A1E21F4(v38, (v16 + 8));
            sub_29A1E2240(v38 + 1, (v16 + 12));
            if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(v38))
            {
              pxrInternal__aapl__pxrReserved__::HdChangeTracker::RemoveInstancerRprimDependency((this + 440), v38, (v11 + v10));
            }

            pxrInternal__aapl__pxrReserved__::HdChangeTracker::RprimRemoved((this + 440), (v11 + v10));
            v17 = v13[4];
            v18 = (*(**(this + 467) + 48))(*(this + 467));
            (*(*v17 + 32))(v17, v18);
            (*(**(this + 467) + 216))(*(this + 467), v13[4]);
            v13[4] = 0;
            sub_29AC90D8C(this + 6, v13);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v38 + 1);
            Ids = v36;
            sub_29A1DE3A4(v38);
          }

          else
          {
            if (v37 < v7)
            {
              v14 = v7 - 1;
              if (v8 >= v35)
              {
                v19 = v8 - v9;
                v20 = (v8 - v9) >> 4;
                v21 = v20 + 1;
                if ((v20 + 1) >> 60)
                {
                  sub_29A00C9A4();
                }

                v22 = a3;
                if ((v35 - v9) >> 3 > v21)
                {
                  v21 = (v35 - v9) >> 3;
                }

                if ((v35 - v9) >= 0x7FFFFFFFFFFFFFF0)
                {
                  v23 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v23 = v21;
                }

                if (v23)
                {
                  if (v23 >> 60)
                  {
                    sub_29A00C8B8();
                  }

                  v24 = operator new(16 * v23);
                }

                else
                {
                  v24 = 0;
                }

                v25 = &v24[16 * v20];
                v35 = &v24[16 * v23];
                *v25 = v37;
                *(v25 + 1) = v14;
                v8 = v25 + 16;
                memcpy(v24, v9, v19);
                if (v9)
                {
                  operator delete(v9);
                }

                v9 = v24;
                a3 = v22;
              }

              else
              {
                *v8 = v37;
                *(v8 + 1) = v14;
                v8 += 16;
              }

              Ids = v36;
            }

            v37 = v7 + 1;
          }
        }

        else
        {
          v38[0] = "hd/renderIndex.cpp";
          v38[1] = "_RemoveRprimSubtree";
          v38[2] = 498;
          v38[3] = "void pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveRprimSubtree(const SdfPath &, HdSceneDelegate *)";
          v39 = 0;
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v11 + v10));
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v38, 1, "Rprim in id list not in info map: %s", Text);
        }

        ++v7;
        v26 = v41;
        v10 += 8;
      }

      while (v7 <= v41);
      if (v37 <= v41)
      {
        if (v8 >= v35)
        {
          v27 = v8 - v9;
          v28 = (v8 - v9) >> 4;
          v29 = v28 + 1;
          if ((v28 + 1) >> 60)
          {
            sub_29A00C9A4();
          }

          if ((v35 - v9) >> 3 > v29)
          {
            v29 = (v35 - v9) >> 3;
          }

          if ((v35 - v9) >= 0x7FFFFFFFFFFFFFF0)
          {
            v29 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (v29)
          {
            if (v29 >> 60)
            {
              sub_29A00C8B8();
            }

            v30 = operator new(16 * v29);
          }

          else
          {
            v30 = 0;
          }

          v31 = &v30[16 * v28];
          *v31 = v37;
          *(v31 + 1) = v26;
          v8 = v31 + 16;
          memcpy(v30, v9, v27);
          if (v9)
          {
            operator delete(v9);
          }

          v9 = v30;
        }

        else
        {
          *v8 = v37;
          *(v8 + 1) = v26;
          v8 += 16;
        }
      }
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    while (v8 != v9)
    {
      v32 = *(v8 - 2);
      v33 = *(v8 - 1);
      v8 -= 16;
      pxrInternal__aapl__pxrReserved__::Hd_SortedIds::RemoveRange((this + 88), v32, v33);
    }

    if (v9)
    {
      operator delete(v9);
    }
  }

  result = sub_29AC1C940(v44);
  if (v42)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v43, v42);
  }

  return result;
}

void sub_29AC8AB90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, char a23)
{
  if (v23)
  {
    operator delete(v23);
  }

  sub_29AC1C940(&a23);
  sub_29A0E9CEC(&a21);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveInstancerSubtree(int32x2_t *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a3)
{
  result = sub_29A0ECEEC(&v13, "hd", "void pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveInstancerSubtree(const SdfPath &, HdSceneDelegate *)");
  v7 = this[464];
  while (v7)
  {
    v8 = v7[3];
    result = pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((v7 + 2), a2);
    if (result && (!a3 || *(v8 + 8) == a3))
    {
      v9 = v7[3];
      if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((v9 + 24)))
      {
        pxrInternal__aapl__pxrReserved__::HdChangeTracker::RemoveInstancerInstancerDependency(&this[55], (v9 + 24), (v7 + 2));
      }

      *&v10 = pxrInternal__aapl__pxrReserved__::HdChangeTracker::InstancerRemoved(this + 55, (v7 + 2));
      v11 = (*(**&this[467] + 48))(*&this[467], v10);
      (*(*v9 + 24))(v9, v11);
      v12 = *v7;
      sub_29AC92DCC(&this[462], v7);
      result = (*(**&this[467] + 200))(*&this[467], v9);
      v7 = v12;
    }

    else
    {
      v7 = *v7;
    }
  }

  if (v13)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertRprim(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4)
{
  sub_29A0ECEEC(&v9, "hd", "void pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertRprim(const TfToken &, HdSceneDelegate *, const SdfPath &)");
  if (sub_29AC87880())
  {
    v8 = sub_29AC8A638(this);
    pxrInternal__aapl__pxrReserved__::HdLegacyPrimSceneIndex::AddLegacyPrim(v8, a4, a2, a3);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertRprim(this, a2, a3, a4);
  }

  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v10, v9);
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertRprim(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4)
{
  sub_29A0ECEEC(&v15, "hd", "void pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertRprim(const TfToken &, HdSceneDelegate *, const SdfPath &)");
  if (!sub_29A2F4F50(this + 6, a4))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a4, (a3 + 16)))
    {
      v8 = (*(**(this + 467) + 208))(*(this + 467), a2, a4);
      if (v8)
      {
        pxrInternal__aapl__pxrReserved__::Hd_SortedIds::Insert((this + 88), a4);
        v9 = (*(*v8 + 16))(v8);
        pxrInternal__aapl__pxrReserved__::HdChangeTracker::RprimInserted((this + 440), a4, v9 | 0x80000);
        pxrInternal__aapl__pxrReserved__::HdRenderIndex::_AllocatePrimId(this, v8);
        v13[0] = a4;
        v10 = sub_29AC90A70(this + 48, a4, &unk_29B4D6118, v13);
        v10[3] = a3;
        v10[4] = v8;
      }
    }

    else
    {
      v13[0] = "hd/renderIndex.cpp";
      v13[1] = "_InsertRprim";
      v13[2] = 391;
      v13[3] = "void pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertRprim(const TfToken &, HdSceneDelegate *, const SdfPath &)";
      v14 = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a3 + 16));
      v12 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a4);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 1, "Scene Delegate Id (%s) must prefix prim Id (%s)", Text, v12);
    }
  }

  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v16, v15);
  }
}

void sub_29AC8AFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::HdRenderIndex::_AllocatePrimId(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this, pxrInternal__aapl__pxrReserved__::HdRprim *a2)
{
  v3 = this + 152;
  v4 = *(this + 20) - *(this + 19);
  if (v4 >= 0x7FFFFF9)
  {
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::_CompactPrimIds(this);
    v4 = *(this + 20) - *(this + 19);
    if (v4 >= 0x7FFFFF8)
    {
      v7[0] = "hd/renderIndex.cpp";
      v7[1] = "_AllocatePrimId";
      v7[2] = 1804;
      v7[3] = "void pxrInternal__aapl__pxrReserved__::HdRenderIndex::_AllocatePrimId(HdRprim *)";
      v8 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v7, "_rprimPrimIdMap.size() < maxId", 0);
      v4 = *(this + 20) - *(this + 19);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdRprim::SetPrimId(a2, v4 >> 3);
  return sub_29A1E28B4(v3, a2 + 94);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdRenderIndex::RemoveRprim(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (sub_29AC87880())
  {
    v4 = sub_29AC8A638(this);

    return pxrInternal__aapl__pxrReserved__::HdLegacyPrimSceneIndex::RemovePrim(v4, a2);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveRprim(this, a2);
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveRprim(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = sub_29A2F4F50(this + 6, a2);
  if (result)
  {
    v5 = result;
    v6 = result[4];
    sub_29A1E21F4(&v9, (v6 + 8));
    sub_29A1E2240(&v10, (v6 + 12));
    pxrInternal__aapl__pxrReserved__::Hd_SortedIds::Remove((this + 88), a2);
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v9))
    {
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::RemoveInstancerRprimDependency((this + 440), &v9, a2);
    }

    pxrInternal__aapl__pxrReserved__::HdChangeTracker::RprimRemoved((this + 440), a2);
    v7 = v5[4];
    v8 = (*(**(this + 467) + 48))(*(this + 467));
    (*(*v7 + 32))(v7, v8);
    (*(**(this + 467) + 216))(*(this + 467), v5[4]);
    v5[4] = 0;
    sub_29AC90D8C(this + 6, v5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
    return sub_29A1DE3A4(&v9);
  }

  return result;
}

void sub_29AC8B27C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdRenderIndex::_Clear(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this)
{
  for (i = *(this + 8); i; i = *i)
  {
    v3 = i[4];
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((v3 + 8)))
    {
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::RemoveInstancerRprimDependency((this + 440), (v3 + 8), (i + 2));
    }

    pxrInternal__aapl__pxrReserved__::HdChangeTracker::RprimRemoved((this + 440), (i + 2));
    v4 = i[4];
    v5 = (*(**(this + 467) + 48))(*(this + 467));
    (*(*v4 + 32))(v4, v5);
    (*(**(this + 467) + 216))(*(this + 467), i[4]);
  }

  sub_29AC90E44(this + 48);
  pxrInternal__aapl__pxrReserved__::Hd_SortedIds::Clear((this + 88));
  v7 = *(this + 19);
  for (j = *(this + 20); j != v7; sub_29A1E230C(this + 152, j))
  {
    j -= 2;
  }

  *(this + 20) = v7;
  pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::Clear();
}

void pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertSceneDelegateTask(uint64_t *a1, unint64_t a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, __int128 *a4)
{
  sub_29A0ECEEC(&v15, "hd", "void pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertSceneDelegateTask(HdSceneDelegate *const, const SdfPath &, HdLegacyTaskFactorySharedPtr)");
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v12 + 1);
  v8 = *a3;
  v9 = v12;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12 + 1);
  sub_29A1DE3A4(&v12);
  if (v8 == v9)
  {
    goto LABEL_7;
  }

  if (!sub_29AC87880())
  {
    (***a4)(&v12);
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertTask(a1, a2, a3, &v12);
    v11 = v13;
    if (!v13)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = sub_29AC8A638(a1);
  v14 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::HdLegacyPrimSceneIndex::AddLegacyTask(v10, a3, a2, &v14);
  v11 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
LABEL_6:
    sub_29A014BEC(v11);
  }

LABEL_7:
  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v16, v15);
  }
}

void sub_29AC8B550(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a3)
  {
    sub_29A014BEC(a3);
  }

  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertTask(uint64_t a1, unint64_t a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, unint64_t *a4)
{
  sub_29A0ECEEC(&v13, "hd", "void pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertTask(HdSceneDelegate *, const SdfPath &, const HdTaskSharedPtr &)");
  v8 = (*(**a4 + 48))();
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::TaskInserted((a1 + 440), a3, v8);
  v10 = *a4;
  v9 = a4[1];
  v11.n128_u64[0] = a2;
  v11.n128_u64[1] = v10;
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AC90EFC(a1 + 176, a3, a3, &v11);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
  }
}

void sub_29AC8B670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    sub_29A014BEC(a5);
  }

  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC8B698(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

void *pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetTask(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = sub_29A328A44(this + 22, a2);
  if (v2)
  {
    return v2 + 4;
  }

  if (atomic_load_explicit(&qword_2A174B098, memory_order_acquire))
  {
    return &unk_2A174B0A0;
  }

  sub_29B2C68B0(&v4);
  return v4;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdRenderIndex::RemoveTask(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (sub_29AC87880())
  {
    v4 = sub_29AC8A638(this);

    return pxrInternal__aapl__pxrReserved__::HdLegacyPrimSceneIndex::RemovePrim(v4, a2);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveTask(this, a2);
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveTask(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29A0ECEEC(&v6, "hd", "void pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveTask(const SdfPath &)");
  result = sub_29A2F4F50(this + 22, a2);
  v5 = result;
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::TaskRemoved((this + 440), a2);
    result = sub_29AC91228(this + 22, v5);
  }

  if (v6)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertSprim(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4)
{
  sub_29A0ECEEC(&v9, "hd", "void pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertSprim(const TfToken &, HdSceneDelegate *, const SdfPath &)");
  if (!sub_29AC87880())
  {
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertSprim(this, a2, a3, a4);
  }

  v8 = sub_29AC8A638(this);
  pxrInternal__aapl__pxrReserved__::HdLegacyPrimSceneIndex::AddLegacyPrim(v8, a4, a2, a3);
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v10, v9);
  }
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdRenderIndex::RemoveSprim(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  if (!sub_29AC87880())
  {

    pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::RemovePrim();
  }

  v5 = sub_29AC8A638(this);

  return pxrInternal__aapl__pxrReserved__::HdLegacyPrimSceneIndex::RemovePrim(v5, a3);
}

void pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetSprimSubtree(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdSprim>::GetPrimSubtree();
}

void sub_29AC8BA54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertBprim(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4)
{
  sub_29A0ECEEC(&v9, "hd", "void pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertBprim(const TfToken &, HdSceneDelegate *, const SdfPath &)");
  if (!sub_29AC87880())
  {
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertBprim(this, a2, a3, a4);
  }

  v8 = sub_29AC8A638(this);
  pxrInternal__aapl__pxrReserved__::HdLegacyPrimSceneIndex::AddLegacyPrim(v8, a4, a2, a3);
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v10, v9);
  }
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdRenderIndex::RemoveBprim(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  if (!sub_29AC87880())
  {

    pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::RemovePrim();
  }

  v5 = sub_29AC8A638(this);

  return pxrInternal__aapl__pxrReserved__::HdLegacyPrimSceneIndex::RemovePrim(v5, a3);
}

void pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetBprimSubtree(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::GetPrimSubtree();
}

void sub_29AC8BCA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

void *sub_29AC8BCF8(void *result)
{
  if (*result)
  {
    v1 = result;
    v2 = *(result + 2);
    if (!v2)
    {
      v3 = sub_29AC8EC5C(result);
      result = pxrInternal__aapl__pxrReserved__::HdNoticeBatchingSceneIndex::SetBatchingEnabled(v3, 1);
      v2 = *(v1 + 2);
    }

    *(v1 + 2) = v2 + 1;
  }

  return result;
}

void sub_29AC8BD50(uint64_t a1)
{
  if (*a1)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      v2 = v1 - 1;
      *(a1 + 8) = v2;
      if (!v2)
      {
        v3 = sub_29AC8EC5C(a1);

        pxrInternal__aapl__pxrReserved__::HdNoticeBatchingSceneIndex::SetBatchingEnabled(v3, 0);
      }
    }

    else
    {
      v6[0] = "hd/renderIndex.cpp";
      v6[1] = "EndBatching";
      v6[2] = 121;
      v6[3] = "void pxrInternal__aapl__pxrReserved__::HdRenderIndex::_NoticeBatchingContext::EndBatching()";
      v7 = 0;
      v4 = *(a1 + 16) & 0xFFFFFFFFFFFFFFF8;
      if (v4)
      {
        v5 = (v4 + 16);
        if (*(v4 + 39) < 0)
        {
          v5 = *v5;
        }
      }

      else
      {
        v5 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 1, "Imbalanced batch begin/end calls for %s.\n", v5);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetInstanceName(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this@<X0>, const char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = (this + 3768);
  if ((*(this + 3791) & 0x80000000) == 0)
  {
    if (*(this + 3791))
    {
      *a4 = *v5;
      *(a4 + 16) = *(this + 473);
      return;
    }

    goto LABEL_8;
  }

  a3 = *(this + 472);
  if (!a3)
  {
LABEL_8:
    pxrInternal__aapl__pxrReserved__::ArchStringPrintf("%p", a2, a3, this);
    return;
  }

  v6 = *v5;

  sub_29A008D14(a4, v6, a3);
}

void pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetDrawItems(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v38[18] = *MEMORY[0x29EDCA608];
  v28 = 0;
  v29 = 0;
  v30 = 0;
  Ids = pxrInternal__aapl__pxrReserved__::Hd_SortedIds::GetIds((a1 + 88));
  RootPaths = pxrInternal__aapl__pxrReserved__::HdRprimCollection::GetRootPaths(a2);
  ExcludePaths = pxrInternal__aapl__pxrReserved__::HdRprimCollection::GetExcludePaths(a2);
  v27[0] = a3;
  v27[1] = a1;
  v11 = sub_29AC1C43C(v38);
  pxrInternal__aapl__pxrReserved__::HdPrimGather::PredicatedFilter(v11, Ids, RootPaths, ExcludePaths, sub_29AC8C0C4, v27, &v28);
  sub_29AC91310(v35);
  v20 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::_AppendDrawItems;
  v21 = 0;
  v22 = a1;
  v23 = &v28;
  v24 = a2;
  v25 = v35;
  sub_29AC916E4(((v29 - v28) >> 3), &v20, 1);
  v20 = v35;
  v21 = &v36;
  v22 = 0;
  v23 = 0;
  v12 = v37[2];
  __dmb(0xBu);
  v13 = tbb::internal::concurrent_vector_base_v3::internal_capacity(v37);
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v24 = &v36;
  v25 = v14;
  v26 = 0;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  sub_29AC6C67C(&v20, v18);
  sub_29AC6C704(&v20, v16);
  v33[0] = v18[0];
  v33[1] = v18[1];
  v34 = v19;
  v31[0] = v16[0];
  v31[1] = v16[1];
  v32 = v17;
  sub_29AC91E70(a4, 0, v33, v31);
  sub_29AC9158C(v35);
  v15 = sub_29AC1C940(v38);
  v38[0] = &v28;
  sub_29A1E234C(v15);
}

void sub_29AC8C054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v45 = *v42;
  if (*v42)
  {
    *(v42 + 8) = v45;
    operator delete(v45);
  }

  sub_29AC9158C(&a42);
  sub_29AC1C940(v43 - 216);
  *(v43 - 216) = &a28;
  sub_29A1E234C((v43 - 216));
  _Unwind_Resume(a1);
}

BOOL sub_29AC8C0C4(const pxrInternal__aapl__pxrReserved__::SdfPath *a1, pxrInternal__aapl__pxrReserved__::HdRenderIndex **a2)
{
  v2 = *a2;
  if (**a2 == *(*a2 + 1))
  {
    return 1;
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderTag(a2[1], a1, &v11);
  v3 = *v2;
  v4 = *(v2 + 1) - *v2;
  if (v4)
  {
    v5 = v4 >> 3;
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    if ((v11 ^ *v3) >= 8)
    {
      v8 = 1;
      do
      {
        v9 = v8;
        if (v6 == v8)
        {
          break;
        }

        v10 = v11 ^ v3[v8++];
      }

      while (v10 > 7);
      result = v9 < v5;
    }

    else
    {
      result = 1;
    }
  }

  else
  {
    result = 0;
  }

  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdRenderIndex::_AppendDrawItems(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, pxrInternal__aapl__pxrReserved__::HdRprimCollection *this, atomic_ullong *a6)
{
  v27 = *(this + 40);
  MaterialTag = pxrInternal__aapl__pxrReserved__::HdRprimCollection::GetMaterialTag(this);
  LOBYTE(v30) = 0;
  v12 = sub_29A0ED084(a6, &v30);
  if (*MaterialTag)
  {
    if (a3 < a4)
    {
      do
      {
        v13 = sub_29A2F4F50((a1 + 48), (*a2 + 8 * a3));
        if (v13)
        {
          v14 = v13[4];
          sub_29AC8EB8C((v14 + 408), (this + 16), &v30, v27);
          for (i = 0; i != 3; ++i)
          {
            if (pxrInternal__aapl__pxrReserved__::HdReprSelector::IsActiveRepr(&v30, i))
            {
              v16 = pxrInternal__aapl__pxrReserved__::HdReprSelector::operator[](&v30, i);
              DrawItems = pxrInternal__aapl__pxrReserved__::HdRprim::GetDrawItems(v14, v16);
              v19 = *DrawItems;
              v18 = DrawItems[1];
              while (v19 != v18)
              {
                if ((*MaterialTag ^ *(*v19 + 32)) <= 7)
                {
                  v29 = *v19;
                  sub_29A0A71C8(v12, &v29);
                }

                v19 += 8;
              }
            }
          }

          if ((v32 & 7) != 0)
          {
            atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v31 & 7) != 0)
          {
            atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v30 & 7) != 0)
          {
            atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        ++a3;
      }

      while (a3 != a4);
    }
  }

  else if (a3 < a4)
  {
    do
    {
      v20 = sub_29A2F4F50((a1 + 48), (*a2 + 8 * a3));
      if (v20)
      {
        v21 = v20[4];
        sub_29AC8EB8C((v21 + 408), (this + 16), &v30, v27);
        for (j = 0; j != 3; ++j)
        {
          if (pxrInternal__aapl__pxrReserved__::HdReprSelector::IsActiveRepr(&v30, j))
          {
            v23 = pxrInternal__aapl__pxrReserved__::HdReprSelector::operator[](&v30, j);
            v24 = pxrInternal__aapl__pxrReserved__::HdRprim::GetDrawItems(v21, v23);
            v25 = *v24;
            v26 = v24[1];
            while (v25 != v26)
            {
              v29 = *v25;
              sub_29A0A71C8(v12, &v29);
              ++v25;
            }
          }
        }

        if ((v32 & 7) != 0)
        {
          atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v31 & 7) != 0)
        {
          atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v30 & 7) != 0)
        {
          atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      ++a3;
    }

    while (a3 != a4);
  }
}

void sub_29AC8C404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderTag@<X0>(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, atomic_uint **a3@<X8>)
{
  result = sub_29A328A44(this + 6, a2);
  if (result)
  {
    v5 = *(result[4] + 432);
  }

  else
  {
    result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
    if (!result)
    {
      result = sub_29AC2917C(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
    }

    v5 = result[2];
  }

  *a3 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a3 = v6;
    }
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdRenderIndex::UpdateRenderTag@<X0>(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, int a3@<W2>, atomic_uint **a4@<X8>)
{
  result = sub_29A2F4F50(this + 6, a2);
  if (result)
  {
    v9 = result;
    if ((a3 & 0x80000) != 0)
    {
      v11 = result[3];
      v10 = result[4];
      v12 = (*(**(this + 467) + 48))(*(this + 467));
      (*(*v10 + 48))(v10, v11, v12);
      result = pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimClean((this + 440), a2, a3 & 0xFFF7FFFF);
    }

    v13 = *(v9[4] + 432);
  }

  else
  {
    result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
    if (!result)
    {
      result = sub_29AC2917C(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
    }

    v13 = result[2];
  }

  *a4 = v13;
  if ((v13 & 7) != 0)
  {
    v14 = (v13 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a4 = v14;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRprimSubtree@<X0>(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  v9 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_29AC1C43C(v8);
  Ids = pxrInternal__aapl__pxrReserved__::Hd_SortedIds::GetIds((this + 88));
  pxrInternal__aapl__pxrReserved__::HdPrimGather::Subtree(v8, Ids, a2, a3);
  return sub_29AC1C940(v8);
}

void sub_29AC8C698(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC8C6C8(uint64_t a1, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AC923F0(a1, a2);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(*(a1 + 8), a2);
    result = v3 + 104;
    *(a1 + 8) = v3 + 104;
  }

  *(a1 + 8) = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdRenderIndex::SyncAll(uint64_t a1)
{
  if (sub_29AC87880())
  {
    (*(**(a1 + 3736) + 360))(*(a1 + 3736));
  }

  (*(**(a1 + 3736) + 48))(*(a1 + 3736));
  (*(**(a1 + 3736) + 48))(*(a1 + 3736));
  pxrInternal__aapl__pxrReserved__::Hd_PrimTypeIndex<pxrInternal__aapl__pxrReserved__::HdBprim>::SyncPrims();
}

uint64_t sub_29AC8DC54(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a2 >= a3)
  {
    return result;
  }

  v4 = a2;
  v5 = result;
  do
  {
    v6 = v5[1][v4];
    v7 = (*v5)[1];
    if (!*&v7)
    {
      goto LABEL_24;
    }

    v8 = bswap64(0x9E3779B97F4A7C55 * *&v6);
    v9 = vcnt_s8(v7);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = v8;
      if (v8 >= *&v7)
      {
        v10 = v8 % *&v7;
      }
    }

    else
    {
      v10 = v8 & (*&v7 - 1);
    }

    v11 = *(**v5 + 8 * v10);
    if (!v11 || (v12 = *v11) == 0)
    {
      v7 = 0;
      goto LABEL_24;
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == v8)
      {
        if (v12[2] == *&v6)
        {
          goto LABEL_22;
        }

        goto LABEL_18;
      }

      if (v9.u32[0] > 1uLL)
      {
        if (v13 >= *&v7)
        {
          v13 %= *&v7;
        }
      }

      else
      {
        v13 &= *&v7 - 1;
      }

      if (v13 != v10)
      {
        break;
      }

LABEL_18:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_22;
      }
    }

    v12 = 0;
LABEL_22:
    v7 = (v12 + 3);
    if (!v12)
    {
      v7 = 0;
    }

LABEL_24:
    result = (*(**&v6 + 16))(v6, *&v7 + 24);
    ++v4;
  }

  while (v4 != a3);
  return result;
}

uint64_t sub_29AC8DDA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_29AC90538(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *sub_29AC8DE04(void *a1)
{
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

void *pxrInternal__aapl__pxrReserved__::HdRenderIndex::_CompactPrimIds(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this)
{
  result = sub_29A38B6A4(this + 19, *(this + 9));
  v3 = *(this + 8);
  if (v3)
  {
    v4 = 0;
    v5 = 4;
    do
    {
      pxrInternal__aapl__pxrReserved__::HdRprim::SetPrimId(v3[4], v4);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty((this + 440), (v3 + 2), 4);
      v6 = (*(this + 19) + v5);
      sub_29A2258F0(v6 - 1, v3 + 4);
      result = sub_29A225948(v6, v3 + 5);
      v3 = *v3;
      ++v4;
      v5 += 8;
    }

    while (v3);
  }

  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRprimPathFromPrimId@<X0>(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  v3 = *(this + 19);
  if (a2 >= ((*(this + 20) - v3) >> 3))
  {
    *a3 = 0;
    v7 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3) + 1;

    return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v7);
  }

  else
  {
    v4 = (v3 + 8 * a2);
    v5 = sub_29A1E21F4(a3, v4) + 1;

    return sub_29A1E2240(v5, v4 + 1);
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertInstancer(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  sub_29A0ECEEC(&v8, "hd", "void pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertInstancer(HdSceneDelegate *, const SdfPath &)");
  if (sub_29AC87880())
  {
    v6 = sub_29AC8A638(this);
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v7)
    {
      v7 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdLegacyPrimSceneIndex::AddLegacyPrim(v6, a3, (v7 + 168), a2);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertInstancer(this, a2, a3);
  }

  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v9, v8);
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertInstancer(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  sub_29A0ECEEC(&v12, "hd", "void pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertInstancer(HdSceneDelegate *, const SdfPath &)");
  if (!sub_29A2F4F50(this + 462, a3))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a3, (a2 + 16)))
    {
      v6 = (*(**(this + 467) + 192))(*(this + 467), a2, a3);
      if (v6)
      {
        v10[0] = a3;
        sub_29AC92B28(this + 3696, a3, &unk_29B4D6118, v10)[3] = v6;
        v7 = (*(*v6 + 32))(v6);
        pxrInternal__aapl__pxrReserved__::HdChangeTracker::InstancerInserted(this + 55, a3, v7);
      }
    }

    else
    {
      v10[0] = "hd/renderIndex.cpp";
      v10[1] = "_InsertInstancer";
      v10[2] = 1852;
      v10[3] = "void pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertInstancer(HdSceneDelegate *, const SdfPath &)";
      v11 = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a2 + 16));
      v9 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v10, 1, "Scene Delegate Id (%s) must prefix prim Id (%s)", Text, v9);
    }
  }

  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }
}

void sub_29AC8E1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HdRenderIndex::RemoveInstancer(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v10[17] = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v6, "hd", "void pxrInternal__aapl__pxrReserved__::HdRenderIndex::RemoveInstancer(const SdfPath &)");
  if (sub_29AC87880())
  {
    v4 = sub_29AC8A638(this);
    sub_29A1E21F4(&v8, a2);
    sub_29A1E2240(&v9, a2 + 1);
    v10[16] = 0x1000000001;
    sub_29A1E21F4(v10, &v8);
    sub_29A1E2240(v10 + 1, &v9);
    (*(*v4 + 48))(v4, v10);
    sub_29AC26348(v10);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9);
    result = sub_29A1DE3A4(&v8);
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveInstancer(this, a2);
  }

  if (v6)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return result;
}

void sub_29AC8E328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdRenderIndex::_RemoveInstancer(int32x2_t *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = sub_29A2F4F50(&this[462], a2);
  if (result)
  {
    v5 = result;
    v6 = result[3];
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((v6 + 24)))
    {
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::RemoveInstancerInstancerDependency(&this[55], (v6 + 24), a2);
    }

    *&v7 = pxrInternal__aapl__pxrReserved__::HdChangeTracker::InstancerRemoved(this + 55, a2);
    v8 = (*(**&this[467] + 48))(*&this[467], v7);
    (*(*v6 + 24))(v6, v8);
    sub_29AC92DCC(&this[462], v5);
    v9 = *(**&this[467] + 200);

    return v9();
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetInstancer(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29A0ECEEC(&v7, "hd", "HdInstancer *pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetInstancer(const SdfPath &) const");
  v4 = sub_29A328A44(this + 462, a2);
  if (v4)
  {
    v5 = v4[3];
  }

  else
  {
    v5 = 0;
  }

  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v8, v7);
  }

  return v5;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRprim(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29A0ECEEC(&v7, "hd", "const HdRprim *pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRprim(const SdfPath &) const");
  v4 = sub_29A328A44(this + 6, a2);
  if (v4)
  {
    v5 = v4[4];
  }

  else
  {
    v5 = 0;
  }

  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v8, v7);
  }

  return v5;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetSceneDelegateForRprim(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29A0ECEEC(&v17, "hd", "HdSceneDelegate *pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetSceneDelegateForRprim(const SdfPath &) const");
  if (sub_29AC87880())
  {
    v4 = sub_29AC8A638(this);
    (*(*v4 + 16))(&v14);
    v5 = v15;
    if (!v15)
    {
      goto LABEL_15;
    }

    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens))
    {
      sub_29ABEE970(&pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens);
    }

    (*(*v5 + 24))(&v10, v5);
    sub_29AC3C124(&v10, &v12);
    if (v11)
    {
      sub_29A014BEC(v11);
    }

    v7 = v12;
    if (v12)
    {
      v5 = (*(*v12 + 32))(v12, 0.0);
    }

    if (v13)
    {
      sub_29A014BEC(v13);
    }

    if (!v7)
    {
LABEL_15:
      v5 = *(this + 2);
    }

    if (v16)
    {
      sub_29A014BEC(v16);
    }

    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    v8 = sub_29A328A44(this + 6, a2);
    if (v8)
    {
      v5 = v8[3];
    }

    else
    {
      v5 = 0;
    }
  }

  if (v17)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v18, v17);
  }

  return v5;
}

void sub_29AC8E73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(v16 - 48);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetSceneDelegateAndInstancerIds(pxrInternal__aapl__pxrReserved__::HdRenderIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::SdfPath *a4)
{
  sub_29A0ECEEC(&v25, "hd", "BOOL pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetSceneDelegateAndInstancerIds(const SdfPath &, SdfPath *, SdfPath *) const");
  v8 = sub_29A328A44(this + 6, a2);
  if (v8)
  {
    if (sub_29AC87880())
    {
      v9 = sub_29AC8A638(this);
      (*(*v9 + 16))(&v22);
      v10 = v23;
      if (v23)
      {
        if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens))
        {
          sub_29ABEE970(&pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens);
        }

        (*(*v10 + 24))(&v18, v10);
        sub_29AC3C124(&v18, &v20);
        if (v19)
        {
          sub_29A014BEC(v19);
        }

        if (v20)
        {
          v12 = (*(*v20 + 32))(v20, 0.0);
          v13 = v12;
          if (v12)
          {
            sub_29A2258F0(a3, (v12 + 16));
            sub_29A225948(a3 + 1, (v13 + 20));
          }
        }

        if (v21)
        {
          sub_29A014BEC(v21);
        }
      }

      else
      {
        v15 = *(this + 2);
        sub_29A2258F0(a3, (v15 + 16));
        sub_29A225948(a3 + 1, (v15 + 20));
      }

      if (v24)
      {
        sub_29A014BEC(v24);
      }

      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      v14 = v8[3];
      sub_29A2258F0(a3, (v14 + 16));
      sub_29A225948(a3 + 1, (v14 + 20));
    }

    v16 = v8[4];
    sub_29A2258F0(a4, (v16 + 8));
    sub_29A225948(a4 + 1, (v16 + 12));
  }

  if (v25)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v26, v25);
  }

  return v8 != 0;
}

void sub_29AC8E9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va, a9);
  if (a6)
  {
    sub_29A014BEC(a6);
  }

  if (a9)
  {
    sub_29A014BEC(a9);
  }

  if ((a7 & 7) != 0)
  {
    atomic_fetch_add_explicit((a7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsRprimTypeSupported(uint64_t a1, void *a2)
{
  v3 = (*(**(a1 + 3736) + 24))(*(a1 + 3736));
  v4 = *v3;
  v5 = *(v3 + 8);
  if (*v3 != v5)
  {
    while ((*v4 ^ *a2) >= 8)
    {
      if (++v4 == v5)
      {
        v4 = *(v3 + 8);
        return v4 != v5;
      }
    }
  }

  return v4 != v5;
}

BOOL pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsSprimTypeSupported(uint64_t a1, void *a2)
{
  v3 = (*(**(a1 + 3736) + 32))(*(a1 + 3736));
  v4 = *v3;
  v5 = *(v3 + 8);
  if (*v3 != v5)
  {
    while ((*v4 ^ *a2) >= 8)
    {
      if (++v4 == v5)
      {
        v4 = *(v3 + 8);
        return v4 != v5;
      }
    }
  }

  return v4 != v5;
}

BOOL pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsBprimTypeSupported(uint64_t a1, void *a2)
{
  v3 = (*(**(a1 + 3736) + 40))(*(a1 + 3736));
  v4 = *v3;
  v5 = *(v3 + 8);
  if (*v3 != v5)
  {
    while ((*v4 ^ *a2) >= 8)
    {
      if (++v4 == v5)
      {
        v4 = *(v3 + 8);
        return v4 != v5;
      }
    }
  }

  return v4 != v5;
}

pxrInternal__aapl__pxrReserved__::HdReprSelector *sub_29AC8EB8C@<X0>(pxrInternal__aapl__pxrReserved__::HdReprSelector *this@<X0>, const pxrInternal__aapl__pxrReserved__::HdReprSelector *a2@<X1>, uint64_t *a3@<X8>, char a4@<W2>)
{
  if ((a4 & 1) == 0)
  {
    return pxrInternal__aapl__pxrReserved__::HdReprSelector::CompositeOver(this, a2, a3);
  }

  v4 = *a2;
  *a3 = *a2;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a3 = v5;
    }
  }

  v6 = *(a2 + 1);
  a3[1] = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      a3[1] = v7;
    }
  }

  v8 = *(a2 + 2);
  a3[2] = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      a3[2] = v9;
    }
  }

  return this;
}

uint64_t sub_29AC8EC5C(uint64_t *a1)
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

uint64_t sub_29AC8ED0C(uint64_t a1)
{
  sub_29AC8ED48(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AC8ED48(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AC8ED8C(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29AC8ED8C(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29AC8EDCC(uint64_t a1)
{
  sub_29AC8EE08(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AC8EE08(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AC8EE4C(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29AC8EE4C(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29AC8EE8C(uint64_t *a1)
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

void sub_29AC8EF10(uint64_t a1)
{
  v11[9] = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 8);
  v2 = v1[1];
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(v9);
  v3 = (*v1 + 16);
  v4 = v2 + 440;
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    v5 = v3[2];
    v6 = v1[2];
    v8[0] = 0;
    v8[1] = v10;
    v7 = tbb::internal::allocate_additional_child_of_proxy::allocate(v8, 0x38uLL);
    *(v7 - 11) = 1;
    *v7 = &unk_2A207DE28;
    v7[1] = sub_29AC8F070;
    v7[2] = v5;
    v7[3] = v4;
    v7[4] = v3 + 3;
    v7[5] = v6;
    v7[6] = v11;
    (***(v7 - 5))();
  }

  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(v9);
}

void sub_29AC8F070(pxrInternal__aapl__pxrReserved__ *a1, pxrInternal__aapl__pxrReserved__::HdChangeTracker *a2, uint64_t *a3, char **a4)
{
  v29 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v4 = a3[1];
  v24[0] = sub_29AC8F3BC;
  v24[1] = a1;
  v24[2] = a2;
  v24[3] = a3;
  v24[4] = a4;
  v6 = v4 - v5;
  if (v6)
  {
    v11 = v6 >> 3;
    if (pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(a1))
    {
      v26[0] = 0;
      v27 = 65539;
      v28 = 55;
      tbb::task_group_context::init(v26, v12, v13, v14);
      v25 = v26;
      v15 = tbb::internal::allocate_root_with_context_proxy::allocate(&v25, 0x38uLL);
      *(v15 - 11) = 1;
      *v15 = &unk_2A207DE70;
      *(v15 + 8) = v11;
      *(v15 + 16) = xmmword_29B430070;
      *(v15 + 32) = v24;
      initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v15);
      *(v15 + 48) = 0;
      *(v15 + 52) = 5;
      *(v15 + 40) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
      (*(**(v15 - 40) + 16))(*(v15 - 40), v15, v15 - 8);
      tbb::task_group_context::~task_group_context(v26);
    }

    else
    {
      sub_29AC8F3BC(a1, a2, a3, a4, 0, v11);
    }

    v17 = 0;
    do
    {
      v18 = a3[6];
      if ((*(v18 + 4 * v17) & 0xFFFFFFFD) != 0)
      {
        ++v17;
      }

      else
      {
        v19 = *a3;
        v20 = v11 - 1;
        if (v20)
        {
          v23 = *(v19 + 8 * v17);
          *(v19 + 8 * v17) = *(v19 + 8 * v20);
          *(v19 + 8 * v20) = v23;
          sub_29A41A670((a3[3] + 8 * v17));
        }

        a3[1] = v19;
        v22 = a3[3];
        v21 = a3[4];
        if (v21 != v22)
        {
          do
          {
            v21 -= 2;
            sub_29A1E230C((a3 + 3), v21);
          }

          while (v21 != v22);
          v18 = a3[6];
        }

        a3[4] = v22;
        a3[7] = v18;
        ++v17;
        v11 = 1;
      }
    }

    while (v17 < v11);
  }
}

void sub_29AC8F2C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  tbb::internal::allocate_root_with_context_proxy::free(&a15, v19);
  tbb::task_group_context::~task_group_context(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC8F310(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  (*(a1 + 8))(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 48));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29AC8F3A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC8F3BC(uint64_t result, pxrInternal__aapl__pxrReserved__::HdChangeTracker *a2, void *a3, char **a4, unint64_t a5, unint64_t a6)
{
  if (a5 < a6)
  {
    v6 = a5;
    v9 = result;
    do
    {
      v10 = *(*a3 + 8 * v6);
      v11 = (a3[6] + 4 * v6);
      v12 = *v11;
      if ((*v11 & 0x40001) != 0)
      {
        pxrInternal__aapl__pxrReserved__::HdRprim::UpdateReprSelector(*(*a3 + 8 * v6), v9, (a3[6] + 4 * v6));
        v14 = *a4;
        v13 = a4[1];
        while (v14 != v13)
        {
          sub_29AC8EB8C((v10 + 408), v14, &v20, v14[24]);
          for (i = 0; i != 3; ++i)
          {
            if (pxrInternal__aapl__pxrReserved__::HdReprSelector::IsActiveRepr(&v20, i))
            {
              v16 = pxrInternal__aapl__pxrReserved__::HdReprSelector::operator[](&v20, i);
              pxrInternal__aapl__pxrReserved__::HdRprim::InitRepr(v10, v9, v16, v11);
            }
          }

          if ((v22 & 7) != 0)
          {
            atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v21 & 7) != 0)
          {
            atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v20 & 7) != 0)
          {
            atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v14 += 32;
        }

        v17 = *v11 & 0xFFFFFFFE;
        *v11 = v17;
        pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimClean(a2, (v10 + 376), v17);
        v12 = *v11;
      }

      if (pxrInternal__aapl__pxrReserved__::HdRprim::CanSkipDirtyBitPropagationAndSync(v10, v12))
      {
        *v11 = 0;
        result = pxrInternal__aapl__pxrReserved__::HdChangeTracker::ResetRprimVaryingState(a2, (v10 + 376));
      }

      else
      {
        result = pxrInternal__aapl__pxrReserved__::HdRprim::PropagateRprimDirtyBits(v10, *v11);
        *v11 = result;
      }

      ++v6;
    }

    while (v6 != a6);
  }

  return result;
}

void sub_29AC8F554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AC8F5AC(tbb::internal::allocate_continuation_proxy *this)
{
  v32 = *MEMORY[0x29EDCA608];
  if (!*(this + 5))
  {
    *(this + 5) = 1;
    if (*(this - 11) < 0)
    {
      v2 = *(this - 4);
      if (*(v2 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v2 + 8) = 1;
        v3 = *(this + 52);
        if (v3 <= 1)
        {
          LOBYTE(v3) = 1;
        }

        *(this + 52) = v3 + 1;
      }
    }
  }

  v4 = (this + 8);
  v5 = *(this + 3);
  v6 = *(this + 1) - *(this + 2);
  if (v5 < v6)
  {
    v7 = *(this + 5);
    if (v7 > 1)
    {
      goto LABEL_12;
    }

    if (v7 && *(this + 52))
    {
      --*(this + 52);
      *(this + 5) = 0;
LABEL_12:
      while (1)
      {
        v8 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
        *(v8 - 11) = 1;
        *v8 = &unk_2A204C520;
        __dmb(0xBu);
        v8[8] = 0;
        *(this - 4) = v8;
        *(v8 - 3) = 2;
        v9 = tbb::internal::allocate_child_proxy::allocate(v8, 0x38uLL);
        *(v9 - 11) = 1;
        v10 = *(this + 1);
        v11 = *(this + 2);
        *v9 = &unk_2A207DE70;
        *(v9 + 8) = v10;
        v12 = v11 + ((v10 - v11) >> 1);
        *(this + 1) = v12;
        *(v9 + 16) = v12;
        *(v9 + 24) = *(this + 24);
        v13 = *(this + 5) >> 1;
        *(this + 5) = v13;
        *(v9 + 40) = v13;
        *(v9 + 48) = 2;
        *(v9 + 52) = *(this + 52);
        (***(v9 - 40))();
        v5 = *(this + 3);
        v6 = *(this + 1) - *(this + 2);
        if (v5 >= v6)
        {
          break;
        }

        v14 = *(this + 5);
        if (v14 <= 1)
        {
          if (!v14 || !*(this + 52))
          {
            break;
          }

          --*(this + 52);
          *(this + 5) = 0;
        }
      }
    }
  }

  if (v5 < v6 && *(this + 52))
  {
    *v29 = 0x10000;
    v30 = *v4;
    v31 = *(this + 3);
    while (1)
    {
      v15 = sub_29A3B10B4(v29, *(this + 52));
      v16 = *(*(this - 4) + 8);
      __dmb(0xBu);
      if (v16)
      {
        v17 = *(this + 52) + 1;
        *(this + 52) = v17;
        v18 = v29[2];
        if (v29[2] >= 2u)
        {
          v19 = v29[1];
          v20 = v29[v29[1] + 3];
          v21 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
          *(v21 - 11) = 1;
          *v21 = &unk_2A204C520;
          __dmb(0xBu);
          v21[8] = 0;
          *(this - 4) = v21;
          *(v21 - 3) = 2;
          v22 = tbb::internal::allocate_child_proxy::allocate(v21, 0x38uLL);
          v23 = &v30 + 24 * v19;
          *(v22 - 11) = 1;
          *v22 = &unk_2A207DE70;
          v24 = *v23;
          *(v22 + 24) = *(v23 + 2);
          *(v22 + 8) = v24;
          v25 = *(this + 4);
          v26 = *(this + 5) >> 1;
          *(this + 5) = v26;
          *(v22 + 32) = v25;
          *(v22 + 40) = v26;
          *(v22 + 48) = 2;
          *(v22 + 52) = *(this + 52) - v20;
          (***(v22 - 40))();
          v18 = --v29[2];
          v29[1] = (v29[1] + 1) & 7;
          goto LABEL_25;
        }

        v27 = v29[0];
        if (v29[v29[0] + 3] < v17 && *(&v30 + 3 * v29[0] + 2) < *(&v30 + 3 * v29[0]) - *(&v30 + 3 * v29[0] + 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        v27 = v29[0];
      }

      (**(this + 4))(*(*(this + 4) + 8), *(*(this + 4) + 16), *(*(this + 4) + 24), *(*(this + 4) + 32), *(&v30 + 3 * v27 + 1), *(&v30 + 3 * v27), v15);
      v18 = --v29[2];
      v29[0] = (v29[0] - 1) & 7;
LABEL_25:
      if (!v18 || tbb::task_group_context::is_group_execution_cancelled(*(this - 7)))
      {
        return 0;
      }
    }
  }

  (**(this + 4))(*(*(this + 4) + 8), *(*(this + 4) + 16), *(*(this + 4) + 24), *(*(this + 4) + 32));
  return 0;
}

void sub_29AC8F9E8(uint64_t a1)
{
  v16[9] = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 8);
  v2 = *(v1 + 16);
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(v14);
  for (i = *(*v1 + 16); i; i = *i)
  {
    v4 = i[2];
    v5 = *(v1 + 8);
    v6 = **(v1 + 24);
    *&v10 = v4;
    *(&v10 + 1) = i + 3;
    *&v11 = v5;
    *(&v11 + 1) = v2 + 440;
    v12 = v6;
    if (sub_29ABCF8C0(9))
    {
      goto LABEL_7;
    }

    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdOptionTokens))
    {
      sub_29AC8FE08(&pxrInternal__aapl__pxrReserved__::HdOptionTokens);
    }

    if (!(*(*v4 + 32))(v4))
    {
LABEL_7:
      sub_29AC8FBDC(&v10, 0, (i[4] - i[3]) >> 3);
    }

    else
    {
      v13[0] = 0;
      v13[1] = v15;
      v8 = tbb::internal::allocate_additional_child_of_proxy::allocate(v13, 0x40uLL);
      *(v8 - 11) = 1;
      *v8 = &unk_2A207DEF8;
      *(v8 + 8) = i + 3;
      v9 = v11;
      *(v8 + 16) = v10;
      *(v8 + 32) = v9;
      *(v8 + 48) = v12;
      *(v8 + 56) = v16;
      (***(v8 - 40))();
    }
  }

  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(v14);
}

void sub_29AC8FBDC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 < a3)
  {
    v4 = a2;
    do
    {
      v6 = *(a1 + 8);
      v7 = *(a1 + 16);
      v8 = *(*v6 + 8 * v4);
      v9 = *(v6[6] + 4 * v4);
      v21 = v9;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v10 = *v7;
      v11 = v7[1];
      if (*v7 != v11)
      {
        do
        {
          sub_29AC8EB8C((v8 + 408), v10, &v15, v10[24]);
          for (i = 0; i != 3; ++i)
          {
            v13 = pxrInternal__aapl__pxrReserved__::HdReprSelector::operator[](&v15, i);
            if (pxrInternal__aapl__pxrReserved__::HdReprSelector::IsActiveRepr(&v15, i))
            {
              v14 = v18;
              if (v18 != v19)
              {
                while ((*v14 ^ *v13) >= 8)
                {
                  if (++v14 == v19)
                  {
                    goto LABEL_11;
                  }
                }
              }

              if (v14 == v19)
              {
LABEL_11:
                (*(*v8 + 24))(v8, *a1, *(a1 + 32), &v21, v13);
                sub_29A1D8028(&v18, v13);
              }
            }
          }

          if ((v17 & 7) != 0)
          {
            atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v16 & 7) != 0)
          {
            atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v15 & 7) != 0)
          {
            atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v10 += 32;
        }

        while (v10 != v11);
        v9 = v21;
      }

      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimClean(*(a1 + 24), (v8 + 376), v9);
      v15 = &v18;
      sub_29A124AB0(&v15);
      ++v4;
    }

    while (v4 != a3);
  }
}

void sub_29AC8FD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  sub_29A124AB0(&a10);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdOptionTokens_StaticTokenType *sub_29AC8FE08(atomic_ullong *a1)
{
  result = sub_29AC8FE50();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdOptionTokens_StaticTokenType::~HdOptionTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdOptionTokens_StaticTokenType *sub_29AC8FE50()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::HdOptionTokens_StaticTokenType::HdOptionTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29AC8FE9C(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v17);
  v3 = **(a1 + 8);
  v4 = *(*(a1 + 8) + 8);
  v18[0] = sub_29AC8FBDC;
  v18[1] = 0;
  v5 = *(a1 + 32);
  v19[0] = *(a1 + 16);
  v19[1] = v5;
  v20 = *(a1 + 48);
  v6 = v4 - v3;
  if (v4 != v3)
  {
    v10 = v6 >> 3;
    if (pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(v2))
    {
      v22[0] = 0;
      v23 = 65539;
      v24 = 55;
      tbb::task_group_context::init(v22, v7, v8, v9);
      v21 = v22;
      v11 = tbb::internal::allocate_root_with_context_proxy::allocate(&v21, 0x38uLL);
      *(v11 - 11) = 1;
      *v11 = &unk_2A207DF40;
      *(v11 + 8) = v10;
      *(v11 + 16) = xmmword_29B430070;
      *(v11 + 32) = v18;
      initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v11);
      *(v11 + 48) = 0;
      *(v11 + 52) = 5;
      *(v11 + 40) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
      (*(**(v11 - 40) + 16))(*(v11 - 40), v11, v11 - 8);
      tbb::task_group_context::~task_group_context(v22);
    }

    else
    {
      sub_29AC8FBDC(v19, 0, v6 >> 3);
    }
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v13)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v14 = v17;
  v15 = atomic_load((v13 + 144));
  if (v14 < v15 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v17, v13))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v17, *(a1 + 56));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v17);
  return 0;
}

void sub_29AC90078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21)
{
  tbb::internal::allocate_root_with_context_proxy::free(&a17, v21);
  tbb::task_group_context::~task_group_context(&a19);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC900D0(tbb::internal::allocate_continuation_proxy *this)
{
  v40 = *MEMORY[0x29EDCA608];
  if (!*(this + 5))
  {
    *(this + 5) = 1;
    if (*(this - 11) < 0)
    {
      v2 = *(this - 4);
      if (*(v2 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v2 + 8) = 1;
        v3 = *(this + 52);
        if (v3 <= 1)
        {
          LOBYTE(v3) = 1;
        }

        *(this + 52) = v3 + 1;
      }
    }
  }

  v4 = (this + 8);
  v5 = *(this + 3);
  v6 = *(this + 1) - *(this + 2);
  if (v5 < v6)
  {
    v7 = *(this + 5);
    if (v7 > 1)
    {
      goto LABEL_12;
    }

    if (v7 && *(this + 52))
    {
      --*(this + 52);
      *(this + 5) = 0;
LABEL_12:
      while (1)
      {
        v8 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
        *(v8 - 11) = 1;
        *v8 = &unk_2A204C520;
        __dmb(0xBu);
        v8[8] = 0;
        *(this - 4) = v8;
        *(v8 - 3) = 2;
        v9 = tbb::internal::allocate_child_proxy::allocate(v8, 0x38uLL);
        *(v9 - 11) = 1;
        v10 = *(this + 1);
        v11 = *(this + 2);
        *v9 = &unk_2A207DF40;
        *(v9 + 8) = v10;
        v12 = v11 + ((v10 - v11) >> 1);
        *(this + 1) = v12;
        *(v9 + 16) = v12;
        *(v9 + 24) = *(this + 24);
        v13 = *(this + 5) >> 1;
        *(this + 5) = v13;
        *(v9 + 40) = v13;
        *(v9 + 48) = 2;
        *(v9 + 52) = *(this + 52);
        (***(v9 - 40))();
        v5 = *(this + 3);
        v6 = *(this + 1) - *(this + 2);
        if (v5 >= v6)
        {
          break;
        }

        v14 = *(this + 5);
        if (v14 <= 1)
        {
          if (!v14 || !*(this + 52))
          {
            break;
          }

          --*(this + 52);
          *(this + 5) = 0;
        }
      }
    }
  }

  if (v5 < v6 && *(this + 52))
  {
    *v37 = 0x10000;
    v38 = *v4;
    v39 = *(this + 3);
    while (1)
    {
      v15 = sub_29A3B10B4(v37, *(this + 52));
      v16 = *(*(this - 4) + 8);
      __dmb(0xBu);
      if ((v16 & 1) == 0)
      {
        break;
      }

      v17 = *(this + 52) + 1;
      *(this + 52) = v17;
      v18 = v37[2];
      if (v37[2] < 2u)
      {
        v27 = v37[0];
        if (v37[v37[0] + 3] >= v17 || *(&v38 + 3 * v37[0] + 2) >= *(&v38 + 3 * v37[0]) - *(&v38 + 3 * v37[0] + 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        v19 = v37[1];
        v20 = v37[v37[1] + 3];
        v21 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
        *(v21 - 11) = 1;
        *v21 = &unk_2A204C520;
        __dmb(0xBu);
        v21[8] = 0;
        *(this - 4) = v21;
        *(v21 - 3) = 2;
        v22 = tbb::internal::allocate_child_proxy::allocate(v21, 0x38uLL);
        v23 = &v38 + 24 * v19;
        *(v22 - 11) = 1;
        *v22 = &unk_2A207DF40;
        v24 = *v23;
        *(v22 + 24) = *(v23 + 2);
        *(v22 + 8) = v24;
        v25 = *(this + 4);
        v26 = *(this + 5) >> 1;
        *(this + 5) = v26;
        *(v22 + 32) = v25;
        *(v22 + 40) = v26;
        *(v22 + 48) = 2;
        *(v22 + 52) = *(this + 52) - v20;
        (***(v22 - 40))();
        v18 = --v37[2];
        v37[1] = (v37[1] + 1) & 7;
      }

LABEL_27:
      if (!v18 || tbb::task_group_context::is_group_execution_cancelled(*(this - 7)))
      {
        return 0;
      }
    }

    v27 = v37[0];
LABEL_24:
    v28 = *(this + 4);
    v29 = *v28;
    v30 = *(v28 + 8);
    v31 = v28 + (v30 >> 1);
    if (v30)
    {
      v29 = *(*(v31 + 16) + v29);
    }

    v29(v31 + 16, *(&v38 + 3 * v27 + 1), *(&v38 + 3 * v27), v15);
    v18 = --v37[2];
    v37[0] = (v37[0] - 1) & 7;
    goto LABEL_27;
  }

  v32 = *(this + 4);
  v33 = *v32;
  v34 = *(v32 + 8);
  v35 = v32 + (v34 >> 1);
  if (v34)
  {
    v33 = *(*(v35 + 16) + v33);
  }

  v33(v35 + 16);
  return 0;
}

void sub_29AC90538(void *a1)
{
  v2 = (a1 + 4);
  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v5 = v2;
  sub_29A1E234C(&v5);
  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }
}

unint64_t sub_29AC905F0()
{
  v13 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "Post-Emulation Notice Batching Scene Index", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "Post-Merging Notice Batching Scene Index", 0);
  v1 = v0 + 2;
  v2 = *v0;
  v11 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v3;
    }
  }

  v4 = v0[1];
  v12 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v5;
    }
  }

  *v1 = 0;
  v0[3] = 0;
  v0[4] = 0;
  sub_29A12EF7C(v1, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v7 = *(&v11 + i);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v8 = 0;
  atomic_compare_exchange_strong(&qword_2A174B078, &v8, v0);
  if (v8)
  {
    v9 = sub_29A1DAC64(v0);
    operator delete(v9);
    return atomic_load(&qword_2A174B078);
  }

  return v0;
}

void sub_29AC90734(_Unwind_Exception *a1)
{
  v4 = 8;
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
      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

uint64_t sub_29AC907B0(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_29AC907EC(result);
  }

  return result;
}

void sub_29AC907EC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v5[0] = "hd/renderIndex.cpp";
    v5[1] = "~_NoticeBatchingContext";
    v5[2] = 86;
    v5[3] = "pxrInternal__aapl__pxrReserved__::HdRenderIndex::_NoticeBatchingContext::~_NoticeBatchingContext()";
    v6 = 0;
    v2 = *(a1 + 16) & 0xFFFFFFFFFFFFFFF8;
    if (v2)
    {
      v3 = (v2 + 16);
      if (*(v2 + 39) < 0)
      {
        v3 = *v3;
      }
    }

    else
    {
      v3 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Imbalanced batch begin/end calls for %s.\n", v3);
  }

  v4 = *(a1 + 16);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29AC8ECDC();
}

uint64_t sub_29AC908A8(uint64_t a1)
{
  sub_29AC908E4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AC908E4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AC90928((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29AC90928(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

void sub_29AC90974(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 104;
      v7 = v4 - 104;
      v8 = v4 - 104;
      do
      {
        v9 = *v8;
        v8 -= 104;
        (*v9)(v7);
        v6 -= 104;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_29AC90A70(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

  sub_29AC90CB8(a1, v6, a4, &v22);
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

void sub_29AC90CA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AC90D30(va, 0);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AC90CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x28uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v9 = *a3;
  sub_29A1E21F4(v8 + 4, v9);
  result = sub_29A1E2240(v8 + 5, v9 + 1);
  v8[3] = 0;
  v8[4] = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29AC90D30(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AC8EE4C(v2 + 4);
    }

    operator delete(v2);
  }
}

uint64_t sub_29AC90D8C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29AC8EE4C(v3 + 4);
    }

    operator delete(v3);
  }

  return v2;
}

void sub_29AC90DE8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29AC908E4(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_29AC90E44(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29AC8EE08(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_29AC90EA0(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29AC8ED48(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void *sub_29AC90EFC(uint64_t a1, unsigned int *a2, _DWORD *a3, __n128 *a4)
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

  sub_29AC91144(a1, v6, a3, a4, &v22);
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

void sub_29AC9112C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AC911CC(va, 0);
  _Unwind_Resume(a1);
}

__n128 sub_29AC91144@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, __n128 *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x30uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  *(v10 + 1) = a2;
  sub_29A1E21F4(v10 + 4, a3);
  sub_29A1E2240(v10 + 5, a3 + 1);
  result = *a4;
  *(v10 + 24) = *a4;
  *(v10 + 5) = a4[1].n128_u64[0];
  a4->n128_u64[1] = 0;
  a4[1].n128_u64[0] = 0;
  *(a5 + 16) = 1;
  return result;
}

void sub_29AC911CC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AC90928(v2 + 16);
    }

    operator delete(v2);
  }
}

uint64_t sub_29AC91228(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29AC90928(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

pxrInternal__aapl__pxrReserved__::HdReprTokens_StaticTokenType *sub_29AC91284(atomic_ullong *a1)
{
  result = sub_29AC912CC();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdReprTokens_StaticTokenType::~HdReprTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdReprTokens_StaticTokenType *sub_29AC912CC()
{
  v0 = operator new(0x60uLL);
  pxrInternal__aapl__pxrReserved__::HdReprTokens_StaticTokenType::HdReprTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29AC91310(void *a1)
{
  *a1 = &unk_2A203F6D8;
  __dmb(0xBu);
  a1[1] = 0;
  __dmb(0xBu);
  a1[2] = 0;
  *a1 = &unk_2A207DF88;
  v2 = tbb::internal::allocate_via_handler_v3(8);
  *v2 = &unk_2A207DFE8;
  a1[3] = v2;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  a1[7] = 0;
  a1[6] = 0;
  a1[8] = a1 + 9;
  a1[5] = sub_29AC9156C;
  return a1;
}

uint64_t sub_29AC913DC(uint64_t a1)
{
  v2 = tbb::internal::concurrent_vector_base_v3::internal_grow_by((a1 + 40), 1uLL, 0x80, tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::HdDrawItem const*>>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::HdDrawItem const*>>,128ul>>>::initialize_array, 0);
  v3 = sub_29A0EC0EC(v2);
  v4 = *(a1 + 64);
  __dmb(0xBu);
  v5 = *(v4 + 8 * v3) + ((v2 - ((1 << v3) & 0x1FFFFFFFFFFFFFELL)) << 7);
  (*(**(a1 + 24) + 32))(*(a1 + 24), v5);
  *(v5 + 24) = 1;
  return v5;
}

void sub_29AC914A0(void *a1)
{
  v1 = sub_29AC9158C(a1);

  operator delete(v1);
}

void *sub_29AC914C8()
{
  result = tbb::internal::allocate_via_handler_v3(8);
  *result = &unk_2A207DFE8;
  return result;
}

uint64_t sub_29AC91500(uint64_t a1)
{
  (*(*a1 + 16))(a1);

  return tbb::internal::deallocate_via_handler_v3(a1, v2);
}

void sub_29AC91560(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::HdDrawItem const*>>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::HdDrawItem const*>>,128ul>>>::initialize_array(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    bzero(a1, a3 << 7);
  }
}

void *sub_29AC9158C(void *a1)
{
  *a1 = &unk_2A207DF88;
  v2 = a1[3];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_29A0EBE40(a1);
  sub_29AC91628(a1 + 4);
  *a1 = &unk_2A203F6D8;
  return a1;
}

unint64_t *sub_29AC91628(unint64_t *a1)
{
  v2 = a1[4];
  v3 = tbb::internal::concurrent_vector_base_v3::internal_clear((a1 + 1), tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::HdDrawItem const*>>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::HdDrawItem const*>>,128ul>>>::destroy_array);
  sub_29A0EC010(a1, v2, v3, a1[2]);
  tbb::internal::concurrent_vector_base_v3::~concurrent_vector_base_v3((a1 + 1), v4);
  return a1;
}

void tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::HdDrawItem const*>>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<pxrInternal__aapl__pxrReserved__::HdDrawItem const*>>,128ul>>>::destroy_array(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = a1 + (a2 << 7) - 128;
    do
    {
      if (*(v3 + 24) == 1)
      {
        v4 = *v3;
        if (*v3)
        {
          *(v3 + 8) = v4;
          operator delete(v4);
        }

        *(v3 + 24) = 0;
      }

      v3 -= 128;
      --v2;
    }

    while (v2);
  }
}

void sub_29AC916E4(pxrInternal__aapl__pxrReserved__ *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(a1))
    {
      LODWORD(v12[0]) = 0;
      v12[16] = 65539;
      v13 = 55;
      tbb::task_group_context::init(v12, v6, v7, v8);
      v10[0] = a1;
      v10[1] = 0;
      v10[2] = a3;
      v9 = a2;
      sub_29AC917D4(v10, &v9, &v11, v12);
      tbb::task_group_context::~task_group_context(v12);
    }

    else
    {
      v12[0] = a1;
      LODWORD(v10[0]) = 0;
      sub_29AC91E2C(a2, v10, v12);
    }
  }
}

void sub_29AC917B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  tbb::task_group_context::~task_group_context(va);
  _Unwind_Resume(a1);
}

void *sub_29AC917D4(void *result, void *a2, uint64_t a3, tbb::task_group_context *a4)
{
  if (result[1] < *result)
  {
    v5 = result;
    v9 = a4;
    v6 = tbb::internal::allocate_root_with_context_proxy::allocate(&v9, 0x38uLL);
    *(v6 - 11) = 1;
    *v6 = &unk_2A207E080;
    v7 = v5[2];
    *(v6 + 8) = *v5;
    *(v6 + 24) = v7;
    *(v6 + 32) = *a2;
    initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v6);
    *(v6 + 48) = 0;
    *(v6 + 52) = 5;
    *(v6 + 40) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
    return (*(**(v6 - 40) + 16))(*(v6 - 40), v6, v6 - 8);
  }

  return result;
}

uint64_t sub_29AC918D4(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = a1 + 40;
  if (!v3)
  {
    *(a1 + 40) = 1;
    if (*(a1 - 11) < 0)
    {
      v4 = *(a1 - 32);
      if (*(v4 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v4 + 8) = 1;
        v5 = *(a1 + 52);
        if (v5 <= 1)
        {
          LOBYTE(v5) = 1;
        }

        *(a1 + 52) = v5 + 1;
      }
    }
  }

  sub_29AC91944(v2, a1, a1 + 8);
  return 0;
}

void sub_29AC91944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) < *a3 - *(a3 + 8))
  {
    if (*a1 > 1uLL)
    {
      goto LABEL_6;
    }

    if (*a1)
    {
LABEL_4:
      if (*(a1 + 12))
      {
        --*(a1 + 12);
        *a1 = 0;
LABEL_6:
        while (1)
        {
          sub_29AC919F8(a2);
          if (*(a3 + 16) >= *a3 - *(a3 + 8))
          {
            break;
          }

          if (*a1 <= 1uLL)
          {
            if (*a1)
            {
              goto LABEL_4;
            }

            break;
          }
        }
      }
    }
  }

  sub_29AC91B10(a1, a2, a3);
}

uint64_t sub_29AC919F8(uint64_t a1)
{
  v2 = tbb::internal::allocate_continuation_proxy::allocate(a1, 0x10uLL);
  *(v2 - 11) = 1;
  *v2 = &unk_2A204C520;
  __dmb(0xBu);
  v2[8] = 0;
  *(a1 - 32) = v2;
  *(v2 - 3) = 2;
  v3 = tbb::internal::allocate_child_proxy::allocate(v2, 0x38uLL);
  *(v3 - 11) = 1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *v3 = &unk_2A207E080;
  *(v3 + 8) = v4;
  v6 = v5 + ((v4 - v5) >> 1);
  *(a1 + 8) = v6;
  *(v3 + 16) = v6;
  *(v3 + 24) = *(a1 + 24);
  v7 = *(a1 + 40) >> 1;
  *(a1 + 40) = v7;
  *(v3 + 40) = v7;
  *(v3 + 48) = 2;
  *(v3 + 52) = *(a1 + 52);
  v8 = ***(v3 - 40);

  return v8();
}

void sub_29AC91B10(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = *(a3 + 1);
  if (*(a3 + 2) < (*a3 - v4) && *(a1 + 12))
  {
    *v16 = 0x10000;
    v17 = *a3;
    v18 = *(a3 + 2);
    while (1)
    {
      sub_29A3B10B4(v16, *(a1 + 12));
      v6 = *(*(a2 - 32) + 8);
      __dmb(0xBu);
      if (v6)
      {
        v7 = *(a1 + 12) + 1;
        *(a1 + 12) = v7;
        v8 = v16[2];
        if (v16[2] >= 2u)
        {
          sub_29AC91CC8(a2, (&v17 + 24 * v16[1]), v16[v16[1] + 3]);
          v8 = --v16[2];
          v16[1] = (v16[1] + 1) & 7;
          goto LABEL_9;
        }

        v9 = v16[0];
        if (v16[v16[0] + 3] < v7 && *(&v17 + 3 * v16[0] + 2) < *(&v17 + 3 * v16[0]) - *(&v17 + 3 * v16[0] + 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v9 = v16[0];
      }

      v10 = *(a2 + 32);
      v11 = *(&v17 + 3 * v9);
      v12 = *(&v17 + 3 * v9 + 1);
      v14 = v11;
      v15 = v12;
      sub_29AC91DE8(v10, &v15, &v14);
      v8 = --v16[2];
      v16[0] = (v16[0] - 1) & 7;
LABEL_9:
      if (!v8 || tbb::task_group_context::is_group_execution_cancelled(*(a2 - 56)))
      {
        return;
      }
    }
  }

  v13 = *(a2 + 32);
  v15 = *a3;
  *v16 = v4;
  sub_29AC91DE8(v13, v16, &v15);
}

uint64_t sub_29AC91CC8(uint64_t a1, __int128 *a2, char a3)
{
  v6 = tbb::internal::allocate_continuation_proxy::allocate(a1, 0x10uLL);
  *(v6 - 11) = 1;
  *v6 = &unk_2A204C520;
  __dmb(0xBu);
  v6[8] = 0;
  *(a1 - 32) = v6;
  *(v6 - 3) = 2;
  v7 = tbb::internal::allocate_child_proxy::allocate(v6, 0x38uLL);
  *(v7 - 11) = 1;
  *v7 = &unk_2A207E080;
  v8 = *a2;
  *(v7 + 24) = *(a2 + 2);
  *(v7 + 8) = v8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40) >> 1;
  *(a1 + 40) = v10;
  *(v7 + 32) = v9;
  *(v7 + 40) = v10;
  *(v7 + 48) = 2;
  *(v7 + 52) = *(a1 + 52) - a3;
  v11 = ***(v7 - 40);

  return v11();
}

uint64_t sub_29AC91DE8(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 8);
  v4 = *a1;
  v5 = (*(a1 + 16) + (v3 >> 1));
  if (v3)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, *(a1 + 24), *a2, *a3, *(a1 + 32), *(a1 + 40));
}

uint64_t sub_29AC91E2C(uint64_t a1, int *a2, void *a3)
{
  v3 = *(a1 + 8);
  v4 = *a1;
  v5 = (*(a1 + 16) + (v3 >> 1));
  if (v3)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, *(a1 + 24), *a2, *a3, *(a1 + 32), *(a1 + 40));
}

char *sub_29AC91E70(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v9 = *a1;
  v8 = *(a1 + 8);
  if (v8 != *(a1 + 16))
  {
    do
    {
      if (sub_29AC6D4DC(a3, a4))
      {
        break;
      }

      v10 = *(a1 + 8);
      *v10 = **(a3 + 32);
      *(a1 + 8) = v10 + 1;
      sub_29AC921BC(a3);
    }

    while (*(a1 + 8) != *(a1 + 16));
  }

  if (sub_29AC6D4DC(a3, a4))
  {
    sub_29AC9225C(a2, v8, *(a1 + 8));
  }

  else
  {
    *__p = 0u;
    v33 = 0u;
    v34 = a1;
    v11 = *(a3 + 16);
    v30[0] = *a3;
    v30[1] = v11;
    v31 = *(a3 + 32);
    v12 = *(a4 + 16);
    v28[0] = *a4;
    v28[1] = v12;
    v29 = *(a4 + 32);
    sub_29AC920C8(__p, v30, v28);
    v13 = *(a1 + 8);
    v14 = ((v33 - __p[1]) >> 3) + ((v13 - *a1) >> 3);
    if (v14 >> 61)
    {
      sub_29A00C9A4();
    }

    v15 = *(a1 + 16) - *a1;
    if (v15 >> 2 > v14)
    {
      v14 = v15 >> 2;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      v16 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      v17 = sub_29A00C9BC(a1, v16);
      v13 = *(a1 + 8);
    }

    else
    {
      v17 = 0;
    }

    v18 = &v17[8 * ((a2 - v9) >> 3)];
    v19 = &v17[8 * v16];
    memcpy(v18, v8, v13 - v8);
    v20 = &v18[*(a1 + 8) - v8];
    *(a1 + 8) = v8;
    memcpy(v20, __p[1], v33 - __p[1]);
    v21 = &v20[v33 - __p[1]];
    *&v33 = __p[1];
    memcpy(v21, a2, *(a1 + 8) - a2);
    v22 = *a1;
    v23 = &v21[*(a1 + 8) - a2];
    *(a1 + 8) = a2;
    v24 = a2 - v22;
    v25 = &v18[-(a2 - v22)];
    memcpy(v25, v22, v24);
    v26 = *a1;
    *a1 = v25;
    *(a1 + 8) = v23;
    *(a1 + 16) = v19;
    if (v26)
    {
      operator delete(v26);
    }

    if (v33 != __p[1])
    {
      *&v33 = v33 + ((__p[1] - v33 + 7) & 0xFFFFFFFFFFFFFFF8);
    }

    if (__p[0])
    {
      operator delete(__p[0]);
    }

    return v18;
  }

  return a2;
}

void sub_29AC9208C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29AC920C8(void **a1, uint64_t a2, void *a3)
{
  v6 = a1[4];
  for (result = sub_29AC6D4DC(a2, a3); !result; result = sub_29AC6D4DC(a2, a3))
  {
    v8 = a1[2];
    if (v8 == a1[3])
    {
      if (((v8 - *a1) >> 2) <= 8)
      {
        v9 = 8;
      }

      else
      {
        v9 = (v8 - *a1) >> 2;
      }

      v10 = sub_29A00C9BC(v6, v9);
      v12 = a1[1];
      if (v12 == a1[2])
      {
        v8 = v10;
      }

      else
      {
        v8 = v10;
        do
        {
          v13 = *v12++;
          *v8 = v13;
          v8 += 8;
        }

        while (v12 != a1[2]);
      }

      v14 = *a1;
      *a1 = v10;
      a1[1] = v10;
      a1[2] = v8;
      a1[3] = &v10[8 * v11];
      if (v14)
      {
        operator delete(v14);
        v8 = a1[2];
      }
    }

    *v8 = **(a2 + 32);
    a1[2] = a1[2] + 8;
    sub_29AC921BC(a2);
  }

  return result;
}

unint64_t sub_29AC921BC(uint64_t *a1)
{
  a1[4] += 8;
  for (i = a1 + 1; ; i = a1 + 1)
  {
    result = sub_29AC6D47C(i);
    if (a1[4] != *(result + 8))
    {
      break;
    }

    ++a1[2];
    a1[3] = 0;
    v4 = *a1;
    v5 = *a1 + 32;
    v6 = *(*a1 + 56);
    __dmb(0xBu);
    result = tbb::internal::concurrent_vector_base_v3::internal_capacity((v4 + 40));
    v7 = result >= v6 ? v6 : result;
    if (a1[2] == v7 && a1[1] == v5)
    {
      break;
    }

    a1[4] = *sub_29AC6D47C(a1 + 1);
  }

  return result;
}

char *sub_29AC9225C(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    if (a2 == a3)
    {
      return __src;
    }

    else if (__src + 8 == a2)
    {
      v6 = *__src;
      v7 = a3 - a2;
      memmove(__src, __src + 8, a3 - a2);
      v4 = &__src[v7];
      *v4 = v6;
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
      return sub_29AC92324(__src, a2, a3);
    }
  }

  return v4;
}

char *sub_29AC92324(char *a1, char *a2, char *a3)
{
  v3 = a2 - a1;
  v4 = (a2 - a1) >> 3;
  v5 = a3 - a2;
  if (v4 == (a3 - a2) >> 3)
  {
    if (a1 != a2 && a2 != a3)
    {
      v6 = a2 + 8;
      v7 = a1 + 8;
      do
      {
        v8 = *(v7 - 1);
        *(v7 - 1) = *(v6 - 1);
        *(v6 - 1) = v8;
        if (v7 == a2)
        {
          break;
        }

        v7 += 8;
        v9 = v6 == a3;
        v6 += 8;
      }

      while (!v9);
    }
  }

  else
  {
    v10 = v5 >> 3;
    v11 = (a2 - a1) >> 3;
    do
    {
      v12 = v11;
      v11 = v10;
      v10 = v12 % v10;
    }

    while (v10);
    v13 = &a1[8 * v11];
    do
    {
      v15 = *(v13 - 1);
      v13 -= 8;
      v14 = v15;
      v16 = &v13[v3];
      v17 = v13;
      do
      {
        v18 = v17;
        v17 = v16;
        *v18 = *v16;
        v19 = __OFSUB__(v4, (a3 - v16) >> 3);
        v21 = v4 - ((a3 - v16) >> 3);
        v20 = (v21 < 0) ^ v19;
        v16 = &a1[8 * v21];
        if (v20)
        {
          v16 = v17 + v3;
        }
      }

      while (v16 != v13);
      *v17 = v14;
    }

    while (v13 != a1);
    return &a1[v5];
  }

  return a2;
}

uint64_t sub_29AC923F0(uint64_t a1, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    sub_29A00C9A4();
  }

  if (0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v6 = 0x276276276276276;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A09B7D4(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = (v7 + 104 * v2);
  *(&v16 + 1) = v7 + 104 * v6;
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(v15, a2);
  *&v16 = v15 + 104;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  sub_29AC92538(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29AC92600(&v14);
  return v13;
}

void sub_29AC92524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AC92600(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC92538(int a1, pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2, pxrInternal__aapl__pxrReserved__::HdRprimCollection *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection((a4 + v7), v8);
      v8 = (v8 + 104);
      v7 += 104;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      v11 = v6;
      do
      {
        v12 = *v11;
        v11 = (v11 + 104);
        result = (*v12)(v6);
        v10 = (v10 + 104);
        v6 = v11;
      }

      while (v11 != a3);
    }
  }

  return result;
}

void sub_29AC925E4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_29B2C6918(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AC92600(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 104);
    *(a1 + 16) = i - 104;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29AC9266C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AC90538(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_29AC926C0(tbb::internal::allocate_continuation_proxy *this)
{
  v42 = *MEMORY[0x29EDCA608];
  if (!*(this + 5))
  {
    *(this + 5) = 1;
    if (*(this - 11) < 0)
    {
      v2 = *(this - 4);
      if (*(v2 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v2 + 8) = 1;
        v3 = *(this + 52);
        if (v3 <= 1)
        {
          LOBYTE(v3) = 1;
        }

        *(this + 52) = v3 + 1;
      }
    }
  }

  v4 = (this + 8);
  v5 = *(this + 3);
  v6 = *(this + 1) - *(this + 2);
  if (v5 < v6)
  {
    v7 = *(this + 5);
    if (v7 > 1)
    {
      goto LABEL_12;
    }

    if (v7 && *(this + 52))
    {
      --*(this + 52);
      *(this + 5) = 0;
LABEL_12:
      while (1)
      {
        v8 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
        *(v8 - 11) = 1;
        *v8 = &unk_2A204C520;
        __dmb(0xBu);
        v8[8] = 0;
        *(this - 4) = v8;
        *(v8 - 3) = 2;
        v9 = tbb::internal::allocate_child_proxy::allocate(v8, 0x38uLL);
        *(v9 - 11) = 1;
        v10 = *(this + 1);
        v11 = *(this + 2);
        *v9 = &unk_2A207E0C8;
        *(v9 + 8) = v10;
        v12 = v11 + ((v10 - v11) >> 1);
        *(this + 1) = v12;
        *(v9 + 16) = v12;
        *(v9 + 24) = *(this + 24);
        v13 = *(this + 5) >> 1;
        *(this + 5) = v13;
        *(v9 + 40) = v13;
        *(v9 + 48) = 2;
        *(v9 + 52) = *(this + 52);
        (***(v9 - 40))();
        v5 = *(this + 3);
        v6 = *(this + 1) - *(this + 2);
        if (v5 >= v6)
        {
          break;
        }

        v14 = *(this + 5);
        if (v14 <= 1)
        {
          if (!v14 || !*(this + 52))
          {
            break;
          }

          --*(this + 52);
          *(this + 5) = 0;
        }
      }
    }
  }

  if (v5 < v6 && *(this + 52))
  {
    *v39 = 0x10000;
    v40 = *v4;
    v41 = *(this + 3);
    while (1)
    {
      v15 = sub_29A3B10B4(v39, *(this + 52));
      v16 = *(*(this - 4) + 8);
      __dmb(0xBu);
      if ((v16 & 1) == 0)
      {
        break;
      }

      v17 = *(this + 52) + 1;
      *(this + 52) = v17;
      v18 = v39[2];
      if (v39[2] < 2u)
      {
        v27 = v39[0];
        if (v39[v39[0] + 3] >= v17 || *(&v40 + 3 * v39[0] + 2) >= *(&v40 + 3 * v39[0]) - *(&v40 + 3 * v39[0] + 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        v19 = v39[1];
        v20 = v39[v39[1] + 3];
        v21 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
        *(v21 - 11) = 1;
        *v21 = &unk_2A204C520;
        __dmb(0xBu);
        v21[8] = 0;
        *(this - 4) = v21;
        *(v21 - 3) = 2;
        v22 = tbb::internal::allocate_child_proxy::allocate(v21, 0x38uLL);
        v23 = &v40 + 24 * v19;
        *(v22 - 11) = 1;
        *v22 = &unk_2A207E0C8;
        v24 = *v23;
        *(v22 + 24) = *(v23 + 2);
        *(v22 + 8) = v24;
        v25 = *(this + 4);
        v26 = *(this + 5) >> 1;
        *(this + 5) = v26;
        *(v22 + 32) = v25;
        *(v22 + 40) = v26;
        *(v22 + 48) = 2;
        *(v22 + 52) = *(this + 52) - v20;
        (***(v22 - 40))();
        v18 = --v39[2];
        v39[1] = (v39[1] + 1) & 7;
      }

LABEL_27:
      if (!v18 || tbb::task_group_context::is_group_execution_cancelled(*(this - 7)))
      {
        return 0;
      }
    }

    v27 = v39[0];
LABEL_24:
    v28 = *(this + 4);
    v29 = *v28;
    v31 = v28 + 8;
    v30 = *(v28 + 8);
    v32 = (*(v31 + 8) + (v30 >> 1));
    if (v30)
    {
      v29 = *(*v32 + v29);
    }

    v29(v32, *(&v40 + 3 * v27 + 1), *(&v40 + 3 * v27), v15);
    v18 = --v39[2];
    v39[0] = (v39[0] - 1) & 7;
    goto LABEL_27;
  }

  v33 = *(this + 4);
  v34 = *v33;
  v36 = v33 + 8;
  v35 = *(v33 + 8);
  v37 = (*(v36 + 8) + (v35 >> 1));
  if (v35)
  {
    v34 = *(*v37 + v34);
  }

  v34(v37);
  return 0;
}

void *sub_29AC92B28(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

  sub_29A3780A4(a1, v6, a4, &v22);
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

void sub_29AC92D58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AC92D70(va, 0);
  _Unwind_Resume(a1);
}

void sub_29AC92D70(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AC8ED8C(v2 + 4);
    }

    operator delete(v2);
  }
}

uint64_t sub_29AC92DCC(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29AC8ED8C(v3 + 4);
    }

    operator delete(v3);
  }

  return v2;
}

pxrInternal__aapl__pxrReserved__::HdRenderPass *pxrInternal__aapl__pxrReserved__::HdRenderPass::HdRenderPass(pxrInternal__aapl__pxrReserved__::HdRenderPass *this, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a2, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a3)
{
  *this = &unk_2A207E110;
  *(this + 1) = a2;
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection((this + 16));
  pxrInternal__aapl__pxrReserved__::HdRenderPass::SetRprimCollection(this, a3);
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderPass::SetRprimCollection(pxrInternal__aapl__pxrReserved__::HdRenderPass *this, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2)
{
  v4 = (this + 16);
  result = pxrInternal__aapl__pxrReserved__::HdRprimCollection::operator==(a2, this + 16);
  if ((result & 1) == 0)
  {
    sub_29A166F2C(this + 3, a2 + 1);
    sub_29A166F2C(this + 4, a2 + 2);
    sub_29A166F2C(this + 5, a2 + 3);
    sub_29A166F2C(this + 6, a2 + 4);
    *(this + 56) = *(a2 + 40);
    sub_29A166F2C(this + 8, a2 + 6);
    if (v4 != a2)
    {
      sub_29A324D54(this + 72, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
      sub_29A324D54(this + 96, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 3);
    }

    v6 = *(*this + 32);

    return v6(this);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderPass::Sync(pxrInternal__aapl__pxrReserved__::HdRenderIndex **this)
{
  sub_29A0ECEEC(&v3, "hd", "void pxrInternal__aapl__pxrReserved__::HdRenderPass::Sync()");
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::EnqueueCollectionToSync(this[1], (this + 2));
  result = (*(*this + 5))(this);
  if (v3)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v4, v3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens_StaticTokenType::~HdRenderPassSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens_StaticTokenType *this)
{
  v4 = (this + 24);
  sub_29A124AB0(&v4);
  v2 = *(this + 2);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 1);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens_StaticTokenType::HdRenderPassSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens_StaticTokenType *this)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "renderPass", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "passType", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "renderSource", 0);
  v3 = (this + 24);
  v4 = *this;
  v13 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v5;
    }
  }

  v6 = *(this + 1);
  v14 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v7;
    }
  }

  v8 = *(this + 2);
  v15 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v9;
    }
  }

  *v3 = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  sub_29A12EF7C(v3, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v11 = *(&v13 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AC93270(_Unwind_Exception *a1)
{
  v3 = 16;
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
      v5 = v1[2];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderPassSchema::GetPassType(pxrInternal__aapl__pxrReserved__::HdRenderPassSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC93A84(&pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdRenderPassSchema::GetRenderSource(pxrInternal__aapl__pxrReserved__::HdRenderPassSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC93A84(&pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens);
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

  sub_29ABE18CC(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderPassSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v25[1] = *MEMORY[0x29EDCA608];
  v5 = &v22;
  v24 = 0;
  v25[0] = 0;
  v6 = &v24;
  v22 = 0u;
  v23 = 0u;
  if (*a1)
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens);
    if (!v8)
    {
      v8 = sub_29AC93A84(&pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens);
    }

    v5 = &v23;
    v6 = v25;
    sub_29A166F2C(&v24, v8 + 1);
    v10 = *a1;
    v9 = a1[1];
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = *(&v22 + 1);
    *&v22 = v10;
    *(&v22 + 1) = v9;
    if (v11)
    {
      sub_29A014BEC(v11);
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  if (*a2)
  {
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens);
    if (!v13)
    {
      v13 = sub_29AC93A84(&pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens);
    }

    sub_29A166F2C(v6, v13 + 2);
    ++v12;
    v15 = *a2;
    v14 = a2[1];
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v16 = *(v5 + 1);
    *v5 = v15;
    *(v5 + 1) = v14;
    if (v16)
    {
      sub_29A014BEC(v16);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v12, &v24, &v22, &v21);
  *a3 = v21;
  for (i = 24; i != -8; i -= 16)
  {
    v18 = *(&v22 + i);
    if (v18)
    {
      sub_29A014BEC(v18);
    }
  }

  for (j = 1; j != -1; --j)
  {
    v20 = v25[j - 1];
    if ((v20 & 7) != 0)
    {
      atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AC93604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v17 = 24;
  while (1)
  {
    v18 = *(&a11 + v17);
    if (v18)
    {
      sub_29A014BEC(v18);
    }

    v17 -= 16;
    if (v17 == -8)
    {
      v19 = 8;
      while (1)
      {
        v20 = *(&a16 + v19);
        if ((v20 & 7) != 0)
        {
          atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v19 -= 8;
        if (v19 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdRenderPassSchema::Builder::SetPassType(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderPassSchema::Builder::SetRenderSource(uint64_t a1, uint64_t *a2)
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

void pxrInternal__aapl__pxrReserved__::HdRenderPassSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens))
    {
      sub_29AC93A84(&pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdRenderPassSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdRenderPassSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens);
  if (!result)
  {
    return sub_29AC93A84(&pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdRenderPassSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdRenderPassSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B0E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174B0E8))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens);
    if (!v2)
    {
      v2 = sub_29AC93A84(&pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174B0B0, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A174B0B0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174B0E8);
  }

  return &unk_2A174B0B0;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdRenderPassSchema::GetPassTypeLocator(pxrInternal__aapl__pxrReserved__::HdRenderPassSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B128, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174B128);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderPassSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AC93A84(&pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174B0B0, (v3 + 8), dword_2A174B0F0);
      __cxa_atexit(sub_29ABC33B4, dword_2A174B0F0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174B128);
    }
  }

  return dword_2A174B0F0;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdRenderPassSchema::GetRenderSourceLocator(pxrInternal__aapl__pxrReserved__::HdRenderPassSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B168, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174B168);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderPassSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens);
      if (!v3)
      {
        v3 = sub_29AC93A84(&pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174B0B0, (v3 + 16), dword_2A174B130);
      __cxa_atexit(sub_29ABC33B4, dword_2A174B130, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174B168);
    }
  }

  return dword_2A174B130;
}

pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens_StaticTokenType *sub_29AC93A84(atomic_ullong *a1)
{
  result = sub_29AC93ACC();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens_StaticTokenType::~HdRenderPassSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens_StaticTokenType *sub_29AC93ACC()
{
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::HdRenderPassSchemaTokens_StaticTokenType::HdRenderPassSchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdRenderPassState *pxrInternal__aapl__pxrReserved__::HdRenderPassState::HdRenderPassState(pxrInternal__aapl__pxrReserved__::HdRenderPassState *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A207E160;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 3) = _D0;
  pxrInternal__aapl__pxrReserved__::CameraUtilFraming::CameraUtilFraming((this + 32));
  *(this + 68) = 0;
  *(this + 72) = 0;
  *(this + 76) = 0u;
  *(this + 92) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0x404000003F800000;
  *(this + 64) = 257;
  *(this + 132) = xmmword_29B47CF20;
  *(this + 148) = xmmword_29B6DBB70;
  *(this + 164) = xmmword_29B6DBB80;
  *(this + 45) = -1082130432;
  *(this + 92) = 1;
  *(this + 188) = 0x3F80000000000000;
  *(this + 49) = 3;
  *(this + 100) = 257;
  *(this + 202) = 0;
  *(this + 204) = 0x3F80000000000000;
  *(this + 212) = xmmword_29B6DBB90;
  *(this + 228) = 0;
  *(this + 233) = 0;
  *(this + 61) = 1065353216;
  *(this + 248) = xmmword_29B6DBBA0;
  *(this + 66) = 1;
  *(this + 282) = 0;
  *(this + 268) = 0;
  *(this + 276) = 0;
  *(this + 290) = 1;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 45) = 0;
  *(this + 184) = 1;
  *(this + 372) = 0;
  *(this + 380) = 1;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HdRenderPassState::~HdRenderPassState(pxrInternal__aapl__pxrReserved__::HdRenderPassState *this)
{
  *this = &unk_2A207E160;
  v3 = (this + 344);
  sub_29AC943DC(&v3);
  v3 = (this + 320);
  sub_29AC943DC(&v3);
  v2 = *(this + 37);
  if (v2)
  {
    *(this + 38) = v2;
    operator delete(v2);
  }
}

{
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::~HdRenderPassState(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetOverrideWindowPolicy(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 72) = *(a2 + 4);
  *(result + 68) = v2;
  return result;
}

double pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetViewport(uint64_t a1, float64x2_t *a2)
{
  *(a1 + 16) = vcvt_hight_f32_f64(vcvt_f32_f64(*a2), a2[1]);
  pxrInternal__aapl__pxrReserved__::CameraUtilFraming::CameraUtilFraming(v5);
  result = *v5;
  v4 = v5[1];
  *(a1 + 32) = v5[0];
  *(a1 + 48) = v4;
  *(a1 + 64) = v6;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetFraming(__n128 *this, __n128 *a2)
{
  result = *a2;
  v3 = a2[1];
  this[4].n128_u32[0] = a2[2].n128_u32[0];
  this[2] = result;
  this[3] = v3;
  return result;
}

double *pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetWorldToViewMatrix@<X0>(pxrInternal__aapl__pxrReserved__::HdRenderPassState *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 1);
  if (v2)
  {
    return pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse((v2 + 16), 0, 0.0, a2);
  }

  else
  {
    return pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a2, 1.0);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetWindowPolicy(pxrInternal__aapl__pxrReserved__::HdRenderPassState *this)
{
  if (*(this + 72) == 1)
  {
    v1 = (this + 68);
    return *v1;
  }

  v2 = *(this + 1);
  if (v2)
  {
    v1 = (v2 + 316);
    return *v1;
  }

  return 2;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetProjectionMatrix@<X0>(pxrInternal__aapl__pxrReserved__::HdCamera **this@<X0>, uint64_t a2@<X8>)
{
  if (this[1])
  {
    if (pxrInternal__aapl__pxrReserved__::CameraUtilFraming::IsValid((this + 4)))
    {
      pxrInternal__aapl__pxrReserved__::HdCamera::ComputeProjectionMatrix(this[1]);
    }

    pxrInternal__aapl__pxrReserved__::HdCamera::ComputeProjectionMatrix(this[1]);
  }

  return pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a2, 1.0);
}

double *pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetImageToWorldMatrix@<X0>(pxrInternal__aapl__pxrReserved__::HdRenderPassState *this@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::CameraUtilFraming::IsValid((this + 32)))
  {
    v4 = *(this + 6);
    v5 = *(this + 7);
  }

  else
  {
    v6 = *(this + 4);
    v7 = *(this + 5);
    v4 = v6 | (v7 << 32);
    v5 = (v6 + *(this + 6) - 1) | ((v7 + *(this + 7) - 1) << 32);
  }

  v39 = vcvtd_n_f64_s32(v5 - v4 + 1, 1uLL);
  v40 = vcvtd_n_f64_s32(HIDWORD(v5) - HIDWORD(v4) + 1, 1uLL);
  v41 = 0x3FE0000000000000;
  v38[0] = v39 + v4;
  v38[1] = v40 + SHIDWORD(v4);
  v38[2] = 0.5;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetScale(&v29, &v39);
  v9 = v8;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetTranslate(&v21, v38);
  v10 = v9[3];
  v12 = *v9;
  v11 = v9[1];
  v37[2] = v9[2];
  v37[3] = v10;
  v37[0] = v12;
  v37[1] = v11;
  v13 = v9[7];
  v15 = v9[4];
  v14 = v9[5];
  v37[6] = v9[6];
  v37[7] = v13;
  v37[4] = v15;
  v37[5] = v14;
  v17 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v37, v16);
  (*(*this + 24))(v20, this, v17);
  (*(*this + 32))(v19, this);
  v25 = v20[4];
  v26 = v20[5];
  v27 = v20[6];
  v28 = v20[7];
  v21 = v20[0];
  v22 = v20[1];
  v23 = v20[2];
  v24 = v20[3];
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v21, v19);
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = v28;
  v29 = v21;
  v30 = v22;
  v31 = v23;
  v32 = v24;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v29, v37);
  return pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(&v29, 0, 0.0, a2);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetClipPlanes(pxrInternal__aapl__pxrReserved__::HdRenderPassState *this)
{
  if (*(this + 129) == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      return (v3 + 176);
    }
  }

  if (atomic_load_explicit(&qword_2A174B170, memory_order_acquire))
  {
    return &qword_2A174B178;
  }

  v5[1] = v1;
  v5[2] = v2;
  sub_29B2C6984(v5);
  return v5[0];
}

uint64_t sub_29AC94144(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

__n128 pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetOverrideColor(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 76) = *a2;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetWireframeColor(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 92) = *a2;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetMaskColor(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 132) = *a2;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetIndicatorColor(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 148) = *a2;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetPointColor(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 108) = *a2;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetAovBindings(uint64_t a1, uint64_t *a2)
{
  result = a1 + 320;
  if (result != a2)
  {
    return sub_29AC944C0(result, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 4));
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetAovInputBindings(uint64_t a1, uint64_t *a2)
{
  result = a1 + 344;
  if (result != a2)
  {
    return sub_29AC944C0(result, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 4));
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetDepthBias(uint64_t this, float a2, float a3)
{
  *(this + 188) = a2;
  *(this + 192) = a3;
  return this;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetStencil(_DWORD *result, int a2, int a3, int a4, int a5, int a6, int a7)
{
  result[54] = a2;
  result[55] = a3;
  result[56] = a4;
  result[57] = a5;
  result[58] = a6;
  result[59] = a7;
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetBlend(_DWORD *result, int a2, int a3, int a4, int a5, int a6, int a7)
{
  result[62] = a2;
  result[63] = a3;
  result[64] = a4;
  result[65] = a5;
  result[66] = a6;
  result[67] = a7;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetBlendConstantColor(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[17] = *a2;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetVolumeRenderingConstants(uint64_t this, float a2, float a3)
{
  *(this + 372) = a2;
  *(this + 376) = a3;
  return this;
}

char **pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetColorMasks(uint64_t a1, char **a2)
{
  result = (a1 + 296);
  if (result != a2)
  {
    return sub_29A36CF34(result, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  return result;
}

float32x2_t pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetDrawingRangeNDC(pxrInternal__aapl__pxrReserved__::HdRenderPassState *this)
{
  if (pxrInternal__aapl__pxrReserved__::CameraUtilFraming::IsValid((this + 32)))
  {
    v2 = vadd_s32(vsub_s32(*(this + 56), *(this + 48)), 0x100000001);
  }

  else
  {
    v2 = vcvt_s32_f32(*(this + 24));
  }

  return vdiv_f32(vadd_f32(*(this + 176), *(this + 176)), vcvt_f32_s32(v2));
}

void sub_29AC943DC(void ***a1)
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
        v4 -= 80;
        sub_29AC94464(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29AC94464(uint64_t a1, uint64_t a2)
{
  sub_29AC1E22C(a2 + 40);
  sub_29A186B14(a2 + 24);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 20));
  result = sub_29A1DE3A4((a2 + 16));
  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t sub_29AC944C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_29AC94630(a1);
    if (a4 > 0x333333333333333)
    {
      sub_29A00C9A4();
    }

    v9 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
    {
      v10 = 0x333333333333333;
    }

    else
    {
      v10 = v9;
    }

    sub_29AB876CC(a1, v10);
    result = sub_29AC9469C(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v12 >> 4) < a4)
  {
    sub_29AC947D4(&v16, a2, a2 + v12, v8);
    result = sub_29AC9469C(a1, a2 + v12, a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = result;
    return result;
  }

  result = sub_29AC947D4(&v17, a2, a3, v8);
  v14 = v13;
  v15 = *(a1 + 8);
  if (v15 != v13)
  {
    do
    {
      v15 -= 80;
      result = sub_29AC94464(a1, v15);
    }

    while (v15 != v14);
  }

  *(a1 + 8) = v14;
  return result;
}

void sub_29AC94630(void **a1)
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
        v3 -= 80;
        sub_29AC94464(a1, v3);
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

uint64_t sub_29AC9469C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    std::allocator<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding,pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding&>();
  }

  v7 = 1;
  sub_29AC94748(v6);
  return a4;
}

uint64_t sub_29AC94748(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AC94780(a1);
  }

  return a1;
}

uint64_t *sub_29AC94780(uint64_t *result)
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
      v3 -= 80;
      result = sub_29AC94464(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_29AC947D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = a4 + 40;
  do
  {
    sub_29A166F2C((v6 - 40), v4);
    *(v6 - 32) = *(v4 + 8);
    sub_29A2258F0((v6 - 24), (v4 + 16));
    sub_29A225948((v6 - 20), (v4 + 20));
    sub_29A1854E8((v6 - 16), (v4 + 24));
    if (v6 - 40 != v4)
    {
      *(v6 + 32) = *(v4 + 72);
      sub_29AC9488C(v6, *(v4 + 56), 0);
    }

    v6 += 80;
    v4 += 80;
  }

  while (v4 != v5);
  return v5;
}

void sub_29AC9488C(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        sub_29A166F2C(v8 + 2, v4 + 2);
        sub_29A1854E8(v8 + 3, v4 + 3);
        v10 = *v8;
        sub_29A166EC8(a1, v8);
        v4 = *v4;
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    sub_29AC1E268(a1, v10);
  }

  while (v4 != a3)
  {
    sub_29AC94994(a1, v4 + 2);
    v4 = *v4;
  }
}

void sub_29AC94964(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29AC1E268(v1, v2);
  __cxa_rethrow();
}

void sub_29AC949D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11)
{
  if (a10)
  {
    sub_29AC1E628(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29AC949F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x28uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *v6 = 0;
  v6[1] = 0;
  result = sub_29ABED010(v6 + 2, a2);
  *(a3 + 16) = 1;
  v6[1] = bswap64(0x9E3779B97F4A7C55 * (v6[2] & 0xFFFFFFFFFFFFFFF8));
  return result;
}

void sub_29AC94A80(_Unwind_Exception *a1)
{
  *v2 = 0;
  sub_29AC1E628(v3, v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens_StaticTokenType::~HdRenderProductSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens_StaticTokenType *this)
{
  v15 = (this + 112);
  sub_29A124AB0(&v15);
  v2 = *(this + 13);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 12);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 11);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 10);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 9);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 8);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 7);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 6);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 5);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 4);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 3);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 2);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 1);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens_StaticTokenType::HdRenderProductSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens_StaticTokenType *this)
{
  v35 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "renderProduct", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "path", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "type", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "name", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "resolution", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "renderVars", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "cameraPrim", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "pixelAspectRatio", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "aspectRatioConformPolicy", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "apertureSize", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "dataWindowNDC", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "disableMotionBlur", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "disableDepthOfField", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "namespacedSettings", 0);
  v3 = (this + 112);
  v4 = *this;
  v21 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v21 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v22 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v23 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v24 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v25 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v26 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v27 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v28 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v29 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v30 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v31 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v32 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v33 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v34 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  sub_29A12EF7C(v3, &v21, &v35, 0xEuLL);
  for (i = 104; i != -8; i -= 8)
  {
    v19 = *(&v21 + i);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AC95048(_Unwind_Exception *a1)
{
  v3 = 104;
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
      v5 = v1[13];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[12];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[11];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[10];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[9];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[8];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[7];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[6];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[5];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[4];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[3];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[2];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[1];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetPath(pxrInternal__aapl__pxrReserved__::HdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
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

  sub_29ABE18CC(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetType(pxrInternal__aapl__pxrReserved__::HdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetName(pxrInternal__aapl__pxrReserved__::HdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetResolution(pxrInternal__aapl__pxrReserved__::HdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
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

  sub_29AC954CC(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC954CC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29AC96C90(&v4, a2);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetRenderVars(pxrInternal__aapl__pxrReserved__::HdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
  }

  v5 = *(v4 + 5);
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  sub_29AC100E4(this, &v9);
  v7 = v10;
  *a2 = v9;
  a2[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }

  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetCameraPrim(pxrInternal__aapl__pxrReserved__::HdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetPixelAspectRatio(pxrInternal__aapl__pxrReserved__::HdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
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

  sub_29ABCABD8(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetAspectRatioConformPolicy(pxrInternal__aapl__pxrReserved__::HdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetApertureSize(pxrInternal__aapl__pxrReserved__::HdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
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

  sub_29ABCAFD4(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetDataWindowNDC(pxrInternal__aapl__pxrReserved__::HdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
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

  sub_29AC959A0(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC959A0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29AC96D20(&v4, a2);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetDisableMotionBlur(pxrInternal__aapl__pxrReserved__::HdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
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

  sub_29ABCB628(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetDisableDepthOfField(pxrInternal__aapl__pxrReserved__::HdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
  }

  v5 = *(v4 + 12);
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

void pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::GetNamespacedSettings(pxrInternal__aapl__pxrReserved__::HdRenderProductSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
  }

  v5 = *(v4 + 13);
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

void pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, _OWORD *a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14)
{
  v109 = *MEMORY[0x29EDCA608];
  v108 = 0;
  v21 = &v105;
  memset(v107, 0, sizeof(v107));
  memset(v106, 0, sizeof(v106));
  v105 = 0u;
  v22 = v107;
  if (*a1)
  {
    v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    if (!v24)
    {
      v24 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    }

    v21 = v106;
    v22 = v107 + 1;
    sub_29A166F2C(v107, v24 + 1);
    v26 = *a1;
    v25 = a1[1];
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
    }

    v27 = *(&v105 + 1);
    *&v105 = v26;
    *(&v105 + 1) = v25;
    if (v27)
    {
      sub_29A014BEC(v27);
    }

    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  if (*a2)
  {
    v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    if (!v29)
    {
      v29 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v22, v29 + 2);
    ++v28;
    v31 = *a2;
    v30 = a2[1];
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    v32 = *(v21 + 1);
    *v21 = v31;
    *(v21 + 1) = v30;
    if (v32)
    {
      sub_29A014BEC(v32);
    }
  }

  if (*a3)
  {
    v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    if (!v33)
    {
      v33 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v107 + v28, v33 + 3);
    v34 = v28 + 1;
    v35 = &v106[v28 - 1];
    v37 = *a3;
    v36 = a3[1];
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

  if (*a4)
  {
    v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    if (!v39)
    {
      v39 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v107 + v34, v39 + 4);
    v40 = v34 + 1;
    v41 = &v106[v34 - 1];
    v43 = *a4;
    v42 = a4[1];
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

  if (*a5)
  {
    v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    if (!v45)
    {
      v45 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v107 + v40, v45 + 5);
    v46 = v40 + 1;
    v47 = &v106[v40 - 1];
    v49 = *a5;
    v48 = a5[1];
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

  if (*a6)
  {
    v51 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    if (!v51)
    {
      v51 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v107 + v46, v51 + 6);
    v52 = v46 + 1;
    v53 = &v106[v46 - 1];
    v55 = *a6;
    v54 = a6[1];
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

  if (*a7)
  {
    v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    if (!v57)
    {
      v57 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v107 + v52, v57 + 7);
    v58 = v52 + 1;
    v59 = &v106[v52 - 1];
    v61 = *a7;
    v60 = a7[1];
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

  if (*a8)
  {
    v63 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    if (!v63)
    {
      v63 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v107 + v58, v63 + 8);
    v64 = v58 + 1;
    v65 = &v106[v58 - 1];
    v67 = *a8;
    v66 = a8[1];
    if (v66)
    {
      atomic_fetch_add_explicit((v66 + 8), 1uLL, memory_order_relaxed);
    }

    v68 = v65[1];
    *v65 = v67;
    v65[1] = v66;
    if (v68)
    {
      sub_29A014BEC(v68);
    }
  }

  else
  {
    v64 = v58;
  }

  if (*a10)
  {
    v69 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    if (!v69)
    {
      v69 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v107 + v64, v69 + 9);
    v70 = v64 + 1;
    v71 = &v106[v64 - 1];
    v73 = *a10;
    v72 = a10[1];
    if (v72)
    {
      atomic_fetch_add_explicit((v72 + 8), 1uLL, memory_order_relaxed);
    }

    v74 = v71[1];
    *v71 = v73;
    v71[1] = v72;
    if (v74)
    {
      sub_29A014BEC(v74);
    }
  }

  else
  {
    v70 = v64;
  }

  if (*a11)
  {
    v75 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    if (!v75)
    {
      v75 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v107 + v70, v75 + 10);
    v76 = v70 + 1;
    v77 = &v106[v70 - 1];
    v79 = *a11;
    v78 = a11[1];
    if (v78)
    {
      atomic_fetch_add_explicit((v78 + 8), 1uLL, memory_order_relaxed);
    }

    v80 = v77[1];
    *v77 = v79;
    v77[1] = v78;
    if (v80)
    {
      sub_29A014BEC(v80);
    }
  }

  else
  {
    v76 = v70;
  }

  if (*a12)
  {
    v81 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    if (!v81)
    {
      v81 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v107 + v76, v81 + 11);
    v82 = v76 + 1;
    v83 = &v106[v76 - 1];
    v85 = *a12;
    v84 = a12[1];
    if (v84)
    {
      atomic_fetch_add_explicit((v84 + 8), 1uLL, memory_order_relaxed);
    }

    v86 = v83[1];
    *v83 = v85;
    v83[1] = v84;
    if (v86)
    {
      sub_29A014BEC(v86);
    }
  }

  else
  {
    v82 = v76;
  }

  if (*a13)
  {
    v87 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    if (!v87)
    {
      v87 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v107 + v82, v87 + 12);
    v88 = v82 + 1;
    v89 = &v106[v82 - 1];
    v91 = *a13;
    v90 = a13[1];
    if (v90)
    {
      atomic_fetch_add_explicit((v90 + 8), 1uLL, memory_order_relaxed);
    }

    v92 = v89[1];
    *v89 = v91;
    v89[1] = v90;
    if (v92)
    {
      sub_29A014BEC(v92);
    }
  }

  else
  {
    v88 = v82;
  }

  if (*a14)
  {
    v93 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    if (!v93)
    {
      v93 = sub_29AC96C04(&pxrInternal__aapl__pxrReserved__::HdRenderProductSchemaTokens);
    }

    sub_29A166F2C(v107 + v88, v93 + 13);
    v94 = v88 + 1;
    v95 = &v106[v88 - 1];
    v97 = *a14;
    v96 = a14[1];
    if (v96)
    {
      atomic_fetch_add_explicit((v96 + 8), 1uLL, memory_order_relaxed);
    }

    v98 = v95[1];
    *v95 = v97;
    v95[1] = v96;
    if (v98)
    {
      sub_29A014BEC(v98);
    }
  }

  else
  {
    v94 = v88;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v94, v107, &v105, &v104);
  *a9 = v104;
  for (i = 200; i != -8; i -= 16)
  {
    v100 = *(&v106[-1] + i);
    if (v100)
    {
      sub_29A014BEC(v100);
    }
  }

  for (j = 96; j != -8; j -= 8)
  {
    v102 = *(v107 + j);
    if ((v102 & 7) != 0)
    {
      atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AC96348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v15 = 200;
  while (1)
  {
    v16 = *(&a13 + v15);
    if (v16)
    {
      sub_29A014BEC(v16);
    }

    v15 -= 16;
    if (v15 == -8)
    {
      v17 = 96;
      while (1)
      {
        v18 = *(v13 - 208 + v17);
        if ((v18 & 7) != 0)
        {
          atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v17 -= 8;
        if (v17 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetPath(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetType(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderProductSchema::Builder::SetName(uint64_t a1, uint64_t *a2)
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