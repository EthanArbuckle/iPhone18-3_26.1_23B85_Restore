@interface PowerUIPredictorHelper
+ (double)getHourBinID:(id)a3 forHourBin:(unint64_t)a4;
+ (double)hoursUntilUseFromBucketedUsage:(id)a3 withCurrentHour:(int)a4 withComponentsMinutes:(int64_t)a5;
+ (double)meanEventDuration:(id)a3;
+ (double)meanOf:(id)a3;
+ (double)medianOf:(id)a3;
+ (double)medianTimeBetweenDescendingEvents:(id)a3;
+ (double)standardDeviationOf:(id)a3;
+ (id)column:(id)a3 inDataFrame:(id)a4;
+ (id)convertDateTimeColumnToSeconds:(id)a3 inDataFrame:(id)a4;
+ (id)convertDateToSeconds:(id)a3;
+ (id)countForColumn:(id)a3 inDataFrame:(id)a4;
+ (id)events:(id)a3 forHourBin:(unint64_t)a4 date:(id)a5 withMaxDuration:(double)a6;
+ (id)filterDataFrame:(id)a3 forColumn:(id)a4 withFilterHandler:(id)a5;
+ (id)filterDataFrame:(id)a3 withValue:(double)a4 forColumn:(id)a5;
+ (id)filterDataFrame:(id)a3 withValueGreaterThan:(double)a4 andLessThan:(double)a5 forColumn:(id)a6;
+ (id)filterEvents:(id)a3 startOnSameWeekdayAs:(id)a4;
+ (id)getDurationsFromEvents:(id)a3 withUnit:(double)a4 cappedAt:(double)a5;
+ (id)getUsageBucketsForEvents:(id)a3 forDate:(id)a4 withLog:(id)a5;
+ (id)meanForColumn:(id)a3 inDataFrame:(id)a4;
+ (id)percentile:(double)a3 forColumn:(id)a4 inDataFrame:(id)a5;
+ (id)percentiles:(id)a3 forColumn:(id)a4 inDataFrame:(id)a5;
+ (id)standardDeviationForColumn:(id)a3 inDataFrame:(id)a4;
+ (id)timeBetweenUsesForSortedDescendingByAgeEvents:(id)a3 forHourBin:(unint64_t)a4 atDate:(id)a5 addAtDate:(BOOL)a6;
+ (id)varianceForColumn:(id)a3 inDataFrame:(id)a4;
+ (void)quantizeValuesInDataFrame:(id)a3 forColumn:(id)a4 withBinWidth:(id)a5;
@end

@implementation PowerUIPredictorHelper

+ (double)getHourBinID:(id)a3 forHourBin:(unint64_t)a4
{
  v5 = MEMORY[0x277CBEA80];
  v6 = a3;
  v7 = [v5 currentCalendar];
  v8 = [v7 components:32 fromDate:v6];

  v9 = [v8 hour] / a4;
  return v9;
}

