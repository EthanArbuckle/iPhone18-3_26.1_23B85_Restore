@interface UIDatePickerCalendarTimeFormat
@end

@implementation UIDatePickerCalendarTimeFormat

id __121___UIDatePickerCalendarTimeFormat_initWithCalendar_locale_followsSystemHourCycle_forceDoubleDigitHours_displaysTimeZone___block_invoke(void *a1, int a2)
{
  v3 = a1;
  v4 = *MEMORY[0x1E695D910];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695D910]];
  v6 = [v5 mutableCopy];

  v7 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  if (a2)
  {
    while (![v6 rangeOfCharacterFromSet:v7 options:0])
    {
      [v6 replaceCharactersInRange:0 withString:{v8, &stru_1EFB14550}];
    }
  }

  else
  {
    v9 = [v6 rangeOfCharacterFromSet:v7 options:4];
    v11 = v10;
    if (v9 + v10 == [v6 length])
    {
      do
      {
        [v6 replaceCharactersInRange:v9 withString:{v11, &stru_1EFB14550}];
        v9 = [v6 rangeOfCharacterFromSet:v7 options:4];
        v11 = v12;
      }

      while (v9 + v12 == [v6 length]);
    }
  }

  if ([v6 length])
  {
    v13 = [v3 mutableCopy];
    v14 = [v6 copy];
    [v13 setObject:v14 forKeyedSubscript:v4];

    v15 = [v13 copy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end