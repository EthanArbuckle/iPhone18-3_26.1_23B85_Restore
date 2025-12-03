@interface PXPhotoKitDuplicateActionController
+ (void)_presentDuplicationWasInterruptedWithItemCount:(int64_t)count hasPhotos:(BOOL)photos hasVideos:(BOOL)videos;
- (BOOL)_validateOriginalAssetResourcesForDuplicateAction:(int64_t)action;
- (PXPhotoKitDuplicateActionController)init;
- (PXPhotoKitDuplicateActionController)initWithSelectionSnapshot:(id)snapshot undoManager:(id)manager;
- (id)alertConfigurationForDuplicateActionWithUserConfirmationHandler:(id)handler;
- (void)_checkHasPhotos:(BOOL *)photos hasVideos:(BOOL *)videos;
- (void)_finishedDuplicationWithSuccess:(BOOL)success error:(id)error;
- (void)_presentAlertWithError:(id)error;
- (void)_progressFractionCompletedDidChange;
- (void)configureAlertConfiguration:(id)configuration withUserConfirmationHandler:(id)handler;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performDuplicateAction:(int64_t)action newStillImageTime:(id *)time completionHandler:(id)handler;
- (void)setProgress:(id)progress;
@end

@implementation PXPhotoKitDuplicateActionController

- (void)_checkHasPhotos:(BOOL *)photos hasVideos:(BOOL *)videos
{
  v23 = *MEMORY[0x1E69E9840];
  if (!photos)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitDuplicateActionController.m" lineNumber:259 description:{@"Invalid parameter not satisfying: %@", @"hasPhotos"}];

    if (videos)
    {
      goto LABEL_3;
    }

LABEL_21:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitDuplicateActionController.m" lineNumber:260 description:{@"Invalid parameter not satisfying: %@", @"hasVideos"}];

    goto LABEL_3;
  }

  if (!videos)
  {
    goto LABEL_21;
  }

LABEL_3:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  selectedAssets = [(PXAssetsSelectionAction *)self->_action selectedAssets];
  v9 = [selectedAssets countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v9)
  {
    LOBYTE(isVideo) = 0;
    LOBYTE(isPhoto) = 0;
    goto LABEL_19;
  }

  v10 = v9;
  LOBYTE(isVideo) = 0;
  LOBYTE(isPhoto) = 0;
  v13 = *v19;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(selectedAssets);
      }

      v15 = *(*(&v18 + 1) + 8 * i);
      if (isPhoto)
      {
        isPhoto = 1;
        if ((isVideo & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        isPhoto = [*(*(&v18 + 1) + 8 * i) isPhoto];
        if ((isVideo & 1) == 0)
        {
LABEL_10:
          isVideo = [v15 isVideo];
          goto LABEL_13;
        }
      }

      isVideo = 1;
LABEL_13:
      if (isPhoto & isVideo)
      {
        LOBYTE(isVideo) = 1;
        LOBYTE(isPhoto) = 1;
        goto LABEL_19;
      }
    }

    v10 = [selectedAssets countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_19:

  *photos = isPhoto;
  *videos = isVideo;
}

- (void)_finishedDuplicationWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v13 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v7 = errorCopy;
  if (successCopy)
  {
    progressController = [(PXPhotoKitDuplicateActionController *)self progressController];
    [progressController setFractionCompleted:1.0];
  }

  else if (errorCopy)
  {
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Duplication failed with error %@.", &v11, 0xCu);
    }

    [(PXPhotoKitDuplicateActionController *)self _presentAlertWithError:v7];
  }

  progressController2 = [(PXPhotoKitDuplicateActionController *)self progressController];
  [progressController2 hideAnimated:1 allowDelay:successCopy];

  [(PXPhotoKitDuplicateActionController *)self setProgressController:0];
  [(PXPhotoKitDuplicateActionController *)self setProgress:0];
}

