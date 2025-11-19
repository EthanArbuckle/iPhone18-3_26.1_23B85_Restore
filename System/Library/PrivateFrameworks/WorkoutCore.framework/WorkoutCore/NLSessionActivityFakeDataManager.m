@interface NLSessionActivityFakeDataManager
+ (BOOL)shouldShowFakeBests;
+ (BOOL)shouldShowFakeData;
+ (double)fakeValueForActiveCalories;
+ (double)fakeValueForAverageCadence;
+ (double)fakeValueForAverageHeartRate;
+ (double)fakeValueForAveragePace;
+ (double)fakeValueForAveragePower;
+ (double)fakeValueForBasalCalories;
+ (double)fakeValueForBestCalories;
+ (double)fakeValueForBestDistance;
+ (double)fakeValueForBestOfGoalType:(unint64_t)a3;
+ (double)fakeValueForBestTime;
+ (double)fakeValueForCurrentHeartRate;
+ (double)fakeValueForCurrentPace;
+ (double)fakeValueForDistance;
+ (double)fakeValueForDuration;
+ (double)fakeValueForDurationInPreviousIntervals;
+ (double)fakeValueForElevation;
+ (double)fakeValueForFastestPace;
+ (double)fakeValueForFlightsClimbed;
+ (double)fakeValueForInstantaneousCadence;
+ (double)fakeValueForInstantaneousPower;
+ (double)fakeValueForMaximumHeartRate;
+ (double)fakeValueForMinimumHeartRate;
+ (double)fakeValueForRollingPace;
+ (id)fakeValueForGoal;
+ (id)fakeValueForKey:(id)a3;
+ (id)fakeValueForKey:(id)a3 defaultValue:(double)a4;
+ (unint64_t)fakeGoalType;
@end

@implementation NLSessionActivityFakeDataManager

+ (BOOL)shouldShowFakeData
{
  v4 = &shouldShowFakeData_once;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_9);
  if (*v4 != -1)
  {
    dispatch_once(v4, location);
  }

  objc_storeStrong(&location, 0);
  return shouldShowFakeData_showFakeData & 1;
}

double __54__NLSessionActivityFakeDataManager_shouldShowFakeData__block_invoke()
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  shouldShowFakeData_showFakeData = [v1 BOOLForKey:@"showFakeData"];
  *&result = MEMORY[0x277D82BD8](v1).n128_u64[0];
  return result;
}

+ (id)fakeValueForKey:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 objectForKey:location[0]];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);

  return v5;
}

+ (id)fakeValueForKey:(id)a3 defaultValue:(double)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v8 = [v7 objectForKey:location[0]];
  MEMORY[0x277D82BD8](v7);
  if (v8)
  {
    v11 = MEMORY[0x277D82BE0](v8);
  }

  else
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  v4 = v11;

  return v4;
}

