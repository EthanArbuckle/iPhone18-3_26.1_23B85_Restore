@interface MAAutoAssetSelector
- (BOOL)isFullAssetSelector;
@end

@implementation MAAutoAssetSelector

- (BOOL)isFullAssetSelector
{
  v3 = [(MAAutoAssetSelector *)self assetType];
  if (v3)
  {
    v4 = v3;
    v5 = [(MAAutoAssetSelector *)self assetSpecifier];
    if (v5)
    {
      v6 = v5;
      v7 = [(MAAutoAssetSelector *)self assetVersion];

      if (v7)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  if (__isPlatformVersionAtLeast(2, 18, 4, 0))
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(MAAutoAssetSelector *)self setAtomicInstanceUUID];

      if (v8)
      {
        return 1;
      }
    }
  }

  return 0;
}

@end