@interface DOMHTMLTitleElement
- (NSString)text;
- (void)setText:(NSString *)text;
@end

@implementation DOMHTMLTitleElement

- (NSString)text
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  MEMORY[0x1CCA69860](&v11, self->super.super.super.super._internal);
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

- (void)setText:(NSString *)text
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  MEMORY[0x1CCA63A40](&v6, text);
  WebCore::HTMLTitleElement::setText();
  v5 = v6;
  v6 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v4);
}

@end