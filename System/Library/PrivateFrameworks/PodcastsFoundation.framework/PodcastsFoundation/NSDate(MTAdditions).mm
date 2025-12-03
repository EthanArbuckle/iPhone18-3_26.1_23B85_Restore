@interface NSDate(MTAdditions)
+ (id)dayOfWeekFromDate:()MTAdditions abbreviated:;
+ (id)mt_dateFormatterJustYear;
+ (id)mt_dateFormatterNoDayWithYear;
+ (id)mt_dateFormatterNoYear;
+ (id)mt_dateFormatterNoYearAbbrevMonth;
+ (id)mt_dateFormatterRelativeDay;
+ (id)mt_dateFormatterShortStyleWithYear;
+ (id)mt_dateFormatterWithYear;
+ (id)mt_lessVerboseDateFormatter;
+ (id)mt_verboseDateFormatter;
- (BOOL)inSameYearAs:()MTAdditions;
- (BOOL)isLessThanDaysOld:()MTAdditions;
- (BOOL)isSameDayOfWeekAs:()MTAdditions;
- (id)abbreviatedFriendlyDisplayString;
- (id)friendlyDisplayString;
- (id)lessVerboseDisplayString;
- (id)lessVerboseDisplayStringWithoutTime;
- (id)lessVerboseDisplayStringWithoutTimeAndCurrentYear;
- (id)microDateString;
- (id)microFriendlyDisplayString:()MTAdditions;
- (id)mt_dateWithDeltaDays:()MTAdditions;
- (id)nanoFriendlyDisplayString;
- (id)verboseDisplayString;
- (id)verboseDisplayStringWithoutTime;
- (id)verboseDisplayStringWithoutTimeAndCurrentYear;
- (id)yearString;
- (uint64_t)isThisYear;
- (uint64_t)timeString;
@end

@implementation NSDate(MTAdditions)

- (id)friendlyDisplayString
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [currentCalendar startOfDayForDate:self];
  date = [MEMORY[0x1E695DF00] date];
  v5 = [currentCalendar startOfDayForDate:date];

  if ([v3 isEqualToDate:v5])
  {
    mt_dateFormatterRelativeDay = [MEMORY[0x1E695DF00] mt_dateFormatterRelativeDay];
    v7 = mt_dateFormatterRelativeDay;
    v8 = v5;
  }

  else
  {
    v9 = [v5 mt_dateWithDeltaDays:-7];
    v10 = [v3 compare:v9];

    if (v10 == 1)
    {
      v11 = [MEMORY[0x1E695DF00] dayOfWeekFromDate:v3 abbreviated:0];
      goto LABEL_10;
    }

    if ([v3 isThisYear])
    {
      [MEMORY[0x1E695DF00] mt_dateFormatterNoYear];
    }

    else
    {
      [MEMORY[0x1E695DF00] mt_dateFormatterWithYear];
    }
    mt_dateFormatterRelativeDay = ;
    v7 = mt_dateFormatterRelativeDay;
    v8 = v3;
  }

  v11 = [mt_dateFormatterRelativeDay stringFromDate:v8];

LABEL_10:

  return v11;
}

- (id)yearString
{
  mt_dateFormatterJustYear = [MEMORY[0x1E695DF00] mt_dateFormatterJustYear];
  v3 = [mt_dateFormatterJustYear stringFromDate:self];

  return v3;
}

