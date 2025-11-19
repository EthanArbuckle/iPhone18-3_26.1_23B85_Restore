@interface NSDate(PCExtensions)
+ (id)dateFormatter;
+ (id)dayNameFormatterInEnglish;
+ (id)firstSaturdayBeforeReferenceDate:()PCExtensions;
+ (id)monthDayFormatter;
+ (id)relativeBundleDateFormatter;
- (BOOL)betweenDate:()PCExtensions andDate:;
- (id)getBundleRelativeDate;
- (id)snapToTheDay;
- (id)startOfDay;
- (id)startOfDayWithBoundaryOfADay:()PCExtensions;
- (id)stringFromDate;
- (uint64_t)hours;
- (uint64_t)isFollowingDayAfterDate:()PCExtensions;
- (uint64_t)isFollowingMonthAfterDate:()PCExtensions;
- (uint64_t)isFollowingWeekAfterDate:()PCExtensions;
- (uint64_t)isFollowingYearAfterDate:()PCExtensions;
- (uint64_t)isSameDayWithDate:()PCExtensions;
- (uint64_t)isSameDayWithDate:()PCExtensions timeZone:;
- (uint64_t)isSameMonthWithDate:()PCExtensions;
- (uint64_t)isSameWeekWithDate:()PCExtensions;
- (uint64_t)isSameYearWithDate:()PCExtensions;
- (uint64_t)minutes;
@end

@implementation NSDate(PCExtensions)

- (id)stringFromDate
{
  v2 = MEMORY[0x1E696AEC0];
  [a1 timeIntervalSinceReferenceDate];
  v4 = v3;
  v5 = [MEMORY[0x1E695DF00] dateFormatter];
  v6 = [v5 stringFromDate:a1];
  v7 = [v2 stringWithFormat:@"%f (%@)", v4, v6];

  return v7;
}

- (BOOL)betweenDate:()PCExtensions andDate:
{
  result = 0;
  if (a3 && a4)
  {
    v7 = a4;
    [a3 timeIntervalSinceReferenceDate];
    v9 = v8;
    [a1 timeIntervalSinceReferenceDate];
    v11 = v10;
    [v7 timeIntervalSinceReferenceDate];
    v13 = v12;

    if (v9 <= v13)
    {
      v14 = v9 <= v11;
      v15 = v11 > v13;
    }

    else
    {
      v14 = v13 <= v11;
      v15 = v11 > v9;
    }

    return !v15 && v14;
  }

  return result;
}

- (id)snapToTheDay
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [v2 components:60 fromDate:a1];

  if ([v3 hour] > 2)
  {
    v6 = a1;
  }

  else
  {
    [v3 setHour:0];
    v4 = [MEMORY[0x1E695DEE8] currentCalendar];
    v5 = [v4 dateFromComponents:v3];

    v6 = [v5 dateByAddingTimeInterval:-1.0];
  }

  return v6;
}

- (uint64_t)isSameDayWithDate:()PCExtensions timeZone:
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x1E695DEE8]);
  v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v10 = v9;
  if (v7)
  {
    [v9 setTimeZone:v7];
  }

  v11 = [v10 isDate:a1 inSameDayAsDate:v6];

  return v11;
}

- (uint64_t)isSameDayWithDate:()PCExtensions
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 isDate:a1 inSameDayAsDate:v5];

  return v7;
}

- (uint64_t)isFollowingDayAfterDate:()PCExtensions
{
  v4 = [a3 dateByAddingTimeInterval:86400.0];
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [v5 isDate:a1 inSameDayAsDate:v4];

  return v6;
}

- (uint64_t)isSameWeekWithDate:()PCExtensions
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 isDate:a1 equalToDate:v5 toUnitGranularity:0x2000];

  return v7;
}

- (uint64_t)isFollowingWeekAfterDate:()PCExtensions
{
  v4 = [a3 dateByAddingTimeInterval:604800.0];
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [v5 isDate:a1 equalToDate:v4 toUnitGranularity:0x2000];

  return v6;
}

- (uint64_t)isSameMonthWithDate:()PCExtensions
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 isDate:a1 equalToDate:v5 toUnitGranularity:8];

  return v7;
}

