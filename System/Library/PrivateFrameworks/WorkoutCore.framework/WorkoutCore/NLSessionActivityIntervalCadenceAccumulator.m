@interface NLSessionActivityIntervalCadenceAccumulator
- (BOOL)currentCadenceStale;
- (NLSessionActivityIntervalCadenceAccumulator)initWithBuilder:(id)a3;
- (NLSessionActivityIntervalCadenceAccumulator)initWithBuilder:(id)a3 activityType:(unint64_t)a4;
- (double)averageCadence;
- (double)currentCadence;
- (void)setAverageCadence:(double)a3;
- (void)setCurrentCadence:(double)a3;
- (void)setCurrentCadenceStale:(BOOL)a3;
- (void)updateWithStatistics:(id)a3 duration:(double)a4;
@end

@implementation NLSessionActivityIntervalCadenceAccumulator

- (double)currentCadence
{
  v3 = OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadence;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setCurrentCadence:(double)a3
{
  v5 = OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadence;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
}

- (double)averageCadence
{
  v3 = OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_averageCadence;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setAverageCadence:(double)a3
{
  v5 = OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_averageCadence;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
}

- (BOOL)currentCadenceStale
{
  v3 = OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadenceStale;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setCurrentCadenceStale:(BOOL)a3
{
  v5 = OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadenceStale;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
}

- (NLSessionActivityIntervalCadenceAccumulator)initWithBuilder:(id)a3 activityType:(unint64_t)a4
{
  *(&self->super.super.super.isa + OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadence) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_averageCadence) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadenceStale) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_activityType) = a4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for IntervalCadenceAccumulator();
  return [(NLSessionActivityBuilderAccumulator *)&v6 initWithBuilder:a3];
}

- (void)updateWithStatistics:(id)a3 duration:(double)a4
{
  v6 = a3;
  v7 = self;
  IntervalCadenceAccumulator.update(with:duration:)(v6, a4);
}

- (NLSessionActivityIntervalCadenceAccumulator)initWithBuilder:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end