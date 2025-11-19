@interface _PXArrayDisplayAssetFetchResult
- (_PXArrayDisplayAssetFetchResult)initWithAssets:(id)a3;
- (unint64_t)countOfAssetsWithMediaType:(int64_t)a3;
@end

@implementation _PXArrayDisplayAssetFetchResult

- (unint64_t)countOfAssetsWithMediaType:(int64_t)a3
{
  assets = self->_assets;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62___PXArrayDisplayAssetFetchResult_countOfAssetsWithMediaType___block_invoke;
  v7[3] = &__block_descriptor_40_e33_B32__0___PXDisplayAsset__8Q16_B24l;
  v7[4] = a3;
  v4 = [(NSArray *)assets indexesOfObjectsPassingTest:v7];
  v5 = [v4 count];

  return v5;
}

- (_PXArrayDisplayAssetFetchResult)initWithAssets:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _PXArrayDisplayAssetFetchResult;
  v5 = [(_PXArrayDisplayAssetFetchResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    assets = v5->_assets;
    v5->_assets = v6;
  }

  return v5;
}

@end