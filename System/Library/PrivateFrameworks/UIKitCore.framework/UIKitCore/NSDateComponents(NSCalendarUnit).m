@interface NSDateComponents(NSCalendarUnit)
+ (__CFString)_ui_namesForComponents:()NSCalendarUnit;
+ (uint64_t)smaller:()NSCalendarUnit componentsRelativeToComponent:;
- (id)_ui_conciseDescription;
- (uint64_t)_ui_valueForComponent:()NSCalendarUnit;
- (void)_ui_setComponents:()NSCalendarUnit;
- (void)_ui_setValue:()NSCalendarUnit forComponent:;
@end

@implementation NSDateComponents(NSCalendarUnit)

+ (uint64_t)smaller:()NSCalendarUnit componentsRelativeToComponent:
{
  v4 = 0;
  result = 0;
  v6 = 0x2000;
  if (a4 != 256)
  {
    v6 = a4;
  }

  v7 = -1;
  if (!a3)
  {
    v7 = 1;
  }

  v8 = 6;
  if (!a3)
  {
    v8 = 0;
  }

  v9 = 7;
  if (a3)
  {
    v9 = -1;
  }

  v10 = &unk_18A680920;
  do
  {
    v11 = 0;
    v12 = &v10[8 * v8];
    v13 = v8;
    do
    {
      v14 = *v12;
      if ((v11 & 1) == 0)
      {
        v14 = 0;
      }

      result |= v14;
      v11 |= v6 == *v12;
      v13 += v7;
      v12 += 8 * v7;
    }

    while (v13 != v9);
    v15 = v4 | v11;
    v4 = 1;
    v10 = &unk_18A680958;
  }

  while ((v15 & 1) == 0);
  return result;
}

+ (__CFString)_ui_namesForComponents:()NSCalendarUnit
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = @"NSDateComponentUndefined";
  }

  else
  {
    v4 = a3;
    v11[4] = xmmword_1E7119B20;
    v11[5] = *&off_1E7119B30;
    v11[6] = xmmword_1E7119B40;
    v11[7] = *&off_1E7119B50;
    v11[0] = xmmword_1E7119AE0;
    v11[1] = *&off_1E7119AF0;
    v11[2] = xmmword_1E7119B00;
    v11[3] = *&off_1E7119B10;
    v5 = [MEMORY[0x1E695DF70] array];
    for (i = 0; i != 16; ++i)
    {
      v7 = qword_18A680990[i];
      if ((v7 & v4) != 0)
      {
        [v5 addObject:*(v11 + i * 8)];
        v4 &= ~v7;
      }
    }

    if (v4)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<Unknown: %lu>", v4];
      [v5 addObject:v8];
    }

    v3 = [v5 componentsJoinedByString:@" | "];

    for (j = 120; j != -8; j -= 8)
    {
    }
  }

  return v3;
}

- (id)_ui_conciseDescription
{
  v2 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<NSDateComponents: %p>", a1];
  v3 = [a1 calendar];
  if (v3)
  {
  }

  else
  {
    v4 = [a1 timeZone];

    if (!v4)
    {
      goto LABEL_5;
    }
  }

  v5 = [a1 calendar];
  v6 = [a1 timeZone];
  [v2 appendFormat:@"\nCalendar: %@ / Time Zone: %@", v5, v6];

LABEL_5:
  if ([a1 era] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 appendFormat:@"\n Era: %ld", objc_msgSend(a1, "era")];
  }

  if ([a1 year] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 appendFormat:@"\n Year: %ld", objc_msgSend(a1, "year")];
  }

  if ([a1 month] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 appendFormat:@"\n Month: %ld", objc_msgSend(a1, "month")];
  }

  if ([a1 day] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 appendFormat:@"\n Day: %ld", objc_msgSend(a1, "day")];
  }

  if ([a1 hour] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 appendFormat:@"\n Hour: %ld", objc_msgSend(a1, "hour")];
  }

  if ([a1 minute] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 appendFormat:@"\n Minute: %ld", objc_msgSend(a1, "minute")];
  }

  if ([a1 second] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 appendFormat:@"\n Second: %ld", objc_msgSend(a1, "second")];
  }

  if ([a1 weekOfMonth] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 appendFormat:@"\n Week of Month: %ld", objc_msgSend(a1, "weekOfMonth")];
  }

  if ([a1 weekOfYear] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 appendFormat:@"\n Week of Year: %ld", objc_msgSend(a1, "weekOfYear")];
  }

  if ([a1 yearForWeekOfYear] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 appendFormat:@"\n Year for Week of Year: %ld", objc_msgSend(a1, "yearForWeekOfYear")];
  }

  if ([a1 weekday] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 appendFormat:@"\n Weekday: %ld", objc_msgSend(a1, "weekday")];
  }

  if ([a1 weekdayOrdinal] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 appendFormat:@"\n Weekday Ordinal: %ld", objc_msgSend(a1, "weekdayOrdinal")];
  }

  if ([a1 quarter] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 appendFormat:@"\n Quarter: %ld", objc_msgSend(a1, "quarter")];
  }

  return v2;
}

