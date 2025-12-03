@interface PUJoiningAssetsDataSource
- (PUJoiningAssetsDataSource)initWithDataSources:(id)sources;
- (id)_assetsDataSourceForExternalIndexPath:(id)path outDataSourceIndex:(int64_t *)index outLocalIndexPath:(id *)indexPath;
- (id)_externalIndexPathForLocalIndexPath:(id)path inAssetsDataSource:(id)source;
- (id)assetAtIndexPath:(id)path;
- (id)assetCollectionAtIndexPath:(id)path;
- (id)assetReferenceAtIndexPath:(id)path;
- (id)badgeInfoPromiseForAssetAtIndexPath:(id)path spatialPresentationEnabled:(BOOL)enabled;
- (id)containedAssetsDataSourceAtIndexPath:(id)path;
- (id)indexPathForAssetCollection:(id)collection;
- (id)indexPathForAssetReference:(id)reference;
- (id)startingAssetReference;
- (int64_t)numberOfAssetsWithMaximum:(int64_t)maximum;
- (int64_t)numberOfSubItemsAtIndexPath:(id)path;
@end

@implementation PUJoiningAssetsDataSource

- (id)containedAssetsDataSourceAtIndexPath:(id)path
{
  v6 = 0;
  v3 = [(PUJoiningAssetsDataSource *)self _assetsDataSourceForExternalIndexPath:path outDataSourceIndex:0 outLocalIndexPath:&v6];
  v4 = [v3 containedAssetsDataSourceAtIndexPath:v6];

  return v4;
}

- (int64_t)numberOfAssetsWithMaximum:(int64_t)maximum
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _dataSources = [(PUJoiningAssetsDataSource *)self _dataSources];
  v5 = [_dataSources countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        objc_enumerationMutation(_dataSources);
      }

      v10 = [*(*(&v12 + 1) + 8 * v9) numberOfAssetsWithMaximum:maximum];
      v7 += v10;
      maximum -= v10;
      if (maximum < 1)
      {
        break;
      }

      if (v6 == ++v9)
      {
        v6 = [_dataSources countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  _dataSources = [(PUJoiningAssetsDataSource *)self _dataSources];
  reverseObjectEnumerator = [_dataSources reverseObjectEnumerator];

  v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        startingAssetReference = [v9 startingAssetReference];
        if (startingAssetReference)
        {
          v13 = startingAssetReference;
          indexPath = [startingAssetReference indexPath];
          v12 = [(PUJoiningAssetsDataSource *)self _externalIndexPathForLocalIndexPath:indexPath inAssetsDataSource:v9];

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

      v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)badgeInfoPromiseForAssetAtIndexPath:(id)path spatialPresentationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v8 = 0;
  v5 = [(PUJoiningAssetsDataSource *)self _assetsDataSourceForExternalIndexPath:path outDataSourceIndex:0 outLocalIndexPath:&v8];
  v6 = [v5 badgeInfoPromiseForAssetAtIndexPath:v8 spatialPresentationEnabled:enabledCopy];

  return v6;
}

- (id)assetAtIndexPath:(id)path
{
  v6 = 0;
  v3 = [(PUJoiningAssetsDataSource *)self _assetsDataSourceForExternalIndexPath:path outDataSourceIndex:0 outLocalIndexPath:&v6];
  v4 = [v3 assetAtIndexPath:v6];

  return v4;
}

- (id)indexPathForAssetCollection:(id)collection
{
  v21 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  _dataSources = [(PUJoiningAssetsDataSource *)self _dataSources];
  reverseObjectEnumerator = [_dataSources reverseObjectEnumerator];

  v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 indexPathForAssetCollection:collectionCopy];
        if (v12)
        {
          v14 = v12;
          v13 = [(PUJoiningAssetsDataSource *)self _externalIndexPathForLocalIndexPath:v12 inAssetsDataSource:v11];

          goto LABEL_11;
        }
      }

      v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)assetCollectionAtIndexPath:(id)path
{
  v6 = 0;
  v3 = [(PUJoiningAssetsDataSource *)self _assetsDataSourceForExternalIndexPath:path outDataSourceIndex:0 outLocalIndexPath:&v6];
  v4 = [v3 assetCollectionAtIndexPath:v6];

  return v4;
}

