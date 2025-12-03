@interface WOSegmentPaceAccumulator
- (WOSegmentPaceAccumulator)initWithBuilder:(id)builder;
- (void)updateDistance:(double)distance duration:(double)duration;
@end

@implementation WOSegmentPaceAccumulator

- (void)updateDistance:(double)distance duration:(double)duration
{
  selfCopy = self;
  SegmentPaceAccumulator.updateDistance(_:duration:)(distance, duration);
}

- (WOSegmentPaceAccumulator)initWithBuilder:(id)builder
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end