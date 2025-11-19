@interface PUAlbumStreamActivity
+ (BOOL)canPerformWithAssets:(id)a3;
- (BOOL)canPerformWithActivityItems:(id)a3;
- (PUAlbumStreamActivity)init;
- (UIViewController)referenceViewController;
- (id)_perAssetCreationOptionsForAssets:(id)a3;
- (id)itemSourceController;
- (void)_handleDismissWithSuccess:(BOOL)a3;
- (void)_performPresentationOnViewController:(id)a3 completion:(id)a4;
- (void)prepareWithActivityItems:(id)a3;
- (void)prepareWithAssets:(id)a3;
- (void)presentActivityOnViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation PUAlbumStreamActivity

- (UIViewController)referenceViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_referenceViewController);

  return WeakRetained;
}

- (id)itemSourceController
{
  WeakRetained = objc_loadWeakRetained(&self->_itemSourceController);

  return WeakRetained;
}

- (void)presentActivityOnViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (v7)
  {
    objc_storeWeak(&self->_referenceViewController, v7);
    [(PUAlbumStreamActivity *)self _performPresentationOnViewController:v7 completion:v8];
  }

  else
  {
    v9 = PXAssertGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "Presenting the activity controller requires either a concrete view controller or adoption of delegate methods for presenting and dismissing.", v10, 2u);
    }
  }
}

- (void)_performPresentationOnViewController:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activityController = self->_activityController;
  if (activityController)
  {
    [(UIViewController *)activityController setModalPresentationStyle:16];
    v9 = self->_activityController;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __73__PUAlbumStreamActivity__performPresentationOnViewController_completion___block_invoke;
    v10[3] = &unk_1E7B80C88;
    v11 = v7;
    [v6 presentViewController:v9 animated:1 completion:v10];
  }

  else if (v7)
  {
    v7[2](v7);
  }
}

uint64_t __73__PUAlbumStreamActivity__performPresentationOnViewController_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_handleDismissWithSuccess:(BOOL)a3
{
  v3 = a3;
  if ([(PUAlbumStreamActivity *)self isPresentedFromActivityViewController])
  {

    [(UIActivity *)self activityDidFinish:v3];
  }

  else
  {
    v6 = [(PXActivity *)self actionDelegate];
    if (objc_opt_respondsToSelector())
    {
      if (v3)
      {
        WeakRetained = 0;
      }

      else
      {
        WeakRetained = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
      }

      [v6 activity:self didFinishWithSuccess:v3 error:WeakRetained];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_referenceViewController);
      [WeakRetained dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (void)prepareWithAssets:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUAlbumStreamActivity *)self itemSourceController];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 assets];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;
  v9 = [v6 shouldExcludeCaptionInAllItemSources];
  v10 = 0;
  if ([v8 count] == 1 && (v9 & 1) == 0)
  {
    v11 = [v8 firstObject];
    [v11 fetchPropertySetsIfNeeded];
    v12 = [v11 descriptionProperties];
    v13 = [v12 assetDescription];

    if ([v13 length])
    {
      v14 = PLShareSheetGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = v13;
        _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEFAULT, "Sharing single asset which has a caption. Setting as starting text for posting as a comment: %@", &v20, 0xCu);
      }

      v10 = v13;
    }

    else
    {
      v10 = 0;
    }
  }

  v15 = [(PUAlbumStreamActivity *)self _perAssetCreationOptionsForAssets:v8];
  v16 = objc_alloc(MEMORY[0x1E69C39E0]);
  v17 = [v8 array];
  v18 = [v16 initWithAssets:v17 batchComment:v10 perAssetCreationOptions:v15];

  [(UIViewController *)v18 setActionControllerDelegate:self];
  activityController = self->_activityController;
  self->_activityController = v18;
}

- (id)_perAssetCreationOptionsForAssets:(id)a3
{
  v5 = a3;
  v6 = [(PUAlbumStreamActivity *)self itemSourceController];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 assetItemSources];
    v9 = [v8 array];

    v10 = [v9 count];
    if (v10 != [v5 count])
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"PUAlbumStreamActivity.m" lineNumber:149 description:@"Invalid item or asset count while creating sharing options"];
    }

    v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v12 = [v7 shouldExcludeLivenessInAllItemSources];
    v13 = [v7 shouldExcludeLocationInAllItemSources];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__PUAlbumStreamActivity__perAssetCreationOptionsForAssets___block_invoke;
    v18[3] = &unk_1E7B75188;
    v19 = v9;
    v21 = v12;
    v22 = v13;
    v14 = v11;
    v20 = v14;
    v15 = v9;
    [v5 enumerateObjectsUsingBlock:v18];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __59__PUAlbumStreamActivity__perAssetCreationOptionsForAssets___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v10 = [v5 objectAtIndexedSubscript:a3];
  [v10 sharingPreferences];
  v7 = PXSharedAlbumsDefaultAssetCreationOptions();
  v8 = *(a1 + 40);
  v9 = [v6 uuid];

  [v8 setObject:v7 forKeyedSubscript:v9];
}

