@interface ICSScheduleAgentParameter
+ (id)scheduleAgentParameterFromCode:(int)a3;
+ (id)scheduleAgentParameterFromICSString:(id)a3;
- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4;
@end

@implementation ICSScheduleAgentParameter

+ (id)scheduleAgentParameterFromICSString:(id)a3
{
  v3 = [ICSUserAddress scheduleAgentFromICSString:a3];
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

+ (id)scheduleAgentParameterFromCode:(int)a3
{
  v3 = [(ICSPredefinedValue *)[ICSScheduleAgentParameter alloc] initWithLong:a3];

  return v3;
}

- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [ICSUserAddress ICSStringFromScheduleAgent:[(ICSPredefinedValue *)self longValue]];
  iCalendarAppendStringToStringWithOptions(v7, v6, v4);
}

@end