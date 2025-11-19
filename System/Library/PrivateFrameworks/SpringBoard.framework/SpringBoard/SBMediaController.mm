@interface SBMediaController
+ (BOOL)applicationCanBeConsideredNowPlaying:(id)a3;
+ (id)sharedInstance;
+ (void)sendResetPlaybackTimeoutCommand;
- (BOOL)_sendMediaCommand:(unsigned int)a3 options:(id)a4;
- (BOOL)addTrackToWishListForEventSource:(int64_t)a3;
- (BOOL)banTrackForEventSource:(int64_t)a3;
- (BOOL)beginSeek:(int)a3 eventSource:(int64_t)a4;
- (BOOL)changeTrack:(int)a3 eventSource:(int64_t)a4;
- (BOOL)endSeek:(int)a3 eventSource:(int64_t)a4;
- (BOOL)hasTrack;
- (BOOL)isFirstTrack;
- (BOOL)isLastTrack;
- (BOOL)isPaused;
- (BOOL)likeTrackForEventSource:(int64_t)a3;
- (BOOL)pauseForEventSource:(int64_t)a3;
- (BOOL)playForEventSource:(int64_t)a3;
- (BOOL)setPlaybackSpeed:(int)a3 eventSource:(int64_t)a4;
- (BOOL)stopForEventSource:(int64_t)a3;
- (BOOL)togglePlayPauseForEventSource:(int64_t)a3;
- (BOOL)toggleRepeatForEventSource:(int64_t)a3;
- (BOOL)toggleShuffleForEventSource:(int64_t)a3;
- (SBApplication)nowPlayingApplication;
- (SBMediaController)init;
- (id)_nowPlayingInfo;
- (id)playingMediaType;
- (void)_applicationActivityStatusDidChange:(id)a3;
- (void)_mediaRemoteNowPlayingApplicationDidChange:(id)a3;
- (void)_mediaRemoteNowPlayingApplicationIsPlayingDidChange:(id)a3;
- (void)_nowPlayingAppDidExit:(id)a3;
- (void)_registerForNotifications;
- (void)_setNowPlayingApplication:(id)a3;
- (void)_unregisterForNotifications;
- (void)_updateLastRecentActivityDate;
- (void)cancelVolumeEvent;
- (void)dealloc;
- (void)setNowPlayingInfo:(id)a3;
- (void)setSuppressHUD:(BOOL)a3;
@end

@implementation SBMediaController

+ (void)sendResetPlaybackTimeoutCommand
{
  v2 = +[SBApplicationController sharedInstanceIfExists];
  v3 = [v2 applicationWithBundleIdentifier:@"com.apple.Music"];
  v4 = [v3 processState];
  v5 = [v4 pid];

  if (v5 >= 1)
  {
    v6 = MRMediaRemoteSendCommand();
    v7 = SBLogCommon();
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 0;
        v9 = "Successfully sent reset playback timeout command to Music app";
        v10 = &v14;
        v11 = v8;
        v12 = OS_LOG_TYPE_DEFAULT;
LABEL_7:
        _os_log_impl(&dword_21ED4E000, v11, v12, v9, v10, 2u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13 = 0;
      v9 = "Unable to send reset playback timeout command to Music app.";
      v10 = &v13;
      v11 = v8;
      v12 = OS_LOG_TYPE_INFO;
      goto LABEL_7;
    }
  }
}

+ (id)sharedInstance
{
  if ([MEMORY[0x277D244C8] inUserSessionLoginUI])
  {
    v2 = 0;
  }

  else
  {
    v3 = __controllerInstance_1;
    if (!__controllerInstance_1)
    {
      kdebug_trace();
      v4 = objc_alloc_init(SBMediaController);
      v5 = __controllerInstance_1;
      __controllerInstance_1 = v4;

      kdebug_trace();
      v3 = __controllerInstance_1;
    }

    v2 = v3;
  }

  return v2;
}

- (SBMediaController)init
{
  v7.receiver = self;
  v7.super_class = SBMediaController;
  v2 = [(SBMediaController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(SBMediaController *)v2 _registerForNotifications];
    v4 = [SBApp volumeControl];
    volumeControl = v3->_volumeControl;
    v3->_volumeControl = v4;
  }

  return v3;
}

- (void)dealloc
{
  [(SBMediaController *)self _unregisterForNotifications];
  nowPlayingInfo = self->_nowPlayingInfo;
  self->_nowPlayingInfo = 0;

  v4.receiver = self;
  v4.super_class = SBMediaController;
  [(SBMediaController *)&v4 dealloc];
}