- (void)prepareWithActivityItems:(id)a3
{
  if (PFIsPhotosAppAnyPlatform())
  {
    v7 = [(PUAlbumStreamActivity *)self itemSourceController];
    v4 = [v7 assets];
    [(PUAlbumStreamActivity *)self prepareWithAssets:v4];
  }

  else
  {
    v5 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:*MEMORY[0x1E69BFF18]];
    v6 = [MEMORY[0x1E698B0D8] sharedGuard];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__PUAlbumStreamActivity_prepareWithActivityItems___block_invoke;
    v8[3] = &unk_1E7B80280;
    v8[4] = self;
    [v6 initiateAuthenticationWithShieldingForSubject:v5 completion:v8];
  }
}

void __50__PUAlbumStreamActivity_prepareWithActivityItems___block_invoke(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__PUAlbumStreamActivity_prepareWithActivityItems___block_invoke_2;
    block[3] = &unk_1E7B80DD0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else if (v5)
  {
    v7 = PLShareSheetGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "APGuard failed to authenticate photos with error: %@", buf, 0xCu);
    }

    v8 = PULocalizedString(@"AUTHENTICATION_ERROR_TITLE");
    v9 = PULocalizedString(@"AUTHENTICATION_ERROR_MESSAGE");
    v10 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v8 message:v9 preferredStyle:1];
    v11 = MEMORY[0x1E69DC648];
    v12 = PULocalizedString(@"OK");
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __50__PUAlbumStreamActivity_prepareWithActivityItems___block_invoke_233;
    v17[3] = &unk_1E7B7E148;
    v17[4] = *(a1 + 32);
    v13 = [v11 actionWithTitle:v12 style:0 handler:v17];
    [v10 addAction:v13];

    v14 = *(a1 + 32);
    v15 = *(v14 + 232);
    *(v14 + 232) = v10;
    v16 = v10;
  }
}

void __50__PUAlbumStreamActivity_prepareWithActivityItems___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1 itemSourceController];
  v2 = [v3 assets];
  [v1 prepareWithAssets:v2];
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v4 = MEMORY[0x1E69BE6A8];
  v5 = [MEMORY[0x1E69789A8] systemPhotoLibraryURL];
  v6 = [v4 sharedStreamsEnabledForPhotoLibraryURL:v5];

  if (v6)
  {
    v7 = [(PUAlbumStreamActivity *)self itemSourceController];
    if ([v7 isPreparingIndividualItems])
    {
      v8 = [v7 assets];
      LOBYTE(v6) = [PUAlbumStreamActivity canPerformWithAssets:v8];
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (PUAlbumStreamActivity)init
{
  v3.receiver = self;
  v3.super_class = PUAlbumStreamActivity;
  result = [(UIActivity *)&v3 init];
  if (result)
  {
    result->_isPresentedFromActivityViewController = 1;
  }

  return result;
}

+ (BOOL)canPerformWithAssets:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v5 = MEMORY[0x1E69BE6A8];
  v4 = [MEMORY[0x1E69789A8] systemPhotoLibraryURL];
  LODWORD(v5) = [v5 sharedStreamsEnabledForPhotoLibraryURL:v4];

  if (v5)
  {
    v5 = [v3 count];
    if (PFIsPhotosAppAnyPlatform())
    {
      v6 = 1;
    }

    else
    {
      v6 = PFIsCameraAppAnyPlatform();
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if (![*(*(&v13 + 1) + 8 * i) playbackStyle] || (v6 & 1) == 0 && (PXContentSyndicationAssetIsUnsavedOrInSyndicationLibrary() & 1) != 0)
          {

            LOBYTE(v5) = 0;
            goto LABEL_18;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    if (v5)
    {
      LOBYTE(v5) = v5 <= [MEMORY[0x1E69BE6A8] maxAssetsPerStream];
    }
  }

LABEL_18:

  return v5;
}

@end