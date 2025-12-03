@interface NSDate
+ (id)tomorrow;
+ (id)tomorrowAtHour:(int64_t)hour;
@end

@implementation NSDate

+ (id)tomorrow
{
  v2 = +[NSDate now];
  v3 = [v2 dateByAddingTimeInterval:86400.0];

  return v3;
}

+ (id)tomorrowAtHour:(int64_t)hour
{
  v4 = +[NSDate tomorrow];
  v5 = +[NSCalendar currentCalendar];
  v6 = [v5 components:28 fromDate:v4];
  [v6 setHour:hour];
  v7 = [v5 dateFromComponents:v6];

  return v7;
}

@end