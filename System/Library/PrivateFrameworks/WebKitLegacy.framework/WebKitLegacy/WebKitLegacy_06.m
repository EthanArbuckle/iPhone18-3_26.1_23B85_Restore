_DWORD **WTF::Ref<WebCore::XPathResult,WTF::RawPtrTraits<WebCore::XPathResult>,WTF::DefaultRefDerefTraits<WebCore::XPathResult>>::~Ref(_DWORD **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*v1 == 1)
    {
      v2 = result;
      v3 = MEMORY[0x1CCA64260](v1);
      WTF::fastFree(v3, v4);
      return v2;
    }

    else
    {
      --*v1;
    }
  }

  return result;
}

void *WTF::Ref<WebCore::NodeIterator,WTF::RawPtrTraits<WebCore::NodeIterator>,WTF::DefaultRefDerefTraits<WebCore::NodeIterator>>::~Ref(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 16) == 1)
    {
      v2 = result;
      v3 = MEMORY[0x1CCA644F0](v1);
      bmalloc::api::tzoneFree(v3, v4);
      return v2;
    }

    else
    {
      --*(v1 + 16);
    }
  }

  return result;
}

WebCore::XPathExpression **WTF::Ref<WebCore::XPathExpression,WTF::RawPtrTraits<WebCore::XPathExpression>,WTF::DefaultRefDerefTraits<WebCore::XPathExpression>>::~Ref(WebCore::XPathExpression **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*v1 == 1)
    {
      v2 = result;
      WebCore::XPathExpression::~XPathExpression(v1);
      WTF::fastFree(v3, v4);
      return v2;
    }

    else
    {
      --*v1;
    }
  }

  return result;
}

void sub_1C7A14AA0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A14AB4(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void *kit(WebCore::FileList *a1)
{
  if (!a1)
  {
    return 0;
  }

  DOMWrapper = getDOMWrapper(a1);
  if (DOMWrapper)
  {
    v3 = DOMWrapper;
    v4 = DOMWrapper;
  }

  else
  {
    v3 = [(WebScriptObject *)[DOMFileList alloc] _init];
    v6 = 0;
    v3[2] = a1;
    ++*(a1 + 2);
    v11 = v3;
    v10 = a1;
    atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v6, 1u, memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      MEMORY[0x1CCA63990](wrapperCacheLock);
    }

    {
      wrapperCache(void)::map = 0;
    }

    WTF::HashMap<DOMObjectInternal *,NSObject *,WTF::DefaultHash<DOMObjectInternal *>,WTF::HashTraits<DOMObjectInternal *>,WTF::HashTraits<NSObject *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<DOMObjectInternal * const&,NSObject *&>(&wrapperCache(void)::map, &v10, &v11, v9);
    v7 = 1;
    atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 != 1)
    {
      WTF::Lock::unlockSlow(wrapperCacheLock);
    }
  }

  v8 = v3;
  return v3;
}

void sub_1C7A14EA0(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {

    _Unwind_Resume(a1);
  }

  WTF::Lock::unlockSlow(wrapperCacheLock);

  _Unwind_Resume(a1);
}

