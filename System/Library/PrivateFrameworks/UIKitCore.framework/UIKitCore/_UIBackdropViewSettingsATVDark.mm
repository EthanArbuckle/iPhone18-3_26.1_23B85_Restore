@interface _UIBackdropViewSettingsATVDark
- (void)setDefaultValues;
@end

@implementation _UIBackdropViewSettingsATVDark

- (void)setDefaultValues
{
  v11.receiver = self;
  v11.super_class = _UIBackdropViewSettingsATVDark;
  [(_UIBackdropViewSettings *)&v11 setDefaultValues];
  v3 = _AXSEnhanceBackgroundContrastEnabled();
  if ([(_UIBackdropViewSettings *)self graphicsQuality]== 10 || v3)
  {
    [(_UIBackdropViewSettings *)self setRequiresColorStatistics:0];
    [(_UIBackdropViewSettings *)self setBackdropVisible:0];
    [(_UIBackdropViewSettings *)self setUsesBackdropEffectView:0];
    [(_UIBackdropViewSettings *)self setUsesColorTintView:1];
    [(_UIBackdropViewSettings *)self setGrayscaleTintLevel:0.0];
    [(_UIBackdropViewSettings *)self setGrayscaleTintAlpha:0.0];
    [(_UIBackdropViewSettings *)self setGrayscaleTintMaskAlpha:1.0];
    [(_UIBackdropViewSettings *)self setGrayscaleTintMaskImage:0];
    v7 = [UIColor colorWithRed:0.117647059 green:0.117647059 blue:0.117647059 alpha:1.0];
    [(_UIBackdropViewSettings *)self setColorTint:v7];

    [(_UIBackdropViewSettings *)self setColorTintAlpha:0.65];
    [(_UIBackdropViewSettings *)self setColorTintMaskAlpha:1.0];
    [(_UIBackdropViewSettings *)self setColorTintMaskImage:0];
    [(_UIBackdropViewSettings *)self setBlurRadius:0.0];
    [(_UIBackdropViewSettings *)self setSaturationDeltaFactor:1.0];
    [(_UIBackdropViewSettings *)self setFilterMaskAlpha:1.0];
    [(_UIBackdropViewSettings *)self setFilterMaskImage:0];
    v8 = +[UIColor whiteColor];
    [(_UIBackdropViewSettings *)self setLegibleColor:v8];

    if (v3)
    {
      v9 = [UIColor colorWithRed:0.345098039 green:0.368627451 blue:0.384313725 alpha:1.0];
      [(_UIBackdropViewSettings *)self setColorTint:v9];

      [(_UIBackdropViewSettings *)self setColorTintAlpha:1.0];
    }
  }

  else if ([(_UIBackdropViewSettings *)self graphicsQuality]== 100)
  {
    [(_UIBackdropViewSettings *)self setRequiresColorStatistics:0];
    [(_UIBackdropViewSettings *)self setBackdropVisible:1];
    [(_UIBackdropViewSettings *)self setUsesColorTintView:1];
    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
    }

    v4 = _UIInternalPreferencesRevisionVar;
    if (_UIInternalPreferencesRevisionVar < 1)
    {
      goto LABEL_7;
    }

    v10 = _UIInternalPreference_TVVisualEffectWithColorMatrix;
    if (_UIInternalPreferencesRevisionVar == _UIInternalPreference_TVVisualEffectWithColorMatrix)
    {
      goto LABEL_7;
    }

    while (v4 >= v10)
    {
      _UIInternalPreferenceSync(v4, &_UIInternalPreference_TVVisualEffectWithColorMatrix, @"TVVisualEffectWithColorMatrix", _UIInternalPreferenceUpdateBool);
      v10 = _UIInternalPreference_TVVisualEffectWithColorMatrix;
      if (v4 == _UIInternalPreference_TVVisualEffectWithColorMatrix)
      {
        goto LABEL_7;
      }
    }

    if (byte_1EA95E12C)
    {
LABEL_7:
      [(_UIBackdropViewSettings *)self setUsesColorOffset:1];
      [(_UIBackdropViewSettings *)self setColorOffsetAlpha:0.06];
    }

    [(_UIBackdropViewSettings *)self setGrayscaleTintLevel:0.0];
    [(_UIBackdropViewSettings *)self setGrayscaleTintAlpha:0.0];
    [(_UIBackdropViewSettings *)self setGrayscaleTintMaskAlpha:1.0];
    [(_UIBackdropViewSettings *)self setGrayscaleTintMaskImage:0];
    v5 = [UIColor colorWithRed:0.117647059 green:0.117647059 blue:0.117647059 alpha:1.0];
    [(_UIBackdropViewSettings *)self setColorTint:v5];

    [(_UIBackdropViewSettings *)self setColorTintAlpha:0.5];
    [(_UIBackdropViewSettings *)self setColorTintMaskAlpha:1.0];
    [(_UIBackdropViewSettings *)self setColorTintMaskImage:0];
    [(_UIBackdropViewSettings *)self setBlurRadius:90.0];
    [(_UIBackdropViewSettings *)self setSaturationDeltaFactor:1.4];
    [(_UIBackdropViewSettings *)self setFilterMaskAlpha:1.0];
    [(_UIBackdropViewSettings *)self setFilterMaskImage:0];
    v6 = +[UIColor whiteColor];
    [(_UIBackdropViewSettings *)self setLegibleColor:v6];
  }
}

@end