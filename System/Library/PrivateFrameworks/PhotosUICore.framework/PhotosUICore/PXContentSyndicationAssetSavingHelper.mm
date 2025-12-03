@interface PXContentSyndicationAssetSavingHelper
+ (id)assetSavingHelperFromAssetCollectionActionPerformer:(id)performer;
- (PXContentSyndicationAssetSavingHelper)initWithAssetCollection:(id)collection;
- (void)_handleAlertResponseForUnsavedSyndicatedAssets:(id)assets helperResult:(unint64_t)result error:(id)error completionHandler:(id)handler;
- (void)performSaveActionIfNeededOnUnsavedSyndicatedAssetsWithCompletion:(id)completion;
- (void)presentSaveAlertForUnsavedSyndicatedAssets:(id)assets canContinueAfterSaving:(BOOL)saving allowSkippingUnsavedAssets:(BOOL)unsavedAssets withCompletion:(id)completion;
- (void)saveUnsavedSyndicatedAssetsWithCompletion:(id)completion;
@end

@implementation PXContentSyndicationAssetSavingHelper

- (void)saveUnsavedSyndicatedAssetsWithCompletion:(id)completion
{
  completionCopy = completion;
  presentationEnvironment = [(PXContentSyndicationAssetSavingHelper *)self presentationEnvironment];

  if (!presentationEnvironment)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationAssetSavingHelper.m" lineNumber:239 description:{@"%@ requires a non-nil presentation environment", v17}];
  }

  v7 = [off_1E7721488 alloc];
  assetCollection = [(PXContentSyndicationAssetSavingHelper *)self assetCollection];
  *buf = *off_1E7721F68;
  v22 = xmmword_1A5380D10;
  v23 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = [v7 initWithAssetCollection:assetCollection keyAssetReference:0 indexPath:buf];

  v10 = [PXPhotoKitAssetCollectionContentSyndicationSaveToLibraryActionPerformer alloc];
  v11 = [(PXAssetCollectionActionPerformer *)v10 initWithActionType:*off_1E7721CA8 assetCollectionReference:v9 parameters:MEMORY[0x1E695E0F8]];
  presentationEnvironment2 = [(PXContentSyndicationAssetSavingHelper *)self presentationEnvironment];
  [(PXActionPerformer *)v11 setPresentationEnvironment:presentationEnvironment2];

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
  v20 = completionCopy;
  v14 = v11;
  v15 = completionCopy;
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

- (void)presentSaveAlertForUnsavedSyndicatedAssets:(id)assets canContinueAfterSaving:(BOOL)saving allowSkippingUnsavedAssets:(BOOL)unsavedAssets withCompletion:(id)completion
{
  assetsCopy = assets;
  completion;
  if (!assetsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationAssetSavingHelper.m" lineNumber:136 description:{@"%@ requires a non-nil fetch result of unsaved assets", v12}];
  }

  presentationEnvironment = [(PXContentSyndicationAssetSavingHelper *)self presentationEnvironment];

  if (!presentationEnvironment)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = NSStringFromSelector(a2);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationAssetSavingHelper.m" lineNumber:137 description:{@"%@ requires a non-nil presentation environment", v14}];
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

- (void)performSaveActionIfNeededOnUnsavedSyndicatedAssetsWithCompletion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  presentationEnvironment = [(PXContentSyndicationAssetSavingHelper *)self presentationEnvironment];

  if (!presentationEnvironment)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationAssetSavingHelper.m" lineNumber:94 description:{@"%@ requires a non-nil presentation environment", v21}];
  }

  assetCollection = [(PXContentSyndicationAssetSavingHelper *)self assetCollection];
  if (assetCollection)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = objc_opt_class();
    v24 = NSStringFromClass(v25);
    px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationAssetSavingHelper.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetCollection", v24, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationAssetSavingHelper.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetCollection", v24}];
  }

