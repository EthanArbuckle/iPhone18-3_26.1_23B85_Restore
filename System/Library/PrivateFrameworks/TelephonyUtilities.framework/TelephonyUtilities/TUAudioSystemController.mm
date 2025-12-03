@interface TUAudioSystemController
+ (BOOL)isPhoneCallAudioCategory:(id)category;
+ (TUAudioSystemController)sharedAudioSystemController;
+ (id)filteredPickableRoutesFromPickableRoutes:(id)routes;
+ (id)sharedSystemController;
+ (id)sourceIdentifierForRouteID:(id)d;
- (BOOL)isDownlinkMuted;
- (BOOL)isTTY;
- (BOOL)isUplinkMuted;
- (BOOL)otherSessionsRequestNoRingtoneInterruption;
- (BOOL)pickRoute:(id)route error:(id *)error;
- (BOOL)shouldSuppressCallUsingRoute:(id)route;
- (NSArray)bestGuessPickableRoutesForAnyCall;
- (NSDictionary)pickedRouteAttribute;
- (TUAudioSystemController)init;
- (TUAudioSystemControllerDelegate)delegate;
- (float)activeCategoryVolume;
- (id)currentlyPickedRouteIdForCategory:(id)category andMode:(id)mode;
- (id)pickableRouteWithUniqueIdentifier:(id)identifier;
- (id)pickableRoutesForActiveCall;
- (id)pickableRoutesForCategory:(id)category andMode:(id)mode;
- (void)_getPickableRoutesForCategory:(id)category mode:(id)mode onlyKnownCombinations:(BOOL)combinations completion:(id)completion;
- (void)_handleDownlinkMuteDidChangeNotification:(id)notification;
- (void)_handlePickableRoutesDidChangeNotification:(id)notification;
- (void)_handleUplinkMuteDidChangeNotification:(id)notification;
- (void)_handleVolumeDidChangeNotification:(id)notification;
- (void)_loadCurrentPickableRoutesWithCompletion:(id)completion;
- (void)_mediaServicesWereReset:(id)reset;
- (void)_subscribeToNotificationAttributes;
- (void)_updateCachedState;
- (void)activeCategoryVolume;
- (void)clearUplinkMutedCache;
- (void)dealloc;
- (void)isDownlinkMuted;
- (void)isTTY;
- (void)isUplinkMuted;
- (void)otherSessionsRequestNoRingtoneInterruption;
- (void)setActiveCategoryVolume:(float)volume;
- (void)setDownlinkMuted:(BOOL)muted;
- (void)switchBluetoothAudioFormats;
- (void)triggerEndInterruptionForAudioSessionID:(id)d;
@end

@implementation TUAudioSystemController

- (BOOL)isTTY
{
  [(TUAudioController *)self _acquireLock];
  [(TUAudioController *)self _requestUpdatedValueWithBlock:&__block_literal_global_72_0 object:&self->_isTTYCached isRequestingPointer:&self->_isRequestingTTY forceNewRequest:0 scheduleTimePointer:&self->_lastTTYRequestScheduleTime notificationString:@"TUAudioSystemTTYChangedNotification" queue:self->_ttyQueue];
  bOOLValue = [(NSNumber *)self->_isTTYCached BOOLValue];
  [(TUAudioController *)self _releaseLock];
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [TUAudioSystemController isTTY];
  }

  return bOOLValue;
}

- (TUAudioSystemControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

id __32__TUAudioSystemController_isTTY__block_invoke()
{
  v0 = +[TUAudioSystemController sharedSystemController];
  v6 = 0;
  [v0 getActiveCategoryVolume:0 andName:&v6];
  v1 = v6;

  v2 = MEMORY[0x1E696AD98];
  v3 = [v1 isEqualToString:@"TTYCall"];

  v4 = [v2 numberWithBool:v3];

  return v4;
}

+ (id)sharedSystemController
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v2 = getAVSystemControllerClass_softClass;
  v11 = getAVSystemControllerClass_softClass;
  if (!getAVSystemControllerClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getAVSystemControllerClass_block_invoke;
    v7[3] = &unk_1E7424CD8;
    v7[4] = &v8;
    __getAVSystemControllerClass_block_invoke(v7);
    v2 = v9[3];
  }

  v3 = v2;
  _Block_object_dispose(&v8, 8);
  sharedAVSystemController = [v2 sharedAVSystemController];
  if (!sharedAVSystemController)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "[WARN] +[AVSystemController sharedAVSystemController] returned nil value", v7, 2u);
    }
  }

  return sharedAVSystemController;
}

- (NSArray)bestGuessPickableRoutesForAnyCall
{
  if (+[TUCallCapabilities supportsPrimaryCalling])
  {
    [(TUAudioSystemController *)self _pickableRoutesForPhoneCallWithForceNewRequest:0];
  }

  else
  {
    [(TUAudioSystemController *)self _pickableRoutesForPlayAndRecordVoiceWithForceNewRequest:0];
  }
  v3 = ;

  return v3;
}

+ (TUAudioSystemController)sharedAudioSystemController
{
  if (sharedAudioSystemController_onceToken != -1)
  {
    +[TUAudioSystemController sharedAudioSystemController];
  }

  v3 = __sharedController;

  return v3;
}

- (BOOL)isDownlinkMuted
{
  [(TUAudioController *)self _acquireLock];
  [(TUAudioController *)self _requestUpdatedValueWithBlock:&__block_literal_global_80 object:&self->_isDownlinkMutedCached isRequestingPointer:&self->_isRequestingDownlinkMuted forceNewRequest:0 scheduleTimePointer:&self->_lastDownlinkMutedRequestScheduleTime notificationString:@"TUAudioSystemDownlinkMuteStatusChangedNotification" queue:self->_downlinkMutedQueue];
  bOOLValue = [(NSNumber *)self->_isDownlinkMutedCached BOOLValue];
  [(TUAudioController *)self _releaseLock];
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [TUAudioSystemController isDownlinkMuted];
  }

  return bOOLValue;
}

