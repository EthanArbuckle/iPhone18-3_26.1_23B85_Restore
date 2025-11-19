@interface PRPosterLegibilitySettings
+ (PRPosterLegibilitySettings)legibilitySettingsWithUILegibilitySettings:(id)a3;
+ (id)legibilitySettingsForContentColor:(id)a3 contrast:(double)a4;
+ (id)legibilitySettingsForStyle:(int64_t)a3 primaryColor:(id)a4 secondaryColor:(id)a5 shadowColor:(id)a6;
+ (id)prLegibilitySettingsForPUILegibilitySettings:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLegibilitySettings:(id)a3;
- (PRPosterLegibilitySettings)initWithBSXPCCoder:(id)a3;
- (PRPosterLegibilitySettings)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)legibilitySettingsByApplyingShadowRadiusMultiplier:(double)a3;
- (id)legibilitySettingsByOverridingShadowAlpha:(double)a3;
@end

@implementation PRPosterLegibilitySettings

- (PRPosterLegibilitySettings)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PRPosterLegibilitySettings;
  v5 = [(PRPosterLegibilitySettings *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_underlyingLegibilitySettings"];
    underlyingLegibilitySettings = v5->_underlyingLegibilitySettings;
    v5->_underlyingLegibilitySettings = v6;
  }

  return v5;
}

- (PRPosterLegibilitySettings)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PRPosterLegibilitySettings;
  v5 = [(PRPosterLegibilitySettings *)&v10 init];
  if (v5 && ([v4 decodeObjectOfClass:objc_opt_class() forKey:@"_underlyingLegibilitySettings"], v6 = objc_claimAutoreleasedReturnValue(), underlyingLegibilitySettings = v5->_underlyingLegibilitySettings, v5->_underlyingLegibilitySettings = v6, underlyingLegibilitySettings, !v5->_underlyingLegibilitySettings))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

+ (id)legibilitySettingsForContentColor:(id)a3 contrast:(double)a4
{
  v5 = [MEMORY[0x1E69C5588] legibilitySettingsForContentColor:a3 contrast:a4];
  v6 = [a1 prLegibilitySettingsForPUILegibilitySettings:v5];

  return v6;
}

+ (id)legibilitySettingsForStyle:(int64_t)a3 primaryColor:(id)a4 secondaryColor:(id)a5 shadowColor:(id)a6
{
  v7 = [MEMORY[0x1E69C5588] legibilitySettingsForStyle:a3 primaryColor:a4 secondaryColor:a5 shadowColor:a6];
  v8 = [a1 prLegibilitySettingsForPUILegibilitySettings:v7];

  return v8;
}

+ (id)prLegibilitySettingsForPUILegibilitySettings:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(PRPosterLegibilitySettings);
    objc_storeStrong(&v5->_underlyingLegibilitySettings, a3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (PRPosterLegibilitySettings)legibilitySettingsWithUILegibilitySettings:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E69C5588] legibilitySettingsWithUILegibilitySettings:?];
    v5 = [a1 prLegibilitySettingsForPUILegibilitySettings:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)legibilitySettingsByApplyingShadowRadiusMultiplier:(double)a3
{
  v5 = objc_opt_class();
  v6 = [(PUIPosterLegibilitySettings *)self->_underlyingLegibilitySettings legibilitySettingsByApplyingShadowRadiusMultiplier:a3];
  v7 = [v5 prLegibilitySettingsForPUILegibilitySettings:v6];

  return v7;
}

- (id)legibilitySettingsByOverridingShadowAlpha:(double)a3
{
  v5 = objc_opt_class();
  v6 = [(PUIPosterLegibilitySettings *)self->_underlyingLegibilitySettings legibilitySettingsByOverridingShadowAlpha:a3];
  v7 = [v5 prLegibilitySettingsForPUILegibilitySettings:v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PRPosterLegibilitySettings allocWithZone:?]];
  v5 = [(PUIPosterLegibilitySettings *)self->_underlyingLegibilitySettings copy];
  underlyingLegibilitySettings = v4->_underlyingLegibilitySettings;
  v4->_underlyingLegibilitySettings = v5;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (self == v4)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(PRPosterLegibilitySettings *)self isEqualToLegibilitySettings:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (BOOL)isEqualToLegibilitySettings:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (self == v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = [(PUIPosterLegibilitySettings *)v4->_underlyingLegibilitySettings isEqual:self->_underlyingLegibilitySettings];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end