+ (id)events:(id)a3 forHourBin:(unint64_t)a4 date:(id)a5 withMaxDuration:(double)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = MEMORY[0x277CBEA80];
  v12 = a5;
  v13 = [v11 currentCalendar];
  v14 = [v13 timeZone];
  v15 = [v12 dateByAddingTimeInterval:{objc_msgSend(v14, "secondsFromGMT")}];

  v35 = v15;
  v36 = v13;
  v34 = [v13 components:32 fromDate:v15];
  v16 = [v34 hour];
  v17 = [MEMORY[0x277CBEB18] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v18 = v10;
  v19 = [v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = v16 / a4;
    v22 = *v38;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v37 + 1) + 8 * i);
        v25 = [v24 startDate];
        [a1 getHourBinID:v25 forHourBin:a4];
        if (v21 == v26)
        {
          v27 = [v24 endDate];
          [v27 timeIntervalSinceDate:v25];
          v29 = v28 / 3600.0;

          if (v29 >= a6)
          {
            v30 = a6;
          }

          else
          {
            v30 = v29;
          }

          if (a6 <= 0.0)
          {
            v30 = v29;
          }

          v31 = [MEMORY[0x277CCABB0] numberWithDouble:v30];
          [v17 addObject:v31];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v20);
  }

  v32 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)filterEvents:(id)a3 startOnSameWeekdayAs:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v22 = v6;
  v21 = [v8 components:512 fromDate:v6];
  v9 = [v21 weekday];
  context = objc_autoreleasePoolPush();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [v15 startDate];
        v17 = [v8 components:512 fromDate:v16];

        if ([v17 weekday] == v9)
        {
          [v7 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  objc_autoreleasePoolPop(context);
  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)getDurationsFromEvents:(id)a3 withUnit:(double)a4 cappedAt:(double)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v20 + 1) + 8 * i) duration];
        v15 = v14 / a4;
        if (v15 >= a5)
        {
          v16 = a5;
        }

        else
        {
          v16 = v15;
        }

        if (a5 > 0.0)
        {
          v15 = v16;
        }

        v17 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
        [v8 addObject:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (double)meanOf:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v14 + 1) + 8 * i) doubleValue];
          v8 = v8 + v10;
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0.0;
    }

    v11 = v8 / [v4 count];
  }

  else
  {
    v11 = 0.0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (double)standardDeviationOf:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = 0.0;
  if ([v3 count] >= 2)
  {
    [PowerUIPredictorHelper meanOf:v3];
    v6 = v5;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v16 + 1) + 8 * i) doubleValue];
          v11 = v11 + (v13 - v6) * (v13 - v6);
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0.0;
    }

    v4 = sqrt(v11 / ([v7 count] - 1));
  }

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (double)medianOf:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 sortedArrayUsingSelector:sel_compare_];
    v5 = [v4 count];
    v6 = [v4 count] >> 1;
    if (v5)
    {
      v7 = [v4 objectAtIndexedSubscript:v6];
      [v7 doubleValue];
      v12 = v13;
    }

    else
    {
      v7 = [v4 objectAtIndexedSubscript:v6 - 1];
      [v7 doubleValue];
      v9 = v8;
      v10 = [v4 objectAtIndexedSubscript:v6];
      [v10 doubleValue];
      v12 = (v9 + v11) * 0.5;
    }
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

+ (id)timeBetweenUsesForSortedDescendingByAgeEvents:(id)a3 forHourBin:(unint64_t)a4 atDate:(id)a5 addAtDate:(BOOL)a6
{
  v9 = a3;
  v10 = a5;
  v43 = [MEMORY[0x277CBEB18] array];
  if ([v9 count] >= 2)
  {
    v39 = a6;
    v11 = [MEMORY[0x277CBEA80] currentCalendar];
    v12 = [v11 timeZone];
    v13 = [v10 dateByAddingTimeInterval:{objc_msgSend(v12, "secondsFromGMT")}];

    v41 = v13;
    v42 = v11;
    v40 = [v11 components:32 fromDate:v13];
    v14 = [v40 hour] / a4;
    v15 = [v9 count];
    if (v15 >= 2)
    {
      v16 = (v15 & 0x7FFFFFFF) + 1;
      do
      {
        v17 = [v9 objectAtIndexedSubscript:v16 - 2];
        v18 = [v17 endDate];

        v19 = [v9 objectAtIndexedSubscript:v16 - 3];
        v20 = [v19 startDate];

        v21 = [v18 earlierDate:v20];

        if (v21 != v20)
        {
          v22 = [v9 objectAtIndexedSubscript:v16 - 2];
          v23 = [v22 startDate];
          [PowerUIPredictorHelper getHourBinID:v23 forHourBin:a4];
          v25 = v24;

          if (v14 == v25)
          {
            v26 = MEMORY[0x277CCABB0];
            [v20 timeIntervalSinceDate:v18];
            v28 = [v26 numberWithDouble:v27 / 60.0];
            [v43 addObject:v28];
          }
        }

        --v16;
      }

      while (v16 > 2);
    }

    v10 = v41;
    if (v39)
    {
      v29 = [v9 firstObject];
      v30 = [v29 startDate];
      [PowerUIPredictorHelper getHourBinID:v30 forHourBin:a4];
      v32 = v31;

      if (v14 == v32)
      {
        v33 = MEMORY[0x277CCABB0];
        v34 = [v9 firstObject];
        v35 = [v34 endDate];
        [v41 timeIntervalSinceDate:v35];
        v37 = [v33 numberWithDouble:v36 / 60.0];

        [v43 addObject:v37];
      }
    }
  }

  return v43;
}