id __42__TUAudioSystemController_isDownlinkMuted__block_invoke()
{
  v0 = +[TUAudioSystemController sharedSystemController];
  v1 = getAVSystemController_DownlinkMuteAttribute();
  v2 = [v0 attributeForKey:v1];

  return v2;
}

uint64_t __54__TUAudioSystemController_sharedAudioSystemController__block_invoke()
{
  __sharedController = objc_alloc_init(TUAudioSystemController);

  return MEMORY[0x1EEE66BB8]();
}

- (TUAudioSystemController)init
{
  v40 = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = TUAudioSystemController;
  v2 = [(TUAudioController *)&v37 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.TelephonyUtilities.TUAudioSystemController.UplinkMutedQueue", 0);
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    v5 = dispatch_queue_create("com.apple.TelephonyUtilities.TUAudioSystemController.DownlinkMutedQueue", 0);
    v6 = *(v2 + 3);
    *(v2 + 3) = v5;

    v7 = dispatch_queue_create("com.apple.TelephonyUtilities.TUAudioSystemController.TTYQueue", 0);
    v8 = *(v2 + 4);
    *(v2 + 4) = v7;

    v9 = dispatch_queue_create("com.apple.TelephonyUtilities.TUAudioSystemController.PickableRoutesQueue", 0);
    v10 = *(v2 + 5);
    *(v2 + 5) = v9;

    v11 = *(v2 + 2);
    v12 = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v11, v12);

    dispatch_set_target_queue(*(v2 + 3), v12);
    dispatch_set_target_queue(*(v2 + 4), v12);

    dispatch_set_target_queue(*(v2 + 5), v12);
    v13 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v14 = *(v2 + 6);
    *(v2 + 6) = v13;

    v15 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v16 = *(v2 + 7);
    *(v2 + 7) = v15;

    v17 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v18 = *(v2 + 8);
    *(v2 + 8) = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v20 = *(v2 + 9);
    *(v2 + 9) = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v22 = *(v2 + 10);
    *(v2 + 10) = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v24 = *(v2 + 11);
    *(v2 + 11) = v23;

    v25 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v26 = *(v2 + 12);
    *(v2 + 12) = v25;

    v27 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v28 = *(v2 + 13);
    *(v2 + 13) = v27;

    v29 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v30 = *(v2 + 14);
    *(v2 + 14) = v29;

    *(v2 + 128) = 0;
    *(v2 + 129) = 0;
    *(v2 + 130) = 0;
    *(v2 + 131) = 0;
    *(v2 + 132) = 0;
    *(v2 + 133) = 0;
    *(v2 + 134) = 0;
    *(v2 + 135) = 0;
    *(v2 + 136) = 0;
    *(v2 + 18) = 0;
    *(v2 + 19) = 0;
    *(v2 + 20) = 0;
    *(v2 + 21) = 0;
    *(v2 + 22) = 0;
    *(v2 + 23) = 0;
    *(v2 + 24) = 0;
    *(v2 + 25) = 0;
    *(v2 + 26) = 0;
    v31 = objc_alloc_init(TUFeatureFlags);
    v32 = *(v2 + 27);
    *(v2 + 27) = v31;

    [v2 _subscribeToNotificationAttributes];
    if (init__pred__AVAudioSessionMediaServicesWereResetNotification != -1)
    {
      [TUAudioSystemController init];
    }

    if (init__AVAudioSessionMediaServicesWereResetNotification)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v2 selector:sel__mediaServicesWereReset_ name:init__AVAudioSessionMediaServicesWereResetNotification object:0];
    }

    else
    {
      defaultCenter = TUDefaultLog();
      if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = @"AVAudioSessionMediaServicesWereResetNotification";
        _os_log_impl(&dword_1956FD000, defaultCenter, OS_LOG_TYPE_DEFAULT, "[WARN] Could not weak link notification string '%@'. Not observing notifications for it.", buf, 0xCu);
      }
    }

    v34 = dispatch_get_global_queue(21, 0);
    dispatch_async(v34, &__block_literal_global_41_0);

    [v2 _updateCachedState];
  }

  v35 = *MEMORY[0x1E69E9840];
  return v2;
}

void __31__TUAudioSystemController_init__block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&init__AVAudioSessionMediaServicesWereResetNotification, v1);
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TUAudioSystemController;
  [(TUAudioSystemController *)&v4 dealloc];
}

- (void)_subscribeToNotificationAttributes
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_SubscribeToNotificationsAttribute(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"TUAudioSystemController.m" lineNumber:44 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_updateCachedState
{
  v3 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__TUAudioSystemController__updateCachedState__block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_async(v3, block);
}

id __45__TUAudioSystemController__updateCachedState__block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 216) sessionBasedMutingEnabled] & 1) == 0)
  {
    [*(a1 + 32) isUplinkMuted];
  }

  [*(a1 + 32) isDownlinkMuted];
  [*(a1 + 32) isTTY];
  v2 = [*(a1 + 32) pickableRoutesForTTY];
  v3 = [*(a1 + 32) _pickableRoutesForPhoneCallWithForceNewRequest:0];
  v4 = [*(a1 + 32) _pickableRoutesForPlayAndRecordVideoWithForceNewRequest:0];
  v5 = [*(a1 + 32) _pickableRoutesForPlayAndRecordVoiceWithForceNewRequest:0];
  v6 = [*(a1 + 32) _pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest:0];
  return [*(a1 + 32) _pickableRoutesForVoiceMailWithForceNewRequest:0];
}

