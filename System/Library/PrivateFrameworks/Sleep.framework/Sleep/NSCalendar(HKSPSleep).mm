@interface NSCalendar(HKSPSleep)
+ (uint64_t)_hksp_optionsForBackwards:()HKSPSleep;
- (double)hksp_timeIntervalFromComponents:()HKSPSleep toComponents:;
- (id)_hksp_nextDateAfterDate:()HKSPSleep matchingComponents:backwards:;
- (id)_hksp_nextDateAfterDate:()HKSPSleep matchingUnit:value:backwards:;
- (id)_hksp_nextDateHelperAfterDate:()HKSPSleep nextDateBlock:;
- (id)hksp_componentsByAddingTimeInterval:()HKSPSleep toComponents:;
- (id)hksp_localizedGroupingStringForWeekdays:()HKSPSleep;
- (id)hksp_orderedSleepDays;
- (id)hksp_orderedSleepWeekdaysForWeekdays:()HKSPSleep;
- (uint64_t)hksp_dateRequiresSingularTimeString:()HKSPSleep;
- (uint64_t)hksp_dayPeriodForDate:()HKSPSleep locale:options:;
- (uint64_t)hksp_firstNonWeekendDay;
@end

@implementation NSCalendar(HKSPSleep)

- (id)hksp_orderedSleepDays
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__NSCalendar_HKSPSleep__hksp_orderedSleepDays__block_invoke;
  v6[3] = &unk_279C73B08;
  v7 = v2;
  v3 = v2;
  HKSPEnumerateDaysOfWeekInCalendar(self, v6, 0);
  v4 = [v3 copy];

  return v4;
}

- (id)hksp_orderedSleepWeekdaysForWeekdays:()HKSPSleep
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__NSCalendar_HKSPSleep__hksp_orderedSleepWeekdaysForWeekdays___block_invoke;
  v9[3] = &unk_279C73B08;
  v10 = v5;
  v6 = v5;
  HKSPWeekdaysEnumerateDaysInCalendar(self, a3, v9, 0);
  v7 = [v6 copy];

  return v7;
}

- (id)hksp_localizedGroupingStringForWeekdays:()HKSPSleep
{
  if (a3 == 127)
  {
    v3 = @"EVERY_DAY";
LABEL_7:
    v6 = HKSPLocalizedString(v3);
    goto LABEL_8;
  }

  v5 = HKSPWeekendDaysInCalendar(self);
  if (v5 == a3)
  {
    v3 = @"WEEKENDS";
    goto LABEL_7;
  }

  if ((v5 & 0x7F ^ a3) == 0x7F)
  {
    v3 = @"WEEKDAYS";
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (uint64_t)hksp_dayPeriodForDate:()HKSPSleep locale:options:
{
  v8 = a3;
  v9 = [self bs_dayPeriodForDate:v8 inLocale:a4];
  v10 = 1;
  if (v9 <= 9)
  {
    if (((1 << v9) & 0x2F0) != 0)
    {
      if (a5)
      {
        if (([self component:32 fromDate:v8] - 3) < 7)
        {
          v10 = 1;
        }

        else
        {
          v10 = 3;
        }
      }

      else
      {
        v10 = 3;
      }
    }

    else
    {
      v11 = (a5 & 2) == 0;
      if (v9)
      {
        v11 = 1;
      }

      if (((1 << v9) & 0x10C) != 0)
      {
        v10 = 2;
      }

      else
      {
        v10 = v11;
      }
    }
  }

  return v10;
}

- (id)_hksp_nextDateAfterDate:()HKSPSleep matchingComponents:backwards:
{
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() _hksp_optionsForBackwards:a5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__NSCalendar_HKSPSleep___hksp_nextDateAfterDate_matchingComponents_backwards___block_invoke;
  v14[3] = &unk_279C73A90;
  v14[4] = self;
  v15 = v8;
  v16 = v10;
  v11 = v8;
  v12 = [self _hksp_nextDateHelperAfterDate:v9 nextDateBlock:v14];

  return v12;
}

- (id)_hksp_nextDateAfterDate:()HKSPSleep matchingUnit:value:backwards:
{
  v10 = a3;
  v11 = [objc_opt_class() _hksp_optionsForBackwards:a6];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__NSCalendar_HKSPSleep___hksp_nextDateAfterDate_matchingUnit_value_backwards___block_invoke;
  v14[3] = &unk_279C73AB8;
  v14[4] = self;
  v14[5] = a4;
  v14[6] = a5;
  v14[7] = v11;
  v12 = [self _hksp_nextDateHelperAfterDate:v10 nextDateBlock:v14];

  return v12;
}

- (id)_hksp_nextDateHelperAfterDate:()HKSPSleep nextDateBlock:
{
  v6 = a3;
  v7 = a4;
  timeZone = [self timeZone];
  [timeZone daylightSavingTimeOffsetForDate:v6];
  v10 = v9;

  if (v10 > 0.0)
  {
    v11 = [v6 dateByAddingTimeInterval:-v10];
    timeZone2 = [self timeZone];
    [timeZone2 daylightSavingTimeOffsetForDate:v11];
    v14 = v13;

    if (v10 > v14)
    {
      v15 = v7[2](v7, v11);
      if ([v15 hksp_isAfterDate:v6])
      {

        goto LABEL_8;
      }
    }
  }

  v15 = v7[2](v7, v6);
LABEL_8:

  return v15;
}

+ (uint64_t)_hksp_optionsForBackwards:()HKSPSleep
{
  if (a3)
  {
    return 8708;
  }

  else
  {
    return 512;
  }
}

- (uint64_t)hksp_dateRequiresSingularTimeString:()HKSPSleep
{
  result = [self component:32 fromDate:a3];
  if (result != 1)
  {
    if (result == 13)
    {
      locale = [self locale];
      hk_isIn24HourTime = [locale hk_isIn24HourTime];

      return hk_isIn24HourTime;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)hksp_firstNonWeekendDay
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0xFFFFFFFFLL;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "firstWeekday")}];
  hk_weekendDays = [self hk_weekendDays];
  unsignedIntegerValue = [v2 unsignedIntegerValue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v11 = __48__NSCalendar_HKSPSleep__hksp_firstNonWeekendDay__block_invoke;
  v12 = &unk_279C73AE0;
  v5 = hk_weekendDays;
  v13 = v5;
  v14 = &v15;
  v19 = 0;
  v6 = *MEMORY[0x277CCBC00];
  v7 = v5;
  if (*MEMORY[0x277CCBC00])
  {
    do
    {
      v11(v10, unsignedIntegerValue, &v19);
      if (v19)
      {
        break;
      }

      if (unsignedIntegerValue == 7)
      {
        unsignedIntegerValue = 1;
      }

      else
      {
        ++unsignedIntegerValue;
      }

      --v6;
    }

    while (v6);
    v7 = v13;
  }

  v8 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v8;
}

- (id)hksp_componentsByAddingTimeInterval:()HKSPSleep toComponents:
{
  v4 = [self dateFromComponents:?];
  v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v5 setSecond:a2];
  v6 = [self dateByAddingComponents:v5 toDate:v4 options:0];

  v7 = [self components:96 fromDate:v6];

  return v7;
}

- (double)hksp_timeIntervalFromComponents:()HKSPSleep toComponents:
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dateWithTimeIntervalSinceReferenceDate:0.0];
  v10 = [self nextDateAfterDate:v9 matchingComponents:v8 options:512];

  v11 = [self nextDateAfterDate:v10 matchingComponents:v7 options:512];

  [v11 timeIntervalSinceDate:v10];
  v13 = v12;

  return v13;
}

@end