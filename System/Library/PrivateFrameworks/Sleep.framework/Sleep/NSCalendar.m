@interface NSCalendar
@end

@implementation NSCalendar

void __46__NSCalendar_HKSPSleep__hksp_orderedSleepDays__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  [v2 addObject:v3];
}

void __62__NSCalendar_HKSPSleep__hksp_orderedSleepWeekdaysForWeekdays___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = HKSPWeekdaysFromDay(a2);
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  [v4 addObject:v5];
}

void __48__NSCalendar_HKSPSleep__hksp_firstNonWeekendDay__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  LOBYTE(v6) = [v6 containsObject:v7];

  if ((v6 & 1) == 0)
  {
    if ((a2 - 1) >= 7)
    {
      v8 = 0;
    }

    else
    {
      v8 = a2;
    }

    *(*(*(a1 + 40) + 8) + 24) = v8;
    *a3 = 1;
  }
}

@end