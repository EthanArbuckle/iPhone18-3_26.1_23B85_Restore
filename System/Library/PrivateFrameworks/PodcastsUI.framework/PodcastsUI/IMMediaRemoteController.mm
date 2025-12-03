@interface IMMediaRemoteController
- (IMMediaRemoteController)initWithPlayer:(id)player;
- (__CFArray)copySupportedCommands;
- (int64_t)_decreasePlayerPlaybackSpeed;
- (int64_t)_increasePlayerPlaybackSpeed;
- (int64_t)remoteChangePlaybackRate:(id)rate;
- (int64_t)remoteNextTrack:(id)track;
- (int64_t)remotePause:(id)pause;
- (int64_t)remotePreviousTrack:(id)track;
- (int64_t)remoteSeekBackward:(id)backward;
- (int64_t)remoteSeekForward:(id)forward;
- (int64_t)remoteSetPlayhead:(id)playhead;
- (int64_t)remoteSkipBackward:(id)backward;
- (int64_t)remoteSkipForward:(id)forward;
- (int64_t)remoteStop:(id)stop;
- (void)_updatePlaybackSpeed;
- (void)dealloc;
- (void)remoteTogglePlayPauseCommand:(id)command completionHandler:(id)handler;
- (void)setRemoteCommandCenter:(id)center;
- (void)setSupportedPlaybackRates:(id)rates;
- (void)setupRemoteCommandCenter:(id)center;
- (void)tearDownRemoteCommandCenter:(id)center;
@end

@implementation IMMediaRemoteController

- (IMMediaRemoteController)initWithPlayer:(id)player
{
  v25[6] = *MEMORY[0x277D85DE8];
  playerCopy = player;
  v6 = [(IMMediaRemoteController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_player, player);
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

    commandCenter = [playerCopy commandCenter];
    [(IMMediaRemoteController *)v7 setRemoteCommandCenter:commandCenter];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__updatePlaybackSpeed name:@"IMAVPlayerNotification_PlaybackSpeedChanged" object:0];

    [(IMMediaRemoteController *)v7 _updatePlaybackSpeed];
  }

  return v7;
}

- (void)dealloc
{
  remoteCommandCenter = [(IMMediaRemoteController *)self remoteCommandCenter];
  [(IMMediaRemoteController *)self tearDownRemoteCommandCenter:remoteCommandCenter];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = IMMediaRemoteController;
  [(IMMediaRemoteController *)&v5 dealloc];
}

- (void)setRemoteCommandCenter:(id)center
{
  centerCopy = center;
  v6 = centerCopy;
  remoteCommandCenter = self->_remoteCommandCenter;
  if (remoteCommandCenter != centerCopy)
  {
    v8 = centerCopy;
    if (remoteCommandCenter)
    {
      [(IMMediaRemoteController *)self tearDownRemoteCommandCenter:?];
    }

    objc_storeStrong(&self->_remoteCommandCenter, center);
    v6 = v8;
    if (v8)
    {
      centerCopy = [(IMMediaRemoteController *)self setupRemoteCommandCenter:v8];
      v6 = v8;
    }
  }

  MEMORY[0x2821F96F8](centerCopy, v6);
}

