@interface TLAlertQueuePlayerController
+ ($96EE1C12479E9B303E9C2794B92A11A2)_externalEnvironmentValuesForAlert:(id)a3;
+ (BOOL)_shouldApplyAttentionAwarenessEffectsForAlert:(id)a3;
+ (BOOL)_shouldBypassRingerSwitchPolicyForAlert:(id)a3;
+ (BOOL)_shouldEnsureActiveAudioSessionWhenStartingPlaybackForAlert:(id)a3;
+ (BOOL)_shouldHandleAudioSessionActivationForAlert:(id)a3;
+ (BOOL)_shouldRepeatVibrationForAlert:(id)a3 externalEnvironmentValues:(id)a4;
+ (BOOL)_shouldVibrateForAlert:(id)a3;
+ (double)_audioPlaybackInitiationDelayForAlert:(id)a3 externalEnvironmentValues:(id)a4;
+ (double)_audioVolumeRampingDurationForAlert:(id)a3 externalEnvironmentValues:(id)a4 toneAssetDuration:(double)a5;
+ (id)_audioCategoryForAlert:(id)a3 externalEnvironmentValues:(id)a4;
+ (id)_audioModeForAlert:(id)a3 audioCategory:(id)a4;
+ (id)_clientNameForAlert:(id)a3;
+ (id)_mediaExperienceAudioCategoryForAudioSessionCategory:(id)a3;
+ (int64_t)_clientPriorityForAlert:(id)a3;
- (BOOL)_canPlayToneAsset:(id)a3;
- (BOOL)_isPreventingAudioSessionDeactivation;
- (BOOL)stopPlayingAlerts:(id)a3 withOptions:(id)a4 playbackCompletionType:(int64_t)a5;
- (NSString)description;
- (TLAlertQueuePlayerController)init;
- (float)_audioVolumeForAlert:(id)a3 audioCategory:(id)a4;
- (id)_fallbackToneIdentifierForStateDescriptor:(id)a3;
- (id)_vibrationPatternDictionaryForStateDescriptor:(id)a3 allowsArtificiallyRepeatingPropertyListRepresentation:(BOOL)a4;
- (void)_activateAudioSessionIfNeededForStateDescriptor:(id)a3;
- (void)_applyAudioVolume:(float)a3 forAlert:(id)a4 isForMusicPlayback:(BOOL)a5 phase:(int64_t)a6;
- (void)_beginPreventingAudioSessionDeactivation;
- (void)_createQueuePlayerIfNecessaryForStateDescriptor:(id)a3;
- (void)_deactivateAudioSessionIfNeededForStateDescriptor:(id)a3;
- (void)_destroyQueuePlayerForStateDescriptor:(id)a3;
- (void)_didPrepareToPlayMusicForStateDescriptor:(id)a3 withError:(id)a4;
- (void)_didReceiveAttentionPollingEventOfType:(int64_t)a3 stateDescriptor:(id)a4;
- (void)_endPreventingAudioSessionDeactivationForStateDescriptor:(id)a3;
- (void)_ensureMusicPlaybackStartedForStateDescriptor:(id)a3;
- (void)_handleActivationAssertionStatusChangeForAlert:(id)a3 updatedStatus:(BOOL)a4 previousStateDescriptor:(id)a5 updatedStateDescriptor:(id)a6;
- (void)_handleAudioSessionInterruptionNotification:(id)a3;
- (void)_handleAudioSessionInterruptionOfType:(unint64_t)a3 withOptions:(unint64_t)a4;
- (void)_initiateAudioPlaybackForStateDescriptor:(id)a3 audioVolumeRampingDuration:(double)a4;
- (void)_notifyPlaybackObserverForStateDescriptor:(id)a3 isForMusicPlayback:(BOOL)a4;
- (void)_performDelayedAudioPlaybackInitiationForStateDescriptor:(id)a3 audioVolumeRampingDuration:(double)a4;
- (void)_playAlertForStateDescriptor:(id)a3 previousStateDescriptor:(id)a4;
- (void)_queuePlayer:(id)a3 currentItemStatusWasUpdatedToValue:(int64_t)a4;
- (void)_queuePlayer:(id)a3 currentItemWasUpdatedFromValue:(id)a4;
- (void)_reloadPlaybackForStateDescriptor:(id)a3 withToneIdentifier:(id)a4;
- (void)_reportAudioStartEventForStateDescriptor:(id)a3;
- (void)_resetClientPriorityForStateDescriptor:(id)a3;
- (void)_resetFlagsForSwitchingAuxiliaryAudioSession;
- (void)_startMusicPlaybackForStateDescriptor:(id)a3 mediaItem:(id)a4;
- (void)_startObservingAudioSessionInterruptionNotificationsForStateDescriptor:(id)a3;
- (void)_startObservingQueuePlayer;
- (void)_startPlaybackForStateDescriptor:(id)a3 usingAssetWithLoadedProperties:(id)a4 shouldConfirmAlertStillPlaying:(BOOL)a5;
- (void)_startPlaybackForStateDescriptor:(id)a3 usingConfirmedPlayableAsset:(id)a4;
- (void)_startPlaybackForStateDescriptor:(id)a3 usingConfirmedPlayableAsset:(id)a4 hasAlreadyDetectedUserAttention:(BOOL)a5;
- (void)_stopMusicPlayback;
- (void)_stopObservingAudioSessionInterruptionNotificationsForStateDescriptor:(id)a3;
- (void)_stopObservingQueuePlayer;
- (void)_stopPlaybackForStateDescriptor:(id)a3;
- (void)_stopPlaybackForStateDescriptor:(id)a3 withOptions:(id)a4 playerWasAlreadyPausedExternally:(BOOL)a5;
- (void)_stopPlayingAlertForStateDescriptor:(id)a3 withOptions:(id)a4 playbackCompletionType:(int64_t)a5;
- (void)dealloc;
- (void)handleActivationAssertionStatusChangeForAlert:(id)a3 updatedStatus:(BOOL)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)playAlert:(id)a3 withCompletionHandler:(id)a4;
- (void)updateAudioVolumeDynamicallyForAlert:(id)a3 toValue:(float)a4;
@end

@implementation TLAlertQueuePlayerController

- (TLAlertQueuePlayerController)init
{
  v6.receiver = self;
  v6.super_class = TLAlertQueuePlayerController;
  v2 = [(TLAlertQueuePlayerController *)&v6 init];
  if (v2)
  {
    v3 = +[TLAudioQueue sharedAudioQueue];
    audioQueue = v2->_audioQueue;
    v2->_audioQueue = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)dealloc
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  audioQueue = self->_audioQueue;
  self->_audioQueue = 0;
  v4 = audioQueue;

  [(TLAudioQueue *)v4 assertNotRunningOnAudioQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__TLAlertQueuePlayerController_dealloc__block_invoke;
  v6[3] = &unk_1E85789A0;
  v6[4] = self;
  [(TLAudioQueue *)v4 performSynchronousTaskWithBlock:v6];

  v5.receiver = self;
  v5.super_class = TLAlertQueuePlayerController;
  [(TLAlertQueuePlayerController *)&v5 dealloc];
}

void __39__TLAlertQueuePlayerController_dealloc__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  os_unfair_lock_unlock((v2 + 16));
  [*(a1 + 32) _destroyQueuePlayerForStateDescriptor:v3];
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  stateDescriptor = self->_stateDescriptor;
  if (stateDescriptor)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = stateDescriptor;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v8 stringWithFormat:@"<%@: %p>", v11, v9];
  }

  else
  {
    v12 = 0;
  }

  [v6 appendFormat:@"; stateDescriptor = %@", v12];
  [v6 appendString:@">"];

  return v6;
}

- (void)playAlert:(id)a3 withCompletionHandler:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v8 = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor playingAlert];

  if (v8 == v6)
  {
    os_unfair_lock_unlock(&self->_lock);
    v15 = 0;
    v9 = 0;
  }

  else
  {
    v9 = self->_stateDescriptor;
    v10 = [[TLAlertQueuePlayerStateDescriptor alloc] initWithPlayingAlert:v6 completionHandler:v7 previousStateDescriptor:v9];
    stateDescriptor = self->_stateDescriptor;
    self->_stateDescriptor = v10;

    v12 = TLLogPlayback();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_stateDescriptor;
      *buf = 138543874;
      v21 = self;
      v22 = 2114;
      v23 = v6;
      v24 = 2114;
      v25 = v13;
      _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -playAlert:(%{public}@) …: Updated _stateDescriptor to %{public}@.", buf, 0x20u);
    }

    os_unfair_lock_unlock(&self->_lock);
    if (v10)
    {
      audioQueue = self->_audioQueue;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __64__TLAlertQueuePlayerController_playAlert_withCompletionHandler___block_invoke;
      v17[3] = &unk_1E8579038;
      v17[4] = self;
      v15 = v10;
      v18 = v15;
      v9 = v9;
      v19 = v9;
      [(TLAudioQueue *)audioQueue performTaskWithBlock:v17];
    }

    else
    {
      v15 = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)stopPlayingAlerts:(id)a3 withOptions:(id)a4 playbackCompletionType:(int64_t)a5
{
  v57 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  if (a5 == 5)
  {
    v10 = TLLogGeneral();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);

    if (v11)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Playback/BackEnds/QueuePlayer/TLAlertQueuePlayerController.m"];
      v13 = TLLogGeneral();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v12 lastPathComponent];
        v15 = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 136381443;
        v50 = "[TLAlertQueuePlayerController stopPlayingAlerts:withOptions:playbackCompletionType:]";
        v51 = 2113;
        v52 = v14;
        v53 = 2049;
        v54 = 260;
        v55 = 2113;
        v56 = v15;
        _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
      }
    }

    else
    {
      v12 = TLLogGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke_cold_1();
      }
    }

    v16 = TLLogGeneral();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [TLAlertQueuePlayerController stopPlayingAlerts:withOptions:playbackCompletionType:];
    }
  }

  v17 = TLLogPlayback();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v8 count];
    v19 = NSStringFromTLAlertPlaybackCompletionType(a5);
    *buf = 138544130;
    v50 = self;
    v51 = 2048;
    v52 = v18;
    v53 = 2114;
    v54 = v9;
    v55 = 2114;
    v56 = v19;
    _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: -stopPlayingAlerts:(<%lu alerts>) options:(%{public}@) playbackCompletionType:(%{public}@).", buf, 0x2Au);
  }

  v38 = a5;
  v39 = v9;

  os_unfair_lock_lock(&self->_lock);
  v20 = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor playingAlert];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v21 = v8;
  v22 = [v21 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = 0;
    v25 = *v45;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v45 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v44 + 1) + 8 * i);
        p_super = TLLogPlayback();
        v29 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT);
        if (v27 == v20)
        {
          if (v29)
          {
            *buf = 138543618;
            v50 = self;
            v51 = 2114;
            v52 = v20;
            _os_log_impl(&dword_1D9356000, p_super, OS_LOG_TYPE_DEFAULT, "%{public}@: -stopPlayingAlerts…: %{public}@ is playing. Interrupting it.", buf, 0x16u);
          }

          p_super = &v24->super;
          v24 = self->_stateDescriptor;
        }

        else if (v29)
        {
          *buf = 138543618;
          v50 = self;
          v51 = 2114;
          v52 = v27;
          _os_log_impl(&dword_1D9356000, p_super, OS_LOG_TYPE_DEFAULT, "%{public}@: -stopPlayingAlerts…: %{public}@ is NOT playing. Skipping it.", buf, 0x16u);
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v23);
  }

  else
  {
    v24 = 0;
  }

  stateDescriptor = self->_stateDescriptor;
  if (v24 == stateDescriptor)
  {
    v31 = [(TLAlertQueuePlayerStateDescriptor *)stateDescriptor stateDescriptorForCompletedPlayback];
    v32 = self->_stateDescriptor;
    self->_stateDescriptor = v31;

    v33 = TLLogPlayback();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor debugDescription];
      *buf = 138543618;
      v50 = self;
      v51 = 2114;
      v52 = v34;
      _os_log_impl(&dword_1D9356000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: -stopPlayingAlerts…: Updated _stateDescriptor to %{public}@.", buf, 0x16u);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v24)
  {
    audioQueue = self->_audioQueue;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __85__TLAlertQueuePlayerController_stopPlayingAlerts_withOptions_playbackCompletionType___block_invoke;
    v40[3] = &unk_1E8579878;
    v40[4] = self;
    v41 = v24;
    v42 = v39;
    v43 = v38;
    [(TLAudioQueue *)audioQueue performTaskWithBlock:v40];
  }

  v36 = *MEMORY[0x1E69E9840];
  return v24 != 0;
}

- (void)updateAudioVolumeDynamicallyForAlert:(id)a3 toValue:(float)a4
{
  v6 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v7 = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor playingAlert];

  os_unfair_lock_unlock(&self->_lock);
  if (v7 == v6)
  {
    audioQueue = self->_audioQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __77__TLAlertQueuePlayerController_updateAudioVolumeDynamicallyForAlert_toValue___block_invoke;
    v9[3] = &unk_1E8579738;
    v9[4] = self;
    v10 = v6;
    v11 = a4;
    [(TLAudioQueue *)audioQueue performTaskWithBlock:v9];
  }
}

uint64_t __77__TLAlertQueuePlayerController_updateAudioVolumeDynamicallyForAlert_toValue___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = TLLogPlayback();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v9 = 138543874;
    v10 = v3;
    v11 = 2114;
    v12 = v4;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_1D9356000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: -updateAudioVolumeDynamicallyForAlert:(%{public}@) toValue:(%f)", &v9, 0x20u);
  }

  LODWORD(v6) = *(a1 + 48);
  result = [*(a1 + 32) _applyAudioVolume:*(a1 + 40) forAlert:0 isForMusicPlayback:1 phase:v6];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)handleActivationAssertionStatusChangeForAlert:(id)a3 updatedStatus:(BOOL)a4
{
  v4 = a4;
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v7 = self->_stateDescriptor;
  v8 = v7;
  if (v4)
  {
    v9 = [[TLAlertQueuePlayerStateDescriptor alloc] initForAcquiringActivationAssertionWithAlertForAudioEnvironmentSetup:v6 previousStateDescriptor:v7];
LABEL_3:
    v10 = v9;
    goto LABEL_9;
  }

  v11 = [(TLAlertQueuePlayerStateDescriptor *)v7 alertForAudioEnvironmentSetup];
  v12 = v11;
  if (v11 == v6)
  {
    v13 = [(TLAlertQueuePlayerStateDescriptor *)v8 isAlertActivationAssertionAcquired];

    if (v13)
    {
      v9 = [(TLAlertQueuePlayerStateDescriptor *)v8 stateDescriptorByRelinquishingActivationAssertion];
      goto LABEL_3;
    }
  }

  else
  {
  }

  v10 = 0;
LABEL_9:
  objc_storeStrong(&self->_stateDescriptor, v10);
  v14 = TLLogPlayback();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v6 debugDescription];
    stateDescriptor = self->_stateDescriptor;
    *buf = 138544130;
    v28 = self;
    v29 = 2114;
    v30 = v15;
    v31 = 1024;
    v32 = v4;
    v33 = 2114;
    v34 = stateDescriptor;
    _os_log_impl(&dword_1D9356000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: -handleActivationAssertionStatusChangeForAlert:(%{public}@) updatedStatus:(%{BOOL}d): Updated _stateDescriptor to %{public}@.", buf, 0x26u);
  }

  os_unfair_lock_unlock(&self->_lock);
  audioQueue = self->_audioQueue;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __92__TLAlertQueuePlayerController_handleActivationAssertionStatusChangeForAlert_updatedStatus___block_invoke;
  v22[3] = &unk_1E8579D68;
  v22[4] = self;
  v23 = v6;
  v26 = v4;
  v24 = v8;
  v25 = v10;
  v18 = v10;
  v19 = v8;
  v20 = v6;
  [(TLAudioQueue *)audioQueue performTaskWithBlock:v22];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_playAlertForStateDescriptor:(id)a3 previousStateDescriptor:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v8 = [v6 playingAlert];
  v9 = TLLogPlayback();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 138543874;
    *&v19[4] = self;
    v20 = 2114;
    v21 = v6;
    v22 = 2114;
    v23 = v7;
    _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_playAlertForStateDescriptor:(%{public}@) previousStateDescriptor:(%{public}@).", v19, 0x20u);
  }

  if (!self->_audioSession)
  {
    goto LABEL_11;
  }

  v10 = [v6 alertForAudioEnvironmentSetup];
  v11 = [objc_opt_class() _shouldUseAuxiliaryAudioSessionForAlert:v10];
  isUsingAuxiliaryAudioSession = self->_isUsingAuxiliaryAudioSession;
  if (isUsingAuxiliaryAudioSession != v11)
  {
    v14 = TLLogPlayback();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = "shared";
      audioSession = self->_audioSession;
      *v19 = 138544130;
      if (isUsingAuxiliaryAudioSession)
      {
        v15 = "auxiliary";
      }

      *&v19[4] = self;
      v20 = 2114;
      v21 = v10;
      v22 = 2082;
      v23 = v15;
      v24 = 2114;
      v25 = audioSession;
      _os_log_impl(&dword_1D9356000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: -_playAlert: Policy for picking between auxiliary and shared audio session for %{public}@ doesn't match current state. Allowing deactivation of %{public}s audio session %{public}@.", v19, 0x2Au);
    }

LABEL_11:
    [(TLAlertQueuePlayerController *)self _stopPlaybackForStateDescriptor:v7, *v19];
    [v7 invokePlayingAlertCompletionHandlerWithPlaybackCompletionType:4 error:0];
    v17 = [v8 toneIdentifier];
    [(TLAlertQueuePlayerController *)self _reloadPlaybackForStateDescriptor:v6 withToneIdentifier:v17];

    goto LABEL_12;
  }

  [(TLAlertQueuePlayerController *)self _beginPreventingAudioSessionDeactivation];

  [(TLAlertQueuePlayerController *)self _stopPlaybackForStateDescriptor:v7];
  [v7 invokePlayingAlertCompletionHandlerWithPlaybackCompletionType:4 error:0];
  v13 = [v8 toneIdentifier];
  [(TLAlertQueuePlayerController *)self _reloadPlaybackForStateDescriptor:v6 withToneIdentifier:v13];

  [(TLAlertQueuePlayerController *)self _endPreventingAudioSessionDeactivationForStateDescriptor:v6];
