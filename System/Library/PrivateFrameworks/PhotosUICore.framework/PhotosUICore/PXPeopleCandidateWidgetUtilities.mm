@interface PXPeopleCandidateWidgetUtilities
+ (BOOL)_pastMidnightBufferThreshold;
+ (BOOL)shouldFetchCandidatesForPerson:(id)person forDaysDictionary:(id)dictionary;
+ (id)_dateKeyForDay:(id)day;
+ (id)_dateKeyForToday;
+ (id)_dateKeyForTomorrow;
+ (id)_localTimeZoneFormatStringForDate:(id)date;
+ (id)_tomorrow;
+ (id)insertPerson:(id)person forDaysDictionary:(id)dictionary;
+ (id)removeAllPreviousNotNowPersonsIfNeededForDaysDictionary:(id)dictionary;
@end

@implementation PXPeopleCandidateWidgetUtilities

+ (BOOL)_pastMidnightBufferThreshold
{
  date = [MEMORY[0x1E695DF00] date];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v4 = [currentCalendar dateBySettingHour:0 minute:0 second:0 ofDate:date options:0];
  v5 = [currentCalendar components:32 fromDate:v4 toDate:date options:0];
  v6 = [v5 hour] > 21;

  return v6;
}

+ (id)_localTimeZoneFormatStringForDate:(id)date
{
  v3 = MEMORY[0x1E696AB78];
  dateCopy = date;
  v5 = objc_alloc_init(v3);
  systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
  [v5 setTimeZone:systemTimeZone];

  [v5 setDateFormat:@"yyyy.MM.dd"];
  v7 = [v5 stringFromDate:dateCopy];

  return v7;
}

+ (id)_tomorrow
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v4 = [currentCalendar dateByAddingUnit:16 value:1 toDate:date options:0];

  return v4;
}

+ (id)_dateKeyForDay:(id)day
{
  v3 = [PXPeopleCandidateWidgetUtilities _localTimeZoneFormatStringForDate:day];
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
  date = [MEMORY[0x1E695DF00] date];
  v3 = [PXPeopleCandidateWidgetUtilities _dateKeyForDay:date];

  return v3;
}

+ (id)removeAllPreviousNotNowPersonsIfNeededForDaysDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = +[PXPeopleCandidateWidgetUtilities _dateKeyForToday];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  allKeys = [dictionaryCopy allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        if ([v5 compare:*(*(&v19 + 1) + 8 * i)] == 1)
        {

          v12 = dictionaryCopy;
          v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
          if ([self _pastMidnightBufferThreshold])
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

      v8 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = dictionaryCopy;
LABEL_17:

  return v11;
}

+ (BOOL)shouldFetchCandidatesForPerson:(id)person forDaysDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  personCopy = person;
  v7 = +[PXPeopleCandidateWidgetUtilities _dateKeyForToday];
  v8 = [dictionaryCopy objectForKeyedSubscript:v7];
  px_localIdentifier = [personCopy px_localIdentifier];

  if ([v8 containsObject:px_localIdentifier])
  {
    v10 = 0;
  }

  else
  {
    v11 = +[PXPeopleCandidateWidgetUtilities _dateKeyForTomorrow];
    v12 = [dictionaryCopy objectForKeyedSubscript:v11];
    v13 = [v12 containsObject:px_localIdentifier];

    v10 = v13 ^ 1;
  }

  return v10;
}

+ (id)insertPerson:(id)person forDaysDictionary:(id)dictionary
{
  personCopy = person;
  dictionaryCopy = dictionary;
  v8 = dictionaryCopy;
  if (personCopy)
  {
    v9 = [dictionaryCopy mutableCopy];
    if ([self _pastMidnightBufferThreshold])
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

    px_localIdentifier = [personCopy px_localIdentifier];
    if (([v13 containsObject:px_localIdentifier] & 1) == 0)
    {
      [v13 addObject:px_localIdentifier];
    }

    v15 = [v13 copy];
    [v9 setObject:v15 forKey:v11];

    v10 = [v9 copy];
  }

  else
  {
    v10 = dictionaryCopy;
  }

  return v10;
}

@end