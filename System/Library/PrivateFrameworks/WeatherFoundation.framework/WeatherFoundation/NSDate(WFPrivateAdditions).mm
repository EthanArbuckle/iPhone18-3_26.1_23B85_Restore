@interface NSDate(WFPrivateAdditions)
+ (id)wf_allWeatherConditionsOnDate:()WFPrivateAdditions inCalendar:inArray:;
+ (id)wf_weatherConditionsClosestToDate:()WFPrivateAdditions inArray:;
+ (id)wf_weatherConditionsOnDate:()WFPrivateAdditions inCalendar:inArray:;
+ (uint64_t)wf_minutesBetweenDate:()WFPrivateAdditions andDate:;
@end

@implementation NSDate(WFPrivateAdditions)

+ (uint64_t)wf_minutesBetweenDate:()WFPrivateAdditions andDate:
{
  if (!a3 || !a4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = a4;
  v6 = a3;
  v7 = +[WFWeatherConditions calendar];
  v8 = [v7 components:64 fromDate:v6 toDate:v5 options:0];

  minute = [v8 minute];
  return minute;
}

+ (id)wf_weatherConditionsClosestToDate:()WFPrivateAdditions inArray:
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = a4;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v20;
    v10 = -1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:@"WFWeatherForecastDateComponent"];
        v14 = [MEMORY[0x277CBEAA8] wf_minutesBetweenDate:v5 andDate:v13];
        if (v14 >= 0)
        {
          v15 = v14;
        }

        else
        {
          v15 = -v14;
        }

        if (v15 < v10)
        {
          v16 = v12;

          v8 = v16;
          v10 = v15;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)wf_weatherConditionsOnDate:()WFPrivateAdditions inCalendar:inArray:
{
  v7 = a3;
  v8 = [MEMORY[0x277CBEAA8] wf_allWeatherConditionsOnDate:v7 inCalendar:a4 inArray:a5];
  if ([v8 count] < 2)
  {
    [v8 lastObject];
  }

  else
  {
    [MEMORY[0x277CBEAA8] wf_weatherConditionsClosestToDate:v7 inArray:v8];
  }
  v9 = ;

  return v9;
}

+ (id)wf_allWeatherConditionsOnDate:()WFPrivateAdditions inCalendar:inArray:
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [v15 objectForKeyedSubscript:@"WFWeatherForecastDateComponent"];
        if ([MEMORY[0x277CBEAA8] wf_isDate:v7 inSameDayWithDate:v16 inCalendar:v8])
        {
          [array addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  return array;
}

@end