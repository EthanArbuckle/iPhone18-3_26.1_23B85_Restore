@interface NSDate(OFNSDateExtensions)
+ (uint64_t)dateFromISO8601String:()OFNSDateExtensions;
+ (uint64_t)dateFromRFC1123String:()OFNSDateExtensions;
+ (uint64_t)dateFromString:()OFNSDateExtensions;
+ (uint64_t)dateFromTWTimeString:()OFNSDateExtensions;
- (uint64_t)shortDescription;
- (uint64_t)shortDescriptionSinceNow;
- (uint64_t)shortDescriptionWithTime;
- (uint64_t)shortWeekDescription;
@end

@implementation NSDate(OFNSDateExtensions)

+ (uint64_t)dateFromString:()OFNSDateExtensions
{
  if (!a3)
  {
    return 0;
  }

  if (dateFromString__onceToken != -1)
  {
    +[NSDate(OFNSDateExtensions) dateFromString:];
  }

  result = [dateFromString__formatter1 dateFromString:a3];
  if (!result)
  {
    v5 = dateFromString__formatter2;

    return [v5 dateFromString:a3];
  }

  return result;
}

+ (uint64_t)dateFromRFC1123String:()OFNSDateExtensions
{
  if (!a3)
  {
    return 0;
  }

  if (dateFromRFC1123String__onceToken != -1)
  {
    +[NSDate(OFNSDateExtensions) dateFromRFC1123String:];
  }

  v4 = dateFromRFC1123String__formatter;

  return [v4 dateFromString:a3];
}

+ (uint64_t)dateFromTWTimeString:()OFNSDateExtensions
{
  if (!a3)
  {
    return 0;
  }

  if (dateFromTWTimeString__onceToken != -1)
  {
    +[NSDate(OFNSDateExtensions) dateFromTWTimeString:];
  }

  v4 = dateFromTWTimeString__formatter;

  return [v4 dateFromString:a3];
}

+ (uint64_t)dateFromISO8601String:()OFNSDateExtensions
{
  v4 = [a3 rangeOfString:@" "];
  v5 = 0;
  if (a3 && v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [MEMORY[0x277CCAC80] scannerWithString:a3];
    v20 = 0;
    v18 = 0;
    v19 = 0;
    v16 = 0;
    v17 = 0;
    v15 = 0.0;
    [v6 scanInteger:&v20];
    [v6 scanString:@"-" intoString:0];
    [v6 scanInteger:&v19];
    [v6 scanString:@"-" intoString:0];
    [v6 scanInteger:&v18];
    [v6 scanString:@"T" intoString:0];
    [v6 scanInteger:&v17];
    [v6 scanString:@":" intoString:0];
    [v6 scanInteger:&v16];
    [v6 scanString:@":" intoString:0];
    [v6 scanDouble:&v15];
    if ([v6 scanString:@"Z" intoString:0])
    {
      v7 = [MEMORY[0x277CBEBB0] localTimeZone];
    }

    else
    {
      v13 = 0;
      v14 = 0;
      [v6 scanString:@"+" intoString:0];
      [v6 scanInteger:&v14];
      [v6 scanString:@":" intoString:0];
      [v6 scanInteger:&v13];
      v8 = v13;
      if (v14 < 0)
      {
        v8 = -v13;
        v13 = -v13;
      }

      v7 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:{3600 * v14 + 60 * v8, v13}];
    }

    v9 = v7;
    v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v10 setSecond:v15];
    [v10 setMinute:v16];
    [v10 setHour:v17];
    [v10 setDay:v18];
    [v10 setMonth:v19];
    [v10 setYear:v20];
    v11 = [MEMORY[0x277CBEA80] currentCalendar];
    objc_sync_enter(v11);
    [v11 setTimeZone:v9];
    v5 = [v11 dateFromComponents:v10];
    if (v10)
    {
    }

    objc_sync_exit(v11);
  }

  return v5;
}

- (uint64_t)shortDescription
{
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  objc_sync_enter(v3);
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-518400.0];
  v6 = [v3 components:28 fromDate:v2];
  v7 = [v3 components:28 fromDate:v4];
  v8 = [v3 components:28 fromDate:v5];
  v9 = [v3 components:28 fromDate:a1];
  v10 = [v3 dateFromComponents:v8];
  v11 = [v6 year];
  if (v11 == [v9 year] && (v12 = objc_msgSend(v6, "month"), v12 == objc_msgSend(v9, "month")) && (v13 = objc_msgSend(v6, "day"), v13 == objc_msgSend(v9, "day")))
  {
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = @"Today";
  }

  else
  {
    v16 = [v7 year];
    if (v16 != [v9 year] || (v17 = objc_msgSend(v7, "month"), v17 != objc_msgSend(v9, "month")) || (v18 = objc_msgSend(v7, "day"), v18 != objc_msgSend(v9, "day")))
    {
      if ([a1 compare:v10] == 1)
      {
        v20 = objc_alloc_init(MEMORY[0x277CCA968]);
        [v20 setDateFormat:@"EEEE"];
        v19 = [v20 stringFromDate:a1];
        if (!v20)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v20 = objc_alloc_init(MEMORY[0x277CCA968]);
        [v20 setDateFormat:@"MMMM d, yyyy"];
        v19 = [v20 stringFromDate:a1];
        if (!v20)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_15;
    }

    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = @"Yesterday";
  }

  v19 = [v14 localizedStringForKey:v15 value:v15 table:@"Localizable"];
LABEL_15:
  objc_sync_exit(v3);
  return v19;
}

