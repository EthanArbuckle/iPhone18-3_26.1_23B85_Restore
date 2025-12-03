@interface WOMockWorkoutGenerator
+ (id)defaultIncompleteRaceRoute;
+ (id)defaultOutdoorRunWithGoalType:(unint64_t)type;
- (WOMockWorkoutGenerator)init;
@end

@implementation WOMockWorkoutGenerator

+ (id)defaultOutdoorRunWithGoalType:(unint64_t)type
{
  v3 = specialized static MockWorkoutGenerator.defaultOutdoorRun(goalType:)(type);

  return v3;
}

+ (id)defaultIncompleteRaceRoute
{
  v2 = specialized static MockWorkoutGenerator.defaultIncompleteRaceRoute()();

  return v2;
}

- (WOMockWorkoutGenerator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MockWorkoutGenerator();
  return [(WOMockWorkoutGenerator *)&v3 init];
}

@end