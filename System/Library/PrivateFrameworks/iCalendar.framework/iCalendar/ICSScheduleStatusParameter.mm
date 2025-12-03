@interface ICSScheduleStatusParameter
+ (id)scheduleStatusParameterFromCode:(int)code;
+ (id)scheduleStatusParameterFromICSString:(id)string;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
@end

@implementation ICSScheduleStatusParameter

+ (id)scheduleStatusParameterFromICSString:(id)string
{
  v3 = [ICSUserAddress scheduleStatusFromICSString:string];
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

+ (id)scheduleStatusParameterFromCode:(int)code
{
  v3 = [(ICSPredefinedValue *)[ICSScheduleStatusParameter alloc] initWithLong:code];

  return v3;
}

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  optionsCopy = options;
  stringCopy = string;
  v6 = [ICSUserAddress ICSStringFromScheduleStatus:[(ICSPredefinedValue *)self longValue]];
  if (v6)
  {
    [stringCopy appendString:@""];
    iCalendarAppendStringToStringWithOptions(v6, stringCopy, optionsCopy);
    [stringCopy appendString:@""];
  }
}

@end