@interface SBHIconImageStyleConfiguration
+ (SBHIconImageStyleConfiguration)allocWithZone:(_NSZone *)zone;
+ (SBHIconImageStyleConfiguration)clearAutomaticStyleConfiguration;
+ (SBHIconImageStyleConfiguration)clearDarkStyleConfiguration;
+ (SBHIconImageStyleConfiguration)clearLightStyleConfiguration;
+ (SBHIconImageStyleConfiguration)colorAutomaticStyleConfiguration;
+ (SBHIconImageStyleConfiguration)colorDarkStyleConfiguration;
+ (SBHIconImageStyleConfiguration)colorLightStyleConfiguration;
+ (SBHIconImageStyleConfiguration)styleConfigurationWithHomeScreenConfiguration:(id)configuration;
+ (SBHIconImageStyleConfiguration)styleConfigurationWithIconImageAppearance:(id)appearance;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (PUIStylePickerHomeScreenConfiguration)homeScreenConfiguration;
- (SBHIconImageStyleConfiguration)initWithBSXPCCoder:(id)coder;
- (SBHIconImageStyleConfiguration)initWithCoder:(id)coder;
- (SBHIconImageStyleConfiguration)initWithConfigurationType:(int64_t)type variant:(int64_t)variant tintColor:(id)color;
- (SBHIconImageStyleConfiguration)styleConfigurationWithTintColor:(id)color;
- (SBSHomeScreenIconStyleConfiguration)homeScreenIconStyleConfiguration;
- (UIColor)opaqueTintColor;
- (id)appearanceForIcon:(id)icon userInterfaceStyle:(int64_t)style;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)iconImageAppearanceWithUserInterfaceStyle:(int64_t)style;
- (id)succinctDescription;
- (id)widgetAppearanceWithUserInterfaceStyle:(int64_t)style;
- (int64_t)dockGlassUserInterfaceStyle;
- (int64_t)iconGlassUserInterfaceStyle;
- (int64_t)sbsHomeScreenIconStyleConfigurationType;
- (int64_t)sbsHomeScreenIconStyleConfigurationVariant;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBHIconImageStyleConfiguration

+ (SBHIconImageStyleConfiguration)colorLightStyleConfiguration
{
  if (colorLightStyleConfiguration_onceToken != -1)
  {
    +[SBHIconImageStyleConfiguration colorLightStyleConfiguration];
  }

  v3 = colorLightStyleConfiguration_styleConfiguration;

  return v3;
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {
    reusablePlaceholderStyleConfiguration = [SBHPlaceholderIconImageStyleConfiguration alloc];

    MEMORY[0x1EEE66BB8]();
  }
}

