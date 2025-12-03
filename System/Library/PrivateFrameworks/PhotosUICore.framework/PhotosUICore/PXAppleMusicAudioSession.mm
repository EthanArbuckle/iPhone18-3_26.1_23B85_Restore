@interface PXAppleMusicAudioSession
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime;
- (PXAppleMusicAudioSession)initWithAsset:(id)asset volume:(float)volume startTime:(id *)time queue:(id)queue audioSessionDelegate:(id)delegate playerController:(id)controller;
- (void)_ensureCurrentPlayerClient;
- (void)_handlePlayerPreparedToPlay:(BOOL)play error:(id)error;
- (void)_handlePlayerTransactionDeclinedWithError:(id)error;
- (void)_stateQueue_handlePlayerPreparedToPlay:(BOOL)play error:(id)error;
- (void)_stateQueue_pause;
- (void)_stateQueue_play;
- (void)_stateQueue_playFromTime:(id *)time;
- (void)_stateQueue_prepareToPlayIfNeeded;
- (void)_stateQueue_updateState;
- (void)_updateContentLoudness;
- (void)_updatePlayerVolume;
- (void)_updateStatus;
- (void)desiredPlayerVolumeDidChange;
- (void)errorDidChange;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)pause;
- (void)performFinalCleanup;
- (void)play;
- (void)playFromTime:(id *)time;
- (void)prepareToPlay;
- (void)setPlayerController:(id)controller;
- (void)setStateQueue_isPreparingToPlay:(BOOL)play;
- (void)setStateQueue_playerPlaybackState:(int64_t)state;
@end

@implementation PXAppleMusicAudioSession

- (void)_handlePlayerTransactionDeclinedWithError:(id)error
{
  errorCopy = error;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__PXAppleMusicAudioSession__handlePlayerTransactionDeclinedWithError___block_invoke;
  v6[3] = &unk_1E77365A0;
  v7 = errorCopy;
  v5 = errorCopy;
  [(PXAudioSession *)self performInternalChanges:v6];
}

- (void)_stateQueue_updateState
{
  if ([(PXAppleMusicAudioSession *)self stateQueue_playerPlaybackState]== 2)
  {
    v3 = 3;
  }

  else if ([(PXAppleMusicAudioSession *)self stateQueue_isPreparingToPlay])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PXAppleMusicAudioSession__stateQueue_updateState__block_invoke;
  block[3] = &unk_1E7749808;
  objc_copyWeak(v5, &location);
  v5[1] = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

void __51__PXAppleMusicAudioSession__stateQueue_updateState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__PXAppleMusicAudioSession__stateQueue_updateState__block_invoke_2;
  v3[3] = &__block_descriptor_40_e41_v16__0___PXInternalMutableAudioSession__8l;
  v3[4] = *(a1 + 40);
  [WeakRetained performInternalChanges:v3];
}

void __51__PXAppleMusicAudioSession__stateQueue_updateState__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 error];

  if (v3)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  [v5 setStatus:v4];
}

- (void)setStateQueue_playerPlaybackState:(int64_t)state
{
  if (self->_stateQueue_playerPlaybackState != state)
  {
    self->_stateQueue_playerPlaybackState = state;
    [(PXAppleMusicAudioSession *)self _stateQueue_updateState];
  }
}

