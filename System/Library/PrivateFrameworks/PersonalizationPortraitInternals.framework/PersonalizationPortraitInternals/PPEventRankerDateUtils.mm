@interface PPEventRankerDateUtils
+ (double)secondsFromMidnight:(id)a3;
+ (id)dateTwoWeeksPriorToDate:(id)a3;
@end

@implementation PPEventRankerDateUtils

+ (double)secondsFromMidnight:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 components:224 fromDate:v4];

  v7 = 3600 * [v6 hour];
  v8 = v7 + 60 * [v6 minute];
  v9 = (v8 + [v6 second]);

  return v9;
}

+ (id)dateTwoWeeksPriorToDate:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 dateByAddingTimeInterval:-1209600.0];
  objc_autoreleasePoolPop(v4);

  return v5;
}

@end