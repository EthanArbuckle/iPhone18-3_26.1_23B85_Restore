@interface _UIActivityItemCustomization
+ (id)actionCustomizationWithTitle:(id)title identifier:(id)identifier footerText:(id)text handler:(id)handler;
+ (id)pickerCustomizationWithIdentifier:(id)identifier options:(id)options selectedOptionIndex:(int64_t)index footerText:(id)text valueChangedHandler:(id)handler;
+ (id)switchCustomizationWithTitle:(id)title identifier:(id)identifier footerText:(id)text value:(BOOL)value valueChangedHandler:(id)handler;
+ (id)textFieldCustomizationWithText:(id)text placeholder:(id)placeholder identifier:(id)identifier footerText:(id)footerText textChangedHandler:(id)handler;
- (BOOL)isEqual:(id)equal;
- (_UIActivityItemCustomization)initWithCoder:(id)coder;
- (id)_initWithTitle:(id)title identifier:(id)identifier footerText:(id)text;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIActivityItemCustomization

+ (id)switchCustomizationWithTitle:(id)title identifier:(id)identifier footerText:(id)text value:(BOOL)value valueChangedHandler:(id)handler
{
  valueCopy = value;
  handlerCopy = handler;
  textCopy = text;
  identifierCopy = identifier;
  titleCopy = title;
  v15 = [[_UIActivityItemCustomizationSwitch alloc] initWithTitle:titleCopy identifier:identifierCopy value:valueCopy footerText:textCopy];

  [(_UIActivityItemCustomizationSwitch *)v15 _setHandler:handlerCopy];

  return v15;
}

+ (id)pickerCustomizationWithIdentifier:(id)identifier options:(id)options selectedOptionIndex:(int64_t)index footerText:(id)text valueChangedHandler:(id)handler
{
  handlerCopy = handler;
  textCopy = text;
  optionsCopy = options;
  identifierCopy = identifier;
  v15 = [[_UIActivityItemCustomizationPicker alloc] initWithIdentifier:identifierCopy optionTitles:optionsCopy selectedOptionIndex:index footerText:textCopy];

  [(_UIActivityItemCustomizationPicker *)v15 _setHandler:handlerCopy];

  return v15;
}

+ (id)textFieldCustomizationWithText:(id)text placeholder:(id)placeholder identifier:(id)identifier footerText:(id)footerText textChangedHandler:(id)handler
{
  handlerCopy = handler;
  footerTextCopy = footerText;
  identifierCopy = identifier;
  placeholderCopy = placeholder;
  textCopy = text;
  v16 = [[_UIActivityItemCustomizationTextField alloc] initWithText:textCopy placeholder:placeholderCopy identifier:identifierCopy footerText:footerTextCopy];

  [(_UIActivityItemCustomizationTextField *)v16 _setHandler:handlerCopy];

  return v16;
}

+ (id)actionCustomizationWithTitle:(id)title identifier:(id)identifier footerText:(id)text handler:(id)handler
{
  handlerCopy = handler;
  textCopy = text;
  identifierCopy = identifier;
  titleCopy = title;
  v13 = [[_UIActivityItemCustomizationCustom alloc] _initWithTitle:titleCopy identifier:identifierCopy footerText:textCopy];

  [v13 _setHandler:handlerCopy];

  return v13;
}

- (id)_initWithTitle:(id)title identifier:(id)identifier footerText:(id)text
{
  titleCopy = title;
  identifierCopy = identifier;
  textCopy = text;
  v20.receiver = self;
  v20.super_class = _UIActivityItemCustomization;
  v11 = [(_UIActivityItemCustomization *)&v20 init];
  if (v11)
  {
    v12 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v14;

    v16 = [textCopy copy];
    footerText = v11->_footerText;
    v11->_footerText = v16;

    v11->_enabled = 1;
    v18 = v11;
  }

  return v11;
}

- (_UIActivityItemCustomization)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _UIActivityItemCustomization;
  v5 = [(_UIActivityItemCustomization *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"footerText"];
    footerText = v5->_footerText;
    v5->_footerText = v10;

    v5->_enabled = [coderCopy decodeBoolForKey:@"enabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(_UIActivityItemCustomization *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  identifier = [(_UIActivityItemCustomization *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  footerText = [(_UIActivityItemCustomization *)self footerText];
  [coderCopy encodeObject:footerText forKey:@"footerText"];

  [coderCopy encodeBool:-[_UIActivityItemCustomization enabled](self forKey:{"enabled"), @"enabled"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      title = [(_UIActivityItemCustomization *)v5 title];
      title2 = [(_UIActivityItemCustomization *)self title];
      v8 = title;
      v9 = title2;
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

      identifier = [(_UIActivityItemCustomization *)v5 identifier];
      identifier2 = [(_UIActivityItemCustomization *)self identifier];
      v15 = identifier;
      v16 = identifier2;
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

      footerText = [(_UIActivityItemCustomization *)v5 footerText];
      footerText2 = [(_UIActivityItemCustomization *)self footerText];
      v21 = footerText;
      v22 = footerText2;
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

      enabled = [(_UIActivityItemCustomization *)v5 enabled];
      v12 = enabled ^ [(_UIActivityItemCustomization *)self enabled]^ 1;
LABEL_25:

      goto LABEL_26;
    }

    LOBYTE(v12) = 0;
  }

LABEL_28:

  return v12;
}

@end