@interface UIHyperAsymmetricExtender
@end

@implementation UIHyperAsymmetricExtender

uint64_t __43___UIHyperAsymmetricExtender_copyWithZone___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _extentBeyondMinimum];
  [*(a1 + 32) _dimensions];

  return cblas_dcopy_NEWLAPACK();
}

uint64_t __43___UIHyperAsymmetricExtender_copyWithZone___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _extentBeyondMaximum];
  [*(a1 + 32) _dimensions];

  return cblas_dcopy_NEWLAPACK();
}

@end