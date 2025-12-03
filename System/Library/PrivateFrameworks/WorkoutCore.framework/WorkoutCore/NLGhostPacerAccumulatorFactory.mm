@interface NLGhostPacerAccumulatorFactory
+ (id)makeWithActivityType:(id)type liveWorkoutConfiguration:(id)configuration;
- (NLGhostPacerAccumulatorFactory)init;
@end

@implementation NLGhostPacerAccumulatorFactory

+ (id)makeWithActivityType:(id)type liveWorkoutConfiguration:(id)configuration
{
  typeCopy = type;
  configurationCopy = configuration;
  v7 = specialized static GhostPacerAccumulatorFactory.make(activityType:liveWorkoutConfiguration:)(typeCopy, configurationCopy);

  return v7;
}

- (NLGhostPacerAccumulatorFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GhostPacerAccumulatorFactory();
  return [(NLGhostPacerAccumulatorFactory *)&v3 init];
}

@end