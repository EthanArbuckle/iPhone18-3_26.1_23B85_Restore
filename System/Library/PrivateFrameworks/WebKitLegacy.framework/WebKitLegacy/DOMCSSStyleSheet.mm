@interface DOMCSSStyleSheet
- (DOMCSSRule)ownerRule;
- (DOMCSSRuleList)cssRules;
- (DOMCSSRuleList)rules;
- (int)addRule:(NSString *)selector style:(NSString *)style index:(unsigned int)index;
- (unsigned)insertRule:(NSString *)rule index:(unsigned int)index;
- (void)deleteRule:(unsigned int)index;
- (void)removeRule:(unsigned int)index;
@end

@implementation DOMCSSStyleSheet

- (DOMCSSRule)ownerRule
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  v3 = WebCore::CSSStyleSheet::ownerRule(self->super.super._internal);
  v4 = kit(v3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
  return v4;
}

- (DOMCSSRuleList)cssRules
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::CSSStyleSheet::cssRules(&v7, self->super.super._internal);
  v4 = kit(v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v4;
}

- (DOMCSSRuleList)rules
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::CSSStyleSheet::cssRules(&v7, self->super.super._internal);
  v4 = kit(v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v4;
}

- (unsigned)insertRule:(NSString *)rule index:(unsigned int)index
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v17);
  internal = self->super.super._internal;
  MEMORY[0x1CCA63A40](&v13, rule);
  inserted = WebCore::CSSStyleSheet::insertRule(internal, &v13);
  if (v16)
  {
    if (v16 == 1)
    {
      v17[80] = v14;
      v12 = v15;
      v15 = 0;
      v18 = v12;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(inserted);
  }

  v9 = v14;
  v16 = -1;
  v10 = v13;
  v13 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v17, v8);
  return v9;
}

- (void)deleteRule:(unsigned int)index
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::CSSStyleSheet::deleteRule(self->super.super._internal);
  if (v7 == 1)
  {
    v8[80] = v5;
    v9 = v6;
    raiseDOMErrorException();
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v4);
}

- (int)addRule:(NSString *)selector style:(NSString *)style index:(unsigned int)index
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v19);
  MEMORY[0x1CCA63A40](&v15, selector);
  MEMORY[0x1CCA63A40](&v14, style);
  v7 = WebCore::CSSStyleSheet::addRule();
  if (v18)
  {
    if (v18 == 1)
    {
      v19[80] = v16;
      v13 = v17;
      v17 = 0;
      v20 = v13;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v7);
  }

  v9 = v16;
  v18 = -1;
  v10 = v14;
  v14 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  v11 = v15;
  v15 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v8);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v19, v8);
  return v9;
}

- (void)removeRule:(unsigned int)index
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::CSSStyleSheet::deleteRule(self->super.super._internal);
  if (v7 == 1)
  {
    v8[80] = v5;
    v9 = v6;
    raiseDOMErrorException();
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v4);
}

@end