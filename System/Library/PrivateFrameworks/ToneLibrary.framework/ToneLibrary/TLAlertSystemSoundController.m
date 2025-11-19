@interface TLAlertSystemSoundController
+ (id)_descriptionForAlertComponentsSuppressionFlags:(unsigned int)a3;
+ (id)_soundForAlert:(id)a3 toneIdentifierForDeemphasizingAlert:(id)a4;
+ (id)_toneIdentifierForDeemphasizingAlert:(id)a3;
+ (id)_vibrationIdentifierForDeemphasizingAlert:(id)a3 correspondingToneIdentifierForDeemphasizingAlert:(id)a4;
+ (id)_vibrationPatternForAlert:(id)a3 withSound:(id)a4 vibrationIdentifier:(id)a5;
+ (unsigned)_componentSuppressionFlagsForAlert:(id)a3;
+ (unsigned)_soundBehaviorForAlert:(id)a3 withSound:(id)a4 isDeemphasized:(BOOL)a5;
- ($61DF9F24A7329A1BB61181F7D05C320D)_considerDeferringPlayingAlertForBacklightStatusResolution:(id)a3 alertSystemSoundContext:(id)a4;
- (BOOL)stopPlayingAlerts:(id)a3 withOptions:(id)a4 playbackCompletionType:(int64_t)a5;
- (TLAlertSystemSoundController)init;
- (id)_playTaskDescriptorForAlert:(id)a3 withSound:(id)a4 vibrationIdentifier:(id)a5 alertSystemSoundContext:(id)a6;
- (id)_prepareForPreemptingAlertsBeforeBeginningPlaybackOfAlert:(id)a3 withSound:(id)a4 playbackCompletionType:(int64_t)a5;
- (id)_prepareForStoppingAlerts:(id)a3 withOptions:(id)a4 playbackCompletionType:(int64_t)a5;
- (void)_beginRequiringBacklightObservationForAlert:(id)a3 alertSystemSoundContext:(id)a4;
- (void)_didCompletePlaybackForAlert:(id)a3;
- (void)_endRequiringBacklightObservationForAlert:(id)a3 alertSystemSoundContext:(id)a4;
- (void)_playAlert:(id)a3 alertSystemSoundContext:(id)a4 toneIdentifierForDeemphasizingAlert:(id)a5 vibrationIdentifierForDeemphasizingAlert:(id)a6 backlightStatusResolutionDeferralContext:(id)a7;
- (void)_preheatForAlert:(id)a3 backlightStatus:(int64_t)a4 completionHandler:(id)a5;
- (void)_processDeemphasizableAlertChangesForBackglightStatus:(int64_t)a3 stopTasksDescriptorForDeemphasizedAlerts:(id)a4 deemphasizableAlertBeginPlayingContexts:(id)a5;
- (void)_processPlayTaskDescriptors:(id)a3;
- (void)_processPlaybackCompletionContexts:(id)a3;
- (void)_processStopTasksDescriptor:(id)a3;
- (void)_removeAlert:(id)a3 alertSystemSoundContext:(id)a4 didFailToPrepareSound:(BOOL)a5 appendingPlaybackCompletionContextToArray:(id)a6;
- (void)backlightStatusDidChange:(int64_t)a3;
- (void)dealloc;
- (void)playAlert:(id)a3 withCompletionHandler:(id)a4;
- (void)preheatForAlert:(id)a3 completionHandler:(id)a4;
@end

@implementation TLAlertSystemSoundController

- (TLAlertSystemSoundController)init
{
  v8.receiver = self;
  v8.super_class = TLAlertSystemSoundController;
  v2 = [(TLAlertSystemSoundController *)&v8 init];
  if (v2)
  {
    v3 = +[TLAudioQueue sharedAudioQueue];
    audioQueue = v2->_audioQueue;
    v2->_audioQueue = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:1];
    alertSystemSoundContexts = v2->_alertSystemSoundContexts;
    v2->_alertSystemSoundContexts = v5;

    v2->_backlightStatus = -1;
  }

  return v2;
}

- (void)dealloc
{
  v24 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  v3 = self->_audioQueue;
  audioQueue = self->_audioQueue;
  self->_audioQueue = 0;

  [(TLAudioQueue *)v3 assertNotRunningOnAudioQueue];
  os_unfair_lock_lock(&self->_lock);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_alertSystemSoundContexts;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        if (!v8)
        {
          v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [v8 addObject:v11];
      }

      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if ([v8 count])
  {
    v12 = [(TLAlertSystemSoundController *)self _prepareForStoppingAlerts:v8 withOptions:0 playbackCompletionType:4];
  }

  else
  {
    v12 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __39__TLAlertSystemSoundController_dealloc__block_invoke;
  v16[3] = &unk_1E8578900;
  v17 = v12;
  v18 = self;
  v13 = v12;
  [(TLAudioQueue *)v3 performSynchronousTaskWithBlock:v16];

  v15.receiver = self;
  v15.super_class = TLAlertSystemSoundController;
  [(TLAlertSystemSoundController *)&v15 dealloc];
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __39__TLAlertSystemSoundController_dealloc__block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    return [*(result + 40) _processStopTasksDescriptor:?];
  }

  return result;
}

- (void)playAlert:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v8 = objc_alloc_init(TLAlertPlaybackCompletionContext);
  [(TLAlertPlaybackCompletionContext *)v8 setCompletionHandler:v7];

  [(TLAlertPlaybackCompletionContext *)v8 setPlaybackCompletionType:0];
  os_unfair_lock_lock(&self->_lock);
  v9 = [v6 playbackObserver];
  v10 = [objc_opt_class() _toneIdentifierForDeemphasizingAlert:v6];
  v11 = [objc_opt_class() _vibrationIdentifierForDeemphasizingAlert:v6 correspondingToneIdentifierForDeemphasizingAlert:v10];
  v12 = objc_alloc_init(TLAlertSystemSoundContext);
  [(TLAlertSystemSoundContext *)v12 setToneIdentifierForDeemphasizingAlert:v10];
  [(TLAlertSystemSoundContext *)v12 setVibrationIdentifierForDeemphasizingAlert:v11];
  [(TLAlertSystemSoundContext *)v12 setPlaybackCompletionContext:v8];
  [(TLAlertSystemSoundContext *)v12 setPlaybackObserver:v9];
  v13 = [(TLAlertSystemSoundController *)self _considerDeferringPlayingAlertForBacklightStatusResolution:v6 alertSystemSoundContext:v12];
  v15 = v14;
  if ((v14 & 0x100) != 0)
  {
    [(NSMapTable *)self->_alertSystemSoundContexts setObject:v12 forKey:v6];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v16 = v13;
    [(TLAlertSystemSoundContext *)v12 setLoadingSound:1];
    [(NSMapTable *)self->_alertSystemSoundContexts setObject:v12 forKey:v6];

    os_unfair_lock_unlock(&self->_lock);
    audioQueue = self->_audioQueue;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __64__TLAlertSystemSoundController_playAlert_withCompletionHandler___block_invoke;
    v18[3] = &unk_1E8579710;
    v18[4] = self;
    v19 = v6;
    v20 = v12;
    v21 = v10;
    v22 = v11;
    v23 = v16;
    v24 = v15;
    [(TLAudioQueue *)audioQueue performTaskWithBlock:v18];
  }
}

