@interface NCAudioPlayerController
+ (void)initialize;
- (BOOL)shouldEnableProximityMonitoring;
- (BOOL)updateProximityMonitoring;
- (NCAudioPlayerController)initWithPlayer:(id)player;
- (NCAudioPlayerController)initWithURL:(id)l;
- (NCAudioPlayerControllerDelegate)delegate;
- (double)duration;
- (float)currentTime;
- (void)activateAudioSession;
- (void)deactivateAudioSession;
- (void)dealloc;
- (void)handleAudioSessionInterruptionNotification:(id)notification;
- (void)handleAudioSessionRouteChangeNotification:(id)notification;
- (void)handlePlayerItemDidPlayToEndTimeNotification:(id)notification;
- (void)handlePlayerItemFailedToPlayToEndTimeNotification:(id)notification;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pause;
- (void)play;
- (void)seekToTime:(float)time;
- (void)setAudioSessionActive:(BOOL)active;
- (void)setPlaybackState:(int64_t)state;
- (void)setRate:(float)rate;
- (void)setStatus:(int64_t)status;
- (void)stop;
@end

@implementation NCAudioPlayerController

+ (void)initialize
{
  if (qword_1000115D8 != -1)
  {
    sub_100005658();
  }
}

- (NCAudioPlayerController)initWithURL:(id)l
{
  v4 = [AVPlayer playerWithURL:l];
  [v4 setActionAtItemEnd:1];
  [v4 setAllowsExternalPlayback:0];
  v5 = [(NCAudioPlayerController *)self initWithPlayer:v4];

  return v5;
}

- (NCAudioPlayerController)initWithPlayer:(id)player
{
  playerCopy = player;
  v23.receiver = self;
  v23.super_class = NCAudioPlayerController;
  v6 = [(NCAudioPlayerController *)&v23 init];
  v7 = v6;
  if (v6)
  {
    v6->_audioSessionActive = 0;
    objc_storeStrong(&v6->_player, player);
    v7->_playbackState = [playerCopy timeControlStatus];
    [playerCopy rate];
    v7->_rate = v8;
    v7->_status = [playerCopy status];
    objc_initWeak(&location, v7);
    player = v7->_player;
    CMTimeMake(&v21, 1, 100);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000014E0;
    v19[3] = &unk_10000C3F8;
    objc_copyWeak(&v20, &location);
    v10 = [(AVPlayer *)player addPeriodicTimeObserverForInterval:&v21 queue:0 usingBlock:v19];
    v11 = v7->_player;
    v12 = NSStringFromSelector("rate");
    [(AVPlayer *)v11 addObserver:v7 forKeyPath:v12 options:0 context:&off_10000C418];

    v13 = v7->_player;
    v14 = NSStringFromSelector("status");
    [(AVPlayer *)v13 addObserver:v7 forKeyPath:v14 options:0 context:&off_10000C418];

    currentItem = [(AVPlayer *)v7->_player currentItem];
    v16 = NSStringFromSelector("duration");
    [currentItem addObserver:v7 forKeyPath:v16 options:0 context:&off_10000C418];

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v7 selector:"handlePlayerItemDidPlayToEndTimeNotification:" name:AVPlayerItemDidPlayToEndTimeNotification object:0];
    [v17 addObserver:v7 selector:"handlePlayerItemFailedToPlayToEndTimeNotification:" name:AVPlayerItemFailedToPlayToEndTimeNotification object:0];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)dealloc
{
  [(NCAudioPlayerController *)self deactivateAudioSession];
  player = self->_player;
  v4 = NSStringFromSelector("rate");
  [(AVPlayer *)player removeObserver:self forKeyPath:v4 context:&off_10000C418];

  v5 = self->_player;
  v6 = NSStringFromSelector("status");
  [(AVPlayer *)v5 removeObserver:self forKeyPath:v6 context:&off_10000C418];

  currentItem = [(AVPlayer *)self->_player currentItem];
  v8 = NSStringFromSelector("duration");
  [currentItem removeObserver:self forKeyPath:v8 context:&off_10000C418];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 removeObserver:self];

  v10.receiver = self;
  v10.super_class = NCAudioPlayerController;
  [(NCAudioPlayerController *)&v10 dealloc];
}

