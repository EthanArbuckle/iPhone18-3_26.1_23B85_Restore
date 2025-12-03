@interface PXPhotoKitAssetCollectionActionPerformer
+ (id)createStandardActionForAssetCollectionReference:(id)reference withInput:(id)input handler:(id)handler;
- (id)_confirmationAlertTitleForBlacklistingAction:(id)action viewSpec:(id)spec;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (void)_addAssets:(id)assets toSharedAlbum:(id)album;
- (void)_addCollectionShareAssetSources:(id)sources toSharedAlbum:(id)album;
- (void)_addStreamShareSources:(id)sources toSharedAlbum:(id)album;
- (void)_promptBlacklistingConfirmatonForUserAction:(id)action viewSpec:(id)spec completionHandler:(id)handler;
- (void)addAssets:(id)assets toSharedAlbum:(id)album;
- (void)addAssets:(id)assets toSharedCollection:(id)collection;
@end

@implementation PXPhotoKitAssetCollectionActionPerformer

- (void)addAssets:(id)assets toSharedCollection:(id)collection
{
  assetsCopy = assets;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __73__PXPhotoKitAssetCollectionActionPerformer_addAssets_toSharedCollection___block_invoke;
  v15 = &unk_1E7749628;
  selfCopy = self;
  v17 = assetsCopy;
  v7 = assetsCopy;
  v8 = [_TtC12PhotosUICore34PXSharedCollectionAddToViewFactory contentHostedViewControllerWithSharedCollection:collection assets:v7 doneCallback:&v12];
  v9 = objc_alloc(MEMORY[0x1E69DCCD8]);
  v10 = [v9 initWithRootViewController:{v8, v12, v13, v14, v15, selfCopy}];
  presentedViewController = self->_presentedViewController;
  self->_presentedViewController = v10;

  [(UINavigationController *)self->_presentedViewController setModalPresentationStyle:1];
  [(PXActionPerformer *)self presentViewController:self->_presentedViewController completionHandler:0];
}

uint64_t __73__PXPhotoKitAssetCollectionActionPerformer_addAssets_toSharedCollection___block_invoke(uint64_t result, int a2)
{
  if (*(*(result + 32) + 136))
  {
    v3 = result;
    v4 = PLUIGetLog();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "Adding assets to Shared Collection succeeded.", buf, 2u);
      }

      PXIncrementShareCountForAssets(*(v3 + 40));
    }

    else
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "Adding assets to Shared Collection cancelled.", buf, 2u);
      }
    }

    v6 = *(v3 + 32);
    v7 = v6[17];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __73__PXPhotoKitAssetCollectionActionPerformer_addAssets_toSharedCollection___block_invoke_688;
    v8[3] = &unk_1E7749428;
    v8[4] = v6;
    v9 = a2;
    return [v6 dismissViewController:v7 completionHandler:v8];
  }

  return result;
}

- (void)addAssets:(id)assets toSharedAlbum:(id)album
{
  v21 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  albumCopy = album;
  v9 = PLSharedAlbumsGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [albumCopy uuid];
    *buf = 138543362;
    v20 = uuid;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "PXPhotoKitAssetCollectionActionPerformer: Posting assets to shared album with UUID=%{public}@", buf, 0xCu);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:823 description:{@"%s must be called on the main thread", "-[PXPhotoKitAssetCollectionActionPerformer addAssets:toSharedAlbum:]"}];
  }

  if ([assetsCopy count])
  {
    presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__PXPhotoKitAssetCollectionActionPerformer_addAssets_toSharedAlbum___block_invoke;
    v15[3] = &unk_1E7730860;
    v15[4] = self;
    v16 = assetsCopy;
    v17 = albumCopy;
    v18 = a2;
    _PXSharedAlbumsValidateSharedAlbumAddAssets(v17, v16, presentationEnvironment, 1, v15);
  }

  else
  {
    v12 = PLSharedAlbumsGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uuid2 = [albumCopy uuid];
      *buf = 138543362;
      v20 = uuid2;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "PXPhotoKitAssetCollectionActionPerformer: No assets to add to shared album with UUID=%{public}@", buf, 0xCu);
    }

    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }
}

