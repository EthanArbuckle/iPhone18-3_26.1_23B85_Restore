@interface PLMoviePlayerController
+ (BOOL)_isNetworkSupportedPath:(id)path;
+ (BOOL)_isStreamableAsset:(id)asset;
- (BOOL)_allowsExternalPlayback;
- (BOOL)isExternalPlayback;
- (PLMoviePlayerController)init;
- (double)currentTime;
- (double)duration;
- (void)_didEnterBackgroundNotification:(id)notification;
- (void)_didLoadValueOfKey:(id)key forAsset:(id)asset;
- (void)_dispatchOnMainThreadWithBlock:(id)block;
- (void)_displayVideoView;
- (void)_exitPlayer:(int)player;
- (void)_loadAsset:(id)asset;
- (void)_pausePlaybackForNotification;
- (void)_playbackFailedWithError:(id)error;
- (void)_playerItemFailedToPlayToEnd:(id)end;
- (void)_playerItemFailedToPlayToEndNotification:(id)notification;
- (void)_playerRateDidChange:(id)change;
- (void)_registerForNotifications;
- (void)_restoreTVOutVideoIfNecessary;
- (void)_screenDidConnect:(id)connect;
- (void)_screenDidDisconnect:(id)disconnect;
- (void)_serverConnectionDidDie:(id)die;
- (void)_setBufferingState:(unint64_t)state;
- (void)_setForceDisableTVOut:(BOOL)out;
- (void)_setPlaybackState:(unint64_t)state;
- (void)_setPlayerItem:(id)item;
- (void)_setupPlayer;
- (void)_setupTVOutWindow;
- (void)_simpleRemoteNotification:(id)notification;
- (void)_tearDownPlayer;
- (void)_tearDownTVOutWindow;
- (void)_unregisterForNotifications;
- (void)_updateBackgroundViewInformation;
- (void)_updateDisableAirPlayMirroringDuringPlayback;
- (void)_updateFromPendingTime;
- (void)_updateTVOutEnabled;
- (void)_willEnterForegroundNotification:(id)notification;
- (void)_willSuspendNotification:(id)notification;
- (void)dealloc;
- (void)didBecomeActiveController;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pause;
- (void)pauseDueToInsufficientData;
- (void)play;
- (void)playDueToEnoughData;
- (void)playFromBeginning;
- (void)requestToBecomeActiveController;
- (void)requestToResignAsActiveController;
- (void)resetPlayer;
- (void)setCurrentTime:(double)time timeSnapOption:(unint64_t)option forceUpdate:(BOOL)update;
- (void)setDelegate:(id)delegate;
- (void)setPlayerItem:(id)item startTime:(double)time;
- (void)stop;
- (void)willResignAsActiveController;
@end

@implementation PLMoviePlayerController

- (void)_serverConnectionDidDie:(id)die
{
  error = [(AVPlayer *)self->_player error];
  player = self->_player;
  if (player)
  {
    [(AVPlayer *)self->_player currentTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);
  NSLog(&cfstr_Serverconnecti.isa, error, player, *&Seconds);
  [(PLMoviePlayerController *)self _exitPlayer:3];
}

- (void)_exitPlayer:(int)player
{
  if (!self->_exited)
  {
    self->_exited = [(PLMoviePlayerControllerDelegate *)self->_delegate moviePlayerExitRequest:self exitReason:*&player];
  }
}

- (void)_playbackFailedWithError:(id)error
{
  if (self->_playbackState)
  {
    v5 = 0;
  }

  else
  {
    v5 = !self->_isPreparedForPlayback;
  }

  [(PLMoviePlayerController *)self _setPlaybackState:3];
  if ([error code] != -11819)
  {
    domain = [error domain];
    if ([domain isEqualToString:*MEMORY[0x277CCA738]] && objc_msgSend(error, "code") == -1013)
    {
      delegate = self->_delegate;

      [(PLMoviePlayerControllerDelegate *)delegate moviePlayerEncounteredAuthenticationError:self];
    }

    else if (!v5 || [(PLMoviePlayerControllerDelegate *)self->_delegate moviePlayerShouldNotifyOnPreparationError:self])
    {
      v8 = MEMORY[0x277D76620];
      if ([*MEMORY[0x277D76620] applicationState] || objc_msgSend(*v8, "applicationState") == 2)
      {
        if (!v5)
        {
          pl_dispatch_async();
          [(PLMoviePlayerController *)self _setPlaybackState:0];
        }
      }

      else
      {
        localizedDescription = [error localizedDescription];
        if ([localizedDescription length])
        {
          PLLocalizedFrameworkString();
          v13 = localizedDescription;
          v10 = PFStringWithValidatedFormat();
        }

        else
        {
          v10 = PLLocalizedFrameworkString();
        }

        v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v10 message:0 preferredStyle:{1, v13}];
        [v11 addAction:{objc_msgSend(MEMORY[0x277D750F8], "actionWithTitle:style:handler:", PLLocalizedFrameworkString(), 0, 0)}];
        window = [(PLMoviePlayerView *)[(PLMoviePlayerController *)self view] window];

        [window pl_presentViewController:v11 animated:1];
      }
    }
  }
}

