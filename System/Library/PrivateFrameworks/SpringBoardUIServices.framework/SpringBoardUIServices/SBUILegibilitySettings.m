@interface SBUILegibilitySettings
+ (id)sharedInstanceForStyle:(int64_t)a3;
- ($7EAA55B41BE6719E250DE54AFC18E175)shadowSettings;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLegibilitySettings:(id)a3;
- (NSString)description;
- (SBUILegibilitySettings)initWithCoder:(id)a3;
- (SBUILegibilitySettings)initWithContentColor:(id)a3;
- (SBUILegibilitySettings)initWithContentColor:(id)a3 contrast:(double)a4;
- (SBUILegibilitySettings)initWithStyle:(int64_t)a3;
- (SBUILegibilitySettings)initWithStyle:(int64_t)a3 contentColor:(id)a4;
- (SBUILegibilitySettings)initWithStyle:(int64_t)a3 primaryColor:(id)a4 secondaryColor:(id)a5 shadowColor:(id)a6;
- (SBUILegibilitySettings)initWithStyle:(int64_t)a3 primaryColor:(id)a4 secondaryColor:(id)a5 shadowColor:(id)a6 shadowSettings:(id *)a7;
- (SBUILegibilitySettings)initWithStyle:(int64_t)a3 primaryColor:(id)a4 secondaryColor:(id)a5 shadowColor:(id)a6 shadowSettings:(id *)a7 minFillHeight:(double)a8;
- (id)_UILegibilitySettings;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_configureForStyle:(int64_t)a3 contentColor:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBUILegibilitySettings

+ (id)sharedInstanceForStyle:(int64_t)a3
{
  if (a3 == 2)
  {
    if (sharedInstanceForStyle__once_34 != -1)
    {
      +[SBUILegibilitySettings sharedInstanceForStyle:];
    }

    v3 = &sharedInstanceForStyle__instance_35;
  }

  else
  {
    if (sharedInstanceForStyle__once != -1)
    {
      +[SBUILegibilitySettings sharedInstanceForStyle:];
    }

    v3 = &sharedInstanceForStyle__instance;
  }

  v4 = *v3;

  return v4;
}

uint64_t __49__SBUILegibilitySettings_sharedInstanceForStyle___block_invoke()
{
  v0 = [[SBUILegibilitySettings alloc] initWithStyle:1];
  v1 = sharedInstanceForStyle__instance;
  sharedInstanceForStyle__instance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __49__SBUILegibilitySettings_sharedInstanceForStyle___block_invoke_2()
{
  v0 = [[SBUILegibilitySettings alloc] initWithStyle:2];
  v1 = sharedInstanceForStyle__instance_35;
  sharedInstanceForStyle__instance_35 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (SBUILegibilitySettings)initWithStyle:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = SBUILegibilitySettings;
  v4 = [(SBUILegibilitySettings *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(SBUILegibilitySettings *)v4 _configureForStyle:a3 contentColor:0];
  }

  return v5;
}

- (SBUILegibilitySettings)initWithContentColor:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69DD5C0] styleForContentColor:v4];
  v9.receiver = self;
  v9.super_class = SBUILegibilitySettings;
  v6 = [(SBUILegibilitySettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(SBUILegibilitySettings *)v6 _configureForStyle:v5 contentColor:v4];
  }

  return v7;
}

- (SBUILegibilitySettings)initWithContentColor:(id)a3 contrast:(double)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = SBUILegibilitySettings;
  v7 = [(SBUILegibilitySettings *)&v9 init];
  if (v7)
  {
    -[SBUILegibilitySettings _configureForStyle:contentColor:](v7, "_configureForStyle:contentColor:", [MEMORY[0x1E69DD5C0] styleForContentColor:v6 contrast:a4], v6);
  }

  return v7;
}

- (SBUILegibilitySettings)initWithStyle:(int64_t)a3 contentColor:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = SBUILegibilitySettings;
  v7 = [(SBUILegibilitySettings *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(SBUILegibilitySettings *)v7 _configureForStyle:a3 contentColor:v6];
  }

  return v8;
}

- (SBUILegibilitySettings)initWithStyle:(int64_t)a3 primaryColor:(id)a4 secondaryColor:(id)a5 shadowColor:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = SBUILegibilitySettings;
  v14 = [(SBUILegibilitySettings *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(SBUILegibilitySettings *)v14 _configureForStyle:a3 contentColor:0];
    objc_storeStrong(&v15->_primaryColor, a4);
    objc_storeStrong(&v15->_secondaryColor, a5);
    objc_storeStrong(&v15->_shadowColor, a6);
  }

  return v15;
}

