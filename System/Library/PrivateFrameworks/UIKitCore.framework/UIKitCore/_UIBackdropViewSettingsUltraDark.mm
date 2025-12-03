@interface _UIBackdropViewSettingsUltraDark
- (void)setDefaultValues;
@end

@implementation _UIBackdropViewSettingsUltraDark

- (void)setDefaultValues
{
  v9.receiver = self;
  v9.super_class = _UIBackdropViewSettingsUltraDark;
  [(_UIBackdropViewSettingsNonAdaptive *)&v9 setDefaultValues];
  graphicsQuality = [(_UIBackdropViewSettings *)self graphicsQuality];
  if (graphicsQuality == 10)
  {
    [(_UIBackdropViewSettings *)self setRequiresColorStatistics:0];
    [(_UIBackdropViewSettings *)self setBackdropVisible:0];
    [(_UIBackdropViewSettings *)self setUsesBackdropEffectView:0];
    [(_UIBackdropViewSettings *)self setUsesColorTintView:0];
    [(_UIBackdropViewSettings *)self setGrayscaleTintLevel:0.02];
    [(_UIBackdropViewSettings *)self setGrayscaleTintAlpha:0.85];
    v7 = _AXSEnhanceBackgroundContrastEnabled();
    v6 = 1.0;
    v4 = &_UIBackdropViewSettingsSaturationDeltaFactorNone;
    v5 = &_UIBackdropViewSettingsBlurRadiusNone;
    if (!v7)
    {
LABEL_6:
      [(_UIBackdropViewSettings *)self setGrayscaleTintMaskAlpha:1.0];
      [(_UIBackdropViewSettings *)self setGrayscaleTintMaskImage:0];
      [(_UIBackdropViewSettings *)self setColorTint:0];
      [(_UIBackdropViewSettings *)self setColorTintAlpha:1.0];
      [(_UIBackdropViewSettings *)self setColorTintMaskAlpha:1.0];
      [(_UIBackdropViewSettings *)self setColorTintMaskImage:0];
      [(_UIBackdropViewSettings *)self setBlurRadius:*v5];
      [(_UIBackdropViewSettings *)self setSaturationDeltaFactor:*v4];
      [(_UIBackdropViewSettings *)self setFilterMaskAlpha:1.0];
      [(_UIBackdropViewSettings *)self setFilterMaskImage:0];
      goto LABEL_7;
    }

LABEL_5:
    [(_UIBackdropViewSettings *)self setGrayscaleTintAlpha:v6];
    goto LABEL_6;
  }

  if (graphicsQuality == 100)
  {
    [(_UIBackdropViewSettings *)self setRequiresColorStatistics:0];
    [(_UIBackdropViewSettings *)self setBackdropVisible:1];
    [(_UIBackdropViewSettings *)self setUsesColorTintView:0];
    [(_UIBackdropViewSettings *)self setGrayscaleTintLevel:0.02];
    v4 = &_UIBackdropViewSettingsSaturationDeltaFactorStrong;
    v5 = &_UIBackdropViewSettingsBlurRadiusSmall;
    v6 = 0.85;
    goto LABEL_5;
  }

LABEL_7:
  v8 = +[UIColor whiteColor];
  [(_UIBackdropViewSettings *)self setLegibleColor:v8];
}

@end