- (void)_handleUplinkMuteDidChangeNotification:(id)notification
{
  v9 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = notificationCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Mute status changed: %@", &v7, 0xCu);
  }

  [(TUAudioSystemController *)self isUplinkMuted];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_handleDownlinkMuteDidChangeNotification:(id)notification
{
  v9 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = notificationCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Downlink mute status changed: %@", &v7, 0xCu);
  }

  [(TUAudioSystemController *)self isDownlinkMuted];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_handleVolumeDidChangeNotification:(id)notification
{
  v13 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = notificationCopy;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Volume changed: %@", buf, 0xCu);
  }

  userInfo = [notificationCopy userInfo];
  v6 = [userInfo copy];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__TUAudioSystemController__handleVolumeDidChangeNotification___block_invoke;
  block[3] = &unk_1E7424950;
  v10 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v8 = *MEMORY[0x1E69E9840];
}

void __62__TUAudioSystemController__handleVolumeDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"TUAudioSystemActiveCategoryVolumeChangedNotification" object:0 userInfo:*(a1 + 32)];
}

- (void)_handlePickableRoutesDidChangeNotification:(id)notification
{
  v16 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = notificationCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Pickable Routes Changed: %@", &v14, 0xCu);
  }

  if ([(TUAudioSystemController *)self isTTY])
  {
    v6 = [(TUAudioSystemController *)self _pickableRoutesForTTYWithForceNewRequest:1];
  }

  else
  {
    v7 = [(TUAudioSystemController *)self _pickableRoutesForPhoneCallWithForceNewRequest:1];
    v8 = [(TUAudioSystemController *)self _pickableRoutesForPlayAndRecordVideoWithForceNewRequest:1];
    v9 = [(TUAudioSystemController *)self _pickableRoutesForPlayAndRecordVoiceWithForceNewRequest:1];
    v10 = [(TUAudioSystemController *)self _pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest:1];
    v11 = [(TUAudioSystemController *)self _pickableRoutesForVoiceMailWithForceNewRequest:1];
  }

  [(TUAudioController *)self _acquireLock];
  currentPickableRoutes = self->_currentPickableRoutes;
  if (currentPickableRoutes)
  {
    self->_currentPickableRoutes = 0;

    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_55);
  }

  [(TUAudioController *)self _releaseLock];

  v13 = *MEMORY[0x1E69E9840];
}

void __70__TUAudioSystemController__handlePickableRoutesDidChangeNotification___block_invoke()
{
  v0 = TUDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1956FD000, v0, OS_LOG_TYPE_DEFAULT, "Clearing cached current pickable routes and posting TUAudioSystemAudioPickableRoutesChanged", v2, 2u);
  }

  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:@"TUAudioSystemAudioPickableRoutesChanged" object:0];
}

- (void)_mediaServicesWereReset:(id)reset
{
  v9 = *MEMORY[0x1E69E9840];
  resetCopy = reset;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = resetCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Media services were reset: %@", &v7, 0xCu);
  }

  [(TUAudioSystemController *)self _subscribeToNotificationAttributes];
  [(TUAudioSystemController *)self _updateCachedState];

  v6 = *MEMORY[0x1E69E9840];
}

- (float)activeCategoryVolume
{
  v5 = 0.0;
  v2 = +[TUAudioSystemController sharedSystemController];
  [v2 getActiveCategoryVolume:&v5 andName:0];

  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(TUAudioSystemController *)&v5 activeCategoryVolume];
  }

  return v5;
}

- (void)triggerEndInterruptionForAudioSessionID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (triggerEndInterruptionForAudioSessionID___pred_kAVSystemController_PostInterruptionEndedNotificationKey_AudioSessionID != -1)
  {
    [TUAudioSystemController triggerEndInterruptionForAudioSessionID:];
  }

  if (triggerEndInterruptionForAudioSessionID___pred_kAVSystemController_PostInterruptionEndedNotificationKey_IsResumable != -1)
  {
    [TUAudioSystemController triggerEndInterruptionForAudioSessionID:];
  }

  v16[0] = triggerEndInterruptionForAudioSessionID__kAVSystemController_PostInterruptionEndedNotificationKey_AudioSessionID;
  v16[1] = triggerEndInterruptionForAudioSessionID__kAVSystemController_PostInterruptionEndedNotificationKey_IsResumable;
  v17[0] = dCopy;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v17[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Triggering an end of interruption for audio session with ID %@", &buf, 0xCu);
  }

  v7 = +[TUAudioSystemController sharedSystemController];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v8 = getAVSystemController_PostInterruptionEndedNotificationSymbolLoc_ptr;
  v15 = getAVSystemController_PostInterruptionEndedNotificationSymbolLoc_ptr;
  if (!getAVSystemController_PostInterruptionEndedNotificationSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v19 = __getAVSystemController_PostInterruptionEndedNotificationSymbolLoc_block_invoke;
    v20 = &unk_1E7424CD8;
    v21 = &v12;
    v9 = MediaExperienceLibrary();
    v10 = dlsym(v9, "AVSystemController_PostInterruptionEndedNotification");
    *(v21[1] + 24) = v10;
    getAVSystemController_PostInterruptionEndedNotificationSymbolLoc_ptr = *(v21[1] + 24);
    v8 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v8)
  {
    [TUAudioSystemController triggerEndInterruptionForAudioSessionID:];
  }

  [v7 setAttribute:v5 forKey:*v8 error:{0, v12}];

  v11 = *MEMORY[0x1E69E9840];
}

void __67__TUAudioSystemController_triggerEndInterruptionForAudioSessionID___block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&triggerEndInterruptionForAudioSessionID__kAVSystemController_PostInterruptionEndedNotificationKey_AudioSessionID, v1);
}

void __67__TUAudioSystemController_triggerEndInterruptionForAudioSessionID___block_invoke_2()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&triggerEndInterruptionForAudioSessionID__kAVSystemController_PostInterruptionEndedNotificationKey_IsResumable, v1);
}

- (void)clearUplinkMutedCache
{
  v2 = +[TUAudioSystemController sharedSystemController];
  v3 = objc_opt_respondsToSelector();

  v4 = TUDefaultLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Clearing uplink mute cache for AVSystemController", buf, 2u);
    }

    v4 = +[TUAudioSystemController sharedSystemController];
    [v4 clearUplinkMutedCache];
  }

  else if (v5)
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Not clearing uplink mute cache for AVSystemController since it does not conform to clearUplinkMutedCache", v6, 2u);
  }
}

