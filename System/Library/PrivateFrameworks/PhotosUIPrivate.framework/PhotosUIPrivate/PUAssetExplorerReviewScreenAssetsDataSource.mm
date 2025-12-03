@interface PUAssetExplorerReviewScreenAssetsDataSource
- (PUAssetExplorerReviewScreenAssetsDataSource)initWithDataSource:(id)source substitutedAssets:(id)assets;
- (id)assetCollectionAtIndexPath:(id)path;
- (id)assetReferenceAtIndexPath:(id)path;
- (id)badgeInfoPromiseForAssetAtIndexPath:(id)path spatialPresentationEnabled:(BOOL)enabled;
- (id)identifier;
- (id)indexPathForAssetCollection:(id)collection;
- (id)indexPathForAssetReference:(id)reference;
- (int64_t)numberOfSubItemsAtIndexPath:(id)path;
@end

@implementation PUAssetExplorerReviewScreenAssetsDataSource

- (id)badgeInfoPromiseForAssetAtIndexPath:(id)path spatialPresentationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  pathCopy = path;
  _originalDataSource = [(PUAssetExplorerReviewScreenAssetsDataSource *)self _originalDataSource];
  v8 = [_originalDataSource badgeInfoPromiseForAssetAtIndexPath:pathCopy spatialPresentationEnabled:enabledCopy];

  return v8;
}

- (id)indexPathForAssetCollection:(id)collection
{
  collectionCopy = collection;
  _originalDataSource = [(PUAssetExplorerReviewScreenAssetsDataSource *)self _originalDataSource];
  v6 = [_originalDataSource indexPathForAssetCollection:collectionCopy];

  return v6;
}

- (id)assetCollectionAtIndexPath:(id)path
{
  pathCopy = path;
  _originalDataSource = [(PUAssetExplorerReviewScreenAssetsDataSource *)self _originalDataSource];
  v6 = [_originalDataSource assetCollectionAtIndexPath:pathCopy];

  return v6;
}

- (id)indexPathForAssetReference:(id)reference
{
  referenceCopy = reference;
  v5 = referenceCopy;
  if (referenceCopy && ([referenceCopy dataSourceIdentifier], v6 = objc_claimAutoreleasedReturnValue(), -[PUAssetExplorerReviewScreenAssetsDataSource identifier](self, "identifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqual:", v7), v7, v6, !v8))
  {
    _originalDataSource = [(PUAssetExplorerReviewScreenAssetsDataSource *)self _originalDataSource];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      originalAssetReference = [v5 originalAssetReference];
      indexPath = [_originalDataSource indexPathForAssetReference:originalAssetReference];
    }

    else
    {
      indexPath = [_originalDataSource indexPathForAssetReference:v5];
    }
  }

  else
  {
    indexPath = [v5 indexPath];
  }

  return indexPath;
}

- (id)assetReferenceAtIndexPath:(id)path
{
  pathCopy = path;
  _assetReferenceByIndexPathCache = [(PUAssetExplorerReviewScreenAssetsDataSource *)self _assetReferenceByIndexPathCache];
  v6 = [_assetReferenceByIndexPathCache objectForKey:pathCopy];
  if (!v6)
  {
    _originalDataSource = [(PUAssetExplorerReviewScreenAssetsDataSource *)self _originalDataSource];
    v7 = [_originalDataSource assetReferenceAtIndexPath:pathCopy];
    asset = [v7 asset];
    uuid = [asset uuid];
    _substitutedAssetsByUUID = [(PUAssetExplorerReviewScreenAssetsDataSource *)self _substitutedAssetsByUUID];
    v11 = [_substitutedAssetsByUUID objectForKeyedSubscript:uuid];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = asset;
    }

    v14 = v13;
    identifier = [(PUAssetExplorerReviewScreenAssetsDataSource *)self identifier];
    v6 = [[PUAssetExplorerReviewScreenAssetsDataSourceAssetReference alloc] initWithOriginalAssetReference:v7 asset:v14 dataSourceIdentifier:identifier];

    [_assetReferenceByIndexPathCache setObject:v6 forKey:pathCopy];
  }

  return v6;
}

- (int64_t)numberOfSubItemsAtIndexPath:(id)path
{
  pathCopy = path;
  _originalDataSource = [(PUAssetExplorerReviewScreenAssetsDataSource *)self _originalDataSource];
  v6 = [_originalDataSource numberOfSubItemsAtIndexPath:pathCopy];

  return v6;
}

- (id)identifier
{
  v4.receiver = self;
  v4.super_class = PUAssetExplorerReviewScreenAssetsDataSource;
  identifier = [(PUTilingDataSource *)&v4 identifier];

  return identifier;
}

- (PUAssetExplorerReviewScreenAssetsDataSource)initWithDataSource:(id)source substitutedAssets:(id)assets
{
  v31 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  assetsCopy = assets;
  v29.receiver = self;
  v29.super_class = PUAssetExplorerReviewScreenAssetsDataSource;
  v9 = [(PUTilingDataSource *)&v29 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->__originalDataSource, source);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = assetsCopy;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          uuid = [v17 uuid];
          [v11 setObject:v17 forKeyedSubscript:uuid];
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v14);
    }

    v19 = [v11 copy];
    substitutedAssetsByUUID = v10->__substitutedAssetsByUUID;
    v10->__substitutedAssetsByUUID = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    assetReferenceByIndexPathCache = v10->__assetReferenceByIndexPathCache;
    v10->__assetReferenceByIndexPathCache = v21;

    v23 = v10;
  }

  return v10;
}

@end