@interface NSDate(VK)
- (id)vk_briefFormattedDate:()VK;
- (id)vk_shortFormattedDate;
- (uint64_t)vk_isToday;
- (uint64_t)vk_isYesterday;
- (uint64_t)vk_localDateWithSeconds;
@end

@implementation NSDate(VK)

- (uint64_t)vk_isToday
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [v2 components:28 fromDate:a1];
  v4 = [v2 dateFromComponents:v3];
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [v2 components:28 fromDate:v5];

  v7 = [v2 dateFromComponents:v6];
  v8 = [v4 isEqualToDate:v7];

  return v8;
}

- (uint64_t)vk_isYesterday
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [v2 components:28 fromDate:a1];
  v4 = [v2 dateFromComponents:v3];
  v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v5 setDay:-1];
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [v2 dateByAddingComponents:v5 toDate:v6 options:0];

  v8 = [v2 components:28 fromDate:v7];
  v9 = [v2 dateFromComponents:v8];

  v10 = [v4 isEqualToDate:v9];
  return v10;
}

- (uint64_t)vk_localDateWithSeconds
{
  if (vk_localDateWithSeconds_localFormatterOnceToken != -1)
  {
    [NSDate(VK) vk_localDateWithSeconds];
  }

  v2 = vk_localDateWithSeconds_localFormatter;

  return [v2 stringFromDate:a1];
}

- (id)vk_shortFormattedDate
{
  if (([a1 vk_isToday] & 1) != 0 || objc_msgSend(a1, "vk_isYesterday"))
  {
    if (vk_shortFormattedDate_shortRelativeOnceToken != -1)
    {
      [NSDate(VK) vk_shortFormattedDate];
    }

    v2 = &vk_shortFormattedDate_shortRelativeformatter;
  }

  else
  {
    if (vk_shortFormattedDate_shortStandardOnceToken != -1)
    {
      [NSDate(VK) vk_shortFormattedDate];
    }

    v2 = &vk_shortFormattedDate_shortStandardformatter;
  }

  v3 = [*v2 stringFromDate:a1];

  return v3;
}

- (id)vk_briefFormattedDate:()VK
{
  v4 = a1;
  v5 = [MEMORY[0x1E695DF00] distantFuture];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [MEMORY[0x1E695DF00] date];

    v4 = v7;
  }

  if ([v4 vk_isToday])
  {
    if (vk_briefFormattedDate__briefTodayOnceToken != -1)
    {
      [NSDate(VK) vk_briefFormattedDate:];
    }

    v8 = [vk_briefFormattedDate__briefTodayFormatter stringFromDate:v4];
  }

  else
  {
    v9 = [MEMORY[0x1E695DEE8] currentCalendar];
    v10 = [MEMORY[0x1E695DF00] date];
    v11 = [v9 components:28 fromDate:v10];

    v12 = [v9 dateFromComponents:v11];
    v13 = [v9 dateByAddingUnit:16 value:-1 toDate:v12 options:0];
    v14 = [v9 dateByAddingUnit:0x2000 value:-1 toDate:v12 options:0];
    if ([v4 compare:v13] == 1 || objc_msgSend(v4, "compare:", v14) != 1)
    {
      if (a3)
      {
        if (vk_briefFormattedDate__templateOnceToken_14 != -1)
        {
          [NSDate(VK) vk_briefFormattedDate:];
        }

        v15 = &vk_briefFormattedDate__accessibilityDateFormatter;
      }

      else
      {
        if (vk_briefFormattedDate__briefRelativeOnceToken != -1)
        {
          [NSDate(VK) vk_briefFormattedDate:];
        }

        v15 = &vk_briefFormattedDate__briefRelativeFormatter;
      }
    }

    else
    {
      if (vk_briefFormattedDate__templateOnceToken != -1)
      {
        [NSDate(VK) vk_briefFormattedDate:];
      }

      v15 = &vk_briefFormattedDate__templateFormatter;
    }

    v8 = [*v15 stringFromDate:v4];
  }

  return v8;
}

@end