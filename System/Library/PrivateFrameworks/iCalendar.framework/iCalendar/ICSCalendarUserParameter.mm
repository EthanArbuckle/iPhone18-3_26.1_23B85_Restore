@interface ICSCalendarUserParameter
+ (id)calendarUserTypeParameterFromCode:(int)code;
+ (id)calendarUserTypeParameterFromICSString:(id)string;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
@end

@implementation ICSCalendarUserParameter

+ (id)calendarUserTypeParameterFromICSString:(id)string
{
  v3 = [ICSUserAddress calendarUserFromICSString:string];
  if (v3)
  {
    v4 = [ICSCalendarUserParameter calendarUserTypeParameterFromCode:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)calendarUserTypeParameterFromCode:(int)code
{
  v3 = [(ICSPredefinedValue *)[ICSCalendarUserParameter alloc] initWithLong:code];

  return v3;
}

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  optionsCopy = options;
  stringCopy = string;
  v7 = [ICSUserAddress ICSStringFromCalendarUser:[(ICSPredefinedValue *)self longValue]];
  iCalendarAppendStringToStringWithOptions(v7, stringCopy, optionsCopy);
}

@end