@interface NSDate(WBSNSDateExtras)
+ (double)safari_timeIntervalSinceSystemStart;
+ (id)safari_dateOfMidnightNumberOfDaysAgo:()WBSNSDateExtras;
+ (void)safari_dateFromNTPServerWithTimeout:()WBSNSDateExtras completionHandler:;
- (BOOL)safari_isInclusivelyBetweenDate:()WBSNSDateExtras andDate:;
- (id)_safari_stringWithDashSeparatorWithDateFormatter:()WBSNSDateExtras;
- (id)safari_startOfDay;
- (id)safari_stringsFromDateForLocaleIdentifiers:()WBSNSDateExtras;
- (uint64_t)safari_filenameFormattedString;
- (uint64_t)safari_isInSameDayAsDate:()WBSNSDateExtras;
- (uint64_t)safari_isInToday;
- (uint64_t)safari_isNowOrInRecentPast;
- (uint64_t)safari_numberOfDaysUntilDate:()WBSNSDateExtras;
- (uint64_t)safari_numberOfWeeksUntilDate:()WBSNSDateExtras;
@end

@implementation NSDate(WBSNSDateExtras)

+ (double)safari_timeIntervalSinceSystemStart
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  [processInfo systemUptime];
  v2 = v1;

  return v2;
}

+ (id)safari_dateOfMidnightNumberOfDaysAgo:()WBSNSDateExtras
{
  v4 = objc_alloc(MEMORY[0x1E695DEE8]);
  v5 = [v4 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  date = [MEMORY[0x1E695DF00] date];
  v7 = [v5 components:28 fromDate:date];

  [v7 setDay:{objc_msgSend(v7, "day") - a3}];
  v8 = [v5 dateFromComponents:v7];

  return v8;
}

+ (void)safari_dateFromNTPServerWithTimeout:()WBSNSDateExtras completionHandler:
{
  v6 = a4;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__NSDate_WBSNSDateExtras__safari_dateFromNTPServerWithTimeout_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7CF2630;
  v21 = v23;
  selfCopy = self;
  v20 = v6;
  v7 = v6;
  v8 = _Block_copy(aBlock);

  _Block_object_dispose(v23, 8);
  v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v10 = dispatch_queue_create("com.apple.SafariShared.NTPQueue", v9);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__NSDate_WBSNSDateExtras__safari_dateFromNTPServerWithTimeout_completionHandler___block_invoke_2;
  block[3] = &unk_1E7CF1630;
  v11 = v8;
  v18 = v11;
  dispatch_async(v10, block);
  v12 = dispatch_time(0, (a2 * 1000000000.0));
  v13 = dispatch_get_global_queue(21, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__NSDate_WBSNSDateExtras__safari_dateFromNTPServerWithTimeout_completionHandler___block_invoke_5;
  v15[3] = &unk_1E7CF1630;
  v16 = v11;
  v14 = v11;
  dispatch_after(v12, v13, v15);
}

- (uint64_t)safari_numberOfWeeksUntilDate:()WBSNSDateExtras
{
  v4 = a3;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [currentCalendar components:8208 fromDate:self toDate:v4 options:0];
  v7 = [v6 day];
  if (v7 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v7;
  }

  [currentCalendar maximumRangeOfUnit:512];
  if (v8 >= v9 - 1)
  {
    v11 = [currentCalendar components:512 fromDate:self];
    v12 = [currentCalendar components:512 fromDate:v4];
    weekday = [v11 weekday];
    if (weekday == [v12 weekday])
    {
      v14 = [v6 day];
      weekOfYear = [v6 weekOfYear];
      if (v14 >= 1)
      {
        weekOfYear2 = weekOfYear + 1;
      }

      else
      {
        weekOfYear2 = weekOfYear - 1;
      }
    }

    else
    {
      weekOfYear2 = [v6 weekOfYear];
    }
  }

  else
  {
    weekOfYear2 = [v6 weekOfYear];
  }

  return weekOfYear2;
}

- (uint64_t)safari_numberOfDaysUntilDate:()WBSNSDateExtras
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar components:16 fromDate:self toDate:v5 options:0];

  v8 = [v7 day];
  return v8;
}

