@interface NCAudioPlayerController
+ (void)initialize;
- (BOOL)shouldEnableProximityMonitoring;
- (BOOL)updateProximityMonitoring;
- (NCAudioPlayerController)initWithPlayer:(id)a3;
- (NCAudioPlayerController)initWithURL:(id)a3;
- (NCAudioPlayerControllerDelegate)delegate;
- (double)duration;
- (float)currentTime;
- (void)activateAudioSession;
- (void)deactivateAudioSession;
- (void)dealloc;
- (void)handleAudioSessionInterruptionNotification:(id)a3;
- (void)handleAudioSessionRouteChangeNotification:(id)a3;
- (void)handlePlayerItemDidPlayToEndTimeNotification:(id)a3;
- (void)handlePlayerItemFailedToPlayToEndTimeNotification:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pause;
- (void)play;
- (void)seekToTime:(float)a3;
- (void)setAudioSessionActive:(BOOL)a3;
- (void)setPlaybackState:(int64_t)a3;
- (void)setRate:(float)a3;
- (void)setStatus:(int64_t)a3;
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

- (NCAudioPlayerController)initWithURL:(id)a3
{
  v4 = [AVPlayer playerWithURL:a3];
  [v4 setActionAtItemEnd:1];
  [v4 setAllowsExternalPlayback:0];
  v5 = [(NCAudioPlayerController *)self initWithPlayer:v4];

  return v5;
}

- (NCAudioPlayerController)initWithPlayer:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = NCAudioPlayerController;
  v6 = [(NCAudioPlayerController *)&v23 init];
  v7 = v6;
  if (v6)
  {
    v6->_audioSessionActive = 0;
    objc_storeStrong(&v6->_player, a3);
    v7->_playbackState = [v5 timeControlStatus];
    [v5 rate];
    v7->_rate = v8;
    v7->_status = [v5 status];
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

    v15 = [(AVPlayer *)v7->_player currentItem];
    v16 = NSStringFromSelector("duration");
    [v15 addObserver:v7 forKeyPath:v16 options:0 context:&off_10000C418];

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

  v7 = [(AVPlayer *)self->_player currentItem];
  v8 = NSStringFromSelector("duration");
  [v7 removeObserver:self forKeyPath:v8 context:&off_10000C418];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 removeObserver:self];

  v10.receiver = self;
  v10.super_class = NCAudioPlayerController;
  [(NCAudioPlayerController *)&v10 dealloc];
}

