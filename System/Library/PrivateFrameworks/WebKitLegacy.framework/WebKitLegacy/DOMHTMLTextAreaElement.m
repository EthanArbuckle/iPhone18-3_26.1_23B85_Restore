@interface DOMHTMLTextAreaElement
- (BOOL)_isEdited;
- (BOOL)autofocus;
- (BOOL)canShowPlaceholder;
- (BOOL)disabled;
- (BOOL)readOnly;
- (BOOL)required;
- (BOOL)willValidate;
- (DOMHTMLFormElement)form;
- (NSString)accessKey;
- (NSString)defaultValue;
- (NSString)name;
- (NSString)type;
- (NSString)value;
- (id)autocomplete;
- (id)dirName;
- (id)endPosition;
- (id)labels;
- (id)placeholder;
- (id)selectionDirection;
- (id)startPosition;
- (id)wrap;
- (int)_autocapitalizeType;
- (int)cols;
- (int)maxLength;
- (int)rows;
- (int)selectionEnd;
- (int)selectionStart;
- (unsigned)textLength;
- (void)select;
- (void)setAccessKey:(NSString *)accessKey;
- (void)setAutocomplete:(id)a3;
- (void)setAutofocus:(BOOL)autofocus;
- (void)setCanShowPlaceholder:(BOOL)a3;
- (void)setCols:(int)cols;
- (void)setDefaultValue:(NSString *)defaultValue;
- (void)setDirName:(id)a3;
- (void)setDisabled:(BOOL)disabled;
- (void)setMaxLength:(int)a3;
- (void)setName:(NSString *)name;
- (void)setPlaceholder:(id)a3;
- (void)setRangeText:(id)a3;
- (void)setRangeText:(id)a3 start:(unsigned int)a4 end:(unsigned int)a5 selectionMode:(id)a6;
- (void)setReadOnly:(BOOL)readOnly;
- (void)setRequired:(BOOL)a3;
- (void)setRows:(int)rows;
- (void)setSelectionDirection:(id)a3;
- (void)setSelectionEnd:(int)selectionEnd;
- (void)setSelectionRange:(int)start end:(int)end;
- (void)setSelectionStart:(int)selectionStart;
- (void)setValue:(NSString *)value;
- (void)setWrap:(id)a3;
@end

@implementation DOMHTMLTextAreaElement

- (BOOL)_isEdited
{
  v2 = core(self);

  return MEMORY[0x1EEE5DB30](v2, v3);
}

- (int)_autocapitalizeType
{
  v2 = core(self);
  v3 = WebCore::HTMLFormControlElement::autocapitalizeType(v2);
  if (((v3 - 1) & 0xFC) != 0)
  {
    return 0;
  }

  else
  {
    return (v3 - 1) + 1;
  }
}

- (BOOL)autofocus
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    v5 = *(internal + 14);
    if (v5)
    {
      v6 = *(v5 + 4);
      if ((v6 & 1) == 0)
      {
        v7 = (v5 + 32);
        v8 = v6 >> 5;
        if (!(v6 >> 5))
        {
          goto LABEL_14;
        }

LABEL_8:
        v9 = v8;
        v10 = *MEMORY[0x1E69E29A8];
        v11 = 16 * v9;
        while (1)
        {
          v12 = *v7;
          if (*v7 == v10 || *(v12 + 24) == *(v10 + 24) && *(v12 + 32) == *(v10 + 32))
          {
            break;
          }

          v7 += 2;
          v11 -= 16;
          if (!v11)
          {
            goto LABEL_14;
          }
        }

        v13 = 1;
        goto LABEL_15;
      }

      v7 = *(v5 + 40);
      v8 = *(v5 + 52);
      if (v8)
      {
        goto LABEL_8;
      }
    }

LABEL_14:
    v13 = 0;
LABEL_15:
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v15, v3);
    return v13;
  }

  result = 96;
  __break(0xC471u);
  return result;
}

- (void)setAutofocus:(BOOL)autofocus
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    WebCore::Element::setBooleanAttribute();
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v5);
  }

  else
  {
    __break(0xC471u);
  }
}

