@interface NLGhostPacerAccumulatorFactory
+ (id)makeWithActivityType:(id)a3 liveWorkoutConfiguration:(id)a4;
- (NLGhostPacerAccumulatorFactory)init;
@end

@implementation NLGhostPacerAccumulatorFactory

+ (id)makeWithActivityType:(id)a3 liveWorkoutConfiguration:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = specialized static GhostPacerAccumulatorFactory.make(activityType:liveWorkoutConfiguration:)(v5, v6);

  return v7;
}

- (NLGhostPacerAccumulatorFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GhostPacerAccumulatorFactory();
  return [(NLGhostPacerAccumulatorFactory *)&v3 init];
}

@end