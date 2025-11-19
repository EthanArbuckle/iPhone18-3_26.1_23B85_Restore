@interface IMMediaRemoteController
- (IMMediaRemoteController)initWithPlayer:(id)a3;
- (__CFArray)copySupportedCommands;
- (int64_t)_decreasePlayerPlaybackSpeed;
- (int64_t)_increasePlayerPlaybackSpeed;
- (int64_t)remoteChangePlaybackRate:(id)a3;
- (int64_t)remoteNextTrack:(id)a3;
- (int64_t)remotePause:(id)a3;
- (int64_t)remotePreviousTrack:(id)a3;
- (int64_t)remoteSeekBackward:(id)a3;
- (int64_t)remoteSeekForward:(id)a3;
- (int64_t)remoteSetPlayhead:(id)a3;
- (int64_t)remoteSkipBackward:(id)a3;
- (int64_t)remoteSkipForward:(id)a3;
- (int64_t)remoteStop:(id)a3;
- (void)_updatePlaybackSpeed;
- (void)dealloc;
- (void)remoteTogglePlayPauseCommand:(id)a3 completionHandler:(id)a4;
- (void)setRemoteCommandCenter:(id)a3;
- (void)setSupportedPlaybackRates:(id)a3;
- (void)setupRemoteCommandCenter:(id)a3;
- (void)tearDownRemoteCommandCenter:(id)a3;
@end

@implementation IMMediaRemoteController

- (IMMediaRemoteController)initWithPlayer:(id)a3
{
  v25[6] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(IMMediaRemoteController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_player, a3);
    v8 = MEMORY[0x277CCABB0];
    [IMAVPlayer rateForPlaybackSpeed:1];
    v9 = [v8 numberWithFloat:?];
    v25[0] = v9;
    v10 = MEMORY[0x277CCABB0];
    [IMAVPlayer rateForPlaybackSpeed:0];
    v11 = [v10 numberWithFloat:?];
    v25[1] = v11;
    v12 = MEMORY[0x277CCABB0];
    [IMAVPlayer rateForPlaybackSpeed:4];
    v13 = [v12 numberWithFloat:?];
    v25[2] = v13;
    v14 = MEMORY[0x277CCABB0];
    [IMAVPlayer rateForPlaybackSpeed:2];
    v15 = [v14 numberWithFloat:?];
    v25[3] = v15;
    v16 = MEMORY[0x277CCABB0];
    [IMAVPlayer rateForPlaybackSpeed:5];
    v17 = [v16 numberWithFloat:?];
    v25[4] = v17;
    v18 = MEMORY[0x277CCABB0];
    [IMAVPlayer rateForPlaybackSpeed:3];
    v19 = [v18 numberWithFloat:?];
    v25[5] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:6];
    supportedPlaybackRates = v7->_supportedPlaybackRates;
    v7->_supportedPlaybackRates = v20;

    v22 = [v5 commandCenter];
    [(IMMediaRemoteController *)v7 setRemoteCommandCenter:v22];

    v23 = [MEMORY[0x277CCAB98] defaultCenter];
    [v23 addObserver:v7 selector:sel__updatePlaybackSpeed name:@"IMAVPlayerNotification_PlaybackSpeedChanged" object:0];

    [(IMMediaRemoteController *)v7 _updatePlaybackSpeed];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(IMMediaRemoteController *)self remoteCommandCenter];
  [(IMMediaRemoteController *)self tearDownRemoteCommandCenter:v3];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = IMMediaRemoteController;
  [(IMMediaRemoteController *)&v5 dealloc];
}

