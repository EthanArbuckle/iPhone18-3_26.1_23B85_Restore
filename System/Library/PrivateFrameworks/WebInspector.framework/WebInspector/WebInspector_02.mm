void sub_273CBF03C(_Unwind_Exception *a1)
{
  WTF::Ref<Inspector::CSSBackendDispatcher,WTF::RawPtrTraits<Inspector::CSSBackendDispatcher>,WTF::DefaultRefDerefTraits<Inspector::CSSBackendDispatcher>>::~Ref((v1 + 24));
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  Inspector::InspectorAgentBase::~InspectorAgentBase(v1, v3);
  _Unwind_Resume(a1);
}

uint64_t Inspector::AlternateDispatchableAgent<Inspector::DOMBackendDispatcher,Inspector::AlternateDOMBackendDispatcher>::~AlternateDispatchableAgent(Inspector::InspectorAgentBase *a1, void *a2)
{
  Inspector::AlternateDispatchableAgent<Inspector::DOMBackendDispatcher,Inspector::AlternateDOMBackendDispatcher>::~AlternateDispatchableAgent(a1, a2);

  return WTF::fastFree(v2, v3);
}

void *Inspector::ObjCInspectorDOMStorageBackendDispatcher::ObjCInspectorDOMStorageBackendDispatcher(void *a1, void *a2)
{
  a1[1] = 0;
  *a1 = &unk_2882B1830;
  a1[2] = 0;
  if (a2)
  {
    v4 = a2;
    v5 = a1[2];
    a1[2] = a2;
    if (v5)
    {
    }
  }

  return a1;
}

void sub_273CBF134(_Unwind_Exception *a1, void *a2)
{
  v5 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v5)
  {
  }

  Inspector::ObjCInspectorCSSBackendDispatcher::ObjCInspectorCSSBackendDispatcher(v3, a2);
  _Unwind_Resume(a1);
}

atomic_uint *std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::DOMStorageBackendDispatcher,Inspector::AlternateDOMStorageBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorDOMStorageBackendDispatcher>,0>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = WTF::fastMalloc(0x20);
  v9 = a1[1];
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = MEMORY[0x277CD4668];
      atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    }

    else
    {
      v11 = *a1;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v10 = v15[1];
    }

    v15[0] = v10;
  }

  else
  {
    v15[0] = 0;
  }

  v12 = *a3;
  *a3 = 0;
  v14 = v12;
  Inspector::AlternateDispatchableAgent<Inspector::DOMStorageBackendDispatcher,Inspector::AlternateDOMStorageBackendDispatcher>::AlternateDispatchableAgent(v8, v15, a2, &v14);
  return std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::DOMStorageBackendDispatcher,Inspector::AlternateDOMStorageBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorDOMStorageBackendDispatcher>,0>(v8, a4, &v14);
}

void *Inspector::AlternateDispatchableAgent<Inspector::DOMStorageBackendDispatcher,Inspector::AlternateDOMStorageBackendDispatcher>::AlternateDispatchableAgent(void *a1, atomic_uint **a2, uint64_t a3, uint64_t *a4)
{
  *a1 = &unk_2882B1A20;
  v6 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *a1 = &unk_2882B1AA0;
  a1[1] = v6;
  v7 = *a4;
  *a4 = 0;
  a1[2] = v7;
  (*(*a3 + 40))(a3);
  Inspector::DOMStorageBackendDispatcher::create();
  v8 = a1[2];
  *(a1[3] + 24) = v8;
  v9 = (*(*a3 + 40))(a3);
  ++*v9;
  v11 = *(v8 + 8);
  *(v8 + 8) = v9;
  if (v11)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v11, v10);
  }

  return a1;
}

void sub_273CBF370(_Unwind_Exception *a1)
{
  WTF::Ref<Inspector::CSSBackendDispatcher,WTF::RawPtrTraits<Inspector::CSSBackendDispatcher>,WTF::DefaultRefDerefTraits<Inspector::CSSBackendDispatcher>>::~Ref((v1 + 24));
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  Inspector::InspectorAgentBase::~InspectorAgentBase(v1, v3);
  _Unwind_Resume(a1);
}

uint64_t Inspector::AlternateDispatchableAgent<Inspector::DOMStorageBackendDispatcher,Inspector::AlternateDOMStorageBackendDispatcher>::~AlternateDispatchableAgent(Inspector::InspectorAgentBase *a1, void *a2)
{
  Inspector::AlternateDispatchableAgent<Inspector::DOMStorageBackendDispatcher,Inspector::AlternateDOMStorageBackendDispatcher>::~AlternateDispatchableAgent(a1, a2);

  return WTF::fastFree(v2, v3);
}

void *Inspector::ObjCInspectorNetworkBackendDispatcher::ObjCInspectorNetworkBackendDispatcher(void *a1, void *a2)
{
  a1[1] = 0;
  *a1 = &unk_2882B1880;
  a1[2] = 0;
  if (a2)
  {
    v4 = a2;
    v5 = a1[2];
    a1[2] = a2;
    if (v5)
    {
    }
  }

  return a1;
}

void sub_273CBF468(_Unwind_Exception *a1, void *a2)
{
  v5 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v5)
  {
  }

  Inspector::ObjCInspectorCSSBackendDispatcher::ObjCInspectorCSSBackendDispatcher(v3, a2);
  _Unwind_Resume(a1);
}

atomic_uint *std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::NetworkBackendDispatcher,Inspector::AlternateNetworkBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorNetworkBackendDispatcher>,0>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = WTF::fastMalloc(0x20);
  v9 = a1[1];
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = MEMORY[0x277CD4668];
      atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    }

    else
    {
      v11 = *a1;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v10 = v15[1];
    }

    v15[0] = v10;
  }

  else
  {
    v15[0] = 0;
  }

  v12 = *a3;
  *a3 = 0;
  v14 = v12;
  Inspector::AlternateDispatchableAgent<Inspector::NetworkBackendDispatcher,Inspector::AlternateNetworkBackendDispatcher>::AlternateDispatchableAgent(v8, v15, a2, &v14);
  return std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::NetworkBackendDispatcher,Inspector::AlternateNetworkBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorNetworkBackendDispatcher>,0>(v8, a4, &v14);
}