void sub_1C7A152E8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WebCore::Node *a12)
{
  if (a12)
  {
    if (*(a12 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a12);
    }

    else
    {
      *(a12 + 7) -= 2;
    }
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
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

void sub_1C7A15484(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  v12 = *(v10 - 24);
  *(v10 - 24) = 0;
  if (v12)
  {
    if (*(v12 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v12);
    }

    else
    {
      *(v12 + 7) -= 2;
    }
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::SimpleRange::~SimpleRange(&a10);
      _Unwind_Resume(a1);
    }
  }

  WebCore::SimpleRange::~SimpleRange(&a10);
  _Unwind_Resume(a1);
}

void sub_1C7A155D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11)
{
  v13 = *(v11 - 40);
  *(v11 - 40) = 0;
  if (v13)
  {

    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A15808(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v14);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A158E8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A159E4(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A15ADC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A15BE4(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A15CDC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A15DE4(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A15EDC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A15FE4(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A160DC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A16278(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1628C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A16370(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A16478(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A16570(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A16678(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A16770(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A16878(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A16970(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A16A78(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A16B70(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A16C78(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A16D70(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A16E78(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A16F70(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A17078(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A17170(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A17294(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A174C8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A175DC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A17700(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A17864(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A179C8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A17B2C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A17C90(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A17DF4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A17F58(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A180BC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A18284(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1837C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A18484(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1857C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A187C0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A188B8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A189C0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A18AB8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A18BC0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A18CB8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A18DC0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A18EB8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A18FC0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A190B8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A192B0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A193C4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A194E8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1964C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A197B0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A19914(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A19A78(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A19BDC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A19D40(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A19EA4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A19FE8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1A0E0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1A204(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1A318(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1A420(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1A518(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1A620(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1A718(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1A820(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1A918(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1AA20(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1AB18(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1AC20(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1AD18(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1AE20(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1AF18(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1B020(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1B118(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1B220(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1B318(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1B420(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1B518(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1B620(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1B718(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1BB3C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1BC34(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1BDD0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1BDE4(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1BEC8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1BFD0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1C0C8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1C238(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1C330(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1C4A0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1C580(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1C71C(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  WebCore::ExceptionOr<WTF::String>::~ExceptionOr(va, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va1, v6);
  _Unwind_Resume(a1);
}

void sub_1C7A1C798(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1CA4C(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1CA60(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1CBA0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, _DWORD *a11, char a12)
{
  if (a11)
  {
    if (a11[4] == 1)
    {
      (*(*a11 + 8))(a11);
    }

    else
    {
      --a11[4];
    }
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, v13);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1CD64(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {

    _Unwind_Resume(a1);
  }

  WTF::Lock::unlockSlow(wrapperCacheLock);

  _Unwind_Resume(a1);
}

void sub_1C7A1D0D8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1D1D0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1D2B8(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    if (a4[4] == 1)
    {
      (*(*a4 + 8))(a4);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
      _Unwind_Resume(a1);
    }

    --a4[4];
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1D3D0(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    if (a4[4] == 1)
    {
      (*(*a4 + 8))(a4);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
      _Unwind_Resume(a1);
    }

    --a4[4];
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1D4E8(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    if (a4[4] == 1)
    {
      (*(*a4 + 8))(a4);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
      _Unwind_Resume(a1);
    }

    --a4[4];
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1D628(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1D718(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1D83C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1D940(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1DA64(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1DBA0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1DC90(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1DD90(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1DE80(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1DF80(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1E070(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1E170(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1E260(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1E360(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1E450(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1E514(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1E6EC(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, WTF *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  WTF::FixedVector<WTF::String,WTF::FastMalloc>::~FixedVector(&a9, a2);
  v16 = *(v13 - 48);
  *(v13 - 48) = 0;
  if (v16)
  {
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v15);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v17);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

WTF **WTF::FixedVector<WTF::String,WTF::FastMalloc>::~FixedVector(WTF **result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    v3 = result;
    v4 = *v2;
    if (v4)
    {
      v5 = 8 * v4;
      v6 = (v2 + 8);
      do
      {
        v7 = *v6;
        *v6 = 0;
        if (v7)
        {
          if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v7, a2);
          }
        }

        ++v6;
        v5 -= 8;
      }

      while (v5);
    }

    WTF::fastFree(v2, a2);
    return v3;
  }

  return result;
}

void sub_1C7A1E93C(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, WTF *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  WTF::FixedVector<WTF::String,WTF::FastMalloc>::~FixedVector(&a9, a2);
  v16 = *(v13 - 48);
  *(v13 - 48) = 0;
  if (v16)
  {
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v15);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v17);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A1EADC(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1EBD4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1ECDC(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1EDD4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1EF9C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1F094(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1F37C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1F474(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1F6B8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1F7B0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1F8D4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1FA08(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1FB78(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1FCAC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1FE1C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A1FF50(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A20268(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2027C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A20360(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A20448(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    if (a4[4] == 1)
    {
      (*(*a4 + 8))(a4);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
      _Unwind_Resume(a1);
    }

    --a4[4];
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A205CC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, char a13)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v14);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2079C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(&a10, a2);
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, v15);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A20908(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, WTF::StringImpl *a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, a2);
  }

  if (a14)
  {
    v20 = a13;
    a13 = 0;
    if (v20)
    {
      if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, a2);
      }
    }
  }

  mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebCore::TrustedHTML,WTF::RawPtrTraits<WebCore::TrustedHTML>,WTF::DefaultRefDerefTraits<WebCore::TrustedHTML>>,WTF::String>,(mpark::detail::Trait)1>::~destructor(&a9, a2);
  v22 = a11;
  a11 = 0;
  if (v22)
  {
    if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v21);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a16, v23);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a16, v21);
  _Unwind_Resume(a1);
}

void sub_1C7A20A98(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, WTF::StringImpl *a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, a2);
  }

  if ((a14 & 1) != 0 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a16, v20);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a16, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A20D58(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A20E50(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A20F58(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A21050(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A212C4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A212D8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A213BC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A214E8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A215FC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A21704(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A217FC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A21A54(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A21B4C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A21C54(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A21D4C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A21E54(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A21F4C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A22054(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2214C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A22278(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2238C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2248C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A22584(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A226A0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A226B4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, char a11)
{
  if (a10)
  {
  }

  if (v11)
  {
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, a2);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A227A4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A228C0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A228D4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, char a11)
{
  if (a10)
  {
  }

  if (v11)
  {
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, a2);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A229C4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A22AE8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A22BFC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A22D98(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A22DAC(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A22E90(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A230D4(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A231CC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A232B4(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    if (a4[4] == 1)
    {
      (*(*a4 + 8))(a4);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
      _Unwind_Resume(a1);
    }

    --a4[4];
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2356C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A23664(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2376C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A23864(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2396C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A23A64(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A23B6C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A23C64(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A23E00(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A23E14(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A23EF8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2413C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A24234(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A24360(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A24474(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A24694(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2478C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A24894(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2498C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A24A94(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A24B8C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A24DD0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A24EC8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A24FD0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A250C8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2522C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A25324(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2542C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A25524(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2563C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A25734(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2583C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A25934(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A25A3C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A25B34(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A25C3C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A25D34(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A25E3C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A25F34(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2603C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A26134(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A262D0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A262E4(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A263C8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A264D0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A265C8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A266D0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A267C8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A268F4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A26A08(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A26B10(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A26C08(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A26D10(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A26E08(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A27090(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A270A4(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A27188(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A27290(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A27388(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A27490(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A27588(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A27690(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A27788(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A278AC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A279C0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A27DD0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A27EE4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A28010(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A28124(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2822C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A28324(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2842C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A28524(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A28624(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2874C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A28844(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A28B7C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A28C90(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A28FE4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2918C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A29284(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2938C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A29484(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A295A8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A296BC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A29AF0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A29BE8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A29FB0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    WTF::RefCounted<WebCore::FileList>::deref(a4 + 8, a2);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2A0B4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2A1C8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2A2EC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2A400(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2A524(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2A638(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2A87C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2A974(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2ABC0(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10, char a11)
{
  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }

    *(a10 + 7) -= 2;
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2AD78(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2AD8C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2AE70(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2AF84(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2B150(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2B164(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2B248(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2B520(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2B534(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2B618(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2B7C0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2B7D4(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2B8B8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2BA60(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2BA74(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2BB58(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2BEF8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2C008(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2C100(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2C214(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2C3BC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2C3D0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2C4B4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2C5E8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2C6E0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2C888(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2C89C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2C980(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2CAA8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v14);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2CBE4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v14);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2CD30(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2CE94(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2D114(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2D238(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    if (a4[4] == 1)
    {
      (*(*a4 + 8))(a4);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
      _Unwind_Resume(a1);
    }

    --a4[4];
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2D4F8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2D5E0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2D6E8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2D7E0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2D8E8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2D9E0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2DAF4(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2DBEC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2DDB0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2E0C0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2E1AC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2E304(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2E3A0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2E488(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2E658(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, WTF::StringImpl *a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, a2);
  }

  if ((a14 & 1) != 0 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a16, v20);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a16, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2E788(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2E878(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2EA68(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WebCore::Node *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a9)
  {
    if (*(a9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a9);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v15);
      _Unwind_Resume(a1);
    }

    *(a9 + 7) -= 2;
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2EC84(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, WebCore::Node *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  std::optional<WebCore::AutofillElements>::~optional(&a13);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a17, v18);
  _Unwind_Resume(a1);
}

void sub_1C7A2ECF0(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WebCore::Node *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a12)
  {
    if (*(a12 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a12);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a17, v18);
      _Unwind_Resume(a1);
    }

    *(a12 + 7) -= 2;
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a17, a2);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1C7A2ECE0);
}

void sub_1C7A2EEA8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2EFA0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

WebCore::Node **std::optional<WebCore::AutofillElements>::~optional(WebCore::Node **result)
{
  if (*(result + 24) == 1)
  {
    v1 = result[2];
    result[2] = 0;
    if (v1)
    {
      if (*(v1 + 7) == 2)
      {
        v3 = result;
        WebCore::Node::removedLastRef(v1);
        result = v3;
        v2 = v3[1];
        v3[1] = 0;
        if (!v2)
        {
          goto LABEL_10;
        }

LABEL_8:
        if (*(v2 + 7) == 2)
        {
          v5 = result;
          WebCore::Node::removedLastRef(v2);
          result = v5;
          v4 = *v5;
          *v5 = 0;
          if (!v4)
          {
            return result;
          }

LABEL_13:
          if (*(v4 + 7) == 2)
          {
            v6 = result;
            WebCore::Node::removedLastRef(v4);
            return v6;
          }

          else
          {
            *(v4 + 7) -= 2;
          }

          return result;
        }

        *(v2 + 7) -= 2;
LABEL_10:
        v4 = *result;
        *result = 0;
        if (!v4)
        {
          return result;
        }

        goto LABEL_13;
      }

      *(v1 + 7) -= 2;
    }

    v2 = result[1];
    result[1] = 0;
    if (!v2)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t WTF::RefCounted<WebCore::FileList>::deref(uint64_t result, void *a2)
{
  v2 = result;
  if (*result == 1)
  {
    v3 = *(result + 20);
    v4 = *(result + 8);
    if (v3)
    {
      v5 = 8 * v3;
      do
      {
        v6 = *v4;
        *v4 = 0;
        if (v6)
        {
          if (v6[4] == 1)
          {
            (*(*v6 + 8))(v6);
          }

          else
          {
            --v6[4];
          }
        }

        v4 = (v4 + 8);
        v5 -= 8;
      }

      while (v5);
      v4 = *(v2 + 8);
    }

    if (v4)
    {
      *(v2 + 8) = 0;
      *(v2 + 16) = 0;
      WTF::fastFree(v4, a2);
    }

    if (*v2 == 1)
    {
      v7 = (v2 - 8);
      v8 = *(v2 - 8);
      if (v8)
      {
        *(v8 + 8) = 3;
        *v7 = 0;
      }

      return bmalloc::api::tzoneFree(v7, a2);
    }

    else
    {
      result = 191;
      __break(0xC471u);
    }
  }

  else
  {
    --*result;
  }

  return result;
}

void sub_1C7A2F3D4(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2F4CC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2F594(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10, char a11)
{
  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }

    *(a10 + 7) -= 2;
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2F6AC(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2F7A4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2F914(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2FA0C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2FB14(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2FC0C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2FE50(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A2FF48(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A30074(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A30188(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A30290(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A30388(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A30490(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A30588(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A30690(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A30788(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A30890(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A30988(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A30A90(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A30B88(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A30C90(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A30D88(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A30E90(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A30F88(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A310AC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A311C0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A313DC(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    if (a4[4] == 1)
    {
      (*(*a4 + 8))(a4);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
      _Unwind_Resume(a1);
    }

    --a4[4];
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A315A8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A315BC(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A316A0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A317A8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A318A0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A319A8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A31AA0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A31BA8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A31CA0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A31DA8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A31EA0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A320A4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A32574(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3266C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A327F4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    if (*(v9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v9);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
      _Unwind_Resume(a1);
    }

    *(v9 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3294C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (v15)
  {
    if (*(v15 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v15);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v17);
      _Unwind_Resume(a1);
    }

    *(v15 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A32AC4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (v10)
  {
    if (*(v10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v10);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v12);
      _Unwind_Resume(a1);
    }

    *(v10 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A32C0C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (*(v11 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v11);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v13);
    _Unwind_Resume(a1);
  }

  *(v11 + 7) -= 2;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A32D94(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (v11)
  {
    if (*(v11 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v11);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v13);
      _Unwind_Resume(a1);
    }

    *(v11 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A32F0C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (v10)
  {
    if (*(v10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v10);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v12);
      _Unwind_Resume(a1);
    }

    *(v10 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A32FF8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    if (*(v9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v9);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
      _Unwind_Resume(a1);
    }

    *(v9 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A33148(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (v11)
  {
    if (*(v11 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v11);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v13);
      _Unwind_Resume(a1);
    }

    *(v11 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A332B8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (v10)
  {
    if (*(v10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v10);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v12);
      _Unwind_Resume(a1);
    }

    *(v10 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3344C(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void);
  WTF::Ref<WebCore::TimeRanges,WTF::RawPtrTraits<WebCore::TimeRanges>,WTF::DefaultRefDerefTraits<WebCore::TimeRanges>>::~Ref(va, a2);
  if (*(v3 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v3);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va1, v6);
    _Unwind_Resume(a1);
  }

  *(v3 + 7) -= 2;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va1, v5);
  _Unwind_Resume(a1);
}

uint64_t WTF::Ref<WebCore::TimeRanges,WTF::RawPtrTraits<WebCore::TimeRanges>,WTF::DefaultRefDerefTraits<WebCore::TimeRanges>>::~Ref(uint64_t result, void *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    if (*v2 == 1)
    {
      v3 = result;
      v4 = *(v2 + 8);
      if (v4 && (*(v2 + 8) = 0, *(v2 + 16) = 0, WTF::fastFree(v4, a2), *v2 != 1))
      {
        result = 191;
        __break(0xC471u);
      }

      else
      {
        WTF::fastFree(v2, a2);
        return v3;
      }
    }

    else
    {
      --*v2;
    }
  }

  return result;
}

void sub_1C7A335D4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v9);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
    _Unwind_Resume(a1);
  }

  *(v9 + 7) -= 2;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A33694(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    if (*(v9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v9);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
      _Unwind_Resume(a1);
    }

    *(v9 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A33784(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v9);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
    _Unwind_Resume(a1);
  }

  *(v9 + 7) -= 2;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A33884(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (v16)
  {
    if (*(v16 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v16);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v19);
      _Unwind_Resume(a1);
    }

    *(v16 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A339C0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v9);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
    _Unwind_Resume(a1);
  }

  *(v9 + 7) -= 2;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A33AA4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v9);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
    _Unwind_Resume(a1);
  }

  *(v9 + 7) -= 2;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A33B90(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v9);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
    _Unwind_Resume(a1);
  }

  *(v9 + 7) -= 2;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A33C7C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v9);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
    _Unwind_Resume(a1);
  }

  *(v9 + 7) -= 2;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A33D68(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v9);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
    _Unwind_Resume(a1);
  }

  *(v9 + 7) -= 2;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A33E54(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v9);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
    _Unwind_Resume(a1);
  }

  *(v9 + 7) -= 2;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A33FBC(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void);
  WTF::Ref<WebCore::TimeRanges,WTF::RawPtrTraits<WebCore::TimeRanges>,WTF::DefaultRefDerefTraits<WebCore::TimeRanges>>::~Ref(va, a2);
  if (*(v3 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v3);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va1, v6);
    _Unwind_Resume(a1);
  }

  *(v3 + 7) -= 2;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va1, v5);
  _Unwind_Resume(a1);
}

void sub_1C7A34134(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void);
  WTF::Ref<WebCore::TimeRanges,WTF::RawPtrTraits<WebCore::TimeRanges>,WTF::DefaultRefDerefTraits<WebCore::TimeRanges>>::~Ref(va, a2);
  if (*(v3 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v3);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va1, v6);
    _Unwind_Resume(a1);
  }

  *(v3 + 7) -= 2;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va1, v5);
  _Unwind_Resume(a1);
}

void sub_1C7A34204(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    if (*(v9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v9);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
      _Unwind_Resume(a1);
    }

    *(v9 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A343E8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    if (*(v9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v9);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
      _Unwind_Resume(a1);
    }

    *(v9 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A345CC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    if (*(v9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v9);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
      _Unwind_Resume(a1);
    }

    *(v9 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A34690(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    if (*(v9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v9);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
      _Unwind_Resume(a1);
    }

    *(v9 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A34768(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    if (*(v9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v9);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
      _Unwind_Resume(a1);
    }

    *(v9 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A34858(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v9);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
    _Unwind_Resume(a1);
  }

  *(v9 + 7) -= 2;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3497C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (*(v16 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v16);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v19);
    _Unwind_Resume(a1);
  }

  *(v16 + 7) -= 2;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A34AAC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v9);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
    _Unwind_Resume(a1);
  }

  *(v9 + 7) -= 2;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A34BA4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v9);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
    _Unwind_Resume(a1);
  }

  *(v9 + 7) -= 2;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A34D84(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    if (*(v9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v9);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
      _Unwind_Resume(a1);
    }

    *(v9 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A34E48(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    if (*(v9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v9);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
      _Unwind_Resume(a1);
    }

    *(v9 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A34F20(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    if (*(v9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v9);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
      _Unwind_Resume(a1);
    }

    *(v9 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A35008(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v9);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
    _Unwind_Resume(a1);
  }

  *(v9 + 7) -= 2;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A350EC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v9);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
    _Unwind_Resume(a1);
  }

  *(v9 + 7) -= 2;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A351E4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v9);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
    _Unwind_Resume(a1);
  }

  *(v9 + 7) -= 2;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A35314(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, char a11)
{
  if (a10)
  {
  }

  if (v11)
  {
    if (*(v11 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v11);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v13);
      _Unwind_Resume(a1);
    }

    *(v11 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A35464(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (v10)
  {
    if (*(v10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v10);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v12);
      _Unwind_Resume(a1);
    }

    *(v10 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3555C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    if (*(v9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v9);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
      _Unwind_Resume(a1);
    }

    *(v9 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A356E0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, char a13)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (v13)
  {
    if (*(v13 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v13);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
      _Unwind_Resume(a1);
    }

    *(v13 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A35848(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    if (*(v9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v9);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
      _Unwind_Resume(a1);
    }

    *(v9 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3593C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v9);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
    _Unwind_Resume(a1);
  }

  *(v9 + 7) -= 2;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A35A2C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v9);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
    _Unwind_Resume(a1);
  }

  *(v9 + 7) -= 2;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A35AF4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    if (*(v9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v9);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, v11);
      _Unwind_Resume(a1);
    }

    *(v9 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A35D30(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A35E28(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A35F30(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A36028(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A361C4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A361D8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A362BC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A363C4(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A364BC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A365E8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A366FC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A36804(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A368FC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A36D48(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A36E40(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A36FC0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A370B8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A371C0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A372B8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A373C0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A374B8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A375C0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A376B8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A377C0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A378B8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A379C0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A37AB8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A37BE4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A37CF8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A37F3C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A38034(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A382A8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A382BC(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A383A0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A384A8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A385A0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A386A8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A387A0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A388A8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A389A0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A38B80(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A38C78(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A38FF4(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A390EC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A393B4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A394C8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A397F4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A39908(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A39A2C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A39D64(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A39E64(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A39E78(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A39FFC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, a2);
  }

  if (a16)
  {
    v22 = a15;
    a15 = 0;
    if (v22)
    {
      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, a2);
      }
    }
  }

  std::optional<mpark::variant<WTF::RefPtr<WebCore::HTMLElement,WTF::RawPtrTraits<WebCore::HTMLElement>,WTF::DefaultRefDerefTraits<WebCore::HTMLElement>>,int>>::~optional(&a9);
  mpark::variant<WTF::RefPtr<WebCore::HTMLOptionElement,WTF::RawPtrTraits<WebCore::HTMLOptionElement>,WTF::DefaultRefDerefTraits<WebCore::HTMLOptionElement>>,WTF::RefPtr<WebCore::HTMLOptGroupElement,WTF::RawPtrTraits<WebCore::HTMLOptGroupElement>,WTF::DefaultRefDerefTraits<WebCore::HTMLOptGroupElement>>>::~variant(&a12);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a18, v23);
  _Unwind_Resume(a1);
}

void sub_1C7A3A06C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void *kit(WebCore::HTMLOptionsCollection *a1)
{
  if (!a1)
  {
    return 0;
  }

  DOMWrapper = getDOMWrapper(a1);
  if (DOMWrapper)
  {
    v3 = DOMWrapper;
    v4 = DOMWrapper;
  }

  else
  {
    v3 = [(WebScriptObject *)[DOMHTMLOptionsCollection alloc] _init];
    v6 = 0;
    v3[2] = a1;
    ++*(a1 + 4);
    v11 = v3;
    v10 = a1;
    atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v6, 1u, memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      MEMORY[0x1CCA63990](wrapperCacheLock);
    }

    {
      wrapperCache(void)::map = 0;
    }

    WTF::HashMap<DOMObjectInternal *,NSObject *,WTF::DefaultHash<DOMObjectInternal *>,WTF::HashTraits<DOMObjectInternal *>,WTF::HashTraits<NSObject *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<DOMObjectInternal * const&,NSObject *&>(&wrapperCache(void)::map, &v10, &v11, v9);
    v7 = 1;
    atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 != 1)
    {
      WTF::Lock::unlockSlow(wrapperCacheLock);
    }
  }

  v8 = v3;
  return v3;
}

void sub_1C7A3A280(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {

    _Unwind_Resume(a1);
  }

  WTF::Lock::unlockSlow(wrapperCacheLock);

  _Unwind_Resume(a1);
}

void sub_1C7A3A37C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3A474(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3A610(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3A624(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3A708(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3A810(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3A908(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3AA10(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3AB08(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3AC10(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3AD08(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

uint64_t std::optional<mpark::variant<WTF::RefPtr<WebCore::HTMLElement,WTF::RawPtrTraits<WebCore::HTMLElement>,WTF::DefaultRefDerefTraits<WebCore::HTMLElement>>,int>>::~optional(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    if (!*(result + 8))
    {
      v1 = *result;
      *result = 0;
      if (v1)
      {
        if (*(v1 + 7) == 2)
        {
          v2 = result;
          WebCore::Node::removedLastRef(v1);
          result = v2;
        }

        else
        {
          *(v1 + 7) -= 2;
        }
      }
    }

    *(result + 8) = -1;
  }

  return result;
}

uint64_t mpark::variant<WTF::RefPtr<WebCore::HTMLOptionElement,WTF::RawPtrTraits<WebCore::HTMLOptionElement>,WTF::DefaultRefDerefTraits<WebCore::HTMLOptionElement>>,WTF::RefPtr<WebCore::HTMLOptGroupElement,WTF::RawPtrTraits<WebCore::HTMLOptGroupElement>,WTF::DefaultRefDerefTraits<WebCore::HTMLOptGroupElement>>>::~variant(uint64_t result)
{
  if (*(result + 8) == 255)
  {
    goto LABEL_5;
  }

  v1 = *result;
  *result = 0;
  if (!v1)
  {
    goto LABEL_5;
  }

  if (*(v1 + 7) != 2)
  {
    *(v1 + 7) -= 2;
LABEL_5:
    *(result + 8) = -1;
    return result;
  }

  v2 = result;
  WebCore::Node::removedLastRef(v1);
  result = v2;
  *(v2 + 8) = -1;
  return result;
}

void sub_1C7A3B124(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3B238(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3B360(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3B464(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3B60C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3B620(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3B704(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3B8AC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3B8C0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3B9A4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3BB4C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3BB60(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3BC44(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3BF74(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3C088(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3C230(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3C244(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3C328(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3C44C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3C560(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3C708(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3C71C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3C800(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3CD44(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3CD58(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3CE3C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3D020(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3D128(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    if (a4[4] == 1)
    {
      (*(*a4 + 8))(a4);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
      _Unwind_Resume(a1);
    }

    --a4[4];
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3D3A8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3D4AC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3D690(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3D6A4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3D8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  mpark::variant<WTF::RefPtr<WebCore::HTMLOptionElement,WTF::RawPtrTraits<WebCore::HTMLOptionElement>,WTF::DefaultRefDerefTraits<WebCore::HTMLOptionElement>>,WTF::RefPtr<WebCore::HTMLOptGroupElement,WTF::RawPtrTraits<WebCore::HTMLOptGroupElement>,WTF::DefaultRefDerefTraits<WebCore::HTMLOptGroupElement>>>::~variant(va);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va1, v10);
  _Unwind_Resume(a1);
}

void sub_1C7A3D8CC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, a2);
  }

  if (a16)
  {
    v24 = a15;
    a15 = 0;
    if (v24)
    {
      if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, a2);
      }
    }
  }

  std::optional<mpark::variant<WTF::RefPtr<WebCore::HTMLElement,WTF::RawPtrTraits<WebCore::HTMLElement>,WTF::DefaultRefDerefTraits<WebCore::HTMLElement>>,int>>::~optional(&a11);
  mpark::variant<WTF::RefPtr<WebCore::HTMLElement,WTF::RawPtrTraits<WebCore::HTMLElement>,WTF::DefaultRefDerefTraits<WebCore::HTMLElement>>,int>::~variant(&a9);
  mpark::variant<WTF::RefPtr<WebCore::HTMLOptionElement,WTF::RawPtrTraits<WebCore::HTMLOptionElement>,WTF::DefaultRefDerefTraits<WebCore::HTMLOptionElement>>,WTF::RefPtr<WebCore::HTMLOptGroupElement,WTF::RawPtrTraits<WebCore::HTMLOptGroupElement>,WTF::DefaultRefDerefTraits<WebCore::HTMLOptGroupElement>>>::~variant(&a18);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a22, v25);
  _Unwind_Resume(a1);
}

void sub_1C7A3D944(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3DB48(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3DC40(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3DD48(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3DE40(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3DFB0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3E0A8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3E1B0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3E2A8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3E414(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3E50C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3E614(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3E70C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3E814(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3E90C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3EA14(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3EB0C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3EC14(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3ED0C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3EFA4(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3F09C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3F1A4(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3F29C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3F4E0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3F5D8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3F6E0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3F7D8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3F8E0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3F9D8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3FAD8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3FBD0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3FCD8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3FDD0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3FED8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A3FFD0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A400D8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A401D0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A40388(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A40480(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A40588(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A40680(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

uint64_t mpark::variant<WTF::RefPtr<WebCore::HTMLElement,WTF::RawPtrTraits<WebCore::HTMLElement>,WTF::DefaultRefDerefTraits<WebCore::HTMLElement>>,int>::~variant(uint64_t result)
{
  if (*(result + 8) || (v1 = *result, *result = 0, !v1))
  {
    *(result + 8) = -1;
  }

  else if (*(v1 + 7) == 2)
  {
    v2 = result;
    WebCore::Node::removedLastRef(v1);
    result = v2;
    *(v2 + 8) = -1;
  }

  else
  {
    *(v1 + 7) -= 2;
    *(result + 8) = -1;
  }

  return result;
}

void sub_1C7A407BC(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10, char a11)
{
  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }

    *(a10 + 7) -= 2;
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A408F0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WebCore::Node *a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a9)
  {
    if (*(a9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a9);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
      _Unwind_Resume(a1);
    }

    *(a9 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A40A00(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10, char a11)
{
  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }

    *(a10 + 7) -= 2;
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A40B34(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WebCore::Node *a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a9)
  {
    if (*(a9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a9);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
      _Unwind_Resume(a1);
    }

    *(a9 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A40C44(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10, char a11)
{
  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v12);
      _Unwind_Resume(a1);
    }

    *(a10 + 7) -= 2;
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A40D78(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WebCore::Node *a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a9)
  {
    if (*(a9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a9);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v18);
      _Unwind_Resume(a1);
    }

    *(a9 + 7) -= 2;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A40EA8(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    if (a4[4] == 1)
    {
      (*(*a4 + 8))(a4);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
      _Unwind_Resume(a1);
    }

    --a4[4];
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A40FC0(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    if (a4[4] == 1)
    {
      (*(*a4 + 8))(a4);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
      _Unwind_Resume(a1);
    }

    --a4[4];
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A410F8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A411F0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A412F8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A413F0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A414F8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A415F0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A416F8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A417F0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A418F8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A419F0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A41AF8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A41BF0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A41CF8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A41DF0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, v11);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A41EF8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}