LABEL_12:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_stopPlayingAlertForStateDescriptor:(id)a3 withOptions:(id)a4 playbackCompletionType:(int64_t)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v10 = TLLogPlayback();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromTLAlertPlaybackCompletionType(a5);
    *buf = 138544130;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v8;
    *&buf[22] = 2114;
    UIBackgroundTaskInvalid = v9;
    LOWORD(v32[0]) = 2114;
    *(v32 + 2) = v11;
    _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlayingAlertForStateDescriptor:(%{public}@) withOptions:(%{public}@) playbackCompletionType:(%{public}@).", buf, 0x2Au);
  }

  *v33 = 0;
  *&v33[8] = v33;
  *&v33[16] = 0x2050000000;
  v12 = getUIApplicationClass_softClass_0;
  v34 = getUIApplicationClass_softClass_0;
  if (!getUIApplicationClass_softClass_0)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getUIApplicationClass_block_invoke_0;
    UIBackgroundTaskInvalid = &unk_1E8578D30;
    v32[0] = v33;
    __getUIApplicationClass_block_invoke_0(buf);
    v12 = *(*&v33[8] + 24);
  }

  v13 = v12;
  _Block_object_dispose(v33, 8);
  v14 = [v12 sharedApplication];
  if (v14)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    UIBackgroundTaskInvalid = getUIBackgroundTaskInvalid();
    v15 = MEMORY[0x1E696AEC0];
    v16 = [v8 playingAlert];
    v17 = [v15 stringWithFormat:@"Stopping playing alert: %@", v16];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __103__TLAlertQueuePlayerController__stopPlayingAlertForStateDescriptor_withOptions_playbackCompletionType___block_invoke_2;
    v25[3] = &unk_1E8579D90;
    v29 = buf;
    v18 = v14;
    v26 = v18;
    v27 = self;
    v19 = v17;
    v28 = v19;
    v20 = MEMORY[0x1DA730160](v25);
    v21 = [v18 beginBackgroundTaskWithName:v19 expirationHandler:v20];
    *(*&buf[8] + 24) = v21;
    v22 = TLLogPlayback();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(*&buf[8] + 24);
      *v33 = 138543874;
      *&v33[4] = self;
      *&v33[12] = 2114;
      *&v33[14] = v19;
      *&v33[22] = 2048;
      v34 = v23;
      _os_log_impl(&dword_1D9356000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlayingAlertFor…: Began background task with name: %{public}@; identifier: %lu.", v33, 0x20u);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v20 = &__block_literal_global_16;
  }

  [(TLAlertQueuePlayerController *)self _stopPlaybackForStateDescriptor:v8 withOptions:v9 playerWasAlreadyPausedExternally:0];
  [v8 invokePlayingAlertCompletionHandlerWithPlaybackCompletionType:a5 error:0];
  dispatch_async(MEMORY[0x1E69E96A0], v20);

  v24 = *MEMORY[0x1E69E9840];
}

void __103__TLAlertQueuePlayerController__stopPlayingAlertForStateDescriptor_withOptions_playbackCompletionType___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 56) + 8) + 24);
  if (v2 != getUIBackgroundTaskInvalid())
  {
    v3 = *(*(*(a1 + 56) + 8) + 24);
    *(*(*(a1 + 56) + 8) + 24) = getUIBackgroundTaskInvalid();
    [*(a1 + 32) endBackgroundTask:v3];
    v4 = TLLogPlayback();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v8 = 138543874;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      v12 = 2048;
      v13 = v3;
      _os_log_impl(&dword_1D9356000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlayingAlertFor…: Ended background task with name: %{public}@; identifier: %lu.", &v8, 0x20u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_handleActivationAssertionStatusChangeForAlert:(id)a3 updatedStatus:(BOOL)a4 previousStateDescriptor:(id)a5 updatedStateDescriptor:(id)a6
{
  v8 = a4;
  v31 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (!v12 && v8)
  {
    v13 = TLLogGeneral();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);

    if (v14)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Playback/BackEnds/QueuePlayer/TLAlertQueuePlayerController.m"];
      v16 = TLLogGeneral();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v15 lastPathComponent];
        v18 = [MEMORY[0x1E696AF00] callStackSymbols];
        v25 = 136381443;
        v26 = "[TLAlertQueuePlayerController _handleActivationAssertionStatusChangeForAlert:updatedStatus:previousStateDescriptor:updatedStateDescriptor:]";
        v27 = 2113;
        v28 = v17;
        v29 = 2049;
        *v30 = 407;
        *&v30[8] = 2113;
        *&v30[10] = v18;
        _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v25, 0x2Au);
      }
    }

    else
    {
      v15 = TLLogGeneral();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke_cold_1();
      }
    }

    v19 = TLLogGeneral();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [TLAlertQueuePlayerController _handleActivationAssertionStatusChangeForAlert:updatedStatus:previousStateDescriptor:updatedStateDescriptor:];
    }
  }

  v20 = TLLogPlayback();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138544386;
    v26 = self;
    v27 = 2114;
    v28 = v10;
    v29 = 1024;
    *v30 = v8;
    *&v30[4] = 2114;
    *&v30[6] = v11;
    *&v30[14] = 2114;
    *&v30[16] = v12;
    _os_log_impl(&dword_1D9356000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleActivationAssertionStatusChangeForAlert:(%{public}@) updatedStatus:(%{BOOL}d) previousStateDescriptor:(%{public}@) updatedStateDescriptor:(%{public}@).", &v25, 0x30u);
  }

  if (v8)
  {
    if (self->_isAudioEnvironmentSetup)
    {
      [(TLAlertQueuePlayerController *)self _restoreAudioEnvironmentForStateDescriptor:v11 isForMusicPlayback:0];
    }

    [(TLAlertQueuePlayerController *)self _prepareAudioEnvironmentForStateDescriptor:v12 isForMusicPlayback:0];
  }

  else
  {
    v21 = [v11 alertForAudioEnvironmentSetup];
    v22 = v21;
    if (v21 == v10)
    {
      v23 = [v11 isAlertActivationAssertionAcquired];

      if (v23)
      {
        [(TLAlertQueuePlayerController *)self _restoreAudioEnvironmentForStateDescriptor:v11 isForMusicPlayback:0];
      }
    }

    else
    {
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (BOOL)_canPlayToneAsset:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  [objc_opt_class() _propertyKeysOfInterestForToneAssets];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v5 = v29 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v6)
  {
    v7 = *v29;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v29 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v28 + 1) + 8 * v8);
      if ([v4 statusOfValueForKey:v9 error:0] != 2)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v28 objects:v35 count:16];
        if (!v6)
        {
          goto LABEL_9;
        }

        goto LABEL_3;
      }
    }

    v18 = TLLogPlayback();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v4;
      *&buf[22] = 2114;
      v37 = v9;
      _os_log_error_impl(&dword_1D9356000, v18, OS_LOG_TYPE_ERROR, "%{public}@: -_canPlayToneAsset:(%{public}@). Can't play tone asset because property %{public}@ is not loaded.", buf, 0x20u);
    }

    goto LABEL_24;
  }

LABEL_9:

  v26 = 0uLL;
  v27 = 0;
  if (v4)
  {
    [v4 duration];
  }

  *&v32 = 0;
  *(&v32 + 1) = &v32;
  v33 = 0x2020000000;
  v10 = getCMTimeMakeSymbolLoc_ptr;
  v34 = getCMTimeMakeSymbolLoc_ptr;
  if (!getCMTimeMakeSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCMTimeMakeSymbolLoc_block_invoke;
    v37 = &unk_1E8578D30;
    v38 = &v32;
    v11 = CoreMediaLibrary();
    v12 = dlsym(v11, "CMTimeMake");
    *(*(v38 + 1) + 24) = v12;
    getCMTimeMakeSymbolLoc_ptr = *(*(v38 + 1) + 24);
    v10 = *(*(&v32 + 1) + 24);
  }

  _Block_object_dispose(&v32, 8);
  if (!v10)
  {
    __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
    goto LABEL_31;
  }

  v10(&v24, 1, 100);
  v22 = v26;
  v23 = v27;
  *&v32 = 0;
  *(&v32 + 1) = &v32;
  v33 = 0x2020000000;
  v13 = getCMTimeCompareSymbolLoc_ptr;
  v34 = getCMTimeCompareSymbolLoc_ptr;
  if (!getCMTimeCompareSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCMTimeCompareSymbolLoc_block_invoke;
    v37 = &unk_1E8578D30;
    v38 = &v32;
    v14 = CoreMediaLibrary();
    v15 = dlsym(v14, "CMTimeCompare");
    *(*(v38 + 1) + 24) = v15;
    getCMTimeCompareSymbolLoc_ptr = *(*(v38 + 1) + 24);
    v13 = *(*(&v32 + 1) + 24);
  }

  _Block_object_dispose(&v32, 8);
  if (!v13)
  {
    __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
LABEL_31:
    __break(1u);
  }

  *buf = v22;
  *&buf[16] = v23;
  v32 = v24;
  v33 = v25;
  if ((v13(buf, &v32) & 0x80000000) != 0)
  {
    v21 = TLLogPlayback();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v4;
      _os_log_impl(&dword_1D9356000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: -_canPlayToneAsset:(%{public}@). Can't play tone asset because its duration is too short.", buf, 0x16u);
    }

LABEL_24:
    v17 = 0;
    goto LABEL_25;
  }

  v16 = TLLogPlayback();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v4;
    _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: -_canPlayToneAsset:(%{public}@). Can play!", buf, 0x16u);
  }

  v17 = 1;
LABEL_25:

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)_reloadPlaybackForStateDescriptor:(id)a3 withToneIdentifier:(id)a4
{
  v58[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v8 = TLLogPlayback();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v6;
    *&buf[22] = 2114;
    v57 = v7;
    _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_reloadPlaybackForStateDescriptor:(%{public}@) withToneIdentifier:(%{public}@).", buf, 0x20u);
  }

  v9 = [(TLAlertQueuePlayerStateDescriptor *)v6 playingAlert];
  if (v9 && [v7 length])
  {
    v10 = [v7 copy];
    playingToneIdentifier = self->_playingToneIdentifier;
    self->_playingToneIdentifier = v10;

    if ([(AVQueuePlayer *)self->_queuePlayer status]== 2)
    {
      v12 = TLLogPlayback();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [TLAlertQueuePlayerController _reloadPlaybackForStateDescriptor:&self->_queuePlayer withToneIdentifier:?];
      }

      [(TLAlertQueuePlayerController *)self _destroyQueuePlayerForStateDescriptor:v6];
    }

    [(TLAlertQueuePlayerController *)self _createQueuePlayerIfNecessaryForStateDescriptor:v6];
    v13 = [v9 toneIdentifier];
    v14 = [v13 isEqualToString:self->_playingToneIdentifier];

    if (v14)
    {
      v15 = [v9 configuration];
      v16 = [v15 externalToneFileURL];
      if (v16 || (v25 = [v15 externalToneMediaLibraryItemIdentifier]) == 0)
      {
        v17 = 0;
        v18 = 0;
      }

      else
      {
        v52 = 0;
        v53 = &v52;
        v54 = 0x2050000000;
        v26 = getMPMediaPropertyPredicateClass_softClass;
        v55 = getMPMediaPropertyPredicateClass_softClass;
        if (!getMPMediaPropertyPredicateClass_softClass)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getMPMediaPropertyPredicateClass_block_invoke;
          v57 = &unk_1E8578D30;
          v58[0] = &v52;
          __getMPMediaPropertyPredicateClass_block_invoke(buf);
          v26 = v53[3];
        }

        v27 = v26;
        _Block_object_dispose(&v52, 8);
        v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v25];
        v52 = 0;
        v53 = &v52;
        v54 = 0x2020000000;
        v29 = getMPMediaItemPropertyPersistentIDSymbolLoc_ptr;
        v55 = getMPMediaItemPropertyPersistentIDSymbolLoc_ptr;
        if (!getMPMediaItemPropertyPersistentIDSymbolLoc_ptr)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getMPMediaItemPropertyPersistentIDSymbolLoc_block_invoke;
          v57 = &unk_1E8578D30;
          v58[0] = &v52;
          v30 = MediaPlayerLibrary();
          v31 = dlsym(v30, "MPMediaItemPropertyPersistentID");
          *(*(v58[0] + 8) + 24) = v31;
          getMPMediaItemPropertyPersistentIDSymbolLoc_ptr = *(*(v58[0] + 8) + 24);
          v29 = v53[3];
        }

        _Block_object_dispose(&v52, 8);
        if (!v29)
        {
          __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
          __break(1u);
        }

        v32 = [v26 predicateWithValue:v28 forProperty:*v29];

        v52 = 0;
        v53 = &v52;
        v54 = 0x2050000000;
        v33 = getMPMediaQueryClass_softClass;
        v55 = getMPMediaQueryClass_softClass;
        if (!getMPMediaQueryClass_softClass)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getMPMediaQueryClass_block_invoke;
          v57 = &unk_1E8578D30;
          v58[0] = &v52;
          __getMPMediaQueryClass_block_invoke(buf);
          v33 = v53[3];
        }

        v34 = v33;
        _Block_object_dispose(&v52, 8);
        v35 = [v33 songsQuery];
        [v35 addFilterPredicate:v32];
        v36 = [v35 items];
        v18 = [v36 lastObject];

        v17 = v18 != 0;
      }
    }

    else
    {
      v17 = 0;
      v18 = 0;
      v16 = 0;
    }

    if (!v16 && !v17)
    {
      if ([(NSString *)self->_playingToneIdentifier isEqualToString:@"<none>"])
      {
        [(TLAlertQueuePlayerController *)self _startPlaybackForStateDescriptor:v6 usingAssetWithLoadedProperties:0 shouldConfirmAlertStillPlaying:0];
        v16 = 0;
LABEL_47:

        goto LABEL_48;
      }

      v37 = +[TLToneManager sharedToneManager];
      v38 = [v37 filePathForToneIdentifier:self->_playingToneIdentifier];

      v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:v38 isDirectory:0];
    }

    if (v16 && ([MEMORY[0x1E6988168] assetWithURL:v16], (v39 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v40 = TLLogPlayback();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v39;
        _os_log_impl(&dword_1D9356000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@: -_reloadPlayback…: [toneAsset loadValuesAsynchronouslyForKeys:…] for %{public}@.", buf, 0x16u);
      }

      self->_isWaitingToCompleteReloadPlaybackRequest = 1;
      v41 = [objc_opt_class() _propertyKeysOfInterestForToneAssets];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __85__TLAlertQueuePlayerController__reloadPlaybackForStateDescriptor_withToneIdentifier___block_invoke;
      v49[3] = &unk_1E8579038;
      v49[4] = self;
      v50 = v39;
      v51 = v6;
      v42 = v39;
      [v42 loadValuesAsynchronouslyForKeys:v41 completionHandler:v49];
    }

    else
    {
      v43 = TLLogPlayback();
      v44 = v43;
      if (v18)
      {
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v45 = [v18 title];
          v46 = [v18 artist];
          *buf = 138544130;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v18;
          *&buf[22] = 2114;
          v57 = v45;
          LOWORD(v58[0]) = 2114;
          *(v58 + 2) = v46;
          _os_log_impl(&dword_1D9356000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@: -_reloadPlayback…: Found a media item for the specified external tone information: %{public}@ (“%{public}@” from “%{public}@”).", buf, 0x2Au);
        }

        [(TLAlertQueuePlayerController *)self _startMusicPlaybackForStateDescriptor:v6 mediaItem:v18];
      }

      else
      {
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [TLAlertQueuePlayerController _reloadPlaybackForStateDescriptor:withToneIdentifier:];
        }

        v47 = [(TLAlertQueuePlayerController *)self _fallbackToneIdentifierForStateDescriptor:v6];
        [(TLAlertQueuePlayerController *)self _reloadPlaybackForStateDescriptor:v6 withToneIdentifier:v47];
      }
    }

    goto LABEL_47;
  }

  v19 = TLLogPlayback();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [TLAlertQueuePlayerController _reloadPlaybackForStateDescriptor:withToneIdentifier:];
  }

  os_unfair_lock_lock(&self->_lock);
  stateDescriptor = self->_stateDescriptor;
  if (stateDescriptor == v6)
  {
    v21 = [(TLAlertQueuePlayerStateDescriptor *)stateDescriptor stateDescriptorForCompletedPlayback];
    v22 = self->_stateDescriptor;
    self->_stateDescriptor = v21;

    v23 = TLLogPlayback();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor debugDescription];
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v24;
      _os_log_impl(&dword_1D9356000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: -_reloadPlayback…: Updated _stateDescriptor to %{public}@.", buf, 0x16u);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  [(TLAlertQueuePlayerController *)self _stopPlaybackForStateDescriptor:v6];
  v16 = [MEMORY[0x1E696ABC0] tl_errorWithDomain:@"TLAlertErrorDomain" description:@"Failed to prepare tone asset for playback."];
  [(TLAlertQueuePlayerStateDescriptor *)v6 invokePlayingAlertCompletionHandlerWithPlaybackCompletionType:5 error:v16];
LABEL_48:

  v48 = *MEMORY[0x1E69E9840];
}

