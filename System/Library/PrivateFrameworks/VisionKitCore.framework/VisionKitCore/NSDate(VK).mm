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
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [currentCalendar components:28 fromDate:self];
  v4 = [currentCalendar dateFromComponents:v3];
  date = [MEMORY[0x1E695DF00] date];
  v6 = [currentCalendar components:28 fromDate:date];

  v7 = [currentCalendar dateFromComponents:v6];
  v8 = [v4 isEqualToDate:v7];

  return v8;
}

- (uint64_t)vk_isYesterday
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [currentCalendar components:28 fromDate:self];
  v4 = [currentCalendar dateFromComponents:v3];
  v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v5 setDay:-1];
  date = [MEMORY[0x1E695DF00] date];
  v7 = [currentCalendar dateByAddingComponents:v5 toDate:date options:0];

  v8 = [currentCalendar components:28 fromDate:v7];
  v9 = [currentCalendar dateFromComponents:v8];

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

  return [v2 stringFromDate:self];
}

- (id)vk_shortFormattedDate
{
  if (([self vk_isToday] & 1) != 0 || objc_msgSend(self, "vk_isYesterday"))
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

  v3 = [*v2 stringFromDate:self];

  return v3;
}

- (id)vk_briefFormattedDate:()VK
{
  selfCopy = self;
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v6 = [selfCopy isEqual:distantFuture];

  if (v6)
  {
    date = [MEMORY[0x1E695DF00] date];

    selfCopy = date;
  }

  if ([selfCopy vk_isToday])
  {
    if (vk_briefFormattedDate__briefTodayOnceToken != -1)
    {
      [NSDate(VK) vk_briefFormattedDate:];
    }

    v8 = [vk_briefFormattedDate__briefTodayFormatter stringFromDate:selfCopy];
  }

  else
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    date2 = [MEMORY[0x1E695DF00] date];
    v11 = [currentCalendar components:28 fromDate:date2];

    v12 = [currentCalendar dateFromComponents:v11];
    v13 = [currentCalendar dateByAddingUnit:16 value:-1 toDate:v12 options:0];
    v14 = [currentCalendar dateByAddingUnit:0x2000 value:-1 toDate:v12 options:0];
    if ([selfCopy compare:v13] == 1 || objc_msgSend(selfCopy, "compare:", v14) != 1)
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

    v8 = [*v15 stringFromDate:selfCopy];
  }

  return v8;
}

@end