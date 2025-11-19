@interface NLGhostPacerAccumulator
- (NLGhostPacerAccumulator)init;
- (NLGhostPacerAccumulator)initWithActivityType:(id)a3 goalDistance:(double)a4 goalFinishTime:(double)a5;
- (double)requiredPaceInMetersPerSecond;
- (double)secondsAheadOfPacer;
- (void)setRequiredPaceInMetersPerSecond:(double)a3;
- (void)setSecondsAheadOfPacer:(double)a3;
- (void)updatePacerWithStatistics:(id)a3 duration:(double)a4;
- (void)updateWithElapsedTime:(double)a3;
@end

@implementation NLGhostPacerAccumulator

- (double)secondsAheadOfPacer
{
  v3 = OBJC_IVAR___NLGhostPacerAccumulator_secondsAheadOfPacer;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSecondsAheadOfPacer:(double)a3
{
  v5 = OBJC_IVAR___NLGhostPacerAccumulator_secondsAheadOfPacer;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)requiredPaceInMetersPerSecond
{
  v3 = OBJC_IVAR___NLGhostPacerAccumulator_requiredPaceInMetersPerSecond;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setRequiredPaceInMetersPerSecond:(double)a3
{
  v5 = OBJC_IVAR___NLGhostPacerAccumulator_requiredPaceInMetersPerSecond;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (NLGhostPacerAccumulator)initWithActivityType:(id)a3 goalDistance:(double)a4 goalFinishTime:(double)a5
{
  v7 = a3;
  v8 = specialized GhostPacerAccumulator.init(activityType:goalDistance:goalFinishTime:)(v7, a4, a5);

  return v8;
}

- (void)updatePacerWithStatistics:(id)a3 duration:(double)a4
{
  v6 = a3;
  v7 = self;
  GhostPacerAccumulator.updatePacer(statistics:duration:)(v6, a4);
}

- (void)updateWithElapsedTime:(double)a3
{
  v5 = OBJC_IVAR___NLGhostPacerAccumulator_lastElapsedTime;
  swift_beginAccess();
  if (*(&self->super.super.isa + v5) < a3)
  {
    *(&self->super.super.isa + v5) = a3;
    v6 = OBJC_IVAR___NLGhostPacerAccumulator_accumulatedDistanceDuration;
    swift_beginAccess();
    if (a3 - *(&self->super.super.isa + v6) >= 10.0)
    {
      v7 = self;
      GhostPacerAccumulator.updateValuesWithTime(_:)(a3);
    }
  }
}

- (NLGhostPacerAccumulator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end