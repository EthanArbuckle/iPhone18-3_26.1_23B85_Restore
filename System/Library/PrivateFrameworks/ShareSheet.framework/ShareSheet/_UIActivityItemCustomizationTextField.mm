@interface _UIActivityItemCustomizationTextField
- (BOOL)isEqual:(id)equal;
- (_UIActivityItemCustomizationTextField)initWithCoder:(id)coder;
- (_UIActivityItemCustomizationTextField)initWithText:(id)text placeholder:(id)placeholder identifier:(id)identifier footerText:(id)footerText;
- (void)_setPlaceholder:(id)placeholder;
- (void)_setText:(id)text;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIActivityItemCustomizationTextField

- (_UIActivityItemCustomizationTextField)initWithText:(id)text placeholder:(id)placeholder identifier:(id)identifier footerText:(id)footerText
{
  v17.receiver = self;
  v17.super_class = _UIActivityItemCustomizationTextField;
  placeholderCopy = placeholder;
  textCopy = text;
  v11 = [(_UIActivityItemCustomization *)&v17 _initWithTitle:textCopy identifier:identifier footerText:footerText];
  v12 = [textCopy copy];

  text = v11->_text;
  v11->_text = v12;

  v14 = [placeholderCopy copy];
  placeholder = v11->_placeholder;
  v11->_placeholder = v14;

  return v11;
}

- (void)_setText:(id)text
{
  textCopy = text;
  if (self->_text != textCopy)
  {
    v6 = textCopy;
    objc_storeStrong(&self->_text, text);
    (*(self->__handler + 2))();
    textCopy = v6;
  }
}

- (void)_setPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  if (self->_placeholder != placeholderCopy)
  {
    v6 = placeholderCopy;
    objc_storeStrong(&self->_placeholder, placeholder);
    placeholderCopy = v6;
  }
}

- (_UIActivityItemCustomizationTextField)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _UIActivityItemCustomizationTextField;
  v5 = [(_UIActivityItemCustomization *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeholder"];
    placeholder = v5->_placeholder;
    v5->_placeholder = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _UIActivityItemCustomizationTextField;
  coderCopy = coder;
  [(_UIActivityItemCustomization *)&v7 encodeWithCoder:coderCopy];
  v5 = [(_UIActivityItemCustomizationTextField *)self text:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"text"];

  placeholder = [(_UIActivityItemCustomizationTextField *)self placeholder];
  [coderCopy encodeObject:placeholder forKey:@"placeholder"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v19.receiver = self;
      v19.super_class = _UIActivityItemCustomizationTextField;
      if (![(_UIActivityItemCustomization *)&v19 isEqual:v5])
      {
        v12 = 0;
LABEL_21:

        goto LABEL_22;
      }

      text = [(_UIActivityItemCustomizationTextField *)v5 text];
      text2 = [(_UIActivityItemCustomizationTextField *)self text];
      v8 = text;
      v9 = text2;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        if ((v8 != 0) == (v9 == 0))
        {
          v12 = 0;
          v17 = v9;
          v15 = v8;
LABEL_19:

          goto LABEL_20;
        }

        v11 = [v8 isEqual:v9];

        if (!v11)
        {
          v12 = 0;
LABEL_20:

          goto LABEL_21;
        }
      }

      placeholder = [(_UIActivityItemCustomizationTextField *)v5 placeholder];
      placeholder2 = [(_UIActivityItemCustomizationTextField *)self placeholder];
      v15 = placeholder;
      v16 = placeholder2;
      v17 = v16;
      if (v15 == v16)
      {
        v12 = 1;
      }

      else if ((v15 != 0) == (v16 == 0))
      {
        v12 = 0;
      }

      else
      {
        v12 = [v15 isEqual:v16];
      }

      goto LABEL_19;
    }

    v12 = 0;
  }

LABEL_22:

  return v12;
}

@end