@interface _UIActivityItemCustomizationTextField
- (BOOL)isEqual:(id)a3;
- (_UIActivityItemCustomizationTextField)initWithCoder:(id)a3;
- (_UIActivityItemCustomizationTextField)initWithText:(id)a3 placeholder:(id)a4 identifier:(id)a5 footerText:(id)a6;
- (void)_setPlaceholder:(id)a3;
- (void)_setText:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIActivityItemCustomizationTextField

- (_UIActivityItemCustomizationTextField)initWithText:(id)a3 placeholder:(id)a4 identifier:(id)a5 footerText:(id)a6
{
  v17.receiver = self;
  v17.super_class = _UIActivityItemCustomizationTextField;
  v9 = a4;
  v10 = a3;
  v11 = [(_UIActivityItemCustomization *)&v17 _initWithTitle:v10 identifier:a5 footerText:a6];
  v12 = [v10 copy];

  text = v11->_text;
  v11->_text = v12;

  v14 = [v9 copy];
  placeholder = v11->_placeholder;
  v11->_placeholder = v14;

  return v11;
}

- (void)_setText:(id)a3
{
  v5 = a3;
  if (self->_text != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_text, a3);
    (*(self->__handler + 2))();
    v5 = v6;
  }
}

- (void)_setPlaceholder:(id)a3
{
  v5 = a3;
  if (self->_placeholder != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_placeholder, a3);
    v5 = v6;
  }
}

- (_UIActivityItemCustomizationTextField)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UIActivityItemCustomizationTextField;
  v5 = [(_UIActivityItemCustomization *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placeholder"];
    placeholder = v5->_placeholder;
    v5->_placeholder = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIActivityItemCustomizationTextField;
  v4 = a3;
  [(_UIActivityItemCustomization *)&v7 encodeWithCoder:v4];
  v5 = [(_UIActivityItemCustomizationTextField *)self text:v7.receiver];
  [v4 encodeObject:v5 forKey:@"text"];

  v6 = [(_UIActivityItemCustomizationTextField *)self placeholder];
  [v4 encodeObject:v6 forKey:@"placeholder"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v19.receiver = self;
      v19.super_class = _UIActivityItemCustomizationTextField;
      if (![(_UIActivityItemCustomization *)&v19 isEqual:v5])
      {
        v12 = 0;
LABEL_21:

        goto LABEL_22;
      }

      v6 = [(_UIActivityItemCustomizationTextField *)v5 text];
      v7 = [(_UIActivityItemCustomizationTextField *)self text];
      v8 = v6;
      v9 = v7;
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

      v13 = [(_UIActivityItemCustomizationTextField *)v5 placeholder];
      v14 = [(_UIActivityItemCustomizationTextField *)self placeholder];
      v15 = v13;
      v16 = v14;
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