- (void)_progressFractionCompletedDidChange
{
  progress = [(PXPhotoKitDuplicateActionController *)self progress];
  [progress fractionCompleted];
  v4 = v3;
  progressController = [(PXPhotoKitDuplicateActionController *)self progressController];
  [progressController setFractionCompleted:v4];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context == &PUDuplicateProgressObserverFractionCompletedContext)
  {
    progress = [(PXPhotoKitDuplicateActionController *)self progress];

    if (progress == objectCopy)
    {
      objc_initWeak(&location, self);
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __86__PXPhotoKitDuplicateActionController_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v18 = &unk_1E774C318;
      objc_copyWeak(&v19, &location);
      px_dispatch_on_main_queue();
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PXPhotoKitDuplicateActionController;
    [(PXPhotoKitDuplicateActionController *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

void __86__PXPhotoKitDuplicateActionController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _progressFractionCompletedDidChange];
}

- (void)setProgress:(id)progress
{
  progressCopy = progress;
  progress = self->_progress;
  if (progress != progressCopy)
  {
    v7 = progressCopy;
    [(NSProgress *)progress removeObserver:self forKeyPath:@"fractionCompleted"];
    objc_storeStrong(&self->_progress, progress);
    [(NSProgress *)self->_progress addObserver:self forKeyPath:@"fractionCompleted" options:4 context:&PUDuplicateProgressObserverFractionCompletedContext];
    progressCopy = v7;
  }
}

- (void)_presentAlertWithError:(id)error
{
  v8 = 0;
  [(PXPhotoKitDuplicateActionController *)self _checkHasPhotos:&v8 + 1 hasVideos:&v8];
  assetCount = [(PXDuplicateAssetsAction *)self->_action assetCount];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__PXPhotoKitDuplicateActionController__presentAlertWithError___block_invoke;
  v5[3] = &__block_descriptor_42_e5_v8__0l;
  v5[4] = assetCount;
  v6 = HIBYTE(v8);
  v7 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

- (void)performDuplicateAction:(int64_t)action newStillImageTime:(id *)time completionHandler:(id)handler
{
  handlerCopy = handler;
  if (action && (v9 = self->_action) != 0 && (action != 2 || [(PXDuplicateAssetsAction *)v9 canExtractStill]) && [(PXPhotoKitDuplicateActionController *)self _validateOriginalAssetResourcesForDuplicateAction:action])
  {
    v10 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
    v11 = objc_alloc_init(PXActivityProgressController);
    v12 = PXLocalizedStringFromTable(@"PXPhotoKitDuplicateAssetActionPerformer_DOWNLOADING", @"PhotosUICore");
    [(PXActivityProgressController *)v11 setTitle:v12];

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __98__PXPhotoKitDuplicateActionController_performDuplicateAction_newStillImageTime_completionHandler___block_invoke;
    v26[3] = &unk_1E774C648;
    v13 = v10;
    v27 = v13;
    [(PXActivityProgressController *)v11 setCancellationHandler:v26];
    [(PXActivityProgressController *)v11 showAnimated:1 allowDelay:1];
    objc_initWeak(&location, self);
    [(PXDuplicateAssetsAction *)self->_action setDuplicatesAsStill:action == 2];
    v23 = *&time->var0;
    var3 = time->var3;
    [(PXDuplicateAssetsAction *)self->_action setStillImageTime:&v23];
    [(PXDuplicateAssetsAction *)self->_action setActionProgress:v13];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __98__PXPhotoKitDuplicateActionController_performDuplicateAction_newStillImageTime_completionHandler___block_invoke_2;
    v20[3] = &unk_1E772FF20;
    v14 = v11;
    v21 = v14;
    objc_copyWeak(v22, &location);
    v22[1] = action;
    [(PXDuplicateAssetsAction *)self->_action setDownloadCompletionHandler:v20];
    [(PXPhotoKitDuplicateActionController *)self setProgress:v13];
    [(PXPhotoKitDuplicateActionController *)self setProgressController:v14];
    action = self->_action;
    undoManager = [(PXPhotoKitDuplicateActionController *)self undoManager];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __98__PXPhotoKitDuplicateActionController_performDuplicateAction_newStillImageTime_completionHandler___block_invoke_3;
    v17[3] = &unk_1E77472D0;
    objc_copyWeak(&v19, &location);
    v18 = handlerCopy;
    [(PXAction *)action executeWithUndoManager:undoManager completionHandler:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(v22);

    objc_destroyWeak(&location);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

uint64_t __98__PXPhotoKitDuplicateActionController_performDuplicateAction_newStillImageTime_completionHandler___block_invoke_2(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = PXLocalizedStringFromTable(@"PXPhotoKitDuplicateAssetActionPerformer_DUPLICATING", @"PhotosUICore");
  [*(a1 + 32) setTitle:v3];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained _validateOriginalAssetResourcesForDuplicateAction:*(a1 + 48)];

  return v5;
}

uint64_t __98__PXPhotoKitDuplicateActionController_performDuplicateAction_newStillImageTime_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishedDuplicationWithSuccess:a2 error:v5];

  result = *(a1 + 32);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

- (BOOL)_validateOriginalAssetResourcesForDuplicateAction:(int64_t)action
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selectedAssets = [(PXAssetsSelectionAction *)self->_action selectedAssets];
  v6 = [selectedAssets countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v6)
  {
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(selectedAssets);
      }

      [PXAssetSupportChecker checkIsSupportedAsset:MEMORY[0x1E69E9820] type:3221225472 completionHandler:__89__PXPhotoKitDuplicateActionController__validateOriginalAssetResourcesForDuplicateAction___block_invoke, &unk_1E772FEF8, self, *(*(&v11 + 1) + 8 * v8), &v15, a2];
      if ((v16[3] & 1) == 0)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [selectedAssets countByEnumeratingWithState:&v11 objects:v19 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v9 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v9;
}

void __89__PXPhotoKitDuplicateActionController__validateOriginalAssetResourcesForDuplicateAction___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if ((a2 & 1) == 0)
  {
    if (!(v7 | v8))
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PXPhotoKitDuplicateActionController.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"isSupported || (uti || codecName)"}];
    }

    v10 = [*(a1 + 32) progress];
    [v10 cancel];

    *(*(*(a1 + 48) + 8) + 24) = 0;
    v11 = PLUIGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 40);
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEBUG, "Duplication failed for unsupported asset: %@", buf, 0xCu);
    }

    buf[0] = 0;
    v17 = 0;
    v13 = [*(*(a1 + 32) + 8) assetCount];
    [*(a1 + 32) _checkHasPhotos:buf hasVideos:&v17];
    v14 = _ConditionallyFormattedString(buf[0], v17, @"PXPhotoKitDuplicateAssetActionPerformer_UNSUPPORTED_FORMAT_TITLE_ONE_PHOTO", @"PXPhotoKitDuplicateAssetActionPerformer_UNSUPPORTED_FORMAT_TITLE_N_PHOTOS", @"PXPhotoKitDuplicateAssetActionPerformer_UNSUPPORTED_FORMAT_TITLE_ONE_VIDEO", @"PXPhotoKitDuplicateAssetActionPerformer_UNSUPPORTED_FORMAT_TITLE_N_VIDEOS", @"PXPhotoKitDuplicateAssetActionPerformer_UNSUPPORTED_FORMAT_TITLE_ONE_ITEM", @"PXPhotoKitDuplicateAssetActionPerformer_UNSUPPORTED_FORMAT_TITLE_N_ITEMS", v13);
    v15 = _ConditionallyFormattedString(buf[0], v17, @"PXPhotoKitDuplicateAssetActionPerformer_UNSUPPORTED_FORMAT_MESSAGE_ONE_PHOTO", @"PXPhotoKitDuplicateAssetActionPerformer_UNSUPPORTED_FORMAT_MESSAGE_N_PHOTOS", @"PXPhotoKitDuplicateAssetActionPerformer_UNSUPPORTED_FORMAT_MESSAGE_ONE_VIDEO", @"PXPhotoKitDuplicateAssetActionPerformer_UNSUPPORTED_FORMAT_MESSAGE_N_VIDEOS", @"PXPhotoKitDuplicateAssetActionPerformer_UNSUPPORTED_FORMAT_MESSAGE_ONE_ITEM", @"PXPhotoKitDuplicateAssetActionPerformer_UNSUPPORTED_FORMAT_MESSAGE_N_ITEMS", v13);
    [PXAssetSupportChecker presentAlertWithTitle:v14 message:v15 uti:v7 codecName:v9 alertControllerPresenter:&__block_literal_global_29398 completionHandler:0];
  }
}

