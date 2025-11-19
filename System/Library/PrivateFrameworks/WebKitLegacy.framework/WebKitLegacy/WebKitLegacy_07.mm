void sub_1C7A41FF0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
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

void sub_1C7A420F8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
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

void sub_1C7A421F0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
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

void sub_1C7A422B8(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10, char a11)
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

void sub_1C7A423EC(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10, char a11)
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

void sub_1C7A42520(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10, char a11)
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

void sub_1C7A425F8(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10, char a11)
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

void sub_1C7A427D0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A42830(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A428C4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
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

void sub_1C7A42A98(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
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

void sub_1C7A42BD0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
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

void sub_1C7A42CC8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
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

void sub_1C7A42DD0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
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

void sub_1C7A42EC8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
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

void sub_1C7A42FD0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
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

void sub_1C7A430C8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
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

void sub_1C7A431D0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
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

void sub_1C7A432C8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
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

void sub_1C7A433D0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
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

void sub_1C7A434C8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
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

void sub_1C7A43634(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A43694(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A43728(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
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

void sub_1C7A43854(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
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

void sub_1C7A4394C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
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

void sub_1C7A43A54(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
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

void sub_1C7A43B4C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
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

void sub_1C7A43C54(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
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

void sub_1C7A43D4C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
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

void sub_1C7A43E54(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
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

void sub_1C7A43F4C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
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

void sub_1C7A44034(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
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

void sub_1C7A441D0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A44230(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A442C4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
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

void sub_1C7A44660(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
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

void sub_1C7A447A0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
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

void sub_1C7A44BD0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
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

void sub_1C7A44DD8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A44DEC(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
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

void sub_1C7A44F18(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
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

void sub_1C7A45068(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
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

void sub_1C7A451A8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
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

void sub_1C7A45910(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
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

void sub_1C7A45A50(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
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

void sub_1C7A45BC0(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
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

void sub_1C7A45D4C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
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

void sub_1C7A45E98(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11)
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

void sub_1C7A46008(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, char a13)
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

void sub_1C7A4618C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
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

void sub_1C7A4645C(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
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

void sub_1C7A46884(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
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

void sub_1C7A469B4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11)
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

void sub_1C7A46B04(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
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

void sub_1C7A46C44(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
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

void sub_1C7A46DB0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
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

void sub_1C7A46F0C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
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

void sub_1C7A46FF0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A47120(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
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

void sub_1C7A47338(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, WTF::StringImpl *a13, char a14, int a15, __int16 a16, char a17, char a18)
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

void sub_1C7A474B0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A476E4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
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

void sub_1C7A477E8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11)
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

void sub_1C7A47A2C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
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

void sub_1C7A47B24(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
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

void sub_1C7A47BF8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

void sub_1C7A47CD8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

void sub_1C7A47DA4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

void sub_1C7A47E84(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

void sub_1C7A47F48(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

void sub_1C7A4800C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

void sub_1C7A48164(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
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

void sub_1C7A482DC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
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

void sub_1C7A484E8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

void sub_1C7A485AC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

void sub_1C7A48670(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

void sub_1C7A48764(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
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

void sub_1C7A48880(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

void sub_1C7A48B54(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, WTF::StringImpl *a11, char a12, uint64_t a13, uint64_t a14, char a15)
{
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, a2);
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(&a12, a2);
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, v17);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v17);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, v17);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v18);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v17);
  _Unwind_Resume(a1);
}

void sub_1C7A48E08(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, char a12, uint64_t a13, uint64_t a14, char a15)
{
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, a2);
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(&a12, a2);
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v17);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, v17);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v18);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v17);
  _Unwind_Resume(a1);
}

void sub_1C7A48FD0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, _DWORD *a12, char a13)
{
  if (a12)
  {
    if (a12[2] == 1)
    {
      (*(*a12 + 8))(a12);
    }

    else
    {
      --a12[2];
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
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v14);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A49150(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WebCore::Node *a10, char a11)
{
  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
    }

    else
    {
      *(a10 + 7) -= 2;
    }
  }

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

uint64_t kit(WebCore::DOMImplementation *a1)
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
LABEL_12:
    v10 = v3;
    return v3;
  }

  v6 = [(WebScriptObject *)[DOMImplementation alloc] _init];
  v6[2] = a1;
  v7 = *(*(a1 + 1) + 8);
  if (v7)
  {
    v3 = v6;
    v8 = 0;
    *(v7 + 28) += 2;
    v13 = v6;
    v12 = a1;
    atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v8, 1u, memory_order_acquire, memory_order_acquire);
    if (v8)
    {
      MEMORY[0x1CCA63990](wrapperCacheLock);
    }

    {
      wrapperCache(void)::map = 0;
    }

    WTF::HashMap<DOMObjectInternal *,NSObject *,WTF::DefaultHash<DOMObjectInternal *>,WTF::HashTraits<DOMObjectInternal *>,WTF::HashTraits<NSObject *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<DOMObjectInternal * const&,NSObject *&>(&wrapperCache(void)::map, &v12, &v13, v11);
    v9 = 1;
    atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v9, 0, memory_order_release, memory_order_relaxed);
    if (v9 != 1)
    {
      WTF::Lock::unlockSlow(wrapperCacheLock);
    }

    goto LABEL_12;
  }

  result = 92;
  __break(0xC471u);
  return result;
}

void sub_1C7A4932C(_Unwind_Exception *a1)
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

uint64_t getDOMWrapper(DOMObjectInternal *a1)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (!v1)
  {
    {
      goto LABEL_3;
    }

LABEL_15:
    wrapperCache(void)::map = 0;
    if (a1 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_4;
  }

  v13 = a1;
  MEMORY[0x1CCA63990](wrapperCacheLock);
  a1 = v13;
  {
    goto LABEL_15;
  }

LABEL_3:
  if (a1 == -1)
  {
LABEL_16:
    __break(0xC471u);
    JUMPOUT(0x1C7A494DCLL);
  }

LABEL_4:
  if (!a1)
  {
    goto LABEL_16;
  }

  if (wrapperCache(void)::map)
  {
    v2 = *(wrapperCache(void)::map - 8);
    v3 = (a1 + ~(a1 << 32)) ^ ((a1 + ~(a1 << 32)) >> 22);
    v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
    v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
    v6 = v2 & ((v5 >> 31) ^ v5);
    v7 = *(wrapperCache(void)::map + 16 * v6);
    if (v7 == a1)
    {
LABEL_10:
      result = *(wrapperCache(void)::map + 16 * v6 + 8);
      v10 = 1;
      atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v10, 0, memory_order_release, memory_order_relaxed);
      if (v10 == 1)
      {
        return result;
      }

LABEL_11:
      v11 = result;
      WTF::Lock::unlockSlow(wrapperCacheLock);
      return v11;
    }

    v8 = 1;
    while (v7)
    {
      v6 = (v6 + v8) & v2;
      v7 = *(wrapperCache(void)::map + 16 * v6);
      ++v8;
      if (v7 == a1)
      {
        goto LABEL_10;
      }
    }
  }

  result = 0;
  v12 = 1;
  atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v12, 0, memory_order_release, memory_order_relaxed);
  if (v12 != 1)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t *addDOMWrapper(NSObject *a1, DOMObjectInternal *a2)
{
  v2 = 0;
  v7 = a1;
  v6 = a2;
  atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x1CCA63990](wrapperCacheLock);
    {
      goto LABEL_3;
    }
  }

  {
    goto LABEL_3;
  }

  wrapperCache(void)::map = 0;
LABEL_3:
  result = WTF::HashMap<DOMObjectInternal *,NSObject *,WTF::DefaultHash<DOMObjectInternal *>,WTF::HashTraits<DOMObjectInternal *>,WTF::HashTraits<NSObject *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<DOMObjectInternal * const&,NSObject *&>(&wrapperCache(void)::map, &v6, &v7, v5);
  v4 = 1;
  atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != 1)
  {
    return WTF::Lock::unlockSlow(wrapperCacheLock);
  }

  return result;
}

void sub_1C7A495C4(_Unwind_Exception *exception_object)
{
  v2 = v1;
  v4 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 == 1)
  {
    _Unwind_Resume(exception_object);
  }

  WTF::Lock::unlockSlow(wrapperCacheLock);
  _Unwind_Resume(exception_object);
}

uint64_t WTF::HashMap<DOMObjectInternal *,NSObject *,WTF::DefaultHash<DOMObjectInternal *>,WTF::HashTraits<DOMObjectInternal *>,WTF::HashTraits<NSObject *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return v2;
  }

  v3 = *a2;
  if (*a2 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x1C7A49730);
  }

  v4 = *(v2 - 8);
  v5 = (~(v3 << 32) + v3) ^ ((~(v3 << 32) + v3) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v2 + 16 * v8);
  if (v9 != v3)
  {
    v10 = 1;
    while (v9)
    {
      v8 = (v8 + v10) & v4;
      v9 = *(v2 + 16 * v8);
      ++v10;
      if (v9 == v3)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  v11 = *(v2 - 4);
  if (v8 == v11)
  {
    return 0;
  }

  *(v2 + 16 * v8) = -1;
  v13 = vadd_s32(*(v2 - 16), 0xFFFFFFFF00000001);
  *(v2 - 16) = v13;
  v2 = 1;
  if (v11 < 9 || 6 * v13.i32[1] >= v11)
  {
    return v2;
  }

  WTF::HashTable<WebCore::QualifiedName::QualifiedNameImpl const*,WTF::KeyValuePair<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *>>,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::FastMalloc>::rehash(a1, v11 >> 1, 0);
  return 1;
}

void sub_1C7A49A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10)
{
  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
      _Unwind_Resume(exception_object);
    }

    *(a10 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A49A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _DWORD *a9, _DWORD *a10)
{
  if (a9)
  {
    if (a9[2] == 1)
    {
      (*(*a9 + 8))(a9);
    }

    else
    {
      --a9[2];
    }
  }

  if (a10)
  {
    if (a10[2] == 1)
    {
      (*(*a10 + 8))(a10);
      _Unwind_Resume(exception_object);
    }

    --a10[2];
    _Unwind_Resume(exception_object);
  }

  JUMPOUT(0x1C7A49A80);
}

void sub_1C7A49BD4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A49BE8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
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

void sub_1C7A49F68(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11)
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

void sub_1C7A4A148(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, WTF::StringImpl *a13, char a14)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a13, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v15);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A4A368(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, WTF::StringImpl *a13, char a14)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a13, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v15);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A4A588(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, WTF::StringImpl *a13, char a14)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a13, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v15);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A4A7A8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, WTF::StringImpl *a13, char a14)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a13, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v15);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A4AA7C(_Unwind_Exception *a1)
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

void sub_1C7A4AC1C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
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

void sub_1C7A4AD20(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11)
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

void sub_1C7A4AEB0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
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

void sub_1C7A4AFE4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
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

void sub_1C7A4B0F8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11)
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

void *kit(WebCore::MediaList *a1)
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
    v3 = [(WebScriptObject *)[DOMMediaList alloc] _init];
    v6 = 0;
    v3[2] = a1;
    ++*a1;
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

void sub_1C7A4B26C(_Unwind_Exception *a1)
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

void sub_1C7A4B81C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10, char a11)
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

void *kit(WebCore::Node *a1)
{
  if (!a1)
  {
    return 0;
  }

  DOMWrapper = getDOMWrapper(a1);
  if (!DOMWrapper)
  {
    v6 = [objc_alloc(kitClass(a1)) _init];
    v3 = v6;
    if (v6)
    {
      v7 = 0;
      *(v6 + 16) = a1;
      *(a1 + 7) += 2;
      v12 = v6;
      v11 = a1;
      atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v7, 1u, memory_order_acquire, memory_order_acquire);
      if (v7)
      {
        MEMORY[0x1CCA63990](wrapperCacheLock);
      }

      {
        wrapperCache(void)::map = 0;
      }

      WTF::HashMap<DOMObjectInternal *,NSObject *,WTF::DefaultHash<DOMObjectInternal *>,WTF::HashTraits<DOMObjectInternal *>,WTF::HashTraits<NSObject *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<DOMObjectInternal * const&,NSObject *&>(&wrapperCache(void)::map, &v11, &v12, v10);
      v8 = 1;
      atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v8, 0, memory_order_release, memory_order_relaxed);
      if (v8 != 1)
      {
        WTF::Lock::unlockSlow(wrapperCacheLock);
      }

      goto LABEL_13;
    }

    return v3;
  }

  v3 = DOMWrapper;
  v4 = DOMWrapper;
LABEL_13:
  v9 = v3;
  return v3;
}

void sub_1C7A4B9A4(_Unwind_Exception *a1)
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

void sub_1C7A4BA80(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10, char a11)
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

void sub_1C7A4BC6C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a13, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v15);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A4BE4C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A4BE60(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, char a11)
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

void sub_1C7A4BF94(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A4BFA8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, char a11)
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

void sub_1C7A4C0DC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A4C0F0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, char a11)
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

