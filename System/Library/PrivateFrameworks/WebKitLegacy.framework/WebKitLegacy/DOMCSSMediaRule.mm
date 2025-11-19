@interface DOMCSSMediaRule
- (DOMCSSRuleList)cssRules;
- (DOMMediaList)media;
- (unsigned)insertRule:(NSString *)rule index:(unsigned int)index;
- (void)deleteRule:(unsigned int)index;
@end

@implementation DOMCSSMediaRule

- (DOMMediaList)media
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  v3 = WebCore::CSSMediaRule::media(self->super.super._internal);
  v4 = kit(v3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
  return v4;
}

- (DOMCSSRuleList)cssRules
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  v3 = WebCore::CSSGroupingRule::cssRules(self->super.super._internal);
  v4 = kit(v3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
  return v4;
}

- (unsigned)insertRule:(NSString *)rule index:(unsigned int)index
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v17);
  internal = self->super.super._internal;
  MEMORY[0x1CCA63A40](&v13, rule);
  inserted = WebCore::CSSGroupingRule::insertRule(internal, &v13);
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
  WebCore::CSSGroupingRule::deleteRule(self->super.super._internal);
  if (v7 == 1)
  {
    v8[80] = v5;
    v9 = v6;
    raiseDOMErrorException();
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v4);
}

@end