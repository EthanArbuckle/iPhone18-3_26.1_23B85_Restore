@interface SBHScreenTypeLookup
@end

@implementation SBHScreenTypeLookup

uint64_t ___SBHScreenTypeLookup_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  SBHGetScreenSpecification(a2, &v12);
  v10[0] = v12;
  v10[1] = v13;
  v11 = v14;
  v6 = *(a1 + 64);
  v8[0] = *(a1 + 48);
  v8[1] = v6;
  v9 = *(a1 + 80);
  result = SBHScreenSpecificationEqualToScreenSpecification(v10, v8);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

@end