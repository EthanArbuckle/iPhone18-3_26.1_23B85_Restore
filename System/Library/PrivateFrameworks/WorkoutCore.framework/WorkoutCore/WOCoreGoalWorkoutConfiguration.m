@interface WOCoreGoalWorkoutConfiguration
- (NSString)analyticsKey;
- (int64_t)hash;
@end

@implementation WOCoreGoalWorkoutConfiguration

- (NSString)analyticsKey
{
  v2 = self;
  v3 = GoalWorkoutConfiguration.analyticsKey.getter();
  v5 = v4;

  v6 = MEMORY[0x20F2E6C00](v3, v5);

  return v6;
}

- (int64_t)hash
{
  v2 = self;
  v3 = GoalWorkoutConfiguration.hash.getter();

  return v3;
}

@end