- (void)setupRemoteCommandCenter:(id)center
{
  centerCopy = center;
  pauseCommand = [centerCopy pauseCommand];
  [pauseCommand addTarget:self action:sel_remotePause_];

  stopCommand = [centerCopy stopCommand];
  [stopCommand addTarget:self action:sel_remoteStop_];

  togglePlayPauseCommand = [centerCopy togglePlayPauseCommand];
  [togglePlayPauseCommand addTarget:self action:sel_remoteTogglePlayPauseCommand_completionHandler_];

  nextTrackCommand = [centerCopy nextTrackCommand];
  [nextTrackCommand addTarget:self action:sel_remoteNextTrack_];

  previousTrackCommand = [centerCopy previousTrackCommand];
  [previousTrackCommand addTarget:self action:sel_remotePreviousTrack_];

  seekForwardCommand = [centerCopy seekForwardCommand];
  [seekForwardCommand addTarget:self action:sel_remoteSeekForward_];

  seekBackwardCommand = [centerCopy seekBackwardCommand];
  [seekBackwardCommand addTarget:self action:sel_remoteSeekBackward_];

  changePlaybackRateCommand = [centerCopy changePlaybackRateCommand];
  supportedPlaybackRates = [(IMMediaRemoteController *)self supportedPlaybackRates];
  [changePlaybackRateCommand setSupportedPlaybackRates:supportedPlaybackRates];

  [changePlaybackRateCommand addTarget:self action:sel_remoteChangePlaybackRate_];
  skipBackwardCommand = [centerCopy skipBackwardCommand];
  [skipBackwardCommand setPreferredIntervals:&unk_282CCBBF8];
  [skipBackwardCommand addTarget:self action:sel_remoteSkipBackward_];
  skipForwardCommand = [centerCopy skipForwardCommand];

  [skipForwardCommand setPreferredIntervals:&unk_282CCBC10];
  [skipForwardCommand addTarget:self action:sel_remoteSkipForward_];
  changePlaybackPositionCommand = [centerCopy changePlaybackPositionCommand];
  [changePlaybackPositionCommand addTarget:self action:sel_remoteSetPlayhead_];

  changePlaybackPositionCommand2 = [centerCopy changePlaybackPositionCommand];

  [changePlaybackPositionCommand2 setCanBeControlledByScrubbing:1];
}

- (void)setSupportedPlaybackRates:(id)rates
{
  ratesCopy = rates;
  supportedPlaybackRates = self->_supportedPlaybackRates;
  if (supportedPlaybackRates != ratesCopy)
  {
    v11 = ratesCopy;
    supportedPlaybackRates = [(NSArray *)supportedPlaybackRates isEqualToArray:ratesCopy];
    ratesCopy = v11;
    if ((supportedPlaybackRates & 1) == 0)
    {
      v6 = [(NSArray *)v11 copy];
      v7 = self->_supportedPlaybackRates;
      self->_supportedPlaybackRates = v6;

      remoteCommandCenter = [(IMMediaRemoteController *)self remoteCommandCenter];
      changePlaybackRateCommand = [remoteCommandCenter changePlaybackRateCommand];

      supportedPlaybackRates = [(IMMediaRemoteController *)self supportedPlaybackRates];
      [changePlaybackRateCommand setSupportedPlaybackRates:supportedPlaybackRates];

      ratesCopy = v11;
    }
  }

  MEMORY[0x2821F96F8](supportedPlaybackRates, ratesCopy);
}

- (void)tearDownRemoteCommandCenter:(id)center
{
  centerCopy = center;
  pauseCommand = [centerCopy pauseCommand];
  [pauseCommand removeTarget:self];

  stopCommand = [centerCopy stopCommand];
  [stopCommand removeTarget:self];

  togglePlayPauseCommand = [centerCopy togglePlayPauseCommand];
  [togglePlayPauseCommand removeTarget:self];

  nextTrackCommand = [centerCopy nextTrackCommand];
  [nextTrackCommand removeTarget:self];

  previousTrackCommand = [centerCopy previousTrackCommand];
  [previousTrackCommand removeTarget:self];

  seekForwardCommand = [centerCopy seekForwardCommand];
  [seekForwardCommand removeTarget:self];

  seekBackwardCommand = [centerCopy seekBackwardCommand];
  [seekBackwardCommand removeTarget:self];

  changePlaybackRateCommand = [centerCopy changePlaybackRateCommand];
  [changePlaybackRateCommand removeTarget:self];

  skipBackwardCommand = [centerCopy skipBackwardCommand];
  [skipBackwardCommand removeTarget:self];

  skipForwardCommand = [centerCopy skipForwardCommand];
  [skipForwardCommand removeTarget:self];

  changePlaybackPositionCommand = [centerCopy changePlaybackPositionCommand];

  [changePlaybackPositionCommand removeTarget:self];
}

- (__CFArray)copySupportedCommands
{
  remoteCommandCenter = [(IMMediaRemoteController *)self remoteCommandCenter];
  _copySupportedCommands = [remoteCommandCenter _copySupportedCommands];

  v4 = *MEMORY[0x277CBECE8];
  if (_copySupportedCommands)
  {
    MutableCopy = CFArrayCreateMutableCopy(v4, 0, _copySupportedCommands);
    CFRelease(_copySupportedCommands);
    return MutableCopy;
  }

  else
  {
    v7 = MEMORY[0x277CBF128];

    return CFArrayCreateMutable(v4, 0, v7);
  }
}