- (id)indexPathForAssetReference:(id)reference
{
  v50 = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__37337;
  v47 = __Block_byref_object_dispose__37338;
  v48 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    reverseObjectEnumerator = referenceCopy;
    dataSourceIdentifier = [reverseObjectEnumerator dataSourceIdentifier];
    identifier = [(PUTilingDataSource *)self identifier];
    v8 = [dataSourceIdentifier isEqualToString:identifier];

    if (v8)
    {
      indexPath = [reverseObjectEnumerator indexPath];
      containedAssetReference = v44[5];
      v44[5] = indexPath;
    }

    else
    {
      containedAssetReference = [reverseObjectEnumerator containedAssetReference];
      hintDataSourceIndex = [reverseObjectEnumerator hintDataSourceIndex];
      _dataSources = [(PUJoiningAssetsDataSource *)self _dataSources];
      v20 = hintDataSourceIndex < [_dataSources count];

      if (v20)
      {
        _dataSources2 = [(PUJoiningAssetsDataSource *)self _dataSources];
        v22 = [_dataSources2 objectAtIndexedSubscript:hintDataSourceIndex];
      }

      else
      {
        v22 = 0;
      }

      identifier2 = [v22 identifier];
      dataSourceIdentifier2 = [containedAssetReference dataSourceIdentifier];
      v25 = [identifier2 isEqualToString:dataSourceIdentifier2];

      if (v25)
      {
        indexPath2 = [containedAssetReference indexPath];
        v27 = [(PUJoiningAssetsDataSource *)self _externalIndexPathForLocalIndexPath:indexPath2 inAssetsDataSource:v22];
        v28 = v44[5];
        v44[5] = v27;
      }

      else
      {
        hintDataSourceIndex2 = [reverseObjectEnumerator hintDataSourceIndex];
        _dataSources3 = [(PUJoiningAssetsDataSource *)self _dataSources];
        v31 = [_dataSources3 count];

        _dataSources4 = [(PUJoiningAssetsDataSource *)self _dataSources];
        if (hintDataSourceIndex2 >= v31)
        {
          hintDataSourceIndex2 = 0;
        }

        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __56__PUJoiningAssetsDataSource_indexPathForAssetReference___block_invoke;
        v39[3] = &unk_1E7B78A30;
        selfCopy = self;
        v42 = &v43;
        v40 = containedAssetReference;
        [_dataSources4 px_enumerateObjectsFromIndex:hintDataSourceIndex2 usingBlock:v39];

        indexPath2 = v40;
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
    _dataSources5 = [(PUJoiningAssetsDataSource *)self _dataSources];
    reverseObjectEnumerator = [_dataSources5 reverseObjectEnumerator];

    v12 = [reverseObjectEnumerator countByEnumeratingWithState:&v35 objects:v49 count:16];
    if (v12)
    {
      v13 = *v36;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v15 = *(*(&v35 + 1) + 8 * i);
          containedAssetReference = [v15 indexPathForAssetReference:referenceCopy];
          if (containedAssetReference)
          {
            v16 = [(PUJoiningAssetsDataSource *)self _externalIndexPathForLocalIndexPath:containedAssetReference inAssetsDataSource:v15];
            v17 = v44[5];
            v44[5] = v16;

            goto LABEL_23;
          }
        }

        v12 = [reverseObjectEnumerator countByEnumeratingWithState:&v35 objects:v49 count:16];
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

- (id)assetReferenceAtIndexPath:(id)path
{
  v12 = 0;
  v13 = 0;
  pathCopy = path;
  v5 = [(PUJoiningAssetsDataSource *)self _assetsDataSourceForExternalIndexPath:pathCopy outDataSourceIndex:&v13 outLocalIndexPath:&v12];
  v6 = [v5 assetReferenceAtIndexPath:v12];
  v7 = [PUJoiningAssetReference alloc];
  v8 = v13;
  identifier = [(PUTilingDataSource *)self identifier];
  v10 = [(PUJoiningAssetReference *)v7 initWithContainedAssetReference:v6 hintDataSourceIndex:v8 indexPath:pathCopy dataSourceIdentifier:identifier];

  return v10;
}

- (int64_t)numberOfSubItemsAtIndexPath:(id)path
{
  pathCopy = path;
  pu_rootIndexPath = [MEMORY[0x1E696AC88] pu_rootIndexPath];
  v6 = [pathCopy isEqual:pu_rootIndexPath];

  if (v6)
  {
    _totalNumberOfSections = [(PUJoiningAssetsDataSource *)self _totalNumberOfSections];
  }

  else
  {
    v10 = 0;
    v8 = [(PUJoiningAssetsDataSource *)self _assetsDataSourceForExternalIndexPath:pathCopy outDataSourceIndex:0 outLocalIndexPath:&v10];
    _totalNumberOfSections = [v8 numberOfSubItemsAtIndexPath:v10];
  }

  return _totalNumberOfSections;
}

- (id)_externalIndexPathForLocalIndexPath:(id)path inAssetsDataSource:(id)source
{
  sourceCopy = source;
  pathCopy = path;
  _containedDataSourceInfoByIdentifier = [(PUJoiningAssetsDataSource *)self _containedDataSourceInfoByIdentifier];
  identifier = [sourceCopy identifier];

  v10 = [_containedDataSourceInfoByIdentifier objectForKeyedSubscript:identifier];

  v11 = [pathCopy pu_indexPathByChangingIndexAtPosition:0 toIndex:{objc_msgSend(v10, "externalSections") + objc_msgSend(pathCopy, "indexAtPosition:", 0)}];

  return v11;
}

- (id)_assetsDataSourceForExternalIndexPath:(id)path outDataSourceIndex:(int64_t *)index outLocalIndexPath:(id *)indexPath
{
  v28 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v9 = [pathCopy indexAtPosition:0];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  _containedDataSourceInfos = [(PUJoiningAssetsDataSource *)self _containedDataSourceInfos];
  assetsDataSource = [_containedDataSourceInfos countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (assetsDataSource)
  {
    indexCopy = index;
    v12 = 0;
    v13 = *v24;
    while (2)
    {
      v14 = 0;
      v15 = v12;
      v12 += assetsDataSource;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(_containedDataSourceInfos);
        }

        v16 = *(*(&v23 + 1) + 8 * v14);
        externalSections = [v16 externalSections];
        if (v9 >= externalSections && v9 - externalSections < v18)
        {
          assetsDataSource = [v16 assetsDataSource];
          if (indexPath)
          {
            v20 = [pathCopy pu_indexPathByChangingIndexAtPosition:0 toIndex:{v9 - objc_msgSend(v16, "externalSections")}];
            *indexPath = v20;
          }

          if (indexCopy)
          {
            *indexCopy = v15;
          }

          goto LABEL_18;
        }

        ++v15;
        ++v14;
      }

      while (assetsDataSource != v14);
      assetsDataSource = [_containedDataSourceInfos countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (assetsDataSource)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  return assetsDataSource;
}

- (PUJoiningAssetsDataSource)initWithDataSources:(id)sources
{
  v33 = *MEMORY[0x1E69E9840];
  sourcesCopy = sources;
  v31.receiver = self;
  v31.super_class = PUJoiningAssetsDataSource;
  v6 = [(PUTilingDataSource *)&v31 init];
  v7 = v6;
  if (v6)
  {
    v24 = v6;
    objc_storeStrong(&v6->__dataSources, sources);
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(sourcesCopy, "count")}];
    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(sourcesCopy, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = sourcesCopy;
    obj = sourcesCopy;
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
          pu_rootIndexPath = [MEMORY[0x1E696AC88] pu_rootIndexPath];
          v17 = [v15 numberOfSubItemsAtIndexPath:pu_rootIndexPath];

          v18 = objc_alloc_init(PUContainedDataSourceInfo);
          [(PUContainedDataSourceInfo *)v18 setAssetsDataSource:v15];
          [(PUContainedDataSourceInfo *)v18 setExternalSections:v12, v17];
          identifier = [v15 identifier];
          [(NSDictionary *)v9 setObject:v18 forKeyedSubscript:identifier];

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
    sourcesCopy = v25;
  }

  return v7;
}

@end