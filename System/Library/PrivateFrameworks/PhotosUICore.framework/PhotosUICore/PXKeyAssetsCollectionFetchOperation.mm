@interface PXKeyAssetsCollectionFetchOperation
- (void)main;
@end

@implementation PXKeyAssetsCollectionFetchOperation

- (void)main
{
  v42 = *MEMORY[0x1E69E9840];
  [(PXCollectionFetchOperation *)self handleBegin];
  fetchOptions = [(PXCollectionFetchOperation *)self fetchOptions];
  v4 = fetchOptions;
  if (fetchOptions)
  {
    px_standardLibrarySpecificFetchOptions = fetchOptions;
  }

  else
  {
    collection = [(PXCollectionFetchOperation *)self collection];
    photoLibrary = [collection photoLibrary];
    px_standardLibrarySpecificFetchOptions = [photoLibrary px_standardLibrarySpecificFetchOptions];
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
      collection2 = [(PXCollectionFetchOperation *)self collection];
      if (([collection2 collectionListType] & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v35 = collection2;
        collection3 = [(PXCollectionFetchOperation *)self collection];
        photoLibrary2 = [collection3 photoLibrary];
        px_standardLibrarySpecificFetchOptions2 = [photoLibrary2 px_standardLibrarySpecificFetchOptions];

        [px_standardLibrarySpecificFetchOptions2 setReverseSortOrder:{objc_msgSend(collection3, "keyCollectionsAtEnd")}];
        v33 = px_standardLibrarySpecificFetchOptions2;
        v34 = collection3;
        v17 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:collection3 options:px_standardLibrarySpecificFetchOptions2];
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
              [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:v27 options:px_standardLibrarySpecificFetchOptions];
              v29 = v28 = px_standardLibrarySpecificFetchOptions;
              v30 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v29, "count")}];
              [v29 prefetchObjectsAtIndexes:v30];

              [v21 setObject:v29 forKey:v27];
              v31 = [v21 count];

              px_standardLibrarySpecificFetchOptions = v28;
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

        collection2 = v35;
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
    collection4 = [(PXCollectionFetchOperation *)self collection];
    if ([collection4 assetCollectionType] == 4)
    {
      [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:collection4 referenceAsset:0];
    }

    else
    {
      [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:collection4 options:px_standardLibrarySpecificFetchOptions];
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