@interface PXPhotoKitAssetCollectionShowDetailsActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (int64_t)_originForAssetCollection:(id)a3;
- (id)_displayTitleInfoForDetailsOfAssetCollection:(id)a3 withTitleCategory:(int64_t)a4 preferredAttributesPromise:(id)a5;
- (id)_localizedTitleForAssetCollection:(id)a3 titleCategory:(int64_t *)a4;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionShowDetailsActionPerformer

- (void)performUserInteractionTask
{
  v36[1] = *MEMORY[0x1E69E9840];
  v3 = [(PXAssetCollectionActionPerformer *)self assetCollection];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 photoLibrary];
    v6 = [v5 librarySpecificFetchOptions];

    v28 = v6;
    if ([v4 isTransient])
    {
      v7 = MEMORY[0x1E6978760];
      v36[0] = v4;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
      v9 = [v7 transientCollectionListWithCollections:v8 title:0];

      v10 = [MEMORY[0x1E6978760] fetchCollectionsInCollectionList:v9 options:v6];
    }

    else
    {
      v12 = MEMORY[0x1E6978650];
      v9 = [v4 localIdentifier];
      v35 = v9;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
      v10 = [v12 fetchAssetCollectionsWithLocalIdentifiers:v13 options:v6];
    }

    v27 = v10;
    v14 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v10 options:0];
    [(PXPhotosDataSourceConfiguration *)v14 setHideHiddenAssets:1];
    v34 = *MEMORY[0x1E6978C08];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
    [(PXPhotosDataSourceConfiguration *)v14 setFetchPropertySets:v15];

    v16 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v14];
    v17 = [v4 titleCategory];
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = 6;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __81__PXPhotoKitAssetCollectionShowDetailsActionPerformer_performUserInteractionTask__block_invoke;
    aBlock[3] = &unk_1E7741BF8;
    v19 = v4;
    v31 = v19;
    v20 = _Block_copy(aBlock);
    v21 = [(PXPhotoKitAssetCollectionShowDetailsActionPerformer *)self _displayTitleInfoForDetailsOfAssetCollection:v19 withTitleCategory:v18 preferredAttributesPromise:v20];
    v22 = [[PXPhotosDetailsContext alloc] initWithPhotosDataSource:v16 displayTitleInfo:v21 parentContext:0 keyAssetsFetchResult:0];
    v23 = [objc_opt_class() _originForAssetCollection:v19];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __81__PXPhotoKitAssetCollectionShowDetailsActionPerformer_performUserInteractionTask__block_invoke_2;
    v29[3] = &__block_descriptor_40_e41_v16__0___PXMutablePhotosDetailsContext__8l;
    v29[4] = v23;
    [(PXPhotosDetailsContext *)v22 performChanges:v29];
    v24 = [[PXPhotosDetailsUIViewController alloc] initWithContext:v22 options:0];
    v25 = PLMemoriesGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v19;
      _os_log_impl(&dword_1A3C1C000, v25, OS_LOG_TYPE_DEFAULT, "Presenting details view for asset collection %@", buf, 0xCu);
    }

    if ([(PXActionPerformer *)self pushViewController:v24])
    {
      [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
    }

    else
    {
      v26 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"Failed to present details view controller for asset collection %@", v19}];
      [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v26];
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Attempted to present details view for a nil asset collection from an asset collection action performer"];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v11];
  }
}

- (id)_displayTitleInfoForDetailsOfAssetCollection:(id)a3 withTitleCategory:(int64_t)a4 preferredAttributesPromise:(id)a5
{
  v15 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(PXPhotoKitAssetCollectionShowDetailsActionPerformer *)self _localizedTitleForAssetCollection:v9 titleCategory:&v15];
  v11 = [off_1E77217B8 defaultHelper];
  v12 = [v11 titleForDisplayableText:v10 titleCategory:v15 options:1];

  v13 = [PXDisplayTitleInfo displayTitleInfoForDetailsOfAssetCollection:v9 withTitleCategory:a4 defaultTitle:v12 defaultTitleCategory:v15 titleKey:*MEMORY[0x1E6978EE8] titleCategoryKey:*MEMORY[0x1E6978EE0] defaultSubtitle:0.0 subtitleKey:0 simulatedLoadingDelay:*MEMORY[0x1E6978ED8] preferredAttributesPromise:v8];

  return v13;
}

- (id)_localizedTitleForAssetCollection:(id)a3 titleCategory:(int64_t *)a4
{
  v5 = a3;
  v6 = [v5 localizedTitle];
  if (![v6 length])
  {
    v7 = [v5 startDate];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E69BE3B8]) initWithPreset:2];
      v9 = [v5 endDate];
      v10 = [v8 stringFromDate:v7 toDate:v9];

      if (a4)
      {
        *a4 = 5;
      }

      v6 = v10;
    }
  }

  return v6;
}

+ (int64_t)_originForAssetCollection:(id)a3
{
  v3 = a3;
  if ([v3 px_isRegularAlbum])
  {
    v4 = 7;
  }

  else if ([v3 px_isMoment])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v5 = a3;
  v6 = [a4 assetsDataSource];
  v7 = v6;
  if (v6)
  {
    [v6 indexPathForAssetCollectionReference:v5];
  }

  return 0;
}

@end