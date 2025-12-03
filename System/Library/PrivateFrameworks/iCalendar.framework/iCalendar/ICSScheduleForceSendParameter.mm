@interface ICSScheduleForceSendParameter
+ (id)scheduleForceSendParameterFromCode:(int)code;
+ (id)scheduleForceSendParameterFromICSString:(id)string;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
@end

@implementation ICSScheduleForceSendParameter

+ (id)scheduleForceSendParameterFromICSString:(id)string
{
  v3 = [ICSUserAddress scheduleForceSendFromICSString:string];
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

+ (id)scheduleForceSendParameterFromCode:(int)code
{
  v3 = [(ICSPredefinedValue *)[ICSScheduleForceSendParameter alloc] initWithLong:code];

  return v3;
}

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  optionsCopy = options;
  stringCopy = string;
  v7 = [ICSUserAddress ICSStringFromScheduleForceSend:[(ICSPredefinedValue *)self longValue]];
  iCalendarAppendStringToStringWithOptions(v7, stringCopy, optionsCopy);
}

@end