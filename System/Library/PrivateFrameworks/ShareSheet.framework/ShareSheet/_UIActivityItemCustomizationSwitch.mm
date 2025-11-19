@interface _UIActivityItemCustomizationSwitch
- (BOOL)isEqual:(id)a3;
- (_UIActivityItemCustomizationSwitch)initWithCoder:(id)a3;
- (_UIActivityItemCustomizationSwitch)initWithTitle:(id)a3 identifier:(id)a4 value:(BOOL)a5 footerText:(id)a6;
- (void)_setValue:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIActivityItemCustomizationSwitch

- (_UIActivityItemCustomizationSwitch)initWithTitle:(id)a3 identifier:(id)a4 value:(BOOL)a5 footerText:(id)a6
{
  v8.receiver = self;
  v8.super_class = _UIActivityItemCustomizationSwitch;
  result = [(_UIActivityItemCustomization *)&v8 _initWithTitle:a3 identifier:a4 footerText:a6];
  result->_value = a5;
  return result;
}

- (void)_setValue:(BOOL)a3
{
  if (self->_value != a3)
  {
    self->_value = a3;
    (*(self->__handler + 2))();
  }
}

- (_UIActivityItemCustomizationSwitch)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIActivityItemCustomizationSwitch;
  v5 = [(_UIActivityItemCustomization *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_value = [v4 decodeBoolForKey:@"value"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIActivityItemCustomizationSwitch;
  v4 = a3;
  [(_UIActivityItemCustomization *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[_UIActivityItemCustomizationSwitch value](self forKey:{"value", v5.receiver, v5.super_class), @"value"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v9.receiver = self;
      v9.super_class = _UIActivityItemCustomizationSwitch;
      if ([(_UIActivityItemCustomization *)&v9 isEqual:v5])
      {
        v6 = [(_UIActivityItemCustomizationSwitch *)v5 value];
        v7 = v6 ^ [(_UIActivityItemCustomizationSwitch *)self value]^ 1;
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