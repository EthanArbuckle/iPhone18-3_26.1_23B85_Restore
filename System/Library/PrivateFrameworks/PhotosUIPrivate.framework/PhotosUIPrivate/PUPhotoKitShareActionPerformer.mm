@interface PUPhotoKitShareActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection;
+ (BOOL)shouldEnableOnAsset:(id)asset inAssetCollection:(id)collection;
- (id)_assetsFetchResultByAssetCollectionFromCollectionListFetchResult:(id)result inDataSource:(id)source;
- (id)_createSharingViewControllerFromCurrentSelection;
- (void)activitySharingControllerDidCancel:(id)cancel;
- (void)performUserInteractionTask;
- (void)preheatUserInteractionTask;
@end

@implementation PUPhotoKitShareActionPerformer

- (void)activitySharingControllerDidCancel:(id)cancel
{
  if ([(PUAssetActionPerformer *)self state]== 10)
  {

    [(PUAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }
}

- (id)_assetsFetchResultByAssetCollectionFromCollectionListFetchResult:(id)result inDataSource:(id)source
{
  v25 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  sourceCopy = source;
  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(resultCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = resultCopy;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (sourceCopy)
        {
          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [sourceCopy assetsInSection:{objc_msgSend(sourceCopy, "sectionForAssetCollection:", v13, v20)}];
          if (v14)
          {
            v15 = v14;
          }

          else
          {
            v16 = objc_alloc(MEMORY[0x1E69788E0]);
            photoLibrary = [sourceCopy photoLibrary];
            fetchType = [MEMORY[0x1E6978630] fetchType];
            v15 = [v16 initWithObjects:MEMORY[0x1E695E0F0] photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:0 identifier:0 registerIfNeeded:0];

            if (!v15)
            {
              continue;
            }
          }

          [v7 setObject:v15 forKey:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)performUserInteractionTask
{
  assets = [(PUAssetActionPerformer *)self assets];
  v5 = [assets count];

  if (v5 != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:1818 description:@"There can be only one asset in a share action"];
  }

  actionPerformerLog = [(PUAssetActionPerformer *)self actionPerformerLog];
  if (os_signpost_enabled(actionPerformerLog))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, actionPerformerLog, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ShareSheetDisplayLatency", "", buf, 2u);
  }

  if (os_signpost_enabled(actionPerformerLog))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, actionPerformerLog, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ShareSheetDisplayDuration", " enableTelemetry=YES ", v10, 2u);
  }

  preheatedSharingViewController = [(PUPhotoKitShareActionPerformer *)self preheatedSharingViewController];
  if (!preheatedSharingViewController)
  {
    preheatedSharingViewController = [(PUPhotoKitShareActionPerformer *)self _createSharingViewControllerFromCurrentSelection];
  }

  if (![(PUAssetActionPerformer *)self presentViewController:preheatedSharingViewController])
  {
    [(PUAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
  }

  if (os_signpost_enabled(actionPerformerLog))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, actionPerformerLog, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ShareSheetDisplayLatency", "", v9, 2u);
  }
}

- (void)preheatUserInteractionTask
{
  actionPerformerLog = [(PUAssetActionPerformer *)self actionPerformerLog];
  if (os_signpost_enabled(actionPerformerLog))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, actionPerformerLog, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ShareSheetDisplayPreheat", "", buf, 2u);
  }

  _createSharingViewControllerFromCurrentSelection = [(PUPhotoKitShareActionPerformer *)self _createSharingViewControllerFromCurrentSelection];
  [(PUPhotoKitShareActionPerformer *)self setPreheatedSharingViewController:_createSharingViewControllerFromCurrentSelection];

  if (os_signpost_enabled(actionPerformerLog))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, actionPerformerLog, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ShareSheetDisplayPreheat", "", v5, 2u);
  }
}

- (id)_createSharingViewControllerFromCurrentSelection
{
  selfCopy = self;
  v56 = *MEMORY[0x1E69E9840];
  assets = [(PUAssetActionPerformer *)self assets];
  if ([assets count] != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PUPhotoKitAssetActionManager.m" lineNumber:1757 description:@"There can be only one asset in a share action"];
  }

  firstObject = [assets firstObject];
  photosDataSource = [(PUPhotoKitActionPerformer *)selfCopy photosDataSource];
  if (!photosDataSource)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"PUPhotoKitAssetActionManager.m" lineNumber:1762 description:@"Share performer should have a photosDataSource set."];
  }

  collectionListFetchResult = [photosDataSource collectionListFetchResult];
  v44 = [(PUPhotoKitShareActionPerformer *)selfCopy _assetsFetchResultByAssetCollectionFromCollectionListFetchResult:collectionListFetchResult inDataSource:photosDataSource];
  assetsByAssetCollection = [(PUAssetActionPerformer *)selfCopy assetsByAssetCollection];
  allKeys = [assetsByAssetCollection allKeys];
  firstObject2 = [allKeys firstObject];

  v11 = [photosDataSource indexPathForAsset:firstObject inCollection:firstObject2];
  v12 = [[PUPhotoSelectionManager alloc] initWithOptions:0];
  item = [v11 item];
  v43 = firstObject2;
  v45 = [photosDataSource assetsInSection:{objc_msgSend(photosDataSource, "sectionForAssetCollection:", firstObject2)}];
  v46 = item;
  if (item >= [v45 count] || (objc_msgSend(v45, "objectAtIndexedSubscript:", item), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqual:", firstObject), v14, (v15 & 1) == 0))
  {
    v46 = [v45 indexOfObject:firstObject];
    v16 = PLUIGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [MEMORY[0x1E696AD98] numberWithInteger:v46];
      *buf = 138412802;
      v51 = firstObject;
      v52 = 2112;
      v53 = v11;
      v54 = 2112;
      v55 = v17;
      _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, "Index is invalid for current asset %@. Fixing up %@ => %@.", buf, 0x20u);
    }
  }

  v40 = a2;
  v41 = v11;
  v42 = v12;
  v18 = [[PUActivitySharingConfiguration alloc] initWithCollectionsFetchResult:collectionListFetchResult selectionManager:v12];
  if (_os_feature_enabled_impl())
  {
    v19 = MEMORY[0x1E6978630];
    objectID = [firstObject objectID];
    v49 = objectID;
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
    v21 = v39 = collectionListFetchResult;
    [firstObject photoLibrary];
    v22 = photosDataSource;
    v23 = selfCopy;
    v24 = firstObject;
    v26 = v25 = assets;
    librarySpecificFetchOptions = [v26 librarySpecificFetchOptions];
    v28 = [v19 fetchAssetsWithObjectIDs:v21 options:librarySpecificFetchOptions];
    [(PUActivitySharingConfiguration *)v18 setInitialAssetsFetchResult:v28];

    assets = v25;
    firstObject = v24;
    selfCopy = v23;
    photosDataSource = v22;

    collectionListFetchResult = v39;
  }

  [(PUActivitySharingConfiguration *)v18 setAssetsFetchResultsByAssetCollection:v44];
  [(PUActivitySharingConfiguration *)v18 setPhotosDataSource:photosDataSource];
  v29 = [PUActivityViewController excludedPhotosActivityTypesForPresentationSource:0];
  [(PUActivitySharingConfiguration *)v18 setExcludedActivityTypes:v29];

  [(PUActivitySharingConfiguration *)v18 setAllowsAirPlayActivity:1];
  v30 = [[PUActivitySharingController alloc] initWithActivitySharingConfiguration:v18];
  [(PUActivitySharingController *)v30 setDelegate:selfCopy];
  objc_storeStrong(&selfCopy->_activitySharingController, v30);
  if (v46 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(PUPhotoSelectionManager *)v42 selectAssetAtIndex:v46 inAssetCollection:v43];
  }

  activityViewController = [(PUActivitySharingController *)selfCopy->_activitySharingController activityViewController];
  if (activityViewController)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_16;
    }

    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = objc_opt_class();
    v37 = NSStringFromClass(v38);
    px_descriptionForAssertionMessage = [activityViewController px_descriptionForAssertionMessage];
    [currentHandler3 handleFailureInMethod:v40 object:selfCopy file:@"PUPhotoKitAssetActionManager.m" lineNumber:1800 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"_activitySharingController.activityViewController", v37, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    [currentHandler3 handleFailureInMethod:v40 object:selfCopy file:@"PUPhotoKitAssetActionManager.m" lineNumber:1800 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"_activitySharingController.activityViewController", v37}];
  }

