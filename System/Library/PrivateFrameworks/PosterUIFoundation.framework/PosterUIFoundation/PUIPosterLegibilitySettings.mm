@interface PUIPosterLegibilitySettings
+ (id)legibilitySettingsForContentColor:(id)a3 contrast:(double)a4;
+ (id)legibilitySettingsForStyle:(int64_t)a3 primaryColor:(id)a4 secondaryColor:(id)a5 shadowColor:(id)a6;
+ (id)legibilitySettingsWithUILegibilitySettings:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLegibilitySettings:(id)a3;
- (NSString)description;
- (PUIPosterLegibilitySettings)initWithBSXPCCoder:(id)a3;
- (PUIPosterLegibilitySettings)initWithCoder:(id)a3;
- (PUIPosterLegibilitySettings)initWithStyle:(int64_t)a3 primaryColor:(id)a4 secondaryColor:(id)a5 shadowColor:(id)a6;
- (id)convertToUILegibility;
- (id)copyWithZone:(_NSZone *)a3;
- (id)legibilitySettingsByApplyingShadowRadiusMultiplier:(double)a3;
- (id)legibilitySettingsByOverridingShadowAlpha:(double)a3;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PUIPosterLegibilitySettings

+ (id)legibilitySettingsWithUILegibilitySettings:(id)a3
{
  v4 = a3;
  NSClassFromString(&cfstr_Uilegibilityse.isa);
  if (!v4)
  {
    [PUIPosterLegibilitySettings legibilitySettingsWithUILegibilitySettings:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PUIPosterLegibilitySettings legibilitySettingsWithUILegibilitySettings:a2];
  }

  v5 = [v4 style];
  if (v5 == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5 == 1;
  }

  v7 = [PUIPosterLegibilitySettings alloc];
  v8 = [v4 primaryColor];
  v9 = [v4 secondaryColor];
  v10 = [v4 shadowColor];
  v11 = [(PUIPosterLegibilitySettings *)v7 initWithStyle:v6 primaryColor:v8 secondaryColor:v9 shadowColor:v10];

  v11->_source = 2;
  v12 = [v4 copy];
  specifiedLegibilitySettings = v11->_specifiedLegibilitySettings;
  v11->_specifiedLegibilitySettings = v12;

  return v11;
}

+ (id)legibilitySettingsForContentColor:(id)a3 contrast:(double)a4
{
  v7 = a3;
  NSClassFromString(&cfstr_Uicolor.isa);
  if (!v7)
  {
    [PUIPosterLegibilitySettings legibilitySettingsForContentColor:a2 contrast:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PUIPosterLegibilitySettings legibilitySettingsForContentColor:a2 contrast:?];
  }

  v8 = [objc_alloc(MEMORY[0x1E69DD5B8]) initWithContentColor:v7 contrast:a4];
  v9 = [v8 style];
  if (v9 == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9 == 1;
  }

  v11 = [v8 primaryColor];
  v12 = [v8 secondaryColor];
  v13 = [v8 shadowColor];
  v14 = [a1 legibilitySettingsForStyle:v10 primaryColor:v11 secondaryColor:v12 shadowColor:v13];

  [v14 setContentColor:v7];
  [v14 setContrast:a4];
  v14[6] = 1;

  return v14;
}

+ (id)legibilitySettingsForStyle:(int64_t)a3 primaryColor:(id)a4 secondaryColor:(id)a5 shadowColor:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [[a1 alloc] initWithStyle:a3 primaryColor:v12 secondaryColor:v11 shadowColor:v10];

  return v13;
}

