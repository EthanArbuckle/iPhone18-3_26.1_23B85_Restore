@interface PUAlbumStreamActivity
+ (BOOL)canPerformWithAssets:(id)assets;
- (BOOL)canPerformWithActivityItems:(id)items;
- (PUAlbumStreamActivity)init;
- (UIViewController)referenceViewController;
- (id)_perAssetCreationOptionsForAssets:(id)assets;
- (id)itemSourceController;
- (void)_handleDismissWithSuccess:(BOOL)success;
- (void)_performPresentationOnViewController:(id)controller completion:(id)completion;
- (void)prepareWithActivityItems:(id)items;
- (void)prepareWithAssets:(id)assets;
- (void)presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
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

- (void)presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  if (controllerCopy)
  {
    objc_storeWeak(&self->_referenceViewController, controllerCopy);
    [(PUAlbumStreamActivity *)self _performPresentationOnViewController:controllerCopy completion:completionCopy];
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

- (void)_performPresentationOnViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  activityController = self->_activityController;
  if (activityController)
  {
    [(UIViewController *)activityController setModalPresentationStyle:16];
    v9 = self->_activityController;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __73__PUAlbumStreamActivity__performPresentationOnViewController_completion___block_invoke;
    v10[3] = &unk_1E7B80C88;
    v11 = completionCopy;
    [controllerCopy presentViewController:v9 animated:1 completion:v10];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
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

- (void)_handleDismissWithSuccess:(BOOL)success
{
  successCopy = success;
  if ([(PUAlbumStreamActivity *)self isPresentedFromActivityViewController])
  {

    [(UIActivity *)self activityDidFinish:successCopy];
  }

  else
  {
    actionDelegate = [(PXActivity *)self actionDelegate];
    if (objc_opt_respondsToSelector())
    {
      if (successCopy)
      {
        WeakRetained = 0;
      }

      else
      {
        WeakRetained = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
      }

      [actionDelegate activity:self didFinishWithSuccess:successCopy error:WeakRetained];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_referenceViewController);
      [WeakRetained dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (void)prepareWithAssets:(id)assets
{
  v22 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  itemSourceController = [(PUAlbumStreamActivity *)self itemSourceController];
  v6 = itemSourceController;
  if (itemSourceController)
  {
    assets = [itemSourceController assets];
  }

  else
  {
    assets = assetsCopy;
  }

  v8 = assets;
  shouldExcludeCaptionInAllItemSources = [v6 shouldExcludeCaptionInAllItemSources];
  v10 = 0;
  if ([v8 count] == 1 && (shouldExcludeCaptionInAllItemSources & 1) == 0)
  {
    firstObject = [v8 firstObject];
    [firstObject fetchPropertySetsIfNeeded];
    descriptionProperties = [firstObject descriptionProperties];
    assetDescription = [descriptionProperties assetDescription];

    if ([assetDescription length])
    {
      v14 = PLShareSheetGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = assetDescription;
        _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEFAULT, "Sharing single asset which has a caption. Setting as starting text for posting as a comment: %@", &v20, 0xCu);
      }

      v10 = assetDescription;
    }

    else
    {
      v10 = 0;
    }
  }

  v15 = [(PUAlbumStreamActivity *)self _perAssetCreationOptionsForAssets:v8];
  v16 = objc_alloc(MEMORY[0x1E69C39E0]);
  array = [v8 array];
  v18 = [v16 initWithAssets:array batchComment:v10 perAssetCreationOptions:v15];

  [(UIViewController *)v18 setActionControllerDelegate:self];
  activityController = self->_activityController;
  self->_activityController = v18;
}

- (id)_perAssetCreationOptionsForAssets:(id)assets
{
  assetsCopy = assets;
  itemSourceController = [(PUAlbumStreamActivity *)self itemSourceController];
  v7 = itemSourceController;
  if (itemSourceController)
  {
    assetItemSources = [itemSourceController assetItemSources];
    array = [assetItemSources array];

    v10 = [array count];
    if (v10 != [assetsCopy count])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUAlbumStreamActivity.m" lineNumber:149 description:@"Invalid item or asset count while creating sharing options"];
    }

    v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(assetsCopy, "count")}];
    shouldExcludeLivenessInAllItemSources = [v7 shouldExcludeLivenessInAllItemSources];
    shouldExcludeLocationInAllItemSources = [v7 shouldExcludeLocationInAllItemSources];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__PUAlbumStreamActivity__perAssetCreationOptionsForAssets___block_invoke;
    v18[3] = &unk_1E7B75188;
    v19 = array;
    v21 = shouldExcludeLivenessInAllItemSources;
    v22 = shouldExcludeLocationInAllItemSources;
    v14 = v11;
    v20 = v14;
    v15 = array;
    [assetsCopy enumerateObjectsUsingBlock:v18];
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

- (void)prepareWithActivityItems:(id)items
{
  if (PFIsPhotosAppAnyPlatform())
  {
    itemSourceController = [(PUAlbumStreamActivity *)self itemSourceController];
    assets = [itemSourceController assets];
    [(PUAlbumStreamActivity *)self prepareWithAssets:assets];
  }

  else
  {
    v5 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:*MEMORY[0x1E69BFF18]];
    mEMORY[0x1E698B0D8] = [MEMORY[0x1E698B0D8] sharedGuard];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__PUAlbumStreamActivity_prepareWithActivityItems___block_invoke;
    v8[3] = &unk_1E7B80280;
    v8[4] = self;
    [mEMORY[0x1E698B0D8] initiateAuthenticationWithShieldingForSubject:v5 completion:v8];
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

- (BOOL)canPerformWithActivityItems:(id)items
{
  v4 = MEMORY[0x1E69BE6A8];
  systemPhotoLibraryURL = [MEMORY[0x1E69789A8] systemPhotoLibraryURL];
  v6 = [v4 sharedStreamsEnabledForPhotoLibraryURL:systemPhotoLibraryURL];

  if (v6)
  {
    itemSourceController = [(PUAlbumStreamActivity *)self itemSourceController];
    if ([itemSourceController isPreparingIndividualItems])
    {
      assets = [itemSourceController assets];
      LOBYTE(v6) = [PUAlbumStreamActivity canPerformWithAssets:assets];
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

+ (BOOL)canPerformWithAssets:(id)assets
{
  v18 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v5 = MEMORY[0x1E69BE6A8];
  systemPhotoLibraryURL = [MEMORY[0x1E69789A8] systemPhotoLibraryURL];
  LODWORD(v5) = [v5 sharedStreamsEnabledForPhotoLibraryURL:systemPhotoLibraryURL];

  if (v5)
  {
    v5 = [assetsCopy count];
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
    v7 = assetsCopy;
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