- (void)setRemoteCommandCenter:(id)a3
{
  v5 = a3;
  v6 = v5;
  remoteCommandCenter = self->_remoteCommandCenter;
  if (remoteCommandCenter != v5)
  {
    v8 = v5;
    if (remoteCommandCenter)
    {
      [(IMMediaRemoteController *)self tearDownRemoteCommandCenter:?];
    }

    objc_storeStrong(&self->_remoteCommandCenter, a3);
    v6 = v8;
    if (v8)
    {
      v5 = [(IMMediaRemoteController *)self setupRemoteCommandCenter:v8];
      v6 = v8;
    }
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)setupRemoteCommandCenter:(id)a3
{
  v4 = a3;
  v5 = [v4 pauseCommand];
  [v5 addTarget:self action:sel_remotePause_];

  v6 = [v4 stopCommand];
  [v6 addTarget:self action:sel_remoteStop_];

  v7 = [v4 togglePlayPauseCommand];
  [v7 addTarget:self action:sel_remoteTogglePlayPauseCommand_completionHandler_];

  v8 = [v4 nextTrackCommand];
  [v8 addTarget:self action:sel_remoteNextTrack_];

  v9 = [v4 previousTrackCommand];
  [v9 addTarget:self action:sel_remotePreviousTrack_];

  v10 = [v4 seekForwardCommand];
  [v10 addTarget:self action:sel_remoteSeekForward_];

  v11 = [v4 seekBackwardCommand];
  [v11 addTarget:self action:sel_remoteSeekBackward_];

  v17 = [v4 changePlaybackRateCommand];
  v12 = [(IMMediaRemoteController *)self supportedPlaybackRates];
  [v17 setSupportedPlaybackRates:v12];

  [v17 addTarget:self action:sel_remoteChangePlaybackRate_];
  v13 = [v4 skipBackwardCommand];
  [v13 setPreferredIntervals:&unk_282CCBBF8];
  [v13 addTarget:self action:sel_remoteSkipBackward_];
  v14 = [v4 skipForwardCommand];

  [v14 setPreferredIntervals:&unk_282CCBC10];
  [v14 addTarget:self action:sel_remoteSkipForward_];
  v15 = [v4 changePlaybackPositionCommand];
  [v15 addTarget:self action:sel_remoteSetPlayhead_];

  v16 = [v4 changePlaybackPositionCommand];

  [v16 setCanBeControlledByScrubbing:1];
}

- (void)setSupportedPlaybackRates:(id)a3
{
  v4 = a3;
  supportedPlaybackRates = self->_supportedPlaybackRates;
  if (supportedPlaybackRates != v4)
  {
    v11 = v4;
    supportedPlaybackRates = [(NSArray *)supportedPlaybackRates isEqualToArray:v4];
    v4 = v11;
    if ((supportedPlaybackRates & 1) == 0)
    {
      v6 = [(NSArray *)v11 copy];
      v7 = self->_supportedPlaybackRates;
      self->_supportedPlaybackRates = v6;

      v8 = [(IMMediaRemoteController *)self remoteCommandCenter];
      v9 = [v8 changePlaybackRateCommand];

      v10 = [(IMMediaRemoteController *)self supportedPlaybackRates];
      [v9 setSupportedPlaybackRates:v10];

      v4 = v11;
    }
  }

  MEMORY[0x2821F96F8](supportedPlaybackRates, v4);
}

- (void)tearDownRemoteCommandCenter:(id)a3
{
  v4 = a3;
  v5 = [v4 pauseCommand];
  [v5 removeTarget:self];

  v6 = [v4 stopCommand];
  [v6 removeTarget:self];

  v7 = [v4 togglePlayPauseCommand];
  [v7 removeTarget:self];

  v8 = [v4 nextTrackCommand];
  [v8 removeTarget:self];

  v9 = [v4 previousTrackCommand];
  [v9 removeTarget:self];

  v10 = [v4 seekForwardCommand];
  [v10 removeTarget:self];

  v11 = [v4 seekBackwardCommand];
  [v11 removeTarget:self];

  v12 = [v4 changePlaybackRateCommand];
  [v12 removeTarget:self];

  v13 = [v4 skipBackwardCommand];
  [v13 removeTarget:self];

  v14 = [v4 skipForwardCommand];
  [v14 removeTarget:self];

  v15 = [v4 changePlaybackPositionCommand];

  [v15 removeTarget:self];
}

- (__CFArray)copySupportedCommands
{
  v2 = [(IMMediaRemoteController *)self remoteCommandCenter];
  v3 = [v2 _copySupportedCommands];

  v4 = *MEMORY[0x277CBECE8];
  if (v3)
  {
    MutableCopy = CFArrayCreateMutableCopy(v4, 0, v3);
    CFRelease(v3);
    return MutableCopy;
  }

  else
  {
    v7 = MEMORY[0x277CBF128];

    return CFArrayCreateMutable(v4, 0, v7);
  }
}

- (int64_t)remotePause:(id)a3
{
  v4 = MEMORY[0x277D3DA88];
  v5 = a3;
  v6 = [v4 player];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_21B365000, v6, OS_LOG_TYPE_DEFAULT, "Remote pause", v12, 2u);
  }

  v7 = [v5 mediaRemoteOptions];

  v8 = [v7 objectForKey:*MEMORY[0x277D27D38]];
  v9 = [v8 BOOLValue];

  v10 = [(IMMediaRemoteController *)self player];
  LODWORD(v8) = [v10 pauseWithInitiator:1 interruptionEvent:v9];

  if (v8)
  {
    return 0;
  }

  else
  {
    return 200;
  }
}