- (PUIPosterLegibilitySettings)initWithStyle:(int64_t)a3 primaryColor:(id)a4 secondaryColor:(id)a5 shadowColor:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (a3 >= 3)
  {
    [PUIPosterLegibilitySettings initWithStyle:a2 primaryColor:? secondaryColor:? shadowColor:?];
  }

  v14 = v13;
  if (a3)
  {
    v15 = v11;
    NSClassFromString(&cfstr_Uicolor.isa);
    if (!v15)
    {
      [PUIPosterLegibilitySettings initWithStyle:a2 primaryColor:? secondaryColor:? shadowColor:?];
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PUIPosterLegibilitySettings initWithStyle:a2 primaryColor:? secondaryColor:? shadowColor:?];
    }

    v16 = v12;
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
    v19 = [v11 copy];
    v20 = *(v18 + 7);
    *(v18 + 7) = v19;

    v21 = [v12 copy];
    v22 = *(v18 + 8);
    *(v18 + 8) = v21;

    v23 = [v14 copy];
    v24 = *(v18 + 9);
    *(v18 + 9) = v23;

    *(v18 + 5) = a3;
    *(v18 + 6) = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *(v18 + 24) = _Q0;
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
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

      v7 = [(PUIPosterLegibilitySettings *)self primaryColor];
      v8 = [(PUIPosterLegibilitySettings *)self secondaryColor];
      v9 = [(PUIPosterLegibilitySettings *)self shadowColor];
      v10 = [v4 initWithStyle:v6 primaryColor:v7 secondaryColor:v8 shadowColor:v9];
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

- (id)legibilitySettingsByApplyingShadowRadiusMultiplier:(double)a3
{
  v4 = [(PUIPosterLegibilitySettings *)self copyWithZone:0];
  v4[4] = a3;

  return v4;
}

- (id)legibilitySettingsByOverridingShadowAlpha:(double)a3
{
  v4 = [(PUIPosterLegibilitySettings *)self copyWithZone:0];
  v4[3] = a3;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = (isKindOfClass & 1) != 0 && [(PUIPosterLegibilitySettings *)self isEqualToLegibilitySettings:v4];
  }

  return v7;
}

- (BOOL)isEqualToLegibilitySettings:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v18 = 1;
  }

  else if (v4 && (v6 = [(PUIPosterLegibilitySettings *)v4 style], v6 == [(PUIPosterLegibilitySettings *)self style]))
  {
    v7 = [(PUIPosterLegibilitySettings *)self convertToUILegibility];
    v8 = [(PUIPosterLegibilitySettings *)v5 convertToUILegibility];
    v9 = [v8 primaryColor];
    v10 = [v7 primaryColor];
    v11 = BSEqualObjects();

    if (v11 && ([v8 secondaryColor], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "secondaryColor"), v13 = objc_claimAutoreleasedReturnValue(), v14 = BSEqualObjects(), v13, v12, v14) && (objc_msgSend(v8, "shadowColor"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "shadowColor"), v16 = objc_claimAutoreleasedReturnValue(), v17 = BSEqualObjects(), v16, v15, v17) && (objc_msgSend(v7, "shadowRadius"), objc_msgSend(v8, "shadowRadius"), BSFloatEqualToFloat()) && (objc_msgSend(v7, "shadowAlpha"), objc_msgSend(v8, "shadowAlpha"), BSFloatEqualToFloat()) && (objc_msgSend(v7, "imageOutset"), objc_msgSend(v8, "imageOutset"), BSFloatEqualToFloat()))
    {
      [v7 minFillHeight];
      [v8 minFillHeight];
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
  v2 = [(PUIPosterLegibilitySettings *)self convertToUILegibility];
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendInteger:{objc_msgSend(v2, "style")}];
  v5 = [v2 primaryColor];
  v6 = [v3 appendObject:v5];

  v7 = [v2 secondaryColor];
  v8 = [v3 appendObject:v7];

  v9 = [v2 shadowColor];
  v10 = [v3 appendObject:v9];

  [v2 shadowRadius];
  v11 = [v3 appendCGFloat:?];
  [v2 shadowAlpha];
  v12 = [v3 appendCGFloat:?];
  [v2 imageOutset];
  v13 = [v3 appendCGFloat:?];
  [v2 minFillHeight];
  v14 = [v3 appendCGFloat:?];
  v15 = [v3 hash];

  return v15;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(PUIPosterLegibilitySettings *)self source];
  switch(v4)
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
      v17 = [(PUIPosterLegibilitySettings *)self contentColor];
      v18 = [v3 appendObject:v17 withName:@"contentColor" skipIfNil:1];

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
      v8 = [(PUIPosterLegibilitySettings *)self primaryColor];
      v9 = [v3 appendObject:v8 withName:@"primaryColor" skipIfNil:1];

      v10 = [(PUIPosterLegibilitySettings *)self secondaryColor];
      v11 = [v3 appendObject:v10 withName:@"secondaryColor" skipIfNil:1];

      v12 = [(PUIPosterLegibilitySettings *)self shadowColor];
      v13 = [v3 appendObject:v12 withName:@"shadowColor" skipIfNil:1];

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

  v23 = [v3 build];

  return v23;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v8 = a3;
  if ([(PUIPosterLegibilitySettings *)self source])
  {
    if ([(PUIPosterLegibilitySettings *)self source]== 1)
    {
      v4 = [(PUIPosterLegibilitySettings *)self contentColor];
      [v8 encodeObject:v4 forKey:@"contentColor"];

      [(PUIPosterLegibilitySettings *)self contrast];
      [v8 encodeDouble:@"contrast" forKey:?];
    }

    else if ([(PUIPosterLegibilitySettings *)self source]== 2)
    {
      [v8 encodeObject:self->_specifiedLegibilitySettings forKey:@"specifiedLegibilitySettings"];
    }
  }

  else
  {
    v5 = [(PUIPosterLegibilitySettings *)self primaryColor];
    [v8 encodeObject:v5 forKey:@"primaryColor"];

    v6 = [(PUIPosterLegibilitySettings *)self shadowColor];
    [v8 encodeObject:v6 forKey:@"shadowColor"];

    v7 = [(PUIPosterLegibilitySettings *)self secondaryColor];
    [v8 encodeObject:v7 forKey:@"secondaryColor"];
  }

  [v8 encodeInt64:-[PUIPosterLegibilitySettings style](self forKey:{"style"), @"legibilityStyle"}];
  [v8 encodeInt64:-[PUIPosterLegibilitySettings source](self forKey:{"source"), @"source"}];
  [v8 encodeDouble:@"shadowAlphaOverride" forKey:self->_shadowAlphaOverride];
  [v8 encodeDouble:@"shadowRadiusMultiplier" forKey:self->_shadowRadiusMultiplier];
}

