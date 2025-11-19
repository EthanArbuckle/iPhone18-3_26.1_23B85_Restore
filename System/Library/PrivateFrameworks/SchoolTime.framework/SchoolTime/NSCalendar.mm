@interface NSCalendar
@end

@implementation NSCalendar

void __45__NSCalendar_SchoolTime__SCL_orderedWeekdays__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  [v2 addObject:v3];
}

void __44__NSCalendar_SchoolTime__SCL_nonWeekendDays__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  [v2 addObject:v3];
}

@end