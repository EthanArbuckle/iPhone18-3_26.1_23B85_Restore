@interface SBHIconImageStyleConfiguration
+ (SBHIconImageStyleConfiguration)allocWithZone:(_NSZone *)a3;
+ (SBHIconImageStyleConfiguration)clearAutomaticStyleConfiguration;
+ (SBHIconImageStyleConfiguration)clearDarkStyleConfiguration;
+ (SBHIconImageStyleConfiguration)clearLightStyleConfiguration;
+ (SBHIconImageStyleConfiguration)colorAutomaticStyleConfiguration;
+ (SBHIconImageStyleConfiguration)colorDarkStyleConfiguration;
+ (SBHIconImageStyleConfiguration)colorLightStyleConfiguration;
+ (SBHIconImageStyleConfiguration)styleConfigurationWithHomeScreenConfiguration:(id)a3;
+ (SBHIconImageStyleConfiguration)styleConfigurationWithIconImageAppearance:(id)a3;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (PUIStylePickerHomeScreenConfiguration)homeScreenConfiguration;
- (SBHIconImageStyleConfiguration)initWithBSXPCCoder:(id)a3;
- (SBHIconImageStyleConfiguration)initWithCoder:(id)a3;
- (SBHIconImageStyleConfiguration)initWithConfigurationType:(int64_t)a3 variant:(int64_t)a4 tintColor:(id)a5;
- (SBHIconImageStyleConfiguration)styleConfigurationWithTintColor:(id)a3;
- (SBSHomeScreenIconStyleConfiguration)homeScreenIconStyleConfiguration;
- (UIColor)opaqueTintColor;
- (id)appearanceForIcon:(id)a3 userInterfaceStyle:(int64_t)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)iconImageAppearanceWithUserInterfaceStyle:(int64_t)a3;
- (id)succinctDescription;
- (id)widgetAppearanceWithUserInterfaceStyle:(int64_t)a3;
- (int64_t)dockGlassUserInterfaceStyle;
- (int64_t)iconGlassUserInterfaceStyle;
- (int64_t)sbsHomeScreenIconStyleConfigurationType;
- (int64_t)sbsHomeScreenIconStyleConfigurationVariant;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

  if (v3 == a1)
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

+ (SBHIconImageStyleConfiguration)allocWithZone:(_NSZone *)a3
{
  v5 = objc_opt_self();

  if (v5 == a1)
  {
    v7 = reusablePlaceholderStyleConfiguration;

    return v7;
  }

  else
  {
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___SBHIconImageStyleConfiguration;
    return objc_msgSendSuper2(&v8, sel_allocWithZone_, a3);
  }
}

- (SBHIconImageStyleConfiguration)initWithConfigurationType:(int64_t)a3 variant:(int64_t)a4 tintColor:(id)a5
{
  v8 = a5;
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
        v13->_variant = a4;
      }

      v12 = v13;
      self = v12;
      goto LABEL_31;
    }
  }

  if (a3 == 2)
  {
    v14 = [SBHTintedIconImageStyleConfiguration alloc];
    v15 = 2;
    v16 = a4;
    v17 = v8;
LABEL_30:
    v12 = [(SBHTintedIconImageStyleConfiguration *)v14 initWithConfigurationType:v15 variant:v16 tintColor:v17];
    goto LABEL_31;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      a3 = 0;
      goto LABEL_32;
    }

    if (a4 > 1)
    {
      if (a4 == 2)
      {
        v12 = +[SBHIconImageStyleConfiguration colorAutomaticStyleConfiguration];
        goto LABEL_31;
      }

      if (a4 == 3)
      {
        v12 = +[SBHIconImageStyleConfiguration colorLightStyleConfiguration];
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (a4)
    {
      if (a4 == 1)
      {
        v12 = +[SBHIconImageStyleConfiguration colorDarkStyleConfiguration];
LABEL_31:
        a3 = v12;
        goto LABEL_32;
      }

      goto LABEL_32;
    }

    v14 = [SBHColorIconImageStyleConfiguration alloc];
    v15 = 0;
    v16 = 0;
    goto LABEL_29;
  }

  a3 = 0;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v12 = +[SBHIconImageStyleConfiguration clearAutomaticStyleConfiguration];
      goto LABEL_31;
    }

    if (a4 != 3)
    {
      goto LABEL_32;
    }

    v14 = [SBHClearIconImageStyleConfiguration alloc];
    v15 = 1;
    v16 = 3;
