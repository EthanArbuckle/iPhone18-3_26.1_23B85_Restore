@interface _PXAudioAssetSingleItemFetchResult
- (BOOL)containsObject:(id)a3;
- (_PXAudioAssetSingleItemFetchResult)initWithAsset:(id)a3;
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectsAtIndexes:(id)a3;
- (void)enumerateObjectsUsingBlock:(id)a3;
@end

@implementation _PXAudioAssetSingleItemFetchResult

- (void)enumerateObjectsUsingBlock:(id)a3
{
  asset = self->_asset;
  if (asset)
  {
    v4 = 0;
    (*(a3 + 2))(a3, asset, 0, &v4);
  }
}

- (BOOL)containsObject:(id)a3
{
  asset = self->_asset;
  if (asset == a3)
  {
    return 1;
  }

  else
  {
    return [a3 isEqual:asset];
  }
}

- (id)objectsAtIndexes:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 count] != 1 || !objc_msgSend(v5, "containsIndex:", 0) || (asset = self->_asset) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXAudioAssetFetchResult.m" lineNumber:229 description:{@"Invalid parameter not satisfying: %@", @"indexes.count == 1 && [indexes containsIndex:0] && _asset != nil"}];

    asset = self->_asset;
  }

  v10[0] = asset;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  return v7;
}

- (id)objectAtIndex:(unint64_t)a3
{
  if (a3 || (asset = self->_asset) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXAudioAssetFetchResult.m" lineNumber:220 description:{@"Invalid parameter not satisfying: %@", @"index == 0 && _asset != nil"}];

    asset = self->_asset;
  }

  return asset;
}

- (_PXAudioAssetSingleItemFetchResult)initWithAsset:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _PXAudioAssetSingleItemFetchResult;
  v6 = [(_PXAudioAssetSingleItemFetchResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asset, a3);
  }

  return v7;
}

@end