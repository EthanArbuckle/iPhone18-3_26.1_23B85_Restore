@interface PXContentSyndicationAssetSavingHelper
+ (id)assetSavingHelperFromAssetCollectionActionPerformer:(id)a3;
- (PXContentSyndicationAssetSavingHelper)initWithAssetCollection:(id)a3;
- (void)_handleAlertResponseForUnsavedSyndicatedAssets:(id)a3 helperResult:(unint64_t)a4 error:(id)a5 completionHandler:(id)a6;
- (void)performSaveActionIfNeededOnUnsavedSyndicatedAssetsWithCompletion:(id)a3;
- (void)presentSaveAlertForUnsavedSyndicatedAssets:(id)a3 canContinueAfterSaving:(BOOL)a4 allowSkippingUnsavedAssets:(BOOL)a5 withCompletion:(id)a6;
- (void)saveUnsavedSyndicatedAssetsWithCompletion:(id)a3;
@end

@implementation PXContentSyndicationAssetSavingHelper

- (void)saveUnsavedSyndicatedAssetsWithCompletion:(id)a3
{
  v5 = a3;
  v6 = [(PXContentSyndicationAssetSavingHelper *)self presentationEnvironment];

  if (!v6)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = NSStringFromSelector(a2);
    [v16 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationAssetSavingHelper.m" lineNumber:239 description:{@"%@ requires a non-nil presentation environment", v17}];
  }

  v7 = [off_1E7721488 alloc];
  v8 = [(PXContentSyndicationAssetSavingHelper *)self assetCollection];
  *buf = *off_1E7721F68;
  v22 = xmmword_1A5380D10;
  v23 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = [v7 initWithAssetCollection:v8 keyAssetReference:0 indexPath:buf];

  v10 = [PXPhotoKitAssetCollectionContentSyndicationSaveToLibraryActionPerformer alloc];
  v11 = [(PXAssetCollectionActionPerformer *)v10 initWithActionType:*off_1E7721CA8 assetCollectionReference:v9 parameters:MEMORY[0x1E695E0F8]];
  v12 = [(PXContentSyndicationAssetSavingHelper *)self presentationEnvironment];
  [(PXActionPerformer *)v11 setPresentationEnvironment:v12];

  v13 = PLSyndicationUIGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "ContentSyndicationAssetSavingHelper: Performing save action...", buf, 2u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __83__PXContentSyndicationAssetSavingHelper_saveUnsavedSyndicatedAssetsWithCompletion___block_invoke;
  v18[3] = &unk_1E774BD88;
  v19 = v11;
  v20 = v5;
  v14 = v11;
  v15 = v5;
  [(PXActionPerformer *)v14 performActionWithCompletionHandler:v18];
}

void __83__PXContentSyndicationAssetSavingHelper_saveUnsavedSyndicatedAssetsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  v8 = [v5 savedAssetsFetchResult];
  v7 = [v8 fetchedObjects];
  (*(v4 + 16))(v4, a2, v7, v6);
}

- (void)presentSaveAlertForUnsavedSyndicatedAssets:(id)a3 canContinueAfterSaving:(BOOL)a4 allowSkippingUnsavedAssets:(BOOL)a5 withCompletion:(id)a6
{
  v9 = a3;
  a6;
  if (!v9)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = NSStringFromSelector(a2);
    [v11 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationAssetSavingHelper.m" lineNumber:136 description:{@"%@ requires a non-nil fetch result of unsaved assets", v12}];
  }

  v10 = [(PXContentSyndicationAssetSavingHelper *)self presentationEnvironment];

  if (!v10)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = NSStringFromSelector(a2);
    [v13 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationAssetSavingHelper.m" lineNumber:137 description:{@"%@ requires a non-nil presentation environment", v14}];
  }

  PXMediaTypeForAssets();
}

uint64_t __149__PXContentSyndicationAssetSavingHelper_presentSaveAlertForUnsavedSyndicatedAssets_canContinueAfterSaving_allowSkippingUnsavedAssets_withCompletion___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), v1, 0);
}