- (void)_playerItemFailedToPlayToEnd:(id)end
{
  v4 = [objc_msgSend(end objectForKey:{*MEMORY[0x277CE60C8]), "userInfo"}];
  if ([objc_msgSend(v4 objectForKey:{*MEMORY[0x277CCA7E8]), "code"}] == -12926)
  {

    [(PLMoviePlayerController *)self pause];
  }

  else
  {
    error = [(AVPlayerItem *)self->_playerItem error];

    [(PLMoviePlayerController *)self _playbackFailedWithError:error];
  }
}

- (void)_playerItemFailedToPlayToEndNotification:(id)notification
{
  userInfo = [notification userInfo];

  [(PLMoviePlayerController *)self _playerItemFailedToPlayToEnd:userInfo];
}

- (void)willResignAsActiveController
{
  [(PLMoviePlayerController *)self setIsActiveController:0];
  [(PLMoviePlayerControllerDelegate *)self->_delegate moviePlayerControllerWillResignAsActiveController:self];
  [(PLMoviePlayerController *)self _tearDownTVOutWindow];
  [(PLMoviePlayerController *)self _updateTVOutEnabled];

  [(PLMoviePlayerController *)self _updateDisableAirPlayMirroringDuringPlayback];
}

- (void)didBecomeActiveController
{
  [(PLMoviePlayerController *)self setIsActiveController:1];
  [(PLMoviePlayerControllerDelegate *)self->_delegate moviePlayerControllerDidBecomeActiveController:self];
  [(PLMoviePlayerController *)self _updateTVOutEnabled];

  [(PLMoviePlayerController *)self _updateDisableAirPlayMirroringDuringPlayback];
}

- (void)requestToResignAsActiveController
{
  v3 = +[PLMoviePlayerControllerManager sharedInstance];

  [(PLMoviePlayerControllerManager *)v3 removeControllerFromStack:self];
}

- (void)requestToBecomeActiveController
{
  v3 = +[PLMoviePlayerControllerManager sharedInstance];

  [(PLMoviePlayerControllerManager *)v3 moveControllerToTopOfStack:self];
}

- (void)_updateBackgroundViewInformation
{
  _allowsExternalPlayback = [(PLMoviePlayerController *)self _allowsExternalPlayback];
  v4 = [(PLMoviePlayerController *)self isExternalPlayback]&& _allowsExternalPlayback;
  if (self->_isExternalPlayback != v4)
  {
    self->_isExternalPlayback = v4;
  }

  if (_allowsExternalPlayback && [(AVPlayer *)self->_player externalPlaybackType]== 1)
  {
    v5 = 1;
  }

  else if ([(PLMoviePlayerController *)self videoOutActive])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if ([(PLMoviePlayerView *)self->_view destinationPlaceholderStyle]!= v5)
  {
    delegate = self->_delegate;

    [(PLMoviePlayerControllerDelegate *)delegate moviePlayerUpdatedDestinationPlaceholder:self];
  }
}

- (BOOL)isExternalPlayback
{
  if ([(AVPlayer *)self->_player externalPlaybackType])
  {
    return 1;
  }

  return [(PLMoviePlayerController *)self videoOutActive];
}

- (void)_updateDisableAirPlayMirroringDuringPlayback
{
  [(AVPlayer *)self->_player setAllowsExternalPlayback:[(PLMoviePlayerController *)self _allowsExternalPlayback]];
  player = self->_player;

  [(AVPlayer *)player setUsesExternalPlaybackWhileExternalScreenIsActive:1];
}

- (BOOL)_allowsExternalPlayback
{
  isActiveController = [(PLMoviePlayerController *)self isActiveController];
  if (isActiveController)
  {
    if (objc_opt_respondsToSelector())
    {
      delegate = self->_delegate;

      LOBYTE(isActiveController) = [(PLMoviePlayerControllerDelegate *)delegate moviePlayerControllerShouldAllowExternalPlayback:self];
    }

    else
    {
      LOBYTE(isActiveController) = 1;
    }
  }

  return isActiveController;
}

- (void)_tearDownTVOutWindow
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__setupTVOutWindow object:0];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:a2 object:0];
  [(PLTVOutWindow *)self->_tvOutWindow setHidden:1];

  self->_tvOutWindow = 0;
  v4 = *MEMORY[0x277D767B0];
  if (self->_backgroundTaskId != *MEMORY[0x277D767B0])
  {
    [*MEMORY[0x277D76620] endBackgroundTask:?];
    self->_backgroundTaskId = v4;
  }
}

