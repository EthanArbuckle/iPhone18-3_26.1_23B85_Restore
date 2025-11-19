@interface SBMigGetBatteryUsageTimesInSeconds
@end

@implementation SBMigGetBatteryUsageTimesInSeconds

uint64_t ___SBMigGetBatteryUsageTimesInSeconds_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 80);
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 100);
  v10[0] = *(a1 + 84);
  v10[1] = v8;
  result = v4(v2, v3, v5, v6, v7, v10);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end