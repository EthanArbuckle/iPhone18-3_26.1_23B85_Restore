@interface PXAssetEditOperationManager(AdditionalPerformersHook)
- (uint64_t)registerAdditionalPerformers;
@end

@implementation PXAssetEditOperationManager(AdditionalPerformersHook)

- (uint64_t)registerAdditionalPerformers
{
  [a1 registerPerformerClass:objc_opt_class() withPredicate:&__block_literal_global_50067];
  v2 = objc_opt_class();

  return [a1 registerPerformerClass:v2 withPredicate:&__block_literal_global_197];
}

@end