- (void)_playAlert:(id)a3 alertSystemSoundContext:(id)a4 toneIdentifierForDeemphasizingAlert:(id)a5 vibrationIdentifierForDeemphasizingAlert:(id)a6 backlightStatusResolutionDeferralContext:(id)a7
{
  var1 = a7.var1;
  var0 = a7.var0;
  v39 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a5;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v17 = objc_opt_class();
  v18 = var1 && var0 == 1;
  if (var1 && var0 == 1)
  {
    v19 = v16;
  }

  else
  {
    v19 = 0;
  }

  v20 = [v17 _soundForAlert:v13 toneIdentifierForDeemphasizingAlert:v19];

  if (v18 == 1)
  {
    v21 = v15;
  }

  else
  {
    v21 = [v13 vibrationIdentifier];
  }

  v22 = v21;
  v23 = [v20 isValid];
  v24 = TLLogPlayback();
  v25 = v24;
  if (!v23)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v34 = self;
      v35 = 2114;
      v36 = v13;
      v37 = 2114;
      v38 = v20;
      _os_log_error_impl(&dword_1D9356000, v25, OS_LOG_TYPE_ERROR, "%{public}@: _playAlert:(%{public}@) […]. Failed to begin playback with invalid sound: %{public}@.", buf, 0x20u);
    }

    os_unfair_lock_lock(&self->_lock);
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(TLAlertSystemSoundController *)self _removeAlert:v13 alertSystemSoundContext:v14 didFailToPrepareSound:1 appendingPlaybackCompletionContextToArray:v27];
    [v14 setLoadingSound:0];
    v29 = 0;
    v28 = 0;
    goto LABEL_20;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v34 = self;
    v35 = 2114;
    v36 = v13;
    v37 = 2114;
    v38 = v20;
    _os_log_impl(&dword_1D9356000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: _playAlert:(%{public}@) […]. Sound: %{public}@.", buf, 0x20u);
  }

  os_unfair_lock_lock(&self->_lock);
  if (([v14 isBeingInterrupted] & 1) == 0)
  {
    [v14 setSound:v20];
    [v14 setVibrationIdentifier:v22];
    [v14 setDeemphasized:v18 & 1];
    [v14 setLoadingSound:0];
    if (var1)
    {
      [(TLAlertSystemSoundController *)self _beginRequiringBacklightObservationForAlert:v13 alertSystemSoundContext:v14];
    }

    v29 = [(TLAlertSystemSoundController *)self _prepareForPreemptingAlertsBeforeBeginningPlaybackOfAlert:v13 withSound:v20 playbackCompletionType:4];
    v28 = [(TLAlertSystemSoundController *)self _playTaskDescriptorForAlert:v13 withSound:v20 vibrationIdentifier:v22 alertSystemSoundContext:v14];
    v27 = 0;
LABEL_20:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_21;
  }

  [v14 setLoadingSound:0];
  os_unfair_lock_unlock(&self->_lock);
  v26 = TLLogPlayback();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v34 = self;
    v35 = 2114;
    v36 = v13;
    _os_log_impl(&dword_1D9356000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: _playAlert:(%{public}@) […]. Aborting playback because this alert is already being interrupted.", buf, 0x16u);
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
LABEL_21:
  if ([v27 count])
  {
    [(TLAlertSystemSoundController *)self _processPlaybackCompletionContexts:v27];
  }

  if (v29)
  {
    [(TLAlertSystemSoundController *)self _processStopTasksDescriptor:v29];
  }

  if (v28)
  {
    v32 = v28;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
    [(TLAlertSystemSoundController *)self _processPlayTaskDescriptors:v30];
  }

  v31 = *MEMORY[0x1E69E9840];
}

- ($61DF9F24A7329A1BB61181F7D05C320D)_considerDeferringPlayingAlertForBacklightStatusResolution:(id)a3 alertSystemSoundContext:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  backlightStatus = self->_backlightStatus;
  v9 = [v7 toneIdentifierForDeemphasizingAlert];
  v10 = [v9 length];

  v11 = 0;
  if (v10 && backlightStatus == -1)
  {
    v12 = TLLogPlayback();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543618;
      v18 = self;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: _considerDeferringPlayingAlertForBacklightStatusResolution:(%{public}@) […]. Deemphasizing this alert is allowed but the backlight status is unknown. Deferring until the backlight status is known.", &v17, 0x16u);
    }

    [(TLAlertSystemSoundController *)self _beginRequiringBacklightObservationForAlert:v6 alertSystemSoundContext:v7];
    v11 = 256;
  }

  if (v10)
  {
    v13 = v11 + 1;
  }

  else
  {
    v13 = v11;
  }

  v14 = *MEMORY[0x1E69E9840];
  v15 = backlightStatus;
  v16 = v13;
  result.var1 = v16;
  result.var2 = BYTE1(v16);
  result.var0 = v15;
  return result;
}

- (id)_playTaskDescriptorForAlert:(id)a3 withSound:(id)a4 vibrationIdentifier:(id)a5 alertSystemSoundContext:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v14 = v10;
  if ([v10 hasPlaybackStarted])
  {
    if ([v10 isDeemphasized])
    {
      if ([v10 hasDeemphasizedPlaybackStarted])
      {
        v14 = 0;
      }

      else
      {
        v14 = v10;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  v15 = -[TLAlertSystemSoundPlayTaskDescriptor initWithAlert:sound:vibrationIdentifier:isDeemphasized:alertSystemSoundContext:]([TLAlertSystemSoundPlayTaskDescriptor alloc], "initWithAlert:sound:vibrationIdentifier:isDeemphasized:alertSystemSoundContext:", v13, v12, v11, [v10 isDeemphasized], v14);

  return v15;
}

- (void)_processPlayTaskDescriptors:(id)a3
{
  v76 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v46 = self;
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v63 objects:v75 count:16];
  if (v5)
  {
    v7 = v5;
    v47 = 0;
    v44 = *v64;
    *&v6 = 138543874;
    v42 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v64 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v63 + 1) + 8 * i);
        v10 = [v9 alert];
        v11 = [v9 sound];
        v12 = [v9 vibrationIdentifier];
        v13 = [v9 isDeemphasized];
        [v11 beginRequiringUnderlyingSoundLoaded];
        v14 = [v9 alertSystemSoundContext];
        if (v14)
        {
          v15 = v47;
          if (!v47)
          {
            v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v47 = v15;
          [v15 addObject:v9];
        }

        v16 = [v11 soundID];
        v17 = [objc_opt_class() _optionsForSystemSoundAlert:v10 withSound:v11 vibrationIdentifier:v12 isDeemphasized:v13];
        v18 = TLLogPlayback();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v42;
          v70 = self;
          v71 = 2114;
          v72 = v10;
          v73 = 2048;
          v74 = v16;
          _os_log_impl(&dword_1D9356000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: _processPlayTaskDescriptors:(%{public}@). Calling AudioServicesPlaySystemSoundWithOptions for soundID: %lu.", buf, 0x20u);
        }

        v56 = MEMORY[0x1E69E9820];
        v57 = 3221225472;
        v58 = __60__TLAlertSystemSoundController__processPlayTaskDescriptors___block_invoke;
        v59 = &unk_1E8579738;
        v60 = self;
        v61 = v10;
        v62 = v16;
        v19 = v10;
        AudioServicesPlaySystemSoundWithOptions();
      }

      v7 = [obj countByEnumeratingWithState:&v63 objects:v75 count:16];
    }

    while (v7);
  }

  else
  {
    v47 = 0;
  }

  v20 = v47;
  if ([v47 count])
  {
    os_unfair_lock_lock(&self->_lock);
    v55 = 0u;
    v53 = 0u;
    v54 = 0u;
    v52 = 0u;
    v21 = v47;
    v22 = [v21 countByEnumeratingWithState:&v52 objects:v68 count:16];
    if (v22)
    {
      v23 = v22;
      v45 = 0;
      v24 = 0;
      v25 = *v53;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v53 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v52 + 1) + 8 * j);
          v28 = [v27 alertSystemSoundContext];
          if (([v28 hasPlaybackStarted] & 1) == 0)
          {
            [v28 setHasPlaybackStarted:1];
            v29 = [v28 playbackObserver];
            if (v29)
            {
              if (!v24)
              {
                v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              [v24 addObject:v27];
            }
          }

          if ([v28 isDeemphasized])
          {
            if (([v28 hasDeemphasizedPlaybackStarted] & 1) == 0)
            {
              [v28 setHasDeemphasizedPlaybackStarted:1];
              if ([v28 shouldBeInterruptedAfterDeemphasizedPlaybackStarts])
              {
                v30 = v24;
                v31 = [v27 alert];
                v32 = TLLogPlayback();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  v70 = v46;
                  v71 = 2114;
                  v72 = v31;
                  _os_log_impl(&dword_1D9356000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: _processPlayTaskDescriptors:. Preparing for deferred interruption of %{public}@.", buf, 0x16u);
                }

                v33 = [v28 playbackCompletionContext];
                v34 = [v33 playbackCompletionType];

                v35 = [v28 stoppingOptionsForDeferredInterruption];
                v67 = v31;
                v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
                v37 = [(TLAlertSystemSoundController *)v46 _prepareForStoppingAlerts:v36 withOptions:v35 playbackCompletionType:v34];

                v24 = v30;
                if (v37)
                {
                  v38 = v45;
                  if (!v45)
                  {
                    v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  }

                  v45 = v38;
                  [v38 addObject:v37];
                }

                [v28 setStoppingOptionsForDeferredInterruption:0];
                [v28 setShouldBeInterruptedAfterDeemphasizedPlaybackStarts:0];
              }
            }
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v52 objects:v68 count:16];
      }

      while (v23);
    }

    else
    {
      v45 = 0;
      v24 = 0;
    }

    os_unfair_lock_unlock(&v46->_lock);
    if ([v24 count])
    {
      v39 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__TLAlertSystemSoundController__processPlayTaskDescriptors___block_invoke_9;
      block[3] = &unk_1E85789A0;
      v51 = v24;
      dispatch_async(v39, block);
    }

    if ([v45 count])
    {
      audioQueue = v46->_audioQueue;
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __60__TLAlertSystemSoundController__processPlayTaskDescriptors___block_invoke_2;
      v48[3] = &unk_1E8578900;
      v48[4] = v46;
      v49 = v45;
      [(TLAudioQueue *)audioQueue performSynchronousTaskWithOptions:1 block:v48];
    }

    v20 = v47;
  }

  v41 = *MEMORY[0x1E69E9840];
}