- (SBUILegibilitySettings)initWithStyle:(int64_t)a3 primaryColor:(id)a4 secondaryColor:(id)a5 shadowColor:(id)a6 shadowSettings:(id *)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v20.receiver = self;
  v20.super_class = SBUILegibilitySettings;
  v16 = [(SBUILegibilitySettings *)&v20 init];
  v17 = v16;
  if (v16)
  {
    [(SBUILegibilitySettings *)v16 _configureForStyle:a3 contentColor:0];
    objc_storeStrong(&v17->_primaryColor, a4);
    objc_storeStrong(&v17->_secondaryColor, a5);
    objc_storeStrong(&v17->_shadowColor, a6);
    v18 = *&a7->var2;
    *&v17->_shadowSettings.shadowRadius = *&a7->var0;
    *&v17->_shadowSettings.imageOutset = v18;
  }

  return v17;
}

- (SBUILegibilitySettings)initWithStyle:(int64_t)a3 primaryColor:(id)a4 secondaryColor:(id)a5 shadowColor:(id)a6 shadowSettings:(id *)a7 minFillHeight:(double)a8
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v22.receiver = self;
  v22.super_class = SBUILegibilitySettings;
  v18 = [(SBUILegibilitySettings *)&v22 init];
  v19 = v18;
  if (v18)
  {
    [(SBUILegibilitySettings *)v18 _configureForStyle:a3 contentColor:0];
    objc_storeStrong(&v19->_primaryColor, a4);
    objc_storeStrong(&v19->_secondaryColor, a5);
    objc_storeStrong(&v19->_shadowColor, a6);
    v20 = *&a7->var2;
    *&v19->_shadowSettings.shadowRadius = *&a7->var0;
    *&v19->_shadowSettings.imageOutset = v20;
    v19->_minFillHeight = a8;
  }

  return v19;
}

- (id)_UILegibilitySettings
{
  cachedLegacyLegibiltiySettings = self->_cachedLegacyLegibiltiySettings;
  if (!cachedLegacyLegibiltiySettings)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD5B8]);
    style = self->_style;
    v6 = [(SBUILegibilitySettings *)self primaryColor];
    v7 = [(SBUILegibilitySettings *)self secondaryColor];
    v8 = [(SBUILegibilitySettings *)self shadowColor];
    v9 = [v4 initWithStyle:style primaryColor:v6 secondaryColor:v7 shadowColor:v8];
    v10 = self->_cachedLegacyLegibiltiySettings;
    self->_cachedLegacyLegibiltiySettings = v9;

    [(_UILegibilitySettings *)self->_cachedLegacyLegibiltiySettings setShadowAlpha:self->_shadowSettings.shadowAlpha];
    [(_UILegibilitySettings *)self->_cachedLegacyLegibiltiySettings setShadowRadius:self->_shadowSettings.shadowRadius];
    [(_UILegibilitySettings *)self->_cachedLegacyLegibiltiySettings setImageOutset:self->_shadowSettings.imageOutset];
    [(_UILegibilitySettings *)self->_cachedLegacyLegibiltiySettings setMinFillHeight:self->_minFillHeight];
    cachedLegacyLegibiltiySettings = self->_cachedLegacyLegibiltiySettings;
  }

  v11 = cachedLegacyLegibiltiySettings;

  return v11;
}

- (BOOL)isEqualToLegibilitySettings:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_15;
  }

  if (v4 == self)
  {
    v14 = 1;
    goto LABEL_17;
  }

  if (self->_style == v4->_style && (v6 = *&self->_shadowSettings.imageOutset, v17[0] = *&self->_shadowSettings.shadowRadius, v17[1] = v6, v7 = *&v4->_shadowSettings.imageOutset, v16[0] = *&v4->_shadowSettings.shadowRadius, v16[1] = v7, SBUI_LegibilityShadowSettingsAreEqual(v17, v16)) && vabdd_f64(self->_minFillHeight, v5->_minFillHeight) < 2.22044605e-16 && ((primaryColor = self->_primaryColor, v9 = v5->_primaryColor, primaryColor == v9) || !(primaryColor | v9) || [(UIColor *)primaryColor _isSimilarToColor:0.01 withinPercentage:?]) && ((secondaryColor = self->_secondaryColor, v11 = v5->_secondaryColor, secondaryColor == v11) || !(secondaryColor | v11) || [(UIColor *)secondaryColor _isSimilarToColor:0.01 withinPercentage:?]))
  {
    shadowColor = self->_shadowColor;
    v13 = v5->_shadowColor;
    v14 = 1;
    if (shadowColor != v13 && shadowColor | v13)
    {
      v14 = [(UIColor *)shadowColor _isSimilarToColor:0.01 withinPercentage:?];
    }
  }

  else
  {
LABEL_15:
    v14 = 0;
  }

