@interface DOMHTMLInputElement
- (BOOL)_isAutoFilledAndViewable;
- (BOOL)_isAutofilled;
- (BOOL)_isEdited;
- (BOOL)_isTextField;
- (BOOL)autofocus;
- (BOOL)canShowPlaceholder;
- (BOOL)capture;
- (BOOL)checkValidity;
- (BOOL)checked;
- (BOOL)defaultChecked;
- (BOOL)disabled;
- (BOOL)formNoValidate;
- (BOOL)indeterminate;
- (BOOL)multiple;
- (BOOL)readOnly;
- (BOOL)required;
- (BOOL)willValidate;
- (DOMFileList)files;
- (DOMHTMLFormElement)form;
- (NSString)accept;
- (NSString)accessKey;
- (NSString)align;
- (NSString)alt;
- (NSString)altDisplayString;
- (NSString)defaultValue;
- (NSString)name;
- (NSString)size;
- (NSString)src;
- (NSString)type;
- (NSString)useMap;
- (NSString)value;
- (NSURL)absoluteImageURL;
- (double)valueAsDate;
- (double)valueAsNumber;
- (id)_autofillContext;
- (id)autocomplete;
- (id)dirName;
- (id)endPosition;
- (id)formAction;
- (id)formEnctype;
- (id)formMethod;
- (id)formTarget;
- (id)labels;
- (id)list;
- (id)max;
- (id)min;
- (id)pattern;
- (id)placeholder;
- (id)selectionDirection;
- (id)startPosition;
- (id)step;
- (id)validationMessage;
- (int)_autocapitalizeType;
- (int)maxLength;
- (int)selectionEnd;
- (int)selectionStart;
- (unsigned)height;
- (unsigned)width;
- (void)_setAutoFilledAndViewable:(BOOL)a3;
- (void)_setAutofilled:(BOOL)a3;
- (void)click;
- (void)insertTextSuggestion:(id)a3;
- (void)select;
- (void)setAccept:(NSString *)accept;
- (void)setAccessKey:(NSString *)accessKey;
- (void)setAlign:(NSString *)align;
- (void)setAlt:(NSString *)alt;
- (void)setAutocomplete:(id)a3;
- (void)setAutofocus:(BOOL)autofocus;
- (void)setCanShowPlaceholder:(BOOL)a3;
- (void)setCapture:(BOOL)a3;
- (void)setChecked:(BOOL)checked;
- (void)setCustomValidity:(id)a3;
- (void)setDefaultChecked:(BOOL)defaultChecked;
- (void)setDefaultValue:(NSString *)defaultValue;
- (void)setDirName:(id)a3;
- (void)setDisabled:(BOOL)disabled;
- (void)setFiles:(DOMFileList *)files;
- (void)setFormAction:(id)a3;
- (void)setFormEnctype:(id)a3;
- (void)setFormMethod:(id)a3;
- (void)setFormNoValidate:(BOOL)a3;
- (void)setFormTarget:(id)a3;
- (void)setHeight:(unsigned int)a3;
- (void)setIndeterminate:(BOOL)indeterminate;
- (void)setMax:(id)a3;
- (void)setMaxLength:(int)maxLength;
- (void)setMin:(id)a3;
- (void)setMultiple:(BOOL)multiple;
- (void)setName:(NSString *)name;
- (void)setPattern:(id)a3;
- (void)setPlaceholder:(id)a3;
- (void)setRangeText:(id)a3;
- (void)setRangeText:(id)a3 start:(unsigned int)a4 end:(unsigned int)a5 selectionMode:(id)a6;
- (void)setReadOnly:(BOOL)readOnly;
- (void)setRequired:(BOOL)a3;
- (void)setSelectionDirection:(id)a3;
- (void)setSelectionEnd:(int)selectionEnd;
- (void)setSelectionRange:(int)start end:(int)end;
- (void)setSelectionStart:(int)selectionStart;
- (void)setSize:(NSString *)size;
- (void)setSrc:(NSString *)src;
- (void)setStep:(id)a3;
- (void)setType:(NSString *)type;
- (void)setUseMap:(NSString *)useMap;
- (void)setValue:(NSString *)value;
- (void)setValueAsDate:(double)a3;
- (void)setValueAsNumber:(double)a3;
- (void)setValueAsNumberWithChangeEvent:(double)a3;
- (void)setValueForUser:(id)a3;
- (void)setValueWithChangeEvent:(id)a3;
- (void)setWidth:(unsigned int)a3;
- (void)stepDown:(int)a3;
- (void)stepUp:(int)a3;
@end