uint64_t __60__TLAlertSystemSoundController__processPlayTaskDescriptors___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = TLLogPlayback();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8 = 138543874;
    v9 = v3;
    v10 = 2114;
    v11 = v4;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_1D9356000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: _processPlayTaskDescriptors:(%{public}@). Running completion block for AudioServicesPlaySystemSoundWithOptions for soundID: %lu.", &v8, 0x20u);
  }

  result = [*(a1 + 32) _didCompletePlaybackForAlert:*(a1 + 40)];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __60__TLAlertSystemSoundController__processPlayTaskDescriptors___block_invoke_9(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [v6 alert];
        v8 = [v6 alertSystemSoundContext];
        v9 = [v8 playbackObserver];
        if (objc_opt_respondsToSelector())
        {
          v10 = [[TLAlertPlaybackBeginEvent alloc] _initWithAudioSessionReporterID:0 isForMusicPlayback:0];
          [v9 alert:v7 didBeginPlayingWithEvent:v10];
        }

        else if (objc_opt_respondsToSelector())
        {
          [v9 alertDidBeginPlaying:v7];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __60__TLAlertSystemSoundController__processPlayTaskDescriptors___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = TLLogPlayback();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v16 = v3;
    _os_log_impl(&dword_1D9356000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: _processPlayTaskDescriptors:. Processing deferred interruptions.", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 32) _processStopTasksDescriptor:{*(*(&v10 + 1) + 8 * v8++), v10}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)stopPlayingAlerts:(id)a3 withOptions:(id)a4 playbackCompletionType:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v10 = [(TLAlertSystemSoundController *)self _prepareForStoppingAlerts:v9 withOptions:v8 playbackCompletionType:a5];

  os_unfair_lock_unlock(&self->_lock);
  v11 = [v10 interruptedAlertsToSound];
  v12 = [v11 count];

  if (v10)
  {
    audioQueue = self->_audioQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __85__TLAlertSystemSoundController_stopPlayingAlerts_withOptions_playbackCompletionType___block_invoke;
    v15[3] = &unk_1E8578900;
    v15[4] = self;
    v16 = v10;
    [(TLAudioQueue *)audioQueue performTaskWithBlock:v15];
  }

  return v12 != 0;
}

- (id)_prepareForStoppingAlerts:(id)a3 withOptions:(id)a4 playbackCompletionType:(int64_t)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v32 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  v9 = [v8 count];
  v10 = TLLogPlayback();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (v9 == 1)
    {
      v11 = "";
    }

    else
    {
      v11 = "s";
    }

    v12 = NSStringFromTLAlertPlaybackCompletionType(a5);
    *buf = 138544386;
    v42 = self;
    v43 = 2048;
    v44 = v9;
    v45 = 2082;
    v46 = v11;
    v47 = 2114;
    v48 = v32;
    v49 = 2112;
    v50 = v12;
    _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: _prepareForStoppingAlerts:([%lu alert%{public}s]) withOptions:(%{public}@) playbackCompletionType:(%@)", buf, 0x34u);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v8;
  v13 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v33 = 0;
    v34 = 0;
    v15 = *v37;
    v16 = v32;
    while (1)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v36 + 1) + 8 * i);
        v19 = [(NSMapTable *)self->_alertSystemSoundContexts objectForKey:v18, v32];
        v20 = v19;
        if (v19)
        {
          if ([v19 isDeemphasized] && !objc_msgSend(v20, "hasDeemphasizedPlaybackStarted"))
          {
            v21 = [v20 playbackCompletionContext];
            [v21 setPlaybackCompletionType:a5];
            [v20 setStoppingOptionsForDeferredInterruption:v16];
            [v20 setShouldBeInterruptedAfterDeemphasizedPlaybackStarts:1];
            v23 = TLLogPlayback();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              v42 = self;
              v43 = 2114;
              v44 = v18;
              v45 = 2114;
              v46 = v20;
              _os_log_impl(&dword_1D9356000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: _prepareForStoppingAlerts…: Deferring stop request for %{public}@ with system sound context: %{public}@. Will process stop request after deemphasized playback starts.", buf, 0x20u);
            }

            goto LABEL_34;
          }

          if (![v20 isBeingInterrupted])
          {
            goto LABEL_17;
          }

          if ([v20 isBeingDeemphasized])
          {
            [v20 setBeingDeemphasized:0];
LABEL_17:
            v21 = [v20 playbackCompletionContext];
            [v21 setPlaybackCompletionType:a5];
            [v20 setBeingInterrupted:1];
            v22 = TLLogPlayback();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              v42 = self;
              v43 = 2114;
              v44 = v18;
              v45 = 2114;
              v46 = v20;
              _os_log_impl(&dword_1D9356000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: _prepareForStoppingAlerts…: Beginning interruption of %{public}@ with system sound context: %{public}@.", buf, 0x20u);
            }

            v23 = [v20 sound];
            if (v23)
            {
              v24 = v34;
              if (!v34)
              {
                v24 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:1];
              }

              v34 = v24;
              [v24 setObject:v23 forKey:v18];
            }

            else
            {
              v25 = a5;
              v26 = TLLogPlayback();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543874;
                v42 = self;
                v43 = 2114;
                v44 = v18;
                v45 = 2114;
                v46 = v21;
                _os_log_impl(&dword_1D9356000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: _prepareForStoppingAlerts…: %{public}@ didn't even get a chance to begin playing. Merely processing playback completion context: %{public}@.", buf, 0x20u);
              }

              a5 = v25;
              if (v21)
              {
                v27 = v33;
                if (!v33)
                {
                  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
                }

                v33 = v27;
                [(TLAlertSystemSoundController *)self _removeAlert:v18 alertSystemSoundContext:v20 didFailToPrepareSound:0 appendingPlaybackCompletionContextToArray:v27];
              }

              v16 = v32;
            }

LABEL_34:

            goto LABEL_35;
          }
        }

        v21 = TLLogPlayback();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v42 = self;
          v43 = 2114;
          v44 = v18;
          v45 = 2114;
          v46 = v20;
          _os_log_impl(&dword_1D9356000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: _prepareForStoppingAlerts…: Ignoring stop request for %{public}@ with system sound context: %{public}@.", buf, 0x20u);
        }