- (void)_updateStatus
{
  error = [(PXAudioSession *)self error];

  if (error)
  {

    [(PXAudioSession *)self performInternalChanges:&__block_literal_global_39];
  }

  else
  {
    objc_initWeak(&location, self);
    stateQueue = [(PXAppleMusicAudioSession *)self stateQueue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __41__PXAppleMusicAudioSession__updateStatus__block_invoke_2;
    v5[3] = &unk_1E774C318;
    objc_copyWeak(&v6, &location);
    dispatch_async(stateQueue, v5);

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __41__PXAppleMusicAudioSession__updateStatus__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stateQueue_updateState];
}

- (void)_stateQueue_handlePlayerPreparedToPlay:(BOOL)play error:(id)error
{
  v32 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v7 = [(PXAppleMusicAudioSession *)self log];
  v8 = os_signpost_id_make_with_pointer(v7, self);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      *buf = 134217984;
      selfCopy3 = [(PXAppleMusicAudioSession *)self logContext];
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_END, v9, "StoryAppleMusicSessionPrepareToPlay", "Context=%{signpost.telemetry:string2}lu ", buf, 0xCu);
    }
  }

  [(PXAppleMusicAudioSession *)self setStateQueue_isPreparingToPlay:0];
  stateQueue_shouldPlayWhenPrepared = [(PXAppleMusicAudioSession *)self stateQueue_shouldPlayWhenPrepared];
  if ([errorCopy px_isDomain:@"PXAppleMusicPlayerControllerErrorDomain" code:2])
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = @"Apple Music player timed out while preparing to play.";
    v13 = 5;
    goto LABEL_6;
  }

  if (!play)
  {
    v19 = [errorCopy px_isDomain:@"PXAppleMusicPlayerControllerErrorDomain" code:3];
    v20 = PLAudioPlaybackGetLog();
    v21 = v20;
    if (v19)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy3 = self;
        v30 = 2112;
        v31 = errorCopy;
        _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_DEFAULT, "%@ player was cancelled while preparing to play: %@", buf, 0x16u);
      }

      v14 = 0;
      goto LABEL_7;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy3 = self;
      v30 = 2112;
      v31 = errorCopy;
      _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_ERROR, "%@ player encountered error while preparing to play: %@", buf, 0x16u);
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = @"Apple Music encountered an error while preparing to play";
    v13 = 1;
LABEL_6:
    v14 = [v11 px_errorWithDomain:@"PXAudioSessionErrorDomain" code:v13 underlyingError:errorCopy debugDescription:v12];
LABEL_7:
    v15 = 0;
    goto LABEL_12;
  }

  v16 = PLAudioPlaybackGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:stateQueue_shouldPlayWhenPrepared];
    *buf = 138412546;
    selfCopy3 = self;
    v30 = 2112;
    v31 = v17;
    _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEBUG, "%@ player finished preparing to play. Will begin playback: %@", buf, 0x16u);
  }

  v14 = 0;
  v15 = 1;
LABEL_12:
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __73__PXAppleMusicAudioSession__stateQueue_handlePlayerPreparedToPlay_error___block_invoke;
  v25 = &unk_1E7736680;
  v27 = v15;
  v18 = v14;
  v26 = v18;
  [(PXAudioSession *)self performInternalChanges:&v22];
  if (stateQueue_shouldPlayWhenPrepared & v15)
  {
    [(PXAppleMusicAudioSession *)self _stateQueue_play:v22];
  }
}

void __73__PXAppleMusicAudioSession__stateQueue_handlePlayerPreparedToPlay_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setIsReadyToPlay:v3];
  [v4 setError:*(a1 + 32)];
}

