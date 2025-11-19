@interface NLSessionActivityCyclingCadenceAccumulator
- (BOOL)currentCadenceStale;
- (NLSessionActivityCyclingCadenceAccumulator)initWithBuilder:(id)a3;
- (double)averageCadence;
- (double)currentCadence;
- (void)accumulatorDidStop;
- (void)setAverageCadence:(double)a3;
- (void)setCurrentCadence:(double)a3;
- (void)setCurrentCadenceStale:(BOOL)a3;
- (void)updateWithStatistics:(id)a3 duration:(double)a4;
@end

@implementation NLSessionActivityCyclingCadenceAccumulator

- (double)currentCadence
{
  v3 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadence;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setCurrentCadence:(double)a3
{
  v4 = self;
  CyclingCadenceAccumulator.currentCadence.setter(a3);
}

- (BOOL)currentCadenceStale
{
  v3 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadenceStale;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setCurrentCadenceStale:(BOOL)a3
{
  v5 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadenceStale;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
}

- (double)averageCadence
{
  v3 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_averageCadence;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setAverageCadence:(double)a3
{
  v5 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_averageCadence;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
}

- (void)updateWithStatistics:(id)a3 duration:(double)a4
{
  v6 = a3;
  v7 = self;
  CyclingCadenceAccumulator.update(with:duration:)(v6, a4);
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
  v10 = self;
  static WKAnalyticsEvent.latency(metric:analytics:)();
  (*(v4 + 8))(v7, v3);
  v11 = *(&self->super.super.super.isa + v8);
  dispatch thunk of WKPercentileAnalytics.reset()();
}

- (NLSessionActivityCyclingCadenceAccumulator)initWithBuilder:(id)a3
{
  v3 = a3;
  v4 = specialized CyclingCadenceAccumulator.init(builder:)(v3);

  return v4;
}

@end