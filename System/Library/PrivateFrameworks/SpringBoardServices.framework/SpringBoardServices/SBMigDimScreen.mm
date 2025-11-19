@interface SBMigDimScreen
@end

@implementation SBMigDimScreen

uint64_t ___SBMigDimScreen_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 84);
  v5 = *(a1 + 68);
  v7[0] = *(a1 + 52);
  v7[1] = v5;
  result = v2(v3, v4, v7);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end