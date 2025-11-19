@interface UIHypersphere
@end

@implementation UIHypersphere

uint64_t __31___UIHypersphere_copyWithZone___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _center];
  [*(a1 + 32) _dimensions];

  return cblas_dcopy_NEWLAPACK();
}

@end