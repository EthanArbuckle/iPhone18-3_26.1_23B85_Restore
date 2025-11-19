@interface PXPhotoKitAssetCollectionShareActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionShareActionPerformer

- (void)performUserInteractionTask
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = [(PXAssetCollectionActionPerformer *)self assetCollection];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = objc_opt_class();
    v29 = NSStringFromClass(v34);
    v35 = [v3 px_descriptionForAssertionMessage];
    [v27 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2022 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetCollection", v29, v35}];
  }

  else
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    [v27 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2022 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetCollection", v29}];
  }

LABEL_3:
  v4 = [v3 px_wantsCurationByDefault];
  if (v4)
  {
    v5 = 80;
  }

  else
  {
    v5 = 0;
  }

  v6 = [[PXPhotosDataSourceConfiguration alloc] initWithAssetCollection:v3 options:v5];
  v7 = v6;
  if (v4)
  {
    [(PXPhotosDataSourceConfiguration *)v6 setCurationKind:1];
    [(PXPhotosDataSourceConfiguration *)v7 setWantsCurationByDefault:1];
    v8 = PLSharingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v3 localizedTitle];
      v10 = [v3 localIdentifier];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138412802;
      v47 = v9;
      v48 = 2114;
      v49 = v10;
      v50 = 2112;
      v51 = v12;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "PXPhotoKitAssetCollectionShareActionPerformer: Asset collection %@ (UUID: %{public}@) is curated by default (type: %@), so bringing up share sheet with only curated assets", buf, 0x20u);
    }
  }

  v13 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v7];
  v14 = [(PXActionPerformer *)self hostViewController];
  v15 = [(PXAssetCollectionActionPerformer *)self assetCollectionReference];
  v16 = [v15 keyAssetReference];
  v17 = [v16 asset];

  v43 = v13;
  v18 = [[PXActivitySharingContext alloc] initWithAssetCollection:v3 photosDataSource:v13];
  [(PXActivitySharingContext *)v18 setKeyAsset:v17];
  [(PXActivitySharingContext *)v18 setSourceOrigin:3];
  v45[0] = @"com.apple.Photos.activity.SlideShow";
  v45[1] = @"PUActivityTypeEditDateTime";
  v45[2] = @"PUActivityTypeEditLocation";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:3];
  [(PXActivitySharingContext *)v18 setExcludedActivityTypes:v19];

  v20 = [(PXActivitySharingContext *)v18 excludedActivityTypes];
  v44[0] = @"PUActivityTypeHide";
  v44[1] = @"PUActivityTypeDuplicate";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v22 = [v20 arrayByAddingObjectsFromArray:v21];
  [(PXActivitySharingContext *)v18 setExcludedActivityTypes:v22];

  v23 = [v14 px_sharePresentation];
  if (!v23)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2053 description:{@"Invalid parameter not satisfying: %@", @"sharePresentation"}];
  }

  v24 = [v23 createActivitySharingControllerWithContext:v18];
  [v24 selectInitialAssets];
  if (!v24)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2056 description:{@"Invalid parameter not satisfying: %@", @"activitySharingController"}];
  }

  v25 = [v24 activityViewController];
  if (v25)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_16;
    }

    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v39 = [v25 px_descriptionForAssertionMessage];
    v38 = v37;
    v41 = v37;
    v32 = v40;
    [v40 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2057 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"activitySharingController.activityViewController", v38, v39}];
  }

  else
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    v33 = objc_opt_class();
    v41 = NSStringFromClass(v33);
    [v32 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2057 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"activitySharingController.activityViewController", v41}];
  }

LABEL_16:
  if ([(PXActionPerformer *)self presentViewController:v25])
  {
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }

  else
  {
    v26 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"PXPhotoKitAssetCollectionShareActionPerformer: Failed to present Share Sheet"];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v26];
  }
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v6 = [a3 assetCollection];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    v16 = [v6 px_descriptionForAssertionMessage];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1993 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v14, v16}];
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v12 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1993 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v14}];
  }

LABEL_3:
  if ([v6 px_shouldSelectAllAssetsWhenSharing])
  {
    v7 = [v6 photoLibrary];
    v8 = [v7 librarySpecificFetchOptions];

    [v8 setFetchLimit:1];
    [v8 setWantsIncrementalChangeDetails:0];
    v9 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v6 options:v8];
    v10 = [v9 count] != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end