- (void)_setupTVOutWindow
{
  tvOutWindow = self->_tvOutWindow;
  if (!tvOutWindow)
  {
    tvOutWindow = objc_alloc_init(PLTVOutWindow);
    self->_tvOutWindow = tvOutWindow;
  }

  if ([(PLTVOutWindow *)tvOutWindow setVideoView:[(PLMoviePlayerView *)self->_view videoView]])
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__tearDownTVOutWindow object:0];
    v4 = self->_tvOutWindow;

    [(PLTVOutWindow *)v4 setHidden:0];
  }

  else
  {
    NSLog(&cfstr_ErrorSettingUp.isa);
  }
}

- (void)_displayVideoView
{
  TVOutEnabled = self->_TVOutEnabled;
  player = self->_player;
  if (TVOutEnabled)
  {
    [(AVPlayer *)player _setCALayerDestinationIsTVOut:1];
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__setupTVOutWindow object:0];
    [(PLMoviePlayerController *)self performSelector:sel__setupTVOutWindow withObject:0 afterDelay:0.0];
  }

  else
  {
    [(AVPlayer *)player _setCALayerDestinationIsTVOut:0];
    [(PLMoviePlayerView *)self->_view reattachVideoView];
  }

  [(PLMoviePlayerController *)self _updateBackgroundViewInformation];
}

- (void)_restoreTVOutVideoIfNecessary
{
  videoView = [(PLMoviePlayerView *)self->_view videoView];
  if (videoView)
  {
    v4 = videoView;
    if (![(UIView *)videoView superview]|| ![(UIView *)v4 window]|| self->_TVOutEnabled && [(UIView *)v4 window]!= self->_tvOutWindow)
    {

      [(PLMoviePlayerController *)self _displayVideoView];
    }
  }
}

- (void)_updateTVOutEnabled
{
  if (self->_forceDisableTVOut)
  {
    v3 = 0;
  }

  else
  {
    v3 = MPTVOutCapabledAndPreferred();
  }

  if (self->_TVOutEnabled != v3)
  {
    self->_TVOutEnabled = v3;
    [(AVPlayer *)self->_player _setCALayerDestinationIsTVOut:?];

    [(PLMoviePlayerController *)self _updateBackgroundViewInformation];
  }
}

- (void)_setForceDisableTVOut:(BOOL)out
{
  if (self->_forceDisableTVOut != out)
  {
    self->_forceDisableTVOut = out;
    [(PLMoviePlayerController *)self _updateTVOutEnabled];
  }
}

- (void)_screenDidDisconnect:(id)disconnect
{
  [(PLMoviePlayerController *)self _updateTVOutEnabled];
  [(PLMoviePlayerController *)self _displayVideoView];
  [(PLMoviePlayerController *)self _updateDisableAirPlayMirroringDuringPlayback];

  [(PLMoviePlayerController *)self _updateBackgroundViewInformation];
}

- (void)_screenDidConnect:(id)connect
{
  [(PLMoviePlayerController *)self _updateTVOutEnabled];
  [(PLMoviePlayerController *)self _displayVideoView];
  [(PLMoviePlayerController *)self _updateDisableAirPlayMirroringDuringPlayback];

  [(PLMoviePlayerController *)self _updateBackgroundViewInformation];
}

- (void)_willEnterForegroundNotification:(id)notification
{
  [(PLMoviePlayerController *)self _displayVideoView];

  [(PLMoviePlayerController *)self _setForceDisableTVOut:0];
}

- (void)_didEnterBackgroundNotification:(id)notification
{
  if (([*MEMORY[0x277D76620] isSuspendedUnderLock] & 1) == 0)
  {

    [(PLMoviePlayerController *)self _setForceDisableTVOut:1];
  }
}

- (void)_willSuspendNotification:(id)notification
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__tearDownTVOutWindow object:0];
  [(PLMoviePlayerController *)self performSelector:sel__tearDownTVOutWindow withObject:0 afterDelay:0.0];
  v4 = [*MEMORY[0x277D76620] beginBackgroundTaskWithExpirationHandler:0];
  self->_backgroundTaskId = v4;
  if (v4 == *MEMORY[0x277D767B0])
  {
    NSLog(&cfstr_UnableToStartB.isa);
  }

  [(PLMoviePlayerController *)self _pausePlaybackForNotification];
}

- (void)_pausePlaybackForNotification
{
  if ((!MPTVOutCapabledAndPreferred() || ([*MEMORY[0x277D76620] isSuspendedUnderLock] & 1) == 0) && !-[AVPlayer isExternalPlaybackActive](self->_player, "isExternalPlaybackActive") && self->_playbackState == 1)
  {
    [(PLMoviePlayerController *)self pause];
    delegate = self->_delegate;

    [(PLMoviePlayerControllerDelegate *)delegate moviePlayerWasSuspendedDuringPlayback:self];
  }
}