- (void)setActiveCategoryVolume:(float)volume
{
  v4 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__TUAudioSystemController_setActiveCategoryVolume___block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  volumeCopy = volume;
  dispatch_async(v4, block);
}

void __51__TUAudioSystemController_setActiveCategoryVolume___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v11 = 134217984;
    v12 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Setting active category volume to %f", &v11, 0xCu);
  }

  v4 = +[TUAudioSystemController sharedSystemController];
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  LODWORD(v7) = v6;
  v8 = [v4 setActiveCategoryVolumeTo:v7];

  if ((v8 & 1) == 0)
  {
    v9 = TUDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __51__TUAudioSystemController_setActiveCategoryVolume___block_invoke_cold_1(v5);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)isUplinkMuted
{
  if ([(TUFeatureFlags *)self->_featureFlags sessionBasedMutingEnabled])
  {
    v3 = TUDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [TUAudioSystemController isUplinkMuted];
    }

    bOOLValue = 0;
  }

  else
  {
    [(TUAudioController *)self _acquireLock];
    [(TUAudioController *)self _requestUpdatedValueWithBlock:&__block_literal_global_70 object:&self->_isUplinkMutedCached isRequestingPointer:&self->_isRequestingUplinkMuted forceNewRequest:0 scheduleTimePointer:&self->_lastUplinkMutedRequestScheduleTime notificationString:@"TUAudioSystemUplinkMuteStatusChangedNotification" queue:self->_uplinkMutedQueue];
    bOOLValue = [(NSNumber *)self->_isUplinkMutedCached BOOLValue];
    [(TUAudioController *)self _releaseLock];
    v3 = TUDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [TUAudioSystemController isUplinkMuted];
    }
  }

  return bOOLValue;
}

id __40__TUAudioSystemController_isUplinkMuted__block_invoke()
{
  v0 = +[TUAudioSystemController sharedSystemController];
  v1 = getAVSystemController_UplinkMuteAttribute();
  v2 = [v0 attributeForKey:v1];

  return v2;
}

void __42__TUAudioSystemController_setUplinkMuted___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _acquireLock];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "setting isUplinkMuted value = %@", buf, 0xCu);
  }

  v4 = +[TUAudioSystemController sharedSystemController];
  v5 = *(a1 + 40);
  v6 = getAVSystemController_UplinkMuteAttribute();
  v14 = 0;
  v7 = [v4 setAttribute:v5 forKey:v6 error:&v14];
  v8 = v14;

  if (v7)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:*(a1 + 48)];
    v10 = *(a1 + 32);
    v11 = *(v10 + 48);
    *(v10 + 48) = v9;

    [*(a1 + 32) _releaseLock];
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_78);
  }

  else
  {
    v12 = TUDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __42__TUAudioSystemController_setUplinkMuted___block_invoke_cold_1();
    }

    [*(a1 + 32) _releaseLock];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __42__TUAudioSystemController_setUplinkMuted___block_invoke_76()
{
  v0 = TUDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __42__TUAudioSystemController_setUplinkMuted___block_invoke_76_cold_1();
  }

  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:@"TUAudioSystemUplinkMuteStatusChangedNotification" object:0];
}

- (void)setDownlinkMuted:(BOOL)muted
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!self->_isDownlinkMutedCached || ([v5 isEqualToNumber:?] & 1) == 0)
  {
    downlinkMutedQueue = self->_downlinkMutedQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__TUAudioSystemController_setDownlinkMuted___block_invoke;
    block[3] = &unk_1E7425B78;
    block[4] = self;
    v9 = v6;
    mutedCopy = muted;
    dispatch_async(downlinkMutedQueue, block);
  }
}

void __44__TUAudioSystemController_setDownlinkMuted___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _acquireLock];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "setting isDownlinkMuted value = %@", buf, 0xCu);
  }

  v4 = +[TUAudioSystemController sharedSystemController];
  v5 = *(a1 + 40);
  v6 = getAVSystemController_DownlinkMuteAttribute();
  v14 = 0;
  v7 = [v4 setAttribute:v5 forKey:v6 error:&v14];
  v8 = v14;

  if (v7)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:*(a1 + 48)];
    v10 = *(a1 + 32);
    v11 = *(v10 + 56);
    *(v10 + 56) = v9;

    [*(a1 + 32) _releaseLock];
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_83);
  }

  else
  {
    v12 = TUDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __44__TUAudioSystemController_setDownlinkMuted___block_invoke_cold_1();
    }

    [*(a1 + 32) _releaseLock];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __44__TUAudioSystemController_setDownlinkMuted___block_invoke_81()
{
  v0 = TUDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __44__TUAudioSystemController_setDownlinkMuted___block_invoke_81_cold_1();
  }

  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:@"TUAudioSystemDownlinkMuteStatusChangedNotification" object:0];
}

- (NSDictionary)pickedRouteAttribute
{
  v2 = +[TUAudioSystemController sharedSystemController];
  v3 = getAVSystemController_PickedRouteAttribute();
  v4 = [v2 attributeForKey:v3];

  return v4;
}

id __68__TUAudioSystemController__pickableRoutesForTTYWithForceNewRequest___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v3 = +[TUAudioSystemController sharedSystemController];
  v4 = getAVSystemController_PickableRoutesAttribute();
  v5 = [v3 attributeForKey:v4];
  v6 = [v2 filteredPickableRoutesFromPickableRoutes:v5];

  return v6;
}

- (id)pickableRoutesForActiveCall
{
  v2 = +[TUAudioSystemController sharedSystemController];
  v3 = getAVSystemController_PickableRoutesAttribute();
  v4 = [v2 attributeForKey:v3];

  return v4;
}

