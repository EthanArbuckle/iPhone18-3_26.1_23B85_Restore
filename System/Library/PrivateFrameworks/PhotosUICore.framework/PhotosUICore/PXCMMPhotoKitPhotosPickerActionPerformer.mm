@interface PXCMMPhotoKitPhotosPickerActionPerformer
- (NSArray)currentAssetIdentifiers;
- (void)_pickerDidCompleteWithPickedAssets:(id)a3;
- (void)performUserInteractionTask;
@end

@implementation PXCMMPhotoKitPhotosPickerActionPerformer

- (NSArray)currentAssetIdentifiers
{
  v11 = *MEMORY[0x1E69E9840];
  currentAssetIdentifiers = self->_currentAssetIdentifiers;
  if (!currentAssetIdentifiers)
  {
    v4 = [(PXCMMActionPerformer *)self session];
    v5 = [v4 dataSourceManager];
    v6 = [v5 dataSource];

    v8 = [v6 identifier];
    v9 = xmmword_1A5380D10;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    [v6 assetsInSectionIndexPath:&v8];
    [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objc_claimAutoreleasedReturnValue(), "count")}];
    objc_claimAutoreleasedReturnValue();
    PXDisplayAssetFetchResultFastEnumeration();
  }

  return currentAssetIdentifiers;
}

- (void)_pickerDidCompleteWithPickedAssets:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = v4;
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

        v11 = [*(*(&v37 + 1) + 8 * i) assetIdentifier];
        if (v11)
        {
          [v5 addObject:v11];
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

  v13 = [(PXCMMActionPerformer *)self session];
  v14 = [v13 dataSourceManager];
  v15 = [v14 photoLibrary];

  v16 = MEMORY[0x1E6978630];
  v17 = [v15 librarySpecificFetchOptions];
  v18 = [v16 fetchAssetsWithLocalIdentifiers:v5 options:v17];

  v19 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v18 title:0];
  v20 = objc_alloc(MEMORY[0x1E69788E0]);
  v33 = v19;
  v41 = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  v34 = v15;
  v22 = [v20 initWithObjects:v21 photoLibrary:v15 fetchType:*MEMORY[0x1E6978DA0] fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  v23 = [(PXCMMActionPerformer *)self session];
  v24 = [v23 dataSourceManager];
  v25 = [v24 photosDataSource];
  [v25 setCollectionListFetchResult:v22];

  v26 = [v18 countOfAssetsWithMediaType:1];
  v27 = [v18 countOfAssetsWithMediaType:2];
  v28 = [v18 count];
  v29 = [(PXCMMActionPerformer *)self session];
  v30 = [v29 viewModel];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __79__PXCMMPhotoKitPhotosPickerActionPerformer__pickerDidCompleteWithPickedAssets___block_invoke;
  v35[3] = &__block_descriptor_56_e33_v16__0___PXCMMMutableViewModel__8l;
  v35[4] = v26;
  v35[5] = v27;
  v35[6] = v28;
  [v30 performChanges:v35];

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
  v3 = [(PXCMMActionPerformer *)self session];
  v4 = [v3 dataSourceManager];
  v10 = [v4 photoLibrary];

  v5 = [objc_alloc(MEMORY[0x1E69790E0]) initWithPhotoLibraryAndOnlyReturnsIdentifiers:v10];
  [v5 setSelectionLimit:0];
  v6 = [(PXCMMPhotoKitPhotosPickerActionPerformer *)self currentAssetIdentifiers];
  [v5 setPreselectedAssetIdentifiers:v6];

  [v5 _setDisabledPrivateCapabilities:5];
  v7 = [objc_alloc(MEMORY[0x1E69790F8]) initWithConfiguration:v5];
  [v7 setDelegate:self];
  v8 = [v7 presentationController];
  [v8 setDelegate:self];

  objc_storeStrong(&self->_photosPickerViewController, v7);
  if (![(PXActionPerformer *)self presentViewController:self->_photosPickerViewController])
  {
    v9 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1002 debugDescription:@"failed to present photos picker"];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v9];
  }
}

@end