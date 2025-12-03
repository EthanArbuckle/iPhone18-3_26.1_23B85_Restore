@interface ISLivePhotoVitalityBehavior
- (ISLivePhotoVitalityBehavior)initWithInitialLayoutInfo:(id)info playbackEndTime:(id *)time playDuration:(id *)duration playRate:(float)rate photoTransitionDuration:(double)transitionDuration pauseDuringTransition:(BOOL)transition assetOptions:(unint64_t)options;
- (void)_didReachTransitionTime;
- (void)_didReachTransitionToPhotoTime;
- (void)_handleDidFinishPreroll;
- (void)_handleDidSeekToStartTime;
- (void)_startObservingVideo;
- (void)_startVideoPlayback;
- (void)_stopObservingVideo;
- (void)activeDidChange;
- (void)cancelSettleToPhoto;
- (void)dealloc;
- (void)playVitality;
- (void)prepareForVitality;
- (void)videoReadyForDisplayDidChange;
@end

@implementation ISLivePhotoVitalityBehavior

- (void)cancelSettleToPhoto
{
  v4 = [[ISPlayerState alloc] initWithPhotoBlurRadius:@"Continue Vitality" videoAlpha:0.0 videoBlurRadius:1.0 label:0.0];
  [(ISBehavior *)self setOutputInfo:v4 withTransitionOptions:0 completion:0];
  LODWORD(v3) = 1.0;
  [(ISBehavior *)self setVideoPlayRate:v3];
  [(ISLivePhotoVitalityBehavior *)self _setPlayingBeyondPhoto:1];
}

- (void)_didReachTransitionToPhotoTime
{
  delegate = [(ISBehavior *)self delegate];
  v4 = [delegate vitalityBehaviorShouldEndPlayingAtPhoto:self];

  if (v4)
  {
    v5 = [[ISPlayerState alloc] initWithPhotoBlurRadius:@"Vitality End" videoAlpha:0.0 videoBlurRadius:0.0 label:0.0];
    v6 = objc_alloc_init(ISPlayerOutputTransitionOptions);
    [(ISLivePhotoVitalityBehavior *)self photoTransitionDuration];
    v8 = v7;
    delegate2 = [(ISBehavior *)self delegate];
    [delegate2 videoPlayRate];
    v11 = v10;

    if (v11 > 0.0)
    {
      v8 = v8 / v11;
    }

    v12 = +[ISVitalitySettings sharedInstance];
    [v12 minimumPhotoTransitionDuration];
    if (v13 < v8)
    {
      v13 = v8;
    }

    [(ISPlayerOutputTransitionOptions *)v6 setTransitionDuration:v13];
    self->_playing = 0;
    delegate3 = [(ISBehavior *)self delegate];
    objc_initWeak(&location, self);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __61__ISLivePhotoVitalityBehavior__didReachTransitionToPhotoTime__block_invoke;
    v16[3] = &unk_279A2A3E8;
    v15 = delegate3;
    v17 = v15;
    objc_copyWeak(&v18, &location);
    [(ISBehavior *)self setOutputInfo:v5 withTransitionOptions:v6 completion:v16];
    objc_destroyWeak(&v18);

    objc_destroyWeak(&location);
  }
}

void __61__ISLivePhotoVitalityBehavior__didReachTransitionToPhotoTime__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 vitalityBehaviorDidEndPlaying:WeakRetained];
}

- (void)_didReachTransitionTime
{
  v3 = +[ISPlayerSettings sharedInstance];
  if ([v3 easingEnabled] && (-[ISBehavior delegate](self, "delegate"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "vitalityBehaviorShouldEndPlayingAtPhoto:", self), v4, v5))
  {
    delegate = [(ISBehavior *)self delegate];
    [(ISLivePhotoVitalityBehavior *)self playbackEndTime];
    LODWORD(v7) = 1.0;
    [delegate behavior:self playVideoToTime:v8 initialRate:0 overDuration:v7 progressHandler:0.0];
  }

  else
  {
    [(ISLivePhotoVitalityBehavior *)self _setPlayingBeyondPhoto:1];
  }
}

- (void)_startVideoPlayback
{
  [(ISLivePhotoVitalityBehavior *)self _setPrepared:0];
  [(ISLivePhotoVitalityBehavior *)self _setShouldPlayAfterPreparation:0];
  v8 = objc_alloc_init(ISPlayerOutputTransitionOptions);
  [(ISPlayerOutputTransitionOptions *)v8 setTransitionDuration:0.15];
  v3 = [[ISPlayerState alloc] initWithPhotoBlurRadius:@"Show video for vitality" videoAlpha:0.0 videoBlurRadius:1.0 label:0.0];
  [(ISBehavior *)self setOutputInfo:v3 withTransitionOptions:v8 completion:0];
  [(ISLivePhotoVitalityBehavior *)self playRate];
  v5 = v4;
  [(ISBehavior *)self setVideoVolume:0.0];
  LODWORD(v6) = v5;
  [(ISBehavior *)self setVideoPlayRate:v6];
  self->_playing = 1;
  delegate = [(ISBehavior *)self delegate];
  [delegate vitalityBehaviorDidBeginPlaying:self];
}

