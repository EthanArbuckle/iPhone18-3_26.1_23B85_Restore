@interface ICSScheduleForceSendParameter
+ (id)scheduleForceSendParameterFromCode:(int)a3;
+ (id)scheduleForceSendParameterFromICSString:(id)a3;
- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4;
@end

@implementation ICSScheduleForceSendParameter

+ (id)scheduleForceSendParameterFromICSString:(id)a3
{
  v3 = [ICSUserAddress scheduleForceSendFromICSString:a3];
  if (v3)
  {
    v4 = [ICSScheduleForceSendParameter scheduleForceSendParameterFromCode:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)scheduleForceSendParameterFromCode:(int)a3
{
  v3 = [(ICSPredefinedValue *)[ICSScheduleForceSendParameter alloc] initWithLong:a3];

  return v3;
}

- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [ICSUserAddress ICSStringFromScheduleForceSend:[(ICSPredefinedValue *)self longValue]];
  iCalendarAppendStringToStringWithOptions(v7, v6, v4);
}

@end