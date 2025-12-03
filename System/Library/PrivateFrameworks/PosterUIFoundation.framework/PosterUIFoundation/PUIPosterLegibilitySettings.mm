@interface PUIPosterLegibilitySettings
+ (id)legibilitySettingsForContentColor:(id)color contrast:(double)contrast;
+ (id)legibilitySettingsForStyle:(int64_t)style primaryColor:(id)color secondaryColor:(id)secondaryColor shadowColor:(id)shadowColor;
+ (id)legibilitySettingsWithUILegibilitySettings:(id)settings;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLegibilitySettings:(id)settings;
- (NSString)description;
- (PUIPosterLegibilitySettings)initWithBSXPCCoder:(id)coder;
- (PUIPosterLegibilitySettings)initWithCoder:(id)coder;
- (PUIPosterLegibilitySettings)initWithStyle:(int64_t)style primaryColor:(id)color secondaryColor:(id)secondaryColor shadowColor:(id)shadowColor;
- (id)convertToUILegibility;
- (id)copyWithZone:(_NSZone *)zone;
- (id)legibilitySettingsByApplyingShadowRadiusMultiplier:(double)multiplier;
- (id)legibilitySettingsByOverridingShadowAlpha:(double)alpha;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUIPosterLegibilitySettings

+ (id)legibilitySettingsWithUILegibilitySettings:(id)settings
{
  settingsCopy = settings;
  NSClassFromString(&cfstr_Uilegibilityse.isa);
  if (!settingsCopy)
  {
    [PUIPosterLegibilitySettings legibilitySettingsWithUILegibilitySettings:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PUIPosterLegibilitySettings legibilitySettingsWithUILegibilitySettings:a2];
  }

  style = [settingsCopy style];
  if (style == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = style == 1;
  }

  v7 = [PUIPosterLegibilitySettings alloc];
  primaryColor = [settingsCopy primaryColor];
  secondaryColor = [settingsCopy secondaryColor];
  shadowColor = [settingsCopy shadowColor];
  v11 = [(PUIPosterLegibilitySettings *)v7 initWithStyle:v6 primaryColor:primaryColor secondaryColor:secondaryColor shadowColor:shadowColor];

  v11->_source = 2;
  v12 = [settingsCopy copy];
  specifiedLegibilitySettings = v11->_specifiedLegibilitySettings;
  v11->_specifiedLegibilitySettings = v12;

  return v11;
}

+ (id)legibilitySettingsForContentColor:(id)color contrast:(double)contrast
{
  colorCopy = color;
  NSClassFromString(&cfstr_Uicolor.isa);
  if (!colorCopy)
  {
    [PUIPosterLegibilitySettings legibilitySettingsForContentColor:a2 contrast:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PUIPosterLegibilitySettings legibilitySettingsForContentColor:a2 contrast:?];
  }

  v8 = [objc_alloc(MEMORY[0x1E69DD5B8]) initWithContentColor:colorCopy contrast:contrast];
  style = [v8 style];
  if (style == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = style == 1;
  }

  primaryColor = [v8 primaryColor];
  secondaryColor = [v8 secondaryColor];
  shadowColor = [v8 shadowColor];
  v14 = [self legibilitySettingsForStyle:v10 primaryColor:primaryColor secondaryColor:secondaryColor shadowColor:shadowColor];

  [v14 setContentColor:colorCopy];
  [v14 setContrast:contrast];
  v14[6] = 1;

  return v14;
}

+ (id)legibilitySettingsForStyle:(int64_t)style primaryColor:(id)color secondaryColor:(id)secondaryColor shadowColor:(id)shadowColor
{
  shadowColorCopy = shadowColor;
  secondaryColorCopy = secondaryColor;
  colorCopy = color;
  v13 = [[self alloc] initWithStyle:style primaryColor:colorCopy secondaryColor:secondaryColorCopy shadowColor:shadowColorCopy];

  return v13;
}