LABEL_17:

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 == self)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(SBUILegibilitySettings *)self isEqualToLegibilitySettings:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (unint64_t)hash
{
  result = self->_computedHash;
  if (!result)
  {
    style = self->_style;
    v5 = *&self->_shadowSettings.imageOutset;
    v11[0] = *&self->_shadowSettings.shadowRadius;
    v11[1] = v5;
    v6 = SBUILegibilityShadowSettingsHash(v11) ^ style;
    v7 = v6 ^ [(UIColor *)self->_primaryColor hash];
    v8 = [(UIColor *)self->_secondaryColor hash];
    v9 = v7 ^ v8 ^ [(UIColor *)self->_shadowColor hash];
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_minFillHeight];
    self->_computedHash = v9 ^ [v10 hash];

    return self->_computedHash;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[SBUILegibilitySettings allocWithZone:?]];
  v4->_style = self->_style;
  objc_storeStrong(&v4->_primaryColor, self->_primaryColor);
  objc_storeStrong(&v4->_secondaryColor, self->_secondaryColor);
  objc_storeStrong(&v4->_shadowColor, self->_shadowColor);
  v5 = *&self->_shadowSettings.imageOutset;
  *&v4->_shadowSettings.shadowRadius = *&self->_shadowSettings.shadowRadius;
  *&v4->_shadowSettings.imageOutset = v5;
  v4->_minFillHeight = self->_minFillHeight;
  return v4;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = v3;
  style = self->_style;
  v6 = @"SBUIModernLegibilityStyleDefault";
  if (style == 2)
  {
    v6 = @"SBUIModernLegibilityStyleDarkContentWithLightShadow";
  }

  if (style == 1)
  {
    v7 = @"SBUIModernLegibilityStyleLightContentWithDarkShadow";
  }

  else
  {
    v7 = v6;
  }

  v8 = [v3 appendObject:v7 withName:@"style"];
  v9 = [(SBUILegibilitySettings *)self primaryColor];
  v10 = [v4 appendObject:v9 withName:@"primaryColor"];

  v11 = [(SBUILegibilitySettings *)self secondaryColor];
  v12 = [v4 appendObject:v11 withName:@"secondaryColor"];

  v13 = [(SBUILegibilitySettings *)self shadowColor];
  v14 = [v4 appendObject:v13 withName:@"shadowColor"];

  [(SBUILegibilitySettings *)self minFillHeight];
  v16 = [v4 appendInteger:v15 withName:@"minFillHeight"];
  [(SBUILegibilitySettings *)self shadowSettings];
  v17 = NSDictionaryFromSBUILegibilityShadowSettings(&v21);
  v18 = [v4 appendObject:v17 withName:@"shadowSettings"];

  v19 = [v4 build];

  return v19;
}

