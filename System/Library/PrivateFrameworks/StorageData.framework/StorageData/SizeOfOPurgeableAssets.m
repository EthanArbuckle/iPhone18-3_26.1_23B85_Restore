@interface SizeOfOPurgeableAssets
@end

@implementation SizeOfOPurgeableAssets

uint64_t ___SizeOfOPurgeableAssets_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 size];
  if (v4 >= 1)
  {
    v5 = v4;
    if ([v3 purgeabilityScoreAtUrgency:3])
    {
      *(*(*(a1 + 32) + 8) + 24) += v5;
    }
  }

  return 1;
}

@end