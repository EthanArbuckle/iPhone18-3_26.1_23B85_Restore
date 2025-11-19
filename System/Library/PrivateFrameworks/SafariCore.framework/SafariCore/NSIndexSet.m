@interface NSIndexSet
@end

@implementation NSIndexSet

uint64_t __62__NSIndexSet_SafariCoreExtras__safari_intersectsWithIndexSet___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) intersectsIndexesInRange:{a2, a3}];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

@end