@implementation DOMHTMLInputElement

- (BOOL)_isTextField
{
  if (self)
  {
    self = self->super.super.super.super._internal;
  }

  return WebCore::HTMLInputElement::isTextField(self);
}

- (BOOL)_isEdited
{
  if (self)
  {
    self = self->super.super.super.super._internal;
  }

  return MEMORY[0x1EEE5DB30](self, a2);
}

- (int)_autocapitalizeType
{
  if (self)
  {
    self = self->super.super.super.super._internal;
  }

  v2 = WebCore::HTMLFormControlElement::autocapitalizeType(self);
  if (((v2 - 1) & 0xFC) != 0)
  {
    return 0;
  }

  else
  {
    return (v2 - 1) + 1;
  }
}

- (void)setValueWithChangeEvent:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  MEMORY[0x1CCA63A40](&v7, a3);
  WebCore::HTMLInputElement::setValue();
  if (v9 == 1)
  {
    v5 = v8;
    v8 = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }
    }
  }

  v6 = v7;
  v7 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v4);
}

- (void)setValueAsNumberWithChangeEvent:(double)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  WebCore::HTMLInputElement::setValueAsNumber();
  if (v5 == 1 && v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v3);
}

- (NSString)accept
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

- (void)setAccept:(NSString *)accept
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, accept, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (NSString)alt
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

- (void)setAlt:(NSString *)alt
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, alt, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (id)autocomplete
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::HTMLFormControlElement::autocomplete(&v11, self->super.super.super.super._internal);
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

- (void)setAutocomplete:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, a3, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
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

- (BOOL)defaultChecked
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
  v9 = *MEMORY[0x1E69E2888];
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

- (void)setDefaultChecked:(BOOL)defaultChecked
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::Element::setBooleanAttribute();
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

- (BOOL)checked
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = *(self->super.super.super.super._internal + 238);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self & 1;
}

- (void)setChecked:(BOOL)checked
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::HTMLInputElement::setChecked();
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

- (id)dirName
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

- (void)setDirName:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, a3, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
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

- (DOMFileList)files
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  v3 = WebCore::HTMLInputElement::files(self->super.super.super.super._internal);
  v4 = kit(v3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
  return v4;
}

- (void)setFiles:(DOMFileList *)files
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  if (files)
  {
    internal = files->super._internal;
    if (internal)
    {
      ++*(internal + 2);
    }
  }

  else
  {
    internal = 0;
  }

  v10 = internal;
  WebCore::HTMLInputElement::setFiles();
  if (!v10)
  {
    goto LABEL_22;
  }

  if (*(v10 + 2) != 1)
  {
    --*(v10 + 2);
LABEL_22:
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v5);
    return;
  }

  v6 = *(v10 + 7);
  v7 = *(v10 + 2);
  if (v6)
  {
    v8 = 8 * v6;
    do
    {
      v9 = *v7;
      *v7 = 0;
      if (v9)
      {
        if (v9[4] == 1)
        {
          (*(*v9 + 8))(v9);
        }

        else
        {
          --v9[4];
        }
      }

      v7 = (v7 + 8);
      v8 -= 8;
    }

    while (v8);
    v7 = *(v10 + 2);
  }

  if (v7)
  {
    *(v10 + 2) = 0;
    *(v10 + 6) = 0;
    WTF::fastFree(v7, v5);
  }

  if (*(v10 + 2) == 1)
  {
    if (*v10)
    {
      *(*v10 + 8) = 3;
      *v10 = 0;
    }

    bmalloc::api::tzoneFree(v10, v5);
    goto LABEL_22;
  }

  __break(0xC471u);
}