LABEL_29:
    v17 = 0;
    goto LABEL_30;
  }

  if (!a4)
  {
    v12 = +[SBHIconImageStyleConfiguration clearLightStyleConfiguration];
    goto LABEL_31;
  }

  if (a4 == 1)
  {
    v12 = +[SBHIconImageStyleConfiguration clearDarkStyleConfiguration];
    goto LABEL_31;
  }

LABEL_32:

  return a3;
}

+ (SBHIconImageStyleConfiguration)styleConfigurationWithIconImageAppearance:(id)a3
{
  v4 = a3;
  v5 = [v4 appearanceType];
  v6 = 0;
  if (v5 <= 2)
  {
    if (!v5)
    {
      v11 = [a1 colorLightStyleConfiguration];
      goto LABEL_14;
    }

    if (v5 != 1)
    {
      if (v5 != 2)
      {
        goto LABEL_17;
      }

      v11 = [a1 clearLightStyleConfiguration];
      goto LABEL_14;
    }

LABEL_11:
    v11 = [a1 colorDarkStyleConfiguration];
LABEL_14:
    v6 = v11;
    goto LABEL_17;
  }

  if (v5 > 4)
  {
    if (v5 == 5)
    {
      v12 = [SBHTintedIconImageStyleConfiguration alloc];
      v8 = [v4 tintColor];
      v9 = v12;
      v10 = 1;
      goto LABEL_16;
    }

    if (v5 != 6)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (v5 == 3)
  {
    v11 = [a1 clearDarkStyleConfiguration];
    goto LABEL_14;
  }

  v7 = [SBHTintedIconImageStyleConfiguration alloc];
  v8 = [v4 tintColor];
  v9 = v7;
  v10 = 0;
LABEL_16:
  v6 = [(SBHTintedIconImageStyleConfiguration *)v9 initWithConfigurationType:2 variant:v10 tintColor:v8];

LABEL_17:

  return v6;
}

- (UIColor)opaqueTintColor
{
  v2 = [(SBHIconImageStyleConfiguration *)self tintColor];
  v3 = v2;
  if (v2)
  {
    v4 = SBHOpaqueTintColorFromTintColor(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)iconGlassUserInterfaceStyle
{
  v2 = [(SBHIconImageStyleConfiguration *)self variant];
  if (v2 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1BEE85988[v2];
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

- (id)iconImageAppearanceWithUserInterfaceStyle:(int64_t)a3
{
  v5 = [(SBHIconImageStyleConfiguration *)self configurationType];
  v6 = [(SBHIconImageStyleConfiguration *)self variant];
  v7 = [(SBHIconImageStyleConfiguration *)self tintColor];
  if (v5 == 2)
  {
    v5 = 0;
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        if (a3 == 2)
        {
LABEL_29:
          v8 = [SBHIconImageAppearance tintedDarkAppearanceWithTintColor:v7];
          goto LABEL_32;
        }
      }

      else if (v6 != 3)
      {
        goto LABEL_33;
      }
    }

    else if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_33;
      }

      goto LABEL_29;
    }

    v8 = [SBHIconImageAppearance tintedLightAppearanceWithTintColor:v7];
    goto LABEL_32;
  }

  if (v5 == 1)
  {
    v5 = 0;
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        if (a3 == 2)
        {
LABEL_27:
          v8 = +[SBHIconImageAppearance clearDarkAppearance];
          goto LABEL_32;
        }
      }

      else if (v6 != 3)
      {
        goto LABEL_33;
      }
    }

    else if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_33;
      }

      goto LABEL_27;
    }

    v8 = +[SBHIconImageAppearance clearLightAppearance];
    goto LABEL_32;
  }

  if (v5)
  {
    v5 = 0;
    goto LABEL_33;
  }

  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if (a3 == 2)
      {
LABEL_31:
        v8 = +[SBHIconImageAppearance darkAppearance];
        goto LABEL_32;
      }
    }

    else if (v6 != 3)
    {
      goto LABEL_33;
    }
  }

  else if (v6)
  {
    if (v6 != 1)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v8 = +[SBHIconImageAppearance lightAppearance];
LABEL_32:
  v5 = v8;
LABEL_33:

  return v5;
}

