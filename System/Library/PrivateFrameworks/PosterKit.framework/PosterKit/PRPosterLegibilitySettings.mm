@interface PRPosterLegibilitySettings
+ (PRPosterLegibilitySettings)legibilitySettingsWithUILegibilitySettings:(id)settings;
+ (id)legibilitySettingsForContentColor:(id)color contrast:(double)contrast;
+ (id)legibilitySettingsForStyle:(int64_t)style primaryColor:(id)color secondaryColor:(id)secondaryColor shadowColor:(id)shadowColor;
+ (id)prLegibilitySettingsForPUILegibilitySettings:(id)settings;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLegibilitySettings:(id)settings;
- (PRPosterLegibilitySettings)initWithBSXPCCoder:(id)coder;
- (PRPosterLegibilitySettings)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)legibilitySettingsByApplyingShadowRadiusMultiplier:(double)multiplier;
- (id)legibilitySettingsByOverridingShadowAlpha:(double)alpha;
@end

@implementation PRPosterLegibilitySettings

- (PRPosterLegibilitySettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PRPosterLegibilitySettings;
  v5 = [(PRPosterLegibilitySettings *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_underlyingLegibilitySettings"];
    underlyingLegibilitySettings = v5->_underlyingLegibilitySettings;
    v5->_underlyingLegibilitySettings = v6;
  }

  return v5;
}

- (PRPosterLegibilitySettings)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PRPosterLegibilitySettings;
  v5 = [(PRPosterLegibilitySettings *)&v10 init];
  if (v5 && ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_underlyingLegibilitySettings"], v6 = objc_claimAutoreleasedReturnValue(), underlyingLegibilitySettings = v5->_underlyingLegibilitySettings, v5->_underlyingLegibilitySettings = v6, underlyingLegibilitySettings, !v5->_underlyingLegibilitySettings))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

+ (id)legibilitySettingsForContentColor:(id)color contrast:(double)contrast
{
  v5 = [MEMORY[0x1E69C5588] legibilitySettingsForContentColor:color contrast:contrast];
  v6 = [self prLegibilitySettingsForPUILegibilitySettings:v5];

  return v6;
}

+ (id)legibilitySettingsForStyle:(int64_t)style primaryColor:(id)color secondaryColor:(id)secondaryColor shadowColor:(id)shadowColor
{
  v7 = [MEMORY[0x1E69C5588] legibilitySettingsForStyle:style primaryColor:color secondaryColor:secondaryColor shadowColor:shadowColor];
  v8 = [self prLegibilitySettingsForPUILegibilitySettings:v7];

  return v8;
}

+ (id)prLegibilitySettingsForPUILegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (settingsCopy)
  {
    v5 = objc_alloc_init(PRPosterLegibilitySettings);
    objc_storeStrong(&v5->_underlyingLegibilitySettings, settings);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (PRPosterLegibilitySettings)legibilitySettingsWithUILegibilitySettings:(id)settings
{
  if (settings)
  {
    v4 = [MEMORY[0x1E69C5588] legibilitySettingsWithUILegibilitySettings:?];
    v5 = [self prLegibilitySettingsForPUILegibilitySettings:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)legibilitySettingsByApplyingShadowRadiusMultiplier:(double)multiplier
{
  v5 = objc_opt_class();
  v6 = [(PUIPosterLegibilitySettings *)self->_underlyingLegibilitySettings legibilitySettingsByApplyingShadowRadiusMultiplier:multiplier];
  v7 = [v5 prLegibilitySettingsForPUILegibilitySettings:v6];

  return v7;
}

- (id)legibilitySettingsByOverridingShadowAlpha:(double)alpha
{
  v5 = objc_opt_class();
  v6 = [(PUIPosterLegibilitySettings *)self->_underlyingLegibilitySettings legibilitySettingsByOverridingShadowAlpha:alpha];
  v7 = [v5 prLegibilitySettingsForPUILegibilitySettings:v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PRPosterLegibilitySettings allocWithZone:?]];
  v5 = [(PUIPosterLegibilitySettings *)self->_underlyingLegibilitySettings copy];
  underlyingLegibilitySettings = v4->_underlyingLegibilitySettings;
  v4->_underlyingLegibilitySettings = v5;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
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

- (BOOL)isEqualToLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  v5 = settingsCopy;
  if (settingsCopy)
  {
    if (self == settingsCopy)
    {
      v6 = 1;
    }

    else
    {
      v6 = [(PUIPosterLegibilitySettings *)settingsCopy->_underlyingLegibilitySettings isEqual:self->_underlyingLegibilitySettings];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end