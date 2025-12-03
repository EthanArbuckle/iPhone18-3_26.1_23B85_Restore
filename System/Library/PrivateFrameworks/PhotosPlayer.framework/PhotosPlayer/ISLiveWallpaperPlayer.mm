@interface ISLiveWallpaperPlayer
- (void)_handleDidFinishSeeking:(BOOL)seeking;
- (void)_seekVideoToBeginning;
- (void)_seekVideoToEnd;
- (void)_setActive:(BOOL)active;
- (void)_setPlayRate:(float)rate;
- (void)_update;
- (void)_updatePlayer;
- (void)didPerformChanges;
- (void)setForce:(double)force;
- (void)setPlayerItem:(id)item;
- (void)setTouching:(BOOL)touching;
- (void)statusDidChange;
@end

@implementation ISLiveWallpaperPlayer

- (void)_handleDidFinishSeeking:(BOOL)seeking
{
  [(ISLiveWallpaperPlayer *)self _setSeeking:0];

  [(ISLiveWallpaperPlayer *)self _updatePlayer];
}

- (void)_seekVideoToEnd
{
  if (![(ISLiveWallpaperPlayer *)self _isSeeking])
  {
    [(ISLiveWallpaperPlayer *)self _setSeeking:1];
    objc_initWeak(&location, self);
    videoPlayer = [(ISBasePlayer *)self videoPlayer];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __40__ISLiveWallpaperPlayer__seekVideoToEnd__block_invoke;
    v10[3] = &unk_279A29C30;
    objc_copyWeak(&v11, &location);
    v8 = *&self->_videoDuration.value;
    epoch = self->_videoDuration.epoch;
    v6 = *MEMORY[0x277CC08F0];
    v7 = *(MEMORY[0x277CC08F0] + 16);
    v4 = v6;
    v5 = v7;
    [videoPlayer seekToTime:&v8 toleranceBefore:&v6 toleranceAfter:&v4 completionHandler:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __40__ISLiveWallpaperPlayer__seekVideoToEnd__block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__ISLiveWallpaperPlayer__seekVideoToEnd__block_invoke_2;
  v3[3] = &unk_279A29C08;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  is_dispatch_on_main_queue(v3);
  objc_destroyWeak(&v4);
}

void __40__ISLiveWallpaperPlayer__seekVideoToEnd__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDidFinishSeeking:*(a1 + 40)];
}

- (void)_seekVideoToBeginning
{
  if (![(ISLiveWallpaperPlayer *)self _isSeeking])
  {
    [(ISLiveWallpaperPlayer *)self _setSeeking:1];
    objc_initWeak(&location, self);
    videoPlayer = [(ISBasePlayer *)self videoPlayer];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__ISLiveWallpaperPlayer__seekVideoToBeginning__block_invoke;
    v10[3] = &unk_279A29C30;
    objc_copyWeak(&v11, &location);
    v8 = *MEMORY[0x277CC08F0];
    v9 = *(MEMORY[0x277CC08F0] + 16);
    v6 = v8;
    v7 = v9;
    v4 = v8;
    v5 = v9;
    [videoPlayer seekToTime:&v8 toleranceBefore:&v6 toleranceAfter:&v4 completionHandler:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __46__ISLiveWallpaperPlayer__seekVideoToBeginning__block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__ISLiveWallpaperPlayer__seekVideoToBeginning__block_invoke_2;
  v3[3] = &unk_279A29C08;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  is_dispatch_on_main_queue(v3);
  objc_destroyWeak(&v4);
}

void __46__ISLiveWallpaperPlayer__seekVideoToBeginning__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDidFinishSeeking:*(a1 + 40)];
}

- (void)_updatePlayer
{
  videoPlayer = [(ISBasePlayer *)self videoPlayer];
  [(ISLiveWallpaperPlayer *)self _playRate];
  v5 = v4;
  videoDuration = self->_videoDuration;
  memset(&v18, 0, sizeof(v18));
  if (videoPlayer)
  {
    [videoPlayer currentTime];
  }

  [videoPlayer rate];
  v7 = v6;
  time1 = v18;
  v16 = **&MEMORY[0x277CC08F0];
  v8 = CMTimeCompare(&time1, &v16);
  v10 = v5 < 0.0 && v8 < 1;
  time1 = v18;
  v16 = videoDuration;
  v11 = 0;
  if ((CMTimeCompare(&time1, &v16) & 0x80000000) == 0 && v5 > 0.0)
  {
    v11 = (v18.flags & 0x1D) == 1;
  }

  v12 = +[ISPlayerSettings sharedInstance];
  [v12 forceScrubMinRateChange];
  v14 = v13 >= vabds_f32(v7, v5);

  if (!v14 && !v10 && !v11)
  {
    time1 = v18;
    if (CMTimeGetSeconds(&time1) >= 0.0)
    {
      time1 = v18;
      v16 = videoDuration;
      if (CMTimeCompare(&time1, &v16) < 1)
      {
        *&v15 = v5;
        [videoPlayer setRate:v15];
      }

      else
      {
        [(ISLiveWallpaperPlayer *)self _seekVideoToEnd];
      }
    }

    else
    {
      [(ISLiveWallpaperPlayer *)self _seekVideoToBeginning];
    }
  }
}