- (int64_t)remoteStop:(id)a3
{
  v3 = [(IMMediaRemoteController *)self player];
  v4 = [v3 pauseWithInitiator:1];

  if (v4)
  {
    return 0;
  }

  else
  {
    return 200;
  }
}

- (void)remoteTogglePlayPauseCommand:(id)a3 completionHandler:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(IMMediaRemoteController *)self player];
  v8 = [v7 isPlaybackRequested];

  if (v8)
  {
    v9 = [(IMMediaRemoteController *)self remotePause:v13];
    if (!v6)
    {
      goto LABEL_9;
    }

    v10 = v9;
  }

  else
  {
    v11 = [(IMMediaRemoteController *)self player];
    v12 = [v11 play];

    if (!v6)
    {
      goto LABEL_9;
    }

    if (v12)
    {
      v10 = 0;
    }

    else
    {
      v10 = 200;
    }
  }

  v6[2](v6, v10);
LABEL_9:
}

- (int64_t)remoteNextTrack:(id)a3
{
  v3 = [(IMMediaRemoteController *)self player];
  v4 = [v3 nextRemote];

  if (v4)
  {
    return 0;
  }

  else
  {
    return 100;
  }
}

- (int64_t)remotePreviousTrack:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 isRequestingDefermentToPlaybackQueuePosition];
    v6 = [(IMMediaRemoteController *)self player];
    LODWORD(v5) = [v6 previousRemote:v5];

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = 100;
    }
  }

  else
  {
    v7 = 200;
  }

  return v7;
}

- (int64_t)remoteSeekForward:(id)a3
{
  v4 = [a3 type];
  if (v4 == 1)
  {
    v5 = [(IMMediaRemoteController *)self player];
    [v5 endSeek];
    goto LABEL_5;
  }

  if (!v4)
  {
    v5 = [(IMMediaRemoteController *)self player];
    [v5 startSeek:1];
LABEL_5:
  }

  return 0;
}

- (int64_t)remoteSeekBackward:(id)a3
{
  v4 = [a3 type];
  if (v4 == 1)
  {
    v5 = [(IMMediaRemoteController *)self player];
    [v5 endSeek];
    goto LABEL_5;
  }

  if (!v4)
  {
    v5 = [(IMMediaRemoteController *)self player];
    [v5 startSeek:0];
LABEL_5:
  }

  return 0;
}

- (int64_t)remoteChangePlaybackRate:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 mediaRemoteOptions];
  v6 = [v5 objectForKey:*MEMORY[0x277D27DA0]];

  if (!v6)
  {
LABEL_11:
    [v4 playbackRate];
    v14 = v13;
    v15 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 134217984;
      v22 = v14;
      _os_log_impl(&dword_21B365000, v15, OS_LOG_TYPE_DEFAULT, "MPChangePlaybackRateCommandEvent playbackRate: %f", &v21, 0xCu);
    }

    if (v14 == -1.0)
    {
      goto LABEL_14;
    }

    if (v14 != -2.0)
    {
      *&v16 = v14;
      v19 = [IMAVPlayer playbackSpeedForRate:v16];
      v9 = [(IMMediaRemoteController *)self player];
      v10 = v9;
      v11 = v19;
      goto LABEL_19;
    }

