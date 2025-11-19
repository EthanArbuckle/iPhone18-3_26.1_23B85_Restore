@interface NLPacerDistanceGoalProgressAccumulator
- (NLPacerDistanceGoalProgressAccumulator)initWithBuilder:(id)a3;
- (NLPacerDistanceGoalProgressAccumulator)initWithBuilder:(id)a3 activityType:(id)a4 goalDistanceInMeters:(double)a5;
- (NLPacerDistanceGoalProgressAccumulator)initWithBuilder:(id)a3 workoutConfiguration:(id)a4;
- (NSNumber)goalCompletionTimeNumber;
- (void)recoverFrom:(id)a3;
- (void)updateProgressWithStatistics:(id)a3 elapsedTime:(double)a4;
@end

@implementation NLPacerDistanceGoalProgressAccumulator

- (NSNumber)goalCompletionTimeNumber
{
  if (*(self + OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalCompletionTime + 8))
  {
    v3 = 0;
  }

  else
  {
    v3 = MEMORY[0x20F2E7210](*(self + OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalCompletionTime));
  }

  return v3;
}

- (NLPacerDistanceGoalProgressAccumulator)initWithBuilder:(id)a3 activityType:(id)a4 goalDistanceInMeters:(double)a5
{
  v9 = self + OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalCompletionTime;
  *v9 = 0;
  v9[8] = 1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_activityType) = a4;
  *(self + OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalDistanceInMeters) = a5;
  v12.receiver = self;
  v12.super_class = type metadata accessor for PacerDistanceGoalProgressAccumulator();
  v10 = a4;
  return [(NLSessionActivityBuilderAccumulator *)&v12 initWithBuilder:a3];
}

- (NLPacerDistanceGoalProgressAccumulator)initWithBuilder:(id)a3 workoutConfiguration:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = specialized PacerDistanceGoalProgressAccumulator.init(builder:workoutConfiguration:)(v5, v6);

  return v7;
}

- (void)updateProgressWithStatistics:(id)a3 elapsedTime:(double)a4
{
  v6 = a3;
  v7 = self;
  PacerDistanceGoalProgressAccumulator.updateProgress(statistics:elapsedTime:)(v6, a4);
}

- (void)recoverFrom:(id)a3
{
  _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  PacerDistanceGoalProgressAccumulator.recoverFrom(_:)(v4);
}

- (NLPacerDistanceGoalProgressAccumulator)initWithBuilder:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end