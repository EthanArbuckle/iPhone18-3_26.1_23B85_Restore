@interface SCLScheduleFormatter
- (SCLScheduleFormatter)init;
- (id)_formattedCustomDailyScheduleForLocale:(id)locale;
- (id)formatterItemsForSchedule:(id)schedule;
- (id)stringForWeekdaysInItem:(id)item;
- (id)stringFromSchedule:(id)schedule;
- (void)_regenerateFormatters;
- (void)setCalendar:(id)calendar;
- (void)setLocale:(id)locale;
@end

@implementation SCLScheduleFormatter

- (SCLScheduleFormatter)init
{
  v10.receiver = self;
  v10.super_class = SCLScheduleFormatter;
  v2 = [(SCLScheduleFormatter *)&v10 init];
  if (v2)
  {
    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    locale = v2->_locale;
    v2->_locale = autoupdatingCurrentLocale;

    autoupdatingCurrentCalendar = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    calendar = v2->_calendar;
    v2->_calendar = autoupdatingCurrentCalendar;

    v7 = objc_alloc_init(SCLTimeIntervalsFormatter);
    timeIntervalsFormatter = v2->_timeIntervalsFormatter;
    v2->_timeIntervalsFormatter = v7;

    [(SCLScheduleFormatter *)v2 _regenerateFormatters];
  }

  return v2;
}

- (void)setLocale:(id)locale
{
  localeCopy = locale;
  if (!localeCopy)
  {
    localeCopy = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  }

  locale = self->_locale;
  self->_locale = localeCopy;

  [(SCLScheduleFormatter *)self _regenerateFormatters];
}

- (void)setCalendar:(id)calendar
{
  calendarCopy = calendar;
  if (!calendarCopy)
  {
    calendarCopy = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
  }

  v7 = calendarCopy;
  v5 = [calendarCopy copy];
  calendar = self->_calendar;
  self->_calendar = v5;

  [(SCLScheduleFormatter *)self _regenerateFormatters];
}

- (void)_regenerateFormatters
{
  v19 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  v3 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  locale = [(SCLScheduleFormatter *)self locale];
  [v3 setLocale:locale];

  [v3 setTimeZone:v19];
  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  standaloneWeekdayFormatter = self->_standaloneWeekdayFormatter;
  self->_standaloneWeekdayFormatter = v5;

  [(NSDateFormatter *)self->_standaloneWeekdayFormatter setCalendar:v3];
  v7 = self->_standaloneWeekdayFormatter;
  locale2 = [(SCLScheduleFormatter *)self locale];
  [(NSDateFormatter *)v7 setLocale:locale2];

  [(NSDateFormatter *)self->_standaloneWeekdayFormatter setTimeZone:v19];
  [(NSDateFormatter *)self->_standaloneWeekdayFormatter setDateFormat:@"ccc\a"];
  v9 = objc_alloc_init(MEMORY[0x277CCA978]);
  weekdayIntervalFormatter = self->_weekdayIntervalFormatter;
  self->_weekdayIntervalFormatter = v9;

  [(NSDateIntervalFormatter *)self->_weekdayIntervalFormatter setTimeZone:v19];
  [(NSDateIntervalFormatter *)self->_weekdayIntervalFormatter setCalendar:v3];
  v11 = self->_weekdayIntervalFormatter;
  locale3 = [(SCLScheduleFormatter *)self locale];
  [(NSDateIntervalFormatter *)v11 setLocale:locale3];

  [(NSDateIntervalFormatter *)self->_weekdayIntervalFormatter setDateTemplate:@"ccc\a"];
  v13 = objc_alloc_init(MEMORY[0x277CCAAF0]);
  listFormatter = self->_listFormatter;
  self->_listFormatter = v13;

  v15 = self->_listFormatter;
  locale4 = [(SCLScheduleFormatter *)self locale];
  [(NSListFormatter *)v15 setLocale:locale4];

  timeIntervalsFormatter = self->_timeIntervalsFormatter;
  locale5 = [(SCLScheduleFormatter *)self locale];
  [(SCLTimeIntervalsFormatter *)timeIntervalsFormatter setLocale:locale5];
}

