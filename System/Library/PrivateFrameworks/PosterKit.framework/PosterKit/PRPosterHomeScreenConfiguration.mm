@interface PRPosterHomeScreenConfiguration
+ (PRPosterHomeScreenConfiguration)allocWithZone:(_NSZone *)zone;
+ (id)defaultHomeScreenConfigurationForProvider:(id)provider role:(id)role;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PRPosterHomeScreenAppearance)selectedAppearance;
- (PRPosterHomeScreenConfiguration)init;
- (PRPosterHomeScreenConfiguration)initWithBSXPCCoder:(id)coder;
- (PRPosterHomeScreenConfiguration)initWithCoder:(id)coder;
- (PRPosterHomeScreenConfiguration)initWithHomeScreenConfiguration:(id)configuration;
- (PRPosterHomeScreenConfiguration)initWithSelectedAppearanceType:(unint64_t)type lockPosterAppearance:(id)appearance solidColorAppearance:(id)colorAppearance gradientAppearance:(id)gradientAppearance homePosterAppearance:(id)posterAppearance customizationConfiguration:(id)configuration;
- (id)configurationApplyingColorPickerConfigurationsFromConfiguration:(id)configuration;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRPosterHomeScreenConfiguration

+ (id)defaultHomeScreenConfigurationForProvider:(id)provider role:(id)role
{
  providerCopy = provider;
  if (PFCurrentDeviceClass() == 1)
  {
    v6 = 0;
  }

  else if ([providerCopy isEqualToString:@"com.apple.EmojiPoster.EmojiPosterExtension"])
  {
    v6 = 1;
  }

  else
  {
    v6 = [providerCopy isEqualToString:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];
  }

  v7 = -[PRPosterLockPosterHomeScreenAppearance initWithLegibilityBlurEnabled:allowsModifyingLegibilityBlur:]([PRPosterLockPosterHomeScreenAppearance alloc], "initWithLegibilityBlurEnabled:allowsModifyingLegibilityBlur:", v6, [providerCopy isEqualToString:@"com.apple.GradientPoster.GradientPosterExtension"] ^ 1);
  v8 = [self alloc];
  v9 = objc_alloc_init(PRPosterSolidColorHomeScreenAppearance);
  v10 = objc_alloc_init(PRPosterGradientHomeScreenAppearance);
  v11 = objc_alloc_init(PRPosterHomePosterHomeScreenAppearance);
  v12 = objc_alloc_init(PRPosterHomeScreenCustomizationConfiguration);
  v13 = [v8 initWithSelectedAppearanceType:0 lockPosterAppearance:v7 solidColorAppearance:v9 gradientAppearance:v10 homePosterAppearance:v11 customizationConfiguration:v12];

  return v13;
}