- (id)abbreviatedFriendlyDisplayString
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [currentCalendar startOfDayForDate:self];
  date = [MEMORY[0x1E695DF00] date];
  v5 = [currentCalendar startOfDayForDate:date];

  if ([v3 isEqualToDate:v5])
  {
    mt_dateFormatterRelativeDay = [MEMORY[0x1E695DF00] mt_dateFormatterRelativeDay];
    v7 = mt_dateFormatterRelativeDay;
    v8 = v5;
  }

  else
  {
    v9 = [v5 mt_dateWithDeltaDays:-7];
    v10 = [v3 compare:v9];

    if (v10 == 1)
    {
      v11 = [MEMORY[0x1E695DF00] dayOfWeekFromDate:v3 abbreviated:0];
      goto LABEL_10;
    }

    if ([v3 isThisYear])
    {
      [MEMORY[0x1E695DF00] mt_dateFormatterNoYearAbbrevMonth];
    }

    else
    {
      [MEMORY[0x1E695DF00] mt_dateFormatterWithYear];
    }
    mt_dateFormatterRelativeDay = ;
    v7 = mt_dateFormatterRelativeDay;
    v8 = v3;
  }

  v11 = [mt_dateFormatterRelativeDay stringFromDate:v8];

LABEL_10:

  return v11;
}

- (id)microDateString
{
  mt_dateFormatterNoYearAbbrevMonth = [MEMORY[0x1E695DF00] mt_dateFormatterNoYearAbbrevMonth];
  v3 = [mt_dateFormatterNoYearAbbrevMonth stringFromDate:self];

  return v3;
}

- (id)microFriendlyDisplayString:()MTAdditions
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [currentCalendar startOfDayForDate:self];
  date = [MEMORY[0x1E695DF00] date];
  v8 = [currentCalendar startOfDayForDate:date];

  if ([v6 isEqualToDate:v8])
  {
    mt_dateFormatterRelativeDay = [MEMORY[0x1E695DF00] mt_dateFormatterRelativeDay];
    v10 = mt_dateFormatterRelativeDay;
    v11 = v8;
  }

  else
  {
    v12 = [v8 mt_dateWithDeltaDays:-7];
    v13 = [v6 compare:v12];

    if (v13 == 1)
    {
      v14 = [MEMORY[0x1E695DF00] dayOfWeekFromDate:v6 abbreviated:a3];
      goto LABEL_10;
    }

    if ([v6 isThisYear])
    {
      [MEMORY[0x1E695DF00] mt_dateFormatterNoYearAbbrevMonth];
    }

    else
    {
      [MEMORY[0x1E695DF00] mt_dateFormatterNoDayWithYear];
    }
    mt_dateFormatterRelativeDay = ;
    v10 = mt_dateFormatterRelativeDay;
    v11 = v6;
  }

  v14 = [mt_dateFormatterRelativeDay stringFromDate:v11];

LABEL_10:

  return v14;
}

- (id)nanoFriendlyDisplayString
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [currentCalendar startOfDayForDate:self];
  date = [MEMORY[0x1E695DF00] date];
  v5 = [currentCalendar startOfDayForDate:date];

  if ([v3 isEqualToDate:v5])
  {
    mt_dateFormatterRelativeDay = [MEMORY[0x1E695DF00] mt_dateFormatterRelativeDay];
    v7 = mt_dateFormatterRelativeDay;
    v8 = v5;
  }

  else
  {
    v9 = [v5 mt_dateWithDeltaDays:-7];
    v10 = [v3 compare:v9];

    if (v10 == 1)
    {
      v11 = [MEMORY[0x1E695DF00] dayOfWeekFromDate:v3 abbreviated:1];
      goto LABEL_10;
    }

    if ([v3 isThisYear])
    {
      [MEMORY[0x1E695DF00] mt_dateFormatterNoYearAbbrevMonth];
    }

    else
    {
      [MEMORY[0x1E695DF00] mt_dateFormatterShortStyleWithYear];
    }
    mt_dateFormatterRelativeDay = ;
    v7 = mt_dateFormatterRelativeDay;
    v8 = v3;
  }

  v11 = [mt_dateFormatterRelativeDay stringFromDate:v8];

LABEL_10:

  return v11;
}

