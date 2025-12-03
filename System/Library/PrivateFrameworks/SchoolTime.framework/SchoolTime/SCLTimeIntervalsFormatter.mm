@interface SCLTimeIntervalsFormatter
- (SCLTimeIntervalsFormatter)init;
- (id)stringForObjectValue:(id)value;
- (id)stringFromTimeIntervals:(id)intervals;
- (void)setLocale:(id)locale;
@end

@implementation SCLTimeIntervalsFormatter

- (SCLTimeIntervalsFormatter)init
{
  v9.receiver = self;
  v9.super_class = SCLTimeIntervalsFormatter;
  v2 = [(SCLTimeIntervalsFormatter *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(SCLScheduleIntervalFormatter);
    intervalFormatter = v2->_intervalFormatter;
    v2->_intervalFormatter = v3;

    [(SCLScheduleIntervalFormatter *)v2->_intervalFormatter setFormattingStyle:1];
    v5 = objc_alloc_init(MEMORY[0x277CCAAF0]);
    listFormatter = v2->_listFormatter;
    v2->_listFormatter = v5;

    [(NSListFormatter *)v2->_listFormatter setItemFormatter:v2->_intervalFormatter];
    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    [(SCLTimeIntervalsFormatter *)v2 setLocale:autoupdatingCurrentLocale];
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

  v5 = localeCopy;
  [(SCLScheduleIntervalFormatter *)self->_intervalFormatter setLocale:localeCopy];
  [(NSListFormatter *)self->_listFormatter setLocale:v5];
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SCLTimeIntervalsFormatter *)self stringFromTimeIntervals:valueCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)stringFromTimeIntervals:(id)intervals
{
  intervalsCopy = intervals;
  if ([intervalsCopy count])
  {
    v5 = [intervalsCopy count];
    intervalFormatter = [(SCLTimeIntervalsFormatter *)self intervalFormatter];
    v7 = intervalFormatter;
    if (v5 == 1)
    {
      [intervalFormatter setPrefersHoursOnly:{-[SCLTimeIntervalsFormatter prefersHoursOnly](self, "prefersHoursOnly")}];

      intervalFormatter2 = [(SCLTimeIntervalsFormatter *)self intervalFormatter];
      [intervalFormatter2 setCoalescesAMPMSymbols:0];

      firstObject = [intervalsCopy firstObject];
      intervalFormatter3 = [(SCLTimeIntervalsFormatter *)self intervalFormatter];
      startTime = [firstObject startTime];
      endTime = [firstObject endTime];
      v13 = [intervalFormatter3 stringFromTime:startTime toTime:endTime];

      goto LABEL_7;
    }

    [intervalFormatter setPrefersHoursOnly:1];

    intervalFormatter4 = [(SCLTimeIntervalsFormatter *)self intervalFormatter];
    [intervalFormatter4 setCoalescesAMPMSymbols:0];

    firstObject = [(SCLTimeIntervalsFormatter *)self listFormatter];
    v14 = [firstObject stringFromItems:intervalsCopy];
  }

  else
  {
    firstObject = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [firstObject localizedStringForKey:@"ScheduleOff" value:&stru_287622948 table:@"SchoolTimeFormatters"];
  }

  v13 = v14;
LABEL_7:

  return v13;
}

@end