- (PUIPosterLegibilitySettings)initWithStyle:(int64_t)style primaryColor:(id)color secondaryColor:(id)secondaryColor shadowColor:(id)shadowColor
{
  colorCopy = color;
  secondaryColorCopy = secondaryColor;
  shadowColorCopy = shadowColor;
  if (style >= 3)
  {
    [PUIPosterLegibilitySettings initWithStyle:a2 primaryColor:? secondaryColor:? shadowColor:?];
  }

  v14 = shadowColorCopy;
  if (style)
  {
    v15 = colorCopy;
    NSClassFromString(&cfstr_Uicolor.isa);
    if (!v15)
    {
      [PUIPosterLegibilitySettings initWithStyle:a2 primaryColor:? secondaryColor:? shadowColor:?];
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PUIPosterLegibilitySettings initWithStyle:a2 primaryColor:? secondaryColor:? shadowColor:?];
    }

    v16 = secondaryColorCopy;
    NSClassFromString(&cfstr_Uicolor.isa);
    if (!v16)
    {
      [PUIPosterLegibilitySettings initWithStyle:a2 primaryColor:? secondaryColor:? shadowColor:?];
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PUIPosterLegibilitySettings initWithStyle:a2 primaryColor:? secondaryColor:? shadowColor:?];
    }

    v17 = v14;
    NSClassFromString(&cfstr_Uicolor.isa);
    if (!v17)
    {
      [PUIPosterLegibilitySettings initWithStyle:a2 primaryColor:? secondaryColor:? shadowColor:?];
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PUIPosterLegibilitySettings initWithStyle:a2 primaryColor:? secondaryColor:? shadowColor:?];
    }
  }

  v31.receiver = self;
  v31.super_class = PUIPosterLegibilitySettings;
  v18 = [(PUIPosterLegibilitySettings *)&v31 init];
  if (v18)
  {
    v19 = [colorCopy copy];
    v20 = *(v18 + 7);
    *(v18 + 7) = v19;

    v21 = [secondaryColorCopy copy];
    v22 = *(v18 + 8);
    *(v18 + 8) = v21;

    v23 = [v14 copy];
    v24 = *(v18 + 9);
    *(v18 + 9) = v23;

    *(v18 + 5) = style;
    *(v18 + 6) = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *(v18 + 24) = _Q0;
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PUIPosterLegibilitySettings allocWithZone:?]primaryColor:"initWithStyle:primaryColor:secondaryColor:shadowColor:" secondaryColor:self->_style shadowColor:self->_primaryColor, self->_secondaryColor, self->_shadowColor];
  v4->_contrast = self->_contrast;
  v4->_shadowRadiusMultiplier = self->_shadowRadiusMultiplier;
  v4->_shadowAlphaOverride = self->_shadowAlphaOverride;
  v5 = [(UIColor *)self->_contentColor copy];
  contentColor = v4->_contentColor;
  v4->_contentColor = v5;

  v7 = [(_UILegibilitySettings *)self->_specifiedLegibilitySettings copy];
  specifiedLegibilitySettings = v4->_specifiedLegibilitySettings;
  v4->_specifiedLegibilitySettings = v7;

  return v4;
}