+ (BOOL)applicationCanBeConsideredNowPlaying:(id)a3
{
  v3 = a3;
  v4 = [v3 processState];
  if ([v4 isRunning])
  {
    v5 = [v4 isForeground];
  }

  else
  {
    v5 = 0;
  }

  if ([v4 isRunning] && (objc_msgSend(v4, "isForeground") & 1) == 0)
  {
    v7 = [v3 info];
    v6 = [v7 supportsAudioBackgroundMode];
  }

  else
  {
    v6 = 0;
  }

  return (v5 | v6) & 1;
}

- (id)_nowPlayingInfo
{
  v3 = [SBApp nowPlayingProcessPID];
  if (v3 == [(SBMediaController *)self nowPlayingProcessPID])
  {
    v4 = self->_nowPlayingInfo;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setNowPlayingInfo:(id)a3
{
  v6 = a3;
  if (([(NSDictionary *)self->_nowPlayingInfo isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_nowPlayingInfo, a3);
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 postNotificationName:@"SBMediaNowPlayingChangedNotification" object:self];
  }
}

- (BOOL)hasTrack
{
  v2 = [(SBMediaController *)self _nowPlayingInfo];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isFirstTrack
{
  v3 = [(SBMediaController *)self _nowPlayingInfo];
  v4 = [v3 objectForKey:@"isFirstTrack"];
  if (v4)
  {
    v5 = [(SBMediaController *)self _nowPlayingInfo];
    v6 = [v5 objectForKey:@"isFirstTrack"];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)isLastTrack
{
  v3 = [(SBMediaController *)self _nowPlayingInfo];
  v4 = [v3 objectForKey:@"isLastTrack"];
  if (v4)
  {
    v5 = [(SBMediaController *)self _nowPlayingInfo];
    v6 = [v5 objectForKey:@"isLastTrack"];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)playingMediaType
{
  v2 = [(SBMediaController *)self _nowPlayingInfo];
  v3 = [v2 objectForKey:@"mediaType"];

  return v3;
}

- (BOOL)isPaused
{
  if (self->_lastNowPlayingAppIsPlaying)
  {
    return 0;
  }

  v3 = [(SBMediaController *)self _nowPlayingInfo];
  v2 = v3 != 0;

  return v2;
}

- (BOOL)banTrackForEventSource:(int64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277D27DC0];
  v4 = NSStringFromSBMediaEventSource(a3);
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  LOBYTE(self) = [(SBMediaController *)self _sendMediaCommand:22 options:v5];
  return self;
}

- (BOOL)likeTrackForEventSource:(int64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277D27DC0];
  v4 = NSStringFromSBMediaEventSource(a3);
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  LOBYTE(self) = [(SBMediaController *)self _sendMediaCommand:21 options:v5];
  return self;
}

- (BOOL)addTrackToWishListForEventSource:(int64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277D27DC0];
  v4 = NSStringFromSBMediaEventSource(a3);
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  LOBYTE(self) = [(SBMediaController *)self _sendMediaCommand:23 options:v5];
  return self;
}

- (SBApplication)nowPlayingApplication
{
  if (self->_lastNowPlayingApplication)
  {
    if ([SBMediaController applicationCanBeConsideredNowPlaying:?])
    {
      v4 = self->_lastNowPlayingApplication;
    }

    else
    {
      v6 = SBLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "nowplayingapp pid returned by mediaserverd was not actually a running app - probably background suspended - so returning nil", v7, 2u);
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSuppressHUD:(BOOL)a3
{
  if (self->_suppressHUD != a3)
  {
    self->_suppressHUD = a3;
    volumeControl = self->_volumeControl;
    if (a3)
    {
      [(SBVolumeControl *)volumeControl addAlwaysHiddenCategory:@"Audio/Video"];
    }

    else
    {
      [(SBVolumeControl *)volumeControl removeAlwaysHiddenCategory:@"Audio/Video"];
    }
  }
}

- (BOOL)_sendMediaCommand:(unsigned int)a3 options:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  v7 = [v6 policyAggregator];
  v8 = [v7 allowsCapability:6];

  if ((v8 & 1) == 0)
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109378;
      v15 = a3;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "_sendMediaCommand disallowed by policy; ignoring command:%d options:%{public}@", &v14, 0x12u);
    }

    goto LABEL_10;
  }

  v9 = MRMediaRemoteSendCommand();
  v10 = SBLogCommon();
  v11 = v10;
  if (!v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SBMediaController *)v5 _sendMediaCommand:a3 options:v11];
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109378;
    v15 = a3;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "MRMediaRemoteSendCommand succeeded for command:%d options:%{public}@", &v14, 0x12u);
  }

  v12 = 1;
