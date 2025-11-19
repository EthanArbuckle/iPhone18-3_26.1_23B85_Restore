@interface PRPosterHomeScreenConfiguration
+ (PRPosterHomeScreenConfiguration)allocWithZone:(_NSZone *)a3;
+ (id)defaultHomeScreenConfigurationForProvider:(id)a3 role:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PRPosterHomeScreenAppearance)selectedAppearance;
- (PRPosterHomeScreenConfiguration)init;
- (PRPosterHomeScreenConfiguration)initWithBSXPCCoder:(id)a3;
- (PRPosterHomeScreenConfiguration)initWithCoder:(id)a3;
- (PRPosterHomeScreenConfiguration)initWithHomeScreenConfiguration:(id)a3;
- (PRPosterHomeScreenConfiguration)initWithSelectedAppearanceType:(unint64_t)a3 lockPosterAppearance:(id)a4 solidColorAppearance:(id)a5 gradientAppearance:(id)a6 homePosterAppearance:(id)a7 customizationConfiguration:(id)a8;
- (id)configurationApplyingColorPickerConfigurationsFromConfiguration:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRPosterHomeScreenConfiguration

+ (id)defaultHomeScreenConfigurationForProvider:(id)a3 role:(id)a4
{
  v5 = a3;
  if (PFCurrentDeviceClass() == 1)
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:@"com.apple.EmojiPoster.EmojiPosterExtension"])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 isEqualToString:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];
  }

  v7 = -[PRPosterLockPosterHomeScreenAppearance initWithLegibilityBlurEnabled:allowsModifyingLegibilityBlur:]([PRPosterLockPosterHomeScreenAppearance alloc], "initWithLegibilityBlurEnabled:allowsModifyingLegibilityBlur:", v6, [v5 isEqualToString:@"com.apple.GradientPoster.GradientPosterExtension"] ^ 1);
  v8 = [a1 alloc];
  v9 = objc_alloc_init(PRPosterSolidColorHomeScreenAppearance);
  v10 = objc_alloc_init(PRPosterGradientHomeScreenAppearance);
  v11 = objc_alloc_init(PRPosterHomePosterHomeScreenAppearance);
  v12 = objc_alloc_init(PRPosterHomeScreenCustomizationConfiguration);
  v13 = [v8 initWithSelectedAppearanceType:0 lockPosterAppearance:v7 solidColorAppearance:v9 gradientAppearance:v10 homePosterAppearance:v11 customizationConfiguration:v12];

  return v13;
}

+ (PRPosterHomeScreenConfiguration)allocWithZone:(_NSZone *)a3
{
  v5 = objc_opt_self();

  if (v5 == a1)
  {

    return [(PRPosterHomeScreenConfiguration *)PRImmutableHomeScreenConfiguration allocWithZone:a3];
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___PRPosterHomeScreenConfiguration;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
  }
}

- (PRPosterHomeScreenConfiguration)init
{
  v3 = objc_alloc_init(PRPosterLockPosterHomeScreenAppearance);
  v4 = objc_alloc_init(PRPosterSolidColorHomeScreenAppearance);
  v5 = objc_alloc_init(PRPosterGradientHomeScreenAppearance);
  v6 = objc_alloc_init(PRPosterHomePosterHomeScreenAppearance);
  v7 = objc_alloc_init(PRPosterHomeScreenCustomizationConfiguration);
  v8 = [(PRPosterHomeScreenConfiguration *)self initWithSelectedAppearanceType:0 lockPosterAppearance:v3 solidColorAppearance:v4 gradientAppearance:v5 homePosterAppearance:v6 customizationConfiguration:v7];

  return v8;
}