void sub_1C7A4C2FC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, WTF::StringImpl *a13, char a14)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  v16 = *(v14 - 72);
  *(v14 - 72) = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if (a13)
  {
    if (atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a13, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, v17);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A4C570(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WebCore::Node *a11, char a12)
{
  if (a11)
  {
    if (*(a11 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a11);
    }

    else
    {
      *(a11 + 7) -= 2;
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

void sub_1C7A4C7A4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A4C804(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A4C818(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A4C82C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A4C9A4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(&a10, a2);
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, v15);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A4CAC8(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10, char a11)
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

void sub_1C7A4CC30(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, WebCore::Node *a11, char a12)
{
  if (a11)
  {
    if (*(a11 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a11);
    }

    else
    {
      *(a11 + 7) -= 2;
    }
  }

  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
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

void sub_1C7A4CE78(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, char a12, uint64_t a13, uint64_t a14, char a15)
{
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, a2);
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(&a12, a2);
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v17);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, v17);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v18);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v17);
  _Unwind_Resume(a1);
}

void *kit(WebCore::NamedNodeMap *a1)
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
    v3 = [(WebScriptObject *)[DOMNamedNodeMap alloc] _init];
    v3[2] = a1;
    WebCore::NamedNodeMap::ref(a1);
    v6 = 0;
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

void sub_1C7A4D05C(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != 1)
  {
    WTF::Lock::unlockSlow(wrapperCacheLock);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1C7A4D21C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
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

void sub_1C7A4D39C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
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

void sub_1C7A4D4F0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
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

void sub_1C7A4D690(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
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

void sub_1C7A4DA24(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
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

void sub_1C7A4DB64(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
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

void sub_1C7A4DCA4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
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

void sub_1C7A4DE10(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
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

void sub_1C7A4DFB4(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
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

void sub_1C7A4E0FC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
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

void sub_1C7A4E230(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
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

void sub_1C7A4E494(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WebCore::Node *a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
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
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A4E5DC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
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

void sub_1C7A4E6DC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
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

void sub_1C7A4E7DC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
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

void sub_1C7A4E9E0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A4EA40(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A4EACC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A4ED3C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, void *a11, char a12)
{
  if (a11)
  {
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A4EEB8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, void *a11, char a12)
{
  if (a11)
  {
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A4EFCC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
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

void sub_1C7A4F2E4(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, char a15)
{
  WTF::fastFree(v15, a2);
  if (a14)
  {
    if (atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a14, v17);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v18);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v17);
  _Unwind_Resume(a1);
}

uint64_t mpark::variant<WebCore::AddEventListenerOptions,BOOL>::~variant(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 16) = -1;
    return result;
  }

  v1 = *(result + 8);
  *(result + 8) = 0;
  if (!v1)
  {
    goto LABEL_6;
  }

  if (*(v1 + 24) != 1)
  {
    --*(v1 + 24);
LABEL_6:
    *(result + 16) = -1;
    return result;
  }

  v2 = result;
  v3 = MEMORY[0x1CCA63EC0](v1);
  bmalloc::api::tzoneFree(v3, v4);
  result = v2;
  *(v2 + 16) = -1;
  return result;
}

void sub_1C7A4F584(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, char a15)
{
  WTF::fastFree(v15, a2);
  if (a14)
  {
    if (atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a14, v17);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v18);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v17);
  _Unwind_Resume(a1);
}

void sub_1C7A4F770(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  WTF::fastFree(v12, a2);
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, v14);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, v15);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, v14);
  _Unwind_Resume(a1);
}

void sub_1C7A4F954(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  WTF::fastFree(v12, a2);
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, v14);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, v15);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, v14);
  _Unwind_Resume(a1);
}

void sub_1C7A4FA94(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A4FACC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A4FAE0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

uint64_t *WTF::HashMap<DOMObjectInternal *,NSObject *,WTF::DefaultHash<DOMObjectInternal *>,WTF::HashTraits<DOMObjectInternal *>,WTF::HashTraits<NSObject *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<DOMObjectInternal * const&,NSObject *&>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x1C7A4FD04);
  }

  v7 = result;
  v8 = *result;
  if (!*result)
  {
    v9 = a2;
    result = WTF::HashTable<WebCore::QualifiedName::QualifiedNameImpl const*,WTF::KeyValuePair<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *>>,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::FastMalloc>::rehash(result, 8u, 0);
    a2 = v9;
    v8 = *v7;
    v5 = *v9;
  }

  v10 = *(v8 - 8);
  v11 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v8 + 16 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v5)
      {
        v24 = v8 + 16 * *(v8 - 4);
        *a4 = v15;
        *(a4 + 8) = v24;
        *(a4 + 16) = 0;
        v15[1] = *a3;
        return result;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v8 + 16 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      v17[1] = 0;
      --*(*v7 - 16);
      v5 = *a2;
      v15 = v17;
    }
  }

  *v15 = v5;
  v15[1] = *a3;
  v19 = *v7;
  if (*v7)
  {
    v20 = *(v19 - 16);
    v21 = *(v19 - 12) + 1;
    *(v19 - 12) = v21;
    v22 = (v20 + v21);
    v23 = *(v19 - 4);
    if (v23 <= 0x400)
    {
      goto LABEL_15;
    }

LABEL_21:
    if (v23 > 2 * v22)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v21 = 1;
  MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
  v22 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
  v23 = MEMORY[0xFFFFFFFFFFFFFFFC];
  if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (3 * v23 <= 4 * v22)
  {
    if (!v23)
    {
      result = WTF::HashTable<WebCore::QualifiedName::QualifiedNameImpl const*,WTF::KeyValuePair<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *>>,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::FastMalloc>::rehash(v7, 8u, v15);
      v15 = result;
      v19 = *v7;
      if (!*v7)
      {
LABEL_18:
        v23 = 0;
        goto LABEL_24;
      }

LABEL_23:
      v23 = *(v19 - 4);
      goto LABEL_24;
    }

LABEL_22:
    result = WTF::HashTable<WebCore::QualifiedName::QualifiedNameImpl const*,WTF::KeyValuePair<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *>>,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::FastMalloc>::rehash(v7, v23 << (6 * v21 >= (2 * v23)), v15);
    v15 = result;
    v19 = *v7;
    if (!*v7)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

LABEL_24:
  *a4 = v15;
  *(a4 + 8) = v19 + 16 * v23;
  *(a4 + 16) = 1;
  return result;
}

WebCore::WindowProxy *WTF::RefCounted<WebCore::WindowProxy>::deref(WebCore::WindowProxy *result)
{
  if (*result == 1)
  {
    WebCore::WindowProxy::~WindowProxy(result);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void sub_1C7A500D0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (*(v13 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v13);
    }

    else
    {
      *(v13 + 7) -= 2;
    }
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A5010C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A50220(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (*(v13 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v13);
    }

    else
    {
      *(v13 + 7) -= 2;
    }
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A5025C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void *kit(WebCore::NodeIterator *a1)
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
    v3 = [(WebScriptObject *)[DOMNodeIterator alloc] _init];
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

void sub_1C7A503C8(_Unwind_Exception *a1)
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

void sub_1C7A506E8(_Unwind_Exception *a1)
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

void sub_1C7A5085C(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 == 1)
  {
    _Unwind_Resume(exception_object);
  }

  WTF::Lock::unlockSlow(wrapperCacheLock);
  _Unwind_Resume(exception_object);
}

void sub_1C7A50BC4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A50BD8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
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

void sub_1C7A5105C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, char a11)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if ((a9 & 0x8000000000000) != 0)
  {
    v12 = (a9 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12);
      WTF::fastFree(v12, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, v13);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a11, a2);
  _Unwind_Resume(a1);
}

void *kit(WebCore::DeprecatedCSSOMRGBColor *a1)
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
    v3 = [(WebScriptObject *)[DOMRGBColor alloc] _init];
    v6 = 0;
    v3[2] = a1;
    ++*a1;
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

void sub_1C7A511E8(_Unwind_Exception *a1)
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

void sub_1C7A51658(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      WebCore::SimpleRange::~SimpleRange(&a11);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::SimpleRange::~SimpleRange(&a11);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v17);
  _Unwind_Resume(a1);
}

