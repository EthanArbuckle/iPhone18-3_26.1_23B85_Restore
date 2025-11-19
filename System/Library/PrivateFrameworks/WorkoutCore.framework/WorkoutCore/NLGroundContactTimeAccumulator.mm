@interface NLGroundContactTimeAccumulator
- (NLGroundContactTimeAccumulator)initWithBuilder:(id)a3;
- (void)accumulatorDidStop;
- (void)updateWithStatistics:(id)a3;
@end

@implementation NLGroundContactTimeAccumulator

- (void)updateWithStatistics:(id)a3
{
  v4 = a3;
  v5 = self;
  GroundContactTimeAccumulator.update(statistics:)(v4);
}

- (void)accumulatorDidStop
{
  v3 = OBJC_IVAR___NLGroundContactTimeAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);
  v5 = self;
  [v4 invalidate];
  v6 = *(&self->super.super.super.isa + v3);
  *(&self->super.super.super.isa + v3) = 0;
}

- (NLGroundContactTimeAccumulator)initWithBuilder:(id)a3
{
  v4 = self + OBJC_IVAR___NLGroundContactTimeAccumulator_currentGroundContactTime;
  *v4 = 0;
  v4[8] = 1;
  v5 = self + OBJC_IVAR___NLGroundContactTimeAccumulator_averageGroundContactTime;
  *v5 = 0;
  v5[8] = 1;
  *(&self->super.super.super.isa + OBJC_IVAR___NLGroundContactTimeAccumulator_invalidationTimer) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for GroundContactTimeAccumulator();
  return [(NLSessionActivityBuilderAccumulator *)&v7 initWithBuilder:a3];
}

@end