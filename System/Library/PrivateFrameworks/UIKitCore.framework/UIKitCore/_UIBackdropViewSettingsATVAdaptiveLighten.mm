@interface _UIBackdropViewSettingsATVAdaptiveLighten
- (void)setDefaultValues;
@end

@implementation _UIBackdropViewSettingsATVAdaptiveLighten

- (void)setDefaultValues
{
  v14.receiver = self;
  v14.super_class = _UIBackdropViewSettingsATVAdaptiveLighten;
  [(_UIBackdropViewSettings *)&v14 setDefaultValues];
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
    v8 = +[UIColor whiteColor];
    [(_UIBackdropViewSettings *)self setColorTint:v8];

    [(_UIBackdropViewSettings *)self setColorTintAlpha:0.0];
    [(_UIBackdropViewSettings *)self setColorTintMaskAlpha:1.0];
    [(_UIBackdropViewSettings *)self setColorTintMaskImage:0];
    [(_UIBackdropViewSettings *)self setBlurRadius:0.0];
    [(_UIBackdropViewSettings *)self setSaturationDeltaFactor:1.0];
    [(_UIBackdropViewSettings *)self setFilterMaskAlpha:1.0];
    [(_UIBackdropViewSettings *)self setFilterMaskImage:0];
    v9 = +[UIColor whiteColor];
    [(_UIBackdropViewSettings *)self setLegibleColor:v9];

    if (!v3)
    {
      return;
    }

    v10 = [UIColor colorWithRed:0.643137255 green:0.666666667 blue:0.682352941 alpha:1.0];
    [(_UIBackdropViewSettings *)self setColorTint:v10];

    [(_UIBackdropViewSettings *)self setColorTintAlpha:1.0];
    v7 = +[UIColor blackColor];
  }

  else
  {
    if ([(_UIBackdropViewSettings *)self graphicsQuality]!= 100)
    {
      return;
    }

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

    v12 = _UIInternalPreference_TVVisualEffectWithColorMatrix;
    if (_UIInternalPreferencesRevisionVar == _UIInternalPreference_TVVisualEffectWithColorMatrix)
    {
      goto LABEL_7;
    }

    while (v4 >= v12)
    {
      _UIInternalPreferenceSync(v4, &_UIInternalPreference_TVVisualEffectWithColorMatrix, @"TVVisualEffectWithColorMatrix", _UIInternalPreferenceUpdateBool);
      v12 = _UIInternalPreference_TVVisualEffectWithColorMatrix;
      if (v4 == _UIInternalPreference_TVVisualEffectWithColorMatrix)
      {
        goto LABEL_7;
      }
    }

    if (byte_1EA95E12C)
    {
LABEL_7:
      [(_UIBackdropViewSettings *)self setUsesColorOffset:1];
      v13[0] = xmmword_18A677BC0;
      v13[1] = xmmword_18A677BD0;
      v13[2] = xmmword_18A677BE0;
      v13[3] = xmmword_18A677BF0;
      v13[4] = xmmword_18A6685B0;
      v5 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v13];
      [(_UIBackdropViewSettings *)self setColorOffsetMatrix:v5];
    }

    [(_UIBackdropViewSettings *)self setGrayscaleTintLevel:0.0];
    [(_UIBackdropViewSettings *)self setGrayscaleTintAlpha:0.0];
    [(_UIBackdropViewSettings *)self setGrayscaleTintMaskAlpha:1.0];
    [(_UIBackdropViewSettings *)self setGrayscaleTintMaskImage:0];
    v6 = +[UIColor whiteColor];
    [(_UIBackdropViewSettings *)self setColorTint:v6];

    [(_UIBackdropViewSettings *)self setColorTintAlpha:0.07];
    [(_UIBackdropViewSettings *)self setColorTintMaskAlpha:1.0];
    [(_UIBackdropViewSettings *)self setColorTintMaskImage:0];
    [(_UIBackdropViewSettings *)self setBlurRadius:60.0];
    [(_UIBackdropViewSettings *)self setSaturationDeltaFactor:1.3];
    [(_UIBackdropViewSettings *)self setFilterMaskAlpha:1.0];
    [(_UIBackdropViewSettings *)self setFilterMaskImage:0];
    v7 = +[UIColor whiteColor];
  }

  v11 = v7;
  [(_UIBackdropViewSettings *)self setLegibleColor:v7];
}

@end