void sub_1C7A516F0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A517D8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WebCore::Node *a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
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
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A51950(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WebCore::Node *a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
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
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A51A80(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
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

void sub_1C7A51B7C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
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

void sub_1C7A51C78(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
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

void sub_1C7A51D74(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
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

void sub_1C7A51ED4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
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

void sub_1C7A51FD0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
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

void sub_1C7A520EC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A52124(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A52138(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A521C4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
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

void sub_1C7A5234C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A523AC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A524DC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A5253C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A52628(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WebCore::Node *a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
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
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a14, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A52758(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
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

void sub_1C7A52868(_Unwind_Exception *a1, void *a2, uint64_t a3, _DWORD *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    if (a4[2] == 1)
    {
      (*(*a4 + 8))(a4);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, v5);
      _Unwind_Resume(a1);
    }

    --a4[2];
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
    _Unwind_Resume(a1);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void *kit(WebCore::Range *a1)
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
    v3 = [(WebScriptObject *)[DOMRange alloc] _init];
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

void sub_1C7A52A0C(_Unwind_Exception *a1)
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

void sub_1C7A52B24(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
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

void sub_1C7A52D20(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15)
{
  if (v15)
  {
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, a2);
    }
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(&a12, a2);
  mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<WebCore::TrustedHTML,WTF::RawPtrTraits<WebCore::TrustedHTML>,WTF::DefaultRefDerefTraits<WebCore::TrustedHTML>>,WTF::String>,(mpark::detail::Trait)1>::~destructor(&a10, v17);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a15, v18);
  _Unwind_Resume(a1);
}

void sub_1C7A52D90(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A52E40(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A52E78(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A52E8C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A52FC4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A52FFC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A53010(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A530D0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A53108(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A5311C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A531E0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
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

void *kit()
{
  WebCore::createLiveRange();
  result = kit(v2);
  if (v2)
  {
    if (*(v2 + 2) == 1)
    {
      v1 = result;
      (*(*v2 + 8))();
      return v1;
    }

    else
    {
      --*(v2 + 2);
    }
  }

  return result;
}

void sub_1C7A53310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    if (a10[2] != 1)
    {
      --a10[2];
      _Unwind_Resume(exception_object);
    }

    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A536B8(_Unwind_Exception *a1)
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

void sub_1C7A53894(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
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

void sub_1C7A53C60(_Unwind_Exception *a1)
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

void sub_1C7A53D98(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
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

void sub_1C7A53F18(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
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

void *kit(WebCore::StyleSheetList *a1)
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
    v3 = [(WebScriptObject *)[DOMStyleSheetList alloc] _init];
    v6 = 0;
    v3[2] = a1;
    ++*a1;
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

void sub_1C7A542AC(_Unwind_Exception *a1)
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

void sub_1C7A543C4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11)
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

void sub_1C7A5456C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  WebCore::ExceptionOr<WTF::Ref<WebCore::Element,WTF::RawPtrTraits<WebCore::Element>,WTF::DefaultRefDerefTraits<WebCore::Element>>>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A545CC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A5469C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
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

void sub_1C7A547D8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A547EC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, char a11)
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

void sub_1C7A549B8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, char a12)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, v13);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a12, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A54C04(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A54C3C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A54CE8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A54D20(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void *kit(WebCore::TimeRanges *a1)
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
    v3 = [(WebScriptObject *)[DOMTimeRanges alloc] _init];
    v6 = 0;
    v3[2] = a1;
    ++*a1;
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

void sub_1C7A54E60(_Unwind_Exception *a1)
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

void sub_1C7A55064(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
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

void sub_1C7A55154(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
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

void sub_1C7A55274(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
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

void sub_1C7A5536C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
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

void sub_1C7A55498(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, uint64_t a11, uint64_t a12, char a13)
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
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v16);
      _Unwind_Resume(a1);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

uint64_t kit(WebCore::DOMTokenList *a1)
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
LABEL_12:
    v9 = v3;
    return v3;
  }

  v6 = [(WebScriptObject *)[DOMTokenList alloc] _init];
  v6[2] = a1;
  if (*a1)
  {
    v3 = v6;
    v7 = 0;
    *(*a1 + 28) += 2;
    v12 = v6;
    v11 = a1;
    atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v7, 1u, memory_order_acquire, memory_order_acquire);
    if (v7)
    {
      MEMORY[0x1CCA63990](wrapperCacheLock);
    }

    {
      wrapperCache(void)::map = 0;
    }

    WTF::HashMap<DOMObjectInternal *,NSObject *,WTF::DefaultHash<DOMObjectInternal *>,WTF::HashTraits<DOMObjectInternal *>,WTF::HashTraits<NSObject *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<DOMObjectInternal * const&,NSObject *&>(&wrapperCache(void)::map, &v11, &v12, v10);
    v8 = 1;
    atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 != 1)
    {
      WTF::Lock::unlockSlow(wrapperCacheLock);
    }

    goto LABEL_12;
  }

  result = 120;
  __break(0xC471u);
  return result;
}

void sub_1C7A55660(_Unwind_Exception *a1)
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

void sub_1C7A55A9C(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(va, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va1, v4);
  _Unwind_Resume(a1);
}

void sub_1C7A55AB8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A55B6C(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(va, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va1, v4);
  _Unwind_Resume(a1);
}

void sub_1C7A55B88(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A55C3C(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(va, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va1, v4);
  _Unwind_Resume(a1);
}

void sub_1C7A55C58(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A55D0C(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(va, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va1, v4);
  _Unwind_Resume(a1);
}

void sub_1C7A55D28(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A55DDC(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(va, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va1, v4);
  _Unwind_Resume(a1);
}

void sub_1C7A55DF8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A55EAC(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(va, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va1, v4);
  _Unwind_Resume(a1);
}

void sub_1C7A55EC8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A55F7C(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(va, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va1, v4);
  _Unwind_Resume(a1);
}

void sub_1C7A55F98(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void *kit(WebCore::TreeWalker *a1)
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
    v3 = [(WebScriptObject *)[DOMTreeWalker alloc] _init];
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

void sub_1C7A560D8(_Unwind_Exception *a1)
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

void sub_1C7A56788(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
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

void sub_1C7A56AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WebCore::Node *a13, uint64_t a14, uint64_t a15, uint64_t a16, WebCore::Node *a17, uint64_t a18, uint64_t a19, uint64_t a20, WebCore::Node *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a13)
  {
    if (*(a13 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a13);
    }

    else
    {
      *(a13 + 7) -= 2;
    }
  }

  if (a17)
  {
    if (*(a17 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a17);
    }

    else
    {
      *(a17 + 7) -= 2;
    }
  }

  if (a21)
  {
    if (*(a21 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a21);
      MEMORY[0x1CCA64C40](&a34);
      _Unwind_Resume(a1);
    }

    *(a21 + 7) -= 2;
    MEMORY[0x1CCA64C40](&a34);
    _Unwind_Resume(a1);
  }

  MEMORY[0x1CCA64C40](&a34);
  _Unwind_Resume(a1);
}

void sub_1C7A56EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WebCore::Node *a13, uint64_t a14, uint64_t a15, uint64_t a16, WebCore::Node *a17, uint64_t a18, uint64_t a19, uint64_t a20, WebCore::Node *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a13)
  {
    if (*(a13 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a13);
    }

    else
    {
      *(a13 + 7) -= 2;
    }
  }

  if (a17)
  {
    if (*(a17 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a17);
    }

    else
    {
      *(a17 + 7) -= 2;
    }
  }

  if (a21)
  {
    if (*(a21 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a21);
      MEMORY[0x1CCA64C40](&a34);
      _Unwind_Resume(a1);
    }

    *(a21 + 7) -= 2;
    MEMORY[0x1CCA64C40](&a34);
    _Unwind_Resume(a1);
  }

  MEMORY[0x1CCA64C40](&a34);
  _Unwind_Resume(a1);
}

void sub_1C7A573A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {

    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A57858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10, uint64_t a11, uint64_t a12, WebCore::Node *a13, uint64_t a14, uint64_t a15, WebCore::Node *a16)
{
  v18 = *(v16 - 24);
  *(v16 - 24) = 0;
  if (v18)
  {
    if (v18[2] == 1)
    {
      (*(*v18 + 8))(v18);
    }

    else
    {
      --v18[2];
    }
  }

  std::optional<WebCore::SimpleRange>::~optional(&a16);
  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
    }

    else
    {
      *(a10 + 7) -= 2;
    }
  }

  if (a13)
  {
    if (*(a13 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a13);
    }

    else
    {
      *(a13 + 7) -= 2;
    }
  }

  v19 = *(v16 - 48);
  *(v16 - 48) = 0;
  if (v19)
  {
    if (*(v19 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v19);
      _Unwind_Resume(a1);
    }

    *(v19 + 7) -= 2;
  }

  _Unwind_Resume(a1);
}

uint64_t *WebCore::makeSimpleRange<WebCore::VisiblePosition,WebCore::VisiblePosition>@<X0>(WebCore *a1@<X0>, VisiblePosition *a2@<X1>, uint64_t a3@<X8>)
{
  WebCore::makeBoundaryPoint(&v9, a1, a2);
  result = WebCore::makeBoundaryPoint(&v7, a2, v5);
  if (v10 == 1 && (v8 & 1) != 0)
  {
    result = WebCore::SimpleRange::SimpleRange();
    *a3 = v11;
    *(a3 + 8) = v12;
    *(a3 + 16) = v13;
    *(a3 + 24) = v14;
    *(a3 + 32) = 1;
    if (v8 != 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 32) = 0;
    if (v8 != 1)
    {
      goto LABEL_9;
    }
  }

  result = v7;
  v7 = 0;
  if (result)
  {
    if (*(result + 7) == 2)
    {
      result = WebCore::Node::removedLastRef(result);
      if (v10 != 1)
      {
        return result;
      }

      goto LABEL_10;
    }

    *(result + 7) -= 2;
  }

LABEL_9:
  if (v10 != 1)
  {
    return result;
  }

LABEL_10:
  result = v9;
  v9 = 0;
  if (result)
  {
    if (*(result + 7) == 2)
    {
      return WebCore::Node::removedLastRef(result);
    }

    else
    {
      *(result + 7) -= 2;
    }
  }

  return result;
}

void sub_1C7A57AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WebCore::Node *a9, uint64_t a10, char a11, WebCore::Node *a12, uint64_t a13, char a14)
{
  if (a11 == 1 && a9)
  {
    if (*(a9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a9);
    }

    else
    {
      *(a9 + 7) -= 2;
    }
  }

  if (a14 == 1 && a12)
  {
    if (*(a12 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a12);
      _Unwind_Resume(exception_object);
    }

    *(a12 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A5819C(_Unwind_Exception *exception_object)
{
  if (v1)
  {

    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A5837C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned int *a9, void *a10)
{
  if (a10)
  {
  }

  if (a9)
  {
    if (atomic_fetch_add(a9 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a9 + 2);
      (*(*a9 + 8))(a9);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A584B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {

    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

NSObject *createDOMWrapper()
{
  v0 = WebCore::JSCSSRule::toWrapped();
  if (v0)
  {

    return kit(v0);
  }

  v2 = WebCore::JSCSSRuleList::toWrapped();
  if (v2)
  {

    return kit(v2);
  }

  v3 = WebCore::JSCSSStyleDeclaration::toWrapped();
  if (v3)
  {

    return kit(v3);
  }

  v4 = WebCore::JSDeprecatedCSSOMValue::toWrapped();
  if (v4)
  {

    return kit(v4);
  }

  v5 = WebCore::JSDeprecatedCSSOMCounter::toWrapped();
  if (v5)
  {

    return kit(v5);
  }

  v6 = WebCore::JSDOMImplementation::toWrapped();
  if (v6)
  {

    return kit(v6);
  }

  v7 = WebCore::JSEvent::toWrapped();
  if (v7)
  {

    return kit(v7);
  }

  result = WebCore::JSHTMLOptionsCollection::toWrapped();
  if (result)
  {
    goto LABEL_30;
  }

  v8 = WebCore::JSMediaList::toWrapped();
  if (v8)
  {

    return kit(v8);
  }

  else
  {
    v9 = WebCore::JSNamedNodeMap::toWrapped();
    if (v9)
    {

      return kit(v9);
    }

    else
    {
      v10 = WebCore::JSNode::toWrapped();
      if (v10)
      {

        return kit(v10);
      }

      else
      {
        v11 = WebCore::JSNodeIterator::toWrapped();
        if (v11)
        {

          return kit(v11);
        }

        else
        {
          v12 = WebCore::JSNodeList::toWrapped();
          if (v12)
          {

            return kit(v12);
          }

          else
          {
            v13 = WebCore::JSDeprecatedCSSOMRGBColor::toWrapped();
            if (v13)
            {

              return kit(v13);
            }

            else
            {
              v14 = WebCore::JSRange::toWrapped();
              if (v14)
              {

                return kit(v14);
              }

              else
              {
                v15 = WebCore::JSDeprecatedCSSOMRect::toWrapped();
                if (v15)
                {

                  return kit(v15);
                }

                else
                {
                  v16 = WebCore::JSStyleSheet::toWrapped();
                  if (v16)
                  {

                    return kit(v16);
                  }

                  else
                  {
                    v17 = WebCore::JSStyleSheetList::toWrapped();
                    if (v17)
                    {

                      return kit(v17);
                    }

                    else
                    {
                      v18 = WebCore::JSTreeWalker::toWrapped();
                      if (v18)
                      {

                        return kit(v18);
                      }

                      else
                      {
                        v19 = WebCore::JSWindowProxy::toWrapped();
                        if (v19)
                        {

                          return kit(v19);
                        }

                        else
                        {
                          v20 = WebCore::JSXPathExpression::toWrapped();
                          if (v20)
                          {

                            return kit(v20);
                          }

                          else
                          {
                            v21 = WebCore::JSXPathResult::toWrapped();
                            if (!v21)
                            {
                              result = WebCore::JSHTMLCollection::toWrapped();
                              if (!result)
                              {
                                return result;
                              }

LABEL_30:

                              return kit(result);
                            }

                            return kit(v21);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C7A58D98(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12)
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
    }
  }

  _Unwind_Resume(exception_object);
}

void *kit(WebCore::XPathNSResolver *a1)
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
    v3 = [(WebScriptObject *)[DOMNativeXPathNSResolver alloc] _init];
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

void sub_1C7A58F54(_Unwind_Exception *a1)
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

void sub_1C7A59254(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, _DWORD *);

  WTF::Ref<WebCore::XPathResult,WTF::RawPtrTraits<WebCore::XPathResult>,WTF::DefaultRefDerefTraits<WebCore::XPathResult>>::~Ref(va1);
  WebCore::ExceptionOr<WTF::Ref<WebCore::XPathResult,WTF::RawPtrTraits<WebCore::XPathResult>,WTF::DefaultRefDerefTraits<WebCore::XPathResult>>>::~ExceptionOr(va, v4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va2, v5);
  _Unwind_Resume(a1);
}

void *kit(WebCore::XPathResult *a1)
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
    v3 = [(WebScriptObject *)[DOMXPathResult alloc] _init];
    v6 = 0;
    v3[2] = a1;
    ++*a1;
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

void sub_1C7A59428(_Unwind_Exception *a1)
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

void *kit(WebCore::XPathExpression *a1)
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
    v3 = [(WebScriptObject *)[DOMXPathExpression alloc] _init];
    v6 = 0;
    v3[2] = a1;
    ++*a1;
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

void sub_1C7A59594(_Unwind_Exception *a1)
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

void sub_1C7A5974C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A59784(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A598E8(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  WebCore::ExceptionOr<WTF::String>::~ExceptionOr(&a9, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v14);
  _Unwind_Resume(a1);
}

void sub_1C7A59964(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A59A00(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A59A38(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A59B0C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A59B4C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A59C4C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A59C84(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A59D58(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A59D98(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A59E74(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  WebCore::ExceptionOr<unsigned int>::~ExceptionOr(&a10, a2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A59EB4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(va, a2);
  _Unwind_Resume(a1);
}

void raiseDOMErrorException()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v0 = WebCore::DOMException::description();
  v1 = *v0;
  v2 = *(v0 + 32);
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (v1)
  {
    v4 = [v3 initWithFormat:@"*** %s: %@ %d", v1, @"DOMException", v2];
  }

  else
  {
    v4 = [v3 initWithFormat:@"*** %@ %d", @"DOMException", v2, v7];
  }

  v5 = v4;
  v8 = @"DOMException";
  v9[0] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v2];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [objc_msgSend(MEMORY[0x1E695DF30] exceptionWithName:@"DOMException" reason:v5 userInfo:{v6), "raise"}];
  __break(0xC471u);
}

{
  raiseDOMErrorException();
}

void sub_1C7A59FC0(_Unwind_Exception *a1)
{
  if (v1)
  {
    v2 = a1;

    a1 = v2;
  }

  _Unwind_Resume(a1);
}

void WebCore::VisibleSelection::~VisibleSelection(WebCore::VisibleSelection *this)
{
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    if (*(v2 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v2);
      v3 = *(this + 8);
      *(this + 8) = 0;
      if (!v3)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    *(v2 + 7) -= 2;
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (!v3)
  {
LABEL_9:
    v4 = *(this + 6);
    *(this + 6) = 0;
    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_7:
  if (*(v3 + 7) != 2)
  {
    *(v3 + 7) -= 2;
    goto LABEL_9;
  }

  WebCore::Node::removedLastRef(v3);
  v4 = *(this + 6);
  *(this + 6) = 0;
  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (*(v4 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v4);
    v5 = *(this + 4);
    *(this + 4) = 0;
    if (!v5)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  *(v4 + 7) -= 2;
LABEL_14:
  v5 = *(this + 4);
  *(this + 4) = 0;
  if (!v5)
  {
LABEL_19:
    v6 = *(this + 2);
    *(this + 2) = 0;
    if (!v6)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_17:
  if (*(v5 + 7) != 2)
  {
    *(v5 + 7) -= 2;
    goto LABEL_19;
  }

  WebCore::Node::removedLastRef(v5);
  v6 = *(this + 2);
  *(this + 2) = 0;
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_22:
  if (*(v6 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v6);
    v7 = *this;
    *this = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_27;
  }

  *(v6 + 7) -= 2;
LABEL_24:
  v7 = *this;
  *this = 0;
  if (!v7)
  {
    return;
  }

LABEL_27:
  if (*(v7 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v7);
  }

  else
  {
    *(v7 + 7) -= 2;
  }
}

WebCore::Node **std::optional<WebCore::SimpleRange>::~optional(WebCore::Node **result)
{
  if (*(result + 32) == 1)
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
        v2 = *v3;
        *v3 = 0;
        if (!v2)
        {
          return result;
        }

        goto LABEL_6;
      }

      *(v1 + 7) -= 2;
    }

    v2 = *result;
    *result = 0;
    if (!v2)
    {
      return result;
    }

LABEL_6:
    if (*(v2 + 7) == 2)
    {
      v4 = result;
      WebCore::Node::removedLastRef(v2);
      return v4;
    }

    else
    {
      *(v2 + 7) -= 2;
    }
  }

  return result;
}

uint64_t WebCore::ObjCEventListener::find(uint64_t a1)
{
  if (WebCore::listenerMap)
  {
    if (a1 == -1 || !a1)
    {
      __break(0xC471u);
      JUMPOUT(0x1C7A5A2A0);
    }

    v1 = *WebCore::listenerMap;
    if (*WebCore::listenerMap)
    {
      v2 = *(v1 - 8);
      v3 = (~(a1 << 32) + a1) ^ ((~(a1 << 32) + a1) >> 22);
      v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
      v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
      v6 = v2 & ((v5 >> 31) ^ v5);
      v7 = *(v1 + 16 * v6);
      if (v7 == a1)
      {
        return *(v1 + 16 * v6 + 8);
      }

      v8 = 1;
      while (v7)
      {
        v6 = (v6 + v8) & v2;
        v7 = *(v1 + 16 * v6);
        ++v8;
        if (v7 == a1)
        {
          return *(v1 + 16 * v6 + 8);
        }
      }
    }
  }

  return 0;
}

uint64_t WebCore::ObjCEventListener::ObjCEventListener(uint64_t a1, void *a2)
{
  *(a1 + 16) = 1;
  *(a1 + 20) = 2;
  *a1 = &unk_1F472B470;
  *(a1 + 8) = 0;
  *(a1 + 24) = a2;
  if (a2)
  {
    v4 = a2;
  }

  v5 = WebCore::listenerMap;
  if (!WebCore::listenerMap)
  {
    v5 = WTF::fastMalloc(8);
    *v5 = 0;
    WebCore::listenerMap = v5;
  }

  v8 = a1;
  v9 = a2;
  WTF::HashMap<objc_object *,WebCore::ObjCEventListener *,WTF::DefaultHash<objc_object *>,WTF::HashTraits<objc_object *>,WTF::HashTraits<WebCore::ObjCEventListener *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<objc_object *,WebCore::ObjCEventListener *>(v5, &v9, &v8, v7);
  return a1;
}

void sub_1C7A5A364(_Unwind_Exception *a1, void *a2)
{
  v4 = *(v2 + 3);
  *(v2 + 3) = 0;
  if (v4)
  {
  }

  WebCore::EventListener::~EventListener(v2, a2);
  _Unwind_Resume(a1);
}

void WebCore::EventListener::~EventListener(WebCore::EventListener *this, void *a2)
{
  if (*(this + 4) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      *(v2 + 8) = 0;
      *(this + 1) = 0;
      add = atomic_fetch_add(v2, 0xFFFFFFFF);
      if (add == 1)
      {
        atomic_store(add, v2);
        WTF::fastFree(v2, a2);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

void WebCore::ObjCEventListener::~ObjCEventListener(WebCore::ObjCEventListener *this)
{
  *this = &unk_1F472B470;
  v2 = WebCore::listenerMap;
  v3 = *WebCore::listenerMap;
  if (*WebCore::listenerMap)
  {
    v4 = *(this + 3);
    if (v4 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x1C7A5A600);
    }

    if (!v4)
    {
LABEL_26:
      __break(0xC471u);
      JUMPOUT(0x1C7A5A5E0);
    }

    v5 = *(v3 - 8);
    v6 = (~(v4 << 32) + v4) ^ ((~(v4 << 32) + v4) >> 22);
    v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
    v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
    v9 = v5 & ((v8 >> 31) ^ v8);
    v10 = *(v3 + 16 * v9);
    if (v10 == v4)
    {
LABEL_8:
      if (v9 != *(v3 - 4))
      {
        *(v3 + 16 * v9) = -1;
        v12 = *v2;
        v13 = vadd_s32(*(*v2 - 16), 0xFFFFFFFF00000001);
        *(v12 - 16) = v13;
        v14 = *(v12 - 4);
        if (6 * v13.i32[1] < v14 && v14 >= 9)
        {
          WTF::HashTable<WebCore::QualifiedName::QualifiedNameImpl const*,WTF::KeyValuePair<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *>>,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::FastMalloc>::rehash(v2, v14 >> 1, 0);
        }
      }
    }

    else
    {
      v11 = 1;
      while (v10)
      {
        v9 = (v9 + v11) & v5;
        v10 = *(v3 + 16 * v9);
        ++v11;
        if (v10 == v4)
        {
          goto LABEL_8;
        }
      }
    }
  }

  CFRetain(*(this + 3));
  CFAutorelease(*(this + 3));
  v17 = *(this + 3);
  *(this + 3) = 0;
  if (v17)
  {
  }

  if (*(this + 4) != 1)
  {
    goto LABEL_26;
  }

  v18 = *(this + 1);
  if (v18)
  {
    *(v18 + 8) = 0;
    *(this + 1) = 0;
    if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v18);
      WTF::fastFree(v18, v16);
    }
  }
}

{
  WebCore::ObjCEventListener::~ObjCEventListener(this);

  WTF::fastFree(v1, v2);
}

void sub_1C7A5A624(_Unwind_Exception *a1, void *a2)
{
  v4 = *(v2 + 3);
  *(v2 + 3) = 0;
  if (v4)
  {
  }

  WebCore::EventListener::~EventListener(v2, a2);
  _Unwind_Resume(a1);
}

uint64_t WebCore::ObjCEventListener::handleEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  v4 = kit(a3);

  return [v3 handleEvent:v4];
}

void sub_1C7A5A8BC(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, _DWORD *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    if (a4[2] == 1)
    {
      (*(*a4 + 8))(a4);
    }

    else
    {
      --a4[2];
    }
  }

  if (a3)
  {
    (*(*a3 + 8))(a3);
    WebCore::LegacyWebArchive::ArchiveOptions::~ArchiveOptions(va, v5);
    _Unwind_Resume(a1);
  }

  WebCore::LegacyWebArchive::ArchiveOptions::~ArchiveOptions(va, a2);
  _Unwind_Resume(a1);
}

uint64_t *WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t *a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 3);
  v4 = *a1;
  if (v3)
  {
    v5 = v4 + 24 * v3;
    do
    {
      v6 = *(v4 + 20);
      v7 = *(v4 + 8);
      if (v6)
      {
        v8 = 16 * v6;
        v9 = (v7 + 8);
        do
        {
          v10 = *v9;
          *v9 = 0;
          if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v10, a2);
          }

          v11 = *(v9 - 1);
          *(v9 - 1) = 0;
          if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, a2);
          }

          v9 += 2;
          v8 -= 16;
        }

        while (v8);
        v7 = *(v4 + 8);
      }

      if (v7)
      {
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        WTF::fastFree(v7, a2);
      }

      v12 = *v4;
      *v4 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, a2);
      }

      v4 += 24;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 2) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void WebCore::LegacyWebArchive::ArchiveOptions::~ArchiveOptions(WebCore::LegacyWebArchive::ArchiveOptions *this, WTF::StringImpl *a2)
{
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 1, a2);
}

void sub_1C7A5AC18(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::LegacyWebArchive::ArchiveOptions::~ArchiveOptions(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A5B19C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14)
{
  if (a14)
  {
    if (atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a14, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A5B248(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  WTF::Vector<WTF::Ref<WebCore::ShadowRoot,WTF::RawPtrTraits<WebCore::ShadowRoot>,WTF::DefaultRefDerefTraits<WebCore::ShadowRoot>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va1, v4);
  _Unwind_Resume(a1);
}

void sub_1C7A5B4B0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11)
{
  v13 = *(v11 - 24);
  *(v11 - 24) = 0;
  if (v13)
  {
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
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

void sub_1C7A5B6BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, _DWORD *);
  v3 = v10;
  v10 = 0;
  if (v3)
  {
    if (v3[2] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[2];
    }
  }

  WebCore::SimpleRange::~SimpleRange(va);
  WebCore::LegacyWebArchive::ArchiveOptions::~ArchiveOptions(va1, v4);
  _Unwind_Resume(a1);
}

void sub_1C7A5B728(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  WebCore::LegacyWebArchive::ArchiveOptions::~ArchiveOptions(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A5B73C(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  WebCore::LegacyWebArchive::ArchiveOptions::~ArchiveOptions(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A5B954(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, WTF::StringImpl *a11, void *a12, char a13)
{
  if (a12)
  {
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      WebCore::SimpleRange::~SimpleRange(&a13);
      _Unwind_Resume(a1);
    }
  }

  WebCore::SimpleRange::~SimpleRange(&a13);
  _Unwind_Resume(a1);
}

uint64_t kit(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if ((_MergedGlobals_9 & 1) == 0)
  {
    qword_1ED6A60E8 = 0;
    _MergedGlobals_9 = 1;
    goto LABEL_13;
  }

  if (!qword_1ED6A60E8)
  {
LABEL_13:
    v11 = [WebBackForwardList alloc];
    ++*(v1 + 8);
    v16 = v1;
    result = [(WebBackForwardList *)v11 initWithBackForwardList:&v16];
    if (result)
    {
      v12 = result;
      v13 = result;
      result = v12;
    }

    v14 = v16;
    v16 = 0;
    if (v14)
    {
      if (v14[2] == 1)
      {
        v15 = result;
        (*(*v14 + 8))(v14);
        return v15;
      }

      else
      {
        --v14[2];
      }
    }

    return result;
  }

  v2 = *(qword_1ED6A60E8 - 8);
  v3 = (~(result << 32) + result) ^ ((~(result << 32) + result) >> 22);
  v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
  v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
  v6 = v2 & ((v5 >> 31) ^ v5);
  for (i = 1; ; ++i)
  {
    v8 = v6;
    v9 = *(qword_1ED6A60E8 + 16 * v6);
    if (v9 != -1)
    {
      if (!v9)
      {
        goto LABEL_13;
      }

      v10 = *(v9 + 8);
      if (!v10)
      {
        result = 92;
        __break(0xC471u);
        return result;
      }

      if (v10 == result)
      {
        break;
      }
    }

    v6 = (v8 + i) & v2;
  }

  result = *(qword_1ED6A60E8 + 16 * v8 + 8);
  if (!result)
  {
    goto LABEL_13;
  }

  return result;
}

void sub_1C7A5BE14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    if (a10[2] != 1)
    {
      --a10[2];
      _Unwind_Resume(exception_object);
    }

    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A5C1B4(_Unwind_Exception *exception_object, void *a2)
{
  if (v2)
  {
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      WTF::fastFree(v2, a2);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A5C2D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    if (a10[2] != 1)
    {
      --a10[2];
      _Unwind_Resume(exception_object);
    }

    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A5C5F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_1C7A5C854(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A5CA68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>::~Ref(va);
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1C7A5CC7C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebCore::HistoryItem>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A5CD58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebCore::HistoryItem>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A5CE40(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebCore::HistoryItem>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A5CF80(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
  }

  WTF::Vector<WTF::Ref<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a9, a2);
  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WTF::Ref<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v8 = *v4;
      *v4 = 0;
      if (v8)
      {
        if (*(v8 + 8) == 1)
        {
          v6 = MEMORY[0x1CCA64170]();
          WTF::fastFree(v6, v7);
        }

        else
        {
          --*(v8 + 8);
        }
      }

      v4 = (v4 + 8);
      v5 -= 8;
    }

    while (v5);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void sub_1C7A5D14C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
  }

  WTF::Vector<WTF::Ref<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A5D4F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebCore::HistoryItem>::deref(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A5D6C8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A5DFBC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, WTF::StringImpl *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, WTF::StringImpl *a35, WTF::StringImpl *a36, WTF *a37, int a38, unsigned int a39, WTF::StringImpl *a40)
{
  v42 = v40[1];
  v40[1] = 0;
  if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v42, a2);
  }

  v43 = *v40;
  *v40 = 0;
  if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v43, a2);
  }

  v44 = a37;
  if (a39)
  {
    v46 = 8 * a39;
    do
    {
      v47 = *v44;
      *v44 = 0;
      if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v47, a2);
      }

      v44 = (v44 + 8);
      v46 -= 8;
    }

    while (v46);
    v44 = a37;
    if (!a37)
    {
LABEL_9:
      v45 = a36;
      if (!a36)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  else if (!a37)
  {
    goto LABEL_9;
  }

  WTF::fastFree(v44, a2);
  v45 = a36;
  if (!a36)
  {
    goto LABEL_20;
  }

LABEL_18:
  if (atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v45, a2);
  }

LABEL_20:
  if (a35)
  {
    if (atomic_fetch_add_explicit(a35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a35, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A5E45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {

    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A5E514(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7A5E5D8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7A5E998(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF *a13, int a14)
{
  if (v14 != a13 && a13 != 0)
  {
    WTF::fastFree(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A5F0BC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void WebCore::ObjCNodeFilterCondition::~ObjCNodeFilterCondition(WebCore::ObjCNodeFilterCondition *this)
{
  v1 = *(this + 2);
  *(this + 2) = 0;
  if (v1)
  {
    v2 = this;

    this = v2;
  }

  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

void WebCore::ObjCNodeFilterCondition::~ObjCNodeFilterCondition(WebCore::ObjCNodeFilterCondition *this, void *a2)
{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    v3 = this;

    this = v3;
  }

  if (*(this + 2) == 1)
  {

    WTF::fastFree(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t *WTF::HashMap<objc_object *,WebCore::ObjCEventListener *,WTF::DefaultHash<objc_object *>,WTF::HashTraits<objc_object *>,WTF::HashTraits<WebCore::ObjCEventListener *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<objc_object *,WebCore::ObjCEventListener *>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x1C7A5F640);
  }

  v7 = result;
  v8 = *result;
  if (!*result)
  {
    v9 = a2;
    result = WTF::HashTable<WebCore::QualifiedName::QualifiedNameImpl const*,WTF::KeyValuePair<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *>>,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::FastMalloc>::rehash(result, 8u, 0);
    a2 = v9;
    v8 = *v7;
    v5 = *v9;
  }

  v10 = *(v8 - 8);
  v11 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v8 + 16 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v5)
      {
        v24 = v8 + 16 * *(v8 - 4);
        *a4 = v15;
        *(a4 + 8) = v24;
        *(a4 + 16) = 0;
        v15[1] = *a3;
        return result;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v8 + 16 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      v17[1] = 0;
      --*(*v7 - 16);
      v5 = *a2;
      v15 = v17;
    }
  }

  *v15 = v5;
  v15[1] = *a3;
  v19 = *v7;
  if (*v7)
  {
    v20 = *(v19 - 16);
    v21 = *(v19 - 12) + 1;
    *(v19 - 12) = v21;
    v22 = (v20 + v21);
    v23 = *(v19 - 4);
    if (v23 <= 0x400)
    {
      goto LABEL_15;
    }

LABEL_21:
    if (v23 > 2 * v22)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v21 = 1;
  MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
  v22 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
  v23 = MEMORY[0xFFFFFFFFFFFFFFFC];
  if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (3 * v23 <= 4 * v22)
  {
    if (!v23)
    {
      result = WTF::HashTable<WebCore::QualifiedName::QualifiedNameImpl const*,WTF::KeyValuePair<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *>>,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::FastMalloc>::rehash(v7, 8u, v15);
      v15 = result;
      v19 = *v7;
      if (!*v7)
      {
LABEL_18:
        v23 = 0;
        goto LABEL_24;
      }

LABEL_23:
      v23 = *(v19 - 4);
      goto LABEL_24;
    }

LABEL_22:
    result = WTF::HashTable<WebCore::QualifiedName::QualifiedNameImpl const*,WTF::KeyValuePair<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *>>,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashMap<WebCore::QualifiedName::QualifiedNameImpl const*,objc_class *,WTF::DefaultHash<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::HashTraits<objc_class *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::QualifiedName::QualifiedNameImpl const*>,WTF::FastMalloc>::rehash(v7, v23 << (6 * v21 >= (2 * v23)), v15);
    v15 = result;
    v19 = *v7;
    if (!*v7)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

LABEL_24:
  *a4 = v15;
  *(a4 + 8) = v19 + 16 * v23;
  *(a4 + 16) = 1;
  return result;
}

uint64_t WTF::Vector<WTF::Ref<WebCore::ShadowRoot,WTF::RawPtrTraits<WebCore::ShadowRoot>,WTF::DefaultRefDerefTraits<WebCore::ShadowRoot>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        if (*(v6 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v6);
        }

        else
        {
          *(v6 + 7) -= 2;
        }
      }

      v4 = (v4 + 8);
      v5 -= 8;
    }

    while (v5);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::HashTable<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>,WebBackForwardList *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>,WebBackForwardList *>>,WTF::DefaultHash<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>,WebBackForwardList *,WTF::DefaultHash<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WebBackForwardList *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<BackForwardList,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::rehash(unsigned int a1)
{
  v2 = qword_1ED6A60E8;
  if (qword_1ED6A60E8)
  {
    v3 = *(qword_1ED6A60E8 - 4);
    v4 = *(qword_1ED6A60E8 - 12);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  result = WTF::fastZeroedMalloc((16 * a1 + 16));
  qword_1ED6A60E8 = result + 16;
  *(result + 8) = a1 - 1;
  *(result + 12) = a1;
  *result = 0;
  *(result + 4) = v4;
  if (v3)
  {
    v7 = 0;
    while (1)
    {
      v8 = (v2 + 16 * v7);
      v9 = *v8;
      if (*v8 != -1)
      {
        if (v9)
        {
          if (qword_1ED6A60E8)
          {
            v10 = *(qword_1ED6A60E8 - 8);
            v11 = *(v9 + 1);
            if (!v11)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v10 = 0;
            v11 = *(v9 + 1);
            if (!v11)
            {
LABEL_25:
              result = 92;
              __break(0xC471u);
              return result;
            }
          }

          v12 = (~(v11 << 32) + v11) ^ ((~(v11 << 32) + v11) >> 22);
          v13 = 9 * ((v12 + ~(v12 << 13)) ^ ((v12 + ~(v12 << 13)) >> 8));
          v14 = (v13 ^ (v13 >> 15)) + ~((v13 ^ (v13 >> 15)) << 27);
          v15 = v10 & ((v14 >> 31) ^ v14);
          v16 = 1;
          do
          {
            v17 = v15;
            v18 = *(qword_1ED6A60E8 + 16 * v15);
            v15 = (v15 + v16++) & v10;
          }

          while (v18);
          v19 = (qword_1ED6A60E8 + 16 * v17);
          *v8 = 0;
          *v19 = v9;
          v20 = *v8;
          v19[1] = v8[1];
          *v8 = 0;
          if (v20 && atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v20);
            WTF::fastFree(v20, v6);
          }
        }

        else
        {
          *v8 = 0;
        }
      }

      if (++v7 == v3)
      {
        goto LABEL_21;
      }
    }
  }

  if (v2)
  {
LABEL_21:

    return WTF::fastFree((v2 - 16), v6);
  }

  return result;
}

unint64_t WTF::Vector<WebCore::MimeClassInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v4 = *a1;
  if (*a1 > a3 || v4 + 32 * a1[3] <= a3)
  {
    v11 = a1[2];
    if (v11 + (v11 >> 1) <= v11 + 1)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = v11 + (v11 >> 1);
    }

    if (v12 <= a2)
    {
      v12 = a2;
    }

    if (v12 <= 0x10)
    {
      v13 = 16;
    }

    else
    {
      v13 = v12;
    }

    WTF::Vector<WebCore::MimeClassInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v13);
    return a3;
  }

  else
  {
    v5 = a3 - v4;
    v6 = a1[2];
    if (v6 + (v6 >> 1) <= v6 + 1)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v6 + (v6 >> 1);
    }

    if (v7 <= a2)
    {
      v7 = a2;
    }

    if (v7 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7;
    }

    WTF::Vector<WebCore::MimeClassInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
    return *a1 + v5;
  }
}

unsigned int *WTF::Vector<WebCore::MimeClassInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
{
  if (result[2] < a2)
  {
    if (a2 >> 27)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = result[3];
      v5 = a2;
      result = WTF::fastMalloc((32 * a2));
      v2[2] = v5;
      *v2 = result;
      if (v4)
      {
        v7 = result;
        v8 = (v3 + 32 * v4);
        v9 = v3;
        do
        {
          v10 = *v9;
          *v9 = 0;
          *v7 = v10;
          v11 = *(v9 + 1);
          *(v9 + 1) = 0;
          *(v7 + 2) = 0;
          *(v7 + 3) = 0;
          *(v7 + 1) = v11;
          v12 = *(v9 + 2);
          *(v9 + 2) = 0;
          *(v7 + 2) = v12;
          LODWORD(v12) = *(v9 + 6);
          *(v9 + 6) = 0;
          v7[6] = v12;
          LODWORD(v12) = *(v9 + 7);
          *(v9 + 7) = 0;
          v7[7] = v12;
          v13 = *(v9 + 7);
          v14 = *(v9 + 2);
          if (v13)
          {
            v15 = 8 * v13;
            do
            {
              v16 = *v14;
              *v14 = 0;
              if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v16, v6);
              }

              v14 = (v14 + 8);
              v15 -= 8;
            }

            while (v15);
            v14 = *(v9 + 2);
          }

          if (v14)
          {
            *(v9 + 2) = 0;
            *(v9 + 6) = 0;
            WTF::fastFree(v14, v6);
          }

          v17 = *(v9 + 1);
          *(v9 + 1) = 0;
          if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v6);
          }

          result = *v9;
          *v9 = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v6);
          }

          v7 += 8;
          v9 = (v9 + 32);
        }

        while (v9 != v8);
      }

      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          v2[2] = 0;
        }

        return WTF::fastFree(v3, v6);
      }
    }
  }

  return result;
}

void sub_1C7A5FEF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  JSC::JSLock::DropAllLocks::~DropAllLocks(va);
  _Unwind_Resume(a1);
}

void sub_1C7A5FF08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  JSC::JSLock::DropAllLocks::~DropAllLocks(va);
  _Unwind_Resume(a1);
}

void sub_1C7A5FFB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  JSC::JSLock::DropAllLocks::~DropAllLocks(va);
  _Unwind_Resume(a1);
}

void sub_1C7A60074(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  JSC::JSLock::DropAllLocks::~DropAllLocks(va);
  _Unwind_Resume(a1);
}

void sub_1C7A60088(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  JSC::JSLock::DropAllLocks::~DropAllLocks(va);
  _Unwind_Resume(a1);
}

void sub_1C7A601B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  JSC::JSLock::DropAllLocks::~DropAllLocks(va);
  _Unwind_Resume(a1);
}

void sub_1C7A601C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  JSC::JSLock::DropAllLocks::~DropAllLocks(va);
  _Unwind_Resume(a1);
}

void sub_1C7A60500(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  JSC::JSLock::DropAllLocks::~DropAllLocks(va);
  _Unwind_Resume(a1);
}

void sub_1C7A60514(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  JSC::JSLock::DropAllLocks::~DropAllLocks(va);
  _Unwind_Resume(a1);
}

void sub_1C7A60528(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  JSC::JSLock::DropAllLocks::~DropAllLocks(va);
  _Unwind_Resume(a1);
}

void sub_1C7A6053C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  JSC::JSLock::DropAllLocks::~DropAllLocks(va);
  _Unwind_Resume(a1);
}

void sub_1C7A60550(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  JSC::JSLock::DropAllLocks::~DropAllLocks(va);
  _Unwind_Resume(a1);
}

void WebCore::SubstituteData::~SubstituteData(WebCore::SubstituteData *this, WTF::StringImpl *a2)
{
  v3 = *(this + 37);
  *(this + 37) = 0;
  if (v3)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((this + 48), a2);
  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = *this;
  *this = 0;
  if (v6)
  {
    if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6 + 2);
      (*(*v6 + 8))(v6);
    }
  }
}

void sub_1C7A60F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebCore::ResourceError::~ResourceError(WebCore::ResourceError *this, WTF::StringImpl *a2)
{
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *this;
  *this = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }
}

void sub_1C7A61350(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t PluginPackageCandidates::update(id *this, WebBasePluginPackage *a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = *this;
    if (*this)
    {
      [result bundleIdentifier];
      [(WebBasePluginPackage *)a2 bundleIdentifier];
      if (WTF::equal(v13, v12, v5))
      {
        v7 = [(WebBasePluginPackage *)a2 versionNumber];
        v9 = [*this versionNumber];
        v10 = v12;
        v12 = 0;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v8);
        }

        result = v13;
        v13 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v8);
        }

        if (v7 > v9)
        {
          *this = a2;
        }
      }

      else
      {
        v11 = v12;
        v12 = 0;
        if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, v6);
        }

        result = v13;
        v13 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v6);
        }
      }
    }

    else
    {
      *this = a2;
    }
  }

  return result;
}

void sub_1C7A614C4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10)
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

void sub_1C7A61660(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7A61B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A61F10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A61FD4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A621F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (!a10)
  {
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A623B0(_Unwind_Exception *a1)
{
  if (v1)
  {
    v2 = a1;

    a1 = v2;
  }

  _Unwind_Resume(a1);
}

void *WTF::CanMakeWeakPtrBase<WTF::WeakPtrFactory<WebFrameLoaderClient,WTF::DefaultWeakPtrImpl>,(WTF::WeakPtrFactoryInitialization)0>::~CanMakeWeakPtrBase(void *result, void *a2)
{
  v2 = *result;
  if (*result)
  {
    *(v2 + 8) = 0;
    *result = 0;
    add = atomic_fetch_add(v2, 0xFFFFFFFF);
    if (add == 1)
    {
      atomic_store(add, v2);
      v4 = result;
      WTF::fastFree(v2, a2);
      return v4;
    }
  }

  return result;
}

void WebFrameLoaderClient::~WebFrameLoaderClient(id *this)
{
  *this = &unk_1F472B518;
  [this[3] _clearCoreFrame];
  objc_destroyWeak(this + 4);
  v3 = this[3];
  this[3] = 0;
  if (v3)
  {
  }

  v4 = this[2];
  if (v4 && (*(v4 + 1) = 0, this[2] = 0, atomic_fetch_add(v4, 0xFFFFFFFF) == 1))
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v2);
    v5 = this;
  }

  else
  {
    v5 = this;
  }

  WebCore::LocalFrameLoaderClient::~LocalFrameLoaderClient(v5);
}

{
  WebFrameLoaderClient::~WebFrameLoaderClient(this);

  WTF::fastFree(v1, v2);
}

void sub_1C7A624E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  v4 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v4)
  {
  }

  WTF::CanMakeWeakPtrBase<WTF::WeakPtrFactory<WebFrameLoaderClient,WTF::DefaultWeakPtrImpl>,(WTF::WeakPtrFactoryInitialization)0>::~CanMakeWeakPtrBase((v1 + 16), v3);
  WebCore::LocalFrameLoaderClient::~LocalFrameLoaderClient(v1);
  _Unwind_Resume(a1);
}

