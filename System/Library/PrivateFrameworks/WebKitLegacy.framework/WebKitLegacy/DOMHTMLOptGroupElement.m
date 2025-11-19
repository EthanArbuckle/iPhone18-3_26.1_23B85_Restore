@interface DOMHTMLOptGroupElement
- (BOOL)disabled;
- (NSString)label;
- (void)setDisabled:(BOOL)disabled;
- (void)setLabel:(NSString *)label;
@end

@implementation DOMHTMLOptGroupElement

- (BOOL)disabled
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v14);
  v4 = *(self->super.super.super.super._internal + 14);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = *(v4 + 4);
  if (v5)
  {
    v6 = *(v4 + 40);
    v7 = *(v4 + 52);
    if (!v7)
    {
LABEL_12:
      v12 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v6 = (v4 + 32);
    v7 = v5 >> 5;
    if (!(v5 >> 5))
    {
      goto LABEL_12;
    }
  }

  v8 = v7;
  v9 = *MEMORY[0x1E69E2948];
  v10 = 16 * v8;
  while (1)
  {
    v11 = *v6;
    if (*v6 == v9 || *(v11 + 24) == *(v9 + 24) && *(v11 + 32) == *(v9 + 32))
    {
      break;
    }

    v6 += 2;
    v10 -= 16;
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  v12 = 1;
LABEL_13:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v14, v3);
  return v12;
}

- (void)setDisabled:(BOOL)disabled
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::Element::setBooleanAttribute();
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

- (NSString)label
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  v2 = *WebCore::Element::getAttribute();
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v9, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v9 = &stru_1F472E7E8;
    v8 = &stru_1F472E7E8;
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v9;
    v9 = 0;
    if (v6)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v3);
  return v4;
}

- (void)setLabel:(NSString *)label
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, label, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

@end