- (void)_setPlayRate:(float)rate
{
  if (self->__playRate != rate)
  {
    self->__playRate = rate;
    [(ISLiveWallpaperPlayer *)self _updatePlayer];
  }
}

- (void)_setActive:(BOOL)active
{
  if (self->__active != active)
  {
    activeCopy = active;
    self->__active = active;
    [(ISObservable *)self signalChange:16];
    _displayLink = [(ISLiveWallpaperPlayer *)self _displayLink];

    if (activeCopy)
    {
      if (!_displayLink)
      {
        v6 = [[ISPlayerState alloc] initWithPhotoBlurRadius:@"WALLPAPER PLAY" videoAlpha:0.0 videoBlurRadius:1.0 label:0.0];
        [(ISBasePlayer *)self applyOutputInfo:v6 fromBehavior:0 withTransitionOptions:0 completion:0];
        objc_initWeak(&location, self);
        v7 = [ISDisplayLink alloc];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __36__ISLiveWallpaperPlayer__setActive___block_invoke;
        v11[3] = &unk_279A29FD0;
        objc_copyWeak(&v12, &location);
        v8 = [(ISDisplayLink *)v7 initWithUpdateHandler:v11 completionHandler:0];
        [(ISLiveWallpaperPlayer *)self _setDisplayLink:v8];
        [(ISDisplayLink *)v8 start];

        objc_destroyWeak(&v12);
        objc_destroyWeak(&location);
      }
    }

    else if (_displayLink)
    {
      v10 = [[ISPlayerState alloc] initWithPhotoBlurRadius:@"WALLPAPER STOP" videoAlpha:0.0 videoBlurRadius:0.0 label:0.0];
      [(ISBasePlayer *)self applyOutputInfo:v10 fromBehavior:0 withTransitionOptions:0 completion:0];
      _displayLink2 = [(ISLiveWallpaperPlayer *)self _displayLink];
      [_displayLink2 stop];

      [(ISLiveWallpaperPlayer *)self _setDisplayLink:0];
      self->_smoothedVelocity = 0.0;
    }
  }
}

void __36__ISLiveWallpaperPlayer__setActive___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _update];
}

- (void)_update
{
  videoPlayer = [(ISBasePlayer *)self videoPlayer];
  if (videoPlayer)
  {
    v4 = videoPlayer;
    status = [(ISBasePlayer *)self status];

    if (status >= 1)
    {
      flags = self->_videoDuration.flags;
      if ((flags & 0x1D) != 1)
      {
        v13 = 0uLL;
        v14 = 0;
        videoPlayer2 = [(ISBasePlayer *)self videoPlayer];
        currentItem = [videoPlayer2 currentItem];
        asset = [currentItem asset];
        v10 = asset;
        if (asset)
        {
          [asset duration];
        }

        else
        {
          v13 = 0uLL;
          v14 = 0;
        }

        *&self->_videoDuration.value = v13;
        self->_videoDuration.epoch = v14;
        flags = self->_videoDuration.flags;
      }

      if ((flags & 0x1D) == 1)
      {
        v13 = 0uLL;
        v14 = 0;
        videoPlayer3 = [(ISBasePlayer *)self videoPlayer];
        v12 = videoPlayer3;
        if (videoPlayer3)
        {
          [videoPlayer3 currentTime];
        }

        else
        {
          v13 = 0uLL;
          v14 = 0;
        }
      }
    }
  }
}

- (void)statusDidChange
{
  v2.receiver = self;
  v2.super_class = ISLiveWallpaperPlayer;
  [(ISBasePlayer *)&v2 statusDidChange];
}

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = ISLiveWallpaperPlayer;
  [(ISBasePlayer *)&v3 didPerformChanges];
  [(ISLiveWallpaperPlayer *)self _update];
}

- (void)setForce:(double)force
{
  if (self->_force != force)
  {
    self->_force = force;
    [(ISObservable *)self signalChange:8];
  }
}

- (void)setTouching:(BOOL)touching
{
  if (self->_touching != touching)
  {
    self->_touching = touching;
    [(ISObservable *)self signalChange:4];
  }
}

- (void)setPlayerItem:(id)item
{
  v4.receiver = self;
  v4.super_class = ISLiveWallpaperPlayer;
  itemCopy = item;
  [(ISBasePlayer *)&v4 setPlayerItem:itemCopy];
  [itemCopy setReversesMoreVideoFramesInMemory:{1, v4.receiver, v4.super_class}];
  [itemCopy setAggressivelyCacheVideoFrames:1];
  [itemCopy setDecodesAllFramesDuringOrdinaryPlayback:1];
}

@end