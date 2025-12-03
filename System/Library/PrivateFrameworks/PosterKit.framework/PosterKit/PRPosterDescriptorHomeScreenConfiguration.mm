@interface PRPosterDescriptorHomeScreenConfiguration
+ (id)defaultHomeScreenConfigurationForProvider:(id)provider role:(id)role;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PRPosterDescriptorHomeScreenConfiguration)initWithBSXPCCoder:(id)coder;
- (PRPosterDescriptorHomeScreenConfiguration)initWithCoder:(id)coder;
- (PRPosterDescriptorHomeScreenConfiguration)initWithPreferredStyle:(unint64_t)style allowsModifyingLegibilityBlur:(BOOL)blur preferredSolidColors:(id)colors preferredGradientColors:(id)gradientColors;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRPosterDescriptorHomeScreenConfiguration

+ (id)defaultHomeScreenConfigurationForProvider:(id)provider role:(id)role
{
  providerCopy = provider;
  if (PFCurrentDeviceClass() == 1)
  {
    v5 = 0;
  }

  else if ([providerCopy isEqualToString:@"com.apple.EmojiPoster.EmojiPosterExtension"])
  {
    v5 = 1;
  }

  else
  {
    v5 = [providerCopy isEqualToString:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];
  }

  v6 = -[PRPosterDescriptorHomeScreenConfiguration initWithPreferredStyle:allowsModifyingLegibilityBlur:preferredSolidColors:preferredGradientColors:]([PRPosterDescriptorHomeScreenConfiguration alloc], "initWithPreferredStyle:allowsModifyingLegibilityBlur:preferredSolidColors:preferredGradientColors:", v5, [providerCopy isEqualToString:@"com.apple.GradientPoster.GradientPosterExtension"] ^ 1, 0, 0);

  return v6;
}