- (int64_t)remotePause:(id)pause
{
  v4 = MEMORY[0x277D3DA88];
  pauseCopy = pause;
  player = [v4 player];
  if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "Remote pause", v12, 2u);
  }

  mediaRemoteOptions = [pauseCopy mediaRemoteOptions];

  v8 = [mediaRemoteOptions objectForKey:*MEMORY[0x277D27D38]];
  bOOLValue = [v8 BOOLValue];

  player2 = [(IMMediaRemoteController *)self player];
  LODWORD(v8) = [player2 pauseWithInitiator:1 interruptionEvent:bOOLValue];

  if (v8)
  {
    return 0;
  }

  else
  {
    return 200;
  }
}

- (int64_t)remoteStop:(id)stop
{
  player = [(IMMediaRemoteController *)self player];
  v4 = [player pauseWithInitiator:1];

  if (v4)
  {
    return 0;
  }

  else
  {
    return 200;
  }
}

- (void)remoteTogglePlayPauseCommand:(id)command completionHandler:(id)handler
{
  commandCopy = command;
  handlerCopy = handler;
  player = [(IMMediaRemoteController *)self player];
  isPlaybackRequested = [player isPlaybackRequested];

  if (isPlaybackRequested)
  {
    v9 = [(IMMediaRemoteController *)self remotePause:commandCopy];
    if (!handlerCopy)
    {
      goto LABEL_9;
    }

    v10 = v9;
  }

  else
  {
    player2 = [(IMMediaRemoteController *)self player];
    play = [player2 play];

    if (!handlerCopy)
    {
      goto LABEL_9;
    }

    if (play)
    {
      v10 = 0;
    }

    else
    {
      v10 = 200;
    }
  }

  handlerCopy[2](handlerCopy, v10);
LABEL_9:
}

- (int64_t)remoteNextTrack:(id)track
{
  player = [(IMMediaRemoteController *)self player];
  nextRemote = [player nextRemote];

  if (nextRemote)
  {
    return 0;
  }

  else
  {
    return 100;
  }
}

- (int64_t)remotePreviousTrack:(id)track
{
  trackCopy = track;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isRequestingDefermentToPlaybackQueuePosition = [trackCopy isRequestingDefermentToPlaybackQueuePosition];
    player = [(IMMediaRemoteController *)self player];
    LODWORD(isRequestingDefermentToPlaybackQueuePosition) = [player previousRemote:isRequestingDefermentToPlaybackQueuePosition];

    if (isRequestingDefermentToPlaybackQueuePosition)
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

- (int64_t)remoteSeekForward:(id)forward
{
  type = [forward type];
  if (type == 1)
  {
    player = [(IMMediaRemoteController *)self player];
    [player endSeek];
    goto LABEL_5;
  }

  if (!type)
  {
    player = [(IMMediaRemoteController *)self player];
    [player startSeek:1];
LABEL_5:
  }

  return 0;
}

- (int64_t)remoteSeekBackward:(id)backward
{
  type = [backward type];
  if (type == 1)
  {
    player = [(IMMediaRemoteController *)self player];
    [player endSeek];
    goto LABEL_5;
  }

  if (!type)
  {
    player = [(IMMediaRemoteController *)self player];
    [player startSeek:0];
LABEL_5:
  }

  return 0;
}

- (int64_t)remoteChangePlaybackRate:(id)rate
{
  v23 = *MEMORY[0x277D85DE8];
  rateCopy = rate;
  mediaRemoteOptions = [rateCopy mediaRemoteOptions];
  v6 = [mediaRemoteOptions objectForKey:*MEMORY[0x277D27DA0]];

  if (!v6)
  {
LABEL_11:
    [rateCopy playbackRate];
    v14 = v13;
    player = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 134217984;
      v22 = v14;
      _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "MPChangePlaybackRateCommandEvent playbackRate: %f", &v21, 0xCu);
    }

    if (v14 == -1.0)
    {
      goto LABEL_14;
    }

    if (v14 != -2.0)
    {
      *&v16 = v14;
      v19 = [IMAVPlayer playbackSpeedForRate:v16];
      player2 = [(IMMediaRemoteController *)self player];
      v10 = player2;
      v11 = v19;
      goto LABEL_19;
    }

LABEL_16:
    _decreasePlayerPlaybackSpeed = [(IMMediaRemoteController *)self _decreasePlayerPlaybackSpeed];
    goto LABEL_17;
  }

  intValue = [v6 intValue];
  player3 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player3, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134217984;
    *&v22 = intValue;
    _os_log_impl(&dword_21B365000, player3, OS_LOG_TYPE_DEFAULT, "predefinedPlaybackSpeed: %lld", &v21, 0xCu);
  }

  if (intValue == 2)
  {
    goto LABEL_16;
  }

  if (intValue != 1)
  {
    if (!intValue)
    {
      player2 = [(IMMediaRemoteController *)self player];
      v10 = player2;
      v11 = 0;
LABEL_19:
      [player2 setPlaybackSpeed:v11];

      v18 = 0;
      goto LABEL_20;
    }

    player4 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(player4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_21B365000, player4, OS_LOG_TYPE_DEFAULT, "received unknown MRPlaybackSpeed. Falling back to using playbackRate.", &v21, 2u);
    }

    goto LABEL_11;
  }