LABEL_35:
      }

      v14 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (!v14)
      {
        goto LABEL_39;
      }
    }
  }

  v33 = 0;
  v34 = 0;
  v16 = v32;
LABEL_39:

  if ([v34 count] || objc_msgSend(v33, "count"))
  {
    v28 = objc_alloc_init(TLAlertSystemSoundStopTasksDescriptor);
    [(TLAlertSystemSoundStopTasksDescriptor *)v28 setInterruptedAlertsToSound:v34];
    v29 = v33;
    [(TLAlertSystemSoundStopTasksDescriptor *)v28 setPlaybackCompletionContextsToProcess:v33];
    [(TLAlertSystemSoundStopTasksDescriptor *)v28 setOptions:v16];
    [(TLAlertSystemSoundStopTasksDescriptor *)v28 setPlaybackCompletionType:a5];
  }

  else
  {
    v28 = 0;
    v29 = v33;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v28;
}

- (void)_processStopTasksDescriptor:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v25 = self;
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v5 = [v4 options];
  v24 = [v4 playbackCompletionType];
  v22 = v4;
  v6 = [v4 interruptedAlertsToSound];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    v23 = v6;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [v6 objectForKey:v11];
        v13 = [v12 soundID];
        if (v5)
        {
          v14 = [v5 shouldWaitUntilEndOfCurrentRepetition] ^ 1;
        }

        else
        {
          v14 = 1;
        }

        v15 = TLLogPlayback();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          NSStringFromTLAlertPlaybackCompletionType(v24);
          v16 = v5;
          v17 = v8;
          v19 = v18 = v9;
          *buf = 138544386;
          v31 = v25;
          v32 = 2114;
          v33 = v19;
          v34 = 2048;
          v35 = v13;
          v36 = 1024;
          v37 = v14;
          v38 = 2114;
          v39 = v11;
          _os_log_impl(&dword_1D9356000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: _processStopTasksDescriptor:. playbackCompletionType: %{public}@. Calling AudioServicesStopSystemSound for soundID: %lu with inStopNow = %{BOOL}d for alert %{public}@.", buf, 0x30u);

          v9 = v18;
          v8 = v17;
          v5 = v16;
          v6 = v23;
        }

        AudioServicesStopSystemSound();
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v40 count:16];
    }

    while (v8);
  }

  v20 = [v22 playbackCompletionContextsToProcess];
  [(TLAlertSystemSoundController *)v25 _processPlaybackCompletionContexts:v20];

  v21 = *MEMORY[0x1E69E9840];
}

- (id)_prepareForPreemptingAlertsBeforeBeginningPlaybackOfAlert:(id)a3 withSound:(id)a4 playbackCompletionType:(int64_t)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  v9 = [v7 configuration];
  v10 = [v9 shouldRepeat];
  v28 = v9;
  v11 = [v9 isForPreview];
  v29 = v8;
  v33 = [v8 soundID];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v34 = self;
  obj = self->_alertSystemSoundContexts;
  v12 = [(NSMapTable *)obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (!v12)
  {
    v14 = 0;
    goto LABEL_21;
  }

  v13 = v12;
  v14 = 0;
  v15 = *v36;
  v32 = v10 ^ 1;
  v16 = v11 ^ 1;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v36 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v35 + 1) + 8 * i);
      if (v18 != v7)
      {
        v19 = [(NSMapTable *)v34->_alertSystemSoundContexts objectForKey:*(*(&v35 + 1) + 8 * i)];
        v20 = [v19 sound];
        v21 = [v20 soundID] == v33;

        if (((v21 | v32) & 1) == 0)
        {
          v22 = [v18 configuration];
          v21 = [v22 shouldRepeat];
        }

        if ((v21 | v16))
        {
          if (!v21)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v23 = [v18 configuration];
          v24 = [v23 isForPreview];

          if ((v24 & 1) == 0)
          {
LABEL_16:

            continue;
          }
        }

        if (!v14)
        {
          v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [v14 addObject:v18];
        goto LABEL_16;
      }
    }

    v13 = [(NSMapTable *)obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  }

  while (v13);
LABEL_21:

  v25 = [(TLAlertSystemSoundController *)v34 _prepareForStoppingAlerts:v14 withOptions:0 playbackCompletionType:a5];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (void)preheatForAlert:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  backlightStatus = self->_backlightStatus;
  os_unfair_lock_unlock(&self->_lock);
  audioQueue = self->_audioQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__TLAlertSystemSoundController_preheatForAlert_completionHandler___block_invoke;
  v12[3] = &unk_1E8579760;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v15 = backlightStatus;
  v10 = v7;
  v11 = v6;
  [(TLAudioQueue *)audioQueue performTaskWithBlock:v12];
}

- (void)_preheatForAlert:(id)a3 backlightStatus:(int64_t)a4 completionHandler:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v10 = [objc_opt_class() _toneIdentifierForDeemphasizingAlert:v8];
  v11 = [v10 length];
  v12 = objc_opt_class();
  if (v11)
  {
    v13 = a4 == 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v12 _soundForAlert:v8 toneIdentifierForDeemphasizingAlert:v14];
  v16 = [v15 soundID];
  v17 = [v15 isValid];
  v18 = TLLogPlayback();
  v19 = v18;
  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v28 = self;
      v29 = 2114;
      v30 = v8;
      v31 = 2114;
      v32 = v15;
      v33 = 2048;
      v34 = v16;
      _os_log_impl(&dword_1D9356000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: _preheatForAlert:(%{public}@). Pre-heating succeeded with sound: %{public}@ and soundID: %lu.", buf, 0x2Au);
    }

    v20 = 0;
    if (!v9)
    {
      goto LABEL_16;
    }

LABEL_15:
    v21 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__TLAlertSystemSoundController__preheatForAlert_backlightStatus_completionHandler___block_invoke;
    block[3] = &unk_1E8579788;
    v25 = v9;
    v26 = v20 == 0;
    v24 = v20;
    dispatch_async(v21, block);

    goto LABEL_16;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138544130;
    v28 = self;
    v29 = 2114;
    v30 = v8;
    v31 = 2114;
    v32 = v15;
    v33 = 2048;
    v34 = v16;
    _os_log_error_impl(&dword_1D9356000, v19, OS_LOG_TYPE_ERROR, "%{public}@: _preheatForAlert:(%{public}@). Pre-heating failed with sound: %{public}@ and soundID: %lu.", buf, 0x2Au);
  }

  v20 = [MEMORY[0x1E696ABC0] tl_errorWithDomain:@"TLAlertErrorDomain" description:{@"Failed to pre-heat alert %@.", v8}];
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_16:

  v22 = *MEMORY[0x1E69E9840];
}

