@interface NSDate(RCAdditions)
+ (id)_fr_sharedYearAndMonthDateFormatter;
+ (id)rc_dateFromString:()RCAdditions possibleFormats:;
+ (id)rc_dateFromStringWithHTTPHeaderFormat:()RCAdditions;
+ (id)rc_dateFromStringWithISO8601Format:()RCAdditions;
+ (id)rc_earlierDateAllowingNilWithDate:()RCAdditions andDate:;
+ (id)rc_laterDateAllowingNilWithDate:()RCAdditions andDate:;
- (BOOL)rc_isEarlierThan:()RCAdditions withPrecision:;
- (BOOL)rc_isLaterThan:()RCAdditions withPrecision:;
- (BOOL)rc_isWeekend;
- (id)rc_dateOfEarliestGregorianCalendarDay;
- (id)rc_stringWithISO8601Format;
- (id)rc_stringWithYearAndMonthFormat;
- (uint64_t)isToday;
- (uint64_t)rc_GregorianCalendarDaysSinceDate:()RCAdditions;
- (uint64_t)rc_isSameDayAs:()RCAdditions;
- (unint64_t)rc_millisecondTimeIntervalSinceDate:()RCAdditions;
@end

@implementation NSDate(RCAdditions)

+ (id)rc_dateFromString:()RCAdditions possibleFormats:
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NSDate(RCAdditions) rc_dateFromString:possibleFormats:];
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NSDate(RCAdditions) rc_dateFromString:possibleFormats:];
  }

LABEL_6:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
LABEL_8:
    v11 = 0;
    while (1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v18 + 1) + 8 * v11);
      v13 = objc_autoreleasePoolPush();
      v14 = [MEMORY[0x277CCA968] dateFormatterWithFormat:v12 forReuse:0, v18];
      v15 = [v14 dateFromString:v5];

      objc_autoreleasePoolPop(v13);
      if (v15)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)rc_dateFromStringWithISO8601Format:()RCAdditions
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = @"yyyy-MM-dd'T'HH:mm:ssZZ";
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:1];
  v7 = [self rc_dateFromString:v5 possibleFormats:{v6, v10, v11}];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)rc_dateFromStringWithHTTPHeaderFormat:()RCAdditions
{
  v10[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"EEE, dd MMM yyyy HH:mm:ss z";
  v10[1] = @"EEEE, dd-MMM-yy HH:mm:ss z";
  v10[2] = @"EEE MMM d HH:mm:ss yyyy";
  v10[3] = @"EEE MMM dd HH:mm:ss z yyyy";
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:v10 count:4];
  v7 = [self rc_dateFromString:v5 possibleFormats:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)rc_isEarlierThan:()RCAdditions withPrecision:
{
  v6 = a3;
  [self timeIntervalSinceReferenceDate];
  v8 = v7;
  [v6 timeIntervalSinceReferenceDate];
  v10 = v9;

  if (v8 >= v10)
  {
    return 0;
  }

  v11 = 0.001;
  if (a4 != 1)
  {
    v11 = 0.0;
  }

  if (a4 == 2)
  {
    v11 = 1.0;
  }

  return vabdd_f64(v8, v10) >= v11;
}

- (BOOL)rc_isLaterThan:()RCAdditions withPrecision:
{
  v6 = a3;
  [self timeIntervalSinceReferenceDate];
  v8 = v7;
  [v6 timeIntervalSinceReferenceDate];
  v10 = v9;

  if (v8 <= v10)
  {
    return 0;
  }

  v11 = 0.001;
  if (a4 != 1)
  {
    v11 = 0.0;
  }

  if (a4 == 2)
  {
    v11 = 1.0;
  }

  return vabdd_f64(v8, v10) >= v11;
}

- (unint64_t)rc_millisecondTimeIntervalSinceDate:()RCAdditions
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSDate(RCAdditions) rc_millisecondTimeIntervalSinceDate:];
  }

  [self timeIntervalSinceDate:v4];
  v6 = (fmax(v5, 0.0) * 1000.0);

  return v6;
}

- (id)rc_dateOfEarliestGregorianCalendarDay
{
  v2 = objc_alloc(MEMORY[0x277CBEA80]);
  v3 = [v2 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v4 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v3 setTimeZone:v4];

  v8 = 0;
  [v3 rangeOfUnit:16 startDate:&v8 interval:0 forDate:self];
  v5 = v8;
  v6 = v8;

  return v5;
}

- (uint64_t)rc_GregorianCalendarDaysSinceDate:()RCAdditions
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSDate(RCAdditions) rc_GregorianCalendarDaysSinceDate:];
  }

  v5 = objc_alloc(MEMORY[0x277CBEA80]);
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v7 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v6 setTimeZone:v7];

  rc_dateOfEarliestGregorianCalendarDay = [v4 rc_dateOfEarliestGregorianCalendarDay];
  rc_dateOfEarliestGregorianCalendarDay2 = [self rc_dateOfEarliestGregorianCalendarDay];
  v10 = [v6 components:16 fromDate:rc_dateOfEarliestGregorianCalendarDay toDate:rc_dateOfEarliestGregorianCalendarDay2 options:0];
  v11 = [v10 day];

  return v11;
}

- (uint64_t)isToday
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v3 = [currentCalendar isDateInToday:self];

  return v3;
}

- (BOOL)rc_isWeekend
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = [currentLocale objectForKey:*MEMORY[0x277CBE678]];
  v4 = [v3 components:524 fromDate:self];

  v5 = [v4 weekday] == 1 || objc_msgSend(v4, "weekday") == 7;
  return v5;
}

- (uint64_t)rc_isSameDayAs:()RCAdditions
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar components:28 fromDate:self];

  currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [currentCalendar2 components:28 fromDate:v5];

  v10 = [v7 isEqual:v9];
  return v10;
}

+ (id)rc_earlierDateAllowingNilWithDate:()RCAdditions andDate:
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v8 = v6;
    goto LABEL_5;
  }

  if (v6)
  {
    v8 = [v5 earlierDate:v6];
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (id)rc_laterDateAllowingNilWithDate:()RCAdditions andDate:
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v8 = v6;
    goto LABEL_5;
  }

  if (v6)
  {
    v8 = [v5 laterDate:v6];
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (id)rc_stringWithISO8601Format
{
  v2 = [MEMORY[0x277CCA968] dateFormatterWithFormat:@"yyyy-MM-dd'T'HH:mm:ssZZ" forReuse:0];
  v3 = [v2 stringFromDate:self];

  return v3;
}

- (id)rc_stringWithYearAndMonthFormat
{
  _fr_sharedYearAndMonthDateFormatter = [objc_opt_class() _fr_sharedYearAndMonthDateFormatter];
  v3 = [_fr_sharedYearAndMonthDateFormatter stringFromDate:self];

  return v3;
}

+ (id)_fr_sharedYearAndMonthDateFormatter
{
  if (_fr_sharedYearAndMonthDateFormatter_once != -1)
  {
    +[NSDate(RCAdditions) _fr_sharedYearAndMonthDateFormatter];
  }

  v1 = _fr_sharedYearAndMonthDateFormatter_sharedDateFormatter;

  return v1;
}

+ (void)rc_dateFromString:()RCAdditions possibleFormats:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "string != nil", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)rc_dateFromString:()RCAdditions possibleFormats:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "formats != nil", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)rc_millisecondTimeIntervalSinceDate:()RCAdditions .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "date", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)rc_GregorianCalendarDaysSinceDate:()RCAdditions .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "date", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end