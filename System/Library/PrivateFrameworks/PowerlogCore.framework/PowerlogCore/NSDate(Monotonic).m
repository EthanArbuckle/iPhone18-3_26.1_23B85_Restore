@interface NSDate(Monotonic)
+ (BOOL)dateIsMidnightLocalTime:()Monotonic;
+ (__CFString)filenameDateStringWithStartDate:()Monotonic endDate:;
+ (id)defaultDateFormatter;
+ (id)monotonicDate;
+ (id)monotonicDateWithTimeIntervalSinceNow:()Monotonic;
+ (id)nearestMidnightAfterDate:()Monotonic;
+ (id)nearestMidnightBeforeDate:()Monotonic;
- (BOOL)isInMonotonicFuture;
- (BOOL)isInMonotonicFutureWithDistance:()Monotonic;
- (BOOL)isInMonotonicPastWithDistance:()Monotonic;
- (double)timeIntervalSinceMonitonicNow;
- (id)convertFromBasebandToMonotonic;
- (id)convertFromMonotonicToBaseband;
- (id)convertFromMonotonicToSystem;
- (id)convertFromSystemToMonotonic;
@end

@implementation NSDate(Monotonic)

+ (id)monotonicDate
{
  v0 = +[PLTimeManager sharedInstance];
  v1 = [v0 currentTimeFromTimeReference:2 toTimeReference:0];

  return v1;
}

- (id)convertFromBasebandToMonotonic
{
  v2 = +[PLTimeManager sharedInstance];
  v3 = [v2 convertTime:a1 fromTimeReference:3 toTimeReference:0];

  return v3;
}

- (id)convertFromSystemToMonotonic
{
  v2 = +[PLTimeManager sharedInstance];
  v3 = [v2 convertTime:a1 fromTimeReference:1 toTimeReference:0];

  return v3;
}

- (double)timeIntervalSinceMonitonicNow
{
  v2 = [MEMORY[0x1E695DF00] monotonicDate];
  [a1 timeIntervalSinceDate:v2];
  v4 = v3;

  return v4;
}

- (id)convertFromMonotonicToSystem
{
  v2 = +[PLTimeManager sharedInstance];
  v3 = [v2 convertTime:a1 fromTimeReference:0 toTimeReference:1];

  return v3;
}

+ (id)monotonicDateWithTimeIntervalSinceNow:()Monotonic
{
  v2 = [objc_opt_class() monotonicDate];
  v3 = [v2 dateByAddingTimeInterval:a1];

  return v3;
}

- (id)convertFromMonotonicToBaseband
{
  v2 = +[PLTimeManager sharedInstance];
  v3 = [v2 convertTime:a1 fromTimeReference:0 toTimeReference:3];

  return v3;
}

- (BOOL)isInMonotonicFuture
{
  v2 = [objc_opt_class() monotonicDate];
  [a1 timeIntervalSinceDate:v2];
  v4 = v3 > 60.0;

  return v4;
}

- (BOOL)isInMonotonicFutureWithDistance:()Monotonic
{
  v4 = [objc_opt_class() monotonicDate];
  [a1 timeIntervalSinceDate:v4];
  v6 = v5 > fabs(a2);

  return v6;
}

- (BOOL)isInMonotonicPastWithDistance:()Monotonic
{
  v4 = [objc_opt_class() monotonicDate];
  [a1 timeIntervalSinceDate:v4];
  v6 = v5 < -fabs(a2);

  return v6;
}

+ (BOOL)dateIsMidnightLocalTime:()Monotonic
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_opt_class() nearestMidnightBeforeDate:v3];
    v5 = [objc_opt_class() nearestMidnightAfterDate:v3];
    [v4 timeIntervalSinceDate:v3];
    if (fabs(v6) >= 600.0)
    {
      [v5 timeIntervalSinceDate:v3];
      v7 = fabs(v8) < 600.0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)nearestMidnightBeforeDate:()Monotonic
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 components:28 fromDate:v4];

  v7 = [v5 dateFromComponents:v6];

  return v7;
}

+ (id)nearestMidnightAfterDate:()Monotonic
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = objc_opt_new();
  [v6 setHour:0];
  [v6 setMinute:0];
  [v6 setSecond:0];
  v7 = [v5 nextDateAfterDate:v4 matchingComponents:v6 options:2];

  return v7;
}

+ (__CFString)filenameDateStringWithStartDate:()Monotonic endDate:
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = &stru_1F539D228;
  if (v5 && v6)
  {
    v9 = [objc_opt_class() nearestMidnightAfterDate:v5];
    [v9 timeIntervalSinceDate:v5];
    if (v10 < 600.0)
    {
      v11 = v9;

      v5 = v11;
    }

    v12 = [objc_opt_class() nearestMidnightAfterDate:v7];
    [v12 timeIntervalSinceDate:v7];
    if (v13 < 600.0)
    {
      v14 = v12;

      v7 = v14;
    }

    v15 = [objc_opt_class() defaultDateFormatter];
    v16 = [v15 stringFromDate:v5];
    v17 = [v15 stringFromDate:v7];
    v18 = [v17 isEqualToString:v16];
    if ([objc_opt_class() dateIsMidnightLocalTime:v7])
    {
      [v7 timeIntervalSinceDate:v5];
      v20 = v19 <= 86400.0;
    }

    else
    {
      v20 = 0;
    }

    if ((v18 | v20))
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v16, v22];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v16, v17];
    }
    v8 = ;
  }

  return v8;
}

+ (id)defaultDateFormatter
{
  if (defaultDateFormatter_onceToken != -1)
  {
    +[NSDate(Monotonic) defaultDateFormatter];
  }

  v1 = defaultDateFormatter_f;

  return v1;
}

@end