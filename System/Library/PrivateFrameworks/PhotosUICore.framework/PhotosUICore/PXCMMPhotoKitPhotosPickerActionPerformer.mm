@interface PXCMMPhotoKitPhotosPickerActionPerformer
- (NSArray)currentAssetIdentifiers;
- (void)_pickerDidCompleteWithPickedAssets:(id)assets;
- (void)performUserInteractionTask;
@end

@implementation PXCMMPhotoKitPhotosPickerActionPerformer

- (NSArray)currentAssetIdentifiers
{
  v11 = *MEMORY[0x1E69E9840];
  currentAssetIdentifiers = self->_currentAssetIdentifiers;
  if (!currentAssetIdentifiers)
  {
    session = [(PXCMMActionPerformer *)self session];
    dataSourceManager = [session dataSourceManager];
    dataSource = [dataSourceManager dataSource];

    identifier = [dataSource identifier];
    v9 = xmmword_1A5380D10;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    [dataSource assetsInSectionIndexPath:&identifier];
    [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objc_claimAutoreleasedReturnValue(), "count")}];
    objc_claimAutoreleasedReturnValue();
    PXDisplayAssetFetchResultFastEnumeration();
  }

  return currentAssetIdentifiers;
}

- (void)_pickerDidCompleteWithPickedAssets:(id)assets
{
  v43 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(assetsCopy, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = assetsCopy;
  v7 = [v6 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v6);
        }

        assetIdentifier = [*(*(&v37 + 1) + 8 * i) assetIdentifier];
        if (assetIdentifier)
        {
          [v5 addObject:assetIdentifier];
        }

        else
        {
          v12 = PLUIGetLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "CMM picker result is missing an asset identifier", buf, 2u);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v8);
  }

  session = [(PXCMMActionPerformer *)self session];
  dataSourceManager = [session dataSourceManager];
  photoLibrary = [dataSourceManager photoLibrary];

  v16 = MEMORY[0x1E6978630];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v18 = [v16 fetchAssetsWithLocalIdentifiers:v5 options:librarySpecificFetchOptions];

  v19 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v18 title:0];
  v20 = objc_alloc(MEMORY[0x1E69788E0]);
  v33 = v19;
  v41 = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  v34 = photoLibrary;
  v22 = [v20 initWithObjects:v21 photoLibrary:photoLibrary fetchType:*MEMORY[0x1E6978DA0] fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  session2 = [(PXCMMActionPerformer *)self session];
  dataSourceManager2 = [session2 dataSourceManager];
  photosDataSource = [dataSourceManager2 photosDataSource];
  [photosDataSource setCollectionListFetchResult:v22];

  v26 = [v18 countOfAssetsWithMediaType:1];
  v27 = [v18 countOfAssetsWithMediaType:2];
  v28 = [v18 count];
  session3 = [(PXCMMActionPerformer *)self session];
  viewModel = [session3 viewModel];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __79__PXCMMPhotoKitPhotosPickerActionPerformer__pickerDidCompleteWithPickedAssets___block_invoke;
  v35[3] = &__block_descriptor_56_e33_v16__0___PXCMMMutableViewModel__8l;
  v35[4] = v26;
  v35[5] = v27;
  v35[6] = v28;
  [viewModel performChanges:v35];

  if (![(PXActionPerformer *)self dismissViewController:self->_photosPickerViewController completionHandler:0])
  {
    v31 = PLUIGetLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v31, OS_LOG_TYPE_ERROR, "CMM picker failed to dismiss PHPickerViewController", buf, 2u);
    }
  }

  photosPickerViewController = self->_photosPickerViewController;
  self->_photosPickerViewController = 0;

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
}

void __79__PXCMMPhotoKitPhotosPickerActionPerformer__pickerDidCompleteWithPickedAssets___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setPhotosCount:v3];
  [v4 setVideosCount:a1[5]];
  [v4 setTotalCount:a1[6]];
  [v4 setSelectedPhotosCount:a1[4]];
  [v4 setSelectedVideosCount:a1[5]];
  [v4 setSelectedCount:a1[6]];
}

- (void)performUserInteractionTask
{
  session = [(PXCMMActionPerformer *)self session];
  dataSourceManager = [session dataSourceManager];
  photoLibrary = [dataSourceManager photoLibrary];

  v5 = [objc_alloc(MEMORY[0x1E69790E0]) initWithPhotoLibraryAndOnlyReturnsIdentifiers:photoLibrary];
  [v5 setSelectionLimit:0];
  currentAssetIdentifiers = [(PXCMMPhotoKitPhotosPickerActionPerformer *)self currentAssetIdentifiers];
  [v5 setPreselectedAssetIdentifiers:currentAssetIdentifiers];

  [v5 _setDisabledPrivateCapabilities:5];
  v7 = [objc_alloc(MEMORY[0x1E69790F8]) initWithConfiguration:v5];
  [v7 setDelegate:self];
  presentationController = [v7 presentationController];
  [presentationController setDelegate:self];

  objc_storeStrong(&self->_photosPickerViewController, v7);
  if (![(PXActionPerformer *)self presentViewController:self->_photosPickerViewController])
  {
    v9 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1002 debugDescription:@"failed to present photos picker"];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v9];
  }
}

@end