void __85__TLAlertQueuePlayerController__reloadPlaybackForStateDescriptor_withToneIdentifier___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = TLLogPlayback();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v12 = v3;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_1D9356000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: -_reloadPlayback…: did finish loading values asynchronously for %{public}@.", buf, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__TLAlertQueuePlayerController__reloadPlaybackForStateDescriptor_withToneIdentifier___block_invoke_39;
  v8[3] = &unk_1E8579038;
  v8[4] = v5;
  v9 = *(a1 + 48);
  v10 = *(a1 + 40);
  [v6 performTaskWithBlock:v8];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_startPlaybackForStateDescriptor:(id)a3 usingAssetWithLoadedProperties:(id)a4 shouldConfirmAlertStillPlaying:(BOOL)a5
{
  v5 = a5;
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v10 = TLLogPlayback();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138544130;
    v16 = self;
    v17 = 2114;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    v21 = 1024;
    v22 = v5;
    _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlaybackForStateDescriptor:(%{public}@) usingAssetWithLoadedProperties:(%{public}@) shouldConfirmAlertStillPlaying:(%{BOOL}d).", &v15, 0x26u);
  }

  self->_isWaitingToCompleteReloadPlaybackRequest = 0;
  if (v5)
  {
    os_unfair_lock_lock(&self->_lock);
    v11 = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor playingAlert];
    v12 = [v8 playingAlert];

    os_unfair_lock_unlock(&self->_lock);
    if (v11 != v12)
    {
      v13 = TLLogPlayback();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543618;
        v16 = self;
        v17 = 2114;
        v18 = v8;
        _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… usingAssetWithLoadedProperties…: Playing alert for %{public}@ is no longer actually playing; aborting playback initiation.", &v15, 0x16u);
      }

      goto LABEL_11;
    }
  }

  if (v9 && ![(TLAlertQueuePlayerController *)self _canPlayToneAsset:v9])
  {
    v13 = [(TLAlertQueuePlayerController *)self _fallbackToneIdentifierForStateDescriptor:v8];
    [(TLAlertQueuePlayerController *)self _reloadPlaybackForStateDescriptor:v8 withToneIdentifier:v13];
LABEL_11:

    goto LABEL_12;
  }

  [(TLAlertQueuePlayerController *)self _startPlaybackForStateDescriptor:v8 usingConfirmedPlayableAsset:v9];
LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_startPlaybackForStateDescriptor:(id)a3 usingConfirmedPlayableAsset:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v8 = TLLogPlayback();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543874;
    v16 = self;
    v17 = 2114;
    v18 = v6;
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlaybackForStateDescriptor:(%{public}@) usingConfirmedPlayableAsset:(%{public}@).", &v15, 0x20u);
  }

  [(TLAlertQueuePlayerController *)self _stopObservingQueuePlayer];
  v9 = TLLogPlayback();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    queuePlayer = self->_queuePlayer;
    v15 = 138543618;
    v16 = self;
    v17 = 2114;
    v18 = queuePlayer;
    _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… usingConfirmedPlayableAsset…: [_queuePlayer removeAllItems] on %{public}@ before initiating playback.", &v15, 0x16u);
  }

  [(AVQueuePlayer *)self->_queuePlayer removeAllItems];
  objc_storeStrong(&self->_toneAssetForPendingPlayingAlert, a4);
  self->_hasToneAssetForPendingPlayingAlert = 1;
  [(TLAlertQueuePlayerController *)self _willBeginPlayingAlertForStateDescriptor:v6 isForMusicPlayback:0];
  if (self->_attentionPollingToken && !self->_isAttentionAwarenessSubsystemFullyInitialized)
  {
    v13 = TLLogPlayback();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = self;
      _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… usingConfirmedPlayableAsset…: Currently polling for attention, and attention awareness subsystem not initialized yet. Waiting to see if we already have the user's attention.", &v15, 0xCu);
    }
  }

  else
  {
    toneAssetForPendingPlayingAlert = self->_toneAssetForPendingPlayingAlert;
    self->_toneAssetForPendingPlayingAlert = 0;

    v12 = 0;
    self->_hasToneAssetForPendingPlayingAlert = 0;
    if (self->_isAttentionAwarenessSubsystemFullyInitialized)
    {
      v12 = self->_lastAttentionPollingEventType == 1;
    }

    [(TLAlertQueuePlayerController *)self _startPlaybackForStateDescriptor:v6 usingConfirmedPlayableAsset:v7 hasAlreadyDetectedUserAttention:v12];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_startPlaybackForStateDescriptor:(id)a3 usingConfirmedPlayableAsset:(id)a4 hasAlreadyDetectedUserAttention:(BOOL)a5
{
  v73 = a5;
  v91[3] = *MEMORY[0x1E69E9840];
  v74 = a3;
  v77 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v7 = TLLogPlayback();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v74;
    *&buf[22] = 2114;
    v90 = v77;
    LOWORD(v91[0]) = 1024;
    *(v91 + 2) = v73;
    _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlaybackForStateDescriptor:(%{public}@) usingConfirmedPlayableAsset:(%{public}@) hasAlreadyDetectedUserAttention:(%{BOOL}d).", buf, 0x26u);
  }

  v75 = [v74 playingAlert];
  if ([objc_opt_class() _shouldVibrateForAlert:v75])
  {
    v8 = +[TLCapabilitiesManager sharedCapabilitiesManager];
    v9 = [v8 hasSynchronizedEmbeddedVibrationsCapability];

    if (v9)
    {
      v10 = [v75 toneIdentifier];
      v11 = [v75 vibrationIdentifier];
      if (![v11 hasPrefix:@"synchronizedvibration:"] || (objc_msgSend(v75, "_hasSynchronizedVibrationUnmatchedWithTone") & 1) != 0 || (objc_msgSend(v10, "hasPrefix:", @"alarmWakeUp:") & 1) != 0)
      {
        v76 = 0;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v53 = [v77 URL];
          v54 = [v53 pathExtension];

          v55 = [v54 lowercaseString];
          v56 = [v55 isEqualToString:@"caf"];

          if (v56)
          {
            v57 = TLLogPlayback();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = self;
              _os_log_impl(&dword_1D9356000, v57, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… hasAlreadyDetected…: Vibrating using embedded haptic track is not supported for .caf audio assets.", buf, 0xCu);
            }
          }

          v58 = v56 ^ 1;
        }

        else
        {
          v58 = 1;
        }

        v76 = v58;
      }

      v12 = TLLogPlayback();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 1024;
        *&buf[14] = v76;
        _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… hasAlreadyDetected…: Should vibrate using embedded haptic track: %{BOOL}d.", buf, 0x12u);
      }

      v13 = v76 ^ 1;
    }

    else
    {
      v76 = 0;
      v13 = 1;
    }

    v70 = v13;
  }

  else
  {
    v76 = 0;
    v70 = 0;
  }

  v71 = [v75 configuration];
  if (!v77)
  {
    v19 = 0;
    goto LABEL_59;
  }

  v83 = 0uLL;
  v84 = 0;
  [v77 duration];
  v81 = 0uLL;
  v82 = 0;
  v85 = 0;
  v86 = &v85;
  v87 = 0x2020000000;
  v14 = getCMTimeGetSecondsSymbolLoc_ptr;
  v88 = getCMTimeGetSecondsSymbolLoc_ptr;
  if (!getCMTimeGetSecondsSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCMTimeGetSecondsSymbolLoc_block_invoke;
    v90 = &unk_1E8578D30;
    v91[0] = &v85;
    v15 = CoreMediaLibrary();
    v16 = dlsym(v15, "CMTimeGetSeconds");
    *(*(v91[0] + 8) + 24) = v16;
    getCMTimeGetSecondsSymbolLoc_ptr = *(*(v91[0] + 8) + 24);
    v14 = v86[3];
  }

  _Block_object_dispose(&v85, 8);
  if (!v14)
  {
    __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
    __break(1u);
  }

  *buf = v81;
  *&buf[16] = v82;
  v17 = v14(buf);
  [objc_opt_class() _audioVolumeRampingDurationForAlert:v75 externalEnvironmentValues:*&self->_externalEnvironmentValues toneAssetDuration:v17];
  v19 = v18;
  if ([v71 shouldRepeat])
  {
    v20 = llround(1.0 / v17) + 2;
  }

  else
  {
    v20 = 1;
  }

  v21 = TLLogPlayback();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    queuePlayer = self->_queuePlayer;
    *buf = 138544130;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = v20;
    *&buf[22] = 2114;
    v90 = queuePlayer;
    LOWORD(v91[0]) = 2114;
    *(v91 + 2) = v77;
    _os_log_impl(&dword_1D9356000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… hasAlreadyDetected…: inserting %lu player items into %{public}@ for tone asset: %{public}@.", buf, 0x2Au);
  }

  if (self->_attentionPollingToken)
  {
    v24 = [(TLAttentionAwarenessEffectCoordinator *)self->_effectCoordinator audioMixForAsset:v77];
    if (!v20)
    {
      goto LABEL_58;
    }

    goto LABEL_29;
  }

  v24 = 0;
  if (v20)
  {
LABEL_29:
    v25 = 0;
    v72 = *MEMORY[0x1E6987A28];
    *&v23 = 138543874;
    v69 = v23;
    while (1)
    {
      v26 = [MEMORY[0x1E69880B0] playerItemWithAsset:{v77, v69}];
      if (!v26)
      {
        v37 = TLLogPlayback();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = v69;
          *&buf[4] = self;
          *&buf[12] = 2048;
          *&buf[14] = v25;
          *&buf[22] = 2114;
          v90 = v77;
          _os_log_error_impl(&dword_1D9356000, v37, OS_LOG_TYPE_ERROR, "%{public}@: -_startPlayback… hasAlreadyDetected…: (iteration #%lu) failed to create AVPlayerItem for tone asset: %{public}@.", buf, 0x20u);
        }

        goto LABEL_57;
      }

      if (v76)
      {
        break;
      }

LABEL_54:
      if (v24)
      {
        [v26 setAudioMix:v24];
      }

      [v26 setAudioSpatializationAllowed:0];
      [(AVQueuePlayer *)self->_queuePlayer insertItem:v26 afterItem:0];
LABEL_57:

      if (v20 == ++v25)
      {
        goto LABEL_58;
      }
    }

    v27 = TLLogPlayback();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v26;
      _os_log_impl(&dword_1D9356000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… hasAlreadyDetected…: [playerItem setPlayHapticTracks:YES] on %{public}@.", buf, 0x16u);
    }

    [v26 setPlayHapticTracks:1];
    [v26 setHapticPlaybackLocality:v72];
    v28 = TLLogPlayback();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v26;
      _os_log_impl(&dword_1D9356000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… hasAlreadyDetected…: [playerItem setHapticPlaybackLocality:AVPlayerItemHapticPlaybackLocalityDefaultWithFullStrength] on %{public}@.", buf, 0x16u);
    }

    v29 = [v26 tl_hapticTracks];
    v30 = [v29 attenuatedHapticPlayerItemTrack];
    v31 = [v29 hapticPlayerItemTrack];
    v32 = v31;
    if (v30)
    {
      if (v73)
      {
        [v31 setEnabled:0];
        [v32 setMutesHaptics:1];
        v33 = TLLogPlayback();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v32;
          _os_log_impl(&dword_1D9356000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… hasAlreadyDetected…: [hapticPlayerItemTrack setEnabled:NO] and [hapticPlayerItemTrack setMutesHaptics:YES] on %{public}@.", buf, 0x16u);
        }

        [v30 setEnabled:1];
        [v30 setMutesHaptics:0];
        v34 = TLLogPlayback();
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_53;
        }

        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v30;
        v35 = v34;
        v36 = "%{public}@: -_startPlayback… hasAlreadyDetected…: [attenuatedHapticPlayerItemTrack setEnabled:YES] and [attenuatedHapticPlayerItemTrack setMutesHaptics:NO] on %{public}@.";
      }

      else
      {
        [v31 setEnabled:1];
        [v32 setMutesHaptics:0];
        v39 = TLLogPlayback();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v32;
          _os_log_impl(&dword_1D9356000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… hasAlreadyDetected…: [hapticPlayerItemTrack setEnabled:YES] and [hapticPlayerItemTrack setMutesHaptics:NO] on %{public}@.", buf, 0x16u);
        }

        [v30 setEnabled:1];
        [v30 setMutesHaptics:1];
        v34 = TLLogPlayback();
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_53;
        }

        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v30;
        v35 = v34;
        v36 = "%{public}@: -_startPlayback… hasAlreadyDetected…: [attenuatedHapticPlayerItemTrack setEnabled:YES] and [attenuatedHapticPlayerItemTrack setMutesHaptics:YES] on %{public}@.";
      }

      v38 = 22;
    }

    else
    {
      [v31 setActiveHapticChannelIndex:v73];
      v34 = TLLogPlayback();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
LABEL_53:

        goto LABEL_54;
      }

      *buf = v69;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = v73;
      *&buf[22] = 2114;
      v90 = v32;
      v35 = v34;
      v36 = "%{public}@: -_startPlayback… hasAlreadyDetected…: [hapticPlayerItemTrack setActiveHapticChannelIndex:%ld] on %{public}@.";
      v38 = 32;
    }

    _os_log_impl(&dword_1D9356000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, v38);
    goto LABEL_53;
  }

LABEL_58:

LABEL_59:
  [(TLAlertQueuePlayerController *)self _startObservingQueuePlayer];
  if (v70)
  {
    v40 = [(TLAlertQueuePlayerController *)self _vibrationPatternDictionaryForStateDescriptor:v74 allowsArtificiallyRepeatingPropertyListRepresentation:1];
    if (v40)
    {
      v41 = TLLogPlayback();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = self->_queuePlayer;
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v42;
        _os_log_impl(&dword_1D9356000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… hasAlreadyDetected…: [_queuePlayer setVibrationPattern:vibrationPattern] on player %{public}@ with a non-nil pattern.", buf, 0x16u);
      }

      [(AVQueuePlayer *)self->_queuePlayer setVibrationPattern:v40];
    }

    else
    {
      v43 = [v75 vibrationIdentifier];
      v44 = [v43 isEqualToString:@"<none>"];

      if (v44)
      {
        v45 = [(AVQueuePlayer *)self->_queuePlayer vibrationPattern];
        v46 = v45 == 0;

        if (!v46)
        {
          v47 = TLLogGeneral();
          v48 = os_log_type_enabled(v47, OS_LOG_TYPE_INFO);

          if (v48)
          {
            v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Playback/BackEnds/QueuePlayer/TLAlertQueuePlayerController.m"];
            v50 = TLLogGeneral();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              v51 = [v49 lastPathComponent];
              v52 = [MEMORY[0x1E696AF00] callStackSymbols];
              *buf = 136381443;
              *&buf[4] = "[TLAlertQueuePlayerController _startPlaybackForStateDescriptor:usingConfirmedPlayableAsset:hasAlreadyDetectedUserAttention:]";
              *&buf[12] = 2113;
              *&buf[14] = v51;
              *&buf[22] = 2049;
              v90 = 721;
              LOWORD(v91[0]) = 2113;
              *(v91 + 2) = v52;
              _os_log_impl(&dword_1D9356000, v50, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
            }
          }

          else
          {
            v49 = TLLogGeneral();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke_cold_1();
            }
          }

          v59 = TLLogGeneral();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            [TLAlertQueuePlayerController _startPlaybackForStateDescriptor:usingConfirmedPlayableAsset:hasAlreadyDetectedUserAttention:];
          }
        }

        v60 = TLLogPlayback();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          v61 = self->_queuePlayer;
          *buf = 138543874;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v61;
          *&buf[22] = 2114;
          v90 = @"<none>";
          _os_log_impl(&dword_1D9356000, v60, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… hasAlreadyDetected…:. Leaving [_queuePlayer vibrationPattern] as nil on player %{public}@ because the vibration identifier is %{public}@.", buf, 0x20u);
        }
      }
    }
  }

  [objc_opt_class() _audioPlaybackInitiationDelayForAlert:v75 externalEnvironmentValues:*&self->_externalEnvironmentValues];
  v63 = v62;
  if (v62 <= 0.00000011920929)
  {
    [(TLAlertQueuePlayerController *)self _initiateAudioPlaybackForStateDescriptor:v74 audioVolumeRampingDuration:*&v19];
  }

  else
  {
    v64 = TLLogPlayback();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = self->_queuePlayer;
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v65;
      *&buf[22] = 2048;
      v90 = *&v63;
      _os_log_impl(&dword_1D9356000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… hasAlreadyDetected…: Skipping play command on %{public}@ because we need to honor a delay of %f seconds for the initiation of audio playback.", buf, 0x20u);
    }

    objc_initWeak(buf, self);
    v66 = dispatch_time(0, (v63 * 1000000000.0));
    v67 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __125__TLAlertQueuePlayerController__startPlaybackForStateDescriptor_usingConfirmedPlayableAsset_hasAlreadyDetectedUserAttention___block_invoke;
    block[3] = &unk_1E8579DB8;
    objc_copyWeak(v80, buf);
    v79 = v74;
    v80[1] = v19;
    dispatch_after(v66, v67, block);

    objc_destroyWeak(v80);
    objc_destroyWeak(buf);
  }

  [(TLAlertQueuePlayerController *)self _notifyPlaybackObserverForStateDescriptor:v74 isForMusicPlayback:0];

  v68 = *MEMORY[0x1E69E9840];
}

