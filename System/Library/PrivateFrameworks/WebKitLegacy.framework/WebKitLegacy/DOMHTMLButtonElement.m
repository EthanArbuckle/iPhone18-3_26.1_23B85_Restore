@interface DOMHTMLButtonElement
- (BOOL)autofocus;
- (BOOL)disabled;
- (BOOL)willValidate;
- (DOMHTMLFormElement)form;
- (NSString)accessKey;
- (NSString)name;
- (NSString)type;
- (NSString)value;
- (void)click;
- (void)setAccessKey:(NSString *)accessKey;
- (void)setAutofocus:(BOOL)autofocus;
- (void)setDisabled:(BOOL)disabled;
- (void)setName:(NSString *)name;
- (void)setType:(NSString *)type;
- (void)setValue:(NSString *)value;
@end

@implementation DOMHTMLButtonElement

- (BOOL)autofocus
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
  v9 = *MEMORY[0x1E69E29A8];
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

- (void)setAutofocus:(BOOL)autofocus
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::Element::setBooleanAttribute();
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

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

- (DOMHTMLFormElement)form
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  v3 = *(self->super.super.super.super._internal + 16);
  if (v3)
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = kit(v4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v6);
  return v5;
}

- (NSString)type
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = *(*(*(self->super.super.super.super._internal + 15) + 336))();
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v10, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v10 = &stru_1F472E7E8;
    v9 = &stru_1F472E7E8;
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v10;
    v10 = 0;
    if (v7)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v4);
  return v5;
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

- (NSString)value
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

- (void)setValue:(NSString *)value
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, value, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (BOOL)willValidate
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOBYTE(self) = WebCore::ValidatedFormListedElement::willValidate((self->super.super.super.super._internal + 120));
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (NSString)accessKey
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

- (void)setAccessKey:(NSString *)accessKey
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, accessKey, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (void)click
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::HTMLElement::click(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

@end