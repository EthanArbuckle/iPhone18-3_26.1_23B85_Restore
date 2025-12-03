@interface SCLScheduleTimeFormatter
- (SCLScheduleTimeFormatter)init;
- (id)stringForObjectValue:(id)value;
- (id)stringForScheduleTime:(id)time;
@end

@implementation SCLScheduleTimeFormatter

- (SCLScheduleTimeFormatter)init
{
  v15.receiver = self;
  v15.super_class = SCLScheduleTimeFormatter;
  v2 = [(SCLScheduleTimeFormatter *)&v15 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
    defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
    [(NSCalendar *)v3 setTimeZone:defaultTimeZone];

    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    [(NSCalendar *)v3 setLocale:autoupdatingCurrentLocale];

    calendar = v2->_calendar;
    v2->_calendar = v3;
    v7 = v3;

    v8 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatter = v2->_dateFormatter;
    v2->_dateFormatter = v8;

    v10 = v2->_dateFormatter;
    autoupdatingCurrentLocale2 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    [(NSDateFormatter *)v10 setLocale:autoupdatingCurrentLocale2];

    [(NSDateFormatter *)v2->_dateFormatter setDateStyle:0];
    [(NSDateFormatter *)v2->_dateFormatter setTimeStyle:1];
    v12 = v2->_dateFormatter;
    timeZone = [(NSCalendar *)v7 timeZone];
    [(NSDateFormatter *)v12 setTimeZone:timeZone];

    [(NSDateFormatter *)v2->_dateFormatter setCalendar:v7];
  }

  return v2;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SCLScheduleTimeFormatter *)self stringForScheduleTime:valueCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)stringForScheduleTime:(id)time
{
  calendar = self->_calendar;
  timeCopy = time;
  hour = [timeCopy hour];
  minute = [timeCopy minute];

  v8 = [(NSCalendar *)calendar dateWithEra:1 year:2019 month:1 day:1 hour:hour minute:minute second:0 nanosecond:0];
  v9 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v8];

  return v9;
}

@end