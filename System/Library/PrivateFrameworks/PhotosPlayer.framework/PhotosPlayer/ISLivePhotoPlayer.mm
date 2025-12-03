@interface ISLivePhotoPlayer
- ($542DF6A934A12223D4D27E794AA667E2)trimTimeRange;
- (BOOL)_canPlayVitality;
- (ISLivePhotoPlayer)init;
- (NSSet)playbackFilters;
- (double)_coalescedPlaybackFilterHintProgress;
- (double)_photoTransitionDuration;
- (double)videoWillPlayToPhotoInterval;
- (id)_createVitalityBehavior;
- (int64_t)_coalescedPlaybackFilterState;
- (void)_configurePlaybackFilter:(id)filter;
- (void)_configurePlaybackFilters;
- (void)_fadeInAudioIfNeeded;
- (void)_handlePlaybackFilterDidChange;
- (void)_handleVitalityFilterDidChange:(id)change;
- (void)_playIfNeeded;
- (void)_prepareForVitalityIfNeeded;
- (void)_resetPlaybackFilters;
- (void)_setCurrentPlaybackStyle:(int64_t)style;
- (void)_setHinting:(BOOL)hinting;
- (void)_setPlayingVitality:(BOOL)vitality;
- (void)_updateApertureModeIfNeeded;
- (void)_updateHintingAndVitality;
- (void)_updatePlayerItemLoadingTarget;
- (void)_updateScaleIfNeeded;
- (void)activeBehaviorDidChange;
- (void)addPlaybackFilter:(id)filter;
- (void)configurePlayerItem;
- (void)didPerformChanges;
- (void)livePhotoPlaybackBehaviorDidFinish:(id)finish;
- (void)livePhotoSettleBehaviorDidFinish:(id)finish;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)playVitality;
- (void)playerItemDidChange;
- (void)prepareForVitality;
- (void)removePlaybackFilter:(id)filter;
- (void)setIsAttemptingToPlayback:(BOOL)playback;
- (void)setPlaybackAllowed:(BOOL)allowed;
- (void)setSeekTime:(id *)time completion:(id)completion;
- (void)setTargetReadiness:(int64_t)readiness;
- (void)setTrimTimeRange:(id *)range;
- (void)setVitalityFilter:(id)filter;
- (void)startPlaybackWithStyle:(int64_t)style settleAutomatically:(BOOL)automatically;
- (void)statusDidChange;
- (void)vitalityBehaviorDidEndPlaying:(id)playing;
@end

@implementation ISLivePhotoPlayer

- (void)setTrimTimeRange:(id *)range
{
  v4 = *&range->var0.var3;
  v3 = *&range->var1.var1;
  *&self->_trimTimeRange.start.value = *&range->var0.var0;
  *&self->_trimTimeRange.start.epoch = v4;
  *&self->_trimTimeRange.duration.timescale = v3;
}

- ($542DF6A934A12223D4D27E794AA667E2)trimTimeRange
{
  v3 = *&self[8].var0.var3;
  *&retstr->var0.var0 = *&self[8].var0.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[8].var1.var1;
  return self;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__ISLivePhotoPlayer_observable_didChange_context___block_invoke;
  v10[3] = &unk_279A2A410;
  v10[4] = self;
  v10[5] = context;
  observableCopy = observable;
  is_dispatch_on_main_queue(v10);
  v9.receiver = self;
  v9.super_class = ISLivePhotoPlayer;
  [(ISBasePlayer *)&v9 observable:observableCopy didChange:change context:context];
}

uint64_t __50__ISLivePhotoPlayer_observable_didChange_context___block_invoke(uint64_t result)
{
  if (*(result + 40) == ISLivePhotoPlaybackFilterObservationContext)
  {
    v2 = result;
    [*(result + 32) _handlePlaybackFilterDidChange];
    v3 = *(v2 + 32);

    return [v3 _updatePlayerItemLoadingTarget];
  }

  return result;
}

- (void)vitalityBehaviorDidEndPlaying:(id)playing
{
  [(ISLivePhotoPlayer *)self _updateHintingAndVitality];

  [(ISLivePhotoPlayer *)self _setCurrentPlaybackStyle:0];
}

- (void)livePhotoSettleBehaviorDidFinish:(id)finish
{
  finishCopy = finish;
  activeBehavior = [(ISBasePlayer *)self activeBehavior];

  if (activeBehavior == finishCopy)
  {
    [(ISLivePhotoPlayer *)self _resetPlaybackFilters];
    [(ISBasePlayer *)self setActiveBehavior:0];
    [(ISLivePhotoPlayer *)self _setCurrentPlaybackStyle:0];
    [(ISLivePhotoPlayer *)self _playIfNeeded];

    [(ISLivePhotoPlayer *)self _updatePlayerItemLoadingTarget];
  }
}