uint64_t WebFrameLoaderClient::makeRepresentation(WebFrameLoaderClient *this, WebCore::DocumentLoader *a2)
{
  if (a2)
  {
    v2 = *(a2 + 451);
  }

  else
  {
    v2 = 0;
  }

  return [v2 _makeRepresentation];
}

uint64_t WebFrameLoaderClient::hasHTMLView(WebFrameLoaderClient *this)
{
  [*(*(*(this + 3) + 8) + 16) documentView];
  objc_opt_class();
  return objc_opt_isKindOfClass() & 1;
}

uint64_t WebFrameLoaderClient::forceLayoutOnRestoreFromBackForwardCache(WebFrameLoaderClient *this)
{
  v2 = [*(*(*(this + 3) + 8) + 16) documentView];
  v3 = *(this + 3);
  if (v3)
  {
    v4 = *(*(v3 + 8) + 8);
    if (v4)
    {
      v5 = *(v4 + 24);
      if (v5)
      {
        Weak = *(v5 + 8);
        if (Weak)
        {
          if ((*(**(Weak[7] + 16) + 1440))(*(Weak[7] + 16)))
          {
            goto LABEL_6;
          }

          Weak = objc_loadWeak((*(Weak[7] + 16) + 16));
          v7 = [Weak mainFrame];
          v8 = *(this + 3);
          if (v8)
          {
            goto LABEL_11;
          }

LABEL_7:
          v9 = 0;
          if (v7 != v8)
          {
            goto LABEL_14;
          }

          goto LABEL_12;
        }
      }

      else
      {
        Weak = 0;
      }

      v7 = [Weak mainFrame];
      v8 = *(this + 3);
      if (v8)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

LABEL_6:
  Weak = 0;
  v7 = [0 mainFrame];
  v8 = *(this + 3);
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_11:
  v9 = *(*(v8 + 8) + 8);
  if (v7 != v8)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (*(v9 + 216))
  {
    [Weak _fixedLayoutSize];
    v13.width = v10;
    v13.height = v11;
    WebCore::IntSize::IntSize(&v14, &v13);
    WebCore::ScrollView::setFixedLayoutSize();
    WebCore::ScrollView::setUseFixedLayout(*(v9 + 216));
  }

LABEL_14:
  [v2 setNeedsLayout:1];
  [v2 layout];
  return 1;
}

void WebFrameLoaderClient::forceLayoutForNonHTML(WebFrameLoaderClient *this)
{
  v2 = *(*(*(this + 3) + 8) + 16);
  v5 = v2;
  if (v2)
  {
    v3 = v2;
    v2 = v5;
  }

  v4 = [v2 documentView];
  if (([objc_msgSend(*(this + 3) "_dataSource")] & 1) == 0)
  {
    [v4 setNeedsLayout:1];
    [v4 layout];
    [v4 setNeedsDisplay:1];
  }

  if (v5)
  {
  }
}

void sub_1C7A627DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebFrameLoaderClient::setCopiesOnScroll(WebFrameLoaderClient *this)
{
  v1 = [objc_msgSend(*(*(*(this + 3) + 8) + 16) "_scrollView")];

  return [v1 setCopiesOnScroll:1];
}

void (*WebFrameLoaderClient::detachedFromParent2(WebFrameLoaderClient *this))(void)
{
  v2 = *(this + 3);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = *(*(v2 + 8) + 8);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = *(v3 + 24);
  if (!v4)
  {
    Weak = 0;
    goto LABEL_10;
  }

  Weak = *(v4 + 8);
  if (!Weak)
  {
LABEL_10:
    [*(*(*(this + 3) + 8) + 16) _setWebFrame:0];
    goto LABEL_7;
  }

  if ((*(Weak->super.viewRef->var1->notificationCallback + 180))(Weak->super.viewRef->var1))
  {
LABEL_6:
    Weak = 0;
    [*(*(*(this + 3) + 8) + 16) _setWebFrame:0];
    goto LABEL_7;
  }

  Weak = objc_loadWeak(&Weak->super.viewRef->var1->responderCallback);
  [*(*(*(this + 3) + 8) + 16) _setWebFrame:0];
  if (Weak)
  {
    result = Weak->_private->frameLoadDelegateImplementations.didRemoveFrameFromHierarchyFunc;
    if (!result)
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_7:
  result = qword_1EC2612D8;
  if (!qword_1EC2612D8)
  {
    return result;
  }

LABEL_12:
  v7 = *(this + 3);

  return CallFrameLoadDelegate(result, Weak, sel_webView_didRemoveFrameFromHierarchy_, v7);
}

void WebFrameLoaderClient::detachedFromParent3(WebFrameLoaderClient *this)
{
  v1 = *(*(this + 3) + 8);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v2)
  {
  }
}

WebDownload *WebFrameLoaderClient::convertMainResourceLoadToDownload(WebFrameLoaderClient *this, WebCore::DocumentLoader *a2, const WebCore::ResourceRequest *a3, const WebCore::ResourceResponse *a4)
{
  v6 = *(this + 3);
  if (v6)
  {
    v7 = *(*(v6 + 8) + 8);
    if (v7)
    {
      v8 = *(v7 + 24);
      if (v8)
      {
        Weak = *(v8 + 8);
        if (Weak)
        {
          if ((*(**(Weak[7] + 16) + 1440))(*(Weak[7] + 16), a2, a3))
          {
            goto LABEL_6;
          }

          Weak = objc_loadWeak((*(Weak[7] + 16) + 16));
          v10 = WebCore::DocumentLoader::mainResourceLoader(a2);
          if (v10)
          {
            goto LABEL_13;
          }

LABEL_7:
          result = -[WebDownload initWithRequest:delegate:]([WebDownload alloc], "initWithRequest:delegate:", WebCore::ResourceRequest::nsURLRequest(), [Weak downloadDelegate]);
          if (result)
          {

            return result;
          }

          return result;
        }
      }

      else
      {
        Weak = 0;
      }

      v10 = WebCore::DocumentLoader::mainResourceLoader(a2);
      if (v10)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }
  }

LABEL_6:
  Weak = 0;
  v10 = WebCore::DocumentLoader::mainResourceLoader(a2);
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_13:
  v12 = WebCore::ResourceHandle::connection(*(v10 + 24));
  v13 = WebCore::ResourceRequest::nsURLRequest();
  v14 = WebCore::ResourceResponse::nsURLResponse(a4);
  v15 = [Weak downloadDelegate];

  return [(NSURLDownload *)WebDownload _downloadWithLoadingConnection:v12 request:v13 response:v14 delegate:v15 proxy:0];
}

uint64_t WebFrameLoaderClient::dispatchDidLoadResourceFromMemoryCache(WebFrameLoaderClient *this, WebCore::DocumentLoader *a2, const WebCore::ResourceRequest *a3, const WebCore::ResourceResponse *a4, int a5)
{
  v8 = *(this + 3);
  if (v8 && (v9 = *(*(v8 + 8) + 8)) != 0 && (v10 = *(v9 + 24)) != 0)
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      if ((*(v11->super.viewRef->var1->notificationCallback + 180))(v11->super.viewRef->var1))
      {
        v11 = 0;
      }

      else
      {
        Weak = objc_loadWeak(&v11->super.viewRef->var1->responderCallback);
        v11 = Weak;
        if (Weak)
        {
          p_resourceLoadDelegateImplementations = &Weak->_private->resourceLoadDelegateImplementations;
          webThreadDidLoadResourceFromMemoryCacheFunc = Weak->_private->resourceLoadDelegateImplementations.webThreadDidLoadResourceFromMemoryCacheFunc;
          if (!webThreadDidLoadResourceFromMemoryCacheFunc)
          {
            goto LABEL_18;
          }

          goto LABEL_9;
        }
      }

      p_resourceLoadDelegateImplementations = &WebViewGetResourceLoadDelegateImplementations(WebView *)::empty;
      webThreadDidLoadResourceFromMemoryCacheFunc = off_1EC261178;
      if (!off_1EC261178)
      {
        goto LABEL_18;
      }

LABEL_9:
      v14 = WebCore::ResourceRequest::nsURLRequest();
      v15 = WebCore::ResourceResponse::nsURLResponse(a4);
      if (a2)
      {
        v16 = *(a2 + 451);
        resourceProgressDelegate = v11->_private->resourceProgressDelegate;
        if (!resourceProgressDelegate)
        {
          return 1;
        }
      }

      else
      {
        v16 = 0;
        resourceProgressDelegate = v11->_private->resourceProgressDelegate;
        if (!resourceProgressDelegate)
        {
          return 1;
        }
      }

      webThreadDidLoadResourceFromMemoryCacheFunc(resourceProgressDelegate, sel_webThreadWebView_didLoadResourceFromMemoryCache_response_length_fromDataSource_, v11, v14, v15, a5, v16);
      return 1;
    }
  }

  else
  {
    v11 = 0;
  }

  p_resourceLoadDelegateImplementations = &WebViewGetResourceLoadDelegateImplementations(WebView *)::empty;
  webThreadDidLoadResourceFromMemoryCacheFunc = off_1EC261178;
  if (off_1EC261178)
  {
    goto LABEL_9;
  }

LABEL_18:
  v19 = p_resourceLoadDelegateImplementations[17];
  if (!v19)
  {
    return 0;
  }

  v20 = WebCore::ResourceRequest::nsURLRequest();
  v21 = WebCore::ResourceResponse::nsURLResponse(a4);
  if (a2)
  {
    v22 = *(a2 + 451);
  }

  else
  {
    v22 = 0;
  }

  CallResourceLoadDelegate(v19, v11, sel_webView_didLoadResourceFromMemoryCache_response_length_fromDataSource_, v20, v21, a5, v22);
  return 1;
}