- (void)_handlePlayerPreparedToPlay:(BOOL)play error:(id)error
{
  errorCopy = error;
  objc_initWeak(&location, self);
  stateQueue = [(PXAppleMusicAudioSession *)self stateQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__PXAppleMusicAudioSession__handlePlayerPreparedToPlay_error___block_invoke;
  v9[3] = &unk_1E7749CD8;
  objc_copyWeak(&v11, &location);
  playCopy = play;
  v10 = errorCopy;
  v8 = errorCopy;
  dispatch_async(stateQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __62__PXAppleMusicAudioSession__handlePlayerPreparedToPlay_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _stateQueue_handlePlayerPreparedToPlay:*(a1 + 48) error:*(a1 + 32)];
}

- (void)setStateQueue_isPreparingToPlay:(BOOL)play
{
  if (self->_stateQueue_isPreparingToPlay != play)
  {
    self->_stateQueue_isPreparingToPlay = play;
    [(PXAppleMusicAudioSession *)self _updateStatus];
  }
}

- (void)_stateQueue_prepareToPlayIfNeeded
{
  v18 = *MEMORY[0x1E69E9840];
  if (![(PXAppleMusicAudioSession *)self stateQueue_isPreparingToPlay])
  {
    v3 = PLAudioPlaybackGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      asset = [(PXAudioSession *)self asset];
      *buf = 138412546;
      selfCopy = self;
      v16 = 2112;
      v17 = asset;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "%@ will begin preparing to play %@.", buf, 0x16u);
    }

    objc_initWeak(&location, self);
    [(PXAppleMusicAudioSession *)self setStateQueue_isPreparingToPlay:1];
    v5 = [(PXAppleMusicAudioSession *)self log];
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        logContext = [(PXAppleMusicAudioSession *)self logContext];
        *buf = 134217984;
        selfCopy = logContext;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "StoryAppleMusicSessionPrepareToPlay", "Context=%{signpost.telemetry:string2}lu ", buf, 0xCu);
      }
    }

    playerController = [(PXAppleMusicAudioSession *)self playerController];
    playerClientIdentifier = [(PXAppleMusicAudioSession *)self playerClientIdentifier];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__PXAppleMusicAudioSession__stateQueue_prepareToPlayIfNeeded__block_invoke;
    v11[3] = &unk_1E7736658;
    objc_copyWeak(&v12, &location);
    [playerController clientIdentifier:playerClientIdentifier performAsyncPlayerTransaction:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __61__PXAppleMusicAudioSession__stateQueue_prepareToPlayIfNeeded__block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a3)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__PXAppleMusicAudioSession__stateQueue_prepareToPlayIfNeeded__block_invoke_2;
    v10[3] = &unk_1E7749D00;
    objc_copyWeak(&v11, (a1 + 32));
    [v7 prepareToPlayWithCompletionHandler:v10];
    objc_destroyWeak(&v11);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _handlePlayerPreparedToPlay:0 error:v8];
  }
}

void __61__PXAppleMusicAudioSession__stateQueue_prepareToPlayIfNeeded__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePlayerPreparedToPlay:a2 error:v5];
}

- (void)_stateQueue_pause
{
  v14 = *MEMORY[0x1E69E9840];
  stateQueue_isPreparingToPlay = [(PXAppleMusicAudioSession *)self stateQueue_isPreparingToPlay];
  v4 = PLAudioPlaybackGetLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (stateQueue_isPreparingToPlay)
  {
    if (v5)
    {
      asset = [(PXAudioSession *)self asset];
      v10 = 138412546;
      selfCopy2 = self;
      v12 = 2112;
      v13 = asset;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "%@ cancelling playback of %@ when preparation finishes.", &v10, 0x16u);
    }

    [(PXAppleMusicAudioSession *)self setStateQueue_shouldPlayWhenPrepared:0];
  }

  else
  {
    if (v5)
    {
      asset2 = [(PXAudioSession *)self asset];
      v10 = 138412546;
      selfCopy2 = self;
      v12 = 2112;
      v13 = asset2;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "%@ will pause playback of %@.", &v10, 0x16u);
    }

    playerController = [(PXAppleMusicAudioSession *)self playerController];
    playerClientIdentifier = [(PXAppleMusicAudioSession *)self playerClientIdentifier];
    [playerController clientIdentifier:playerClientIdentifier performAsyncPlayerTransaction:&__block_literal_global_29_86487];
  }
}

