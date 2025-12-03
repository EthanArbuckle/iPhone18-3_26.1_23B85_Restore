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
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar components:30 fromDate:v5];

  v8 = [currentCalendar dateFromComponents:v7];
  v9 = [currentCalendar components:30 fromDate:self];

  v10 = [currentCalendar dateFromComponents:v9];
  v11 = [v8 isEqualToDate:v10];

  return v11;
}

- (BOOL)isEqualToWeek:()IMAdditions
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar components:8198 fromDate:v5];

  v8 = [currentCalendar components:8198 fromDate:self];
  year = [v7 year];
  if (year == [v8 year])
  {
    weekOfYear = [v7 weekOfYear];
    v11 = weekOfYear == [v8 weekOfYear];
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
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar components:6 fromDate:v5];

  v8 = [currentCalendar components:6 fromDate:self];
  v9 = [v7 era];
  if (v9 == [v8 era])
  {
    year = [v7 year];
    v11 = year == [v8 year];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)dateWithDeltaDays:()IMAdditions
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v6 setDay:a3];
  v7 = [currentCalendar dateByAddingComponents:v6 toDate:self options:0];

  return v7;
}

- (id)dateWithDeltaWeeks:()IMAdditions
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v6 setWeekOfYear:a3];
  v7 = [currentCalendar dateByAddingComponents:v6 toDate:self options:0];

  return v7;
}

- (uint64_t)isToday
{
  date = [MEMORY[0x1E695DF00] date];
  v3 = [self isEqualToDay:date];

  return v3;
}

- (BOOL)isFuture
{
  date = [MEMORY[0x1E695DF00] date];
  v3 = [self compare:date];

  return v3 == 1;
}

- (uint64_t)wasYesterday
{
  date = [MEMORY[0x1E695DF00] date];
  v3 = [date dateWithDeltaDays:-1];
  v4 = [self isEqualToDay:v3];

  return v4;
}

- (uint64_t)isThisWeek
{
  date = [MEMORY[0x1E695DF00] date];
  v3 = [self isEqualToWeek:date];

  return v3;
}

- (uint64_t)wasLastWeek
{
  date = [MEMORY[0x1E695DF00] date];
  v3 = [date dateWithDeltaWeeks:-1];
  v4 = [self isEqualToWeek:v3];

  return v4;
}

- (BOOL)wasLessThanAWeekAgo
{
  if ([self isFuture])
  {
    return 0;
  }

  date = [MEMORY[0x1E695DF00] date];
  v4 = [date dateWithDeltaWeeks:-1];
  v5 = [self compare:v4];

  return v5 == 1;
}

- (uint64_t)isNextWeek
{
  date = [MEMORY[0x1E695DF00] date];
  v3 = [date dateWithDeltaWeeks:1];
  v4 = [self isEqualToWeek:v3];

  return v4;
}

- (id)dateAtWeekStart
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = 0;
  [currentCalendar rangeOfUnit:0x2000 startDate:&v6 interval:0 forDate:self];
  v3 = v6;
  v4 = v6;

  return v3;
}

+ (id)dateFormatter
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v2 = [threadDictionary objectForKey:@"com.apple.itunesmobile.nsdate-imadditions.nsdateformatter"];
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [v2 setLocale:autoupdatingCurrentLocale];

    [threadDictionary setObject:v2 forKey:@"com.apple.itunesmobile.nsdate-imadditions.nsdateformatter"];
  }

  return v2;
}

+ (id)dateStringFromDate:()IMAdditions withDateStyle:timeStyle:isRelative:
{
  v9 = a3;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  dictionary = [threadDictionary objectForKey:@"com.apple.itunesmobile.nsdate-imadditions.datestringformatters"];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [threadDictionary setObject:dictionary forKey:@"com.apple.itunesmobile.nsdate-imadditions.datestringformatters"];
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu-%lu-%d", a4, a5, a6];
  v14 = [dictionary objectForKey:v13];
  if (!v14)
  {
    v14 = objc_alloc_init(MEMORY[0x1E696AB78]);
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [v14 setLocale:autoupdatingCurrentLocale];

    [v14 setDateStyle:a4];
    [v14 setTimeStyle:a5];
    [v14 setDoesRelativeDateFormatting:a6];
    [dictionary setObject:v14 forKey:v13];
  }

  v16 = [v14 stringFromDate:v9];

  return v16;
}

+ (id)longDayStringFromDate:()IMAdditions
{
  v4 = MEMORY[0x1E696AB78];
  v5 = MEMORY[0x1E695DF58];
  v6 = a3;
  currentLocale = [v5 currentLocale];
  v8 = [v4 dateFormatFromTemplate:@"EEEE" options:0 locale:currentLocale];

  dateFormatter = [self dateFormatter];
  [dateFormatter setDateFormat:v8];
  v10 = [dateFormatter stringFromDate:v6];

  return v10;
}

