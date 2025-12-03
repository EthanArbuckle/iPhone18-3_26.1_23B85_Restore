@interface PXEditBatchAudioMixModeAction
- (id)audioMixModeTitle;
- (id)localizedActionName;
- (id)localizedProgressToastOngoingTitle;
- (id)localizedProgressToastRedoTitle;
- (id)localizedProgressToastSuccessTitle;
- (id)localizedProgressToastUndoTitle;
- (void)_syncSetAudioMixModeDidFinishWithResults:(id)results didCancel:(BOOL)cancel completionHandler:(id)handler;
- (void)performAction:(id)action;
@end

@implementation PXEditBatchAudioMixModeAction

- (id)localizedProgressToastRedoTitle
{
  v3 = PXLocalizedStringFromTable(@"PhotoEditAudioMixRedoTitle", @"SpatialAudio");
  v4 = MEMORY[0x1E696AEC0];
  audioMixModeTitle = [(PXEditBatchAudioMixModeAction *)self audioMixModeTitle];
  v6 = [v4 stringWithFormat:@"%@ %@", v3, audioMixModeTitle];

  return v6;
}

- (id)localizedProgressToastUndoTitle
{
  v3 = PXLocalizedStringFromTable(@"PhotoEditAudioMixUndoTitle", @"SpatialAudio");
  v4 = MEMORY[0x1E696AEC0];
  audioMixModeTitle = [(PXEditBatchAudioMixModeAction *)self audioMixModeTitle];
  v6 = [v4 stringWithFormat:@"%@ %@", v3, audioMixModeTitle];

  return v6;
}

- (id)localizedProgressToastSuccessTitle
{
  v3 = PXLocalizedStringFromTable(@"PhotoEditAudioMixSuccessTitle", @"SpatialAudio");
  v4 = MEMORY[0x1E696AEC0];
  audioMixModeTitle = [(PXEditBatchAudioMixModeAction *)self audioMixModeTitle];
  v6 = [v4 stringWithFormat:@"%@ %@", v3, audioMixModeTitle];

  return v6;
}

- (id)localizedProgressToastOngoingTitle
{
  v3 = PXLocalizedStringFromTable(@"PhotoEditAudioMixProgressTitle", @"SpatialAudio");
  v4 = MEMORY[0x1E696AEC0];
  audioMixModeTitle = [(PXEditBatchAudioMixModeAction *)self audioMixModeTitle];
  v6 = [v4 stringWithFormat:@"%@ %@", v3, audioMixModeTitle];

  return v6;
}

- (id)localizedActionName
{
  v3 = PXLocalizedStringFromTable(@"PhotoEditAudioMixActionName", @"SpatialAudio");
  v4 = MEMORY[0x1E696AEC0];
  audioMixModeTitle = [(PXEditBatchAudioMixModeAction *)self audioMixModeTitle];
  v6 = [v4 stringWithFormat:@"%@ %@", v3, audioMixModeTitle];

  return v6;
}

- (id)audioMixModeTitle
{
  v2 = MEMORY[0x1E69C4318];
  audioMixMode = [(PXEditBatchAudioMixModeAction *)self audioMixMode];
  v4 = [v2 audioMixModeForRenderingStyle:audioMixMode];

  localizedTitle = [v4 localizedTitle];

  return localizedTitle;
}

- (void)_syncSetAudioMixModeDidFinishWithResults:(id)results didCancel:(BOOL)cancel completionHandler:(id)handler
{
  resultsCopy = results;
  handlerCopy = handler;
  asyncAssets = [(PXEditBatchAction *)self asyncAssets];
  v11 = asyncAssets;
  if (cancel || ![asyncAssets count])
  {
    [(PXEditBatchAction *)self saveResults:resultsCopy completion:handlerCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    -[PXEditBatchAction willBeginActionIsAsync:itemCount:](self, "willBeginActionIsAsync:itemCount:", 1, [v11 count]);
    manager = [(PXEditBatchAction *)self manager];
    audioMixMode = [(PXEditBatchAudioMixModeAction *)self audioMixMode];
    asyncProgress = [(PXEditBatchAction *)self asyncProgress];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __102__PXEditBatchAudioMixModeAction__syncSetAudioMixModeDidFinishWithResults_didCancel_completionHandler___block_invoke;
    v15[3] = &unk_1E7742CE8;
    v16 = resultsCopy;
    objc_copyWeak(&v18, &location);
    v17 = handlerCopy;
    [manager setAudioMixModeOnAssets:v11 audioMixMode:audioMixMode async:1 progress:asyncProgress completion:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __102__PXEditBatchAudioMixModeAction__syncSetAudioMixModeDidFinishWithResults_didCancel_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 mutableCopy];
  [v6 addObjectsFromArray:v4];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained saveResults:v6 completion:*(a1 + 40)];
}

- (void)performAction:(id)action
{
  v23[1] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  assets = [(PXEditBatchAction *)self assets];
  if ([assets count])
  {
    manager = [(PXEditBatchAction *)self manager];
    if ([manager isBusyWithBatchAction])
    {
      v7 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A278];
      v21 = @"Could not complete PXEditBatchAudioMixModeAction: Edit manager is busy.";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      syncAssets = [v7 errorWithDomain:@"PXEditBatchActionErrorDomain" code:1 userInfo:v8];

      v10 = PLUIGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Could not complete PXEditBatchAudioMixModeAction: Edit manager is busy.", &buf, 2u);
      }

      actionCopy[2](actionCopy, 0, syncAssets);
    }

    else
    {
      syncAssets = [(PXEditBatchAction *)self syncAssets];
      -[PXEditBatchAction willBeginActionIsAsync:itemCount:](self, "willBeginActionIsAsync:itemCount:", 0, [syncAssets count]);
      objc_initWeak(&buf, self);
      audioMixMode = [(PXEditBatchAudioMixModeAction *)self audioMixMode];
      syncProgress = [(PXEditBatchAction *)self syncProgress];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __47__PXEditBatchAudioMixModeAction_performAction___block_invoke;
      v16[3] = &unk_1E7742CC0;
      objc_copyWeak(&v18, &buf);
      v17 = actionCopy;
      [manager setAudioMixModeOnAssets:syncAssets audioMixMode:audioMixMode async:0 progress:syncProgress completion:v16];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&buf);
    }
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A278];
    v23[0] = @"Could not complete PXEditBatchAudioMixModeAction: No asset found";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    manager = [v11 errorWithDomain:@"PXEditBatchActionErrorDomain" code:2 userInfo:v12];

    v13 = PLUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "Could not complete PXEditBatchAudioMixModeAction: No asset found", &buf, 2u);
    }

    actionCopy[2](actionCopy, 0, manager);
  }
}

void __47__PXEditBatchAudioMixModeAction_performAction___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _syncSetAudioMixModeDidFinishWithResults:v5 didCancel:a3 completionHandler:*(a1 + 32)];
}

@end