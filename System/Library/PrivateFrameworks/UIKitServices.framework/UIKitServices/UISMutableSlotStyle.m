@interface UISMutableSlotStyle
- (id)copyWithZone:(_NSZone *)a3;
- (void)setLocalization:(id)a3;
- (void)setTintColor:(CGColor *)a3;
@end

@implementation UISMutableSlotStyle

- (void)setLocalization:(id)a3
{
  self->super._localization = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setTintColor:(CGColor *)a3
{
  tintColor = self->super._tintColor;
  self->super._tintColor = CGColorRetain(a3);

  CGColorRelease(tintColor);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UISSlotStyle alloc];

  return [(UISSlotStyle *)v4 initWithStyle:self];
}

@end