void __68__PXPhotoKitAssetCollectionActionPerformer_addAssets_toSharedAlbum___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = v3;
  if (v3)
  {
    v4 = [v3 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [*(a1 + 32) _addCollectionShareAssetSources:*(a1 + 40) toSharedAlbum:*(a1 + 48)];
    }

    else
    {
      v6 = v16;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = *(a1 + 56);
        v12 = *(a1 + 32);
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = [v6 px_descriptionForAssertionMessage];
        [v10 handleFailureInMethod:v11 object:v12 file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:836 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"validatedAssets", v14, v15}];
      }

      v7 = [PXVideoTrimQueueController areVideoSourcesStreamShareSources:v6];
      v8 = *(a1 + 32);
      v9 = *(a1 + 48);
      if (v7)
      {
        [v8 _addStreamShareSources:v6 toSharedAlbum:v9];
      }

      else
      {
        [v8 _addAssets:v6 toSharedAlbum:v9];
      }
    }
  }

  else
  {
    [*(a1 + 32) completeUserInteractionTaskWithSuccess:0 error:0];
  }
}

- (void)_addAssets:(id)assets toSharedAlbum:(id)album
{
  assetsCopy = assets;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __69__PXPhotoKitAssetCollectionActionPerformer__addAssets_toSharedAlbum___block_invoke;
  v15 = &unk_1E774B730;
  selfCopy = self;
  v17 = assetsCopy;
  v7 = assetsCopy;
  v8 = [_TtC12PhotosUICore29PXSharedAlbumAddToViewFactory contentHostedViewControllerWithSharedAlbum:album assets:v7 doneCallback:&v12];
  v9 = objc_alloc(MEMORY[0x1E69DCCD8]);
  v10 = [v9 initWithRootViewController:{v8, v12, v13, v14, v15, selfCopy}];
  presentedViewController = self->_presentedViewController;
  self->_presentedViewController = v10;

  [(UINavigationController *)self->_presentedViewController setModalPresentationStyle:1];
  [(PXActionPerformer *)self presentViewController:self->_presentedViewController completionHandler:0];
}

void __69__PXPhotoKitAssetCollectionActionPerformer__addAssets_toSharedAlbum___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (*(*(a1 + 32) + 136))
  {
    v6 = PLUIGetLog();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Adding assets to Shared Albums succeeded.", buf, 2u);
      }

      PXIncrementShareCountForAssets(*(a1 + 40));
    }

    else
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Adding assets to Shared Albums cancelled.", buf, 2u);
      }
    }

    v8 = *(a1 + 32);
    v9 = v8[17];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__PXPhotoKitAssetCollectionActionPerformer__addAssets_toSharedAlbum___block_invoke_672;
    v10[3] = &unk_1E7749428;
    v10[4] = v8;
    v11 = a2;
    [v8 dismissViewController:v9 completionHandler:v10];
  }
}

- (void)_addCollectionShareAssetSources:(id)sources toSharedAlbum:(id)album
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90__PXPhotoKitAssetCollectionActionPerformer__addCollectionShareAssetSources_toSharedAlbum___block_invoke;
  v8[3] = &unk_1E774C5C0;
  v8[4] = self;
  v5 = [_TtC12PhotosUICore29PXSharedAlbumAddToViewFactory contentHostedViewControllerWithSharedAlbum:album mediaSources:0 collectionShareAssetSources:sources doneCallback:v8];
  v6 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
  presentedViewController = self->_presentedViewController;
  self->_presentedViewController = v6;

  [(UINavigationController *)self->_presentedViewController setModalPresentationStyle:1];
  [(PXActionPerformer *)self presentViewController:self->_presentedViewController completionHandler:0];
}