- (PRPosterDescriptorHomeScreenConfiguration)initWithPreferredStyle:(unint64_t)style allowsModifyingLegibilityBlur:(BOOL)blur preferredSolidColors:(id)colors preferredGradientColors:(id)gradientColors
{
  colorsCopy = colors;
  gradientColorsCopy = gradientColors;
  v19.receiver = self;
  v19.super_class = PRPosterDescriptorHomeScreenConfiguration;
  v12 = [(PRPosterDescriptorHomeScreenConfiguration *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_preferredStyle = style;
    v12->_allowsModifyingLegibilityBlur = blur;
    v14 = [colorsCopy copy];
    preferredSolidColors = v13->_preferredSolidColors;
    v13->_preferredSolidColors = v14;

    v16 = [gradientColorsCopy copy];
    preferredGradientColors = v13->_preferredGradientColors;
    v13->_preferredGradientColors = v16;
  }

  return v13;
}

- (PRPosterDescriptorHomeScreenConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredStyle"];
  v6 = v5;
  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  if ([coderCopy containsValueForKey:@"allowsModifyingLegibilityBlur"])
  {
    v8 = [coderCopy decodeBoolForKey:@"allowsModifyingLegibilityBlur"];
  }

  else
  {
    v8 = 1;
  }

  v9 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"preferredSolidColors"];
  v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"preferredGradientColors"];
  v11 = [(PRPosterDescriptorHomeScreenConfiguration *)self initWithPreferredStyle:unsignedIntegerValue allowsModifyingLegibilityBlur:v8 preferredSolidColors:v9 preferredGradientColors:v10];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:{-[PRPosterDescriptorHomeScreenConfiguration preferredStyle](self, "preferredStyle")}];
  [coderCopy encodeObject:v6 forKey:@"preferredStyle"];

  [coderCopy encodeBool:-[PRPosterDescriptorHomeScreenConfiguration allowsModifyingLegibilityBlur](self forKey:{"allowsModifyingLegibilityBlur"), @"allowsModifyingLegibilityBlur"}];
  preferredSolidColors = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredSolidColors];
  [coderCopy encodeObject:preferredSolidColors forKey:@"preferredSolidColors"];

  preferredGradientColors = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredGradientColors];
  [coderCopy encodeObject:preferredGradientColors forKey:@"preferredGradientColors"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PRPosterDescriptorHomeScreenConfiguration alloc];
  preferredStyle = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredStyle];
  allowsModifyingLegibilityBlur = [(PRPosterDescriptorHomeScreenConfiguration *)self allowsModifyingLegibilityBlur];
  preferredSolidColors = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredSolidColors];
  preferredGradientColors = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredGradientColors];
  v9 = [(PRPosterDescriptorHomeScreenConfiguration *)v4 initWithPreferredStyle:preferredStyle allowsModifyingLegibilityBlur:allowsModifyingLegibilityBlur preferredSolidColors:preferredSolidColors preferredGradientColors:preferredGradientColors];

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PRMutablePosterDescriptorHomeScreenConfiguration alloc];
  preferredStyle = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredStyle];
  allowsModifyingLegibilityBlur = [(PRPosterDescriptorHomeScreenConfiguration *)self allowsModifyingLegibilityBlur];
  preferredSolidColors = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredSolidColors];
  preferredGradientColors = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredGradientColors];
  v9 = [(PRPosterDescriptorHomeScreenConfiguration *)v4 initWithPreferredStyle:preferredStyle allowsModifyingLegibilityBlur:allowsModifyingLegibilityBlur preferredSolidColors:preferredSolidColors preferredGradientColors:preferredGradientColors];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    preferredStyle = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredStyle];
    if (preferredStyle == [(PRPosterDescriptorHomeScreenConfiguration *)v6 preferredStyle]&& (v8 = [(PRPosterDescriptorHomeScreenConfiguration *)self allowsModifyingLegibilityBlur], v8 == [(PRPosterDescriptorHomeScreenConfiguration *)v6 allowsModifyingLegibilityBlur]) && ([(PRPosterDescriptorHomeScreenConfiguration *)self preferredSolidColors], v9 = objc_claimAutoreleasedReturnValue(), [(PRPosterDescriptorHomeScreenConfiguration *)v6 preferredSolidColors], v10 = objc_claimAutoreleasedReturnValue(), v11 = BSEqualObjects(), v10, v9, v11))
    {
      preferredGradientColors = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredGradientColors];
      preferredGradientColors2 = [(PRPosterDescriptorHomeScreenConfiguration *)v6 preferredGradientColors];
      v14 = BSEqualObjects();
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  preferredSolidColors = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredSolidColors];
  preferredGradientColors = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredGradientColors];
  builder = [MEMORY[0x1E698E6B8] builder];
  v6 = [builder appendUnsignedInteger:{-[PRPosterDescriptorHomeScreenConfiguration preferredStyle](self, "preferredStyle")}];
  v7 = [builder appendBool:{-[PRPosterDescriptorHomeScreenConfiguration allowsModifyingLegibilityBlur](self, "allowsModifyingLegibilityBlur")}];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __49__PRPosterDescriptorHomeScreenConfiguration_hash__block_invoke;
  v17[3] = &unk_1E7843660;
  v8 = builder;
  v18 = v8;
  [preferredSolidColors enumerateObjectsUsingBlock:v17];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __49__PRPosterDescriptorHomeScreenConfiguration_hash__block_invoke_2;
  v15 = &unk_1E7843660;
  v16 = v8;
  v9 = v8;
  [preferredGradientColors enumerateObjectsUsingBlock:&v12];
  v10 = [v9 hash];

  return v10;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __56__PRPosterDescriptorHomeScreenConfiguration_description__block_invoke;
  v10 = &unk_1E7843070;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (PRPosterDescriptorHomeScreenConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredStyle"];
  v6 = v5;
  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  if ([coderCopy containsValueForKey:@"allowsModifyingLegibilityBlur"])
  {
    v8 = [coderCopy decodeBoolForKey:@"allowsModifyingLegibilityBlur"];
  }

  else
  {
    v8 = 1;
  }

  v9 = objc_opt_class();
  v10 = [coderCopy decodeCollectionOfClass:v9 containingClass:objc_opt_class() forKey:@"preferredSolidColors"];
  v11 = objc_opt_class();
  v12 = [coderCopy decodeCollectionOfClass:v11 containingClass:objc_opt_class() forKey:@"preferredGradientColors"];
  v13 = [(PRPosterDescriptorHomeScreenConfiguration *)self initWithPreferredStyle:unsignedIntegerValue allowsModifyingLegibilityBlur:v8 preferredSolidColors:v10 preferredGradientColors:v12];

  return v13;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:{-[PRPosterDescriptorHomeScreenConfiguration preferredStyle](self, "preferredStyle")}];
  [coderCopy encodeObject:v6 forKey:@"preferredStyle"];

  [coderCopy encodeBool:-[PRPosterDescriptorHomeScreenConfiguration allowsModifyingLegibilityBlur](self forKey:{"allowsModifyingLegibilityBlur"), @"allowsModifyingLegibilityBlur"}];
  preferredSolidColors = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredSolidColors];
  [coderCopy encodeObject:preferredSolidColors forKey:@"preferredSolidColors"];

  preferredGradientColors = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredGradientColors];
  [coderCopy encodeObject:preferredGradientColors forKey:@"preferredGradientColors"];
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  preferredStyle = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredStyle];
  if (preferredStyle > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E7845FD8[preferredStyle];
  }

  [formatterCopy appendString:v5 withName:@"preferredStyle"];
  v6 = [formatterCopy appendBool:-[PRPosterDescriptorHomeScreenConfiguration allowsModifyingLegibilityBlur](self withName:{"allowsModifyingLegibilityBlur"), @"allowsModifyingLegibilityBlur"}];
  preferredSolidColors = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredSolidColors];
  v8 = [formatterCopy appendObject:preferredSolidColors withName:@"preferredSolidColors"];

  preferredGradientColors = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredGradientColors];
  v10 = [formatterCopy appendObject:preferredGradientColors withName:@"preferredGradientColors"];
}

@end