- (float)currentTime
{
  memset(&v6, 0, sizeof(v6));
  v2 = [(NCAudioPlayerController *)self player];
  v3 = v2;
  if (v2)
  {
    [v2 currentTime];
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
  v2 = [(NCAudioPlayerController *)self player];
  v3 = [v2 currentItem];

  if (v3)
  {
    [v3 duration];
  }

  v6 = v7;
  Seconds = CMTimeGetSeconds(&v6);

  return Seconds;
}

- (void)pause
{
  v2 = [(NCAudioPlayerController *)self player];
  [v2 pause];
}

- (void)play
{
  if (![(NCAudioPlayerController *)self isAudioSessionActive])
  {
    [(NCAudioPlayerController *)self activateAudioSession];
  }

  if ([(NCAudioPlayerController *)self isAudioSessionActive])
  {
    v3 = [(NCAudioPlayerController *)self player];
    [v3 play];
  }
}

- (void)stop
{
  v3 = [(NCAudioPlayerController *)self player];
  [v3 pause];

  v4 = [(NCAudioPlayerController *)self player];
  v5 = *&kCMTimeZero.value;
  epoch = kCMTimeZero.epoch;
  [v4 seekToTime:&v5];

  if ([(NCAudioPlayerController *)self isAudioSessionActive])
  {
    [(NCAudioPlayerController *)self deactivateAudioSession];
  }
}

- (void)seekToTime:(float)a3
{
  v5 = [(NCAudioPlayerController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    *&v6 = a3;
    [v5 playerController:self willSeekToTime:v6];
  }

  memset(&v10, 0, sizeof(v10));
  CMTimeMakeWithSeconds(&v10, a3, 1);
  v7 = [(NCAudioPlayerController *)self player];
  v9 = v10;
  [v7 seekToTime:&v9];

  if (objc_opt_respondsToSelector())
  {
    *&v8 = a3;
    [v5 playerController:self didSeekToTime:v8];
  }
}

- (void)setPlaybackState:(int64_t)a3
{
  if (self->_playbackState != a3)
  {
    v6 = [(NCAudioPlayerController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v6 playerController:self willChangeToPlaybackState:a3];
    }

    self->_playbackState = a3;
    if (objc_opt_respondsToSelector())
    {
      [v6 playerController:self didChangeToPlaybackState:a3];
    }
  }
}

- (void)setRate:(float)a3
{
  if (self->_rate != a3)
  {
    v8 = [(NCAudioPlayerController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      *&v5 = a3;
      [v8 playerController:self willChangeToRate:v5];
    }

    self->_rate = a3;
    if (objc_opt_respondsToSelector())
    {
      *&v6 = a3;
      [v8 playerController:self didChangeToRate:v6];
    }

    v7 = [(NCAudioPlayerController *)self player];
    -[NCAudioPlayerController setTimeControlStatus:](self, "setTimeControlStatus:", [v7 timeControlStatus]);
  }
}

- (void)setStatus:(int64_t)a3
{
  if (self->_status != a3)
  {
    v6 = [(NCAudioPlayerController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v6 playerController:self willChangeToStatus:a3];
    }

    self->_status = a3;
    if (objc_opt_respondsToSelector())
    {
      [v6 playerController:self didChangeToStatus:a3];
    }
  }
}

- (void)setAudioSessionActive:(BOOL)a3
{
  if (self->_audioSessionActive != a3)
  {
    self->_audioSessionActive = a3;
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
    v5 = [v3 category];
    v6 = [v5 isEqualToString:v4];

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

    v17 = [v3 category];
    v18 = [v17 isEqualToString:v4];

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
  v2 = [(NCAudioPlayerController *)self player];
  v3 = [v2 timeControlStatus];

  if ((v3 - 1) > 1)
  {
    return 0;
  }

  v4 = +[AVAudioSession sharedInstance];
  v5 = [v4 currentRoute];
  v6 = [v5 outputs];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v6;
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
        v13 = [v12 portType];
        v14 = [AVAudioSessionPortBuiltInReceiver isEqualToString:v13];

        if ((v14 & 1) == 0)
        {
          v15 = [v12 portType];
          v16 = [AVAudioSessionPortBuiltInSpeaker isEqualToString:v15];

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
  v2 = [(NCAudioPlayerController *)self shouldEnableProximityMonitoring];
  v3 = +[UIDevice currentDevice];
  [v3 setProximityMonitoringEnabled:v2];
  LOBYTE(v2) = [v3 isProximityMonitoringEnabled];

  return v2;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v29 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (a6 == &off_10000C418)
  {
    if (v11)
    {
      v13 = [v11 objectForKeyedSubscript:NSKeyValueChangeNotificationIsPriorKey];
      objc_opt_class();
      v14 = (objc_opt_isKindOfClass() & 1) != 0 ? [&__kCFBooleanTrue isEqualToNumber:v13] : 0;
    }

    else
    {
      v14 = 0;
    }

    if (v29)
    {
      v15 = [v29 length];
      if (v10)
      {
        if (v15)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v10;
            v17 = [(NCAudioPlayerController *)self player];
            v18 = [v16 isEqual:v17];

            if (v18)
            {
              v19 = NSStringFromSelector("rate");
              v20 = [v29 isEqualToString:v19];

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
                v28 = [v29 isEqualToString:v27];

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

            v21 = v10;
            v22 = [(NCAudioPlayerController *)self player];
            v23 = [v22 currentItem];
            LODWORD(v21) = [v21 isEqual:v23];

            if (v21)
            {
              v24 = NSStringFromSelector("duration");
              v25 = [v29 isEqualToString:v24];

              if (v25)
              {
                v26 = [(NCAudioPlayerController *)self delegate];
                if (v14)
                {
                  if (objc_opt_respondsToSelector())
                  {
                    [(NCAudioPlayerController *)self duration];
                    [v26 playerController:self willChangeToDuration:?];
                  }
                }

                else if (objc_opt_respondsToSelector())
                {
                  [(NCAudioPlayerController *)self duration];
                  [v26 playerController:self didChangeToDuration:?];
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

- (void)handleAudioSessionInterruptionNotification:(id)a3
{
  v4 = [a3 userInfo];
  if (v4)
  {
    v9 = v4;
    v5 = [v4 objectForKeyedSubscript:AVAudioSessionInterruptionTypeKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 unsignedIntegerValue];
      if (v6 == 1)
      {
        [(NCAudioPlayerController *)self pause];
        [(NCAudioPlayerController *)self deactivateAudioSession];
      }

      else if (!v6)
      {
        v7 = [v9 objectForKeyedSubscript:AVAudioSessionInterruptionOptionKey];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v7 unsignedIntegerValue];

          if (v8 == 1)
          {
            [(NCAudioPlayerController *)self play];
          }
        }

        else
        {
        }
      }
    }

    v4 = v9;
  }
}

- (void)handleAudioSessionRouteChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  if (v4)
  {
    v6 = v4;
    v5 = [v4 objectForKeyedSubscript:AVAudioSessionRouteChangeReasonKey];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 unsignedIntegerValue] - 1 <= 3)
    {
      [(NCAudioPlayerController *)self updateProximityMonitoring];
    }

    v4 = v6;
  }
}

- (void)handlePlayerItemDidPlayToEndTimeNotification:(id)a3
{
  v4 = [a3 object];
  if (v4)
  {
    v7 = v4;
    v5 = [(NCAudioPlayerController *)self player];
    v6 = [v5 currentItem];

    v4 = v7;
    if (v7 == v6)
    {
      [(NCAudioPlayerController *)self stop];
      v4 = v7;
    }
  }
}

- (void)handlePlayerItemFailedToPlayToEndTimeNotification:(id)a3
{
  v10 = a3;
  v4 = [v10 object];
  if (v4)
  {
    v5 = [(NCAudioPlayerController *)self player];
    v6 = [v5 currentItem];

    if (v4 == v6)
    {
      v7 = [v10 userInfo];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 objectForKeyedSubscript:AVPlayerItemFailedToPlayToEndTimeErrorKey];
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