void __125__TLAlertQueuePlayerController__startPlaybackForStateDescriptor_usingConfirmedPlayableAsset_hasAlreadyDetectedUserAttention___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 1);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __125__TLAlertQueuePlayerController__startPlaybackForStateDescriptor_usingConfirmedPlayableAsset_hasAlreadyDetectedUserAttention___block_invoke_2;
    v5[3] = &unk_1E8578FC0;
    v5[4] = WeakRetained;
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    [v4 performTaskWithBlock:v5];
  }
}

- (void)_initiateAudioPlaybackForStateDescriptor:(id)a3 audioVolumeRampingDuration:(double)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v7 = TLLogPlayback();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543874;
    v16 = self;
    v17 = 2114;
    v18 = *&v6;
    v19 = 2050;
    v20 = a4;
    _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: -_initiateAudioPlaybackForStateDescriptor:(%{public}@) audioVolumeRampingDuration:(%{public}f).", &v15, 0x20u);
  }

  v8 = TLLogPlayback();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (a4 <= 0.00000011920929)
  {
    if (v9)
    {
      queuePlayer = self->_queuePlayer;
      v15 = 138543618;
      v16 = self;
      v17 = 2114;
      v18 = *&queuePlayer;
      _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_initiateAudioPlayback…: [_queuePlayer play] for %{public}@.", &v15, 0x16u);
    }

    [(AVQueuePlayer *)self->_queuePlayer play];
    [(TLAlertQueuePlayerController *)self _reportAudioStartEventForStateDescriptor:v6];
  }

  else
  {
    if (v9)
    {
      v10 = self->_queuePlayer;
      v15 = 138543874;
      v16 = self;
      v17 = 2050;
      v18 = a4;
      v19 = 2114;
      v20 = *&v10;
      _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_initiateAudioPlayback…: [_queuePlayer setRate:withVolumeRampDuration:] with %{public}f for %{public}@.", &v15, 0x20u);
    }

    v11 = self->_queuePlayer;
    soft_CMTimeMakeWithSeconds(a4);
    LODWORD(v12) = 1.0;
    [(AVQueuePlayer *)v11 setRate:&v15 withVolumeRampDuration:v12];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_performDelayedAudioPlaybackInitiationForStateDescriptor:(id)a3 audioVolumeRampingDuration:(double)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v7 = TLLogPlayback();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543874;
    v14 = self;
    v15 = 2114;
    v16 = v6;
    v17 = 2050;
    v18 = a4;
    _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: -_performDelayedAudioPlaybackInitiationForStateDescriptor:(%{public}@) audioVolumeRampingDuration:(%{public}f).", &v13, 0x20u);
  }

  os_unfair_lock_lock(&self->_lock);
  v8 = self->_stateDescriptor;
  os_unfair_lock_unlock(&self->_lock);
  v9 = [v6 playingAlert];
  v10 = [(TLAlertQueuePlayerStateDescriptor *)v8 playingAlert];
  if (v10 == v9)
  {
    [(TLAlertQueuePlayerController *)self _initiateAudioPlaybackForStateDescriptor:v8 audioVolumeRampingDuration:a4];
  }

  else
  {
    v11 = TLLogPlayback();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543874;
      v14 = self;
      v15 = 2114;
      v16 = v10;
      v17 = 2114;
      v18 = *&v9;
      _os_log_impl(&dword_1D9356000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: -_performDelayedAudioPlaybackInitiation…: playingAlert (%{public}@) doesn't match with alert with delayed audio playback initiation (%{public}@). Aborting.", &v13, 0x20u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_notifyPlaybackObserverForStateDescriptor:(id)a3 isForMusicPlayback:(BOOL)a4
{
  v4 = a4;
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v7 = TLLogPlayback();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v30 = self;
    v31 = 2114;
    v32 = v6;
    v33 = 1024;
    v34 = v4;
    _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: -_notifyPlaybackObserverForStateDescriptor:(%{public}@) isForMusicPlayback:(%{BOOL}d).", buf, 0x1Cu);
  }

  v8 = [v6 playingAlert];
  v9 = [v8 playbackObserver];
  if (objc_opt_respondsToSelector())
  {
    v10 = [(AVAudioSession *)self->_audioSession reporterID];
    v11 = [(TLAlertQueuePlayerController *)self description];
    v12 = dispatch_get_global_queue(0, 0);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __93__TLAlertQueuePlayerController__notifyPlaybackObserverForStateDescriptor_isForMusicPlayback___block_invoke;
    v24[3] = &unk_1E85797D8;
    v28 = v4;
    v13 = &v25;
    v27[1] = v10;
    v25 = v11;
    v14 = &v26;
    v26 = v9;
    v15 = v27;
    v27[0] = v8;
    v16 = v11;
    v17 = v24;
LABEL_7:
    dispatch_async(v12, v17);

    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    v18 = [(TLAlertQueuePlayerController *)self description];
    v12 = dispatch_get_global_queue(0, 0);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __93__TLAlertQueuePlayerController__notifyPlaybackObserverForStateDescriptor_isForMusicPlayback___block_invoke_57;
    v20[3] = &unk_1E8579038;
    v13 = &v21;
    v21 = v18;
    v14 = &v22;
    v22 = v9;
    v15 = &v23;
    v23 = v8;
    v16 = v18;
    v17 = v20;
    goto LABEL_7;
  }

LABEL_8:

  v19 = *MEMORY[0x1E69E9840];
}

void __93__TLAlertQueuePlayerController__notifyPlaybackObserverForStateDescriptor_isForMusicPlayback___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [[TLAlertPlaybackBeginEvent alloc] _initWithAudioSessionReporterID:*(a1 + 56) isForMusicPlayback:*(a1 + 64)];
  v3 = TLLogPlayback();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = 138544130;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    v12 = 2114;
    v13 = v2;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_1D9356000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: -_notifyPlaybackObserver…: Calling -alert:didBeginPlayingWithEvent: on playback observer %{public}@ with %{public}@ for %{public}@.", &v8, 0x2Au);
  }

  [*(a1 + 40) alert:*(a1 + 48) didBeginPlayingWithEvent:v2];
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __93__TLAlertQueuePlayerController__notifyPlaybackObserverForStateDescriptor_isForMusicPlayback___block_invoke_57(uint64_t a1)
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
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_1D9356000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: -_notifyPlaybackObserver…: Calling -alertDidBeginPlaying: on playback observer %{public}@ for %{public}@.", &v8, 0x20u);
  }

  result = [*(a1 + 40) alertDidBeginPlaying:*(a1 + 48)];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_stopPlaybackForStateDescriptor:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  [(TLAlertQueuePlayerController *)self _stopPlaybackForStateDescriptor:v4 withOptions:0 playerWasAlreadyPausedExternally:0];
}

- (void)_stopPlaybackForStateDescriptor:(id)a3 withOptions:(id)a4 playerWasAlreadyPausedExternally:(BOOL)a5
{
  v5 = a5;
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v10 = TLLogPlayback();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 138544130;
    v32 = self;
    v33 = 2114;
    v34 = v8;
    v35 = 2114;
    v36 = v9;
    v37 = 1024;
    v38 = v5;
    _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlaybackForStateDescriptor:(%{public}@) withOptions:(%{public}@) playerWasAlreadyPausedExternally:(%{BOOL}d).", &v31, 0x26u);
  }

  isStoppingPlayingAlert = self->_isStoppingPlayingAlert;
  self->_isStoppingPlayingAlert = 1;
  if (self->_queuePlayer)
  {
    if (v5)
    {
      v12 = TLLogPlayback();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        queuePlayer = self->_queuePlayer;
        v31 = 138543618;
        v32 = self;
        v33 = 2114;
        v34 = queuePlayer;
        _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlaybackFor…: playerWasAlreadyPausedExternally = YES for %{public}@.", &v31, 0x16u);
      }
    }

    else if (v9 && ([(AVQueuePlayer *)v9 fadeOutDuration], v15 = v14, v14 > 0.00000011920929))
    {
      v16 = TLLogPlayback();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = self->_queuePlayer;
        v31 = 138543874;
        v32 = self;
        v33 = 2048;
        v34 = *&v15;
        v35 = 2114;
        v36 = v17;
        _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlaybackFor…: [_queuePlayer setRate:withVolumeRampDuration:] with fadeOutDuration %f for %{public}@.", &v31, 0x20u);
      }

      v18 = self->_queuePlayer;
      soft_CMTimeMakeWithSeconds(v15);
      [(AVQueuePlayer *)v18 setRate:&v31 withVolumeRampDuration:0.0];
    }

    else
    {
      v19 = TLLogPlayback();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = self->_queuePlayer;
        v31 = 138543618;
        v32 = self;
        v33 = 2114;
        v34 = v20;
        _os_log_impl(&dword_1D9356000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlaybackFor…: [_queuePlayer pause] for %{public}@.", &v31, 0x16u);
      }

      [(AVQueuePlayer *)self->_queuePlayer pause];
    }

    [(TLAlertQueuePlayerController *)self _stopObservingQueuePlayer];
    v21 = TLLogPlayback();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = self->_queuePlayer;
      v31 = 138543618;
      v32 = self;
      v33 = 2114;
      v34 = v22;
      _os_log_impl(&dword_1D9356000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlaybackFor…: [_queuePlayer removeAllItems] for %{public}@.", &v31, 0x16u);
    }

    [(AVQueuePlayer *)self->_queuePlayer removeAllItems];
    v23 = [(AVQueuePlayer *)self->_queuePlayer vibrationPattern];

    if (v23)
    {
      v24 = TLLogPlayback();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = self->_queuePlayer;
        v31 = 138543618;
        v32 = self;
        v33 = 2114;
        v34 = v25;
        _os_log_impl(&dword_1D9356000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlaybackFor…: [_queuePlayer setVibrationPattern:nil] for %{public}@.", &v31, 0x16u);
      }

      [(AVQueuePlayer *)self->_queuePlayer setVibrationPattern:0];
    }
  }

  isPlayingMusic = self->_isPlayingMusic;
  [(TLAlertQueuePlayerController *)self _stopMusicPlayback];
  if (isPlayingMusic)
  {
    v27 = TLLogPlayback();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138543618;
      v32 = self;
      v33 = 2048;
      v34 = 0x3FE0000000000000;
      _os_log_impl(&dword_1D9356000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopMusicPlayback: Start delay of %.1fs to avoid a perceptible glitch upon restoring previous audio volume for Media Playback.", &v31, 0x16u);
    }

    [MEMORY[0x1E696AF00] sleepForTimeInterval:0.5];
    v28 = TLLogPlayback();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138543618;
      v32 = self;
      v33 = 2048;
      v34 = 0x3FE0000000000000;
      _os_log_impl(&dword_1D9356000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopMusicPlayback: Ended delay of %.1fs to avoid a perceptible glitch upon restoring previous audio volume for Media Playback.", &v31, 0x16u);
    }
  }

  [(TLAlertQueuePlayerController *)self _didEndPlayingAlertForStateDescriptor:v8 isForMusicPlayback:isPlayingMusic];
  toneAssetForPendingPlayingAlert = self->_toneAssetForPendingPlayingAlert;
  self->_toneAssetForPendingPlayingAlert = 0;

  self->_hasToneAssetForPendingPlayingAlert = 0;
  self->_isStoppingPlayingAlert = isStoppingPlayingAlert;

  v30 = *MEMORY[0x1E69E9840];
}

void __94__TLAlertQueuePlayerController__prepareAudioEnvironmentForStateDescriptor_isForMusicPlayback___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 1);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __94__TLAlertQueuePlayerController__prepareAudioEnvironmentForStateDescriptor_isForMusicPlayback___block_invoke_2;
    v7[3] = &unk_1E8578FC0;
    v7[4] = WeakRetained;
    v9 = a2;
    v8 = *(a1 + 32);
    [v6 performTaskWithBlock:v7];
  }
}

- (void)_resetClientPriorityForStateDescriptor:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  queuePlayer = self->_queuePlayer;
  if (queuePlayer)
  {
    [(AVQueuePlayer *)queuePlayer _setClientPriority:0];
    v6 = TLLogPlayback();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_queuePlayer;
      v8 = [v4 alertForAudioEnvironmentSetup];
      v10 = 138544386;
      v11 = self;
      v12 = 2114;
      v13 = v4;
      v14 = 2048;
      v15 = 0;
      v16 = 2114;
      v17 = v7;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: -_resetClientPriorityForStateDescriptor:(%{public}@). Reset client priority to %ld on %{public}@ for %{public}@.", &v10, 0x34u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_resetFlagsForSwitchingAuxiliaryAudioSession
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  isBypassingRingerSwitchPolicy = self->_isBypassingRingerSwitchPolicy;
  if (isBypassingRingerSwitchPolicy)
  {
    self->_isBypassingRingerSwitchPolicy = 0;
  }

  if (self->_isIgnoringAccessibilityDisabledVibrationSetting)
  {
    p_isAudioSessionActive = &self->_isAudioSessionActive;
    isAudioSessionActive = self->_isAudioSessionActive;
    self->_isIgnoringAccessibilityDisabledVibrationSetting = 0;
    if (!isAudioSessionActive)
    {
      goto LABEL_8;
    }
  }

  else
  {
    p_isAudioSessionActive = &self->_isAudioSessionActive;
    if (!self->_isAudioSessionActive)
    {
      if (!isBypassingRingerSwitchPolicy)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }
  }

  *p_isAudioSessionActive = 0;
LABEL_8:
  v6 = TLLogPlayback();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    audioSession = self->_audioSession;
    v9 = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = audioSession;
    _os_log_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: -_resetFlagsForSwitchingAuxiliaryAudioSession. Did reset internal flags related to auxiliary audio session %{public}@.", &v9, 0x16u);
  }