- (id)dirName
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v12);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    v4 = *WebCore::Element::getAttribute();
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v11, v4);
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v5);
      }
    }

    else
    {
      v11 = &stru_1F472E7E8;
      v10 = &stru_1F472E7E8;
    }

    v6 = v11;
    v11 = 0;
    if (v6)
    {
      v7 = v6;
      v8 = v11;
      v11 = 0;
      if (v8)
      {
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v12, v5);
    return v6;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (void)setDirName:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    WTF::AtomStringImpl::add(&v10, a3, v5);
    v8 = v10;
    WebCore::Element::setAttributeWithoutSynchronization();
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v7);
  }

  else
  {
    __break(0xC471u);
  }
}

- (BOOL)disabled
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    v5 = *(internal + 14);
    if (v5)
    {
      v6 = *(v5 + 4);
      if ((v6 & 1) == 0)
      {
        v7 = (v5 + 32);
        v8 = v6 >> 5;
        if (!(v6 >> 5))
        {
          goto LABEL_14;
        }

LABEL_8:
        v9 = v8;
        v10 = *MEMORY[0x1E69E2948];
        v11 = 16 * v9;
        while (1)
        {
          v12 = *v7;
          if (*v7 == v10 || *(v12 + 24) == *(v10 + 24) && *(v12 + 32) == *(v10 + 32))
          {
            break;
          }

          v7 += 2;
          v11 -= 16;
          if (!v11)
          {
            goto LABEL_14;
          }
        }

        v13 = 1;
        goto LABEL_15;
      }

      v7 = *(v5 + 40);
      v8 = *(v5 + 52);
      if (v8)
      {
        goto LABEL_8;
      }
    }

LABEL_14:
    v13 = 0;
LABEL_15:
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v15, v3);
    return v13;
  }

  result = 96;
  __break(0xC471u);
  return result;
}

- (void)setDisabled:(BOOL)disabled
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    WebCore::Element::setBooleanAttribute();
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v5);
  }

  else
  {
    __break(0xC471u);
  }
}

- (DOMHTMLFormElement)form
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    v4 = *(internal + 16);
    if (v4)
    {
      v5 = *(v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    v6 = kit(v5);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v7);
    return v6;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (int)maxLength
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    v5 = *(internal + 45);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v3);
    return v5;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (void)setMaxLength:(int)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    WebCore::HTMLTextFormControlElement::setMaxLength(internal);
    if (v8 == 1)
    {
      v9[80] = v6;
      v10 = v7;
      raiseDOMErrorException();
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v5);
  }

  else
  {
    __break(0xC471u);
  }
}

- (NSString)name
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v20);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) == 0 || *(*(internal + 13) + 24) != *(*MEMORY[0x1E69E2910] + 24))
  {
    result = 96;
    __break(0xC471u);
    return result;
  }

  v4 = *(internal + 14);
  if (!v4 || (v5 = *(v4 + 4), (v5 & 2) == 0))
  {
    v6 = *MEMORY[0x1E696EB90];
    if (*MEMORY[0x1E696EB90])
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

  if (v5)
  {
    v12 = *(v4 + 40);
    v13 = *(v4 + 52);
    if (!v13)
    {
      goto LABEL_23;
    }

LABEL_16:
    v14 = v13;
    v15 = *MEMORY[0x1E69E2C98];
    v16 = 16 * v14;
    while (1)
    {
      v17 = *v12;
      if (*v12 == v15 || *(v17 + 24) == *(v15 + 24) && *(v17 + 32) == *(v15 + 32))
      {
        break;
      }

      v12 += 2;
      v16 -= 16;
      if (!v16)
      {
        goto LABEL_23;
      }
    }

    v6 = v12[1];
    if (v6)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

  v12 = (v4 + 32);
  v13 = v5 >> 5;
  if (v5 >> 5)
  {
    goto LABEL_16;
  }

LABEL_23:
  v6 = MEMORY[8];
  if (MEMORY[8])
  {
LABEL_6:
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v19, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v7);
    }

    goto LABEL_8;
  }

LABEL_22:
  v19 = &stru_1F472E7E8;
  v18 = &stru_1F472E7E8;