+ (id)_soundForAlert:(id)a3 toneIdentifierForDeemphasizingAlert:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 configuration];
  v8 = [v7 externalToneFileURL];
  if (v8)
  {
    v9 = [TLSystemSound alloc];
    v10 = [(TLSystemSound *)v9 initWithSoundFileURL:v8 soundID:kSystemSoundID_InvalidTone requiresLongFormPlayback:0];
    goto LABEL_16;
  }

  v11 = [v5 toneIdentifier];
  if ([v6 length])
  {
    v12 = v6;

    v11 = v12;
  }

  v13 = [v7 isForPreview];
  v14 = +[TLToneManager sharedToneManager];
  v15 = v14;
  if (v13)
  {
    [v14 _previewSoundForToneIdentifier:v11];
  }

  else
  {
    [v14 _soundForToneIdentifier:v11];
  }
  v10 = ;

  if (!v10 || (v16 = [(TLSystemSound *)v10 soundID], v16 == kSystemSoundID_NoneTone))
  {
    v17 = +[TLCapabilitiesManager sharedCapabilitiesManager];
    v18 = [v17 hasVibratorCapability];

    if (v18)
    {
      v19 = [v7 externalVibrationPattern];
      if (v19 || ([v7 externalVibrationPatternFileURL], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v22 = [v5 vibrationIdentifier];
        v23 = [v22 isEqualToString:@"<none>"];

        if (v23)
        {
          goto LABEL_15;
        }
      }

      v20 = [[TLSystemSound alloc] initWithSoundFileURL:0 soundID:4095 requiresLongFormPlayback:0];

      v10 = v20;
    }
  }

LABEL_15:

LABEL_16:

  return v10;
}

+ (id)_toneIdentifierForDeemphasizingAlert:(id)a3
{
  v3 = a3;
  v4 = [v3 configuration];
  if ([v4 isForPreview])
  {
    v5 = 0;
  }

  else
  {
    v6 = +[TLToneManager sharedToneManager];
    v7 = [v3 type];
    v8 = [v4 topic];
    v9 = [v3 toneIdentifier];
    v5 = [v6 _toneIdentifierForDeemphasizingAlertWithType:v7 topic:v8 regularToneIdentifier:v9];
  }

  return v5;
}