- (void)videoReadyForDisplayDidChange
{
  v3.receiver = self;
  v3.super_class = ISLivePhotoVitalityBehavior;
  [(ISBehavior *)&v3 videoReadyForDisplayDidChange];
  if ([(ISLivePhotoVitalityBehavior *)self _shouldPlayAfterPreparation])
  {
    if (![(ISLivePhotoVitalityBehavior *)self isPlaying])
    {
      [(ISLivePhotoVitalityBehavior *)self _startVideoPlayback];
    }
  }
}

- (void)playVitality
{
  if ([(ISBehavior *)self isActive])
  {
    if ([(ISLivePhotoVitalityBehavior *)self isPrepared])
    {

      [(ISLivePhotoVitalityBehavior *)self _startVideoPlayback];
    }

    else
    {
      _isPreparing = [(ISLivePhotoVitalityBehavior *)self _isPreparing];
      [(ISLivePhotoVitalityBehavior *)self _setShouldPlayAfterPreparation:1];
      if (!_isPreparing)
      {

        [(ISLivePhotoVitalityBehavior *)self prepareForVitality];
      }
    }
  }
}

- (void)_handleDidFinishPreroll
{
  [(ISLivePhotoVitalityBehavior *)self _setPreparing:0];
  [(ISLivePhotoVitalityBehavior *)self _setPrepared:1];
  if ([(ISLivePhotoVitalityBehavior *)self _shouldPlayAfterPreparation])
  {

    [(ISLivePhotoVitalityBehavior *)self playVitality];
  }
}

- (void)_handleDidSeekToStartTime
{
  memset(&v8, 0, sizeof(v8));
  [(ISLivePhotoVitalityBehavior *)self playbackEndTime];
  CMTimeMake(&rhs, 2, 600);
  v5 = v8;
  CMTimeSubtract(&v7, &v5, &rhs);
  v8 = v7;
  [(ISBehavior *)self setVideoForwardPlaybackEndTime:&v7];
  v3 = +[ISVitalitySettings sharedInstance];
  shouldPreroll = [v3 shouldPreroll];

  if (shouldPreroll)
  {
    [(ISLivePhotoVitalityBehavior *)self playRate];
    [(ISBehavior *)self prerollVideoAtRate:&__block_literal_global_1357 completionHandler:?];
  }

  [(ISLivePhotoVitalityBehavior *)self _handleDidFinishPreroll];
}

- (void)_stopObservingVideo
{
  delegate = [(ISBehavior *)self delegate];
  [delegate behavior:self removeTimeObserver:self->_easeOutObserver];

  delegate2 = [(ISBehavior *)self delegate];
  [delegate2 behavior:self removeTimeObserver:self->_transitionToPhotoObserver];
}

- (void)_startObservingVideo
{
  v28[1] = *MEMORY[0x277D85DE8];
  memset(&v26, 0, sizeof(v26));
  [(ISLivePhotoVitalityBehavior *)self playbackEndTime];
  v3 = +[ISPlayerSettings sharedInstance];
  [v3 vitalityEaseDuration];
  CMTimeMakeWithSeconds(&rhs, v4, 600);
  CMTimeSubtract(&v26, &lhs, &rhs);

  memset(&lhs, 0, sizeof(lhs));
  [(ISLivePhotoVitalityBehavior *)self playbackEndTime];
  [(ISLivePhotoVitalityBehavior *)self photoTransitionDuration];
  CMTimeMakeWithSeconds(&time1, v5, 600);
  CMTimeSubtract(&lhs, &rhs, &time1);
  CMTimeMake(&time1, 1, 30);
  time2 = lhs;
  CMTimeMaximum(&rhs, &time1, &time2);
  lhs = rhs;
  objc_initWeak(&time1, self);
  delegate = [(ISBehavior *)self delegate];
  rhs = v26;
  v7 = [MEMORY[0x277CCAE60] valueWithCMTime:&rhs];
  v28[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v9 = MEMORY[0x277D85CD0];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __51__ISLivePhotoVitalityBehavior__startObservingVideo__block_invoke;
  v20[3] = &unk_279A2A3C0;
  objc_copyWeak(&v21, &time1);
  v10 = [delegate behavior:self addBoundaryTimeObserverForTimes:v8 queue:MEMORY[0x277D85CD0] usingBlock:v20];
  easeOutObserver = self->_easeOutObserver;
  self->_easeOutObserver = v10;

  delegate2 = [(ISBehavior *)self delegate];
  rhs = lhs;
  v13 = [MEMORY[0x277CCAE60] valueWithCMTime:&rhs];
  v27 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __51__ISLivePhotoVitalityBehavior__startObservingVideo__block_invoke_2;
  v18[3] = &unk_279A2A3C0;
  objc_copyWeak(&v19, &time1);
  v15 = [delegate2 behavior:self addBoundaryTimeObserverForTimes:v14 queue:MEMORY[0x277D85CD0] usingBlock:v18];
  transitionToPhotoObserver = self->_transitionToPhotoObserver;
  self->_transitionToPhotoObserver = v15;

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&time1);
  v17 = *MEMORY[0x277D85DE8];
}