- (void)livePhotoPlaybackBehaviorDidFinish:(id)finish
{
  [(ISLivePhotoPlayer *)self _resetPlaybackFilters];
  if ([(ISLivePhotoPlayer *)self _coalescedPlaybackFilterState]!= 2)
  {

    [(ISLivePhotoPlayer *)self _setCurrentPlaybackStyle:0];
  }
}

- (void)didPerformChanges
{
  v5.receiver = self;
  v5.super_class = ISLivePhotoPlayer;
  [(ISBasePlayer *)&v5 didPerformChanges];
  videoPlayer = [(ISBasePlayer *)self videoPlayer];
  v4 = +[ISPlayerSettings sharedInstance];
  [videoPlayer setLoopingEnabled:{objc_msgSend(v4, "loopingEnabled")}];

  [(ISLivePhotoPlayer *)self _updateScaleIfNeeded];
  [(ISLivePhotoPlayer *)self _updateApertureModeIfNeeded];
}

- (void)_fadeInAudioIfNeeded
{
  if ([(ISLivePhotoPlayer *)self _wantsAudioForPlaybackStyle:[(ISLivePhotoPlayer *)self currentPlaybackStyle]])
  {
    videoPlayer = [(ISBasePlayer *)self videoPlayer];
    [videoPlayer volume];
    v5 = v4;
    if (v4 < 1.0)
    {
      if ([(ISBasePlayer *)self isAudioEnabled])
      {
        v6 = sqrtf(v5) + 0.1;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __41__ISLivePhotoPlayer__fadeInAudioIfNeeded__block_invoke_2;
        v11[3] = &unk_279A29B58;
        v11[4] = self;
        v12 = v6 * v6;
        [(ISObservable *)self performChanges:v11];
        objc_initWeak(&location, self);
        v7 = dispatch_time(0, 100000000);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __41__ISLivePhotoPlayer__fadeInAudioIfNeeded__block_invoke_3;
        block[3] = &unk_279A2A3C0;
        objc_copyWeak(&v9, &location);
        dispatch_after(v7, MEMORY[0x277D85CD0], block);
        objc_destroyWeak(&v9);
        objc_destroyWeak(&location);
      }
    }
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __41__ISLivePhotoPlayer__fadeInAudioIfNeeded__block_invoke;
    v13[3] = &unk_279A2A488;
    v13[4] = self;
    [(ISObservable *)self performChanges:v13];
  }
}

void __41__ISLivePhotoPlayer__fadeInAudioIfNeeded__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fadeInAudioIfNeeded];
}

- (void)_updateHintingAndVitality
{
  activeBehavior = [(ISBasePlayer *)self activeBehavior];
  if ([activeBehavior behaviorType] == 3)
  {
    isPlaying = [activeBehavior isPlaying];
    v5 = 0;
  }

  else
  {
    behaviorType = [activeBehavior behaviorType];
    isPlaying = 0;
    v5 = behaviorType == 1;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__ISLivePhotoPlayer__updateHintingAndVitality__block_invoke;
  v7[3] = &unk_279A29B30;
  v7[4] = self;
  v8 = isPlaying;
  v9 = v5;
  [(ISObservable *)self performChanges:v7];
}

uint64_t __46__ISLivePhotoPlayer__updateHintingAndVitality__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setPlayingVitality:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 41);

  return [v2 _setHinting:v3];
}

- (void)_configurePlaybackFilter:(id)filter
{
  filterCopy = filter;
  [filterCopy setPlaybackDisabled:-[ISBasePlayer status](self forReason:{"status") < 2, @"PlayerNotReady"}];
}

- (double)_coalescedPlaybackFilterHintProgress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  playbackFilters = [(ISLivePhotoPlayer *)self playbackFilters];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__ISLivePhotoPlayer__coalescedPlaybackFilterHintProgress__block_invoke;
  v5[3] = &unk_279A29B08;
  v5[4] = &v6;
  [playbackFilters enumerateObjectsUsingBlock:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __57__ISLivePhotoPlayer__coalescedPlaybackFilterHintProgress__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 hintProgress];
  v5 = *(*(a1 + 32) + 8);
  if (v4 < *(v5 + 24))
  {
    v4 = *(v5 + 24);
  }

  *(v5 + 24) = v4;
  return result;
}

