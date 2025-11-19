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
  v0 = [MEMORY[0x1E696AE30] processInfo];
  [v0 systemUptime];
  v2 = v1;

  return v2;
}

+ (id)safari_dateOfMidnightNumberOfDaysAgo:()WBSNSDateExtras
{
  v4 = objc_alloc(MEMORY[0x1E695DEE8]);
  v5 = [v4 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [v5 components:28 fromDate:v6];

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
  v22 = a1;
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
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [v5 components:8208 fromDate:a1 toDate:v4 options:0];
  v7 = [v6 day];
  if (v7 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v7;
  }

  [v5 maximumRangeOfUnit:512];
  if (v8 >= v9 - 1)
  {
    v11 = [v5 components:512 fromDate:a1];
    v12 = [v5 components:512 fromDate:v4];
    v13 = [v11 weekday];
    if (v13 == [v12 weekday])
    {
      v14 = [v6 day];
      v15 = [v6 weekOfYear];
      if (v14 >= 1)
      {
        v10 = v15 + 1;
      }

      else
      {
        v10 = v15 - 1;
      }
    }

    else
    {
      v10 = [v6 weekOfYear];
    }
  }

  else
  {
    v10 = [v6 weekOfYear];
  }

  return v10;
}

- (uint64_t)safari_numberOfDaysUntilDate:()WBSNSDateExtras
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 components:16 fromDate:a1 toDate:v5 options:0];

  v8 = [v7 day];
  return v8;
}

- (uint64_t)safari_isInToday
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [v2 isDateInToday:a1];

  return v3;
}

- (uint64_t)safari_isInSameDayAsDate:()WBSNSDateExtras
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 isDate:a1 inSameDayAsDate:v5];

  return v7;
}

- (id)safari_startOfDay
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [v2 startOfDayForDate:a1];

  return v3;
}

- (BOOL)safari_isInclusivelyBetweenDate:()WBSNSDateExtras andDate:
{
  v6 = a4;
  v7 = [a3 compare:a1];
  v8 = [a1 compare:v6];

  return v7 <= 0 && v8 < 1 || (v7 | v8) >= 0;
}

- (uint64_t)safari_isNowOrInRecentPast
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [v2 dateByAddingTimeInterval:-2.0];
  v4 = [a1 safari_isInclusivelyBetweenDate:v3 andDate:v2];

  return v4;
}

- (uint64_t)safari_filenameFormattedString
{
  if (safari_filenameFormattedString_onceToken != -1)
  {
    [NSDate(WBSNSDateExtras) safari_filenameFormattedString];
  }

  v2 = safari_filenameFormattedString_dateFormatter;

  return [v2 stringFromDate:a1];
}

- (id)_safari_stringWithDashSeparatorWithDateFormatter:()WBSNSDateExtras
{
  v4 = a3;
  v5 = [v4 dateFormat];
  v6 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@"./, "}];
  v7 = [v5 componentsSeparatedByCharactersInSet:v6];
  v8 = [v7 componentsJoinedByString:@"-"];

  [v4 setDateFormat:v8];
  v9 = [v4 stringFromDate:a1];

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
              v13 = [v6 stringFromDate:a1];
              [v5 addObject:v13];

              v14 = [a1 _safari_stringWithDashSeparatorWithDateFormatter:v6];
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
              v20 = [v6 stringFromDate:a1];
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