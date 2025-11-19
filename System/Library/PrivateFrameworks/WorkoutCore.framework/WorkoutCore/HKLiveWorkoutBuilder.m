@interface HKLiveWorkoutBuilder
@end

@implementation HKLiveWorkoutBuilder

BOOL __67__HKLiveWorkoutBuilder_WorkoutSupport__nl_lastUnbalancedPauseEvent__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = 1;
  if ([location[0] type] != 1)
  {
    v3 = [location[0] type] == 2;
  }

  objc_storeStrong(location, 0);
  return v3;
}

BOOL __62__HKLiveWorkoutBuilder_WorkoutSupport__nl_dateForElapsedTime___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = 1;
  if ([location[0] type] != 1)
  {
    v3 = [location[0] type] == 2;
  }

  objc_storeStrong(location, 0);
  return v3;
}

@end