@interface SBSoundController
+ (SBSoundController)sharedInstance;
- (BOOL)_playFeedback:(id)feedback;
- (BOOL)_playSystemSound:(id)sound;
- (BOOL)_playToneAlert:(id)alert;
- (BOOL)handleVolumeButtonDownEvent;
- (BOOL)isPlaying:(id)playing;
- (BOOL)isPlayingAnySound;
- (BOOL)playSound:(id)sound environments:(int64_t)environments completion:(id)completion;
- (BOOL)stopAllSounds;
- (BOOL)stopSound:(id)sound;
- (SBSoundController)init;
- (id)_activateFeedback:(id)feedback forReason:(id)reason;
- (id)activateSound:(id)sound forReason:(id)reason;
- (void)_alert:(id)_alert didBeginPlayingWithEvent:(id)event;
- (void)_cleanupSystemSound:(unsigned int)sound andKill:(BOOL)kill;
- (void)_cleanupToneAlertForSound:(id)sound andKill:(BOOL)kill;
- (void)_configureWithFeedbackType:(int64_t)type;
- (void)_endPendingCallbacksBlock;
- (void)_enqueueCallback:(id)callback;
- (void)_ringerStateChanged:(id)changed;
- (void)_soundDidFinishPlaying:(id)playing;
- (void)_soundDidStartPlaying:(id)playing;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)stopAllSounds;
@end

@implementation SBSoundController

+ (SBSoundController)sharedInstance
{
  if (sharedInstance_pred_0 != -1)
  {
    +[SBSoundController sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_18;

  return v3;
}

uint64_t __35__SBSoundController_sharedInstance__block_invoke()
{
  kdebug_trace();
  v0 = objc_alloc_init(SBSoundController);
  v1 = sharedInstance___sharedInstance_18;
  sharedInstance___sharedInstance_18 = v0;

  return kdebug_trace();
}

- (SBSoundController)init
{
  v15.receiver = self;
  v15.super_class = SBSoundController;
  v2 = [(SBSoundController *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    soundsBySystemSoundIDs = v2->_soundsBySystemSoundIDs;
    v2->_soundsBySystemSoundIDs = v3;

    v5 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    toneAlertsBySounds = v2->_toneAlertsBySounds;
    v2->_toneAlertsBySounds = v5;

    v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    soundsByToneAlerts = v2->_soundsByToneAlerts;
    v2->_soundsByToneAlerts = v7;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__ringerStateChanged_ name:@"SBRingerChangedNotification" object:0];
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendedCallbacks = v2->_pendedCallbacks;
    v2->_pendedCallbacks = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    usedNotificationTypes = v2->_usedNotificationTypes;
    v2->_usedNotificationTypes = v12;
  }

  return v2;
}

- (BOOL)isPlayingAnySound
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSoundController isPlayingAnySound];
  }

  return [(NSMutableDictionary *)self->_soundsBySystemSoundIDs count]|| [(NSMapTable *)self->_toneAlertsBySounds count]!= 0;
}

- (BOOL)isPlaying:(id)playing
{
  playingCopy = playing;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSoundController isPlaying:];
  }

  soundType = [playingCopy soundType];
  if (soundType == 3)
  {
    v6 = [(NSMapTable *)self->_toneAlertsBySounds objectForKey:playingCopy];
    v8 = v6 != 0;
  }

  else
  {
    if (soundType)
    {
      v8 = 0;
      goto LABEL_8;
    }

    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(playingCopy, "_resolvedSystemSoundID")}];
    v7 = [(NSMutableDictionary *)self->_soundsBySystemSoundIDs objectForKey:v6];
    v8 = [v7 isEqual:playingCopy];
  }

LABEL_8:
  return v8;
}