+ (id)_vibrationIdentifierForDeemphasizingAlert:(id)a3 correspondingToneIdentifierForDeemphasizingAlert:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = a3;
    v7 = [v6 configuration];
    v8 = +[TLVibrationManager sharedVibrationManager];
    v9 = [v6 vibrationIdentifier];
    v10 = [v6 type];

    v11 = [v7 topic];
    v12 = [v8 _sanitizeVibrationIdentifier:v9 forAlertType:v10 topic:v11 targetDevice:objc_msgSend(v7 correspondingToneIdentifier:"targetDevice") didFallbackToCurrentVibrationIdentifier:{v5, 0}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (unsigned)_soundBehaviorForAlert:(id)a3 withSound:(id)a4 isDeemphasized:(BOOL)a5
{
  v6 = a4;
  v7 = [a3 configuration];
  v8 = [v7 type];
  if ([v7 isForPreview])
  {
    if ((v8 - 4) < 9)
    {
      v9 = dword_1D93A5B28[v8 - 4];
      goto LABEL_22;
    }

    v10 = 1307;
    goto LABEL_11;
  }

  v9 = 0;
  v10 = 1;
  if (v8 <= 7)
  {
    if (v8 <= 4)
    {
      if (v8 == 1)
      {
        goto LABEL_22;
      }

      if (v8 != 2)
      {
        if (v8 == 3)
        {
          v9 = 1003;
          goto LABEL_22;
        }

        goto LABEL_11;
      }

      v12 = [v7 topic];
      v13 = [v12 isEqualToString:@"TLAlertTopicTextMessageInConversation"];

      if (v13)
      {
        v9 = 1003;
      }

      else
      {
        v9 = 1007;
      }

      goto LABEL_22;
    }

    if (v8 == 5)
    {
      v9 = 1000;
      goto LABEL_22;
    }

LABEL_21:
    v9 = 1001;
    goto LABEL_22;
  }

  if (v8 <= 10)
  {
    if (v8 != 8 && v8 != 9)
    {
      v9 = 1005;
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v8 == 11)
  {
    v9 = 1017;
    goto LABEL_22;
  }

  if (v8 == 12)
  {
    v9 = 1007;
    goto LABEL_22;
  }

  if (v8 != 28)
  {
LABEL_11:
    if (v8 == 13)
    {
      if ([v6 requiresLongFormPlayback])
      {
        v9 = 1403;
      }

      else
      {
        v9 = v10;
      }
    }

    else
    {
      v9 = v10;
    }
  }

LABEL_22:

  return v9;
}

+ (id)_vibrationPatternForAlert:(id)a3 withSound:(id)a4 vibrationIdentifier:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = +[TLCapabilitiesManager sharedCapabilitiesManager];
  v9 = [v8 hasVibratorCapability];

  if (v9)
  {
    v10 = [v6 configuration];
    v11 = [v10 externalVibrationPattern];
    if (!v11)
    {
      v12 = [v10 externalVibrationPatternFileURL];
      if (v12)
      {
        v11 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v12];
      }

      else
      {
        v11 = 0;
      }
    }

    v13 = [TLAlertPlaybackPolicy shouldRepeatVibrationForAlert:v6 withPlaybackBackend:1];
    if (v13 && v11)
    {
      v14 = [[TLVibrationPattern alloc] initWithPropertyListRepresentation:v11];
      v15 = [(TLVibrationPattern *)v14 _artificiallyRepeatingPropertyListRepresentation];

      v11 = v15;
    }

    if (!v11)
    {
      if ([v7 isEqualToString:@"Built-In-System-Sound-ID-Vibration"])
      {
        v11 = 0;
      }

      else
      {
        v16 = +[TLVibrationManager sharedVibrationManager];
        v11 = [v16 patternForVibrationWithIdentifier:v7 repeating:v13];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (unsigned)_componentSuppressionFlagsForAlert:(id)a3
{
  v3 = a3;
  v4 = [v3 toneIdentifier];
  v5 = [v4 isEqualToString:@"<none>"];

  v6 = [v3 vibrationIdentifier];

  LODWORD(v3) = [v6 isEqualToString:@"<none>"];
  if (v3)
  {
    return v5 | 2;
  }

  else
  {
    return v5;
  }
}

+ (id)_descriptionForAlertComponentsSuppressionFlags:(unsigned int)a3
{
  if (a3)
  {
    v5 = @"kAudioServicesFlag_SuppressAudio";
    if ((a3 & 2) != 0)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ | %@", @"kAudioServicesFlag_SuppressAudio", @"kAudioServicesFlag_SuppressVibe", v3];
    }
  }

  else if ((a3 & 2) != 0)
  {
    v5 = @"kAudioServicesFlag_SuppressVibe";
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_didCompletePlaybackForAlert:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSMapTable *)self->_alertSystemSoundContexts objectForKey:v4];
  v7 = [v6 sound];
  [v6 setSound:0];
  [v6 setVibrationIdentifier:0];
  v8 = TLLogPlayback();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v4 debugDescription];
    *buf = 138544130;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v9;
    *&buf[22] = 2114;
    v52 = v7;
    LOWORD(v53) = 2114;
    *(&v53 + 2) = v6;
    _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: _didCompletePlaybackForAlert:(%{public}@). Removed sound %{public}@ from %{public}@.", buf, 0x2Au);
  }

  v10 = [v6 playbackCompletionContext];
  if (v10)
  {
    v11 = [v6 toneIdentifierForDeemphasizingAlert];
    v12 = [v6 vibrationIdentifierForDeemphasizingAlert];
    if ([v11 length] && objc_msgSend(v6, "isBeingDeemphasized"))
    {
      [v6 setLoadingSound:1];
      v13 = 1;
      goto LABEL_10;
    }

    [(TLAlertSystemSoundController *)self _removeAlert:v4 alertSystemSoundContext:v6 didFailToPrepareSound:0 appendingPlaybackCompletionContextToArray:v5];
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v13 = 0;
LABEL_10:

  os_unfair_lock_unlock(&self->_lock);
  if (!v13)
  {
    v18 = 0;
    goto LABEL_21;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v52 = __Block_byref_object_copy__3;
  *&v53 = __Block_byref_object_dispose__3;
  *(&v53 + 1) = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__3;
  v41 = __Block_byref_object_dispose__3;
  v42 = 0;
  audioQueue = self->_audioQueue;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __61__TLAlertSystemSoundController__didCompletePlaybackForAlert___block_invoke;
  v30[3] = &unk_1E85797B0;
  v34 = buf;
  v30[4] = self;
  v15 = v4;
  v31 = v15;
  v32 = v11;
  v35 = &v43;
  v36 = &v37;
  v33 = v12;
  [(TLAudioQueue *)audioQueue performSynchronousTaskWithOptions:1 block:v30];
  os_unfair_lock_lock(&self->_lock);
  v16 = [(NSMapTable *)self->_alertSystemSoundContexts objectForKey:v15];
  v17 = v16;
  if (!v16)
  {
    v19 = TLLogPlayback();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v15 debugDescription];
      *v47 = 138543618;
      v48 = self;
      v49 = 2114;
      v50 = v20;
      _os_log_impl(&dword_1D9356000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: _didCompletePlaybackForAlert:(%{public}@). System sound context for this alert has already been removed. This likely indicates that the alert was stopped programmatically around the time we were trying to load the deemphasized sound. Aborting deemphasizing process immediately.", v47, 0x16u);
    }

    goto LABEL_19;
  }

  if ((v44[3] & 1) == 0)
  {
    [(TLAlertSystemSoundController *)self _removeAlert:v15 alertSystemSoundContext:v16 didFailToPrepareSound:1 appendingPlaybackCompletionContextToArray:v5];
    [v17 setLoadingSound:0];
LABEL_19:
    v18 = 0;
    goto LABEL_20;
  }

  [v16 setSound:*(*&buf[8] + 40)];
  [v17 setVibrationIdentifier:v38[5]];
  [v17 setLoadingSound:0];
  [v17 setBeingDeemphasized:0];
  [v17 setBeingInterrupted:0];
  [v17 setDeemphasized:1];
  v18 = [(TLAlertSystemSoundController *)self _playTaskDescriptorForAlert:v15 withSound:*(*&buf[8] + 40) vibrationIdentifier:v38[5] alertSystemSoundContext:v17];
LABEL_20:

  os_unfair_lock_unlock(&self->_lock);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(buf, 8);

LABEL_21:
  if (v7 | v18)
  {
    v21 = self->_audioQueue;
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __61__TLAlertSystemSoundController__didCompletePlaybackForAlert___block_invoke_42;
    v26 = &unk_1E8579038;
    v27 = v7;
    v28 = v18;
    v29 = self;
    [(TLAudioQueue *)v21 performSynchronousTaskWithOptions:1 block:&v23];
  }

  if ([v5 count])
  {
    [(TLAlertSystemSoundController *)self _processPlaybackCompletionContexts:v5];
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __61__TLAlertSystemSoundController__didCompletePlaybackForAlert___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() _soundForAlert:*(a1 + 40) toneIdentifierForDeemphasizingAlert:*(a1 + 48)];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  *(*(*(a1 + 72) + 8) + 24) = [*(*(*(a1 + 64) + 8) + 40) isValid];
  objc_storeStrong((*(*(a1 + 80) + 8) + 40), *(a1 + 56));
  v6 = TLLogPlayback();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) debugDescription];
    v9 = *(*(*(a1 + 64) + 8) + 40);
    v10 = *(*(*(a1 + 80) + 8) + 40);
    v12 = 138544130;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    v16 = 2114;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: _didCompletePlaybackForAlert:(%{public}@). About to begin playing deemphasized sound: %{public}@ and vibration identifier: %{public}@.", &v12, 0x2Au);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __61__TLAlertSystemSoundController__didCompletePlaybackForAlert___block_invoke_42(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2)
  {
    [v2 endRequiringUnderlyingSoundLoaded];
  }

  v3 = a1[5];
  if (v3)
  {
    v4 = a1[6];
    v7[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [v4 _processPlayTaskDescriptors:v5];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_processPlaybackCompletionContexts:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  if ([v4 count])
  {
    v5 = [(TLAlertSystemSoundController *)self description];
    v6 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67__TLAlertSystemSoundController__processPlaybackCompletionContexts___block_invoke;
    v8[3] = &unk_1E8578900;
    v9 = v4;
    v10 = v5;
    v7 = v5;
    dispatch_async(v6, v8);
  }
}

void __67__TLAlertSystemSoundController__processPlaybackCompletionContexts___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v15;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v15 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v14 + 1) + 8 * i);
          v8 = TLLogPlayback();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = *(a1 + 40);
            *buf = 138543618;
            v19 = v9;
            v20 = 2114;
            v21 = v7;
            _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_processPlaybackCompletionContexts: […]: Processing %{public}@.", buf, 0x16u);
          }

          v10 = [v7 playbackCompletionType];
          v11 = [v7 error];
          v12 = [v7 completionHandler];
          if (v12)
          {
            [v7 setCompletionHandler:0];
            (v12)[2](v12, v10, v11);
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v4);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_removeAlert:(id)a3 alertSystemSoundContext:(id)a4 didFailToPrepareSound:(BOOL)a5 appendingPlaybackCompletionContextToArray:(id)a6
{
  v7 = a5;
  v26 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  os_unfair_lock_assert_owner(&self->_lock);
  v13 = [v11 playbackCompletionContext];
  v14 = v13;
  if (v7)
  {
    [v13 setPlaybackCompletionType:5];
    v15 = [MEMORY[0x1E696ABC0] tl_errorWithDomain:@"TLAlertErrorDomain" description:@"Failed to prepare tone sound ID for playback."];
    [v14 setError:v15];
  }

  v16 = TLLogPlayback();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138544130;
    v19 = self;
    v20 = 2114;
    v21 = v10;
    v22 = 2114;
    v23 = v11;
    v24 = 1024;
    v25 = v7;
    _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: _removeAlert:(%{public}@) alertSystemSoundContext:(%{public}@) didFailToPrepareSound:(%{BOOL}u)…", &v18, 0x26u);
  }

  [(TLAlertSystemSoundController *)self _endRequiringBacklightObservationForAlert:v10 alertSystemSoundContext:v11];
  [(NSMapTable *)self->_alertSystemSoundContexts removeObjectForKey:v10];
  if (v14)
  {
    [v11 setPlaybackCompletionContext:0];
    [v12 addObject:v14];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_beginRequiringBacklightObservationForAlert:(id)a3 alertSystemSoundContext:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  if ([v7 isRequiringBacklightObservation])
  {
    v8 = TLLogGeneral();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

    if (v9)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Playback/BackEnds/SystemSound/TLAlertSystemSoundController.m"];
      v11 = TLLogGeneral();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v10 lastPathComponent];
        v13 = [MEMORY[0x1E696AF00] callStackSymbols];
        v27 = 136381443;
        v28 = "[TLAlertSystemSoundController _beginRequiringBacklightObservationForAlert:alertSystemSoundContext:]";
        v29 = 2113;
        v30 = v12;
        v31 = 2049;
        v32 = 1243;
        v33 = 2113;
        v34 = v13;
        _os_log_impl(&dword_1D9356000, v11, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v27, 0x2Au);
      }
    }

    else
    {
      v10 = TLLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(TLToneManager *)v10 _migrateLegacyToneSettings:v14];
      }
    }

    v21 = TLLogGeneral();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(TLAlertSystemSoundController *)v6 _beginRequiringBacklightObservationForAlert:v7 alertSystemSoundContext:v21];
    }
  }

  [v7 setRequiringBacklightObservation:1];
  backlightObservationRequestsCount = self->_backlightObservationRequestsCount;
  self->_backlightObservationRequestsCount = backlightObservationRequestsCount + 1;
  v23 = TLLogPlayback();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = self->_backlightObservationRequestsCount;
    v27 = 138544386;
    v28 = self;
    v29 = 2114;
    v30 = v6;
    v31 = 2114;
    v32 = v7;
    v33 = 2048;
    v34 = backlightObservationRequestsCount;
    v35 = 2048;
    v36 = v24;
    _os_log_impl(&dword_1D9356000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: -_beginRequiringBacklightObservationForAlert:(%{public}@) alertSystemSoundContext:(%{public}@); requests count incremented from %lu to %lu.", &v27, 0x34u);
  }

  if (self->_backlightObservationRequestsCount == 1)
  {
    v25 = +[TLBacklight sharedBacklight];
    [v25 addObserver:self];
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)_endRequiringBacklightObservationForAlert:(id)a3 alertSystemSoundContext:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  if ([v7 isRequiringBacklightObservation])
  {
    [v7 setRequiringBacklightObservation:0];
    backlightObservationRequestsCount = self->_backlightObservationRequestsCount;
    if (!backlightObservationRequestsCount)
    {
      v9 = TLLogGeneral();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);

      if (v10)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Playback/BackEnds/SystemSound/TLAlertSystemSoundController.m"];
        v12 = TLLogGeneral();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v11 lastPathComponent];
          v14 = [MEMORY[0x1E696AF00] callStackSymbols];
          v34 = 136381443;
          v35 = "[TLAlertSystemSoundController _endRequiringBacklightObservationForAlert:alertSystemSoundContext:]";
          v36 = 2113;
          v37 = v13;
          v38 = 2049;
          v39 = 1261;
          v40 = 2113;
          v41 = v14;
          _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v34, 0x2Au);
        }
      }

      else
      {
        v11 = TLLogGeneral();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(TLToneManager *)v11 _migrateLegacyToneSettings:v15];
        }
      }

      v22 = TLLogGeneral();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(TLAlertSystemSoundController *)v22 _endRequiringBacklightObservationForAlert:v23 alertSystemSoundContext:v24, v25, v26, v27, v28, v29];
      }

      backlightObservationRequestsCount = self->_backlightObservationRequestsCount;
    }

    self->_backlightObservationRequestsCount = backlightObservationRequestsCount - 1;
    v30 = TLLogPlayback();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = self->_backlightObservationRequestsCount;
      v34 = 138544386;
      v35 = self;
      v36 = 2114;
      v37 = v6;
      v38 = 2114;
      v39 = v7;
      v40 = 2048;
      v41 = backlightObservationRequestsCount;
      v42 = 2048;
      v43 = v31;
      _os_log_impl(&dword_1D9356000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: -_endRequiringBacklightObservationForAlert:(%{public}@) alertSystemSoundContext:(%{public}@); requests count incremented from %lu to %lu.", &v34, 0x34u);
    }

    if (!self->_backlightObservationRequestsCount)
    {
      v32 = +[TLBacklight sharedBacklight];
      [v32 removeObserver:self];

      self->_backlightStatus = -1;
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)backlightStatusDidChange:(int64_t)a3
{
  v69 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  backlightStatus = self->_backlightStatus;
  v45 = a3;
  if (backlightStatus == a3 || (self->_backlightStatus = a3, a3 == -1))
  {
    os_unfair_lock_unlock(&self->_lock);
    v32 = 0;
    v31 = 0;
    goto LABEL_41;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v6 = self->_alertSystemSoundContexts;
  v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v55 objects:v68 count:16];
  if (v7)
  {
    v8 = v7;
    v39 = backlightStatus;
    v41 = 0;
    v43 = 0;
    v44 = 0;
    v9 = *v56;
    if (v45 == 1)
    {
      v10 = @"on";
    }

    else
    {
      v10 = @"off";
    }

    v42 = v10;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v56 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v55 + 1) + 8 * i);
        v13 = [(NSMapTable *)self->_alertSystemSoundContexts objectForKey:v12];
        v14 = [v13 toneIdentifierForDeemphasizingAlert];
        v15 = [v13 vibrationIdentifierForDeemphasizingAlert];
        if ([v14 length])
        {
          v16 = [v13 sound];

          if (v16)
          {
            if (v45 == 1 && ([v13 isBeingDeemphasized] & 1) == 0 && (objc_msgSend(v13, "isDeemphasized") & 1) == 0 && (objc_msgSend(v13, "isBeingInterrupted") & 1) == 0)
            {
              v17 = TLLogPlayback();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                v40 = [v12 debugDescription];
                *buf = 138543874;
                v61 = self;
                v62 = 2114;
                v63 = @"on";
                v64 = 2114;
                v65 = v40;
                _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: backlightStatusDidChange:(%{public}@). Backlight was turned on. Deemphasizing: %{public}@.", buf, 0x20u);
              }

              [v13 setBeingDeemphasized:1];
              v18 = v41;
              if (!v41)
              {
                v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              v41 = v18;
              [v18 addObject:v12];
            }
          }

          else if ([v13 isLoadingSound])
          {
            v19 = TLLogPlayback();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = [v12 debugDescription];
              *buf = 138544130;
              v61 = self;
              v62 = 2114;
              v63 = v42;
              v64 = 2114;
              v65 = v20;
              v66 = 2114;
              v67 = v13;
              _os_log_impl(&dword_1D9356000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: backlightStatusDidChange:(%{public}@). Backlight was turned on, but we are still loading the regular sound for %{public}@ with context %{public}@. Deferring application of updated backlight status.", buf, 0x2Au);
            }

            v43 = 1;
          }

          else
          {
            [v13 setLoadingSound:1];
            v21 = [[TLDeemphasizableAlertSystemSoundBeginPlayingContext alloc] initWithAlert:v12 alertSystemSoundContext:v13 toneIdentifierForDeemphasizingAlert:v14 vibrationIdentifierForDeemphasizingAlert:v15];
            v22 = v44;
            if (!v44)
            {
              v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            v44 = v22;
            [v22 addObject:v21];
          }
        }
      }

      v8 = [(NSMapTable *)v6 countByEnumeratingWithState:&v55 objects:v68 count:16];
    }

    while (v8);

    if (v43)
    {
      self->_backlightStatus = v39;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v23 = v41;
      v24 = [(TLAlertStoppingOptions *)v23 countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v52;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v52 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = [(NSMapTable *)self->_alertSystemSoundContexts objectForKey:*(*(&v51 + 1) + 8 * j)];
            [v28 setBeingDeemphasized:0];
          }

          v25 = [(TLAlertStoppingOptions *)v23 countByEnumeratingWithState:&v51 objects:v59 count:16];
        }

        while (v25);
      }

      [(TLAlertStoppingOptions *)v23 removeAllObjects];
      v29 = 0;
      v30 = 0;
      v31 = 1;
      goto LABEL_49;
    }

    v34 = v41;
  }

  else
  {

    v44 = 0;
    v34 = 0;
  }

  if ([v34 count])
  {
    v23 = objc_alloc_init(TLAlertStoppingOptions);
    [(TLAlertStoppingOptions *)v23 setShouldWaitUntilEndOfCurrentRepetition:1];
    v29 = v34;
    v30 = [(TLAlertSystemSoundController *)self _prepareForStoppingAlerts:v34 withOptions:v23 playbackCompletionType:0];
    v31 = 0;
LABEL_49:

    goto LABEL_51;
  }

  v29 = v34;
  v31 = 0;
  v30 = 0;
