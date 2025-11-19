@interface WGTodayViewArchiveMigrateWidgetIdentifiers
@end

@implementation WGTodayViewArchiveMigrateWidgetIdentifiers

uint64_t ___WGTodayViewArchiveMigrateWidgetIdentifiers_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) objectForKey:a2];
  v6 = v5;
  if (v5)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v8 = v5;
    [*(a1 + 40) replaceObjectAtIndex:a3 withObject:v5];
    v5 = [*(a1 + 48) addObject:v8];
    v6 = v8;
  }

  return MEMORY[0x2821F96F8](v5, v6);
}

@end