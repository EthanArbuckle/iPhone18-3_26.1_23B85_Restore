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
- (void)_configurePlaybackFilter:(id)a3;
- (void)_configurePlaybackFilters;
- (void)_fadeInAudioIfNeeded;
- (void)_handlePlaybackFilterDidChange;
- (void)_handleVitalityFilterDidChange:(id)a3;
- (void)_playIfNeeded;
- (void)_prepareForVitalityIfNeeded;
- (void)_resetPlaybackFilters;
- (void)_setCurrentPlaybackStyle:(int64_t)a3;
- (void)_setHinting:(BOOL)a3;
- (void)_setPlayingVitality:(BOOL)a3;
- (void)_updateApertureModeIfNeeded;
- (void)_updateHintingAndVitality;
- (void)_updatePlayerItemLoadingTarget;
- (void)_updateScaleIfNeeded;
- (void)activeBehaviorDidChange;
- (void)addPlaybackFilter:(id)a3;
- (void)configurePlayerItem;
- (void)didPerformChanges;
- (void)livePhotoPlaybackBehaviorDidFinish:(id)a3;
- (void)livePhotoSettleBehaviorDidFinish:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)playVitality;
- (void)playerItemDidChange;
- (void)prepareForVitality;
- (void)removePlaybackFilter:(id)a3;
- (void)setIsAttemptingToPlayback:(BOOL)a3;
- (void)setPlaybackAllowed:(BOOL)a3;
- (void)setSeekTime:(id *)a3 completion:(id)a4;
- (void)setTargetReadiness:(int64_t)a3;
- (void)setTrimTimeRange:(id *)a3;
- (void)setVitalityFilter:(id)a3;
- (void)startPlaybackWithStyle:(int64_t)a3 settleAutomatically:(BOOL)a4;
- (void)statusDidChange;
- (void)vitalityBehaviorDidEndPlaying:(id)a3;
@end

@implementation ISLivePhotoPlayer

- (void)setTrimTimeRange:(id *)a3
{
  v4 = *&a3->var0.var3;
  v3 = *&a3->var1.var1;
  *&self->_trimTimeRange.start.value = *&a3->var0.var0;
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__ISLivePhotoPlayer_observable_didChange_context___block_invoke;
  v10[3] = &unk_279A2A410;
  v10[4] = self;
  v10[5] = a5;
  v8 = a3;
  is_dispatch_on_main_queue(v10);
  v9.receiver = self;
  v9.super_class = ISLivePhotoPlayer;
  [(ISBasePlayer *)&v9 observable:v8 didChange:a4 context:a5];
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

- (void)vitalityBehaviorDidEndPlaying:(id)a3
{
  [(ISLivePhotoPlayer *)self _updateHintingAndVitality];

  [(ISLivePhotoPlayer *)self _setCurrentPlaybackStyle:0];
}

- (void)livePhotoSettleBehaviorDidFinish:(id)a3
{
  v4 = a3;
  v5 = [(ISBasePlayer *)self activeBehavior];

  if (v5 == v4)
  {
    [(ISLivePhotoPlayer *)self _resetPlaybackFilters];
    [(ISBasePlayer *)self setActiveBehavior:0];
    [(ISLivePhotoPlayer *)self _setCurrentPlaybackStyle:0];
    [(ISLivePhotoPlayer *)self _playIfNeeded];

    [(ISLivePhotoPlayer *)self _updatePlayerItemLoadingTarget];
  }
}

- (void)livePhotoPlaybackBehaviorDidFinish:(id)a3
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
  v3 = [(ISBasePlayer *)self videoPlayer];
  v4 = +[ISPlayerSettings sharedInstance];
  [v3 setLoopingEnabled:{objc_msgSend(v4, "loopingEnabled")}];

  [(ISLivePhotoPlayer *)self _updateScaleIfNeeded];
  [(ISLivePhotoPlayer *)self _updateApertureModeIfNeeded];
}

