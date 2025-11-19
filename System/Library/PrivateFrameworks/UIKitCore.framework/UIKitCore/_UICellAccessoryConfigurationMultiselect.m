@interface _UICellAccessoryConfigurationMultiselect
- (BOOL)isEqual:(id)a3;
- (_UICellAccessoryConfigurationMultiselect)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UICellAccessoryConfigurationMultiselect

- (_UICellAccessoryConfigurationMultiselect)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UICellAccessoryConfigurationMultiselect;
  v5 = [(_UICellAccessoryConfiguration *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedTintColor"];
    selectedTintColor = v5->_selectedTintColor;
    v5->_selectedTintColor = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UICellAccessoryConfigurationMultiselect;
  v4 = a3;
  [(_UICellAccessoryConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_selectedTintColor forKey:{@"selectedTintColor", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = _UICellAccessoryConfigurationMultiselect;
  v4 = [(_UICellAccessoryConfiguration *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 4, self->_selectedTintColor);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _UICellAccessoryConfigurationMultiselect;
  if ([(_UICellAccessoryConfiguration *)&v13 isEqual:v4])
  {
    v5 = v4;
    v6 = v5[4];
    v7 = self->_selectedTintColor;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
      v11 = 1;
    }

    else
    {
      if (v7)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        v11 = 0;
      }

      else
      {
        v11 = [(UIColor *)v7 isEqual:v8];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end