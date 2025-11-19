@interface WOSegmentElapsedTimeAccumulator
- (WOSegmentElapsedTimeAccumulator)init;
- (void)updateDuration:(double)a3;
@end

@implementation WOSegmentElapsedTimeAccumulator

- (void)updateDuration:(double)a3
{
  v4 = self;
  SegmentElapsedTimeAccumulator.updateDuration(_:)(a3);
}

- (WOSegmentElapsedTimeAccumulator)init
{
  *(&self->super.super.isa + OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration) = 0;
  *(&self->super.super.isa + OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration) = 0;
  *(&self->super.super.isa + OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SegmentElapsedTimeAccumulator();
  return [(WOSegmentElapsedTimeAccumulator *)&v3 init];
}

@end