- (PRPosterHomeScreenConfiguration)initWithSelectedAppearanceType:(unint64_t)a3 lockPosterAppearance:(id)a4 solidColorAppearance:(id)a5 gradientAppearance:(id)a6 homePosterAppearance:(id)a7 customizationConfiguration:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRPosterHomeScreenConfiguration initWithSelectedAppearanceType:lockPosterAppearance:solidColorAppearance:gradientAppearance:homePosterAppearance:customizationConfiguration:];
    if (v15)
    {
LABEL_3:
      if (v16)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  [PRPosterHomeScreenConfiguration initWithSelectedAppearanceType:lockPosterAppearance:solidColorAppearance:gradientAppearance:homePosterAppearance:customizationConfiguration:];
  if (v16)
  {
LABEL_4:
    if (v17)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [PRPosterHomeScreenConfiguration initWithSelectedAppearanceType:lockPosterAppearance:solidColorAppearance:gradientAppearance:homePosterAppearance:customizationConfiguration:];
  if (v17)
  {
LABEL_5:
    if (v18)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_14:
  [PRPosterHomeScreenConfiguration initWithSelectedAppearanceType:lockPosterAppearance:solidColorAppearance:gradientAppearance:homePosterAppearance:customizationConfiguration:];
  if (!v18)
  {
LABEL_6:
    v18 = objc_opt_new();
  }

LABEL_7:
  v19 = objc_opt_self();
  v20 = [(PRPosterHomeScreenConfiguration *)self isMemberOfClass:v19];

  if (v20)
  {
    v21 = [[PRImmutableHomeScreenConfiguration alloc] initWithSelectedAppearanceType:a3 lockPosterAppearance:v14 solidColorAppearance:v15 gradientAppearance:v16 homePosterAppearance:v17 customizationConfiguration:v18];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = PRPosterHomeScreenConfiguration;
    v21 = [(PRPosterHomeScreenConfiguration *)&v24 init];
    self = &v21->super;
  }

  p_super = &v21->super;

  return p_super;
}

- (PRPosterHomeScreenConfiguration)initWithHomeScreenConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 selectedAppearanceType];
  v6 = [v4 lockPosterAppearance];
  v7 = [v4 solidColorAppearance];
  v8 = [v4 gradientAppearance];
  v9 = [v4 homePosterAppearance];
  v10 = [v4 customizationConfiguration];

  v11 = [(PRPosterHomeScreenConfiguration *)self initWithSelectedAppearanceType:v5 lockPosterAppearance:v6 solidColorAppearance:v7 gradientAppearance:v8 homePosterAppearance:v9 customizationConfiguration:v10];
  return v11;
}

- (PRPosterHomeScreenAppearance)selectedAppearance
{
  v3 = [(PRPosterHomeScreenConfiguration *)self selectedAppearanceType];
  v4 = 0;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = [(PRPosterHomeScreenConfiguration *)self gradientAppearance];
    }

    else if (v3 == 3)
    {
      v4 = [(PRPosterHomeScreenConfiguration *)self homePosterAppearance];
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      v4 = [(PRPosterHomeScreenConfiguration *)self solidColorAppearance];
    }
  }

  else
  {
    v4 = [(PRPosterHomeScreenConfiguration *)self lockPosterAppearance];
  }

  return v4;
}

