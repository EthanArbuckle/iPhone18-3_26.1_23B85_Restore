@interface NSDate(IMAdditions)
+ (id)amPMStringFromDate:()IMAdditions;
+ (id)dateFormatter;
+ (id)dateFormatterWithTemplate:()IMAdditions;
+ (id)dateStringFromDate:()IMAdditions withDateStyle:timeStyle:isRelative:;
+ (id)dayOfWeekFromDate:()IMAdditions;
+ (id)longDayStringFromDate:()IMAdditions;
+ (id)mailLikeDescriptionFromDate:()IMAdditions;
+ (id)monthYearFromDate:()IMAdditions;
+ (id)postTimeStringFromDate:()IMAdditions;
+ (id)shortStandardTimeStringFromDate:()IMAdditions;
- (BOOL)inSameWeekAs:()IMAdditions;
- (BOOL)isEqualToWeek:()IMAdditions;
- (BOOL)isEqualToYear:()IMAdditions;
- (BOOL)isFuture;
- (BOOL)wasLessThanAWeekAgo;
- (id)dateAtWeekStart;
- (id)dateForBeginningOfDay;
- (id)dateForBeginningOfHour;
- (id)dateForBeginningOfMonth;
- (id)dateForBeginningOfYear;
- (id)dateForEndOfDay;
- (id)dateWithDeltaDays:()IMAdditions;
- (id)dateWithDeltaWeeks:()IMAdditions;
- (uint64_t)isEqualToDay:()IMAdditions;
- (uint64_t)isNextWeek;
- (uint64_t)isThisWeek;
- (uint64_t)isToday;
- (uint64_t)nextWeek;
- (uint64_t)thisWeek;
- (uint64_t)wasLastWeek;
- (uint64_t)wasYesterday;
@end

@implementation NSDate(IMAdditions)

- (uint64_t)isEqualToDay:()IMAdditions
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 components:30 fromDate:v5];

  v8 = [v6 dateFromComponents:v7];
  v9 = [v6 components:30 fromDate:a1];

  v10 = [v6 dateFromComponents:v9];
  v11 = [v8 isEqualToDate:v10];

  return v11;
}

- (BOOL)isEqualToWeek:()IMAdditions
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 components:8198 fromDate:v5];

  v8 = [v6 components:8198 fromDate:a1];
  v9 = [v7 year];
  if (v9 == [v8 year])
  {
    v10 = [v7 weekOfYear];
    v11 = v10 == [v8 weekOfYear];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqualToYear:()IMAdditions
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 components:6 fromDate:v5];

  v8 = [v6 components:6 fromDate:a1];
  v9 = [v7 era];
  if (v9 == [v8 era])
  {
    v10 = [v7 year];
    v11 = v10 == [v8 year];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)dateWithDeltaDays:()IMAdditions
{
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v6 setDay:a3];
  v7 = [v5 dateByAddingComponents:v6 toDate:a1 options:0];

  return v7;
}

- (id)dateWithDeltaWeeks:()IMAdditions
{
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v6 setWeekOfYear:a3];
  v7 = [v5 dateByAddingComponents:v6 toDate:a1 options:0];

  return v7;
}

- (uint64_t)isToday
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [a1 isEqualToDay:v2];

  return v3;
}

- (BOOL)isFuture
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [a1 compare:v2];

  return v3 == 1;
}

- (uint64_t)wasYesterday
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [v2 dateWithDeltaDays:-1];
  v4 = [a1 isEqualToDay:v3];

  return v4;
}

- (uint64_t)isThisWeek
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [a1 isEqualToWeek:v2];

  return v3;
}

- (uint64_t)wasLastWeek
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [v2 dateWithDeltaWeeks:-1];
  v4 = [a1 isEqualToWeek:v3];

  return v4;
}

- (BOOL)wasLessThanAWeekAgo
{
  if ([a1 isFuture])
  {
    return 0;
  }

  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [v3 dateWithDeltaWeeks:-1];
  v5 = [a1 compare:v4];

  return v5 == 1;
}

- (uint64_t)isNextWeek
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [v2 dateWithDeltaWeeks:1];
  v4 = [a1 isEqualToWeek:v3];

  return v4;
}

- (id)dateAtWeekStart
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = 0;
  [v2 rangeOfUnit:0x2000 startDate:&v6 interval:0 forDate:a1];
  v3 = v6;
  v4 = v6;

  return v3;
}