id __74__TUAudioSystemController__pickableRoutesForPhoneCallWithForceNewRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 hasActiveAudioSession];

  if (v3)
  {
    v4 = [*(a1 + 32) pickableRoutesForActiveCall];
  }

  else
  {
    v5 = +[TUAudioSystemController sharedSystemController];
    v4 = [v5 pickableRoutesForCategory:@"PhoneCall"];
  }

  v6 = *(a1 + 32);
  v7 = [objc_opt_class() filteredPickableRoutesFromPickableRoutes:v4];

  return v7;
}

- (id)currentlyPickedRouteIdForCategory:(id)category andMode:(id)mode
{
  v38 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  modeCopy = mode;
  [(TUAudioSystemController *)self pickableRoutesForCategory:categoryCopy andMode:?];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v6 = v25 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v37 count:16];
  if (v7)
  {
    v8 = *v25;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v33 = 0;
        v34 = &v33;
        v35 = 0x2020000000;
        v11 = getAVSystemController_RouteDescriptionKey_RouteCurrentlyPickedSymbolLoc_ptr;
        v36 = getAVSystemController_RouteDescriptionKey_RouteCurrentlyPickedSymbolLoc_ptr;
        if (!getAVSystemController_RouteDescriptionKey_RouteCurrentlyPickedSymbolLoc_ptr)
        {
          v28 = MEMORY[0x1E69E9820];
          v29 = 3221225472;
          v30 = __getAVSystemController_RouteDescriptionKey_RouteCurrentlyPickedSymbolLoc_block_invoke;
          v31 = &unk_1E7424CD8;
          v32 = &v33;
          v12 = MediaExperienceLibrary();
          v13 = dlsym(v12, "AVSystemController_RouteDescriptionKey_RouteCurrentlyPicked");
          *(v32[1] + 24) = v13;
          getAVSystemController_RouteDescriptionKey_RouteCurrentlyPickedSymbolLoc_ptr = *(v32[1] + 24);
          v11 = v34[3];
        }

        _Block_object_dispose(&v33, 8);
        if (!v11)
        {
          [TUAudioSystemController currentlyPickedRouteIdForCategory:andMode:];
        }

        v14 = [v10 objectForKeyedSubscript:*v11];
        bOOLValue = [v14 BOOLValue];

        if (bOOLValue)
        {
          v33 = 0;
          v34 = &v33;
          v35 = 0x2020000000;
          v17 = getAVSystemController_RouteDescriptionKey_RouteUIDSymbolLoc_ptr;
          v36 = getAVSystemController_RouteDescriptionKey_RouteUIDSymbolLoc_ptr;
          if (!getAVSystemController_RouteDescriptionKey_RouteUIDSymbolLoc_ptr)
          {
            v28 = MEMORY[0x1E69E9820];
            v29 = 3221225472;
            v30 = __getAVSystemController_RouteDescriptionKey_RouteUIDSymbolLoc_block_invoke;
            v31 = &unk_1E7424CD8;
            v32 = &v33;
            v18 = MediaExperienceLibrary();
            v19 = dlsym(v18, "AVSystemController_RouteDescriptionKey_RouteUID");
            *(v32[1] + 24) = v19;
            getAVSystemController_RouteDescriptionKey_RouteUIDSymbolLoc_ptr = *(v32[1] + 24);
            v17 = v34[3];
          }

          _Block_object_dispose(&v33, 8);
          if (!v17)
          {
            [TUAudioSystemController currentlyPickedRouteIdForCategory:andMode:];
          }

          v16 = [v10 objectForKeyedSubscript:*v17];
          goto LABEL_17;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v24 objects:v37 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_17:

  v20 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)sourceIdentifierForRouteID:(id)d
{
  dCopy = d;
  if ([dCopy isEqualToString:@"Speaker"])
  {
    v4 = &TUCallSourceIdentifierSpeakerRoute;
  }

  else
  {
    v5 = dCopy;
    if (![dCopy isEqualToString:@"CarAudioOutput"])
    {
      goto LABEL_6;
    }

    v4 = &TUCallSourceIdentifierCarPlay;
  }

  v5 = *v4;

LABEL_6:

  return v5;
}

void __83__TUAudioSystemController__pickableRoutesForPlayAndRecordVoiceWithForceNewRequest___block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&_pickableRoutesForPlayAndRecordVoiceWithForceNewRequest___kMXSessionAudioCategory_PlayAndRecord_NoBluetooth, v1);
}

void __83__TUAudioSystemController__pickableRoutesForPlayAndRecordVoiceWithForceNewRequest___block_invoke_2()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&_pickableRoutesForPlayAndRecordVoiceWithForceNewRequest___kMXSessionAudioMode_VoiceChat, v1);
}

id __83__TUAudioSystemController__pickableRoutesForPlayAndRecordVoiceWithForceNewRequest___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 hasActiveAudioSession];

  if (v3)
  {
    v4 = [*(a1 + 32) pickableRoutesForActiveCall];
  }

  else
  {
    v5 = +[TUAudioSystemController sharedSystemController];
    v4 = [v5 pickableRoutesForCategory:_pickableRoutesForPlayAndRecordVoiceWithForceNewRequest___kMXSessionAudioCategory_PlayAndRecord_NoBluetooth andMode:_pickableRoutesForPlayAndRecordVoiceWithForceNewRequest___kMXSessionAudioMode_VoiceChat];
  }

  v6 = *(a1 + 32);
  v7 = [objc_opt_class() filteredPickableRoutesFromPickableRoutes:v4];

  return v7;
}

void __83__TUAudioSystemController__pickableRoutesForPlayAndRecordVideoWithForceNewRequest___block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&_pickableRoutesForPlayAndRecordVideoWithForceNewRequest___kMXSessionAudioCategory_PlayAndRecord_NoBluetooth, v1);
}

void __83__TUAudioSystemController__pickableRoutesForPlayAndRecordVideoWithForceNewRequest___block_invoke_2()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&_pickableRoutesForPlayAndRecordVideoWithForceNewRequest___kMXSessionAudioMode_VideoChat, v1);
}