void *Inspector::AlternateDispatchableAgent<Inspector::NetworkBackendDispatcher,Inspector::AlternateNetworkBackendDispatcher>::AlternateDispatchableAgent(void *a1, atomic_uint **a2, uint64_t a3, uint64_t *a4)
{
  *a1 = &unk_2882B1A20;
  v6 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *a1 = &unk_2882B1AE0;
  a1[1] = v6;
  v7 = *a4;
  *a4 = 0;
  a1[2] = v7;
  (*(*a3 + 40))(a3);
  Inspector::NetworkBackendDispatcher::create();
  v8 = a1[2];
  *(a1[3] + 24) = v8;
  v9 = (*(*a3 + 40))(a3);
  ++*v9;
  v11 = *(v8 + 8);
  *(v8 + 8) = v9;
  if (v11)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v11, v10);
  }

  return a1;
}

void sub_273CBF6A4(_Unwind_Exception *a1)
{
  WTF::Ref<Inspector::CSSBackendDispatcher,WTF::RawPtrTraits<Inspector::CSSBackendDispatcher>,WTF::DefaultRefDerefTraits<Inspector::CSSBackendDispatcher>>::~Ref((v1 + 24));
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  Inspector::InspectorAgentBase::~InspectorAgentBase(v1, v3);
  _Unwind_Resume(a1);
}

uint64_t Inspector::AlternateDispatchableAgent<Inspector::NetworkBackendDispatcher,Inspector::AlternateNetworkBackendDispatcher>::~AlternateDispatchableAgent(Inspector::InspectorAgentBase *a1, void *a2)
{
  Inspector::AlternateDispatchableAgent<Inspector::NetworkBackendDispatcher,Inspector::AlternateNetworkBackendDispatcher>::~AlternateDispatchableAgent(a1, a2);

  return WTF::fastFree(v2, v3);
}

void *Inspector::ObjCInspectorPageBackendDispatcher::ObjCInspectorPageBackendDispatcher(void *a1, void *a2)
{
  a1[1] = 0;
  *a1 = &unk_2882B1920;
  a1[2] = 0;
  if (a2)
  {
    v4 = a2;
    v5 = a1[2];
    a1[2] = a2;
    if (v5)
    {
    }
  }

  return a1;
}

void sub_273CBF79C(_Unwind_Exception *a1, void *a2)
{
  v5 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v5)
  {
  }

  Inspector::ObjCInspectorCSSBackendDispatcher::ObjCInspectorCSSBackendDispatcher(v3, a2);
  _Unwind_Resume(a1);
}

atomic_uint *std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::PageBackendDispatcher,Inspector::AlternatePageBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorPageBackendDispatcher>,0>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = WTF::fastMalloc(0x20);
  v9 = a1[1];
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = MEMORY[0x277CD4668];
      atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    }

    else
    {
      v11 = *a1;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v10 = v15[1];
    }

    v15[0] = v10;
  }

  else
  {
    v15[0] = 0;
  }

  v12 = *a3;
  *a3 = 0;
  v14 = v12;
  Inspector::AlternateDispatchableAgent<Inspector::PageBackendDispatcher,Inspector::AlternatePageBackendDispatcher>::AlternateDispatchableAgent(v8, v15, a2, &v14);
  return std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::PageBackendDispatcher,Inspector::AlternatePageBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorPageBackendDispatcher>,0>(v8, a4, &v14);
}

void *Inspector::AlternateDispatchableAgent<Inspector::PageBackendDispatcher,Inspector::AlternatePageBackendDispatcher>::AlternateDispatchableAgent(void *a1, atomic_uint **a2, uint64_t a3, uint64_t *a4)
{
  *a1 = &unk_2882B1A20;
  v6 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *a1 = &unk_2882B1B20;
  a1[1] = v6;
  v7 = *a4;
  *a4 = 0;
  a1[2] = v7;
  (*(*a3 + 40))(a3);
  Inspector::PageBackendDispatcher::create();
  v8 = a1[2];
  *(a1[3] + 24) = v8;
  v9 = (*(*a3 + 40))(a3);
  ++*v9;
  v11 = *(v8 + 8);
  *(v8 + 8) = v9;
  if (v11)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v11, v10);
  }

  return a1;
}

void sub_273CBF9D8(_Unwind_Exception *a1)
{
  WTF::Ref<Inspector::CSSBackendDispatcher,WTF::RawPtrTraits<Inspector::CSSBackendDispatcher>,WTF::DefaultRefDerefTraits<Inspector::CSSBackendDispatcher>>::~Ref((v1 + 24));
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  Inspector::InspectorAgentBase::~InspectorAgentBase(v1, v3);
  _Unwind_Resume(a1);
}