LABEL_11:

  return v12;
}

- (BOOL)changeTrack:(int)a3 eventSource:(int64_t)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a3 < 1)
  {
    if ((a3 & 0x80000000) == 0)
    {
      return 0;
    }

    v12 = *MEMORY[0x277D27DC0];
    v11 = NSStringFromSBMediaEventSource(a4);
    v13[0] = v11;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    v7 = self;
    v8 = 110;
  }

  else
  {
    v12 = *MEMORY[0x277D27DC0];
    v5 = NSStringFromSBMediaEventSource(a4);
    v13[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    v7 = self;
    v8 = 109;
  }

  v9 = [(SBMediaController *)v7 _sendMediaCommand:v8 options:v6];

  return v9;
}

- (BOOL)beginSeek:(int)a3 eventSource:(int64_t)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a3 < 1)
  {
    if ((a3 & 0x80000000) == 0)
    {
      return 0;
    }

    v12 = *MEMORY[0x277D27DC0];
    v11 = NSStringFromSBMediaEventSource(a4);
    v13[0] = v11;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    v7 = self;
    v8 = 10;
  }

  else
  {
    v12 = *MEMORY[0x277D27DC0];
    v5 = NSStringFromSBMediaEventSource(a4);
    v13[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    v7 = self;
    v8 = 8;
  }

  v9 = [(SBMediaController *)v7 _sendMediaCommand:v8 options:v6];

  return v9;
}

- (BOOL)endSeek:(int)a3 eventSource:(int64_t)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a3 < 1)
  {
    if ((a3 & 0x80000000) == 0)
    {
      return 0;
    }

    v12 = *MEMORY[0x277D27DC0];
    v11 = NSStringFromSBMediaEventSource(a4);
    v13[0] = v11;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    v7 = self;
    v8 = 11;
  }

  else
  {
    v12 = *MEMORY[0x277D27DC0];
    v5 = NSStringFromSBMediaEventSource(a4);
    v13[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    v7 = self;
    v8 = 9;
  }

  v9 = [(SBMediaController *)v7 _sendMediaCommand:v8 options:v6];

  return v9;
}

- (BOOL)playForEventSource:(int64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277D27DC0];
  v4 = NSStringFromSBMediaEventSource(a3);
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  LOBYTE(self) = [(SBMediaController *)self _sendMediaCommand:0 options:v5];
  return self;
}

- (BOOL)pauseForEventSource:(int64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277D27DC0];
  v4 = NSStringFromSBMediaEventSource(a3);
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  LOBYTE(self) = [(SBMediaController *)self _sendMediaCommand:1 options:v5];
  return self;
}

- (BOOL)togglePlayPauseForEventSource:(int64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277D27DC0];
  v4 = NSStringFromSBMediaEventSource(a3);
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  LOBYTE(self) = [(SBMediaController *)self _sendMediaCommand:2 options:v5];
  return self;
}

- (BOOL)stopForEventSource:(int64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277D27DC0];
  v4 = NSStringFromSBMediaEventSource(a3);
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  LOBYTE(self) = [(SBMediaController *)self _sendMediaCommand:3 options:v5];
  return self;
}

- (BOOL)toggleRepeatForEventSource:(int64_t)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D27A98];
  v10[0] = MEMORY[0x277CBEC38];
  v5 = *MEMORY[0x277D27DC0];
  v9[0] = v4;
  v9[1] = v5;
  v6 = NSStringFromSBMediaEventSource(a3);
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  LOBYTE(self) = [(SBMediaController *)self _sendMediaCommand:7 options:v7];
  return self;
}

- (BOOL)toggleShuffleForEventSource:(int64_t)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D27AA0];
  v10[0] = MEMORY[0x277CBEC38];
  v5 = *MEMORY[0x277D27DC0];
  v9[0] = v4;
  v9[1] = v5;
  v6 = NSStringFromSBMediaEventSource(a3);
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  LOBYTE(self) = [(SBMediaController *)self _sendMediaCommand:6 options:v7];
  return self;
}

