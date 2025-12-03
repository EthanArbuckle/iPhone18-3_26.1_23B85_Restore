@interface PUAssetsDataSource
+ (PUAssetsDataSource)emptyDataSource;
- (NSIndexPath)firstItemIndexPath;
- (NSIndexPath)lastItemIndexPath;
- (PUAssetReference)startingAssetReference;
- (id)assetAtIndexPath:(id)path;
- (id)assetCollectionAtIndexPath:(id)path;
- (id)assetReferenceAtIndexPath:(id)path;
- (id)assetReferenceForAssetReference:(id)reference;
- (id)badgeInfoPromiseForAssetAtIndexPath:(id)path spatialPresentationEnabled:(BOOL)enabled;
- (id)convertIndexPath:(id)path fromAssetsDataSource:(id)source;
- (id)indexPathForAssetCollection:(id)collection;
- (id)indexPathForAssetReference:(id)reference;
- (int64_t)numberOfAssetsWithMaximum:(int64_t)maximum;
@end

@implementation PUAssetsDataSource

+ (PUAssetsDataSource)emptyDataSource
{
  if (emptyDataSource_onceToken != -1)
  {
    dispatch_once(&emptyDataSource_onceToken, &__block_literal_global_11697);
  }

  v3 = emptyDataSource__sharedEmptyDataSource;

  return v3;
}

uint64_t __37__PUAssetsDataSource_emptyDataSource__block_invoke()
{
  v0 = objc_alloc_init(_PUEmptyAssetsDataSource);
  v1 = emptyDataSource__sharedEmptyDataSource;
  emptyDataSource__sharedEmptyDataSource = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (int64_t)numberOfAssetsWithMaximum:(int64_t)maximum
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__PUAssetsDataSource_numberOfAssetsWithMaximum___block_invoke;
  v8[3] = &unk_1E7B75820;
  v8[4] = &v9;
  v8[5] = maximum;
  [(PUTilingDataSource *)self enumerateIndexPathsStartingAtIndexPath:v5 reverseDirection:0 usingBlock:v8];

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __48__PUAssetsDataSource_numberOfAssetsWithMaximum___block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (++*(*(*(result + 32) + 8) + 24) >= *(result + 40))
  {
    *a3 = 1;
  }

  return result;
}

- (NSIndexPath)lastItemIndexPath
{
  pu_rootIndexPath = [MEMORY[0x1E696AC88] pu_rootIndexPath];
  v4 = [(PUTilingDataSource *)self numberOfSubItemsAtIndexPath:pu_rootIndexPath];

  while (v4-- >= 1)
  {
    v6 = [MEMORY[0x1E696AC88] indexPathWithIndex:v4];
    v7 = [(PUTilingDataSource *)self numberOfSubItemsAtIndexPath:v6];

    if (v7 >= 1)
    {
      v8 = [MEMORY[0x1E696AC88] indexPathForItem:v7 - 1 inSection:v4];
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (NSIndexPath)firstItemIndexPath
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__11736;
  v11 = __Block_byref_object_dispose__11737;
  v12 = 0;
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__PUAssetsDataSource_firstItemIndexPath__block_invoke;
  v6[3] = &unk_1E7B79E20;
  v6[4] = &v7;
  [(PUTilingDataSource *)self enumerateIndexPathsStartingAtIndexPath:v3 reverseDirection:0 usingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (PUAssetReference)startingAssetReference
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__11736;
  v11 = __Block_byref_object_dispose__11737;
  v12 = 0;
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__PUAssetsDataSource_startingAssetReference__block_invoke;
  v6[3] = &unk_1E7B79E20;
  v6[4] = &v7;
  [(PUTilingDataSource *)self enumerateIndexPathsStartingAtIndexPath:v3 reverseDirection:0 usingBlock:v6];

  if (v8[5])
  {
    v4 = [(PUAssetsDataSource *)self assetReferenceAtIndexPath:?];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)convertIndexPath:(id)path fromAssetsDataSource:(id)source
{
  pathCopy = path;
  sourceCopy = source;
  if ([pathCopy length] == 1)
  {
    v8 = [sourceCopy assetCollectionAtIndexPath:pathCopy];
    if (v8)
    {
      v9 = [(PUAssetsDataSource *)self indexPathForAssetCollection:v8];
LABEL_7:
      v10 = v9;
LABEL_9:

      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if ([pathCopy length] == 2)
  {
    v8 = [sourceCopy assetReferenceAtIndexPath:pathCopy];
    if (v8)
    {
      v9 = [(PUAssetsDataSource *)self indexPathForAssetReference:v8];
      goto LABEL_7;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)assetAtIndexPath:(id)path
{
  v3 = [(PUAssetsDataSource *)self assetReferenceAtIndexPath:path];
  asset = [v3 asset];

  return asset;
}

- (id)assetReferenceForAssetReference:(id)reference
{
  referenceCopy = reference;
  v5 = referenceCopy;
  if (referenceCopy && ([referenceCopy dataSourceIdentifier], v6 = objc_claimAutoreleasedReturnValue(), -[PUTilingDataSource identifier](self, "identifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqual:", v7), v7, v6, !v8))
  {
    v10 = [(PUAssetsDataSource *)self indexPathForAssetReference:v5];
    if (v10)
    {
      v9 = [(PUAssetsDataSource *)self assetReferenceAtIndexPath:v10];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (id)badgeInfoPromiseForAssetAtIndexPath:(id)path spatialPresentationEnabled:(BOOL)enabled
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetsDataSource.m" lineNumber:63 description:{@"Concrete subclass must implement %@", v7}];

  return 0;
}

- (id)indexPathForAssetCollection:(id)collection
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetsDataSource.m" lineNumber:58 description:{@"Concrete subclass must implement %@", v6}];

  return 0;
}

- (id)assetCollectionAtIndexPath:(id)path
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetsDataSource.m" lineNumber:53 description:{@"Concrete subclass must implement %@", v6}];

  return 0;
}

- (id)indexPathForAssetReference:(id)reference
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetsDataSource.m" lineNumber:48 description:{@"Concrete subclass must implement %@", v6}];

  return 0;
}

- (id)assetReferenceAtIndexPath:(id)path
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetsDataSource.m" lineNumber:43 description:{@"Concrete subclass must implement %@", v6}];

  return 0;
}

@end