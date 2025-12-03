@interface PXPhotoKitAssetCollectionContentSyndicationSaveToLibraryActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)createBarButtonItemForAssetCollectionReference:(id)reference withTarget:(id)target action:(SEL)action;
+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs;
- (void)_handleCompletionForExpectedUUIDs:(id)ds photoLibrary:(id)library success:(BOOL)success error:(id)error;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionContentSyndicationSaveToLibraryActionPerformer

+ (id)createBarButtonItemForAssetCollectionReference:(id)reference withTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v9 = [self systemImageNameForAssetCollectionReference:reference withInputs:0];
  v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:v9];
  v11 = [v10 imageWithBaselineOffsetFromBottom:5.0];

  v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v11 style:0 target:targetCopy action:action];

  return v12;
}

+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs
{
  assetCollection = [reference assetCollection];
  photoLibrary = [assetCollection photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v8 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:assetCollection options:librarySpecificFetchOptions];
  v9 = PXLocalizationKeyByAddingMediaSpecificSuffix(@"PXPhotoKitAssetCollectionActionManagerPreviewActionTitle_ContentSyndicationSaveToLibrary_", [v8 count], objc_msgSend(assetCollection, "aggregateMediaType"));
  v10 = PXLocalizedStringFromTable(v9, @"PhotosUICore");

  return v10;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  assetCollection = [reference assetCollection];
  if (![assetCollection px_isContentSyndicationAlbum])
  {
    v9 = 0;
    goto LABEL_6;
  }

  v7 = assetCollection;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionContentSyndicationSaveToLibraryActionPerformer.m" lineNumber:51 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollection", v13}];
LABEL_9:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    px_descriptionForAssertionMessage = [v7 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionContentSyndicationSaveToLibraryActionPerformer.m" lineNumber:51 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollection", v13, px_descriptionForAssertionMessage}];

    goto LABEL_9;
  }

LABEL_4:
  v8 = PXContentSyndicationUnsavedSyndicatedAssetsInAssetCollection(v7);
  v9 = [v8 count] != 0;

LABEL_6:
  return v9;
}

- (void)performBackgroundTask
{
  v3 = +[PXContentSyndicationSettings sharedInstance];
  preventActualSaveToLibraryBehavior = [v3 preventActualSaveToLibraryBehavior];

  if (preventActualSaveToLibraryBehavior)
  {

    [(PXActionPerformer *)self completeBackgroundTaskWithSuccess:1 error:0];
  }

  else
  {
    v5 = self->_unsavedSyndicatedAssetsFetchResult;
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = __Block_byref_object_copy__237607;
    v15[4] = __Block_byref_object_dispose__237608;
    v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[PHFetchResult count](v5, "count")}];
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __96__PXPhotoKitAssetCollectionContentSyndicationSaveToLibraryActionPerformer_performBackgroundTask__block_invoke;
    v12[3] = &unk_1E7749A28;
    v7 = v5;
    v13 = v7;
    v14 = v15;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __96__PXPhotoKitAssetCollectionContentSyndicationSaveToLibraryActionPerformer_performBackgroundTask__block_invoke_234;
    v9[3] = &unk_1E7749680;
    v9[4] = self;
    v11 = v15;
    v8 = px_deprecated_appPhotoLibrary;
    v10 = v8;
    [v8 performChanges:v12 completionHandler:v9];

    _Block_object_dispose(v15, 8);
  }
}

void __96__PXPhotoKitAssetCollectionContentSyndicationSaveToLibraryActionPerformer_performBackgroundTask__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = PLSyndicationUIGetLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v7 uuid];
          *buf = 138543618;
          v18 = v9;
          v19 = 2112;
          v20 = v7;
          _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "AssetCollectionContentSyndicationSaveToLibraryAction: Saving asset (%{public}@): %@", buf, 0x16u);
        }

        v10 = [MEMORY[0x1E6978698] creationRequestForAssetFromGuestAsset:v7];
        v11 = [v10 placeholderForCreatedAsset];
        v12 = [v11 uuid];

        [*(*(*(a1 + 40) + 8) + 40) addObject:v12];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v4);
  }
}

void __96__PXPhotoKitAssetCollectionContentSyndicationSaveToLibraryActionPerformer_performBackgroundTask__block_invoke_234(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  objc_initWeak(&location, *(a1 + 32));
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __96__PXPhotoKitAssetCollectionContentSyndicationSaveToLibraryActionPerformer_performBackgroundTask__block_invoke_2;
  v9[3] = &unk_1E7749658;
  objc_copyWeak(&v13, &location);
  v6 = *(a1 + 40);
  v12 = *(a1 + 48);
  v7 = v6;
  v14 = a2;
  v10 = v7;
  v11 = v5;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __96__PXPhotoKitAssetCollectionContentSyndicationSaveToLibraryActionPerformer_performBackgroundTask__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleCompletionForExpectedUUIDs:*(*(*(a1 + 48) + 8) + 40) photoLibrary:*(a1 + 32) success:*(a1 + 64) error:*(a1 + 40)];
}

