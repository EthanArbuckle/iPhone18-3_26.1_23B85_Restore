@interface SCLTimeIntervalsFormatter
- (SCLTimeIntervalsFormatter)init;
- (id)stringForObjectValue:(id)a3;
- (id)stringFromTimeIntervals:(id)a3;
- (void)setLocale:(id)a3;
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
    v7 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    [(SCLTimeIntervalsFormatter *)v2 setLocale:v7];
  }

  return v2;
}

- (void)setLocale:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  }

  v5 = v4;
  [(SCLScheduleIntervalFormatter *)self->_intervalFormatter setLocale:v4];
  [(NSListFormatter *)self->_listFormatter setLocale:v5];
}

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SCLTimeIntervalsFormatter *)self stringFromTimeIntervals:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)stringFromTimeIntervals:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 count];
    v6 = [(SCLTimeIntervalsFormatter *)self intervalFormatter];
    v7 = v6;
    if (v5 == 1)
    {
      [v6 setPrefersHoursOnly:{-[SCLTimeIntervalsFormatter prefersHoursOnly](self, "prefersHoursOnly")}];

      v8 = [(SCLTimeIntervalsFormatter *)self intervalFormatter];
      [v8 setCoalescesAMPMSymbols:0];

      v9 = [v4 firstObject];
      v10 = [(SCLTimeIntervalsFormatter *)self intervalFormatter];
      v11 = [v9 startTime];
      v12 = [v9 endTime];
      v13 = [v10 stringFromTime:v11 toTime:v12];

      goto LABEL_7;
    }

    [v6 setPrefersHoursOnly:1];

    v15 = [(SCLTimeIntervalsFormatter *)self intervalFormatter];
    [v15 setCoalescesAMPMSymbols:0];

    v9 = [(SCLTimeIntervalsFormatter *)self listFormatter];
    v14 = [v9 stringFromItems:v4];
  }

  else
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v9 localizedStringForKey:@"ScheduleOff" value:&stru_287622948 table:@"SchoolTimeFormatters"];
  }

  v13 = v14;
LABEL_7:

  return v13;
}

@end