- (float)currentTime
{
  memset(&v6, 0, sizeof(v6));
  player = [(NCAudioPlayerController *)self player];
  v3 = player;
  if (player)
  {
    [player currentTime];
  }

  else
  {
    memset(&v6, 0, sizeof(v6));
  }

  v5 = v6;
  return CMTimeGetSeconds(&v5);
}

- (double)duration
{
  v7 = kCMTimeIndefinite;
  player = [(NCAudioPlayerController *)self player];
  currentItem = [player currentItem];

  if (currentItem)
  {
    [currentItem duration];
  }

  v6 = v7;
  Seconds = CMTimeGetSeconds(&v6);

  return Seconds;
}

- (void)pause
{
  player = [(NCAudioPlayerController *)self player];
  [player pause];
}

- (void)play
{
  if (![(NCAudioPlayerController *)self isAudioSessionActive])
  {
    [(NCAudioPlayerController *)self activateAudioSession];
  }

  if ([(NCAudioPlayerController *)self isAudioSessionActive])
  {
    player = [(NCAudioPlayerController *)self player];
    [player play];
  }
}

- (void)stop
{
  player = [(NCAudioPlayerController *)self player];
  [player pause];

  player2 = [(NCAudioPlayerController *)self player];
  v5 = *&kCMTimeZero.value;
  epoch = kCMTimeZero.epoch;
  [player2 seekToTime:&v5];

  if ([(NCAudioPlayerController *)self isAudioSessionActive])
  {
    [(NCAudioPlayerController *)self deactivateAudioSession];
  }
}