- (id)stringFromSchedule:(id)schedule
{
  v43 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [(SCLScheduleFormatter *)self formatterItemsForSchedule:scheduleCopy];
  if ([v6 count])
  {
    if ([v6 count] == 1 && (objc_msgSend(v6, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "days"), v7, v8 == 127))
    {
      firstObject = [v6 firstObject];
      timeIntervalsFormatter = [(SCLScheduleFormatter *)self timeIntervalsFormatter];
      [timeIntervalsFormatter setPrefersHoursOnly:0];

      timeIntervalsFormatter2 = [(SCLScheduleFormatter *)self timeIntervalsFormatter];
      timeIntervals = [firstObject timeIntervals];
      v13 = [timeIntervalsFormatter2 stringFromTimeIntervals:timeIntervals];
    }

    else
    {
      v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
      timeIntervalsFormatter3 = [(SCLScheduleFormatter *)self timeIntervalsFormatter];
      [timeIntervalsFormatter3 setPrefersHoursOnly:1];

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v15 = v6;
      v16 = [v15 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v16)
      {
        v17 = v16;
        v33 = v6;
        v34 = v5;
        v35 = scheduleCopy;
        obj = v15;
        v18 = 0;
        v19 = *v39;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v39 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v38 + 1) + 8 * i);
            v22 = [(SCLScheduleFormatter *)self stringForWeekdaysInItem:v21];
            timeIntervalsFormatter4 = [(SCLScheduleFormatter *)self timeIntervalsFormatter];
            timeIntervals2 = [v21 timeIntervals];
            v25 = [timeIntervalsFormatter4 stringFromTimeIntervals:timeIntervals2];

            timeIntervals3 = [v21 timeIntervals];
            LOBYTE(timeIntervalsFormatter4) = [timeIntervals3 count] > 2;

            v18 |= timeIntervalsFormatter4;
            locale = [(SCLScheduleFormatter *)self locale];
            v28 = [(SCLScheduleFormatter *)self _formattedCustomDailyScheduleForLocale:locale, v22, v25];

            [v37 addObject:v28];
          }

          v17 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v17);

        if (v18)
        {
          v29 = @"CustomScheduleDetailTextSemicolonSeparator";
        }

        else
        {
          v29 = @"CustomScheduleDetailTextCommaSeparator";
        }

        v5 = v34;
        scheduleCopy = v35;
        v6 = v33;
      }

      else
      {

        v29 = @"CustomScheduleDetailTextCommaSeparator";
      }

      v30 = [v5 localizedStringForKey:v29 value:&stru_287622948 table:@"SchoolTimeFormatters"];
      firstObject = v37;
      v13 = [v37 componentsJoinedByString:v30];
    }
  }

  else
  {
    v13 = [v5 localizedStringForKey:@"ScheduleOff" value:&stru_287622948 table:@"SchoolTimeFormatters"];
  }

  v31 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_formattedCustomDailyScheduleForLocale:(id)locale
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CustomDailyScheduleFormat" value:&stru_287622948 table:@"SchoolTimeFormatters"];
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  locale = [(SCLScheduleFormatter *)self locale];
  v8 = [v6 initWithValidatedFormat:v5 validFormatSpecifiers:@"%@%@" locale:locale arguments:&v11 error:0];

  return v8;
}

- (id)stringForWeekdaysInItem:(id)item
{
  v34 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v26 = itemCopy;
  obj = [itemCopy dayRanges];
  v5 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        if ([v9 count] == 1)
        {
          calendar = [(NSDateFormatter *)self->_standaloneWeekdayFormatter calendar];
          firstObject = [v9 firstObject];
          integerValue = [firstObject integerValue];

          date = [MEMORY[0x277CBEAA8] date];
          v14 = [calendar nextDateAfterDate:date matchingUnit:512 value:integerValue options:1024];
          v15 = [(NSDateFormatter *)self->_standaloneWeekdayFormatter stringFromDate:v14];
          [v28 addObject:v15];
        }

        else
        {
          calendar = [(NSDateIntervalFormatter *)self->_weekdayIntervalFormatter calendar];
          firstObject2 = [v9 firstObject];
          integerValue2 = [firstObject2 integerValue];

          lastObject = [v9 lastObject];
          integerValue3 = [lastObject integerValue];

          date = [MEMORY[0x277CBEAA8] date];
          v14 = [calendar nextDateAfterDate:date matchingUnit:512 value:integerValue2 options:1024];
          v15 = [calendar nextDateAfterDate:v14 matchingUnit:512 value:integerValue3 options:1024];
          v20 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:v15];
          v21 = [(NSDateIntervalFormatter *)self->_weekdayIntervalFormatter stringFromDateInterval:v20];
          [v28 addObject:v21];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v6);
  }

  listFormatter = [(SCLScheduleFormatter *)self listFormatter];
  v23 = [listFormatter stringFromItems:v28];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)formatterItemsForSchedule:(id)schedule
{
  scheduleCopy = schedule;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  calendar = [(SCLScheduleFormatter *)self calendar];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __50__SCLScheduleFormatter_formatterItemsForSchedule___block_invoke;
  v17[3] = &unk_279B6C300;
  v18 = scheduleCopy;
  v19 = dictionary;
  selfCopy = self;
  v7 = dictionary;
  v8 = scheduleCopy;
  [calendar SCL_enumerateWeekdaysUsingBlock:v17];

  allValues = [v7 allValues];
  calendar2 = [(SCLScheduleFormatter *)self calendar];
  sCL_orderedWeekdays = [calendar2 SCL_orderedWeekdays];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__SCLScheduleFormatter_formatterItemsForSchedule___block_invoke_2;
  v15[3] = &unk_279B6C328;
  v16 = sCL_orderedWeekdays;
  v12 = sCL_orderedWeekdays;
  v13 = [allValues sortedArrayUsingComparator:v15];

  return v13;
}

uint64_t __50__SCLScheduleFormatter_formatterItemsForSchedule___block_invoke(id *a1, uint64_t a2)
{
  v8 = [a1[4] timeIntervalsForDay:a2];
  if ([v8 count])
  {
    v4 = [a1[5] objectForKeyedSubscript:v8];
    if (!v4)
    {
      v5 = [SCLScheduleFormatterItem alloc];
      v6 = [a1[6] calendar];
      v4 = [(SCLScheduleFormatterItem *)v5 initWithCalendar:v6 timeIntervals:v8];

      [a1[5] setObject:v4 forKeyedSubscript:v8];
    }

    [(SCLScheduleFormatterItem *)v4 addDay:a2];
  }

  return MEMORY[0x2821F9730]();
}

uint64_t __50__SCLScheduleFormatter_formatterItemsForSchedule___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 earliestWeekdayInCalendar];
  v7 = [v5 earliestWeekdayInCalendar];

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  v10 = [v8 indexOfObject:v9];

  v11 = *(a1 + 32);
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
  v13 = [v11 indexOfObject:v12];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
  v16 = [v14 compare:v15];

  return v16;
}

@end