id __83__TUAudioSystemController__pickableRoutesForPlayAndRecordVideoWithForceNewRequest___block_invoke_3(uint64_t a1)
{
  if (__sharedController_block_invoke__pred__kMXSessionAudioCategory_PlayAndRecord_NoBluetooth != -1)
  {
    __83__TUAudioSystemController__pickableRoutesForPlayAndRecordVideoWithForceNewRequest___block_invoke_3_cold_1();
  }

  if (__sharedController_block_invoke__pred__kMXSessionAudioMode_VideoChat != -1)
  {
    __83__TUAudioSystemController__pickableRoutesForPlayAndRecordVideoWithForceNewRequest___block_invoke_3_cold_2();
  }

  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = +[TUAudioSystemController sharedSystemController];
  v5 = [v4 pickableRoutesForCategory:__sharedController_block_invoke__kMXSessionAudioCategory_PlayAndRecord_NoBluetooth andMode:__sharedController_block_invoke__kMXSessionAudioMode_VideoChat];
  v6 = [v3 filteredPickableRoutesFromPickableRoutes:v5];

  return v6;
}

void __83__TUAudioSystemController__pickableRoutesForPlayAndRecordVideoWithForceNewRequest___block_invoke_4()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&__sharedController_block_invoke__kMXSessionAudioCategory_PlayAndRecord_NoBluetooth, v1);
}

void __83__TUAudioSystemController__pickableRoutesForPlayAndRecordVideoWithForceNewRequest___block_invoke_5()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&__sharedController_block_invoke__kMXSessionAudioMode_VideoChat, v1);
}

void __89__TUAudioSystemController__pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest___block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&_pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest___kMXSessionAudioCategory_PlayAndRecord_NoBluetooth, v1);
}

void __89__TUAudioSystemController__pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest___block_invoke_2()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&_pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest___kMXSessionAudioMode_RemoteVoiceChat, v1);
}

id __89__TUAudioSystemController__pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 hasActiveAudioSession];

  if (v3)
  {
    v4 = [*(a1 + 32) pickableRoutesForActiveCall];
  }

  else
  {
    v5 = +[TUAudioSystemController sharedSystemController];
    v4 = [v5 pickableRoutesForCategory:_pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest___kMXSessionAudioCategory_PlayAndRecord_NoBluetooth andMode:_pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest___kMXSessionAudioMode_RemoteVoiceChat];
  }

  v6 = *(a1 + 32);
  v7 = [objc_opt_class() filteredPickableRoutesFromPickableRoutes:v4];

  return v7;
}

void __74__TUAudioSystemController__pickableRoutesForVoiceMailWithForceNewRequest___block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&_pickableRoutesForVoiceMailWithForceNewRequest___kMXSessionAudioCategory_Voicemail, v1);
}

void __74__TUAudioSystemController__pickableRoutesForVoiceMailWithForceNewRequest___block_invoke_2()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&_pickableRoutesForVoiceMailWithForceNewRequest___kMXSessionAudioMode_VoiceChat, v1);
}

id __74__TUAudioSystemController__pickableRoutesForVoiceMailWithForceNewRequest___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v3 = +[TUAudioSystemController sharedSystemController];
  v4 = [v3 pickableRoutesForCategory:_pickableRoutesForVoiceMailWithForceNewRequest___kMXSessionAudioCategory_Voicemail andMode:_pickableRoutesForVoiceMailWithForceNewRequest___kMXSessionAudioMode_VoiceChat];
  v5 = [v2 filteredPickableRoutesFromPickableRoutes:v4];

  return v5;
}

- (void)_loadCurrentPickableRoutesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    pickableRoutesQueue = self->_pickableRoutesQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__TUAudioSystemController__loadCurrentPickableRoutesWithCompletion___block_invoke;
    v7[3] = &unk_1E7424E20;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(pickableRoutesQueue, v7);
  }
}

void __68__TUAudioSystemController__loadCurrentPickableRoutesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = +[TUAudioSystemController sharedSystemController];
  v3 = getAVSystemController_PickableRoutesAttribute();
  v4 = [v2 attributeForKey:v3];

  [*(a1 + 32) _acquireLock];
  v5 = *(a1 + 32);
  v6 = [objc_opt_class() filteredPickableRoutesFromPickableRoutes:v4];
  v7 = *(a1 + 32);
  v8 = *(v7 + 120);
  *(v7 + 120) = v6;

  [*(a1 + 32) _releaseLock];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__TUAudioSystemController__loadCurrentPickableRoutesWithCompletion___block_invoke_2;
  block[3] = &unk_1E7424950;
  v11 = v4;
  v9 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  (*(*(a1 + 40) + 16))();
}

void __68__TUAudioSystemController__loadCurrentPickableRoutesWithCompletion___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Fetched current pickable routes %@ and posting TUAudioSystemAudioPickableRoutesChanged", &v6, 0xCu);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"TUAudioSystemAudioPickableRoutesChanged" object:0];

  v5 = *MEMORY[0x1E69E9840];
}

