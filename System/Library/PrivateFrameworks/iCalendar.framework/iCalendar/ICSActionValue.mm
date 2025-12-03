@interface ICSActionValue
+ (id)actionParameterFromCode:(int)code;
+ (id)actionValueFromICSString:(id)string;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
@end

@implementation ICSActionValue

+ (id)actionValueFromICSString:(id)string
{
  v3 = [ICSAlarm actionFromICSString:string];
  if (v3 == 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = [ICSActionValue actionParameterFromCode:v3];
  }

  return v4;
}

+ (id)actionParameterFromCode:(int)code
{
  v3 = [(ICSPredefinedValue *)[ICSActionValue alloc] initWithLong:code];

  return v3;
}

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  optionsCopy = options;
  stringCopy = string;
  v7 = [ICSAlarm ICSStringFromAction:[(ICSPredefinedValue *)self longValue]];
  iCalendarAppendStringToStringWithOptions(v7, stringCopy, optionsCopy);
}

@end