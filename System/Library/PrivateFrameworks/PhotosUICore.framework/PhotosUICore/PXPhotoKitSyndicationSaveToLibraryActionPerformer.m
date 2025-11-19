@interface PXPhotoKitSyndicationSaveToLibraryActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6 error:(id *)a7;
+ (BOOL)canPerformWithActionManager:(id)a3 error:(id *)a4;
+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitSyndicationSaveToLibraryActionPerformer

+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4
{
  v4 = a4;
  v5 = [v4 selectionManager];
  v6 = [v5 selectionSnapshot];
  v7 = [v6 allItemsEnumerator];

  v8 = [v7 count];
  [v4 presentationSource];

  if (v8 == 1)
  {
    PXMediaTypeForAssets();
  }

  PXFilter();
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6 error:(id *)a7
{
  if (a3)
  {
    return [a3 px_isUnsavedSyndicatedAsset];
  }

  else
  {
    return 0;
  }
}

+ (BOOL)canPerformWithActionManager:(id)a3 error:(id *)a4
{
  v6 = [a3 objectReference];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 asset];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v7 assetCollection];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [a1 canPerformOnAsset:v9 inAssetCollection:v11 person:0 socialGroup:0 error:a4];
  return v12;
}

- (void)performBackgroundTask
{
  v3 = +[PXContentSyndicationSettings sharedInstance];
  v4 = [v3 preventActualSaveToLibraryBehavior];

  if (v4)
  {

    [(PXActionPerformer *)self completeBackgroundTaskWithSuccess:1 error:0];
  }

  else
  {
    v5 = [(PXPhotoKitAssetActionPerformer *)self assets];
    v6 = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__PXPhotoKitSyndicationSaveToLibraryActionPerformer_performBackgroundTask__block_invoke;
    v11[3] = &unk_1E774C648;
    v12 = v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __74__PXPhotoKitSyndicationSaveToLibraryActionPerformer_performBackgroundTask__block_invoke_240;
    v8[3] = &unk_1E774B730;
    v9 = v12;
    v10 = self;
    v7 = v12;
    [v6 performChanges:v11 completionHandler:v8];
  }
}

void __74__PXPhotoKitSyndicationSaveToLibraryActionPerformer_performBackgroundTask__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = PLSyndicationUIGetLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v6 uuid];
          *buf = 138543618;
          v15 = v8;
          v16 = 2112;
          v17 = v6;
          _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "SyndicationSaveActionPerformer: Saving asset (%{public}@): %@", buf, 0x16u);
        }

        v9 = [MEMORY[0x1E6978698] creationRequestForAssetFromGuestAsset:v6];
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v18 count:16];
    }

    while (v3);
  }
}

void __74__PXPhotoKitSyndicationSaveToLibraryActionPerformer_performBackgroundTask__block_invoke_240(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PXPhotoKitSyndicationSaveToLibraryActionPerformer_performBackgroundTask__block_invoke_2;
  v7[3] = &unk_1E77443F0;
  v11 = a2;
  v8 = *(a1 + 32);
  v9 = v5;
  v10 = *(a1 + 40);
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __74__PXPhotoKitSyndicationSaveToLibraryActionPerformer_performBackgroundTask__block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v3 = PLSyndicationUIGetLog();
  v4 = v3;
  if (v2 == 1)
  {
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v5 = [*(a1 + 32) count];
    *buf = 134217984;
    v34 = v5;
    v6 = "SyndicationSaveActionPerformer: All %ld assets saved";
    v7 = v4;
    v8 = OS_LOG_TYPE_DEFAULT;
    v9 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v10 = [*(a1 + 32) count];
    v11 = *(a1 + 40);
    *buf = 134218242;
    v34 = v10;
    v35 = 2112;
    v36 = v11;
    v6 = "SyndicationSaveActionPerformer: All %ld assets did not save. Error: %@";
    v7 = v4;
    v8 = OS_LOG_TYPE_ERROR;
    v9 = 22;
  }

  _os_log_impl(&dword_1A3C1C000, v7, v8, v6, buf, v9);
LABEL_7:

  [*(a1 + 48) completeBackgroundTaskWithSuccess:*(a1 + 56) error:*(a1 + 40)];
  if (*(a1 + 56) == 1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = *(a1 + 32);
    v12 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v27;
      v16 = *MEMORY[0x1E6991E20];
      v17 = *MEMORY[0x1E6991E18];
LABEL_10:
      v18 = 0;
      if (v14 <= 9)
      {
        v19 = 9;
      }

      else
      {
        v19 = v14;
      }

      while (1)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v26 + 1) + v18);
        v21 = MEMORY[0x1E6991F28];
        v30[0] = v16;
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v30[1] = v17;
        v31[0] = v23;
        v31[1] = v20;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
        [v21 sendEvent:@"com.apple.photos.CPAnalytics.syndicatedAssetsSaved" withPayload:v24];

        if (v19 == v14)
        {
          break;
        }

        ++v14;
        v18 += 8;
        if (!--v13)
        {
          v13 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
          if (v13)
          {
            goto LABEL_10;
          }

          break;
        }
      }
    }
  }
}

- (void)performUserInteractionTask
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = +[PXContentSyndicationSettings sharedInstance];
  v4 = [v3 preventActualSaveToLibraryBehavior];

  if (v4)
  {
    v10 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Save to Library Prevented" message:@"Saving to Library is currently disabled via our internal settings (for debugging)." preferredStyle:1];
    v5 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
    [v10 addAction:v5];

    [(PXActionPerformer *)self presentViewController:v10];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }

  else
  {
    v6 = PLSyndicationUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(PXPhotoKitAssetActionPerformer *)self assets];
      *buf = 134217984;
      v13 = [v7 count];
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "SyndicationSaveActionPerformer: Ensuring all %lu unsaved assets are available locally...", buf, 0xCu);
    }

    v8 = PXCreateDefaultAssetSharingHelper(self);
    v9 = [(PXPhotoKitAssetActionPerformer *)self assets];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__PXPhotoKitSyndicationSaveToLibraryActionPerformer_performUserInteractionTask__block_invoke;
    v11[3] = &unk_1E774B308;
    v11[4] = self;
    [v8 ensureLocalAssetsForSyndicationSave:v9 completion:v11];
  }
}

uint64_t __79__PXPhotoKitSyndicationSaveToLibraryActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2)
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
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "SyndicationSaveActionPerformer: Unsaved assets were all made locally available: %{public}@", &v8, 0xCu);
  }

  return [*(a1 + 32) completeUserInteractionTaskWithSuccess:a2 error:0];
}

@end