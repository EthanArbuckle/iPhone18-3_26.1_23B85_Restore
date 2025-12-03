@interface NSDate(TADateFormat)
- (__CFString)getDateString;
- (id)getNextDateAtHour:()TADateFormat;
- (uint64_t)getMinutesSinceStartOfDay;
@end

@implementation NSDate(TADateFormat)

- (__CFString)getDateString
{
  if (self)
  {
    if (getDateString_onceTokenForDateFormatter != -1)
    {
      [NSDate(TADateFormat) getDateString];
    }

    v2 = gTADateFormatDateFormatter;
    objc_sync_enter(v2);
    v3 = [gTADateFormatDateFormatter stringFromDate:self];
    objc_sync_exit(v2);
  }

  else
  {
    v3 = @"-";
  }

  return v3;
}

- (id)getNextDateAtHour:()TADateFormat
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [currentCalendar nextDateAfterDate:self matchingHour:a3 minute:0 second:0 options:512];

  return v6;
}

- (uint64_t)getMinutesSinceStartOfDay
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v3 = [currentCalendar startOfDayForDate:self];
  [self timeIntervalSinceDate:v3];
  v5 = v4 / 60;

  return v5;
}

@end