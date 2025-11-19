@interface ICSMethodValue
+ (id)methodParameterFromCode:(int)a3;
+ (id)methodValueFromICSString:(id)a3;
- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4;
@end

@implementation ICSMethodValue

+ (id)methodValueFromICSString:(id)a3
{
  v3 = [ICSCalendar methodFromICSString:a3];
  if (v3)
  {
    v4 = [ICSMethodValue methodParameterFromCode:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)methodParameterFromCode:(int)a3
{
  v3 = [(ICSPredefinedValue *)[ICSMethodValue alloc] initWithLong:a3];

  return v3;
}

- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [ICSCalendar ICSStringFromMethod:[(ICSPredefinedValue *)self longValue]];
  iCalendarAppendStringToStringWithOptions(v7, v6, v4);
}

@end