- (int64_t)_coalescedPlaybackFilterState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  playbackFilters = [(ISLivePhotoPlayer *)self playbackFilters];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__ISLivePhotoPlayer__coalescedPlaybackFilterState__block_invoke;
  v5[3] = &unk_279A29B08;
  v5[4] = &v6;
  [playbackFilters enumerateObjectsUsingBlock:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __50__ISLivePhotoPlayer__coalescedPlaybackFilterState__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 state];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (result > v5)
  {
    v5 = result;
  }

  *(v4 + 24) = v5;
  return result;
}

- (void)_resetPlaybackFilters
{
  playbackFilters = [(ISLivePhotoPlayer *)self playbackFilters];
  [playbackFilters enumerateObjectsUsingBlock:&__block_literal_global_992];
}

- (void)_configurePlaybackFilters
{
  playbackFilters = [(ISLivePhotoPlayer *)self playbackFilters];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__ISLivePhotoPlayer__configurePlaybackFilters__block_invoke;
  v4[3] = &unk_279A29AC0;
  v4[4] = self;
  [playbackFilters enumerateObjectsUsingBlock:v4];
}

- (void)setIsAttemptingToPlayback:(BOOL)playback
{
  if (self->_isAttemptingToPlayback != playback)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __47__ISLivePhotoPlayer_setIsAttemptingToPlayback___block_invoke;
    v5[3] = &unk_279A29DB8;
    v5[4] = self;
    playbackCopy = playback;
    [(ISObservable *)self performChanges:v5];
  }
}

- (void)_setCurrentPlaybackStyle:(int64_t)style
{
  if (self->_currentPlaybackStyle != style)
  {
    v5[6] = v3;
    v5[7] = v4;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __46__ISLivePhotoPlayer__setCurrentPlaybackStyle___block_invoke;
    v5[3] = &unk_279A2A438;
    v5[4] = self;
    v5[5] = style;
    [(ISObservable *)self performChanges:v5];
  }
}

uint64_t __46__ISLivePhotoPlayer__setCurrentPlaybackStyle___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 328) = *(a1 + 40);
  [*(a1 + 32) _invalidateScale];
  v2 = *(a1 + 32);

  return [v2 signalChange:8];
}

- (void)_setHinting:(BOOL)hinting
{
  if (self->_hinting != hinting)
  {
    self->_hinting = hinting;
    [(ISObservable *)self signalChange:32];
  }
}

- (void)_setPlayingVitality:(BOOL)vitality
{
  if (self->_playingVitality != vitality)
  {
    self->_playingVitality = vitality;
    [(ISObservable *)self signalChange:16];
  }
}

- (void)_updateScaleIfNeeded
{
  if (!self->_isValid.scale)
  {
    self->_isValid.scale = 1;
    v3 = 1.0;
    if ([(ISLivePhotoPlayer *)self currentPlaybackStyle])
    {
      v4 = +[ISPlayerSettings sharedInstance];
      scaleDuringPlayback = [v4 scaleDuringPlayback];

      if (scaleDuringPlayback)
      {
        activeBehavior = [(ISBasePlayer *)self activeBehavior];
        if ([activeBehavior behaviorType] == 2)
        {
          activeBehavior2 = [(ISBasePlayer *)self activeBehavior];
          isTransitioningToPhoto = [activeBehavior2 isTransitioningToPhoto];

          if ((isTransitioningToPhoto & 1) == 0 && [(ISLivePhotoPlayer *)self currentPlaybackStyle]!= 4)
          {
            playerItem = [(ISBasePlayer *)self playerItem];
            playerContent = [playerItem playerContent];
            supportsVitality = [playerContent supportsVitality];

            if (supportsVitality)
            {
              playerItem2 = [(ISBasePlayer *)self playerItem];
              asset = [playerItem2 asset];
              options = [asset options];

              if ((options & 2) != 0)
              {
                v3 = 1.0;
              }

              else
              {
                v3 = 1.075;
              }
            }
          }
        }

        else
        {
        }
      }
    }

    [(ISLivePhotoPlayer *)self lastAppliedScale];
    if (v15 != v3)
    {
      self->_lastAppliedScale = v3;
      v16 = objc_alloc_init(ISPlayerOutputTransitionOptions);
      [(ISPlayerOutputTransitionOptions *)v16 setTransitionDuration:0.3];
      [(ISBasePlayer *)self applyScale:v16 withTransitionOptions:0 completion:v3];
    }
  }
}

- (void)_updateApertureModeIfNeeded
{
  if (!self->_isValid.apertureMode)
  {
    self->_isValid.apertureMode = 1;
    activeBehavior = [(ISBasePlayer *)self activeBehavior];
    behaviorType = [activeBehavior behaviorType];

    v6 = MEMORY[0x277CE62A0];
    if (behaviorType != 5)
    {
      v6 = MEMORY[0x277CE62A8];
    }

    v7 = *v6;

    [(ISBasePlayer *)self setApertureMode:v7];
  }
}

