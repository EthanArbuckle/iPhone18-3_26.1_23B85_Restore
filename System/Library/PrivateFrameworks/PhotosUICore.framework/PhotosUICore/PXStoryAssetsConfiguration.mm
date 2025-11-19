@interface PXStoryAssetsConfiguration
- (BOOL)isEqual:(id)a3;
- (PXStoryAssetsConfiguration)initWithKeyAsset:(id)a3 curatedAssets:(id)a4 allAssets:(id)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXStoryAssetsConfiguration

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(PXStoryAssetsConfiguration *)self keyAsset];
  v6 = [v5 firstObject];
  v7 = [(PXStoryAssetsConfiguration *)self curatedAssets];
  v8 = [v7 count];
  v9 = [(PXStoryAssetsConfiguration *)self allAssets];
  v10 = [v3 initWithFormat:@"<%@ %p; key: %@; curated count: %ld; all count: %ld>", v4, self, v6, v8, objc_msgSend(v9, "count")];

  return v10;
}

- (unint64_t)hash
{
  v3 = [(PXStoryAssetsConfiguration *)self keyAsset];
  v4 = [v3 hash];
  v5 = [(PXStoryAssetsConfiguration *)self curatedAssets];
  v6 = [v5 hash] ^ v4;
  v7 = [(PXStoryAssetsConfiguration *)self allAssets];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PXStoryAssetsConfiguration *)self keyAsset];
    v7 = [v5 keyAsset];
    if (v6 == v7 || [v6 isEqual:v7])
    {
      v8 = [(PXStoryAssetsConfiguration *)self curatedAssets];
      v9 = [v5 curatedAssets];
      if (v8 == v9 || [v8 isEqual:v9])
      {
        v10 = [(PXStoryAssetsConfiguration *)self allAssets];
        v11 = [v5 allAssets];
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

  return v12;
}

- (PXStoryAssetsConfiguration)initWithKeyAsset:(id)a3 curatedAssets:(id)a4 allAssets:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PXStoryAssetsConfiguration;
  v12 = [(PXStoryAssetsConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_keyAsset, a3);
    objc_storeStrong(&v13->_curatedAssets, a4);
    objc_storeStrong(&v13->_allAssets, a5);
  }

  return v13;
}

@end