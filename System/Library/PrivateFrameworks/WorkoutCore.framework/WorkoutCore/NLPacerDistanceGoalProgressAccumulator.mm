@interface NLPacerDistanceGoalProgressAccumulator
- (NLPacerDistanceGoalProgressAccumulator)initWithBuilder:(id)builder;
- (NLPacerDistanceGoalProgressAccumulator)initWithBuilder:(id)builder activityType:(id)type goalDistanceInMeters:(double)meters;
- (NLPacerDistanceGoalProgressAccumulator)initWithBuilder:(id)builder workoutConfiguration:(id)configuration;
- (NSNumber)goalCompletionTimeNumber;
- (void)recoverFrom:(id)from;
- (void)updateProgressWithStatistics:(id)statistics elapsedTime:(double)time;
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

- (NLPacerDistanceGoalProgressAccumulator)initWithBuilder:(id)builder activityType:(id)type goalDistanceInMeters:(double)meters
{
  v9 = self + OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalCompletionTime;
  *v9 = 0;
  v9[8] = 1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_activityType) = type;
  *(self + OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalDistanceInMeters) = meters;
  v12.receiver = self;
  v12.super_class = type metadata accessor for PacerDistanceGoalProgressAccumulator();
  typeCopy = type;
  return [(NLSessionActivityBuilderAccumulator *)&v12 initWithBuilder:builder];
}

- (NLPacerDistanceGoalProgressAccumulator)initWithBuilder:(id)builder workoutConfiguration:(id)configuration
{
  builderCopy = builder;
  configurationCopy = configuration;
  v7 = specialized PacerDistanceGoalProgressAccumulator.init(builder:workoutConfiguration:)(builderCopy, configurationCopy);

  return v7;
}

- (void)updateProgressWithStatistics:(id)statistics elapsedTime:(double)time
{
  statisticsCopy = statistics;
  selfCopy = self;
  PacerDistanceGoalProgressAccumulator.updateProgress(statistics:elapsedTime:)(statisticsCopy, time);
}

- (void)recoverFrom:(id)from
{
  _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  PacerDistanceGoalProgressAccumulator.recoverFrom(_:)(v4);
}

- (NLPacerDistanceGoalProgressAccumulator)initWithBuilder:(id)builder
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end