- (id)formAction
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::HTMLFormControlElement::formAction(&v11, self->super.super.super.super._internal);
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

- (void)setFormAction:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, a3, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (id)formEnctype
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::HTMLFormControlElement::formEnctype(&v11, self->super.super.super.super._internal);
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

- (void)setFormEnctype:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, a3, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (id)formMethod
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::HTMLFormControlElement::formMethod(&v11, self->super.super.super.super._internal);
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

- (void)setFormMethod:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, a3, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (BOOL)formNoValidate
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
  v9 = *MEMORY[0x1E69E2A80];
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

- (void)setFormNoValidate:(BOOL)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::Element::setBooleanAttribute();
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

- (id)formTarget
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

- (void)setFormTarget:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, a3, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (unsigned)height
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = WebCore::HTMLInputElement::height(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setHeight:(unsigned int)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::Element::setUnsignedIntegralAttribute();
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

- (BOOL)indeterminate
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = (*(self->super.super.super.super._internal + 238) >> 3) & 1;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setIndeterminate:(BOOL)indeterminate
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  WebCore::HTMLInputElement::setIndeterminate(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v4);
}

- (id)list
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::HTMLInputElement::list(&v7, self->super.super.super.super._internal);
  v4 = kit(v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    if (*(v5 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v5);
    }

    else
    {
      *(v5 + 7) -= 2;
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v4;
}

- (id)max
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
  v8 = *MEMORY[0x1E69E2BE0];
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

- (void)setMax:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, a3, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (int)maxLength
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = *(self->super.super.super.super._internal + 45);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setMaxLength:(int)maxLength
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::HTMLTextFormControlElement::setMaxLength(self->super.super.super.super._internal);
  if (v7 == 1)
  {
    v8[80] = v5;
    v9 = v6;
    raiseDOMErrorException();
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v4);
}

- (id)min
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
  v8 = *MEMORY[0x1E69E2BF8];
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

- (void)setMin:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, a3, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (BOOL)multiple
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
  v9 = *MEMORY[0x1E69E2968];
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

- (id)pattern
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
  v8 = *MEMORY[0x1E69E28F0];
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

- (void)setPattern:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, a3, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (id)placeholder
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
  v8 = *MEMORY[0x1E69E2A48];
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

- (void)setPlaceholder:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, a3, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (BOOL)readOnly
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
  v9 = *MEMORY[0x1E69E2978];
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

- (void)setReadOnly:(BOOL)readOnly
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::Element::setBooleanAttribute();
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

- (BOOL)required
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
  v9 = *MEMORY[0x1E69E2980];
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

- (void)setRequired:(BOOL)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::Element::setBooleanAttribute();
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

- (NSString)size
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  WTF::String::number(*(self->super.super.super.super._internal + 58));
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v10);
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v3);
    }
  }

  else
  {
    v10 = &stru_1F472E7E8;
    v8 = &stru_1F472E7E8;
  }

  v4 = v10;
  v10 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v10;
    v10 = 0;
    if (v6)
    {
    }
  }

  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v3);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v3);
  return v4;
}

- (void)setSize:(NSString *)size
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super.super.super._internal;
  [(NSString *)size intValue];
  WebCore::HTMLInputElement::setSize(internal);
  if (v8 == 1 && v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v6);
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

- (id)step
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
  v8 = *MEMORY[0x1E69E2CC8];
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

- (void)setStep:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, a3, v4);
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

