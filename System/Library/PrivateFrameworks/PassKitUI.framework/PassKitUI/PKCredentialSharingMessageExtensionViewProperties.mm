@interface PKCredentialSharingMessageExtensionViewProperties
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCredentialSharingMessageExtensionViewProperties:(id)properties;
- (PKCredentialSharingMessageExtensionViewProperties)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCredentialSharingMessageExtensionViewProperties

- (PKCredentialSharingMessageExtensionViewProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = PKCredentialSharingMessageExtensionViewProperties;
  v5 = [(PKSharingMessageExtensionViewProperties *)&v21 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buttonText"];
    buttonText = v5->_buttonText;
    v5->_buttonText = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"leftTitleText"];
    leftTitleText = v5->_leftTitleText;
    v5->_leftTitleText = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rightTitleText"];
    rightTitleText = v5->_rightTitleText;
    v5->_rightTitleText = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cardImage"];
    cardImage = v5->_cardImage;
    v5->_cardImage = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fallbackCardImageName"];
    fallbackCardImageName = v5->_fallbackCardImageName;
    v5->_fallbackCardImageName = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKCredentialSharingMessageExtensionViewProperties;
  coderCopy = coder;
  [(PKSharingMessageExtensionViewProperties *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_title forKey:{@"title", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_subtitle forKey:@"subtitle"];
  [coderCopy encodeObject:self->_buttonText forKey:@"buttonText"];
  [coderCopy encodeObject:self->_leftTitleText forKey:@"leftTitleText"];
  [coderCopy encodeObject:self->_rightTitleText forKey:@"rightTitleText"];
  [coderCopy encodeObject:self->_cardImage forKey:@"cardImage"];
  [coderCopy encodeObject:self->_fallbackCardImageName forKey:@"fallbackCardImageName"];
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
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_title)
  {
    [array addObject:?];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKCredentialSharingMessageExtensionViewProperties *)self isEqualToCredentialSharingMessageExtensionViewProperties:v5];
  }

  return v6;
}

- (BOOL)isEqualToCredentialSharingMessageExtensionViewProperties:(id)properties
{
  propertiesCopy = properties;
  if (propertiesCopy && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && PKEqualObjects())
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