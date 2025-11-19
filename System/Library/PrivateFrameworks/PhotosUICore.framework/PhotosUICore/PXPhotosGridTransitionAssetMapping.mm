@interface PXPhotosGridTransitionAssetMapping
- (void)enumerateTransitionAssetsUsingBlock:(id *)a1;
@end

@implementation PXPhotosGridTransitionAssetMapping

- (void)enumerateTransitionAssetsUsingBlock:(id *)a1
{
  v9 = a2;
  if (a1 && [a1[1] count])
  {
    v3 = 0;
    do
    {
      v4 = [a1[4] objectAtIndexedSubscript:v3];
      v5 = [MEMORY[0x1E695DFB0] null];

      if (v4 != v5)
      {
        v6 = [a1[1] objectAtIndexedSubscript:v3];
        v7 = [a1[2] objectAtIndexedSubscript:v3];
        v8 = [a1[3] objectAtIndexedSubscript:v3];
        v9[2](v9, v6, v7, v8, v4);
      }

      ++v3;
    }

    while (v3 < [a1[1] count]);
  }
}

uint64_t __61__PXPhotosGridTransitionAssetMapping_transitionViewForAsset___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 asset];
  v4 = [v3 uuid];
  v5 = [*(a1 + 32) uuid];
  v6 = [v4 isEqual:v5];

  return v6;
}

@end