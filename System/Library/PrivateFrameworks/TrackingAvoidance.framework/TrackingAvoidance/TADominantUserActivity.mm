@interface TADominantUserActivity
+ ($82EDB067EE6F192B39F18594CC8676AD)getDominantUserActivityInfoInDateInterval:(id)interval store:(id)store;
+ (id)getCumulativeUserActivityTimeInDateInterval:(id)interval store:(id)store;
@end

@implementation TADominantUserActivity

+ (id)getCumulativeUserActivityTimeInDateInterval:(id)interval store:(id)store
{
  intervalCopy = interval;
  storeCopy = store;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v43 = storeCopy;
  eventBuffer = [storeCopy eventBuffer];
  v9 = [eventBuffer getAllTAEventsOf:objc_opt_class()];
  v10 = [v9 mutableCopy];

  v11 = [TAUserActivity alloc];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v13 = [(TAUserActivity *)v11 initWithActivityType:0 date:distantPast];
  [v10 insertObject:v13 atIndex:0];

  lastObject = [v10 lastObject];
  v15 = [TAUserActivity alloc];
  v42 = lastObject;
  activityType = [lastObject activityType];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v18 = [(TAUserActivity *)v15 initWithActivityType:activityType date:distantFuture];
  [v10 addObject:v18];

  if ([v10 count] >= 2)
  {
    for (i = 1; [v10 count] > i; ++i)
    {
      v20 = MEMORY[0x277CCA970];
      v21 = [v10 objectAtIndexedSubscript:i - 1];
      date = [v21 date];
      v23 = [v10 objectAtIndexedSubscript:i];
      date2 = [v23 date];
      v25 = [v20 createIntervalSafelyWithStartDate:date endDate:date2];

      v26 = [v10 objectAtIndexedSubscript:i - 1];
      activityType2 = [v26 activityType];

      startDate = [v25 startDate];
      if ([intervalCopy containsDate:startDate])
      {
        endDate = [v25 endDate];
        v30 = [intervalCopy containsDate:endDate];

        if (v30)
        {
          [v25 duration];
          v32 = v31;
LABEL_9:
          v35 = MEMORY[0x277CCABB0];
          v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:activityType2];
          v37 = [v7 objectForKeyedSubscript:v36];
          [v37 doubleValue];
          v39 = [v35 numberWithDouble:v32 + v38];
          v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:activityType2];
          [v7 setObject:v39 forKeyedSubscript:v40];

          goto LABEL_10;
        }
      }

      else
      {
      }

      if ([intervalCopy intersectsDateInterval:v25])
      {
        v33 = [intervalCopy intersectionWithDateInterval:v25];
        [v33 duration];
        v32 = v34;

        goto LABEL_9;
      }

LABEL_10:
    }
  }

  return v7;
}

+ ($82EDB067EE6F192B39F18594CC8676AD)getDominantUserActivityInfoInDateInterval:(id)interval store:(id)store
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [TADominantUserActivity getCumulativeUserActivityTimeInDateInterval:interval store:store];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  *&v5 = COERCE_DOUBLE([v4 countByEnumeratingWithState:&v19 objects:v23 count:16]);
  integerValue = 0;
  if (*&v5 != 0.0)
  {
    v7 = *v20;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v4 objectForKeyedSubscript:v10];
        [v11 doubleValue];
        v13 = v12;

        if (v13 > v8)
        {
          integerValue = [v10 integerValue];
          v14 = [v4 objectForKeyedSubscript:v10];
          [v14 doubleValue];
          v8 = v15;
        }
      }

      *&v5 = COERCE_DOUBLE([v4 countByEnumeratingWithState:&v19 objects:v23 count:16]);
    }

    while (*&v5 != 0.0);
    *&v5 = v8;
  }

  v16 = *MEMORY[0x277D85DE8];
  v17 = integerValue;
  v18 = *&v5;
  result.var1 = v18;
  result.var0 = v17;
  return result;
}

@end