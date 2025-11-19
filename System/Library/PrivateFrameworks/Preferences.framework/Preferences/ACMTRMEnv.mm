@interface ACMTRMEnv
@end

@implementation ACMTRMEnv

uint64_t __ACMTRMEnv_Get_block_invoke(uint64_t result, _DWORD *a2, uint64_t a3)
{
  v3 = -5;
  if (a2 && a3 == 4)
  {
    v3 = 0;
    **(result + 40) = *a2;
  }

  *(*(*(result + 32) + 8) + 24) = v3;
  return result;
}

@end