@interface STDowntimeOverrideBuilder
+ (id)createAutomaticOverrideWithState:(int64_t)state schedule:(id)schedule creationDate:(id)date calendar:(id)calendar;
+ (id)createFixedDurationOverrideWithInterval:(double)interval state:(int64_t)state creationDate:(id)date calendar:(id)calendar;
@end

@implementation STDowntimeOverrideBuilder

+ (id)createFixedDurationOverrideWithInterval:(double)interval state:(int64_t)state creationDate:(id)date calendar:(id)calendar
{
  v9 = MEMORY[0x1E696AD98];
  calendarCopy = calendar;
  dateCopy = date;
  v12 = [v9 numberWithDouble:interval];
  v13 = [STDowntimeOverride overrideWithState:state creationDate:dateCopy calendar:calendarCopy fixedDuration:v12];

  return v13;
}

+ (id)createAutomaticOverrideWithState:(int64_t)state schedule:(id)schedule creationDate:(id)date calendar:(id)calendar
{
  scheduleCopy = schedule;
  dateCopy = date;
  calendarCopy = calendar;
  if (![scheduleCopy enabled] || (objc_msgSend(scheduleCopy, "computeNextOverrideEndDateForState:creationDate:inCalendar:", state, dateCopy, calendarCopy), (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = [calendarCopy startOfDayForDate:dateCopy];
    v14 = [calendarCopy components:96 fromDate:v13];
    v12 = [calendarCopy nextDateAfterDate:v13 matchingComponents:v14 options:1024];
  }

  v15 = [STDowntimeOverride overrideWithState:state creationDate:dateCopy calendar:calendarCopy endDate:v12];

  return v15;
}

@end