uint64_t Inspector::AlternateDispatchableAgent<Inspector::PageBackendDispatcher,Inspector::AlternatePageBackendDispatcher>::~AlternateDispatchableAgent(Inspector::InspectorAgentBase *a1, void *a2)
{
  Inspector::AlternateDispatchableAgent<Inspector::PageBackendDispatcher,Inspector::AlternatePageBackendDispatcher>::~AlternateDispatchableAgent(a1, a2);

  return WTF::fastFree(v2, v3);
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1, void *a2, uint64_t *a3)
{
  *a2 = a1;
  result = *a3;
  *a3 = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_2(uint64_t result)
{
  v1 = *(result + 16);
  *(result + 16) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_5()
{
  result = *(v0 + 8);
  *(v0 + 8) = 0;
  return result;
}

void sub_273CBFBBC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, _DWORD *a11, WTF::StringImpl *a12)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a11)
  {
    Inspector::toJSONObjectArray(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CBFE68(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, _DWORD *a15, WTF::StringImpl *a16)
{
  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a14)
  {
    if (*a14 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a14;
    }
  }

  if (a15)
  {
    Inspector::toJSONObjectArray(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC0260(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, _DWORD *a15, uint64_t a16)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a14)
  {
    if (*a14 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a14;
    }
  }

  if (a15)
  {
    Inspector::toJSONObjectArray(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC05BC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, _DWORD *a15, WTF::StringImpl *a16)
{
  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a14)
  {
    if (*a14 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a14;
    }
  }

  if (a15)
  {
    Inspector::toJSONObjectArray(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC0A08(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, _DWORD *a15, uint64_t a16)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a14)
  {
    if (*a14 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a14;
    }
  }

  if (a15)
  {
    Inspector::toJSONObjectArray(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC0E68(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, _DWORD *a15, uint64_t a16)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a14)
  {
    if (*a14 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a14;
    }
  }

  if (a15)
  {
    Inspector::toJSONObjectArray(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC11C4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14, _DWORD *a15, uint64_t a16)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a14)
  {
    if (*a14 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a14;
    }
  }

  if (a15)
  {
    Inspector::toJSONObjectArray(a15);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *WTF::JSONImpl::ObjectBase::setDouble(WTF::JSONImpl::ObjectBase *this, WTF::StringImpl **a2, double a3)
{
  WTF::JSONImpl::Value::create(&v10, this, a3);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(this + 2, a2, &v10, v11);
  if (v11[16] == 1)
  {
    v5 = *(this + 9);
    if (v5 == *(this + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(this + 24, a2);
    }

    else
    {
      v6 = *(this + 3);
      v7 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      }

      v8 = *(this + 9);
      *(v6 + 8 * v5) = v7;
      *(this + 9) = v8 + 1;
    }
  }

  result = v10;
  v10 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_273CC13A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _DWORD *a9)
{
  if (a9)
  {
    Inspector::toJSONObjectArray(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC1644(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14, WTF::StringImpl *a15, WTF::StringImpl *a16, _DWORD *a17)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  if (a17)
  {
    Inspector::toJSONObjectArray(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC1ABC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, WTF::StringImpl *a15, uint64_t a16, WTF::StringImpl *a17, WTF::StringImpl *a18, _DWORD *a19)
{
  if (a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a18)
  {
    if (*a18 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a18;
    }
  }

  if (a19)
  {
    Inspector::toJSONObjectArray(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC1D50(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, _DWORD *a11, WTF::StringImpl *a12)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a11)
  {
    Inspector::toJSONObjectArray(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC1FB8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WTF::StringImpl *a12, _DWORD *a13, WTF::StringImpl *a14)
{
  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a12)
  {
    if (*a12 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a12;
    }
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC24D0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, WTF::StringImpl *a16, WTF::StringImpl *a17, _DWORD *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, WTF::StringImpl *a28)
{
  if (a28 && atomic_fetch_add_explicit(a28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a28, a2);
  }

  if (a17)
  {
    if (*a17 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a17;
    }
  }

  if (a18)
  {
    Inspector::toJSONObjectArray(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC28F0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14, WTF::StringImpl *a15, WTF::StringImpl *a16, _DWORD *a17, WTF::StringImpl *a18)
{
  if (a18 && atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a18, a2);
  }

  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  if (a17)
  {
    Inspector::toJSONObjectArray(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC2C98(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, _DWORD *a15, WTF::StringImpl *a16)
{
  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a14)
  {
    if (*a14 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a14;
    }
  }

  if (a15)
  {
    Inspector::toJSONObjectArray(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC308C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, _DWORD *a15, WTF::StringImpl *a16)
{
  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a14)
  {
    if (*a14 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a14;
    }
  }

  if (a15)
  {
    Inspector::toJSONObjectArray(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC3424(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, _DWORD *a15, WTF::StringImpl *a16)
{
  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a14)
  {
    if (*a14 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a14;
    }
  }

  if (a15)
  {
    Inspector::toJSONObjectArray(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC376C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WTF::StringImpl *a12, _DWORD *a13, WTF::StringImpl *a14)
{
  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a12)
  {
    if (*a12 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a12;
    }
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC3BC4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, _DWORD *a15, uint64_t a16)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a14)
  {
    if (*a14 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a14;
    }
  }

  if (a15)
  {
    Inspector::toJSONObjectArray(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC3F28(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WTF::StringImpl *a12, _DWORD *a13, WTF::StringImpl *a14)
{
  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a12)
  {
    if (*a12 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a12;
    }
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC420C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WTF::StringImpl *a12, _DWORD *a13, WTF::StringImpl *a14)
{
  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a12)
  {
    if (*a12 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a12;
    }
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC4618(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, _DWORD *a15, uint64_t a16)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a14)
  {
    if (*a14 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a14;
    }
  }

  if (a15)
  {
    Inspector::toJSONObjectArray(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC4974(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WTF::StringImpl *a12, _DWORD *a13, WTF::StringImpl *a14)
{
  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a12)
  {
    if (*a12 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a12;
    }
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC4D48(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14, WTF::StringImpl *a15, WTF::StringImpl *a16, _DWORD *a17)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  if (a17)
  {
    Inspector::toJSONObjectArray(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC51E4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, _DWORD *a15, uint64_t a16)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a14)
  {
    if (*a14 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a14;
    }
  }

  if (a15)
  {
    Inspector::toJSONObjectArray(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC5540(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WTF::StringImpl *a12, _DWORD *a13, WTF::StringImpl *a14)
{
  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a12)
  {
    if (*a12 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a12;
    }
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC5824(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WTF::StringImpl *a12, _DWORD *a13, WTF::StringImpl *a14)
{
  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a12)
  {
    if (*a12 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a12;
    }
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC5B00(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WTF::StringImpl *a12, _DWORD *a13, WTF::StringImpl *a14)
{
  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a12)
  {
    if (*a12 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a12;
    }
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC5FFC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14, WTF::StringImpl *a15, WTF::StringImpl *a16, _DWORD *a17, uint64_t a18)
{
  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  if (a17)
  {
    Inspector::toJSONObjectArray(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC63D4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WTF::StringImpl *a12, _DWORD *a13, WTF::StringImpl *a14)
{
  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a12)
  {
    if (*a12 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a12;
    }
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC6800(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, _DWORD *a15, uint64_t a16)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a14)
  {
    if (*a14 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a14;
    }
  }

  if (a15)
  {
    Inspector::toJSONObjectArray(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC6C88(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, _DWORD *a15, uint64_t a16)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a14)
  {
    if (*a14 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a14;
    }
  }

  if (a15)
  {
    Inspector::toJSONObjectArray(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC71BC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14, WTF::StringImpl *a15, WTF::StringImpl *a16, _DWORD *a17, uint64_t a18)
{
  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  if (a17)
  {
    Inspector::toJSONObjectArray(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC7788(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14, WTF::StringImpl *a15, WTF::StringImpl *a16, _DWORD *a17, uint64_t a18)
{
  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  if (a17)
  {
    Inspector::toJSONObjectArray(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC8280(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF::StringImpl *a20, WTF::StringImpl *a21, WTF::StringImpl *a22, WTF::StringImpl *a23, _DWORD *a24, uint64_t a25)
{
  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a21 && atomic_fetch_add_explicit(a21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a21, a2);
  }

  if (a23)
  {
    if (*a23 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a23;
    }
  }

  if (a24)
  {
    Inspector::toJSONObjectArray(a24);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC84D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, uint64_t a11)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  if (!a11)
  {
    JUMPOUT(0x273CC8440);
  }

  JUMPOUT(0x273CC8424);
}

void sub_273CC84FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15, _DWORD *a16)
{
  if (a16)
  {
    Inspector::toJSONObjectArray(a16);
  }

  if (a15)
  {
    if (*a15 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a15;
    }
  }

  JUMPOUT(0x273CC8418);
}

void sub_273CC8514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15, _DWORD *a16)
{
  if (a16)
  {
    Inspector::toJSONObjectArray(a16);
  }

  if (a15)
  {
    if (*a15 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a15;
    }
  }

  JUMPOUT(0x273CC8418);
}

uint64_t Inspector::toProtocolString()
{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

{
  return WTF::StringImpl::createWithoutCopyingNonEmpty();
}

void sub_273CC8BA0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, WTF::StringImpl *a18, WTF::StringImpl *a19, WTF::StringImpl *a20, _DWORD *a21, uint64_t a22)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a18 && atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a18, a2);
  }

  if (a20)
  {
    if (*a20 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a20;
    }
  }

  if (a21)
  {
    Inspector::toJSONObjectArray(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC8D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11)
{
  if (a11)
  {
    Inspector::toJSONObjectArray(a11);
  }

  JUMPOUT(0x273CC8CACLL);
}

void sub_273CC8D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, _DWORD *a11)
{
  if (a11)
  {
    Inspector::toJSONObjectArray(a11);
  }

  if (a10)
  {
    if (*a10 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a10;
    }
  }

  JUMPOUT(0x273CC8CACLL);
}

void sub_273CC90AC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, _DWORD *a15, WTF::StringImpl *a16)
{
  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a14)
  {
    if (*a14 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a14;
    }
  }

  if (a15)
  {
    Inspector::toJSONObjectArray(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC9630(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, WTF::StringImpl *a15, uint64_t a16, WTF::StringImpl *a17, WTF::StringImpl *a18, _DWORD *a19, uint64_t a20)
{
  if (a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a18)
  {
    if (*a18 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a18;
    }
  }

  if (a19)
  {
    Inspector::toJSONObjectArray(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC9AEC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, WTF::StringImpl *a15, WTF::StringImpl *a16, WTF::StringImpl *a17, WTF::StringImpl *a18, _DWORD *a19, uint64_t a20)
{
  if (a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a18)
  {
    if (*a18 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a18;
    }
  }

  if (a19)
  {
    Inspector::toJSONObjectArray(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CC9C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, uint64_t a12)
{
  if (a11)
  {
    Inspector::toJSONObjectArray(a11);
  }

  if (!a12)
  {
    JUMPOUT(0x273CC9B98);
  }

  JUMPOUT(0x273CC9B7CLL);
}

void sub_273CCA288(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, WTF::StringImpl *a16, WTF::StringImpl *a17, WTF::StringImpl *a18, _DWORD *a19, uint64_t a20)
{
  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a18)
  {
    if (*a18 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a18;
    }
  }

  if (a19)
  {
    Inspector::toJSONObjectArray(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCA3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11)
{
  if (a11)
  {
    Inspector::toJSONObjectArray(a11);
  }

  JUMPOUT(0x273CCA33CLL);
}

void sub_273CCA414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, _DWORD *a11)
{
  if (a11)
  {
    Inspector::toJSONObjectArray(a11);
  }

  if (a10)
  {
    if (*a10 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a10;
    }
  }

  JUMPOUT(0x273CCA33CLL);
}

void sub_273CCA7BC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14, WTF::StringImpl *a15, WTF::StringImpl *a16, _DWORD *a17, uint64_t a18)
{
  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  if (a17)
  {
    Inspector::toJSONObjectArray(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCAC74(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14, WTF::StringImpl *a15, WTF::StringImpl *a16, _DWORD *a17, uint64_t a18)
{
  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  if (a17)
  {
    Inspector::toJSONObjectArray(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCB1AC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14, WTF::StringImpl *a15, WTF::StringImpl *a16, _DWORD *a17, uint64_t a18)
{
  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  if (a17)
  {
    Inspector::toJSONObjectArray(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCB6B8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14, WTF::StringImpl *a15, WTF::StringImpl *a16, _DWORD *a17, uint64_t a18)
{
  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  if (a17)
  {
    Inspector::toJSONObjectArray(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCBAC4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14, WTF::StringImpl *a15, WTF::StringImpl *a16, _DWORD *a17, WTF::StringImpl *a18)
{
  if (a18 && atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a18, a2);
  }

  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  if (a17)
  {
    Inspector::toJSONObjectArray(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCBE6C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, _DWORD *a15, WTF::StringImpl *a16)
{
  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a14)
  {
    if (*a14 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a14;
    }
  }

  if (a15)
  {
    Inspector::toJSONObjectArray(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCC32C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14, WTF::StringImpl *a15, WTF::StringImpl *a16, _DWORD *a17, uint64_t a18)
{
  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  if (a17)
  {
    Inspector::toJSONObjectArray(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCC77C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14, WTF::StringImpl *a15, WTF::StringImpl *a16, _DWORD *a17, WTF::StringImpl *a18)
{
  if (a18 && atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a18, a2);
  }

  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  if (a17)
  {
    Inspector::toJSONObjectArray(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCCC58(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14, WTF::StringImpl *a15, WTF::StringImpl *a16, _DWORD *a17, uint64_t a18)
{
  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  if (a17)
  {
    Inspector::toJSONObjectArray(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCCFF4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WTF::StringImpl *a12, _DWORD *a13, WTF::StringImpl *a14)
{
  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a12)
  {
    if (*a12 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a12;
    }
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCD2D0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WTF::StringImpl *a12, _DWORD *a13, WTF::StringImpl *a14)
{
  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a12)
  {
    if (*a12 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a12;
    }
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCD6A0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, _DWORD *a15, uint64_t a16)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a14)
  {
    if (*a14 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a14;
    }
  }

  if (a15)
  {
    Inspector::toJSONObjectArray(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCD9FC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, _DWORD *a15, WTF::StringImpl *a16)
{
  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a14)
  {
    if (*a14 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a14;
    }
  }

  if (a15)
  {
    Inspector::toJSONObjectArray(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCDD44(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, _DWORD *a15, WTF::StringImpl *a16)
{
  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a14)
  {
    if (*a14 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a14;
    }
  }

  if (a15)
  {
    Inspector::toJSONObjectArray(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCE08C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, _DWORD *a15, WTF::StringImpl *a16)
{
  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a14)
  {
    if (*a14 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a14;
    }
  }

  if (a15)
  {
    Inspector::toJSONObjectArray(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCE418(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, _DWORD *a15, WTF::StringImpl *a16)
{
  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a14)
  {
    if (*a14 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a14;
    }
  }

  if (a15)
  {
    Inspector::toJSONObjectArray(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCE768(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, _DWORD *a15, WTF::StringImpl *a16)
{
  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a14)
  {
    if (*a14 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a14;
    }
  }

  if (a15)
  {
    Inspector::toJSONObjectArray(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCEC6C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, WTF::StringImpl *a16, WTF::StringImpl *a17, _DWORD *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, WTF::StringImpl *a28)
{
  if (a28 && atomic_fetch_add_explicit(a28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a28, a2);
  }

  if (a17)
  {
    if (*a17 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a17;
    }
  }

  if (a18)
  {
    Inspector::toJSONObjectArray(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_3(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_0()
{
  result = *v0;
  *v0 = 0;
  return result;
}

uint64_t RWIAugmentableInspectorControllerClient::inspectorConnected(RWIAugmentableInspectorControllerClient *this)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(this + 1);

  return [v2 postNotificationName:@"RWIProtocolInspectorFrontendConnectedNotification" object:v3 userInfo:0];
}

uint64_t RWIAugmentableInspectorControllerClient::inspectorDisconnected(RWIAugmentableInspectorControllerClient *this)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(this + 1);

  return [v2 postNotificationName:@"RWIProtocolInspectorFrontendDisconnectedNotification" object:v3 userInfo:0];
}

void sub_273CCF21C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCF2CC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCF37C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCF45C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCF630(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCF710(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCF7B4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCF868(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCF97C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10)
{
  if (a9)
  {
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCFAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _DWORD *a11, WTF::StringImpl *a12)
{
  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCFB60(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CCFCA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, _DWORD *);
  v3 = v4;
  v4 = 0;
  if (v3)
  {
    Inspector::toJSONObjectArray(v3);
  }

  [RWIProtocolJSONObject setJSONArray:va1 forKey:?];
  _Unwind_Resume(a1);
}

void sub_273CCFD24(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD041C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

id *WTF::RetainPtrArc<NSString>::~RetainPtrArc(id *a1)
{
  v2 = *a1;
  *a1 = 0;

  return a1;
}

void sub_273CD0980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CD0A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

id Inspector::toObjCArray<RWIProtocolCSSRuleMatch>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(*a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolCSSRuleMatch alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CD0BC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CD0FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CD1200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CD12D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD1578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CD1654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD16D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD18C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD194C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD1E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CD1F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

id Inspector::toObjCArray<RWIProtocolCSSSelector>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(*a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolCSSSelector alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CD2084(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CD22F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CD2668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CD2B90(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD2CB0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD3468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CD353C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

id Inspector::toObjCArray<RWIProtocolCSSRule>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(*a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolCSSRule alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CD36B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CD3A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CD3C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CD3E94(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD3FB4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD4158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CD437C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CD4450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

id Inspector::toObjCArray<RWIProtocolCSSGrouping>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(*a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolCSSGrouping alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CD45C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CD4D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD4DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD4E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD4F1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD4FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD503C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD581C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CD5A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CD5B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

id Inspector::toObjCArray<RWIProtocolCSSProperty>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(*a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolCSSProperty alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CD5C88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CD5EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CD5F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

id Inspector::toObjCArray<RWIProtocolCSSShorthandEntry>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(*a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolCSSShorthandEntry alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CD60F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CD6364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CD6A44(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD6B64(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD6D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CD6E94(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD70B4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD7258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CD7554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CD7AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CD7B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

id Inspector::toObjCArray<RWIProtocolCSSFontVariationAxis>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(*a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolCSSFontVariationAxis alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CD7CF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CD833C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD85BC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD86C8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD87E8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD89A0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD8AC0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD8C00(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD8D20(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD8E8C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD90CC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CD94D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CD95A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

id Inspector::toObjCArray<RWIProtocolRuntimeRemoteObject>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(*a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolRuntimeRemoteObject alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CD971C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CD98F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CDA2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CDA388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

id Inspector::toObjCArray<RWIProtocolConsoleCallFrame>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(*a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolConsoleCallFrame alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CDA4FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CDA7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CDAF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CDB02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

id Inspector::toObjCArray<RWIProtocolDOMNode>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(*a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolDOMNode alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CDB1A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CDB280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDB304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDB800(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDB91C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDBA28(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDBB48(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDBC70(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDBD90(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDBF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CDC158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CDC22C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDC3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CDC5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CDC6B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDC7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDC86C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDD0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CDD6DC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDD7FC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDD8A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDD92C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDD9C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDDA4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDDB14(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDDCD4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDE080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDE104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDE39C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDE4BC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDE6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDE780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDE87C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDE99C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDEB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDEBCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDEF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDF000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDF0F0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDF20C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CDF6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CDF8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CDFA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CDFC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CDFEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE0408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE0694(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE099C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE0B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE0DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE0F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE1958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE1CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE1E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE27E0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE29A0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE312C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE324C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE3668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE373C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

id Inspector::toObjCArray<RWIProtocolDebuggerBreakpointAction>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(*a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolDebuggerBreakpointAction alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CE38B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CE3C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE3F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE4068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

id Inspector::toObjCArray<RWIProtocolDebuggerScope>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(*a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolDebuggerScope alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CE41DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CE488C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE4AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE4B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE4D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE503C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE5144(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE5304(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE553C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE5AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE6B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE6D30(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE6F20(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE74E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE76FC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE781C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE79C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE7B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE7D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE7F38(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE8058(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE8324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE8778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE8A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE8E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE942C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE954C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE96F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE99C0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE9AE0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CE9C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CE9FEC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEA10C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEA24C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEA36C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEAC1C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEAD3C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEB438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CEB65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CEB730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

id Inspector::toObjCArray<RWIProtocolPageFrameResourceTree>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(*a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolPageFrameResourceTree alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CEB8A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CEBACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CEBBA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

id Inspector::toObjCArray<RWIProtocolPageFrameResource>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(*a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolPageFrameResource alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CEBD14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CEC818(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEC938(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CECB28(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CECD00(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CECDD8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CED014(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CED24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CED5C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CED79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CED93C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEDA5C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEDB34(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEDD70(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEE0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CEE1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

id Inspector::toObjCArray<RWIProtocolRuntimePropertyPreview>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(*a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolRuntimePropertyPreview alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CEE340(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CEE568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CEE63C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

id Inspector::toObjCArray<RWIProtocolRuntimeEntryPreview>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(*a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolRuntimeEntryPreview alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CEE7B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CEEAA0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEEC90(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEED68(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEEFA4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CEF1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CEF570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CEF744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CEF9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CEFBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CEFED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CF0128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CF02FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CF06D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CF0AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CF0CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CF1054(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CF1174(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_273CF14E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CF1564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CF1600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CF1684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CF18AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CF22D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CF24F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a16;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CF25C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

id Inspector::toObjCArray<RWIProtocolRuntimeStructureDescription>(WTF::JSONImpl::ArrayBase **a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 7);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    if (v2)
    {
      for (i = 0; v2 != i; ++i)
      {
        WTF::JSONImpl::ArrayBase::get(*a1);
        v5 = v15;
        isa_high = HIDWORD(v15->super.super.isa);
        if (isa_high < 5 || isa_high == 6)
        {
          v8 = 0;
        }

        else
        {
          if (isa_high != 5)
          {
            Inspector::toObjCArray<RWIProtocolCSSRuleMatch>();
          }

          ++LODWORD(v15->super.super.isa);
          v8 = v5;
        }

        v15 = 0;
        if (LODWORD(v5->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if (v8)
          {
LABEL_14:
            v9 = [RWIProtocolRuntimeStructureDescription alloc];
            v14 = v8;
            v10 = [(RWIProtocolJSONObject *)v9 initWithJSONObject:&v14];
            v15 = v10;
            v11 = v14;
            v14 = 0;
            if (v11)
            {
              if (LODWORD(v11->super.super.isa) == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --LODWORD(v11->super.super.isa);
              }
            }

            v12 = v10;
            [v3 addObject:{v12, v14}];
          }
        }

        else
        {
          --LODWORD(v5->super.super.isa);
          if (v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_273CF273C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WTF::RetainPtrArc<NSString>::~RetainPtrArc(va);
  _Unwind_Resume(a1);
}

void sub_273CF3094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CF3118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CF31B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CF3238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CF33CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void sub_273CF35A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  _Unwind_Resume(a1);
}

void *std::__lower_bound_bisecting[abi:sn200100]<std::_ClassicAlgPolicy,std::pair<WTF::ComparableASCIISubsetLiteral<(WTF::ASCIISubset)0>,RWIProtocolCSSPseudoId> const*,WTF::ComparableStringView,std::__identity,RWIProtocolCSSPseudoId const* WTF::SortedArrayMap<std::pair<WTF::ComparableASCIISubsetLiteral<(WTF::ASCIISubset)0>,RWIProtocolCSSPseudoId>[23]>::tryGet<WTF::String>(WTF::String const&)::{lambda(WTF::String&,std::pair<WTF::ComparableASCIISubsetLiteral<(WTF::ASCIISubset)0>,RWIProtocolCSSPseudoId> const* &)#1}>(void *a1, uint64_t *a2, unint64_t a3)
{
  if (a3)
  {
    v4 = a3;
    do
    {
      v6 = &a1[3 * (v4 >> 1)];
      v7 = *v6;
      v8 = *a2;
      v9 = a2[1];
      v6[1];
      v10 = WTF::codePointCompare();
      if (v10 >= 0)
      {
        v4 >>= 1;
      }

      else
      {
        v4 += ~(v4 >> 1);
      }

      if (v10 < 0)
      {
        a1 = v6 + 3;
      }
    }

    while (v4);
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_1_3(void **a1)
{
  v2 = *a1;
  *a1 = 0;
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t *a2, void *a3)
{
  *a3 = *(a1 + 16);
  result = *a2;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_5_1(void **a1)
{
  v2 = *a1;
  *a1 = 0;
}

unint64_t removeObjectFromArray(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  if (v5)
  {
    v6 = [v3 objectAtIndex:0];

    if (v6 == v4)
    {
      v9 = 0;
      v5 = 1;
LABEL_8:
      [v3 removeObjectAtIndex:v9];
    }

    else
    {
      v7 = 1;
      while (v5 != v7)
      {
        v8 = [v3 objectAtIndex:v7];

        ++v7;
        if (v8 == v4)
        {
          v9 = v7 - 1;
          v5 = v7 - 1 < v5;
          goto LABEL_8;
        }
      }

      v5 = 0;
    }
  }

  return v5;
}

void OUTLINED_FUNCTION_1_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t convertRBSProcessState(void *a1)
{
  v1 = a1;
  if ([v1 taskState] == 4)
  {
    v2 = [v1 endowmentNamespaces];
    v3 = [v2 containsObject:*MEMORY[0x277D0AC90]];

    if (v3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_273CF8D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void logUnexpectedType(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = RWIDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    logUnexpectedType_cold_1(v3, v4, v5);
  }
}

id processNameForPID()
{
  v0 = MEMORY[0x28223BE20]();
  v6 = *MEMORY[0x277D85DE8];
  bzero(buffer, 0x1000uLL);
  if (proc_pidpath(v0, buffer, 0x1000u))
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:buffer];
    v2 = [v1 lastPathComponent];
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

uint64_t isInternalInstall()
{
  if (isInternalInstall::onceToken != -1)
  {
    isInternalInstall_cold_1();
  }

  return isInternalInstall::isInternal;
}

uint64_t __isInternalInstall_block_invoke()
{
  result = os_variant_allows_internal_security_policies();
  isInternalInstall::isInternal = result;
  return result;
}

uint64_t isSimulatingCustomerInstall()
{
  if (isSimulatingCustomerInstall::onceToken != -1)
  {
    isSimulatingCustomerInstall_cold_1();
  }

  return isSimulatingCustomerInstall::simulateCustomerInstall;
}

uint64_t __isSimulatingCustomerInstall_block_invoke()
{
  result = CFPreferencesGetAppBooleanValue(@"SimulateCustomerInstall", @"com.apple.WebInspector", 0);
  isSimulatingCustomerInstall::simulateCustomerInstall = result != 0;
  return result;
}

__CFData *protocolIconDataForBundleIdentifier(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v2 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:32.0 scale:{32.0, 2.0}];
  v3 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithBundleIdentifier:v1];
  v4 = [v3 prepareImageForDescriptor:v2];

  if (!v4)
  {
    v5 = [MEMORY[0x277D1B1A8] genericApplicationIcon];
    v4 = [v5 prepareImageForDescriptor:v2];

    if (!v4)
    {
      v9 = 0;
      goto LABEL_9;
    }
  }

  Mutable = CFDataCreateMutable(0, 0);
  v7 = [*MEMORY[0x277CE1E10] identifier];
  v8 = CGImageDestinationCreateWithData(Mutable, v7, 1uLL, 0);

  if (v8)
  {
    CGImageDestinationAddImage(v8, [v4 CGImage], 0);
    CGImageDestinationFinalize(v8);
    v9 = Mutable;
LABEL_8:
    CFRelease(v8);
    goto LABEL_9;
  }

  v9 = 0;
  v8 = Mutable;
  if (Mutable)
  {
    goto LABEL_8;
  }

LABEL_9:

LABEL_10:

  return v9;
}

void traceMessagePayloadIfKeyExists_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138477827;
  v4 = a1;
  _os_log_debug_impl(&dword_273C9C000, a2, OS_LOG_TYPE_DEBUG, "payload: %{private}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

_DWORD *Inspector::toJSONObjectArray(_DWORD *result)
{
  if (*result == 1)
  {
    return WTF::JSONImpl::Value::operator delete();
  }

  --*result;
  return result;
}

void Inspector::ObjCInspectorCSSBackendDispatcher::~ObjCInspectorCSSBackendDispatcher(Inspector::ObjCInspectorCSSBackendDispatcher *this, void *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }
}

{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }

  WTF::fastFree(this, a2);
}

void Inspector::ObjCInspectorDOMBackendDispatcher::~ObjCInspectorDOMBackendDispatcher(Inspector::ObjCInspectorDOMBackendDispatcher *this, void *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }
}

{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }

  WTF::fastFree(this, a2);
}

void Inspector::ObjCInspectorDOMStorageBackendDispatcher::~ObjCInspectorDOMStorageBackendDispatcher(Inspector::ObjCInspectorDOMStorageBackendDispatcher *this, void *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }
}

{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }

  WTF::fastFree(this, a2);
}

void Inspector::ObjCInspectorNetworkBackendDispatcher::~ObjCInspectorNetworkBackendDispatcher(Inspector::ObjCInspectorNetworkBackendDispatcher *this, void *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }
}

{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }

  WTF::fastFree(this, a2);
}

void Inspector::ObjCInspectorPageBackendDispatcher::~ObjCInspectorPageBackendDispatcher(Inspector::ObjCInspectorPageBackendDispatcher *this, void *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }
}

{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }

  WTF::fastFree(this, a2);
}

WTF::StringImpl **WTF::String::operator=(WTF::StringImpl **a1, WTF::StringImpl *a2)
{
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  v4 = *a1;
  *a1 = v3;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = *a1;
  v6 = *v3;
  if (*v3)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v7 = *(a1 + 12);
  *(v5 + 8 * v4) = v6;
  *(a1 + 12) = v7 + 1;
  return 1;
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::enable(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_1_1(v2);
    if (v5)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  return Inspector::BackendDispatcher::sendPendingErrors(*v1);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(_DWORD **a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

atomic_uint *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_0_3(a1);
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_1_1(v1);
    if (v4)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  result = OUTLINED_FUNCTION_2_0();
  if (result)
  {
    result = OUTLINED_FUNCTION_1_1(result);
    if (v4)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

atomic_uint *Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(atomic_uint **a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    result = OUTLINED_FUNCTION_1_1(result);
    if (v4)
    {
      return WTF::StringImpl::destroy(result, v3);
    }
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t a1, WTF::StringImpl *this, uint64_t a3, void *a4)
{
  result = *(a1 + 8);
  *(a1 + 8) = 0;
  if (result)
  {
    if (*result == 1)
    {
      result = WTF::JSONImpl::Value::operator delete();
      this = *a1;
    }

    else
    {
      --*result;
    }
  }

  *a1 = 0;
  if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(this, this);
  }

  *a4 = a3;
  return result;
}

WTF::StringImpl *WTF::VectorDestructor<true,std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>>::destruct(WTF::StringImpl **a1, WTF::StringImpl *a2)
{
  do
  {
    result = a1[1];
    a1[1] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }
    }

    a1 += 2;
  }

  while (a1 != a2);
  return result;
}

WTF::StringImpl *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(unsigned int a1, WTF::StringImpl *a2)
{
  v2 = a2;
  v3 = a1;
  do
  {
    result = *v2;
    if (*v2 != -1)
    {
      *v2 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }
    }

    v2 += 2;
    --v3;
  }

  while (v3);
  return result;
}

void Inspector::InspectorAgentBase::~InspectorAgentBase(Inspector::InspectorAgentBase *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *this = &unk_2882B1A20;
  *(this + 1) = 0;
  if (v3)
  {
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }
  }
}

void Inspector::AlternateDispatchableAgent<Inspector::CSSBackendDispatcher,Inspector::AlternateCSSBackendDispatcher>::~AlternateDispatchableAgent(Inspector::InspectorAgentBase *this, void *a2)
{
  v3 = *(this + 2);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    if (v5[2] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[2];
    }
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  Inspector::InspectorAgentBase::~InspectorAgentBase(this, a2);
}

void Inspector::AlternateDispatchableAgent<Inspector::DOMBackendDispatcher,Inspector::AlternateDOMBackendDispatcher>::~AlternateDispatchableAgent(Inspector::InspectorAgentBase *this, void *a2)
{
  v3 = *(this + 2);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    if (v5[2] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[2];
    }
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  Inspector::InspectorAgentBase::~InspectorAgentBase(this, a2);
}

void Inspector::AlternateDispatchableAgent<Inspector::DOMStorageBackendDispatcher,Inspector::AlternateDOMStorageBackendDispatcher>::~AlternateDispatchableAgent(Inspector::InspectorAgentBase *this, void *a2)
{
  v3 = *(this + 2);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    if (v5[2] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[2];
    }
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  Inspector::InspectorAgentBase::~InspectorAgentBase(this, a2);
}

void Inspector::AlternateDispatchableAgent<Inspector::NetworkBackendDispatcher,Inspector::AlternateNetworkBackendDispatcher>::~AlternateDispatchableAgent(Inspector::InspectorAgentBase *this, void *a2)
{
  v3 = *(this + 2);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    if (v5[2] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[2];
    }
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  Inspector::InspectorAgentBase::~InspectorAgentBase(this, a2);
}

void Inspector::AlternateDispatchableAgent<Inspector::PageBackendDispatcher,Inspector::AlternatePageBackendDispatcher>::~AlternateDispatchableAgent(Inspector::InspectorAgentBase *this, void *a2)
{
  v3 = *(this + 2);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;
  if (v4)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    if (v5[2] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[2];
    }
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  Inspector::InspectorAgentBase::~InspectorAgentBase(this, a2);
}

WTF *Inspector::ObjCInspectorCSSBackendDispatcher::ObjCInspectorCSSBackendDispatcher(WTF **a1, void *a2)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    return WTF::RefCounted<Inspector::BackendDispatcher>::deref(result, a2);
  }

  return result;
}

atomic_uint *std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::CSSBackendDispatcher,Inspector::AlternateCSSBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>,0>(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = OUTLINED_FUNCTION_0_4(a1, a2, a3);
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_2_1(v3);
    (*(v5 + 8))(v4);
  }

  result = OUTLINED_FUNCTION_2_0();
  if (result)
  {
    result = OUTLINED_FUNCTION_1_1(result);
    if (v8)
    {
      return WTF::StringImpl::destroy(result, v7);
    }
  }

  return result;
}

uint64_t std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>::reset[abi:sn200100](uint64_t a1)
{
  OUTLINED_FUNCTION_1_2(a1);
  if (v2)
  {
  }

  v3 = OUTLINED_FUNCTION_5();
  if (v3)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v3, v4);
  }

  return WTF::fastFree(v1, v4);
}

atomic_uint *std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::DOMBackendDispatcher,Inspector::AlternateDOMBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorDOMBackendDispatcher>,0>(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = OUTLINED_FUNCTION_0_4(a1, a2, a3);
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_2_1(v3);
    (*(v5 + 8))(v4);
  }

  result = OUTLINED_FUNCTION_2_0();
  if (result)
  {
    result = OUTLINED_FUNCTION_1_1(result);
    if (v8)
    {
      return WTF::StringImpl::destroy(result, v7);
    }
  }

  return result;
}

atomic_uint *std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::DOMStorageBackendDispatcher,Inspector::AlternateDOMStorageBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorDOMStorageBackendDispatcher>,0>(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = OUTLINED_FUNCTION_0_4(a1, a2, a3);
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_2_1(v3);
    (*(v5 + 8))(v4);
  }

  result = OUTLINED_FUNCTION_2_0();
  if (result)
  {
    result = OUTLINED_FUNCTION_1_1(result);
    if (v8)
    {
      return WTF::StringImpl::destroy(result, v7);
    }
  }

  return result;
}

atomic_uint *std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::NetworkBackendDispatcher,Inspector::AlternateNetworkBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorNetworkBackendDispatcher>,0>(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = OUTLINED_FUNCTION_0_4(a1, a2, a3);
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_2_1(v3);
    (*(v5 + 8))(v4);
  }

  result = OUTLINED_FUNCTION_2_0();
  if (result)
  {
    result = OUTLINED_FUNCTION_1_1(result);
    if (v8)
    {
      return WTF::StringImpl::destroy(result, v7);
    }
  }

  return result;
}

atomic_uint *std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::PageBackendDispatcher,Inspector::AlternatePageBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorPageBackendDispatcher>,0>(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = OUTLINED_FUNCTION_0_4(a1, a2, a3);
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_2_1(v3);
    (*(v5 + 8))(v4);
  }

  result = OUTLINED_FUNCTION_2_0();
  if (result)
  {
    result = OUTLINED_FUNCTION_1_1(result);
    if (v8)
    {
      return WTF::StringImpl::destroy(result, v7);
    }
  }

  return result;
}

void logUnexpectedType_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138478083;
  v5 = a1;
  v6 = 2113;
  v7 = a2;
  _os_log_error_impl(&dword_273C9C000, log, OS_LOG_TYPE_ERROR, "Unexpected type: %{private}@, Expected type: %{private}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t WTF::JSONImpl::Value::create(WTF::JSONImpl::Value *this)
{
  return MEMORY[0x2821231E0](this);
}

{
  return MEMORY[0x2821231F0](this);
}

uint64_t Inspector::BackendDispatcher::reportProtocolError()
{
  return MEMORY[0x282123240]();
}

{
  return MEMORY[0x282123248]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}