@interface PUPXPhotoKitBatchActionPerformer
+ (BOOL)canPerformBatchOnAsset:(id)asset;
+ (id)newActivityProgressAlertForAction:(id)action assets:(id)assets;
+ (id)newEditActionForPerformer:(id)performer class:(Class)class assets:(id)assets prepareAction:(id)action;
+ (id)newProgressToastForAction:(id)action assets:(id)assets;
@end

@implementation PUPXPhotoKitBatchActionPerformer

+ (id)newActivityProgressAlertForAction:(id)action assets:(id)assets
{
  v4 = objc_alloc_init(MEMORY[0x1E69C3308]);
  v5 = objc_alloc_init(MEMORY[0x1E696AE38]);
  [v4 setProgress:v5];

  [v4 setShowCheckmarkOnCompletion:1];
  [v4 setShouldAutoDisplay:1];
  [v4 setShouldUseProgressText:1];
  return v4;
}

+ (id)newProgressToastForAction:(id)action assets:(id)assets
{
  actionCopy = action;
  assetsCopy = assets;
  delegate = [actionCopy delegate];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
    v10 = 0;
LABEL_8:
    v22 = 0;
    goto LABEL_9;
  }

  delegate2 = [actionCopy delegate];
  v10 = [delegate2 actionPerformerHostViewControllerForPresentingToast:actionCopy];

  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = +[PUPhotoEditProtoSettings sharedInstance];
  useEditToastProgress = [v11 useEditToastProgress];

  if (!useEditToastProgress)
  {
    goto LABEL_8;
  }

  delegate3 = [actionCopy delegate];
  v14 = objc_opt_respondsToSelector();

  v15 = 0.0;
  if (v14)
  {
    delegate4 = [actionCopy delegate];
    [delegate4 actionPerformerBottomPaddingForPresentingToast:actionCopy];
    v15 = v17;
  }

  v18 = objc_alloc_init(MEMORY[0x1E696AE38]);
  [v18 setTotalUnitCount:100];
  [v18 setCompletedUnitCount:0];
  v19 = objc_alloc(MEMORY[0x1E69C32E8]);
  v20 = v10;
  px_navigationDestination = [v20 px_navigationDestination];
  v22 = [v19 initWithTargetDestination:px_navigationDestination progress:v18];

  [v22 setBottomSpacing:v15];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __69__PUPXPhotoKitBatchActionPerformer_newProgressToastForAction_assets___block_invoke;
  v24[3] = &unk_1E7B7A800;
  v25 = assetsCopy;
  v10 = v20;
  v26 = v10;
  [v22 setErrorButtonAction:v24];

LABEL_9:
  return v22;
}

void __69__PUPXPhotoKitBatchActionPerformer_newProgressToastForAction_assets___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [[PUEditingErrorPresentationController alloc] initWithErrors:v3 forAssets:*(a1 + 32)];

  v4 = [(PUErrorPresentationController *)v6 alertControllerWithCompletion:0];
  v5 = *(a1 + 40);
  [v5 presentViewController:v4 animated:1 completion:0];
}

+ (id)newEditActionForPerformer:(id)performer class:(Class)class assets:(id)assets prepareAction:(id)action
{
  v39 = *MEMORY[0x1E69E9840];
  performerCopy = performer;
  assetsCopy = assets;
  actionCopy = action;
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v12 = [PUPXPhotoKitBatchActionPerformer newProgressToastForAction:performerCopy assets:assetsCopy];
    if (v12)
    {
      defaultManager = 0;
    }

    else
    {
      defaultManager = [MEMORY[0x1E69C4558] defaultManager];
    }

    v30 = performerCopy;
    v15 = [PUPXPhotoKitBatchActionPerformer newActivityProgressAlertForAction:performerCopy assets:assetsCopy];
    mEMORY[0x1E69C4220] = [MEMORY[0x1E69C4220] sharedPresetManager];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __89__PUPXPhotoKitBatchActionPerformer_newEditActionForPerformer_class_assets_prepareAction___block_invoke;
    aBlock[3] = &unk_1E7B80DD0;
    v28 = mEMORY[0x1E69C4220];
    v36 = v28;
    v17 = _Block_copy(aBlock);
    [v12 setCloseButtonAction:v17];
    [v15 setCancellationHandler:v17];
    v18 = [class alloc];
    mEMORY[0x1E69C4220]2 = [MEMORY[0x1E69C4220] sharedPresetManager];
    progress = [v15 progress];
    progress2 = [v12 progress];
    v14 = [v18 initWithPresetManager:mEMORY[0x1E69C4220]2 syncProgress:progress asyncProgress:progress2 asyncLoadingStatusManager:defaultManager forAssets:assetsCopy];

    if (actionCopy)
    {
      actionCopy[2](actionCopy, v14);
    }

    localizedProgressToastSuccessTitle = [v14 localizedProgressToastSuccessTitle];
    v23 = +[PUPhotoEditProtoSettings sharedInstance];
    [v14 setAllowSynchronousRendering:{objc_msgSend(v23, "allowSynchronousBatchRendering")}];

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __89__PUPXPhotoKitBatchActionPerformer_newEditActionForPerformer_class_assets_prepareAction___block_invoke_2;
    v31[3] = &unk_1E7B7CC58;
    v32 = v15;
    v33 = v12;
    v34 = localizedProgressToastSuccessTitle;
    v24 = localizedProgressToastSuccessTitle;
    v25 = v12;
    v26 = v15;
    [v14 setCompletionHandler:v31];

    performerCopy = v30;
  }

  else
  {
    defaultManager = PLUIGetLog();
    if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      classCopy = class;
      _os_log_impl(&dword_1B36F3000, defaultManager, OS_LOG_TYPE_ERROR, "Invalid class parameter for [PUPXPhotoKitPasteAdjustmentsActionPerformer newEditActionForPerformer:class:assets:] :%@", buf, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

uint64_t __89__PUPXPhotoKitBatchActionPerformer_newEditActionForPerformer_class_assets_prepareAction___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 hideAnimated:0 allowDelay:0];
  [*(a1 + 40) setErrors:v4];

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);

  return [v5 finishProgressMarkingAsComplete:1 updatedLocalizedTitle:v6 updatedLocalizedDescription:0];
}

+ (BOOL)canPerformBatchOnAsset:(id)asset
{
  assetCopy = asset;
  mEMORY[0x1E69C4220] = [MEMORY[0x1E69C4220] sharedPresetManager];
  if (([mEMORY[0x1E69C4220] isBusyWithBatchAction] & 1) != 0 || !objc_msgSend(assetCopy, "canPerformEditOperation:", 2))
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E69C4320] canPerformEditOnAsset:assetCopy];
  }

  return v5;
}

@end