LABEL_51:

  os_unfair_lock_unlock(&self->_lock);
  v32 = v44;
  if (v30)
  {
    goto LABEL_52;
  }

LABEL_41:
  v33 = v32;
  v30 = 0;
  if ([v32 count])
  {
    v32 = v33;
LABEL_52:
    audioQueue = self->_audioQueue;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __57__TLAlertSystemSoundController_backlightStatusDidChange___block_invoke;
    v46[3] = &unk_1E85797D8;
    v46[4] = self;
    v49 = v45;
    v36 = v32;
    v30 = v30;
    v47 = v30;
    v37 = v36;
    v48 = v37;
    v50 = v31;
    [(TLAudioQueue *)audioQueue performTaskWithBlock:v46];

    v32 = v37;
    goto LABEL_53;
  }

  v32 = v33;
  if (v31)
  {
    goto LABEL_52;
  }

LABEL_53:

  v38 = *MEMORY[0x1E69E9840];
}

uint64_t __57__TLAlertSystemSoundController_backlightStatusDidChange___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) _processDeemphasizableAlertChangesForBackglightStatus:*(a1 + 56) stopTasksDescriptorForDeemphasizedAlerts:*(a1 + 40) deemphasizableAlertBeginPlayingContexts:*(a1 + 48)];
  if (*(a1 + 64) == 1)
  {
    v3 = TLLogPlayback();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = @"off";
      if (*(a1 + 56) == 1)
      {
        v5 = @"on";
      }

      v7 = 138543618;
      v8 = v4;
      v9 = 2114;
      v10 = v5;
      _os_log_impl(&dword_1D9356000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: backlightStatusDidChange:(%{public}@). Triggering delayed application of updated backlight status.", &v7, 0x16u);
    }

    result = [*(a1 + 32) backlightStatusDidChange:*(a1 + 56)];
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_processDeemphasizableAlertChangesForBackglightStatus:(int64_t)a3 stopTasksDescriptorForDeemphasizedAlerts:(id)a4 deemphasizableAlertBeginPlayingContexts:(id)a5
{
  v86 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v7)
  {
    v10 = [v7 playbackCompletionContextsToProcess];
    if ([v10 count])
    {
      [v9 addObjectsFromArray:v10];
      [v7 setPlaybackCompletionContextsToProcess:0];
    }

    [(TLAlertSystemSoundController *)self _processStopTasksDescriptor:v7];
  }

  v11 = [v8 count];
  if (!v11)
  {
    v57 = 0;
    goto LABEL_52;
  }

  v54 = v9;
  v51 = v8;
  v52 = v7;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v8;
  v12 = [obj countByEnumeratingWithState:&v69 objects:v85 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v70;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v70 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v69 + 1) + 8 * i);
        v17 = [v16 alert];
        v18 = [v16 toneIdentifierForDeemphasizingAlert];
        v19 = [v16 vibrationIdentifierForDeemphasizingAlert];
        v20 = objc_opt_class();
        if (a3 == 1)
        {
          v21 = v18;
        }

        else
        {
          v21 = 0;
        }

        v22 = [v20 _soundForAlert:v17 toneIdentifierForDeemphasizingAlert:v21];
        if (a3 == 1)
        {
          v23 = v19;
        }

        else
        {
          v23 = [v17 vibrationIdentifier];
        }

        v24 = v23;
        if ([v22 isValid])
        {
          [v16 setSound:v22];
          [v16 setVibrationIdentifier:v24];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v69 objects:v85 count:16];
    }

    while (v13);
  }

  os_unfair_lock_lock(&self->_lock);
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v55 = obj;
  v25 = [v55 countByEnumeratingWithState:&v65 objects:v84 count:16];
  if (!v25)
  {
    v57 = 0;
    v53 = 0;
    goto LABEL_51;
  }

  v26 = v25;
  v53 = 0;
  v57 = 0;
  obja = *v66;
  v27 = @"off";
  if (a3 == 1)
  {
    v27 = @"on";
  }

  v56 = v27;
  do
  {
    for (j = 0; j != v26; ++j)
    {
      if (*v66 != obja)
      {
        objc_enumerationMutation(v55);
      }

      v29 = *(*(&v65 + 1) + 8 * j);
      v30 = [v29 alert];
      v31 = [v29 alertSystemSoundContext];
      v32 = [v29 sound];
      v33 = [v29 vibrationIdentifier];
      v34 = TLLogPlayback();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v30 debugDescription];
        *buf = 138544386;
        v75 = self;
        v76 = 2114;
        v77 = v56;
        v78 = 2114;
        v79 = v35;
        v80 = 2114;
        v81 = v32;
        v82 = 2114;
        v83 = v33;
        _os_log_impl(&dword_1D9356000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: _processDeemphasizableAlertChanges…:(%{public}@). About to begin playing alert %{public}@ with sound: %{public}@ and vibration identifier: %{public}@.", buf, 0x34u);
      }

      if (!v32)
      {
        [(TLAlertSystemSoundController *)self _removeAlert:v30 alertSystemSoundContext:v31 didFailToPrepareSound:1 appendingPlaybackCompletionContextToArray:v54];
LABEL_45:
        [v31 setLoadingSound:0];
        goto LABEL_46;
      }

      v36 = [(NSMapTable *)self->_alertSystemSoundContexts objectForKey:v30];

      if (!v36)
      {
        v43 = TLLogPlayback();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544130;
          v75 = self;
          v76 = 2114;
          v77 = v56;
          v78 = 2114;
          v79 = v30;
          v80 = 2114;
          v81 = v31;
          _os_log_impl(&dword_1D9356000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@: _processDeemphasizableAlertChanges…:(%{public}@). Alert %{public}@ for %{public}@ has already been removed. Aborting.", buf, 0x2Au);
        }

        goto LABEL_45;
      }

      [v31 setSound:v32];
      [v31 setVibrationIdentifier:v33];
      [v31 setLoadingSound:0];
      [v31 setDeemphasized:a3 == 1];
      v37 = [(TLAlertSystemSoundController *)self _prepareForPreemptingAlertsBeforeBeginningPlaybackOfAlert:v30 withSound:v32 playbackCompletionType:4];
      v38 = v37;
      if (v37)
      {
        v39 = [v37 playbackCompletionContextsToProcess];
        if ([v39 count])
        {
          [v54 addObjectsFromArray:v39];
          [v38 setPlaybackCompletionContextsToProcess:0];
        }

        v40 = v53;
        if (!v53)
        {
          v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        v53 = v40;
        [v40 addObject:v38];
      }

      v41 = [(TLAlertSystemSoundController *)self _playTaskDescriptorForAlert:v30 withSound:v32 vibrationIdentifier:v33 alertSystemSoundContext:v31];
      v42 = v57;
      if (!v57)
      {
        v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      v57 = v42;
      [v42 addObject:v41];

LABEL_46:
    }

    v26 = [v55 countByEnumeratingWithState:&v65 objects:v84 count:16];
  }

  while (v26);
LABEL_51:

  os_unfair_lock_unlock(&self->_lock);
  v8 = v51;
  v7 = v52;
  v11 = v53;
  v9 = v54;
LABEL_52:
  v44 = v11;
  if ([v11 count])
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v45 = v44;
    v46 = [v45 countByEnumeratingWithState:&v61 objects:v73 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v62;
      do
      {
        for (k = 0; k != v47; ++k)
        {
          if (*v62 != v48)
          {
            objc_enumerationMutation(v45);
          }

          [(TLAlertSystemSoundController *)self _processStopTasksDescriptor:*(*(&v61 + 1) + 8 * k)];
        }

        v47 = [v45 countByEnumeratingWithState:&v61 objects:v73 count:16];
      }

      while (v47);
    }
  }

  if ([v9 count])
  {
    [(TLAlertSystemSoundController *)self _processPlaybackCompletionContexts:v9];
  }

  if ([v57 count])
  {
    [(TLAlertSystemSoundController *)self _processPlayTaskDescriptors:v57];
  }

  v50 = *MEMORY[0x1E69E9840];
}

- (void)_beginRequiringBacklightObservationForAlert:(os_log_t)log alertSystemSoundContext:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1D9356000, log, OS_LOG_TYPE_ERROR, "Already requiring backlight observation for %{public}@ with context %{public}@.", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end