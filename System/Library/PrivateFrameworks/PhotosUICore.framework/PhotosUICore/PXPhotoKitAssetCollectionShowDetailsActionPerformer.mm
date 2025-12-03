@interface PXPhotoKitAssetCollectionShowDetailsActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (int64_t)_originForAssetCollection:(id)collection;
- (id)_displayTitleInfoForDetailsOfAssetCollection:(id)collection withTitleCategory:(int64_t)category preferredAttributesPromise:(id)promise;
- (id)_localizedTitleForAssetCollection:(id)collection titleCategory:(int64_t *)category;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionShowDetailsActionPerformer

- (void)performUserInteractionTask
{
  v36[1] = *MEMORY[0x1E69E9840];
  assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
  v4 = assetCollection;
  if (assetCollection)
  {
    photoLibrary = [assetCollection photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v28 = librarySpecificFetchOptions;
    if ([v4 isTransient])
    {
      v7 = MEMORY[0x1E6978760];
      v36[0] = v4;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
      localIdentifier = [v7 transientCollectionListWithCollections:v8 title:0];

      v10 = [MEMORY[0x1E6978760] fetchCollectionsInCollectionList:localIdentifier options:librarySpecificFetchOptions];
    }

    else
    {
      v12 = MEMORY[0x1E6978650];
      localIdentifier = [v4 localIdentifier];
      v35 = localIdentifier;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
      v10 = [v12 fetchAssetCollectionsWithLocalIdentifiers:v13 options:librarySpecificFetchOptions];
    }

    v27 = v10;
    v14 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v10 options:0];
    [(PXPhotosDataSourceConfiguration *)v14 setHideHiddenAssets:1];
    v34 = *MEMORY[0x1E6978C08];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
    [(PXPhotosDataSourceConfiguration *)v14 setFetchPropertySets:v15];

    v16 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v14];
    titleCategory = [v4 titleCategory];
    if (titleCategory)
    {
      v18 = titleCategory;
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

- (id)_displayTitleInfoForDetailsOfAssetCollection:(id)collection withTitleCategory:(int64_t)category preferredAttributesPromise:(id)promise
{
  categoryCopy = category;
  promiseCopy = promise;
  collectionCopy = collection;
  v10 = [(PXPhotoKitAssetCollectionShowDetailsActionPerformer *)self _localizedTitleForAssetCollection:collectionCopy titleCategory:&categoryCopy];
  defaultHelper = [off_1E77217B8 defaultHelper];
  v12 = [defaultHelper titleForDisplayableText:v10 titleCategory:categoryCopy options:1];

  v13 = [PXDisplayTitleInfo displayTitleInfoForDetailsOfAssetCollection:collectionCopy withTitleCategory:category defaultTitle:v12 defaultTitleCategory:categoryCopy titleKey:*MEMORY[0x1E6978EE8] titleCategoryKey:*MEMORY[0x1E6978EE0] defaultSubtitle:0.0 subtitleKey:0 simulatedLoadingDelay:*MEMORY[0x1E6978ED8] preferredAttributesPromise:promiseCopy];

  return v13;
}

- (id)_localizedTitleForAssetCollection:(id)collection titleCategory:(int64_t *)category
{
  collectionCopy = collection;
  localizedTitle = [collectionCopy localizedTitle];
  if (![localizedTitle length])
  {
    startDate = [collectionCopy startDate];
    if (startDate)
    {
      v8 = [objc_alloc(MEMORY[0x1E69BE3B8]) initWithPreset:2];
      endDate = [collectionCopy endDate];
      v10 = [v8 stringFromDate:startDate toDate:endDate];

      if (category)
      {
        *category = 5;
      }

      localizedTitle = v10;
    }
  }

  return localizedTitle;
}

+ (int64_t)_originForAssetCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy px_isRegularAlbum])
  {
    v4 = 7;
  }

  else if ([collectionCopy px_isMoment])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  referenceCopy = reference;
  assetsDataSource = [inputs assetsDataSource];
  v7 = assetsDataSource;
  if (assetsDataSource)
  {
    [assetsDataSource indexPathForAssetCollectionReference:referenceCopy];
  }

  return 0;
}

@end