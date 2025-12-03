@interface NLGhostPacerAccumulator
- (NLGhostPacerAccumulator)init;
- (NLGhostPacerAccumulator)initWithActivityType:(id)type goalDistance:(double)distance goalFinishTime:(double)time;
- (double)requiredPaceInMetersPerSecond;
- (double)secondsAheadOfPacer;
- (void)setRequiredPaceInMetersPerSecond:(double)second;
- (void)setSecondsAheadOfPacer:(double)pacer;
- (void)updatePacerWithStatistics:(id)statistics duration:(double)duration;
- (void)updateWithElapsedTime:(double)time;
@end

@implementation NLGhostPacerAccumulator

- (double)secondsAheadOfPacer
{
  v3 = OBJC_IVAR___NLGhostPacerAccumulator_secondsAheadOfPacer;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSecondsAheadOfPacer:(double)pacer
{
  v5 = OBJC_IVAR___NLGhostPacerAccumulator_secondsAheadOfPacer;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = pacer;
}

- (double)requiredPaceInMetersPerSecond
{
  v3 = OBJC_IVAR___NLGhostPacerAccumulator_requiredPaceInMetersPerSecond;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setRequiredPaceInMetersPerSecond:(double)second
{
  v5 = OBJC_IVAR___NLGhostPacerAccumulator_requiredPaceInMetersPerSecond;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = second;
}

- (NLGhostPacerAccumulator)initWithActivityType:(id)type goalDistance:(double)distance goalFinishTime:(double)time
{
  typeCopy = type;
  v8 = specialized GhostPacerAccumulator.init(activityType:goalDistance:goalFinishTime:)(typeCopy, distance, time);

  return v8;
}

- (void)updatePacerWithStatistics:(id)statistics duration:(double)duration
{
  statisticsCopy = statistics;
  selfCopy = self;
  GhostPacerAccumulator.updatePacer(statistics:duration:)(statisticsCopy, duration);
}

- (void)updateWithElapsedTime:(double)time
{
  v5 = OBJC_IVAR___NLGhostPacerAccumulator_lastElapsedTime;
  swift_beginAccess();
  if (*(&self->super.super.isa + v5) < time)
  {
    *(&self->super.super.isa + v5) = time;
    v6 = OBJC_IVAR___NLGhostPacerAccumulator_accumulatedDistanceDuration;
    swift_beginAccess();
    if (time - *(&self->super.super.isa + v6) >= 10.0)
    {
      selfCopy = self;
      GhostPacerAccumulator.updateValuesWithTime(_:)(time);
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