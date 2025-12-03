@interface NLSessionActivityCyclingCadenceAccumulator
- (BOOL)currentCadenceStale;
- (NLSessionActivityCyclingCadenceAccumulator)initWithBuilder:(id)builder;
- (double)averageCadence;
- (double)currentCadence;
- (void)accumulatorDidStop;
- (void)setAverageCadence:(double)cadence;
- (void)setCurrentCadence:(double)cadence;
- (void)setCurrentCadenceStale:(BOOL)stale;
- (void)updateWithStatistics:(id)statistics duration:(double)duration;
@end

@implementation NLSessionActivityCyclingCadenceAccumulator

- (double)currentCadence
{
  v3 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadence;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setCurrentCadence:(double)cadence
{
  selfCopy = self;
  CyclingCadenceAccumulator.currentCadence.setter(cadence);
}

- (BOOL)currentCadenceStale
{
  v3 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadenceStale;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setCurrentCadenceStale:(BOOL)stale
{
  v5 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadenceStale;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = stale;
}

- (double)averageCadence
{
  v3 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_averageCadence;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setAverageCadence:(double)cadence
{
  v5 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_averageCadence;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = cadence;
}

- (void)updateWithStatistics:(id)statistics duration:(double)duration
{
  statisticsCopy = statistics;
  selfCopy = self;
  CyclingCadenceAccumulator.update(with:duration:)(statisticsCopy, duration);
}

- (void)accumulatorDidStop
{
  v3 = type metadata accessor for WKAnalyticsEvent.LatencyMetric();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x277CE4078], v3);
  v8 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_latencyAnalytics;
  v9 = *(&self->super.super.super.isa + OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_latencyAnalytics);
  selfCopy = self;
  static WKAnalyticsEvent.latency(metric:analytics:)();
  (*(v4 + 8))(v7, v3);
  v11 = *(&self->super.super.super.isa + v8);
  dispatch thunk of WKPercentileAnalytics.reset()();
}

- (NLSessionActivityCyclingCadenceAccumulator)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = specialized CyclingCadenceAccumulator.init(builder:)(builderCopy);

  return v4;
}

@end