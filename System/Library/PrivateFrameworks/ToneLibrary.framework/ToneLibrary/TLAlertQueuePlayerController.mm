@interface TLAlertQueuePlayerController
+ ($96EE1C12479E9B303E9C2794B92A11A2)_externalEnvironmentValuesForAlert:(id)alert;
+ (BOOL)_shouldApplyAttentionAwarenessEffectsForAlert:(id)alert;
+ (BOOL)_shouldBypassRingerSwitchPolicyForAlert:(id)alert;
+ (BOOL)_shouldEnsureActiveAudioSessionWhenStartingPlaybackForAlert:(id)alert;
+ (BOOL)_shouldHandleAudioSessionActivationForAlert:(id)alert;
+ (BOOL)_shouldRepeatVibrationForAlert:(id)alert externalEnvironmentValues:(id)values;
+ (BOOL)_shouldVibrateForAlert:(id)alert;
+ (double)_audioPlaybackInitiationDelayForAlert:(id)alert externalEnvironmentValues:(id)values;
+ (double)_audioVolumeRampingDurationForAlert:(id)alert externalEnvironmentValues:(id)values toneAssetDuration:(double)duration;
+ (id)_audioCategoryForAlert:(id)alert externalEnvironmentValues:(id)values;
+ (id)_audioModeForAlert:(id)alert audioCategory:(id)category;
+ (id)_clientNameForAlert:(id)alert;
+ (id)_mediaExperienceAudioCategoryForAudioSessionCategory:(id)category;
+ (int64_t)_clientPriorityForAlert:(id)alert;
- (BOOL)_canPlayToneAsset:(id)asset;
- (BOOL)_isPreventingAudioSessionDeactivation;
- (BOOL)stopPlayingAlerts:(id)alerts withOptions:(id)options playbackCompletionType:(int64_t)type;
- (NSString)description;
- (TLAlertQueuePlayerController)init;
- (float)_audioVolumeForAlert:(id)alert audioCategory:(id)category;
- (id)_fallbackToneIdentifierForStateDescriptor:(id)descriptor;
- (id)_vibrationPatternDictionaryForStateDescriptor:(id)descriptor allowsArtificiallyRepeatingPropertyListRepresentation:(BOOL)representation;
- (void)_activateAudioSessionIfNeededForStateDescriptor:(id)descriptor;
- (void)_applyAudioVolume:(float)volume forAlert:(id)alert isForMusicPlayback:(BOOL)playback phase:(int64_t)phase;
- (void)_beginPreventingAudioSessionDeactivation;
- (void)_createQueuePlayerIfNecessaryForStateDescriptor:(id)descriptor;
- (void)_deactivateAudioSessionIfNeededForStateDescriptor:(id)descriptor;
- (void)_destroyQueuePlayerForStateDescriptor:(id)descriptor;
- (void)_didPrepareToPlayMusicForStateDescriptor:(id)descriptor withError:(id)error;
- (void)_didReceiveAttentionPollingEventOfType:(int64_t)type stateDescriptor:(id)descriptor;
- (void)_endPreventingAudioSessionDeactivationForStateDescriptor:(id)descriptor;
- (void)_ensureMusicPlaybackStartedForStateDescriptor:(id)descriptor;
- (void)_handleActivationAssertionStatusChangeForAlert:(id)alert updatedStatus:(BOOL)status previousStateDescriptor:(id)descriptor updatedStateDescriptor:(id)stateDescriptor;
- (void)_handleAudioSessionInterruptionNotification:(id)notification;
- (void)_handleAudioSessionInterruptionOfType:(unint64_t)type withOptions:(unint64_t)options;
- (void)_initiateAudioPlaybackForStateDescriptor:(id)descriptor audioVolumeRampingDuration:(double)duration;
- (void)_notifyPlaybackObserverForStateDescriptor:(id)descriptor isForMusicPlayback:(BOOL)playback;
- (void)_performDelayedAudioPlaybackInitiationForStateDescriptor:(id)descriptor audioVolumeRampingDuration:(double)duration;
- (void)_playAlertForStateDescriptor:(id)descriptor previousStateDescriptor:(id)stateDescriptor;
- (void)_queuePlayer:(id)player currentItemStatusWasUpdatedToValue:(int64_t)value;
- (void)_queuePlayer:(id)player currentItemWasUpdatedFromValue:(id)value;
- (void)_reloadPlaybackForStateDescriptor:(id)descriptor withToneIdentifier:(id)identifier;
- (void)_reportAudioStartEventForStateDescriptor:(id)descriptor;
- (void)_resetClientPriorityForStateDescriptor:(id)descriptor;
- (void)_resetFlagsForSwitchingAuxiliaryAudioSession;
- (void)_startMusicPlaybackForStateDescriptor:(id)descriptor mediaItem:(id)item;
- (void)_startObservingAudioSessionInterruptionNotificationsForStateDescriptor:(id)descriptor;
- (void)_startObservingQueuePlayer;
- (void)_startPlaybackForStateDescriptor:(id)descriptor usingAssetWithLoadedProperties:(id)properties shouldConfirmAlertStillPlaying:(BOOL)playing;
- (void)_startPlaybackForStateDescriptor:(id)descriptor usingConfirmedPlayableAsset:(id)asset;
- (void)_startPlaybackForStateDescriptor:(id)descriptor usingConfirmedPlayableAsset:(id)asset hasAlreadyDetectedUserAttention:(BOOL)attention;
- (void)_stopMusicPlayback;
- (void)_stopObservingAudioSessionInterruptionNotificationsForStateDescriptor:(id)descriptor;
- (void)_stopObservingQueuePlayer;
- (void)_stopPlaybackForStateDescriptor:(id)descriptor;
- (void)_stopPlaybackForStateDescriptor:(id)descriptor withOptions:(id)options playerWasAlreadyPausedExternally:(BOOL)externally;
- (void)_stopPlayingAlertForStateDescriptor:(id)descriptor withOptions:(id)options playbackCompletionType:(int64_t)type;
- (void)dealloc;
- (void)handleActivationAssertionStatusChangeForAlert:(id)alert updatedStatus:(BOOL)status;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)playAlert:(id)alert withCompletionHandler:(id)handler;
- (void)updateAudioVolumeDynamicallyForAlert:(id)alert toValue:(float)value;
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

- (void)playAlert:(id)alert withCompletionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  handlerCopy = handler;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  playingAlert = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor playingAlert];

  if (playingAlert == alertCopy)
  {
    os_unfair_lock_unlock(&self->_lock);
    v15 = 0;
    v9 = 0;
  }

  else
  {
    v9 = self->_stateDescriptor;
    v10 = [[TLAlertQueuePlayerStateDescriptor alloc] initWithPlayingAlert:alertCopy completionHandler:handlerCopy previousStateDescriptor:v9];
    stateDescriptor = self->_stateDescriptor;
    self->_stateDescriptor = v10;

    v12 = TLLogPlayback();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_stateDescriptor;
      *buf = 138543874;
      selfCopy = self;
      v22 = 2114;
      v23 = alertCopy;
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

- (BOOL)stopPlayingAlerts:(id)alerts withOptions:(id)options playbackCompletionType:(int64_t)type
{
  v57 = *MEMORY[0x1E69E9840];
  alertsCopy = alerts;
  optionsCopy = options;
  os_unfair_lock_assert_not_owner(&self->_lock);
  if (type == 5)
  {
    v10 = TLLogGeneral();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);

    if (v11)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Playback/BackEnds/QueuePlayer/TLAlertQueuePlayerController.m"];
      v13 = TLLogGeneral();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent = [v12 lastPathComponent];
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 136381443;
        selfCopy4 = "[TLAlertQueuePlayerController stopPlayingAlerts:withOptions:playbackCompletionType:]";
        v51 = 2113;
        v52 = lastPathComponent;
        v53 = 2049;
        v54 = 260;
        v55 = 2113;
        v56 = callStackSymbols;
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
    v18 = [alertsCopy count];
    v19 = NSStringFromTLAlertPlaybackCompletionType(type);
    *buf = 138544130;
    selfCopy4 = self;
    v51 = 2048;
    v52 = v18;
    v53 = 2114;
    v54 = optionsCopy;
    v55 = 2114;
    v56 = v19;
    _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: -stopPlayingAlerts:(<%lu alerts>) options:(%{public}@) playbackCompletionType:(%{public}@).", buf, 0x2Au);
  }

  typeCopy = type;
  v39 = optionsCopy;

  os_unfair_lock_lock(&self->_lock);
  playingAlert = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor playingAlert];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v21 = alertsCopy;
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
        if (v27 == playingAlert)
        {
          if (v29)
          {
            *buf = 138543618;
            selfCopy4 = self;
            v51 = 2114;
            v52 = playingAlert;
            _os_log_impl(&dword_1D9356000, p_super, OS_LOG_TYPE_DEFAULT, "%{public}@: -stopPlayingAlerts…: %{public}@ is playing. Interrupting it.", buf, 0x16u);
          }

          p_super = &v24->super;
          v24 = self->_stateDescriptor;
        }

        else if (v29)
        {
          *buf = 138543618;
          selfCopy4 = self;
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
    stateDescriptorForCompletedPlayback = [(TLAlertQueuePlayerStateDescriptor *)stateDescriptor stateDescriptorForCompletedPlayback];
    v32 = self->_stateDescriptor;
    self->_stateDescriptor = stateDescriptorForCompletedPlayback;

    v33 = TLLogPlayback();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor debugDescription];
      *buf = 138543618;
      selfCopy4 = self;
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
    v43 = typeCopy;
    [(TLAudioQueue *)audioQueue performTaskWithBlock:v40];
  }

  v36 = *MEMORY[0x1E69E9840];
  return v24 != 0;
}

