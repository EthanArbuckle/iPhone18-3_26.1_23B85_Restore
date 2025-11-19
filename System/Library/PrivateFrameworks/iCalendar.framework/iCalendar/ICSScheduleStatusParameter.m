@interface ICSScheduleStatusParameter
+ (id)scheduleStatusParameterFromCode:(int)a3;
+ (id)scheduleStatusParameterFromICSString:(id)a3;
- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4;
@end

@implementation ICSScheduleStatusParameter

+ (id)scheduleStatusParameterFromICSString:(id)a3
{
  v3 = [ICSUserAddress scheduleStatusFromICSString:a3];
  if (v3)
  {
    v4 = [ICSScheduleStatusParameter scheduleStatusParameterFromCode:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)scheduleStatusParameterFromCode:(int)a3
{
  v3 = [(ICSPredefinedValue *)[ICSScheduleStatusParameter alloc] initWithLong:a3];

  return v3;
}

- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4
{
  v4 = a3;
  v7 = a4;
  v6 = [ICSUserAddress ICSStringFromScheduleStatus:[(ICSPredefinedValue *)self longValue]];
  if (v6)
  {
    [v7 appendString:@""];
    iCalendarAppendStringToStringWithOptions(v6, v7, v4);
    [v7 appendString:@""];
  }
}

@end