@interface ICSParticipationStatusParameter
+ (id)participationStatusParameterFromCode:(int)a3;
+ (id)participationStatusParameterFromICSString:(id)a3;
- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4;
@end

@implementation ICSParticipationStatusParameter

+ (id)participationStatusParameterFromICSString:(id)a3
{
  v3 = [ICSUserAddress participationStatusFromICSString:a3];
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

+ (id)participationStatusParameterFromCode:(int)a3
{
  v3 = [(ICSPredefinedValue *)[ICSParticipationStatusParameter alloc] initWithLong:a3];

  return v3;
}

- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [ICSUserAddress ICSStringFromParticipationStatus:[(ICSPredefinedValue *)self longValue]];
  iCalendarAppendStringToStringWithOptions(v7, v6, v4);
}

@end