void WebFrameLoaderClient::assignIdentifierToInitialRequest(uint64_t a1, uint64_t a2, uint64_t a3, objc_object *a4)
{
  v6 = *(a1 + 24);
  if (v6 && (v7 = *(*(v6 + 8) + 8)) != 0 && (v8 = *(v7 + 24)) != 0)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      if ((*(**(v9[7] + 16) + 1440))(*(v9[7] + 16)))
      {
        v9 = 0;
      }

      else
      {
        Weak = objc_loadWeak((*(v9[7] + 16) + 16));
        v9 = Weak;
        if (Weak)
        {
          v10 = (Weak[10] + 240);
          v11 = *(Weak[10] + 280);
          if (!v11)
          {
            goto LABEL_19;
          }

          goto LABEL_9;
        }
      }

      v10 = &WebViewGetResourceLoadDelegateImplementations(WebView *)::empty;
      v11 = off_1EC261170;
      if (!off_1EC261170)
      {
        goto LABEL_19;
      }

LABEL_9:
      v12 = WebCore::ResourceRequest::nsURLRequest();
      if (a4)
      {
        isa = a4[451].isa;
        v14 = *(v9[10] + 40);
        if (!v14)
        {
          goto LABEL_25;
        }
      }

      else
      {
        isa = 0;
        v14 = *(v9[10] + 40);
        if (!v14)
        {
          goto LABEL_25;
        }
      }

      v15 = v11(v14, sel_webThreadWebView_identifierForInitialRequest_fromDataSource_, v9, v12, isa);
      if (v15)
      {
LABEL_23:
        v22 = v15;
        v20 = v15;
        v21 = v22;
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = &WebViewGetResourceLoadDelegateImplementations(WebView *)::empty;
  v11 = off_1EC261170;
  if (off_1EC261170)
  {
    goto LABEL_9;
  }

LABEL_19:
  if (!v10[11])
  {
    v21 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    goto LABEL_26;
  }

  v17 = WebCore::ResourceRequest::nsURLRequest();
  if (a4)
  {
    a4 = a4[451].isa;
  }

  v18 = [v9 _resourceLoadDelegateForwarder];
  v15 = CallDelegate(v9, v18, sel_webView_identifierForInitialRequest_fromDataSource_, v17, a4, v19);
  if (v15)
  {
    goto LABEL_23;
  }

LABEL_25:
  v21 = 0;
LABEL_26:
  v23 = v21;
  [v9 _addObject:v21 forIdentifier:a2];
  if (v23)
  {
  }
}

void sub_1C7A62FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (!a10)
  {
    JUMPOUT(0x1C7A62FBCLL);
  }

  _Unwind_Resume(a1);
}