- (void)seekToTime:(float)time
{
  delegate = [(NCAudioPlayerController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    *&v6 = time;
    [delegate playerController:self willSeekToTime:v6];
  }

  memset(&v10, 0, sizeof(v10));
  CMTimeMakeWithSeconds(&v10, time, 1);
  player = [(NCAudioPlayerController *)self player];
  v9 = v10;
  [player seekToTime:&v9];

  if (objc_opt_respondsToSelector())
  {
    *&v8 = time;
    [delegate playerController:self didSeekToTime:v8];
  }
}

- (void)setPlaybackState:(int64_t)state
{
  if (self->_playbackState != state)
  {
    delegate = [(NCAudioPlayerController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate playerController:self willChangeToPlaybackState:state];
    }

    self->_playbackState = state;
    if (objc_opt_respondsToSelector())
    {
      [delegate playerController:self didChangeToPlaybackState:state];
    }
  }
}

- (void)setRate:(float)rate
{
  if (self->_rate != rate)
  {
    delegate = [(NCAudioPlayerController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      *&v5 = rate;
      [delegate playerController:self willChangeToRate:v5];
    }

    self->_rate = rate;
    if (objc_opt_respondsToSelector())
    {
      *&v6 = rate;
      [delegate playerController:self didChangeToRate:v6];
    }

    player = [(NCAudioPlayerController *)self player];
    -[NCAudioPlayerController setTimeControlStatus:](self, "setTimeControlStatus:", [player timeControlStatus]);
  }
}

- (void)setStatus:(int64_t)status
{
  if (self->_status != status)
  {
    delegate = [(NCAudioPlayerController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate playerController:self willChangeToStatus:status];
    }

    self->_status = status;
    if (objc_opt_respondsToSelector())
    {
      [delegate playerController:self didChangeToStatus:status];
    }
  }
}

- (void)setAudioSessionActive:(BOOL)active
{
  if (self->_audioSessionActive != active)
  {
    self->_audioSessionActive = active;
    v5 = +[NSNotificationCenter defaultCenter];
    if (self->_audioSessionActive)
    {
      [v5 addObserver:self selector:"handleAudioSessionInterruptionNotification:" name:AVAudioSessionInterruptionNotification object:0];
      [v5 addObserver:self selector:"handleAudioSessionRouteChangeNotification:" name:AVAudioSessionRouteChangeNotification object:0];
      [v5 addObserver:self selector:"handleAudioSessionMediaServicesWereLostNotification:" name:AVAudioSessionMediaServicesWereLostNotification object:0];
      [v5 addObserver:self selector:"handleAudioSessionMediaServicesWereResetNotification:" name:AVAudioSessionMediaServicesWereResetNotification object:0];
    }

    else
    {
      [v5 removeObserver:self name:AVAudioSessionInterruptionNotification object:0];
      [v5 removeObserver:self name:AVAudioSessionRouteChangeNotification object:0];
      [v5 removeObserver:self name:AVAudioSessionMediaServicesWereLostNotification object:0];
      [v5 removeObserver:self name:AVAudioSessionMediaServicesWereResetNotification object:0];
    }
  }
}

- (void)activateAudioSession
{
  if (![(NCAudioPlayerController *)self isAudioSessionActive])
  {
    v3 = +[AVAudioSession sharedInstance];
    v4 = AVAudioSessionCategoryVoiceMail;
    category = [v3 category];
    v6 = [category isEqualToString:v4];

    if ((v6 & 1) == 0)
    {
      v30 = 0;
      v7 = [v3 setCategory:v4 error:&v30];
      v8 = v30;
      v9 = v8;
      if ((v7 & 1) == 0)
      {
        if (v8)
        {
          v10 = qword_1000115E0;
          if (os_log_type_enabled(qword_1000115E0, OS_LOG_TYPE_ERROR))
          {
            sub_10000566C(v9, v10, v11, v12, v13, v14, v15, v16);
          }
        }
      }
    }

    category2 = [v3 category];
    v18 = [category2 isEqualToString:v4];

    if (v18)
    {
      v29 = 0;
      v19 = [v3 setActive:1 error:&v29];
      v20 = v29;
      v21 = v20;
      if (v19)
      {
        [(NCAudioPlayerController *)self setAudioSessionActive:1];
      }

      else if (v20)
      {
        v22 = qword_1000115E0;
        if (os_log_type_enabled(qword_1000115E0, OS_LOG_TYPE_ERROR))
        {
          sub_10000566C(v21, v22, v23, v24, v25, v26, v27, v28);
        }
      }
    }
  }
}

- (void)deactivateAudioSession
{
  if ([(NCAudioPlayerController *)self isAudioSessionActive])
  {
    v3 = +[AVAudioSession sharedInstance];
    v14 = 0;
    v4 = [v3 setActive:0 withOptions:1 error:&v14];
    v5 = v14;
    v6 = v5;
    if (v4)
    {
      [(NCAudioPlayerController *)self setAudioSessionActive:0];
    }

    else if (v5)
    {
      v7 = qword_1000115E0;
      if (os_log_type_enabled(qword_1000115E0, OS_LOG_TYPE_ERROR))
      {
        sub_1000056D8(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }
  }
}

- (BOOL)shouldEnableProximityMonitoring
{
  player = [(NCAudioPlayerController *)self player];
  timeControlStatus = [player timeControlStatus];

  if ((timeControlStatus - 1) > 1)
  {
    return 0;
  }

  v4 = +[AVAudioSession sharedInstance];
  currentRoute = [v4 currentRoute];
  outputs = [currentRoute outputs];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = outputs;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        portType = [v12 portType];
        v14 = [AVAudioSessionPortBuiltInReceiver isEqualToString:portType];

        if ((v14 & 1) == 0)
        {
          portType2 = [v12 portType];
          v16 = [AVAudioSessionPortBuiltInSpeaker isEqualToString:portType2];

          if (!v16 || !UIAccessibilityIsVoiceOverRunning())
          {
            continue;
          }
        }

        v17 = 1;
        goto LABEL_15;
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_15:

  return v17;
}

- (BOOL)updateProximityMonitoring
{
  shouldEnableProximityMonitoring = [(NCAudioPlayerController *)self shouldEnableProximityMonitoring];
  v3 = +[UIDevice currentDevice];
  [v3 setProximityMonitoringEnabled:shouldEnableProximityMonitoring];
  LOBYTE(shouldEnableProximityMonitoring) = [v3 isProximityMonitoringEnabled];

  return shouldEnableProximityMonitoring;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v12 = changeCopy;
  if (context == &off_10000C418)
  {
    if (changeCopy)
    {
      v13 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNotificationIsPriorKey];
      objc_opt_class();
      v14 = (objc_opt_isKindOfClass() & 1) != 0 ? [&__kCFBooleanTrue isEqualToNumber:v13] : 0;
    }

    else
    {
      v14 = 0;
    }

    if (pathCopy)
    {
      v15 = [pathCopy length];
      if (objectCopy)
      {
        if (v15)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = objectCopy;
            player = [(NCAudioPlayerController *)self player];
            v18 = [v16 isEqual:player];

            if (v18)
            {
              v19 = NSStringFromSelector("rate");
              v20 = [pathCopy isEqualToString:v19];

              if (v20)
              {
                if ((v14 & 1) == 0)
                {
                  [v16 rate];
                  [(NCAudioPlayerController *)self setRate:?];
                  [(NCAudioPlayerController *)self updateProximityMonitoring];
                }
              }

              else
              {
                v27 = NSStringFromSelector("status");
                v28 = [pathCopy isEqualToString:v27];

                if (!(v14 & 1 | ((v28 & 1) == 0)))
                {
                  -[NCAudioPlayerController setStatus:](self, "setStatus:", [v16 status]);
                }
              }
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_2;
            }

            v21 = objectCopy;
            player2 = [(NCAudioPlayerController *)self player];
            currentItem = [player2 currentItem];
            LODWORD(v21) = [v21 isEqual:currentItem];

            if (v21)
            {
              v24 = NSStringFromSelector("duration");
              v25 = [pathCopy isEqualToString:v24];

              if (v25)
              {
                delegate = [(NCAudioPlayerController *)self delegate];
                if (v14)
                {
                  if (objc_opt_respondsToSelector())
                  {
                    [(NCAudioPlayerController *)self duration];
                    [delegate playerController:self willChangeToDuration:?];
                  }
                }

                else if (objc_opt_respondsToSelector())
                {
                  [(NCAudioPlayerController *)self duration];
                  [delegate playerController:self didChangeToDuration:?];
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_2:
}

- (void)handleAudioSessionInterruptionNotification:(id)notification
{
  userInfo = [notification userInfo];
  if (userInfo)
  {
    v9 = userInfo;
    v5 = [userInfo objectForKeyedSubscript:AVAudioSessionInterruptionTypeKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [v5 unsignedIntegerValue];
      if (unsignedIntegerValue == 1)
      {
        [(NCAudioPlayerController *)self pause];
        [(NCAudioPlayerController *)self deactivateAudioSession];
      }

      else if (!unsignedIntegerValue)
      {
        v7 = [v9 objectForKeyedSubscript:AVAudioSessionInterruptionOptionKey];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          unsignedIntegerValue2 = [v7 unsignedIntegerValue];

          if (unsignedIntegerValue2 == 1)
          {
            [(NCAudioPlayerController *)self play];
          }
        }

        else
        {
        }
      }
    }

    userInfo = v9;
  }
}

- (void)handleAudioSessionRouteChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  if (userInfo)
  {
    v6 = userInfo;
    v5 = [userInfo objectForKeyedSubscript:AVAudioSessionRouteChangeReasonKey];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 unsignedIntegerValue] - 1 <= 3)
    {
      [(NCAudioPlayerController *)self updateProximityMonitoring];
    }

    userInfo = v6;
  }
}

- (void)handlePlayerItemDidPlayToEndTimeNotification:(id)notification
{
  object = [notification object];
  if (object)
  {
    v7 = object;
    player = [(NCAudioPlayerController *)self player];
    currentItem = [player currentItem];

    object = v7;
    if (v7 == currentItem)
    {
      [(NCAudioPlayerController *)self stop];
      object = v7;
    }
  }
}

- (void)handlePlayerItemFailedToPlayToEndTimeNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if (object)
  {
    player = [(NCAudioPlayerController *)self player];
    currentItem = [player currentItem];

    if (object == currentItem)
    {
      userInfo = [notificationCopy userInfo];
      v8 = userInfo;
      if (userInfo)
      {
        v9 = [userInfo objectForKeyedSubscript:AVPlayerItemFailedToPlayToEndTimeErrorKey];
        objc_opt_class();
        objc_opt_isKindOfClass();
      }

      [(NCAudioPlayerController *)self stop];
    }
  }
}

- (NCAudioPlayerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end