- (void)_stateQueue_play
{
  v22 = *MEMORY[0x1E69E9840];
  stateQueue_isPreparingToPlay = [(PXAppleMusicAudioSession *)self stateQueue_isPreparingToPlay];
  v4 = PLAudioPlaybackGetLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (stateQueue_isPreparingToPlay)
  {
    if (v5)
    {
      asset = [(PXAudioSession *)self asset];
      *buf = 138412546;
      selfCopy2 = self;
      v20 = 2112;
      v21 = asset;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "%@ will begin playback of %@ when preparation finishes.", buf, 0x16u);
    }

    [(PXAppleMusicAudioSession *)self setStateQueue_shouldPlayWhenPrepared:1];
  }

  else
  {
    if (v5)
    {
      asset2 = [(PXAudioSession *)self asset];
      *buf = 138412546;
      selfCopy2 = self;
      v20 = 2112;
      v21 = asset2;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "%@ will begin playback of %@.", buf, 0x16u);
    }

    [(PXAudioSession *)self desiredPlayerVolume];
    v9 = v8;
    objc_initWeak(buf, self);
    playerController = [(PXAppleMusicAudioSession *)self playerController];
    playerClientIdentifier = [(PXAppleMusicAudioSession *)self playerClientIdentifier];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __44__PXAppleMusicAudioSession__stateQueue_play__block_invoke;
    v15 = &unk_1E7736630;
    v17 = v9;
    objc_copyWeak(&v16, buf);
    [playerController clientIdentifier:playerClientIdentifier becomeCurrentClientIfNeeded:1 performAsyncPlayerTransaction:&v12];

    [(PXAppleMusicAudioSession *)self setStateQueue_hasSeekedOrPlayed:1, v12, v13, v14, v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }
}

void __44__PXAppleMusicAudioSession__stateQueue_play__block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v10 = a4;
  v7 = *(a1 + 40);
  v8 = a2;
  [v8 setVolume:v7];
  [v8 play];

  if ((a3 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _handlePlayerTransactionDeclinedWithError:v10];
  }
}

- (void)setPlayerController:(id)controller
{
  controllerCopy = controller;
  playerController = self->_playerController;
  if (playerController != controllerCopy)
  {
    v10 = controllerCopy;
    observable = [(PXAppleMusicPlayerController *)playerController observable];
    [observable unregisterChangeObserver:self context:PlayerControllerContext];

    objc_storeStrong(&self->_playerController, controller);
    playerClientIdentifier = [(PXAppleMusicAudioSession *)self playerClientIdentifier];
    [(PXAppleMusicPlayerController *)self->_playerController setCurrentClientIdentifier:playerClientIdentifier];

    observable2 = [(PXAppleMusicPlayerController *)self->_playerController observable];
    [observable2 registerChangeObserver:self context:PlayerControllerContext];

    [(PXAppleMusicAudioSession *)self _updatePlayerVolume];
    controllerCopy = v10;
  }
}

- (void)_ensureCurrentPlayerClient
{
  playerClientIdentifier = [(PXAppleMusicAudioSession *)self playerClientIdentifier];
  playerController = [(PXAppleMusicAudioSession *)self playerController];
  [playerController setCurrentClientIdentifier:playerClientIdentifier];
}

- (void)_updatePlayerVolume
{
  [(PXAudioSession *)self desiredPlayerVolume];
  v4 = v3;
  playerController = [(PXAppleMusicAudioSession *)self playerController];
  playerClientIdentifier = [(PXAppleMusicAudioSession *)self playerClientIdentifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__PXAppleMusicAudioSession__updatePlayerVolume__block_invoke;
  v7[3] = &__block_descriptor_36_e62_v28__0___PXMutableAppleMusicPlayerController__8B16__NSError_20l;
  v8 = v4;
  [playerController clientIdentifier:playerClientIdentifier performAsyncPlayerTransaction:v7];
}

- (void)_updateContentLoudness
{
  v16 = *MEMORY[0x1E69E9840];
  asset = [(PXAudioSession *)self asset];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = asset;

    if (v4)
    {
      v5 = PLAudioPlaybackGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        loudnessMainValue = [v4 loudnessMainValue];
        loudnessMainPeak = [v4 loudnessMainPeak];
        *buf = 138543874;
        v11 = v4;
        v12 = 2114;
        v13 = loudnessMainValue;
        v14 = 2114;
        v15 = loudnessMainPeak;
        _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Applying content loudness for %{public}@:\n\tLoudness: %{public}@\n\tPeak: %{public}@", buf, 0x20u);
      }

      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __50__PXAppleMusicAudioSession__updateContentLoudness__block_invoke;
      v8[3] = &unk_1E77365A0;
      v4 = v4;
      v9 = v4;
      [(PXAudioSession *)self performInternalChanges:v8];
    }
  }

  else
  {

    v4 = 0;
  }
}

