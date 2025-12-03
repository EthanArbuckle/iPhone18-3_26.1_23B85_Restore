@interface TLAlertSystemSoundController
+ (id)_descriptionForAlertComponentsSuppressionFlags:(unsigned int)flags;
+ (id)_soundForAlert:(id)alert toneIdentifierForDeemphasizingAlert:(id)deemphasizingAlert;
+ (id)_toneIdentifierForDeemphasizingAlert:(id)alert;
+ (id)_vibrationIdentifierForDeemphasizingAlert:(id)alert correspondingToneIdentifierForDeemphasizingAlert:(id)deemphasizingAlert;
+ (id)_vibrationPatternForAlert:(id)alert withSound:(id)sound vibrationIdentifier:(id)identifier;
+ (unsigned)_componentSuppressionFlagsForAlert:(id)alert;
+ (unsigned)_soundBehaviorForAlert:(id)alert withSound:(id)sound isDeemphasized:(BOOL)deemphasized;
- ($61DF9F24A7329A1BB61181F7D05C320D)_considerDeferringPlayingAlertForBacklightStatusResolution:(id)resolution alertSystemSoundContext:(id)context;
- (BOOL)stopPlayingAlerts:(id)alerts withOptions:(id)options playbackCompletionType:(int64_t)type;
- (TLAlertSystemSoundController)init;
- (id)_playTaskDescriptorForAlert:(id)alert withSound:(id)sound vibrationIdentifier:(id)identifier alertSystemSoundContext:(id)context;
- (id)_prepareForPreemptingAlertsBeforeBeginningPlaybackOfAlert:(id)alert withSound:(id)sound playbackCompletionType:(int64_t)type;
- (id)_prepareForStoppingAlerts:(id)alerts withOptions:(id)options playbackCompletionType:(int64_t)type;
- (void)_beginRequiringBacklightObservationForAlert:(id)alert alertSystemSoundContext:(id)context;
- (void)_didCompletePlaybackForAlert:(id)alert;
- (void)_endRequiringBacklightObservationForAlert:(id)alert alertSystemSoundContext:(id)context;
- (void)_playAlert:(id)alert alertSystemSoundContext:(id)context toneIdentifierForDeemphasizingAlert:(id)deemphasizingAlert vibrationIdentifierForDeemphasizingAlert:(id)forDeemphasizingAlert backlightStatusResolutionDeferralContext:(id)deferralContext;
- (void)_preheatForAlert:(id)alert backlightStatus:(int64_t)status completionHandler:(id)handler;
- (void)_processDeemphasizableAlertChangesForBackglightStatus:(int64_t)status stopTasksDescriptorForDeemphasizedAlerts:(id)alerts deemphasizableAlertBeginPlayingContexts:(id)contexts;
- (void)_processPlayTaskDescriptors:(id)descriptors;
- (void)_processPlaybackCompletionContexts:(id)contexts;
- (void)_processStopTasksDescriptor:(id)descriptor;
- (void)_removeAlert:(id)alert alertSystemSoundContext:(id)context didFailToPrepareSound:(BOOL)sound appendingPlaybackCompletionContextToArray:(id)array;
- (void)backlightStatusDidChange:(int64_t)change;
- (void)dealloc;
- (void)playAlert:(id)alert withCompletionHandler:(id)handler;
- (void)preheatForAlert:(id)alert completionHandler:(id)handler;
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
  selfCopy = self;
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

- (void)playAlert:(id)alert withCompletionHandler:(id)handler
{
  alertCopy = alert;
  handlerCopy = handler;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v8 = objc_alloc_init(TLAlertPlaybackCompletionContext);
  [(TLAlertPlaybackCompletionContext *)v8 setCompletionHandler:handlerCopy];

  [(TLAlertPlaybackCompletionContext *)v8 setPlaybackCompletionType:0];
  os_unfair_lock_lock(&self->_lock);
  playbackObserver = [alertCopy playbackObserver];
  v10 = [objc_opt_class() _toneIdentifierForDeemphasizingAlert:alertCopy];
  v11 = [objc_opt_class() _vibrationIdentifierForDeemphasizingAlert:alertCopy correspondingToneIdentifierForDeemphasizingAlert:v10];
  v12 = objc_alloc_init(TLAlertSystemSoundContext);
  [(TLAlertSystemSoundContext *)v12 setToneIdentifierForDeemphasizingAlert:v10];
  [(TLAlertSystemSoundContext *)v12 setVibrationIdentifierForDeemphasizingAlert:v11];
  [(TLAlertSystemSoundContext *)v12 setPlaybackCompletionContext:v8];
  [(TLAlertSystemSoundContext *)v12 setPlaybackObserver:playbackObserver];
  v13 = [(TLAlertSystemSoundController *)self _considerDeferringPlayingAlertForBacklightStatusResolution:alertCopy alertSystemSoundContext:v12];
  v15 = v14;
  if ((v14 & 0x100) != 0)
  {
    [(NSMapTable *)self->_alertSystemSoundContexts setObject:v12 forKey:alertCopy];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v16 = v13;
    [(TLAlertSystemSoundContext *)v12 setLoadingSound:1];
    [(NSMapTable *)self->_alertSystemSoundContexts setObject:v12 forKey:alertCopy];

    os_unfair_lock_unlock(&self->_lock);
    audioQueue = self->_audioQueue;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __64__TLAlertSystemSoundController_playAlert_withCompletionHandler___block_invoke;
    v18[3] = &unk_1E8579710;
    v18[4] = self;
    v19 = alertCopy;
    v20 = v12;
    v21 = v10;
    v22 = v11;
    v23 = v16;
    v24 = v15;
    [(TLAudioQueue *)audioQueue performTaskWithBlock:v18];
  }
}

