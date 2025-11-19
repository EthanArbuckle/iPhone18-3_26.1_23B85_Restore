@interface PKCredentialSharingMessageExtensionViewProperties
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCredentialSharingMessageExtensionViewProperties:(id)a3;
- (PKCredentialSharingMessageExtensionViewProperties)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCredentialSharingMessageExtensionViewProperties

- (PKCredentialSharingMessageExtensionViewProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKCredentialSharingMessageExtensionViewProperties;
  v5 = [(PKSharingMessageExtensionViewProperties *)&v21 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"buttonText"];
    buttonText = v5->_buttonText;
    v5->_buttonText = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"leftTitleText"];
    leftTitleText = v5->_leftTitleText;
    v5->_leftTitleText = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rightTitleText"];
    rightTitleText = v5->_rightTitleText;
    v5->_rightTitleText = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardImage"];
    cardImage = v5->_cardImage;
    v5->_cardImage = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fallbackCardImageName"];
    fallbackCardImageName = v5->_fallbackCardImageName;
    v5->_fallbackCardImageName = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKCredentialSharingMessageExtensionViewProperties;
  v4 = a3;
  [(PKSharingMessageExtensionViewProperties *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_title forKey:{@"title", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_subtitle forKey:@"subtitle"];
  [v4 encodeObject:self->_buttonText forKey:@"buttonText"];
  [v4 encodeObject:self->_leftTitleText forKey:@"leftTitleText"];
  [v4 encodeObject:self->_rightTitleText forKey:@"rightTitleText"];
  [v4 encodeObject:self->_cardImage forKey:@"cardImage"];
  [v4 encodeObject:self->_fallbackCardImageName forKey:@"fallbackCardImageName"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"title: '%@'; ", self->_title];
  [v6 appendFormat:@"subtitle: '%@'; ", self->_subtitle];
  [v6 appendFormat:@"buttonText: '%@'; ", self->_buttonText];
  [v6 appendFormat:@"leftTitleText: '%@'; ", self->_leftTitleText];
  [v6 appendFormat:@"rightTitleText: '%@'; ", self->_rightTitleText];
  [v6 appendFormat:@"cardImage: '%@'; ", self->_cardImage];
  [v6 appendFormat:@"fallbackCardImageName: '%@'; ", self->_fallbackCardImageName];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_title)
  {
    [v3 addObject:?];
  }

  if (self->_subtitle)
  {
    [v4 addObject:?];
  }

  if (self->_buttonText)
  {
    [v4 addObject:?];
  }

  if (self->_leftTitleText)
  {
    [v4 addObject:?];
  }

  if (self->_rightTitleText)
  {
    [v4 addObject:?];
  }

  if (self->_cardImage)
  {
    [v4 addObject:?];
  }

  if (self->_fallbackCardImageName)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash();

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKCredentialSharingMessageExtensionViewProperties *)self isEqualToCredentialSharingMessageExtensionViewProperties:v5];
  }

  return v6;
}

- (BOOL)isEqualToCredentialSharingMessageExtensionViewProperties:(id)a3
{
  v3 = a3;
  if (v3 && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && PKEqualObjects())
  {
    v4 = PKEqualObjects();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end