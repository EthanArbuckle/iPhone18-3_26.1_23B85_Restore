@interface _UIBackdropViewSettingsUltraLight
- (_UIBackdropViewSettingsUltraLight)initWithDefaultValuesForGraphicsQuality:(int64_t)a3;
- (void)computeOutputSettingsUsingModel:(id)a3;
- (void)dealloc;
- (void)setDefaultValues;
@end

@implementation _UIBackdropViewSettingsUltraLight

- (_UIBackdropViewSettingsUltraLight)initWithDefaultValuesForGraphicsQuality:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = _UIBackdropViewSettingsUltraLight;
  v3 = [(_UIBackdropViewSettings *)&v6 initWithDefaultValuesForGraphicsQuality:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel__accessibilityButtonShapesDidChangeNotification_ name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];
  }

  return v3;
}

- (void)setDefaultValues
{
  v9.receiver = self;
  v9.super_class = _UIBackdropViewSettingsUltraLight;
  [(_UIBackdropViewSettings *)&v9 setDefaultValues];
  v3 = [(_UIBackdropViewSettings *)self graphicsQuality];
  if (v3 == 10)
  {
    [(_UIBackdropViewSettings *)self setRequiresColorStatistics:0];
    [(_UIBackdropViewSettings *)self setBackdropVisible:0];
    [(_UIBackdropViewSettings *)self setUsesBackdropEffectView:0];
    [(_UIBackdropViewSettings *)self setUsesColorTintView:0];
    [(_UIBackdropViewSettings *)self setGrayscaleTintLevel:0.97];
    [(_UIBackdropViewSettings *)self setGrayscaleTintAlpha:0.96];
    v7 = _AXSEnhanceBackgroundContrastEnabled();
    v4 = 1.0;
    v5 = &_UIBackdropViewSettingsSaturationDeltaFactorNone;
    v6 = &_UIBackdropViewSettingsBlurRadiusNone;
    if (!v7)
    {
LABEL_6:
      [(_UIBackdropViewSettings *)self setGrayscaleTintMaskAlpha:1.0];
      [(_UIBackdropViewSettings *)self setGrayscaleTintMaskImage:0];
      [(_UIBackdropViewSettings *)self setColorTint:0];
      [(_UIBackdropViewSettings *)self setColorTintAlpha:1.0];
      [(_UIBackdropViewSettings *)self setColorTintMaskAlpha:1.0];
      [(_UIBackdropViewSettings *)self setColorTintMaskImage:0];
      [(_UIBackdropViewSettings *)self setBlurRadius:*v6];
      [(_UIBackdropViewSettings *)self setSaturationDeltaFactor:*v5];
      [(_UIBackdropViewSettings *)self setFilterMaskAlpha:1.0];
      [(_UIBackdropViewSettings *)self setFilterMaskImage:0];
      goto LABEL_7;
    }

LABEL_5:
    [(_UIBackdropViewSettings *)self setGrayscaleTintAlpha:v4];
    goto LABEL_6;
  }

  if (v3 == 100)
  {
    [(_UIBackdropViewSettings *)self setRequiresColorStatistics:0];
    [(_UIBackdropViewSettings *)self setBackdropVisible:1];
    [(_UIBackdropViewSettings *)self setUsesColorTintView:0];
    [(_UIBackdropViewSettings *)self setGrayscaleTintLevel:0.97];
    v4 = dbl_18A677E20[_AXSButtonShapesEnabled() == 0];
    v5 = &_UIBackdropViewSettingsSaturationDeltaFactorStrong;
    v6 = &_UIBackdropViewSettingsBlurRadiusMedium;
    goto LABEL_5;
  }

LABEL_7:
  v8 = +[UIColor blackColor];
  [(_UIBackdropViewSettings *)self setLegibleColor:v8];
}

- (void)computeOutputSettingsUsingModel:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _UIBackdropViewSettingsUltraLight;
  [(_UIBackdropViewSettings *)&v18 computeOutputSettingsUsingModel:v4];
  if (![(_UIBackdropViewSettings *)self isEnabled])
  {
    [(_UIBackdropViewSettings *)self setGrayscaleTintLevel:0.6];
    v6 = 0.86;
    goto LABEL_7;
  }

  if ([(_UIBackdropViewSettings *)self isSelected]&& ![(_UIBackdropViewSettings *)self isHighlighted])
  {
    if (_MergedGlobals_991 != -1)
    {
      dispatch_once(&_MergedGlobals_991, &__block_literal_global_34);
    }

    [(_UIBackdropViewSettings *)self setColorTint:qword_1ED49C848];
    v15 = [(_UIBackdropViewSettings *)self graphicsQuality];
    if (v15 == 10)
    {
      v16 = 0.96;
    }

    else
    {
      if (v15 != 100)
      {
        goto LABEL_8;
      }

      v16 = 0.75;
    }

    [(_UIBackdropViewSettings *)self setColorTintAlpha:v16];
    goto LABEL_8;
  }

  if ([(_UIBackdropViewSettings *)self isHighlighted])
  {
    [v4 grayscaleTintAlpha];
    v6 = v5 * 0.6;
LABEL_7:
    [(_UIBackdropViewSettings *)self setGrayscaleTintAlpha:v6];
    goto LABEL_8;
  }

  if (!_AXSButtonShapesEnabled() && [(_UIBackdropViewSettings *)self graphicsQuality]== 100)
  {
    v7 = [v4 colorSettings];
    [v7 averageSaturation];
    v9 = v8;

    v10 = [v4 colorSettings];
    [v10 averageBrightness];
    v12 = v11;

    if (v12 <= 0.84)
    {
      if (v12 >= 0.2)
      {
LABEL_23:
        if (v9 <= 0.7)
        {
          goto LABEL_8;
        }

        [(_UIBackdropViewSettings *)self grayscaleTintAlpha];
        v6 = fmin(v9 + -0.7 + v17, 0.9);
        goto LABEL_7;
      }

      [v4 grayscaleTintAlpha];
      v14 = 0.2 - v12;
    }

    else
    {
      [v4 grayscaleTintAlpha];
      v14 = v12 + -0.84;
    }

    [(_UIBackdropViewSettings *)self setGrayscaleTintAlpha:fmin(v14 + v13, 0.9)];
    goto LABEL_23;
  }

LABEL_8:
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIBackdropViewSettingsUltraLight;
  [(_UIBackdropViewSettings *)&v4 dealloc];
}

@end