- (void)_playAlert:(id)alert alertSystemSoundContext:(id)context toneIdentifierForDeemphasizingAlert:(id)deemphasizingAlert vibrationIdentifierForDeemphasizingAlert:(id)forDeemphasizingAlert backlightStatusResolutionDeferralContext:(id)deferralContext
{
  var1 = deferralContext.var1;
  var0 = deferralContext.var0;
  v39 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  contextCopy = context;
  forDeemphasizingAlertCopy = forDeemphasizingAlert;
  deemphasizingAlertCopy = deemphasizingAlert;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v17 = objc_opt_class();
  v18 = var1 && var0 == 1;
  if (var1 && var0 == 1)
  {
    v19 = deemphasizingAlertCopy;
  }

  else
  {
    v19 = 0;
  }

  v20 = [v17 _soundForAlert:alertCopy toneIdentifierForDeemphasizingAlert:v19];

  if (v18 == 1)
  {
    vibrationIdentifier = forDeemphasizingAlertCopy;
  }

  else
  {
    vibrationIdentifier = [alertCopy vibrationIdentifier];
  }

  v22 = vibrationIdentifier;
  isValid = [v20 isValid];
  v24 = TLLogPlayback();
  v25 = v24;
  if (!isValid)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy3 = self;
      v35 = 2114;
      v36 = alertCopy;
      v37 = 2114;
      v38 = v20;
      _os_log_error_impl(&dword_1D9356000, v25, OS_LOG_TYPE_ERROR, "%{public}@: _playAlert:(%{public}@) […]. Failed to begin playback with invalid sound: %{public}@.", buf, 0x20u);
    }

    os_unfair_lock_lock(&self->_lock);
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(TLAlertSystemSoundController *)self _removeAlert:alertCopy alertSystemSoundContext:contextCopy didFailToPrepareSound:1 appendingPlaybackCompletionContextToArray:v27];
    [contextCopy setLoadingSound:0];
    v29 = 0;
    v28 = 0;
    goto LABEL_20;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy3 = self;
    v35 = 2114;
    v36 = alertCopy;
    v37 = 2114;
    v38 = v20;
    _os_log_impl(&dword_1D9356000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: _playAlert:(%{public}@) […]. Sound: %{public}@.", buf, 0x20u);
  }

  os_unfair_lock_lock(&self->_lock);
  if (([contextCopy isBeingInterrupted] & 1) == 0)
  {
    [contextCopy setSound:v20];
    [contextCopy setVibrationIdentifier:v22];
    [contextCopy setDeemphasized:v18 & 1];
    [contextCopy setLoadingSound:0];
    if (var1)
    {
      [(TLAlertSystemSoundController *)self _beginRequiringBacklightObservationForAlert:alertCopy alertSystemSoundContext:contextCopy];
    }

    v29 = [(TLAlertSystemSoundController *)self _prepareForPreemptingAlertsBeforeBeginningPlaybackOfAlert:alertCopy withSound:v20 playbackCompletionType:4];
    v28 = [(TLAlertSystemSoundController *)self _playTaskDescriptorForAlert:alertCopy withSound:v20 vibrationIdentifier:v22 alertSystemSoundContext:contextCopy];
    v27 = 0;
LABEL_20:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_21;
  }

  [contextCopy setLoadingSound:0];
  os_unfair_lock_unlock(&self->_lock);
  v26 = TLLogPlayback();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy3 = self;
    v35 = 2114;
    v36 = alertCopy;
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

