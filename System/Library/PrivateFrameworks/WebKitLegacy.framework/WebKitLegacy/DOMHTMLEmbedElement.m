@interface DOMHTMLEmbedElement
- (NSString)align;
- (NSString)name;
- (NSString)src;
- (NSString)type;
- (int)height;
- (int)width;
- (void)setAlign:(NSString *)align;
- (void)setHeight:(int)height;
- (void)setName:(NSString *)name;
- (void)setSrc:(NSString *)src;
- (void)setType:(NSString *)type;
- (void)setWidth:(int)width;
@end

@implementation DOMHTMLEmbedElement

- (NSString)align
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

- (void)setAlign:(NSString *)align
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, align, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (int)height
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  v2 = WebCore::Element::integralAttribute();
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return v2;
}

- (void)setHeight:(int)height
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::Element::setIntegralAttribute();
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

- (NSString)name
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v19);
  v3 = *(self->super.super.super.super._internal + 14);
  if (!v3 || (v4 = *(v3 + 4), (v4 & 2) == 0))
  {
    v5 = *MEMORY[0x1E696EB90];
    if (*MEMORY[0x1E696EB90])
    {
      goto LABEL_4;
    }

LABEL_20:
    v18 = &stru_1F472E7E8;
    v17 = &stru_1F472E7E8;
    goto LABEL_6;
  }

  if (v4)
  {
    v11 = *(v3 + 40);
    v12 = *(v3 + 52);
    if (!v12)
    {
      goto LABEL_21;
    }

LABEL_14:
    v13 = v12;
    v14 = *MEMORY[0x1E69E2C98];
    v15 = 16 * v13;
    while (1)
    {
      v16 = *v11;
      if (*v11 == v14 || *(v16 + 24) == *(v14 + 24) && *(v16 + 32) == *(v14 + 32))
      {
        break;
      }

      v11 += 2;
      v15 -= 16;
      if (!v15)
      {
        goto LABEL_21;
      }
    }

    v5 = v11[1];
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  v11 = (v3 + 32);
  v12 = v4 >> 5;
  if (v4 >> 5)
  {
    goto LABEL_14;
  }

LABEL_21:
  v5 = MEMORY[8];
  if (!MEMORY[8])
  {
    goto LABEL_20;
  }

LABEL_4:
  atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  MEMORY[0x1CCA63450](&v18, v5);
  if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v6);
  }

LABEL_6:
  v7 = v18;
  v18 = 0;
  if (v7)
  {
    v8 = v7;
    v9 = v18;
    v18 = 0;
    if (v9)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v19, v6);
  return v7;
}

- (void)setName:(NSString *)name
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, name, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (NSString)src
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  WebCore::Element::getURLAttribute();
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v9);
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v2);
    }
  }

  else
  {
    v9 = &stru_1F472E7E8;
    v7 = &stru_1F472E7E8;
  }

  v3 = v9;
  v9 = 0;
  if (v3)
  {
    v4 = v3;
    v5 = v9;
    v9 = 0;
    if (v5)
    {
    }
  }

  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v2);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v2);
  return v3;
}

- (void)setSrc:(NSString *)src
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, src, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (NSString)type
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

- (void)setType:(NSString *)type
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, type, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (int)width
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  v2 = WebCore::Element::integralAttribute();
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return v2;
}

- (void)setWidth:(int)width
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::Element::setIntegralAttribute();
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

@end