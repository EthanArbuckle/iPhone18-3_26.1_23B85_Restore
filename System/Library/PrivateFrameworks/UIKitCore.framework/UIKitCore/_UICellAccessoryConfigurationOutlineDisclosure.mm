@interface _UICellAccessoryConfigurationOutlineDisclosure
+ (id)new;
- (BOOL)isEqual:(id)a3;
- (UIImage)image;
- (_UICellAccessoryConfigurationOutlineDisclosure)initWithCellSelectionTogglesExpansionState:(BOOL)a3;
- (_UICellAccessoryConfigurationOutlineDisclosure)initWithCoder:(id)a3;
- (_UICellAccessoryConfigurationOutlineDisclosure)initWithImage:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UICellAccessoryConfigurationOutlineDisclosure

+ (id)new
{
  v2 = objc_alloc(objc_opt_class());

  return [v2 initWithCellSelectionTogglesExpansionState:1];
}

- (_UICellAccessoryConfigurationOutlineDisclosure)initWithImage:(id)a3
{
  v5 = a3;
  v6 = [(_UICellAccessoryConfigurationOutlineDisclosure *)self initWithCellSelectionTogglesExpansionState:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__customImage, a3);
  }

  return v7;
}

- (_UICellAccessoryConfigurationOutlineDisclosure)initWithCellSelectionTogglesExpansionState:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = _UICellAccessoryConfigurationOutlineDisclosure;
  v4 = [(_UICellAccessoryConfiguration *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(_UICellAccessoryConfiguration *)v4 setUsesDefaultLayoutWidth:0];
    v5->_cellSelectionTogglesExpansionState = a3;
    v5->_rotationAngle = 1.57079633;
  }

  return v5;
}

- (_UICellAccessoryConfigurationOutlineDisclosure)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _UICellAccessoryConfigurationOutlineDisclosure;
  v5 = [(_UICellAccessoryConfiguration *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customImage"];
    customImage = v5->__customImage;
    v5->__customImage = v6;

    v5->_cellSelectionTogglesExpansionState = [v4 decodeBoolForKey:@"cellSelectionTogglesExpansionState"];
    [v4 decodeDoubleForKey:@"rotationAngle"];
    v5->_rotationAngle = v8;
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedTintColor"];
    selectedTintColor = v5->_selectedTintColor;
    v5->_selectedTintColor = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UICellAccessoryConfigurationOutlineDisclosure;
  v4 = a3;
  [(_UICellAccessoryConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->__customImage forKey:{@"customImage", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_cellSelectionTogglesExpansionState forKey:@"cellSelectionTogglesExpansionState"];
  [v4 encodeDouble:@"rotationAngle" forKey:self->_rotationAngle];
  [v4 encodeObject:self->_selectedTintColor forKey:@"selectedTintColor"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = _UICellAccessoryConfigurationOutlineDisclosure;
  v4 = [(_UICellAccessoryConfiguration *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    *(v4 + 32) = self->_cellSelectionTogglesExpansionState;
    objc_storeStrong(v4 + 7, self->__customImage);
    v5[5] = *&self->_rotationAngle;
    objc_storeStrong(v5 + 6, self->_selectedTintColor);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _UICellAccessoryConfigurationOutlineDisclosure;
  if ([(_UICellAccessoryConfiguration *)&v15 isEqual:v4])
  {
    v5 = v4;
    v6 = v5;
    if (self->_cellSelectionTogglesExpansionState == *(v5 + 32))
    {
      v7 = *(v5 + 7);
      v8 = self->__customImage;
      v9 = v7;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        if (v8)
        {
          v11 = v9 == 0;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {

          goto LABEL_14;
        }

        v13 = [(UIImage *)v8 isEqual:v9];

        if (!v13)
        {
          goto LABEL_14;
        }
      }

      if (self->_rotationAngle == v6[5])
      {
        v12 = self->_selectedTintColor == *(v6 + 6);
        goto LABEL_15;
      }
    }

LABEL_14:
    v12 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (UIImage)image
{
  customImage = self->__customImage;
  if (customImage)
  {
    v3 = customImage;
  }

  else
  {
    v3 = [UIImage systemImageNamed:@"chevron.forward"];
  }

  return v3;
}

@end