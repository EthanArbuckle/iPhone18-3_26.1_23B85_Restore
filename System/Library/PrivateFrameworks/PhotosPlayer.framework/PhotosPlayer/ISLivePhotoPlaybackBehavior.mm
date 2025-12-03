@interface ISLivePhotoPlaybackBehavior
- ($542DF6A934A12223D4D27E794AA667E2)playbackTimeRange;
- (ISLivePhotoPlaybackBehavior)initWithInitialLayoutInfo:(id)info keyTime:(id *)time playbackTimeRange:(id *)range photoTransitionDuration:(double)duration immediatelyShowsPhotoWhenPlaybackEnds:(BOOL)ends hasBlurryTransition:(BOOL)transition;
- (void)_didFinishPreparing;
- (void)_handleDidFinish;
- (void)_handleDidSeekToBeginning;
- (void)_prepareVideoForPlaybackIfNeeded;
- (void)_prerollWithCompletionHandler:(id)handler;
- (void)_showVideoWithPlaybackID:(int64_t)d;
- (void)_startPlaybackWithPlaybackID:(int64_t)d;
- (void)_transitionToVideoWithPlaybackID:(int64_t)d;
- (void)activeDidChange;
- (void)setDelegate:(id)delegate;
- (void)startPlayback;
- (void)videoDidPlayToEnd;
- (void)videoWillPlayToEnd;
@end

@implementation ISLivePhotoPlaybackBehavior

- ($542DF6A934A12223D4D27E794AA667E2)playbackTimeRange
{
  v3 = *&self[2].var0.var1;
  *&retstr->var0.var0 = *&self[1].var1.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[2].var1.var0;
  return self;
}

- (void)_showVideoWithPlaybackID:(int64_t)d
{
  if ([(ISLivePhotoPlaybackBehavior *)self _currentPlaybackID]== d)
  {
    v4 = 0.0;
    if (self->_hasBlurryTransition)
    {
      v4 = 3.5;
    }

    v6 = [ISPlayerState outputInfoWithPhotoBlurRadius:@"SHOW VIDEO PLAYBACK" videoAlpha:v4 videoBlurRadius:1.0 label:0.0];
    v5 = objc_alloc_init(ISPlayerOutputTransitionOptions);
    [(ISPlayerOutputTransitionOptions *)v5 setTransitionDuration:0.3];
    [(ISBehavior *)self setOutputInfo:v6 withTransitionOptions:v5 completion:0];
  }
}

- (void)_transitionToVideoWithPlaybackID:(int64_t)d
{
  if ([(ISLivePhotoPlaybackBehavior *)self _currentPlaybackID]== d)
  {
    LODWORD(v5) = 1.0;
    [(ISBehavior *)self setVideoPlayRate:v5];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __64__ISLivePhotoPlaybackBehavior__transitionToVideoWithPlaybackID___block_invoke;
    v6[3] = &unk_279A2A410;
    v6[4] = self;
    v6[5] = d;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

uint64_t __64__ISLivePhotoPlaybackBehavior__transitionToVideoWithPlaybackID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[33] == 1)
  {
    v3 = [v2 delegate];
    [v3 livePhotoPlaybackBehaviorDidBeginPlaying:*(a1 + 32)];

    v2 = *(a1 + 32);
  }

  v4 = *(a1 + 40);

  return [v2 _showVideoWithPlaybackID:v4];
}

- (void)_startPlaybackWithPlaybackID:(int64_t)d
{
  if ([(ISLivePhotoPlaybackBehavior *)self _currentPlaybackID]== d)
  {
    [(ISLivePhotoPlaybackBehavior *)self _setVideoReadyToPlay:0];

    [(ISLivePhotoPlaybackBehavior *)self _transitionToVideoWithPlaybackID:d];
  }
}

- (void)_didFinishPreparing
{
  [(ISLivePhotoPlaybackBehavior *)self _setPreparing:0];
  [(ISLivePhotoPlaybackBehavior *)self _setVideoReadyToPlay:1];
  _readyToPlayPlaybackID = [(ISLivePhotoPlaybackBehavior *)self _readyToPlayPlaybackID];

  [(ISLivePhotoPlaybackBehavior *)self _startPlaybackWithPlaybackID:_readyToPlayPlaybackID];
}

