@interface SCLScheduleIntervalFormatter
- (SCLScheduleIntervalFormatter)init;
- (id)_shortIntervalStringWithStart:(id)start end:(id)end;
- (id)_stringForCoalescedAMPMSymbolsWithDateInterval:(id)interval locale:(id)locale startTimeComponents:(id)components endTimeComponents:(id)timeComponents;
- (id)_stringForDateInterval:(id)interval startComponents:(id)components endComponents:(id)endComponents;
- (id)newDateFormatterWithLocale:(id)locale;
- (id)stringForObjectValue:(id)value;
- (id)stringFromTime:(id)time toTime:(id)toTime;
- (id)stringFromTimeInterval:(id)interval;
- (void)setLocale:(id)locale;
@end

@implementation SCLScheduleIntervalFormatter

- (SCLScheduleIntervalFormatter)init
{
  v23.receiver = self;
  v23.super_class = SCLScheduleIntervalFormatter;
  v2 = [(SCLScheduleIntervalFormatter *)&v23 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
    v4 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
    [(NSCalendar *)v3 setTimeZone:v4];
    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    locale = v2->_locale;
    v2->_locale = autoupdatingCurrentLocale;

    referenceCalendar = v2->_referenceCalendar;
    v2->_referenceCalendar = v3;
    v8 = v3;

    referenceTimeZone = v2->_referenceTimeZone;
    v2->_referenceTimeZone = v4;
    v10 = v4;

    v11 = [(SCLScheduleIntervalFormatter *)v2 newDateFormatterWithLocale:v2->_locale];
    [(NSDateFormatter *)v11 setDateStyle:0];
    [(NSDateFormatter *)v11 setTimeStyle:1];
    shortFormatter = v2->_shortFormatter;
    v2->_shortFormatter = v11;
    v13 = v11;

    v14 = objc_alloc_init(MEMORY[0x277CCA978]);
    [(NSDateIntervalFormatter *)v14 setLocale:v2->_locale];
    referenceCalendar = [(SCLScheduleIntervalFormatter *)v2 referenceCalendar];
    [(NSDateIntervalFormatter *)v14 setCalendar:referenceCalendar];

    referenceTimeZone = [(SCLScheduleIntervalFormatter *)v2 referenceTimeZone];
    [(NSDateIntervalFormatter *)v14 setTimeZone:referenceTimeZone];

    [(NSDateIntervalFormatter *)v14 setDateStyle:0];
    [(NSDateIntervalFormatter *)v14 setTimeStyle:1];
    briefFormatter = v2->_briefFormatter;
    v2->_briefFormatter = v14;
    v18 = v14;

    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundle = v2->_bundle;
    v2->_bundle = v19;

    table = v2->_table;
    v2->_table = @"SchoolTimeFormatters";
  }

  return v2;
}

- (void)setLocale:(id)locale
{
  objc_storeStrong(&self->_locale, locale);
  localeCopy = locale;
  [(NSDateIntervalFormatter *)self->_briefFormatter setLocale:localeCopy];
  [(NSDateFormatter *)self->_shortFormatter setLocale:localeCopy];
}

- (id)newDateFormatterWithLocale:(id)locale
{
  v4 = MEMORY[0x277CCA968];
  localeCopy = locale;
  v6 = objc_alloc_init(v4);
  [v6 setLocale:localeCopy];

  referenceCalendar = [(SCLScheduleIntervalFormatter *)self referenceCalendar];
  [v6 setCalendar:referenceCalendar];

  referenceTimeZone = [(SCLScheduleIntervalFormatter *)self referenceTimeZone];
  [v6 setTimeZone:referenceTimeZone];

  return v6;
}

- (id)stringFromTimeInterval:(id)interval
{
  intervalCopy = interval;
  startTime = [intervalCopy startTime];
  endTime = [intervalCopy endTime];

  v7 = [(SCLScheduleIntervalFormatter *)self stringFromTime:startTime toTime:endTime];

  return v7;
}

