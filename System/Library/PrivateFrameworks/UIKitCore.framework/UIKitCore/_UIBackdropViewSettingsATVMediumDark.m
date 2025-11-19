@interface _UIBackdropViewSettingsATVMediumDark
- (void)setDefaultValues;
@end

@implementation _UIBackdropViewSettingsATVMediumDark

- (void)setDefaultValues
{
  v9.receiver = self;
  v9.super_class = _UIBackdropViewSettingsATVMediumDark;
  [(_UIBackdropViewSettings *)&v9 setDefaultValues];
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
    v6 = [UIColor colorWithRed:0.117647059 green:0.117647059 blue:0.117647059 alpha:1.0];
    [(_UIBackdropViewSettings *)self setColorTint:v6];

    [(_UIBackdropViewSettings *)self setColorTintAlpha:0.65];
    [(_UIBackdropViewSettings *)self setColorTintMaskAlpha:1.0];
    [(_UIBackdropViewSettings *)self setColorTintMaskImage:0];
    [(_UIBackdropViewSettings *)self setBlurRadius:0.0];
    [(_UIBackdropViewSettings *)self setSaturationDeltaFactor:1.0];
    [(_UIBackdropViewSettings *)self setFilterMaskAlpha:1.0];
    [(_UIBackdropViewSettings *)self setFilterMaskImage:0];
    v7 = +[UIColor whiteColor];
    [(_UIBackdropViewSettings *)self setLegibleColor:v7];

    if (v3)
    {
      v8 = [UIColor colorWithRed:0.22745098 green:0.247058824 blue:0.254901961 alpha:1.0];
      [(_UIBackdropViewSettings *)self setColorTint:v8];

      [(_UIBackdropViewSettings *)self setColorTintAlpha:1.0];
    }
  }

  else if ([(_UIBackdropViewSettings *)self graphicsQuality]== 100)
  {
    [(_UIBackdropViewSettings *)self setRequiresColorStatistics:0];
    [(_UIBackdropViewSettings *)self setBackdropVisible:1];
    [(_UIBackdropViewSettings *)self setUsesColorTintView:1];
    [(_UIBackdropViewSettings *)self setGrayscaleTintLevel:0.0];
    [(_UIBackdropViewSettings *)self setGrayscaleTintAlpha:0.0];
    [(_UIBackdropViewSettings *)self setGrayscaleTintMaskAlpha:1.0];
    [(_UIBackdropViewSettings *)self setGrayscaleTintMaskImage:0];
    v4 = [UIColor colorWithRed:0.117647059 green:0.117647059 blue:0.117647059 alpha:1.0];
    [(_UIBackdropViewSettings *)self setColorTint:v4];

    [(_UIBackdropViewSettings *)self setColorTintAlpha:0.5];
    [(_UIBackdropViewSettings *)self setColorTintMaskAlpha:1.0];
    [(_UIBackdropViewSettings *)self setColorTintMaskImage:0];
    [(_UIBackdropViewSettings *)self setBlurRadius:90.0];
    [(_UIBackdropViewSettings *)self setSaturationDeltaFactor:1.4];
    [(_UIBackdropViewSettings *)self setFilterMaskAlpha:1.0];
    [(_UIBackdropViewSettings *)self setFilterMaskImage:0];
    v5 = +[UIColor whiteColor];
    [(_UIBackdropViewSettings *)self setLegibleColor:v5];
  }
}

@end