- (void)_prerollWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[ISPlayerSettings sharedInstance];
  prerollBeforePlaying = [v5 prerollBeforePlaying];

  if (prerollBeforePlaying)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__ISLivePhotoPlaybackBehavior__prerollWithCompletionHandler___block_invoke;
    v8[3] = &unk_279A2A640;
    v9 = handlerCopy;
    LODWORD(v7) = 1.0;
    [(ISBehavior *)self prerollVideoAtRate:v8 completionHandler:v7];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

uint64_t __61__ISLivePhotoPlaybackBehavior__prerollWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_handleDidSeekToBeginning
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__ISLivePhotoPlaybackBehavior__handleDidSeekToBeginning__block_invoke;
  v3[3] = &unk_279A2A3C0;
  objc_copyWeak(&v4, &location);
  [(ISLivePhotoPlaybackBehavior *)self _prerollWithCompletionHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __56__ISLivePhotoPlaybackBehavior__handleDidSeekToBeginning__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ISLivePhotoPlaybackBehavior__handleDidSeekToBeginning__block_invoke_2;
  block[3] = &unk_279A2A3C0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __56__ISLivePhotoPlaybackBehavior__handleDidSeekToBeginning__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDidFinishPreroll];
}

- (void)_prepareVideoForPlaybackIfNeeded
{
  if (![(ISLivePhotoPlaybackBehavior *)self _isPreparing]&& ![(ISLivePhotoPlaybackBehavior *)self _isVideoReadyToPlay])
  {
    [(ISLivePhotoPlaybackBehavior *)self _setPreparing:1];
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    [(ISLivePhotoPlaybackBehavior *)self playbackTimeRange];
    v12 = **&MEMORY[0x277CC0898];
    range.start = v12;
    [(ISBehavior *)self setVideoForwardPlaybackEndTime:&range];
    objc_initWeak(&location, self);
    *&range.start.value = *MEMORY[0x277CC08F0];
    range.start.epoch = *(MEMORY[0x277CC08F0] + 16);
    v3 = +[ISPlayerSettings sharedInstance];
    startBehavior = [v3 startBehavior];

    if (startBehavior == 1)
    {
      p_keyTime = &self->_keyTime;
    }

    else
    {
      if ((BYTE12(v13) & 1) == 0 || (BYTE4(v15) & 1) == 0 || *(&v15 + 1) || (*(&v14 + 1) & 0x8000000000000000) != 0)
      {
        goto LABEL_7;
      }

      p_keyTime = &v13;
    }

    *&range.start.value = *&p_keyTime->value;
    range.start.epoch = p_keyTime->epoch;
LABEL_7:
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__ISLivePhotoPlaybackBehavior__prepareVideoForPlaybackIfNeeded__block_invoke;
    v8[3] = &unk_279A29C30;
    objc_copyWeak(&v9, &location);
    v6 = *&range.start.value;
    epoch = range.start.epoch;
    [(ISBehavior *)self seekVideoPlayerToTime:&v6 completionHandler:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __63__ISLivePhotoPlaybackBehavior__prepareVideoForPlaybackIfNeeded__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__ISLivePhotoPlaybackBehavior__prepareVideoForPlaybackIfNeeded__block_invoke_2;
  block[3] = &unk_279A2A3C0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __63__ISLivePhotoPlaybackBehavior__prepareVideoForPlaybackIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDidSeekToBeginning];
}

- (void)startPlayback
{
  _currentPlaybackID = [(ISLivePhotoPlaybackBehavior *)self _currentPlaybackID];
  [(ISLivePhotoPlaybackBehavior *)self _setCurrentPlaybackID:_currentPlaybackID + 1];
  _isVideoReadyToPlay = [(ISLivePhotoPlaybackBehavior *)self _isVideoReadyToPlay];
  v5 = _currentPlaybackID + 1;
  if (_isVideoReadyToPlay)
  {

    [(ISLivePhotoPlaybackBehavior *)self _startPlaybackWithPlaybackID:v5];
  }

  else
  {
    [(ISLivePhotoPlaybackBehavior *)self _setReadyToPlayPlaybackID:v5];

    [(ISLivePhotoPlaybackBehavior *)self _prepareVideoForPlaybackIfNeeded];
  }
}

- (void)activeDidChange
{
  v3.receiver = self;
  v3.super_class = ISLivePhotoPlaybackBehavior;
  [(ISBehavior *)&v3 activeDidChange];
  if ([(ISBehavior *)self isActive])
  {
    [(ISLivePhotoPlaybackBehavior *)self _prepareVideoForPlaybackIfNeeded];
  }

  else
  {
    [(ISLivePhotoPlaybackBehavior *)self _setPreparing:0];
    [(ISLivePhotoPlaybackBehavior *)self _setVideoReadyToPlay:0];
  }
}

- (void)videoDidPlayToEnd
{
  v3.receiver = self;
  v3.super_class = ISLivePhotoPlaybackBehavior;
  [(ISBehavior *)&v3 videoDidPlayToEnd];
  [(ISBehavior *)self setVideoPlayRate:0.0];
}

- (void)_handleDidFinish
{
  self->_isTransitioningToPhoto = 0;
  if (self->_delegateFlags.respondsToDidFinish)
  {
    delegate = [(ISBehavior *)self delegate];
    [delegate livePhotoPlaybackBehaviorDidFinish:self];
  }
}

- (void)videoWillPlayToEnd
{
  if ([(ISLivePhotoPlaybackBehavior *)self immediatelyShowsPhotoWhenPlaybackEnds])
  {
    [(ISBehavior *)self setVideoPlayRate:0.0];
    v3 = [[ISPlayerState alloc] initWithPhotoBlurRadius:@"END HINT" videoAlpha:0.0 videoBlurRadius:0.0 label:0.0];
    v4 = objc_alloc_init(ISPlayerOutputTransitionOptions);
    [(ISPlayerOutputTransitionOptions *)v4 setTransitionDuration:0.5];
    self->_isTransitioningToPhoto = 1;
    delegate = [(ISBehavior *)self delegate];
    [delegate livePhotoPlaybackBehaviorWillTransitionToPhoto:self];

    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__ISLivePhotoPlaybackBehavior_videoWillPlayToEnd__block_invoke;
    v6[3] = &unk_279A29C30;
    objc_copyWeak(&v7, &location);
    [(ISBehavior *)self setOutputInfo:v3 withTransitionOptions:v4 completion:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __49__ISLivePhotoPlaybackBehavior_videoWillPlayToEnd__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDidFinish];
}

- (void)setDelegate:(id)delegate
{
  selfCopy = self;
  v6.receiver = self;
  v6.super_class = ISLivePhotoPlaybackBehavior;
  delegateCopy = delegate;
  [(ISBehavior *)&v6 setDelegate:delegateCopy];
  p_delegateFlags = &selfCopy->_delegateFlags;
  selfCopy->_delegateFlags.respondsToDidFinish = objc_opt_respondsToSelector() & 1;
  LOBYTE(selfCopy) = objc_opt_respondsToSelector();

  p_delegateFlags->respondsToDidBeginPlaying = selfCopy & 1;
}

- (ISLivePhotoPlaybackBehavior)initWithInitialLayoutInfo:(id)info keyTime:(id *)time playbackTimeRange:(id *)range photoTransitionDuration:(double)duration immediatelyShowsPhotoWhenPlaybackEnds:(BOOL)ends hasBlurryTransition:(BOOL)transition
{
  v17.receiver = self;
  v17.super_class = ISLivePhotoPlaybackBehavior;
  result = [(ISBehavior *)&v17 initWithInitialLayoutInfo:info];
  if (result)
  {
    result->_immediatelyShowsPhotoWhenPlaybackEnds = ends;
    v14 = *&time->var0;
    result->_keyTime.epoch = time->var3;
    *&result->_keyTime.value = v14;
    result->_photoTransitionDuration = duration;
    v15 = *&range->var1.var1;
    v16 = *&range->var0.var0;
    *&result->_playbackTimeRange.start.epoch = *&range->var0.var3;
    *&result->_playbackTimeRange.duration.timescale = v15;
    *&result->_playbackTimeRange.start.value = v16;
    result->_hasBlurryTransition = transition;
  }

  return result;
}

@end