LABEL_11:
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_applyAudioVolume:(float)a3 forAlert:(id)a4 isForMusicPlayback:(BOOL)a5 phase:(int64_t)a6
{
  v7 = a5;
  v48 = *MEMORY[0x1E69E9840];
  v10 = COERCE_DOUBLE(a4);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v11 = [objc_opt_class() _audioVolumeApplicationPolicyForAlert:*&v10 externalEnvironmentValues:*&self->_externalEnvironmentValues];
  v12 = v11;
  if (v11 > 3)
  {
    v13 = 0;
  }

  else
  {
    v13 = off_1E8579E98[v11];
  }

  if (a6 > 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = off_1E8579EB8[a6];
  }

  v15 = TLLogPlayback();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544642;
    v39 = self;
    v40 = 2048;
    v41 = a3;
    v42 = 2114;
    v43 = v10;
    v44 = 1024;
    *v45 = v7;
    *&v45[4] = 2114;
    *&v45[6] = v14;
    *&v45[14] = 2114;
    *&v45[16] = v13;
    _os_log_impl(&dword_1D9356000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: -_applyAudioVolume:(%f) forAlert:(%{public}@) isForMusicPlayback:(%{BOOL}d) phase:(%{public}@): Policy for applying audio volume: %{public}@.", buf, 0x3Au);
  }

  if (v12 == 3)
  {
    [MEMORY[0x1E69AED10] sharedAVSystemController];
    *&v19 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v37 = 0.0;
    v26 = [v19 getActiveCategoryVolume:&v37 andName:0];
    v24 = v26;
    if (v26)
    {
      v16 = v37;
    }

    else
    {
      v16 = 0.0;
    }

    if (v26 && vabds_f32(v37, a3) <= 0.00000011921)
    {
      TLLogPlayback();
      *&v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v16 = 0.0;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        v39 = self;
        v40 = 2114;
        v41 = *&v19;
        v42 = 2048;
        v43 = a3;
        v44 = 2114;
        *v45 = v10;
        _os_log_impl(&dword_1D9356000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: -_applyAudioVolume…: Existing volume on %{public}@ for active audio category matches requested volume %f for %{public}@.", buf, 0x2Au);
      }

      v24 = 0;
    }

    else
    {
      *&v27 = a3;
      v28 = [v19 setActiveCategoryVolumeTo:v27];
      TLLogPlayback();
      *&v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544386;
        v39 = self;
        v40 = 2114;
        v41 = *&v19;
        v42 = 2048;
        v43 = a3;
        v44 = 2114;
        *v45 = v10;
        *&v45[8] = 1024;
        *&v45[10] = v28;
        _os_log_impl(&dword_1D9356000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: -_applyAudioVolume…: Adjusted volume on %{public}@ for active audio category to %f for %{public}@; did succeed: %{BOOL}d.", buf, 0x30u);
      }
    }
  }

  else
  {
    if (v12 != 2)
    {
      v16 = 0.0;
      if (v12 != 1 || (queuePlayer = self->_queuePlayer) == 0)
      {
        v24 = 0;
        if (!a6)
        {
          goto LABEL_45;
        }

        goto LABEL_46;
      }

      [(AVQueuePlayer *)queuePlayer volume];
      if (vabds_f32(*&v18, a3) <= 0.00000011921)
      {
        TLLogPlayback();
        *&v19 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v35 = self->_queuePlayer;
          *buf = 138543874;
          v39 = self;
          v40 = 2114;
          v41 = *&v35;
          v42 = 2048;
          v43 = a3;
          v21 = "%{public}@: -_applyAudioVolume…: Existing volume of %{public}@ is already set to %f.";
          v22 = v19;
          v23 = 32;
          goto LABEL_37;
        }
      }

      else
      {
        *&v18 = a3;
        [(AVQueuePlayer *)self->_queuePlayer setVolume:v18];
        TLLogPlayback();
        *&v19 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = self->_queuePlayer;
          *buf = 138544130;
          v39 = self;
          v40 = 2114;
          v41 = *&v20;
          v42 = 2048;
          v43 = a3;
          v44 = 2114;
          *v45 = v10;
          v21 = "%{public}@: -_applyAudioVolume…: Adjusted volume of %{public}@ to %f for %{public}@.";
          v22 = v19;
          v23 = 42;
LABEL_37:
          _os_log_impl(&dword_1D9356000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
        }
      }

      v24 = 0;
      goto LABEL_44;
    }

    if (v7)
    {
      v25 = *MEMORY[0x1E6958068];
    }

    else
    {
      v25 = [objc_opt_class() _audioCategoryForAlert:*&v10 externalEnvironmentValues:*&self->_externalEnvironmentValues];
    }

    v19 = v25;
    [objc_opt_class() _mediaExperienceAudioCategoryForAudioSessionCategory:v25];
    *&v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    [MEMORY[0x1E69AED10] sharedAVSystemController];
    v30 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v37 = 0.0;
    v31 = [*&v30 getVolume:&v37 forCategory:v29];
    v24 = v31;
    if (v31)
    {
      v16 = v37;
    }

    else
    {
      v16 = 0.0;
    }

    if (v31 && vabds_f32(v37, a3) <= 0.00000011921)
    {
      v34 = TLLogPlayback();
      v16 = 0.0;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544386;
        v39 = self;
        v40 = 2114;
        v41 = v30;
        v42 = 2114;
        v43 = *&v29;
        v44 = 2048;
        *v45 = a3;
        *&v45[8] = 2114;
        *&v45[10] = v10;
        _os_log_impl(&dword_1D9356000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: -_applyAudioVolume…: Existing volume on %{public}@ for MediaExperience audio category %{public}@ matches requested volume %f for %{public}@.", buf, 0x34u);
      }

      v24 = 0;
    }

    else
    {
      *&v32 = a3;
      v33 = [*&v30 setVolumeTo:v29 forCategory:v32];
      v34 = TLLogPlayback();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544898;
        v39 = self;
        v40 = 2114;
        v41 = v30;
        v42 = 2114;
        v43 = *&v29;
        v44 = 2048;
        *v45 = v37;
        *&v45[8] = 2048;
        *&v45[10] = a3;
        *&v45[18] = 2114;
        *&v45[20] = v10;
        v46 = 1024;
        v47 = v33;
        _os_log_impl(&dword_1D9356000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: -_applyAudioVolume…: Adjusted volume on %{public}@ for MediaExperience audio category %{public}@ from %f to %f for %{public}@; did succeed: %{BOOL}d.", buf, 0x44u);
      }
    }
  }

LABEL_44:
  if (!a6)
  {
LABEL_45:
    self->_previousAudioVolume = v16;
    self->_hasPreviousAudioVolume = v24;
  }

LABEL_46:

  v36 = *MEMORY[0x1E69E9840];
}

- (void)_didReceiveAttentionPollingEventOfType:(int64_t)a3 stateDescriptor:(id)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v6 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (a3 == 1)
  {
    v45 = @"attention detected";
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      v45 = 0;
    }

    else
    {
      v45 = @"initialized";
    }
  }

  v8 = TLLogPlayback();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138544130;
    v52 = self;
    v53 = 2114;
    v54 = v45;
    v55 = 2114;
    v56 = v10;
    v57 = 2048;
    v58 = v6;
    _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didReceiveAttentionPollingEventOfType:(%{public}@) stateDescriptor:(<%{public}@: %p>).", buf, 0x2Au);
  }

  self->_isAttentionAwarenessSubsystemFullyInitialized = 1;
  self->_lastAttentionPollingEventType = a3;
  v11 = self->_toneAssetForPendingPlayingAlert;
  hasToneAssetForPendingPlayingAlert = self->_hasToneAssetForPendingPlayingAlert;
  toneAssetForPendingPlayingAlert = self->_toneAssetForPendingPlayingAlert;
  self->_toneAssetForPendingPlayingAlert = 0;

  self->_hasToneAssetForPendingPlayingAlert = 0;
  os_unfair_lock_lock(&self->_lock);
  v14 = self->_stateDescriptor;
  os_unfair_lock_unlock(&self->_lock);
  v15 = [(TLAlertQueuePlayerStateDescriptor *)v14 alertForAudioEnvironmentSetup];
  v16 = [v6 alertForAudioEnvironmentSetup];
  v17 = v16;
  if (v15 == v16)
  {
    if (a3 != 1)
    {
      if (!a3 && hasToneAssetForPendingPlayingAlert)
      {
        v18 = [(TLAlertQueuePlayerStateDescriptor *)v14 analytics];
        [v18 setDidAttenuatePlayback:0];
        v21 = [MEMORY[0x1E695DF00] date];
        [v21 timeIntervalSinceReferenceDate];
        [v18 setStartTime:?];

        [(TLAlertQueuePlayerController *)self _startPlaybackForStateDescriptor:v14 usingConfirmedPlayableAsset:v11 hasAlreadyDetectedUserAttention:0];
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    v44 = v16;
    v22 = [(TLAttentionAwarenessEffectCoordinator *)self->_effectCoordinator effectParameters];
    v18 = [(TLAlertQueuePlayerStateDescriptor *)v14 analytics];
    [v18 setDidAttenuatePlayback:1];
    v23 = [MEMORY[0x1E695DF00] date];
    [v23 timeIntervalSinceReferenceDate];
    if (hasToneAssetForPendingPlayingAlert)
    {
      [v18 setStartTime:?];

      [v18 startTime];
      [v18 setAttenuationTime:?];
      [(TLAttentionAwarenessEffectCoordinator *)self->_effectCoordinator setEffectParameters:v22, 1065353216];
      [(TLAlertQueuePlayerController *)self _startPlaybackForStateDescriptor:v14 usingConfirmedPlayableAsset:v11 hasAlreadyDetectedUserAttention:1];
      v17 = v44;
      goto LABEL_11;
    }

    v40 = v15;
    v41 = v14;
    v42 = v11;
    v43 = v7;
    v39 = v18;
    [v18 setAttenuationTime:?];

    [(TLAttentionAwarenessEffectCoordinator *)self->_effectCoordinator setEffectParameters:v22 effectMixFadeDuration:1065353216, 0.75];
    v24 = [(AVQueuePlayer *)self->_queuePlayer items];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v25 = [v24 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (!v25)
    {
      goto LABEL_38;
    }

    v26 = v25;
    v27 = *v47;
LABEL_23:
    v28 = 0;
    while (1)
    {
      if (*v47 != v27)
      {
        objc_enumerationMutation(v24);
      }

      v29 = *(*(&v46 + 1) + 8 * v28);
      if (![v29 playHapticTracks])
      {
        goto LABEL_36;
      }

      v30 = [v29 tl_hapticTracks];
      v31 = [v30 attenuatedHapticPlayerItemTrack];
      v32 = [v30 hapticPlayerItemTrack];
      v33 = v32;
      if (v31)
      {
        break;
      }

      [v32 setActiveHapticChannelIndex:1];
      v35 = TLLogPlayback();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        v52 = self;
        v53 = 2114;
        v54 = v45;
        v55 = 2048;
        v56 = 1;
        v57 = 2114;
        v58 = v33;
        v36 = v35;
        v37 = "%{public}@: -_didReceiveAttentionPollingEventOfType:(%{public}@) […]: [hapticPlayerItemTrack setActiveHapticChannelIndex:%ld] on %{public}@.";
        v38 = 42;
LABEL_34:
        _os_log_impl(&dword_1D9356000, v36, OS_LOG_TYPE_DEFAULT, v37, buf, v38);
      }

LABEL_35:

LABEL_36:
      if (v26 == ++v28)
      {
        v26 = [v24 countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (!v26)
        {
LABEL_38:

          v17 = v44;
          v7 = v43;
          v14 = v41;
          v11 = v42;
          v18 = v39;
          v15 = v40;
          goto LABEL_11;
        }

        goto LABEL_23;
      }
    }

    [v32 setMutesHaptics:1];
    v34 = TLLogPlayback();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v52 = self;
      v53 = 2114;
      v54 = v45;
      v55 = 2114;
      v56 = v33;
      _os_log_impl(&dword_1D9356000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didReceiveAttentionPollingEventOfType:(%{public}@) […]: [hapticPlayerItemTrack setMutesHaptics:YES] on %{public}@.", buf, 0x20u);
    }

    [v31 setMutesHaptics:0];
    v35 = TLLogPlayback();
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 138543874;
    v52 = self;
    v53 = 2114;
    v54 = v45;
    v55 = 2114;
    v56 = v31;
    v36 = v35;
    v37 = "%{public}@: -_didReceiveAttentionPollingEventOfType:(%{public}@) […]: [attenuatedHapticPlayerItemTrack setMutesHaptics:NO] on %{public}@.";
    v38 = 32;
    goto LABEL_34;
  }

  v18 = TLLogPlayback();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v52 = self;
    v53 = 2114;
    v54 = v45;
    v55 = 2114;
    v56 = v15;
    _os_log_impl(&dword_1D9356000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didReceiveAttentionPollingEventOfType:(%{public}@) […]: alertForAudioEnvironmentSetup argument doesn't match with activeAlertForAudioEnvironmentSetup: %{public}@. Aborting logic to affect current playback state.", buf, 0x20u);
  }

LABEL_11:

LABEL_12:
  if (v7)
  {
    attentionPollingToken = self->_attentionPollingToken;
    self->_attentionPollingToken = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_createQueuePlayerIfNecessaryForStateDescriptor:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v5 = [(AVQueuePlayer *)v4 playingAlert];
  if (v5)
  {
    v6 = [objc_opt_class() _clientNameForAlert:v5];
    v7 = [objc_opt_class() _clientPriorityForAlert:v5];
    v8 = [objc_opt_class() _shouldEnsureActiveAudioSessionWhenStartingPlaybackForAlert:v5];
    v9 = [objc_opt_class() _shouldUseAuxiliaryAudioSessionForAlert:v5];
    v10 = TLLogPlayback();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544642;
      v32 = self;
      v33 = 2114;
      v34 = v4;
      v35 = 2114;
      v36 = v6;
      v37 = 2048;
      *v38 = v7;
      *&v38[8] = 1024;
      v39 = v8;
      v40 = 1024;
      v41 = v9;
      _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: -_createQueuePlayerIfNecessaryForStateDescriptor:(%{public}@). clientName = %{public}@. clientPriority = %ld. shouldEnsureActiveAudioSessionWhenStartingPlayback = %{BOOL}d. shouldUseAuxiliaryAudioSession = %{BOOL}d.", buf, 0x36u);
    }

    queuePlayer = self->_queuePlayer;
    if (!queuePlayer)
    {
      goto LABEL_21;
    }

    v29 = v8;
    v30 = v7;
    v12 = [(AVQueuePlayer *)queuePlayer _clientName];
    v13 = [(AVQueuePlayer *)self->_queuePlayer _clientPriority];
    v14 = [(AVQueuePlayer *)self->_queuePlayer _ensuresActiveAudioSessionWhenStartingPlayback];
    v15 = [(AVQueuePlayer *)self->_queuePlayer audioSession];

    v16 = TLLogPlayback();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544386;
      v32 = self;
      v33 = 2114;
      v34 = v12;
      v35 = 2048;
      v36 = v13;
      v37 = 1024;
      *v38 = v14;
      *&v38[4] = 1024;
      *&v38[6] = v15 != 0;
      _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: -_createQueuePlayerIfNecessary…: Existing player is configured with clientName = %{public}@. clientPriority = %ld. ensuresActiveAudioSessionWhenStartingPlayback = %{BOOL}d. isUsingAuxiliaryAudioSession = %{BOOL}d.", buf, 0x2Cu);
    }

    if (![(AVQueuePlayer *)v12 isEqualToString:v6]|| v13 != v30)
    {
      v17 = TLLogPlayback();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = self->_queuePlayer;
        *buf = 138543618;
        v32 = self;
        v33 = 2114;
        v34 = v20;
        _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: -_createQueuePlayerIfNecessary…: Client name or priority don't match those of %{public}@. Destroying it.", buf, 0x16u);
      }

      LOBYTE(v8) = v29;
      goto LABEL_19;
    }

    LOBYTE(v8) = v29;
    if (v29 == v14)
    {
      if (v9 == (v15 != 0))
      {
        goto LABEL_20;
      }

      v17 = TLLogPlayback();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v21 = self->_queuePlayer;
        *buf = 138543618;
        v32 = self;
        v33 = 2114;
        v34 = v21;
        v19 = "%{public}@: -_createQueuePlayerIfNecessary…: Policy for picking between auxiliary and shared audio session doesn't match that of %{public}@. Destroying it.";
        goto LABEL_18;
      }
    }

    else
    {
      v17 = TLLogPlayback();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = self->_queuePlayer;
        *buf = 138543618;
        v32 = self;
        v33 = 2114;
        v34 = v18;
        v19 = "%{public}@: -_createQueuePlayerIfNecessary…: Policy for ensuring active audio session when starting playback doesn't match that of %{public}@. Destroying it.";
LABEL_18:
        _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, v19, buf, 0x16u);
      }
    }

LABEL_19:

    [(TLAlertQueuePlayerController *)self _destroyQueuePlayerForStateDescriptor:v4];
LABEL_20:

    v7 = v30;
    if (self->_queuePlayer)
    {
LABEL_28:

      goto LABEL_29;
    }

LABEL_21:
    v22 = objc_alloc(MEMORY[0x1E6988100]);
    v23 = [(TLAudioQueue *)self->_audioQueue _underlyingSerialQueue];
    v24 = [v22 initWithDispatchQueue:v23];
    v25 = self->_queuePlayer;
    self->_queuePlayer = v24;

    [(AVQueuePlayer *)self->_queuePlayer setAllowsExternalPlayback:0];
    [(AVQueuePlayer *)self->_queuePlayer _setClientPriority:v7];
    [(AVQueuePlayer *)self->_queuePlayer _setClientName:v6];
    if ((v8 & 1) == 0)
    {
      [(AVQueuePlayer *)self->_queuePlayer _setEnsuresActiveAudioSessionWhenStartingPlayback:0];
    }

    if (self->_isUsingAuxiliaryAudioSession)
    {
      [(AVQueuePlayer *)self->_queuePlayer setAudioSession:self->_audioSession];
    }

    v26 = TLLogPlayback();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = self->_queuePlayer;
      *buf = 138543618;
      v32 = self;
      v33 = 2114;
      v34 = v27;
      _os_log_impl(&dword_1D9356000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: -_createQueuePlayerIfNecessary…: Created queue player: %{public}@.", buf, 0x16u);
    }

    goto LABEL_28;
  }

LABEL_29:

  v28 = *MEMORY[0x1E69E9840];
}