- (SBUILegibilitySettings)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SBUILegibilitySettings;
  v5 = [(SBUILegibilitySettings *)&v17 init];
  if (v5)
  {
    v5->_style = [v4 decodeIntegerForKey:@"kSBUIModernLegibilityStyleKey"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSBUIModernLegibilityPrimaryColorKey"];
    primaryColor = v5->_primaryColor;
    v5->_primaryColor = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSBUIModernLegibilitySecondaryColorKey"];
    secondaryColor = v5->_secondaryColor;
    v5->_secondaryColor = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSBUIModernLegibilityShadowColorKey"];
    shadowColor = v5->_shadowColor;
    v5->_shadowColor = v10;

    v5->_shadowSettings.compositingFilter = [v4 decodeIntegerForKey:@"kSBUIModernLegibilityShadowCompositingFilterNameKey"];
    [v4 decodeDoubleForKey:@"kSBUIModernLegibilityShadowRadiusKey"];
    v5->_shadowSettings.shadowRadius = v12;
    [v4 decodeDoubleForKey:@"kSBUIModernLegibilityShadowAlphaKey"];
    v5->_shadowSettings.shadowAlpha = v13;
    [v4 decodeDoubleForKey:@"kSBUIModernLegibilityImageOutsetKey"];
    v5->_shadowSettings.imageOutset = v14;
    [v4 decodeDoubleForKey:@"kSBUIModernLegibilityMinFillHeightKey"];
    v5->_minFillHeight = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  style = self->_style;
  v5 = a3;
  [v5 encodeInteger:style forKey:@"kSBUIModernLegibilityStyleKey"];
  [v5 encodeObject:self->_primaryColor forKey:@"kSBUIModernLegibilityPrimaryColorKey"];
  [v5 encodeObject:self->_secondaryColor forKey:@"kSBUIModernLegibilitySecondaryColorKey"];
  [v5 encodeObject:self->_shadowColor forKey:@"kSBUIModernLegibilityShadowColorKey"];
  [v5 encodeInteger:self->_shadowSettings.compositingFilter forKey:@"kSBUIModernLegibilityShadowCompositingFilterNameKey"];
  [v5 encodeDouble:@"kSBUIModernLegibilityShadowRadiusKey" forKey:self->_shadowSettings.shadowRadius];
  [v5 encodeDouble:@"kSBUIModernLegibilityShadowAlphaKey" forKey:self->_shadowSettings.shadowAlpha];
  [v5 encodeDouble:@"kSBUIModernLegibilityImageOutsetKey" forKey:self->_shadowSettings.imageOutset];
  [(SBUILegibilitySettings *)self minFillHeight];
  [v5 encodeDouble:@"kSBUIModernLegibilityMinFillHeightKey" forKey:?];
}

- (void)_configureForStyle:(int64_t)a3 contentColor:(id)a4
{
  v6 = a4;
  v26 = v6;
  switch(a3)
  {
    case 2:
      if (v6)
      {
        ComputeLegibilityColorFromColor(v6);
      }

      else
      {
        [MEMORY[0x1E69DC888] blackColor];
      }
      v18 = ;
      primaryColor = self->_primaryColor;
      self->_primaryColor = v18;

      v22 = [(UIColor *)self->_primaryColor colorWithAlphaComponent:0.45];
      secondaryColor = self->_secondaryColor;
      self->_secondaryColor = v22;

      v24 = [MEMORY[0x1E69DC888] whiteColor];
      shadowColor = self->_shadowColor;
      self->_shadowColor = v24;

      v20 = 2;
      goto LABEL_13;
    case 1:
      v13 = [MEMORY[0x1E69DC888] whiteColor];
      v14 = self->_primaryColor;
      self->_primaryColor = v13;

      v15 = [(UIColor *)self->_primaryColor colorWithAlphaComponent:0.45];
      v16 = self->_secondaryColor;
      self->_secondaryColor = v15;

      if (v26)
      {
        ComputeLegibilityColorFromColor(v26);
      }

      else
      {
        [MEMORY[0x1E69DC888] blackColor];
      }
      v17 = ;
      v19 = self->_shadowColor;
      self->_shadowColor = v17;

      v20 = 1;
LABEL_13:
      *&self->_shadowSettings.shadowRadius = xmmword_1A9B2ABC0;
      self->_shadowSettings.imageOutset = 24.0;
      self->_shadowSettings.compositingFilter = v20;
      break;
    case 0:
      v7 = [MEMORY[0x1E69DC888] clearColor];
      v8 = self->_primaryColor;
      self->_primaryColor = v7;

      v9 = [MEMORY[0x1E69DC888] clearColor];
      v10 = self->_secondaryColor;
      self->_secondaryColor = v9;

      v11 = [MEMORY[0x1E69DC888] clearColor];
      v12 = self->_shadowColor;
      self->_shadowColor = v11;

      self->_shadowSettings.shadowRadius = 0.0;
      self->_shadowSettings.shadowAlpha = 0.0;
      self->_shadowSettings.imageOutset = 0.0;
      break;
  }

  self->_minFillHeight = 20.0;
  self->_style = a3;
}

- ($7EAA55B41BE6719E250DE54AFC18E175)shadowSettings
{
  v3 = *&self[2].var2;
  *&retstr->var0 = *&self[2].var0;
  *&retstr->var2 = v3;
  return self;
}

@end