+ (id)dayOfWeekFromDate:()MTAdditions abbreviated:
{
  v5 = a3;
  if (a4)
  {
    if (dayOfWeekFromDate_abbreviated__onceToken != -1)
    {
      +[NSDate(MTAdditions) dayOfWeekFromDate:abbreviated:];
    }

    v6 = &dayOfWeekFromDate_abbreviated__formatterAbbrev;
  }

  else
  {
    if (dayOfWeekFromDate_abbreviated__onceToken_5 != -1)
    {
      +[NSDate(MTAdditions) dayOfWeekFromDate:abbreviated:];
    }

    v6 = &dayOfWeekFromDate_abbreviated__formatterVerbose;
  }

  v7 = *v6;
  v8 = [v7 stringFromDate:v5];

  return v8;
}

- (id)verboseDisplayString
{
  podcastsFoundationBundle = [MEMORY[0x1E696AAE8] podcastsFoundationBundle];
  v3 = [podcastsFoundationBundle localizedStringForKey:@"DATE_AT_TIME" value:&stru_1F548B930 table:0];

  mt_verboseDateFormatter = [MEMORY[0x1E695DF00] mt_verboseDateFormatter];
  v5 = [mt_verboseDateFormatter stringFromDate:self];

  timeString = [self timeString];
  v7 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v3 validFormatSpecifiers:@"%@ %@" error:0, v5, timeString];

  return v7;
}

- (id)lessVerboseDisplayString
{
  podcastsFoundationBundle = [MEMORY[0x1E696AAE8] podcastsFoundationBundle];
  v3 = [podcastsFoundationBundle localizedStringForKey:@"DATE_AT_TIME" value:&stru_1F548B930 table:0];

  mt_lessVerboseDateFormatter = [MEMORY[0x1E695DF00] mt_lessVerboseDateFormatter];
  v5 = [mt_lessVerboseDateFormatter stringFromDate:self];

  timeString = [self timeString];
  v7 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v3 validFormatSpecifiers:@"%@ %@" error:0, v5, timeString];

  return v7;
}

- (id)verboseDisplayStringWithoutTime
{
  mt_verboseDateFormatter = [MEMORY[0x1E695DF00] mt_verboseDateFormatter];
  v3 = [mt_verboseDateFormatter stringFromDate:self];

  return v3;
}

- (id)lessVerboseDisplayStringWithoutTime
{
  mt_lessVerboseDateFormatter = [MEMORY[0x1E695DF00] mt_lessVerboseDateFormatter];
  v3 = [mt_lessVerboseDateFormatter stringFromDate:self];

  return v3;
}

- (id)verboseDisplayStringWithoutTimeAndCurrentYear
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [currentCalendar startOfDayForDate:self];
  if ([v3 isThisYear])
  {
    [MEMORY[0x1E695DF00] mt_dateFormatterNoYear];
  }

  else
  {
    [MEMORY[0x1E695DF00] mt_verboseDateFormatter];
  }
  v4 = ;
  v5 = [v4 stringFromDate:v3];

  return v5;
}

- (id)lessVerboseDisplayStringWithoutTimeAndCurrentYear
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [currentCalendar startOfDayForDate:self];
  if ([v3 isThisYear])
  {
    [MEMORY[0x1E695DF00] mt_dateFormatterNoYear];
  }

  else
  {
    [MEMORY[0x1E695DF00] mt_lessVerboseDateFormatter];
  }
  v4 = ;
  v5 = [v4 stringFromDate:v3];

  return v5;
}

- (uint64_t)timeString
{
  if (timeString_onceToken != -1)
  {
    [NSDate(MTAdditions) timeString];
  }

  v2 = timeString_fmt;

  return [v2 stringFromDate:self];
}

- (uint64_t)isThisYear
{
  date = [MEMORY[0x1E695DF00] date];
  v3 = [self inSameYearAs:date];

  return v3;
}

- (BOOL)inSameYearAs:()MTAdditions
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar components:4 fromDate:self];
  v8 = [currentCalendar components:4 fromDate:v5];

  year = [v7 year];
  v10 = year == [v8 year];

  return v10;
}

