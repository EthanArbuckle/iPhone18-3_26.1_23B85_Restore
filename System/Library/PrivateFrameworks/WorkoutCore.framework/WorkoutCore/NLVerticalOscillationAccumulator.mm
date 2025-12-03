@interface NLVerticalOscillationAccumulator
- (NLVerticalOscillationAccumulator)initWithBuilder:(id)builder;
- (void)accumulatorDidStop;
- (void)updateWithStatistics:(id)statistics;
@end

@implementation NLVerticalOscillationAccumulator

- (void)updateWithStatistics:(id)statistics
{
  statisticsCopy = statistics;
  selfCopy = self;
  VerticalOscillationAccumulator.update(statistics:)(statisticsCopy);
}

- (void)accumulatorDidStop
{
  v3 = OBJC_IVAR___NLVerticalOscillationAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);
  selfCopy = self;
  [v4 invalidate];
  v6 = *(&self->super.super.super.isa + v3);
  *(&self->super.super.super.isa + v3) = 0;
}

- (NLVerticalOscillationAccumulator)initWithBuilder:(id)builder
{
  v4 = self + OBJC_IVAR___NLVerticalOscillationAccumulator_currentVerticalOscillation;
  *v4 = 0;
  v4[8] = 1;
  v5 = self + OBJC_IVAR___NLVerticalOscillationAccumulator_averageVerticalOscillation;
  *v5 = 0;
  v5[8] = 1;
  *(&self->super.super.super.isa + OBJC_IVAR___NLVerticalOscillationAccumulator_invalidationTimer) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for VerticalOscillationAccumulator();
  return [(NLSessionActivityBuilderAccumulator *)&v7 initWithBuilder:builder];
}

@end