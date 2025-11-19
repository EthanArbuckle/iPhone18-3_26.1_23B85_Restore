@interface PXEditBatchPlaybackRateAction
- (id)_playbackRateTitle;
- (id)localizedActionName;
- (id)localizedProgressToastOngoingTitle;
- (id)localizedProgressToastRedoTitle;
- (id)localizedProgressToastSuccessTitle;
- (id)localizedProgressToastUndoTitle;
- (void)_syncSetPlaybackRateDidFinishWithResults:(id)a3 didCancel:(BOOL)a4 completionHandler:(id)a5;
- (void)performAction:(id)a3;
@end

@implementation PXEditBatchPlaybackRateAction

- (id)localizedProgressToastRedoTitle
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(PXEditBatchPlaybackRateAction *)self _playbackRateTitle];
  v4 = [v2 stringWithFormat:@"Redoing Playback Rate %@", v3];

  return v4;
}

- (id)localizedProgressToastUndoTitle
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(PXEditBatchPlaybackRateAction *)self _playbackRateTitle];
  v4 = [v2 stringWithFormat:@"Undoing Playback Rate %@", v3];

  return v4;
}

- (id)localizedProgressToastSuccessTitle
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(PXEditBatchPlaybackRateAction *)self _playbackRateTitle];
  v4 = [v2 stringWithFormat:@"Playback Rate %@", v3];

  return v4;
}

- (id)localizedProgressToastOngoingTitle
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(PXEditBatchPlaybackRateAction *)self _playbackRateTitle];
  v4 = [v2 stringWithFormat:@"Setting Playback Rate to %@", v3];

  return v4;
}

- (id)localizedActionName
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(PXEditBatchPlaybackRateAction *)self _playbackRateTitle];
  v4 = [v2 stringWithFormat:@"Playback Rate %@", v3];

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

- (void)_syncSetPlaybackRateDidFinishWithResults:(id)a3 didCancel:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(PXEditBatchAction *)self asyncAssets];
  v11 = v10;
  if (a4 || ![v10 count])
  {
    [(PXEditBatchAction *)self saveResults:v8 completion:v9];
  }

  else
  {
    objc_initWeak(&location, self);
    -[PXEditBatchAction willBeginActionIsAsync:itemCount:](self, "willBeginActionIsAsync:itemCount:", 1, [v11 count]);
    v12 = [(PXEditBatchAction *)self manager];
    [(PXEditBatchPlaybackRateAction *)self playbackRate];
    v14 = v13;
    v15 = [(PXEditBatchAction *)self asyncProgress];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __102__PXEditBatchPlaybackRateAction__syncSetPlaybackRateDidFinishWithResults_didCancel_completionHandler___block_invoke;
    v17[3] = &unk_1E7742CE8;
    v18 = v8;
    objc_copyWeak(&v20, &location);
    v19 = v9;
    LODWORD(v16) = v14;
    [v12 setPlaybackRateOnAssets:v11 playbackRate:1 async:v15 progress:v17 completion:v16];

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

- (void)performAction:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXEditBatchAction *)self assets];
  if ([v5 count])
  {
    v6 = [(PXEditBatchAction *)self manager];
    if ([v6 isBusyWithBatchAction])
    {
      v7 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A278];
      v23 = @"Could not complete PXEditBatchPlaybackRateAction: Edit manager is busy.";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v9 = [v7 errorWithDomain:@"PXEditBatchActionErrorDomain" code:1 userInfo:v8];

      v10 = PLUIGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Could not complete PXEditBatchPlaybackRateAction: Edit manager is busy.", &buf, 2u);
      }

      v4[2](v4, 0, v9);
    }

    else
    {
      v9 = [(PXEditBatchAction *)self syncAssets];
      -[PXEditBatchAction willBeginActionIsAsync:itemCount:](self, "willBeginActionIsAsync:itemCount:", 0, [v9 count]);
      objc_initWeak(&buf, self);
      [(PXEditBatchPlaybackRateAction *)self playbackRate];
      v15 = v14;
      v16 = [(PXEditBatchAction *)self syncProgress];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __47__PXEditBatchPlaybackRateAction_performAction___block_invoke;
      v18[3] = &unk_1E7742CC0;
      objc_copyWeak(&v20, &buf);
      v19 = v4;
      LODWORD(v17) = v15;
      [v6 setPlaybackRateOnAssets:v9 playbackRate:0 async:v16 progress:v18 completion:v17];

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
    v6 = [v11 errorWithDomain:@"PXEditBatchActionErrorDomain" code:2 userInfo:v12];

    v13 = PLUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "Could not complete PXEditBatchPlaybackRateAction: No asset found", &buf, 2u);
    }

    v4[2](v4, 0, v6);
  }
}

void __47__PXEditBatchPlaybackRateAction_performAction___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _syncSetPlaybackRateDidFinishWithResults:v5 didCancel:a3 completionHandler:*(a1 + 32)];
}

@end