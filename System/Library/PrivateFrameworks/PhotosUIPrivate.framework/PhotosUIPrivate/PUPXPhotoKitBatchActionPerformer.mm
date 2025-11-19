@interface PUPXPhotoKitBatchActionPerformer
+ (BOOL)canPerformBatchOnAsset:(id)a3;
+ (id)newActivityProgressAlertForAction:(id)a3 assets:(id)a4;
+ (id)newEditActionForPerformer:(id)a3 class:(Class)a4 assets:(id)a5 prepareAction:(id)a6;
+ (id)newProgressToastForAction:(id)a3 assets:(id)a4;
@end

@implementation PUPXPhotoKitBatchActionPerformer

+ (id)newActivityProgressAlertForAction:(id)a3 assets:(id)a4
{
  v4 = objc_alloc_init(MEMORY[0x1E69C3308]);
  v5 = objc_alloc_init(MEMORY[0x1E696AE38]);
  [v4 setProgress:v5];

  [v4 setShowCheckmarkOnCompletion:1];
  [v4 setShouldAutoDisplay:1];
  [v4 setShouldUseProgressText:1];
  return v4;
}

+ (id)newProgressToastForAction:(id)a3 assets:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 delegate];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
    v10 = 0;
LABEL_8:
    v22 = 0;
    goto LABEL_9;
  }

  v9 = [v5 delegate];
  v10 = [v9 actionPerformerHostViewControllerForPresentingToast:v5];

  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = +[PUPhotoEditProtoSettings sharedInstance];
  v12 = [v11 useEditToastProgress];

  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = [v5 delegate];
  v14 = objc_opt_respondsToSelector();

  v15 = 0.0;
  if (v14)
  {
    v16 = [v5 delegate];
    [v16 actionPerformerBottomPaddingForPresentingToast:v5];
    v15 = v17;
  }

  v18 = objc_alloc_init(MEMORY[0x1E696AE38]);
  [v18 setTotalUnitCount:100];
  [v18 setCompletedUnitCount:0];
  v19 = objc_alloc(MEMORY[0x1E69C32E8]);
  v20 = v10;
  v21 = [v20 px_navigationDestination];
  v22 = [v19 initWithTargetDestination:v21 progress:v18];

  [v22 setBottomSpacing:v15];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __69__PUPXPhotoKitBatchActionPerformer_newProgressToastForAction_assets___block_invoke;
  v24[3] = &unk_1E7B7A800;
  v25 = v6;
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

+ (id)newEditActionForPerformer:(id)a3 class:(Class)a4 assets:(id)a5 prepareAction:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (([(objc_class *)a4 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v12 = [PUPXPhotoKitBatchActionPerformer newProgressToastForAction:v9 assets:v10];
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = [MEMORY[0x1E69C4558] defaultManager];
    }

    v30 = v9;
    v15 = [PUPXPhotoKitBatchActionPerformer newActivityProgressAlertForAction:v9 assets:v10];
    v16 = [MEMORY[0x1E69C4220] sharedPresetManager];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __89__PUPXPhotoKitBatchActionPerformer_newEditActionForPerformer_class_assets_prepareAction___block_invoke;
    aBlock[3] = &unk_1E7B80DD0;
    v28 = v16;
    v36 = v28;
    v17 = _Block_copy(aBlock);
    [v12 setCloseButtonAction:v17];
    [v15 setCancellationHandler:v17];
    v18 = [a4 alloc];
    v19 = [MEMORY[0x1E69C4220] sharedPresetManager];
    v20 = [v15 progress];
    v21 = [v12 progress];
    v14 = [v18 initWithPresetManager:v19 syncProgress:v20 asyncProgress:v21 asyncLoadingStatusManager:v13 forAssets:v10];

    if (v11)
    {
      v11[2](v11, v14);
    }

    v22 = [v14 localizedProgressToastSuccessTitle];
    v23 = +[PUPhotoEditProtoSettings sharedInstance];
    [v14 setAllowSynchronousRendering:{objc_msgSend(v23, "allowSynchronousBatchRendering")}];

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __89__PUPXPhotoKitBatchActionPerformer_newEditActionForPerformer_class_assets_prepareAction___block_invoke_2;
    v31[3] = &unk_1E7B7CC58;
    v32 = v15;
    v33 = v12;
    v34 = v22;
    v24 = v22;
    v25 = v12;
    v26 = v15;
    [v14 setCompletionHandler:v31];

    v9 = v30;
  }

  else
  {
    v13 = PLUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = a4;
      _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_ERROR, "Invalid class parameter for [PUPXPhotoKitPasteAdjustmentsActionPerformer newEditActionForPerformer:class:assets:] :%@", buf, 0xCu);
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

+ (BOOL)canPerformBatchOnAsset:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69C4220] sharedPresetManager];
  if (([v4 isBusyWithBatchAction] & 1) != 0 || !objc_msgSend(v3, "canPerformEditOperation:", 2))
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E69C4320] canPerformEditOnAsset:v3];
  }

  return v5;
}

@end