@interface RTITextInputKeyboardActionButtonConfiguration
+ (id)actionButtonWithSystemImageData:(id)a3 backgroundColor:(id)a4 accessibilityTitle:(id)a5;
- (BOOL)isEqual:(id)a3;
- (RTITextInputKeyboardActionButtonConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initButtonWith:(id)a3 backgroundColor:(id)a4 accessibilityTitle:(id)a5 isEnabled:(BOOL)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTITextInputKeyboardActionButtonConfiguration

- (id)initButtonWith:(id)a3 backgroundColor:(id)a4 accessibilityTitle:(id)a5 isEnabled:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = RTITextInputKeyboardActionButtonConfiguration;
  v14 = [(RTITextInputKeyboardActionButtonConfiguration *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_imageData, a3);
    objc_storeStrong(&v15->_backgroundColor, a4);
    objc_storeStrong(&v15->_accessibilityTitle, a5);
    v15->_isEnabled = a6;
  }

  return v15;
}

+ (id)actionButtonWithSystemImageData:(id)a3 backgroundColor:(id)a4 accessibilityTitle:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initButtonWith:v10 backgroundColor:v9 accessibilityTitle:v8 isEnabled:1];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (RTITextInputKeyboardActionButtonConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = RTITextInputKeyboardActionButtonConfiguration;
  v5 = [(RTITextInputKeyboardActionButtonConfiguration *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
    v7 = [v6 copy];
    imageData = v5->_imageData;
    v5->_imageData = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    v10 = [v9 copy];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityTitle"];
    v13 = [v12 copy];
    accessibilityTitle = v5->_accessibilityTitle;
    v5->_accessibilityTitle = v13;

    v5->_isEnabled = [v4 decodeBoolForKey:@"isEnabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  imageData = self->_imageData;
  v8 = v4;
  if (imageData)
  {
    [v4 encodeObject:imageData forKey:@"imageData"];
    v4 = v8;
  }

  backgroundColor = self->_backgroundColor;
  if (backgroundColor)
  {
    [v8 encodeObject:backgroundColor forKey:@"backgroundColor"];
    v4 = v8;
  }

  accessibilityTitle = self->_accessibilityTitle;
  if (accessibilityTitle)
  {
    [v8 encodeObject:accessibilityTitle forKey:@"accessibilityTitle"];
    v4 = v8;
  }

  if (self->_isEnabled)
  {
    [v8 encodeBool:1 forKey:@"isEnabled"];
    v4 = v8;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTITextInputKeyboardActionButtonConfiguration *)self imageData];
      v7 = [(RTITextInputKeyboardActionButtonConfiguration *)v5 imageData];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(RTITextInputKeyboardActionButtonConfiguration *)self imageData];
        v10 = [(RTITextInputKeyboardActionButtonConfiguration *)v5 imageData];
        v11 = [v9 isEqualToData:v10];

        if (!v11)
        {
          goto LABEL_15;
        }
      }

      v13 = [(RTITextInputKeyboardActionButtonConfiguration *)self backgroundColor];
      v14 = [(RTITextInputKeyboardActionButtonConfiguration *)v5 backgroundColor];
      v15 = v14;
      if (v13 == v14)
      {
      }

      else
      {
        v16 = [(RTITextInputKeyboardActionButtonConfiguration *)self backgroundColor];
        v17 = [(RTITextInputKeyboardActionButtonConfiguration *)v5 backgroundColor];
        v18 = [v16 isEqual:v17];

        if (!v18)
        {
          goto LABEL_15;
        }
      }

      v19 = [(RTITextInputKeyboardActionButtonConfiguration *)self accessibilityTitle];
      v20 = [(RTITextInputKeyboardActionButtonConfiguration *)v5 accessibilityTitle];
      v21 = v20;
      if (v19 == v20)
      {
      }

      else
      {
        v22 = MEMORY[0x1E696AEC0];
        v23 = [(RTITextInputKeyboardActionButtonConfiguration *)self accessibilityTitle];
        v24 = [(RTITextInputKeyboardActionButtonConfiguration *)v5 accessibilityTitle];
        LODWORD(v22) = [v22 _string:v23 matchesString:v24];

        if (!v22)
        {
LABEL_15:
          LOBYTE(v12) = 0;
LABEL_18:

          goto LABEL_19;
        }
      }

      v25 = [(RTITextInputKeyboardActionButtonConfiguration *)self isEnabled];
      v12 = v25 ^ [(RTITextInputKeyboardActionButtonConfiguration *)v5 isEnabled]^ 1;
      goto LABEL_18;
    }

    LOBYTE(v12) = 0;
  }

LABEL_19:

  return v12;
}

@end