uint64_t __89__PXPhotoKitDuplicateActionController__validateOriginalAssetResourcesForDuplicateAction___block_invoke_241(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69DC668];
  v3 = a2;
  v4 = [v2 sharedApplication];
  v5 = [v4 px_firstKeyWindow];
  [v5 pl_presentViewController:v3 animated:1];

  return 1;
}

- (void)configureAlertConfiguration:(id)configuration withUserConfirmationHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  action = self->_action;
  if (action && [(PXDuplicateAssetsAction *)action canExtractStill])
  {
    extractStillConfirmationAlertTitle = [(PXDuplicateAssetsAction *)self->_action extractStillConfirmationAlertTitle];
    extractStillConfirmationAlertAsStillButtonTitle = [(PXDuplicateAssetsAction *)self->_action extractStillConfirmationAlertAsStillButtonTitle];
    extractStillConfirmationAlertAsLiveButtonTitle = [(PXDuplicateAssetsAction *)self->_action extractStillConfirmationAlertAsLiveButtonTitle];
    extractStillConfirmationAlertCancelButtonTitle = [(PXDuplicateAssetsAction *)self->_action extractStillConfirmationAlertCancelButtonTitle];
    [configurationCopy setTitle:extractStillConfirmationAlertTitle];
    [configurationCopy setStyle:0];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __95__PXPhotoKitDuplicateActionController_configureAlertConfiguration_withUserConfirmationHandler___block_invoke;
    v19[3] = &unk_1E774C250;
    v13 = handlerCopy;
    v20 = v13;
    [configurationCopy addActionWithTitle:extractStillConfirmationAlertCancelButtonTitle style:1 action:v19];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __95__PXPhotoKitDuplicateActionController_configureAlertConfiguration_withUserConfirmationHandler___block_invoke_2;
    v17[3] = &unk_1E774C250;
    v14 = v13;
    v18 = v14;
    [configurationCopy addActionWithTitle:extractStillConfirmationAlertAsLiveButtonTitle style:0 action:v17];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __95__PXPhotoKitDuplicateActionController_configureAlertConfiguration_withUserConfirmationHandler___block_invoke_3;
    v15[3] = &unk_1E774C250;
    v16 = v14;
    [configurationCopy addActionWithTitle:extractStillConfirmationAlertAsStillButtonTitle style:0 action:v15];
  }
}