void __90__PXPhotoKitAssetCollectionActionPerformer__addCollectionShareAssetSources_toSharedAlbum___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (*(*(a1 + 32) + 136))
  {
    v6 = PLUIGetLog();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v7)
      {
        *buf = 0;
        v8 = "Adding collection share asset sources to Shared Album succeeded.";
LABEL_7:
        _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
      }
    }

    else if (v7)
    {
      *buf = 0;
      v8 = "Adding collection share asset sources to Shared Album cancelled.";
      goto LABEL_7;
    }

    v9 = *(a1 + 32);
    v10 = v9[17];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __90__PXPhotoKitAssetCollectionActionPerformer__addCollectionShareAssetSources_toSharedAlbum___block_invoke_671;
    v11[3] = &unk_1E7749428;
    v11[4] = v9;
    v12 = a2;
    [v9 dismissViewController:v10 completionHandler:v11];
  }
}

- (void)_addStreamShareSources:(id)sources toSharedAlbum:(id)album
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__PXPhotoKitAssetCollectionActionPerformer__addStreamShareSources_toSharedAlbum___block_invoke;
  v8[3] = &unk_1E774C5C0;
  v8[4] = self;
  v5 = [_TtC12PhotosUICore29PXSharedAlbumAddToViewFactory contentHostedViewControllerWithSharedAlbum:album mediaSources:sources collectionShareAssetSources:0 doneCallback:v8];
  v6 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
  presentedViewController = self->_presentedViewController;
  self->_presentedViewController = v6;

  [(UINavigationController *)self->_presentedViewController setModalPresentationStyle:1];
  [(PXActionPerformer *)self presentViewController:self->_presentedViewController completionHandler:0];
}

void __81__PXPhotoKitAssetCollectionActionPerformer__addStreamShareSources_toSharedAlbum___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (*(*(a1 + 32) + 136))
  {
    v6 = PLUIGetLog();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v7)
      {
        *buf = 0;
        v8 = "Adding media sources to Shared Album succeeded.";
LABEL_7:
        _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
      }
    }

    else if (v7)
    {
      *buf = 0;
      v8 = "Adding media sources to Shared Album cancelled.";
      goto LABEL_7;
    }

    v9 = *(a1 + 32);
    v10 = v9[17];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __81__PXPhotoKitAssetCollectionActionPerformer__addStreamShareSources_toSharedAlbum___block_invoke_668;
    v11[3] = &unk_1E7749428;
    v11[4] = v9;
    v12 = a2;
    [v9 dismissViewController:v10 completionHandler:v11];
  }
}

- (void)_promptBlacklistingConfirmatonForUserAction:(id)action viewSpec:(id)spec completionHandler:(id)handler
{
  specCopy = spec;
  handlerCopy = handler;
  actionCopy = action;
  v11 = [(PXPhotoKitAssetCollectionActionPerformer *)self _confirmationAlertTitleForBlacklistingAction:actionCopy viewSpec:specCopy];
  v12 = PXLocalizedStringFromTable(@"PXBlockMemoryResetDescription_iOS", @"PhotosUICore");
  v13 = PXLocalizedStringFromTable(@"PXBlockConfirmationDialogButtonTitle_Confirm", @"PhotosUICore");
  v14 = PXLocalizedStringFromTable(@"PXBlockConfirmationDialogButtonTitle_Cancel", @"PhotosUICore");
  v26 = v11;
  v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@\n%@", v11, v12];
  v16 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v15 preferredStyle:0];
  LODWORD(v11) = [actionCopy isEqualToString:*off_1E7721C58];

  v17 = 0;
  if (v11)
  {
    person = [specCopy person];
    [specCopy accessoryViewFrame];
    v17 = [PXMemoriesBlacklistAccessoryViewHelper avatarViewWithFrame:person person:?];
  }

  v19 = MEMORY[0x1E69DC648];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __115__PXPhotoKitAssetCollectionActionPerformer__promptBlacklistingConfirmatonForUserAction_viewSpec_completionHandler___block_invoke;
  v29[3] = &unk_1E7748000;
  v20 = handlerCopy;
  v30 = v20;
  v21 = [v19 actionWithTitle:v13 style:2 handler:v29];
  [v16 addAction:v21];

  v22 = MEMORY[0x1E69DC648];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __115__PXPhotoKitAssetCollectionActionPerformer__promptBlacklistingConfirmatonForUserAction_viewSpec_completionHandler___block_invoke_2;
  v27[3] = &unk_1E7748000;
  v23 = v20;
  v28 = v23;
  v24 = [v22 actionWithTitle:v14 style:1 handler:v27];
  [v16 addAction:v24];

  if (v17)
  {
    v25 = [[PXMemoriesBlacklistAccessoryViewController alloc] initWithAccessoryView:v17 viewSpec:specCopy];
    [v16 _setHeaderContentViewController:v25];
  }

  [(PXActionPerformer *)self presentViewController:v16];
}