- (void)_handleCompletionForExpectedUUIDs:(id)ds photoLibrary:(id)library success:(BOOL)success error:(id)error
{
  successCopy = success;
  v45 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  libraryCopy = library;
  errorCopy = error;
  v12 = PLSyndicationUIGetLog();
  v13 = v12;
  if (successCopy)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "AssetCollectionContentSyndicationSaveToLibraryAction: All unsaved assets were saved", buf, 2u);
    }

    v14 = MEMORY[0x1E6978630];
    v32 = libraryCopy;
    librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
    v33 = dsCopy;
    v16 = [v14 fetchAssetsWithUUIDs:dsCopy options:librarySpecificFetchOptions];
    savedAssetsFetchResult = self->_savedAssetsFetchResult;
    self->_savedAssetsFetchResult = v16;

    v31 = errorCopy;
    [(PXActionPerformer *)self completeBackgroundTaskWithSuccess:1 error:errorCopy];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = self->_savedAssetsFetchResult;
    v18 = [(PHFetchResult *)obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = *v37;
      v22 = *MEMORY[0x1E6991E20];
      v23 = *MEMORY[0x1E6991E18];
LABEL_6:
      v24 = 0;
      if (v20 <= 9)
      {
        v25 = 9;
      }

      else
      {
        v25 = v20;
      }

      while (1)
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v36 + 1) + v24);
        v27 = MEMORY[0x1E6991F28];
        v42[0] = v22;
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v42[1] = v23;
        v43[0] = v29;
        v43[1] = v26;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
        [v27 sendEvent:@"com.apple.photos.CPAnalytics.syndicatedAssetsSaved" withPayload:v30];

        if (v25 == v20)
        {
          break;
        }

        ++v20;
        v24 += 8;
        if (!--v19)
        {
          v19 = [(PHFetchResult *)obj countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v19)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    libraryCopy = v32;
    dsCopy = v33;
    errorCopy = v31;
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v41 = errorCopy;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "AssetCollectionContentSyndicationSaveToLibraryAction: Failed to save all unsaved assets. Error: %@", buf, 0xCu);
    }

    [(PXActionPerformer *)self completeBackgroundTaskWithSuccess:0 error:errorCopy];
  }
}

- (void)performUserInteractionTask
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = +[PXContentSyndicationSettings sharedInstance];
  preventActualSaveToLibraryBehavior = [v3 preventActualSaveToLibraryBehavior];

  if (preventActualSaveToLibraryBehavior)
  {
    assetCollection = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Save to Library Prevented" message:@"Saving to Library is currently disabled via our internal settings (for debugging)." preferredStyle:1];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __101__PXPhotoKitAssetCollectionContentSyndicationSaveToLibraryActionPerformer_performUserInteractionTask__block_invoke;
    v14[3] = &unk_1E7749600;
    v14[4] = self;
    v6 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:v14];
    [assetCollection addAction:v6];

    [(PXActionPerformer *)self presentViewController:assetCollection];
  }

  else
  {
    assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
    v7 = PXContentSyndicationUnsavedSyndicatedAssetsInAssetCollection(assetCollection);
    v8 = PLSyndicationUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v16 = [v7 count];
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "AssetCollectionContentSyndicationSaveToLibraryAction: Ensuring all %lu unsaved assets are available locally...", buf, 0xCu);
    }

    v9 = PXCreateDefaultAssetSharingHelper(self);
    fetchedObjects = [v7 fetchedObjects];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __101__PXPhotoKitAssetCollectionContentSyndicationSaveToLibraryActionPerformer_performUserInteractionTask__block_invoke_226;
    v12[3] = &unk_1E7749628;
    v12[4] = self;
    v13 = v7;
    v11 = v7;
    [v9 ensureLocalAssetsForSyndicationSave:fetchedObjects completion:v12];
  }
}

void __101__PXPhotoKitAssetCollectionContentSyndicationSaveToLibraryActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Debug action prevented actual saving."];
  [v1 completeUserInteractionTaskWithSuccess:0 error:v2];
}

uint64_t __101__PXPhotoKitAssetCollectionContentSyndicationSaveToLibraryActionPerformer_performUserInteractionTask__block_invoke_226(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = PLSyndicationUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    v6 = v5;
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "AssetCollectionContentSyndicationSaveToLibraryAction: Unsaved assets were all made locally available: %{public}@", &v8, 0xCu);
  }

  if (a2)
  {
    objc_storeStrong((*(a1 + 32) + 176), *(a1 + 40));
  }

  return [*(a1 + 32) completeUserInteractionTaskWithSuccess:a2 error:0];
}

@end