uint64_t __62__SBHIconImageStyleConfiguration_colorLightStyleConfiguration__block_invoke()
{
  v0 = [(SBHIconImageStyleConfiguration *)[SBHColorIconImageStyleConfiguration alloc] initWithConfigurationType:0 variant:3];
  v1 = colorLightStyleConfiguration_styleConfiguration;
  colorLightStyleConfiguration_styleConfiguration = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (SBHIconImageStyleConfiguration)colorDarkStyleConfiguration
{
  if (colorDarkStyleConfiguration_onceToken != -1)
  {
    +[SBHIconImageStyleConfiguration colorDarkStyleConfiguration];
  }

  v3 = colorDarkStyleConfiguration_styleConfiguration;

  return v3;
}

uint64_t __61__SBHIconImageStyleConfiguration_colorDarkStyleConfiguration__block_invoke()
{
  v0 = [(SBHIconImageStyleConfiguration *)[SBHColorIconImageStyleConfiguration alloc] initWithConfigurationType:0 variant:1];
  v1 = colorDarkStyleConfiguration_styleConfiguration;
  colorDarkStyleConfiguration_styleConfiguration = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (SBHIconImageStyleConfiguration)colorAutomaticStyleConfiguration
{
  if (colorAutomaticStyleConfiguration_onceToken != -1)
  {
    +[SBHIconImageStyleConfiguration colorAutomaticStyleConfiguration];
  }

  v3 = colorAutomaticStyleConfiguration_styleConfiguration;

  return v3;
}

uint64_t __66__SBHIconImageStyleConfiguration_colorAutomaticStyleConfiguration__block_invoke()
{
  v0 = [(SBHIconImageStyleConfiguration *)[SBHColorIconImageStyleConfiguration alloc] initWithConfigurationType:0 variant:2];
  v1 = colorAutomaticStyleConfiguration_styleConfiguration;
  colorAutomaticStyleConfiguration_styleConfiguration = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (SBHIconImageStyleConfiguration)clearLightStyleConfiguration
{
  if (clearLightStyleConfiguration_onceToken != -1)
  {
    +[SBHIconImageStyleConfiguration clearLightStyleConfiguration];
  }

  v3 = clearLightStyleConfiguration_styleConfiguration;

  return v3;
}

uint64_t __62__SBHIconImageStyleConfiguration_clearLightStyleConfiguration__block_invoke()
{
  v0 = [(SBHIconImageStyleConfiguration *)[SBHClearIconImageStyleConfiguration alloc] initWithConfigurationType:1 variant:0];
  v1 = clearLightStyleConfiguration_styleConfiguration;
  clearLightStyleConfiguration_styleConfiguration = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (SBHIconImageStyleConfiguration)clearDarkStyleConfiguration
{
  if (clearDarkStyleConfiguration_onceToken != -1)
  {
    +[SBHIconImageStyleConfiguration clearDarkStyleConfiguration];
  }

  v3 = clearDarkStyleConfiguration_styleConfiguration;

  return v3;
}

uint64_t __61__SBHIconImageStyleConfiguration_clearDarkStyleConfiguration__block_invoke()
{
  v0 = [(SBHIconImageStyleConfiguration *)[SBHClearIconImageStyleConfiguration alloc] initWithConfigurationType:1 variant:1];
  v1 = clearDarkStyleConfiguration_styleConfiguration;
  clearDarkStyleConfiguration_styleConfiguration = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (SBHIconImageStyleConfiguration)clearAutomaticStyleConfiguration
{
  if (clearAutomaticStyleConfiguration_onceToken != -1)
  {
    +[SBHIconImageStyleConfiguration clearAutomaticStyleConfiguration];
  }

  v3 = clearAutomaticStyleConfiguration_styleConfiguration;

  return v3;
}

uint64_t __66__SBHIconImageStyleConfiguration_clearAutomaticStyleConfiguration__block_invoke()
{
  v0 = [(SBHIconImageStyleConfiguration *)[SBHClearIconImageStyleConfiguration alloc] initWithConfigurationType:1 variant:2];
  v1 = clearAutomaticStyleConfiguration_styleConfiguration;
  clearAutomaticStyleConfiguration_styleConfiguration = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (SBHIconImageStyleConfiguration)allocWithZone:(_NSZone *)zone
{
  v5 = objc_opt_self();

  if (v5 == self)
  {
    v7 = reusablePlaceholderStyleConfiguration;

    return v7;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___SBHIconImageStyleConfiguration;
    return objc_msgSendSuper2(&v8, sel_allocWithZone_, zone);
  }
}

- (SBHIconImageStyleConfiguration)initWithConfigurationType:(int64_t)type variant:(int64_t)variant tintColor:(id)color
{
  colorCopy = color;
  v9 = objc_opt_self();
  if ([(SBHIconImageStyleConfiguration *)self isMemberOfClass:v9])
  {
  }

  else
  {
    v10 = objc_opt_self();
    v11 = [(SBHIconImageStyleConfiguration *)self isMemberOfClass:v10];

    if (!v11)
    {
      v19.receiver = self;
      v19.super_class = SBHIconImageStyleConfiguration;
      v13 = [(SBHIconImageStyleConfiguration *)&v19 init];
      if (v13)
      {
        v13->_variant = variant;
      }

      v12 = v13;
      self = v12;
      goto LABEL_31;
    }
  }

  if (type == 2)
  {
    v14 = [SBHTintedIconImageStyleConfiguration alloc];
    v15 = 2;
    variantCopy = variant;
    v17 = colorCopy;
LABEL_30:
    v12 = [(SBHTintedIconImageStyleConfiguration *)v14 initWithConfigurationType:v15 variant:variantCopy tintColor:v17];
    goto LABEL_31;
  }

  if (type != 1)
  {
    if (type)
    {
      type = 0;
      goto LABEL_32;
    }

    if (variant > 1)
    {
      if (variant == 2)
      {
        v12 = +[SBHIconImageStyleConfiguration colorAutomaticStyleConfiguration];
        goto LABEL_31;
      }

      if (variant == 3)
      {
        v12 = +[SBHIconImageStyleConfiguration colorLightStyleConfiguration];
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (variant)
    {
      if (variant == 1)
      {
        v12 = +[SBHIconImageStyleConfiguration colorDarkStyleConfiguration];
LABEL_31:
        type = v12;
        goto LABEL_32;
      }

      goto LABEL_32;
    }

    v14 = [SBHColorIconImageStyleConfiguration alloc];
    v15 = 0;
    variantCopy = 0;
    goto LABEL_29;
  }

  type = 0;
  if (variant > 1)
  {
    if (variant == 2)
    {
      v12 = +[SBHIconImageStyleConfiguration clearAutomaticStyleConfiguration];
      goto LABEL_31;
    }

    if (variant != 3)
    {
      goto LABEL_32;
    }

    v14 = [SBHClearIconImageStyleConfiguration alloc];
    v15 = 1;
    variantCopy = 3;
LABEL_29:
    v17 = 0;
    goto LABEL_30;
  }

  if (!variant)
  {
    v12 = +[SBHIconImageStyleConfiguration clearLightStyleConfiguration];
    goto LABEL_31;
  }

  if (variant == 1)
  {
    v12 = +[SBHIconImageStyleConfiguration clearDarkStyleConfiguration];
    goto LABEL_31;
  }

LABEL_32:

  return type;
}

+ (SBHIconImageStyleConfiguration)styleConfigurationWithIconImageAppearance:(id)appearance
{
  appearanceCopy = appearance;
  appearanceType = [appearanceCopy appearanceType];
  v6 = 0;
  if (appearanceType <= 2)
  {
    if (!appearanceType)
    {
      colorLightStyleConfiguration = [self colorLightStyleConfiguration];
      goto LABEL_14;
    }

    if (appearanceType != 1)
    {
      if (appearanceType != 2)
      {
        goto LABEL_17;
      }

      colorLightStyleConfiguration = [self clearLightStyleConfiguration];
      goto LABEL_14;
    }

LABEL_11:
    colorLightStyleConfiguration = [self colorDarkStyleConfiguration];
LABEL_14:
    v6 = colorLightStyleConfiguration;
    goto LABEL_17;
  }

  if (appearanceType > 4)
  {
    if (appearanceType == 5)
    {
      v12 = [SBHTintedIconImageStyleConfiguration alloc];
      tintColor = [appearanceCopy tintColor];
      v9 = v12;
      v10 = 1;
      goto LABEL_16;
    }

    if (appearanceType != 6)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (appearanceType == 3)
  {
    colorLightStyleConfiguration = [self clearDarkStyleConfiguration];
    goto LABEL_14;
  }

  v7 = [SBHTintedIconImageStyleConfiguration alloc];
  tintColor = [appearanceCopy tintColor];
  v9 = v7;
  v10 = 0;
LABEL_16:
  v6 = [(SBHTintedIconImageStyleConfiguration *)v9 initWithConfigurationType:2 variant:v10 tintColor:tintColor];

LABEL_17:

  return v6;
}

- (UIColor)opaqueTintColor
{
  tintColor = [(SBHIconImageStyleConfiguration *)self tintColor];
  v3 = tintColor;
  if (tintColor)
  {
    v4 = SBHOpaqueTintColorFromTintColor(tintColor);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)iconGlassUserInterfaceStyle
{
  variant = [(SBHIconImageStyleConfiguration *)self variant];
  if (variant > 3)
  {
    return 0;
  }

  else
  {
    return qword_1BEE85988[variant];
  }
}

- (int64_t)dockGlassUserInterfaceStyle
{
  if ([(SBHIconImageStyleConfiguration *)self hasGlass])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (id)iconImageAppearanceWithUserInterfaceStyle:(int64_t)style
{
  configurationType = [(SBHIconImageStyleConfiguration *)self configurationType];
  variant = [(SBHIconImageStyleConfiguration *)self variant];
  tintColor = [(SBHIconImageStyleConfiguration *)self tintColor];
  if (configurationType == 2)
  {
    configurationType = 0;
    if (variant > 1)
    {
      if (variant == 2)
      {
        if (style == 2)
        {
LABEL_29:
          v8 = [SBHIconImageAppearance tintedDarkAppearanceWithTintColor:tintColor];
          goto LABEL_32;
        }
      }

      else if (variant != 3)
      {
        goto LABEL_33;
      }
    }

    else if (variant)
    {
      if (variant != 1)
      {
        goto LABEL_33;
      }

      goto LABEL_29;
    }

    v8 = [SBHIconImageAppearance tintedLightAppearanceWithTintColor:tintColor];
    goto LABEL_32;
  }

  if (configurationType == 1)
  {
    configurationType = 0;
    if (variant > 1)
    {
      if (variant == 2)
      {
        if (style == 2)
        {
LABEL_27:
          v8 = +[SBHIconImageAppearance clearDarkAppearance];
          goto LABEL_32;
        }
      }

      else if (variant != 3)
      {
        goto LABEL_33;
      }
    }

    else if (variant)
    {
      if (variant != 1)
      {
        goto LABEL_33;
      }

      goto LABEL_27;
    }

    v8 = +[SBHIconImageAppearance clearLightAppearance];
    goto LABEL_32;
  }

  if (configurationType)
  {
    configurationType = 0;
    goto LABEL_33;
  }

  if (variant > 1)
  {
    if (variant == 2)
    {
      if (style == 2)
      {
LABEL_31:
        v8 = +[SBHIconImageAppearance darkAppearance];
        goto LABEL_32;
      }
    }

    else if (variant != 3)
    {
      goto LABEL_33;
    }
  }

  else if (variant)
  {
    if (variant != 1)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v8 = +[SBHIconImageAppearance lightAppearance];
LABEL_32:
  configurationType = v8;
LABEL_33:

  return configurationType;
}

- (id)widgetAppearanceWithUserInterfaceStyle:(int64_t)style
{
  configurationType = [(SBHIconImageStyleConfiguration *)self configurationType];
  variant = [(SBHIconImageStyleConfiguration *)self variant];
  tintColor = [(SBHIconImageStyleConfiguration *)self tintColor];
  if (configurationType == 2)
  {
    if ((variant - 2) < 2)
    {
      if (style != 2)
      {
LABEL_19:
        v9 = [SBHIconImageAppearance tintedLightAppearanceWithTintColor:tintColor];
        goto LABEL_25;
      }
    }

    else if (variant != 1)
    {
      if (variant)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }

    v9 = [SBHIconImageAppearance tintedDarkAppearanceWithTintColor:tintColor];
    goto LABEL_25;
  }

  if (configurationType != 1)
  {
    if (configurationType)
    {
      goto LABEL_15;
    }

    if ((variant - 2) < 2)
    {
      if (style != 2)
      {
LABEL_21:
        v9 = +[SBHIconImageAppearance lightAppearance];
        goto LABEL_25;
      }
    }

    else if (variant != 1)
    {
      if (!variant)
      {
        goto LABEL_21;
      }

LABEL_15:
      v8 = 0;
      goto LABEL_26;
    }

    v9 = +[SBHIconImageAppearance darkAppearance];
    goto LABEL_25;
  }

  if ((variant - 2) >= 2)
  {
    if (variant != 1)
    {
      if (variant)
      {
        goto LABEL_15;
      }

      goto LABEL_17;
    }

LABEL_22:
    v9 = +[SBHIconImageAppearance clearDarkAppearance];
    goto LABEL_25;
  }

  if (style == 2)
  {
    goto LABEL_22;
  }

LABEL_17:
  v9 = +[SBHIconImageAppearance clearLightAppearance];
LABEL_25:
  v8 = v9;
LABEL_26:

  return v8;
}

- (id)appearanceForIcon:(id)icon userInterfaceStyle:(int64_t)style
{
  if ([icon isWidgetIcon])
  {
    [(SBHIconImageStyleConfiguration *)self widgetAppearanceWithUserInterfaceStyle:style];
  }

  else
  {
    [(SBHIconImageStyleConfiguration *)self iconImageAppearanceWithUserInterfaceStyle:style];
  }
  v6 = ;

  return v6;
}

- (SBHIconImageStyleConfiguration)styleConfigurationWithTintColor:(id)color
{
  colorCopy = color;
  if ([(SBHIconImageStyleConfiguration *)self configurationType]== 2)
  {
    v5 = [objc_alloc(objc_opt_class()) initWithConfigurationType:2 variant:-[SBHIconImageStyleConfiguration variant](self tintColor:{"variant"), colorCopy}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  configurationType = [(SBHIconImageStyleConfiguration *)self configurationType];
  v4 = [(SBHIconImageStyleConfiguration *)self variant]+ configurationType;
  tintColor = [(SBHIconImageStyleConfiguration *)self tintColor];
  v6 = [tintColor hash];

  return v4 + v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      configurationType = [(SBHIconImageStyleConfiguration *)self configurationType];
      if (configurationType == [(SBHIconImageStyleConfiguration *)v7 configurationType]&& (v9 = [(SBHIconImageStyleConfiguration *)self variant], v9 == [(SBHIconImageStyleConfiguration *)v7 variant]))
      {
        tintColor = [(SBHIconImageStyleConfiguration *)self tintColor];
        tintColor2 = [(SBHIconImageStyleConfiguration *)v7 tintColor];
        v12 = BSEqualObjects();
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[SBHIconImageStyleConfiguration configurationType](self forKey:{"configurationType"), @"configurationType"}];
  [coderCopy encodeInteger:-[SBHIconImageStyleConfiguration variant](self forKey:{"variant"), @"configurationVariant"}];
  tintColor = [(SBHIconImageStyleConfiguration *)self tintColor];
  [coderCopy encodeObject:tintColor forKey:@"tintColor"];
}

- (SBHIconImageStyleConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"configurationType"];
  if (v5 > 2 || (v6 = v5, v7 = [coderCopy decodeIntegerForKey:@"configurationVariant"], v7 > 3))
  {
    selfCopy = 0;
  }

  else
  {
    v8 = v7;
    v9 = objc_opt_self();
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"tintColor"];

    self = [(SBHIconImageStyleConfiguration *)self initWithConfigurationType:v6 variant:v8 tintColor:v10];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[SBHIconImageStyleConfiguration configurationType](self forKey:{"configurationType"), @"configurationType"}];
  [coderCopy encodeInt64:-[SBHIconImageStyleConfiguration variant](self forKey:{"variant"), @"configurationVariant"}];
  tintColor = [(SBHIconImageStyleConfiguration *)self tintColor];
  [coderCopy encodeObject:tintColor forKey:@"tintColor"];
}

- (SBHIconImageStyleConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"configurationType"];
  v6 = [coderCopy decodeInt64ForKey:@"configurationVariant"];
  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"tintColor"];

  v9 = [(SBHIconImageStyleConfiguration *)self initWithConfigurationType:v5 variant:v6 tintColor:v8];
  return v9;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHIconImageStyleConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHIconImageStyleConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBHIconImageStyleConfiguration *)self succinctDescriptionBuilder];
  variant = [(SBHIconImageStyleConfiguration *)self variant];
  if (variant > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E808B268[variant];
  }

  [succinctDescriptionBuilder appendString:v6 withName:@"variant"];
  tintColor = [(SBHIconImageStyleConfiguration *)self tintColor];
  v8 = [succinctDescriptionBuilder appendObject:tintColor withName:@"tintColor" skipIfNil:1];

  return succinctDescriptionBuilder;
}

+ (SBHIconImageStyleConfiguration)styleConfigurationWithHomeScreenConfiguration:(id)configuration
{
  configurationCopy = configuration;
  styleVariant = [configurationCopy styleVariant];
  styleType = [configurationCopy styleType];
  v6 = 0;
  v7 = 3;
  if (styleType != 5)
  {
    v7 = 0;
  }

  v8 = 1;
  v9 = 2;
  if (styleVariant)
  {
    v9 = 0;
  }

  if (styleVariant != 1)
  {
    v8 = v9;
  }

  if (styleVariant == 2)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (styleType <= 2)
  {
    if (styleType >= 3)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (styleType != 3)
  {
    if (styleType == 4)
    {
      v11 = [SBHIconImageStyleConfiguration alloc];
      v12 = 1;
      goto LABEL_17;
    }

    if (styleType != 5)
    {
      goto LABEL_18;
    }

LABEL_16:
    v11 = [SBHIconImageStyleConfiguration alloc];
    v12 = 0;
LABEL_17:
    v6 = [(SBHIconImageStyleConfiguration *)v11 initWithConfigurationType:v12 variant:v10];
    goto LABEL_18;
  }

  v14 = styleConfigurationWithHomeScreenConfiguration__sharedTintedStyleConfigurations;
  if (!styleConfigurationWithHomeScreenConfiguration__sharedTintedStyleConfigurations)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v16 = styleConfigurationWithHomeScreenConfiguration__sharedTintedStyleConfigurations;
    styleConfigurationWithHomeScreenConfiguration__sharedTintedStyleConfigurations = weakToStrongObjectsMapTable;

    v14 = styleConfigurationWithHomeScreenConfiguration__sharedTintedStyleConfigurations;
  }

  v6 = [v14 objectForKey:configurationCopy];
  if (!v6)
  {
    accentColor = [configurationCopy accentColor];
    if (accentColor)
    {
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      if ([accentColor isEqual:clearColor])
      {
        iconTintSource = [configurationCopy iconTintSource];

        if (iconTintSource != 3)
        {
          goto LABEL_32;
        }

LABEL_30:
        v6 = [[SBHIconImageStyleConfiguration alloc] initWithConfigurationType:1 variant:v10];
LABEL_33:

        goto LABEL_18;
      }
    }

    else if ([configurationCopy iconTintSource] == 3)
    {
      goto LABEL_30;
    }

LABEL_32:
    v6 = [[SBHIconImageStyleConfiguration alloc] initWithConfigurationType:2 variant:v10 tintColor:accentColor];
    [styleConfigurationWithHomeScreenConfiguration__sharedTintedStyleConfigurations setObject:v6 forKey:configurationCopy];
    goto LABEL_33;
  }

LABEL_18:

  return v6;
}

- (PUIStylePickerHomeScreenConfiguration)homeScreenConfiguration
{
  configurationType = [(SBHIconImageStyleConfiguration *)self configurationType];
  variant = [(SBHIconImageStyleConfiguration *)self variant];
  if (variant <= 3)
  {
    v5 = qword_1BEE859A8[variant];
    if (configurationType)
    {
      goto LABEL_3;
    }

LABEL_7:
    tintColor = 0;
    v7 = 5;
    goto LABEL_10;
  }

  v5 = 0;
  if (!configurationType)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (configurationType == 1)
  {
    tintColor = 0;
    v7 = 4;
  }

  else if (configurationType == 2)
  {
    tintColor = [(SBHIconImageStyleConfiguration *)self tintColor];
    v7 = 3;
  }

  else
  {
    v7 = 0;
    tintColor = 0;
  }

LABEL_10:
  v8 = [objc_alloc(MEMORY[0x1E69C5570]) initWithStyleType:v7 styleVariant:v5 variation:0.0 luminance:0.0];
  v9 = v8;
  if (tintColor)
  {
    [v8 setAccentColor:tintColor];
  }

  return v9;
}

- (SBSHomeScreenIconStyleConfiguration)homeScreenIconStyleConfiguration
{
  sbsHomeScreenIconStyleConfigurationType = [(SBHIconImageStyleConfiguration *)self sbsHomeScreenIconStyleConfigurationType];
  sbsHomeScreenIconStyleConfigurationVariant = [(SBHIconImageStyleConfiguration *)self sbsHomeScreenIconStyleConfigurationVariant];
  tintColor = [(SBHIconImageStyleConfiguration *)self tintColor];
  bSColor = [tintColor BSColor];

  v7 = [objc_alloc(MEMORY[0x1E69D4228]) initWithConfigurationType:sbsHomeScreenIconStyleConfigurationType variant:sbsHomeScreenIconStyleConfigurationVariant tintColor:bSColor];

  return v7;
}

- (int64_t)sbsHomeScreenIconStyleConfigurationType
{
  result = [(SBHIconImageStyleConfiguration *)self configurationType];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (int64_t)sbsHomeScreenIconStyleConfigurationVariant
{
  result = [(SBHIconImageStyleConfiguration *)self variant];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

@end