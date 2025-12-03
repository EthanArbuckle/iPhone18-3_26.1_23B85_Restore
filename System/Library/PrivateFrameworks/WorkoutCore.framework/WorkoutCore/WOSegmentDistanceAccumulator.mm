@interface WOSegmentDistanceAccumulator
- (WOSegmentDistanceAccumulator)init;
- (void)updateDistance:(double)distance;
@end

@implementation WOSegmentDistanceAccumulator

- (void)updateDistance:(double)distance
{
  *(&self->super.super.isa + OBJC_IVAR___WOSegmentDistanceAccumulator_lastReceivedDistance) = distance;
  selfCopy = self;
  SegmentDistanceAccumulator._updateInternalQuantity()();
}

- (WOSegmentDistanceAccumulator)init
{
  *(&self->super.super.isa + OBJC_IVAR___WOSegmentDistanceAccumulator_segmentStartDistance) = 0;
  v3 = OBJC_IVAR___WOSegmentDistanceAccumulator_distance;
  meterUnit = [objc_opt_self() meterUnit];
  v5 = [objc_opt_self() quantityWithUnit:meterUnit doubleValue:0.0];

  *(&self->super.super.isa + v3) = v5;
  *(&self->super.super.isa + OBJC_IVAR___WOSegmentDistanceAccumulator_lastReceivedDistance) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SegmentDistanceAccumulator();
  return [(WOSegmentDistanceAccumulator *)&v7 init];
}

@end