- (NSString)defaultValue
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
  v8 = *MEMORY[0x1E69E2E00];
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

- (void)setDefaultValue:(NSString *)defaultValue
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, defaultValue, v4);
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
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v14);
  WebCore::HTMLInputElement::value(&v11, self->super.super.super.super._internal);
  v3 = *v12;
  if (*v12)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v13, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v13 = &stru_1F472E7E8;
    v10 = &stru_1F472E7E8;
  }

  v5 = v13;
  v13 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v13;
    v13 = 0;
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

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v14, v4);
  return v5;
}

- (void)setValue:(NSString *)value
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  MEMORY[0x1CCA63A40](&v7, value);
  WebCore::HTMLInputElement::setValue();
  if (v9 == 1)
  {
    v5 = v8;
    v8 = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }
    }
  }

  v6 = v7;
  v7 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v4);
}

- (double)valueAsDate
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WebCore::HTMLInputElement::valueAsDate(self->super.super.super.super._internal);
  v4 = v3 + -978307200.0;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
  return v4;
}

- (void)setValueAsDate:(double)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WebCore::HTMLInputElement::setValueAsDate();
  if (v6 == 1)
  {
    v7[80] = v4;
    v8 = v5;
    raiseDOMErrorException();
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v3);
}

- (double)valueAsNumber
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WebCore::HTMLInputElement::valueAsNumber(self->super.super.super.super._internal);
  v4 = v3;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
  return v4;
}

- (void)setValueAsNumber:(double)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WebCore::HTMLInputElement::setValueAsNumber();
  if (v6 == 1)
  {
    v7[80] = v4;
    v8 = v5;
    raiseDOMErrorException();
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v3);
}

- (unsigned)width
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = WebCore::HTMLInputElement::width(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setWidth:(unsigned int)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::Element::setUnsignedIntegralAttribute();
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

- (BOOL)willValidate
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOBYTE(self) = WebCore::ValidatedFormListedElement::willValidate((self->super.super.super.super._internal + 120));
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (id)validationMessage
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::HTMLInputElement::validationMessage(&v11, self->super.super.super.super._internal);
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

- (id)labels
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::HTMLElement::labels(&v7, self->super.super.super.super._internal);
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

- (int)selectionStart
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = WebCore::HTMLTextFormControlElement::selectionStart(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setSelectionStart:(int)selectionStart
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  WebCore::HTMLTextFormControlElement::setSelectionStart(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v4);
}

- (int)selectionEnd
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = WebCore::HTMLTextFormControlElement::selectionEnd(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setSelectionEnd:(int)selectionEnd
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  WebCore::HTMLTextFormControlElement::setSelectionEnd(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v4);
}

- (id)selectionDirection
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = *WebCore::HTMLTextFormControlElement::selectionDirection(self->super.super.super.super._internal);
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

- (void)setSelectionDirection:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super.super.super._internal;
  MEMORY[0x1CCA63A40](&v8, a3);
  WebCore::HTMLTextFormControlElement::setSelectionDirection(internal, &v8);
  v7 = v8;
  v8 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v6);
}

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

- (NSString)useMap
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

- (void)setUseMap:(NSString *)useMap
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, useMap, v4);
  v6 = v8;
  WebCore::Element::setAttributeWithoutSynchronization();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
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

- (NSString)altDisplayString
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v24);
  internal = self->super.super.super.super._internal;
  v5 = *(internal + 14);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = *(v5 + 4);
  if (v6)
  {
    v7 = *(v5 + 40);
    v8 = *(v5 + 52);
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = v5 + 32;
    v8 = v6 >> 5;
    if (!(v6 >> 5))
    {
LABEL_4:
      v9 = MEMORY[0x1E696EB90];
      goto LABEL_15;
    }
  }

  v10 = v8;
  v11 = *MEMORY[0x1E69E2B88];
  v9 = (v7 + 8);
  v12 = 16 * v10;
  while (1)
  {
    v13 = *(v9 - 1);
    if (v13 == v11 || *(v13 + 24) == *(v11 + 24) && *(v13 + 32) == *(v11 + 32))
    {
      break;
    }

    v9 = (v9 + 16);
    v12 -= 16;
    if (!v12)
    {
      v9 = MEMORY[0x1E696EB90];
      break;
    }
  }

  if (!self)
  {
    internal = 0;
  }