- (void)_destroyQueuePlayerForStateDescriptor:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (self->_queuePlayer)
  {
    v5 = TLLogPlayback();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      queuePlayer = self->_queuePlayer;
      v11 = 138543874;
      v12 = self;
      v13 = 2114;
      v14 = v4;
      v15 = 2114;
      v16 = queuePlayer;
      _os_log_impl(&dword_1D9356000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: -_destroyQueuePlayerForStateDescriptor:(%{public}@). _queuePlayer = %{public}@.", &v11, 0x20u);
    }

    if (!self->_isStoppingPlayingAlert)
    {
      [(TLAlertQueuePlayerController *)self _stopPlaybackForStateDescriptor:v4];
    }

    v7 = TLLogPlayback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_queuePlayer;
      v11 = 138543618;
      v12 = self;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: -_destroyQueuePlayer…: Tossing queue player: %{public}@.", &v11, 0x16u);
    }

    v9 = self->_queuePlayer;
    self->_queuePlayer = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_startObservingQueuePlayer
{
  v10 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (!self->_isObservingQueuePlayer && self->_queuePlayer)
  {
    v3 = TLLogPlayback();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      queuePlayer = self->_queuePlayer;
      v6 = 138543618;
      v7 = self;
      v8 = 2114;
      v9 = queuePlayer;
      _os_log_impl(&dword_1D9356000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startObservingQueuePlayer: %{public}@.", &v6, 0x16u);
    }

    [(AVQueuePlayer *)self->_queuePlayer addObserver:self forKeyPath:@"currentItem" options:2 context:_TLAlertQueuePlayerCurrentItemObservationContext];
    [(AVQueuePlayer *)self->_queuePlayer addObserver:self forKeyPath:@"currentItem.status" options:1 context:_TLAlertQueuePlayerCurrentItemStatusObservationContext];
    self->_isObservingQueuePlayer = 1;
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_stopObservingQueuePlayer
{
  v10 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (self->_isObservingQueuePlayer)
  {
    v3 = TLLogPlayback();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      queuePlayer = self->_queuePlayer;
      v6 = 138543618;
      v7 = self;
      v8 = 2114;
      v9 = queuePlayer;
      _os_log_impl(&dword_1D9356000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopObservingQueuePlayer: %{public}@.", &v6, 0x16u);
    }

    [(AVQueuePlayer *)self->_queuePlayer removeObserver:self forKeyPath:@"currentItem" context:_TLAlertQueuePlayerCurrentItemObservationContext];
    [(AVQueuePlayer *)self->_queuePlayer removeObserver:self forKeyPath:@"currentItem.status" context:_TLAlertQueuePlayerCurrentItemStatusObservationContext];
    self->_isObservingQueuePlayer = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (_TLAlertQueuePlayerCurrentItemObservationContext == a6 && [v10 isEqualToString:@"currentItem"])
  {
    v13 = [v12 objectForKey:*MEMORY[0x1E696A500]];
    audioQueue = self->_audioQueue;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __79__TLAlertQueuePlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v24[3] = &unk_1E8579038;
    v25 = v13;
    v26 = v11;
    v27 = self;
    v15 = v13;
    [(TLAudioQueue *)audioQueue performTaskWithBlock:v24];

    v16 = v25;
  }

  else
  {
    if (_TLAlertQueuePlayerCurrentItemStatusObservationContext != a6 || ![v10 isEqualToString:@"currentItem.status"])
    {
      v19.receiver = self;
      v19.super_class = TLAlertQueuePlayerController;
      [(TLAlertQueuePlayerController *)&v19 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
      goto LABEL_9;
    }

    v17 = [v12 objectForKey:*MEMORY[0x1E696A4F0]];
    v18 = self->_audioQueue;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __79__TLAlertQueuePlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    v20[3] = &unk_1E8579038;
    v21 = v17;
    v22 = v11;
    v23 = self;
    v15 = v17;
    [(TLAudioQueue *)v18 performTaskWithBlock:v20];

    v16 = v21;
  }

LABEL_9:
}

void __79__TLAlertQueuePlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke(void *a1)
{
  v2 = a1[4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = a1[5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = a1[4];
      v5 = a1[5];
      v6 = a1[6];
      v7 = v4;
      [v6 _queuePlayer:v5 currentItemWasUpdatedFromValue:v7];
    }
  }
}

uint64_t __79__TLAlertQueuePlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 40);
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v5 = [*(a1 + 32) integerValue];
      v7 = *(a1 + 40);
      v6 = *(a1 + 48);

      return [v6 _queuePlayer:v7 currentItemStatusWasUpdatedToValue:v5];
    }
  }

  return result;
}

- (void)_queuePlayer:(id)a3 currentItemWasUpdatedFromValue:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (self->_queuePlayer == v6)
  {
    v8 = TLLogPlayback();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v7;
      *&buf[22] = 2114;
      v38 = v6;
      _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: currentItemWasUpdatedFromValue:(%{public}@) for %{public}@.", buf, 0x20u);
    }

    v9 = TLLogPlayback();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v7;
      _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: currentItemWasUpdated…: Calling [removedItem seekToTime:kCMTimeZero completionHandler:NULL] on %{public}@.", buf, 0x16u);
    }

    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v10 = getkCMTimeZeroSymbolLoc_ptr;
    v36 = getkCMTimeZeroSymbolLoc_ptr;
    if (!getkCMTimeZeroSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getkCMTimeZeroSymbolLoc_block_invoke;
      v38 = &unk_1E8578D30;
      v39 = &v33;
      v11 = CoreMediaLibrary();
      v12 = dlsym(v11, "kCMTimeZero");
      *(v39[1] + 24) = v12;
      getkCMTimeZeroSymbolLoc_ptr = *(v39[1] + 24);
      v10 = v34[3];
    }

    _Block_object_dispose(&v33, 8);
    if (!v10)
    {
      __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
      __break(1u);
    }

    v13 = *v10;
    *&buf[16] = *(v10 + 16);
    *buf = v13;
    [v7 seekToTime:buf completionHandler:{0, v33}];
    v14 = [(AVQueuePlayer *)self->_queuePlayer items];
    v15 = [v14 count];

    os_unfair_lock_lock(&self->_lock);
    v16 = self->_stateDescriptor;
    v17 = [(TLAlertQueuePlayerStateDescriptor *)v16 playingAlert];
    v18 = [v17 configuration];
    v19 = [v18 shouldRepeat];

    if ((v15 != 0) | v19 & 1)
    {
      os_unfair_lock_unlock(&self->_lock);
      if (v15)
      {
        [(TLAlertQueuePlayerController *)self _stopObservingQueuePlayer];
        v20 = [(AVQueuePlayer *)self->_queuePlayer status]== 2;
        v21 = TLLogPlayback();
        v22 = v21;
        if (v20)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [TLAlertQueuePlayerController _queuePlayer:currentItemWasUpdatedFromValue:];
          }
        }

        else
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = self;
            *&buf[12] = 2114;
            *&buf[14] = v7;
            _os_log_impl(&dword_1D9356000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: currentItemWasUpdated…: Re-inserting that same item again: %{public}@.", buf, 0x16u);
          }

          [(AVQueuePlayer *)self->_queuePlayer insertItem:v7 afterItem:0];
        }

        [(TLAlertQueuePlayerController *)self _startObservingQueuePlayer];
LABEL_33:

        goto LABEL_34;
      }
    }

    else
    {
      v23 = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor stateDescriptorForCompletedPlayback];
      stateDescriptor = self->_stateDescriptor;
      self->_stateDescriptor = v23;

      v25 = TLLogPlayback();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor debugDescription];
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v26;
        _os_log_impl(&dword_1D9356000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: currentItemWasUpdated…: Updated _stateDescriptor to %{public}@.", buf, 0x16u);
      }

      os_unfair_lock_unlock(&self->_lock);
    }

    if (v19)
    {
      isWaitingToCompleteReloadPlaybackRequest = self->_isWaitingToCompleteReloadPlaybackRequest;
      v28 = TLLogPlayback();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      if (isWaitingToCompleteReloadPlaybackRequest)
      {
        if (v29)
        {
          *buf = 138543362;
          *&buf[4] = self;
          _os_log_impl(&dword_1D9356000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: currentItemWasUpdated…: The queue was exhausted prematurely, but we are already waiting for a fallback tone to begin playing. Doing nothing.", buf, 0xCu);
        }
      }

      else
      {
        if (v29)
        {
          *buf = 138543362;
          *&buf[4] = self;
          _os_log_impl(&dword_1D9356000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: currentItemWasUpdated…: The queue was exhausted prematurely; this can happen if the ringtone asset contains corrupted audio data. Start over with default tone.", buf, 0xCu);
        }

        [(TLAlertQueuePlayerController *)self _stopObservingQueuePlayer];
        v31 = [(TLAlertQueuePlayerController *)self _fallbackToneIdentifierForStateDescriptor:v16];
        [(TLAlertQueuePlayerController *)self _reloadPlaybackForStateDescriptor:v16 withToneIdentifier:v31];
      }
    }

    else
    {
      v30 = TLLogPlayback();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = self;
        _os_log_impl(&dword_1D9356000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: currentItemWasUpdated…: Playback of non repeating tone completed by playing to end.", buf, 0xCu);
      }

      [(TLAlertQueuePlayerController *)self _stopPlaybackForStateDescriptor:v16];
      [(TLAlertQueuePlayerStateDescriptor *)v16 invokePlayingAlertCompletionHandlerWithPlaybackCompletionType:0 error:0];
    }

    goto LABEL_33;
  }

LABEL_34:

  v32 = *MEMORY[0x1E69E9840];
}

- (void)_queuePlayer:(id)a3 currentItemStatusWasUpdatedToValue:(int64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (a4 == 2 && self->_queuePlayer == v6)
  {
    v7 = [(AVQueuePlayer *)v6 currentItem];
    v8 = [v7 error];
    v9 = [v8 code];

    v10 = TLLogPlayback();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = 138544130;
      v17 = self;
      v18 = 2048;
      v19 = 2;
      v20 = 2114;
      v21 = v6;
      v22 = 2048;
      v23 = v9;
      _os_log_error_impl(&dword_1D9356000, v10, OS_LOG_TYPE_ERROR, "%{public}@: currentItemStatusWasUpdatedToValue:(%ld) for %{public}@. itemStatus == AVPlayerItemStatusFailed. currentItemErrorCode: %ld.", &v16, 0x2Au);
    }

    if (v9 != -11819)
    {
      isWaitingToCompleteReloadPlaybackRequest = self->_isWaitingToCompleteReloadPlaybackRequest;
      v12 = TLLogPlayback();
      v13 = v12;
      if (isWaitingToCompleteReloadPlaybackRequest)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138543874;
          v17 = self;
          v18 = 2048;
          v19 = 2;
          v20 = 2114;
          v21 = v6;
          _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: currentItemStatusWasUpdatedToValue:(%ld) for %{public}@. Tone could not be prepared for playback, but we are already waiting for a fallback tone to begin playing. Doing nothing.", &v16, 0x20u);
        }
      }

      else
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [TLAlertQueuePlayerController _queuePlayer:currentItemStatusWasUpdatedToValue:];
        }

        [(TLAlertQueuePlayerController *)self _stopObservingQueuePlayer];
        os_unfair_lock_lock(&self->_lock);
        v14 = self->_stateDescriptor;
        os_unfair_lock_unlock(&self->_lock);
        v13 = [(TLAlertQueuePlayerController *)self _fallbackToneIdentifierForStateDescriptor:v14];
        [(TLAlertQueuePlayerController *)self _reloadPlaybackForStateDescriptor:v14 withToneIdentifier:v13];
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (id)_clientNameForAlert:(id)a3
{
  v3 = a3;
  v4 = [v3 configuration];
  v5 = [v3 type];

  v6 = [v4 topic];
  if (([v4 isForPreview] & 1) != 0 || v5 == 1)
  {
    v7 = @"Phone";
  }

  else if (v5 == 16 && ([v6 isEqualToString:@"TLAlertTopicSystemNotificationFindMyDevice"] & 1) != 0)
  {
    v7 = @"LocatePhone";
  }

  else
  {
    v7 = @"ToneLibrary";
  }

  return v7;
}

+ (int64_t)_clientPriorityForAlert:(id)a3
{
  v3 = a3;
  v4 = [v3 configuration];
  if ([v4 isForPreview])
  {
    v5 = 0;
  }

  else if ([v3 type] == 1)
  {
    v5 = 10;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)_shouldEnsureActiveAudioSessionWhenStartingPlaybackForAlert:(id)a3
{
  v4 = a3;
  v5 = [v4 configuration];
  if ([v5 isForPreview])
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = [a1 _shouldHandleAudioSessionActivationForAlert:v4] ^ 1;
  }

  return v6;
}

+ (id)_audioCategoryForAlert:(id)a3 externalEnvironmentValues:(id)a4
{
  var0 = a4.var0;
  v5 = a3;
  v6 = [v5 configuration];
  v7 = [v5 type];

  v8 = [v6 topic];
  v9 = [v6 audioCategory];
  if (![v9 length])
  {
    if ([v6 isForPreview])
    {
      v10 = MEMORY[0x1E6958088];
      if (v7 == 13)
      {
        v10 = MEMORY[0x1E6958030];
      }

LABEL_31:
      v19 = *v10;

      v9 = v19;
      goto LABEL_32;
    }

    if (v7 > 17)
    {
      if (v7 == 18)
      {
        if ([v6 shouldForcePlayingAtUserSelectedAudioVolume])
        {
          v11 = MEMORY[0x1E6958030];
        }

        else
        {
          if (([v8 isEqualToString:@"TLAlertTopicEmergencyNonInterrupting"] & 1) == 0)
          {
            v17 = [v6 shouldIgnoreRingerSwitch];
            v11 = MEMORY[0x1E6958048];
            v12 = MEMORY[0x1E6958040];
            v13 = v17 == 0;
LABEL_26:
            if (!v13)
            {
              v11 = v12;
            }

            goto LABEL_28;
          }

          v11 = MEMORY[0x1E6958068];
        }

LABEL_28:
        v18 = *v11;

        v9 = v18;
        goto LABEL_29;
      }

      if (v7 == 22)
      {
LABEL_22:
        v11 = MEMORY[0x1E6958050];
        goto LABEL_28;
      }

      if (v7 != 28)
      {
        goto LABEL_29;
      }

LABEL_18:
      v11 = MEMORY[0x1E6958080];
      goto LABEL_28;
    }

    if (v7 != 1)
    {
      if (v7 != 16)
      {
        if (v7 != 17 || ![v8 isEqualToString:@"TLAlertTopicAppNotificationCriticalAlert"])
        {
          goto LABEL_29;
        }

        v11 = MEMORY[0x1E6958040];
        v12 = MEMORY[0x1E6958068];
        v13 = !var0;
        goto LABEL_26;
      }

      if (([v8 isEqualToString:@"TLAlertTopicSystemNotificationFindMyDevice"] & 1) == 0)
      {
LABEL_29:
        if ([v9 length])
        {
          goto LABEL_32;
        }

        v10 = MEMORY[0x1E6958030];
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    if ([v8 isEqualToString:@"TLAlertTopicIncomingCallAppNotification"])
    {
      goto LABEL_18;
    }

    v14 = [MEMORY[0x1E696AE30] processInfo];
    v15 = [v14 processName];
    v16 = [v15 isEqualToString:@"tlutil"];

    if (v16)
    {
      goto LABEL_18;
    }
  }

LABEL_32:

  return v9;
}

+ (id)_audioModeForAlert:(id)a3 audioCategory:(id)a4
{
  v5 = a3;
  if ([a4 isEqualToString:*MEMORY[0x1E6958040]] && (objc_msgSend(v5, "configuration"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "_hasCustomAudioVolume"), v6, v7))
  {
    v8 = *MEMORY[0x1E6958138];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_mediaExperienceAudioCategoryForAudioSessionCategory:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E6958030]])
  {
    v4 = @"Alarm";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6958080]])
  {
    v4 = @"Ringtone";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6958088]])
  {
    v4 = @"RingtonePreview";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6958050]])
  {
    v4 = @"FindMyPhone";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6958040]])
  {
    v4 = @"EmergencyAlert";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6958048]])
  {
    v4 = @"EmergencyAlert_Muteable";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6958068]])
  {
    v4 = @"MediaPlayback";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (float)_audioVolumeForAlert:(id)a3 audioCategory:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v8 = [v6 configuration];
  [v8 audioVolume];
  v10 = v9;
  if (([v8 _hasCustomAudioVolume] & 1) == 0 && objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E6958030]))
  {
    v17 = 1.0;
    v11 = [MEMORY[0x1E69AED10] sharedAVSystemController];
    v12 = [v11 getVolume:&v17 forCategory:@"Ringtone"];
    v13 = TLLogPlayback();
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v19 = self;
        v20 = 2114;
        v21 = v6;
        v22 = 2048;
        v23 = v17;
        _os_log_impl(&dword_1D9356000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: -_audioVolumeFor…: Did retrieve ringer volume successfully for fallback volume value for alert %{public}@: %f.", buf, 0x20u);
      }

      v10 = v17;
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v19 = self;
        v20 = 2114;
        v21 = v6;
        v22 = 2048;
        v23 = v10;
        _os_log_error_impl(&dword_1D9356000, v14, OS_LOG_TYPE_ERROR, "%{public}@: -_audioVolumeFor…: Failed to retrieve ringer volume for fallback volume value for alert %{public}@. Using default value instead: %f.", buf, 0x20u);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)_shouldBypassRingerSwitchPolicyForAlert:(id)a3
{
  v3 = a3;
  v4 = [v3 configuration];
  if (([v4 isForPreview] & 1) != 0 || objc_msgSend(v3, "type") == 18 && !objc_msgSend(v4, "shouldForcePlayingAtUserSelectedAudioVolume"))
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 shouldIgnoreRingerSwitch];
  }

  return v5;
}

