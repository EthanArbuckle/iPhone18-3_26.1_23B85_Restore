@interface PXPeopleCandidateWidgetUtilities
+ (BOOL)_pastMidnightBufferThreshold;
+ (BOOL)shouldFetchCandidatesForPerson:(id)a3 forDaysDictionary:(id)a4;
+ (id)_dateKeyForDay:(id)a3;
+ (id)_dateKeyForToday;
+ (id)_dateKeyForTomorrow;
+ (id)_localTimeZoneFormatStringForDate:(id)a3;
+ (id)_tomorrow;
+ (id)insertPerson:(id)a3 forDaysDictionary:(id)a4;
+ (id)removeAllPreviousNotNowPersonsIfNeededForDaysDictionary:(id)a3;
@end

@implementation PXPeopleCandidateWidgetUtilities

+ (BOOL)_pastMidnightBufferThreshold
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [MEMORY[0x1E695DEE8] currentCalendar];
  v4 = [v3 dateBySettingHour:0 minute:0 second:0 ofDate:v2 options:0];
  v5 = [v3 components:32 fromDate:v4 toDate:v2 options:0];
  v6 = [v5 hour] > 21;

  return v6;
}

+ (id)_localTimeZoneFormatStringForDate:(id)a3
{
  v3 = MEMORY[0x1E696AB78];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x1E695DFE8] systemTimeZone];
  [v5 setTimeZone:v6];

  [v5 setDateFormat:@"yyyy.MM.dd"];
  v7 = [v5 stringFromDate:v4];

  return v7;
}

+ (id)_tomorrow
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [v2 dateByAddingUnit:16 value:1 toDate:v3 options:0];

  return v4;
}

+ (id)_dateKeyForDay:(id)a3
{
  v3 = [PXPeopleCandidateWidgetUtilities _localTimeZoneFormatStringForDate:a3];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"PXPeopleCandidateWidgetKey", v3];

  return v4;
}

+ (id)_dateKeyForTomorrow
{
  v2 = +[PXPeopleCandidateWidgetUtilities _tomorrow];
  v3 = [PXPeopleCandidateWidgetUtilities _dateKeyForDay:v2];

  return v3;
}

+ (id)_dateKeyForToday
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [PXPeopleCandidateWidgetUtilities _dateKeyForDay:v2];

  return v3;
}

+ (id)removeAllPreviousNotNowPersonsIfNeededForDaysDictionary:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[PXPeopleCandidateWidgetUtilities _dateKeyForToday];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v4 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([v5 compare:*(*(&v19 + 1) + 8 * i)] == 1)
        {

          v12 = v4;
          v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
          if ([a1 _pastMidnightBufferThreshold])
          {
            v14 = +[PXPeopleCandidateWidgetUtilities _dateKeyForTomorrow];
            v15 = [v12 objectForKey:v14];
            if (v15)
            {
              [v13 setObject:v15 forKey:v14];
            }
          }

          v16 = +[PXPeopleCandidateWidgetUtilities _dateKeyForToday];
          v17 = [v12 objectForKey:v16];
          if (v17)
          {
            [v13 setObject:v17 forKey:v16];
          }

          v11 = [v13 copy];

          goto LABEL_17;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = v4;
LABEL_17:

  return v11;
}

+ (BOOL)shouldFetchCandidatesForPerson:(id)a3 forDaysDictionary:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PXPeopleCandidateWidgetUtilities _dateKeyForToday];
  v8 = [v5 objectForKeyedSubscript:v7];
  v9 = [v6 px_localIdentifier];

  if ([v8 containsObject:v9])
  {
    v10 = 0;
  }

  else
  {
    v11 = +[PXPeopleCandidateWidgetUtilities _dateKeyForTomorrow];
    v12 = [v5 objectForKeyedSubscript:v11];
    v13 = [v12 containsObject:v9];

    v10 = v13 ^ 1;
  }

  return v10;
}

+ (id)insertPerson:(id)a3 forDaysDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [v7 mutableCopy];
    if ([a1 _pastMidnightBufferThreshold])
    {
      +[PXPeopleCandidateWidgetUtilities _dateKeyForTomorrow];
    }

    else
    {
      +[PXPeopleCandidateWidgetUtilities _dateKeyForToday];
    }
    v11 = ;
    v12 = [v9 objectForKey:v11];
    v13 = [v12 mutableCopy];
    if (!v13)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v14 = [v6 px_localIdentifier];
    if (([v13 containsObject:v14] & 1) == 0)
    {
      [v13 addObject:v14];
    }

    v15 = [v13 copy];
    [v9 setObject:v15 forKey:v11];

    v10 = [v9 copy];
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

@end