- (BOOL)isSameDayOfWeekAs:()MTAdditions
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar component:512 fromDate:self];
  v8 = [currentCalendar component:512 fromDate:v5];

  return v7 == v8;
}

+ (id)mt_dateFormatterRelativeDay
{
  if (mt_dateFormatterRelativeDay_onceToken != -1)
  {
    +[NSDate(MTAdditions) mt_dateFormatterRelativeDay];
  }

  v1 = mt_dateFormatterRelativeDay__s__dateFormatterRelativeDay;

  return v1;
}

+ (id)mt_dateFormatterWithYear
{
  if (mt_dateFormatterWithYear_onceToken != -1)
  {
    +[NSDate(MTAdditions) mt_dateFormatterWithYear];
  }

  v1 = mt_dateFormatterWithYear__s__dateFormatterWithYear;

  return v1;
}

+ (id)mt_dateFormatterJustYear
{
  if (mt_dateFormatterJustYear_onceToken != -1)
  {
    +[NSDate(MTAdditions) mt_dateFormatterJustYear];
  }

  v1 = mt_dateFormatterJustYear_justYearFormatter;

  return v1;
}

+ (id)mt_dateFormatterNoDayWithYear
{
  if (mt_dateFormatterNoDayWithYear_onceToken != -1)
  {
    +[NSDate(MTAdditions) mt_dateFormatterNoDayWithYear];
  }

  v1 = mt_dateFormatterNoDayWithYear__s__dateFormatterNoDayWithYear;

  return v1;
}

+ (id)mt_dateFormatterShortStyleWithYear
{
  if (mt_dateFormatterShortStyleWithYear_onceToken != -1)
  {
    +[NSDate(MTAdditions) mt_dateFormatterShortStyleWithYear];
  }

  v1 = mt_dateFormatterShortStyleWithYear_dateFormatter;

  return v1;
}

+ (id)mt_dateFormatterNoYear
{
  if (mt_dateFormatterNoYear_onceToken != -1)
  {
    +[NSDate(MTAdditions) mt_dateFormatterNoYear];
  }

  v1 = mt_dateFormatterNoYear__s__dateFormatterNoYear;

  return v1;
}

+ (id)mt_dateFormatterNoYearAbbrevMonth
{
  if (mt_dateFormatterNoYearAbbrevMonth_onceToken != -1)
  {
    +[NSDate(MTAdditions) mt_dateFormatterNoYearAbbrevMonth];
  }

  v1 = mt_dateFormatterNoYearAbbrevMonth__s__dateFormatterNoYearAbbrevMonth;

  return v1;
}

+ (id)mt_verboseDateFormatter
{
  if (mt_verboseDateFormatter_onceToken != -1)
  {
    +[NSDate(MTAdditions) mt_verboseDateFormatter];
  }

  v1 = mt_verboseDateFormatter__s__dateFormatterWithYear;

  return v1;
}

+ (id)mt_lessVerboseDateFormatter
{
  if (mt_lessVerboseDateFormatter_onceToken != -1)
  {
    +[NSDate(MTAdditions) mt_lessVerboseDateFormatter];
  }

  v1 = mt_lessVerboseDateFormatter__s__dateFormatterWithYear;

  return v1;
}

- (BOOL)isLessThanDaysOld:()MTAdditions
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [currentCalendar startOfDayForDate:self];
  date = [MEMORY[0x1E695DF00] date];
  v8 = [currentCalendar startOfDayForDate:date];

  v9 = [v8 mt_dateWithDeltaDays:-a3];
  v10 = [v6 compare:v9] == 1;

  return v10;
}

- (id)mt_dateWithDeltaDays:()MTAdditions
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v6 setDay:a3];
  v7 = [currentCalendar dateByAddingComponents:v6 toDate:self options:0];

  return v7;
}

@end