- (id)configurationApplyingColorPickerConfigurationsFromConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterHomeScreenConfiguration *)self mutableCopy];
  v6 = [v4 solidColorAppearance];
  v7 = [(PRPosterHomeScreenConfiguration *)self solidColorAppearance];
  v8 = [PRPosterSolidColorHomeScreenAppearance alloc];
  v9 = [v7 color];
  v10 = [v6 colorPickerConfiguration];
  v11 = [(PRPosterSolidColorHomeScreenAppearance *)v8 initWithColor:v9 colorPickerConfiguration:v10];

  [v5 setSolidColorAppearance:v11];
  v12 = [v4 gradientAppearance];
  v13 = [(PRPosterHomeScreenConfiguration *)self gradientAppearance];
  v14 = [PRPosterGradientHomeScreenAppearance alloc];
  v15 = [v13 color];
  v16 = [v12 colorPickerConfiguration];
  v17 = [(PRPosterGradientHomeScreenAppearance *)v14 initWithColor:v15 colorPickerConfiguration:v16];

  [v5 setGradientAppearance:v17];
  v18 = [v4 customizationConfiguration];

  if (v18)
  {
    [v5 setCustomizationConfiguration:v18];
  }

  else
  {
    v19 = objc_opt_new();
    [v5 setCustomizationConfiguration:v19];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v23 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(PRPosterHomeScreenConfiguration *)self selectedAppearanceType];
      if (v8 == [(PRPosterHomeScreenConfiguration *)v7 selectedAppearanceType]&& ([(PRPosterHomeScreenConfiguration *)self lockPosterAppearance], v9 = objc_claimAutoreleasedReturnValue(), [(PRPosterHomeScreenConfiguration *)v7 lockPosterAppearance], v10 = objc_claimAutoreleasedReturnValue(), v11 = BSEqualObjects(), v10, v9, v11) && ([(PRPosterHomeScreenConfiguration *)self solidColorAppearance], v12 = objc_claimAutoreleasedReturnValue(), [(PRPosterHomeScreenConfiguration *)v7 solidColorAppearance], v13 = objc_claimAutoreleasedReturnValue(), v14 = BSEqualObjects(), v13, v12, v14) && ([(PRPosterHomeScreenConfiguration *)self gradientAppearance], v15 = objc_claimAutoreleasedReturnValue(), [(PRPosterHomeScreenConfiguration *)v7 gradientAppearance], v16 = objc_claimAutoreleasedReturnValue(), v17 = BSEqualObjects(), v16, v15, v17) && ([(PRPosterHomeScreenConfiguration *)self homePosterAppearance], v18 = objc_claimAutoreleasedReturnValue(), [(PRPosterHomeScreenConfiguration *)v7 homePosterAppearance], v19 = objc_claimAutoreleasedReturnValue(), v20 = BSEqualObjects(), v19, v18, v20))
      {
        v21 = [(PRPosterHomeScreenConfiguration *)self customizationConfiguration];
        v22 = [(PRPosterHomeScreenConfiguration *)v7 customizationConfiguration];
        v23 = BSEqualObjects();
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (unint64_t)hash
{
  v3 = [(PRPosterHomeScreenConfiguration *)self selectedAppearanceType];
  v4 = [(PRPosterHomeScreenConfiguration *)self lockPosterAppearance];
  v5 = [v4 hash] ^ v3;
  v6 = [(PRPosterHomeScreenConfiguration *)self solidColorAppearance];
  v7 = [v6 hash];
  v8 = [(PRPosterHomeScreenConfiguration *)self gradientAppearance];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [(PRPosterHomeScreenConfiguration *)self homePosterAppearance];
  v11 = [v10 hash];
  v12 = [(PRPosterHomeScreenConfiguration *)self customizationConfiguration];
  v13 = v11 ^ [v12 hash];

  return v9 ^ v13;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __46__PRPosterHomeScreenConfiguration_description__block_invoke;
  v10 = &unk_1E7843070;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(PRPosterHomeScreenConfiguration *)PRMutablePosterHomeScreenConfiguration allocWithZone:a3];

  return [(PRPosterHomeScreenConfiguration *)v4 initWithHomeScreenConfiguration:self];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[PRPosterHomeScreenConfiguration selectedAppearanceType](self forKey:{"selectedAppearanceType"), @"selectedAppearanceType"}];
  v5 = [(PRPosterHomeScreenConfiguration *)self lockPosterAppearance];
  [v4 encodeObject:v5 forKey:@"lockPosterAppearance"];

  v6 = [(PRPosterHomeScreenConfiguration *)self solidColorAppearance];
  [v4 encodeObject:v6 forKey:@"solidColorAppearance"];

  v7 = [(PRPosterHomeScreenConfiguration *)self gradientAppearance];
  [v4 encodeObject:v7 forKey:@"gradientAppearance"];

  v8 = [(PRPosterHomeScreenConfiguration *)self homePosterAppearance];
  [v4 encodeObject:v8 forKey:@"homePosterAppearance"];

  v9 = [(PRPosterHomeScreenConfiguration *)self customizationConfiguration];
  [v4 encodeObject:v9 forKey:@"customizationConfiguration"];
}

- (PRPosterHomeScreenConfiguration)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeIntegerForKey:@"selectedAppearanceType"];
  v5 = objc_opt_self();
  v6 = [v3 decodeObjectOfClass:v5 forKey:@"lockPosterAppearance"];

  v7 = objc_opt_self();
  v8 = [v3 decodeObjectOfClass:v7 forKey:@"solidColorAppearance"];

  v9 = objc_opt_self();
  v10 = [v3 decodeObjectOfClass:v9 forKey:@"gradientAppearance"];

  v11 = objc_opt_self();
  v12 = [v3 decodeObjectOfClass:v11 forKey:@"homePosterAppearance"];

  v13 = objc_opt_self();
  v14 = [v3 decodeObjectOfClass:v13 forKey:@"customizationConfiguration"];

  if (v6)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = objc_alloc_init(PRPosterLockPosterHomeScreenAppearance);
    if (v8)
    {
LABEL_3:
      if (v10)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v8 = objc_alloc_init(PRPosterSolidColorHomeScreenAppearance);
  if (v10)
  {
LABEL_4:
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_13:
    v12 = objc_alloc_init(PRPosterHomePosterHomeScreenAppearance);
    if (v14)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_12:
  v10 = objc_alloc_init(PRPosterGradientHomeScreenAppearance);
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v14)
  {
    goto LABEL_6;
  }

LABEL_14:
  v14 = objc_alloc_init(PRPosterHomeScreenCustomizationConfiguration);
LABEL_6:
  if (v4 >= 4)
  {
    v15 = 0;
  }

  else
  {
    v15 = v4;
  }

  v16 = [(PRPosterHomeScreenConfiguration *)self initWithSelectedAppearanceType:v15 lockPosterAppearance:v6 solidColorAppearance:v8 gradientAppearance:v10 homePosterAppearance:v12 customizationConfiguration:v14];

  return v16;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  [v4 encodeUInt64:-[PRPosterHomeScreenConfiguration selectedAppearanceType](self forKey:{"selectedAppearanceType"), @"selectedAppearanceType"}];
  v5 = [(PRPosterHomeScreenConfiguration *)self lockPosterAppearance];
  [v4 encodeObject:v5 forKey:@"lockPosterAppearance"];

  v6 = [(PRPosterHomeScreenConfiguration *)self solidColorAppearance];
  [v4 encodeObject:v6 forKey:@"solidColorAppearance"];

  v7 = [(PRPosterHomeScreenConfiguration *)self gradientAppearance];
  [v4 encodeObject:v7 forKey:@"gradientAppearance"];

  v8 = [(PRPosterHomeScreenConfiguration *)self homePosterAppearance];
  [v4 encodeObject:v8 forKey:@"homePosterAppearance"];

  v9 = [(PRPosterHomeScreenConfiguration *)self customizationConfiguration];
  [v4 encodeObject:v9 forKey:@"customizationConfiguration"];
}