- (id)widgetAppearanceWithUserInterfaceStyle:(int64_t)a3
{
  v5 = [(SBHIconImageStyleConfiguration *)self configurationType];
  v6 = [(SBHIconImageStyleConfiguration *)self variant];
  v7 = [(SBHIconImageStyleConfiguration *)self tintColor];
  if (v5 == 2)
  {
    if ((v6 - 2) < 2)
    {
      if (a3 != 2)
      {
LABEL_19:
        v9 = [SBHIconImageAppearance tintedLightAppearanceWithTintColor:v7];
        goto LABEL_25;
      }
    }

    else if (v6 != 1)
    {
      if (v6)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }

    v9 = [SBHIconImageAppearance tintedDarkAppearanceWithTintColor:v7];
    goto LABEL_25;
  }

  if (v5 != 1)
  {
    if (v5)
    {
      goto LABEL_15;
    }

    if ((v6 - 2) < 2)
    {
      if (a3 != 2)
      {
LABEL_21:
        v9 = +[SBHIconImageAppearance lightAppearance];
        goto LABEL_25;
      }
    }

    else if (v6 != 1)
    {
      if (!v6)
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

  if ((v6 - 2) >= 2)
  {
    if (v6 != 1)
    {
      if (v6)
      {
        goto LABEL_15;
      }

      goto LABEL_17;
    }

LABEL_22:
    v9 = +[SBHIconImageAppearance clearDarkAppearance];
    goto LABEL_25;
  }

  if (a3 == 2)
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

- (id)appearanceForIcon:(id)a3 userInterfaceStyle:(int64_t)a4
{
  if ([a3 isWidgetIcon])
  {
    [(SBHIconImageStyleConfiguration *)self widgetAppearanceWithUserInterfaceStyle:a4];
  }

  else
  {
    [(SBHIconImageStyleConfiguration *)self iconImageAppearanceWithUserInterfaceStyle:a4];
  }
  v6 = ;

  return v6;
}

- (SBHIconImageStyleConfiguration)styleConfigurationWithTintColor:(id)a3
{
  v4 = a3;
  if ([(SBHIconImageStyleConfiguration *)self configurationType]== 2)
  {
    v5 = [objc_alloc(objc_opt_class()) initWithConfigurationType:2 variant:-[SBHIconImageStyleConfiguration variant](self tintColor:{"variant"), v4}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SBHIconImageStyleConfiguration *)self configurationType];
  v4 = [(SBHIconImageStyleConfiguration *)self variant]+ v3;
  v5 = [(SBHIconImageStyleConfiguration *)self tintColor];
  v6 = [v5 hash];

  return v4 + v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(SBHIconImageStyleConfiguration *)self configurationType];
      if (v8 == [(SBHIconImageStyleConfiguration *)v7 configurationType]&& (v9 = [(SBHIconImageStyleConfiguration *)self variant], v9 == [(SBHIconImageStyleConfiguration *)v7 variant]))
      {
        v10 = [(SBHIconImageStyleConfiguration *)self tintColor];
        v11 = [(SBHIconImageStyleConfiguration *)v7 tintColor];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[SBHIconImageStyleConfiguration configurationType](self forKey:{"configurationType"), @"configurationType"}];
  [v4 encodeInteger:-[SBHIconImageStyleConfiguration variant](self forKey:{"variant"), @"configurationVariant"}];
  v5 = [(SBHIconImageStyleConfiguration *)self tintColor];
  [v4 encodeObject:v5 forKey:@"tintColor"];
}

- (SBHIconImageStyleConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"configurationType"];
  if (v5 > 2 || (v6 = v5, v7 = [v4 decodeIntegerForKey:@"configurationVariant"], v7 > 3))
  {
    v11 = 0;
  }

  else
  {
    v8 = v7;
    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"tintColor"];

    self = [(SBHIconImageStyleConfiguration *)self initWithConfigurationType:v6 variant:v8 tintColor:v10];
    v11 = self;
  }

  return v11;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[SBHIconImageStyleConfiguration configurationType](self forKey:{"configurationType"), @"configurationType"}];
  [v4 encodeInt64:-[SBHIconImageStyleConfiguration variant](self forKey:{"variant"), @"configurationVariant"}];
  v5 = [(SBHIconImageStyleConfiguration *)self tintColor];
  [v4 encodeObject:v5 forKey:@"tintColor"];
}

- (SBHIconImageStyleConfiguration)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"configurationType"];
  v6 = [v4 decodeInt64ForKey:@"configurationVariant"];
  v7 = objc_opt_self();
  v8 = [v4 decodeObjectOfClass:v7 forKey:@"tintColor"];

  v9 = [(SBHIconImageStyleConfiguration *)self initWithConfigurationType:v5 variant:v6 tintColor:v8];
  return v9;
}