LABEL_15:
  WebCore::displayString(&v22, v9, internal, v3);
  v14 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v23, v14);
    if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v15);
    }
  }

  else
  {
    v23 = &stru_1F472E7E8;
    v21 = &stru_1F472E7E8;
  }

  v16 = v23;
  v23 = 0;
  if (v16)
  {
    v17 = v16;
    v18 = v23;
    v23 = 0;
    if (v18)
    {
    }
  }

  v19 = v22;
  v22 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v15);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v24, v15);
  return v16;
}

- (NSURL)absoluteImageURL
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  v4 = *(self->super.super.super.super._internal + 9);
  if (!v4)
  {
    goto LABEL_5;
  }

  if ((v4[45] & 2) == 0)
  {
    if ((*(*v4 + 160))(v4))
    {
      v5 = [(DOMElement *)self _getURLAttribute:@"src"];
LABEL_6:
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v3);
      return v5;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  result = 105;
  __break(0xC471u);
  return result;
}

- (BOOL)capture
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
  v9 = *MEMORY[0x1E69E2870];
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

- (void)setCapture:(BOOL)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::Element::setBooleanAttribute();
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

- (void)stepUp:(int)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::HTMLInputElement::stepUp(self->super.super.super.super._internal);
  if (v7 == 1)
  {
    v8[80] = v5;
    v9 = v6;
    raiseDOMErrorException();
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v4);
}

- (void)stepDown:(int)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::HTMLInputElement::stepDown(self->super.super.super.super._internal);
  if (v7 == 1)
  {
    v8[80] = v5;
    v9 = v6;
    raiseDOMErrorException();
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v4);
}

- (BOOL)checkValidity
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  v2 = WebCore::ValidatedFormListedElement::checkValidity();
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return v2;
}

- (void)setCustomValidity:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super.super.super._internal;
  MEMORY[0x1CCA63A40](&v8, a3);
  WebCore::ValidatedFormListedElement::setCustomValidity((internal + 120), &v8);
  v7 = v8;
  v8 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v6);
}

- (void)select
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v3);
  WebCore::HTMLTextFormControlElement::select();
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v3, v2);
}

- (void)setRangeText:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  MEMORY[0x1CCA63A40](&v7, a3);
  WebCore::HTMLTextFormControlElement::setRangeText();
  if (v10 == 1)
  {
    v11[80] = v8;
    v6 = v9;
    v9 = 0;
    v12 = v6;
    raiseDOMErrorException();
  }

  v5 = v7;
  v7 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v4);
}

- (void)setRangeText:(id)a3 start:(unsigned int)a4 end:(unsigned int)a5 selectionMode:(id)a6
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v17);
  MEMORY[0x1CCA63A40](&v13, a3);
  MEMORY[0x1CCA63A40](&v12, a6);
  WebCore::HTMLInputElement::setRangeText();
  if (v16 == 1)
  {
    v17[80] = v14;
    v11 = v15;
    v15 = 0;
    v18 = v11;
    raiseDOMErrorException();
  }

  v9 = v12;
  v12 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = v13;
  v13 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v17, v8);
}

- (void)setSelectionRange:(int)start end:(int)end
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  WebCore::HTMLTextFormControlElement::setSelectionRange();
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v4);
}

- (void)click
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  WebCore::HTMLElement::click(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

- (void)setValueForUser:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super.super.super.super._internal;
  MEMORY[0x1CCA63A40](&v8, a3);
  WebCore::HTMLInputElement::setValueForUser(internal, &v8);
  v7 = v8;
  v8 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v6);
}

