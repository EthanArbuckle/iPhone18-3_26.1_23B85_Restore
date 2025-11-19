@interface _UIBackdropViewSettingsUltraDarkWithZoom
- (void)setDefaultValues;
@end

@implementation _UIBackdropViewSettingsUltraDarkWithZoom

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = _UIBackdropViewSettingsUltraDarkWithZoom;
  [(_UIBackdropViewSettingsUltraDark *)&v3 setDefaultValues];
  self->super.super.super._zoom = 0.05;
  self->super.super.super._shouldDoRasterizationAndAlphaHack = 1;
}

@end