- (id)succinctDescription
{
  v2 = [(SBHIconImageStyleConfiguration *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHIconImageStyleConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBHIconImageStyleConfiguration *)self succinctDescriptionBuilder];
  v5 = [(SBHIconImageStyleConfiguration *)self variant];
  if (v5 > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E808B268[v5];
  }

  [v4 appendString:v6 withName:@"variant"];
  v7 = [(SBHIconImageStyleConfiguration *)self tintColor];
  v8 = [v4 appendObject:v7 withName:@"tintColor" skipIfNil:1];

  return v4;
}

+ (SBHIconImageStyleConfiguration)styleConfigurationWithHomeScreenConfiguration:(id)a3
{
  v3 = a3;
  v4 = [v3 styleVariant];
  v5 = [v3 styleType];
  v6 = 0;
  v7 = 3;
  if (v5 != 5)
  {
    v7 = 0;
  }

  v8 = 1;
  v9 = 2;
  if (v4)
  {
    v9 = 0;
  }

  if (v4 != 1)
  {
    v8 = v9;
  }

  if (v4 == 2)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (v5 <= 2)
  {
    if (v5 >= 3)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v5 != 3)
  {
    if (v5 == 4)
    {
      v11 = [SBHIconImageStyleConfiguration alloc];
      v12 = 1;
      goto LABEL_17;
    }

    if (v5 != 5)
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
    v15 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v16 = styleConfigurationWithHomeScreenConfiguration__sharedTintedStyleConfigurations;
    styleConfigurationWithHomeScreenConfiguration__sharedTintedStyleConfigurations = v15;

    v14 = styleConfigurationWithHomeScreenConfiguration__sharedTintedStyleConfigurations;
  }

  v6 = [v14 objectForKey:v3];
  if (!v6)
  {
    v17 = [v3 accentColor];
    if (v17)
    {
      v18 = [MEMORY[0x1E69DC888] clearColor];
      if ([v17 isEqual:v18])
      {
        v19 = [v3 iconTintSource];

        if (v19 != 3)
        {
          goto LABEL_32;
        }

LABEL_30:
        v6 = [[SBHIconImageStyleConfiguration alloc] initWithConfigurationType:1 variant:v10];
LABEL_33:

        goto LABEL_18;
      }
    }

    else if ([v3 iconTintSource] == 3)
    {
      goto LABEL_30;
    }

LABEL_32:
    v6 = [[SBHIconImageStyleConfiguration alloc] initWithConfigurationType:2 variant:v10 tintColor:v17];
    [styleConfigurationWithHomeScreenConfiguration__sharedTintedStyleConfigurations setObject:v6 forKey:v3];
    goto LABEL_33;
  }

LABEL_18:

  return v6;
}

- (PUIStylePickerHomeScreenConfiguration)homeScreenConfiguration
{
  v3 = [(SBHIconImageStyleConfiguration *)self configurationType];
  v4 = [(SBHIconImageStyleConfiguration *)self variant];
  if (v4 <= 3)
  {
    v5 = qword_1BEE859A8[v4];
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = 0;
    v7 = 5;
    goto LABEL_10;
  }

  v5 = 0;
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v3 == 1)
  {
    v6 = 0;
    v7 = 4;
  }

  else if (v3 == 2)
  {
    v6 = [(SBHIconImageStyleConfiguration *)self tintColor];
    v7 = 3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

LABEL_10:
  v8 = [objc_alloc(MEMORY[0x1E69C5570]) initWithStyleType:v7 styleVariant:v5 variation:0.0 luminance:0.0];
  v9 = v8;
  if (v6)
  {
    [v8 setAccentColor:v6];
  }

  return v9;
}

- (SBSHomeScreenIconStyleConfiguration)homeScreenIconStyleConfiguration
{
  v3 = [(SBHIconImageStyleConfiguration *)self sbsHomeScreenIconStyleConfigurationType];
  v4 = [(SBHIconImageStyleConfiguration *)self sbsHomeScreenIconStyleConfigurationVariant];
  v5 = [(SBHIconImageStyleConfiguration *)self tintColor];
  v6 = [v5 BSColor];

  v7 = [objc_alloc(MEMORY[0x1E69D4228]) initWithConfigurationType:v3 variant:v4 tintColor:v6];

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