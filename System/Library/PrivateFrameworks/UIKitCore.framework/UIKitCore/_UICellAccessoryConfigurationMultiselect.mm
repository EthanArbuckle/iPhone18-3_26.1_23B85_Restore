@interface _UICellAccessoryConfigurationMultiselect
- (BOOL)isEqual:(id)equal;
- (_UICellAccessoryConfigurationMultiselect)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UICellAccessoryConfigurationMultiselect

- (_UICellAccessoryConfigurationMultiselect)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _UICellAccessoryConfigurationMultiselect;
  v5 = [(_UICellAccessoryConfiguration *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedTintColor"];
    selectedTintColor = v5->_selectedTintColor;
    v5->_selectedTintColor = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UICellAccessoryConfigurationMultiselect;
  coderCopy = coder;
  [(_UICellAccessoryConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_selectedTintColor forKey:{@"selectedTintColor", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = _UICellAccessoryConfigurationMultiselect;
  v4 = [(_UICellAccessoryConfiguration *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 4, self->_selectedTintColor);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = _UICellAccessoryConfigurationMultiselect;
  if ([(_UICellAccessoryConfiguration *)&v13 isEqual:equalCopy])
  {
    v5 = equalCopy;
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