- (void)performSaveActionIfNeededOnUnsavedSyndicatedAssetsWithCompletion:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PXContentSyndicationAssetSavingHelper *)self presentationEnvironment];

  if (!v6)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = NSStringFromSelector(a2);
    [v20 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationAssetSavingHelper.m" lineNumber:94 description:{@"%@ requires a non-nil presentation environment", v21}];
  }

  v7 = [(PXContentSyndicationAssetSavingHelper *)self assetCollection];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = objc_opt_class();
    v24 = NSStringFromClass(v25);
    v26 = [v7 px_descriptionForAssertionMessage];
    [v22 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationAssetSavingHelper.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetCollection", v24, v26}];
  }

  else
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    [v22 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationAssetSavingHelper.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetCollection", v24}];
  }

LABEL_5:
  v8 = PXContentSyndicationUnsavedSyndicatedAssetsInAssetCollection(v7);
  v9 = [v8 count];
  v10 = PLSyndicationUIGetLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 134217984;
      v33 = v9;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "ContentSyndicationAssetSavingHelper: Found %lu unsaved content syndication assets that need to be saved before continuing", buf, 0xCu);
    }

    if ([(PXContentSyndicationAssetSavingHelper *)self skipUserPromptForSavingAssets])
    {
      v12 = PLSyndicationUIGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "ContentSyndicationAssetSavingHelper: Skipping user prompt and directly saving assets", buf, 2u);
      }

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __106__PXContentSyndicationAssetSavingHelper_performSaveActionIfNeededOnUnsavedSyndicatedAssetsWithCompletion___block_invoke;
      v30[3] = &unk_1E7747F68;
      v31 = v5;
      [(PXContentSyndicationAssetSavingHelper *)self saveUnsavedSyndicatedAssetsWithCompletion:v30];
    }

    else
    {
      v13 = [v7 photoLibrary];
      v14 = [v13 librarySpecificFetchOptions];

      [v14 setIncludeGuestAssets:1];
      v15 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v7 options:v14];
      v16 = [v15 count];
      v17 = [(PXContentSyndicationAssetSavingHelper *)self allowSkippingUnsavedAssets];
      v18 = v16 > v9 && v17;
      v19 = [(PXContentSyndicationAssetSavingHelper *)self userCanContinueAfterSavingSyndicatedAssets];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __106__PXContentSyndicationAssetSavingHelper_performSaveActionIfNeededOnUnsavedSyndicatedAssetsWithCompletion___block_invoke_2;
      v27[3] = &unk_1E7747FB0;
      v27[4] = self;
      v28 = v8;
      v29 = v5;
      [(PXContentSyndicationAssetSavingHelper *)self presentSaveAlertForUnsavedSyndicatedAssets:v28 canContinueAfterSaving:v19 allowSkippingUnsavedAssets:v18 withCompletion:v27];
    }
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "ContentSyndicationAssetSavingHelper: No unsaved syndicated assets to process", buf, 2u);
    }

    (*(v5 + 2))(v5, 0, 0, 0);
  }
}

uint64_t __106__PXContentSyndicationAssetSavingHelper_performSaveActionIfNeededOnUnsavedSyndicatedAssetsWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 4;
  }

  return (*(v2 + 16))(v2, v3);
}