+ (BOOL)_shouldHandleAudioSessionActivationForAlert:(id)a3
{
  v3 = a3;
  v4 = [v3 configuration];
  v5 = [v3 type];
  v6 = [v3 configuration];

  v7 = [v6 topic];

  if (v5 != 1 || ([v4 isForPreview] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"TLAlertTopicIncomingCallAppNotification") & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v10 = [MEMORY[0x1E696AE30] processInfo];
    v11 = [v10 processName];
    v8 = [v11 isEqualToString:@"tlutil"];
  }

  return v8 & 1;
}

- (void)_activateAudioSessionIfNeededForStateDescriptor:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v5 = [v4 alertForAudioEnvironmentSetup];
  if (!self->_isAudioSessionActive && [objc_opt_class() _shouldHandleAudioSessionActivationForAlert:v5])
  {
    audioSession = self->_audioSession;
    v16 = 0;
    v7 = [(AVAudioSession *)audioSession setActive:1 error:&v16];
    v8 = v16;
    v9 = v8;
    if (!v7 || v8)
    {
      v12 = TLLogPlayback();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = self->_audioSession;
        v15 = [v9 tl_nonRedundantDescription];
        *buf = 138544130;
        v18 = self;
        v19 = 2114;
        v20 = v14;
        v21 = 2114;
        v22 = v5;
        v23 = 2114;
        v24 = v15;
        _os_log_error_impl(&dword_1D9356000, v12, OS_LOG_TYPE_ERROR, "%{public}@: -_activateAudioSession…: Failed activating audio session %{public}@ for %{public}@ with error: %{public}@.", buf, 0x2Au);
      }
    }

    else
    {
      self->_isAudioSessionActive = 1;
      v10 = TLLogPlayback();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_audioSession;
        *buf = 138543874;
        v18 = self;
        v19 = 2114;
        v20 = v11;
        v21 = 2114;
        v22 = v5;
        _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: -_activateAudioSession…: Successfully activated audio session %{public}@ for %{public}@.", buf, 0x20u);
      }

      [(TLAlertQueuePlayerController *)self _startObservingAudioSessionInterruptionNotificationsForStateDescriptor:v4];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_deactivateAudioSessionIfNeededForStateDescriptor:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v5 = TLLogPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    isAudioSessionActive = self->_isAudioSessionActive;
    *buf = 138543874;
    v23 = self;
    v24 = 2114;
    v25 = v4;
    v26 = 1024;
    LODWORD(v27) = isAudioSessionActive;
    _os_log_impl(&dword_1D9356000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: -_deactivateAudioSessionIfNeededForStateDescriptor:(%{public}@): _isAudioSessionActive = %{BOOL}d.", buf, 0x1Cu);
  }

  v7 = [(AVAudioSession *)v4 alertForAudioEnvironmentSetup];
  if (self->_isAudioSessionActive)
  {
    if ([(TLAlertQueuePlayerController *)self _isPreventingAudioSessionDeactivation])
    {
      v8 = TLLogPlayback();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v23 = self;
        _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_deactivateAudioSession…: Skipping audio session deactivation because it is currently being prevented.", buf, 0xCu);
      }
    }

    else
    {
      [(TLAlertQueuePlayerController *)self _stopObservingAudioSessionInterruptionNotificationsForStateDescriptor:v4];
      v9 = TLLogPlayback();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        audioSession = self->_audioSession;
        *buf = 138543874;
        v23 = self;
        v24 = 2114;
        v25 = audioSession;
        v26 = 2114;
        v27 = v7;
        _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_deactivateAudioSession…: About to deactivate audio session %{public}@ for %{public}@.", buf, 0x20u);
      }

      v11 = self->_audioSession;
      v21 = 0;
      v12 = [(AVAudioSession *)v11 setActive:0 withOptions:1 error:&v21];
      v13 = v21;
      v8 = v13;
      if (!v12 || v13)
      {
        if ([v13 code]!= 560030580)
        {
          v16 = TLLogPlayback();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v19 = self->_audioSession;
            v20 = [v8 tl_nonRedundantDescription];
            *buf = 138544130;
            v23 = self;
            v24 = 2114;
            v25 = v19;
            v26 = 2114;
            v27 = v7;
            v28 = 2114;
            v29 = v20;
            _os_log_error_impl(&dword_1D9356000, v16, OS_LOG_TYPE_ERROR, "%{public}@: -_deactivateAudioSession…: Failed to deactivate audio session %{public}@ for %{public}@ with error: %{public}@.", buf, 0x2Au);
          }

          [(TLAlertQueuePlayerController *)self _startObservingAudioSessionInterruptionNotificationsForStateDescriptor:v4];
          goto LABEL_20;
        }

        self->_isAudioSessionActive = 0;
        v14 = TLLogPlayback();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v18 = self->_audioSession;
          *buf = 138543874;
          v23 = self;
          v24 = 2114;
          v25 = v18;
          v26 = 2114;
          v27 = v7;
          _os_log_error_impl(&dword_1D9356000, v14, OS_LOG_TYPE_ERROR, "%{public}@: -_deactivateAudioSession…: Failed to deactivate audio session %{public}@ for %{public}@ with error code AVAudioSessionErrorCodeIsBusy. Treating that as a successful audio session deactivation.", buf, 0x20u);
        }
      }

      else
      {
        self->_isAudioSessionActive = 0;
        v14 = TLLogPlayback();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = self->_audioSession;
          *buf = 138543874;
          v23 = self;
          v24 = 2114;
          v25 = v15;
          v26 = 2114;
          v27 = v7;
          _os_log_impl(&dword_1D9356000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: -_deactivateAudioSession…: Successfully deactivated audio session %{public}@ for %{public}@.", buf, 0x20u);
        }
      }
    }

LABEL_20:
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_startObservingAudioSessionInterruptionNotificationsForStateDescriptor:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (!self->_isObservingAudioSessionInterruptionNotification)
  {
    self->_isObservingAudioSessionInterruptionNotification = 1;
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:self selector:sel__handleAudioSessionInterruptionNotification_ name:*MEMORY[0x1E69580D8] object:self->_audioSession];

    v6 = TLLogPlayback();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 playingAlert];
      v9 = 138543618;
      v10 = self;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startObservingAudioSessionInterruptionNotifications…: Started observing interruptions for %{public}@.", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_stopObservingAudioSessionInterruptionNotificationsForStateDescriptor:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (self->_isObservingAudioSessionInterruptionNotification)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 removeObserver:self name:*MEMORY[0x1E69580D8] object:self->_audioSession];

    self->_isObservingAudioSessionInterruptionNotification = 0;
    v6 = TLLogPlayback();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 playingAlert];
      v9 = 138543618;
      v10 = self;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopObservingAudioSessionInterruptionNotifications…: Stopped observing interruptions for %{public}@.", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_handleAudioSessionInterruptionNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E6958100]];
  v7 = [v6 unsignedIntegerValue];

  v8 = [v4 userInfo];

  v9 = [v8 objectForKey:*MEMORY[0x1E69580E8]];
  v10 = [v9 unsignedIntegerValue];

  audioQueue = self->_audioQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__TLAlertQueuePlayerController__handleAudioSessionInterruptionNotification___block_invoke;
  v12[3] = &unk_1E8579E08;
  v12[4] = self;
  v12[5] = v7;
  v12[6] = v10;
  [(TLAudioQueue *)audioQueue performTaskWithBlock:v12];
}

- (void)_handleAudioSessionInterruptionOfType:(unint64_t)a3 withOptions:(unint64_t)a4
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (a3 == 1)
  {
    v6 = TLLogPlayback();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = self;
      _os_log_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleAudioSessionInterruption…: Handling interruption of type AVAudioSessionInterruptionTypeBegan.", &v15, 0xCu);
    }

    os_unfair_lock_lock(&self->_lock);
    v7 = self->_stateDescriptor;
    v8 = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor stateDescriptorForCompletedPlayback];
    stateDescriptor = self->_stateDescriptor;
    self->_stateDescriptor = v8;

    v10 = TLLogPlayback();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor debugDescription];
      v15 = 138543618;
      v16 = self;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleAudioSessionInterruption…: Updated _stateDescriptor to %{public}@.", &v15, 0x16u);
    }

    os_unfair_lock_unlock(&self->_lock);
    v12 = TLLogPlayback();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(TLAlertQueuePlayerStateDescriptor *)v7 playingAlert];
      v15 = 138543618;
      v16 = self;
      v17 = 2114;
      v18 = v13;
      _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleAudioSessionInterruption…: Resetting state and marking %{public}@ as interrupted by the system.", &v15, 0x16u);
    }

    self->_isAudioSessionActive = 0;
    [(TLAlertQueuePlayerController *)self _stopObservingAudioSessionInterruptionNotificationsForStateDescriptor:v7];
    [(TLAlertQueuePlayerController *)self _stopPlaybackForStateDescriptor:v7 withOptions:0 playerWasAlreadyPausedExternally:1];
    [(TLAlertQueuePlayerStateDescriptor *)v7 invokePlayingAlertCompletionHandlerWithPlaybackCompletionType:4 error:0];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isPreventingAudioSessionDeactivation
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  return self->_audioSessionDeactivationPreventionRequestsCount != 0;
}

- (void)_beginPreventingAudioSessionDeactivation
{
  v7 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  ++self->_audioSessionDeactivationPreventionRequestsCount;
  v3 = TLLogPlayback();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_1D9356000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: -_beginPreventingAudioSessionDeactivation.", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_endPreventingAudioSessionDeactivationForStateDescriptor:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  audioSessionDeactivationPreventionRequestsCount = self->_audioSessionDeactivationPreventionRequestsCount;
  if (!audioSessionDeactivationPreventionRequestsCount)
  {
    v6 = TLLogGeneral();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

    if (v7)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Playback/BackEnds/QueuePlayer/TLAlertQueuePlayerController.m"];
      v9 = TLLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v8 lastPathComponent];
        v11 = [MEMORY[0x1E696AF00] callStackSymbols];
        v19 = 136381443;
        v20 = "[TLAlertQueuePlayerController _endPreventingAudioSessionDeactivationForStateDescriptor:]";
        v21 = 2113;
        v22 = v10;
        v23 = 2049;
        v24 = 2224;
        v25 = 2113;
        v26 = v11;
        _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v19, 0x2Au);
      }
    }

    else
    {
      v8 = TLLogGeneral();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke_cold_1();
      }
    }

    v12 = TLLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [TLAlertQueuePlayerController _endPreventingAudioSessionDeactivationForStateDescriptor:];
    }

    audioSessionDeactivationPreventionRequestsCount = self->_audioSessionDeactivationPreventionRequestsCount;
  }

  self->_audioSessionDeactivationPreventionRequestsCount = audioSessionDeactivationPreventionRequestsCount - 1;
  v13 = TLLogPlayback();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543618;
    v20 = self;
    v21 = 2114;
    v22 = v4;
    _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: -_endPreventingAudioSessionDeactivationForStateDescriptor:(%{public}@).", &v19, 0x16u);
  }

  if (!self->_audioSessionDeactivationPreventionRequestsCount)
  {
    v14 = [v4 playingAlert];

    if (!v14)
    {
      v15 = TLLogPlayback();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543362;
        v20 = self;
        _os_log_impl(&dword_1D9356000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: -_endPreventingAudioSessionDeactivation…: No alert was playing, calling -_deactivateAudioSessionIfNeeded…", &v19, 0xCu);
      }

      isAudioSessionActive = self->_isAudioSessionActive;
      [(TLAlertQueuePlayerController *)self _deactivateAudioSessionIfNeededForStateDescriptor:v4];
      if (isAudioSessionActive && !self->_isAudioSessionActive)
      {
        [(TLAlertQueuePlayerController *)self _resetClientPriorityForStateDescriptor:v4];
      }

      else
      {
        v17 = TLLogPlayback();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138543362;
          v20 = self;
          _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: -_endPreventingAudioSessionDeactivation…: Skipping reset client priority because the audio session was NOT just deactivated.", &v19, 0xCu);
        }
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_reportAudioStartEventForStateDescriptor:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v5 = TLLogPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = self;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_1D9356000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: -_reportAudioStartEventForStateDescriptor:(%{public}@).", buf, 0x16u);
  }

  v6 = [v4 playingAlert];
  if ([v6 type] == 13)
  {
    v7 = +[TLCapabilitiesManager sharedCapabilitiesManager];
    v8 = [v7 isInternalInstall];

    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E69E4FF0]) initWithReporterID:-[AVAudioSession reporterID](self->_audioSession serviceType:{"reporterID"), 4}];
      v10 = NSStringFromTLAlertType(0xDuLL);
      v11 = [v6 toneIdentifier];
      v15[1] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:2];

      [v9 sendMessage:v12 category:8 type:1];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_startMusicPlaybackForStateDescriptor:(id)a3 mediaItem:(id)a4
{
  v48[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v8 = TLLogPlayback();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v6;
    *&buf[22] = 2114;
    v46 = v7;
    _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startMusicPlaybackForStateDescriptor:(%{public}@) mediaItem:(%{public}@).", buf, 0x20u);
  }

  if (!self->_musicPlayer)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x2050000000;
    v9 = getMPMusicPlayerApplicationControllerClass_softClass;
    v44 = getMPMusicPlayerApplicationControllerClass_softClass;
    if (!getMPMusicPlayerApplicationControllerClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getMPMusicPlayerApplicationControllerClass_block_invoke;
      v46 = &unk_1E8578D30;
      v47[0] = &v41;
      __getMPMusicPlayerApplicationControllerClass_block_invoke(buf);
      v9 = v42[3];
    }

    v10 = v9;
    _Block_object_dispose(&v41, 8);
    v11 = [v9 alloc];
    v12 = [(TLAudioQueue *)self->_audioQueue _underlyingSerialQueue];
    v13 = [v11 initWithClientIdentifier:@"ToneLibrary" queue:v12];
    musicPlayer = self->_musicPlayer;
    self->_musicPlayer = v13;

    v15 = TLLogPlayback();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_musicPlayer;
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v16;
      _os_log_impl(&dword_1D9356000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startMusicPlayback…: Created music player: %{public}@.", buf, 0x16u);
    }

    [(MPMusicPlayerApplicationController *)self->_musicPlayer setDisableAutomaticCanBeNowPlaying:1];
    v17 = TLLogPlayback();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = self->_musicPlayer;
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v18;
      _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startMusicPlayback…: Disabled automatic plumbing for becoming Now Playing app: %{public}@.", buf, 0x16u);
    }
  }

  v19 = TLLogPlayback();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = self->_musicPlayer;
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v20;
    _os_log_impl(&dword_1D9356000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startMusicPlayback…: Setting repeat mode to .all on %{public}@.", buf, 0x16u);
  }

  [(MPMusicPlayerApplicationController *)self->_musicPlayer setRepeatMode:3];
  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v28 = getMPMediaItemCollectionClass_softClass;
  v44 = getMPMediaItemCollectionClass_softClass;
  if (!getMPMediaItemCollectionClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getMPMediaItemCollectionClass_block_invoke;
    v46 = &unk_1E8578D30;
    v47[0] = &v41;
    __getMPMediaItemCollectionClass_block_invoke(buf, v21, v22, v23, v24, v25, v26, v27, v39[0]);
    v28 = v42[3];
  }

  v29 = v28;
  _Block_object_dispose(&v41, 8);
  v48[0] = v7;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
  v31 = [v28 collectionWithItems:v30];

  v32 = TLLogPlayback();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = self->_musicPlayer;
    *buf = 138544130;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v31;
    *&buf[22] = 2114;
    v46 = v7;
    LOWORD(v47[0]) = 2114;
    *(v47 + 2) = v33;
    _os_log_impl(&dword_1D9356000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startMusicPlayback…: Setting queue with collection %{public}@ [%{public}@] on %{public}@.", buf, 0x2Au);
  }

  [(MPMusicPlayerApplicationController *)self->_musicPlayer setQueueWithItemCollection:v31];
  v34 = TLLogPlayback();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = self->_musicPlayer;
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v35;
    _os_log_impl(&dword_1D9356000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startMusicPlayback…: Preparing to play music with %{public}@.", buf, 0x16u);
  }

  v36 = self->_musicPlayer;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __80__TLAlertQueuePlayerController__startMusicPlaybackForStateDescriptor_mediaItem___block_invoke;
  v39[3] = &unk_1E8579E30;
  v39[4] = self;
  v40 = v6;
  v37 = v6;
  [(MPMusicPlayerApplicationController *)v36 prepareToPlayWithCompletionHandler:v39];

  v38 = *MEMORY[0x1E69E9840];
}

