@interface DOMHTMLScriptElement
- (BOOL)async;
- (BOOL)defer;
- (NSString)charset;
- (NSString)event;
- (NSString)htmlFor;
- (NSString)src;
- (NSString)text;
- (NSString)type;
- (id)crossOrigin;
- (id)nonce;
- (void)setAsync:(BOOL)async;
- (void)setCharset:(NSString *)charset;
- (void)setCrossOrigin:(id)origin;
- (void)setDefer:(BOOL)defer;
- (void)setEvent:(NSString *)event;
- (void)setHtmlFor:(NSString *)htmlFor;
- (void)setNonce:(id)nonce;
- (void)setSrc:(NSString *)src;
- (void)setText:(NSString *)text;
- (void)setType:(NSString *)type;
@end

@implementation DOMHTMLScriptElement

- (NSString)text
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::ScriptElement::scriptContent(&v11, (self->super.super.super.super._internal + 128));
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
  WebCore::HTMLScriptElement::setText();
  v5 = v6;
  v6 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v4);
}

- (NSString)htmlFor
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v20);
  v3 = *(self->super.super.super.super._internal + 14);
  if (!v3)
  {
    v12 = *MEMORY[0x1E696EB90];
    if (*MEMORY[0x1E696EB90])
    {
      goto LABEL_15;
    }

LABEL_22:
    v19 = &stru_1F472E7E8;
    v18 = &stru_1F472E7E8;
    goto LABEL_17;
  }

  v4 = *(v3 + 4);
  if ((v4 & 1) == 0)
  {
    v5 = v3 + 32;
    v6 = v4 >> 5;
    if (v4 >> 5)
    {
      goto LABEL_4;
    }

LABEL_13:
    v9 = MEMORY[0x1E696EB90];
    goto LABEL_14;
  }

  v5 = *(v3 + 40);
  v6 = *(v3 + 52);
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  v7 = v6;
  v8 = *MEMORY[0x1E69E2BB8];
  v9 = (v5 + 8);
  v10 = 16 * v7;
  while (1)
  {
    v11 = *(v9 - 1);
    if (v11 == v8 || *(v11 + 24) == *(v8 + 24) && *(v11 + 32) == *(v8 + 32))
    {
      break;
    }

    v9 += 2;
    v10 -= 16;
    if (!v10)
    {
      v12 = *MEMORY[0x1E696EB90];
      if (*MEMORY[0x1E696EB90])
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }
  }

LABEL_14:
  v12 = *v9;
  if (!*v9)
  {
    goto LABEL_22;
  }

LABEL_15:
  atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  MEMORY[0x1CCA63450](&v19, v12);
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v13);
  }

LABEL_17:
  v14 = v19;
  v19 = 0;
  if (v14)
  {
    v15 = v14;
    v16 = v19;
    v19 = 0;
    if (v16)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v20, v13);
  return v14;
}

- (void)setHtmlFor:(NSString *)htmlFor
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, htmlFor, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (NSString)event
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v20);
  v3 = *(self->super.super.super.super._internal + 14);
  if (!v3)
  {
    v12 = *MEMORY[0x1E696EB90];
    if (*MEMORY[0x1E696EB90])
    {
      goto LABEL_15;
    }

LABEL_22:
    v19 = &stru_1F472E7E8;
    v18 = &stru_1F472E7E8;
    goto LABEL_17;
  }

  v4 = *(v3 + 4);
  if ((v4 & 1) == 0)
  {
    v5 = v3 + 32;
    v6 = v4 >> 5;
    if (v4 >> 5)
    {
      goto LABEL_4;
    }

LABEL_13:
    v9 = MEMORY[0x1E696EB90];
    goto LABEL_14;
  }

  v5 = *(v3 + 40);
  v6 = *(v3 + 52);
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  v7 = v6;
  v8 = *MEMORY[0x1E69E2D68];
  v9 = (v5 + 8);
  v10 = 16 * v7;
  while (1)
  {
    v11 = *(v9 - 1);
    if (v11 == v8 || *(v11 + 24) == *(v8 + 24) && *(v11 + 32) == *(v8 + 32))
    {
      break;
    }

    v9 += 2;
    v10 -= 16;
    if (!v10)
    {
      v12 = *MEMORY[0x1E696EB90];
      if (*MEMORY[0x1E696EB90])
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }
  }

LABEL_14:
  v12 = *v9;
  if (!*v9)
  {
    goto LABEL_22;
  }

LABEL_15:
  atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  MEMORY[0x1CCA63450](&v19, v12);
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v13);
  }

LABEL_17:
  v14 = v19;
  v19 = 0;
  if (v14)
  {
    v15 = v14;
    v16 = v19;
    v19 = 0;
    if (v16)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v20, v13);
  return v14;
}

