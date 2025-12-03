@interface RTITextInputKeyboardActionButtonConfiguration
+ (id)actionButtonWithSystemImageData:(id)data backgroundColor:(id)color accessibilityTitle:(id)title;
- (BOOL)isEqual:(id)equal;
- (RTITextInputKeyboardActionButtonConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initButtonWith:(id)with backgroundColor:(id)color accessibilityTitle:(id)title isEnabled:(BOOL)enabled;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTITextInputKeyboardActionButtonConfiguration

- (id)initButtonWith:(id)with backgroundColor:(id)color accessibilityTitle:(id)title isEnabled:(BOOL)enabled
{
  withCopy = with;
  colorCopy = color;
  titleCopy = title;
  v17.receiver = self;
  v17.super_class = RTITextInputKeyboardActionButtonConfiguration;
  v14 = [(RTITextInputKeyboardActionButtonConfiguration *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_imageData, with);
    objc_storeStrong(&v15->_backgroundColor, color);
    objc_storeStrong(&v15->_accessibilityTitle, title);
    v15->_isEnabled = enabled;
  }

  return v15;
}

+ (id)actionButtonWithSystemImageData:(id)data backgroundColor:(id)color accessibilityTitle:(id)title
{
  titleCopy = title;
  colorCopy = color;
  dataCopy = data;
  v11 = [[self alloc] initButtonWith:dataCopy backgroundColor:colorCopy accessibilityTitle:titleCopy isEnabled:1];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(RTITextInputKeyboardActionButtonConfiguration);
  if (v4)
  {
    v5 = [(NSData *)self->_imageData copy];
    imageData = v4->_imageData;
    v4->_imageData = v5;

    v7 = [(RTIColor *)self->_backgroundColor copy];
    backgroundColor = v4->_backgroundColor;
    v4->_backgroundColor = v7;

    v9 = [(NSString *)self->_accessibilityTitle copy];
    accessibilityTitle = v4->_accessibilityTitle;
    v4->_accessibilityTitle = v9;

    [(RTITextInputKeyboardActionButtonConfiguration *)v4 setIsEnabled:self->_isEnabled];
  }

  return v4;
}

- (RTITextInputKeyboardActionButtonConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = RTITextInputKeyboardActionButtonConfiguration;
  v5 = [(RTITextInputKeyboardActionButtonConfiguration *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
    v7 = [v6 copy];
    imageData = v5->_imageData;
    v5->_imageData = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    v10 = [v9 copy];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityTitle"];
    v13 = [v12 copy];
    accessibilityTitle = v5->_accessibilityTitle;
    v5->_accessibilityTitle = v13;

    v5->_isEnabled = [coderCopy decodeBoolForKey:@"isEnabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  imageData = self->_imageData;
  v8 = coderCopy;
  if (imageData)
  {
    [coderCopy encodeObject:imageData forKey:@"imageData"];
    coderCopy = v8;
  }

  backgroundColor = self->_backgroundColor;
  if (backgroundColor)
  {
    [v8 encodeObject:backgroundColor forKey:@"backgroundColor"];
    coderCopy = v8;
  }

  accessibilityTitle = self->_accessibilityTitle;
  if (accessibilityTitle)
  {
    [v8 encodeObject:accessibilityTitle forKey:@"accessibilityTitle"];
    coderCopy = v8;
  }

  if (self->_isEnabled)
  {
    [v8 encodeBool:1 forKey:@"isEnabled"];
    coderCopy = v8;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      imageData = [(RTITextInputKeyboardActionButtonConfiguration *)self imageData];
      imageData2 = [(RTITextInputKeyboardActionButtonConfiguration *)v5 imageData];
      v8 = imageData2;
      if (imageData == imageData2)
      {
      }

      else
      {
        imageData3 = [(RTITextInputKeyboardActionButtonConfiguration *)self imageData];
        imageData4 = [(RTITextInputKeyboardActionButtonConfiguration *)v5 imageData];
        v11 = [imageData3 isEqualToData:imageData4];

        if (!v11)
        {
          goto LABEL_15;
        }
      }

      backgroundColor = [(RTITextInputKeyboardActionButtonConfiguration *)self backgroundColor];
      backgroundColor2 = [(RTITextInputKeyboardActionButtonConfiguration *)v5 backgroundColor];
      v15 = backgroundColor2;
      if (backgroundColor == backgroundColor2)
      {
      }

      else
      {
        backgroundColor3 = [(RTITextInputKeyboardActionButtonConfiguration *)self backgroundColor];
        backgroundColor4 = [(RTITextInputKeyboardActionButtonConfiguration *)v5 backgroundColor];
        v18 = [backgroundColor3 isEqual:backgroundColor4];

        if (!v18)
        {
          goto LABEL_15;
        }
      }

      accessibilityTitle = [(RTITextInputKeyboardActionButtonConfiguration *)self accessibilityTitle];
      accessibilityTitle2 = [(RTITextInputKeyboardActionButtonConfiguration *)v5 accessibilityTitle];
      v21 = accessibilityTitle2;
      if (accessibilityTitle == accessibilityTitle2)
      {
      }

      else
      {
        v22 = MEMORY[0x1E696AEC0];
        accessibilityTitle3 = [(RTITextInputKeyboardActionButtonConfiguration *)self accessibilityTitle];
        accessibilityTitle4 = [(RTITextInputKeyboardActionButtonConfiguration *)v5 accessibilityTitle];
        LODWORD(v22) = [v22 _string:accessibilityTitle3 matchesString:accessibilityTitle4];

        if (!v22)
        {
LABEL_15:
          LOBYTE(v12) = 0;
LABEL_18:

          goto LABEL_19;
        }
      }

      isEnabled = [(RTITextInputKeyboardActionButtonConfiguration *)self isEnabled];
      v12 = isEnabled ^ [(RTITextInputKeyboardActionButtonConfiguration *)v5 isEnabled]^ 1;
      goto LABEL_18;
    }

    LOBYTE(v12) = 0;
  }

LABEL_19:

  return v12;
}

@end