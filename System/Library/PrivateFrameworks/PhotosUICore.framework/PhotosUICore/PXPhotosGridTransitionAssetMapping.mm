@interface PXPhotosGridTransitionAssetMapping
- (void)enumerateTransitionAssetsUsingBlock:(id *)block;
@end

@implementation PXPhotosGridTransitionAssetMapping

- (void)enumerateTransitionAssetsUsingBlock:(id *)block
{
  v9 = a2;
  if (block && [block[1] count])
  {
    v3 = 0;
    do
    {
      v4 = [block[4] objectAtIndexedSubscript:v3];
      null = [MEMORY[0x1E695DFB0] null];

      if (v4 != null)
      {
        v6 = [block[1] objectAtIndexedSubscript:v3];
        v7 = [block[2] objectAtIndexedSubscript:v3];
        v8 = [block[3] objectAtIndexedSubscript:v3];
        v9[2](v9, v6, v7, v8, v4);
      }

      ++v3;
    }

    while (v3 < [block[1] count]);
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