- (id)_confirmationAlertTitleForBlacklistingAction:(id)action viewSpec:(id)spec
{
  actionCopy = action;
  specCopy = spec;
  if ([actionCopy isEqualToString:*off_1E7721C68])
  {
    v7 = @"PXBlockMemoryDayConfirmationTitle";
LABEL_13:
    v10 = PXLocalizedStringFromTable(v7, @"PhotosUICore");
    goto LABEL_14;
  }

  if ([actionCopy isEqualToString:*off_1E7721C70])
  {
    v7 = @"PXBlockMemoryDateIntervalConfirmationTitle";
    goto LABEL_13;
  }

  if ([actionCopy isEqualToString:*off_1E7721C50])
  {
    v7 = @"PXBlockMemoryHolidayConfirmationTitle";
    goto LABEL_13;
  }

  if ([actionCopy isEqualToString:*off_1E7721C60])
  {
    v7 = @"PXBlockMemoryPlaceConfirmationTitle";
    goto LABEL_13;
  }

  if (![actionCopy isEqualToString:*off_1E7721C58])
  {
    v7 = @"PXBlockMemoryGenericConfirmationTitle";
    goto LABEL_13;
  }

  person = [specCopy person];
  px_localizedName = [person px_localizedName];

  if ([px_localizedName length])
  {
    PXLocalizedStringFromTable(@"PXBlockMemoryPersonSpecificConfirmationTitle", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringWithValidatedFormat();
  }

  v10 = PXLocalizedStringFromTable(@"PXBlockMemoryPersonConfirmationTitle", @"PhotosUICore");

LABEL_14:

  return v10;
}

- (id)localizedTitleForUseCase:(unint64_t)case
{
  v5 = objc_opt_class();
  assetCollectionReference = [(PXAssetCollectionActionPerformer *)self assetCollectionReference];
  v7 = [v5 localizedTitleForUseCase:case assetCollectionReference:assetCollectionReference withInputs:self];

  return v7;
}

+ (id)createStandardActionForAssetCollectionReference:(id)reference withInput:(id)input handler:(id)handler
{
  referenceCopy = reference;
  inputCopy = input;
  handlerCopy = handler;
  v11 = [self makeCustomMenuElementForUseCase:1 assetCollectionReference:referenceCopy withInput:inputCopy handler:handlerCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = [self localizedTitleForUseCase:1 assetCollectionReference:referenceCopy withInputs:inputCopy];
    v15 = MEMORY[0x1E69DCAB8];
    v16 = [self systemImageNameForAssetCollectionReference:referenceCopy withInputs:inputCopy];
    v17 = [v15 systemImageNamed:v16];

    if (![v14 length])
    {
      PXAssertGetLog();
    }

    v18 = [MEMORY[0x1E69DC628] actionWithTitle:v14 image:v17 identifier:0 handler:handlerCopy];
    if ([self isActionDestructive])
    {
      [v18 setAttributes:{objc_msgSend(v18, "attributes") | 2}];
    }

    v13 = v18;
  }

  return v13;
}

@end