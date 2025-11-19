@interface _UIBackdropViewSettingsPasscodePaddle
- (void)setDefaultValues;
@end

@implementation _UIBackdropViewSettingsPasscodePaddle

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = _UIBackdropViewSettingsPasscodePaddle;
  [(_UIBackdropViewSettingsDark *)&v3 setDefaultValues];
  [(_UIBackdropViewSettings *)self setGrayscaleTintAlpha:0.16];
  [(_UIBackdropViewSettings *)self setGrayscaleTintLevel:1.0];
  [(_UIBackdropViewSettings *)self setSaturationDeltaFactor:2.0];
}

@end