+ (id)dateFormatter
{
  v0 = [MEMORY[0x1E696AF00] currentThread];
  v1 = [v0 threadDictionary];

  v2 = [v1 objectForKey:@"com.apple.itunesmobile.nsdate-imadditions.nsdateformatter"];
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [v2 setLocale:v3];

    [v1 setObject:v2 forKey:@"com.apple.itunesmobile.nsdate-imadditions.nsdateformatter"];
  }

  return v2;
}

+ (id)dateStringFromDate:()IMAdditions withDateStyle:timeStyle:isRelative:
{
  v9 = a3;
  v10 = [MEMORY[0x1E696AF00] currentThread];
  v11 = [v10 threadDictionary];

  v12 = [v11 objectForKey:@"com.apple.itunesmobile.nsdate-imadditions.datestringformatters"];
  if (!v12)
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
    [v11 setObject:v12 forKey:@"com.apple.itunesmobile.nsdate-imadditions.datestringformatters"];
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu-%lu-%d", a4, a5, a6];
  v14 = [v12 objectForKey:v13];
  if (!v14)
  {
    v14 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v15 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [v14 setLocale:v15];

    [v14 setDateStyle:a4];
    [v14 setTimeStyle:a5];
    [v14 setDoesRelativeDateFormatting:a6];
    [v12 setObject:v14 forKey:v13];
  }

  v16 = [v14 stringFromDate:v9];

  return v16;
}

+ (id)longDayStringFromDate:()IMAdditions
{
  v4 = MEMORY[0x1E696AB78];
  v5 = MEMORY[0x1E695DF58];
  v6 = a3;
  v7 = [v5 currentLocale];
  v8 = [v4 dateFormatFromTemplate:@"EEEE" options:0 locale:v7];

  v9 = [a1 dateFormatter];
  [v9 setDateFormat:v8];
  v10 = [v9 stringFromDate:v6];

  return v10;
}

+ (id)dateFormatterWithTemplate:()IMAdditions
{
  v3 = a3;
  if (v3)
  {
    v4 = [@"com.apple.itunesmobile.nsdate-imadditions.nsdateformatter" stringByAppendingString:v3];
    v5 = [@"com.apple.itunesmobile.nsdate-imadditions.nsdateformatter.locale" stringByAppendingString:v3];
    v6 = [MEMORY[0x1E696AF00] currentThread];
    v7 = [v6 threadDictionary];

    v8 = [v7 objectForKey:v5];
    v9 = [MEMORY[0x1E695DF58] currentLocale];
    v10 = [v9 localeIdentifier];
    v11 = [v8 isEqualToString:v10];

    if ((v11 & 1) == 0)
    {
      [v7 removeObjectForKey:v4];
      [v7 removeObjectForKey:v5];
    }

    v12 = [v7 objectForKey:v4];
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v12 setLocale:v9];
      v13 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:v3 options:0 locale:v9];
      [v12 setDateFormat:v13];
      [v7 setObject:v12 forKey:v4];
      v14 = [v9 localeIdentifier];
      [v7 setObject:v14 forKey:v5];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)monthYearFromDate:()IMAdditions
{
  v3 = MEMORY[0x1E695DF00];
  v4 = a3;
  v5 = [v3 dateFormatterWithTemplate:@"MMMM yyyy"];
  v6 = [v5 stringFromDate:v4];

  return v6;
}

+ (id)dayOfWeekFromDate:()IMAdditions
{
  v4 = MEMORY[0x1E696AB78];
  v5 = MEMORY[0x1E695DF58];
  v6 = a3;
  v7 = [v5 currentLocale];
  v8 = [v4 dateFormatFromTemplate:@"EEEE" options:0 locale:v7];

  v9 = [a1 dateFormatter];
  [v9 setDateFormat:v8];
  v10 = [v9 stringFromDate:v6];

  return v10;
}

+ (id)postTimeStringFromDate:()IMAdditions
{
  v4 = a3;
  if ([v4 isToday])
  {
    v5 = [a1 shortTimeStringFromDate:v4];
  }

  else if (([v4 wasYesterday] & 1) != 0 || (objc_msgSend(v4, "thisWeek") & 1) == 0)
  {
    v5 = [a1 mediumDateStringFromDate:v4];
  }

  else
  {
    v5 = [a1 longDayStringFromDate:v4];
  }

  v6 = v5;

  return v6;
}