- (void)_simpleRemoteNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [objc_msgSend(userInfo objectForKey:{*MEMORY[0x277D76700]), "unsignedIntValue"}];
  if (v5 > 4)
  {
    switch(v5)
    {
      case 5:

        [(PLMoviePlayerController *)self stop];
        break;
      case 6:

        [(PLMoviePlayerController *)self play];
        break;
      case 7:

        [(PLMoviePlayerController *)self pause];
        break;
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      delegate = self->_delegate;

      [(PLMoviePlayerControllerDelegate *)delegate moviePlayerHeadsetNextTrackPressed:self];
    }

    else if (v5 == 2)
    {
      v6 = self->_delegate;

      [(PLMoviePlayerControllerDelegate *)v6 moviePlayerHeadsetPreviousTrackPressed:self];
    }
  }

  else
  {
    v7 = self->_delegate;

    [(PLMoviePlayerControllerDelegate *)v7 moviePlayerHeadsetPlayPausePressed:self];
  }
}

- (void)_setPlaybackState:(unint64_t)state
{
  playbackState = self->_playbackState;
  if (state == 1 || playbackState)
  {
    if (playbackState != state)
    {
      self->_playbackState = state;
      if (state == 1)
      {
        [(PLMoviePlayerController *)self _setBufferingState:self->_bufferingState & 0xFFFFFFFFFFFFFFFBLL];
      }

      [(PLMoviePlayerControllerDelegate *)self->_delegate moviePlayerPlaybackStateDidChange:self fromPlaybackState:playbackState];
      state = self->_playbackState;
    }

    if (state == 1)
    {

      [(PLMoviePlayerController *)self _restoreTVOutVideoIfNecessary];
    }
  }
}

- (void)_setBufferingState:(unint64_t)state
{
  v12 = *MEMORY[0x277D85DE8];
  Log = PLPhotoSharingGetLog();
  if (os_log_type_enabled(Log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    stateCopy = state;
    _os_log_impl(&dword_21ACCD000, Log, OS_LOG_TYPE_DEFAULT, "(video-playback) setting buffering state to %lu", &v8, 0xCu);
  }

  if ((state & 4) != 0)
  {
    state &= 0xFFFFFFFFFFFFFFF5;
  }

  else if ((state & 1) != 0 && ![objc_opt_class() _isStreamableAsset:{-[PLMoviePlayerController _asset](self, "_asset")}])
  {
    state |= 0xAuLL;
  }

  if (self->_bufferingState != state)
  {
    v6 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      bufferingState = self->_bufferingState;
      v8 = 134218240;
      stateCopy = bufferingState;
      v10 = 2048;
      stateCopy2 = state;
      _os_log_impl(&dword_21ACCD000, v6, OS_LOG_TYPE_DEFAULT, "(video-playback) buffering state changed from %lu to %lu", &v8, 0x16u);
    }

    self->_bufferingState = state;
    [(PLMoviePlayerControllerDelegate *)self->_delegate moviePlayerBufferingStateDidChange:self];
  }
}

- (double)currentTime
{
  playerItem = self->_playerItem;
  if (playerItem)
  {
    [(AVPlayerItem *)playerItem currentTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  return CMTimeGetSeconds(&time);
}

- (double)duration
{
  _asset = [(PLMoviePlayerController *)self _asset];
  if (_asset)
  {
    [_asset duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  return CMTimeGetSeconds(&time);
}

- (void)_updateFromPendingTime
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedUpdateFromPendingTime object:0];
  if (self->_hasPendingTime && self->_isPreparedForPlayback)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (self->_forceUpdateCurrentTime || !self->_isSeeking || (v5 = Current - self->_lastSetCurrentTimeTime, v5 >= 0.5))
    {
      self->_hasPendingTime = 0;
      self->_forceUpdateCurrentTime = 0;
      self->_lastSetCurrentTimeTime = Current;
      self->_isSeeking = 1;
      memset(&v14, 0, sizeof(v14));
      CMTimeMakeWithSeconds(&v14, 0.0, 1000);
      memset(&v13, 0, sizeof(v13));
      CMTimeMakeWithSeconds(&v13, 0.0, 1000);
      pendingTimeSnapOption = self->_pendingTimeSnapOption;
      if (pendingTimeSnapOption == 1)
      {
        CMTimeMakeWithSeconds(&v12, 2.0, 1000);
        v14 = v12;
        CMTimeMakeWithSeconds(&v12, 2.0, 1000);
        v13 = v12;
      }

      else if (!pendingTimeSnapOption)
      {
        CMTimeMakeWithSeconds(&v12, 2.0, 1000);
        v14 = v12;
      }

      memset(&v12, 0, sizeof(v12));
      pendingTime = self->_pendingTime;
      if (fabs(pendingTime) == INFINITY)
      {
        v12 = **&MEMORY[0x277CC08B0];
      }

      else
      {
        CMTimeMakeWithSeconds(&v12, pendingTime, 600);
      }

      player = self->_player;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __49__PLMoviePlayerController__updateFromPendingTime__block_invoke;
      v11[3] = &unk_2782A2048;
      v11[4] = self;
      v10 = v12;
      v9 = v14;
      v8 = v13;
      [(AVPlayer *)player seekToTime:&v10 toleranceBefore:&v9 toleranceAfter:&v8 completionHandler:v11];
    }

    else
    {

      [(PLMoviePlayerController *)self performSelector:sel__delayedUpdateFromPendingTime withObject:0 afterDelay:0.5 - v5];
    }
  }
}

uint64_t __49__PLMoviePlayerController__updateFromPendingTime__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    *(*(result + 32) + 80) = 0;
  }

  return result;
}