+ (id)dateFormatterWithTemplate:()IMAdditions
{
  v3 = a3;
  if (v3)
  {
    v4 = [@"com.apple.itunesmobile.nsdate-imadditions.nsdateformatter" stringByAppendingString:v3];
    v5 = [@"com.apple.itunesmobile.nsdate-imadditions.nsdateformatter.locale" stringByAppendingString:v3];
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    threadDictionary = [currentThread threadDictionary];

    v8 = [threadDictionary objectForKey:v5];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];
    v11 = [v8 isEqualToString:localeIdentifier];

    if ((v11 & 1) == 0)
    {
      [threadDictionary removeObjectForKey:v4];
      [threadDictionary removeObjectForKey:v5];
    }

    v12 = [threadDictionary objectForKey:v4];
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v12 setLocale:currentLocale];
      v13 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:v3 options:0 locale:currentLocale];
      [v12 setDateFormat:v13];
      [threadDictionary setObject:v12 forKey:v4];
      localeIdentifier2 = [currentLocale localeIdentifier];
      [threadDictionary setObject:localeIdentifier2 forKey:v5];
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
  currentLocale = [v5 currentLocale];
  v8 = [v4 dateFormatFromTemplate:@"EEEE" options:0 locale:currentLocale];

  dateFormatter = [self dateFormatter];
  [dateFormatter setDateFormat:v8];
  v10 = [dateFormatter stringFromDate:v6];

  return v10;
}

+ (id)postTimeStringFromDate:()IMAdditions
{
  v4 = a3;
  if ([v4 isToday])
  {
    v5 = [self shortTimeStringFromDate:v4];
  }

  else if (([v4 wasYesterday] & 1) != 0 || (objc_msgSend(v4, "thisWeek") & 1) == 0)
  {
    v5 = [self mediumDateStringFromDate:v4];
  }

  else
  {
    v5 = [self longDayStringFromDate:v4];
  }

  v6 = v5;

  return v6;
}

+ (id)amPMStringFromDate:()IMAdditions
{
  v4 = a3;
  v5 = MEMORY[0x1E696AB78];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v7 = [v5 dateFormatFromTemplate:@"hh:mma" options:0 locale:currentLocale];

  v8 = [v7 rangeOfString:@"a"];
  if (v9)
  {
    v10 = [v7 stringByReplacingCharactersInRange:0 withString:{v8, &stru_1F548B930}];

    dateFormatter = [self dateFormatter];
    [dateFormatter setDateFormat:v10];
    v12 = [dateFormatter stringFromDate:v4];

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
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    [v7 setLocale:currentLocale];

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
    v5 = [self dayOfWeekFromDate:v4];
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
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [currentCalendar components:60 fromDate:self];

  [v3 setHour:{objc_msgSend(v3, "hour")}];
  [v3 setMinute:0];
  [v3 setSecond:0];
  currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [currentCalendar2 dateFromComponents:v3];

  return v5;
}

- (id)dateForBeginningOfDay
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [currentCalendar components:28 fromDate:self];

  [v3 setDay:{objc_msgSend(v3, "day")}];
  [v3 setHour:0];
  [v3 setMinute:0];
  [v3 setSecond:0];
  currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [currentCalendar2 dateFromComponents:v3];

  return v5;
}

- (id)dateForEndOfDay
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [currentCalendar components:28 fromDate:self];

  [v3 setDay:{objc_msgSend(v3, "day")}];
  [v3 setHour:23];
  [v3 setMinute:59];
  [v3 setSecond:59];
  currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [currentCalendar2 dateFromComponents:v3];

  return v5;
}

- (id)dateForBeginningOfMonth
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [currentCalendar components:28 fromDate:self];

  [v3 setDay:1];
  [v3 setHour:0];
  [v3 setMinute:0];
  [v3 setSecond:0];
  currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [currentCalendar2 dateFromComponents:v3];

  return v5;
}

- (id)dateForBeginningOfYear
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [currentCalendar components:28 fromDate:self];

  [v3 setMonth:1];
  [v3 setDay:1];
  [v3 setHour:0];
  [v3 setMinute:0];
  [v3 setSecond:0];
  currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [currentCalendar2 dateFromComponents:v3];

  return v5;
}

- (BOOL)inSameWeekAs:()IMAdditions
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar components:8196 fromDate:self];
  v8 = [currentCalendar components:8196 fromDate:v5];

  year = [v7 year];
  if (year == [v8 year])
  {
    weekOfYear = [v7 weekOfYear];
    v11 = weekOfYear == [v8 weekOfYear];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (uint64_t)thisWeek
{
  date = [MEMORY[0x1E695DF00] date];
  v3 = [self inSameWeekAs:date];

  return v3;
}

- (uint64_t)nextWeek
{
  v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:604800.0];
  v3 = [self inSameWeekAs:v2];

  return v3;
}

@end