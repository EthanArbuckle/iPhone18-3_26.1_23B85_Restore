@interface PUAssetExplorerReviewScreenAssetsDataSource
- (PUAssetExplorerReviewScreenAssetsDataSource)initWithDataSource:(id)a3 substitutedAssets:(id)a4;
- (id)assetCollectionAtIndexPath:(id)a3;
- (id)assetReferenceAtIndexPath:(id)a3;
- (id)badgeInfoPromiseForAssetAtIndexPath:(id)a3 spatialPresentationEnabled:(BOOL)a4;
- (id)identifier;
- (id)indexPathForAssetCollection:(id)a3;
- (id)indexPathForAssetReference:(id)a3;
- (int64_t)numberOfSubItemsAtIndexPath:(id)a3;
@end

@implementation PUAssetExplorerReviewScreenAssetsDataSource

- (id)badgeInfoPromiseForAssetAtIndexPath:(id)a3 spatialPresentationEnabled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PUAssetExplorerReviewScreenAssetsDataSource *)self _originalDataSource];
  v8 = [v7 badgeInfoPromiseForAssetAtIndexPath:v6 spatialPresentationEnabled:v4];

  return v8;
}

- (id)indexPathForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(PUAssetExplorerReviewScreenAssetsDataSource *)self _originalDataSource];
  v6 = [v5 indexPathForAssetCollection:v4];

  return v6;
}

- (id)assetCollectionAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PUAssetExplorerReviewScreenAssetsDataSource *)self _originalDataSource];
  v6 = [v5 assetCollectionAtIndexPath:v4];

  return v6;
}

- (id)indexPathForAssetReference:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 dataSourceIdentifier], v6 = objc_claimAutoreleasedReturnValue(), -[PUAssetExplorerReviewScreenAssetsDataSource identifier](self, "identifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqual:", v7), v7, v6, !v8))
  {
    v10 = [(PUAssetExplorerReviewScreenAssetsDataSource *)self _originalDataSource];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v5 originalAssetReference];
      v9 = [v10 indexPathForAssetReference:v11];
    }

    else
    {
      v9 = [v10 indexPathForAssetReference:v5];
    }
  }

  else
  {
    v9 = [v5 indexPath];
  }

  return v9;
}

- (id)assetReferenceAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PUAssetExplorerReviewScreenAssetsDataSource *)self _assetReferenceByIndexPathCache];
  v6 = [v5 objectForKey:v4];
  if (!v6)
  {
    v17 = [(PUAssetExplorerReviewScreenAssetsDataSource *)self _originalDataSource];
    v7 = [v17 assetReferenceAtIndexPath:v4];
    v8 = [v7 asset];
    v9 = [v8 uuid];
    v10 = [(PUAssetExplorerReviewScreenAssetsDataSource *)self _substitutedAssetsByUUID];
    v11 = [v10 objectForKeyedSubscript:v9];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    v14 = v13;
    v15 = [(PUAssetExplorerReviewScreenAssetsDataSource *)self identifier];
    v6 = [[PUAssetExplorerReviewScreenAssetsDataSourceAssetReference alloc] initWithOriginalAssetReference:v7 asset:v14 dataSourceIdentifier:v15];

    [v5 setObject:v6 forKey:v4];
  }

  return v6;
}

- (int64_t)numberOfSubItemsAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PUAssetExplorerReviewScreenAssetsDataSource *)self _originalDataSource];
  v6 = [v5 numberOfSubItemsAtIndexPath:v4];

  return v6;
}

- (id)identifier
{
  v4.receiver = self;
  v4.super_class = PUAssetExplorerReviewScreenAssetsDataSource;
  v2 = [(PUTilingDataSource *)&v4 identifier];

  return v2;
}

- (PUAssetExplorerReviewScreenAssetsDataSource)initWithDataSource:(id)a3 substitutedAssets:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v29.receiver = self;
  v29.super_class = PUAssetExplorerReviewScreenAssetsDataSource;
  v9 = [(PUTilingDataSource *)&v29 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->__originalDataSource, a3);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = v8;
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
          v18 = [v17 uuid];
          [v11 setObject:v17 forKeyedSubscript:v18];
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