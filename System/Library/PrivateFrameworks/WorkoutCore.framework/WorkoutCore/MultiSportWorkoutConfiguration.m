@interface MultiSportWorkoutConfiguration
- (NSString)analyticsSubActivities;
- (int64_t)hash;
@end

@implementation MultiSportWorkoutConfiguration

- (int64_t)hash
{
  v2 = self;
  v3 = MultiSportWorkoutConfiguration.hash.getter();

  return v3;
}

- (NSString)analyticsSubActivities
{
  v2 = self;
  v3 = MultiSportWorkoutConfiguration.analyticsSubActivities.getter();
  v5 = v4;

  v6 = MEMORY[0x20F2E6C00](v3, v5);

  return v6;
}

@end