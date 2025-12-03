@interface REMSnoozeTimeUtils
+ (int64_t)nextThirdsHour:(int64_t)hour;
+ (int64_t)nextThirdsHourFromHour:(int64_t)hour;
@end

@implementation REMSnoozeTimeUtils

+ (int64_t)nextThirdsHourFromHour:(int64_t)hour
{
  if ((hour % 24) <= 0xFFFFFFFFFFFFFFE7)
  {
    v3 = hour % 24;
  }

  else
  {
    v3 = hour % 24 + 24;
  }

  v4 = REMLocalizedTimeOfDayCreationHour(0);
  v5 = REMLocalizedTimeOfDayCreationHour(2uLL);
  v6 = REMLocalizedTimeOfDayCreationHour(5uLL);
  result = 0;
  if (v3 >= v4)
  {
    if (v3 >= v5)
    {
      if (v3 < v6)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

+ (int64_t)nextThirdsHour:(int64_t)hour
{
  if (hour > 1)
  {
    if (hour == 2)
    {
      v4 = 5;

      return REMLocalizedTimeOfDayCreationHour(v4);
    }

    if (hour == 3)
    {
      return REMLocalizedTimeOfDayCreationHour(0) + 24;
    }
  }

  else
  {
    if (!hour)
    {
      v4 = 0;

      return REMLocalizedTimeOfDayCreationHour(v4);
    }

    if (hour == 1)
    {
      v4 = 2;

      return REMLocalizedTimeOfDayCreationHour(v4);
    }
  }

  return result;
}

@end