@interface SBMediaController
+ (BOOL)applicationCanBeConsideredNowPlaying:(id)playing;
+ (id)sharedInstance;
+ (void)sendResetPlaybackTimeoutCommand;
- (BOOL)_sendMediaCommand:(unsigned int)command options:(id)options;
- (BOOL)addTrackToWishListForEventSource:(int64_t)source;
- (BOOL)banTrackForEventSource:(int64_t)source;
- (BOOL)beginSeek:(int)seek eventSource:(int64_t)source;
- (BOOL)changeTrack:(int)track eventSource:(int64_t)source;
- (BOOL)endSeek:(int)seek eventSource:(int64_t)source;
- (BOOL)hasTrack;
- (BOOL)isFirstTrack;
- (BOOL)isLastTrack;
- (BOOL)isPaused;
- (BOOL)likeTrackForEventSource:(int64_t)source;
- (BOOL)pauseForEventSource:(int64_t)source;
- (BOOL)playForEventSource:(int64_t)source;
- (BOOL)setPlaybackSpeed:(int)speed eventSource:(int64_t)source;
- (BOOL)stopForEventSource:(int64_t)source;
- (BOOL)togglePlayPauseForEventSource:(int64_t)source;
- (BOOL)toggleRepeatForEventSource:(int64_t)source;
- (BOOL)toggleShuffleForEventSource:(int64_t)source;
- (SBApplication)nowPlayingApplication;
- (SBMediaController)init;
- (id)_nowPlayingInfo;
- (id)playingMediaType;
- (void)_applicationActivityStatusDidChange:(id)change;
- (void)_mediaRemoteNowPlayingApplicationDidChange:(id)change;
- (void)_mediaRemoteNowPlayingApplicationIsPlayingDidChange:(id)change;
- (void)_nowPlayingAppDidExit:(id)exit;
- (void)_registerForNotifications;
- (void)_setNowPlayingApplication:(id)application;
- (void)_unregisterForNotifications;
- (void)_updateLastRecentActivityDate;
- (void)cancelVolumeEvent;
- (void)dealloc;
- (void)setNowPlayingInfo:(id)info;
- (void)setSuppressHUD:(BOOL)d;
@end

@implementation SBMediaController

+ (void)sendResetPlaybackTimeoutCommand
{
  v2 = +[SBApplicationController sharedInstanceIfExists];
  v3 = [v2 applicationWithBundleIdentifier:@"com.apple.Music"];
  processState = [v3 processState];
  v5 = [processState pid];

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
    volumeControl = [SBApp volumeControl];
    volumeControl = v3->_volumeControl;
    v3->_volumeControl = volumeControl;
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

+ (BOOL)applicationCanBeConsideredNowPlaying:(id)playing
{
  playingCopy = playing;
  processState = [playingCopy processState];
  if ([processState isRunning])
  {
    isForeground = [processState isForeground];
  }

  else
  {
    isForeground = 0;
  }

  if ([processState isRunning] && (objc_msgSend(processState, "isForeground") & 1) == 0)
  {
    info = [playingCopy info];
    supportsAudioBackgroundMode = [info supportsAudioBackgroundMode];
  }

  else
  {
    supportsAudioBackgroundMode = 0;
  }

  return (isForeground | supportsAudioBackgroundMode) & 1;
}

- (id)_nowPlayingInfo
{
  nowPlayingProcessPID = [SBApp nowPlayingProcessPID];
  if (nowPlayingProcessPID == [(SBMediaController *)self nowPlayingProcessPID])
  {
    v4 = self->_nowPlayingInfo;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setNowPlayingInfo:(id)info
{
  infoCopy = info;
  if (([(NSDictionary *)self->_nowPlayingInfo isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_nowPlayingInfo, info);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBMediaNowPlayingChangedNotification" object:self];
  }
}

- (BOOL)hasTrack
{
  _nowPlayingInfo = [(SBMediaController *)self _nowPlayingInfo];
  v3 = _nowPlayingInfo != 0;

  return v3;
}

- (BOOL)isFirstTrack
{
  _nowPlayingInfo = [(SBMediaController *)self _nowPlayingInfo];
  v4 = [_nowPlayingInfo objectForKey:@"isFirstTrack"];
  if (v4)
  {
    _nowPlayingInfo2 = [(SBMediaController *)self _nowPlayingInfo];
    v6 = [_nowPlayingInfo2 objectForKey:@"isFirstTrack"];
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)isLastTrack
{
  _nowPlayingInfo = [(SBMediaController *)self _nowPlayingInfo];
  v4 = [_nowPlayingInfo objectForKey:@"isLastTrack"];
  if (v4)
  {
    _nowPlayingInfo2 = [(SBMediaController *)self _nowPlayingInfo];
    v6 = [_nowPlayingInfo2 objectForKey:@"isLastTrack"];
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (id)playingMediaType
{
  _nowPlayingInfo = [(SBMediaController *)self _nowPlayingInfo];
  v3 = [_nowPlayingInfo objectForKey:@"mediaType"];

  return v3;
}

- (BOOL)isPaused
{
  if (self->_lastNowPlayingAppIsPlaying)
  {
    return 0;
  }

  _nowPlayingInfo = [(SBMediaController *)self _nowPlayingInfo];
  v2 = _nowPlayingInfo != 0;

  return v2;
}

- (BOOL)banTrackForEventSource:(int64_t)source
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277D27DC0];
  v4 = NSStringFromSBMediaEventSource(source);
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  LOBYTE(self) = [(SBMediaController *)self _sendMediaCommand:22 options:v5];
  return self;
}

- (BOOL)likeTrackForEventSource:(int64_t)source
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277D27DC0];
  v4 = NSStringFromSBMediaEventSource(source);
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  LOBYTE(self) = [(SBMediaController *)self _sendMediaCommand:21 options:v5];
  return self;
}

- (BOOL)addTrackToWishListForEventSource:(int64_t)source
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277D27DC0];
  v4 = NSStringFromSBMediaEventSource(source);
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

- (void)setSuppressHUD:(BOOL)d
{
  if (self->_suppressHUD != d)
  {
    self->_suppressHUD = d;
    volumeControl = self->_volumeControl;
    if (d)
    {
      [(SBVolumeControl *)volumeControl addAlwaysHiddenCategory:@"Audio/Video"];
    }

    else
    {
      [(SBVolumeControl *)volumeControl removeAlwaysHiddenCategory:@"Audio/Video"];
    }
  }
}

- (BOOL)_sendMediaCommand:(unsigned int)command options:(id)options
{
  v18 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v6 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  policyAggregator = [v6 policyAggregator];
  v8 = [policyAggregator allowsCapability:6];

  if ((v8 & 1) == 0)
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109378;
      commandCopy2 = command;
      v16 = 2114;
      v17 = optionsCopy;
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
      [(SBMediaController *)optionsCopy _sendMediaCommand:command options:v11];
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109378;
    commandCopy2 = command;
    v16 = 2114;
    v17 = optionsCopy;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "MRMediaRemoteSendCommand succeeded for command:%d options:%{public}@", &v14, 0x12u);
  }

  v12 = 1;
LABEL_11:

  return v12;
}

