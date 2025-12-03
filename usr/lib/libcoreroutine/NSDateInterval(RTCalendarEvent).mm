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

        v11 = [self dateIntervalFromEvent:{*(*(&v13 + 1) + 8 * i), v13}];
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
  startDate = [v3 startDate];
  endDate = [v3 endDate];
  v6 = [startDate isOnOrBefore:endDate];

  if ((v6 & 1) == 0)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      endDate2 = [v3 endDate];
      startDate2 = [v3 startDate];
      v18 = 138413314;
      v19 = endDate2;
      v20 = 2112;
      v21 = startDate2;
      v22 = 2112;
      v24 = 2080;
      v23 = v3;
      v25 = "+[NSDateInterval(RTCalendarEvent) dateIntervalFromEvent:]";
      v26 = 1024;
      v27 = 35;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "endDate, %@, was before startDate, %@, event: %@ (in %s:%d)", &v18, 0x30u);
    }
  }

  startDate3 = [v3 startDate];
  endDate3 = [v3 endDate];
  v10 = [startDate3 isOnOrBefore:endDate3];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277CCA970]);
    startDate4 = [v3 startDate];
    endDate4 = [v3 endDate];
    v14 = [v11 initWithStartDate:startDate4 endDate:endDate4];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end