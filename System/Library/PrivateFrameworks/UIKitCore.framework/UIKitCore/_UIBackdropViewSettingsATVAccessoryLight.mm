@interface _UIBackdropViewSettingsATVAccessoryLight
- (void)setDefaultValues;
@end

@implementation _UIBackdropViewSettingsATVAccessoryLight

- (void)setDefaultValues
{
  v9.receiver = self;
  v9.super_class = _UIBackdropViewSettingsATVAccessoryLight;
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
    v6 = [UIColor colorWithRed:0.996078431 green:0.992156863 blue:1.0 alpha:1.0];
    [(_UIBackdropViewSettings *)self setColorTint:v6];

    [(_UIBackdropViewSettings *)self setColorTintAlpha:0.55];
    [(_UIBackdropViewSettings *)self setColorTintMaskAlpha:1.0];
    [(_UIBackdropViewSettings *)self setColorTintMaskImage:0];
    [(_UIBackdropViewSettings *)self setBlurRadius:0.0];
    [(_UIBackdropViewSettings *)self setSaturationDeltaFactor:1.0];
    [(_UIBackdropViewSettings *)self setFilterMaskAlpha:1.0];
    [(_UIBackdropViewSettings *)self setFilterMaskImage:0];
    v7 = +[UIColor blackColor];
    [(_UIBackdropViewSettings *)self setLegibleColor:v7];

    if (v3)
    {
      v8 = [UIColor colorWithRed:0.749019608 green:0.768627451 blue:0.776470588 alpha:1.0];
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
    v4 = [UIColor colorWithRed:0.941176471 green:0.941176471 blue:0.941176471 alpha:1.0];
    [(_UIBackdropViewSettings *)self setColorTint:v4];

    [(_UIBackdropViewSettings *)self setColorTintAlpha:0.3];
    [(_UIBackdropViewSettings *)self setColorTintMaskAlpha:1.0];
    [(_UIBackdropViewSettings *)self setColorTintMaskImage:0];
    [(_UIBackdropViewSettings *)self setBlurRadius:90.0];
    [(_UIBackdropViewSettings *)self setSaturationDeltaFactor:1.8];
    [(_UIBackdropViewSettings *)self setFilterMaskAlpha:1.0];
    [(_UIBackdropViewSettings *)self setFilterMaskImage:0];
    v5 = +[UIColor blackColor];
    [(_UIBackdropViewSettings *)self setLegibleColor:v5];
  }
}

@end