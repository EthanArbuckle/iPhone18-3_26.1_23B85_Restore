@interface SBApplicationBlurContentViewBackdropSettings
- (void)setDefaultValues;
@end

@implementation SBApplicationBlurContentViewBackdropSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBApplicationBlurContentViewBackdropSettings;
  [(_UIBackdropViewSettings *)&v3 setDefaultValues];
  [(_UIBackdropViewSettings *)self setBlurRadius:85.0];
  [(_UIBackdropViewSettings *)self setSaturationDeltaFactor:2.0];
  [(_UIBackdropViewSettings *)self setGrayscaleTintLevel:1.0];
  [(_UIBackdropViewSettings *)self setGrayscaleTintAlpha:0.4];
  [(_UIBackdropViewSettings *)self setLightenGrayscaleWithSourceOver:1];
  [(_UIBackdropViewSettings *)self setDarkeningTintSaturation:0.0];
  [(_UIBackdropViewSettings *)self setDarkeningTintBrightness:0.0];
  [(_UIBackdropViewSettings *)self setDarkeningTintAlpha:0.04];
  [(_UIBackdropViewSettings *)self setDarkenWithSourceOver:1];
}

@end