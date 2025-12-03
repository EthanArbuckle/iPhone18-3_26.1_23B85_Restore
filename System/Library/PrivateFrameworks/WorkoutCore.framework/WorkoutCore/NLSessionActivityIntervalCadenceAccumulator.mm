@interface NLSessionActivityIntervalCadenceAccumulator
- (BOOL)currentCadenceStale;
- (NLSessionActivityIntervalCadenceAccumulator)initWithBuilder:(id)builder;
- (NLSessionActivityIntervalCadenceAccumulator)initWithBuilder:(id)builder activityType:(unint64_t)type;
- (double)averageCadence;
- (double)currentCadence;
- (void)setAverageCadence:(double)cadence;
- (void)setCurrentCadence:(double)cadence;
- (void)setCurrentCadenceStale:(BOOL)stale;
- (void)updateWithStatistics:(id)statistics duration:(double)duration;
@end

@implementation NLSessionActivityIntervalCadenceAccumulator

- (double)currentCadence
{
  v3 = OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadence;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setCurrentCadence:(double)cadence
{
  v5 = OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadence;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = cadence;
}

- (double)averageCadence
{
  v3 = OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_averageCadence;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setAverageCadence:(double)cadence
{
  v5 = OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_averageCadence;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = cadence;
}

- (BOOL)currentCadenceStale
{
  v3 = OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadenceStale;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setCurrentCadenceStale:(BOOL)stale
{
  v5 = OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadenceStale;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = stale;
}

- (NLSessionActivityIntervalCadenceAccumulator)initWithBuilder:(id)builder activityType:(unint64_t)type
{
  *(&self->super.super.super.isa + OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadence) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_averageCadence) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadenceStale) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_activityType) = type;
  v6.receiver = self;
  v6.super_class = type metadata accessor for IntervalCadenceAccumulator();
  return [(NLSessionActivityBuilderAccumulator *)&v6 initWithBuilder:builder];
}

- (void)updateWithStatistics:(id)statistics duration:(double)duration
{
  statisticsCopy = statistics;
  selfCopy = self;
  IntervalCadenceAccumulator.update(with:duration:)(statisticsCopy, duration);
}

- (NLSessionActivityIntervalCadenceAccumulator)initWithBuilder:(id)builder
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end