@interface DOMHTMLSelectElement
- (BOOL)autofocus;
- (BOOL)disabled;
- (BOOL)multiple;
- (BOOL)willValidate;
- (DOMHTMLFormElement)form;
- (DOMHTMLOptionsCollection)options;
- (DOMNode)item:(unsigned int)index;
- (DOMNode)namedItem:(NSString *)name;
- (NSString)name;
- (NSString)type;
- (NSString)value;
- (id)listItemAtIndex:(int)index;
- (int)length;
- (int)selectedIndex;
- (int)size;
- (unsigned)completeLength;
- (void)_activateItemAtIndex:(int)index;
- (void)_activateItemAtIndex:(int)index allowMultipleSelection:(BOOL)selection;
- (void)add:(DOMHTMLElement *)element before:(DOMHTMLElement *)before;
- (void)remove:(int)index;
- (void)setAutofocus:(BOOL)autofocus;
- (void)setDisabled:(BOOL)disabled;
- (void)setMultiple:(BOOL)multiple;
- (void)setName:(NSString *)name;
- (void)setSelectedIndex:(int)selectedIndex;
- (void)setSize:(int)size;
- (void)setValue:(NSString *)value;
@end

@implementation DOMHTMLSelectElement

- (void)_activateItemAtIndex:(int)index
{
  if (self)
  {
    if (self->super.super.super.super._internal)
    {
      MEMORY[0x1EEE56BE0]();
    }
  }
}

- (void)_activateItemAtIndex:(int)index allowMultipleSelection:(BOOL)selection
{
  if (self)
  {
    if (self->super.super.super.super._internal)
    {
      MEMORY[0x1EEE56BE0]();
    }
  }
}

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

- (BOOL)multiple
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOBYTE(self) = *(self->super.super.super.super._internal + 305);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setMultiple:(BOOL)multiple
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::Element::setBooleanAttribute();
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

- (int)size
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = *(self->super.super.super.super._internal + 72);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setSize:(int)size
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  WebCore::HTMLSelectElement::setSize(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v4);
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

- (DOMHTMLOptionsCollection)options
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::HTMLSelectElement::options(&v7, self->super.super.super.super._internal);
  v4 = kit(v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    if (*(v5 + 4) == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --*(v5 + 4);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v4;
}

- (int)length
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = WebCore::HTMLSelectElement::length(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (int)selectedIndex
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = WebCore::HTMLSelectElement::selectedIndex(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setSelectedIndex:(int)selectedIndex
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  WebCore::HTMLSelectElement::setSelectedIndex(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v4);
}

- (NSString)value
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::HTMLSelectElement::value(&v11, self->super.super.super.super._internal);
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

- (void)setValue:(NSString *)value
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super.super.super._internal;
  MEMORY[0x1CCA63A40](&v8, value);
  WebCore::HTMLSelectElement::setValue(internal, &v8);
  v7 = v8;
  v8 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v6);
}

- (BOOL)willValidate
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOBYTE(self) = (*(*(self->super.super.super.super._internal + 15) + 280))();
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (DOMNode)item:(unsigned int)index
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  v4 = WebCore::HTMLSelectElement::item(self->super.super.super.super._internal);
  v5 = kit(v4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v6);
  return v5;
}

- (DOMNode)namedItem:(NSString *)name
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  WTF::AtomStringImpl::add(&v11, name, v4);
  v9 = v11;
  v5 = WebCore::HTMLSelectElement::namedItem();
  v7 = kit(v5);
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v6);
  return v7;
}

- (void)add:(DOMHTMLElement *)element before:(DOMHTMLElement *)before
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v18);
  if (!element)
  {
    raiseTypeErrorException();
  }

  internal = element->super.super.super._internal;
  v17 = 0;
  v7 = *(*(internal + 13) + 24);
  if (v7 != *(*MEMORY[0x1E69E2DB8] + 24))
  {
    if (v7 != *(*MEMORY[0x1E69E28E8] + 24))
    {
      raiseTypeErrorException();
    }

    *(internal + 7) += 2;
    v16 = internal;
    v17 = 1;
    if (before)
    {
      goto LABEL_5;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  *(internal + 7) += 2;
  v16 = internal;
  if (!before)
  {
    goto LABEL_8;
  }

LABEL_5:
  v8 = before->super.super.super._internal;
  if (v8)
  {
    *(v8 + 7) += 2;
  }

LABEL_9:
  v12 = v8;
  WebCore::HTMLSelectElement::add();
  if (v15 == 1)
  {
    v18[80] = v13;
    v19 = v14;
    raiseDOMErrorException();
  }

  if (!v12)
  {
LABEL_13:
    v10 = v17;
    if (v17 == 255)
    {
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  if (*(v12 + 7) != 2)
  {
    *(v12 + 7) -= 2;
    goto LABEL_13;
  }

  WebCore::Node::removedLastRef(v12);
  v10 = v17;
  if (v17 == 255)
  {
    goto LABEL_22;
  }

LABEL_14:
  if (!v10)
  {
    if (!v16)
    {
      goto LABEL_22;
    }

    v11 = *(v16 + 7) - 2;
    if (*(v16 + 7) != 2)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  if (v16)
  {
    v11 = *(v16 + 7) - 2;
    if (*(v16 + 7) != 2)
    {
LABEL_17:
      *(v16 + 7) = v11;
      goto LABEL_22;
    }

LABEL_20:
    WebCore::Node::removedLastRef(v16);
  }

LABEL_22:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v18, v9);
}

- (void)remove:(int)index
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  WebCore::HTMLSelectElement::remove(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v4);
}

- (unsigned)completeLength
{
  if (self)
  {
    self = self->super.super.super.super._internal;
  }

  return *(WebCore::HTMLSelectElement::listItems(self) + 12);
}

- (id)listItemAtIndex:(int)index
{
  if (self)
  {
    self = self->super.super.super.super._internal;
  }

  result = WebCore::HTMLSelectElement::listItems(self);
  if (*(result + 3) <= index)
  {
    __break(0xC471u);
  }

  else
  {
    v5 = *(*result + 8 * index);
    if (v5)
    {
      v6 = *(v5 + 8);
    }

    else
    {
      v6 = 0;
    }

    return kit(v6);
  }

  return result;
}

@end