void __50__PXAppleMusicAudioSession__updateContentLoudness__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 loudnessMainPeak];
  [v4 setContentPeakDecibels:v5];

  v6 = [*(a1 + 32) loudnessMainValue];
  [v4 setContentLoudnessInLKFS:v6];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if ((change & 1) != 0 && PlayerControllerContext == context)
  {
    v11[10] = v5;
    v11[11] = v6;
    playerController = [(PXAppleMusicAudioSession *)self playerController];
    playbackState = [playerController playbackState];

    stateQueue = [(PXAppleMusicAudioSession *)self stateQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__PXAppleMusicAudioSession_observable_didChange_context___block_invoke;
    v11[3] = &unk_1E77498A0;
    v11[4] = self;
    v11[5] = playbackState;
    dispatch_async(stateQueue, v11);
  }
}

- (void)performFinalCleanup
{
  v5.receiver = self;
  v5.super_class = PXAppleMusicAudioSession;
  [(PXAudioSession *)&v5 performFinalCleanup];
  playerController = [(PXAppleMusicAudioSession *)self playerController];
  playerClientIdentifier = [(PXAppleMusicAudioSession *)self playerClientIdentifier];
  [playerController clientIdentifier:playerClientIdentifier performAsyncPlayerTransaction:&__block_literal_global_86496];

  [(PXAppleMusicAudioSession *)self setPlayerController:0];
}

- (void)errorDidChange
{
  v3.receiver = self;
  v3.super_class = PXAppleMusicAudioSession;
  [(PXAudioSession *)&v3 errorDidChange];
  [(PXAppleMusicAudioSession *)self _updateStatus];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime
{
  v11 = *MEMORY[0x1E6960C70];
  v12 = *(MEMORY[0x1E6960C70] + 16);
  result = [(PXAudioSession *)self status];
  if (result != 4)
  {
    if (self->_stateQueue_hasSeekedOrPlayed)
    {
      playerController = [(PXAppleMusicAudioSession *)self playerController];
      [playerController fetchCurrentTime];
      v11 = v7;
      v12 = v8;
    }

    else
    {
      result = [(PXAudioSession *)self startTime];
      v11 = v9;
      v12 = v10;
    }
  }

  *&retstr->var0 = v11;
  retstr->var3 = v12;
  return result;
}

- (void)_stateQueue_playFromTime:(id *)time
{
  playerController = [(PXAppleMusicAudioSession *)self playerController];
  playerClientIdentifier = [(PXAppleMusicAudioSession *)self playerClientIdentifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PXAppleMusicAudioSession__stateQueue_playFromTime___block_invoke;
  v7[3] = &unk_1E77365C8;
  v7[4] = self;
  v8 = *time;
  [playerController clientIdentifier:playerClientIdentifier performAsyncPlayerTransaction:v7];
}

void __53__PXAppleMusicAudioSession__stateQueue_playFromTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 asset];
  v6 = [v5 identifier];
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  [v4 setItemWithStoreID:v6 startTime:&v7];

  [v4 play];
}

