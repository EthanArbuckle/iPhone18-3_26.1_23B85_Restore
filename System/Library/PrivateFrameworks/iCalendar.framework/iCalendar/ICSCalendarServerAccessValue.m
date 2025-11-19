@interface ICSCalendarServerAccessValue
+ (id)calendarServerAccessFromCode:(int)a3;
+ (id)calendarServerAccessFromICSString:(id)a3;
- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4;
@end

@implementation ICSCalendarServerAccessValue

+ (id)calendarServerAccessFromICSString:(id)a3
{
  v3 = [ICSCalendar calendarServerAccessFromICSString:a3];
  if (v3)
  {
    v4 = [ICSCalendarServerAccessValue calendarServerAccessFromCode:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)calendarServerAccessFromCode:(int)a3
{
  v3 = [(ICSPredefinedValue *)[ICSCalendarServerAccessValue alloc] initWithLong:a3];

  return v3;
}

- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [ICSCalendar ICSStringFromCalendarServerAccess:[(ICSPredefinedValue *)self longValue]];
  iCalendarAppendStringToStringWithOptions(v7, v6, v4);
}

@end