LABEL_16:
    v17 = [(IMMediaRemoteController *)self _decreasePlayerPlaybackSpeed];
    goto LABEL_17;
  }

  v7 = [v6 intValue];
  v8 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134217984;
    *&v22 = v7;
    _os_log_impl(&dword_21B365000, v8, OS_LOG_TYPE_DEFAULT, "predefinedPlaybackSpeed: %lld", &v21, 0xCu);
  }

  if (v7 == 2)
  {
    goto LABEL_16;
  }

  if (v7 != 1)
  {
    if (!v7)
    {
      v9 = [(IMMediaRemoteController *)self player];
      v10 = v9;
      v11 = 0;
LABEL_19:
      [v9 setPlaybackSpeed:v11];

      v18 = 0;
      goto LABEL_20;
    }

    v12 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_21B365000, v12, OS_LOG_TYPE_DEFAULT, "received unknown MRPlaybackSpeed. Falling back to using playbackRate.", &v21, 2u);
    }

    goto LABEL_11;
  }

LABEL_14:
  v17 = [(IMMediaRemoteController *)self _increasePlayerPlaybackSpeed];
LABEL_17:
  v18 = v17;
LABEL_20:

  return v18;
}

- (int64_t)remoteSkipBackward:(id)a3
{
  [a3 interval];
  v5 = v4;
  v6 = [(IMMediaRemoteController *)self player];
  v7 = [(IMMediaRemoteController *)self player];
  [v7 currentTime];
  [v6 setCurrentTimeRemote:v8 - v5];

  return 0;
}

- (int64_t)remoteSkipForward:(id)a3
{
  v4 = a3;
  v5 = [(IMMediaRemoteController *)self player];
  v6 = [(IMMediaRemoteController *)self player];
  [v6 currentTime];
  v8 = v7;
  [v4 interval];
  v10 = v9;

  [v5 setCurrentTimeRemote:v8 + v10];
  return 0;
}

- (int64_t)remoteSetPlayhead:(id)a3
{
  v4 = a3;
  v5 = [(IMMediaRemoteController *)self player];
  v6 = [v5 currentItem];

  [v4 positionTime];
  v8 = v7;

  [v6 duration];
  if (v9 >= v8)
  {
    v9 = v8;
  }

  [(IMAVPlayer *)self->_player setCurrentTimeRemote:fmax(v9, 0.0)];

  return 0;
}

- (void)_updatePlaybackSpeed
{
  v8 = [(IMMediaRemoteController *)self player];
  +[IMAVPlayer rateForPlaybackSpeed:](IMAVPlayer, "rateForPlaybackSpeed:", [v8 playbackSpeed]);
  v4 = v3;
  v5 = [(IMMediaRemoteController *)self remoteCommandCenter];
  v6 = [v5 changePlaybackRateCommand];
  LODWORD(v7) = v4;
  [v6 setPreferredRate:v7];
}

- (int64_t)_increasePlayerPlaybackSpeed
{
  v3 = [(IMMediaRemoteController *)self player];
  v4 = +[IMAVPlayer isMaxSpeed:](IMAVPlayer, "isMaxSpeed:", [v3 playbackSpeed]);

  if (v4)
  {
    return 1007;
  }

  v6 = [(IMMediaRemoteController *)self player];
  v7 = +[IMAVPlayer incrementPlaybackSpeed:](IMAVPlayer, "incrementPlaybackSpeed:", [v6 playbackSpeed]);

  v8 = [(IMMediaRemoteController *)self player];
  [v8 setPlaybackSpeed:v7];

  return 0;
}

- (int64_t)_decreasePlayerPlaybackSpeed
{
  v3 = [(IMMediaRemoteController *)self player];
  v4 = +[IMAVPlayer isMinSpeed:](IMAVPlayer, "isMinSpeed:", [v3 playbackSpeed]);

  if (v4)
  {
    return 1007;
  }

  v6 = [(IMMediaRemoteController *)self player];
  v7 = +[IMAVPlayer decrementPlaybackSpeed:](IMAVPlayer, "decrementPlaybackSpeed:", [v6 playbackSpeed]);

  v8 = [(IMMediaRemoteController *)self player];
  [v8 setPlaybackSpeed:v7];

  return 0;
}

@end