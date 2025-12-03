@interface MAAutoAssetSelector
- (BOOL)isFullAssetSelector;
@end

@implementation MAAutoAssetSelector

- (BOOL)isFullAssetSelector
{
  assetType = [(MAAutoAssetSelector *)self assetType];
  if (assetType)
  {
    v4 = assetType;
    assetSpecifier = [(MAAutoAssetSelector *)self assetSpecifier];
    if (assetSpecifier)
    {
      v6 = assetSpecifier;
      assetVersion = [(MAAutoAssetSelector *)self assetVersion];

      if (assetVersion)
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
      setAtomicInstanceUUID = [(MAAutoAssetSelector *)self setAtomicInstanceUUID];

      if (setAtomicInstanceUUID)
      {
        return 1;
      }
    }
  }

  return 0;
}

@end