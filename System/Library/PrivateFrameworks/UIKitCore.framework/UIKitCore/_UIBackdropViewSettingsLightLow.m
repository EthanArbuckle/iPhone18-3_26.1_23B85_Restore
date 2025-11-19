@interface _UIBackdropViewSettingsLightLow
- (void)setDefaultValues;
@end

@implementation _UIBackdropViewSettingsLightLow

- (void)setDefaultValues
{
  [(_UIBackdropViewSettings *)self setGraphicsQuality:10];
  v3.receiver = self;
  v3.super_class = _UIBackdropViewSettingsLightLow;
  [(_UIBackdropViewSettingsLight *)&v3 setDefaultValues];
}

@end