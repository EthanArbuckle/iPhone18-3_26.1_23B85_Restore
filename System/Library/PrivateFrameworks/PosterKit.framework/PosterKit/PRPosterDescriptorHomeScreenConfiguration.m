@interface PRPosterDescriptorHomeScreenConfiguration
+ (id)defaultHomeScreenConfigurationForProvider:(id)a3 role:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PRPosterDescriptorHomeScreenConfiguration)initWithBSXPCCoder:(id)a3;
- (PRPosterDescriptorHomeScreenConfiguration)initWithCoder:(id)a3;
- (PRPosterDescriptorHomeScreenConfiguration)initWithPreferredStyle:(unint64_t)a3 allowsModifyingLegibilityBlur:(BOOL)a4 preferredSolidColors:(id)a5 preferredGradientColors:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRPosterDescriptorHomeScreenConfiguration

+ (id)defaultHomeScreenConfigurationForProvider:(id)a3 role:(id)a4
{
  v4 = a3;
  if (PFCurrentDeviceClass() == 1)
  {
    v5 = 0;
  }

  else if ([v4 isEqualToString:@"com.apple.EmojiPoster.EmojiPosterExtension"])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];
  }

  v6 = -[PRPosterDescriptorHomeScreenConfiguration initWithPreferredStyle:allowsModifyingLegibilityBlur:preferredSolidColors:preferredGradientColors:]([PRPosterDescriptorHomeScreenConfiguration alloc], "initWithPreferredStyle:allowsModifyingLegibilityBlur:preferredSolidColors:preferredGradientColors:", v5, [v4 isEqualToString:@"com.apple.GradientPoster.GradientPosterExtension"] ^ 1, 0, 0);

  return v6;
}