- (void)_fadeInAudioIfNeeded
{
  if ([(ISLivePhotoPlayer *)self _wantsAudioForPlaybackStyle:[(ISLivePhotoPlayer *)self currentPlaybackStyle]])
  {
    v3 = [(ISBasePlayer *)self videoPlayer];
    [v3 volume];
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
  v3 = [(ISBasePlayer *)self activeBehavior];
  if ([v3 behaviorType] == 3)
  {
    v4 = [v3 isPlaying];
    v5 = 0;
  }

  else
  {
    v6 = [v3 behaviorType];
    v4 = 0;
    v5 = v6 == 1;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__ISLivePhotoPlayer__updateHintingAndVitality__block_invoke;
  v7[3] = &unk_279A29B30;
  v7[4] = self;
  v8 = v4;
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

- (void)_configurePlaybackFilter:(id)a3
{
  v4 = a3;
  [v4 setPlaybackDisabled:-[ISBasePlayer status](self forReason:{"status") < 2, @"PlayerNotReady"}];
}

- (double)_coalescedPlaybackFilterHintProgress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(ISLivePhotoPlayer *)self playbackFilters];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__ISLivePhotoPlayer__coalescedPlaybackFilterHintProgress__block_invoke;
  v5[3] = &unk_279A29B08;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];

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
  v2 = [(ISLivePhotoPlayer *)self playbackFilters];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__ISLivePhotoPlayer__coalescedPlaybackFilterState__block_invoke;
  v5[3] = &unk_279A29B08;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];

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
  v2 = [(ISLivePhotoPlayer *)self playbackFilters];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_992];
}

- (void)_configurePlaybackFilters
{
  v3 = [(ISLivePhotoPlayer *)self playbackFilters];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__ISLivePhotoPlayer__configurePlaybackFilters__block_invoke;
  v4[3] = &unk_279A29AC0;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];
}

- (void)setIsAttemptingToPlayback:(BOOL)a3
{
  if (self->_isAttemptingToPlayback != a3)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __47__ISLivePhotoPlayer_setIsAttemptingToPlayback___block_invoke;
    v5[3] = &unk_279A29DB8;
    v5[4] = self;
    v6 = a3;
    [(ISObservable *)self performChanges:v5];
  }
}