- (BOOL)changeTrack:(int)track eventSource:(int64_t)source
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (track < 1)
  {
    if ((track & 0x80000000) == 0)
    {
      return 0;
    }

    v12 = *MEMORY[0x277D27DC0];
    v11 = NSStringFromSBMediaEventSource(source);
    v13[0] = v11;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    selfCopy2 = self;
    v8 = 110;
  }

  else
  {
    v12 = *MEMORY[0x277D27DC0];
    v5 = NSStringFromSBMediaEventSource(source);
    v13[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    selfCopy2 = self;
    v8 = 109;
  }

  v9 = [(SBMediaController *)selfCopy2 _sendMediaCommand:v8 options:v6];

  return v9;
}

- (BOOL)beginSeek:(int)seek eventSource:(int64_t)source
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (seek < 1)
  {
    if ((seek & 0x80000000) == 0)
    {
      return 0;
    }

    v12 = *MEMORY[0x277D27DC0];
    v11 = NSStringFromSBMediaEventSource(source);
    v13[0] = v11;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    selfCopy2 = self;
    v8 = 10;
  }

  else
  {
    v12 = *MEMORY[0x277D27DC0];
    v5 = NSStringFromSBMediaEventSource(source);
    v13[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    selfCopy2 = self;
    v8 = 8;
  }

  v9 = [(SBMediaController *)selfCopy2 _sendMediaCommand:v8 options:v6];

  return v9;
}

- (BOOL)endSeek:(int)seek eventSource:(int64_t)source
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (seek < 1)
  {
    if ((seek & 0x80000000) == 0)
    {
      return 0;
    }

    v12 = *MEMORY[0x277D27DC0];
    v11 = NSStringFromSBMediaEventSource(source);
    v13[0] = v11;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    selfCopy2 = self;
    v8 = 11;
  }

  else
  {
    v12 = *MEMORY[0x277D27DC0];
    v5 = NSStringFromSBMediaEventSource(source);
    v13[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    selfCopy2 = self;
    v8 = 9;
  }

  v9 = [(SBMediaController *)selfCopy2 _sendMediaCommand:v8 options:v6];

  return v9;
}

- (BOOL)playForEventSource:(int64_t)source
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277D27DC0];
  v4 = NSStringFromSBMediaEventSource(source);
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  LOBYTE(self) = [(SBMediaController *)self _sendMediaCommand:0 options:v5];
  return self;
}