- (id)stringFromTime:(id)time toTime:(id)toTime
{
  v4 = 0;
  if (time && toTime)
  {
    toTimeCopy = toTime;
    dateComponents = [time dateComponents];
    dateComponents2 = [toTimeCopy dateComponents];

    v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
    referenceCalendar = [(SCLScheduleIntervalFormatter *)self referenceCalendar];
    v12 = [referenceCalendar dateByAddingComponents:dateComponents toDate:v10 options:0];
    v13 = [referenceCalendar dateByAddingComponents:dateComponents2 toDate:v10 options:0];
    v14 = [v12 earlierDate:v13];

    if (v14 == v12)
    {
      v15 = v13;
    }

    else
    {
      v15 = [referenceCalendar dateByAddingUnit:16 value:1 toDate:v13 options:0];

      v16 = [v12 earlierDate:v15];

      v4 = 0;
      v13 = v15;
      if (v16 != v12)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    v17 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v12 endDate:v13];
    v4 = [(SCLScheduleIntervalFormatter *)self _stringForDateInterval:v17 startComponents:dateComponents endComponents:dateComponents2];

    goto LABEL_8;
  }

LABEL_9:

  return v4;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SCLScheduleIntervalFormatter *)self stringFromTimeInterval:valueCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_stringForDateInterval:(id)interval startComponents:(id)components endComponents:(id)endComponents
{
  intervalCopy = interval;
  componentsCopy = components;
  endComponentsCopy = endComponents;
  if (![(SCLScheduleIntervalFormatter *)self formattingStyle])
  {
    briefFormatter = [(SCLScheduleIntervalFormatter *)self briefFormatter];
    v12 = [briefFormatter stringFromDateInterval:intervalCopy];
    goto LABEL_10;
  }

  if ([(SCLScheduleIntervalFormatter *)self formattingStyle]== 1 && ![(SCLScheduleIntervalFormatter *)self coalescesAMPMSymbols]&& ![(SCLScheduleIntervalFormatter *)self prefersHoursOnly])
  {
    briefFormatter = [(SCLScheduleIntervalFormatter *)self shortFormatter];
    startDate = [intervalCopy startDate];
    v16 = [briefFormatter stringFromDate:startDate];
    endDate = [intervalCopy endDate];
    v18 = [briefFormatter stringFromDate:endDate];
    v13 = [(SCLScheduleIntervalFormatter *)self _shortIntervalStringWithStart:v16 end:v18];

    goto LABEL_11;
  }

  if ([(SCLScheduleIntervalFormatter *)self formattingStyle]== 1 && ([(SCLScheduleIntervalFormatter *)self coalescesAMPMSymbols]|| [(SCLScheduleIntervalFormatter *)self prefersHoursOnly]))
  {
    briefFormatter = [(SCLScheduleIntervalFormatter *)self locale];
    v12 = [(SCLScheduleIntervalFormatter *)self _stringForCoalescedAMPMSymbolsWithDateInterval:intervalCopy locale:briefFormatter startTimeComponents:componentsCopy endTimeComponents:endComponentsCopy];
LABEL_10:
    v13 = v12;
LABEL_11:

    goto LABEL_13;
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (id)_shortIntervalStringWithStart:(id)start end:(id)end
{
  endCopy = end;
  startCopy = start;
  bundle = [(SCLScheduleIntervalFormatter *)self bundle];
  table = [(SCLScheduleIntervalFormatter *)self table];
  v10 = [bundle localizedStringForKey:@"SCHEDULE_TIME_INTERVAL_SHORT_FORMAT" value:&stru_287622948 table:table];

  endCopy = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v10 validFormatSpecifiers:@"%@%@" error:0, startCopy, endCopy];

  return endCopy;
}

- (id)_stringForCoalescedAMPMSymbolsWithDateInterval:(id)interval locale:(id)locale startTimeComponents:(id)components endTimeComponents:(id)timeComponents
{
  localeCopy = locale;
  componentsCopy = components;
  timeComponentsCopy = timeComponents;
  intervalCopy = interval;
  v12 = [(SCLScheduleIntervalFormatter *)self newDateFormatterWithLocale:localeCopy];
  [v12 setTimeStyle:1];
  [v12 setDateStyle:0];
  [v12 setFormattingContext:1];
  v13 = [(SCLScheduleIntervalFormatter *)self newDateFormatterWithLocale:localeCopy];
  [v13 setFormattingContext:1];
  [v13 setLocalizedDateFormatFromTemplate:@"j"];
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];

  v16 = [(SCLScheduleIntervalFormatter *)self newDateFormatterWithLocale:localeCopy];
  [v16 setLocalizedDateFormatFromTemplate:@"a"];
  v36 = [v16 stringFromDate:startDate];
  v35 = [v16 stringFromDate:endDate];
  v17 = MEMORY[0x277CCA968];
  if (localeCopy)
  {
    v18 = [MEMORY[0x277CCA968] dateFormatFromTemplate:@"j" options:0 locale:localeCopy];
  }

  else
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v18 = [v17 dateFormatFromTemplate:@"j" options:0 locale:currentLocale];
  }

  if ([v18 containsString:{@"H", componentsCopy}])
  {

LABEL_7:
    prefersHoursOnly = 0;
    v22 = 1;
    goto LABEL_8;
  }

  v20 = [v18 containsString:@"k"];

  if (v20)
  {
    goto LABEL_7;
  }

  if ([v33 minute])
  {
    v22 = 0;
    prefersHoursOnly = 0;
  }

  else
  {
    prefersHoursOnly = [(SCLScheduleIntervalFormatter *)self prefersHoursOnly];
    v22 = 0;
  }

LABEL_8:
  if ([v36 isEqualToString:v35] && -[SCLScheduleIntervalFormatter coalescesAMPMSymbols](self, "coalescesAMPMSymbols"))
  {
    v23 = [(SCLScheduleIntervalFormatter *)self newDateFormatterWithLocale:localeCopy];
    [v23 setFormattingContext:1];
    if (prefersHoursOnly)
    {
      v24 = @"J";
    }

    else
    {
      v24 = @"Jmm";
    }

    [v23 setLocalizedDateFormatFromTemplate:v24];
    v25 = [v23 stringFromDate:startDate];
  }

  else
  {
    if (prefersHoursOnly)
    {
      v26 = v13;
    }

    else
    {
      v26 = v12;
    }

    v25 = [v26 stringFromDate:startDate];
  }

  v27 = v12;
  if ((v22 & 1) == 0)
  {
    minute = [timeComponentsCopy minute];
    v27 = v12;
    if (!minute)
    {
      if ([(SCLScheduleIntervalFormatter *)self prefersHoursOnly])
      {
        v27 = v13;
      }

      else
      {
        v27 = v12;
      }
    }
  }

  v29 = [v27 stringFromDate:endDate];
  v30 = [(SCLScheduleIntervalFormatter *)self _shortIntervalStringWithStart:v25 end:v29];

  return v30;
}

@end