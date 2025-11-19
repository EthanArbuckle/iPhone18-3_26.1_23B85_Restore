@interface PUPhotoKitShareActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4;
+ (BOOL)shouldEnableOnAsset:(id)a3 inAssetCollection:(id)a4;
- (id)_assetsFetchResultByAssetCollectionFromCollectionListFetchResult:(id)a3 inDataSource:(id)a4;
- (id)_createSharingViewControllerFromCurrentSelection;
- (void)activitySharingControllerDidCancel:(id)a3;
- (void)performUserInteractionTask;
- (void)preheatUserInteractionTask;
@end

@implementation PUPhotoKitShareActionPerformer

- (void)activitySharingControllerDidCancel:(id)a3
{
  if ([(PUAssetActionPerformer *)self state]== 10)
  {

    [(PUAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }
}

- (id)_assetsFetchResultByAssetCollectionFromCollectionListFetchResult:(id)a3 inDataSource:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
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

        if (v6)
        {
          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [v6 assetsInSection:{objc_msgSend(v6, "sectionForAssetCollection:", v13, v20)}];
          if (v14)
          {
            v15 = v14;
          }

          else
          {
            v16 = objc_alloc(MEMORY[0x1E69788E0]);
            v17 = [v6 photoLibrary];
            v18 = [MEMORY[0x1E6978630] fetchType];
            v15 = [v16 initWithObjects:MEMORY[0x1E695E0F0] photoLibrary:v17 fetchType:v18 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

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
  v4 = [(PUAssetActionPerformer *)self assets];
  v5 = [v4 count];

  if (v5 != 1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:1818 description:@"There can be only one asset in a share action"];
  }

  v6 = [(PUAssetActionPerformer *)self actionPerformerLog];
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ShareSheetDisplayLatency", "", buf, 2u);
  }

  if (os_signpost_enabled(v6))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ShareSheetDisplayDuration", " enableTelemetry=YES ", v10, 2u);
  }

  v7 = [(PUPhotoKitShareActionPerformer *)self preheatedSharingViewController];
  if (!v7)
  {
    v7 = [(PUPhotoKitShareActionPerformer *)self _createSharingViewControllerFromCurrentSelection];
  }

  if (![(PUAssetActionPerformer *)self presentViewController:v7])
  {
    [(PUAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
  }

  if (os_signpost_enabled(v6))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ShareSheetDisplayLatency", "", v9, 2u);
  }
}

- (void)preheatUserInteractionTask
{
  v3 = [(PUAssetActionPerformer *)self actionPerformerLog];
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ShareSheetDisplayPreheat", "", buf, 2u);
  }

  v4 = [(PUPhotoKitShareActionPerformer *)self _createSharingViewControllerFromCurrentSelection];
  [(PUPhotoKitShareActionPerformer *)self setPreheatedSharingViewController:v4];

  if (os_signpost_enabled(v3))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ShareSheetDisplayPreheat", "", v5, 2u);
  }
}