- (uint64_t)safari_isInToday
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [currentCalendar isDateInToday:self];

  return v3;
}

- (uint64_t)safari_isInSameDayAsDate:()WBSNSDateExtras
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar isDate:self inSameDayAsDate:v5];

  return v7;
}

- (id)safari_startOfDay
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [currentCalendar startOfDayForDate:self];

  return v3;
}

- (BOOL)safari_isInclusivelyBetweenDate:()WBSNSDateExtras andDate:
{
  v6 = a4;
  v7 = [a3 compare:self];
  v8 = [self compare:v6];

  return v7 <= 0 && v8 < 1 || (v7 | v8) >= 0;
}

- (uint64_t)safari_isNowOrInRecentPast
{
  date = [MEMORY[0x1E695DF00] date];
  v3 = [date dateByAddingTimeInterval:-2.0];
  v4 = [self safari_isInclusivelyBetweenDate:v3 andDate:date];

  return v4;
}

- (uint64_t)safari_filenameFormattedString
{
  if (safari_filenameFormattedString_onceToken != -1)
  {
    [NSDate(WBSNSDateExtras) safari_filenameFormattedString];
  }

  v2 = safari_filenameFormattedString_dateFormatter;

  return [v2 stringFromDate:self];
}

- (id)_safari_stringWithDashSeparatorWithDateFormatter:()WBSNSDateExtras
{
  v4 = a3;
  dateFormat = [v4 dateFormat];
  v6 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@"./, "}];
  v7 = [dateFormat componentsSeparatedByCharactersInSet:v6];
  v8 = [v7 componentsJoinedByString:@"-"];

  [v4 setDateFormat:v8];
  v9 = [v4 stringFromDate:self];

  return v9;
}

- (id)safari_stringsFromDateForLocaleIdentifiers:()WBSNSDateExtras
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v4;
  v25 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v25)
  {
    v24 = *v35;
    do
    {
      v7 = 0;
      do
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:*(*(&v34 + 1) + 8 * v7)];
        [v6 setLocale:v8];

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v9 = [&unk_1F308E6B8 countByEnumeratingWithState:&v30 objects:v39 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v31;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v31 != v11)
              {
                objc_enumerationMutation(&unk_1F308E6B8);
              }

              [v6 setLocalizedDateFormatFromTemplate:*(*(&v30 + 1) + 8 * i)];
              v13 = [v6 stringFromDate:self];
              [v5 addObject:v13];

              v14 = [self _safari_stringWithDashSeparatorWithDateFormatter:v6];
              [v5 addObject:v14];
            }

            v10 = [&unk_1F308E6B8 countByEnumeratingWithState:&v30 objects:v39 count:16];
          }

          while (v10);
        }

        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        if (_dateFormatTemplatesWithLongMonth_onceToken != -1)
        {
          [NSDate(WBSNSDateExtras) safari_stringsFromDateForLocaleIdentifiers:];
        }

        v15 = _dateFormatTemplatesWithLongMonth_dateFormats;
        v16 = [v15 countByEnumeratingWithState:&v26 objects:v38 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v27;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v27 != v18)
              {
                objc_enumerationMutation(v15);
              }

              [v6 setLocalizedDateFormatFromTemplate:*(*(&v26 + 1) + 8 * j)];
              v20 = [v6 stringFromDate:self];
              [v5 addObject:v20];
            }

            v17 = [v15 countByEnumeratingWithState:&v26 objects:v38 count:16];
          }

          while (v17);
        }

        ++v7;
      }

      while (v7 != v25);
      v25 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v25);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v5;
}

@end