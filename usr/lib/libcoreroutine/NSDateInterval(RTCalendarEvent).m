@interface NSDateInterval(RTCalendarEvent)
+ (id)dateIntervalFromEvent:()RTCalendarEvent;
+ (id)dateIntervalFromEvents:()RTCalendarEvent;
@end

@implementation NSDateInterval(RTCalendarEvent)

+ (id)dateIntervalFromEvents:()RTCalendarEvent
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 dateIntervalFromEvent:{*(*(&v13 + 1) + 8 * i), v13}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)dateIntervalFromEvent:()RTCalendarEvent
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 startDate];
  v5 = [v3 endDate];
  v6 = [v4 isOnOrBefore:v5];

  if ((v6 & 1) == 0)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v16 = [v3 endDate];
      v17 = [v3 startDate];
      v18 = 138413314;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      v22 = 2112;
      v24 = 2080;
      v23 = v3;
      v25 = "+[NSDateInterval(RTCalendarEvent) dateIntervalFromEvent:]";
      v26 = 1024;
      v27 = 35;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "endDate, %@, was before startDate, %@, event: %@ (in %s:%d)", &v18, 0x30u);
    }
  }

  v8 = [v3 startDate];
  v9 = [v3 endDate];
  v10 = [v8 isOnOrBefore:v9];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277CCA970]);
    v12 = [v3 startDate];
    v13 = [v3 endDate];
    v14 = [v11 initWithStartDate:v12 endDate:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end