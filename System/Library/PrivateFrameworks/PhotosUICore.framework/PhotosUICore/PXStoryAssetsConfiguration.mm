@interface PXStoryAssetsConfiguration
- (BOOL)isEqual:(id)equal;
- (PXStoryAssetsConfiguration)initWithKeyAsset:(id)asset curatedAssets:(id)assets allAssets:(id)allAssets;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXStoryAssetsConfiguration

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  keyAsset = [(PXStoryAssetsConfiguration *)self keyAsset];
  firstObject = [keyAsset firstObject];
  curatedAssets = [(PXStoryAssetsConfiguration *)self curatedAssets];
  v8 = [curatedAssets count];
  allAssets = [(PXStoryAssetsConfiguration *)self allAssets];
  v10 = [v3 initWithFormat:@"<%@ %p; key: %@; curated count: %ld; all count: %ld>", v4, self, firstObject, v8, objc_msgSend(allAssets, "count")];

  return v10;
}

- (unint64_t)hash
{
  keyAsset = [(PXStoryAssetsConfiguration *)self keyAsset];
  v4 = [keyAsset hash];
  curatedAssets = [(PXStoryAssetsConfiguration *)self curatedAssets];
  v6 = [curatedAssets hash] ^ v4;
  allAssets = [(PXStoryAssetsConfiguration *)self allAssets];
  v8 = [allAssets hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    keyAsset = [(PXStoryAssetsConfiguration *)self keyAsset];
    keyAsset2 = [v5 keyAsset];
    if (keyAsset == keyAsset2 || [keyAsset isEqual:keyAsset2])
    {
      curatedAssets = [(PXStoryAssetsConfiguration *)self curatedAssets];
      curatedAssets2 = [v5 curatedAssets];
      if (curatedAssets == curatedAssets2 || [curatedAssets isEqual:curatedAssets2])
      {
        allAssets = [(PXStoryAssetsConfiguration *)self allAssets];
        allAssets2 = [v5 allAssets];
        if (allAssets == allAssets2)
        {
          v12 = 1;
        }

        else
        {
          v12 = [allAssets isEqual:allAssets2];
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (PXStoryAssetsConfiguration)initWithKeyAsset:(id)asset curatedAssets:(id)assets allAssets:(id)allAssets
{
  assetCopy = asset;
  assetsCopy = assets;
  allAssetsCopy = allAssets;
  v15.receiver = self;
  v15.super_class = PXStoryAssetsConfiguration;
  v12 = [(PXStoryAssetsConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_keyAsset, asset);
    objc_storeStrong(&v13->_curatedAssets, assets);
    objc_storeStrong(&v13->_allAssets, allAssets);
  }

  return v13;
}

@end