- (void)playFromTime:(id *)time
{
  objc_initWeak(&location, self);
  stateQueue = [(PXAppleMusicAudioSession *)self stateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__PXAppleMusicAudioSession_playFromTime___block_invoke;
  block[3] = &unk_1E7747EF8;
  objc_copyWeak(&v7, &location);
  v8 = *time;
  dispatch_async(stateQueue, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __41__PXAppleMusicAudioSession_playFromTime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  [WeakRetained _stateQueue_playFromTime:&v3];
}

- (void)play
{
  objc_initWeak(&location, self);
  stateQueue = [(PXAppleMusicAudioSession *)self stateQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__PXAppleMusicAudioSession_play__block_invoke;
  v4[3] = &unk_1E774C318;
  objc_copyWeak(&v5, &location);
  dispatch_async(stateQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __32__PXAppleMusicAudioSession_play__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stateQueue_play];
}

- (void)pause
{
  stateQueue = [(PXAppleMusicAudioSession *)self stateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__PXAppleMusicAudioSession_pause__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

- (void)prepareToPlay
{
  objc_initWeak(&location, self);
  stateQueue = [(PXAppleMusicAudioSession *)self stateQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__PXAppleMusicAudioSession_prepareToPlay__block_invoke;
  v4[3] = &unk_1E774C318;
  objc_copyWeak(&v5, &location);
  dispatch_async(stateQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __41__PXAppleMusicAudioSession_prepareToPlay__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stateQueue_prepareToPlayIfNeeded];
}

- (void)desiredPlayerVolumeDidChange
{
  v3.receiver = self;
  v3.super_class = PXAppleMusicAudioSession;
  [(PXAudioSession *)&v3 desiredPlayerVolumeDidChange];
  [(PXAppleMusicAudioSession *)self _updatePlayerVolume];
}

- (PXAppleMusicAudioSession)initWithAsset:(id)asset volume:(float)volume startTime:(id *)time queue:(id)queue audioSessionDelegate:(id)delegate playerController:(id)controller
{
  v27 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  queueCopy = queue;
  delegateCopy = delegate;
  controllerCopy = controller;
  v25.receiver = self;
  v25.super_class = PXAppleMusicAudioSession;
  buf = *time;
  v19 = [(PXAudioSession *)&v25 initWithAsset:assetCopy volume:&buf startTime:queueCopy queue:delegateCopy audioSessionDelegate:COERCE_DOUBLE(__PAIR64__(HIDWORD(buf.var0), LODWORD(volume)))];
  if (v19)
  {
    v20 = PLAudioPlaybackGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      LODWORD(buf.var0) = 138412546;
      *(&buf.var0 + 4) = v22;
      LOWORD(buf.var2) = 2112;
      *(&buf.var2 + 2) = assetCopy;
      _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_DEFAULT, "Creating %@ instance to play asset %@.", &buf, 0x16u);
    }

    if ([assetCopy catalog] != 2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v19 file:@"PXAppleMusicAudioSession.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"asset.catalog == PXAudioAssetCatalogAppleMusic"}];
    }

    dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_claimAutoreleasedReturnValue();
    px_dispatch_queue_create();
  }

  return 0;
}

void __103__PXAppleMusicAudioSession_initWithAsset_volume_startTime_queue_audioSessionDelegate_playerController___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a3)
  {
    v9 = *(a1 + 32);
    v11 = *(a1 + 48);
    v12 = *(a1 + 64);
    [v7 setItemWithStoreID:v9 startTime:&v11];
    [v7 setVolume:*(a1 + 72)];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _handlePlayerTransactionDeclinedWithError:v8];
  }
}

void __103__PXAppleMusicAudioSession_initWithAsset_volume_startTime_queue_audioSessionDelegate_playerController___block_invoke_13(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:@"Unable to play asset %@ because it does not have a store ID", *(a1 + 32)];
  v6 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8 = [v6 px_audioSessionErrorWithCode:1 userInfo:v7];
  [v4 setError:v8];
}

@end