+ (PRPosterHomeScreenConfiguration)allocWithZone:(_NSZone *)zone
{
  v5 = objc_opt_self();

  if (v5 == self)
  {

    return [(PRPosterHomeScreenConfiguration *)PRImmutableHomeScreenConfiguration allocWithZone:zone];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___PRPosterHomeScreenConfiguration;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
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

- (PRPosterHomeScreenConfiguration)initWithSelectedAppearanceType:(unint64_t)type lockPosterAppearance:(id)appearance solidColorAppearance:(id)colorAppearance gradientAppearance:(id)gradientAppearance homePosterAppearance:(id)posterAppearance customizationConfiguration:(id)configuration
{
  appearanceCopy = appearance;
  colorAppearanceCopy = colorAppearance;
  gradientAppearanceCopy = gradientAppearance;
  posterAppearanceCopy = posterAppearance;
  configurationCopy = configuration;
  if (appearanceCopy)
  {
    if (colorAppearanceCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRPosterHomeScreenConfiguration initWithSelectedAppearanceType:lockPosterAppearance:solidColorAppearance:gradientAppearance:homePosterAppearance:customizationConfiguration:];
    if (colorAppearanceCopy)
    {
LABEL_3:
      if (gradientAppearanceCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  [PRPosterHomeScreenConfiguration initWithSelectedAppearanceType:lockPosterAppearance:solidColorAppearance:gradientAppearance:homePosterAppearance:customizationConfiguration:];
  if (gradientAppearanceCopy)
  {
LABEL_4:
    if (posterAppearanceCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [PRPosterHomeScreenConfiguration initWithSelectedAppearanceType:lockPosterAppearance:solidColorAppearance:gradientAppearance:homePosterAppearance:customizationConfiguration:];
  if (posterAppearanceCopy)
  {
LABEL_5:
    if (configurationCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_14:
  [PRPosterHomeScreenConfiguration initWithSelectedAppearanceType:lockPosterAppearance:solidColorAppearance:gradientAppearance:homePosterAppearance:customizationConfiguration:];
  if (!configurationCopy)
  {
LABEL_6:
    configurationCopy = objc_opt_new();
  }

LABEL_7:
  v19 = objc_opt_self();
  v20 = [(PRPosterHomeScreenConfiguration *)self isMemberOfClass:v19];

  if (v20)
  {
    v21 = [[PRImmutableHomeScreenConfiguration alloc] initWithSelectedAppearanceType:type lockPosterAppearance:appearanceCopy solidColorAppearance:colorAppearanceCopy gradientAppearance:gradientAppearanceCopy homePosterAppearance:posterAppearanceCopy customizationConfiguration:configurationCopy];
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

- (PRPosterHomeScreenConfiguration)initWithHomeScreenConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selectedAppearanceType = [configurationCopy selectedAppearanceType];
  lockPosterAppearance = [configurationCopy lockPosterAppearance];
  solidColorAppearance = [configurationCopy solidColorAppearance];
  gradientAppearance = [configurationCopy gradientAppearance];
  homePosterAppearance = [configurationCopy homePosterAppearance];
  customizationConfiguration = [configurationCopy customizationConfiguration];

  v11 = [(PRPosterHomeScreenConfiguration *)self initWithSelectedAppearanceType:selectedAppearanceType lockPosterAppearance:lockPosterAppearance solidColorAppearance:solidColorAppearance gradientAppearance:gradientAppearance homePosterAppearance:homePosterAppearance customizationConfiguration:customizationConfiguration];
  return v11;
}

- (PRPosterHomeScreenAppearance)selectedAppearance
{
  selectedAppearanceType = [(PRPosterHomeScreenConfiguration *)self selectedAppearanceType];
  gradientAppearance = 0;
  if (selectedAppearanceType > 1)
  {
    if (selectedAppearanceType == 2)
    {
      gradientAppearance = [(PRPosterHomeScreenConfiguration *)self gradientAppearance];
    }

    else if (selectedAppearanceType == 3)
    {
      gradientAppearance = [(PRPosterHomeScreenConfiguration *)self homePosterAppearance];
    }
  }

  else if (selectedAppearanceType)
  {
    if (selectedAppearanceType == 1)
    {
      gradientAppearance = [(PRPosterHomeScreenConfiguration *)self solidColorAppearance];
    }
  }

  else
  {
    gradientAppearance = [(PRPosterHomeScreenConfiguration *)self lockPosterAppearance];
  }

  return gradientAppearance;
}

- (id)configurationApplyingColorPickerConfigurationsFromConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [(PRPosterHomeScreenConfiguration *)self mutableCopy];
  solidColorAppearance = [configurationCopy solidColorAppearance];
  solidColorAppearance2 = [(PRPosterHomeScreenConfiguration *)self solidColorAppearance];
  v8 = [PRPosterSolidColorHomeScreenAppearance alloc];
  color = [solidColorAppearance2 color];
  colorPickerConfiguration = [solidColorAppearance colorPickerConfiguration];
  v11 = [(PRPosterSolidColorHomeScreenAppearance *)v8 initWithColor:color colorPickerConfiguration:colorPickerConfiguration];

  [v5 setSolidColorAppearance:v11];
  gradientAppearance = [configurationCopy gradientAppearance];
  gradientAppearance2 = [(PRPosterHomeScreenConfiguration *)self gradientAppearance];
  v14 = [PRPosterGradientHomeScreenAppearance alloc];
  color2 = [gradientAppearance2 color];
  colorPickerConfiguration2 = [gradientAppearance colorPickerConfiguration];
  v17 = [(PRPosterGradientHomeScreenAppearance *)v14 initWithColor:color2 colorPickerConfiguration:colorPickerConfiguration2];

  [v5 setGradientAppearance:v17];
  customizationConfiguration = [configurationCopy customizationConfiguration];

  if (customizationConfiguration)
  {
    [v5 setCustomizationConfiguration:customizationConfiguration];
  }

  else
  {
    v19 = objc_opt_new();
    [v5 setCustomizationConfiguration:v19];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v23 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      selectedAppearanceType = [(PRPosterHomeScreenConfiguration *)self selectedAppearanceType];
      if (selectedAppearanceType == [(PRPosterHomeScreenConfiguration *)v7 selectedAppearanceType]&& ([(PRPosterHomeScreenConfiguration *)self lockPosterAppearance], v9 = objc_claimAutoreleasedReturnValue(), [(PRPosterHomeScreenConfiguration *)v7 lockPosterAppearance], v10 = objc_claimAutoreleasedReturnValue(), v11 = BSEqualObjects(), v10, v9, v11) && ([(PRPosterHomeScreenConfiguration *)self solidColorAppearance], v12 = objc_claimAutoreleasedReturnValue(), [(PRPosterHomeScreenConfiguration *)v7 solidColorAppearance], v13 = objc_claimAutoreleasedReturnValue(), v14 = BSEqualObjects(), v13, v12, v14) && ([(PRPosterHomeScreenConfiguration *)self gradientAppearance], v15 = objc_claimAutoreleasedReturnValue(), [(PRPosterHomeScreenConfiguration *)v7 gradientAppearance], v16 = objc_claimAutoreleasedReturnValue(), v17 = BSEqualObjects(), v16, v15, v17) && ([(PRPosterHomeScreenConfiguration *)self homePosterAppearance], v18 = objc_claimAutoreleasedReturnValue(), [(PRPosterHomeScreenConfiguration *)v7 homePosterAppearance], v19 = objc_claimAutoreleasedReturnValue(), v20 = BSEqualObjects(), v19, v18, v20))
      {
        customizationConfiguration = [(PRPosterHomeScreenConfiguration *)self customizationConfiguration];
        customizationConfiguration2 = [(PRPosterHomeScreenConfiguration *)v7 customizationConfiguration];
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
  selectedAppearanceType = [(PRPosterHomeScreenConfiguration *)self selectedAppearanceType];
  lockPosterAppearance = [(PRPosterHomeScreenConfiguration *)self lockPosterAppearance];
  v5 = [lockPosterAppearance hash] ^ selectedAppearanceType;
  solidColorAppearance = [(PRPosterHomeScreenConfiguration *)self solidColorAppearance];
  v7 = [solidColorAppearance hash];
  gradientAppearance = [(PRPosterHomeScreenConfiguration *)self gradientAppearance];
  v9 = v5 ^ v7 ^ [gradientAppearance hash];
  homePosterAppearance = [(PRPosterHomeScreenConfiguration *)self homePosterAppearance];
  v11 = [homePosterAppearance hash];
  customizationConfiguration = [(PRPosterHomeScreenConfiguration *)self customizationConfiguration];
  v13 = v11 ^ [customizationConfiguration hash];

  return v9 ^ v13;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __46__PRPosterHomeScreenConfiguration_description__block_invoke;
  v10 = &unk_1E7843070;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(PRPosterHomeScreenConfiguration *)PRMutablePosterHomeScreenConfiguration allocWithZone:zone];

  return [(PRPosterHomeScreenConfiguration *)v4 initWithHomeScreenConfiguration:self];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[PRPosterHomeScreenConfiguration selectedAppearanceType](self forKey:{"selectedAppearanceType"), @"selectedAppearanceType"}];
  lockPosterAppearance = [(PRPosterHomeScreenConfiguration *)self lockPosterAppearance];
  [coderCopy encodeObject:lockPosterAppearance forKey:@"lockPosterAppearance"];

  solidColorAppearance = [(PRPosterHomeScreenConfiguration *)self solidColorAppearance];
  [coderCopy encodeObject:solidColorAppearance forKey:@"solidColorAppearance"];

  gradientAppearance = [(PRPosterHomeScreenConfiguration *)self gradientAppearance];
  [coderCopy encodeObject:gradientAppearance forKey:@"gradientAppearance"];

  homePosterAppearance = [(PRPosterHomeScreenConfiguration *)self homePosterAppearance];
  [coderCopy encodeObject:homePosterAppearance forKey:@"homePosterAppearance"];

  customizationConfiguration = [(PRPosterHomeScreenConfiguration *)self customizationConfiguration];
  [coderCopy encodeObject:customizationConfiguration forKey:@"customizationConfiguration"];
}

- (PRPosterHomeScreenConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeIntegerForKey:@"selectedAppearanceType"];
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"lockPosterAppearance"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"solidColorAppearance"];

  v9 = objc_opt_self();
  v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"gradientAppearance"];

  v11 = objc_opt_self();
  v12 = [coderCopy decodeObjectOfClass:v11 forKey:@"homePosterAppearance"];

  v13 = objc_opt_self();
  v14 = [coderCopy decodeObjectOfClass:v13 forKey:@"customizationConfiguration"];

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

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeUInt64:-[PRPosterHomeScreenConfiguration selectedAppearanceType](self forKey:{"selectedAppearanceType"), @"selectedAppearanceType"}];
  lockPosterAppearance = [(PRPosterHomeScreenConfiguration *)self lockPosterAppearance];
  [coderCopy encodeObject:lockPosterAppearance forKey:@"lockPosterAppearance"];

  solidColorAppearance = [(PRPosterHomeScreenConfiguration *)self solidColorAppearance];
  [coderCopy encodeObject:solidColorAppearance forKey:@"solidColorAppearance"];

  gradientAppearance = [(PRPosterHomeScreenConfiguration *)self gradientAppearance];
  [coderCopy encodeObject:gradientAppearance forKey:@"gradientAppearance"];

  homePosterAppearance = [(PRPosterHomeScreenConfiguration *)self homePosterAppearance];
  [coderCopy encodeObject:homePosterAppearance forKey:@"homePosterAppearance"];

  customizationConfiguration = [(PRPosterHomeScreenConfiguration *)self customizationConfiguration];
  [coderCopy encodeObject:customizationConfiguration forKey:@"customizationConfiguration"];
}

- (PRPosterHomeScreenConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeUInt64ForKey:@"selectedAppearanceType"];
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"lockPosterAppearance"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"solidColorAppearance"];

  v9 = objc_opt_self();
  v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"gradientAppearance"];

  v11 = objc_opt_self();
  v12 = [coderCopy decodeObjectOfClass:v11 forKey:@"homePosterAppearance"];

  v13 = objc_opt_self();
  v14 = [coderCopy decodeObjectOfClass:v13 forKey:@"customizationConfiguration"];

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

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  selectedAppearanceType = [(PRPosterHomeScreenConfiguration *)self selectedAppearanceType];
  if (selectedAppearanceType > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E78461B8[selectedAppearanceType];
  }

  [formatterCopy appendString:v5 withName:@"selectedAppearanceType"];
  lockPosterAppearance = [(PRPosterHomeScreenConfiguration *)self lockPosterAppearance];
  v7 = [formatterCopy appendObject:lockPosterAppearance withName:@"lockPosterAppearance"];

  solidColorAppearance = [(PRPosterHomeScreenConfiguration *)self solidColorAppearance];
  v9 = [formatterCopy appendObject:solidColorAppearance withName:@"solidColorAppearance"];

  gradientAppearance = [(PRPosterHomeScreenConfiguration *)self gradientAppearance];
  v11 = [formatterCopy appendObject:gradientAppearance withName:@"gradientAppearance"];

  homePosterAppearance = [(PRPosterHomeScreenConfiguration *)self homePosterAppearance];
  v13 = [formatterCopy appendObject:homePosterAppearance withName:@"homePosterAppearance"];

  customizationConfiguration = [(PRPosterHomeScreenConfiguration *)self customizationConfiguration];
  v15 = [formatterCopy appendObject:customizationConfiguration withName:@"customizationConfiguration" skipIfNil:1];
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