- (uint64_t)isFollowingMonthAfterDate:()PCExtensions
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 components:12 fromDate:a1];

  v8 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [v8 components:12 fromDate:v5];

  v10 = [v7 month];
  v11 = [v7 year];
  if (v10 == 1)
  {
    if (v11 - 1 == [v9 year])
    {
      v12 = [v9 month] == 1;
      goto LABEL_6;
    }

LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  if (v11 != [v9 year])
  {
    goto LABEL_9;
  }

  v13 = [v7 month] - 1;
  v12 = v13 == [v9 month];
LABEL_6:
  v14 = v12;
LABEL_10:

  return v14;
}

- (uint64_t)isSameYearWithDate:()PCExtensions
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 isDate:a1 equalToDate:v5 toUnitGranularity:4];

  return v7;
}

- (uint64_t)isFollowingYearAfterDate:()PCExtensions
{
  v4 = [a3 dateByAddingTimeInterval:31536000.0];
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [v5 isDate:a1 equalToDate:v4 toUnitGranularity:4];

  return v6;
}

- (id)startOfDay
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [v2 components:28 fromDate:a1];

  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [v4 dateFromComponents:v3];

  return v5;
}

- (id)startOfDayWithBoundaryOfADay:()PCExtensions
{
  v3 = [a1 dateByAddingTimeInterval:-a2];
  v4 = [v3 startOfDay];
  v5 = [v4 dateByAddingTimeInterval:a2];

  return v5;
}

- (uint64_t)hours
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [v2 component:32 fromDate:a1];

  return v3;
}

- (uint64_t)minutes
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [v2 component:64 fromDate:a1];

  return v3;
}

+ (id)dateFormatter
{
  if (qword_1EE04AEA8 != -1)
  {
    dispatch_once(&qword_1EE04AEA8, &__block_literal_global_3);
  }

  v1 = _MergedGlobals_0;

  return v1;
}

+ (id)firstSaturdayBeforeReferenceDate:()PCExtensions
{
  v3 = a3;
  if (!v3)
  {
    v7 = 0;
    goto LABEL_9;
  }

  v4 = [MEMORY[0x1E695DF00] distantPast];
  v5 = [v3 isEqualToDate:v4];

  if (v5)
  {
    v6 = [MEMORY[0x1E695DF00] distantPast];
LABEL_7:
    v7 = v6;
    goto LABEL_9;
  }

  v8 = [MEMORY[0x1E695DF00] distantFuture];
  v9 = [v3 isEqualToDate:v8];

  if (v9)
  {
    v6 = [MEMORY[0x1E695DF00] distantFuture];
    goto LABEL_7;
  }

  v10 = [MEMORY[0x1E695DEE8] currentCalendar];
  v11 = [v10 components:512 fromDate:v3];
  v12 = [v11 weekday];
  v13 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v13 setDay:7 * (v12 / 7) - v12];
  v14 = [v10 dateByAddingComponents:v13 toDate:v3 options:0];
  v15 = [v10 components:28 fromDate:v14];
  [v15 setHour:0];
  [v15 setMinute:0];
  [v15 setSecond:0];
  v7 = [v10 dateFromComponents:v15];

LABEL_9:

  return v7;
}

+ (id)dayNameFormatterInEnglish
{
  if (qword_1EE04AEB8 != -1)
  {
    dispatch_once(&qword_1EE04AEB8, &__block_literal_global_8);
  }

  v1 = qword_1EE04AEB0;

  return v1;
}

+ (id)relativeBundleDateFormatter
{
  if (qword_1EE04AEC8 != -1)
  {
    dispatch_once(&qword_1EE04AEC8, &__block_literal_global_16);
  }

  v1 = qword_1EE04AEC0;

  return v1;
}

+ (id)monthDayFormatter
{
  if (qword_1EE04AED8 != -1)
  {
    dispatch_once(&qword_1EE04AED8, &__block_literal_global_18);
  }

  v1 = qword_1EE04AED0;

  return v1;
}

- (id)getBundleRelativeDate
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] dayNameFormatterInEnglish];
  v3 = [v2 stringFromDate:a1];

  v4 = [MEMORY[0x1E695DF00] dayNameFormatterInEnglish];
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [v4 stringFromDate:v5];

  v7 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v14 = 138412546;
    v15 = v3;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_1CEE74000, v7, OS_LOG_TYPE_INFO, "bundleDay: %@, nowDay: %@", &v14, 0x16u);
  }

  [a1 timeIntervalSinceNow];
  if (v8 < 0.0)
  {
    v8 = -v8;
  }

  if (v8 > 604800.0 || v3 == v6)
  {
    v10 = [MEMORY[0x1E695DF00] monthDayFormatter];
    v11 = [v10 stringFromDate:a1];
  }

  else
  {
    v11 = v3;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end