@interface PPEventRankerDateUtils
+ (double)secondsFromMidnight:(id)midnight;
+ (id)dateTwoWeeksPriorToDate:(id)date;
@end

@implementation PPEventRankerDateUtils

+ (double)secondsFromMidnight:(id)midnight
{
  v3 = MEMORY[0x277CBEA80];
  midnightCopy = midnight;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar components:224 fromDate:midnightCopy];

  v7 = 3600 * [v6 hour];
  v8 = v7 + 60 * [v6 minute];
  v9 = (v8 + [v6 second]);

  return v9;
}

+ (id)dateTwoWeeksPriorToDate:(id)date
{
  dateCopy = date;
  v4 = objc_autoreleasePoolPush();
  v5 = [dateCopy dateByAddingTimeInterval:-1209600.0];
  objc_autoreleasePoolPop(v4);

  return v5;
}

@end