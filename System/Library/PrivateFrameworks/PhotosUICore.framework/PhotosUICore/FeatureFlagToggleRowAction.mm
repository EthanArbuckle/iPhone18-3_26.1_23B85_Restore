@interface FeatureFlagToggleRowAction
@end

@implementation FeatureFlagToggleRowAction

uint64_t ___FeatureFlagToggleRowAction_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [@"Toggle " stringByAppendingString:v4];
  v7 = [@"Use ffctl or Internal Settings to toggle PhotosGoldilocks/" stringByAppendingString:*(a1 + 32)];
  _PresentAlert(v6, v7, v5);

  return 1;
}

@end