+ (id)filteredPickableRoutesFromPickableRoutes:(id)routes
{
  v33 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  array = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = routesCopy;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v32 count:16];
  if (v5)
  {
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v28 = 0;
        v29 = &v28;
        v30 = 0x2020000000;
        v9 = getAVSystemController_RouteDescriptionKey_AVAudioRouteNameSymbolLoc_ptr;
        v31 = getAVSystemController_RouteDescriptionKey_AVAudioRouteNameSymbolLoc_ptr;
        if (!getAVSystemController_RouteDescriptionKey_AVAudioRouteNameSymbolLoc_ptr)
        {
          v23 = MEMORY[0x1E69E9820];
          v24 = 3221225472;
          v25 = __getAVSystemController_RouteDescriptionKey_AVAudioRouteNameSymbolLoc_block_invoke;
          v26 = &unk_1E7424CD8;
          v27 = &v28;
          v10 = MediaExperienceLibrary();
          v11 = dlsym(v10, "AVSystemController_RouteDescriptionKey_AVAudioRouteName");
          *(v27[1] + 24) = v11;
          getAVSystemController_RouteDescriptionKey_AVAudioRouteNameSymbolLoc_ptr = *(v27[1] + 24);
          v9 = v29[3];
        }

        _Block_object_dispose(&v28, 8);
        if (!v9)
        {
          +[TUAudioSystemController filteredPickableRoutesFromPickableRoutes:];
        }

        v12 = *v9;
        if (v12)
        {
          v13 = [v8 objectForKeyedSubscript:v12];
          v14 = [v13 isEqualToString:@"AirTunes"];

          if ((v14 & 1) == 0)
          {
            [array addObject:v8];
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v19 objects:v32 count:16];
    }

    while (v5);
  }

  v15 = [array copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)pickableRoutesForCategory:(id)category andMode:(id)mode
{
  categoryCopy = category;
  modeCopy = mode;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__TUAudioSystemController_pickableRoutesForCategory_andMode___block_invoke;
  v10[3] = &unk_1E7425BC8;
  v10[4] = &v11;
  [(TUAudioSystemController *)self _getPickableRoutesForCategory:categoryCopy mode:modeCopy onlyKnownCombinations:1 completion:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)_getPickableRoutesForCategory:(id)category mode:(id)mode onlyKnownCombinations:(BOOL)combinations completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  modeCopy = mode;
  completionCopy = completion;
  if (!completionCopy)
  {
    goto LABEL_35;
  }

  if (categoryCopy)
  {
    if (_getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___pred__kMXSessionAudioCategory_PlayAndRecord_NoBluetooth != -1)
    {
      [TUAudioSystemController _getPickableRoutesForCategory:mode:onlyKnownCombinations:completion:];
    }

    v13 = TUStringsAreEqualOrNil(categoryCopy, _getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___kMXSessionAudioCategory_PlayAndRecord_NoBluetooth);
    if (modeCopy && v13)
    {
      if (_getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___pred__kMXSessionAudioMode_VideoChat != -1)
      {
        [TUAudioSystemController _getPickableRoutesForCategory:mode:onlyKnownCombinations:completion:];
      }

      if (_getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___pred__kMXSessionAudioMode_VoiceChat != -1)
      {
        [TUAudioSystemController _getPickableRoutesForCategory:mode:onlyKnownCombinations:completion:];
      }

      if (_getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___pred__kMXSessionAudioMode_RemoteVoiceChat != -1)
      {
        [TUAudioSystemController _getPickableRoutesForCategory:mode:onlyKnownCombinations:completion:];
      }

      if (TUStringsAreEqualOrNil(modeCopy, _getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___kMXSessionAudioMode_VideoChat))
      {
        v14 = [(TUAudioSystemController *)self _pickableRoutesForPlayAndRecordVideoWithForceNewRequest:0];
        goto LABEL_23;
      }

      if (TUStringsAreEqualOrNil(modeCopy, _getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___kMXSessionAudioMode_VoiceChat))
      {
        v14 = [(TUAudioSystemController *)self _pickableRoutesForPlayAndRecordVoiceWithForceNewRequest:0];
        goto LABEL_23;
      }

      if (TUStringsAreEqualOrNil(modeCopy, _getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___kMXSessionAudioMode_RemoteVoiceChat))
      {
        v14 = [(TUAudioSystemController *)self _pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest:0];
LABEL_23:
        bestGuessPickableRoutesForAnyCall = v14;
        if (combinations)
        {
          goto LABEL_29;
        }

LABEL_26:
        if (!bestGuessPickableRoutesForAnyCall)
        {
          [(TUAudioController *)self _acquireLock];
          v16 = self->_currentPickableRoutes;
          [(TUAudioController *)self _releaseLock];
          if (v16)
          {
            completionCopy[2](completionCopy, v16);
          }

          else
          {
            [(TUAudioSystemController *)self _loadCurrentPickableRoutesWithCompletion:completionCopy];
          }

          goto LABEL_35;
        }

        goto LABEL_29;
      }
    }

    else
    {
      if ([objc_opt_class() isPhoneCallAudioCategory:categoryCopy])
      {
        v14 = [(TUAudioSystemController *)self _pickableRoutesForPhoneCallWithForceNewRequest:0];
        goto LABEL_23;
      }

      if ([categoryCopy isEqualToString:@"Voicemail"])
      {
        v14 = [(TUAudioSystemController *)self _pickableRoutesForVoiceMailWithForceNewRequest:0];
        goto LABEL_23;
      }
    }
  }

  bestGuessPickableRoutesForAnyCall = 0;
  if (!combinations)
  {
    goto LABEL_26;
  }

LABEL_29:
  if (!bestGuessPickableRoutesForAnyCall)
  {
    v17 = TUDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412546;
      v20 = categoryCopy;
      v21 = 2112;
      v22 = modeCopy;
      _os_log_impl(&dword_1956FD000, v17, OS_LOG_TYPE_DEFAULT, "Unknown category (%@) and mode (%@) combination, using default pickable routes", &v19, 0x16u);
    }

    bestGuessPickableRoutesForAnyCall = [(TUAudioSystemController *)self bestGuessPickableRoutesForAnyCall];
  }

  completionCopy[2](completionCopy, bestGuessPickableRoutesForAnyCall);

LABEL_35:
  v18 = *MEMORY[0x1E69E9840];
}

void __95__TUAudioSystemController__getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&_getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___kMXSessionAudioCategory_PlayAndRecord_NoBluetooth, v1);
}

void __95__TUAudioSystemController__getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___block_invoke_2()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&_getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___kMXSessionAudioMode_VideoChat, v1);
}

void __95__TUAudioSystemController__getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___block_invoke_3()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&_getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___kMXSessionAudioMode_VoiceChat, v1);
}