LABEL_8:
  v8 = v19;
  v19 = 0;
  if (v8)
  {
    v9 = v8;
    v10 = v19;
    v19 = 0;
    if (v10)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v20, v7);
  return v8;
}

- (void)setName:(NSString *)name
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    WTF::AtomStringImpl::add(&v10, name, v5);
    v8 = v10;
    WebCore::Element::setAttributeWithoutSynchronization();
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v7);
  }

  else
  {
    __break(0xC471u);
  }
}

- (id)placeholder
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v12);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    v4 = *WebCore::Element::getAttribute();
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v11, v4);
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v5);
      }
    }

    else
    {
      v11 = &stru_1F472E7E8;
      v10 = &stru_1F472E7E8;
    }

    v6 = v11;
    v11 = 0;
    if (v6)
    {
      v7 = v6;
      v8 = v11;
      v11 = 0;
      if (v8)
      {
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v12, v5);
    return v6;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (void)setPlaceholder:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    WTF::AtomStringImpl::add(&v10, a3, v5);
    v8 = v10;
    WebCore::Element::setAttributeWithoutSynchronization();
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v7);
  }

  else
  {
    __break(0xC471u);
  }
}

- (BOOL)readOnly
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    v5 = *(internal + 14);
    if (v5)
    {
      v6 = *(v5 + 4);
      if ((v6 & 1) == 0)
      {
        v7 = (v5 + 32);
        v8 = v6 >> 5;
        if (!(v6 >> 5))
        {
          goto LABEL_14;
        }

LABEL_8:
        v9 = v8;
        v10 = *MEMORY[0x1E69E2978];
        v11 = 16 * v9;
        while (1)
        {
          v12 = *v7;
          if (*v7 == v10 || *(v12 + 24) == *(v10 + 24) && *(v12 + 32) == *(v10 + 32))
          {
            break;
          }

          v7 += 2;
          v11 -= 16;
          if (!v11)
          {
            goto LABEL_14;
          }
        }

        v13 = 1;
        goto LABEL_15;
      }

      v7 = *(v5 + 40);
      v8 = *(v5 + 52);
      if (v8)
      {
        goto LABEL_8;
      }
    }

LABEL_14:
    v13 = 0;
LABEL_15:
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v15, v3);
    return v13;
  }

  result = 96;
  __break(0xC471u);
  return result;
}

- (void)setReadOnly:(BOOL)readOnly
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    WebCore::Element::setBooleanAttribute();
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v5);
  }

  else
  {
    __break(0xC471u);
  }
}

- (BOOL)required
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    v5 = *(internal + 14);
    if (v5)
    {
      v6 = *(v5 + 4);
      if ((v6 & 1) == 0)
      {
        v7 = (v5 + 32);
        v8 = v6 >> 5;
        if (!(v6 >> 5))
        {
          goto LABEL_14;
        }

LABEL_8:
        v9 = v8;
        v10 = *MEMORY[0x1E69E2980];
        v11 = 16 * v9;
        while (1)
        {
          v12 = *v7;
          if (*v7 == v10 || *(v12 + 24) == *(v10 + 24) && *(v12 + 32) == *(v10 + 32))
          {
            break;
          }

          v7 += 2;
          v11 -= 16;
          if (!v11)
          {
            goto LABEL_14;
          }
        }

        v13 = 1;
        goto LABEL_15;
      }

      v7 = *(v5 + 40);
      v8 = *(v5 + 52);
      if (v8)
      {
        goto LABEL_8;
      }
    }

LABEL_14:
    v13 = 0;
LABEL_15:
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v15, v3);
    return v13;
  }

  result = 96;
  __break(0xC471u);
  return result;
}

- (void)setRequired:(BOOL)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    WebCore::Element::setBooleanAttribute();
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v5);
  }

  else
  {
    __break(0xC471u);
  }
}

- (int)rows
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    v5 = *(internal + 54);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v3);
    return v5;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (void)setRows:(int)rows
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    WebCore::HTMLTextAreaElement::setRows(internal);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v5);
  }

  else
  {
    __break(0xC471u);
  }
}

