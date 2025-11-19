@interface _UIBackdropViewSettingsNonAdaptive
- (void)setDefaultValues;
@end

@implementation _UIBackdropViewSettingsNonAdaptive

- (void)setDefaultValues
{
  v4.receiver = self;
  v4.super_class = _UIBackdropViewSettingsNonAdaptive;
  [(_UIBackdropViewSettings *)&v4 setDefaultValues];
  [(_UIBackdropViewSettings *)self setRequiresColorStatistics:0];
  [(_UIBackdropViewSettings *)self setBackdropVisible:1];
  [(_UIBackdropViewSettings *)self setGrayscaleTintLevel:0.0];
  [(_UIBackdropViewSettings *)self setGrayscaleTintAlpha:0.0];
  [(_UIBackdropViewSettings *)self setGrayscaleTintMaskAlpha:1.0];
  [(_UIBackdropViewSettings *)self setGrayscaleTintMaskImage:0];
  [(_UIBackdropViewSettings *)self setColorTint:0];
  [(_UIBackdropViewSettings *)self setColorTintAlpha:0.0];
  [(_UIBackdropViewSettings *)self setColorTintMaskAlpha:1.0];
  [(_UIBackdropViewSettings *)self setColorTintMaskImage:0];
  [(_UIBackdropViewSettings *)self setBlurRadius:30.0];
  [(_UIBackdropViewSettings *)self setSaturationDeltaFactor:1.5];
  [(_UIBackdropViewSettings *)self setFilterMaskAlpha:1.0];
  [(_UIBackdropViewSettings *)self setFilterMaskImage:0];
  v3 = +[UIColor blackColor];
  [(_UIBackdropViewSettings *)self setLegibleColor:v3];
}

@end