- (id)activateSound:(id)sound forReason:(id)reason
{
  v18 = *MEMORY[0x277D85DE8];
  soundCopy = sound;
  reasonCopy = reason;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSoundController activateSound:forReason:];
  }

  if (!soundCopy)
  {
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  if (!reasonCopy)
  {
    [SBSoundController activateSound:a2 forReason:self];
  }

  v9 = SBLogSound();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v14 = 138543618;
    v15 = soundCopy;
    v16 = 2114;
    v17 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "Activating sound: %{public}@ for reason: %{public}@", &v14, 0x16u);
  }

  soundType = [soundCopy soundType];
  v11 = 0;
  if (soundType && soundType != 3)
  {
    if (soundType == 5)
    {
      v11 = [(SBSoundController *)self _activateFeedback:soundCopy forReason:reasonCopy];
      goto LABEL_14;
    }

    v12 = SBLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SBSoundController activateSound:forReason:];
    }

    goto LABEL_13;
  }

LABEL_14:

  return v11;
}

- (BOOL)playSound:(id)sound environments:(int64_t)environments completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  soundCopy = sound;
  completionCopy = completion;
  if (!soundCopy)
  {
LABEL_28:
    v20 = 0;
    goto LABEL_29;
  }

  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSoundController playSound:environments:completion:];
  }

  notificationDispatcher = [SBApp notificationDispatcher];
  if ([notificationDispatcher isCarDestinationActive])
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = SBLogSound();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if ((v11 & environments) == 0)
  {
    if (v13)
    {
      v22 = 67109634;
      *v23 = environments;
      *&v23[4] = 1024;
      *&v23[6] = v11;
      *v24 = 2114;
      *&v24[2] = soundCopy;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, "SBSoundController: not playing sound - environments=%i allowed=%i -> %{public}@", &v22, 0x18u);
    }

    goto LABEL_28;
  }

  if (v13)
  {
    v22 = 138543362;
    *v23 = soundCopy;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, "Play sound: %{public}@", &v22, 0xCu);
  }

  [(SBSoundController *)self stopSound:soundCopy];
  soundType = [soundCopy soundType];
  switch(soundType)
  {
    case 5:
      v15 = [(SBSoundController *)self _playFeedback:soundCopy];
      goto LABEL_18;
    case 3:
      v15 = [(SBSoundController *)self _playToneAlert:soundCopy];
      goto LABEL_18;
    case 0:
      v15 = [(SBSoundController *)self _playSystemSound:soundCopy];
LABEL_18:
      v16 = v15;
      goto LABEL_22;
  }

  v17 = SBLogCommon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [SBSoundController playSound:environments:completion:];
  }

  v16 = 0;
LABEL_22:
  v18 = SBLogSound();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = @"failed to play";
    v22 = 138543874;
    if (v16)
    {
      v19 = @"played";
    }

    *v23 = v19;
    *&v23[8] = 1024;
    *v24 = environments;
    *&v24[4] = 2114;
    *&v24[6] = soundCopy;
    _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "SBSoundController: %{public}@ sound - environments=%i -> %{public}@", &v22, 0x1Cu);
  }

  if (!v16)
  {
    goto LABEL_28;
  }

  [soundCopy _setCompletionBlock:completionCopy];
  [(SBSoundController *)self _soundDidStartPlaying:soundCopy];
  v20 = 1;
LABEL_29:

  return v20;
}

- (BOOL)stopSound:(id)sound
{
  v12 = *MEMORY[0x277D85DE8];
  soundCopy = sound;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSoundController stopSound:];
  }

  v5 = [(SBSoundController *)self isPlaying:soundCopy];
  if (v5)
  {
    v6 = SBLogSound();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 138543362;
      v11 = soundCopy;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "SBSoundController: stopping sound -> %{public}@", &v10, 0xCu);
    }

    soundType = [soundCopy soundType];
    if (soundType != 5)
    {
      if (soundType == 3)
      {
        [(SBSoundController *)self _cleanupToneAlertForSound:soundCopy andKill:1];
      }

      else if (soundType)
      {
        v8 = SBLogCommon();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [SBSoundController stopSound:];
        }
      }

      else
      {
        -[SBSoundController _cleanupSystemSound:andKill:](self, "_cleanupSystemSound:andKill:", [soundCopy _resolvedSystemSoundID], 1);
      }
    }
  }

  return v5;
}

