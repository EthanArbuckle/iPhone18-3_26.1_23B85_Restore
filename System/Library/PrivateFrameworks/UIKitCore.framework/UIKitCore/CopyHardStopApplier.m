@interface CopyHardStopApplier
@end

@implementation CopyHardStopApplier

double ___CopyHardStopApplier_block_invoke(uint64_t a1, uint64_t a2, void *a3, double *a4)
{
  result = *(a2 + 8);
  *a4 = result;
  *a3 = 0;
  return result;
}

@end