- (void)setCurrentTime:(double)time timeSnapOption:(unint64_t)option forceUpdate:(BOOL)update
{
  self->_hasPendingTime = 1;
  self->_pendingTime = time;
  self->_pendingTimeSnapOption = option;
  if (update)
  {
    self->_forceUpdateCurrentTime = 1;
  }

  [(PLMoviePlayerController *)self _updateFromPendingTime];
}

- (void)resetPlayer
{
  [(PLMoviePlayerController *)self _tearDownPlayer];

  [(PLMoviePlayerController *)self _setupPlayer];
}

- (void)stop
{
  [(PLMoviePlayerController *)self _setPlaybackState:0];
  Log = PLPhotoSharingGetLog();
  if (os_log_type_enabled(Log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ACCD000, Log, OS_LOG_TYPE_DEFAULT, "(video-playback) calling _player pause in stop", v4, 2u);
  }

  [(AVPlayer *)self->_player pause];
}

- (void)pauseDueToInsufficientData
{
  Log = PLPhotoSharingGetLog();
  if (os_log_type_enabled(Log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ACCD000, Log, OS_LOG_TYPE_DEFAULT, "(video-playback) calling _player pauseDueToInsufficientData", v4, 2u);
  }

  [(AVPlayer *)self->_player pause];
}

- (void)pause
{
  [(PLMoviePlayerController *)self _setPlaybackState:2];
  Log = PLPhotoSharingGetLog();
  if (os_log_type_enabled(Log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ACCD000, Log, OS_LOG_TYPE_DEFAULT, "(video-playback) calling _player pause in pause", v4, 2u);
  }

  [(AVPlayer *)self->_player pause];
}

- (void)playDueToEnoughData
{
  Log = PLPhotoSharingGetLog();
  if (os_log_type_enabled(Log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ACCD000, Log, OS_LOG_TYPE_DEFAULT, "(video-playback) calling _player playDueToEnoughData", v4, 2u);
  }

  [(AVPlayer *)self->_player play];
}

- (void)playFromBeginning
{
  [(PLMoviePlayerController *)self setCurrentTime:0 timeSnapOption:1 forceUpdate:0.0];
  if (([objc_opt_class() _isStreamableAsset:{-[PLMoviePlayerController _asset](self, "_asset")}] & 1) == 0)
  {
    [(PLMoviePlayerController *)self _setPlaybackState:1];
    Log = PLPhotoSharingGetLog();
    if (os_log_type_enabled(Log, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_21ACCD000, Log, OS_LOG_TYPE_DEFAULT, "(video-playback) calling _player play in playFromBeginning", v4, 2u);
    }

    [(AVPlayer *)self->_player play];
  }
}

- (void)play
{
  self->_forceUpdateCurrentTime = 1;
  [(PLMoviePlayerController *)self _updateFromPendingTime];
  if (([objc_opt_class() _isStreamableAsset:{-[PLMoviePlayerController _asset](self, "_asset")}] & 1) == 0)
  {
    [(PLMoviePlayerController *)self _setPlaybackState:1];
    Log = PLPhotoSharingGetLog();
    if (os_log_type_enabled(Log, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_21ACCD000, Log, OS_LOG_TYPE_DEFAULT, "(video-playback) calling _player play", v4, 2u);
    }

    [(AVPlayer *)self->_player play];
  }
}

- (void)_playerRateDidChange:(id)change
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [change objectForKey:*MEMORY[0x277CCA300]];
  v6 = 0.0;
  v7 = 0.0;
  if (v5 != [MEMORY[0x277CBEB68] null])
  {
    [v5 floatValue];
    v7 = v8;
  }

  v9 = [change objectForKey:*MEMORY[0x277CCA2F0]];
  if (v9 != [MEMORY[0x277CBEB68] null])
  {
    [v9 floatValue];
    v6 = v10;
  }

  if (v7 != v6)
  {
    [(PLMoviePlayerControllerDelegate *)self->_delegate moviePlayerPlaybackRateDidChange:self];
  }

  v11 = fabsf(v7);
  Log = PLPhotoSharingGetLog();
  if (os_log_type_enabled(Log, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    changeCopy = change;
    _os_log_impl(&dword_21ACCD000, Log, OS_LOG_TYPE_DEFAULT, "(video-playback) _playerRateDidChange %@", &v13, 0xCu);
  }

  if (v11 <= 0.00000011921 && fabsf(v6) > 0.00000011921)
  {
    [(PLMoviePlayerController *)self _setPlaybackState:1];
  }
}

