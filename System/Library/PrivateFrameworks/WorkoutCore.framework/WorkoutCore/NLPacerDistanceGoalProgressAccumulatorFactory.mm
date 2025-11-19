@interface NLPacerDistanceGoalProgressAccumulatorFactory
+ (id)makeWithBuilder:(id)a3 configuration:(id)a4;
- (NLPacerDistanceGoalProgressAccumulatorFactory)init;
@end

@implementation NLPacerDistanceGoalProgressAccumulatorFactory

+ (id)makeWithBuilder:(id)a3 configuration:(id)a4
{
  v5 = *(a4 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for PacerWorkoutConfiguration();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = objc_allocWithZone(type metadata accessor for PacerDistanceGoalProgressAccumulator());
    v9 = a3;
    v10 = v5;
    v11 = specialized PacerDistanceGoalProgressAccumulator.init(builder:workoutConfiguration:)(v9, v7);

    return v11;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

- (NLPacerDistanceGoalProgressAccumulatorFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PacerDistanceGoalProgressAccumulatorFactory();
  return [(NLPacerDistanceGoalProgressAccumulatorFactory *)&v3 init];
}

@end