- (void)_setCurrentPlaybackStyle:(int64_t)a3
{
  if (self->_currentPlaybackStyle != a3)
  {
    v5[6] = v3;
    v5[7] = v4;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __46__ISLivePhotoPlayer__setCurrentPlaybackStyle___block_invoke;
    v5[3] = &unk_279A2A438;
    v5[4] = self;
    v5[5] = a3;
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

- (void)_setHinting:(BOOL)a3
{
  if (self->_hinting != a3)
  {
    self->_hinting = a3;
    [(ISObservable *)self signalChange:32];
  }
}

- (void)_setPlayingVitality:(BOOL)a3
{
  if (self->_playingVitality != a3)
  {
    self->_playingVitality = a3;
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
      v5 = [v4 scaleDuringPlayback];

      if (v5)
      {
        v6 = [(ISBasePlayer *)self activeBehavior];
        if ([v6 behaviorType] == 2)
        {
          v7 = [(ISBasePlayer *)self activeBehavior];
          v8 = [v7 isTransitioningToPhoto];

          if ((v8 & 1) == 0 && [(ISLivePhotoPlayer *)self currentPlaybackStyle]!= 4)
          {
            v9 = [(ISBasePlayer *)self playerItem];
            v10 = [v9 playerContent];
            v11 = [v10 supportsVitality];

            if (v11)
            {
              v12 = [(ISBasePlayer *)self playerItem];
              v13 = [v12 asset];
              v14 = [v13 options];

              if ((v14 & 2) != 0)
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
    v4 = [(ISBasePlayer *)self activeBehavior];
    v5 = [v4 behaviorType];

    v6 = MEMORY[0x277CE62A0];
    if (v5 != 5)
    {
      v6 = MEMORY[0x277CE62A8];
    }

    v7 = *v6;

    [(ISBasePlayer *)self setApertureMode:v7];
  }
}

- (void)_handlePlaybackFilterDidChange
{
  v3 = [(ISLivePhotoPlayer *)self _coalescedPlaybackFilterState];
  [(ISLivePhotoPlayer *)self setIsAttemptingToPlayback:v3 != 0];
  if (v3)
  {
    if (v3 == 2)
    {
      if (![(ISLivePhotoPlayer *)self currentPlaybackStyle]&& ![(ISLivePhotoPlayer *)self isPlayingVitality])
      {
        [(ISLivePhotoPlayer *)self startPlaybackWithStyleWhenReady:1];
      }

      if ([(ISLivePhotoPlayer *)self isPlayingVitality])
      {
        [(ISLivePhotoPlayer *)self _setCurrentPlaybackStyle:1];
        v4 = [(ISBasePlayer *)self activeBehavior];
        [v4 cancelSettleToPhoto];
      }
    }
  }

  else
  {

    [(ISLivePhotoPlayer *)self stopPlayback];
  }
}

- (void)_handleVitalityFilterDidChange:(id)a3
{
  v4 = [a3 state];
  if (v4)
  {
    if (v4 == 2)
    {

      [(ISLivePhotoPlayer *)self playVitality];
    }

    else if (v4 == 1)
    {

      [(ISLivePhotoPlayer *)self prepareForVitality];
    }
  }

  else
  {
    v5 = [(ISBasePlayer *)self activeBehavior];
    if ([v5 behaviorType] == 3 && objc_msgSend(v5, "isPrepared"))
    {
      [(ISLivePhotoPlayer *)self playVitality];
    }

    [(ISLivePhotoPlayer *)self _setShouldPrepareForVitalityWhenReady:0];
    [(ISLivePhotoPlayer *)self _setShouldPlayVitalityWhenReady:0];
  }
}

- (double)_photoTransitionDuration
{
  v2 = [(ISBasePlayer *)self playerItem];
  v3 = [v2 asset];
  if ([v3 hasColorAdjustments])
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
    v3 = [(ISLivePhotoPlayer *)self _vitalityTimeoutDate];
    [v3 timeIntervalSinceNow];
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
    v3 = [(ISLivePhotoPlayer *)self _styleToPlayWhenReady];
    v4 = [(ISLivePhotoPlayer *)self _settleAutomaticallyWhenReady];
    [(ISLivePhotoPlayer *)self _setStyleToPlayWhenReady:0];
    [(ISLivePhotoPlayer *)self _setSettleAutomaticallyWhenReady:0];

    [(ISLivePhotoPlayer *)self startPlaybackWithStyle:v3 settleAutomatically:v4];
  }
}

- (BOOL)_canPlayVitality
{
  v2 = [(ISBasePlayer *)self playerItem];
  v3 = [v2 playerContent];

  if (![v3 supportsVitality])
  {
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_7;
  }

  [v3 photoTime];
  if ((BYTE4(v8) & 0x1D) == 1)
  {
    [v3 photoTime];
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

- (void)setSeekTime:(id *)a3 completion:(id)a4
{
  v6 = a4;
  time1 = *a3;
  seekTime = self->_seekTime;
  if (CMTimeCompare(&time1, &seekTime))
  {
    v7 = *&a3->var0;
    self->_seekTime.epoch = a3->var3;
    *&self->_seekTime.value = v7;
    if (a3->var2)
    {
      v9 = [(ISBasePlayer *)self activeBehavior];
      if ([v9 behaviorType] == 5)
      {
        [v9 setSeekCompletionHandler:v6];
        time1 = *a3;
        [v9 setSeekTime:&time1];
      }

      else
      {
        v10 = [ISLivePhotoSeekBehavior alloc];
        v11 = [(ISBasePlayer *)self lastAppliedLayoutInfo];
        time1 = *a3;
        v12 = [(ISLivePhotoSeekBehavior *)v10 initWithInitialLayoutInfo:v11 seekTime:&time1];

        [(ISLivePhotoSeekBehavior *)v12 setSeekCompletionHandler:v6];
        [(ISBasePlayer *)self setActiveBehavior:v12];
        v9 = v12;
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

  else if (v6)
  {
    v6[2](v6, 1);
  }
}

- (id)_createVitalityBehavior
{
  v3 = +[ISVitalitySettings sharedInstance];
  v4 = [(ISBasePlayer *)self lastAppliedLayoutInfo];
  v5 = [(ISBasePlayer *)self playerItem];
  v6 = [v5 playerContent];
  memset(&v30, 0, sizeof(v30));
  v7 = [v5 playerContent];
  v8 = v7;
  if (v7)
  {
    [v7 videoDuration];
  }

  else
  {
    memset(&v30, 0, sizeof(v30));
  }

  memset(&v29, 0, sizeof(v29));
  if (v6)
  {
    [v6 photoTime];
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
  v13 = [v6 variationIdentifier];
  if ([v13 integerValue] == 3)
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
  v21 = [v5 asset];
  v22 = [v21 options];
  rhs = v29;
  lhs = v28;
  v23 = [(ISLivePhotoVitalityBehavior *)v16 initWithInitialLayoutInfo:v4 playbackEndTime:&rhs playDuration:&lhs playRate:v15 photoTransitionDuration:v22 pauseDuringTransition:COERCE_DOUBLE(__PAIR64__(HIDWORD(v28.value) assetOptions:v18)), v20];

  return v23;
}

- (void)playVitality
{
  if ([(ISLivePhotoPlayer *)self isPlayingVitality]|| ![(ISLivePhotoPlayer *)self isPlaybackAllowed])
  {
    return;
  }

  v9 = [(ISBasePlayer *)self activeBehavior];
  if ([v9 behaviorType] == 5)
  {
    goto LABEL_14;
  }

  v3 = [(ISLivePhotoPlayer *)self _canPlayVitality];

  if (!v3)
  {
    return;
  }

  if ([(ISBasePlayer *)self status]> 0)
  {
    [(ISLivePhotoPlayer *)self _setCurrentPlaybackStyle:0];
    v10 = [(ISBasePlayer *)self activeBehavior];
    if ([v10 behaviorType] == 3)
    {
      v4 = v10;
    }

    else
    {
      v8 = [(ISLivePhotoPlayer *)self _createVitalityBehavior];

      [(ISBasePlayer *)self setActiveBehavior:v8];
      v4 = v8;
    }

    v9 = v4;
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
      v8 = [(ISBasePlayer *)self activeBehavior];
      if ([v8 behaviorType] == 3 && (objc_msgSend(v8, "isPrepared") & 1) != 0)
      {
        v3 = v8;
      }

      else
      {
        v4 = [(ISLivePhotoPlayer *)self _createVitalityBehavior];

        [(ISBasePlayer *)self setActiveBehavior:v4];
        v3 = v4;
      }

      v9 = v3;
      [v3 prepareForVitality];
      [(ISLivePhotoPlayer *)self _setShouldPrepareForVitalityWhenReady:0];
    }
  }
}

- (void)startPlaybackWithStyle:(int64_t)a3 settleAutomatically:(BOOL)a4
{
  [(ISLivePhotoPlayer *)self _setShouldPrepareForVitalityWhenReady:0];
  [(ISLivePhotoPlayer *)self _setShouldPlayVitalityWhenReady:0];
  [(ISLivePhotoPlayer *)self _setStyleToPlayWhenReady:0];
  v7 = [(ISBasePlayer *)self playerItem];
  memset(&v25, 0, sizeof(v25));
  v8 = [v7 playerContent];
  v9 = v8;
  if (v8)
  {
    [v8 photoTime];
  }

  else
  {
    memset(&v25, 0, sizeof(v25));
  }

  v10 = [(ISBasePlayer *)self lastAppliedLayoutInfo];
  if (a3 == 1)
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
    v12 = a3 == 2;
    v11 = a3 == 4;
    if (a3 == 4 || a3 == 2)
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

  if (a4)
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
  v18 = [(ISLivePhotoPlaybackBehavior *)v17 initWithInitialLayoutInfo:v10 keyTime:&v23 playbackTimeRange:&range photoTransitionDuration:v16 immediatelyShowsPhotoWhenPlaybackEnds:a3 != 4 hasBlurryTransition:v13];
  [(ISBasePlayer *)self setActiveBehavior:v18];
  [(ISLivePhotoPlaybackBehavior *)v18 startPlayback];
  [(ISLivePhotoPlayer *)self _setCurrentPlaybackStyle:a3];
}

- (void)setPlaybackAllowed:(BOOL)a3
{
  if (self->_playbackAllowed != a3)
  {
    self->_playbackAllowed = a3;
    if (a3)
    {

      [(ISLivePhotoPlayer *)self _playIfNeeded];
    }

    else
    {
      v4 = [(ISBasePlayer *)self activeBehavior];
      v5 = [v4 behaviorType];

      if (v5 == 3)
      {
        v6 = objc_alloc_init(ISDefaultBehavior);
        [(ISBasePlayer *)self setActiveBehavior:v6];
      }
    }
  }
}

- (void)_updatePlayerItemLoadingTarget
{
  v12 = [(ISBasePlayer *)self playerItem];
  v3 = [(ISLivePhotoPlayer *)self targetReadiness];
  v4 = [(ISLivePhotoPlayer *)self _coalescedPlaybackFilterState];
  if (v4 | [(ISLivePhotoPlayer *)self currentPlaybackStyle])
  {
LABEL_9:
    v10 = 2;
    goto LABEL_15;
  }

  v5 = [(ISBasePlayer *)self activeBehavior];
  if (v5)
  {
    v6 = v5;
    v7 = [(ISBasePlayer *)self activeBehavior];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v9 = 1;
    if (v3 != 1)
    {
      v9 = 2;
    }

    if (v3)
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
    if (v3 != 1)
    {
      v11 = 2;
    }

    if (v3)
    {
      v10 = v11;
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_15:
  [v12 setLoadingTarget:v10];
  [v12 discardContentBelowLoadingTarget];
}

- (void)setTargetReadiness:(int64_t)a3
{
  if (self->_targetReadiness != a3)
  {
    self->_targetReadiness = a3;
    [(ISLivePhotoPlayer *)self _updatePlayerItemLoadingTarget];
  }
}

- (void)setVitalityFilter:(id)a3
{
  v5 = a3;
  if (self->_vitalityFilter != v5)
  {
    objc_storeStrong(&self->_vitalityFilter, a3);
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __39__ISLivePhotoPlayer_setVitalityFilter___block_invoke;
    v6[3] = &unk_279A29A98;
    objc_copyWeak(&v7, &location);
    [(ISLivePhotoVitalityFilter *)v5 setOutputChangeHandler:v6];
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

- (void)removePlaybackFilter:(id)a3
{
  if (a3)
  {
    playbackFilters = self->_playbackFilters;
    v5 = a3;
    [(NSMutableSet *)playbackFilters removeObject:v5];
    [v5 unregisterChangeObserver:self context:ISLivePhotoPlaybackFilterObservationContext];
  }
}

- (void)addPlaybackFilter:(id)a3
{
  if (a3)
  {
    playbackFilters = self->_playbackFilters;
    v5 = a3;
    [(NSMutableSet *)playbackFilters addObject:v5];
    [(ISLivePhotoPlayer *)self _configurePlaybackFilter:v5];
    [v5 registerChangeObserver:self context:ISLivePhotoPlaybackFilterObservationContext];
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
  v5 = [(ISBasePlayer *)self playerItem];
  v6 = [v5 playerContent];

  v7 = [v6 variationIdentifier];
  if ([v7 integerValue] == 3)
  {
    v8 = +[ISPlayerSettings sharedInstance];
    v9 = [v8 longExposureVitality];

    if (v9)
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
  v3 = [(ISLivePhotoPlayer *)self vitalityFilter];
  v4 = [v3 state];

  v5 = [(ISLivePhotoPlayer *)self _coalescedPlaybackFilterState];
  [(ISBasePlayer *)self setActiveBehavior:0];
  [(ISLivePhotoPlayer *)self _setCurrentPlaybackStyle:0];
  v6 = [(ISBasePlayer *)self playerItem];

  if (v6)
  {
    if (v5 == 1)
    {
      return;
    }

    if (v5 == 2)
    {
      [(ISLivePhotoPlayer *)self startPlaybackWithStyle:1];
      return;
    }

    if (v4 == 2)
    {
      [(ISLivePhotoPlayer *)self playVitality];
      return;
    }

    if (v4 == 1)
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