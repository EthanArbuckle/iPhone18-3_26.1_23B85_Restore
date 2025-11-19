@interface DOMXPathResult
- (BOOL)BOOLeanValue;
- (BOOL)invalidIteratorState;
- (DOMNode)iterateNext;
- (DOMNode)singleNodeValue;
- (DOMNode)snapshotItem:(unsigned int)index;
- (NSString)stringValue;
- (double)numberValue;
- (unsigned)resultType;
- (unsigned)snapshotLength;
- (void)dealloc;
@end

@implementation DOMXPathResult

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    internal = self->super._internal;
    if (internal)
    {
      if (*internal == 1)
      {
        v5 = MEMORY[0x1CCA64260]();
        WTF::fastFree(v5, v6);
      }

      else
      {
        --*internal;
      }
    }

    v7.receiver = self;
    v7.super_class = DOMXPathResult;
    [(DOMObject *)&v7 dealloc];
  }
}

- (unsigned)resultType
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOWORD(self) = WebCore::XPathResult::resultType(self->super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (double)numberValue
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = WebCore::XPathResult::numberValue(&v8, self->super._internal);
  if (v10)
  {
    if (v10 == 1)
    {
      v11[80] = LOBYTE(v8);
      v7 = v9;
      v9 = 0;
      v12 = v7;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v3);
  }

  v5 = v8;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v4);
  return v5;
}

- (NSString)stringValue
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v17);
  v3 = WebCore::XPathResult::stringValue(&v13, self->super._internal);
  if (v15)
  {
    if (v15 == 1)
    {
      v17[80] = v13;
      v12 = v14;
      v14 = 0;
      v18 = v12;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v3);
  }

  v4 = v13;
  v13 = 0;
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v16, v4);
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }

  else
  {
    v16 = &stru_1F472E7E8;
    v11 = &stru_1F472E7E8;
  }

  v6 = v16;
  v16 = 0;
  if (v6)
  {
    v7 = v6;
    v8 = v16;
    v16 = 0;
    if (v8)
    {
    }
  }

  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v5);
  }

  if (v15 != 255)
  {
    if (v15)
    {
      v9 = v14;
      v14 = 0;
      if (!v9)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v9 = v13;
      v13 = 0;
      if (!v9)
      {
        goto LABEL_18;
      }
    }

    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v5);
    }
  }

LABEL_18:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v17, v5);
  return v6;
}

- (BOOL)BOOLeanValue
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = WebCore::XPathResult::BOOLeanValue(&v8, self->super._internal);
  if (v10)
  {
    if (v10 == 1)
    {
      v11[80] = v8;
      v7 = v9;
      v9 = 0;
      v12 = v7;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v3);
  }

  v5 = v8;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v4);
  return v5;
}

- (DOMNode)singleNodeValue
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v12);
  v3 = WebCore::XPathResult::singleNodeValue(&v9, self->super._internal);
  if (v11)
  {
    if (v11 == 1)
    {
      v12[80] = v9;
      v8 = v10;
      v10 = 0;
      v13 = v8;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v3);
  }

  v5 = kit(v9);
  if (v11)
  {
    if (v11 != 255)
    {
      v6 = v10;
      v10 = 0;
      if (v6)
      {
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v4);
        }
      }
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v12, v4);
  return v5;
}

- (BOOL)invalidIteratorState
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOBYTE(self) = WebCore::XPathResult::invalidIteratorState(self->super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (unsigned)snapshotLength
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = WebCore::XPathResult::snapshotLength(&v8, self->super._internal);
  if (v10)
  {
    if (v10 == 1)
    {
      v11[80] = v8;
      v7 = v9;
      v9 = 0;
      v12 = v7;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v3);
  }

  v5 = v8;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v4);
  return v5;
}

- (DOMNode)iterateNext
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v12);
  v3 = WebCore::XPathResult::iterateNext(&v9, self->super._internal);
  if (v11)
  {
    if (v11 == 1)
    {
      v12[80] = v9;
      v8 = v10;
      v10 = 0;
      v13 = v8;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v3);
  }

  v5 = kit(v9);
  if (v11)
  {
    if (v11 != 255)
    {
      v6 = v10;
      v10 = 0;
      if (v6)
      {
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v4);
        }
      }
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v12, v4);
  return v5;
}

- (DOMNode)snapshotItem:(unsigned int)index
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v4 = WebCore::XPathResult::snapshotItem(self->super._internal);
  if (v10)
  {
    if (v10 == 1)
    {
      v11[80] = v8;
      v12 = v9;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v4);
  }

  v5 = kit(v8);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v6);
  return v5;
}

@end