- (id)convertToUILegibility
{
  specifiedLegibilitySettings = self->_specifiedLegibilitySettings;
  if (!specifiedLegibilitySettings)
  {
    specifiedLegibilitySettings = self->_cachedLegibilitySettings;
    if (!specifiedLegibilitySettings)
    {
      v4 = objc_alloc(MEMORY[0x1E69DD5B8]);
      style = self->_style;
      if (style == 2)
      {
        v6 = 2;
      }

      else
      {
        v6 = style == 1;
      }

      primaryColor = [(PUIPosterLegibilitySettings *)self primaryColor];
      secondaryColor = [(PUIPosterLegibilitySettings *)self secondaryColor];
      shadowColor = [(PUIPosterLegibilitySettings *)self shadowColor];
      v10 = [v4 initWithStyle:v6 primaryColor:primaryColor secondaryColor:secondaryColor shadowColor:shadowColor];
      cachedLegibilitySettings = self->_cachedLegibilitySettings;
      self->_cachedLegibilitySettings = v10;

      if (self->_shadowRadiusMultiplier != 1.0)
      {
        v12 = self->_cachedLegibilitySettings;
        [(_UILegibilitySettings *)v12 shadowRadius];
        [(_UILegibilitySettings *)v12 setShadowRadius:v13 * self->_shadowRadiusMultiplier];
        v14 = self->_cachedLegibilitySettings;
        [(_UILegibilitySettings *)v14 imageOutset];
        [(_UILegibilitySettings *)v14 setImageOutset:v15 * self->_shadowRadiusMultiplier];
      }

      if (self->_shadowAlphaOverride != 1.0)
      {
        [(_UILegibilitySettings *)self->_cachedLegibilitySettings setShadowAlpha:?];
      }

      specifiedLegibilitySettings = self->_cachedLegibilitySettings;
    }
  }

  v16 = specifiedLegibilitySettings;

  return v16;
}

- (id)legibilitySettingsByApplyingShadowRadiusMultiplier:(double)multiplier
{
  v4 = [(PUIPosterLegibilitySettings *)self copyWithZone:0];
  v4[4] = multiplier;

  return v4;
}

- (id)legibilitySettingsByOverridingShadowAlpha:(double)alpha
{
  v4 = [(PUIPosterLegibilitySettings *)self copyWithZone:0];
  v4[3] = alpha;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = (isKindOfClass & 1) != 0 && [(PUIPosterLegibilitySettings *)self isEqualToLegibilitySettings:equalCopy];
  }

  return v7;
}