- (void)_handlePlaybackFilterDidChange
{
  _coalescedPlaybackFilterState = [(ISLivePhotoPlayer *)self _coalescedPlaybackFilterState];
  [(ISLivePhotoPlayer *)self setIsAttemptingToPlayback:_coalescedPlaybackFilterState != 0];
  if (_coalescedPlaybackFilterState)
  {
    if (_coalescedPlaybackFilterState == 2)
    {
      if (![(ISLivePhotoPlayer *)self currentPlaybackStyle]&& ![(ISLivePhotoPlayer *)self isPlayingVitality])
      {
        [(ISLivePhotoPlayer *)self startPlaybackWithStyleWhenReady:1];
      }

      if ([(ISLivePhotoPlayer *)self isPlayingVitality])
      {
        [(ISLivePhotoPlayer *)self _setCurrentPlaybackStyle:1];
        activeBehavior = [(ISBasePlayer *)self activeBehavior];
        [activeBehavior cancelSettleToPhoto];
      }
    }
  }

  else
  {

    [(ISLivePhotoPlayer *)self stopPlayback];
  }
}

- (void)_handleVitalityFilterDidChange:(id)change
{
  state = [change state];
  if (state)
  {
    if (state == 2)
    {

      [(ISLivePhotoPlayer *)self playVitality];
    }

    else if (state == 1)
    {

      [(ISLivePhotoPlayer *)self prepareForVitality];
    }
  }

  else
  {
    activeBehavior = [(ISBasePlayer *)self activeBehavior];
    if ([activeBehavior behaviorType] == 3 && objc_msgSend(activeBehavior, "isPrepared"))
    {
      [(ISLivePhotoPlayer *)self playVitality];
    }

    [(ISLivePhotoPlayer *)self _setShouldPrepareForVitalityWhenReady:0];
    [(ISLivePhotoPlayer *)self _setShouldPlayVitalityWhenReady:0];
  }
}

- (double)_photoTransitionDuration
{
  playerItem = [(ISBasePlayer *)self playerItem];
  asset = [playerItem asset];
  if ([asset hasColorAdjustments])
  {
    v4 = 0.2;
  }

  else
  {
    v4 = 0.065;
  }

  return v4;
}

- (void)_prepareForVitalityIfNeeded
{
  if (([(ISLivePhotoPlayer *)self _shouldPrepareForVitalityWhenReady]|| [(ISLivePhotoPlayer *)self _shouldPlayVitalityWhenReady]) && [(ISLivePhotoPlayer *)self _canPlayVitality]&& [(ISBasePlayer *)self status]>= 1)
  {
    _vitalityTimeoutDate = [(ISLivePhotoPlayer *)self _vitalityTimeoutDate];
    [_vitalityTimeoutDate timeIntervalSinceNow];
    v5 = v4;

    if (v5 >= 0.0)
    {
      if ([(ISLivePhotoPlayer *)self _shouldPlayVitalityWhenReady])
      {

        [(ISLivePhotoPlayer *)self playVitality];
      }

      else if ([(ISLivePhotoPlayer *)self _shouldPrepareForVitalityWhenReady])
      {

        [(ISLivePhotoPlayer *)self prepareForVitality];
      }
    }

    else
    {
      [(ISLivePhotoPlayer *)self _setShouldPrepareForVitalityWhenReady:0];

      [(ISLivePhotoPlayer *)self _setShouldPlayVitalityWhenReady:0];
    }
  }
}

- (void)_playIfNeeded
{
  if ([(ISLivePhotoPlayer *)self _styleToPlayWhenReady]&& [(ISBasePlayer *)self status]>= 2 && [(ISLivePhotoPlayer *)self isPlaybackAllowed]&& ![(ISLivePhotoPlayer *)self currentPlaybackStyle])
  {
    _styleToPlayWhenReady = [(ISLivePhotoPlayer *)self _styleToPlayWhenReady];
    _settleAutomaticallyWhenReady = [(ISLivePhotoPlayer *)self _settleAutomaticallyWhenReady];
    [(ISLivePhotoPlayer *)self _setStyleToPlayWhenReady:0];
    [(ISLivePhotoPlayer *)self _setSettleAutomaticallyWhenReady:0];

    [(ISLivePhotoPlayer *)self startPlaybackWithStyle:_styleToPlayWhenReady settleAutomatically:_settleAutomaticallyWhenReady];
  }
}