- (void)updateAudioVolumeDynamicallyForAlert:(id)alert toValue:(float)value
{
  alertCopy = alert;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  playingAlert = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor playingAlert];

  os_unfair_lock_unlock(&self->_lock);
  if (playingAlert == alertCopy)
  {
    audioQueue = self->_audioQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __77__TLAlertQueuePlayerController_updateAudioVolumeDynamicallyForAlert_toValue___block_invoke;
    v9[3] = &unk_1E8579738;
    v9[4] = self;
    v10 = alertCopy;
    valueCopy = value;
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

- (void)handleActivationAssertionStatusChangeForAlert:(id)alert updatedStatus:(BOOL)status
{
  statusCopy = status;
  v35 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v7 = self->_stateDescriptor;
  v8 = v7;
  if (statusCopy)
  {
    stateDescriptorByRelinquishingActivationAssertion = [[TLAlertQueuePlayerStateDescriptor alloc] initForAcquiringActivationAssertionWithAlertForAudioEnvironmentSetup:alertCopy previousStateDescriptor:v7];
LABEL_3:
    v10 = stateDescriptorByRelinquishingActivationAssertion;
    goto LABEL_9;
  }

  alertForAudioEnvironmentSetup = [(TLAlertQueuePlayerStateDescriptor *)v7 alertForAudioEnvironmentSetup];
  v12 = alertForAudioEnvironmentSetup;
  if (alertForAudioEnvironmentSetup == alertCopy)
  {
    isAlertActivationAssertionAcquired = [(TLAlertQueuePlayerStateDescriptor *)v8 isAlertActivationAssertionAcquired];

    if (isAlertActivationAssertionAcquired)
    {
      stateDescriptorByRelinquishingActivationAssertion = [(TLAlertQueuePlayerStateDescriptor *)v8 stateDescriptorByRelinquishingActivationAssertion];
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
    v15 = [alertCopy debugDescription];
    stateDescriptor = self->_stateDescriptor;
    *buf = 138544130;
    selfCopy = self;
    v29 = 2114;
    v30 = v15;
    v31 = 1024;
    v32 = statusCopy;
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
  v23 = alertCopy;
  v26 = statusCopy;
  v24 = v8;
  v25 = v10;
  v18 = v10;
  v19 = v8;
  v20 = alertCopy;
  [(TLAudioQueue *)audioQueue performTaskWithBlock:v22];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_playAlertForStateDescriptor:(id)descriptor previousStateDescriptor:(id)stateDescriptor
{
  v26 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  stateDescriptorCopy = stateDescriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  playingAlert = [descriptorCopy playingAlert];
  v9 = TLLogPlayback();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 138543874;
    *&v19[4] = self;
    v20 = 2114;
    v21 = descriptorCopy;
    v22 = 2114;
    v23 = stateDescriptorCopy;
    _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_playAlertForStateDescriptor:(%{public}@) previousStateDescriptor:(%{public}@).", v19, 0x20u);
  }

  if (!self->_audioSession)
  {
    goto LABEL_11;
  }

  alertForAudioEnvironmentSetup = [descriptorCopy alertForAudioEnvironmentSetup];
  v11 = [objc_opt_class() _shouldUseAuxiliaryAudioSessionForAlert:alertForAudioEnvironmentSetup];
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
      v21 = alertForAudioEnvironmentSetup;
      v22 = 2082;
      v23 = v15;
      v24 = 2114;
      v25 = audioSession;
      _os_log_impl(&dword_1D9356000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: -_playAlert: Policy for picking between auxiliary and shared audio session for %{public}@ doesn't match current state. Allowing deactivation of %{public}s audio session %{public}@.", v19, 0x2Au);
    }

LABEL_11:
    [(TLAlertQueuePlayerController *)self _stopPlaybackForStateDescriptor:stateDescriptorCopy, *v19];
    [stateDescriptorCopy invokePlayingAlertCompletionHandlerWithPlaybackCompletionType:4 error:0];
    toneIdentifier = [playingAlert toneIdentifier];
    [(TLAlertQueuePlayerController *)self _reloadPlaybackForStateDescriptor:descriptorCopy withToneIdentifier:toneIdentifier];

    goto LABEL_12;
  }

  [(TLAlertQueuePlayerController *)self _beginPreventingAudioSessionDeactivation];

  [(TLAlertQueuePlayerController *)self _stopPlaybackForStateDescriptor:stateDescriptorCopy];
  [stateDescriptorCopy invokePlayingAlertCompletionHandlerWithPlaybackCompletionType:4 error:0];
  toneIdentifier2 = [playingAlert toneIdentifier];
  [(TLAlertQueuePlayerController *)self _reloadPlaybackForStateDescriptor:descriptorCopy withToneIdentifier:toneIdentifier2];

  [(TLAlertQueuePlayerController *)self _endPreventingAudioSessionDeactivationForStateDescriptor:descriptorCopy];
LABEL_12:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_stopPlayingAlertForStateDescriptor:(id)descriptor withOptions:(id)options playbackCompletionType:(int64_t)type
{
  v35 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  optionsCopy = options;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v10 = TLLogPlayback();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromTLAlertPlaybackCompletionType(type);
    *buf = 138544130;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = descriptorCopy;
    *&buf[22] = 2114;
    UIBackgroundTaskInvalid = optionsCopy;
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
  sharedApplication = [v12 sharedApplication];
  if (sharedApplication)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    UIBackgroundTaskInvalid = getUIBackgroundTaskInvalid();
    v15 = MEMORY[0x1E696AEC0];
    playingAlert = [descriptorCopy playingAlert];
    v17 = [v15 stringWithFormat:@"Stopping playing alert: %@", playingAlert];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __103__TLAlertQueuePlayerController__stopPlayingAlertForStateDescriptor_withOptions_playbackCompletionType___block_invoke_2;
    v25[3] = &unk_1E8579D90;
    v29 = buf;
    v18 = sharedApplication;
    v26 = v18;
    selfCopy = self;
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

  [(TLAlertQueuePlayerController *)self _stopPlaybackForStateDescriptor:descriptorCopy withOptions:optionsCopy playerWasAlreadyPausedExternally:0];
  [descriptorCopy invokePlayingAlertCompletionHandlerWithPlaybackCompletionType:type error:0];
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

- (void)_handleActivationAssertionStatusChangeForAlert:(id)alert updatedStatus:(BOOL)status previousStateDescriptor:(id)descriptor updatedStateDescriptor:(id)stateDescriptor
{
  statusCopy = status;
  v31 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  descriptorCopy = descriptor;
  stateDescriptorCopy = stateDescriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (!stateDescriptorCopy && statusCopy)
  {
    v13 = TLLogGeneral();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);

    if (v14)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Playback/BackEnds/QueuePlayer/TLAlertQueuePlayerController.m"];
      v16 = TLLogGeneral();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent = [v15 lastPathComponent];
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v25 = 136381443;
        selfCopy = "[TLAlertQueuePlayerController _handleActivationAssertionStatusChangeForAlert:updatedStatus:previousStateDescriptor:updatedStateDescriptor:]";
        v27 = 2113;
        v28 = lastPathComponent;
        v29 = 2049;
        *v30 = 407;
        *&v30[8] = 2113;
        *&v30[10] = callStackSymbols;
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
    selfCopy = self;
    v27 = 2114;
    v28 = alertCopy;
    v29 = 1024;
    *v30 = statusCopy;
    *&v30[4] = 2114;
    *&v30[6] = descriptorCopy;
    *&v30[14] = 2114;
    *&v30[16] = stateDescriptorCopy;
    _os_log_impl(&dword_1D9356000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleActivationAssertionStatusChangeForAlert:(%{public}@) updatedStatus:(%{BOOL}d) previousStateDescriptor:(%{public}@) updatedStateDescriptor:(%{public}@).", &v25, 0x30u);
  }

  if (statusCopy)
  {
    if (self->_isAudioEnvironmentSetup)
    {
      [(TLAlertQueuePlayerController *)self _restoreAudioEnvironmentForStateDescriptor:descriptorCopy isForMusicPlayback:0];
    }

    [(TLAlertQueuePlayerController *)self _prepareAudioEnvironmentForStateDescriptor:stateDescriptorCopy isForMusicPlayback:0];
  }

  else
  {
    alertForAudioEnvironmentSetup = [descriptorCopy alertForAudioEnvironmentSetup];
    v22 = alertForAudioEnvironmentSetup;
    if (alertForAudioEnvironmentSetup == alertCopy)
    {
      isAlertActivationAssertionAcquired = [descriptorCopy isAlertActivationAssertionAcquired];

      if (isAlertActivationAssertionAcquired)
      {
        [(TLAlertQueuePlayerController *)self _restoreAudioEnvironmentForStateDescriptor:descriptorCopy isForMusicPlayback:0];
      }
    }

    else
    {
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (BOOL)_canPlayToneAsset:(id)asset
{
  v39 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
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
      if ([assetCopy statusOfValueForKey:v9 error:0] != 2)
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
      *&buf[14] = assetCopy;
      *&buf[22] = 2114;
      v37 = v9;
      _os_log_error_impl(&dword_1D9356000, v18, OS_LOG_TYPE_ERROR, "%{public}@: -_canPlayToneAsset:(%{public}@). Can't play tone asset because property %{public}@ is not loaded.", buf, 0x20u);
    }

    goto LABEL_24;
  }

LABEL_9:

  v26 = 0uLL;
  v27 = 0;
  if (assetCopy)
  {
    [assetCopy duration];
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
      *&buf[14] = assetCopy;
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
    *&buf[14] = assetCopy;
    _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: -_canPlayToneAsset:(%{public}@). Can play!", buf, 0x16u);
  }

  v17 = 1;
LABEL_25:

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)_reloadPlaybackForStateDescriptor:(id)descriptor withToneIdentifier:(id)identifier
{
  v58[2] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  identifierCopy = identifier;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v8 = TLLogPlayback();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = descriptorCopy;
    *&buf[22] = 2114;
    v57 = identifierCopy;
    _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_reloadPlaybackForStateDescriptor:(%{public}@) withToneIdentifier:(%{public}@).", buf, 0x20u);
  }

  playingAlert = [(TLAlertQueuePlayerStateDescriptor *)descriptorCopy playingAlert];
  if (playingAlert && [identifierCopy length])
  {
    v10 = [identifierCopy copy];
    playingToneIdentifier = self->_playingToneIdentifier;
    self->_playingToneIdentifier = v10;

    if ([(AVQueuePlayer *)self->_queuePlayer status]== 2)
    {
      v12 = TLLogPlayback();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [TLAlertQueuePlayerController _reloadPlaybackForStateDescriptor:&self->_queuePlayer withToneIdentifier:?];
      }

      [(TLAlertQueuePlayerController *)self _destroyQueuePlayerForStateDescriptor:descriptorCopy];
    }

    [(TLAlertQueuePlayerController *)self _createQueuePlayerIfNecessaryForStateDescriptor:descriptorCopy];
    toneIdentifier = [playingAlert toneIdentifier];
    v14 = [toneIdentifier isEqualToString:self->_playingToneIdentifier];

    if (v14)
    {
      configuration = [playingAlert configuration];
      externalToneFileURL = [configuration externalToneFileURL];
      if (externalToneFileURL || (v25 = [configuration externalToneMediaLibraryItemIdentifier]) == 0)
      {
        v17 = 0;
        lastObject = 0;
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
        songsQuery = [v33 songsQuery];
        [songsQuery addFilterPredicate:v32];
        items = [songsQuery items];
        lastObject = [items lastObject];

        v17 = lastObject != 0;
      }
    }

    else
    {
      v17 = 0;
      lastObject = 0;
      externalToneFileURL = 0;
    }

    if (!externalToneFileURL && !v17)
    {
      if ([(NSString *)self->_playingToneIdentifier isEqualToString:@"<none>"])
      {
        [(TLAlertQueuePlayerController *)self _startPlaybackForStateDescriptor:descriptorCopy usingAssetWithLoadedProperties:0 shouldConfirmAlertStillPlaying:0];
        externalToneFileURL = 0;
LABEL_47:

        goto LABEL_48;
      }

      v37 = +[TLToneManager sharedToneManager];
      v38 = [v37 filePathForToneIdentifier:self->_playingToneIdentifier];

      externalToneFileURL = [MEMORY[0x1E695DFF8] fileURLWithPath:v38 isDirectory:0];
    }

    if (externalToneFileURL && ([MEMORY[0x1E6988168] assetWithURL:externalToneFileURL], (v39 = objc_claimAutoreleasedReturnValue()) != 0))
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
      _propertyKeysOfInterestForToneAssets = [objc_opt_class() _propertyKeysOfInterestForToneAssets];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __85__TLAlertQueuePlayerController__reloadPlaybackForStateDescriptor_withToneIdentifier___block_invoke;
      v49[3] = &unk_1E8579038;
      v49[4] = self;
      v50 = v39;
      v51 = descriptorCopy;
      v42 = v39;
      [v42 loadValuesAsynchronouslyForKeys:_propertyKeysOfInterestForToneAssets completionHandler:v49];
    }

    else
    {
      v43 = TLLogPlayback();
      v44 = v43;
      if (lastObject)
      {
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          title = [lastObject title];
          artist = [lastObject artist];
          *buf = 138544130;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = lastObject;
          *&buf[22] = 2114;
          v57 = title;
          LOWORD(v58[0]) = 2114;
          *(v58 + 2) = artist;
          _os_log_impl(&dword_1D9356000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@: -_reloadPlayback…: Found a media item for the specified external tone information: %{public}@ (“%{public}@” from “%{public}@”).", buf, 0x2Au);
        }

        [(TLAlertQueuePlayerController *)self _startMusicPlaybackForStateDescriptor:descriptorCopy mediaItem:lastObject];
      }

      else
      {
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [TLAlertQueuePlayerController _reloadPlaybackForStateDescriptor:withToneIdentifier:];
        }

        v47 = [(TLAlertQueuePlayerController *)self _fallbackToneIdentifierForStateDescriptor:descriptorCopy];
        [(TLAlertQueuePlayerController *)self _reloadPlaybackForStateDescriptor:descriptorCopy withToneIdentifier:v47];
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
  if (stateDescriptor == descriptorCopy)
  {
    stateDescriptorForCompletedPlayback = [(TLAlertQueuePlayerStateDescriptor *)stateDescriptor stateDescriptorForCompletedPlayback];
    v22 = self->_stateDescriptor;
    self->_stateDescriptor = stateDescriptorForCompletedPlayback;

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
  [(TLAlertQueuePlayerController *)self _stopPlaybackForStateDescriptor:descriptorCopy];
  externalToneFileURL = [MEMORY[0x1E696ABC0] tl_errorWithDomain:@"TLAlertErrorDomain" description:@"Failed to prepare tone asset for playback."];
  [(TLAlertQueuePlayerStateDescriptor *)descriptorCopy invokePlayingAlertCompletionHandlerWithPlaybackCompletionType:5 error:externalToneFileURL];
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

- (void)_startPlaybackForStateDescriptor:(id)descriptor usingAssetWithLoadedProperties:(id)properties shouldConfirmAlertStillPlaying:(BOOL)playing
{
  playingCopy = playing;
  v23 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  propertiesCopy = properties;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v10 = TLLogPlayback();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138544130;
    selfCopy2 = self;
    v17 = 2114;
    v18 = descriptorCopy;
    v19 = 2114;
    v20 = propertiesCopy;
    v21 = 1024;
    v22 = playingCopy;
    _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlaybackForStateDescriptor:(%{public}@) usingAssetWithLoadedProperties:(%{public}@) shouldConfirmAlertStillPlaying:(%{BOOL}d).", &v15, 0x26u);
  }

  self->_isWaitingToCompleteReloadPlaybackRequest = 0;
  if (playingCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    playingAlert = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor playingAlert];
    playingAlert2 = [descriptorCopy playingAlert];

    os_unfair_lock_unlock(&self->_lock);
    if (playingAlert != playingAlert2)
    {
      v13 = TLLogPlayback();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543618;
        selfCopy2 = self;
        v17 = 2114;
        v18 = descriptorCopy;
        _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… usingAssetWithLoadedProperties…: Playing alert for %{public}@ is no longer actually playing; aborting playback initiation.", &v15, 0x16u);
      }

      goto LABEL_11;
    }
  }

  if (propertiesCopy && ![(TLAlertQueuePlayerController *)self _canPlayToneAsset:propertiesCopy])
  {
    v13 = [(TLAlertQueuePlayerController *)self _fallbackToneIdentifierForStateDescriptor:descriptorCopy];
    [(TLAlertQueuePlayerController *)self _reloadPlaybackForStateDescriptor:descriptorCopy withToneIdentifier:v13];
LABEL_11:

    goto LABEL_12;
  }

  [(TLAlertQueuePlayerController *)self _startPlaybackForStateDescriptor:descriptorCopy usingConfirmedPlayableAsset:propertiesCopy];
LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_startPlaybackForStateDescriptor:(id)descriptor usingConfirmedPlayableAsset:(id)asset
{
  v21 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  assetCopy = asset;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v8 = TLLogPlayback();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543874;
    selfCopy3 = self;
    v17 = 2114;
    v18 = descriptorCopy;
    v19 = 2114;
    v20 = assetCopy;
    _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlaybackForStateDescriptor:(%{public}@) usingConfirmedPlayableAsset:(%{public}@).", &v15, 0x20u);
  }

  [(TLAlertQueuePlayerController *)self _stopObservingQueuePlayer];
  v9 = TLLogPlayback();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    queuePlayer = self->_queuePlayer;
    v15 = 138543618;
    selfCopy3 = self;
    v17 = 2114;
    v18 = queuePlayer;
    _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… usingConfirmedPlayableAsset…: [_queuePlayer removeAllItems] on %{public}@ before initiating playback.", &v15, 0x16u);
  }

  [(AVQueuePlayer *)self->_queuePlayer removeAllItems];
  objc_storeStrong(&self->_toneAssetForPendingPlayingAlert, asset);
  self->_hasToneAssetForPendingPlayingAlert = 1;
  [(TLAlertQueuePlayerController *)self _willBeginPlayingAlertForStateDescriptor:descriptorCopy isForMusicPlayback:0];
  if (self->_attentionPollingToken && !self->_isAttentionAwarenessSubsystemFullyInitialized)
  {
    v13 = TLLogPlayback();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      selfCopy3 = self;
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

    [(TLAlertQueuePlayerController *)self _startPlaybackForStateDescriptor:descriptorCopy usingConfirmedPlayableAsset:assetCopy hasAlreadyDetectedUserAttention:v12];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_startPlaybackForStateDescriptor:(id)descriptor usingConfirmedPlayableAsset:(id)asset hasAlreadyDetectedUserAttention:(BOOL)attention
{
  attentionCopy = attention;
  v91[3] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  assetCopy = asset;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v7 = TLLogPlayback();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = descriptorCopy;
    *&buf[22] = 2114;
    v90 = assetCopy;
    LOWORD(v91[0]) = 1024;
    *(v91 + 2) = attentionCopy;
    _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlaybackForStateDescriptor:(%{public}@) usingConfirmedPlayableAsset:(%{public}@) hasAlreadyDetectedUserAttention:(%{BOOL}d).", buf, 0x26u);
  }

  playingAlert = [descriptorCopy playingAlert];
  if ([objc_opt_class() _shouldVibrateForAlert:playingAlert])
  {
    v8 = +[TLCapabilitiesManager sharedCapabilitiesManager];
    hasSynchronizedEmbeddedVibrationsCapability = [v8 hasSynchronizedEmbeddedVibrationsCapability];

    if (hasSynchronizedEmbeddedVibrationsCapability)
    {
      toneIdentifier = [playingAlert toneIdentifier];
      vibrationIdentifier = [playingAlert vibrationIdentifier];
      if (![vibrationIdentifier hasPrefix:@"synchronizedvibration:"] || (objc_msgSend(playingAlert, "_hasSynchronizedVibrationUnmatchedWithTone") & 1) != 0 || (objc_msgSend(toneIdentifier, "hasPrefix:", @"alarmWakeUp:") & 1) != 0)
      {
        v76 = 0;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v53 = [assetCopy URL];
          pathExtension = [v53 pathExtension];

          lowercaseString = [pathExtension lowercaseString];
          v56 = [lowercaseString isEqualToString:@"caf"];

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

  configuration = [playingAlert configuration];
  if (!assetCopy)
  {
    v19 = 0;
    goto LABEL_59;
  }

  v83 = 0uLL;
  v84 = 0;
  [assetCopy duration];
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
  [objc_opt_class() _audioVolumeRampingDurationForAlert:playingAlert externalEnvironmentValues:*&self->_externalEnvironmentValues toneAssetDuration:v17];
  v19 = v18;
  if ([configuration shouldRepeat])
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
    *(v91 + 2) = assetCopy;
    _os_log_impl(&dword_1D9356000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startPlayback… hasAlreadyDetected…: inserting %lu player items into %{public}@ for tone asset: %{public}@.", buf, 0x2Au);
  }

  if (self->_attentionPollingToken)
  {
    v24 = [(TLAttentionAwarenessEffectCoordinator *)self->_effectCoordinator audioMixForAsset:assetCopy];
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
      v26 = [MEMORY[0x1E69880B0] playerItemWithAsset:{assetCopy, v69}];
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
          v90 = assetCopy;
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

    tl_hapticTracks = [v26 tl_hapticTracks];
    attenuatedHapticPlayerItemTrack = [tl_hapticTracks attenuatedHapticPlayerItemTrack];
    hapticPlayerItemTrack = [tl_hapticTracks hapticPlayerItemTrack];
    v32 = hapticPlayerItemTrack;
    if (attenuatedHapticPlayerItemTrack)
    {
      if (attentionCopy)
      {
        [hapticPlayerItemTrack setEnabled:0];
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

        [attenuatedHapticPlayerItemTrack setEnabled:1];
        [attenuatedHapticPlayerItemTrack setMutesHaptics:0];
        v34 = TLLogPlayback();
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_53;
        }

        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = attenuatedHapticPlayerItemTrack;
        v35 = v34;
        v36 = "%{public}@: -_startPlayback… hasAlreadyDetected…: [attenuatedHapticPlayerItemTrack setEnabled:YES] and [attenuatedHapticPlayerItemTrack setMutesHaptics:NO] on %{public}@.";
      }

      else
      {
        [hapticPlayerItemTrack setEnabled:1];
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

        [attenuatedHapticPlayerItemTrack setEnabled:1];
        [attenuatedHapticPlayerItemTrack setMutesHaptics:1];
        v34 = TLLogPlayback();
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_53;
        }

        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = attenuatedHapticPlayerItemTrack;
        v35 = v34;
        v36 = "%{public}@: -_startPlayback… hasAlreadyDetected…: [attenuatedHapticPlayerItemTrack setEnabled:YES] and [attenuatedHapticPlayerItemTrack setMutesHaptics:YES] on %{public}@.";
      }

      v38 = 22;
    }

    else
    {
      [hapticPlayerItemTrack setActiveHapticChannelIndex:attentionCopy];
      v34 = TLLogPlayback();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
LABEL_53:

        goto LABEL_54;
      }

      *buf = v69;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = attentionCopy;
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
    v40 = [(TLAlertQueuePlayerController *)self _vibrationPatternDictionaryForStateDescriptor:descriptorCopy allowsArtificiallyRepeatingPropertyListRepresentation:1];
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
      vibrationIdentifier2 = [playingAlert vibrationIdentifier];
      v44 = [vibrationIdentifier2 isEqualToString:@"<none>"];

      if (v44)
      {
        vibrationPattern = [(AVQueuePlayer *)self->_queuePlayer vibrationPattern];
        v46 = vibrationPattern == 0;

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
              lastPathComponent = [v49 lastPathComponent];
              callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
              *buf = 136381443;
              *&buf[4] = "[TLAlertQueuePlayerController _startPlaybackForStateDescriptor:usingConfirmedPlayableAsset:hasAlreadyDetectedUserAttention:]";
              *&buf[12] = 2113;
              *&buf[14] = lastPathComponent;
              *&buf[22] = 2049;
              v90 = 721;
              LOWORD(v91[0]) = 2113;
              *(v91 + 2) = callStackSymbols;
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

  [objc_opt_class() _audioPlaybackInitiationDelayForAlert:playingAlert externalEnvironmentValues:*&self->_externalEnvironmentValues];
  v63 = v62;
  if (v62 <= 0.00000011920929)
  {
    [(TLAlertQueuePlayerController *)self _initiateAudioPlaybackForStateDescriptor:descriptorCopy audioVolumeRampingDuration:*&v19];
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
    v79 = descriptorCopy;
    v80[1] = v19;
    dispatch_after(v66, v67, block);

    objc_destroyWeak(v80);
    objc_destroyWeak(buf);
  }

  [(TLAlertQueuePlayerController *)self _notifyPlaybackObserverForStateDescriptor:descriptorCopy isForMusicPlayback:0];

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

- (void)_initiateAudioPlaybackForStateDescriptor:(id)descriptor audioVolumeRampingDuration:(double)duration
{
  v21 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v7 = TLLogPlayback();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543874;
    selfCopy3 = self;
    v17 = 2114;
    durationCopy2 = *&descriptorCopy;
    v19 = 2050;
    durationCopy = duration;
    _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: -_initiateAudioPlaybackForStateDescriptor:(%{public}@) audioVolumeRampingDuration:(%{public}f).", &v15, 0x20u);
  }

  v8 = TLLogPlayback();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (duration <= 0.00000011920929)
  {
    if (v9)
    {
      queuePlayer = self->_queuePlayer;
      v15 = 138543618;
      selfCopy3 = self;
      v17 = 2114;
      durationCopy2 = *&queuePlayer;
      _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_initiateAudioPlayback…: [_queuePlayer play] for %{public}@.", &v15, 0x16u);
    }

    [(AVQueuePlayer *)self->_queuePlayer play];
    [(TLAlertQueuePlayerController *)self _reportAudioStartEventForStateDescriptor:descriptorCopy];
  }

  else
  {
    if (v9)
    {
      v10 = self->_queuePlayer;
      v15 = 138543874;
      selfCopy3 = self;
      v17 = 2050;
      durationCopy2 = duration;
      v19 = 2114;
      durationCopy = *&v10;
      _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_initiateAudioPlayback…: [_queuePlayer setRate:withVolumeRampDuration:] with %{public}f for %{public}@.", &v15, 0x20u);
    }

    v11 = self->_queuePlayer;
    soft_CMTimeMakeWithSeconds(duration);
    LODWORD(v12) = 1.0;
    [(AVQueuePlayer *)v11 setRate:&v15 withVolumeRampDuration:v12];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_performDelayedAudioPlaybackInitiationForStateDescriptor:(id)descriptor audioVolumeRampingDuration:(double)duration
{
  v19 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v7 = TLLogPlayback();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543874;
    selfCopy2 = self;
    v15 = 2114;
    v16 = descriptorCopy;
    v17 = 2050;
    durationCopy = duration;
    _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: -_performDelayedAudioPlaybackInitiationForStateDescriptor:(%{public}@) audioVolumeRampingDuration:(%{public}f).", &v13, 0x20u);
  }

  os_unfair_lock_lock(&self->_lock);
  v8 = self->_stateDescriptor;
  os_unfair_lock_unlock(&self->_lock);
  playingAlert = [descriptorCopy playingAlert];
  playingAlert2 = [(TLAlertQueuePlayerStateDescriptor *)v8 playingAlert];
  if (playingAlert2 == playingAlert)
  {
    [(TLAlertQueuePlayerController *)self _initiateAudioPlaybackForStateDescriptor:v8 audioVolumeRampingDuration:duration];
  }

  else
  {
    v11 = TLLogPlayback();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543874;
      selfCopy2 = self;
      v15 = 2114;
      v16 = playingAlert2;
      v17 = 2114;
      durationCopy = *&playingAlert;
      _os_log_impl(&dword_1D9356000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: -_performDelayedAudioPlaybackInitiation…: playingAlert (%{public}@) doesn't match with alert with delayed audio playback initiation (%{public}@). Aborting.", &v13, 0x20u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_notifyPlaybackObserverForStateDescriptor:(id)descriptor isForMusicPlayback:(BOOL)playback
{
  playbackCopy = playback;
  v35 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v7 = TLLogPlayback();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v31 = 2114;
    v32 = descriptorCopy;
    v33 = 1024;
    v34 = playbackCopy;
    _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: -_notifyPlaybackObserverForStateDescriptor:(%{public}@) isForMusicPlayback:(%{BOOL}d).", buf, 0x1Cu);
  }

  playingAlert = [descriptorCopy playingAlert];
  playbackObserver = [playingAlert playbackObserver];
  if (objc_opt_respondsToSelector())
  {
    reporterID = [(AVAudioSession *)self->_audioSession reporterID];
    v11 = [(TLAlertQueuePlayerController *)self description];
    v12 = dispatch_get_global_queue(0, 0);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __93__TLAlertQueuePlayerController__notifyPlaybackObserverForStateDescriptor_isForMusicPlayback___block_invoke;
    v24[3] = &unk_1E85797D8;
    v28 = playbackCopy;
    v13 = &v25;
    v27[1] = reporterID;
    v25 = v11;
    v14 = &v26;
    v26 = playbackObserver;
    v15 = v27;
    v27[0] = playingAlert;
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
    v22 = playbackObserver;
    v15 = &v23;
    v23 = playingAlert;
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

- (void)_stopPlaybackForStateDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  [(TLAlertQueuePlayerController *)self _stopPlaybackForStateDescriptor:descriptorCopy withOptions:0 playerWasAlreadyPausedExternally:0];
}

- (void)_stopPlaybackForStateDescriptor:(id)descriptor withOptions:(id)options playerWasAlreadyPausedExternally:(BOOL)externally
{
  externallyCopy = externally;
  v39 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  optionsCopy = options;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v10 = TLLogPlayback();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 138544130;
    selfCopy8 = self;
    v33 = 2114;
    v34 = descriptorCopy;
    v35 = 2114;
    v36 = optionsCopy;
    v37 = 1024;
    v38 = externallyCopy;
    _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlaybackForStateDescriptor:(%{public}@) withOptions:(%{public}@) playerWasAlreadyPausedExternally:(%{BOOL}d).", &v31, 0x26u);
  }

  isStoppingPlayingAlert = self->_isStoppingPlayingAlert;
  self->_isStoppingPlayingAlert = 1;
  if (self->_queuePlayer)
  {
    if (externallyCopy)
    {
      v12 = TLLogPlayback();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        queuePlayer = self->_queuePlayer;
        v31 = 138543618;
        selfCopy8 = self;
        v33 = 2114;
        v34 = queuePlayer;
        _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlaybackFor…: playerWasAlreadyPausedExternally = YES for %{public}@.", &v31, 0x16u);
      }
    }

    else if (optionsCopy && ([(AVQueuePlayer *)optionsCopy fadeOutDuration], v15 = v14, v14 > 0.00000011920929))
    {
      v16 = TLLogPlayback();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = self->_queuePlayer;
        v31 = 138543874;
        selfCopy8 = self;
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
        selfCopy8 = self;
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
      selfCopy8 = self;
      v33 = 2114;
      v34 = v22;
      _os_log_impl(&dword_1D9356000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlaybackFor…: [_queuePlayer removeAllItems] for %{public}@.", &v31, 0x16u);
    }

    [(AVQueuePlayer *)self->_queuePlayer removeAllItems];
    vibrationPattern = [(AVQueuePlayer *)self->_queuePlayer vibrationPattern];

    if (vibrationPattern)
    {
      v24 = TLLogPlayback();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = self->_queuePlayer;
        v31 = 138543618;
        selfCopy8 = self;
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
      selfCopy8 = self;
      v33 = 2048;
      v34 = 0x3FE0000000000000;
      _os_log_impl(&dword_1D9356000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopMusicPlayback: Start delay of %.1fs to avoid a perceptible glitch upon restoring previous audio volume for Media Playback.", &v31, 0x16u);
    }

    [MEMORY[0x1E696AF00] sleepForTimeInterval:0.5];
    v28 = TLLogPlayback();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138543618;
      selfCopy8 = self;
      v33 = 2048;
      v34 = 0x3FE0000000000000;
      _os_log_impl(&dword_1D9356000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopMusicPlayback: Ended delay of %.1fs to avoid a perceptible glitch upon restoring previous audio volume for Media Playback.", &v31, 0x16u);
    }
  }

  [(TLAlertQueuePlayerController *)self _didEndPlayingAlertForStateDescriptor:descriptorCopy isForMusicPlayback:isPlayingMusic];
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

- (void)_resetClientPriorityForStateDescriptor:(id)descriptor
{
  v20 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  queuePlayer = self->_queuePlayer;
  if (queuePlayer)
  {
    [(AVQueuePlayer *)queuePlayer _setClientPriority:0];
    v6 = TLLogPlayback();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_queuePlayer;
      alertForAudioEnvironmentSetup = [descriptorCopy alertForAudioEnvironmentSetup];
      v10 = 138544386;
      selfCopy = self;
      v12 = 2114;
      v13 = descriptorCopy;
      v14 = 2048;
      v15 = 0;
      v16 = 2114;
      v17 = v7;
      v18 = 2114;
      v19 = alertForAudioEnvironmentSetup;
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
    selfCopy = self;
    v11 = 2114;
    v12 = audioSession;
    _os_log_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: -_resetFlagsForSwitchingAuxiliaryAudioSession. Did reset internal flags related to auxiliary audio session %{public}@.", &v9, 0x16u);
  }

LABEL_11:
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_applyAudioVolume:(float)volume forAlert:(id)alert isForMusicPlayback:(BOOL)playback phase:(int64_t)phase
{
  playbackCopy = playback;
  v48 = *MEMORY[0x1E69E9840];
  v10 = COERCE_DOUBLE(alert);
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

  if (phase > 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = off_1E8579EB8[phase];
  }

  v15 = TLLogPlayback();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544642;
    selfCopy7 = self;
    v40 = 2048;
    volumeCopy = volume;
    v42 = 2114;
    volumeCopy5 = v10;
    v44 = 1024;
    *v45 = playbackCopy;
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

    if (v26 && vabds_f32(v37, volume) <= 0.00000011921)
    {
      TLLogPlayback();
      *&v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v16 = 0.0;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        selfCopy7 = self;
        v40 = 2114;
        volumeCopy = *&v19;
        v42 = 2048;
        volumeCopy5 = volume;
        v44 = 2114;
        *v45 = v10;
        _os_log_impl(&dword_1D9356000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: -_applyAudioVolume…: Existing volume on %{public}@ for active audio category matches requested volume %f for %{public}@.", buf, 0x2Au);
      }

      v24 = 0;
    }

    else
    {
      *&v27 = volume;
      v28 = [v19 setActiveCategoryVolumeTo:v27];
      TLLogPlayback();
      *&v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544386;
        selfCopy7 = self;
        v40 = 2114;
        volumeCopy = *&v19;
        v42 = 2048;
        volumeCopy5 = volume;
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
        if (!phase)
        {
          goto LABEL_45;
        }

        goto LABEL_46;
      }

      [(AVQueuePlayer *)queuePlayer volume];
      if (vabds_f32(*&v18, volume) <= 0.00000011921)
      {
        TLLogPlayback();
        *&v19 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v35 = self->_queuePlayer;
          *buf = 138543874;
          selfCopy7 = self;
          v40 = 2114;
          volumeCopy = *&v35;
          v42 = 2048;
          volumeCopy5 = volume;
          v21 = "%{public}@: -_applyAudioVolume…: Existing volume of %{public}@ is already set to %f.";
          v22 = v19;
          v23 = 32;
          goto LABEL_37;
        }
      }

      else
      {
        *&v18 = volume;
        [(AVQueuePlayer *)self->_queuePlayer setVolume:v18];
        TLLogPlayback();
        *&v19 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = self->_queuePlayer;
          *buf = 138544130;
          selfCopy7 = self;
          v40 = 2114;
          volumeCopy = *&v20;
          v42 = 2048;
          volumeCopy5 = volume;
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

    if (playbackCopy)
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

    if (v31 && vabds_f32(v37, volume) <= 0.00000011921)
    {
      v34 = TLLogPlayback();
      v16 = 0.0;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544386;
        selfCopy7 = self;
        v40 = 2114;
        volumeCopy = v30;
        v42 = 2114;
        volumeCopy5 = *&v29;
        v44 = 2048;
        *v45 = volume;
        *&v45[8] = 2114;
        *&v45[10] = v10;
        _os_log_impl(&dword_1D9356000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: -_applyAudioVolume…: Existing volume on %{public}@ for MediaExperience audio category %{public}@ matches requested volume %f for %{public}@.", buf, 0x34u);
      }

      v24 = 0;
    }

    else
    {
      *&v32 = volume;
      v33 = [*&v30 setVolumeTo:v29 forCategory:v32];
      v34 = TLLogPlayback();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544898;
        selfCopy7 = self;
        v40 = 2114;
        volumeCopy = v30;
        v42 = 2114;
        volumeCopy5 = *&v29;
        v44 = 2048;
        *v45 = v37;
        *&v45[8] = 2048;
        *&v45[10] = volume;
        *&v45[18] = 2114;
        *&v45[20] = v10;
        v46 = 1024;
        v47 = v33;
        _os_log_impl(&dword_1D9356000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: -_applyAudioVolume…: Adjusted volume on %{public}@ for MediaExperience audio category %{public}@ from %f to %f for %{public}@; did succeed: %{BOOL}d.", buf, 0x44u);
      }
    }
  }

LABEL_44:
  if (!phase)
  {
LABEL_45:
    self->_previousAudioVolume = v16;
    self->_hasPreviousAudioVolume = v24;
  }

LABEL_46:

  v36 = *MEMORY[0x1E69E9840];
}

- (void)_didReceiveAttentionPollingEventOfType:(int64_t)type stateDescriptor:(id)descriptor
{
  v59 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (type == 1)
  {
    v45 = @"attention detected";
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (type)
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
    selfCopy5 = self;
    v53 = 2114;
    v54 = v45;
    v55 = 2114;
    v56 = v10;
    v57 = 2048;
    v58 = descriptorCopy;
    _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didReceiveAttentionPollingEventOfType:(%{public}@) stateDescriptor:(<%{public}@: %p>).", buf, 0x2Au);
  }

  self->_isAttentionAwarenessSubsystemFullyInitialized = 1;
  self->_lastAttentionPollingEventType = type;
  v11 = self->_toneAssetForPendingPlayingAlert;
  hasToneAssetForPendingPlayingAlert = self->_hasToneAssetForPendingPlayingAlert;
  toneAssetForPendingPlayingAlert = self->_toneAssetForPendingPlayingAlert;
  self->_toneAssetForPendingPlayingAlert = 0;

  self->_hasToneAssetForPendingPlayingAlert = 0;
  os_unfair_lock_lock(&self->_lock);
  v14 = self->_stateDescriptor;
  os_unfair_lock_unlock(&self->_lock);
  alertForAudioEnvironmentSetup = [(TLAlertQueuePlayerStateDescriptor *)v14 alertForAudioEnvironmentSetup];
  alertForAudioEnvironmentSetup2 = [descriptorCopy alertForAudioEnvironmentSetup];
  v17 = alertForAudioEnvironmentSetup2;
  if (alertForAudioEnvironmentSetup == alertForAudioEnvironmentSetup2)
  {
    if (type != 1)
    {
      if (!type && hasToneAssetForPendingPlayingAlert)
      {
        analytics = [(TLAlertQueuePlayerStateDescriptor *)v14 analytics];
        [analytics setDidAttenuatePlayback:0];
        date = [MEMORY[0x1E695DF00] date];
        [date timeIntervalSinceReferenceDate];
        [analytics setStartTime:?];

        [(TLAlertQueuePlayerController *)self _startPlaybackForStateDescriptor:v14 usingConfirmedPlayableAsset:v11 hasAlreadyDetectedUserAttention:0];
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    v44 = alertForAudioEnvironmentSetup2;
    effectParameters = [(TLAttentionAwarenessEffectCoordinator *)self->_effectCoordinator effectParameters];
    analytics = [(TLAlertQueuePlayerStateDescriptor *)v14 analytics];
    [analytics setDidAttenuatePlayback:1];
    date2 = [MEMORY[0x1E695DF00] date];
    [date2 timeIntervalSinceReferenceDate];
    if (hasToneAssetForPendingPlayingAlert)
    {
      [analytics setStartTime:?];

      [analytics startTime];
      [analytics setAttenuationTime:?];
      [(TLAttentionAwarenessEffectCoordinator *)self->_effectCoordinator setEffectParameters:effectParameters, 1065353216];
      [(TLAlertQueuePlayerController *)self _startPlaybackForStateDescriptor:v14 usingConfirmedPlayableAsset:v11 hasAlreadyDetectedUserAttention:1];
      v17 = v44;
      goto LABEL_11;
    }

    v40 = alertForAudioEnvironmentSetup;
    v41 = v14;
    v42 = v11;
    v43 = v7;
    v39 = analytics;
    [analytics setAttenuationTime:?];

    [(TLAttentionAwarenessEffectCoordinator *)self->_effectCoordinator setEffectParameters:effectParameters effectMixFadeDuration:1065353216, 0.75];
    items = [(AVQueuePlayer *)self->_queuePlayer items];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v25 = [items countByEnumeratingWithState:&v46 objects:v50 count:16];
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
        objc_enumerationMutation(items);
      }

      v29 = *(*(&v46 + 1) + 8 * v28);
      if (![v29 playHapticTracks])
      {
        goto LABEL_36;
      }

      tl_hapticTracks = [v29 tl_hapticTracks];
      attenuatedHapticPlayerItemTrack = [tl_hapticTracks attenuatedHapticPlayerItemTrack];
      hapticPlayerItemTrack = [tl_hapticTracks hapticPlayerItemTrack];
      v33 = hapticPlayerItemTrack;
      if (attenuatedHapticPlayerItemTrack)
      {
        break;
      }

      [hapticPlayerItemTrack setActiveHapticChannelIndex:1];
      v35 = TLLogPlayback();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        selfCopy5 = self;
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
        v26 = [items countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (!v26)
        {
LABEL_38:

          v17 = v44;
          v7 = v43;
          v14 = v41;
          v11 = v42;
          analytics = v39;
          alertForAudioEnvironmentSetup = v40;
          goto LABEL_11;
        }

        goto LABEL_23;
      }
    }

    [hapticPlayerItemTrack setMutesHaptics:1];
    v34 = TLLogPlayback();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy5 = self;
      v53 = 2114;
      v54 = v45;
      v55 = 2114;
      v56 = v33;
      _os_log_impl(&dword_1D9356000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didReceiveAttentionPollingEventOfType:(%{public}@) […]: [hapticPlayerItemTrack setMutesHaptics:YES] on %{public}@.", buf, 0x20u);
    }

    [attenuatedHapticPlayerItemTrack setMutesHaptics:0];
    v35 = TLLogPlayback();
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 138543874;
    selfCopy5 = self;
    v53 = 2114;
    v54 = v45;
    v55 = 2114;
    v56 = attenuatedHapticPlayerItemTrack;
    v36 = v35;
    v37 = "%{public}@: -_didReceiveAttentionPollingEventOfType:(%{public}@) […]: [attenuatedHapticPlayerItemTrack setMutesHaptics:NO] on %{public}@.";
    v38 = 32;
    goto LABEL_34;
  }

  analytics = TLLogPlayback();
  if (os_log_type_enabled(analytics, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy5 = self;
    v53 = 2114;
    v54 = v45;
    v55 = 2114;
    v56 = alertForAudioEnvironmentSetup;
    _os_log_impl(&dword_1D9356000, analytics, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didReceiveAttentionPollingEventOfType:(%{public}@) […]: alertForAudioEnvironmentSetup argument doesn't match with activeAlertForAudioEnvironmentSetup: %{public}@. Aborting logic to affect current playback state.", buf, 0x20u);
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

- (void)_createQueuePlayerIfNecessaryForStateDescriptor:(id)descriptor
{
  v42 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  playingAlert = [(AVQueuePlayer *)descriptorCopy playingAlert];
  if (playingAlert)
  {
    v6 = [objc_opt_class() _clientNameForAlert:playingAlert];
    v7 = [objc_opt_class() _clientPriorityForAlert:playingAlert];
    v8 = [objc_opt_class() _shouldEnsureActiveAudioSessionWhenStartingPlaybackForAlert:playingAlert];
    v9 = [objc_opt_class() _shouldUseAuxiliaryAudioSessionForAlert:playingAlert];
    v10 = TLLogPlayback();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544642;
      selfCopy6 = self;
      v33 = 2114;
      v34 = descriptorCopy;
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
    _clientName = [(AVQueuePlayer *)queuePlayer _clientName];
    _clientPriority = [(AVQueuePlayer *)self->_queuePlayer _clientPriority];
    _ensuresActiveAudioSessionWhenStartingPlayback = [(AVQueuePlayer *)self->_queuePlayer _ensuresActiveAudioSessionWhenStartingPlayback];
    audioSession = [(AVQueuePlayer *)self->_queuePlayer audioSession];

    v16 = TLLogPlayback();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544386;
      selfCopy6 = self;
      v33 = 2114;
      v34 = _clientName;
      v35 = 2048;
      v36 = _clientPriority;
      v37 = 1024;
      *v38 = _ensuresActiveAudioSessionWhenStartingPlayback;
      *&v38[4] = 1024;
      *&v38[6] = audioSession != 0;
      _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: -_createQueuePlayerIfNecessary…: Existing player is configured with clientName = %{public}@. clientPriority = %ld. ensuresActiveAudioSessionWhenStartingPlayback = %{BOOL}d. isUsingAuxiliaryAudioSession = %{BOOL}d.", buf, 0x2Cu);
    }

    if (![(AVQueuePlayer *)_clientName isEqualToString:v6]|| _clientPriority != v30)
    {
      v17 = TLLogPlayback();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = self->_queuePlayer;
        *buf = 138543618;
        selfCopy6 = self;
        v33 = 2114;
        v34 = v20;
        _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: -_createQueuePlayerIfNecessary…: Client name or priority don't match those of %{public}@. Destroying it.", buf, 0x16u);
      }

      LOBYTE(v8) = v29;
      goto LABEL_19;
    }

    LOBYTE(v8) = v29;
    if (v29 == _ensuresActiveAudioSessionWhenStartingPlayback)
    {
      if (v9 == (audioSession != 0))
      {
        goto LABEL_20;
      }

      v17 = TLLogPlayback();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v21 = self->_queuePlayer;
        *buf = 138543618;
        selfCopy6 = self;
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
        selfCopy6 = self;
        v33 = 2114;
        v34 = v18;
        v19 = "%{public}@: -_createQueuePlayerIfNecessary…: Policy for ensuring active audio session when starting playback doesn't match that of %{public}@. Destroying it.";
LABEL_18:
        _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, v19, buf, 0x16u);
      }
    }

LABEL_19:

    [(TLAlertQueuePlayerController *)self _destroyQueuePlayerForStateDescriptor:descriptorCopy];
LABEL_20:

    v7 = v30;
    if (self->_queuePlayer)
    {
LABEL_28:

      goto LABEL_29;
    }

LABEL_21:
    v22 = objc_alloc(MEMORY[0x1E6988100]);
    _underlyingSerialQueue = [(TLAudioQueue *)self->_audioQueue _underlyingSerialQueue];
    v24 = [v22 initWithDispatchQueue:_underlyingSerialQueue];
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
      selfCopy6 = self;
      v33 = 2114;
      v34 = v27;
      _os_log_impl(&dword_1D9356000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: -_createQueuePlayerIfNecessary…: Created queue player: %{public}@.", buf, 0x16u);
    }

    goto LABEL_28;
  }

LABEL_29:

  v28 = *MEMORY[0x1E69E9840];
}

- (void)_destroyQueuePlayerForStateDescriptor:(id)descriptor
{
  v17 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (self->_queuePlayer)
  {
    v5 = TLLogPlayback();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      queuePlayer = self->_queuePlayer;
      v11 = 138543874;
      selfCopy2 = self;
      v13 = 2114;
      v14 = descriptorCopy;
      v15 = 2114;
      v16 = queuePlayer;
      _os_log_impl(&dword_1D9356000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: -_destroyQueuePlayerForStateDescriptor:(%{public}@). _queuePlayer = %{public}@.", &v11, 0x20u);
    }

    if (!self->_isStoppingPlayingAlert)
    {
      [(TLAlertQueuePlayerController *)self _stopPlaybackForStateDescriptor:descriptorCopy];
    }

    v7 = TLLogPlayback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_queuePlayer;
      v11 = 138543618;
      selfCopy2 = self;
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
      selfCopy = self;
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
      selfCopy = self;
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (_TLAlertQueuePlayerCurrentItemObservationContext == context && [pathCopy isEqualToString:@"currentItem"])
  {
    v13 = [changeCopy objectForKey:*MEMORY[0x1E696A500]];
    audioQueue = self->_audioQueue;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __79__TLAlertQueuePlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v24[3] = &unk_1E8579038;
    v25 = v13;
    v26 = objectCopy;
    selfCopy = self;
    v15 = v13;
    [(TLAudioQueue *)audioQueue performTaskWithBlock:v24];

    v16 = v25;
  }

  else
  {
    if (_TLAlertQueuePlayerCurrentItemStatusObservationContext != context || ![pathCopy isEqualToString:@"currentItem.status"])
    {
      v19.receiver = self;
      v19.super_class = TLAlertQueuePlayerController;
      [(TLAlertQueuePlayerController *)&v19 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
      goto LABEL_9;
    }

    v17 = [changeCopy objectForKey:*MEMORY[0x1E696A4F0]];
    v18 = self->_audioQueue;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __79__TLAlertQueuePlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    v20[3] = &unk_1E8579038;
    v21 = v17;
    v22 = objectCopy;
    selfCopy2 = self;
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

- (void)_queuePlayer:(id)player currentItemWasUpdatedFromValue:(id)value
{
  v40 = *MEMORY[0x1E69E9840];
  playerCopy = player;
  valueCopy = value;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (self->_queuePlayer == playerCopy)
  {
    v8 = TLLogPlayback();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = valueCopy;
      *&buf[22] = 2114;
      v38 = playerCopy;
      _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: currentItemWasUpdatedFromValue:(%{public}@) for %{public}@.", buf, 0x20u);
    }

    v9 = TLLogPlayback();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = valueCopy;
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
    [valueCopy seekToTime:buf completionHandler:{0, v33}];
    items = [(AVQueuePlayer *)self->_queuePlayer items];
    v15 = [items count];

    os_unfair_lock_lock(&self->_lock);
    v16 = self->_stateDescriptor;
    playingAlert = [(TLAlertQueuePlayerStateDescriptor *)v16 playingAlert];
    configuration = [playingAlert configuration];
    shouldRepeat = [configuration shouldRepeat];

    if ((v15 != 0) | shouldRepeat & 1)
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
            *&buf[14] = valueCopy;
            _os_log_impl(&dword_1D9356000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: currentItemWasUpdated…: Re-inserting that same item again: %{public}@.", buf, 0x16u);
          }

          [(AVQueuePlayer *)self->_queuePlayer insertItem:valueCopy afterItem:0];
        }

        [(TLAlertQueuePlayerController *)self _startObservingQueuePlayer];
LABEL_33:

        goto LABEL_34;
      }
    }

    else
    {
      stateDescriptorForCompletedPlayback = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor stateDescriptorForCompletedPlayback];
      stateDescriptor = self->_stateDescriptor;
      self->_stateDescriptor = stateDescriptorForCompletedPlayback;

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

    if (shouldRepeat)
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

- (void)_queuePlayer:(id)player currentItemStatusWasUpdatedToValue:(int64_t)value
{
  v24 = *MEMORY[0x1E69E9840];
  playerCopy = player;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (value == 2 && self->_queuePlayer == playerCopy)
  {
    currentItem = [(AVQueuePlayer *)playerCopy currentItem];
    error = [currentItem error];
    code = [error code];

    v10 = TLLogPlayback();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = 138544130;
      selfCopy2 = self;
      v18 = 2048;
      v19 = 2;
      v20 = 2114;
      v21 = playerCopy;
      v22 = 2048;
      v23 = code;
      _os_log_error_impl(&dword_1D9356000, v10, OS_LOG_TYPE_ERROR, "%{public}@: currentItemStatusWasUpdatedToValue:(%ld) for %{public}@. itemStatus == AVPlayerItemStatusFailed. currentItemErrorCode: %ld.", &v16, 0x2Au);
    }

    if (code != -11819)
    {
      isWaitingToCompleteReloadPlaybackRequest = self->_isWaitingToCompleteReloadPlaybackRequest;
      v12 = TLLogPlayback();
      v13 = v12;
      if (isWaitingToCompleteReloadPlaybackRequest)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138543874;
          selfCopy2 = self;
          v18 = 2048;
          v19 = 2;
          v20 = 2114;
          v21 = playerCopy;
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

+ (id)_clientNameForAlert:(id)alert
{
  alertCopy = alert;
  configuration = [alertCopy configuration];
  type = [alertCopy type];

  topic = [configuration topic];
  if (([configuration isForPreview] & 1) != 0 || type == 1)
  {
    v7 = @"Phone";
  }

  else if (type == 16 && ([topic isEqualToString:@"TLAlertTopicSystemNotificationFindMyDevice"] & 1) != 0)
  {
    v7 = @"LocatePhone";
  }

  else
  {
    v7 = @"ToneLibrary";
  }

  return v7;
}

+ (int64_t)_clientPriorityForAlert:(id)alert
{
  alertCopy = alert;
  configuration = [alertCopy configuration];
  if ([configuration isForPreview])
  {
    v5 = 0;
  }

  else if ([alertCopy type] == 1)
  {
    v5 = 10;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)_shouldEnsureActiveAudioSessionWhenStartingPlaybackForAlert:(id)alert
{
  alertCopy = alert;
  configuration = [alertCopy configuration];
  if ([configuration isForPreview])
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = [self _shouldHandleAudioSessionActivationForAlert:alertCopy] ^ 1;
  }

  return v6;
}

+ (id)_audioCategoryForAlert:(id)alert externalEnvironmentValues:(id)values
{
  var0 = values.var0;
  alertCopy = alert;
  configuration = [alertCopy configuration];
  type = [alertCopy type];

  topic = [configuration topic];
  audioCategory = [configuration audioCategory];
  if (![audioCategory length])
  {
    if ([configuration isForPreview])
    {
      v10 = MEMORY[0x1E6958088];
      if (type == 13)
      {
        v10 = MEMORY[0x1E6958030];
      }

LABEL_31:
      v19 = *v10;

      audioCategory = v19;
      goto LABEL_32;
    }

    if (type > 17)
    {
      if (type == 18)
      {
        if ([configuration shouldForcePlayingAtUserSelectedAudioVolume])
        {
          v11 = MEMORY[0x1E6958030];
        }

        else
        {
          if (([topic isEqualToString:@"TLAlertTopicEmergencyNonInterrupting"] & 1) == 0)
          {
            shouldIgnoreRingerSwitch = [configuration shouldIgnoreRingerSwitch];
            v11 = MEMORY[0x1E6958048];
            v12 = MEMORY[0x1E6958040];
            v13 = shouldIgnoreRingerSwitch == 0;
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

        audioCategory = v18;
        goto LABEL_29;
      }

      if (type == 22)
      {
LABEL_22:
        v11 = MEMORY[0x1E6958050];
        goto LABEL_28;
      }

      if (type != 28)
      {
        goto LABEL_29;
      }

LABEL_18:
      v11 = MEMORY[0x1E6958080];
      goto LABEL_28;
    }

    if (type != 1)
    {
      if (type != 16)
      {
        if (type != 17 || ![topic isEqualToString:@"TLAlertTopicAppNotificationCriticalAlert"])
        {
          goto LABEL_29;
        }

        v11 = MEMORY[0x1E6958040];
        v12 = MEMORY[0x1E6958068];
        v13 = !var0;
        goto LABEL_26;
      }

      if (([topic isEqualToString:@"TLAlertTopicSystemNotificationFindMyDevice"] & 1) == 0)
      {
LABEL_29:
        if ([audioCategory length])
        {
          goto LABEL_32;
        }

        v10 = MEMORY[0x1E6958030];
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    if ([topic isEqualToString:@"TLAlertTopicIncomingCallAppNotification"])
    {
      goto LABEL_18;
    }

    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    v16 = [processName isEqualToString:@"tlutil"];

    if (v16)
    {
      goto LABEL_18;
    }
  }

LABEL_32:

  return audioCategory;
}

+ (id)_audioModeForAlert:(id)alert audioCategory:(id)category
{
  alertCopy = alert;
  if ([category isEqualToString:*MEMORY[0x1E6958040]] && (objc_msgSend(alertCopy, "configuration"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "_hasCustomAudioVolume"), v6, v7))
  {
    v8 = *MEMORY[0x1E6958138];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_mediaExperienceAudioCategoryForAudioSessionCategory:(id)category
{
  categoryCopy = category;
  if ([categoryCopy isEqualToString:*MEMORY[0x1E6958030]])
  {
    v4 = @"Alarm";
  }

  else if ([categoryCopy isEqualToString:*MEMORY[0x1E6958080]])
  {
    v4 = @"Ringtone";
  }

  else if ([categoryCopy isEqualToString:*MEMORY[0x1E6958088]])
  {
    v4 = @"RingtonePreview";
  }

  else if ([categoryCopy isEqualToString:*MEMORY[0x1E6958050]])
  {
    v4 = @"FindMyPhone";
  }

  else if ([categoryCopy isEqualToString:*MEMORY[0x1E6958040]])
  {
    v4 = @"EmergencyAlert";
  }

  else if ([categoryCopy isEqualToString:*MEMORY[0x1E6958048]])
  {
    v4 = @"EmergencyAlert_Muteable";
  }

  else if ([categoryCopy isEqualToString:*MEMORY[0x1E6958068]])
  {
    v4 = @"MediaPlayback";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (float)_audioVolumeForAlert:(id)alert audioCategory:(id)category
{
  v24 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  categoryCopy = category;
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  configuration = [alertCopy configuration];
  [configuration audioVolume];
  v10 = v9;
  if (([configuration _hasCustomAudioVolume] & 1) == 0 && objc_msgSend(categoryCopy, "isEqualToString:", *MEMORY[0x1E6958030]))
  {
    v17 = 1.0;
    mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
    v12 = [mEMORY[0x1E69AED10] getVolume:&v17 forCategory:@"Ringtone"];
    v13 = TLLogPlayback();
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        selfCopy2 = self;
        v20 = 2114;
        v21 = alertCopy;
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
        selfCopy2 = self;
        v20 = 2114;
        v21 = alertCopy;
        v22 = 2048;
        v23 = v10;
        _os_log_error_impl(&dword_1D9356000, v14, OS_LOG_TYPE_ERROR, "%{public}@: -_audioVolumeFor…: Failed to retrieve ringer volume for fallback volume value for alert %{public}@. Using default value instead: %f.", buf, 0x20u);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)_shouldBypassRingerSwitchPolicyForAlert:(id)alert
{
  alertCopy = alert;
  configuration = [alertCopy configuration];
  if (([configuration isForPreview] & 1) != 0 || objc_msgSend(alertCopy, "type") == 18 && !objc_msgSend(configuration, "shouldForcePlayingAtUserSelectedAudioVolume"))
  {
    shouldIgnoreRingerSwitch = 0;
  }

  else
  {
    shouldIgnoreRingerSwitch = [configuration shouldIgnoreRingerSwitch];
  }

  return shouldIgnoreRingerSwitch;
}

+ (BOOL)_shouldHandleAudioSessionActivationForAlert:(id)alert
{
  alertCopy = alert;
  configuration = [alertCopy configuration];
  type = [alertCopy type];
  configuration2 = [alertCopy configuration];

  topic = [configuration2 topic];

  if (type != 1 || ([configuration isForPreview] & 1) != 0 || (objc_msgSend(topic, "isEqualToString:", @"TLAlertTopicIncomingCallAppNotification") & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    v8 = [processName isEqualToString:@"tlutil"];
  }

  return v8 & 1;
}

- (void)_activateAudioSessionIfNeededForStateDescriptor:(id)descriptor
{
  v25 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  alertForAudioEnvironmentSetup = [descriptorCopy alertForAudioEnvironmentSetup];
  if (!self->_isAudioSessionActive && [objc_opt_class() _shouldHandleAudioSessionActivationForAlert:alertForAudioEnvironmentSetup])
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
        tl_nonRedundantDescription = [v9 tl_nonRedundantDescription];
        *buf = 138544130;
        selfCopy2 = self;
        v19 = 2114;
        v20 = v14;
        v21 = 2114;
        v22 = alertForAudioEnvironmentSetup;
        v23 = 2114;
        v24 = tl_nonRedundantDescription;
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
        selfCopy2 = self;
        v19 = 2114;
        v20 = v11;
        v21 = 2114;
        v22 = alertForAudioEnvironmentSetup;
        _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: -_activateAudioSession…: Successfully activated audio session %{public}@ for %{public}@.", buf, 0x20u);
      }

      [(TLAlertQueuePlayerController *)self _startObservingAudioSessionInterruptionNotificationsForStateDescriptor:descriptorCopy];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_deactivateAudioSessionIfNeededForStateDescriptor:(id)descriptor
{
  v30 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v5 = TLLogPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    isAudioSessionActive = self->_isAudioSessionActive;
    *buf = 138543874;
    selfCopy6 = self;
    v24 = 2114;
    v25 = descriptorCopy;
    v26 = 1024;
    LODWORD(v27) = isAudioSessionActive;
    _os_log_impl(&dword_1D9356000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: -_deactivateAudioSessionIfNeededForStateDescriptor:(%{public}@): _isAudioSessionActive = %{BOOL}d.", buf, 0x1Cu);
  }

  alertForAudioEnvironmentSetup = [(AVAudioSession *)descriptorCopy alertForAudioEnvironmentSetup];
  if (self->_isAudioSessionActive)
  {
    if ([(TLAlertQueuePlayerController *)self _isPreventingAudioSessionDeactivation])
    {
      v8 = TLLogPlayback();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy6 = self;
        _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_deactivateAudioSession…: Skipping audio session deactivation because it is currently being prevented.", buf, 0xCu);
      }
    }

    else
    {
      [(TLAlertQueuePlayerController *)self _stopObservingAudioSessionInterruptionNotificationsForStateDescriptor:descriptorCopy];
      v9 = TLLogPlayback();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        audioSession = self->_audioSession;
        *buf = 138543874;
        selfCopy6 = self;
        v24 = 2114;
        v25 = audioSession;
        v26 = 2114;
        v27 = alertForAudioEnvironmentSetup;
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
            tl_nonRedundantDescription = [v8 tl_nonRedundantDescription];
            *buf = 138544130;
            selfCopy6 = self;
            v24 = 2114;
            v25 = v19;
            v26 = 2114;
            v27 = alertForAudioEnvironmentSetup;
            v28 = 2114;
            v29 = tl_nonRedundantDescription;
            _os_log_error_impl(&dword_1D9356000, v16, OS_LOG_TYPE_ERROR, "%{public}@: -_deactivateAudioSession…: Failed to deactivate audio session %{public}@ for %{public}@ with error: %{public}@.", buf, 0x2Au);
          }

          [(TLAlertQueuePlayerController *)self _startObservingAudioSessionInterruptionNotificationsForStateDescriptor:descriptorCopy];
          goto LABEL_20;
        }

        self->_isAudioSessionActive = 0;
        v14 = TLLogPlayback();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v18 = self->_audioSession;
          *buf = 138543874;
          selfCopy6 = self;
          v24 = 2114;
          v25 = v18;
          v26 = 2114;
          v27 = alertForAudioEnvironmentSetup;
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
          selfCopy6 = self;
          v24 = 2114;
          v25 = v15;
          v26 = 2114;
          v27 = alertForAudioEnvironmentSetup;
          _os_log_impl(&dword_1D9356000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: -_deactivateAudioSession…: Successfully deactivated audio session %{public}@ for %{public}@.", buf, 0x20u);
        }
      }
    }

LABEL_20:
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_startObservingAudioSessionInterruptionNotificationsForStateDescriptor:(id)descriptor
{
  v13 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (!self->_isObservingAudioSessionInterruptionNotification)
  {
    self->_isObservingAudioSessionInterruptionNotification = 1;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__handleAudioSessionInterruptionNotification_ name:*MEMORY[0x1E69580D8] object:self->_audioSession];

    v6 = TLLogPlayback();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      playingAlert = [descriptorCopy playingAlert];
      v9 = 138543618;
      selfCopy = self;
      v11 = 2114;
      v12 = playingAlert;
      _os_log_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: -_startObservingAudioSessionInterruptionNotifications…: Started observing interruptions for %{public}@.", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_stopObservingAudioSessionInterruptionNotificationsForStateDescriptor:(id)descriptor
{
  v13 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (self->_isObservingAudioSessionInterruptionNotification)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69580D8] object:self->_audioSession];

    self->_isObservingAudioSessionInterruptionNotification = 0;
    v6 = TLLogPlayback();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      playingAlert = [descriptorCopy playingAlert];
      v9 = 138543618;
      selfCopy = self;
      v11 = 2114;
      v12 = playingAlert;
      _os_log_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopObservingAudioSessionInterruptionNotifications…: Stopped observing interruptions for %{public}@.", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_handleAudioSessionInterruptionNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x1E6958100]];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  userInfo2 = [notificationCopy userInfo];

  v9 = [userInfo2 objectForKey:*MEMORY[0x1E69580E8]];
  unsignedIntegerValue2 = [v9 unsignedIntegerValue];

  audioQueue = self->_audioQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__TLAlertQueuePlayerController__handleAudioSessionInterruptionNotification___block_invoke;
  v12[3] = &unk_1E8579E08;
  v12[4] = self;
  v12[5] = unsignedIntegerValue;
  v12[6] = unsignedIntegerValue2;
  [(TLAudioQueue *)audioQueue performTaskWithBlock:v12];
}

- (void)_handleAudioSessionInterruptionOfType:(unint64_t)type withOptions:(unint64_t)options
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  if (type == 1)
  {
    v6 = TLLogPlayback();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleAudioSessionInterruption…: Handling interruption of type AVAudioSessionInterruptionTypeBegan.", &v15, 0xCu);
    }

    os_unfair_lock_lock(&self->_lock);
    v7 = self->_stateDescriptor;
    stateDescriptorForCompletedPlayback = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor stateDescriptorForCompletedPlayback];
    stateDescriptor = self->_stateDescriptor;
    self->_stateDescriptor = stateDescriptorForCompletedPlayback;

    v10 = TLLogPlayback();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor debugDescription];
      v15 = 138543618;
      selfCopy3 = self;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleAudioSessionInterruption…: Updated _stateDescriptor to %{public}@.", &v15, 0x16u);
    }

    os_unfair_lock_unlock(&self->_lock);
    v12 = TLLogPlayback();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      playingAlert = [(TLAlertQueuePlayerStateDescriptor *)v7 playingAlert];
      v15 = 138543618;
      selfCopy3 = self;
      v17 = 2114;
      v18 = playingAlert;
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
    selfCopy = self;
    _os_log_impl(&dword_1D9356000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: -_beginPreventingAudioSessionDeactivation.", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_endPreventingAudioSessionDeactivationForStateDescriptor:(id)descriptor
{
  v27 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
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
        lastPathComponent = [v8 lastPathComponent];
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v19 = 136381443;
        selfCopy3 = "[TLAlertQueuePlayerController _endPreventingAudioSessionDeactivationForStateDescriptor:]";
        v21 = 2113;
        v22 = lastPathComponent;
        v23 = 2049;
        v24 = 2224;
        v25 = 2113;
        v26 = callStackSymbols;
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
    selfCopy3 = self;
    v21 = 2114;
    v22 = descriptorCopy;
    _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: -_endPreventingAudioSessionDeactivationForStateDescriptor:(%{public}@).", &v19, 0x16u);
  }

  if (!self->_audioSessionDeactivationPreventionRequestsCount)
  {
    playingAlert = [descriptorCopy playingAlert];

    if (!playingAlert)
    {
      v15 = TLLogPlayback();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543362;
        selfCopy3 = self;
        _os_log_impl(&dword_1D9356000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: -_endPreventingAudioSessionDeactivation…: No alert was playing, calling -_deactivateAudioSessionIfNeeded…", &v19, 0xCu);
      }

      isAudioSessionActive = self->_isAudioSessionActive;
      [(TLAlertQueuePlayerController *)self _deactivateAudioSessionIfNeededForStateDescriptor:descriptorCopy];
      if (isAudioSessionActive && !self->_isAudioSessionActive)
      {
        [(TLAlertQueuePlayerController *)self _resetClientPriorityForStateDescriptor:descriptorCopy];
      }

      else
      {
        v17 = TLLogPlayback();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138543362;
          selfCopy3 = self;
          _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: -_endPreventingAudioSessionDeactivation…: Skipping reset client priority because the audio session was NOT just deactivated.", &v19, 0xCu);
        }
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_reportAudioStartEventForStateDescriptor:(id)descriptor
{
  v20 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v5 = TLLogPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v18 = 2114;
    v19 = descriptorCopy;
    _os_log_impl(&dword_1D9356000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: -_reportAudioStartEventForStateDescriptor:(%{public}@).", buf, 0x16u);
  }

  playingAlert = [descriptorCopy playingAlert];
  if ([playingAlert type] == 13)
  {
    v7 = +[TLCapabilitiesManager sharedCapabilitiesManager];
    isInternalInstall = [v7 isInternalInstall];

    if (isInternalInstall)
    {
      v9 = [objc_alloc(MEMORY[0x1E69E4FF0]) initWithReporterID:-[AVAudioSession reporterID](self->_audioSession serviceType:{"reporterID"), 4}];
      v10 = NSStringFromTLAlertType(0xDuLL);
      toneIdentifier = [playingAlert toneIdentifier];
      v15[1] = toneIdentifier;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:2];

      [v9 sendMessage:v12 category:8 type:1];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_startMusicPlaybackForStateDescriptor:(id)descriptor mediaItem:(id)item
{
  v48[1] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  itemCopy = item;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v8 = TLLogPlayback();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = descriptorCopy;
    *&buf[22] = 2114;
    v46 = itemCopy;
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
    _underlyingSerialQueue = [(TLAudioQueue *)self->_audioQueue _underlyingSerialQueue];
    v13 = [v11 initWithClientIdentifier:@"ToneLibrary" queue:_underlyingSerialQueue];
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
  v48[0] = itemCopy;
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
    v46 = itemCopy;
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
  v40 = descriptorCopy;
  v37 = descriptorCopy;
  [(MPMusicPlayerApplicationController *)v36 prepareToPlayWithCompletionHandler:v39];

  v38 = *MEMORY[0x1E69E9840];
}

- (void)_didPrepareToPlayMusicForStateDescriptor:(id)descriptor withError:(id)error
{
  v47 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  errorCopy = error;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v8 = TLLogPlayback();
  v9 = v8;
  if (errorCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy9 = self;
      v43 = 2114;
      v44 = descriptorCopy;
      v45 = 2114;
      v46 = errorCopy;
      _os_log_error_impl(&dword_1D9356000, v9, OS_LOG_TYPE_ERROR, "%{public}@: -_didPrepareToPlayMusicForStateDescriptor:(%{public}@) withError:(%{public}@).", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy9 = self;
    v43 = 2114;
    v44 = descriptorCopy;
    _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didPrepareToPlayMusicForStateDescriptor:(%{public}@)…: Succeeded!", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  playingAlert = [(TLAlertQueuePlayerStateDescriptor *)self->_stateDescriptor playingAlert];
  playingAlert2 = [descriptorCopy playingAlert];

  os_unfair_lock_unlock(&self->_lock);
  if (playingAlert == playingAlert2)
  {
    if (errorCopy)
    {
      playingAlert3 = [(TLAlertQueuePlayerController *)self _fallbackToneIdentifierForStateDescriptor:descriptorCopy];
      [(TLAlertQueuePlayerController *)self _reloadPlaybackForStateDescriptor:descriptorCopy withToneIdentifier:playingAlert3];
    }

    else
    {
      [(TLAlertQueuePlayerController *)self _willBeginPlayingAlertForStateDescriptor:descriptorCopy isForMusicPlayback:1];
      playingAlert3 = [descriptorCopy playingAlert];
      v13 = [objc_opt_class() _shouldVibrateForAlert:playingAlert3];
      v14 = TLLogPlayback();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy9 = self;
        v43 = 1024;
        LODWORD(v44) = v13;
        _os_log_impl(&dword_1D9356000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didPrepareToPlayMusic…: Should vibrate: %{BOOL}d.", buf, 0x12u);
      }

      if (v13)
      {
        v15 = [(TLAlertQueuePlayerController *)self _vibrationPatternDictionaryForStateDescriptor:descriptorCopy allowsArtificiallyRepeatingPropertyListRepresentation:0];
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
            selfCopy9 = self;
            v43 = 2048;
            v44 = 4095;
            _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didPrepareToPlayMusic…: Calling AudioServicesPlaySystemSoundWithOptions with a non-nil pattern for soundID: %lu.", buf, 0x16u);
          }

          v35 = MEMORY[0x1E69E9820];
          v36 = 3221225472;
          v37 = __83__TLAlertQueuePlayerController__didPrepareToPlayMusicForStateDescriptor_withError___block_invoke;
          v38 = &unk_1E8579828;
          selfCopy5 = self;
          v40 = 4095;
          AudioServicesPlaySystemSoundWithOptions();
        }
      }

      v18 = TLLogPlayback();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        musicPlayer = self->_musicPlayer;
        *buf = 138543618;
        selfCopy9 = self;
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
        selfCopy9 = self;
        v43 = 2048;
        v44 = 0x4014000000000000;
        _os_log_impl(&dword_1D9356000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didPrepareToPlayMusic…: Setting timer for %.1f seconds to check if music playback actually started.", buf, 0x16u);
      }

      _underlyingSerialQueue = [(TLAudioQueue *)self->_audioQueue _underlyingSerialQueue];
      v22 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, _underlyingSerialQueue);
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
      selfCopy8 = self;
      v27 = descriptorCopy;
      v34 = v27;
      dispatch_source_set_event_handler(v26, &v29);
      dispatch_resume(self->_musicPlaybackCheckTimerSource);
      [(TLAlertQueuePlayerController *)self _reportAudioStartEventForStateDescriptor:v27, v29, v30, v31, v32, selfCopy8];
      [(TLAlertQueuePlayerController *)self _notifyPlaybackObserverForStateDescriptor:v27 isForMusicPlayback:1];
    }
  }

  else
  {
    playingAlert3 = TLLogPlayback();
    if (os_log_type_enabled(playingAlert3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy9 = self;
      v43 = 2114;
      v44 = descriptorCopy;
      _os_log_impl(&dword_1D9356000, playingAlert3, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didPrepareToPlayMusic…: Playing alert for %{public}@ is no longer actually playing; aborting playback initiation.", buf, 0x16u);
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

- (void)_ensureMusicPlaybackStartedForStateDescriptor:(id)descriptor
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = COERCE_DOUBLE(descriptor);
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  v5 = TLLogPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    selfCopy3 = self;
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
    selfCopy3 = self;
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
    selfCopy3 = self;
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
      selfCopy2 = self;
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
      selfCopy2 = self;
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

- (id)_vibrationPatternDictionaryForStateDescriptor:(id)descriptor allowsArtificiallyRepeatingPropertyListRepresentation:(BOOL)representation
{
  representationCopy = representation;
  v30 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v7 = TLLogPlayback();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138543874;
    selfCopy = self;
    v26 = 2114;
    v27 = descriptorCopy;
    v28 = 1024;
    v29 = representationCopy;
    _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: -_vibrationPatternDictionaryForStateDescriptor:(%{public}@) allowsArtificiallyRepeatingPropertyListRepresentation:(%{BOOL}d).", &v24, 0x1Cu);
  }

  playingAlert = [descriptorCopy playingAlert];
  configuration = [playingAlert configuration];
  externalVibrationPattern = [configuration externalVibrationPattern];
  if (externalVibrationPattern)
  {
    v11 = externalVibrationPattern;
  }

  else
  {
    externalVibrationPatternFileURL = [configuration externalVibrationPatternFileURL];
    if (!externalVibrationPatternFileURL || (v17 = externalVibrationPatternFileURL, [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:externalVibrationPatternFileURL], v11 = objc_claimAutoreleasedReturnValue(), v17, !v11))
    {
      vibrationIdentifier = [playingAlert vibrationIdentifier];
      if ([vibrationIdentifier isEqualToString:@"<none>"])
      {
        v15 = 0;
      }

      else
      {
        if (representationCopy)
        {
          v19 = [objc_opt_class() _shouldRepeatVibrationForAlert:playingAlert externalEnvironmentValues:*&self->_externalEnvironmentValues];
        }

        else
        {
          v19 = 0;
        }

        v21 = +[TLVibrationManager sharedVibrationManager];
        v15 = [v21 patternForVibrationWithIdentifier:vibrationIdentifier repeating:v19];
      }

      v11 = 0;
      goto LABEL_23;
    }
  }

  if (representationCopy && [configuration shouldRepeat])
  {
    v12 = [[TLVibrationPattern alloc] initWithPropertyListRepresentation:v11];
    v13 = v12;
    if (v12)
    {
      _artificiallyRepeatingPropertyListRepresentation = [(TLVibrationPattern *)v12 _artificiallyRepeatingPropertyListRepresentation];
    }

    else
    {
      v20 = TLLogPlayback();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [TLAlertQueuePlayerController _vibrationPatternDictionaryForStateDescriptor:allowsArtificiallyRepeatingPropertyListRepresentation:];
      }

      _artificiallyRepeatingPropertyListRepresentation = v11;
    }

    v15 = _artificiallyRepeatingPropertyListRepresentation;
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

+ (BOOL)_shouldVibrateForAlert:(id)alert
{
  alertCopy = alert;
  if ([alertCopy type] == 18 && (objc_msgSend(alertCopy, "configuration"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "shouldIgnoreRingerSwitch"), v4, (v5 & 1) != 0))
  {
    shouldVibrateForCurrentRingerSwitchState = 1;
  }

  else
  {
    v7 = +[TLVibrationManager sharedVibrationManager];
    shouldVibrateForCurrentRingerSwitchState = [v7 shouldVibrateForCurrentRingerSwitchState];
  }

  return shouldVibrateForCurrentRingerSwitchState;
}

+ (BOOL)_shouldRepeatVibrationForAlert:(id)alert externalEnvironmentValues:(id)values
{
  alertCopy = alert;
  if ([TLAlertPlaybackPolicy shouldRepeatVibrationForAlert:alertCopy withPlaybackBackend:0])
  {
    v7 = 1;
  }

  else
  {
    v7 = [self _shouldApplyStandardDelayAndAudioVolumeRampForAlert:alertCopy externalEnvironmentValues:*&values];
  }

  return v7;
}

+ (BOOL)_shouldApplyAttentionAwarenessEffectsForAlert:(id)alert
{
  alertCopy = alert;
  configuration = [alertCopy configuration];
  isForPreview = [configuration isForPreview];

  if (isForPreview)
  {
    v6 = 0;
  }

  else
  {
    type = [alertCopy type];
    v6 = 0;
    if (type <= 0x1C && ((1 << type) & 0x10006002) != 0)
    {
      v6 = +[TLAttentionAwarenessObserver supportsAttenuatingTonesForAttentionDetected];
    }
  }

  return v6;
}

+ (double)_audioPlaybackInitiationDelayForAlert:(id)alert externalEnvironmentValues:(id)values
{
  alertCopy = alert;
  configuration = [alertCopy configuration];
  [configuration _audioPlaybackInitiationDelay];
  v9 = v8;
  if (v8 <= 0.00000011920929 && [self _shouldApplyStandardDelayAndAudioVolumeRampForAlert:alertCopy externalEnvironmentValues:*&values])
  {
    v9 = 3.0;
  }

  return v9;
}

+ (double)_audioVolumeRampingDurationForAlert:(id)alert externalEnvironmentValues:(id)values toneAssetDuration:(double)duration
{
  alertCopy = alert;
  configuration = [alertCopy configuration];
  [configuration _audioVolumeRampingDuration];
  v11 = v10;
  if (v10 <= 0.00000011920929)
  {
    v12 = [self _shouldApplyStandardDelayAndAudioVolumeRampForAlert:alertCopy externalEnvironmentValues:*&values];
    v13 = fmin(duration * 0.5, 2.0);
    if (v12)
    {
      v11 = v13;
    }
  }

  return v11;
}

- (id)_fallbackToneIdentifierForStateDescriptor:(id)descriptor
{
  audioQueue = self->_audioQueue;
  descriptorCopy = descriptor;
  [(TLAudioQueue *)audioQueue assertRunningOnAudioQueue];
  playingAlert = [descriptorCopy playingAlert];

  if (playingAlert)
  {
    type = [playingAlert type];
    v8 = +[TLToneManager sharedToneManager];
    v9 = [v8 defaultToneIdentifierForAlertType:type];
    configuration = [playingAlert configuration];
    topic = [configuration topic];
    v12 = [v8 currentToneIdentifierForAlertType:type topic:topic];

    if ([(NSString *)self->_playingToneIdentifier isEqualToString:v9])
    {
      v13 = TLLogPlayback();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(TLAlertQueuePlayerController *)self _fallbackToneIdentifierForStateDescriptor:type, v13];
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

+ ($96EE1C12479E9B303E9C2794B92A11A2)_externalEnvironmentValuesForAlert:(id)alert
{
  v28 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  type = [alertCopy type];
  configuration = [alertCopy configuration];
  topic = [configuration topic];

  if (type == 17 && [topic isEqualToString:@"TLAlertTopicAppNotificationCriticalAlert"])
  {
    v8 = TLLogPlayback();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543618;
      selfCopy3 = self;
      v22 = 2114;
      v23 = alertCopy;
      _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: _externalEnvironmentValuesForAlert:(%{public}@).", &v20, 0x16u);
    }

    mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
    v10 = [mEMORY[0x1E69AED10] attributeForKey:*MEMORY[0x1E69AEA38]];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v10 BOOLValue])
    {
      bOOLValue = [v10 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v13 = TLLogPlayback();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543874;
      selfCopy3 = self;
      v22 = 2114;
      v23 = alertCopy;
      v24 = 1024;
      LODWORD(v25) = bOOLValue;
      _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: _externalEnvironmentValuesForAlert:(%{public}@): isIncomingCallActive = %{BOOL}d.", &v20, 0x1Cu);
    }

    mEMORY[0x1E69587F0] = [MEMORY[0x1E69587F0] sharedSystemAudioContext];
    outputDevice = [mEMORY[0x1E69587F0] outputDevice];
    deviceSubType = [outputDevice deviceSubType];

    v12 = deviceSubType == 4;
    v17 = TLLogPlayback();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138544130;
      selfCopy3 = self;
      v22 = 2114;
      v23 = alertCopy;
      v24 = 2048;
      v25 = deviceSubType;
      v26 = 1024;
      v27 = deviceSubType == 4;
      _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: _externalEnvironmentValuesForAlert:(%{public}@): outputDeviceSubType = %lld; usesReceiverRoute = %{BOOL}d.", &v20, 0x26u);
    }
  }

  else
  {
    v12 = 0;
    LOWORD(bOOLValue) = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return (bOOLValue | (v12 << 8));
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