- ($61DF9F24A7329A1BB61181F7D05C320D)_considerDeferringPlayingAlertForBacklightStatusResolution:(id)resolution alertSystemSoundContext:(id)context
{
  v21 = *MEMORY[0x1E69E9840];
  resolutionCopy = resolution;
  contextCopy = context;
  os_unfair_lock_assert_owner(&self->_lock);
  backlightStatus = self->_backlightStatus;
  toneIdentifierForDeemphasizingAlert = [contextCopy toneIdentifierForDeemphasizingAlert];
  v10 = [toneIdentifierForDeemphasizingAlert length];

  v11 = 0;
  if (v10 && backlightStatus == -1)
  {
    v12 = TLLogPlayback();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543618;
      selfCopy = self;
      v19 = 2114;
      v20 = resolutionCopy;
      _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: _considerDeferringPlayingAlertForBacklightStatusResolution:(%{public}@) […]. Deemphasizing this alert is allowed but the backlight status is unknown. Deferring until the backlight status is known.", &v17, 0x16u);
    }

    [(TLAlertSystemSoundController *)self _beginRequiringBacklightObservationForAlert:resolutionCopy alertSystemSoundContext:contextCopy];
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

- (id)_playTaskDescriptorForAlert:(id)alert withSound:(id)sound vibrationIdentifier:(id)identifier alertSystemSoundContext:(id)context
{
  contextCopy = context;
  identifierCopy = identifier;
  soundCopy = sound;
  alertCopy = alert;
  os_unfair_lock_assert_owner(&self->_lock);
  v14 = contextCopy;
  if ([contextCopy hasPlaybackStarted])
  {
    if ([contextCopy isDeemphasized])
    {
      if ([contextCopy hasDeemphasizedPlaybackStarted])
      {
        v14 = 0;
      }

      else
      {
        v14 = contextCopy;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  v15 = -[TLAlertSystemSoundPlayTaskDescriptor initWithAlert:sound:vibrationIdentifier:isDeemphasized:alertSystemSoundContext:]([TLAlertSystemSoundPlayTaskDescriptor alloc], "initWithAlert:sound:vibrationIdentifier:isDeemphasized:alertSystemSoundContext:", alertCopy, soundCopy, identifierCopy, [contextCopy isDeemphasized], v14);

  return v15;
}

- (void)_processPlayTaskDescriptors:(id)descriptors
{
  v76 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  os_unfair_lock_assert_not_owner(&self->_lock);
  selfCopy = self;
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = descriptorsCopy;
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
        alert = [v9 alert];
        sound = [v9 sound];
        vibrationIdentifier = [v9 vibrationIdentifier];
        isDeemphasized = [v9 isDeemphasized];
        [sound beginRequiringUnderlyingSoundLoaded];
        alertSystemSoundContext = [v9 alertSystemSoundContext];
        if (alertSystemSoundContext)
        {
          v15 = v47;
          if (!v47)
          {
            v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v47 = v15;
          [v15 addObject:v9];
        }

        soundID = [sound soundID];
        v17 = [objc_opt_class() _optionsForSystemSoundAlert:alert withSound:sound vibrationIdentifier:vibrationIdentifier isDeemphasized:isDeemphasized];
        v18 = TLLogPlayback();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v42;
          selfCopy2 = self;
          v71 = 2114;
          v72 = alert;
          v73 = 2048;
          v74 = soundID;
          _os_log_impl(&dword_1D9356000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: _processPlayTaskDescriptors:(%{public}@). Calling AudioServicesPlaySystemSoundWithOptions for soundID: %lu.", buf, 0x20u);
        }

        v56 = MEMORY[0x1E69E9820];
        v57 = 3221225472;
        v58 = __60__TLAlertSystemSoundController__processPlayTaskDescriptors___block_invoke;
        v59 = &unk_1E8579738;
        selfCopy3 = self;
        v61 = alert;
        v62 = soundID;
        v19 = alert;
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
          alertSystemSoundContext2 = [v27 alertSystemSoundContext];
          if (([alertSystemSoundContext2 hasPlaybackStarted] & 1) == 0)
          {
            [alertSystemSoundContext2 setHasPlaybackStarted:1];
            playbackObserver = [alertSystemSoundContext2 playbackObserver];
            if (playbackObserver)
            {
              if (!v24)
              {
                v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              [v24 addObject:v27];
            }
          }

          if ([alertSystemSoundContext2 isDeemphasized])
          {
            if (([alertSystemSoundContext2 hasDeemphasizedPlaybackStarted] & 1) == 0)
            {
              [alertSystemSoundContext2 setHasDeemphasizedPlaybackStarted:1];
              if ([alertSystemSoundContext2 shouldBeInterruptedAfterDeemphasizedPlaybackStarts])
              {
                v30 = v24;
                alert2 = [v27 alert];
                v32 = TLLogPlayback();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  selfCopy2 = selfCopy;
                  v71 = 2114;
                  v72 = alert2;
                  _os_log_impl(&dword_1D9356000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: _processPlayTaskDescriptors:. Preparing for deferred interruption of %{public}@.", buf, 0x16u);
                }

                playbackCompletionContext = [alertSystemSoundContext2 playbackCompletionContext];
                playbackCompletionType = [playbackCompletionContext playbackCompletionType];

                stoppingOptionsForDeferredInterruption = [alertSystemSoundContext2 stoppingOptionsForDeferredInterruption];
                v67 = alert2;
                v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
                v37 = [(TLAlertSystemSoundController *)selfCopy _prepareForStoppingAlerts:v36 withOptions:stoppingOptionsForDeferredInterruption playbackCompletionType:playbackCompletionType];

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

                [alertSystemSoundContext2 setStoppingOptionsForDeferredInterruption:0];
                [alertSystemSoundContext2 setShouldBeInterruptedAfterDeemphasizedPlaybackStarts:0];
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

    os_unfair_lock_unlock(&selfCopy->_lock);
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
      audioQueue = selfCopy->_audioQueue;
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __60__TLAlertSystemSoundController__processPlayTaskDescriptors___block_invoke_2;
      v48[3] = &unk_1E8578900;
      v48[4] = selfCopy;
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

- (BOOL)stopPlayingAlerts:(id)alerts withOptions:(id)options playbackCompletionType:(int64_t)type
{
  optionsCopy = options;
  alertsCopy = alerts;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v10 = [(TLAlertSystemSoundController *)self _prepareForStoppingAlerts:alertsCopy withOptions:optionsCopy playbackCompletionType:type];

  os_unfair_lock_unlock(&self->_lock);
  interruptedAlertsToSound = [v10 interruptedAlertsToSound];
  v12 = [interruptedAlertsToSound count];

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

- (id)_prepareForStoppingAlerts:(id)alerts withOptions:(id)options playbackCompletionType:(int64_t)type
{
  v51 = *MEMORY[0x1E69E9840];
  alertsCopy = alerts;
  optionsCopy = options;
  os_unfair_lock_assert_owner(&self->_lock);
  v9 = [alertsCopy count];
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

    v12 = NSStringFromTLAlertPlaybackCompletionType(type);
    *buf = 138544386;
    selfCopy5 = self;
    v43 = 2048;
    v44 = v9;
    v45 = 2082;
    v46 = v11;
    v47 = 2114;
    v48 = optionsCopy;
    v49 = 2112;
    v50 = v12;
    _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: _prepareForStoppingAlerts:([%lu alert%{public}s]) withOptions:(%{public}@) playbackCompletionType:(%@)", buf, 0x34u);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = alertsCopy;
  v13 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v33 = 0;
    v34 = 0;
    v15 = *v37;
    v16 = optionsCopy;
    while (1)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v36 + 1) + 8 * i);
        optionsCopy = [(NSMapTable *)self->_alertSystemSoundContexts objectForKey:v18, optionsCopy];
        v20 = optionsCopy;
        if (optionsCopy)
        {
          if ([optionsCopy isDeemphasized] && !objc_msgSend(v20, "hasDeemphasizedPlaybackStarted"))
          {
            playbackCompletionContext = [v20 playbackCompletionContext];
            [playbackCompletionContext setPlaybackCompletionType:type];
            [v20 setStoppingOptionsForDeferredInterruption:v16];
            [v20 setShouldBeInterruptedAfterDeemphasizedPlaybackStarts:1];
            sound = TLLogPlayback();
            if (os_log_type_enabled(sound, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              selfCopy5 = self;
              v43 = 2114;
              v44 = v18;
              v45 = 2114;
              v46 = v20;
              _os_log_impl(&dword_1D9356000, sound, OS_LOG_TYPE_DEFAULT, "%{public}@: _prepareForStoppingAlerts…: Deferring stop request for %{public}@ with system sound context: %{public}@. Will process stop request after deemphasized playback starts.", buf, 0x20u);
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
            playbackCompletionContext = [v20 playbackCompletionContext];
            [playbackCompletionContext setPlaybackCompletionType:type];
            [v20 setBeingInterrupted:1];
            v22 = TLLogPlayback();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              selfCopy5 = self;
              v43 = 2114;
              v44 = v18;
              v45 = 2114;
              v46 = v20;
              _os_log_impl(&dword_1D9356000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: _prepareForStoppingAlerts…: Beginning interruption of %{public}@ with system sound context: %{public}@.", buf, 0x20u);
            }

            sound = [v20 sound];
            if (sound)
            {
              v24 = v34;
              if (!v34)
              {
                v24 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:1];
              }

              v34 = v24;
              [v24 setObject:sound forKey:v18];
            }

            else
            {
              typeCopy = type;
              v26 = TLLogPlayback();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543874;
                selfCopy5 = self;
                v43 = 2114;
                v44 = v18;
                v45 = 2114;
                v46 = playbackCompletionContext;
                _os_log_impl(&dword_1D9356000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: _prepareForStoppingAlerts…: %{public}@ didn't even get a chance to begin playing. Merely processing playback completion context: %{public}@.", buf, 0x20u);
              }

              type = typeCopy;
              if (playbackCompletionContext)
              {
                v27 = v33;
                if (!v33)
                {
                  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
                }

                v33 = v27;
                [(TLAlertSystemSoundController *)self _removeAlert:v18 alertSystemSoundContext:v20 didFailToPrepareSound:0 appendingPlaybackCompletionContextToArray:v27];
              }

              v16 = optionsCopy;
            }

LABEL_34:

            goto LABEL_35;
          }
        }

        playbackCompletionContext = TLLogPlayback();
        if (os_log_type_enabled(playbackCompletionContext, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          selfCopy5 = self;
          v43 = 2114;
          v44 = v18;
          v45 = 2114;
          v46 = v20;
          _os_log_impl(&dword_1D9356000, playbackCompletionContext, OS_LOG_TYPE_DEFAULT, "%{public}@: _prepareForStoppingAlerts…: Ignoring stop request for %{public}@ with system sound context: %{public}@.", buf, 0x20u);
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
  v16 = optionsCopy;
LABEL_39:

  if ([v34 count] || objc_msgSend(v33, "count"))
  {
    v28 = objc_alloc_init(TLAlertSystemSoundStopTasksDescriptor);
    [(TLAlertSystemSoundStopTasksDescriptor *)v28 setInterruptedAlertsToSound:v34];
    v29 = v33;
    [(TLAlertSystemSoundStopTasksDescriptor *)v28 setPlaybackCompletionContextsToProcess:v33];
    [(TLAlertSystemSoundStopTasksDescriptor *)v28 setOptions:v16];
    [(TLAlertSystemSoundStopTasksDescriptor *)v28 setPlaybackCompletionType:type];
  }

  else
  {
    v28 = 0;
    v29 = v33;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v28;
}

- (void)_processStopTasksDescriptor:(id)descriptor
{
  v41 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  selfCopy = self;
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  options = [descriptorCopy options];
  playbackCompletionType = [descriptorCopy playbackCompletionType];
  v22 = descriptorCopy;
  interruptedAlertsToSound = [descriptorCopy interruptedAlertsToSound];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [interruptedAlertsToSound countByEnumeratingWithState:&v26 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    v23 = interruptedAlertsToSound;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(interruptedAlertsToSound);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [interruptedAlertsToSound objectForKey:v11];
        soundID = [v12 soundID];
        if (options)
        {
          v14 = [options shouldWaitUntilEndOfCurrentRepetition] ^ 1;
        }

        else
        {
          v14 = 1;
        }

        v15 = TLLogPlayback();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          NSStringFromTLAlertPlaybackCompletionType(playbackCompletionType);
          v16 = options;
          v17 = v8;
          v19 = v18 = v9;
          *buf = 138544386;
          v31 = selfCopy;
          v32 = 2114;
          v33 = v19;
          v34 = 2048;
          v35 = soundID;
          v36 = 1024;
          v37 = v14;
          v38 = 2114;
          v39 = v11;
          _os_log_impl(&dword_1D9356000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: _processStopTasksDescriptor:. playbackCompletionType: %{public}@. Calling AudioServicesStopSystemSound for soundID: %lu with inStopNow = %{BOOL}d for alert %{public}@.", buf, 0x30u);

          v9 = v18;
          v8 = v17;
          options = v16;
          interruptedAlertsToSound = v23;
        }

        AudioServicesStopSystemSound();
      }

      v8 = [interruptedAlertsToSound countByEnumeratingWithState:&v26 objects:v40 count:16];
    }

    while (v8);
  }

  playbackCompletionContextsToProcess = [v22 playbackCompletionContextsToProcess];
  [(TLAlertSystemSoundController *)selfCopy _processPlaybackCompletionContexts:playbackCompletionContextsToProcess];

  v21 = *MEMORY[0x1E69E9840];
}

- (id)_prepareForPreemptingAlertsBeforeBeginningPlaybackOfAlert:(id)alert withSound:(id)sound playbackCompletionType:(int64_t)type
{
  v40 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  soundCopy = sound;
  os_unfair_lock_assert_owner(&self->_lock);
  configuration = [alertCopy configuration];
  shouldRepeat = [configuration shouldRepeat];
  v28 = configuration;
  isForPreview = [configuration isForPreview];
  v29 = soundCopy;
  soundID = [soundCopy soundID];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  selfCopy = self;
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
  v32 = shouldRepeat ^ 1;
  v16 = isForPreview ^ 1;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v36 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v35 + 1) + 8 * i);
      if (v18 != alertCopy)
      {
        v19 = [(NSMapTable *)selfCopy->_alertSystemSoundContexts objectForKey:*(*(&v35 + 1) + 8 * i)];
        sound = [v19 sound];
        shouldRepeat2 = [sound soundID] == soundID;

        if (((shouldRepeat2 | v32) & 1) == 0)
        {
          configuration2 = [v18 configuration];
          shouldRepeat2 = [configuration2 shouldRepeat];
        }

        if ((shouldRepeat2 | v16))
        {
          if (!shouldRepeat2)
          {
            goto LABEL_16;
          }
        }

        else
        {
          configuration3 = [v18 configuration];
          isForPreview2 = [configuration3 isForPreview];

          if ((isForPreview2 & 1) == 0)
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

  v25 = [(TLAlertSystemSoundController *)selfCopy _prepareForStoppingAlerts:v14 withOptions:0 playbackCompletionType:type];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (void)preheatForAlert:(id)alert completionHandler:(id)handler
{
  alertCopy = alert;
  handlerCopy = handler;
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
  v13 = alertCopy;
  v14 = handlerCopy;
  v15 = backlightStatus;
  v10 = handlerCopy;
  v11 = alertCopy;
  [(TLAudioQueue *)audioQueue performTaskWithBlock:v12];
}

- (void)_preheatForAlert:(id)alert backlightStatus:(int64_t)status completionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  handlerCopy = handler;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v10 = [objc_opt_class() _toneIdentifierForDeemphasizingAlert:alertCopy];
  v11 = [v10 length];
  v12 = objc_opt_class();
  if (v11)
  {
    v13 = status == 1;
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

  v15 = [v12 _soundForAlert:alertCopy toneIdentifierForDeemphasizingAlert:v14];
  soundID = [v15 soundID];
  isValid = [v15 isValid];
  v18 = TLLogPlayback();
  v19 = v18;
  if (isValid)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      selfCopy2 = self;
      v29 = 2114;
      v30 = alertCopy;
      v31 = 2114;
      v32 = v15;
      v33 = 2048;
      v34 = soundID;
      _os_log_impl(&dword_1D9356000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: _preheatForAlert:(%{public}@). Pre-heating succeeded with sound: %{public}@ and soundID: %lu.", buf, 0x2Au);
    }

    v20 = 0;
    if (!handlerCopy)
    {
      goto LABEL_16;
    }

LABEL_15:
    v21 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__TLAlertSystemSoundController__preheatForAlert_backlightStatus_completionHandler___block_invoke;
    block[3] = &unk_1E8579788;
    v25 = handlerCopy;
    v26 = v20 == 0;
    v24 = v20;
    dispatch_async(v21, block);

    goto LABEL_16;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138544130;
    selfCopy2 = self;
    v29 = 2114;
    v30 = alertCopy;
    v31 = 2114;
    v32 = v15;
    v33 = 2048;
    v34 = soundID;
    _os_log_error_impl(&dword_1D9356000, v19, OS_LOG_TYPE_ERROR, "%{public}@: _preheatForAlert:(%{public}@). Pre-heating failed with sound: %{public}@ and soundID: %lu.", buf, 0x2Au);
  }

  v20 = [MEMORY[0x1E696ABC0] tl_errorWithDomain:@"TLAlertErrorDomain" description:{@"Failed to pre-heat alert %@.", alertCopy}];
  if (handlerCopy)
  {
    goto LABEL_15;
  }

LABEL_16:

  v22 = *MEMORY[0x1E69E9840];
}

+ (id)_soundForAlert:(id)alert toneIdentifierForDeemphasizingAlert:(id)deemphasizingAlert
{
  alertCopy = alert;
  deemphasizingAlertCopy = deemphasizingAlert;
  configuration = [alertCopy configuration];
  externalToneFileURL = [configuration externalToneFileURL];
  if (externalToneFileURL)
  {
    v9 = [TLSystemSound alloc];
    v10 = [(TLSystemSound *)v9 initWithSoundFileURL:externalToneFileURL soundID:kSystemSoundID_InvalidTone requiresLongFormPlayback:0];
    goto LABEL_16;
  }

  toneIdentifier = [alertCopy toneIdentifier];
  if ([deemphasizingAlertCopy length])
  {
    v12 = deemphasizingAlertCopy;

    toneIdentifier = v12;
  }

  isForPreview = [configuration isForPreview];
  v14 = +[TLToneManager sharedToneManager];
  v15 = v14;
  if (isForPreview)
  {
    [v14 _previewSoundForToneIdentifier:toneIdentifier];
  }

  else
  {
    [v14 _soundForToneIdentifier:toneIdentifier];
  }
  v10 = ;

  if (!v10 || (v16 = [(TLSystemSound *)v10 soundID], v16 == kSystemSoundID_NoneTone))
  {
    v17 = +[TLCapabilitiesManager sharedCapabilitiesManager];
    hasVibratorCapability = [v17 hasVibratorCapability];

    if (hasVibratorCapability)
    {
      externalVibrationPattern = [configuration externalVibrationPattern];
      if (externalVibrationPattern || ([configuration externalVibrationPatternFileURL], (externalVibrationPattern = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        vibrationIdentifier = [alertCopy vibrationIdentifier];
        v23 = [vibrationIdentifier isEqualToString:@"<none>"];

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

+ (id)_toneIdentifierForDeemphasizingAlert:(id)alert
{
  alertCopy = alert;
  configuration = [alertCopy configuration];
  if ([configuration isForPreview])
  {
    v5 = 0;
  }

  else
  {
    v6 = +[TLToneManager sharedToneManager];
    type = [alertCopy type];
    topic = [configuration topic];
    toneIdentifier = [alertCopy toneIdentifier];
    v5 = [v6 _toneIdentifierForDeemphasizingAlertWithType:type topic:topic regularToneIdentifier:toneIdentifier];
  }

  return v5;
}

+ (id)_vibrationIdentifierForDeemphasizingAlert:(id)alert correspondingToneIdentifierForDeemphasizingAlert:(id)deemphasizingAlert
{
  if (deemphasizingAlert)
  {
    deemphasizingAlertCopy = deemphasizingAlert;
    alertCopy = alert;
    configuration = [alertCopy configuration];
    v8 = +[TLVibrationManager sharedVibrationManager];
    vibrationIdentifier = [alertCopy vibrationIdentifier];
    type = [alertCopy type];

    topic = [configuration topic];
    v12 = [v8 _sanitizeVibrationIdentifier:vibrationIdentifier forAlertType:type topic:topic targetDevice:objc_msgSend(configuration correspondingToneIdentifier:"targetDevice") didFallbackToCurrentVibrationIdentifier:{deemphasizingAlertCopy, 0}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (unsigned)_soundBehaviorForAlert:(id)alert withSound:(id)sound isDeemphasized:(BOOL)deemphasized
{
  soundCopy = sound;
  configuration = [alert configuration];
  type = [configuration type];
  if ([configuration isForPreview])
  {
    if ((type - 4) < 9)
    {
      v9 = dword_1D93A5B28[type - 4];
      goto LABEL_22;
    }

    v10 = 1307;
    goto LABEL_11;
  }

  v9 = 0;
  v10 = 1;
  if (type <= 7)
  {
    if (type <= 4)
    {
      if (type == 1)
      {
        goto LABEL_22;
      }

      if (type != 2)
      {
        if (type == 3)
        {
          v9 = 1003;
          goto LABEL_22;
        }

        goto LABEL_11;
      }

      topic = [configuration topic];
      v13 = [topic isEqualToString:@"TLAlertTopicTextMessageInConversation"];

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

    if (type == 5)
    {
      v9 = 1000;
      goto LABEL_22;
    }

LABEL_21:
    v9 = 1001;
    goto LABEL_22;
  }

  if (type <= 10)
  {
    if (type != 8 && type != 9)
    {
      v9 = 1005;
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (type == 11)
  {
    v9 = 1017;
    goto LABEL_22;
  }

  if (type == 12)
  {
    v9 = 1007;
    goto LABEL_22;
  }

  if (type != 28)
  {
LABEL_11:
    if (type == 13)
    {
      if ([soundCopy requiresLongFormPlayback])
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

+ (id)_vibrationPatternForAlert:(id)alert withSound:(id)sound vibrationIdentifier:(id)identifier
{
  alertCopy = alert;
  identifierCopy = identifier;
  v8 = +[TLCapabilitiesManager sharedCapabilitiesManager];
  hasVibratorCapability = [v8 hasVibratorCapability];

  if (hasVibratorCapability)
  {
    configuration = [alertCopy configuration];
    externalVibrationPattern = [configuration externalVibrationPattern];
    if (!externalVibrationPattern)
    {
      externalVibrationPatternFileURL = [configuration externalVibrationPatternFileURL];
      if (externalVibrationPatternFileURL)
      {
        externalVibrationPattern = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:externalVibrationPatternFileURL];
      }

      else
      {
        externalVibrationPattern = 0;
      }
    }

    v13 = [TLAlertPlaybackPolicy shouldRepeatVibrationForAlert:alertCopy withPlaybackBackend:1];
    if (v13 && externalVibrationPattern)
    {
      v14 = [[TLVibrationPattern alloc] initWithPropertyListRepresentation:externalVibrationPattern];
      _artificiallyRepeatingPropertyListRepresentation = [(TLVibrationPattern *)v14 _artificiallyRepeatingPropertyListRepresentation];

      externalVibrationPattern = _artificiallyRepeatingPropertyListRepresentation;
    }

    if (!externalVibrationPattern)
    {
      if ([identifierCopy isEqualToString:@"Built-In-System-Sound-ID-Vibration"])
      {
        externalVibrationPattern = 0;
      }

      else
      {
        v16 = +[TLVibrationManager sharedVibrationManager];
        externalVibrationPattern = [v16 patternForVibrationWithIdentifier:identifierCopy repeating:v13];
      }
    }
  }

  else
  {
    externalVibrationPattern = 0;
  }

  return externalVibrationPattern;
}

+ (unsigned)_componentSuppressionFlagsForAlert:(id)alert
{
  alertCopy = alert;
  toneIdentifier = [alertCopy toneIdentifier];
  v5 = [toneIdentifier isEqualToString:@"<none>"];

  vibrationIdentifier = [alertCopy vibrationIdentifier];

  LODWORD(alertCopy) = [vibrationIdentifier isEqualToString:@"<none>"];
  if (alertCopy)
  {
    return v5 | 2;
  }

  else
  {
    return v5;
  }
}

+ (id)_descriptionForAlertComponentsSuppressionFlags:(unsigned int)flags
{
  if (flags)
  {
    v5 = @"kAudioServicesFlag_SuppressAudio";
    if ((flags & 2) != 0)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ | %@", @"kAudioServicesFlag_SuppressAudio", @"kAudioServicesFlag_SuppressVibe", v3];
    }
  }

  else if ((flags & 2) != 0)
  {
    v5 = @"kAudioServicesFlag_SuppressVibe";
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_didCompletePlaybackForAlert:(id)alert
{
  v54 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSMapTable *)self->_alertSystemSoundContexts objectForKey:alertCopy];
  sound = [v6 sound];
  [v6 setSound:0];
  [v6 setVibrationIdentifier:0];
  v8 = TLLogPlayback();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [alertCopy debugDescription];
    *buf = 138544130;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v9;
    *&buf[22] = 2114;
    v52 = sound;
    LOWORD(v53) = 2114;
    *(&v53 + 2) = v6;
    _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: _didCompletePlaybackForAlert:(%{public}@). Removed sound %{public}@ from %{public}@.", buf, 0x2Au);
  }

  playbackCompletionContext = [v6 playbackCompletionContext];
  if (playbackCompletionContext)
  {
    toneIdentifierForDeemphasizingAlert = [v6 toneIdentifierForDeemphasizingAlert];
    vibrationIdentifierForDeemphasizingAlert = [v6 vibrationIdentifierForDeemphasizingAlert];
    if ([toneIdentifierForDeemphasizingAlert length] && objc_msgSend(v6, "isBeingDeemphasized"))
    {
      [v6 setLoadingSound:1];
      v13 = 1;
      goto LABEL_10;
    }

    [(TLAlertSystemSoundController *)self _removeAlert:alertCopy alertSystemSoundContext:v6 didFailToPrepareSound:0 appendingPlaybackCompletionContextToArray:v5];
  }

  else
  {
    vibrationIdentifierForDeemphasizingAlert = 0;
    toneIdentifierForDeemphasizingAlert = 0;
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
  v15 = alertCopy;
  v31 = v15;
  v32 = toneIdentifierForDeemphasizingAlert;
  v35 = &v43;
  v36 = &v37;
  v33 = vibrationIdentifierForDeemphasizingAlert;
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
      selfCopy = self;
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
  if (sound | v18)
  {
    v21 = self->_audioQueue;
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __61__TLAlertSystemSoundController__didCompletePlaybackForAlert___block_invoke_42;
    v26 = &unk_1E8579038;
    v27 = sound;
    v28 = v18;
    selfCopy2 = self;
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

- (void)_processPlaybackCompletionContexts:(id)contexts
{
  contextsCopy = contexts;
  os_unfair_lock_assert_not_owner(&self->_lock);
  if ([contextsCopy count])
  {
    v5 = [(TLAlertSystemSoundController *)self description];
    v6 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67__TLAlertSystemSoundController__processPlaybackCompletionContexts___block_invoke;
    v8[3] = &unk_1E8578900;
    v9 = contextsCopy;
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

- (void)_removeAlert:(id)alert alertSystemSoundContext:(id)context didFailToPrepareSound:(BOOL)sound appendingPlaybackCompletionContextToArray:(id)array
{
  soundCopy = sound;
  v26 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  contextCopy = context;
  arrayCopy = array;
  os_unfair_lock_assert_owner(&self->_lock);
  playbackCompletionContext = [contextCopy playbackCompletionContext];
  v14 = playbackCompletionContext;
  if (soundCopy)
  {
    [playbackCompletionContext setPlaybackCompletionType:5];
    v15 = [MEMORY[0x1E696ABC0] tl_errorWithDomain:@"TLAlertErrorDomain" description:@"Failed to prepare tone sound ID for playback."];
    [v14 setError:v15];
  }

  v16 = TLLogPlayback();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138544130;
    selfCopy = self;
    v20 = 2114;
    v21 = alertCopy;
    v22 = 2114;
    v23 = contextCopy;
    v24 = 1024;
    v25 = soundCopy;
    _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: _removeAlert:(%{public}@) alertSystemSoundContext:(%{public}@) didFailToPrepareSound:(%{BOOL}u)…", &v18, 0x26u);
  }

  [(TLAlertSystemSoundController *)self _endRequiringBacklightObservationForAlert:alertCopy alertSystemSoundContext:contextCopy];
  [(NSMapTable *)self->_alertSystemSoundContexts removeObjectForKey:alertCopy];
  if (v14)
  {
    [contextCopy setPlaybackCompletionContext:0];
    [arrayCopy addObject:v14];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_beginRequiringBacklightObservationForAlert:(id)alert alertSystemSoundContext:(id)context
{
  v37 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  contextCopy = context;
  os_unfair_lock_assert_owner(&self->_lock);
  if ([contextCopy isRequiringBacklightObservation])
  {
    v8 = TLLogGeneral();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

    if (v9)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Playback/BackEnds/SystemSound/TLAlertSystemSoundController.m"];
      v11 = TLLogGeneral();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent = [v10 lastPathComponent];
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v27 = 136381443;
        selfCopy = "[TLAlertSystemSoundController _beginRequiringBacklightObservationForAlert:alertSystemSoundContext:]";
        v29 = 2113;
        v30 = lastPathComponent;
        v31 = 2049;
        v32 = 1243;
        v33 = 2113;
        v34 = callStackSymbols;
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
      [(TLAlertSystemSoundController *)alertCopy _beginRequiringBacklightObservationForAlert:contextCopy alertSystemSoundContext:v21];
    }
  }

  [contextCopy setRequiringBacklightObservation:1];
  backlightObservationRequestsCount = self->_backlightObservationRequestsCount;
  self->_backlightObservationRequestsCount = backlightObservationRequestsCount + 1;
  v23 = TLLogPlayback();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = self->_backlightObservationRequestsCount;
    v27 = 138544386;
    selfCopy = self;
    v29 = 2114;
    v30 = alertCopy;
    v31 = 2114;
    v32 = contextCopy;
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

- (void)_endRequiringBacklightObservationForAlert:(id)alert alertSystemSoundContext:(id)context
{
  v44 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  contextCopy = context;
  os_unfair_lock_assert_owner(&self->_lock);
  if ([contextCopy isRequiringBacklightObservation])
  {
    [contextCopy setRequiringBacklightObservation:0];
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
          lastPathComponent = [v11 lastPathComponent];
          callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
          v34 = 136381443;
          selfCopy = "[TLAlertSystemSoundController _endRequiringBacklightObservationForAlert:alertSystemSoundContext:]";
          v36 = 2113;
          v37 = lastPathComponent;
          v38 = 2049;
          v39 = 1261;
          v40 = 2113;
          v41 = callStackSymbols;
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
      selfCopy = self;
      v36 = 2114;
      v37 = alertCopy;
      v38 = 2114;
      v39 = contextCopy;
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

- (void)backlightStatusDidChange:(int64_t)change
{
  v69 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  backlightStatus = self->_backlightStatus;
  changeCopy = change;
  if (backlightStatus == change || (self->_backlightStatus = change, change == -1))
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
    if (changeCopy == 1)
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
        toneIdentifierForDeemphasizingAlert = [v13 toneIdentifierForDeemphasizingAlert];
        vibrationIdentifierForDeemphasizingAlert = [v13 vibrationIdentifierForDeemphasizingAlert];
        if ([toneIdentifierForDeemphasizingAlert length])
        {
          sound = [v13 sound];

          if (sound)
          {
            if (changeCopy == 1 && ([v13 isBeingDeemphasized] & 1) == 0 && (objc_msgSend(v13, "isDeemphasized") & 1) == 0 && (objc_msgSend(v13, "isBeingInterrupted") & 1) == 0)
            {
              v17 = TLLogPlayback();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                v40 = [v12 debugDescription];
                *buf = 138543874;
                selfCopy2 = self;
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
              selfCopy2 = self;
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
            v21 = [[TLDeemphasizableAlertSystemSoundBeginPlayingContext alloc] initWithAlert:v12 alertSystemSoundContext:v13 toneIdentifierForDeemphasizingAlert:toneIdentifierForDeemphasizingAlert vibrationIdentifierForDeemphasizingAlert:vibrationIdentifierForDeemphasizingAlert];
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
    v49 = changeCopy;
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

- (void)_processDeemphasizableAlertChangesForBackglightStatus:(int64_t)status stopTasksDescriptorForDeemphasizedAlerts:(id)alerts deemphasizableAlertBeginPlayingContexts:(id)contexts
{
  v86 = *MEMORY[0x1E69E9840];
  alertsCopy = alerts;
  contextsCopy = contexts;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (alertsCopy)
  {
    playbackCompletionContextsToProcess = [alertsCopy playbackCompletionContextsToProcess];
    if ([playbackCompletionContextsToProcess count])
    {
      [v9 addObjectsFromArray:playbackCompletionContextsToProcess];
      [alertsCopy setPlaybackCompletionContextsToProcess:0];
    }

    [(TLAlertSystemSoundController *)self _processStopTasksDescriptor:alertsCopy];
  }

  v11 = [contextsCopy count];
  if (!v11)
  {
    v57 = 0;
    goto LABEL_52;
  }

  v54 = v9;
  v51 = contextsCopy;
  v52 = alertsCopy;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = contextsCopy;
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
        alert = [v16 alert];
        toneIdentifierForDeemphasizingAlert = [v16 toneIdentifierForDeemphasizingAlert];
        vibrationIdentifierForDeemphasizingAlert = [v16 vibrationIdentifierForDeemphasizingAlert];
        v20 = objc_opt_class();
        if (status == 1)
        {
          v21 = toneIdentifierForDeemphasizingAlert;
        }

        else
        {
          v21 = 0;
        }

        v22 = [v20 _soundForAlert:alert toneIdentifierForDeemphasizingAlert:v21];
        if (status == 1)
        {
          vibrationIdentifier = vibrationIdentifierForDeemphasizingAlert;
        }

        else
        {
          vibrationIdentifier = [alert vibrationIdentifier];
        }

        v24 = vibrationIdentifier;
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
  if (status == 1)
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
      alert2 = [v29 alert];
      alertSystemSoundContext = [v29 alertSystemSoundContext];
      sound = [v29 sound];
      vibrationIdentifier2 = [v29 vibrationIdentifier];
      v34 = TLLogPlayback();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [alert2 debugDescription];
        *buf = 138544386;
        selfCopy2 = self;
        v76 = 2114;
        v77 = v56;
        v78 = 2114;
        v79 = v35;
        v80 = 2114;
        v81 = sound;
        v82 = 2114;
        v83 = vibrationIdentifier2;
        _os_log_impl(&dword_1D9356000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: _processDeemphasizableAlertChanges…:(%{public}@). About to begin playing alert %{public}@ with sound: %{public}@ and vibration identifier: %{public}@.", buf, 0x34u);
      }

      if (!sound)
      {
        [(TLAlertSystemSoundController *)self _removeAlert:alert2 alertSystemSoundContext:alertSystemSoundContext didFailToPrepareSound:1 appendingPlaybackCompletionContextToArray:v54];
LABEL_45:
        [alertSystemSoundContext setLoadingSound:0];
        goto LABEL_46;
      }

      v36 = [(NSMapTable *)self->_alertSystemSoundContexts objectForKey:alert2];

      if (!v36)
      {
        v43 = TLLogPlayback();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544130;
          selfCopy2 = self;
          v76 = 2114;
          v77 = v56;
          v78 = 2114;
          v79 = alert2;
          v80 = 2114;
          v81 = alertSystemSoundContext;
          _os_log_impl(&dword_1D9356000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@: _processDeemphasizableAlertChanges…:(%{public}@). Alert %{public}@ for %{public}@ has already been removed. Aborting.", buf, 0x2Au);
        }

        goto LABEL_45;
      }

      [alertSystemSoundContext setSound:sound];
      [alertSystemSoundContext setVibrationIdentifier:vibrationIdentifier2];
      [alertSystemSoundContext setLoadingSound:0];
      [alertSystemSoundContext setDeemphasized:status == 1];
      v37 = [(TLAlertSystemSoundController *)self _prepareForPreemptingAlertsBeforeBeginningPlaybackOfAlert:alert2 withSound:sound playbackCompletionType:4];
      v38 = v37;
      if (v37)
      {
        playbackCompletionContextsToProcess2 = [v37 playbackCompletionContextsToProcess];
        if ([playbackCompletionContextsToProcess2 count])
        {
          [v54 addObjectsFromArray:playbackCompletionContextsToProcess2];
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

      v41 = [(TLAlertSystemSoundController *)self _playTaskDescriptorForAlert:alert2 withSound:sound vibrationIdentifier:vibrationIdentifier2 alertSystemSoundContext:alertSystemSoundContext];
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
  contextsCopy = v51;
  alertsCopy = v52;
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