LABEL_14:
  _decreasePlayerPlaybackSpeed = [(IMMediaRemoteController *)self _increasePlayerPlaybackSpeed];
LABEL_17:
  v18 = _decreasePlayerPlaybackSpeed;
LABEL_20:

  return v18;
}

- (int64_t)remoteSkipBackward:(id)backward
{
  [backward interval];
  v5 = v4;
  player = [(IMMediaRemoteController *)self player];
  player2 = [(IMMediaRemoteController *)self player];
  [player2 currentTime];
  [player setCurrentTimeRemote:v8 - v5];

  return 0;
}

- (int64_t)remoteSkipForward:(id)forward
{
  forwardCopy = forward;
  player = [(IMMediaRemoteController *)self player];
  player2 = [(IMMediaRemoteController *)self player];
  [player2 currentTime];
  v8 = v7;
  [forwardCopy interval];
  v10 = v9;

  [player setCurrentTimeRemote:v8 + v10];
  return 0;
}

- (int64_t)remoteSetPlayhead:(id)playhead
{
  playheadCopy = playhead;
  player = [(IMMediaRemoteController *)self player];
  currentItem = [player currentItem];

  [playheadCopy positionTime];
  v8 = v7;

  [currentItem duration];
  if (v9 >= v8)
  {
    v9 = v8;
  }

  [(IMAVPlayer *)self->_player setCurrentTimeRemote:fmax(v9, 0.0)];

  return 0;
}

- (void)_updatePlaybackSpeed
{
  player = [(IMMediaRemoteController *)self player];
  +[IMAVPlayer rateForPlaybackSpeed:](IMAVPlayer, "rateForPlaybackSpeed:", [player playbackSpeed]);
  v4 = v3;
  remoteCommandCenter = [(IMMediaRemoteController *)self remoteCommandCenter];
  changePlaybackRateCommand = [remoteCommandCenter changePlaybackRateCommand];
  LODWORD(v7) = v4;
  [changePlaybackRateCommand setPreferredRate:v7];
}

- (int64_t)_increasePlayerPlaybackSpeed
{
  player = [(IMMediaRemoteController *)self player];
  v4 = +[IMAVPlayer isMaxSpeed:](IMAVPlayer, "isMaxSpeed:", [player playbackSpeed]);

  if (v4)
  {
    return 1007;
  }

  player2 = [(IMMediaRemoteController *)self player];
  v7 = +[IMAVPlayer incrementPlaybackSpeed:](IMAVPlayer, "incrementPlaybackSpeed:", [player2 playbackSpeed]);

  player3 = [(IMMediaRemoteController *)self player];
  [player3 setPlaybackSpeed:v7];

  return 0;
}

- (int64_t)_decreasePlayerPlaybackSpeed
{
  player = [(IMMediaRemoteController *)self player];
  v4 = +[IMAVPlayer isMinSpeed:](IMAVPlayer, "isMinSpeed:", [player playbackSpeed]);

  if (v4)
  {
    return 1007;
  }

  player2 = [(IMMediaRemoteController *)self player];
  v7 = +[IMAVPlayer decrementPlaybackSpeed:](IMAVPlayer, "decrementPlaybackSpeed:", [player2 playbackSpeed]);

  player3 = [(IMMediaRemoteController *)self player];
  [player3 setPlaybackSpeed:v7];

  return 0;
}

@end