- (uint64_t)shortDescriptionWithTime
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 shortDescription];
  return [v2 stringWithFormat:@"%@, %@", v3, objc_msgSend(MEMORY[0x277CCA968], "localizedStringFromDate:dateStyle:timeStyle:", a1, 0, 1)];
}

- (uint64_t)shortWeekDescription
{
  v2 = [MEMORY[0x277CBEA80] currentCalendar];
  objc_sync_enter(v2);
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-518400.0];
  v6 = [objc_msgSend(MEMORY[0x277CBEA80] "currentCalendar")];
  v7 = [v2 components:28 fromDate:v4];
  v8 = [v2 components:28 fromDate:v5];
  v9 = [v2 components:28 fromDate:a1];
  v10 = [v2 dateFromComponents:v8];
  v11 = [v6 year];
  if (v11 == [v9 year])
  {
    v12 = [v6 month];
    if (v12 == [v9 month])
    {
      v13 = [v6 day];
      if (v13 == [v9 day])
      {
        v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v15 = @"Today";
LABEL_9:
        v19 = [v14 localizedStringForKey:v15 value:v15 table:@"Localizable"];
        goto LABEL_14;
      }
    }
  }

  v16 = [v7 year];
  if (v16 == [v9 year])
  {
    v17 = [v7 month];
    if (v17 == [v9 month])
    {
      v18 = [v7 day];
      if (v18 == [v9 day])
      {
        v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v15 = @"Yesterday";
        goto LABEL_9;
      }
    }
  }

  if ([a1 compare:v10] == 1)
  {
    v20 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v20 setDateFormat:@"EEEE"];
    v19 = [v20 stringFromDate:a1];
    if (v20)
    {
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_14:
  objc_sync_exit(v2);
  return v19;
}

- (uint64_t)shortDescriptionSinceNow
{
  [a1 timeIntervalSinceNow];
  v2 = v1;
  v3 = -v1;
  if (v1 < -59)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (v2 >= 0xFFFFF1F1)
    {
      v11 = v3 / 0x3CuLL;
      v12 = [v10 localizedStringForKey:@"%d minute%@ ago" value:@"%d minute%@ ago" table:@"Localizable"];
      v13 = &stru_287AB5E40;
      v14 = v3 > 0x77;
      goto LABEL_10;
    }

    if (v2 < 0xFFFEAE81)
    {
      if (v2 < 0xFFD87301)
      {
        if (v2 < 0xFE256401)
        {
          v11 = v3 / 0x1E13380uLL;
          v12 = [v10 localizedStringForKey:@"%d year%@ ago" value:@"%d year%@ ago" table:@"Localizable"];
          v13 = &stru_287AB5E40;
          v16 = 63071999;
        }

        else
        {
          v11 = v3 / 0x278D00uLL;
          v12 = [v10 localizedStringForKey:@"%d month%@ ago" value:@"%d month%@ ago" table:@"Localizable"];
          v13 = &stru_287AB5E40;
          v16 = 5183999;
        }

        v14 = v3 > v16;
LABEL_10:
        if (v14)
        {
          v13 = @"s";
        }

        return [v9 stringWithFormat:v12, v11, v13];
      }

      v11 = v3 / 0x15180uLL;
      v12 = [v10 localizedStringForKey:@"%d day%@ ago" value:@"%d day%@ ago" table:@"Localizable"];
      v15 = v3 >> 8 > 0x2A2;
    }

    else
    {
      v11 = v3 / 0xE10uLL;
      v12 = [v10 localizedStringForKey:@"%d hour%@ ago" value:@"%d hour%@ ago" table:@"Localizable"];
      v15 = v3 >> 5 > 0xE0;
    }

    if (v15)
    {
      v13 = @"s";
    }

    else
    {
      v13 = &stru_287AB5E40;
    }

    return [v9 stringWithFormat:v12, v11, v13];
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"%d second%@ ago", @"%d second%@ ago", @"Localizable"}];
  if (v2 >= -1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3;
  }

  v7 = &stru_287AB5E40;
  if (v2 < -1)
  {
    v7 = @"s";
  }

  return [v4 stringWithFormat:v5, v6, v7];
}

@end