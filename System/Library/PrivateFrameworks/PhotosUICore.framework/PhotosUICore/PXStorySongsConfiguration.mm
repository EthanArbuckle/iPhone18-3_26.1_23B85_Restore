@interface PXStorySongsConfiguration
- (BOOL)isEqual:(id)a3;
- (PXStorySongsConfiguration)initWithCuratedAudioAssets:(id)a3 fallbackCuratedAssets:(id)a4 currentAsset:(id)a5;
- (id)description;
- (id)previewConfiguration;
- (unint64_t)hash;
@end

@implementation PXStorySongsConfiguration

- (id)previewConfiguration
{
  v3 = [(PXStorySongsConfiguration *)self curatedAudioAssets];
  v4 = PXAudioAssetFetchResultMappingFetchResult(v3, &__block_literal_global_113295);

  v5 = [(PXStorySongsConfiguration *)self currentAsset];
  v6 = [v5 previewAudioAsset];

  v7 = [[PXStorySongsConfiguration alloc] initWithCuratedAudioAssets:v4 currentAsset:v6];

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(PXStorySongsConfiguration *)self curatedAudioAssets];
  v6 = [v5 count];
  v7 = [(PXStorySongsConfiguration *)self fallbackCuratedAssets];
  v8 = [v7 count];
  v9 = [(PXStorySongsConfiguration *)self currentAsset];
  v10 = PXAudioAssetDescription(v9);
  v11 = [v3 initWithFormat:@"<%@ %p; curated: %li; fallbackCurated: %li, current: %@>", v4, self, v6, v8, v10];

  return v11;
}

- (unint64_t)hash
{
  v2 = [(PXStorySongsConfiguration *)self curatedAudioAssets];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXStorySongsConfiguration *)self curatedAudioAssets];
      v7 = [(PXStorySongsConfiguration *)v5 curatedAudioAssets];
      if (v6 == v7 || [v6 isEqual:v7])
      {
        v8 = [(PXStorySongsConfiguration *)self fallbackCuratedAssets];
        v9 = [(PXStorySongsConfiguration *)v5 fallbackCuratedAssets];
        if (v8 == v9 || [v8 isEqual:v9])
        {
          v10 = [(PXStorySongsConfiguration *)self currentAsset];
          v11 = [(PXStorySongsConfiguration *)v5 currentAsset];
          if (v10 == v11)
          {
            v12 = 1;
          }

          else
          {
            v12 = [v10 isEqual:v11];
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

- (PXStorySongsConfiguration)initWithCuratedAudioAssets:(id)a3 fallbackCuratedAssets:(id)a4 currentAsset:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PXStorySongsConfiguration;
  v12 = [(PXStorySongsConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_curatedAudioAssets, a3);
    objc_storeStrong(&v13->_fallbackCuratedAssets, a4);
    objc_storeStrong(&v13->_currentAsset, a5);
  }

  return v13;
}

@end