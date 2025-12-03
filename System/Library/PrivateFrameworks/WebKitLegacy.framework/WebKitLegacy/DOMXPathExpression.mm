@interface DOMXPathExpression
- (DOMXPathResult)evaluate:(DOMNode *)contextNode type:(unsigned __int16)type inResult:(DOMXPathResult *)inResult;
- (void)dealloc;
@end

@implementation DOMXPathExpression

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
        WebCore::XPathExpression::~XPathExpression(internal);
        WTF::fastFree(v5, v6);
      }

      else
      {
        --*internal;
      }
    }

    v7.receiver = self;
    v7.super_class = DOMXPathExpression;
    [(DOMObject *)&v7 dealloc];
  }
}

- (DOMXPathResult)evaluate:(DOMNode *)contextNode type:(unsigned __int16)type inResult:(DOMXPathResult *)inResult
{
  if (!contextNode)
  {
    return 0;
  }

  v6 = type;
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v24);
  if (inResult)
  {
    internal = inResult->super._internal;
  }

  else
  {
    internal = 0;
  }

  v11 = WebCore::XPathExpression::evaluate(self->super._internal, contextNode->super._internal, v6, internal);
  if (v23)
  {
    if (v23 == 1)
    {
      v25[0] = v21;
      v26 = v22;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v11);
  }

  if (v21)
  {
    DOMWrapper = getDOMWrapper(v21);
    _init = DOMWrapper;
    if (DOMWrapper)
    {
      v14 = DOMWrapper;
    }

    else
    {
      _init = [(WebScriptObject *)[DOMXPathResult alloc] _init];
      v15 = 0;
      _init->super._internal = v21;
      ++*v21;
      v27 = v21;
      v28 = _init;
      atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v15, 1u, memory_order_acquire, memory_order_acquire);
      if (v15)
      {
        MEMORY[0x1CCA63990](wrapperCacheLock);
      }

      {
        wrapperCache(void)::map = 0;
      }

      WTF::HashMap<DOMObjectInternal *,NSObject *,WTF::DefaultHash<DOMObjectInternal *>,WTF::HashTraits<DOMObjectInternal *>,WTF::HashTraits<NSObject *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<DOMObjectInternal * const&,NSObject *&>(&wrapperCache(void)::map, &v27, &v28, v25);
      v16 = 1;
      atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v16, 0, memory_order_release, memory_order_relaxed);
      if (v16 != 1)
      {
        WTF::Lock::unlockSlow(wrapperCacheLock);
      }
    }

    v17 = _init;
    if (*v21 == 1)
    {
      v18 = MEMORY[0x1CCA64260]();
      WTF::fastFree(v18, v19);
    }

    else
    {
      --*v21;
    }
  }

  else
  {
    _init = 0;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v24, v12);
  return _init;
}

@end