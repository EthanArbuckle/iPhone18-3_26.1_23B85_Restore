@interface CopySoftStopApplier
@end

@implementation CopySoftStopApplier

double ___CopySoftStopApplier_block_invoke(uint64_t a1, uint64_t a2, double *a3, double *a4)
{
  *a4 = *a4 + (*(a2 + 8) - *a4) * 0.01;
  result = *a3 * 0.99;
  *a3 = result;
  return result;
}

@end