- (BOOL)stopAllSounds
{
  v29 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSoundController stopAllSounds];
  }

  v3 = SBLogSound();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "SBSoundController: stopping all sounds", buf, 2u);
  }

  if ([(NSMutableDictionary *)self->_soundsBySystemSoundIDs count])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(NSMapTable *)self->_toneAlertsBySounds count]!= 0;
  }

  [(SBSoundController *)self _beginPendingCallbacksBlock];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  allKeys = [(NSMutableDictionary *)self->_soundsBySystemSoundIDs allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        -[SBSoundController _cleanupSystemSound:andKill:](self, "_cleanupSystemSound:andKill:", [*(*(&v22 + 1) + 8 * i) unsignedIntValue], 1);
      }

      v7 = [allKeys countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [(NSMapTable *)self->_toneAlertsBySounds copy];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(SBSoundController *)self _cleanupToneAlertForSound:*(*(&v18 + 1) + 8 * j) andKill:0];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v12);
  }

  v15 = [MEMORY[0x277D71F50] _stopAllAlerts] | v4;
  if ([(NSMutableDictionary *)self->_soundsBySystemSoundIDs count]|| [(NSMapTable *)self->_soundsByToneAlerts count]|| [(NSMapTable *)self->_toneAlertsBySounds count])
  {
    [SBSoundController stopAllSounds];
    if ((v15 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if ((v15 & 1) == 0)
  {
    goto LABEL_28;
  }

  v16 = SBLogSound();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_INFO, "SBSoundController: stopped all sounds", buf, 2u);
  }

LABEL_28:
  [(SBSoundController *)self _endPendingCallbacksBlock];
  return v15 & 1;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSoundController addObserver:];
  }

  v4 = observerCopy;
  if (observerCopy)
  {
    v5 = [(NSHashTable *)self->_observers containsObject:observerCopy];
    v4 = observerCopy;
    if (!v5)
    {
      observers = self->_observers;
      if (!observers)
      {
        weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        v8 = self->_observers;
        self->_observers = weakObjectsHashTable;

        observers = self->_observers;
      }

      [(NSHashTable *)observers addObject:observerCopy];
      v4 = observerCopy;
    }
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSoundController removeObserver:];
  }

  v4 = observerCopy;
  if (observerCopy)
  {
    [(NSHashTable *)self->_observers removeObject:observerCopy];
    v4 = observerCopy;
  }
}

- (BOOL)handleVolumeButtonDownEvent
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSoundController handleVolumeButtonDownEvent];
  }

  v3 = SBLogSound();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Volume button down", v5, 2u);
  }

  return [(SBSoundController *)self stopAllSounds];
}

- (void)_cleanupSystemSound:(unsigned int)sound andKill:(BOOL)kill
{
  killCopy = kill;
  v5 = *&sound;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSoundController _cleanupSystemSound:andKill:];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
  AudioServicesRemoveSystemSoundCompletion(v5);
  if (killCopy)
  {
    AudioServicesStopSystemSound();
  }

  v7 = [(NSMutableDictionary *)self->_soundsBySystemSoundIDs objectForKey:v8];
  if (v7)
  {
    [(NSMutableDictionary *)self->_soundsBySystemSoundIDs removeObjectForKey:v8];
    [(SBSoundController *)self _soundDidFinishPlaying:v7];
  }
}

- (void)_cleanupToneAlertForSound:(id)sound andKill:(BOOL)kill
{
  killCopy = kill;
  soundCopy = sound;
  v6 = [(NSMapTable *)self->_toneAlertsBySounds objectForKey:?];
  v7 = v6;
  if (v6)
  {
    if (killCopy)
    {
      [v6 stop];
    }

    [(NSMapTable *)self->_toneAlertsBySounds removeObjectForKey:soundCopy];
    [(NSMapTable *)self->_soundsByToneAlerts removeObjectForKey:v7];
    [(SBSoundController *)self _soundDidFinishPlaying:soundCopy];
  }
}