- (uint64_t)_ui_valueForComponent:()NSCalendarUnit
{
  if (a3 > 255)
  {
    if (a3 <= 2047)
    {
      switch(a3)
      {
        case 256:
          return [a1 week];
        case 512:
          return [a1 weekday];
        case 1024:
          return [a1 weekdayOrdinal];
      }
    }

    else if (a3 >= 0x2000)
    {
      if (a3 == 0x2000)
      {
        return [a1 weekOfYear];
      }

      if (a3 == 0x4000)
      {
        return [a1 yearForWeekOfYear];
      }
    }

    else
    {
      if (a3 == 2048)
      {
        return [a1 quarter];
      }

      if (a3 == 4096)
      {
        return [a1 weekOfMonth];
      }
    }
  }

  else if (a3 <= 15)
  {
    switch(a3)
    {
      case 2:
        return [a1 era];
      case 4:
        return [a1 year];
      case 8:
        return [a1 month];
    }
  }

  else if (a3 > 63)
  {
    if (a3 == 64)
    {
      return [a1 minute];
    }

    if (a3 == 128)
    {
      return [a1 second];
    }
  }

  else
  {
    if (a3 == 16)
    {
      return [a1 day];
    }

    if (a3 == 32)
    {
      return [a1 hour];
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_ui_setValue:()NSCalendarUnit forComponent:
{
  if (a4 > 255)
  {
    if (a4 <= 2047)
    {
      switch(a4)
      {
        case 256:
          return [a1 setWeek:?];
        case 512:
          return [a1 setWeekday:?];
        case 1024:
          return [a1 setWeekdayOrdinal:?];
      }
    }

    else if (a4 >= 0x2000)
    {
      if (a4 == 0x2000)
      {
        return [a1 setWeekOfYear:?];
      }

      else if (a4 == 0x4000)
      {
        return [a1 setYearForWeekOfYear:?];
      }
    }

    else if (a4 == 2048)
    {
      return [a1 setQuarter:?];
    }

    else if (a4 == 4096)
    {
      return [a1 setWeekOfMonth:?];
    }
  }

  else if (a4 <= 15)
  {
    switch(a4)
    {
      case 2:
        return [a1 setEra:?];
      case 4:
        return [a1 setYear:?];
      case 8:
        return [a1 setMonth:?];
    }
  }

  else if (a4 > 63)
  {
    if (a4 == 64)
    {
      return [a1 setMinute:?];
    }

    else if (a4 == 128)
    {
      return [a1 setSecond:?];
    }
  }

  else if (a4 == 16)
  {
    return [a1 setDay:?];
  }

  else if (a4 == 32)
  {
    return [a1 setHour:?];
  }

  return a1;
}

- (void)_ui_setComponents:()NSCalendarUnit
{
  v4 = a3;
  v5 = 0;
  v11 = v4;
  do
  {
    v6 = qword_18A680A10[v5];
    if ([v4 _ui_valueForComponent:v6] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a1 _ui_setValue:objc_msgSend(v11 forComponent:{"_ui_valueForComponent:", v6), v6}];
    }

    ++v5;
    v4 = v11;
  }

  while (v5 != 14);
  v7 = [v11 calendar];

  if (v7)
  {
    v8 = [v11 calendar];
    [a1 setCalendar:v8];
  }

  v9 = [v11 timeZone];

  if (v9)
  {
    v10 = [v11 timeZone];
    [a1 setTimeZone:v10];
  }
}

@end