- (BOOL)isEqualToLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  v5 = settingsCopy;
  if (self == settingsCopy)
  {
    v18 = 1;
  }

  else if (settingsCopy && (v6 = [(PUIPosterLegibilitySettings *)settingsCopy style], v6 == [(PUIPosterLegibilitySettings *)self style]))
  {
    convertToUILegibility = [(PUIPosterLegibilitySettings *)self convertToUILegibility];
    convertToUILegibility2 = [(PUIPosterLegibilitySettings *)v5 convertToUILegibility];
    primaryColor = [convertToUILegibility2 primaryColor];
    primaryColor2 = [convertToUILegibility primaryColor];
    v11 = BSEqualObjects();

    if (v11 && ([convertToUILegibility2 secondaryColor], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(convertToUILegibility, "secondaryColor"), v13 = objc_claimAutoreleasedReturnValue(), v14 = BSEqualObjects(), v13, v12, v14) && (objc_msgSend(convertToUILegibility2, "shadowColor"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(convertToUILegibility, "shadowColor"), v16 = objc_claimAutoreleasedReturnValue(), v17 = BSEqualObjects(), v16, v15, v17) && (objc_msgSend(convertToUILegibility, "shadowRadius"), objc_msgSend(convertToUILegibility2, "shadowRadius"), BSFloatEqualToFloat()) && (objc_msgSend(convertToUILegibility, "shadowAlpha"), objc_msgSend(convertToUILegibility2, "shadowAlpha"), BSFloatEqualToFloat()) && (objc_msgSend(convertToUILegibility, "imageOutset"), objc_msgSend(convertToUILegibility2, "imageOutset"), BSFloatEqualToFloat()))
    {
      [convertToUILegibility minFillHeight];
      [convertToUILegibility2 minFillHeight];
      v18 = BSFloatEqualToFloat();
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (unint64_t)hash
{
  convertToUILegibility = [(PUIPosterLegibilitySettings *)self convertToUILegibility];
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendInteger:{objc_msgSend(convertToUILegibility, "style")}];
  primaryColor = [convertToUILegibility primaryColor];
  v6 = [builder appendObject:primaryColor];

  secondaryColor = [convertToUILegibility secondaryColor];
  v8 = [builder appendObject:secondaryColor];

  shadowColor = [convertToUILegibility shadowColor];
  v10 = [builder appendObject:shadowColor];

  [convertToUILegibility shadowRadius];
  v11 = [builder appendCGFloat:?];
  [convertToUILegibility shadowAlpha];
  v12 = [builder appendCGFloat:?];
  [convertToUILegibility imageOutset];
  v13 = [builder appendCGFloat:?];
  [convertToUILegibility minFillHeight];
  v14 = [builder appendCGFloat:?];
  v15 = [builder hash];

  return v15;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  source = [(PUIPosterLegibilitySettings *)self source];
  switch(source)
  {
    case 2:
      v20 = [v3 appendObject:self->_specifiedLegibilitySettings withName:@"specifiedLegibilitySettings"];
      break;
    case 1:
      style = self->_style;
      v15 = @"None";
      if (style == 1)
      {
        v15 = @"LightContentWithDarkShadow";
      }

      if (style == 2)
      {
        v16 = @"DarkContentWithLightShadow";
      }

      else
      {
        v16 = v15;
      }

      [v3 appendString:v16 withName:@"style"];
      contentColor = [(PUIPosterLegibilitySettings *)self contentColor];
      v18 = [v3 appendObject:contentColor withName:@"contentColor" skipIfNil:1];

      [(PUIPosterLegibilitySettings *)self contrast];
      v19 = [v3 appendDouble:@"contrast" withName:5 decimalPrecision:?];
      break;
    case 0:
      v5 = self->_style;
      v6 = @"None";
      if (v5 == 1)
      {
        v6 = @"LightContentWithDarkShadow";
      }

      if (v5 == 2)
      {
        v7 = @"DarkContentWithLightShadow";
      }

      else
      {
        v7 = v6;
      }

      [v3 appendString:v7 withName:@"style"];
      primaryColor = [(PUIPosterLegibilitySettings *)self primaryColor];
      v9 = [v3 appendObject:primaryColor withName:@"primaryColor" skipIfNil:1];

      secondaryColor = [(PUIPosterLegibilitySettings *)self secondaryColor];
      v11 = [v3 appendObject:secondaryColor withName:@"secondaryColor" skipIfNil:1];

      shadowColor = [(PUIPosterLegibilitySettings *)self shadowColor];
      v13 = [v3 appendObject:shadowColor withName:@"shadowColor" skipIfNil:1];

      break;
  }

  if (self->_shadowAlphaOverride != 1.0)
  {
    v21 = [v3 appendDouble:@"shadowAlphaOverride" withName:2 decimalPrecision:?];
  }

  if (self->_shadowRadiusMultiplier != 1.0)
  {
    v22 = [v3 appendDouble:@"shadowRadiusMultiplier" withName:2 decimalPrecision:?];
  }

  build = [v3 build];

  return build;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  if ([(PUIPosterLegibilitySettings *)self source])
  {
    if ([(PUIPosterLegibilitySettings *)self source]== 1)
    {
      contentColor = [(PUIPosterLegibilitySettings *)self contentColor];
      [coderCopy encodeObject:contentColor forKey:@"contentColor"];

      [(PUIPosterLegibilitySettings *)self contrast];
      [coderCopy encodeDouble:@"contrast" forKey:?];
    }

    else if ([(PUIPosterLegibilitySettings *)self source]== 2)
    {
      [coderCopy encodeObject:self->_specifiedLegibilitySettings forKey:@"specifiedLegibilitySettings"];
    }
  }

  else
  {
    primaryColor = [(PUIPosterLegibilitySettings *)self primaryColor];
    [coderCopy encodeObject:primaryColor forKey:@"primaryColor"];

    shadowColor = [(PUIPosterLegibilitySettings *)self shadowColor];
    [coderCopy encodeObject:shadowColor forKey:@"shadowColor"];

    secondaryColor = [(PUIPosterLegibilitySettings *)self secondaryColor];
    [coderCopy encodeObject:secondaryColor forKey:@"secondaryColor"];
  }

  [coderCopy encodeInt64:-[PUIPosterLegibilitySettings style](self forKey:{"style"), @"legibilityStyle"}];
  [coderCopy encodeInt64:-[PUIPosterLegibilitySettings source](self forKey:{"source"), @"source"}];
  [coderCopy encodeDouble:@"shadowAlphaOverride" forKey:self->_shadowAlphaOverride];
  [coderCopy encodeDouble:@"shadowRadiusMultiplier" forKey:self->_shadowRadiusMultiplier];
}

- (PUIPosterLegibilitySettings)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = PUIPosterLegibilitySettings;
  v5 = [(PUIPosterLegibilitySettings *)&v23 init];
  if (v5)
  {
    v5->_style = [coderCopy decodeInt64ForKey:@"legibilityStyle"];
    v5->_source = [coderCopy decodeInt64ForKey:@"source"];
    [coderCopy decodeDoubleForKey:@"shadowAlphaOverride"];
    v5->_shadowAlphaOverride = v6;
    [coderCopy decodeDoubleForKey:@"shadowRadiusMultiplier"];
    v5->_shadowRadiusMultiplier = v7;
    if (![(PUIPosterLegibilitySettings *)v5 source])
    {
      v11 = objc_opt_self();
      v12 = [coderCopy decodeObjectOfClass:v11 forKey:@"primaryColor"];
      primaryColor = v5->_primaryColor;
      v5->_primaryColor = v12;

      v14 = objc_opt_self();
      v15 = [coderCopy decodeObjectOfClass:v14 forKey:@"shadowColor"];
      shadowColor = v5->_shadowColor;
      v5->_shadowColor = v15;

      v8 = objc_opt_self();
      v17 = [coderCopy decodeObjectOfClass:v8 forKey:@"secondaryColor"];
      secondaryColor = v5->_secondaryColor;
      v5->_secondaryColor = v17;
      goto LABEL_6;
    }

    if ([(PUIPosterLegibilitySettings *)v5 source]== 2)
    {
      v8 = objc_opt_self();
      v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"specifiedLegibilitySettings"];
      secondaryColor = v5->_specifiedLegibilitySettings;
      v5->_specifiedLegibilitySettings = v9;
LABEL_6:

      goto LABEL_7;
    }

    if ([(PUIPosterLegibilitySettings *)v5 source]== 1)
    {
      v19 = objc_opt_self();
      v20 = [coderCopy decodeObjectOfClass:v19 forKey:@"contentColor"];
      contentColor = v5->_contentColor;
      v5->_contentColor = v20;

      [coderCopy decodeDoubleForKey:@"contrast"];
      v5->_contrast = v22;
    }
  }

LABEL_7:

  return v5;
}

- (PUIPosterLegibilitySettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = PUIPosterLegibilitySettings;
  v5 = [(PUIPosterLegibilitySettings *)&v23 init];
  if (v5)
  {
    v5->_style = [coderCopy decodeInt64ForKey:@"legibilityStyle"];
    v5->_source = [coderCopy decodeInt64ForKey:@"source"];
    [coderCopy decodeDoubleForKey:@"shadowAlphaOverride"];
    v5->_shadowAlphaOverride = v6;
    [coderCopy decodeDoubleForKey:@"shadowRadiusMultiplier"];
    v5->_shadowRadiusMultiplier = v7;
    if (![(PUIPosterLegibilitySettings *)v5 source])
    {
      v11 = objc_opt_self();
      v12 = [coderCopy decodeObjectOfClass:v11 forKey:@"primaryColor"];
      primaryColor = v5->_primaryColor;
      v5->_primaryColor = v12;

      v14 = objc_opt_self();
      v15 = [coderCopy decodeObjectOfClass:v14 forKey:@"shadowColor"];
      shadowColor = v5->_shadowColor;
      v5->_shadowColor = v15;

      v8 = objc_opt_self();
      v17 = [coderCopy decodeObjectOfClass:v8 forKey:@"secondaryColor"];
      secondaryColor = v5->_secondaryColor;
      v5->_secondaryColor = v17;
      goto LABEL_6;
    }

    if ([(PUIPosterLegibilitySettings *)v5 source]== 2)
    {
      v8 = objc_opt_self();
      v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"specifiedLegibilitySettings"];
      secondaryColor = v5->_specifiedLegibilitySettings;
      v5->_specifiedLegibilitySettings = v9;
LABEL_6:

      goto LABEL_7;
    }

    if ([(PUIPosterLegibilitySettings *)v5 source]== 1)
    {
      v19 = objc_opt_self();
      v20 = [coderCopy decodeObjectOfClass:v19 forKey:@"contentColor"];
      contentColor = v5->_contentColor;
      v5->_contentColor = v20;

      [coderCopy decodeDoubleForKey:@"contrast"];
      v5->_contrast = v22;
    }
  }