- (BOOL)_playSystemSound:(id)sound
{
  v19 = *MEMORY[0x277D85DE8];
  soundCopy = sound;
  systemSoundID = [soundCopy systemSoundID];
  songPath = [soundCopy songPath];
  v6 = songPath;
  if (songPath)
  {
    strlen([songPath UTF8String]);
    if (AudioServicesCreateSystemSoundIDWithPath())
    {
      v7 = SBLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(SBSoundController *)v6 _playSystemSound:v7];
      }
    }
  }

  vibrationPattern = [soundCopy vibrationPattern];
  v9 = vibrationPattern;
  if (!systemSoundID && vibrationPattern)
  {
    systemSoundID = 4095;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInt:?];
  [soundCopy soundBehavior];
  [(SBSoundController *)self _cleanupSystemSound:systemSoundID andKill:1];
  Current = CFRunLoopGetCurrent();
  v12 = AudioServicesAddSystemSoundCompletion(systemSoundID, Current, *MEMORY[0x277CBF048], SystemSoundCompleted, 0);
  if (v12)
  {
    v13 = SBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v18 = soundCopy;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_INFO, "Failed to register a completion handler for sound: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    [soundCopy _setResolvedSoundID:systemSoundID];
    [(NSMutableDictionary *)self->_soundsBySystemSoundIDs setObject:soundCopy forKey:v10];
    v14 = SBLogSound();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v18) = systemSoundID;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_INFO, "Play SystemSoundID: %ul", buf, 8u);
    }

    AudioServicesPlaySystemSoundWithVibration();
  }

  return v12 == 0;
}

- (BOOL)_playToneAlert:(id)alert
{
  alertCopy = alert;
  toneAlert = [alertCopy toneAlert];
  [toneAlert setPlaybackObserver:self];
  if (toneAlert)
  {
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __36__SBSoundController__playToneAlert___block_invoke;
    v11 = &unk_2783BB180;
    v6 = alertCopy;
    v12 = v6;
    selfCopy = self;
    [toneAlert playWithCompletionHandler:&v8];
    [(NSMapTable *)self->_toneAlertsBySounds setObject:toneAlert forKey:v6, v8, v9, v10, v11];
    [(NSMapTable *)self->_soundsByToneAlerts setObject:v6 forKey:toneAlert];
  }

  return toneAlert != 0;
}

void __36__SBSoundController__playToneAlert___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__SBSoundController__playToneAlert___block_invoke_2;
  v7[3] = &unk_2783AB280;
  v11 = a2;
  v8 = *(a1 + 32);
  v9 = v5;
  v10 = *(a1 + 40);
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __36__SBSoundController__playToneAlert___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56) == 5)
  {
    v2 = SBLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __36__SBSoundController__playToneAlert___block_invoke_2_cold_1();
    }
  }

  return [*(a1 + 48) _cleanupToneAlertForSound:*(a1 + 32) andKill:0];
}

- (id)_activateFeedback:(id)feedback forReason:(id)reason
{
  feedbackCopy = feedback;
  reasonCopy = reason;
  -[SBSoundController _configureWithFeedbackType:](self, "_configureWithFeedbackType:", [feedbackCopy eventType]);
  v8 = self->_hapticFeedbackGenerator;
  [(UINotificationFeedbackGenerator *)v8 activateWithCompletionBlock:0];
  v9 = objc_alloc(MEMORY[0x277CF0CE8]);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __49__SBSoundController__activateFeedback_forReason___block_invoke;
  v15[3] = &unk_2783BB1A8;
  v16 = feedbackCopy;
  v17 = reasonCopy;
  v18 = v8;
  v10 = v8;
  v11 = reasonCopy;
  v12 = feedbackCopy;
  v13 = [v9 initWithIdentifier:@"SBSoundController-Activation" forReason:v11 invalidationBlock:v15];

  return v13;
}

uint64_t __49__SBSoundController__activateFeedback_forReason___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = SBLogSound();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "Deactivating feedback: %{public}@ (activated for reason: %{public}@)", &v6, 0x16u);
  }

  return [*(a1 + 48) deactivate];
}

- (void)_configureWithFeedbackType:(int64_t)type
{
  usedNotificationTypes = self->_usedNotificationTypes;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  LOBYTE(usedNotificationTypes) = [(NSMutableSet *)usedNotificationTypes containsObject:v6];

  if ((usedNotificationTypes & 1) == 0)
  {
    v7 = self->_usedNotificationTypes;
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    [(NSMutableSet *)v7 addObject:v8];

    v9 = objc_alloc(MEMORY[0x277D757B8]);
    v12 = [MEMORY[0x277D76138] privateConfigurationForTypes:self->_usedNotificationTypes];
    v10 = [v9 initWithConfiguration:v12];
    hapticFeedbackGenerator = self->_hapticFeedbackGenerator;
    self->_hapticFeedbackGenerator = v10;
  }
}

