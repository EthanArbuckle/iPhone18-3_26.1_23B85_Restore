@interface ICSScheduleAgentParameter
+ (id)scheduleAgentParameterFromCode:(int)code;
+ (id)scheduleAgentParameterFromICSString:(id)string;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
@end

@implementation ICSScheduleAgentParameter

+ (id)scheduleAgentParameterFromICSString:(id)string
{
  v3 = [ICSUserAddress scheduleAgentFromICSString:string];
  if (v3)
  {
    v4 = [ICSScheduleAgentParameter scheduleAgentParameterFromCode:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)scheduleAgentParameterFromCode:(int)code
{
  v3 = [(ICSPredefinedValue *)[ICSScheduleAgentParameter alloc] initWithLong:code];

  return v3;
}

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  optionsCopy = options;
  stringCopy = string;
  v7 = [ICSUserAddress ICSStringFromScheduleAgent:[(ICSPredefinedValue *)self longValue]];
  iCalendarAppendStringToStringWithOptions(v7, stringCopy, optionsCopy);
}

@end