LABEL_16:
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __82__PUPhotoKitShareActionPerformer__createSharingViewControllerFromCurrentSelection__block_invoke;
  v48[3] = &unk_1E7B80DD0;
  v48[4] = selfCopy;
  [activityViewController setReadyToInteractHandler:v48];

  return activityViewController;
}

void __82__PUPhotoKitShareActionPerformer__createSharingViewControllerFromCurrentSelection__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) actionPerformerLog];
  if (os_signpost_enabled(v1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v1, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ShareSheetDisplayDuration", " enableTelemetry=YES ", v2, 2u);
  }
}

+ (BOOL)shouldEnableOnAsset:(id)asset inAssetCollection:(id)collection
{
  assetCopy = asset;
  if ([assetCopy isPhotoIrisPlaceholder])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [assetCopy needsSensitivityProtection] ^ 1;
  }

  return v5;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection
{
  collectionCopy = collection;
  assetCopy = asset;
  isPhotoIrisPlaceholder = [assetCopy isPhotoIrisPlaceholder];
  canPerformSharingAction = [assetCopy canPerformSharingAction];

  if ((canPerformSharingAction & 1) != 0 || isPhotoIrisPlaceholder)
  {
    isPhotoIrisPlaceholder = [collectionCopy isTrashBin] ^ 1;
  }

  return isPhotoIrisPlaceholder;
}

@end