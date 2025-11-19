@interface STMutableStatusBarData
@end

@implementation STMutableStatusBarData

void __68__STMutableStatusBarData_Testing__subsetOfEntryKeys_withPercentage___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    [*(a1 + 40) addObject:v6];
    if ([*(a1 + 40) count] == *(a1 + 48))
    {
      *a4 = 1;
    }
  }
}

uint64_t __45__STMutableStatusBarData_Testing__legacyData__block_invoke(uint64_t a1, unsigned int a2, void *a3)
{
  if (a3)
  {
    v5 = [a3 isEnabled];
  }

  else
  {
    v5 = 0;
  }

  *(*(*(*(a1 + 32) + 8) + 24) + a2) = v5;
  return *(*(*(*(a1 + 32) + 8) + 24) + a2);
}

@end