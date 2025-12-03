@interface PXEditBatchPlaybackRateAction
- (id)_playbackRateTitle;
- (id)localizedActionName;
- (id)localizedProgressToastOngoingTitle;
- (id)localizedProgressToastRedoTitle;
- (id)localizedProgressToastSuccessTitle;
- (id)localizedProgressToastUndoTitle;
- (void)_syncSetPlaybackRateDidFinishWithResults:(id)results didCancel:(BOOL)cancel completionHandler:(id)handler;
- (void)performAction:(id)action;
@end

@implementation PXEditBatchPlaybackRateAction

- (id)localizedProgressToastRedoTitle
{
  v2 = MEMORY[0x1E696AEC0];
  _playbackRateTitle = [(PXEditBatchPlaybackRateAction *)self _playbackRateTitle];
  v4 = [v2 stringWithFormat:@"Redoing Playback Rate %@", _playbackRateTitle];

  return v4;
}

- (id)localizedProgressToastUndoTitle
{
  v2 = MEMORY[0x1E696AEC0];
  _playbackRateTitle = [(PXEditBatchPlaybackRateAction *)self _playbackRateTitle];
  v4 = [v2 stringWithFormat:@"Undoing Playback Rate %@", _playbackRateTitle];

  return v4;
}

- (id)localizedProgressToastSuccessTitle
{
  v2 = MEMORY[0x1E696AEC0];
  _playbackRateTitle = [(PXEditBatchPlaybackRateAction *)self _playbackRateTitle];
  v4 = [v2 stringWithFormat:@"Playback Rate %@", _playbackRateTitle];

  return v4;
}

- (id)localizedProgressToastOngoingTitle
{
  v2 = MEMORY[0x1E696AEC0];
  _playbackRateTitle = [(PXEditBatchPlaybackRateAction *)self _playbackRateTitle];
  v4 = [v2 stringWithFormat:@"Setting Playback Rate to %@", _playbackRateTitle];

  return v4;
}

- (id)localizedActionName
{
  v2 = MEMORY[0x1E696AEC0];
  _playbackRateTitle = [(PXEditBatchPlaybackRateAction *)self _playbackRateTitle];
  v4 = [v2 stringWithFormat:@"Playback Rate %@", _playbackRateTitle];

  return v4;
}

- (id)_playbackRateTitle
{
  v3 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v3 setNumberStyle:3];
  v4 = MEMORY[0x1E696AD98];
  [(PXEditBatchPlaybackRateAction *)self playbackRate];
  v5 = [v4 numberWithFloat:?];
  v6 = [v3 stringFromNumber:v5];

  return v6;
}

- (void)_syncSetPlaybackRateDidFinishWithResults:(id)results didCancel:(BOOL)cancel completionHandler:(id)handler
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
    [(PXEditBatchPlaybackRateAction *)self playbackRate];
    v14 = v13;
    asyncProgress = [(PXEditBatchAction *)self asyncProgress];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __102__PXEditBatchPlaybackRateAction__syncSetPlaybackRateDidFinishWithResults_didCancel_completionHandler___block_invoke;
    v17[3] = &unk_1E7742CE8;
    v18 = resultsCopy;
    objc_copyWeak(&v20, &location);
    v19 = handlerCopy;
    LODWORD(v16) = v14;
    [manager setPlaybackRateOnAssets:v11 playbackRate:1 async:asyncProgress progress:v17 completion:v16];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void __102__PXEditBatchPlaybackRateAction__syncSetPlaybackRateDidFinishWithResults_didCancel_completionHandler___block_invoke(uint64_t a1, void *a2)
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
  v25[1] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  assets = [(PXEditBatchAction *)self assets];
  if ([assets count])
  {
    manager = [(PXEditBatchAction *)self manager];
    if ([manager isBusyWithBatchAction])
    {
      v7 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A278];
      v23 = @"Could not complete PXEditBatchPlaybackRateAction: Edit manager is busy.";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      syncAssets = [v7 errorWithDomain:@"PXEditBatchActionErrorDomain" code:1 userInfo:v8];

      v10 = PLUIGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Could not complete PXEditBatchPlaybackRateAction: Edit manager is busy.", &buf, 2u);
      }

      actionCopy[2](actionCopy, 0, syncAssets);
    }

    else
    {
      syncAssets = [(PXEditBatchAction *)self syncAssets];
      -[PXEditBatchAction willBeginActionIsAsync:itemCount:](self, "willBeginActionIsAsync:itemCount:", 0, [syncAssets count]);
      objc_initWeak(&buf, self);
      [(PXEditBatchPlaybackRateAction *)self playbackRate];
      v15 = v14;
      syncProgress = [(PXEditBatchAction *)self syncProgress];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __47__PXEditBatchPlaybackRateAction_performAction___block_invoke;
      v18[3] = &unk_1E7742CC0;
      objc_copyWeak(&v20, &buf);
      v19 = actionCopy;
      LODWORD(v17) = v15;
      [manager setPlaybackRateOnAssets:syncAssets playbackRate:0 async:syncProgress progress:v18 completion:v17];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&buf);
    }
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A278];
    v25[0] = @"Could not complete PXEditBatchPlaybackRateAction: No asset found";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    manager = [v11 errorWithDomain:@"PXEditBatchActionErrorDomain" code:2 userInfo:v12];

    v13 = PLUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "Could not complete PXEditBatchPlaybackRateAction: No asset found", &buf, 2u);
    }

    actionCopy[2](actionCopy, 0, manager);
  }
}

void __47__PXEditBatchPlaybackRateAction_performAction___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _syncSetPlaybackRateDidFinishWithResults:v5 didCancel:a3 completionHandler:*(a1 + 32)];
}

@end