- (void)_dispatchOnMainThreadWithBlock:(id)block
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (block)
    {
      v4 = *(block + 2);

      v4(block);
    }
  }

  else
  {

    pl_dispatch_async();
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v22 = *MEMORY[0x277D85DE8];
  Log = PLPhotoSharingGetLog();
  if (os_log_type_enabled(Log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v17 = objc_opt_class();
    v18 = 2112;
    pathCopy = path;
    v20 = 2112;
    changeCopy = change;
    _os_log_impl(&dword_21ACCD000, Log, OS_LOG_TYPE_DEFAULT, "(video-playback) %@ observeValueForKeyPath %@ %@", buf, 0x20u);
  }

  if (context == &ItemKeyContext)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __74__PLMoviePlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v15[3] = &unk_2782A1A38;
    v15[4] = self;
    v15[5] = object;
    v15[6] = path;
    v15[7] = change;
    v12 = v15;
LABEL_9:
    [(PLMoviePlayerController *)self _dispatchOnMainThreadWithBlock:v12];
    return;
  }

  if (context == &PlayerKeyContext)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __74__PLMoviePlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    v14[3] = &unk_2782A1A38;
    v14[4] = self;
    v14[5] = object;
    v14[6] = path;
    v14[7] = change;
    v12 = v14;
    goto LABEL_9;
  }

  if (context == &ViewerKeyContext)
  {
    if ([path isEqualToString:@"readyForDisplay"])
    {
      [(PLMoviePlayerControllerDelegate *)self->_delegate moviePlayerReadyToDisplay:self];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PLMoviePlayerController;
    [(PLMoviePlayerController *)&v13 observeValueForKeyPath:path ofObject:object change:change context:context];
  }
}

uint64_t __74__PLMoviePlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 8) == *(result + 40))
  {
    v1 = result;
    if ([*(result + 48) isEqualToString:@"status"])
    {
      v2 = [*(v1[4] + 1) status];
      v3 = v1[4];
      if (v2 == 1)
      {
        v3[114] = 1;
        [v1[4] _updateFromPendingTime];
        [v1[4] _setBufferingState:*(v1[4] + 16) | 1];
        v4 = *(v1[4] + 15);

        return [v4 moviePlayerReadyToPlay:?];
      }

      else
      {
        v6 = v1[7];

        return [v3 _playerItemFailedToPlayToEnd:v6];
      }
    }

    else if ([v1[6] isEqualToString:@"playbackBufferEmpty"])
    {
      result = [objc_msgSend(v1[7] objectForKey:{*MEMORY[0x277CCA2F0]), "BOOLValue"}];
      if (result)
      {
        v5 = v1[4];

        return [v5 _streamRanDry];
      }
    }

    else if ([v1[6] isEqualToString:@"playbackBufferFull"])
    {
      result = [objc_msgSend(v1[7] objectForKey:{*MEMORY[0x277CCA2F0]), "BOOLValue"}];
      if (result)
      {
        v7 = v1[4];

        return [v7 _streamBufferFull];
      }
    }

    else
    {
      result = [v1[6] isEqualToString:@"playbackLikelyToKeepUp"];
      if (result)
      {
        v8 = [objc_msgSend(v1[7] objectForKey:{*MEMORY[0x277CCA2F0]), "BOOLValue"}];
        v9 = v1[4];
        if (v8)
        {

          return [v9 _streamLikelyToKeepUp];
        }

        else
        {

          return [v9 _streamUnlikelyToKeepUp];
        }
      }
    }
  }

  return result;
}

uint64_t __74__PLMoviePlayerController_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t result)
{
  if (*(*(result + 32) + 16) == *(result + 40))
  {
    v1 = result;
    if ([*(result + 48) isEqualToString:@"rate"])
    {
      v2 = v1[4];
      v3 = v1[7];

      return [v2 _playerRateDidChange:v3];
    }

    else if ([v1[6] isEqualToString:@"status"])
    {
      result = [objc_msgSend(v1[7] objectForKey:{*MEMORY[0x277CCA2F0]), "intValue"}];
      if (result == 2)
      {
        v4 = v1[4];
        v5 = v1[7];

        return [v4 _serverConnectionDidDie:v5];
      }
    }

    else
    {
      result = [v1[6] isEqualToString:@"externalPlaybackActive"];
      if (result)
      {
        [v1[4] _updateBackgroundViewInformation];
        v6 = *(v1[4] + 15);

        return [v6 moviePlayerDidChangeExternalPlaybackType:?];
      }
    }
  }

  return result;
}

- (void)_didLoadValueOfKey:(id)key forAsset:(id)asset
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if ([(PLMoviePlayerController *)self _asset]== asset)
    {
      v7[0] = 0;
      if ([asset statusOfValueForKey:key error:v7] == 2)
      {
        if ([key isEqualToString:@"duration"])
        {
          [(PLMoviePlayerControllerDelegate *)self->_delegate moviePlayerDurationAvailable:self];
        }
      }

      else
      {
        NSLog(&cfstr_CouldNotLoadVa.isa, key, [v7[0] localizedDescription]);
      }
    }
  }

  else
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __55__PLMoviePlayerController__didLoadValueOfKey_forAsset___block_invoke;
    v7[4] = &unk_2782A20C0;
    v7[5] = self;
    v7[6] = key;
    v7[7] = asset;
    pl_dispatch_async();
  }
}