- (BOOL)_playFeedback:(id)feedback
{
  eventType = [feedback eventType];
  [(SBSoundController *)self _configureWithFeedbackType:eventType];
  [(UINotificationFeedbackGenerator *)self->_hapticFeedbackGenerator _privateNotificationOccurred:eventType];
  return 1;
}

- (void)_ringerStateChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKey:@"SBRingerChangedRingerMutedUserInfoKey"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7 = SBLogSound();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Ringer was muted.", v8, 2u);
    }

    [(SBSoundController *)self stopAllSounds];
  }
}

- (void)_soundDidStartPlaying:(id)playing
{
  playingCopy = playing;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__SBSoundController__soundDidStartPlaying___block_invoke;
  v6[3] = &unk_2783A92D8;
  v6[4] = self;
  v7 = playingCopy;
  v5 = playingCopy;
  [(SBSoundController *)self _enqueueCallback:v6];
}

void __43__SBSoundController__soundDidStartPlaying___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 48) count])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(*(a1 + 32) + 48) allObjects];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 soundDidBeginPlaying:*(a1 + 40)];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (void)_soundDidFinishPlaying:(id)playing
{
  playingCopy = playing;
  _completionBlock = [playingCopy _completionBlock];
  if (_completionBlock)
  {
    [(SBSoundController *)self _enqueueCallback:_completionBlock];
    [playingCopy _setCompletionBlock:0];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SBSoundController__soundDidFinishPlaying___block_invoke;
  v7[3] = &unk_2783A92D8;
  v7[4] = self;
  v8 = playingCopy;
  v6 = playingCopy;
  [(SBSoundController *)self _enqueueCallback:v7];
}

void __44__SBSoundController__soundDidFinishPlaying___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 48) count])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(*(a1 + 32) + 48) allObjects];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 soundDidFinishPlaying:*(a1 + 40)];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (void)_alert:(id)_alert didBeginPlayingWithEvent:(id)event
{
  _alertCopy = _alert;
  eventCopy = event;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__SBSoundController__alert_didBeginPlayingWithEvent___block_invoke;
  v10[3] = &unk_2783A8ED8;
  v10[4] = self;
  v11 = _alertCopy;
  v12 = eventCopy;
  v8 = eventCopy;
  v9 = _alertCopy;
  [(SBSoundController *)self _enqueueCallback:v10];
}

void __53__SBSoundController__alert_didBeginPlayingWithEvent___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ([*(a1[4] + 48) count])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(a1[4] + 48) allObjects];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 alert:a1[5] didBeginPlayingWithEvent:a1[6]];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (void)_endPendingCallbacksBlock
{
  OUTLINED_FUNCTION_3_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:v3 object:v2 file:@"SBSoundController.m" lineNumber:472 description:@"unbalanced begin/end for pending callbacks"];

  *v0 = *v1;
}

- (void)_enqueueCallback:(id)callback
{
  if (self->_pendingCallbacks)
  {
    pendedCallbacks = self->_pendedCallbacks;
    v7 = [callback copy];
    v5 = MEMORY[0x223D6F7F0]();
    [(NSMutableArray *)pendedCallbacks addObject:v5];
  }

  else
  {
    v6 = *(callback + 2);

    v6(callback);
  }
}

- (void)activateSound:(const char *)a1 forReason:(uint64_t)a2 .cold.3(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"reason != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBSoundController.m";
    v16 = 1024;
    v17 = 126;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)stopAllSounds
{
  OUTLINED_FUNCTION_3_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:v0 object:v2 file:@"SBSoundController.m" lineNumber:247 description:{@"systemSounds=%@ : tones=%@ (alerts=%@)", *v3, *(v2 + 40), *v1}];
}

- (void)_playSystemSound:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "No alert sound found at path '%{public}@'", &v2, 0xCu);
}

@end