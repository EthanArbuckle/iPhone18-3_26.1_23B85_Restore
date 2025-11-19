@interface DOMCSSRule
- (DOMCSSRule)parentRule;
- (DOMCSSStyleSheet)parentStyleSheet;
- (NSString)cssText;
- (unsigned)type;
- (void)dealloc;
- (void)setCssText:(NSString *)cssText;
@end

@implementation DOMCSSRule

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    internal = self->super._internal;
    if (internal)
    {
      if (*(internal + 4) == 1)
      {
        (*(*internal + 8))(internal);
      }

      else
      {
        --*(internal + 4);
      }
    }

    v5.receiver = self;
    v5.super_class = DOMCSSRule;
    [(DOMObject *)&v5 dealloc];
  }
}

- (unsigned)type
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOWORD(self) = WebCore::CSSRule::typeForCSSOM(self->super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (NSString)cssText
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  (*(*self->super._internal + 32))(&v11);
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
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  internal = self->super._internal;
  MEMORY[0x1CCA63A40](&v9, cssText);
  WebCore::CSSRule::setCssText(&v10, internal, &v9);
  if (v12 == 1)
  {
    v13[80] = v10;
    v8 = v11;
    v11 = 0;
    v14 = v8;
    raiseDOMErrorException();
  }

  v7 = v9;
  v9 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v6);
}

- (DOMCSSStyleSheet)parentStyleSheet
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  internal = self->super._internal;
  do
  {
    v4 = *(internal + 20);
    internal = *(internal + 3);
  }

  while ((v4 & 2) != 0 && internal);
  v5 = kit(internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v6);
  return v5;
}

- (DOMCSSRule)parentRule
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  internal = self->super._internal;
  if ((*(internal + 20) & 2) != 0)
  {
    v4 = *(internal + 3);
  }

  else
  {
    v4 = 0;
  }

  v5 = kit(v4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v6);
  return v5;
}

@end