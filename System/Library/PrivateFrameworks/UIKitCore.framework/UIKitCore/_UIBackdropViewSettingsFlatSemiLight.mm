@interface _UIBackdropViewSettingsFlatSemiLight
- (void)setDefaultValues;
@end

@implementation _UIBackdropViewSettingsFlatSemiLight

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = _UIBackdropViewSettingsFlatSemiLight;
  [(_UIBackdropViewSettingsLight *)&v3 setDefaultValues];
  if ([(_UIBackdropViewSettings *)self graphicsQuality]== 100)
  {
    [(_UIBackdropViewSettings *)self setGrayscaleTintAlpha:0.2];
    [(_UIBackdropViewSettings *)self setBlurRadius:8.0];
    [(_UIBackdropViewSettings *)self setSaturationDeltaFactor:1.0];
  }
}

@end