LABEL_5:
  v8 = PXContentSyndicationUnsavedSyndicatedAssetsInAssetCollection(assetCollection);
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
      v31 = completionCopy;
      [(PXContentSyndicationAssetSavingHelper *)self saveUnsavedSyndicatedAssetsWithCompletion:v30];
    }

    else
    {
      photoLibrary = [assetCollection photoLibrary];
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

      [librarySpecificFetchOptions setIncludeGuestAssets:1];
      v15 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:assetCollection options:librarySpecificFetchOptions];
      v16 = [v15 count];
      allowSkippingUnsavedAssets = [(PXContentSyndicationAssetSavingHelper *)self allowSkippingUnsavedAssets];
      v18 = v16 > v9 && allowSkippingUnsavedAssets;
      userCanContinueAfterSavingSyndicatedAssets = [(PXContentSyndicationAssetSavingHelper *)self userCanContinueAfterSavingSyndicatedAssets];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __106__PXContentSyndicationAssetSavingHelper_performSaveActionIfNeededOnUnsavedSyndicatedAssetsWithCompletion___block_invoke_2;
      v27[3] = &unk_1E7747FB0;
      v27[4] = self;
      v28 = v8;
      v29 = completionCopy;
      [(PXContentSyndicationAssetSavingHelper *)self presentSaveAlertForUnsavedSyndicatedAssets:v28 canContinueAfterSaving:userCanContinueAfterSavingSyndicatedAssets allowSkippingUnsavedAssets:v18 withCompletion:v27];
    }
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "ContentSyndicationAssetSavingHelper: No unsaved syndicated assets to process", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
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

- (void)_handleAlertResponseForUnsavedSyndicatedAssets:(id)assets helperResult:(unint64_t)result error:(id)error completionHandler:(id)handler
{
  assetsCopy = assets;
  errorCopy = error;
  handlerCopy = handler;
  if (result > 2)
  {
    if (result == 3)
    {
      v17 = PLSyndicationUIGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_DEFAULT, "ContentSyndicationAssetSavingHelper: User chose to skip saving unsaved syndicated assets", buf, 2u);
      }

      PXMap();
    }

    if (result == 4)
    {
      v16 = PLSyndicationUIGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEFAULT, "ContentSyndicationAssetSavingHelper: User canceled saving unsaved syndicated assets", buf, 2u);
      }

      handlerCopy[2](handlerCopy, 4, 0, errorCopy);
    }
  }

  else
  {
    switch(result)
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
        v24 = handlerCopy;
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
        v22 = handlerCopy;
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

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationAssetSavingHelper.m" lineNumber:62 description:@"Code which should be unreachable has been reached"];

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

- (PXContentSyndicationAssetSavingHelper)initWithAssetCollection:(id)collection
{
  collectionCopy = collection;
  if (!collectionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationAssetSavingHelper.m" lineNumber:47 description:{@"%@ requires a non-nil asset collection", v11}];
  }

  v12.receiver = self;
  v12.super_class = PXContentSyndicationAssetSavingHelper;
  v7 = [(PXContentSyndicationAssetSavingHelper *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_assetCollection, collection);
    *&v8->_userCanContinueAfterSavingSyndicatedAssets = 257;
  }

  return v8;
}

+ (id)assetSavingHelperFromAssetCollectionActionPerformer:(id)performer
{
  performerCopy = performer;
  assetCollectionReference = [performerCopy assetCollectionReference];
  assetCollection = [assetCollectionReference assetCollection];

  if (assetCollection)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationAssetSavingHelper.m" lineNumber:38 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"actionPerformer.assetCollectionReference.assetCollection", v13, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationAssetSavingHelper.m" lineNumber:38 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"actionPerformer.assetCollectionReference.assetCollection", v13}];
  }

LABEL_3:
  v8 = [[PXContentSyndicationAssetSavingHelper alloc] initWithAssetCollection:assetCollection];
  presentationEnvironment = [performerCopy presentationEnvironment];

  [(PXContentSyndicationAssetSavingHelper *)v8 setPresentationEnvironment:presentationEnvironment];
  [(PXContentSyndicationAssetSavingHelper *)v8 setUserCanContinueAfterSavingSyndicatedAssets:0];
  [(PXContentSyndicationAssetSavingHelper *)v8 setAllowSkippingUnsavedAssets:0];

  return v8;
}

@end