- (BOOL)setPlaybackSpeed:(int)a3 eventSource:(int64_t)a4
{
  v5 = *&a3;
  v15[2] = *MEMORY[0x277D85DE8];
  v7 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  v8 = [v7 policyAggregator];
  v9 = [v8 allowsCapability:6];

  if (v9)
  {
    v14[0] = *MEMORY[0x277D27DA0];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:v5];
    v15[0] = v10;
    v14[1] = *MEMORY[0x277D27DC0];
    v11 = NSStringFromSBMediaEventSource(a4);
    v15[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

    [(SBMediaController *)self _sendMediaCommand:19 options:v12];
  }

  return v9;
}

- (void)cancelVolumeEvent
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_increaseVolume object:0];
  v3 = MEMORY[0x277D82BB8];

  [v3 cancelPreviousPerformRequestsWithTarget:self selector:sel_decreaseVolume object:0];
}

- (void)_registerForNotifications
{
  [(SBMediaController *)self _unregisterForNotifications];
  MRMediaRemoteRegisterForNowPlayingNotifications();
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, self, __mediaRemoteNowPlayingInfoDidChangeNotification, *MEMORY[0x277D27BC8], 0, CFNotificationSuspensionBehaviorDrop);
  v4 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(v4, self, __mediaRemoteNowPlayingApplicationDidChangeNotification, *MEMORY[0x277D27B20], 0, CFNotificationSuspensionBehaviorDrop);
  v5 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(v5, self, __mediaRemoteNowPlayingApplicationIsPlayingDidChangeNotification, *MEMORY[0x277D27B38], 0, CFNotificationSuspensionBehaviorDrop);
  v6 = CFNotificationCenterGetLocalCenter();
  v7 = *MEMORY[0x277D27A28];

  CFNotificationCenterAddObserver(v6, self, __applicationActivityStatusDidChangeNotification, v7, 0, CFNotificationSuspensionBehaviorDrop);
}

- (void)_unregisterForNotifications
{
  MRMediaRemoteUnregisterForNowPlayingNotifications();
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterRemoveEveryObserver(LocalCenter, self);
}

void __57__SBMediaController__mediaRemoteNowPlayingInfoDidChange___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __57__SBMediaController__mediaRemoteNowPlayingInfoDidChange___block_invoke_cold_1(a3, v5);
    }
  }

  MRPlaybackQueueGetContentItemAtOffset();
  MRContentItemCopyNowPlayingInfo();
  MRMediaRemoteGetLocalOrigin();
  MRMediaRemoteGetNowPlayingClientForOrigin();
  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
  }
}

void __57__SBMediaController__mediaRemoteNowPlayingInfoDidChange___block_invoke_68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __57__SBMediaController__mediaRemoteNowPlayingInfoDidChange___block_invoke_68_cold_1(a3, v5);
    }
  }

  ProcessIdentifier = MRNowPlayingClientGetProcessIdentifier();
  if (BSPIDExists())
  {
    v7 = *(a1 + 40);
    v8 = v7;
    if (v7)
    {
      v9 = *MEMORY[0x277D27C68];
      v10 = [v7 objectForKey:*MEMORY[0x277D27C68]];
      v11 = MEMORY[0x277D27C48];
      if (v10)
      {
        v12 = [v8 objectForKey:*MEMORY[0x277D27C48]];
        if (v12)
        {
          v13 = [v8 objectForKey:*MEMORY[0x277D27CA0]];
          v14 = v13 != 0;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      v16 = [v8 objectForKey:*MEMORY[0x277D27C30]];
      v15 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v8, "count")}];
      if (v14)
      {
        v17 = [v8 objectForKey:*v11];
        v18 = [v17 intValue];

        v19 = [v8 objectForKey:v9];
        LODWORD(v17) = [v19 intValue];

        v20 = [v8 objectForKey:*MEMORY[0x277D27CA0]];
        v21 = [v20 intValue] == v18;
        v22 = v17 == 1;
        v23 = v17 == 1 && v18 == 0;
        v24 = v22 && v21;
      }

      else
      {
        v24 = 0;
        v23 = 0;
      }

      v25 = [MEMORY[0x277CCABB0] numberWithInteger:v23];
      [v15 setObject:v25 forKey:@"isFirstTrack"];

      v26 = [MEMORY[0x277CCABB0] numberWithInteger:v24];
      [v15 setObject:v26 forKey:@"isLastTrack"];

      if (v16)
      {
        [v15 setObject:v16 forKey:@"mediaType"];
      }
    }

    else
    {
      v15 = 0;
    }

    [SBApp setNowPlayingInfo:v15 forProcessWithPID:ProcessIdentifier];
    [*(a1 + 32) setNowPlayingProcessPID:ProcessIdentifier];
  }

  else
  {
    [SBApp setNowPlayingInfo:0 forProcessWithPID:0];
  }

  v27 = *(a1 + 40);
  if (v27)
  {
    CFRelease(v27);
  }
}

