@interface ICSCalendarServerAccessValue
+ (id)calendarServerAccessFromCode:(int)code;
+ (id)calendarServerAccessFromICSString:(id)string;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
@end

@implementation ICSCalendarServerAccessValue

+ (id)calendarServerAccessFromICSString:(id)string
{
  v3 = [ICSCalendar calendarServerAccessFromICSString:string];
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

+ (id)calendarServerAccessFromCode:(int)code
{
  v3 = [(ICSPredefinedValue *)[ICSCalendarServerAccessValue alloc] initWithLong:code];

  return v3;
}

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  optionsCopy = options;
  stringCopy = string;
  v7 = [ICSCalendar ICSStringFromCalendarServerAccess:[(ICSPredefinedValue *)self longValue]];
  iCalendarAppendStringToStringWithOptions(v7, stringCopy, optionsCopy);
}

@end