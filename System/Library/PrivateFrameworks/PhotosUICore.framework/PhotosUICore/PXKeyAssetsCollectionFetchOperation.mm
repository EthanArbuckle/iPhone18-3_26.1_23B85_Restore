@interface PXKeyAssetsCollectionFetchOperation
- (void)main;
@end

@implementation PXKeyAssetsCollectionFetchOperation

- (void)main
{
  v42 = *MEMORY[0x1E69E9840];
  [(PXCollectionFetchOperation *)self handleBegin];
  v3 = [(PXCollectionFetchOperation *)self fetchOptions];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(PXCollectionFetchOperation *)self collection];
    v7 = [v6 photoLibrary];
    v5 = [v7 px_standardLibrarySpecificFetchOptions];
  }

  if (([(PXKeyAssetsCollectionFetchOperation *)self isCancelled]& 1) != 0 || ([(PXCollectionFetchOperation *)self collection], v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v9 = objc_opt_isKindOfClass(), v8, (v9 & 1) == 0))
  {
    if (([(PXKeyAssetsCollectionFetchOperation *)self isCancelled]& 1) != 0 || ([(PXCollectionFetchOperation *)self collection], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, (isKindOfClass & 1) == 0))
    {
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v13 = [(PXCollectionFetchOperation *)self collection];
      if (([v13 collectionListType] & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v35 = v13;
        v14 = [(PXCollectionFetchOperation *)self collection];
        v15 = [v14 photoLibrary];
        v16 = [v15 px_standardLibrarySpecificFetchOptions];

        [v16 setReverseSortOrder:{objc_msgSend(v14, "keyCollectionsAtEnd")}];
        v33 = v16;
        v34 = v14;
        v17 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v14 options:v16];
        v18 = [v17 count];
        maxKeyAssets = self->_maxKeyAssets;
        if (maxKeyAssets <= 0)
        {
          maxKeyAssets = 9;
        }

        if (v18 >= maxKeyAssets)
        {
          v20 = maxKeyAssets;
        }

        else
        {
          v20 = v18;
        }

        v36 = v20;
        v21 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:?];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v22 = v17;
        v23 = [v22 countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v38;
LABEL_18:
          v26 = 0;
          while (1)
          {
            if (*v38 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v37 + 1) + 8 * v26);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:v27 options:v5];
              v29 = v28 = v5;
              v30 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v29, "count")}];
              [v29 prefetchObjectsAtIndexes:v30];

              [v21 setObject:v29 forKey:v27];
              v31 = [v21 count];

              v5 = v28;
              if (v31 >= v36)
              {
                break;
              }
            }

            if (v24 == ++v26)
            {
              v24 = [v22 countByEnumeratingWithState:&v37 objects:v41 count:16];
              if (v24)
              {
                goto LABEL_18;
              }

              break;
            }
          }
        }

        v13 = v35;
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }
    }
  }

  else
  {
    v10 = [(PXCollectionFetchOperation *)self collection];
    if ([v10 assetCollectionType] == 4)
    {
      [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:v10 referenceAsset:0];
    }

    else
    {
      [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:v10 options:v5];
    }
    v22 = ;
    v32 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v22, "count")}];
    [v22 prefetchObjectsAtIndexes:v32];

    v21 = 0;
  }

  [(PXCollectionFetchOperation *)self setOutputFetchResult:v22];
  [(PXKeyAssetsCollectionFetchOperation *)self setOutputOtherFetchResultsByAssetCollection:v21];
  [(PXCollectionFetchOperation *)self handleFinish];
}

@end