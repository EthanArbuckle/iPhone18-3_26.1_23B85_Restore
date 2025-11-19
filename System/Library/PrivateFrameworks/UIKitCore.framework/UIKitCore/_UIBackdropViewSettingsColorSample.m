@interface _UIBackdropViewSettingsColorSample
- (void)setDefaultValues;
@end

@implementation _UIBackdropViewSettingsColorSample

- (void)setDefaultValues
{
  v4.receiver = self;
  v4.super_class = _UIBackdropViewSettingsColorSample;
  [(_UIBackdropViewSettings *)&v4 setDefaultValues];
  [(_UIBackdropViewSettings *)self setAppliesTintAndBlurSettings:0];
  [(_UIBackdropViewSettings *)self setUsesBackdropEffectView:1];
  [(_UIBackdropViewSettings *)self setUsesGrayscaleTintView:0];
  [(_UIBackdropViewSettings *)self setUsesColorTintView:0];
  [(_UIBackdropViewSettings *)self setUsesContentView:0];
  [(_UIBackdropViewSettings *)self setRequiresColorStatistics:1];
  [(_UIBackdropViewSettings *)self setBackdropVisible:0];
  [(_UIBackdropViewSettings *)self setGrayscaleTintLevel:0.0];
  [(_UIBackdropViewSettings *)self setGrayscaleTintAlpha:0.0];
  [(_UIBackdropViewSettings *)self setGrayscaleTintMaskAlpha:0.0];
  [(_UIBackdropViewSettings *)self setGrayscaleTintMaskImage:0];
  v3 = +[UIColor blackColor];
  [(_UIBackdropViewSettings *)self setColorTint:v3];

  [(_UIBackdropViewSettings *)self setColorTintAlpha:0.0];
  [(_UIBackdropViewSettings *)self setColorTintMaskAlpha:0.0];
  [(_UIBackdropViewSettings *)self setColorTintMaskImage:0];
  [(_UIBackdropViewSettings *)self setBlurRadius:0.0];
  [(_UIBackdropViewSettings *)self setSaturationDeltaFactor:1.0];
  [(_UIBackdropViewSettings *)self setFilterMaskAlpha:0.0];
  [(_UIBackdropViewSettings *)self setFilterMaskImage:0];
  [(_UIBackdropViewSettings *)self setLegibleColor:0];
}

@end