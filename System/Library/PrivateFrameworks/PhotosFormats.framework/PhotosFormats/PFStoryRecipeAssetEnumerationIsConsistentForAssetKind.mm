@interface PFStoryRecipeAssetEnumerationIsConsistentForAssetKind
@end

@implementation PFStoryRecipeAssetEnumerationIsConsistentForAssetKind

void ___PFStoryRecipeAssetEnumerationIsConsistentForAssetKind_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 nextObject];
  v8 = [v7 isEqualToAsset:v6];

  if ((v8 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }
}

@end