- (void)_mediaRemoteNowPlayingApplicationDidChange:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:*MEMORY[0x277D27B48]];
  v5 = [v4 integerValue];

  v6 = +[SBApplicationController sharedInstance];
  v7 = [v6 applicationWithPid:v5];

  [(SBMediaController *)self _setNowPlayingApplication:v7];
}

- (void)_setNowPlayingApplication:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  p_lastNowPlayingApplication = &self->_lastNowPlayingApplication;
  if (self->_lastNowPlayingApplication != v5)
  {
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 removeObserver:self name:@"SBApplicationDidExitNotification" object:self->_lastNowPlayingApplication];
    [(SBApplication *)self->_lastNowPlayingApplication setPlayingAudio:0];
    objc_storeStrong(&self->_lastNowPlayingApplication, a3);
    [(SBApplication *)self->_lastNowPlayingApplication setPlayingAudio:self->_lastNowPlayingAppIsPlaying];
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *p_lastNowPlayingApplication;
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "now playing app is tracked as %@.", &v10, 0xCu);
    }

    if (*p_lastNowPlayingApplication)
    {
      [v7 addObserver:self selector:sel__nowPlayingAppDidExit_ name:@"SBApplicationDidExitNotification" object:?];
    }

    [v7 postNotificationName:@"SBMediaNowPlayingAppChangedNotification" object:self];
  }
}

- (void)_mediaRemoteNowPlayingApplicationIsPlayingDidChange:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:*MEMORY[0x277D27B40]];
  v5 = [v4 BOOLValue];

  [(SBMediaController *)self _updateLastRecentActivityDate];
  if (self->_lastNowPlayingAppIsPlaying != v5)
  {
    self->_lastNowPlayingAppIsPlaying = v5;
    [(SBApplication *)self->_lastNowPlayingApplication setPlayingAudio:v5];
    v6 = +[SBIdleTimerGlobalCoordinator sharedInstance];
    [v6 resetIdleTimerForReason:@"MediaRemoteNowPlayingDidChange"];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"SBMediaNowPlayingChangedNotification" object:self];
  }
}

- (void)_applicationActivityStatusDidChange:(id)a3
{
  if (![a3 objectForKey:*MEMORY[0x277D27A30]])
  {
    self->_lastMediaRemoteAppActivityStatus = 0;
    return;
  }

  v4 = MEMORY[0x223D6C780]();
  self->_lastMediaRemoteAppActivityStatus = v4;
  if ((v4 - 1) > 1)
  {
    if ((v4 - 3) > 1)
    {
      return;
    }

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = v5;
    v6 = @"SBMediaApplicationActivityDidEndNotification";
  }

  else
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = v5;
    v6 = @"SBMediaApplicationActivityDidBeginNotification";
  }

  [v5 postNotificationName:v6 object:self];
}

- (void)_nowPlayingAppDidExit:(id)a3
{
  lastNowPlayingApplication = self->_lastNowPlayingApplication;
  v5 = [a3 object];

  if (lastNowPlayingApplication == v5)
  {
    [(SBApplication *)self->_lastNowPlayingApplication setPlayingAudio:0];

    [(SBMediaController *)self _setNowPlayingApplication:0];
  }
}

- (void)_updateLastRecentActivityDate
{
  v3 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  lastActivityDate = self->_lastActivityDate;
  self->_lastActivityDate = v3;
}

- (void)_sendMediaCommand:(os_log_t)log options:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "MRMediaRemoteSendCommand failed for command:%d options:%{public}@", v3, 0x12u);
}

void __57__SBMediaController__mediaRemoteNowPlayingInfoDidChange___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Could not retrieve playback queue from Media Remote. Failed with error: %{public}@", &v2, 0xCu);
}

void __57__SBMediaController__mediaRemoteNowPlayingInfoDidChange___block_invoke_68_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Could not retrieve now playing client. Failed with error: %{public}@", &v2, 0xCu);
}

@end