- (id)_createSharingViewControllerFromCurrentSelection
{
  v3 = self;
  v56 = *MEMORY[0x1E69E9840];
  v4 = [(PUAssetActionPerformer *)self assets];
  if ([v4 count] != 1)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:v3 file:@"PUPhotoKitAssetActionManager.m" lineNumber:1757 description:@"There can be only one asset in a share action"];
  }

  v5 = [v4 firstObject];
  v6 = [(PUPhotoKitActionPerformer *)v3 photosDataSource];
  if (!v6)
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:v3 file:@"PUPhotoKitAssetActionManager.m" lineNumber:1762 description:@"Share performer should have a photosDataSource set."];
  }

  v7 = [v6 collectionListFetchResult];
  v44 = [(PUPhotoKitShareActionPerformer *)v3 _assetsFetchResultByAssetCollectionFromCollectionListFetchResult:v7 inDataSource:v6];
  v8 = [(PUAssetActionPerformer *)v3 assetsByAssetCollection];
  v9 = [v8 allKeys];
  v10 = [v9 firstObject];

  v11 = [v6 indexPathForAsset:v5 inCollection:v10];
  v12 = [[PUPhotoSelectionManager alloc] initWithOptions:0];
  v13 = [v11 item];
  v43 = v10;
  v45 = [v6 assetsInSection:{objc_msgSend(v6, "sectionForAssetCollection:", v10)}];
  v46 = v13;
  if (v13 >= [v45 count] || (objc_msgSend(v45, "objectAtIndexedSubscript:", v13), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqual:", v5), v14, (v15 & 1) == 0))
  {
    v46 = [v45 indexOfObject:v5];
    v16 = PLUIGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [MEMORY[0x1E696AD98] numberWithInteger:v46];
      *buf = 138412802;
      v51 = v5;
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
  v18 = [[PUActivitySharingConfiguration alloc] initWithCollectionsFetchResult:v7 selectionManager:v12];
  if (_os_feature_enabled_impl())
  {
    v19 = MEMORY[0x1E6978630];
    v20 = [v5 objectID];
    v49 = v20;
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
    v21 = v39 = v7;
    [v5 photoLibrary];
    v22 = v6;
    v23 = v3;
    v24 = v5;
    v26 = v25 = v4;
    v27 = [v26 librarySpecificFetchOptions];
    v28 = [v19 fetchAssetsWithObjectIDs:v21 options:v27];
    [(PUActivitySharingConfiguration *)v18 setInitialAssetsFetchResult:v28];

    v4 = v25;
    v5 = v24;
    v3 = v23;
    v6 = v22;

    v7 = v39;
  }

  [(PUActivitySharingConfiguration *)v18 setAssetsFetchResultsByAssetCollection:v44];
  [(PUActivitySharingConfiguration *)v18 setPhotosDataSource:v6];
  v29 = [PUActivityViewController excludedPhotosActivityTypesForPresentationSource:0];
  [(PUActivitySharingConfiguration *)v18 setExcludedActivityTypes:v29];

  [(PUActivitySharingConfiguration *)v18 setAllowsAirPlayActivity:1];
  v30 = [[PUActivitySharingController alloc] initWithActivitySharingConfiguration:v18];
  [(PUActivitySharingController *)v30 setDelegate:v3];
  objc_storeStrong(&v3->_activitySharingController, v30);
  if (v46 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(PUPhotoSelectionManager *)v42 selectAssetAtIndex:v46 inAssetCollection:v43];
  }

  v31 = [(PUActivitySharingController *)v3->_activitySharingController activityViewController];
  if (v31)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_16;
    }

    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = objc_opt_class();
    v37 = NSStringFromClass(v38);
    v47 = [v31 px_descriptionForAssertionMessage];
    [v35 handleFailureInMethod:v40 object:v3 file:@"PUPhotoKitAssetActionManager.m" lineNumber:1800 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"_activitySharingController.activityViewController", v37, v47}];
  }

  else
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    [v35 handleFailureInMethod:v40 object:v3 file:@"PUPhotoKitAssetActionManager.m" lineNumber:1800 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"_activitySharingController.activityViewController", v37}];
  }

LABEL_16:
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __82__PUPhotoKitShareActionPerformer__createSharingViewControllerFromCurrentSelection__block_invoke;
  v48[3] = &unk_1E7B80DD0;
  v48[4] = v3;
  [v31 setReadyToInteractHandler:v48];

  return v31;
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

+ (BOOL)shouldEnableOnAsset:(id)a3 inAssetCollection:(id)a4
{
  v4 = a3;
  if ([v4 isPhotoIrisPlaceholder])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [v4 needsSensitivityProtection] ^ 1;
  }

  return v5;
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 isPhotoIrisPlaceholder];
  v8 = [v6 canPerformSharingAction];

  if ((v8 & 1) != 0 || v7)
  {
    v7 = [v5 isTrashBin] ^ 1;
  }

  return v7;
}

@end