- (id)_autofillContext
{
  v18[1] = *MEMORY[0x1E69E9840];
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v16);
  internal = self->super.super.super.super._internal;
  *(internal + 7) += 2;
  v11 = internal;
  WebCore::AutofillElements::computeAutofillElements();
  if (v15 != 1)
  {
LABEL_15:
    v7 = v11;
    if (!v11)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (!v14)
  {
LABEL_5:
    v5 = v13;
    if (!v13)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (*(v14 + 7) != 2)
  {
    *(v14 + 7) -= 2;
    goto LABEL_5;
  }

  WebCore::Node::removedLastRef(v14);
  v5 = v13;
  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (*(v5 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v5);
    v6 = v12;
    if (!v12)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  *(v5 + 7) -= 2;
LABEL_10:
  v6 = v12;
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (*(v6 + 7) != 2)
  {
    *(v6 + 7) -= 2;
    goto LABEL_15;
  }

  WebCore::Node::removedLastRef(v6);
  v7 = v11;
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_16:
  if (*(v7 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v7);
  }

  else
  {
    *(v7 + 7) -= 2;
  }

LABEL_20:
  if ((v15 & 1) != 0 && (v8 = [MEMORY[0x1E695DFF8] URLWithString:{-[DOMDocument URL](-[DOMNode ownerDocument](self, "ownerDocument", 0), "URL")}]) != 0)
  {
    v17 = @"_WebViewURL";
    v18[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  }

  else
  {
    v9 = 0;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v16, v4);
  return v9;
}

- (void)insertTextSuggestion:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v21);
  internal = self->super.super.super.super._internal;
  if (!internal)
  {
    goto LABEL_25;
  }

  *(internal + 7) += 2;
  v16 = internal;
  WebCore::AutofillElements::computeAutofillElements();
  v7 = v16;
  v16 = 0;
  if (*(v7 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v7);
    if (v20 != 1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *(v7 + 7) -= 2;
    if (v20 != 1)
    {
      goto LABEL_11;
    }
  }

  MEMORY[0x1CCA63A40](&v15, [a3 username]);
  MEMORY[0x1CCA63A40](&v14, [a3 password]);
  WebCore::AutofillElements::autofill();
  v8 = v14;
  v14 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v5);
  }

  v9 = v15;
  v15 = 0;
  if (v9)
  {
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v5);
    }
  }

LABEL_11:
  if (v20 != 1)
  {
    goto LABEL_25;
  }

  v10 = v19;
  v19 = 0;
  if (v10)
  {
    if (*(v10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v10);
      v11 = v18;
      v18 = 0;
      if (!v11)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    *(v10 + 7) -= 2;
  }

  v11 = v18;
  v18 = 0;
  if (v11)
  {
LABEL_18:
    if (*(v11 + 7) != 2)
    {
      *(v11 + 7) -= 2;
      goto LABEL_20;
    }

    WebCore::Node::removedLastRef(v11);
    v12 = v17;
    v17 = 0;
    if (v12)
    {
      goto LABEL_23;
    }

LABEL_25:
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v21, v5);
    return;
  }

LABEL_20:
  v12 = v17;
  v17 = 0;
  if (!v12)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (*(v12 + 7) != 2)
  {
    *(v12 + 7) -= 2;
    goto LABEL_25;
  }

  WebCore::Node::removedLastRef(v12);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v21, v13);
}

- (BOOL)canShowPlaceholder
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = (*(self->super.super.super.super._internal + 177) >> 4) & 1;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setCanShowPlaceholder:(BOOL)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  WebCore::HTMLTextFormControlElement::setCanShowPlaceholder(self->super.super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v4);
}

