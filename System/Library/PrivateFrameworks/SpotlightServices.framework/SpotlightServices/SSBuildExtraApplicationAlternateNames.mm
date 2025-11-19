@interface SSBuildExtraApplicationAlternateNames
@end

@implementation SSBuildExtraApplicationAlternateNames

__n128 __SSBuildExtraApplicationAlternateNames_block_invoke(void *a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v4 = *(*(a1[4] + 8) + 24);
  if (v4 <= 5)
  {
    *(a1[5] + 8 * v4) = a2;
    v5 = (a1[6] + 24 * *(*(a1[4] + 8) + 24));
    result = *a4;
    v5[1].n128_u64[0] = a4[1].n128_u64[0];
    *v5 = result;
    ++*(*(a1[4] + 8) + 24);
  }

  return result;
}

@end