void WebFrameLoaderClient::dispatchWillSendRequest(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, WebCore::ResourceResponse *a5)
{
  v8 = *(a1 + 24);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = *(*(v8 + 8) + 8);
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = *(v9 + 24);
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = *(v10 + 8);
  if (!v11)
  {
    goto LABEL_7;
  }

  if ((*(**(v11[7] + 16) + 1440))(*(v11[7] + 16)))
  {
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  Weak = objc_loadWeak((*(v11[7] + 16) + 16));
  v11 = Weak;
  if (!Weak)
  {
LABEL_7:
    v12 = &WebViewGetResourceLoadDelegateImplementations(WebView *)::empty;
    if ((*(a5 + 138) & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = (Weak[10] + 240);
  if (*(a5 + 138))
  {
LABEL_8:
    WebDocumentLoaderMac::increaseLoadCount(a2, a3);
  }

LABEL_9:
  v13 = WebCore::ResourceRequest::nsURLRequest();
  v14 = v12[7];
  if (v14)
  {
    v15 = [v11 _objectForIdentifier:a3];
    v16 = WebCore::ResourceResponse::nsURLResponse(a5);
    if (a2)
    {
      v17 = a2[451];
      v18 = *(v11[10] + 40);
      if (v18)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v17 = 0;
      v18 = *(v11[10] + 40);
      if (v18)
      {
LABEL_12:
        if (v14(v18, sel_webThreadWebView_resource_willSendRequest_redirectResponse_fromDataSource_, v11, v15, v13, v16, v17) == v13)
        {
          return;
        }

        goto LABEL_21;
      }
    }

    if (!v13)
    {
      return;
    }

LABEL_21:
    MEMORY[0x1CCA65390](v31);
    WebCore::ResourceRequest::updateFromDelegatePreservingOldProperties();
    v24 = v35;
    v35 = 0;
    if (v24)
    {
    }

    v25 = v34;
    v34 = 0;
    if (v25)
    {
      if (*v25 == 1)
      {
        v27 = MEMORY[0x1CCA67F60]();
        bmalloc::api::tzoneFree(v27, v28);
        v26 = v33;
        v33 = 0;
        if (!v26)
        {
LABEL_31:
          v29 = v32;
          v32 = 0;
          if (v29)
          {
            if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v29, v23);
            }
          }

          WebCore::ResourceRequestBase::RequestData::~RequestData(v31, v23);
          return;
        }

LABEL_29:
        if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v23);
        }

        goto LABEL_31;
      }

      --*v25;
    }

    v26 = v33;
    v33 = 0;
    if (!v26)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (v12[12])
  {
    v19 = [v11 _objectForIdentifier:a3];
    v20 = WebCore::ResourceResponse::nsURLResponse(a5);
    if (a2)
    {
      a2 = a2[451];
    }

    v21 = [v11 _resourceLoadDelegateForwarder];
    if (CallDelegate(v11, v21, sel_webView_resource_willSendRequest_redirectResponse_fromDataSource_, v19, v13, v20, a2, v22) != v13)
    {
      goto LABEL_21;
    }
  }
}

uint64_t WebFrameLoaderClient::shouldUseCredentialStorage(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (!v3 || (v4 = *(*(v3 + 8) + 8)) == 0 || (v5 = *(v4 + 24)) == 0)
  {
    v6 = 0;
LABEL_8:
    if (!qword_1EC2611E8)
    {
      return 1;
    }

    goto LABEL_9;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    goto LABEL_8;
  }

  if ((*(**(v6[7] + 16) + 1440))(*(v6[7] + 16)))
  {
    v6 = 0;
  }

  else
  {
    Weak = objc_loadWeak((*(v6[7] + 16) + 16));
    v6 = Weak;
    if (Weak)
    {
      if (!*(Weak[10] + 400))
      {
        return 1;
      }

      goto LABEL_9;
    }
  }

  if (!qword_1EC2611E8)
  {
    return 1;
  }

LABEL_9:
  v7 = [v6 _objectForIdentifier:?];
  if (!v7)
  {
    return 1;
  }

  if (a2)
  {
    v8 = *(a2 + 3608);
  }

  else
  {
    v8 = 0;
  }

  return [*(v6[10] + 40) webView:v6 resource:v7 shouldUseCredentialStorageForDataSource:v8];
}

uint64_t WebFrameLoaderClient::dispatchDidReceiveAuthenticationChallenge(uint64_t a1, objc_object *isa, uint64_t a3)
{
  v5 = *(a1 + 24);
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = *(*(v5 + 8) + 8);
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = *(v6 + 24);
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = *(v7 + 8);
  if (!v8)
  {
    goto LABEL_7;
  }

  if (((*(**(v8[7] + 16) + 1440))(*(v8[7] + 16)) & 1) == 0)
  {
    Weak = objc_loadWeak((*(v8[7] + 16) + 16));
    v8 = Weak;
    if (Weak)
    {
      v15 = (Weak[10] + 240);
      result = WebCore::mac();
      if (!*v15)
      {
        return result;
      }

      goto LABEL_8;
    }
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

LABEL_7:
  result = WebCore::mac();
  if (!WebViewGetResourceLoadDelegateImplementations(WebView *)::empty)
  {
    return result;
  }

LABEL_8:
  v10 = result;
  result = [v8 _objectForIdentifier:a3];
  if (result)
  {
    v11 = result;
    if (isa)
    {
      isa = isa[451].isa;
    }

    v12 = [v8 _resourceLoadDelegateForwarder];

    return CallDelegate(v8, v12, sel_webView_resource_didReceiveAuthenticationChallenge_fromDataSource_, v11, v10, isa, v13);
  }

  return result;
}

id WebFrameLoaderClient::canAuthenticateAgainstProtectionSpace(uint64_t a1, uint64_t a2, uint64_t a3, WebCore::ProtectionSpace *this)
{
  v7 = *(a1 + 24);
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = *(*(v7 + 8) + 8);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = *(v8 + 24);
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = *(v9 + 8);
  if (!v10)
  {
    goto LABEL_7;
  }

  if (((*(**(v10[7] + 16) + 1440))(*(v10[7] + 16)) & 1) == 0)
  {
    Weak = objc_loadWeak((*(v10[7] + 16) + 16));
    v10 = Weak;
    if (Weak)
    {
      v17 = Weak[10] + 240;
      v11 = WebCore::ProtectionSpace::nsSpace(this);
      if (!*(v17 + 8))
      {
        return (*(this + 21) < 7u);
      }

      goto LABEL_8;
    }
  }

  else
  {
LABEL_6:
    v10 = 0;
  }

LABEL_7:
  v11 = WebCore::ProtectionSpace::nsSpace(this);
  if (!qword_1EC261150)
  {
    return (*(this + 21) < 7u);
  }

LABEL_8:
  v12 = v11;
  v13 = [v10 _objectForIdentifier:a3];
  if (!v13)
  {
    return (*(this + 21) < 7u);
  }

  if (a2)
  {
    v14 = *(a2 + 3608);
  }

  else
  {
    v14 = 0;
  }

  return [*(v10[10] + 40) webView:v10 resource:v13 canAuthenticateAgainstProtectionSpace:v12 forDataSource:v14];
}

objc_selector *WebFrameLoaderClient::connectionProperties@<X0>(uint64_t a1@<X0>, objc_object *isa@<X1>, uint64_t a3@<X2>, objc_selector **a4@<X8>)
{
  v6 = *(a1 + 24);
  if (!v6 || (v7 = *(*(v6 + 8) + 8)) == 0)
  {
    Weak = 0;
    result = [0 _objectForIdentifier:?];
    if (!result)
    {
      goto LABEL_23;
    }

    goto LABEL_12;
  }

  v8 = *(v7 + 24);
  if (v8)
  {
    Weak = *(v8 + 8);
    if (Weak)
    {
      if ((*(**(Weak[7] + 16) + 1440))(*(Weak[7] + 16)))
      {
        Weak = 0;
        result = [0 _objectForIdentifier:a3];
        if (!result)
        {
          goto LABEL_23;
        }
      }

      else
      {
        Weak = objc_loadWeak((*(Weak[7] + 16) + 16));
        result = [Weak _objectForIdentifier:a3];
        if (!result)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
    Weak = 0;
  }

  result = [Weak _objectForIdentifier:?];
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_12:
  v12 = result;
  if (!Weak)
  {
    if (qword_1EC261158)
    {
      goto LABEL_16;
    }

LABEL_23:
    *a4 = 0;
    return result;
  }

  if (!*(Weak[10] + 256))
  {
    goto LABEL_23;
  }

LABEL_16:
  if (isa)
  {
    isa = isa[451].isa;
  }

  v13 = [Weak _resourceLoadDelegateForwarder];
  result = CallDelegate(Weak, v13, sel_webView_connectionPropertiesForResource_dataSource_, v12, isa, v14);
  *a4 = result;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t WebFrameLoaderClient::shouldPaintBrokenImage(WebFrameLoaderClient *this, const WTF::URL *a2)
{
  v2 = *(this + 3);
  if (!v2 || (v3 = *(*(v2 + 8) + 8)) == 0 || (v4 = *(v3 + 24)) == 0)
  {
    v5 = 0;
LABEL_8:
    if (!qword_1EC2611F0)
    {
      return 1;
    }

    goto LABEL_9;
  }

  v5 = *(v4 + 8);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a2;
  if ((*(**(v5[7] + 16) + 1440))(*(v5[7] + 16)))
  {
    v5 = 0;
  }

  else
  {
    Weak = objc_loadWeak((*(v5[7] + 16) + 16));
    v5 = Weak;
    if (Weak)
    {
      a2 = v6;
      if (!*(Weak[10] + 408))
      {
        return 1;
      }

      goto LABEL_9;
    }
  }

  a2 = v6;
  if (!qword_1EC2611F0)
  {
    return 1;
  }

LABEL_9:
  WTF::URL::createCFURL(&v11, a2);
  result = [*(v5[10] + 40) webView:v5 shouldPaintBrokenImageForURL:v11];
  v8 = v11;
  v11 = 0;
  if (v8)
  {
    v9 = result;

    return v9;
  }

  return result;
}

uint64_t WebFrameLoaderClient::dispatchDidReceiveResponse(uint64_t result, objc_object *a2, uint64_t a3, WebCore::ResourceResponse *a4)
{
  v6 = *(result + 24);
  if (v6 && (v7 = *(*(v6 + 8) + 8)) != 0 && (v8 = *(v7 + 24)) != 0)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      result = (*(**(v9[7] + 16) + 1440))(*(v9[7] + 16));
      if (result)
      {
        v9 = 0;
      }

      else
      {
        result = objc_loadWeak((*(v9[7] + 16) + 16));
        v9 = result;
        if (result)
        {
          v10 = (*(result + 80) + 240);
          if (!*(*(result + 80) + 304))
          {
            goto LABEL_19;
          }

          goto LABEL_9;
        }
      }

      v10 = &WebViewGetResourceLoadDelegateImplementations(WebView *)::empty;
      if (!qword_1EC261188)
      {
        goto LABEL_19;
      }

LABEL_9:
      result = [v9 _objectForIdentifier:?];
      if (!result)
      {
        return result;
      }

      v11 = result;
      v12 = v10[8];
      v13 = WebCore::ResourceResponse::nsURLResponse(a4);
      if (a2)
      {
        isa = a2[451].isa;
        result = *(v9[10] + 40);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        isa = 0;
        result = *(v9[10] + 40);
        if (!result)
        {
          return result;
        }
      }

      return v12(result, sel_webThreadWebView_resource_didReceiveResponse_fromDataSource_, v9, v11, v13, isa);
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = &WebViewGetResourceLoadDelegateImplementations(WebView *)::empty;
  if (qword_1EC261188)
  {
    goto LABEL_9;
  }

LABEL_19:
  if (v10[13])
  {
    result = [v9 _objectForIdentifier:?];
    if (result)
    {
      v15 = result;
      v16 = WebCore::ResourceResponse::nsURLResponse(a4);
      if (a2)
      {
        a2 = a2[451].isa;
      }

      v17 = [v9 _resourceLoadDelegateForwarder];

      return CallDelegate(v9, v17, sel_webView_resource_didReceiveResponse_fromDataSource_, v15, v16, a2, v18);
    }
  }

  return result;
}

uint64_t WebFrameLoaderClient::willCacheResponse(uint64_t a1, objc_object *a2, uint64_t a3, objc_object *a4, uint64_t *a5)
{
  v8 = *(a1 + 24);
  if (v8 && (v9 = *(*(v8 + 8) + 8)) != 0 && (v10 = *(v9 + 24)) != 0)
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      if ((*(**(v11[7] + 16) + 1440))(*(v11[7] + 16)))
      {
        v11 = 0;
      }

      else
      {
        Weak = objc_loadWeak((*(v11[7] + 16) + 16));
        v11 = Weak;
        if (Weak)
        {
          v12 = (Weak[10] + 240);
          if (!*(Weak[10] + 320))
          {
            goto LABEL_19;
          }

          goto LABEL_9;
        }
      }

      v12 = &WebViewGetResourceLoadDelegateImplementations(WebView *)::empty;
      if (!qword_1EC261198)
      {
        goto LABEL_19;
      }

LABEL_9:
      v13 = [v11 _objectForIdentifier:?];
      if (!v13)
      {
LABEL_24:
        v24 = *a5;
        *a5 = 0;
        (*(*v24 + 16))(v24, a4);
        goto LABEL_27;
      }

      v14 = v13;
      if (a2)
      {
        isa = a2[451].isa;
        v16 = *(v11[10] + 40);
        if (!v16)
        {
          goto LABEL_25;
        }
      }

      else
      {
        isa = 0;
        v16 = *(v11[10] + 40);
        if (!v16)
        {
LABEL_25:
          v17 = 0;
          goto LABEL_26;
        }
      }

      v17 = (v12[10])(v16, sel_webThreadWebView_resource_willCacheResponse_fromDataSource_, v11, v14, a4, isa);
LABEL_26:
      v24 = *a5;
      *a5 = 0;
      (*(*v24 + 16))(v24, v17);
      goto LABEL_27;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = &WebViewGetResourceLoadDelegateImplementations(WebView *)::empty;
  if (qword_1EC261198)
  {
    goto LABEL_9;
  }

LABEL_19:
  if (!v12[18])
  {
    goto LABEL_24;
  }

  v19 = [v11 _objectForIdentifier:?];
  if (!v19)
  {
    goto LABEL_24;
  }

  v20 = v19;
  if (a2)
  {
    a2 = a2[451].isa;
  }

  v21 = [v11 _resourceLoadDelegateForwarder];
  v23 = CallDelegate(v11, v21, sel_webView_resource_willCacheResponse_fromDataSource_, v20, a4, a2, v22);
  v24 = *a5;
  *a5 = 0;
  (*(*v24 + 16))(v24, v23);
LABEL_27:
  v25 = *(*v24 + 8);

  return v25(v24);
}

uint64_t WebFrameLoaderClient::dispatchDidReceiveContentLength(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(result + 24);
  if (v6 && (v7 = *(*(v6 + 8) + 8)) != 0 && (v8 = *(v7 + 24)) != 0)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      result = (*(v9->super.viewRef->var1->notificationCallback + 180))(v9->super.viewRef->var1);
      if (result)
      {
        v9 = 0;
      }

      else
      {
        result = objc_loadWeak(&v9->super.viewRef->var1->responderCallback);
        v9 = result;
        if (result)
        {
          v10 = (*(result + 80) + 240);
          if (!*(*(result + 80) + 312))
          {
            goto LABEL_19;
          }

          goto LABEL_9;
        }
      }

      v10 = &WebViewGetResourceLoadDelegateImplementations(WebView *)::empty;
      if (!qword_1EC261190)
      {
        goto LABEL_19;
      }

LABEL_9:
      result = [(WebView *)v9 _objectForIdentifier:?];
      if (!result)
      {
        return result;
      }

      v11 = result;
      if (a2)
      {
        v12 = *(a2 + 3608);
        result = v9->_private->resourceProgressDelegate;
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v12 = 0;
        result = v9->_private->resourceProgressDelegate;
        if (!result)
        {
          return result;
        }
      }

      return (v10[9])(result, sel_webThreadWebView_resource_didReceiveContentLength_fromDataSource_, v9, v11, a4, v12);
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = &WebViewGetResourceLoadDelegateImplementations(WebView *)::empty;
  if (qword_1EC261190)
  {
    goto LABEL_9;
  }

LABEL_19:
  if (v10[14])
  {
    result = [(WebView *)v9 _objectForIdentifier:?];
    if (result)
    {
      v13 = result;
      v14 = v10[14];
      if (a2)
      {
        v15 = *(a2 + 3608);
      }

      else
      {
        v15 = 0;
      }

      return CallResourceLoadDelegate(v14, v9, sel_webView_resource_didReceiveContentLength_fromDataSource_, v13, a4, v15);
    }
  }

  return result;
}

void WebFrameLoaderClient::dispatchDidFinishLoading(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 24);
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = *(*(v6 + 8) + 8);
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = *(v7 + 24);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = *(v8 + 8);
  if (!v9)
  {
    goto LABEL_7;
  }

  if ((*(**(v9[7] + 16) + 1440))(*(v9[7] + 16)))
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  Weak = objc_loadWeak((*(v9[7] + 16) + 16));
  v9 = Weak;
  if (!Weak)
  {
LABEL_7:
    v10 = &WebViewGetResourceLoadDelegateImplementations(WebView *)::empty;
    if (qword_1EC261160)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  v10 = (Weak[10] + 240);
  if (*(Weak[10] + 264))
  {
LABEL_8:
    v11 = [v9 _objectForIdentifier:a4];
    if (!v11)
    {
      goto LABEL_22;
    }

    v12 = v11;
    if (a2)
    {
      v13 = *(a2 + 3608);
      v14 = *(v9[10] + 40);
      if (!v14)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v13 = 0;
      v14 = *(v9[10] + 40);
      if (!v14)
      {
        goto LABEL_22;
      }
    }

    (v10[3])(v14, sel_webThreadWebView_resource_didFinishLoadingFromDataSource_, v9, v12, v13);
    goto LABEL_22;
  }

LABEL_16:
  if (v10[15])
  {
    v16 = [v9 _objectForIdentifier:a4];
    if (v16)
    {
      v17 = v16;
      if (a2)
      {
        v18 = *(a2 + 3608);
      }

      else
      {
        v18 = 0;
      }

      v19 = [v9 _resourceLoadDelegateForwarder];
      CallDelegate(v9, v19, sel_webView_resource_didFinishLoadingFromDataSource_, v17, v18, v20);
    }
  }

LABEL_22:
  [v9 _removeObjectForIdentifier:a4];

  WebDocumentLoaderMac::decreaseLoadCount(a2, a4);
}

void WebFrameLoaderClient::dispatchDidFailLoading(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 24);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = *(*(v8 + 8) + 8);
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = *(v9 + 24);
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = *(v10 + 8);
  if (!v11)
  {
    goto LABEL_7;
  }

  if ((*(**(v11[7] + 16) + 1440))(*(v11[7] + 16)))
  {
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  Weak = objc_loadWeak((*(v11[7] + 16) + 16));
  v11 = Weak;
  if (!Weak)
  {
LABEL_7:
    v12 = &WebViewGetResourceLoadDelegateImplementations(WebView *)::empty;
    if (qword_1EC261168)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  v12 = (Weak[10] + 240);
  if (*(Weak[10] + 272))
  {
LABEL_8:
    v13 = [v11 _objectForIdentifier:a4];
    if (!v13)
    {
      goto LABEL_22;
    }

    v14 = v13;
    v15 = v12[4];
    v16 = MEMORY[0x1CCA691D0](a5);
    if (a2)
    {
      v17 = *(a2 + 3608);
      v18 = *(v11[10] + 40);
      if (!v18)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v17 = 0;
      v18 = *(v11[10] + 40);
      if (!v18)
      {
        goto LABEL_22;
      }
    }

    v15(v18, sel_webThreadWebView_resource_didFailLoadingWithError_fromDataSource_, v11, v14, v16, v17);
    goto LABEL_22;
  }

LABEL_16:
  if (v12[16])
  {
    v20 = [v11 _objectForIdentifier:a4];
    if (v20)
    {
      v21 = v20;
      v22 = MEMORY[0x1CCA691D0](a5);
      if (a2)
      {
        v23 = *(a2 + 3608);
      }

      else
      {
        v23 = 0;
      }

      v24 = [v11 _resourceLoadDelegateForwarder];
      CallDelegate(v11, v24, sel_webView_resource_didFailLoadingWithError_fromDataSource_, v21, v22, v23, v25);
    }
  }

LABEL_22:
  [v11 _removeObjectForIdentifier:a4];

  WebDocumentLoaderMac::decreaseLoadCount(a2, a4);
}

id WebFrameLoaderClient::dispatchDidDispatchOnloadEvents(id this)
{
  v1 = *(this + 3);
  if (v1 && (v2 = *(*(v1 + 8) + 8)) != 0 && (v3 = *(v2 + 24)) != 0 && (v4 = *(v3 + 8)) != 0)
  {
    v5 = this;
    if ((*(**(*(v4 + 56) + 16) + 1440))(*(*(v4 + 56) + 16)))
    {
      Weak = 0;
      this = v5;
      didHandleOnloadEventsForFrameFunc = qword_1EC261220;
      if (!qword_1EC261220)
      {
        return this;
      }
    }

    else
    {
      Weak = objc_loadWeak((*(*(v4 + 56) + 16) + 16));
      if (Weak)
      {
        this = v5;
        didHandleOnloadEventsForFrameFunc = Weak->_private->frameLoadDelegateImplementations.didHandleOnloadEventsForFrameFunc;
        if (!didHandleOnloadEventsForFrameFunc)
        {
          return this;
        }
      }

      else
      {
        this = v5;
        didHandleOnloadEventsForFrameFunc = qword_1EC261220;
        if (!qword_1EC261220)
        {
          return this;
        }
      }
    }
  }

  else
  {
    Weak = 0;
    didHandleOnloadEventsForFrameFunc = qword_1EC261220;
    if (!qword_1EC261220)
    {
      return this;
    }
  }

  v8 = *(this + 3);

  return CallFrameLoadDelegate(didHandleOnloadEventsForFrameFunc, Weak, sel_webView_didHandleOnloadEventsForFrame_, v8);
}

void (*WebFrameLoaderClient::dispatchDidReceiveServerRedirectForProvisionalLoad(WebFrameLoaderClient *this))(void)
{
  v2 = *WebCore::ResourceRequestBase::url((*(*(*(*(*(this + 3) + 8) + 8) + 208) + 104) + 880));
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v16, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v16 = &stru_1F472E7E8;
    v15 = &stru_1F472E7E8;
  }

  v4 = *(*(this + 3) + 8);
  v5 = v16;
  v16 = 0;
  v6 = *(v4 + 64);
  *(v4 + 64) = v5;
  if (v6)
  {

    v7 = v16;
    v16 = 0;
    if (v7)
    {
    }
  }

  v8 = *(this + 3);
  if (!v8 || (v9 = *(*(v8 + 8) + 8)) == 0 || (v10 = *(v9 + 24)) == 0 || (v11 = *(v10 + 8)) == 0 || ((*(**(*(v11 + 56) + 16) + 1440))(*(*(v11 + 56) + 16)) & 1) != 0)
  {
    v12 = 0;
    goto LABEL_13;
  }

  Weak = objc_loadWeak((*(*(v11 + 56) + 16) + 16));
  v12 = Weak;
  if (!Weak)
  {
LABEL_13:
    result = qword_1EC261228;
    if (!qword_1EC261228)
    {
      return result;
    }

    return CallFrameLoadDelegate(result, v12, sel_webView_didReceiveServerRedirectForProvisionalLoadForFrame_, *(this + 3));
  }

  result = Weak->_private->frameLoadDelegateImplementations.didReceiveServerRedirectForProvisionalLoadForFrameFunc;
  if (result)
  {
    return CallFrameLoadDelegate(result, v12, sel_webView_didReceiveServerRedirectForProvisionalLoadForFrame_, *(this + 3));
  }

  return result;
}

void sub_1C7A64898(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

id WebFrameLoaderClient::dispatchDidCancelClientRedirect(id this)
{
  v1 = *(this + 3);
  if (v1 && (v2 = *(*(v1 + 8) + 8)) != 0 && (v3 = *(v2 + 24)) != 0 && (v4 = *(v3 + 8)) != 0)
  {
    v5 = this;
    if ((*(**(*(v4 + 56) + 16) + 1440))(*(*(v4 + 56) + 16)))
    {
      Weak = 0;
      this = v5;
      didCancelClientRedirectForFrameFunc = qword_1EC261230;
      if (!qword_1EC261230)
      {
        return this;
      }
    }

    else
    {
      Weak = objc_loadWeak((*(*(v4 + 56) + 16) + 16));
      if (Weak)
      {
        this = v5;
        didCancelClientRedirectForFrameFunc = Weak->_private->frameLoadDelegateImplementations.didCancelClientRedirectForFrameFunc;
        if (!didCancelClientRedirectForFrameFunc)
        {
          return this;
        }
      }

      else
      {
        this = v5;
        didCancelClientRedirectForFrameFunc = qword_1EC261230;
        if (!qword_1EC261230)
        {
          return this;
        }
      }
    }
  }

  else
  {
    Weak = 0;
    didCancelClientRedirectForFrameFunc = qword_1EC261230;
    if (!qword_1EC261230)
    {
      return this;
    }
  }

  v8 = *(this + 3);

  return CallFrameLoadDelegate(didCancelClientRedirectForFrameFunc, Weak, sel_webView_didCancelClientRedirectForFrame_, v8);
}

void WebFrameLoaderClient::dispatchWillPerformClientRedirect(uint64_t a1, WTF::URL *this, double a3, double a4)
{
  v7 = *(a1 + 24);
  if (!v7 || (v8 = *(*(v7 + 8) + 8)) == 0 || (v9 = *(v8 + 24)) == 0)
  {
    v10 = 0;
LABEL_8:
    p_frameLoadDelegateImplementations = &WebViewGetFrameLoadDelegateImplementations(WebView *)::empty;
    if (!qword_1EC261238)
    {
      return;
    }

    goto LABEL_9;
  }

  v10 = *(v9 + 8);
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = this;
  if ((*(v10->super.viewRef->var1->notificationCallback + 180))(v10->super.viewRef->var1))
  {
    v10 = 0;
  }

  else
  {
    Weak = objc_loadWeak(&v10->super.viewRef->var1->responderCallback);
    v10 = Weak;
    if (Weak)
    {
      p_frameLoadDelegateImplementations = &Weak->_private->frameLoadDelegateImplementations;
      this = v11;
      if (!Weak->_private->frameLoadDelegateImplementations.willPerformClientRedirectToURLDelayFireDateForFrameFunc)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  p_frameLoadDelegateImplementations = &WebViewGetFrameLoadDelegateImplementations(WebView *)::empty;
  this = v11;
  if (!qword_1EC261238)
  {
    return;
  }

LABEL_9:
  WTF::URL::createCFURL(&v15, this);
  CallFrameLoadDelegate(p_frameLoadDelegateImplementations[8], v10, sel_webView_willPerformClientRedirectToURL_delay_fireDate_forFrame_, v15, a3, [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:a4], *(a1 + 24));
  v13 = v15;
  v15 = 0;
  if (v13)
  {
  }
}

void sub_1C7A64B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebFrameLoaderClient::dispatchDidChangeLocationWithinPage(WebFrameLoaderClient *this)
{
  v2 = *(*(*(*(*(this + 3) + 8) + 8) + 224) + 800);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v16, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v16 = &stru_1F472E7E8;
    v15 = &stru_1F472E7E8;
  }

  v4 = *(*(this + 3) + 8);
  v5 = v16;
  v16 = 0;
  v6 = *(v4 + 56);
  *(v4 + 56) = v5;
  if (v6)
  {

    v7 = v16;
    v16 = 0;
    if (v7)
    {
    }
  }

  v8 = *(this + 3);
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = *(*(v8 + 8) + 8);
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = *(v9 + 24);
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = *(v10 + 8);
  if (!v11)
  {
    goto LABEL_13;
  }

  if (((*(v11->super.viewRef->var1->notificationCallback + 180))(v11->super.viewRef->var1) & 1) == 0)
  {
    Weak = objc_loadWeak(&v11->super.viewRef->var1->responderCallback);
    v11 = Weak;
    if (Weak)
    {
      didChangeLocationWithinPageForFrameFunc = Weak->_private->frameLoadDelegateImplementations.didChangeLocationWithinPageForFrameFunc;
      if (!didChangeLocationWithinPageForFrameFunc)
      {
        return [-[WebView _UIKitDelegateForwarder](v11 "_UIKitDelegateForwarder")];
      }

      goto LABEL_14;
    }
  }

  else
  {
LABEL_12:
    v11 = 0;
  }

LABEL_13:
  didChangeLocationWithinPageForFrameFunc = qword_1EC261240;
  if (qword_1EC261240)
  {
LABEL_14:
    CallFrameLoadDelegate(didChangeLocationWithinPageForFrameFunc, v11, sel_webView_didChangeLocationWithinPageForFrame_, *(this + 3));
  }

  return [-[WebView _UIKitDelegateForwarder](v11 "_UIKitDelegateForwarder")];
}

void sub_1C7A64CDC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void (*WebFrameLoaderClient::dispatchDidPushStateWithinPage(WebFrameLoaderClient *this))(void)
{
  v2 = *(*(*(*(*(this + 3) + 8) + 8) + 224) + 800);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v16, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v16 = &stru_1F472E7E8;
    v15 = &stru_1F472E7E8;
  }

  v4 = *(*(this + 3) + 8);
  v5 = v16;
  v16 = 0;
  v6 = *(v4 + 56);
  *(v4 + 56) = v5;
  if (v6)
  {

    v7 = v16;
    v16 = 0;
    if (v7)
    {
    }
  }

  v8 = *(this + 3);
  if (!v8 || (v9 = *(*(v8 + 8) + 8)) == 0 || (v10 = *(v9 + 24)) == 0 || (v11 = *(v10 + 8)) == 0 || ((*(**(*(v11 + 56) + 16) + 1440))(*(*(v11 + 56) + 16)) & 1) != 0)
  {
    v12 = 0;
    goto LABEL_13;
  }

  Weak = objc_loadWeak((*(*(v11 + 56) + 16) + 16));
  v12 = Weak;
  if (!Weak)
  {
LABEL_13:
    result = qword_1EC261248;
    if (!qword_1EC261248)
    {
      return result;
    }

    return CallFrameLoadDelegate(result, v12, sel_webView_didPushStateWithinPageForFrame_, *(this + 3));
  }

  result = Weak->_private->frameLoadDelegateImplementations.didPushStateWithinPageForFrameFunc;
  if (result)
  {
    return CallFrameLoadDelegate(result, v12, sel_webView_didPushStateWithinPageForFrame_, *(this + 3));
  }

  return result;
}

void sub_1C7A64E64(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void (*WebFrameLoaderClient::dispatchDidReplaceStateWithinPage(WebFrameLoaderClient *this))(void)
{
  v2 = *(*(*(*(*(this + 3) + 8) + 8) + 224) + 800);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v16, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v16 = &stru_1F472E7E8;
    v15 = &stru_1F472E7E8;
  }

  v4 = *(*(this + 3) + 8);
  v5 = v16;
  v16 = 0;
  v6 = *(v4 + 56);
  *(v4 + 56) = v5;
  if (v6)
  {

    v7 = v16;
    v16 = 0;
    if (v7)
    {
    }
  }

  v8 = *(this + 3);
  if (!v8 || (v9 = *(*(v8 + 8) + 8)) == 0 || (v10 = *(v9 + 24)) == 0 || (v11 = *(v10 + 8)) == 0 || ((*(**(*(v11 + 56) + 16) + 1440))(*(*(v11 + 56) + 16)) & 1) != 0)
  {
    v12 = 0;
    goto LABEL_13;
  }

  Weak = objc_loadWeak((*(*(v11 + 56) + 16) + 16));
  v12 = Weak;
  if (!Weak)
  {
LABEL_13:
    result = qword_1EC261250;
    if (!qword_1EC261250)
    {
      return result;
    }

    return CallFrameLoadDelegate(result, v12, sel_webView_didReplaceStateWithinPageForFrame_, *(this + 3));
  }

  result = Weak->_private->frameLoadDelegateImplementations.didReplaceStateWithinPageForFrameFunc;
  if (result)
  {
    return CallFrameLoadDelegate(result, v12, sel_webView_didReplaceStateWithinPageForFrame_, *(this + 3));
  }

  return result;
}

void sub_1C7A64FEC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void (*WebFrameLoaderClient::dispatchDidPopStateWithinPage(WebFrameLoaderClient *this))(void)
{
  v2 = *(*(*(*(*(this + 3) + 8) + 8) + 224) + 800);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v16, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v16 = &stru_1F472E7E8;
    v15 = &stru_1F472E7E8;
  }

  v4 = *(*(this + 3) + 8);
  v5 = v16;
  v16 = 0;
  v6 = *(v4 + 56);
  *(v4 + 56) = v5;
  if (v6)
  {

    v7 = v16;
    v16 = 0;
    if (v7)
    {
    }
  }

  v8 = *(this + 3);
  if (!v8 || (v9 = *(*(v8 + 8) + 8)) == 0 || (v10 = *(v9 + 24)) == 0 || (v11 = *(v10 + 8)) == 0 || ((*(**(*(v11 + 56) + 16) + 1440))(*(*(v11 + 56) + 16)) & 1) != 0)
  {
    v12 = 0;
    goto LABEL_13;
  }

  Weak = objc_loadWeak((*(*(v11 + 56) + 16) + 16));
  v12 = Weak;
  if (!Weak)
  {
LABEL_13:
    result = qword_1EC261258;
    if (!qword_1EC261258)
    {
      return result;
    }

    return CallFrameLoadDelegate(result, v12, sel_webView_didPopStateWithinPageForFrame_, *(this + 3));
  }

  result = Weak->_private->frameLoadDelegateImplementations.didPopStateWithinPageForFrameFunc;
  if (result)
  {
    return CallFrameLoadDelegate(result, v12, sel_webView_didPopStateWithinPageForFrame_, *(this + 3));
  }

  return result;
}

void sub_1C7A65174(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebFrameLoaderClient::dispatchWillClose(WebFrameLoaderClient *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = *(*(v2 + 8) + 8);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = *(v3 + 24);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v4 + 8);
  if (!v5)
  {
    goto LABEL_7;
  }

  if ((*(v5->super.viewRef->var1->notificationCallback + 180))(v5->super.viewRef->var1))
  {
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  Weak = objc_loadWeak(&v5->super.viewRef->var1->responderCallback);
  v5 = Weak;
  if (!Weak)
  {
LABEL_7:
    willCloseFrameFunc = qword_1EC261260;
    if (!qword_1EC261260)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  willCloseFrameFunc = Weak->_private->frameLoadDelegateImplementations.willCloseFrameFunc;
  if (willCloseFrameFunc)
  {
LABEL_8:
    CallFrameLoadDelegate(willCloseFrameFunc, v5, sel_webView_willCloseFrame_, *(this + 3));
  }

LABEL_9:
  v7 = [(WebView *)v5 _UIKitDelegateForwarder];
  v8 = *(this + 3);

  return [v7 webView:v5 willCloseFrame:v8];
}