- (int)cols
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    v5 = *(internal + 55);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v3);
    return v5;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (void)setCols:(int)cols
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    WebCore::HTMLTextAreaElement::setCols(internal);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v5);
  }

  else
  {
    __break(0xC471u);
  }
}

- (id)wrap
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v12);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    v4 = *WebCore::Element::getAttribute();
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v11, v4);
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v5);
      }
    }

    else
    {
      v11 = &stru_1F472E7E8;
      v10 = &stru_1F472E7E8;
    }

    v6 = v11;
    v11 = 0;
    if (v6)
    {
      v7 = v6;
      v8 = v11;
      v11 = 0;
      if (v8)
      {
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v12, v5);
    return v6;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (void)setWrap:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    WTF::AtomStringImpl::add(&v10, a3, v5);
    v8 = v10;
    WebCore::Element::setAttributeWithoutSynchronization();
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v7);
  }

  else
  {
    __break(0xC471u);
  }
}

- (NSString)type
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v12);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    v4 = *(*(*(internal + 15) + 336))();
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v11, v4);
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v5);
      }
    }

    else
    {
      v11 = &stru_1F472E7E8;
      v10 = &stru_1F472E7E8;
    }

    v6 = v11;
    v11 = 0;
    if (v6)
    {
      v7 = v6;
      v8 = v11;
      v11 = 0;
      if (v8)
      {
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v12, v5);
    return v6;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (NSString)defaultValue
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v14);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    MEMORY[0x1CCA69CC0](&v12);
    v4 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v13, v4);
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v5);
      }
    }

    else
    {
      v13 = &stru_1F472E7E8;
      v11 = &stru_1F472E7E8;
    }

    v6 = v13;
    v13 = 0;
    if (v6)
    {
      v7 = v6;
      v8 = v13;
      v13 = 0;
      if (v8)
      {
      }
    }

    v9 = v12;
    v12 = 0;
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v5);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v14, v5);
    return v6;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (void)setDefaultValue:(NSString *)defaultValue
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    MEMORY[0x1CCA63A40](&v8, defaultValue);
    WebCore::HTMLTextAreaElement::setDefaultValue();
    v7 = v8;
    v8 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v6);
  }

  else
  {
    __break(0xC471u);
  }
}

- (NSString)value
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    WebCore::HTMLTextAreaElement::value(&v12, internal);
    v4 = *v13;
    if (*v13)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v14, v4);
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v5);
      }
    }

    else
    {
      v14 = &stru_1F472E7E8;
      v11 = &stru_1F472E7E8;
    }

    v6 = v14;
    v14 = 0;
    if (v6)
    {
      v7 = v6;
      v8 = v14;
      v14 = 0;
      if (v8)
      {
      }
    }

    v9 = v12;
    v12 = 0;
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v5);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v15, v5);
    return v6;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (void)setValue:(NSString *)value
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v12);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    MEMORY[0x1CCA63A40](&v9, value);
    WebCore::HTMLTextAreaElement::setValue();
    if (v11 == 1)
    {
      v7 = v10;
      v10 = 0;
      if (v7)
      {
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v6);
        }
      }
    }

    v8 = v9;
    v9 = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v6);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v12, v6);
  }

  else
  {
    __break(0xC471u);
  }
}

- (unsigned)textLength
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    WebCore::HTMLTextAreaElement::value(&v9, internal);
    if (*v10)
    {
      v5 = *(*v10 + 4);
      v6 = v9;
      v9 = 0;
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = 0;
      v6 = v9;
      v9 = 0;
      if (!v6)
      {
LABEL_9:
        WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v4);
        return v5;
      }
    }

    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }

    goto LABEL_9;
  }

  result = 96;
  __break(0xC471u);
  return result;
}

