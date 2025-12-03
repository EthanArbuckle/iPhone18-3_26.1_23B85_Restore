@interface _UICellAccessoryConfigurationOutlineDisclosure
+ (id)new;
- (BOOL)isEqual:(id)equal;
- (UIImage)image;
- (_UICellAccessoryConfigurationOutlineDisclosure)initWithCellSelectionTogglesExpansionState:(BOOL)state;
- (_UICellAccessoryConfigurationOutlineDisclosure)initWithCoder:(id)coder;
- (_UICellAccessoryConfigurationOutlineDisclosure)initWithImage:(id)image;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UICellAccessoryConfigurationOutlineDisclosure

+ (id)new
{
  v2 = objc_alloc(objc_opt_class());

  return [v2 initWithCellSelectionTogglesExpansionState:1];
}

- (_UICellAccessoryConfigurationOutlineDisclosure)initWithImage:(id)image
{
  imageCopy = image;
  v6 = [(_UICellAccessoryConfigurationOutlineDisclosure *)self initWithCellSelectionTogglesExpansionState:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__customImage, image);
  }

  return v7;
}

- (_UICellAccessoryConfigurationOutlineDisclosure)initWithCellSelectionTogglesExpansionState:(BOOL)state
{
  v7.receiver = self;
  v7.super_class = _UICellAccessoryConfigurationOutlineDisclosure;
  v4 = [(_UICellAccessoryConfiguration *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(_UICellAccessoryConfiguration *)v4 setUsesDefaultLayoutWidth:0];
    v5->_cellSelectionTogglesExpansionState = state;
    v5->_rotationAngle = 1.57079633;
  }

  return v5;
}

- (_UICellAccessoryConfigurationOutlineDisclosure)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = _UICellAccessoryConfigurationOutlineDisclosure;
  v5 = [(_UICellAccessoryConfiguration *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customImage"];
    customImage = v5->__customImage;
    v5->__customImage = v6;

    v5->_cellSelectionTogglesExpansionState = [coderCopy decodeBoolForKey:@"cellSelectionTogglesExpansionState"];
    [coderCopy decodeDoubleForKey:@"rotationAngle"];
    v5->_rotationAngle = v8;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedTintColor"];
    selectedTintColor = v5->_selectedTintColor;
    v5->_selectedTintColor = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UICellAccessoryConfigurationOutlineDisclosure;
  coderCopy = coder;
  [(_UICellAccessoryConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->__customImage forKey:{@"customImage", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_cellSelectionTogglesExpansionState forKey:@"cellSelectionTogglesExpansionState"];
  [coderCopy encodeDouble:@"rotationAngle" forKey:self->_rotationAngle];
  [coderCopy encodeObject:self->_selectedTintColor forKey:@"selectedTintColor"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = _UICellAccessoryConfigurationOutlineDisclosure;
  v4 = [(_UICellAccessoryConfiguration *)&v7 copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v15.receiver = self;
  v15.super_class = _UICellAccessoryConfigurationOutlineDisclosure;
  if ([(_UICellAccessoryConfiguration *)&v15 isEqual:equalCopy])
  {
    v5 = equalCopy;
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