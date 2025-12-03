@interface PKBorderedButtonConfiguration
+ (id)filledButtonConfiguration;
+ (id)grayButtonConfiguration;
+ (id)plainButtonConfiguration;
+ (id)tintedButtonConfiguration;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_initializeDefaults;
@end

@implementation PKBorderedButtonConfiguration

- (void)_initializeDefaults
{
  PKScreenScale();
  [(PKBorderedButtonConfiguration *)self setBorderWidth:1.0 / v3];
  separatorColor = [MEMORY[0x1E69DC888] separatorColor];
  [(PKBorderedButtonConfiguration *)self setBorderColor:separatorColor];
}

+ (id)plainButtonConfiguration
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___PKBorderedButtonConfiguration;
  v2 = objc_msgSendSuper2(&v4, sel_plainButtonConfiguration);
  [v2 _initializeDefaults];

  return v2;
}

+ (id)tintedButtonConfiguration
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___PKBorderedButtonConfiguration;
  v2 = objc_msgSendSuper2(&v4, sel_tintedButtonConfiguration);
  [v2 _initializeDefaults];

  return v2;
}

+ (id)grayButtonConfiguration
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___PKBorderedButtonConfiguration;
  v2 = objc_msgSendSuper2(&v4, sel_grayButtonConfiguration);
  [v2 _initializeDefaults];

  return v2;
}

+ (id)filledButtonConfiguration
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___PKBorderedButtonConfiguration;
  v2 = objc_msgSendSuper2(&v4, sel_filledButtonConfiguration);
  [v2 _initializeDefaults];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PKBorderedButtonConfiguration;
  v4 = [(PKBorderedButtonConfiguration *)&v6 copyWithZone:zone];
  *(v4 + 35) = self->_border;
  objc_storeStrong(v4 + 37, self->_borderColor);
  *(v4 + 36) = *&self->_borderWidth;
  return v4;
}

@end