- (BOOL)_isAutofilled
{
  v2 = core(self);
  if (!v2 || (*(v2 + 32) & 0x10) != 0 && *(*(v2 + 104) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
  {
    return *(v2 + 239) & 1;
  }

  result = 105;
  __break(0xC471u);
  return result;
}

- (BOOL)_isAutoFilledAndViewable
{
  v2 = core(self);
  if (!v2 || (*(v2 + 32) & 0x10) != 0 && *(*(v2 + 104) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
  {
    return (*(v2 + 239) >> 1) & 1;
  }

  else
  {
    LOBYTE(v3) = 105;
    __break(0xC471u);
  }

  return v3;
}

- (void)_setAutofilled:(BOOL)a3
{
  v3 = a3;
  v4 = core(self);
  if (!v4 || (*(v4 + 32) & 0x10) != 0 && *(*(v4 + 104) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
  {
    v7 = v3;
  }

  else
  {
    v7 = "/AppleInternal/Library/BuildRoots/4~CAs2ugA2tpMBixvyjjzI_x8zmF9N4IlVu0-_j7U/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/TypeCasts.h";
    v5 = "match_constness_t<Source, Target> *WTF::downcast(Source *) [Target = WebCore::HTMLInputElement, Source = WebCore::Element]";
    v4 = 105;
    v6 = 2;
    __break(0xC471u);
  }

  MEMORY[0x1EEE563F8](v4, v7, v5, v6);
}

- (void)_setAutoFilledAndViewable:(BOOL)a3
{
  v3 = a3;
  v4 = core(self);
  if (!v4 || (*(v4 + 32) & 0x10) != 0 && *(*(v4 + 104) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
  {
    v7 = v3;
  }

  else
  {
    v7 = "/AppleInternal/Library/BuildRoots/4~CAs2ugA2tpMBixvyjjzI_x8zmF9N4IlVu0-_j7U/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/TypeCasts.h";
    v5 = "match_constness_t<Source, Target> *WTF::downcast(Source *) [Target = WebCore::HTMLInputElement, Source = WebCore::Element]";
    v4 = 105;
    v6 = 2;
    __break(0xC471u);
  }

  MEMORY[0x1EEE56430](v4, v7, v5, v6);
}

- (id)startPosition
{
  v2 = *(self->super.super.super.super._internal + 9);
  if (!v2 || (*(v2 + 52) & 0x407) != 0x401)
  {
    v18.receiver = self;
    v18.super_class = DOMHTMLInputElement;
    return [(DOMNode *)&v18 startPosition];
  }

  v3 = WebCore::RenderTextControl::textFormControlElement(*(self->super.super.super.super._internal + 9));
  WebCore::HTMLTextFormControlElement::visiblePositionForIndex(v3);
  v4 = v14;
  if (v14)
  {
    *(v14 + 7) += 2;
  }

  v10 = v4;
  v11 = v15;
  v12 = v16;
  v13 = v17;
  result = [WebVisiblePosition _wrapVisiblePosition:&v10];
  v6 = v10;
  v10 = 0;
  if (v6)
  {
    if (*(v6 + 7) == 2)
    {
      v8 = result;
      WebCore::Node::removedLastRef(v6);
      result = v8;
      v7 = v14;
      v14 = 0;
      if (!v7)
      {
        return result;
      }

      goto LABEL_13;
    }

    *(v6 + 7) -= 2;
  }

  v7 = v14;
  v14 = 0;
  if (!v7)
  {
    return result;
  }

LABEL_13:
  if (*(v7 + 7) == 2)
  {
    v9 = result;
    WebCore::Node::removedLastRef(v7);
    return v9;
  }

  else
  {
    *(v7 + 7) -= 2;
  }

  return result;
}

- (id)endPosition
{
  v2 = *(self->super.super.super.super._internal + 9);
  if (!v2 || (*(v2 + 26) & 0x407) != 0x401)
  {
    v22.receiver = self;
    v22.super_class = DOMHTMLInputElement;
    return [(DOMNode *)&v22 endPosition];
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