- (BOOL)_canPlayVitality
{
  playerItem = [(ISBasePlayer *)self playerItem];
  playerContent = [playerItem playerContent];

  if (![playerContent supportsVitality])
  {
    goto LABEL_5;
  }

  if (!playerContent)
  {
    v4 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_7;
  }

  [playerContent photoTime];
  if ((BYTE4(v8) & 0x1D) == 1)
  {
    [playerContent photoTime];
    v4 = CMTimeGetSeconds(&v6) >= 0.1;
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

LABEL_7:

  return v4;
}

- (void)setSeekTime:(id *)time completion:(id)completion
{
  completionCopy = completion;
  time1 = *time;
  seekTime = self->_seekTime;
  if (CMTimeCompare(&time1, &seekTime))
  {
    v7 = *&time->var0;
    self->_seekTime.epoch = time->var3;
    *&self->_seekTime.value = v7;
    if (time->var2)
    {
      activeBehavior = [(ISBasePlayer *)self activeBehavior];
      if ([activeBehavior behaviorType] == 5)
      {
        [activeBehavior setSeekCompletionHandler:completionCopy];
        time1 = *time;
        [activeBehavior setSeekTime:&time1];
      }

      else
      {
        v10 = [ISLivePhotoSeekBehavior alloc];
        lastAppliedLayoutInfo = [(ISBasePlayer *)self lastAppliedLayoutInfo];
        time1 = *time;
        v12 = [(ISLivePhotoSeekBehavior *)v10 initWithInitialLayoutInfo:lastAppliedLayoutInfo seekTime:&time1];

        [(ISLivePhotoSeekBehavior *)v12 setSeekCompletionHandler:completionCopy];
        [(ISBasePlayer *)self setActiveBehavior:v12];
        activeBehavior = v12;
      }

      [(ISLivePhotoPlayer *)self _setCurrentPlaybackStyle:3];
    }

    else
    {
      v8 = objc_alloc_init(ISLivePhotoSettleBehavior);
      [(ISBehavior *)v8 setDelegate:self];
      [(ISBasePlayer *)self setActiveBehavior:v8];
      [(ISLivePhotoSettleBehavior *)v8 settle:1];
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (id)_createVitalityBehavior
{
  v3 = +[ISVitalitySettings sharedInstance];
  lastAppliedLayoutInfo = [(ISBasePlayer *)self lastAppliedLayoutInfo];
  playerItem = [(ISBasePlayer *)self playerItem];
  playerContent = [playerItem playerContent];
  memset(&v30, 0, sizeof(v30));
  playerContent2 = [playerItem playerContent];
  v8 = playerContent2;
  if (playerContent2)
  {
    [playerContent2 videoDuration];
  }

  else
  {
    memset(&v30, 0, sizeof(v30));
  }

  memset(&v29, 0, sizeof(v29));
  if (playerContent)
  {
    [playerContent photoTime];
  }

  [v3 postDuration];
  CMTimeMakeWithSeconds(&rhs, v9, 600);
  lhs = v29;
  CMTimeAdd(&v28, &lhs, &rhs);
  v29 = v28;
  rhs = v28;
  lhs = v30;
  CMTimeMinimum(&v28, &rhs, &lhs);
  v29 = v28;
  memset(&v28, 0, sizeof(v28));
  [v3 preDuration];
  v11 = v10;
  [v3 postDuration];
  CMTimeMakeWithSeconds(&v28, v11 + v12, 600);
  lhs = v28;
  v25 = v30;
  CMTimeMinimum(&rhs, &lhs, &v25);
  v28 = rhs;
  variationIdentifier = [playerContent variationIdentifier];
  if ([variationIdentifier integerValue] == 3)
  {
    v14 = +[ISPlayerSettings sharedInstance];
    v15 = [v14 longExposureVitality] ^ 1;
  }

  else
  {
    v15 = 1;
  }

  v16 = [ISLivePhotoVitalityBehavior alloc];
  [v3 playbackRate];
  *&v18 = v17;
  [(ISLivePhotoPlayer *)self videoWillPlayToPhotoInterval];
  v20 = v19;
  asset = [playerItem asset];
  options = [asset options];
  rhs = v29;
  lhs = v28;
  v23 = [(ISLivePhotoVitalityBehavior *)v16 initWithInitialLayoutInfo:lastAppliedLayoutInfo playbackEndTime:&rhs playDuration:&lhs playRate:v15 photoTransitionDuration:options pauseDuringTransition:COERCE_DOUBLE(__PAIR64__(HIDWORD(v28.value) assetOptions:v18)), v20];

  return v23;
}

- (void)playVitality
{
  if ([(ISLivePhotoPlayer *)self isPlayingVitality]|| ![(ISLivePhotoPlayer *)self isPlaybackAllowed])
  {
    return;
  }

  activeBehavior = [(ISBasePlayer *)self activeBehavior];
  if ([activeBehavior behaviorType] == 5)
  {
    goto LABEL_14;
  }

  _canPlayVitality = [(ISLivePhotoPlayer *)self _canPlayVitality];

  if (!_canPlayVitality)
  {
    return;
  }

  if ([(ISBasePlayer *)self status]> 0)
  {
    [(ISLivePhotoPlayer *)self _setCurrentPlaybackStyle:0];
    activeBehavior2 = [(ISBasePlayer *)self activeBehavior];
    if ([activeBehavior2 behaviorType] == 3)
    {
      v4 = activeBehavior2;
    }

    else
    {
      _createVitalityBehavior = [(ISLivePhotoPlayer *)self _createVitalityBehavior];

      [(ISBasePlayer *)self setActiveBehavior:_createVitalityBehavior];
      v4 = _createVitalityBehavior;
    }

    activeBehavior = v4;
    [v4 playVitality];
    [(ISLivePhotoPlayer *)self _setShouldPrepareForVitalityWhenReady:0];
    [(ISLivePhotoPlayer *)self _setShouldPlayVitalityWhenReady:0];
LABEL_14:

    return;
  }

  v5 = MEMORY[0x277CBEAA8];
  v6 = +[ISVitalitySettings sharedInstance];
  [v6 maxVitalityDelay];
  v7 = [v5 dateWithTimeIntervalSinceNow:?];
  [(ISLivePhotoPlayer *)self _setVitalityTimeoutDate:v7];

  [(ISLivePhotoPlayer *)self _setShouldPlayVitalityWhenReady:1];
}

- (void)prepareForVitality
{
  if ([(ISLivePhotoPlayer *)self isPlaybackAllowed]&& [(ISLivePhotoPlayer *)self _canPlayVitality])
  {
    if ([(ISBasePlayer *)self status]<= 0)
    {
      v5 = MEMORY[0x277CBEAA8];
      v6 = +[ISVitalitySettings sharedInstance];
      [v6 maxVitalityDelay];
      v7 = [v5 dateWithTimeIntervalSinceNow:?];
      [(ISLivePhotoPlayer *)self _setVitalityTimeoutDate:v7];

      [(ISLivePhotoPlayer *)self _setShouldPrepareForVitalityWhenReady:1];
    }

    else
    {
      [(ISLivePhotoPlayer *)self _resetPlaybackFilters];
      [(ISLivePhotoPlayer *)self _setCurrentPlaybackStyle:0];
      activeBehavior = [(ISBasePlayer *)self activeBehavior];
      if ([activeBehavior behaviorType] == 3 && (objc_msgSend(activeBehavior, "isPrepared") & 1) != 0)
      {
        v3 = activeBehavior;
      }

      else
      {
        _createVitalityBehavior = [(ISLivePhotoPlayer *)self _createVitalityBehavior];

        [(ISBasePlayer *)self setActiveBehavior:_createVitalityBehavior];
        v3 = _createVitalityBehavior;
      }

      v9 = v3;
      [v3 prepareForVitality];
      [(ISLivePhotoPlayer *)self _setShouldPrepareForVitalityWhenReady:0];
    }
  }
}

- (void)startPlaybackWithStyle:(int64_t)style settleAutomatically:(BOOL)automatically
{
  [(ISLivePhotoPlayer *)self _setShouldPrepareForVitalityWhenReady:0];
  [(ISLivePhotoPlayer *)self _setShouldPlayVitalityWhenReady:0];
  [(ISLivePhotoPlayer *)self _setStyleToPlayWhenReady:0];
  playerItem = [(ISBasePlayer *)self playerItem];
  memset(&v25, 0, sizeof(v25));
  playerContent = [playerItem playerContent];
  v9 = playerContent;
  if (playerContent)
  {
    [playerContent photoTime];
  }

  else
  {
    memset(&v25, 0, sizeof(v25));
  }

  lastAppliedLayoutInfo = [(ISBasePlayer *)self lastAppliedLayoutInfo];
  if (style == 1)
  {
    [(ISBasePlayer *)self setVideoVolume:0.0];
    memset(&v24, 0, sizeof(v24));
    [(ISLivePhotoPlayer *)self trimTimeRange];
    v11 = 0;
    v12 = 0;
    v13 = 0.5;
  }

  else
  {
    v14 = +[ISVitalitySettings sharedInstance];
    [v14 minimumPhotoTransitionDuration];
    v13 = v15;

    [(ISBasePlayer *)self setVideoVolume:0.0];
    memset(&v24, 0, sizeof(v24));
    [(ISLivePhotoPlayer *)self trimTimeRange];
    v12 = style == 2;
    v11 = style == 4;
    if (style == 4 || style == 2)
    {
      if (v24.start.flags)
      {
        v23 = v24.start;
        v22 = v25;
        if ((v24.duration.flags & 1) != 0 && !v24.duration.epoch && (v24.duration.value & 0x8000000000000000) == 0)
        {
          range.start = v24.duration;
          start = **&MEMORY[0x277CC08F0];
          if (CMTimeCompare(&range.start, &start))
          {
            range = v24;
            start = v25;
            if (!CMTimeRangeContainsTime(&range, &start))
            {
              range = v24;
              CMTimeRangeGetEnd(&v22, &range);
            }
          }
        }
      }

      else
      {
        v23 = **&MEMORY[0x277CC08F0];
        v22 = v25;
      }

      start = v23;
      v19 = v22;
      CMTimeRangeFromTimeToTime(&range, &start, &v19);
      v24 = range;
    }
  }

  if (automatically)
  {
    v16 = 1;
  }

  else
  {
    v16 = (v11 || v12) | [(ISLivePhotoPlayer *)self immediatelyShowsPhotoWhenPlaybackEnds];
  }

  v17 = [ISLivePhotoPlaybackBehavior alloc];
  v23 = v25;
  range = v24;
  v18 = [(ISLivePhotoPlaybackBehavior *)v17 initWithInitialLayoutInfo:lastAppliedLayoutInfo keyTime:&v23 playbackTimeRange:&range photoTransitionDuration:v16 immediatelyShowsPhotoWhenPlaybackEnds:style != 4 hasBlurryTransition:v13];
  [(ISBasePlayer *)self setActiveBehavior:v18];
  [(ISLivePhotoPlaybackBehavior *)v18 startPlayback];
  [(ISLivePhotoPlayer *)self _setCurrentPlaybackStyle:style];
}

- (void)setPlaybackAllowed:(BOOL)allowed
{
  if (self->_playbackAllowed != allowed)
  {
    self->_playbackAllowed = allowed;
    if (allowed)
    {

      [(ISLivePhotoPlayer *)self _playIfNeeded];
    }

    else
    {
      activeBehavior = [(ISBasePlayer *)self activeBehavior];
      behaviorType = [activeBehavior behaviorType];

      if (behaviorType == 3)
      {
        v6 = objc_alloc_init(ISDefaultBehavior);
        [(ISBasePlayer *)self setActiveBehavior:v6];
      }
    }
  }
}

- (void)_updatePlayerItemLoadingTarget
{
  playerItem = [(ISBasePlayer *)self playerItem];
  targetReadiness = [(ISLivePhotoPlayer *)self targetReadiness];
  _coalescedPlaybackFilterState = [(ISLivePhotoPlayer *)self _coalescedPlaybackFilterState];
  if (_coalescedPlaybackFilterState | [(ISLivePhotoPlayer *)self currentPlaybackStyle])
  {
LABEL_9:
    v10 = 2;
    goto LABEL_15;
  }

  activeBehavior = [(ISBasePlayer *)self activeBehavior];
  if (activeBehavior)
  {
    v6 = activeBehavior;
    activeBehavior2 = [(ISBasePlayer *)self activeBehavior];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v9 = 1;
    if (targetReadiness != 1)
    {
      v9 = 2;
    }

    if (targetReadiness)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (isKindOfClass)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 1;
    if (targetReadiness != 1)
    {
      v11 = 2;
    }

    if (targetReadiness)
    {
      v10 = v11;
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_15:
  [playerItem setLoadingTarget:v10];
  [playerItem discardContentBelowLoadingTarget];
}

- (void)setTargetReadiness:(int64_t)readiness
{
  if (self->_targetReadiness != readiness)
  {
    self->_targetReadiness = readiness;
    [(ISLivePhotoPlayer *)self _updatePlayerItemLoadingTarget];
  }
}

- (void)setVitalityFilter:(id)filter
{
  filterCopy = filter;
  if (self->_vitalityFilter != filterCopy)
  {
    objc_storeStrong(&self->_vitalityFilter, filter);
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __39__ISLivePhotoPlayer_setVitalityFilter___block_invoke;
    v6[3] = &unk_279A29A98;
    objc_copyWeak(&v7, &location);
    [(ISLivePhotoVitalityFilter *)filterCopy setOutputChangeHandler:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __39__ISLivePhotoPlayer_setVitalityFilter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleVitalityFilterDidChange:v3];
}

- (NSSet)playbackFilters
{
  v2 = [(NSMutableSet *)self->_playbackFilters copy];

  return v2;
}

- (void)removePlaybackFilter:(id)filter
{
  if (filter)
  {
    playbackFilters = self->_playbackFilters;
    filterCopy = filter;
    [(NSMutableSet *)playbackFilters removeObject:filterCopy];
    [filterCopy unregisterChangeObserver:self context:ISLivePhotoPlaybackFilterObservationContext];
  }
}

- (void)addPlaybackFilter:(id)filter
{
  if (filter)
  {
    playbackFilters = self->_playbackFilters;
    filterCopy = filter;
    [(NSMutableSet *)playbackFilters addObject:filterCopy];
    [(ISLivePhotoPlayer *)self _configurePlaybackFilter:filterCopy];
    [filterCopy registerChangeObserver:self context:ISLivePhotoPlaybackFilterObservationContext];
  }
}

- (void)activeBehaviorDidChange
{
  v4.receiver = self;
  v4.super_class = ISLivePhotoPlayer;
  [(ISBasePlayer *)&v4 activeBehaviorDidChange];
  [(ISLivePhotoPlayer *)self _updateHintingAndVitality];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__ISLivePhotoPlayer_activeBehaviorDidChange__block_invoke;
  v3[3] = &unk_279A2A488;
  v3[4] = self;
  [(ISObservable *)self performChanges:v3];
}

uint64_t __44__ISLivePhotoPlayer_activeBehaviorDidChange__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateScale];
  v2 = *(a1 + 32);

  return [v2 _invalidateApertureMode];
}

- (double)videoWillPlayToPhotoInterval
{
  [(ISLivePhotoPlayer *)self _photoTransitionDuration];
  v4 = v3;
  playerItem = [(ISBasePlayer *)self playerItem];
  playerContent = [playerItem playerContent];

  variationIdentifier = [playerContent variationIdentifier];
  if ([variationIdentifier integerValue] == 3)
  {
    v8 = +[ISPlayerSettings sharedInstance];
    longExposureVitality = [v8 longExposureVitality];

    if (longExposureVitality)
    {
      v4 = 0.25;
    }
  }

  else
  {
  }

  return v4;
}

- (void)statusDidChange
{
  v3.receiver = self;
  v3.super_class = ISLivePhotoPlayer;
  [(ISBasePlayer *)&v3 statusDidChange];
  [(ISLivePhotoPlayer *)self _configurePlaybackFilters];
  [(ISLivePhotoPlayer *)self _prepareForVitalityIfNeeded];
  [(ISLivePhotoPlayer *)self _playIfNeeded];
}

- (void)playerItemDidChange
{
  v8.receiver = self;
  v8.super_class = ISLivePhotoPlayer;
  [(ISBasePlayer *)&v8 playerItemDidChange];
  vitalityFilter = [(ISLivePhotoPlayer *)self vitalityFilter];
  state = [vitalityFilter state];

  _coalescedPlaybackFilterState = [(ISLivePhotoPlayer *)self _coalescedPlaybackFilterState];
  [(ISBasePlayer *)self setActiveBehavior:0];
  [(ISLivePhotoPlayer *)self _setCurrentPlaybackStyle:0];
  playerItem = [(ISBasePlayer *)self playerItem];

  if (playerItem)
  {
    if (_coalescedPlaybackFilterState == 1)
    {
      return;
    }

    if (_coalescedPlaybackFilterState == 2)
    {
      [(ISLivePhotoPlayer *)self startPlaybackWithStyle:1];
      return;
    }

    if (state == 2)
    {
      [(ISLivePhotoPlayer *)self playVitality];
      return;
    }

    if (state == 1)
    {
      [(ISLivePhotoPlayer *)self prepareForVitality];
      return;
    }
  }

  v7 = objc_alloc_init(ISDefaultBehavior);
  [(ISBasePlayer *)self setActiveBehavior:v7];
}

- (void)configurePlayerItem
{
  v3.receiver = self;
  v3.super_class = ISLivePhotoPlayer;
  [(ISBasePlayer *)&v3 configurePlayerItem];
  [(ISLivePhotoPlayer *)self _updatePlayerItemLoadingTarget];
}

- (ISLivePhotoPlayer)init
{
  v8.receiver = self;
  v8.super_class = ISLivePhotoPlayer;
  v2 = [(ISBasePlayer *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_lastAppliedScale = 1.0;
    v4 = +[ISPlayerSettings sharedInstance];
    v3->_immediatelyShowsPhotoWhenPlaybackEnds = [v4 playIsSticky];

    v3->_playbackAllowed = 1;
    v3->_targetReadiness = 2;
    v5 = [MEMORY[0x277CBEB58] set];
    playbackFilters = v3->_playbackFilters;
    v3->_playbackFilters = v5;
  }

  return v3;
}

@end