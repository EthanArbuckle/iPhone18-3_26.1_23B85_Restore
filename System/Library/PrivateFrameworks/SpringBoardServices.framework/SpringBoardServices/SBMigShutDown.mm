@interface SBMigShutDown
@end

@implementation SBMigShutDown

uint64_t ___SBMigShutDown_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 60);
  v5[0] = *(a1 + 44);
  v5[1] = v3;
  return v1(v2, v5);
}

@end