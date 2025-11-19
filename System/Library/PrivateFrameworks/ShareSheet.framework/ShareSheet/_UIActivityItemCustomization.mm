@interface _UIActivityItemCustomization
+ (id)actionCustomizationWithTitle:(id)a3 identifier:(id)a4 footerText:(id)a5 handler:(id)a6;
+ (id)pickerCustomizationWithIdentifier:(id)a3 options:(id)a4 selectedOptionIndex:(int64_t)a5 footerText:(id)a6 valueChangedHandler:(id)a7;
+ (id)switchCustomizationWithTitle:(id)a3 identifier:(id)a4 footerText:(id)a5 value:(BOOL)a6 valueChangedHandler:(id)a7;
+ (id)textFieldCustomizationWithText:(id)a3 placeholder:(id)a4 identifier:(id)a5 footerText:(id)a6 textChangedHandler:(id)a7;
- (BOOL)isEqual:(id)a3;
- (_UIActivityItemCustomization)initWithCoder:(id)a3;
- (id)_initWithTitle:(id)a3 identifier:(id)a4 footerText:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIActivityItemCustomization

+ (id)switchCustomizationWithTitle:(id)a3 identifier:(id)a4 footerText:(id)a5 value:(BOOL)a6 valueChangedHandler:(id)a7
{
  v7 = a6;
  v11 = a7;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [[_UIActivityItemCustomizationSwitch alloc] initWithTitle:v14 identifier:v13 value:v7 footerText:v12];

  [(_UIActivityItemCustomizationSwitch *)v15 _setHandler:v11];

  return v15;
}

+ (id)pickerCustomizationWithIdentifier:(id)a3 options:(id)a4 selectedOptionIndex:(int64_t)a5 footerText:(id)a6 valueChangedHandler:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [[_UIActivityItemCustomizationPicker alloc] initWithIdentifier:v14 optionTitles:v13 selectedOptionIndex:a5 footerText:v12];

  [(_UIActivityItemCustomizationPicker *)v15 _setHandler:v11];

  return v15;
}

+ (id)textFieldCustomizationWithText:(id)a3 placeholder:(id)a4 identifier:(id)a5 footerText:(id)a6 textChangedHandler:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[_UIActivityItemCustomizationTextField alloc] initWithText:v15 placeholder:v14 identifier:v13 footerText:v12];

  [(_UIActivityItemCustomizationTextField *)v16 _setHandler:v11];

  return v16;
}

+ (id)actionCustomizationWithTitle:(id)a3 identifier:(id)a4 footerText:(id)a5 handler:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[_UIActivityItemCustomizationCustom alloc] _initWithTitle:v12 identifier:v11 footerText:v10];

  [v13 _setHandler:v9];

  return v13;
}

- (id)_initWithTitle:(id)a3 identifier:(id)a4 footerText:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = _UIActivityItemCustomization;
  v11 = [(_UIActivityItemCustomization *)&v20 init];
  if (v11)
  {
    v12 = [v8 copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [v9 copy];
    identifier = v11->_identifier;
    v11->_identifier = v14;

    v16 = [v10 copy];
    footerText = v11->_footerText;
    v11->_footerText = v16;

    v11->_enabled = 1;
    v18 = v11;
  }

  return v11;
}

- (_UIActivityItemCustomization)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _UIActivityItemCustomization;
  v5 = [(_UIActivityItemCustomization *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"footerText"];
    footerText = v5->_footerText;
    v5->_footerText = v10;

    v5->_enabled = [v4 decodeBoolForKey:@"enabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(_UIActivityItemCustomization *)self title];
  [v7 encodeObject:v4 forKey:@"title"];

  v5 = [(_UIActivityItemCustomization *)self identifier];
  [v7 encodeObject:v5 forKey:@"identifier"];

  v6 = [(_UIActivityItemCustomization *)self footerText];
  [v7 encodeObject:v6 forKey:@"footerText"];

  [v7 encodeBool:-[_UIActivityItemCustomization enabled](self forKey:{"enabled"), @"enabled"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(_UIActivityItemCustomization *)v5 title];
      v7 = [(_UIActivityItemCustomization *)self title];
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
          LOBYTE(v12) = 0;
          v17 = v9;
          v15 = v8;
          goto LABEL_26;
        }

        v11 = [v8 isEqual:v9];

        if (!v11)
        {
          LOBYTE(v12) = 0;
LABEL_27:

          goto LABEL_28;
        }
      }

      v13 = [(_UIActivityItemCustomization *)v5 identifier];
      v14 = [(_UIActivityItemCustomization *)self identifier];
      v15 = v13;
      v16 = v14;
      v17 = v16;
      if (v15 == v16)
      {
      }

      else
      {
        if ((v15 != 0) == (v16 == 0))
        {
          LOBYTE(v12) = 0;
          v23 = v16;
          v21 = v15;
          goto LABEL_25;
        }

        v18 = [v15 isEqual:v16];

        if (!v18)
        {
          LOBYTE(v12) = 0;
LABEL_26:

          goto LABEL_27;
        }
      }

      v19 = [(_UIActivityItemCustomization *)v5 footerText];
      v20 = [(_UIActivityItemCustomization *)self footerText];
      v21 = v19;
      v22 = v20;
      v23 = v22;
      if (v21 == v22)
      {
      }

      else
      {
        if ((v21 != 0) == (v22 == 0))
        {

LABEL_24:
          LOBYTE(v12) = 0;
          goto LABEL_25;
        }

        v24 = [v21 isEqual:v22];

        if (!v24)
        {
          goto LABEL_24;
        }
      }

      v25 = [(_UIActivityItemCustomization *)v5 enabled];
      v12 = v25 ^ [(_UIActivityItemCustomization *)self enabled]^ 1;
LABEL_25:

      goto LABEL_26;
    }

    LOBYTE(v12) = 0;
  }

LABEL_28:

  return v12;
}

@end