- (void)_handleAlertResponseForUnsavedSyndicatedAssets:(id)a3 helperResult:(unint64_t)a4 error:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v17 = PLSyndicationUIGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_DEFAULT, "ContentSyndicationAssetSavingHelper: User chose to skip saving unsaved syndicated assets", buf, 2u);
      }

      PXMap();
    }

    if (a4 == 4)
    {
      v16 = PLSyndicationUIGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEFAULT, "ContentSyndicationAssetSavingHelper: User canceled saving unsaved syndicated assets", buf, 2u);
      }

      v13[2](v13, 4, 0, v12);
    }
  }

  else
  {
    switch(a4)
    {
      case 1uLL:
        v18 = PLSyndicationUIGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEFAULT, "ContentSyndicationAssetSavingHelper: User chose to save unsaved syndicated assets and stop", buf, 2u);
        }

        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __125__PXContentSyndicationAssetSavingHelper__handleAlertResponseForUnsavedSyndicatedAssets_helperResult_error_completionHandler___block_invoke;
        v23[3] = &unk_1E7747F68;
        v24 = v13;
        [(PXContentSyndicationAssetSavingHelper *)self saveUnsavedSyndicatedAssetsWithCompletion:v23];
        v15 = v24;
        goto LABEL_18;
      case 2uLL:
        v14 = PLSyndicationUIGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEFAULT, "ContentSyndicationAssetSavingHelper: User chose to save unsaved syndicated assets and continue", buf, 2u);
        }

        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __125__PXContentSyndicationAssetSavingHelper__handleAlertResponseForUnsavedSyndicatedAssets_helperResult_error_completionHandler___block_invoke_208;
        v21[3] = &unk_1E7747F68;
        v22 = v13;
        [(PXContentSyndicationAssetSavingHelper *)self saveUnsavedSyndicatedAssetsWithCompletion:v21];
        v15 = v22;
LABEL_18:

        break;
      case 0uLL:
        v19 = PLSyndicationUIGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_DEFAULT, "ContentSyndicationAssetSavingHelper: No unsaved syndicated assets to process", buf, 2u);
        }

        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        [v20 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationAssetSavingHelper.m" lineNumber:62 description:@"Code which should be unreachable has been reached"];

        abort();
    }
  }
}

uint64_t __125__PXContentSyndicationAssetSavingHelper__handleAlertResponseForUnsavedSyndicatedAssets_helperResult_error_completionHandler___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 4;
  }

  return (*(v2 + 16))(v2, v3);
}

uint64_t __125__PXContentSyndicationAssetSavingHelper__handleAlertResponseForUnsavedSyndicatedAssets_helperResult_error_completionHandler___block_invoke_208(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  return (*(v2 + 16))(v2, v3);
}

- (PXContentSyndicationAssetSavingHelper)initWithAssetCollection:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = NSStringFromSelector(a2);
    [v10 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationAssetSavingHelper.m" lineNumber:47 description:{@"%@ requires a non-nil asset collection", v11}];
  }

  v12.receiver = self;
  v12.super_class = PXContentSyndicationAssetSavingHelper;
  v7 = [(PXContentSyndicationAssetSavingHelper *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_assetCollection, a3);
    *&v8->_userCanContinueAfterSavingSyndicatedAssets = 257;
  }

  return v8;
}

+ (id)assetSavingHelperFromAssetCollectionActionPerformer:(id)a3
{
  v5 = a3;
  v6 = [v5 assetCollectionReference];
  v7 = [v6 assetCollection];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    v15 = [v7 px_descriptionForAssertionMessage];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PXContentSyndicationAssetSavingHelper.m" lineNumber:38 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"actionPerformer.assetCollectionReference.assetCollection", v13, v15}];
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v11 handleFailureInMethod:a2 object:a1 file:@"PXContentSyndicationAssetSavingHelper.m" lineNumber:38 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"actionPerformer.assetCollectionReference.assetCollection", v13}];
  }

LABEL_3:
  v8 = [[PXContentSyndicationAssetSavingHelper alloc] initWithAssetCollection:v7];
  v9 = [v5 presentationEnvironment];

  [(PXContentSyndicationAssetSavingHelper *)v8 setPresentationEnvironment:v9];
  [(PXContentSyndicationAssetSavingHelper *)v8 setUserCanContinueAfterSavingSyndicatedAssets:0];
  [(PXContentSyndicationAssetSavingHelper *)v8 setAllowSkippingUnsavedAssets:0];

  return v8;
}

@end