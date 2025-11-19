@interface WOMetricsViewLayout
- (WOMetricsViewLayout)init;
- (void)setRingDiameter:(double)a3;
@end

@implementation WOMetricsViewLayout

- (void)setRingDiameter:(double)a3
{
  v3 = (self + OBJC_IVAR___WOMetricsViewLayout____lazy_storage___ringDiameter);
  *v3 = a3;
  *(v3 + 8) = 0;
}

- (WOMetricsViewLayout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end