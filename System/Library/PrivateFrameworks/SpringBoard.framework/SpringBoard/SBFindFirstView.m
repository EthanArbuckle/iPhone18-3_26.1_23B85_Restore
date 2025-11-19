@interface SBFindFirstView
@end

@implementation SBFindFirstView

uint64_t ___SBFindFirstView_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  NSClassFromString(v2);
  LOBYTE(v2) = objc_opt_isKindOfClass();

  return v2 & 1;
}

@end