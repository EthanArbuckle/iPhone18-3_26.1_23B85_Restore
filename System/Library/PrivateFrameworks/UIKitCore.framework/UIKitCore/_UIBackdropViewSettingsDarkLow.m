@interface _UIBackdropViewSettingsDarkLow
- (void)setDefaultValues;
@end

@implementation _UIBackdropViewSettingsDarkLow

- (void)setDefaultValues
{
  [(_UIBackdropViewSettings *)self setGraphicsQuality:10];
  v3.receiver = self;
  v3.super_class = _UIBackdropViewSettingsDarkLow;
  [(_UIBackdropViewSettingsDark *)&v3 setDefaultValues];
  [(_UIBackdropViewSettings *)self setGrayscaleTintAlpha:0.988];
}

@end