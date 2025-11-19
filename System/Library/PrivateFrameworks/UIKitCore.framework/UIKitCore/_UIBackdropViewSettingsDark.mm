@interface _UIBackdropViewSettingsDark
- (void)computeOutputSettingsUsingModel:(id)a3;
- (void)setDefaultValues;
@end

@implementation _UIBackdropViewSettingsDark

- (void)setDefaultValues
{
  v17.receiver = self;
  v17.super_class = _UIBackdropViewSettingsDark;
  [(_UIBackdropViewSettings *)&v17 setDefaultValues];
  graphicsQuality = self->super._graphicsQuality;
  if (graphicsQuality == 10)
  {
    self->super._requiresColorStatistics = 0;
    self->super._backdropVisible = 0;
    self->super._usesBackdropEffectView = 0;
    self->super._usesColorTintView = 0;
    *&self->super._grayscaleTintLevel = xmmword_18A677D50;
    if (_AXSEnhanceBackgroundContrastEnabled())
    {
      self->super._grayscaleTintAlpha = 1.0;
    }

    v4 = &_UIBackdropViewSettingsSaturationDeltaFactorNone;
    v5 = &_UIBackdropViewSettingsBlurRadiusNone;
    goto LABEL_7;
  }

  if (graphicsQuality == 100)
  {
    self->super._requiresColorStatistics = 0;
    self->super._backdropVisible = 1;
    self->super._usesColorTintView = 0;
    *&self->super._grayscaleTintLevel = xmmword_18A677D60;
    v4 = &_UIBackdropViewSettingsSaturationDeltaFactorStrong;
    v5 = &_UIBackdropViewSettingsBlurRadiusMedium;
LABEL_7:
    grayscaleTintMaskImage = self->super._grayscaleTintMaskImage;
    self->super._grayscaleTintMaskAlpha = 1.0;
    self->super._grayscaleTintMaskImage = 0;

    colorTint = self->super._colorTint;
    self->super._colorTint = 0;

    __asm { FMOV            V0.2D, #1.0 }

    *&self->super._colorTintAlpha = _Q0;
    colorTintMaskImage = self->super._colorTintMaskImage;
    self->super._colorTintMaskImage = 0;

    *&self->super._blurRadius = *v5;
    *&self->super._saturationDeltaFactor = *v4;
    filterMaskImage = self->super._filterMaskImage;
    self->super._filterMaskAlpha = 1.0;
    self->super._filterMaskImage = 0;
  }

  v15 = +[UIColor whiteColor];
  legibleColor = self->super._legibleColor;
  self->super._legibleColor = v15;
}

- (void)computeOutputSettingsUsingModel:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = _UIBackdropViewSettingsDark;
  [(_UIBackdropViewSettings *)&v5 computeOutputSettingsUsingModel:v4];
  if (v4[4] == 10 && v4[7] == 2)
  {
    self->super._grayscaleTintAlpha = 0.86;
  }
}

@end