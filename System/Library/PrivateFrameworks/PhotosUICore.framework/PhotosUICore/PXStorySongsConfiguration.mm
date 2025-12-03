@interface PXStorySongsConfiguration
- (BOOL)isEqual:(id)equal;
- (PXStorySongsConfiguration)initWithCuratedAudioAssets:(id)assets fallbackCuratedAssets:(id)curatedAssets currentAsset:(id)asset;
- (id)description;
- (id)previewConfiguration;
- (unint64_t)hash;
@end

@implementation PXStorySongsConfiguration

- (id)previewConfiguration
{
  curatedAudioAssets = [(PXStorySongsConfiguration *)self curatedAudioAssets];
  v4 = PXAudioAssetFetchResultMappingFetchResult(curatedAudioAssets, &__block_literal_global_113295);

  currentAsset = [(PXStorySongsConfiguration *)self currentAsset];
  previewAudioAsset = [currentAsset previewAudioAsset];

  v7 = [[PXStorySongsConfiguration alloc] initWithCuratedAudioAssets:v4 currentAsset:previewAudioAsset];

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  curatedAudioAssets = [(PXStorySongsConfiguration *)self curatedAudioAssets];
  v6 = [curatedAudioAssets count];
  fallbackCuratedAssets = [(PXStorySongsConfiguration *)self fallbackCuratedAssets];
  v8 = [fallbackCuratedAssets count];
  currentAsset = [(PXStorySongsConfiguration *)self currentAsset];
  v10 = PXAudioAssetDescription(currentAsset);
  v11 = [v3 initWithFormat:@"<%@ %p; curated: %li; fallbackCurated: %li, current: %@>", v4, self, v6, v8, v10];

  return v11;
}

- (unint64_t)hash
{
  curatedAudioAssets = [(PXStorySongsConfiguration *)self curatedAudioAssets];
  v3 = [curatedAudioAssets hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      curatedAudioAssets = [(PXStorySongsConfiguration *)self curatedAudioAssets];
      curatedAudioAssets2 = [(PXStorySongsConfiguration *)v5 curatedAudioAssets];
      if (curatedAudioAssets == curatedAudioAssets2 || [curatedAudioAssets isEqual:curatedAudioAssets2])
      {
        fallbackCuratedAssets = [(PXStorySongsConfiguration *)self fallbackCuratedAssets];
        fallbackCuratedAssets2 = [(PXStorySongsConfiguration *)v5 fallbackCuratedAssets];
        if (fallbackCuratedAssets == fallbackCuratedAssets2 || [fallbackCuratedAssets isEqual:fallbackCuratedAssets2])
        {
          currentAsset = [(PXStorySongsConfiguration *)self currentAsset];
          currentAsset2 = [(PXStorySongsConfiguration *)v5 currentAsset];
          if (currentAsset == currentAsset2)
          {
            v12 = 1;
          }

          else
          {
            v12 = [currentAsset isEqual:currentAsset2];
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
  }

  return v12;
}

- (PXStorySongsConfiguration)initWithCuratedAudioAssets:(id)assets fallbackCuratedAssets:(id)curatedAssets currentAsset:(id)asset
{
  assetsCopy = assets;
  curatedAssetsCopy = curatedAssets;
  assetCopy = asset;
  v15.receiver = self;
  v15.super_class = PXStorySongsConfiguration;
  v12 = [(PXStorySongsConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_curatedAudioAssets, assets);
    objc_storeStrong(&v13->_fallbackCuratedAssets, curatedAssets);
    objc_storeStrong(&v13->_currentAsset, asset);
  }

  return v13;
}

@end