- (void)setEvent:(NSString *)event
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, event, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (NSString)charset
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v20);
  v3 = *(self->super.super.super.super._internal + 14);
  if (!v3)
  {
    v12 = *MEMORY[0x1E696EB90];
    if (*MEMORY[0x1E696EB90])
    {
      goto LABEL_15;
    }

LABEL_22:
    v19 = &stru_1F472E7E8;
    v18 = &stru_1F472E7E8;
    goto LABEL_17;
  }

  v4 = *(v3 + 4);
  if ((v4 & 1) == 0)
  {
    v5 = v3 + 32;
    v6 = v4 >> 5;
    if (v4 >> 5)
    {
      goto LABEL_4;
    }

LABEL_13:
    v9 = MEMORY[0x1E696EB90];
    goto LABEL_14;
  }

  v5 = *(v3 + 40);
  v6 = *(v3 + 52);
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  v7 = v6;
  v8 = *MEMORY[0x1E69E2880];
  v9 = (v5 + 8);
  v10 = 16 * v7;
  while (1)
  {
    v11 = *(v9 - 1);
    if (v11 == v8 || *(v11 + 24) == *(v8 + 24) && *(v11 + 32) == *(v8 + 32))
    {
      break;
    }

    v9 += 2;
    v10 -= 16;
    if (!v10)
    {
      v12 = *MEMORY[0x1E696EB90];
      if (*MEMORY[0x1E696EB90])
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }
  }

LABEL_14:
  v12 = *v9;
  if (!*v9)
  {
    goto LABEL_22;
  }

LABEL_15:
  atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  MEMORY[0x1CCA63450](&v19, v12);
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v13);
  }

LABEL_17:
  v14 = v19;
  v19 = 0;
  if (v14)
  {
    v15 = v14;
    v16 = v19;
    v19 = 0;
    if (v16)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v20, v13);
  return v14;
}

- (void)setCharset:(NSString *)charset
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, charset, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (BOOL)async
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOBYTE(self) = WebCore::HTMLScriptElement::async(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setAsync:(BOOL)async
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  WebCore::HTMLScriptElement::setAsync(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v4);
}

- (BOOL)defer
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
  v9 = *MEMORY[0x1E69E2D60];
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

- (void)setDefer:(BOOL)defer
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::Element::setBooleanAttribute();
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
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
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v20);
  v3 = *(self->super.super.super.super._internal + 14);
  if (!v3)
  {
    v12 = *MEMORY[0x1E696EB90];
    if (*MEMORY[0x1E696EB90])
    {
      goto LABEL_15;
    }

LABEL_22:
    v19 = &stru_1F472E7E8;
    v18 = &stru_1F472E7E8;
    goto LABEL_17;
  }

  v4 = *(v3 + 4);
  if ((v4 & 1) == 0)
  {
    v5 = v3 + 32;
    v6 = v4 >> 5;
    if (v4 >> 5)
    {
      goto LABEL_4;
    }

LABEL_13:
    v9 = MEMORY[0x1E696EB90];
    goto LABEL_14;
  }

  v5 = *(v3 + 40);
  v6 = *(v3 + 52);
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  v7 = v6;
  v8 = *MEMORY[0x1E69E2D08];
  v9 = (v5 + 8);
  v10 = 16 * v7;
  while (1)
  {
    v11 = *(v9 - 1);
    if (v11 == v8 || *(v11 + 24) == *(v8 + 24) && *(v11 + 32) == *(v8 + 32))
    {
      break;
    }

    v9 += 2;
    v10 -= 16;
    if (!v10)
    {
      v12 = *MEMORY[0x1E696EB90];
      if (*MEMORY[0x1E696EB90])
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }
  }

LABEL_14:
  v12 = *v9;
  if (!*v9)
  {
    goto LABEL_22;
  }

LABEL_15:
  atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  MEMORY[0x1CCA63450](&v19, v12);
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v13);
  }

LABEL_17:
  v14 = v19;
  v19 = 0;
  if (v14)
  {
    v15 = v14;
    v16 = v19;
    v19 = 0;
    if (v16)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v20, v13);
  return v14;
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

- (id)crossOrigin
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::HTMLScriptElement::crossOrigin(&v11, self->super.super.super.super._internal);
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

- (void)setCrossOrigin:(id)origin
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, origin, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (id)nonce
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v20);
  v3 = *(self->super.super.super.super._internal + 14);
  if (!v3)
  {
    v12 = *MEMORY[0x1E696EB90];
    if (*MEMORY[0x1E696EB90])
    {
      goto LABEL_15;
    }

LABEL_22:
    v19 = &stru_1F472E7E8;
    v18 = &stru_1F472E7E8;
    goto LABEL_17;
  }

  v4 = *(v3 + 4);
  if ((v4 & 1) == 0)
  {
    v5 = v3 + 32;
    v6 = v4 >> 5;
    if (v4 >> 5)
    {
      goto LABEL_4;
    }

LABEL_13:
    v9 = MEMORY[0x1E696EB90];
    goto LABEL_14;
  }

  v5 = *(v3 + 40);
  v6 = *(v3 + 52);
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  v7 = v6;
  v8 = *MEMORY[0x1E69E2DA8];
  v9 = (v5 + 8);
  v10 = 16 * v7;
  while (1)
  {
    v11 = *(v9 - 1);
    if (v11 == v8 || *(v11 + 24) == *(v8 + 24) && *(v11 + 32) == *(v8 + 32))
    {
      break;
    }

    v9 += 2;
    v10 -= 16;
    if (!v10)
    {
      v12 = *MEMORY[0x1E696EB90];
      if (*MEMORY[0x1E696EB90])
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }
  }

LABEL_14:
  v12 = *v9;
  if (!*v9)
  {
    goto LABEL_22;
  }

LABEL_15:
  atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  MEMORY[0x1CCA63450](&v19, v12);
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v13);
  }

LABEL_17:
  v14 = v19;
  v19 = 0;
  if (v14)
  {
    v15 = v14;
    v16 = v19;
    v19 = 0;
    if (v16)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v20, v13);
  return v14;
}

- (void)setNonce:(id)nonce
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, nonce, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

@end