- (void)_loadAsset:(id)asset
{
  v19 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [&unk_282C53628 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(&unk_282C53628);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v12 = 0;
        if ([asset statusOfValueForKey:v9 error:&v12] == 2)
        {
          [(PLMoviePlayerController *)self _didLoadValueOfKey:v9 forAsset:asset];
        }

        else
        {
          v17 = v9;
          v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
          v11[0] = MEMORY[0x277D85DD0];
          v11[1] = 3221225472;
          v11[2] = __38__PLMoviePlayerController__loadAsset___block_invoke;
          v11[3] = &unk_2782A20C0;
          v11[4] = self;
          v11[5] = v9;
          v11[6] = asset;
          [asset loadValuesAsynchronouslyForKeys:v10 completionHandler:v11];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [&unk_282C53628 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)_setPlayerItem:(id)item
{
  v28 = *MEMORY[0x277D85DE8];
  playerItem = self->_playerItem;
  if (playerItem != item)
  {
    v6 = MEMORY[0x277CE60C0];
    v7 = MEMORY[0x277CE60D0];
    if (playerItem)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v8 = [&unk_282C53610 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v23;
        do
        {
          v11 = 0;
          do
          {
            if (*v23 != v10)
            {
              objc_enumerationMutation(&unk_282C53610);
            }

            [(AVPlayerItem *)self->_playerItem removeObserver:self forKeyPath:*(*(&v22 + 1) + 8 * v11++) context:&ItemKeyContext];
          }

          while (v9 != v11);
          v9 = [&unk_282C53610 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v9);
      }

      [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
      [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
      playerItem = self->_playerItem;
    }

    itemCopy = item;
    self->_playerItem = itemCopy;
    if (itemCopy)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v13 = [&unk_282C53610 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v19;
        do
        {
          v16 = 0;
          do
          {
            if (*v19 != v15)
            {
              objc_enumerationMutation(&unk_282C53610);
            }

            [(AVPlayerItem *)self->_playerItem addObserver:self forKeyPath:*(*(&v18 + 1) + 8 * v16++) options:3 context:&ItemKeyContext];
          }

          while (v14 != v16);
          v14 = [&unk_282C53610 countByEnumeratingWithState:&v18 objects:v26 count:16];
        }

        while (v14);
      }

      [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
      [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
      v17 = self->_playerItem;
    }

    else
    {
      v17 = 0;
    }

    [(AVPlayer *)self->_player replaceCurrentItemWithPlayerItem:v17];
    [(PLMoviePlayerController *)self _updateFromPendingTime];
  }
}

- (void)setPlayerItem:(id)item startTime:(double)time
{
  if (self->_playerItem != item)
  {
    v18 = v7;
    v19 = v6;
    v20 = v4;
    v21 = v5;
    self->_isPreparedForPlayback = 0;
    if (self->_playbackState == 1)
    {
      [(PLMoviePlayerController *)self _setPlaybackState:2];
      [(AVPlayer *)self->_player pause];
    }

    [(PLMoviePlayerController *)self _setBufferingState:0];
    [(PLMoviePlayerController *)self _setPlayerItem:item];
    if (item)
    {
      [(PLMoviePlayerController *)self _loadAsset:[(PLMoviePlayerController *)self _asset]];
      if (time != 0.0)
      {
        memset(&v17, 0, sizeof(v17));
        CMTimeMakeWithSeconds(&v17, time, 600);
        player = self->_player;
        v16 = v17;
        v14 = *MEMORY[0x277CC08F0];
        v15 = *(MEMORY[0x277CC08F0] + 16);
        v12 = v14;
        v13 = v15;
        [(AVPlayer *)player seekToTime:&v16 toleranceBefore:&v14 toleranceAfter:&v12];
      }
    }
  }
}

- (void)setDelegate:(id)delegate
{
  if (self->_delegate != delegate)
  {
    self->_delegate = delegate;
    [(PLMoviePlayerController *)self _updateDisableAirPlayMirroringDuringPlayback];

    [(PLMoviePlayerController *)self _updateTVOutEnabled];
  }
}

- (void)_tearDownPlayer
{
  v13 = *MEMORY[0x277D85DE8];
  [(CALayer *)[(UIView *)[(PLMoviePlayerView *)self->_view videoView] layer] removeObserver:self forKeyPath:@"readyForDisplay" context:&ViewerKeyContext];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  _playerKeysToObserve = [(PLMoviePlayerController *)self _playerKeysToObserve];
  v4 = [_playerKeysToObserve countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(_playerKeysToObserve);
        }

        [(AVPlayer *)self->_player removeObserver:self forKeyPath:*(*(&v8 + 1) + 8 * v7++) context:&PlayerKeyContext];
      }

      while (v5 != v7);
      v5 = [_playerKeysToObserve countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(AVPlayer *)self->_player pause];

  self->_player = 0;
}

- (void)_setupPlayer
{
  v14 = *MEMORY[0x277D85DE8];
  self->_player = objc_alloc_init(MEMORY[0x277CE6598]);
  auxiliarySession = [MEMORY[0x277CB83F8] auxiliarySession];
  [auxiliarySession setCategory:*MEMORY[0x277CB8030] error:0];
  [(AVPlayer *)self->_player setAudioSession:auxiliarySession];
  [(AVPlayer *)self->_player setExternalPlaybackVideoGravity:*MEMORY[0x277CE5DD0]];
  [(AVPlayer *)self->_player setActionAtItemEnd:1];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  _playerKeysToObserve = [(PLMoviePlayerController *)self _playerKeysToObserve];
  v5 = [_playerKeysToObserve countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(_playerKeysToObserve);
        }

        [(AVPlayer *)self->_player addObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++) options:3 context:&PlayerKeyContext];
      }

      while (v6 != v8);
      v6 = [_playerKeysToObserve countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(PLMoviePlayerView *)self->_view setPlayer:self->_player];
  [(CALayer *)[(UIView *)[(PLMoviePlayerView *)self->_view videoView] layer] addObserver:self forKeyPath:@"readyForDisplay" options:5 context:&ViewerKeyContext];
  [(PLMoviePlayerController *)self _updateTVOutEnabled];
  [(PLMoviePlayerController *)self _updateDisableAirPlayMirroringDuringPlayback];
  [(PLMoviePlayerController *)self _updateBackgroundViewInformation];
}

- (void)_unregisterForNotifications
{
  [*MEMORY[0x277D76620] endReceivingRemoteControlEvents];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter removeObserver:self];
}

- (void)_registerForNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__simpleRemoteNotification_ name:*MEMORY[0x277D766F8] object:0];
  [defaultCenter addObserver:self selector:sel__willSuspendNotification_ name:*MEMORY[0x277D76730] object:0];
  [defaultCenter addObserver:self selector:sel__willBeginSuspendAnimationNotification_ name:*MEMORY[0x277D77338] object:0];
  [defaultCenter addObserver:self selector:sel__willResignNotification_ name:*MEMORY[0x277D76768] object:0];
  [defaultCenter addObserver:self selector:sel__screenDidConnect_ name:*MEMORY[0x277D76E98] object:0];
  [defaultCenter addObserver:self selector:sel__screenDidDisconnect_ name:*MEMORY[0x277D76EA0] object:0];
  [defaultCenter addObserver:self selector:sel__willEnterForegroundNotification_ name:*MEMORY[0x277D76758] object:0];
  [defaultCenter addObserver:self selector:sel__didEnterBackgroundNotification_ name:*MEMORY[0x277D76660] object:0];
  v4 = *MEMORY[0x277D76620];

  [v4 beginReceivingRemoteControlEvents];
}