- (PUIPosterLegibilitySettings)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PUIPosterLegibilitySettings;
  v5 = [(PUIPosterLegibilitySettings *)&v23 init];
  if (v5)
  {
    v5->_style = [v4 decodeInt64ForKey:@"legibilityStyle"];
    v5->_source = [v4 decodeInt64ForKey:@"source"];
    [v4 decodeDoubleForKey:@"shadowAlphaOverride"];
    v5->_shadowAlphaOverride = v6;
    [v4 decodeDoubleForKey:@"shadowRadiusMultiplier"];
    v5->_shadowRadiusMultiplier = v7;
    if (![(PUIPosterLegibilitySettings *)v5 source])
    {
      v11 = objc_opt_self();
      v12 = [v4 decodeObjectOfClass:v11 forKey:@"primaryColor"];
      primaryColor = v5->_primaryColor;
      v5->_primaryColor = v12;

      v14 = objc_opt_self();
      v15 = [v4 decodeObjectOfClass:v14 forKey:@"shadowColor"];
      shadowColor = v5->_shadowColor;
      v5->_shadowColor = v15;

      v8 = objc_opt_self();
      v17 = [v4 decodeObjectOfClass:v8 forKey:@"secondaryColor"];
      secondaryColor = v5->_secondaryColor;
      v5->_secondaryColor = v17;
      goto LABEL_6;
    }

    if ([(PUIPosterLegibilitySettings *)v5 source]== 2)
    {
      v8 = objc_opt_self();
      v9 = [v4 decodeObjectOfClass:v8 forKey:@"specifiedLegibilitySettings"];
      secondaryColor = v5->_specifiedLegibilitySettings;
      v5->_specifiedLegibilitySettings = v9;
LABEL_6:

      goto LABEL_7;
    }

    if ([(PUIPosterLegibilitySettings *)v5 source]== 1)
    {
      v19 = objc_opt_self();
      v20 = [v4 decodeObjectOfClass:v19 forKey:@"contentColor"];
      contentColor = v5->_contentColor;
      v5->_contentColor = v20;

      [v4 decodeDoubleForKey:@"contrast"];
      v5->_contrast = v22;
    }
  }

