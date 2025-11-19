@interface PUJoiningAssetsDataSource
- (PUJoiningAssetsDataSource)initWithDataSources:(id)a3;
- (id)_assetsDataSourceForExternalIndexPath:(id)a3 outDataSourceIndex:(int64_t *)a4 outLocalIndexPath:(id *)a5;
- (id)_externalIndexPathForLocalIndexPath:(id)a3 inAssetsDataSource:(id)a4;
- (id)assetAtIndexPath:(id)a3;
- (id)assetCollectionAtIndexPath:(id)a3;
- (id)assetReferenceAtIndexPath:(id)a3;
- (id)badgeInfoPromiseForAssetAtIndexPath:(id)a3 spatialPresentationEnabled:(BOOL)a4;
- (id)containedAssetsDataSourceAtIndexPath:(id)a3;
- (id)indexPathForAssetCollection:(id)a3;
- (id)indexPathForAssetReference:(id)a3;
- (id)startingAssetReference;
- (int64_t)numberOfAssetsWithMaximum:(int64_t)a3;
- (int64_t)numberOfSubItemsAtIndexPath:(id)a3;
@end

@implementation PUJoiningAssetsDataSource

- (id)containedAssetsDataSourceAtIndexPath:(id)a3
{
  v6 = 0;
  v3 = [(PUJoiningAssetsDataSource *)self _assetsDataSourceForExternalIndexPath:a3 outDataSourceIndex:0 outLocalIndexPath:&v6];
  v4 = [v3 containedAssetsDataSourceAtIndexPath:v6];

  return v4;
}

- (int64_t)numberOfAssetsWithMaximum:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(PUJoiningAssetsDataSource *)self _dataSources];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = [*(*(&v12 + 1) + 8 * v9) numberOfAssetsWithMaximum:a3];
      v7 += v10;
      a3 -= v10;
      if (a3 < 1)
      {
        break;
      }

      if (v6 == ++v9)
      {
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)startingAssetReference
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(PUJoiningAssetsDataSource *)self _dataSources];
  v4 = [v3 reverseObjectEnumerator];

  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 startingAssetReference];
        if (v10)
        {
          v13 = v10;
          v14 = [v10 indexPath];
          v12 = [(PUJoiningAssetsDataSource *)self _externalIndexPathForLocalIndexPath:v14 inAssetsDataSource:v9];

          if (v12)
          {
            v11 = [(PUJoiningAssetsDataSource *)self assetReferenceAtIndexPath:v12];
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
  v12 = 0;
LABEL_13:

  return v11;
}

- (id)badgeInfoPromiseForAssetAtIndexPath:(id)a3 spatialPresentationEnabled:(BOOL)a4
{
  v4 = a4;
  v8 = 0;
  v5 = [(PUJoiningAssetsDataSource *)self _assetsDataSourceForExternalIndexPath:a3 outDataSourceIndex:0 outLocalIndexPath:&v8];
  v6 = [v5 badgeInfoPromiseForAssetAtIndexPath:v8 spatialPresentationEnabled:v4];

  return v6;
}

- (id)assetAtIndexPath:(id)a3
{
  v6 = 0;
  v3 = [(PUJoiningAssetsDataSource *)self _assetsDataSourceForExternalIndexPath:a3 outDataSourceIndex:0 outLocalIndexPath:&v6];
  v4 = [v3 assetAtIndexPath:v6];

  return v4;
}

- (id)indexPathForAssetCollection:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(PUJoiningAssetsDataSource *)self _dataSources];
  v6 = [v5 reverseObjectEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 indexPathForAssetCollection:v4];
        if (v12)
        {
          v14 = v12;
          v13 = [(PUJoiningAssetsDataSource *)self _externalIndexPathForLocalIndexPath:v12 inAssetsDataSource:v11];

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)assetCollectionAtIndexPath:(id)a3
{
  v6 = 0;
  v3 = [(PUJoiningAssetsDataSource *)self _assetsDataSourceForExternalIndexPath:a3 outDataSourceIndex:0 outLocalIndexPath:&v6];
  v4 = [v3 assetCollectionAtIndexPath:v6];

  return v4;
}

- (id)indexPathForAssetReference:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__37337;
  v47 = __Block_byref_object_dispose__37338;
  v48 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 dataSourceIdentifier];
    v7 = [(PUTilingDataSource *)self identifier];
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
      v9 = [v5 indexPath];
      v10 = v44[5];
      v44[5] = v9;
    }

    else
    {
      v10 = [v5 containedAssetReference];
      v18 = [v5 hintDataSourceIndex];
      v19 = [(PUJoiningAssetsDataSource *)self _dataSources];
      v20 = v18 < [v19 count];

      if (v20)
      {
        v21 = [(PUJoiningAssetsDataSource *)self _dataSources];
        v22 = [v21 objectAtIndexedSubscript:v18];
      }

      else
      {
        v22 = 0;
      }

      v23 = [v22 identifier];
      v24 = [v10 dataSourceIdentifier];
      v25 = [v23 isEqualToString:v24];

      if (v25)
      {
        v26 = [v10 indexPath];
        v27 = [(PUJoiningAssetsDataSource *)self _externalIndexPathForLocalIndexPath:v26 inAssetsDataSource:v22];
        v28 = v44[5];
        v44[5] = v27;
      }

      else
      {
        v29 = [v5 hintDataSourceIndex];
        v30 = [(PUJoiningAssetsDataSource *)self _dataSources];
        v31 = [v30 count];

        v32 = [(PUJoiningAssetsDataSource *)self _dataSources];
        if (v29 >= v31)
        {
          v29 = 0;
        }

        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __56__PUJoiningAssetsDataSource_indexPathForAssetReference___block_invoke;
        v39[3] = &unk_1E7B78A30;
        v41 = self;
        v42 = &v43;
        v40 = v10;
        [v32 px_enumerateObjectsFromIndex:v29 usingBlock:v39];

        v26 = v40;
      }
    }