void __51__ISLivePhotoVitalityBehavior__startObservingVideo__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didReachTransitionTime];
}

void __51__ISLivePhotoVitalityBehavior__startObservingVideo__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didReachTransitionToPhotoTime];
}

- (void)prepareForVitality
{
  if (![(ISLivePhotoVitalityBehavior *)self _isPreparing]&& ![(ISLivePhotoVitalityBehavior *)self isPrepared]&& [(ISBehavior *)self isActive])
  {
    [(ISLivePhotoVitalityBehavior *)self _setPreparing:1];
    memset(&v17[1], 0, sizeof(CMTime));
    [(ISLivePhotoVitalityBehavior *)self playbackEndTime];
    memset(v17, 0, 24);
    [(ISLivePhotoVitalityBehavior *)self playDuration];
    memset(&v16, 0, sizeof(v16));
    lhs = v17[1];
    rhs = v17[0];
    CMTimeSubtract(&v16, &lhs, &rhs);
    rhs = v16;
    time2 = **&MEMORY[0x277CC08F0];
    CMTimeMaximum(&lhs, &rhs, &time2);
    v16 = lhs;
    objc_initWeak(&location, self);
    v3 = +[ISVitalitySettings sharedInstance];
    oneUpSettings = [v3 oneUpSettings];
    [oneUpSettings startSeekTolerance];
    v6 = v5;

    memset(&lhs, 0, sizeof(lhs));
    v7 = v6 * 0.5;
    CMTimeMakeWithSeconds(&lhs, v7, 600);
    memset(&rhs, 0, sizeof(rhs));
    CMTimeMakeWithSeconds(&rhs, v7, 600);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__ISLivePhotoVitalityBehavior_prepareForVitality__block_invoke;
    v10[3] = &unk_279A29C30;
    objc_copyWeak(&v11, &location);
    time2 = v16;
    v9 = lhs;
    v8 = rhs;
    if (![(ISBehavior *)self seekVideoPlayerToTime:&time2 toleranceBefore:&v9 toleranceAfter:&v8 completionHandler:v10])
    {
      [(ISLivePhotoVitalityBehavior *)self _setPreparing:0];
    }

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __49__ISLivePhotoVitalityBehavior_prepareForVitality__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __49__ISLivePhotoVitalityBehavior_prepareForVitality__block_invoke_2;
    v2[3] = &unk_279A2A3C0;
    objc_copyWeak(&v3, (a1 + 32));
    is_dispatch_on_main_queue(v2);
    objc_destroyWeak(&v3);
  }
}

void __49__ISLivePhotoVitalityBehavior_prepareForVitality__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDidSeekToStartTime];
}

- (void)activeDidChange
{
  v3.receiver = self;
  v3.super_class = ISLivePhotoVitalityBehavior;
  [(ISBehavior *)&v3 activeDidChange];
  [(ISLivePhotoVitalityBehavior *)self _setPreparing:0];
  [(ISLivePhotoVitalityBehavior *)self _setPrepared:0];
  if ([(ISBehavior *)self isActive])
  {
    [(ISLivePhotoVitalityBehavior *)self _startObservingVideo];
    [(ISBehavior *)self setVideoVolume:0.0];
  }

  else
  {
    [(ISLivePhotoVitalityBehavior *)self _stopObservingVideo];
  }
}

- (ISLivePhotoVitalityBehavior)initWithInitialLayoutInfo:(id)info playbackEndTime:(id *)time playDuration:(id *)duration playRate:(float)rate photoTransitionDuration:(double)transitionDuration pauseDuringTransition:(BOOL)transition assetOptions:(unint64_t)options
{
  v18.receiver = self;
  v18.super_class = ISLivePhotoVitalityBehavior;
  result = [(ISBehavior *)&v18 initWithInitialLayoutInfo:info];
  if (result)
  {
    var3 = time->var3;
    *&result->_playbackEndTime.value = *&time->var0;
    result->_playbackEndTime.epoch = var3;
    v17 = duration->var3;
    *&result->_playDuration.value = *&duration->var0;
    result->_playDuration.epoch = v17;
    result->_playRate = rate;
    result->_photoTransitionDuration = transitionDuration;
    result->_pauseDuringTransition = transition;
    result->_assetOptions = options;
  }

  return result;
}

- (void)dealloc
{
  delegate = [(ISBehavior *)self delegate];
  [delegate behavior:self removeTimeObserver:self->_easeOutObserver];

  delegate2 = [(ISBehavior *)self delegate];
  [delegate2 behavior:self removeTimeObserver:self->_transitionToPhotoObserver];

  v5.receiver = self;
  v5.super_class = ISLivePhotoVitalityBehavior;
  [(ISLivePhotoVitalityBehavior *)&v5 dealloc];
}

@end