void __95__TUAudioSystemController__getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___block_invoke_4()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&_getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___kMXSessionAudioMode_RemoteVoiceChat, v1);
}

- (BOOL)pickRoute:(id)route error:(id *)error
{
  routeCopy = route;
  v6 = +[TUAudioSystemController sharedSystemController];
  route = [routeCopy route];

  v8 = getAVSystemController_PickedRouteAttribute();
  LOBYTE(error) = [v6 setAttribute:route forKey:v8 error:error];

  return error;
}

- (void)switchBluetoothAudioFormats
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Notifying AVSystemController to override to partner route", v4, 2u);
  }

  v3 = +[TUAudioSystemController sharedSystemController];
  [v3 overrideToPartnerRoute];
}

- (id)pickableRouteWithUniqueIdentifier:(id)identifier
{
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = identifierCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "uniqueIdentifier: %@", buf, 0xCu);
  }

  bestGuessPickableRoutesForAnyCall = [(TUAudioSystemController *)self bestGuessPickableRoutesForAnyCall];
  v7 = TUDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = bestGuessPickableRoutesForAnyCall;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "using pickable routes %@", buf, 0xCu);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = bestGuessPickableRoutesForAnyCall;
  v9 = [(TUAudioRoute *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
LABEL_7:
    v12 = 0;
    while (1)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v21 + 1) + 8 * v12);
      v14 = [TUAudioRoute alloc];
      v15 = [(TUAudioRoute *)v14 initWithDictionary:v13, v21];
      uniqueIdentifier = [(TURoute *)v15 uniqueIdentifier];
      v17 = [uniqueIdentifier isEqualToString:identifierCopy];

      if (v17)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(TUAudioRoute *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          goto LABEL_7;
        }

        v15 = 0;
        break;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v18 = TUDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v15;
    _os_log_impl(&dword_1956FD000, v18, OS_LOG_TYPE_DEFAULT, "returning route %@", buf, 0xCu);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BOOL)shouldSuppressCallUsingRoute:(id)route
{
  v11 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = routeCopy;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "route: %@", &v9, 0xCu);
  }

  identifiersOfOtherConnectedDevices = [routeCopy identifiersOfOtherConnectedDevices];
  v6 = [identifiersOfOtherConnectedDevices count] != 0;

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)otherSessionsRequestNoRingtoneInterruption
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = +[TUAudioSystemController sharedSystemController];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v3 = getAVSystemController_SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlertsAttributeSymbolLoc_ptr;
  v14 = getAVSystemController_SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlertsAttributeSymbolLoc_ptr;
  if (!getAVSystemController_SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlertsAttributeSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __getAVSystemController_SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlertsAttributeSymbolLoc_block_invoke;
    v18 = &unk_1E7424CD8;
    v19 = &v11;
    v4 = MediaExperienceLibrary();
    v5 = dlsym(v4, "AVSystemController_SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlertsAttribute");
    *(v19[1] + 24) = v5;
    getAVSystemController_SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlertsAttributeSymbolLoc_ptr = *(v19[1] + 24);
    v3 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v3)
  {
    [TUAudioSystemController otherSessionsRequestNoRingtoneInterruption];
  }

  v6 = [v2 attributeForKey:{*v3, v11}];
  bOOLValue = [v6 BOOLValue];

  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = bOOLValue;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Other sessions request no ringtone interruption: %d", buf, 8u);
  }

  v9 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

+ (BOOL)isPhoneCallAudioCategory:(id)category
{
  categoryCopy = category;
  if (isPhoneCallAudioCategory___pred__AVAudioSessionCategoryPhoneCall != -1)
  {
    +[TUAudioSystemController isPhoneCallAudioCategory:];
  }

  if ([categoryCopy isEqualToString:@"PhoneCall"])
  {
    v4 = 1;
  }

  else if (isPhoneCallAudioCategory___AVAudioSessionCategoryPhoneCall)
  {
    v4 = [categoryCopy isEqualToString:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __52__TUAudioSystemController_isPhoneCallAudioCategory___block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&isPhoneCallAudioCategory___AVAudioSessionCategoryPhoneCall, v1);
}

- (void)activeCategoryVolume
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *self;
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)triggerEndInterruptionForAudioSessionID:.cold.3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_PostInterruptionEndedNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioSystemController.m" lineNumber:48 description:{@"%s", dlerror()}];

  __break(1u);
}

void __51__TUAudioSystemController_setActiveCategoryVolume___block_invoke_cold_1(float *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)isUplinkMuted
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)isTTY
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setUplinkMuted:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __42__TUAudioSystemController_setUplinkMuted___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __42__TUAudioSystemController_setUplinkMuted___block_invoke_76_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)isDownlinkMuted
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void __44__TUAudioSystemController_setDownlinkMuted___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __44__TUAudioSystemController_setDownlinkMuted___block_invoke_81_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_pickableRoutesForTTYWithForceNewRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_pickableRoutesForPhoneCallWithForceNewRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_pickableRoutesForPhoneCallWithForceNewRequest:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"AVAudioSessionCategory getAVAudioSessionCategoryPhoneCall(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioSystemController.m" lineNumber:55 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)currentlyPickedRouteIdForCategory:andMode:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_RouteUID(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioSystemController.m" lineNumber:42 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)currentlyPickedRouteIdForCategory:andMode:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_RouteCurrentlyPicked(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioSystemController.m" lineNumber:41 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_pickableRoutesForPlayAndRecordVoiceWithForceNewRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_pickableRoutesForPlayAndRecordVideoWithForceNewRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_pickableRoutesForVoiceMailWithForceNewRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)filteredPickableRoutesFromPickableRoutes:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_AVAudioRouteName(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioSystemController.m" lineNumber:40 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)otherSessionsRequestNoRingtoneInterruption
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlertsAttribute(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"TUAudioSystemController.m" lineNumber:43 description:{@"%s", dlerror()}];

  __break(1u);
}

@end