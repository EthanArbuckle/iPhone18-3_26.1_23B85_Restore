@interface _UILiquidLensView.ClearGlassView
- (void)reduceTransparencyDidChange;
- (void)tintColorDidChange;
@end

@implementation _UILiquidLensView.ClearGlassView

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_1891F7824();
}

- (void)reduceTransparencyDidChange
{
  selfCopy = self;
  sub_1891F869C();
}

@end