- (PRPosterDescriptorHomeScreenConfiguration)initWithPreferredStyle:(unint64_t)a3 allowsModifyingLegibilityBlur:(BOOL)a4 preferredSolidColors:(id)a5 preferredGradientColors:(id)a6
{
  v10 = a5;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = PRPosterDescriptorHomeScreenConfiguration;
  v12 = [(PRPosterDescriptorHomeScreenConfiguration *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_preferredStyle = a3;
    v12->_allowsModifyingLegibilityBlur = a4;
    v14 = [v10 copy];
    preferredSolidColors = v13->_preferredSolidColors;
    v13->_preferredSolidColors = v14;

    v16 = [v11 copy];
    preferredGradientColors = v13->_preferredGradientColors;
    v13->_preferredGradientColors = v16;
  }

  return v13;
}

- (PRPosterDescriptorHomeScreenConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredStyle"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  if ([v4 containsValueForKey:@"allowsModifyingLegibilityBlur"])
  {
    v8 = [v4 decodeBoolForKey:@"allowsModifyingLegibilityBlur"];
  }

  else
  {
    v8 = 1;
  }

  v9 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"preferredSolidColors"];
  v10 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"preferredGradientColors"];
  v11 = [(PRPosterDescriptorHomeScreenConfiguration *)self initWithPreferredStyle:v7 allowsModifyingLegibilityBlur:v8 preferredSolidColors:v9 preferredGradientColors:v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{-[PRPosterDescriptorHomeScreenConfiguration preferredStyle](self, "preferredStyle")}];
  [v5 encodeObject:v6 forKey:@"preferredStyle"];

  [v5 encodeBool:-[PRPosterDescriptorHomeScreenConfiguration allowsModifyingLegibilityBlur](self forKey:{"allowsModifyingLegibilityBlur"), @"allowsModifyingLegibilityBlur"}];
  v7 = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredSolidColors];
  [v5 encodeObject:v7 forKey:@"preferredSolidColors"];

  v8 = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredGradientColors];
  [v5 encodeObject:v8 forKey:@"preferredGradientColors"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PRPosterDescriptorHomeScreenConfiguration alloc];
  v5 = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredStyle];
  v6 = [(PRPosterDescriptorHomeScreenConfiguration *)self allowsModifyingLegibilityBlur];
  v7 = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredSolidColors];
  v8 = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredGradientColors];
  v9 = [(PRPosterDescriptorHomeScreenConfiguration *)v4 initWithPreferredStyle:v5 allowsModifyingLegibilityBlur:v6 preferredSolidColors:v7 preferredGradientColors:v8];

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [PRMutablePosterDescriptorHomeScreenConfiguration alloc];
  v5 = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredStyle];
  v6 = [(PRPosterDescriptorHomeScreenConfiguration *)self allowsModifyingLegibilityBlur];
  v7 = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredSolidColors];
  v8 = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredGradientColors];
  v9 = [(PRPosterDescriptorHomeScreenConfiguration *)v4 initWithPreferredStyle:v5 allowsModifyingLegibilityBlur:v6 preferredSolidColors:v7 preferredGradientColors:v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v14 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredStyle];
    if (v7 == [(PRPosterDescriptorHomeScreenConfiguration *)v6 preferredStyle]&& (v8 = [(PRPosterDescriptorHomeScreenConfiguration *)self allowsModifyingLegibilityBlur], v8 == [(PRPosterDescriptorHomeScreenConfiguration *)v6 allowsModifyingLegibilityBlur]) && ([(PRPosterDescriptorHomeScreenConfiguration *)self preferredSolidColors], v9 = objc_claimAutoreleasedReturnValue(), [(PRPosterDescriptorHomeScreenConfiguration *)v6 preferredSolidColors], v10 = objc_claimAutoreleasedReturnValue(), v11 = BSEqualObjects(), v10, v9, v11))
    {
      v12 = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredGradientColors];
      v13 = [(PRPosterDescriptorHomeScreenConfiguration *)v6 preferredGradientColors];
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
  v3 = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredSolidColors];
  v4 = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredGradientColors];
  v5 = [MEMORY[0x1E698E6B8] builder];
  v6 = [v5 appendUnsignedInteger:{-[PRPosterDescriptorHomeScreenConfiguration preferredStyle](self, "preferredStyle")}];
  v7 = [v5 appendBool:{-[PRPosterDescriptorHomeScreenConfiguration allowsModifyingLegibilityBlur](self, "allowsModifyingLegibilityBlur")}];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __49__PRPosterDescriptorHomeScreenConfiguration_hash__block_invoke;
  v17[3] = &unk_1E7843660;
  v8 = v5;
  v18 = v8;
  [v3 enumerateObjectsUsingBlock:v17];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __49__PRPosterDescriptorHomeScreenConfiguration_hash__block_invoke_2;
  v15 = &unk_1E7843660;
  v16 = v8;
  v9 = v8;
  [v4 enumerateObjectsUsingBlock:&v12];
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
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (PRPosterDescriptorHomeScreenConfiguration)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredStyle"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  if ([v4 containsValueForKey:@"allowsModifyingLegibilityBlur"])
  {
    v8 = [v4 decodeBoolForKey:@"allowsModifyingLegibilityBlur"];
  }

  else
  {
    v8 = 1;
  }

  v9 = objc_opt_class();
  v10 = [v4 decodeCollectionOfClass:v9 containingClass:objc_opt_class() forKey:@"preferredSolidColors"];
  v11 = objc_opt_class();
  v12 = [v4 decodeCollectionOfClass:v11 containingClass:objc_opt_class() forKey:@"preferredGradientColors"];
  v13 = [(PRPosterDescriptorHomeScreenConfiguration *)self initWithPreferredStyle:v7 allowsModifyingLegibilityBlur:v8 preferredSolidColors:v10 preferredGradientColors:v12];

  return v13;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{-[PRPosterDescriptorHomeScreenConfiguration preferredStyle](self, "preferredStyle")}];
  [v5 encodeObject:v6 forKey:@"preferredStyle"];

  [v5 encodeBool:-[PRPosterDescriptorHomeScreenConfiguration allowsModifyingLegibilityBlur](self forKey:{"allowsModifyingLegibilityBlur"), @"allowsModifyingLegibilityBlur"}];
  v7 = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredSolidColors];
  [v5 encodeObject:v7 forKey:@"preferredSolidColors"];

  v8 = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredGradientColors];
  [v5 encodeObject:v8 forKey:@"preferredGradientColors"];
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v11 = a3;
  v4 = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredStyle];
  if (v4 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E7845FD8[v4];
  }

  [v11 appendString:v5 withName:@"preferredStyle"];
  v6 = [v11 appendBool:-[PRPosterDescriptorHomeScreenConfiguration allowsModifyingLegibilityBlur](self withName:{"allowsModifyingLegibilityBlur"), @"allowsModifyingLegibilityBlur"}];
  v7 = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredSolidColors];
  v8 = [v11 appendObject:v7 withName:@"preferredSolidColors"];

  v9 = [(PRPosterDescriptorHomeScreenConfiguration *)self preferredGradientColors];
  v10 = [v11 appendObject:v9 withName:@"preferredGradientColors"];
}

@end