- (PRPosterHomeScreenConfiguration)initWithBSXPCCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeUInt64ForKey:@"selectedAppearanceType"];
  v5 = objc_opt_self();
  v6 = [v3 decodeObjectOfClass:v5 forKey:@"lockPosterAppearance"];

  v7 = objc_opt_self();
  v8 = [v3 decodeObjectOfClass:v7 forKey:@"solidColorAppearance"];

  v9 = objc_opt_self();
  v10 = [v3 decodeObjectOfClass:v9 forKey:@"gradientAppearance"];

  v11 = objc_opt_self();
  v12 = [v3 decodeObjectOfClass:v11 forKey:@"homePosterAppearance"];

  v13 = objc_opt_self();
  v14 = [v3 decodeObjectOfClass:v13 forKey:@"customizationConfiguration"];

  if (v6)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = objc_alloc_init(PRPosterLockPosterHomeScreenAppearance);
    if (v8)
    {
LABEL_3:
      if (v10)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v8 = objc_alloc_init(PRPosterSolidColorHomeScreenAppearance);
  if (v10)
  {
LABEL_4:
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_13:
    v12 = objc_alloc_init(PRPosterHomePosterHomeScreenAppearance);
    if (v14)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_12:
  v10 = objc_alloc_init(PRPosterGradientHomeScreenAppearance);
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v14)
  {
    goto LABEL_6;
  }

LABEL_14:
  v14 = objc_alloc_init(PRPosterHomeScreenCustomizationConfiguration);
LABEL_6:
  if (v4 >= 4)
  {
    v15 = 0;
  }

  else
  {
    v15 = v4;
  }

  v16 = [(PRPosterHomeScreenConfiguration *)self initWithSelectedAppearanceType:v15 lockPosterAppearance:v6 solidColorAppearance:v8 gradientAppearance:v10 homePosterAppearance:v12 customizationConfiguration:v14];

  return v16;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v16 = a3;
  v4 = [(PRPosterHomeScreenConfiguration *)self selectedAppearanceType];
  if (v4 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E78461B8[v4];
  }

  [v16 appendString:v5 withName:@"selectedAppearanceType"];
  v6 = [(PRPosterHomeScreenConfiguration *)self lockPosterAppearance];
  v7 = [v16 appendObject:v6 withName:@"lockPosterAppearance"];

  v8 = [(PRPosterHomeScreenConfiguration *)self solidColorAppearance];
  v9 = [v16 appendObject:v8 withName:@"solidColorAppearance"];

  v10 = [(PRPosterHomeScreenConfiguration *)self gradientAppearance];
  v11 = [v16 appendObject:v10 withName:@"gradientAppearance"];

  v12 = [(PRPosterHomeScreenConfiguration *)self homePosterAppearance];
  v13 = [v16 appendObject:v12 withName:@"homePosterAppearance"];

  v14 = [(PRPosterHomeScreenConfiguration *)self customizationConfiguration];
  v15 = [v16 appendObject:v14 withName:@"customizationConfiguration" skipIfNil:1];
}

- (void)initWithSelectedAppearanceType:lockPosterAppearance:solidColorAppearance:gradientAppearance:homePosterAppearance:customizationConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"lockPosterAppearance != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithSelectedAppearanceType:lockPosterAppearance:solidColorAppearance:gradientAppearance:homePosterAppearance:customizationConfiguration:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"solidColorAppearance != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithSelectedAppearanceType:lockPosterAppearance:solidColorAppearance:gradientAppearance:homePosterAppearance:customizationConfiguration:.cold.3()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"gradientAppearance != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithSelectedAppearanceType:lockPosterAppearance:solidColorAppearance:gradientAppearance:homePosterAppearance:customizationConfiguration:.cold.4()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"homePosterAppearance != nil" object:? file:? lineNumber:? description:?];
}

@end