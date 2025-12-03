@interface ICSParticipationStatusParameter
+ (id)participationStatusParameterFromCode:(int)code;
+ (id)participationStatusParameterFromICSString:(id)string;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
@end

@implementation ICSParticipationStatusParameter

+ (id)participationStatusParameterFromICSString:(id)string
{
  v3 = [ICSUserAddress participationStatusFromICSString:string];
  if (v3)
  {
    v4 = [ICSParticipationStatusParameter participationStatusParameterFromCode:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)participationStatusParameterFromCode:(int)code
{
  v3 = [(ICSPredefinedValue *)[ICSParticipationStatusParameter alloc] initWithLong:code];

  return v3;
}

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  optionsCopy = options;
  stringCopy = string;
  v7 = [ICSUserAddress ICSStringFromParticipationStatus:[(ICSPredefinedValue *)self longValue]];
  iCalendarAppendStringToStringWithOptions(v7, stringCopy, optionsCopy);
}

@end