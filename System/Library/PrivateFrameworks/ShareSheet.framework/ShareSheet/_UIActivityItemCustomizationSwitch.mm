@interface _UIActivityItemCustomizationSwitch
- (BOOL)isEqual:(id)equal;
- (_UIActivityItemCustomizationSwitch)initWithCoder:(id)coder;
- (_UIActivityItemCustomizationSwitch)initWithTitle:(id)title identifier:(id)identifier value:(BOOL)value footerText:(id)text;
- (void)_setValue:(BOOL)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIActivityItemCustomizationSwitch

- (_UIActivityItemCustomizationSwitch)initWithTitle:(id)title identifier:(id)identifier value:(BOOL)value footerText:(id)text
{
  v8.receiver = self;
  v8.super_class = _UIActivityItemCustomizationSwitch;
  result = [(_UIActivityItemCustomization *)&v8 _initWithTitle:title identifier:identifier footerText:text];
  result->_value = value;
  return result;
}

- (void)_setValue:(BOOL)value
{
  if (self->_value != value)
  {
    self->_value = value;
    (*(self->__handler + 2))();
  }
}

- (_UIActivityItemCustomizationSwitch)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = _UIActivityItemCustomizationSwitch;
  v5 = [(_UIActivityItemCustomization *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_value = [coderCopy decodeBoolForKey:@"value"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIActivityItemCustomizationSwitch;
  coderCopy = coder;
  [(_UIActivityItemCustomization *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[_UIActivityItemCustomizationSwitch value](self forKey:{"value", v5.receiver, v5.super_class), @"value"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v9.receiver = self;
      v9.super_class = _UIActivityItemCustomizationSwitch;
      if ([(_UIActivityItemCustomization *)&v9 isEqual:v5])
      {
        value = [(_UIActivityItemCustomizationSwitch *)v5 value];
        v7 = value ^ [(_UIActivityItemCustomizationSwitch *)self value]^ 1;
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

@end