+ (double)fakeValueForCurrentHeartRate
{
  v4 = [a1 fakeValueForKey:@"currentHeartRate"];
  [v4 doubleValue];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

+ (double)fakeValueForAverageHeartRate
{
  v4 = [a1 fakeValueForKey:@"averageHeartRate"];
  [v4 doubleValue];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

+ (double)fakeValueForMinimumHeartRate
{
  v4 = [a1 fakeValueForKey:@"minimumHeartRate"];
  [v4 doubleValue];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

+ (double)fakeValueForMaximumHeartRate
{
  v4 = [a1 fakeValueForKey:@"maximumHeartRate"];
  [v4 doubleValue];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

+ (double)fakeValueForElevation
{
  v4 = [a1 fakeValueForKey:@"currentElevation"];
  [v4 doubleValue];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

+ (double)fakeValueForDistance
{
  v4 = [a1 fakeValueForKey:@"totalDistance"];
  [v4 doubleValue];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

+ (double)fakeValueForCurrentPace
{
  v4 = [a1 fakeValueForKey:@"currentPace"];
  [v4 doubleValue];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

+ (double)fakeValueForAveragePace
{
  v4 = [a1 fakeValueForKey:@"averagePace"];
  [v4 doubleValue];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

+ (double)fakeValueForFastestPace
{
  v4 = [a1 fakeValueForKey:@"fastestPace"];
  [v4 doubleValue];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

+ (double)fakeValueForRollingPace
{
  v4 = [a1 fakeValueForKey:@"rollingPace"];
  [v4 doubleValue];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

+ (double)fakeValueForActiveCalories
{
  v4 = [a1 fakeValueForKey:@"totalActiveCalories"];
  [v4 doubleValue];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

+ (double)fakeValueForBasalCalories
{
  v4 = [a1 fakeValueForKey:@"totalBasalCalories"];
  [v4 doubleValue];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

+ (double)fakeValueForFlightsClimbed
{
  v4 = [a1 fakeValueForKey:@"totalFlightsClimbed"];
  [v4 doubleValue];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

+ (double)fakeValueForAveragePower
{
  v4 = [a1 fakeValueForKey:@"averagePower"];
  [v4 doubleValue];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

+ (double)fakeValueForInstantaneousPower
{
  v4 = [a1 fakeValueForKey:@"instantaneousPower"];
  [v4 doubleValue];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

+ (double)fakeValueForAverageCadence
{
  v4 = [a1 fakeValueForKey:@"averageCadence"];
  [v4 doubleValue];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

+ (double)fakeValueForInstantaneousCadence
{
  v4 = [a1 fakeValueForKey:@"instantaneousCadence"];
  [v4 doubleValue];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

+ (double)fakeValueForDuration
{
  v4 = [a1 fakeValueForKey:@"totalDuration"];
  [v4 doubleValue];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

+ (id)fakeValueForGoal
{
  v10 = a1;
  v9 = a2;
  v8 = [a1 fakeGoalType];
  v4 = [v10 fakeValueForKey:@"goal"];
  [v4 doubleValue];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  v7[1] = v5;
  v7[0] = MEMORY[0x20F2E8560](v8, *&v5);
  v6 = MEMORY[0x277D82BE0](v7[0]);
  objc_storeStrong(v7, 0);

  return v6;
}

+ (unint64_t)fakeGoalType
{
  location[2] = a1;
  location[1] = a2;
  location[0] = [a1 fakeValueForKey:@"goalType"];
  if ([location[0] isEqualToString:@"distance"])
  {
    v4 = 1;
  }

  else if ([location[0] isEqualToString:@"calories"])
  {
    v4 = 3;
  }

  else if ([location[0] isEqualToString:@"time"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(location, 0);
  return v4;
}

+ (BOOL)shouldShowFakeBests
{
  v4 = &shouldShowFakeBests_once;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_367);
  if (*v4 != -1)
  {
    dispatch_once(v4, location);
  }

  objc_storeStrong(&location, 0);
  return shouldShowFakeBests_showFakeBests & 1;
}

double __55__NLSessionActivityFakeDataManager_shouldShowFakeBests__block_invoke()
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  shouldShowFakeBests_showFakeBests = [v1 BOOLForKey:@"showFakeBests"];
  *&result = MEMORY[0x277D82BD8](v1).n128_u64[0];
  return result;
}

+ (double)fakeValueForBestOfGoalType:(unint64_t)a3
{
  v7 = 0.0;
  if (a3)
  {
    switch(a3)
    {
      case 1uLL:
        [a1 fakeValueForBestDistance];
        return v4;
      case 2uLL:
        [a1 fakeValueForBestTime];
        return v5;
      case 3uLL:
        [a1 fakeValueForBestCalories];
        return v3;
    }
  }

  return v7;
}

+ (double)fakeValueForBestCalories
{
  v4 = [a1 fakeValueForKey:@"fakeBestCalories"];
  [v4 doubleValue];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

+ (double)fakeValueForBestDistance
{
  v4 = [a1 fakeValueForKey:@"fakeBestDistance"];
  [v4 doubleValue];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

+ (double)fakeValueForBestTime
{
  v4 = [a1 fakeValueForKey:@"fakeBestTime"];
  [v4 doubleValue];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

+ (double)fakeValueForDurationInPreviousIntervals
{
  v4 = [a1 fakeValueForKey:@"fakePreviousIntervalsTotalDuration"];
  [v4 doubleValue];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

@end