+ (id)getUsageBucketsForEvents:(id)a3 forDate:(id)a4 withLog:(id)a5
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v44 = a5;
  memset(v57, 0, sizeof(v57));
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v7;
  v47 = [v7 countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (!v47)
  {
    goto LABEL_27;
  }

  v9 = *v51;
  do
  {
    v10 = 0;
    do
    {
      if (*v51 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v50 + 1) + 8 * v10);
      v12 = [MEMORY[0x277CBEA80] currentCalendar];
      v13 = [v11 startDate];
      v14 = [v12 components:112 fromDate:v13];

      v15 = [MEMORY[0x277CBEA80] currentCalendar];
      v16 = [v11 endDate];
      v17 = [v15 components:96 fromDate:v16];

      v18 = [v14 hour];
      v19 = [v17 hour];
      v48 = [v14 minute];
      v49 = [v17 minute];
      v20 = [MEMORY[0x277CBEA80] currentCalendar];
      v21 = [v11 startDate];
      if ([v20 isDate:v21 inSameDayAsDate:v8])
      {

        goto LABEL_22;
      }

      v46 = v19;
      v22 = [v11 startDate];
      [v8 earlierDate:v22];
      v23 = v9;
      v25 = v24 = v8;

      v26 = v25 == v24;
      v8 = v24;
      v9 = v23;
      if (!v26)
      {
        if (v18 < v46)
        {
          *(v57 + v18) = sqrt((60 - v48)) + *(v57 + v18);
          if (v18 + 1 < v46)
          {
            v27 = ~v18 + v46;
            v28 = v57 + v18 + 1;
            do
            {
              *v28 = *v28 + 7.74596669;
              ++v28;
              --v27;
            }

            while (v27);
          }

LABEL_21:
          *(v57 + v46) = sqrt(v49) + *(v57 + v46);
          goto LABEL_22;
        }

        if (v18 > v46)
        {
          *(v57 + v18) = sqrt((60 - v48)) + *(v57 + v18);
          if (v18 <= 22)
          {
            v29 = v18 + 1;
            do
            {
              *(v57 + v29) = *(v57 + v29) + 7.74596669;
              ++v29;
            }

            while (v29 != 24);
          }

          if (v46 >= 1)
          {
            v30 = v57;
            v31 = v46;
            do
            {
              *v30 = *v30 + 7.74596669;
              ++v30;
              --v31;
            }

            while (v31);
          }

          goto LABEL_21;
        }

        if (v49 - v48 >= 0)
        {
          *(v57 + v18) = sqrt((v49 - v48)) + *(v57 + v18);
        }
      }

LABEL_22:

      ++v10;
    }

    while (v10 != v47);
    v32 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    v47 = v32;
  }

  while (v32);
LABEL_27:
  v33 = 0;
  v34 = 0.0;
  do
  {
    if (*(v57 + v33) > v34)
    {
      v34 = *(v57 + v33);
    }

    v33 += 8;
  }

  while (v33 != 192);
  v35 = v44;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [MEMORY[0x277CCABB0] numberWithDouble:v34];
    *buf = 138412290;
    v55 = v36;
    _os_log_impl(&dword_21B766000, v35, OS_LOG_TYPE_DEFAULT, "maxValue in buckets = %@", buf, 0xCu);
  }

  if (v34 == 0.0)
  {
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v35, OS_LOG_TYPE_DEFAULT, "Something went wront, maxValue is 0", buf, 2u);
    }

    v37 = &unk_282D4EAB8;
  }

  else
  {
    v38 = v8;
    v39 = [MEMORY[0x277CBEB18] array];
    for (i = 0; i != 192; i += 8)
    {
      v41 = [MEMORY[0x277CCABB0] numberWithDouble:*(v57 + i) / v34];
      [v39 addObject:v41];
    }

    v37 = [MEMORY[0x277CBEA60] arrayWithArray:v39];

    v8 = v38;
  }

  v42 = *MEMORY[0x277D85DE8];

  return v37;
}

+ (double)hoursUntilUseFromBucketedUsage:(id)a3 withCurrentHour:(int)a4 withComponentsMinutes:(int64_t)a5
{
  v8 = 0.0;
  v9 = 1;
  while (1)
  {
    v10 = a4 + v9;
    if ((a4 + v9) > 23)
    {
      v10 = a4 + v9 - 24;
    }

    v11 = [a3 objectAtIndexedSubscript:v10];
    [v11 doubleValue];
    v13 = v12;

    if (v13 > 0.2)
    {
      break;
    }

    if (v9 == 11)
    {
      v8 = 12.0;
    }

    if (++v9 == 12)
    {
      return v8;
    }
  }

  return v9 + a5 / -60.0;
}

+ (double)medianTimeBetweenDescendingEvents:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  if ([v3 count] >= 2)
  {
    v5 = 0;
    do
    {
      v6 = [v3 objectAtIndexedSubscript:v5];
      v7 = [v6 startDate];
      v8 = [v3 objectAtIndexedSubscript:++v5];
      v9 = [v8 endDate];
      [v7 timeIntervalSinceDate:v9];
      v11 = v10;

      if (v11 >= 0.0)
      {
        v12 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
        [v4 addObject:v12];
      }
    }

    while (v5 < ([v3 count] - 1));
  }

  [PowerUIPredictorHelper medianOf:v4];
  v14 = v13;

  return v14;
}