- (BOOL)willValidate
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    v4 = WebCore::ValidatedFormListedElement::willValidate((internal + 120));
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
    return v4;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (id)labels
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    WebCore::HTMLElement::labels(&v8, internal);
    v5 = kit(v8);
    v6 = v8;
    v8 = 0;
    if (v6)
    {
      if (*(v6 + 4) == 1)
      {
        (*(*v6 + 8))(v6);
      }

      else
      {
        --*(v6 + 4);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v4);
    return v5;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (int)selectionStart
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    v4 = WebCore::HTMLTextFormControlElement::selectionStart(internal);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
    return v4;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (void)setSelectionStart:(int)selectionStart
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    WebCore::HTMLTextFormControlElement::setSelectionStart(internal);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v5);
  }

  else
  {
    __break(0xC471u);
  }
}

- (int)selectionEnd
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    v4 = WebCore::HTMLTextFormControlElement::selectionEnd(internal);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
    return v4;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (void)setSelectionEnd:(int)selectionEnd
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    WebCore::HTMLTextFormControlElement::setSelectionEnd(internal);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v5);
  }

  else
  {
    __break(0xC471u);
  }
}

- (id)selectionDirection
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v12);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    v4 = *WebCore::HTMLTextFormControlElement::selectionDirection(internal);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v11, v4);
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v5);
      }
    }

    else
    {
      v11 = &stru_1F472E7E8;
      v10 = &stru_1F472E7E8;
    }

    v6 = v11;
    v11 = 0;
    if (v6)
    {
      v7 = v6;
      v8 = v11;
      v11 = 0;
      if (v8)
      {
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v12, v5);
    return v6;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (void)setSelectionDirection:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    MEMORY[0x1CCA63A40](&v8, a3);
    WebCore::HTMLTextFormControlElement::setSelectionDirection(internal, &v8);
    v7 = v8;
    v8 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v6);
  }

  else
  {
    __break(0xC471u);
  }
}

- (NSString)accessKey
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v12);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    v4 = *WebCore::Element::getAttribute();
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v11, v4);
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v5);
      }
    }

    else
    {
      v11 = &stru_1F472E7E8;
      v10 = &stru_1F472E7E8;
    }

    v6 = v11;
    v11 = 0;
    if (v6)
    {
      v7 = v6;
      v8 = v11;
      v11 = 0;
      if (v8)
      {
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v12, v5);
    return v6;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (void)setAccessKey:(NSString *)accessKey
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    WTF::AtomStringImpl::add(&v10, accessKey, v5);
    v8 = v10;
    WebCore::Element::setAttributeWithoutSynchronization();
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v7);
  }

  else
  {
    __break(0xC471u);
  }
}

- (id)autocomplete
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v14);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    WebCore::HTMLFormControlElement::autocomplete(&v12, internal);
    v4 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v13, v4);
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v5);
      }
    }

    else
    {
      v13 = &stru_1F472E7E8;
      v11 = &stru_1F472E7E8;
    }

    v6 = v13;
    v13 = 0;
    if (v6)
    {
      v7 = v6;
      v8 = v13;
      v13 = 0;
      if (v8)
      {
      }
    }

    v9 = v12;
    v12 = 0;
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v5);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v14, v5);
    return v6;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (void)setAutocomplete:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    WTF::AtomStringImpl::add(&v10, a3, v5);
    v8 = v10;
    WebCore::Element::setAttributeWithoutSynchronization();
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v7);
  }

  else
  {
    __break(0xC471u);
  }
}

- (void)select
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    WebCore::HTMLTextFormControlElement::select();
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v4);
  }

  else
  {
    __break(0xC471u);
  }
}

- (void)setRangeText:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    MEMORY[0x1CCA63A40](&v9, a3);
    WebCore::HTMLTextFormControlElement::setRangeText();
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
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v6);
  }

  else
  {
    __break(0xC471u);
  }
}

- (void)setRangeText:(id)a3 start:(unsigned int)a4 end:(unsigned int)a5 selectionMode:(id)a6
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v19);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    MEMORY[0x1CCA63A40](&v15, a3);
    MEMORY[0x1CCA63A40](&v14, a6);
    WebCore::HTMLTextFormControlElement::setRangeText();
    if (v18 == 1)
    {
      v19[80] = v16;
      v13 = v17;
      v17 = 0;
      v20 = v13;
      raiseDOMErrorException();
    }

    v11 = v14;
    v14 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v10);
    }

    v12 = v15;
    v15 = 0;
    if (v12)
    {
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v10);
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v19, v10);
  }

  else
  {
    __break(0xC471u);
  }
}

