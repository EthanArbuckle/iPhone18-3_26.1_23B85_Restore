@interface _UIBackdropViewSettingsSemiLight
- (void)setDefaultValues;
@end

@implementation _UIBackdropViewSettingsSemiLight

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = _UIBackdropViewSettingsSemiLight;
  [(_UIBackdropViewSettingsLight *)&v3 setDefaultValues];
  if ([(_UIBackdropViewSettings *)self graphicsQuality]== 100)
  {
    [(_UIBackdropViewSettings *)self setBlurRadius:5.0];
    [(_UIBackdropViewSettings *)self setSaturationDeltaFactor:1.5];
  }
}

@end