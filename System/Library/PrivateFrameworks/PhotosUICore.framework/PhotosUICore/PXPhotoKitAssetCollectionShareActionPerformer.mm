@interface PXPhotoKitAssetCollectionShareActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionShareActionPerformer

- (void)performUserInteractionTask
{
  v52 = *MEMORY[0x1E69E9840];
  assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
  if (assetCollection)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = objc_opt_class();
    v29 = NSStringFromClass(v34);
    px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2022 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetCollection", v29, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2022 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetCollection", v29}];
  }

LABEL_3:
  px_wantsCurationByDefault = [assetCollection px_wantsCurationByDefault];
  if (px_wantsCurationByDefault)
  {
    v5 = 80;
  }

  else
  {
    v5 = 0;
  }

  v6 = [[PXPhotosDataSourceConfiguration alloc] initWithAssetCollection:assetCollection options:v5];
  v7 = v6;
  if (px_wantsCurationByDefault)
  {
    [(PXPhotosDataSourceConfiguration *)v6 setCurationKind:1];
    [(PXPhotosDataSourceConfiguration *)v7 setWantsCurationByDefault:1];
    v8 = PLSharingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      localizedTitle = [assetCollection localizedTitle];
      localIdentifier = [assetCollection localIdentifier];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138412802;
      v47 = localizedTitle;
      v48 = 2114;
      v49 = localIdentifier;
      v50 = 2112;
      v51 = v12;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "PXPhotoKitAssetCollectionShareActionPerformer: Asset collection %@ (UUID: %{public}@) is curated by default (type: %@), so bringing up share sheet with only curated assets", buf, 0x20u);
    }
  }

  v13 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v7];
  hostViewController = [(PXActionPerformer *)self hostViewController];
  assetCollectionReference = [(PXAssetCollectionActionPerformer *)self assetCollectionReference];
  keyAssetReference = [assetCollectionReference keyAssetReference];
  asset = [keyAssetReference asset];

  v43 = v13;
  v18 = [[PXActivitySharingContext alloc] initWithAssetCollection:assetCollection photosDataSource:v13];
  [(PXActivitySharingContext *)v18 setKeyAsset:asset];
  [(PXActivitySharingContext *)v18 setSourceOrigin:3];
  v45[0] = @"com.apple.Photos.activity.SlideShow";
  v45[1] = @"PUActivityTypeEditDateTime";
  v45[2] = @"PUActivityTypeEditLocation";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:3];
  [(PXActivitySharingContext *)v18 setExcludedActivityTypes:v19];

  excludedActivityTypes = [(PXActivitySharingContext *)v18 excludedActivityTypes];
  v44[0] = @"PUActivityTypeHide";
  v44[1] = @"PUActivityTypeDuplicate";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v22 = [excludedActivityTypes arrayByAddingObjectsFromArray:v21];
  [(PXActivitySharingContext *)v18 setExcludedActivityTypes:v22];

  px_sharePresentation = [hostViewController px_sharePresentation];
  if (!px_sharePresentation)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2053 description:{@"Invalid parameter not satisfying: %@", @"sharePresentation"}];
  }

  v24 = [px_sharePresentation createActivitySharingControllerWithContext:v18];
  [v24 selectInitialAssets];
  if (!v24)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2056 description:{@"Invalid parameter not satisfying: %@", @"activitySharingController"}];
  }

  activityViewController = [v24 activityViewController];
  if (activityViewController)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_16;
    }

    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    px_descriptionForAssertionMessage2 = [activityViewController px_descriptionForAssertionMessage];
    v38 = v37;
    v41 = v37;
    currentHandler5 = currentHandler4;
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2057 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"activitySharingController.activityViewController", v38, px_descriptionForAssertionMessage2}];
  }

  else
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    v33 = objc_opt_class();
    v41 = NSStringFromClass(v33);
    [currentHandler5 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2057 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"activitySharingController.activityViewController", v41}];
  }

LABEL_16:
  if ([(PXActionPerformer *)self presentViewController:activityViewController])
  {
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }

  else
  {
    v26 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"PXPhotoKitAssetCollectionShareActionPerformer: Failed to present Share Sheet"];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v26];
  }
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  assetCollection = [reference assetCollection];
  if (assetCollection)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1993 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v14, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1993 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v14}];
  }

LABEL_3:
  if ([assetCollection px_shouldSelectAllAssetsWhenSharing])
  {
    photoLibrary = [assetCollection photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setFetchLimit:1];
    [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
    v9 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:assetCollection options:librarySpecificFetchOptions];
    v10 = [v9 count] != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end