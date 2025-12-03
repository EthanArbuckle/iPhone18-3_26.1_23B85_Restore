@interface _PXAudioAssetSingleItemFetchResult
- (BOOL)containsObject:(id)object;
- (_PXAudioAssetSingleItemFetchResult)initWithAsset:(id)asset;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectsAtIndexes:(id)indexes;
- (void)enumerateObjectsUsingBlock:(id)block;
@end

@implementation _PXAudioAssetSingleItemFetchResult

- (void)enumerateObjectsUsingBlock:(id)block
{
  asset = self->_asset;
  if (asset)
  {
    v4 = 0;
    (*(block + 2))(block, asset, 0, &v4);
  }
}

- (BOOL)containsObject:(id)object
{
  asset = self->_asset;
  if (asset == object)
  {
    return 1;
  }

  else
  {
    return [object isEqual:asset];
  }
}

- (id)objectsAtIndexes:(id)indexes
{
  v10[1] = *MEMORY[0x1E69E9840];
  indexesCopy = indexes;
  if ([indexesCopy count] != 1 || !objc_msgSend(indexesCopy, "containsIndex:", 0) || (asset = self->_asset) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAudioAssetFetchResult.m" lineNumber:229 description:{@"Invalid parameter not satisfying: %@", @"indexes.count == 1 && [indexes containsIndex:0] && _asset != nil"}];

    asset = self->_asset;
  }

  v10[0] = asset;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  return v7;
}

- (id)objectAtIndex:(unint64_t)index
{
  if (index || (asset = self->_asset) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAudioAssetFetchResult.m" lineNumber:220 description:{@"Invalid parameter not satisfying: %@", @"index == 0 && _asset != nil"}];

    asset = self->_asset;
  }

  return asset;
}

- (_PXAudioAssetSingleItemFetchResult)initWithAsset:(id)asset
{
  assetCopy = asset;
  v9.receiver = self;
  v9.super_class = _PXAudioAssetSingleItemFetchResult;
  v6 = [(_PXAudioAssetSingleItemFetchResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asset, asset);
  }

  return v7;
}

@end