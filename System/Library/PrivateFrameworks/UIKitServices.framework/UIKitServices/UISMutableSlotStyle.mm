@interface UISMutableSlotStyle
- (id)copyWithZone:(_NSZone *)zone;
- (void)setLocalization:(id)localization;
- (void)setTintColor:(CGColor *)color;
@end

@implementation UISMutableSlotStyle

- (void)setLocalization:(id)localization
{
  self->super._localization = [localization copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setTintColor:(CGColor *)color
{
  tintColor = self->super._tintColor;
  self->super._tintColor = CGColorRetain(color);

  CGColorRelease(tintColor);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UISSlotStyle alloc];

  return [(UISSlotStyle *)v4 initWithStyle:self];
}

@end