- (void)_didPrepareToPlayMusicForStateDescriptor:(id)a3 withError:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v8 = TLLogPlayback();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v42 = self;
      v43 = 2114;
      v44 = v6;
      v45 = 2114;
      v46 = v7;
      _os_log_error_impl(&dword_1D9356000, v9, OS_LOG_TYPE_ERROR, "%{public}@: -_didPrepareToPlayMusicForStateDescriptor:(%{public}@) withError:(%{public}@).", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v42 = self;
    v43 = 2114;
    v44 = v6;
    _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didPrepareToPlayMusicForStateDescriptor:(%{public}@)…: Succeeded!", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  v10 = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor playingAlert];
  v11 = [v6 playingAlert];

  os_unfair_lock_unlock(&self->_lock);
  if (v10 == v11)
  {
    if (v7)
    {
      v12 = [(TLAlertQueuePlayerController *)self _fallbackToneIdentifierForStateDescriptor:v6];
      [(TLAlertQueuePlayerController *)self _reloadPlaybackForStateDescriptor:v6 withToneIdentifier:v12];
    }

    else
    {
      [(TLAlertQueuePlayerController *)self _willBeginPlayingAlertForStateDescriptor:v6 isForMusicPlayback:1];
      v12 = [v6 playingAlert];
      v13 = [objc_opt_class() _shouldVibrateForAlert:v12];
      v14 = TLLogPlayback();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v42 = self;
        v43 = 1024;
        LODWORD(v44) = v13;
        _os_log_impl(&dword_1D9356000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didPrepareToPlayMusic…: Should vibrate: %{BOOL}d.", buf, 0x12u);
      }

      if (v13)
      {
        v15 = [(TLAlertQueuePlayerController *)self _vibrationPatternDictionaryForStateDescriptor:v6 allowsArtificiallyRepeatingPropertyListRepresentation:0];
        if (v15)
        {
          v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v16 setObject:v15 forKey:*MEMORY[0x1E695A8E0]];
          [v16 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E695A8C8]];
          self->_musicPlaybackVibrationSoundID = 4095;
          v17 = TLLogPlayback();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v42 = self;
            v43 = 2048;
            v44 = 4095;
            _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didPrepareToPlayMusic…: Calling AudioServicesPlaySystemSoundWithOptions with a non-nil pattern for soundID: %lu.", buf, 0x16u);
          }

          v35 = MEMORY[0x1E69E9820];
          v36 = 3221225472;
          v37 = __83__TLAlertQueuePlayerController__didPrepareToPlayMusicForStateDescriptor_withError___block_invoke;
          v38 = &unk_1E8579828;
          v39 = self;
          v40 = 4095;
          AudioServicesPlaySystemSoundWithOptions();
        }
      }

      v18 = TLLogPlayback();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        musicPlayer = self->_musicPlayer;
        *buf = 138543618;
        v42 = self;
        v43 = 2114;
        v44 = musicPlayer;
        _os_log_impl(&dword_1D9356000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didPrepareToPlayMusic…: Calling -play on %{public}@.", buf, 0x16u);
      }

      [(MPMusicPlayerApplicationController *)self->_musicPlayer play];
      self->_isPlayingMusic = 1;
      v20 = TLLogPlayback();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v42 = self;
        v43 = 2048;
        v44 = 0x4014000000000000;
        _os_log_impl(&dword_1D9356000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didPrepareToPlayMusic…: Setting timer for %.1f seconds to check if music playback actually started.", buf, 0x16u);
      }

      v21 = [(TLAudioQueue *)self->_audioQueue _underlyingSerialQueue];
      v22 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v21);
      musicPlaybackCheckTimerSource = self->_musicPlaybackCheckTimerSource;
      self->_musicPlaybackCheckTimerSource = v22;

      v24 = self->_musicPlaybackCheckTimerSource;
      v25 = dispatch_time(0, 5000000000);
      dispatch_source_set_timer(v24, v25, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      v26 = self->_musicPlaybackCheckTimerSource;
      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __83__TLAlertQueuePlayerController__didPrepareToPlayMusicForStateDescriptor_withError___block_invoke_150;
      v32 = &unk_1E8578900;
      v33 = self;
      v27 = v6;
      v34 = v27;
      dispatch_source_set_event_handler(v26, &v29);
      dispatch_resume(self->_musicPlaybackCheckTimerSource);
      [(TLAlertQueuePlayerController *)self _reportAudioStartEventForStateDescriptor:v27, v29, v30, v31, v32, v33];
      [(TLAlertQueuePlayerController *)self _notifyPlaybackObserverForStateDescriptor:v27 isForMusicPlayback:1];
    }
  }

  else
  {
    v12 = TLLogPlayback();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v42 = self;
      v43 = 2114;
      v44 = v6;
      _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didPrepareToPlayMusic…: Playing alert for %{public}@ is no longer actually playing; aborting playback initiation.", buf, 0x16u);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __83__TLAlertQueuePlayerController__didPrepareToPlayMusicForStateDescriptor_withError___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = TLLogPlayback();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_1D9356000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didPrepareToPlayMusic…: Running completion block for AudioServicesPlaySystemSoundWithOptions for soundID: %lu.", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_ensureMusicPlaybackStartedForStateDescriptor:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = COERCE_DOUBLE(a3);
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v5 = TLLogPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = self;
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_1D9356000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: -_ensureMusicPlaybackStartedForStateDescriptor:(%{public}@)", &v12, 0x16u);
  }

  [(MPMusicPlayerApplicationController *)self->_musicPlayer currentPlaybackRate];
  v7 = v6;
  v8 = TLLogPlayback();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = self;
    v14 = 2048;
    v15 = v7;
    _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_ensureMusicPlaybackStarted…: Music playback rate: %.3f.", &v12, 0x16u);
  }

  v9 = TLLogPlayback();
  v10 = v9;
  if (v7 <= 0.00000011921)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [TLAlertQueuePlayerController _ensureMusicPlaybackStartedForStateDescriptor:];
    }

    [(TLAlertQueuePlayerController *)self _stopMusicPlayback];
    [(TLAlertQueuePlayerController *)self _didEndPlayingAlertForStateDescriptor:*&v4 isForMusicPlayback:1];
    v10 = [(TLAlertQueuePlayerController *)self _fallbackToneIdentifierForStateDescriptor:*&v4];
    [(TLAlertQueuePlayerController *)self _reloadPlaybackForStateDescriptor:*&v4 withToneIdentifier:v10];
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = self;
    _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: -_ensureMusicPlaybackStarted…: Music appears to be playing just fine!", &v12, 0xCu);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_stopMusicPlayback
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (self->_isPlayingMusic)
  {
    v3 = TLLogPlayback();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      musicPlayer = self->_musicPlayer;
      v11 = 138543618;
      v12 = self;
      v13 = 2114;
      v14 = musicPlayer;
      _os_log_impl(&dword_1D9356000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopMusicPlayback: Calling -stop on %{public}@.", &v11, 0x16u);
    }

    [(MPMusicPlayerApplicationController *)self->_musicPlayer stop];
    self->_isPlayingMusic = 0;
  }

  if (self->_musicPlaybackVibrationSoundID != kSystemSoundID_NoneTone)
  {
    v5 = TLLogPlayback();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      musicPlaybackVibrationSoundID = self->_musicPlaybackVibrationSoundID;
      v11 = 138543874;
      v12 = self;
      v13 = 2048;
      v14 = musicPlaybackVibrationSoundID;
      v15 = 1024;
      v16 = 1;
      _os_log_impl(&dword_1D9356000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopMusicPlayback: Calling AudioServicesStopSystemSound for soundID: %lu with inStopNow = %{BOOL}d.", &v11, 0x1Cu);
    }

    v7 = self->_musicPlaybackVibrationSoundID;
    AudioServicesStopSystemSound();
    self->_musicPlaybackVibrationSoundID = kSystemSoundID_NoneTone;
  }

  musicPlaybackCheckTimerSource = self->_musicPlaybackCheckTimerSource;
  if (musicPlaybackCheckTimerSource)
  {
    dispatch_source_cancel(musicPlaybackCheckTimerSource);
    v9 = self->_musicPlaybackCheckTimerSource;
    self->_musicPlaybackCheckTimerSource = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_vibrationPatternDictionaryForStateDescriptor:(id)a3 allowsArtificiallyRepeatingPropertyListRepresentation:(BOOL)a4
{
  v4 = a4;
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = TLLogPlayback();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138543874;
    v25 = self;
    v26 = 2114;
    v27 = v6;
    v28 = 1024;
    v29 = v4;
    _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: -_vibrationPatternDictionaryForStateDescriptor:(%{public}@) allowsArtificiallyRepeatingPropertyListRepresentation:(%{BOOL}d).", &v24, 0x1Cu);
  }

  v8 = [v6 playingAlert];
  v9 = [v8 configuration];
  v10 = [v9 externalVibrationPattern];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v16 = [v9 externalVibrationPatternFileURL];
    if (!v16 || (v17 = v16, [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v16], v11 = objc_claimAutoreleasedReturnValue(), v17, !v11))
    {
      v18 = [v8 vibrationIdentifier];
      if ([v18 isEqualToString:@"<none>"])
      {
        v15 = 0;
      }

      else
      {
        if (v4)
        {
          v19 = [objc_opt_class() _shouldRepeatVibrationForAlert:v8 externalEnvironmentValues:*&self->_externalEnvironmentValues];
        }

        else
        {
          v19 = 0;
        }

        v21 = +[TLVibrationManager sharedVibrationManager];
        v15 = [v21 patternForVibrationWithIdentifier:v18 repeating:v19];
      }

      v11 = 0;
      goto LABEL_23;
    }
  }

  if (v4 && [v9 shouldRepeat])
  {
    v12 = [[TLVibrationPattern alloc] initWithPropertyListRepresentation:v11];
    v13 = v12;
    if (v12)
    {
      v14 = [(TLVibrationPattern *)v12 _artificiallyRepeatingPropertyListRepresentation];
    }

    else
    {
      v20 = TLLogPlayback();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [TLAlertQueuePlayerController _vibrationPatternDictionaryForStateDescriptor:allowsArtificiallyRepeatingPropertyListRepresentation:];
      }

      v14 = v11;
    }

    v15 = v14;
  }

  else
  {
    v11 = v11;
    v15 = v11;
  }

LABEL_23:

  v22 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (BOOL)_shouldVibrateForAlert:(id)a3
{
  v3 = a3;
  if ([v3 type] == 18 && (objc_msgSend(v3, "configuration"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "shouldIgnoreRingerSwitch"), v4, (v5 & 1) != 0))
  {
    v6 = 1;
  }

  else
  {
    v7 = +[TLVibrationManager sharedVibrationManager];
    v6 = [v7 shouldVibrateForCurrentRingerSwitchState];
  }

  return v6;
}

+ (BOOL)_shouldRepeatVibrationForAlert:(id)a3 externalEnvironmentValues:(id)a4
{
  v6 = a3;
  if ([TLAlertPlaybackPolicy shouldRepeatVibrationForAlert:v6 withPlaybackBackend:0])
  {
    v7 = 1;
  }

  else
  {
    v7 = [a1 _shouldApplyStandardDelayAndAudioVolumeRampForAlert:v6 externalEnvironmentValues:*&a4];
  }

  return v7;
}

+ (BOOL)_shouldApplyAttentionAwarenessEffectsForAlert:(id)a3
{
  v3 = a3;
  v4 = [v3 configuration];
  v5 = [v4 isForPreview];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v3 type];
    v6 = 0;
    if (v7 <= 0x1C && ((1 << v7) & 0x10006002) != 0)
    {
      v6 = +[TLAttentionAwarenessObserver supportsAttenuatingTonesForAttentionDetected];
    }
  }

  return v6;
}

+ (double)_audioPlaybackInitiationDelayForAlert:(id)a3 externalEnvironmentValues:(id)a4
{
  v6 = a3;
  v7 = [v6 configuration];
  [v7 _audioPlaybackInitiationDelay];
  v9 = v8;
  if (v8 <= 0.00000011920929 && [a1 _shouldApplyStandardDelayAndAudioVolumeRampForAlert:v6 externalEnvironmentValues:*&a4])
  {
    v9 = 3.0;
  }

  return v9;
}

+ (double)_audioVolumeRampingDurationForAlert:(id)a3 externalEnvironmentValues:(id)a4 toneAssetDuration:(double)a5
{
  v8 = a3;
  v9 = [v8 configuration];
  [v9 _audioVolumeRampingDuration];
  v11 = v10;
  if (v10 <= 0.00000011920929)
  {
    v12 = [a1 _shouldApplyStandardDelayAndAudioVolumeRampForAlert:v8 externalEnvironmentValues:*&a4];
    v13 = fmin(a5 * 0.5, 2.0);
    if (v12)
    {
      v11 = v13;
    }
  }

  return v11;
}

- (id)_fallbackToneIdentifierForStateDescriptor:(id)a3
{
  audioQueue = self->_audioQueue;
  v5 = a3;
  [(TLAudioQueue *)audioQueue assertRunningOnAudioQueue];
  v6 = [v5 playingAlert];

  if (v6)
  {
    v7 = [v6 type];
    v8 = +[TLToneManager sharedToneManager];
    v9 = [v8 defaultToneIdentifierForAlertType:v7];
    v10 = [v6 configuration];
    v11 = [v10 topic];
    v12 = [v8 currentToneIdentifierForAlertType:v7 topic:v11];

    if ([(NSString *)self->_playingToneIdentifier isEqualToString:v9])
    {
      v13 = TLLogPlayback();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(TLAlertQueuePlayerController *)self _fallbackToneIdentifierForStateDescriptor:v7, v13];
      }

      v14 = 0;
    }

    else
    {
      if (-[NSString isEqualToString:](self->_playingToneIdentifier, "isEqualToString:", v12) && ([v12 isEqualToString:v9] & 1) == 0)
      {
        v15 = v9;
      }

      else
      {
        v15 = v12;
      }

      v14 = v15;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ ($96EE1C12479E9B303E9C2794B92A11A2)_externalEnvironmentValuesForAlert:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 type];
  v6 = [v4 configuration];
  v7 = [v6 topic];

  if (v5 == 17 && [v7 isEqualToString:@"TLAlertTopicAppNotificationCriticalAlert"])
  {
    v8 = TLLogPlayback();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543618;
      v21 = a1;
      v22 = 2114;
      v23 = v4;
      _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: _externalEnvironmentValuesForAlert:(%{public}@).", &v20, 0x16u);
    }

    v9 = [MEMORY[0x1E69AED10] sharedAVSystemController];
    v10 = [v9 attributeForKey:*MEMORY[0x1E69AEA38]];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v10 BOOLValue])
    {
      v11 = [v10 BOOLValue];
    }

    else
    {
      v11 = 0;
    }

    v13 = TLLogPlayback();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543874;
      v21 = a1;
      v22 = 2114;
      v23 = v4;
      v24 = 1024;
      LODWORD(v25) = v11;
      _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: _externalEnvironmentValuesForAlert:(%{public}@): isIncomingCallActive = %{BOOL}d.", &v20, 0x1Cu);
    }

    v14 = [MEMORY[0x1E69587F0] sharedSystemAudioContext];
    v15 = [v14 outputDevice];
    v16 = [v15 deviceSubType];

    v12 = v16 == 4;
    v17 = TLLogPlayback();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138544130;
      v21 = a1;
      v22 = 2114;
      v23 = v4;
      v24 = 2048;
      v25 = v16;
      v26 = 1024;
      v27 = v16 == 4;
      _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: _externalEnvironmentValuesForAlert:(%{public}@): outputDeviceSubType = %lld; usesReceiverRoute = %{BOOL}d.", &v20, 0x26u);
    }
  }

  else
  {
    v12 = 0;
    LOWORD(v11) = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return (v11 | (v12 << 8));
}

- (void)_reloadPlaybackForStateDescriptor:(uint64_t)a1 withToneIdentifier:(uint64_t *)a2 .cold.1(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_reloadPlaybackForStateDescriptor:withToneIdentifier:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_reloadPlaybackForStateDescriptor:withToneIdentifier:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_0(&dword_1D9356000, v0, v1, "%{public}@: -_reloadPlayback…: Failed to prepare tone asset for playback. Aborting.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_queuePlayer:currentItemWasUpdatedFromValue:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_queuePlayer:currentItemStatusWasUpdatedToValue:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_ensureMusicPlaybackStartedForStateDescriptor:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_0(&dword_1D9356000, v0, v1, "%{public}@: -_ensureMusicPlaybackStarted…: Music playback appears to have failed unexpectedly. Stopping music playback before starting over with fallback tone.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_vibrationPatternDictionaryForStateDescriptor:allowsArtificiallyRepeatingPropertyListRepresentation:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_0(&dword_1D9356000, v0, v1, "%{public}@: -_vibrationPatternDictionary…: Failed to wrap external vibration pattern as an instance of TLVibrationPattern. Falling back to passing the external vibration pattern through.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_fallbackToneIdentifierForStateDescriptor:(NSObject *)a3 .cold.1(uint64_t a1, unint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromTLAlertType(a2);
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_1D9356000, a3, OS_LOG_TYPE_ERROR, "%{public}@: Failed to prepare default tone for alert type %{public}@ for playback. All possible fallback cases have been exhausted. Bailing.", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end