LABEL_7:

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([(PUIPosterLegibilitySettings *)self source])
  {
    if ([(PUIPosterLegibilitySettings *)self source]== 1)
    {
      contentColor = [(PUIPosterLegibilitySettings *)self contentColor];
      [coderCopy encodeObject:contentColor forKey:@"contentColor"];

      [(PUIPosterLegibilitySettings *)self contrast];
      [coderCopy encodeDouble:@"contrast" forKey:?];
    }

    else if ([(PUIPosterLegibilitySettings *)self source]== 2)
    {
      [coderCopy encodeObject:self->_specifiedLegibilitySettings forKey:@"specifiedLegibilitySettings"];
    }
  }

  else
  {
    primaryColor = [(PUIPosterLegibilitySettings *)self primaryColor];
    [coderCopy encodeObject:primaryColor forKey:@"primaryColor"];

    shadowColor = [(PUIPosterLegibilitySettings *)self shadowColor];
    [coderCopy encodeObject:shadowColor forKey:@"shadowColor"];

    secondaryColor = [(PUIPosterLegibilitySettings *)self secondaryColor];
    [coderCopy encodeObject:secondaryColor forKey:@"secondaryColor"];
  }

  [coderCopy encodeInt64:-[PUIPosterLegibilitySettings style](self forKey:{"style"), @"legibilityStyle"}];
  [coderCopy encodeInt64:-[PUIPosterLegibilitySettings source](self forKey:{"source"), @"source"}];
  [coderCopy encodeDouble:@"shadowAlphaOverride" forKey:self->_shadowAlphaOverride];
  [coderCopy encodeDouble:@"shadowRadiusMultiplier" forKey:self->_shadowRadiusMultiplier];
}

+ (void)legibilitySettingsWithUILegibilitySettings:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:_UILegibilitySettingsClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)legibilitySettingsWithUILegibilitySettings:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)legibilitySettingsForContentColor:(char *)a1 contrast:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:UIColorClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)legibilitySettingsForContentColor:(char *)a1 contrast:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithStyle:(char *)a1 primaryColor:secondaryColor:shadowColor:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:UIColorClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithStyle:(char *)a1 primaryColor:secondaryColor:shadowColor:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:UIColorClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithStyle:(char *)a1 primaryColor:secondaryColor:shadowColor:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:UIColorClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithStyle:(char *)a1 primaryColor:secondaryColor:shadowColor:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithStyle:(char *)a1 primaryColor:secondaryColor:shadowColor:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithStyle:(char *)a1 primaryColor:secondaryColor:shadowColor:.cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithStyle:(char *)a1 primaryColor:secondaryColor:shadowColor:.cold.7(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"style == PUIPosterLegibilityStyleNone || style == PUIPosterLegibilityStyleLightContentWithDarkShadow || style == PUIPosterLegibilityStyleDarkContentWithLightShadow", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end