LABEL_23:
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v11 = [(PUJoiningAssetsDataSource *)self _dataSources];
    v5 = [v11 reverseObjectEnumerator];

    v12 = [v5 countByEnumeratingWithState:&v35 objects:v49 count:16];
    if (v12)
    {
      v13 = *v36;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(v5);
          }

          v15 = *(*(&v35 + 1) + 8 * i);
          v10 = [v15 indexPathForAssetReference:v4];
          if (v10)
          {
            v16 = [(PUJoiningAssetsDataSource *)self _externalIndexPathForLocalIndexPath:v10 inAssetsDataSource:v15];
            v17 = v44[5];
            v44[5] = v16;

            goto LABEL_23;
          }
        }

        v12 = [v5 countByEnumeratingWithState:&v35 objects:v49 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }
  }

  v33 = v44[5];
  _Block_object_dispose(&v43, 8);

  return v33;
}

void __56__PUJoiningAssetsDataSource_indexPathForAssetReference___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 indexPathForAssetReference:*(a1 + 32)];
  if (v6)
  {
    v7 = [*(a1 + 40) _externalIndexPathForLocalIndexPath:v6 inAssetsDataSource:v10];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
  }
}

- (id)assetReferenceAtIndexPath:(id)a3
{
  v12 = 0;
  v13 = 0;
  v4 = a3;
  v5 = [(PUJoiningAssetsDataSource *)self _assetsDataSourceForExternalIndexPath:v4 outDataSourceIndex:&v13 outLocalIndexPath:&v12];
  v6 = [v5 assetReferenceAtIndexPath:v12];
  v7 = [PUJoiningAssetReference alloc];
  v8 = v13;
  v9 = [(PUTilingDataSource *)self identifier];
  v10 = [(PUJoiningAssetReference *)v7 initWithContainedAssetReference:v6 hintDataSourceIndex:v8 indexPath:v4 dataSourceIdentifier:v9];

  return v10;
}

- (int64_t)numberOfSubItemsAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AC88] pu_rootIndexPath];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [(PUJoiningAssetsDataSource *)self _totalNumberOfSections];
  }

  else
  {
    v10 = 0;
    v8 = [(PUJoiningAssetsDataSource *)self _assetsDataSourceForExternalIndexPath:v4 outDataSourceIndex:0 outLocalIndexPath:&v10];
    v7 = [v8 numberOfSubItemsAtIndexPath:v10];
  }

  return v7;
}

- (id)_externalIndexPathForLocalIndexPath:(id)a3 inAssetsDataSource:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PUJoiningAssetsDataSource *)self _containedDataSourceInfoByIdentifier];
  v9 = [v6 identifier];

  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = [v7 pu_indexPathByChangingIndexAtPosition:0 toIndex:{objc_msgSend(v10, "externalSections") + objc_msgSend(v7, "indexAtPosition:", 0)}];

  return v11;
}

- (id)_assetsDataSourceForExternalIndexPath:(id)a3 outDataSourceIndex:(int64_t *)a4 outLocalIndexPath:(id *)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [v8 indexAtPosition:0];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [(PUJoiningAssetsDataSource *)self _containedDataSourceInfos];
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v22 = a4;
    v12 = 0;
    v13 = *v24;
    while (2)
    {
      v14 = 0;
      v15 = v12;
      v12 += v11;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v23 + 1) + 8 * v14);
        v17 = [v16 externalSections];
        if (v9 >= v17 && v9 - v17 < v18)
        {
          v11 = [v16 assetsDataSource];
          if (a5)
          {
            v20 = [v8 pu_indexPathByChangingIndexAtPosition:0 toIndex:{v9 - objc_msgSend(v16, "externalSections")}];
            *a5 = v20;
          }

          if (v22)
          {
            *v22 = v15;
          }

          goto LABEL_18;
        }

        ++v15;
        ++v14;
      }

      while (v11 != v14);
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  return v11;
}

- (PUJoiningAssetsDataSource)initWithDataSources:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v31.receiver = self;
  v31.super_class = PUJoiningAssetsDataSource;
  v6 = [(PUTilingDataSource *)&v31 init];
  v7 = v6;
  if (v6)
  {
    v24 = v6;
    objc_storeStrong(&v6->__dataSources, a3);
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = v5;
    obj = v5;
    v10 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v28;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v16 = [MEMORY[0x1E696AC88] pu_rootIndexPath];
          v17 = [v15 numberOfSubItemsAtIndexPath:v16];

          v18 = objc_alloc_init(PUContainedDataSourceInfo);
          [(PUContainedDataSourceInfo *)v18 setAssetsDataSource:v15];
          [(PUContainedDataSourceInfo *)v18 setExternalSections:v12, v17];
          v19 = [v15 identifier];
          [(NSDictionary *)v9 setObject:v18 forKeyedSubscript:v19];

          [(NSArray *)v8 addObject:v18];
          v12 += v17;
        }

        v11 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    v7 = v24;
    containedDataSourceInfos = v24->__containedDataSourceInfos;
    v24->__containedDataSourceInfos = v8;
    v21 = v8;

    containedDataSourceInfoByIdentifier = v24->__containedDataSourceInfoByIdentifier;
    v24->__containedDataSourceInfoByIdentifier = v9;

    v24->__totalNumberOfSections = v12;
    v5 = v25;
  }

  return v7;
}

@end