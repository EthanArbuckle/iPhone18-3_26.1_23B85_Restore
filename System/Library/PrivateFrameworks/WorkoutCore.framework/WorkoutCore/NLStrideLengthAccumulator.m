@interface NLStrideLengthAccumulator
- (NLStrideLengthAccumulator)initWithBuilder:(id)a3;
- (void)accumulatorDidStop;
- (void)updateWithStatistics:(id)a3;
@end

@implementation NLStrideLengthAccumulator

- (void)updateWithStatistics:(id)a3
{
  v4 = a3;
  v5 = self;
  StrideLengthAccumulator.update(statistics:)(v4);
}

- (void)accumulatorDidStop
{
  v3 = OBJC_IVAR___NLStrideLengthAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);
  v5 = self;
  [v4 invalidate];
  v6 = *(&self->super.super.super.isa + v3);
  *(&self->super.super.super.isa + v3) = 0;
}

- (NLStrideLengthAccumulator)initWithBuilder:(id)a3
{
  v4 = self + OBJC_IVAR___NLStrideLengthAccumulator_currentStrideLength;
  *v4 = 0;
  v4[8] = 1;
  v5 = self + OBJC_IVAR___NLStrideLengthAccumulator_averageStrideLength;
  *v5 = 0;
  v5[8] = 1;
  *(&self->super.super.super.isa + OBJC_IVAR___NLStrideLengthAccumulator_invalidationTimer) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for StrideLengthAccumulator();
  return [(NLSessionActivityBuilderAccumulator *)&v7 initWithBuilder:a3];
}

@end