@interface WOSegmentPaceAccumulator
- (WOSegmentPaceAccumulator)initWithBuilder:(id)a3;
- (void)updateDistance:(double)a3 duration:(double)a4;
@end

@implementation WOSegmentPaceAccumulator

- (void)updateDistance:(double)a3 duration:(double)a4
{
  v6 = self;
  SegmentPaceAccumulator.updateDistance(_:duration:)(a3, a4);
}

- (WOSegmentPaceAccumulator)initWithBuilder:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end