+ (id)amPMStringFromDate:()IMAdditions
{
  v4 = a3;
  v5 = MEMORY[0x1E696AB78];
  v6 = [MEMORY[0x1E695DF58] currentLocale];
  v7 = [v5 dateFormatFromTemplate:@"hh:mma" options:0 locale:v6];

  v8 = [v7 rangeOfString:@"a"];
  if (v9)
  {
    v10 = [v7 stringByReplacingCharactersInRange:0 withString:{v8, &stru_1F548B930}];

    v11 = [a1 dateFormatter];
    [v11 setDateFormat:v10];
    v12 = [v11 stringFromDate:v4];

    v7 = v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)shortStandardTimeStringFromDate:()IMAdditions
{
  v3 = a3;
  v4 = shortStandardTimeStringFromDate__sDateFormatter;
  if (!shortStandardTimeStringFromDate__sDateFormatter)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v6 = shortStandardTimeStringFromDate__sDateFormatter;
    shortStandardTimeStringFromDate__sDateFormatter = v5;

    v7 = shortStandardTimeStringFromDate__sDateFormatter;
    v8 = [MEMORY[0x1E695DF58] currentLocale];
    [v7 setLocale:v8];

    [shortStandardTimeStringFromDate__sDateFormatter setTimeStyle:1];
    v4 = shortStandardTimeStringFromDate__sDateFormatter;
  }

  v9 = [v4 stringFromDate:v3];

  return v9;
}

+ (id)mailLikeDescriptionFromDate:()IMAdditions
{
  v4 = a3;
  if ([v4 isFuture])
  {
    v5 = [MEMORY[0x1E695DF00] shortDateStringFromDateNoRel:v4];
  }

  else if ([v4 isToday])
  {
    v5 = [MEMORY[0x1E695DF00] shortTimeStringFromDate:v4];
  }

  else if ([v4 wasLessThanAWeekAgo] && (objc_msgSend(v4, "wasYesterday") & 1) == 0)
  {
    v5 = [a1 dayOfWeekFromDate:v4];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF00] shortDateStringFromDate:v4];
  }

  v6 = v5;

  return v6;
}

- (id)dateForBeginningOfHour
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [v2 components:60 fromDate:a1];

  [v3 setHour:{objc_msgSend(v3, "hour")}];
  [v3 setMinute:0];
  [v3 setSecond:0];
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [v4 dateFromComponents:v3];

  return v5;
}

- (id)dateForBeginningOfDay
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [v2 components:28 fromDate:a1];

  [v3 setDay:{objc_msgSend(v3, "day")}];
  [v3 setHour:0];
  [v3 setMinute:0];
  [v3 setSecond:0];
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [v4 dateFromComponents:v3];

  return v5;
}

- (id)dateForEndOfDay
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [v2 components:28 fromDate:a1];

  [v3 setDay:{objc_msgSend(v3, "day")}];
  [v3 setHour:23];
  [v3 setMinute:59];
  [v3 setSecond:59];
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [v4 dateFromComponents:v3];

  return v5;
}

- (id)dateForBeginningOfMonth
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [v2 components:28 fromDate:a1];

  [v3 setDay:1];
  [v3 setHour:0];
  [v3 setMinute:0];
  [v3 setSecond:0];
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [v4 dateFromComponents:v3];

  return v5;
}

- (id)dateForBeginningOfYear
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [v2 components:28 fromDate:a1];

  [v3 setMonth:1];
  [v3 setDay:1];
  [v3 setHour:0];
  [v3 setMinute:0];
  [v3 setSecond:0];
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [v4 dateFromComponents:v3];

  return v5;
}

- (BOOL)inSameWeekAs:()IMAdditions
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 components:8196 fromDate:a1];
  v8 = [v6 components:8196 fromDate:v5];

  v9 = [v7 year];
  if (v9 == [v8 year])
  {
    v10 = [v7 weekOfYear];
    v11 = v10 == [v8 weekOfYear];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (uint64_t)thisWeek
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [a1 inSameWeekAs:v2];

  return v3;
}

- (uint64_t)nextWeek
{
  v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:604800.0];
  v3 = [a1 inSameWeekAs:v2];

  return v3;
}

@end