- (void)dealloc
{
  [(PLMoviePlayerController *)self requestToResignAsActiveController];
  [(PLMoviePlayerController *)self _unregisterForNotifications];
  [(PLMoviePlayerController *)self _setPlayerItem:0];
  [(PLMoviePlayerController *)self _tearDownPlayer];

  self->_view = 0;
  v3.receiver = self;
  v3.super_class = PLMoviePlayerController;
  [(PLMoviePlayerController *)&v3 dealloc];
}

- (PLMoviePlayerController)init
{
  v5.receiver = self;
  v5.super_class = PLMoviePlayerController;
  v2 = [(PLMoviePlayerController *)&v5 init];
  if (v2)
  {
    v3 = [PLMoviePlayerView alloc];
    v2->_view = [(PLMoviePlayerView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v2->_playbackState = 0;
    v2->_lastSetCurrentTimeTime = -1.79769313e308;
    [(PLMoviePlayerController *)v2 _registerForNotifications];
    [(PLMoviePlayerController *)v2 _setupPlayer];
    [(PLMoviePlayerController *)v2 _updateTVOutEnabled];
    [(PLMoviePlayerController *)v2 _updateDisableAirPlayMirroringDuringPlayback];
    [(PLMoviePlayerController *)v2 _updateBackgroundViewInformation];
    v2->_backgroundTaskId = *MEMORY[0x277D767B0];
  }

  return v2;
}

+ (BOOL)_isNetworkSupportedPath:(id)path
{
  v4 = 1;
  if ([path compare:@"https://" options:1 range:{0, objc_msgSend(@"https://", "length")}])
  {
    return ![path compare:@"http://" options:1 range:{0, objc_msgSend(@"http://", "length")}] || objc_msgSend(path, "compare:options:range:", @"home-sharing://", 1, 0, objc_msgSend(@"home-sharing://", "length")) == 0;
  }

  return v4;
}

+ (BOOL)_isStreamableAsset:(id)asset
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [objc_msgSend(asset "URL")];

  return [self _isNetworkSupportedPath:v5];
}

@end