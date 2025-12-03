@interface WOMetricsViewLayout
- (WOMetricsViewLayout)init;
- (void)setRingDiameter:(double)diameter;
@end

@implementation WOMetricsViewLayout

- (void)setRingDiameter:(double)diameter
{
  v3 = (self + OBJC_IVAR___WOMetricsViewLayout____lazy_storage___ringDiameter);
  *v3 = diameter;
  *(v3 + 8) = 0;
}

- (WOMetricsViewLayout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end