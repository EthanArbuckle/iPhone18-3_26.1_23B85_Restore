@interface DOMCSSValue
- (NSString)cssText;
- (unsigned)cssValueType;
- (void)dealloc;
- (void)setCssText:(NSString *)cssText;
@end

@implementation DOMCSSValue

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    internal = self->super._internal;
    if (internal)
    {
      if (*(internal + 2) == 1)
      {
        WebCore::DeprecatedCSSOMValue::operator delete();
      }

      else
      {
        --*(internal + 2);
      }
    }

    v5.receiver = self;
    v5.super_class = DOMCSSValue;
    [(DOMObject *)&v5 dealloc];
  }
}

- (NSString)cssText
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::DeprecatedCSSOMValue::cssText(&v11, self->super._internal);
  v3 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v12, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v12 = &stru_1F472E7E8;
    v10 = &stru_1F472E7E8;
  }

  v5 = v12;
  v12 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v12;
    v12 = 0;
    if (v7)
    {
    }
  }

  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v4);
  return v5;
}

- (void)setCssText:(NSString *)cssText
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  MEMORY[0x1CCA63A40](&v6, cssText);
  v5 = v6;
  v6 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v4);
}

- (unsigned)cssValueType
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOWORD(self) = WebCore::DeprecatedCSSOMValue::cssValueType(self->super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

@end