uint64_t __95__PXPhotoKitDuplicateActionController_configureAlertConfiguration_withUserConfirmationHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __95__PXPhotoKitDuplicateActionController_configureAlertConfiguration_withUserConfirmationHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 1);
  }

  return result;
}

uint64_t __95__PXPhotoKitDuplicateActionController_configureAlertConfiguration_withUserConfirmationHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 2);
  }

  return result;
}

- (id)alertConfigurationForDuplicateActionWithUserConfirmationHandler:(id)handler
{
  handlerCopy = handler;
  action = self->_action;
  if (action && [(PXDuplicateAssetsAction *)action canExtractStill])
  {
    v6 = objc_alloc_init(off_1E7721448);
    [(PXPhotoKitDuplicateActionController *)self configureAlertConfiguration:v6 withUserConfirmationHandler:handlerCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)dealloc
{
  [(PXDuplicateAssetsAction *)self->_action setDownloadCompletionHandler:0];
  [(PXPhotoKitDuplicateActionController *)self setProgress:0];
  v3.receiver = self;
  v3.super_class = PXPhotoKitDuplicateActionController;
  [(PXPhotoKitDuplicateActionController *)&v3 dealloc];
}

- (PXPhotoKitDuplicateActionController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitDuplicateActionController.m" lineNumber:56 description:{@"%s is not available as initializer", "-[PXPhotoKitDuplicateActionController init]"}];

  abort();
}

- (PXPhotoKitDuplicateActionController)initWithSelectionSnapshot:(id)snapshot undoManager:(id)manager
{
  snapshotCopy = snapshot;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = PXPhotoKitDuplicateActionController;
  v8 = [(PXPhotoKitDuplicateActionController *)&v12 init];
  if (v8)
  {
    v9 = [[PXDuplicateAssetsAction alloc] initWithSelectionSnapshot:snapshotCopy];
    action = v8->_action;
    v8->_action = v9;

    objc_storeStrong(&v8->_undoManager, manager);
  }

  return v8;
}

+ (void)_presentDuplicationWasInterruptedWithItemCount:(int64_t)count hasPhotos:(BOOL)photos hasVideos:(BOOL)videos
{
  videosCopy = videos;
  photosCopy = photos;
  v15 = _ConditionallyFormattedString(photos, videos, @"PXPhotoKitDuplicateAssetActionPerformer_FAILED_TITLE_ONE_PHOTO", @"PXPhotoKitDuplicateAssetActionPerformer_FAILED_TITLE_N_PHOTOS", @"PXPhotoKitDuplicateAssetActionPerformer_FAILED_TITLE_ONE_VIDEO", @"PXPhotoKitDuplicateAssetActionPerformer_FAILED_TITLE_N_VIDEOS", @"PXPhotoKitDuplicateAssetActionPerformer_FAILED_TITLE_ONE_ITEM", @"PXPhotoKitDuplicateAssetActionPerformer_FAILED_TITLE_N_ITEMS", count);
  v8 = _ConditionallyFormattedString(photosCopy, videosCopy, @"PXPhotoKitDuplicateAssetActionPerformer_FAILED_MESSAGE_ONE_PHOTO", @"PXPhotoKitDuplicateAssetActionPerformer_FAILED_MESSAGE_N_PHOTOS", @"PXPhotoKitDuplicateAssetActionPerformer_FAILED_MESSAGE_ONE_VIDEO", @"PXPhotoKitDuplicateAssetActionPerformer_FAILED_MESSAGE_N_VIDEOS", @"PXPhotoKitDuplicateAssetActionPerformer_FAILED_MESSAGE_ONE_ITEM", @"PXPhotoKitDuplicateAssetActionPerformer_FAILED_MESSAGE_N_ITEMS", count);
  v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v15 message:v8 preferredStyle:1];
  v10 = MEMORY[0x1E69DC648];
  v11 = PXLocalizedStringFromTable(@"PXPhotoKitDuplicateAssetActionPerformer_FAILURE_OK_BUTTON", @"PhotosUICore");
  v12 = [v10 actionWithTitle:v11 style:0 handler:0];
  [v9 addAction:v12];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  px_firstKeyWindow = [mEMORY[0x1E69DC668] px_firstKeyWindow];
  [px_firstKeyWindow pl_presentViewController:v9 animated:1];
}

@end