- (void)setSelectionRange:(int)start end:(int)end
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    WebCore::HTMLTextFormControlElement::setSelectionRange();
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v6);
  }

  else
  {
    __break(0xC471u);
  }
}

- (BOOL)canShowPlaceholder
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    v5 = (*(internal + 177) >> 4) & 1;
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v3);
    return v5;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (void)setCanShowPlaceholder:(BOOL)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  internal = self->super.super.super.super._internal;
  if ((*(internal + 16) & 0x10) != 0 && *(*(internal + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    WebCore::HTMLTextFormControlElement::setCanShowPlaceholder(internal);
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v5);
  }

  else
  {
    __break(0xC471u);
  }
}

- (id)startPosition
{
  v3 = *(self->super.super.super.super._internal + 9);
  if (!v3)
  {
    v19.receiver = self;
    v19.super_class = DOMHTMLTextAreaElement;
    return [(DOMNode *)&v19 startPosition];
  }

  if ((*(v3 + 26) & 0x407) != 0x401)
  {
    result = 96;
    __break(0xC471u);
    return result;
  }

  v4 = WebCore::RenderTextControl::textFormControlElement(v3);
  WebCore::HTMLTextFormControlElement::visiblePositionForIndex(v4);
  v5 = v15;
  if (v15)
  {
    *(v15 + 7) += 2;
  }

  v11 = v5;
  v12 = v16;
  v13 = v17;
  v14 = v18;
  result = [WebVisiblePosition _wrapVisiblePosition:&v11];
  v7 = v11;
  v11 = 0;
  if (v7)
  {
    if (*(v7 + 7) == 2)
    {
      v9 = result;
      WebCore::Node::removedLastRef(v7);
      result = v9;
      v8 = v15;
      v15 = 0;
      if (!v8)
      {
        return result;
      }

      goto LABEL_13;
    }

    *(v7 + 7) -= 2;
  }

  v8 = v15;
  v15 = 0;
  if (!v8)
  {
    return result;
  }

LABEL_13:
  if (*(v8 + 7) == 2)
  {
    v10 = result;
    WebCore::Node::removedLastRef(v8);
    return v10;
  }

  else
  {
    *(v8 + 7) -= 2;
  }

  return result;
}

- (id)endPosition
{
  v2 = *(self->super.super.super.super._internal + 9);
  if (!v2)
  {
    v22.receiver = self;
    v22.super_class = DOMHTMLTextAreaElement;
    return [(DOMNode *)&v22 endPosition];
  }

  if ((*(v2 + 26) & 0x407) != 0x401)
  {
    result = 96;
    __break(0xC471u);
    return result;
  }

  v3 = WebCore::RenderTextControl::textFormControlElement(*(self->super.super.super.super._internal + 9));
  v4 = WebCore::RenderTextControl::textFormControlElement(v2);
  (*(*v4 + 1400))(&v17);
  WebCore::HTMLTextFormControlElement::visiblePositionForIndex(v3);
  v7 = v17;
  v17 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  v8 = v18;
  if (v18)
  {
    *(v18 + 7) += 2;
  }

  v13 = v8;
  v14 = v19;
  v15 = v20;
  v16 = v21;
  result = [WebVisiblePosition _wrapVisiblePosition:&v13];
  v9 = v13;
  v13 = 0;
  if (!v9)
  {
LABEL_14:
    v10 = v18;
    v18 = 0;
    if (!v10)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (*(v9 + 7) != 2)
  {
    *(v9 + 7) -= 2;
    goto LABEL_14;
  }

  v11 = result;
  WebCore::Node::removedLastRef(v9);
  result = v11;
  v10 = v18;
  v18 = 0;
  if (!v10)
  {
    return result;
  }

LABEL_17:
  if (*(v10 + 7) == 2)
  {
    v12 = result;
    WebCore::Node::removedLastRef(v10);
    return v12;
  }

  else
  {
    *(v10 + 7) -= 2;
  }

  return result;
}

@end