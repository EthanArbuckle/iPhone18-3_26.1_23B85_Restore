@interface _UIBackdropViewSettingsUltraColored
- (void)setColorTint:(id)tint;
- (void)setDefaultValues;
@end

@implementation _UIBackdropViewSettingsUltraColored

- (void)setDefaultValues
{
  v10.receiver = self;
  v10.super_class = _UIBackdropViewSettingsUltraColored;
  [(_UIBackdropViewSettings *)&v10 setDefaultValues];
  graphicsQuality = [(_UIBackdropViewSettings *)self graphicsQuality];
  if (graphicsQuality == 10)
  {
    [(_UIBackdropViewSettings *)self setRequiresColorStatistics:0];
    [(_UIBackdropViewSettings *)self setBackdropVisible:0];
    [(_UIBackdropViewSettings *)self setUsesBackdropEffectView:0];
    [(_UIBackdropViewSettings *)self setGrayscaleTintLevel:0.97];
    [(_UIBackdropViewSettings *)self setGrayscaleTintAlpha:0.1];
    v7 = 1.0;
    [(_UIBackdropViewSettings *)self setGrayscaleTintMaskAlpha:1.0];
    [(_UIBackdropViewSettings *)self setGrayscaleTintMaskImage:0];
    v8 = [[UIColor alloc] initWithRed:0.0196078431 green:0.0196078431 blue:0.0196078431 alpha:1.0];
    [(_UIBackdropViewSettingsUltraColored *)self setColorTint:v8];

    [(_UIBackdropViewSettings *)self setColorTintAlpha:0.98];
    v5 = &_UIBackdropViewSettingsSaturationDeltaFactorNone;
    v6 = &_UIBackdropViewSettingsBlurRadiusNone;
    if (!_AXSEnhanceBackgroundContrastEnabled())
    {
LABEL_6:
      [(_UIBackdropViewSettings *)self setColorTintMaskAlpha:1.0];
      [(_UIBackdropViewSettings *)self setColorTintMaskImage:0];
      [(_UIBackdropViewSettings *)self setBlurRadius:*v6];
      [(_UIBackdropViewSettings *)self setSaturationDeltaFactor:*v5];
      [(_UIBackdropViewSettings *)self setFilterMaskAlpha:1.0];
      [(_UIBackdropViewSettings *)self setFilterMaskImage:0];
      goto LABEL_7;
    }

LABEL_5:
    [(_UIBackdropViewSettings *)self setColorTintAlpha:v7];
    goto LABEL_6;
  }

  if (graphicsQuality == 100)
  {
    [(_UIBackdropViewSettings *)self setRequiresColorStatistics:0];
    [(_UIBackdropViewSettings *)self setBackdropVisible:1];
    [(_UIBackdropViewSettings *)self setGrayscaleTintLevel:0.97];
    [(_UIBackdropViewSettings *)self setGrayscaleTintAlpha:0.5];
    [(_UIBackdropViewSettings *)self setGrayscaleTintMaskAlpha:1.0];
    [(_UIBackdropViewSettings *)self setGrayscaleTintMaskImage:0];
    v4 = [[UIColor alloc] initWithRed:0.0196078431 green:0.0196078431 blue:0.0196078431 alpha:1.0];
    [(_UIBackdropViewSettingsUltraColored *)self setColorTint:v4];

    v5 = &_UIBackdropViewSettingsSaturationDeltaFactorDesaturate;
    v6 = &_UIBackdropViewSettingsBlurRadiusMedium;
    v7 = 0.85;
    goto LABEL_5;
  }

LABEL_7:
  v9 = +[UIColor whiteColor];
  [(_UIBackdropViewSettings *)self setLegibleColor:v9];
}

- (void)setColorTint:(id)tint
{
  tintCopy = tint;
  if (dyld_program_sdk_at_least())
  {
    v5 = [tintCopy colorWithAlphaComponent:1.0];
  }

  else
  {
    v5 = tintCopy;
  }

  v6 = v5;
  v7.receiver = self;
  v7.super_class = _UIBackdropViewSettingsUltraColored;
  [(_UIBackdropViewSettings *)&v7 setColorTint:v5];
}

@end