LABEL_7:

  return v5;
}

- (PUIPosterLegibilitySettings)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PUIPosterLegibilitySettings;
  v5 = [(PUIPosterLegibilitySettings *)&v23 init];
  if (v5)
  {
    v5->_style = [v4 decodeInt64ForKey:@"legibilityStyle"];
    v5->_source = [v4 decodeInt64ForKey:@"source"];
    [v4 decodeDoubleForKey:@"shadowAlphaOverride"];
    v5->_shadowAlphaOverride = v6;
    [v4 decodeDoubleForKey:@"shadowRadiusMultiplier"];
    v5->_shadowRadiusMultiplier = v7;
    if (![(PUIPosterLegibilitySettings *)v5 source])
    {
      v11 = objc_opt_self();
      v12 = [v4 decodeObjectOfClass:v11 forKey:@"primaryColor"];
      primaryColor = v5->_primaryColor;
      v5->_primaryColor = v12;

      v14 = objc_opt_self();
      v15 = [v4 decodeObjectOfClass:v14 forKey:@"shadowColor"];
      shadowColor = v5->_shadowColor;
      v5->_shadowColor = v15;

      v8 = objc_opt_self();
      v17 = [v4 decodeObjectOfClass:v8 forKey:@"secondaryColor"];
      secondaryColor = v5->_secondaryColor;
      v5->_secondaryColor = v17;
      goto LABEL_6;
    }

    if ([(PUIPosterLegibilitySettings *)v5 source]== 2)
    {
      v8 = objc_opt_self();
      v9 = [v4 decodeObjectOfClass:v8 forKey:@"specifiedLegibilitySettings"];
      secondaryColor = v5->_specifiedLegibilitySettings;
      v5->_specifiedLegibilitySettings = v9;
LABEL_6:

      goto LABEL_7;
    }

    if ([(PUIPosterLegibilitySettings *)v5 source]== 1)
    {
      v19 = objc_opt_self();
      v20 = [v4 decodeObjectOfClass:v19 forKey:@"contentColor"];
      contentColor = v5->_contentColor;
      v5->_contentColor = v20;

      [v4 decodeDoubleForKey:@"contrast"];
      v5->_contrast = v22;
    }
  }

LABEL_7:

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  if ([(PUIPosterLegibilitySettings *)self source])
  {
    if ([(PUIPosterLegibilitySettings *)self source]== 1)
    {
      v4 = [(PUIPosterLegibilitySettings *)self contentColor];
      [v8 encodeObject:v4 forKey:@"contentColor"];

      [(PUIPosterLegibilitySettings *)self contrast];
      [v8 encodeDouble:@"contrast" forKey:?];
    }

    else if ([(PUIPosterLegibilitySettings *)self source]== 2)
    {
      [v8 encodeObject:self->_specifiedLegibilitySettings forKey:@"specifiedLegibilitySettings"];
    }
  }

  else
  {
    v5 = [(PUIPosterLegibilitySettings *)self primaryColor];
    [v8 encodeObject:v5 forKey:@"primaryColor"];

    v6 = [(PUIPosterLegibilitySettings *)self shadowColor];
    [v8 encodeObject:v6 forKey:@"shadowColor"];

    v7 = [(PUIPosterLegibilitySettings *)self secondaryColor];
    [v8 encodeObject:v7 forKey:@"secondaryColor"];
  }

  [v8 encodeInt64:-[PUIPosterLegibilitySettings style](self forKey:{"style"), @"legibilityStyle"}];
  [v8 encodeInt64:-[PUIPosterLegibilitySettings source](self forKey:{"source"), @"source"}];
  [v8 encodeDouble:@"shadowAlphaOverride" forKey:self->_shadowAlphaOverride];
  [v8 encodeDouble:@"shadowRadiusMultiplier" forKey:self->_shadowRadiusMultiplier];
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