+ (double)meanEventDuration:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [v10 endDate];
          v12 = [v10 startDate];
          [v11 timeIntervalSinceDate:v12];
          v8 = v8 + v13;
        }

        v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0.0;
    }

    v14 = v8 / [v4 count];
  }

  else
  {
    v14 = 0.0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (void)quantizeValuesInDataFrame:(id)a3 forColumn:(id)a4 withBinWidth:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = MEMORY[0x277CCABB0];
        v16 = [v14 objectForKeyedSubscript:v8];
        [v16 doubleValue];
        v18 = v17;
        [v9 doubleValue];
        LODWORD(v20) = vcvtmd_s64_f64(v18 / v19);
        v21 = [v15 numberWithInt:v20];
        [v14 setObject:v21 forKeyedSubscript:v8];
      }

      v11 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v22 = *MEMORY[0x277D85DE8];
}

+ (id)convertDateToSeconds:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 components:224 fromDate:v4];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:{objc_msgSend(v6, "minute") * 60.0 + objc_msgSend(v6, "hour") * 3600.0 + objc_msgSend(v6, "second")}];

  return v7;
}

+ (id)convertDateTimeColumnToSeconds:(id)a3 inDataFrame:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v18 + 1) + 8 * i) objectForKey:{v6, v18}];
        v15 = [a1 convertDateToSeconds:v14];
        [v8 addObject:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)filterDataFrame:(id)a3 withValue:(double)a4 forColumn:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = [v15 objectForKeyedSubscript:{v8, v21}];
        [v16 doubleValue];
        v18 = vabdd_f64(v17, a4);

        if (v18 <= 0.01)
        {
          [v9 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)filterDataFrame:(id)a3 withValueGreaterThan:(double)a4 andLessThan:(double)a5 forColumn:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  v11 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        v18 = [v17 objectForKeyedSubscript:{v10, v25}];
        [v18 doubleValue];
        if (v19 >= a4)
        {
          v20 = [v17 objectForKeyedSubscript:v10];
          [v20 doubleValue];
          v22 = v21;

          if (v22 < a5)
          {
            [v11 addObject:v17];
          }
        }

        else
        {
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)filterDataFrame:(id)a3 forColumn:(id)a4 withFilterHandler:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v21 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [v15 objectForKey:v8];

        if (v16)
        {
          v17 = [v15 objectForKeyedSubscript:v8];
          v18 = v9[2](v9, v17);

          if (v18)
          {
            [v21 addObject:v15];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)column:(id)a3 inDataFrame:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) objectForKey:{v5, v17}];
        v14 = [v13 copy];
        [v7 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)meanForColumn:(id)a3 inDataFrame:(id)a4
{
  v4 = [a1 column:a3 inDataFrame:a4];
  v5 = MEMORY[0x277CCABB0];
  [v4 mean];
  v6 = [v5 numberWithDouble:?];

  return v6;
}

+ (id)percentile:(double)a3 forColumn:(id)a4 inDataFrame:(id)a5
{
  v6 = [a1 column:a4 inDataFrame:a5];
  v7 = MEMORY[0x277CCABB0];
  [v6 percentile:a3];
  v8 = [v7 numberWithDouble:?];

  return v8;
}

+ (id)percentiles:(id)a3 forColumn:(id)a4 inDataFrame:(id)a5
{
  v5 = [a1 column:a4 inDataFrame:a5];
  v6 = [v5 percentiles:v5];

  return v6;
}

+ (id)standardDeviationForColumn:(id)a3 inDataFrame:(id)a4
{
  v4 = [a1 column:a3 inDataFrame:a4];
  v5 = MEMORY[0x277CCABB0];
  [v4 standardDeviation];
  v6 = [v5 numberWithDouble:?];

  return v6;
}

+ (id)varianceForColumn:(id)a3 inDataFrame:(id)a4
{
  v4 = [a1 standardDeviationForColumn:a3 inDataFrame:a4];
  [v4 doubleValue];
  v6 = v5;

  v7 = MEMORY[0x277CCABB0];

  return [v7 numberWithDouble:v6 * v6];
}

+ (id)countForColumn:(id)a3 inDataFrame:(id)a4
{
  v4 = [a1 column:a3 inDataFrame:a4];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];

  return v5;
}

@end