- (BOOL)pauseForEventSource:(int64_t)source
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277D27DC0];
  v4 = NSStringFromSBMediaEventSource(source);
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  LOBYTE(self) = [(SBMediaController *)self _sendMediaCommand:1 options:v5];
  return self;
}

- (BOOL)togglePlayPauseForEventSource:(int64_t)source
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277D27DC0];
  v4 = NSStringFromSBMediaEventSource(source);
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  LOBYTE(self) = [(SBMediaController *)self _sendMediaCommand:2 options:v5];
  return self;
}

- (BOOL)stopForEventSource:(int64_t)source
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277D27DC0];
  v4 = NSStringFromSBMediaEventSource(source);
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  LOBYTE(self) = [(SBMediaController *)self _sendMediaCommand:3 options:v5];
  return self;
}

- (BOOL)toggleRepeatForEventSource:(int64_t)source
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D27A98];
  v10[0] = MEMORY[0x277CBEC38];
  v5 = *MEMORY[0x277D27DC0];
  v9[0] = v4;
  v9[1] = v5;
  v6 = NSStringFromSBMediaEventSource(source);
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  LOBYTE(self) = [(SBMediaController *)self _sendMediaCommand:7 options:v7];
  return self;
}

- (BOOL)toggleShuffleForEventSource:(int64_t)source
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D27AA0];
  v10[0] = MEMORY[0x277CBEC38];
  v5 = *MEMORY[0x277D27DC0];
  v9[0] = v4;
  v9[1] = v5;
  v6 = NSStringFromSBMediaEventSource(source);
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  LOBYTE(self) = [(SBMediaController *)self _sendMediaCommand:6 options:v7];
  return self;
}

- (BOOL)setPlaybackSpeed:(int)speed eventSource:(int64_t)source
{
  v5 = *&speed;
  v15[2] = *MEMORY[0x277D85DE8];
  v7 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  policyAggregator = [v7 policyAggregator];
  v9 = [policyAggregator allowsCapability:6];

  if (v9)
  {
    v14[0] = *MEMORY[0x277D27DA0];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:v5];
    v15[0] = v10;
    v14[1] = *MEMORY[0x277D27DC0];
    v11 = NSStringFromSBMediaEventSource(source);
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

- (void)_mediaRemoteNowPlayingApplicationDidChange:(id)change
{
  v4 = [change objectForKeyedSubscript:*MEMORY[0x277D27B48]];
  integerValue = [v4 integerValue];

  v6 = +[SBApplicationController sharedInstance];
  v7 = [v6 applicationWithPid:integerValue];

  [(SBMediaController *)self _setNowPlayingApplication:v7];
}

- (void)_setNowPlayingApplication:(id)application
{
  v12 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  p_lastNowPlayingApplication = &self->_lastNowPlayingApplication;
  if (self->_lastNowPlayingApplication != applicationCopy)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"SBApplicationDidExitNotification" object:self->_lastNowPlayingApplication];
    [(SBApplication *)self->_lastNowPlayingApplication setPlayingAudio:0];
    objc_storeStrong(&self->_lastNowPlayingApplication, application);
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
      [defaultCenter addObserver:self selector:sel__nowPlayingAppDidExit_ name:@"SBApplicationDidExitNotification" object:?];
    }

    [defaultCenter postNotificationName:@"SBMediaNowPlayingAppChangedNotification" object:self];
  }
}

- (void)_mediaRemoteNowPlayingApplicationIsPlayingDidChange:(id)change
{
  v4 = [change objectForKeyedSubscript:*MEMORY[0x277D27B40]];
  bOOLValue = [v4 BOOLValue];

  [(SBMediaController *)self _updateLastRecentActivityDate];
  if (self->_lastNowPlayingAppIsPlaying != bOOLValue)
  {
    self->_lastNowPlayingAppIsPlaying = bOOLValue;
    [(SBApplication *)self->_lastNowPlayingApplication setPlayingAudio:bOOLValue];
    v6 = +[SBIdleTimerGlobalCoordinator sharedInstance];
    [v6 resetIdleTimerForReason:@"MediaRemoteNowPlayingDidChange"];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBMediaNowPlayingChangedNotification" object:self];
  }
}

- (void)_applicationActivityStatusDidChange:(id)change
{
  if (![change objectForKey:*MEMORY[0x277D27A30]])
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = defaultCenter;
    v6 = @"SBMediaApplicationActivityDidEndNotification";
  }

  else
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = defaultCenter;
    v6 = @"SBMediaApplicationActivityDidBeginNotification";
  }

  [defaultCenter postNotificationName:v6 object:self];
}

- (void)_nowPlayingAppDidExit:(id)exit
{
  lastNowPlayingApplication = self->_lastNowPlayingApplication;
  object = [exit object];

  if (lastNowPlayingApplication == object)
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