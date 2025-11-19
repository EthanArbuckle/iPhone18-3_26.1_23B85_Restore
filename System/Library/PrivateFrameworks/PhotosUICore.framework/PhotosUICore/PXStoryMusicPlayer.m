@interface PXStoryMusicPlayer
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)playbackStartTimeForIncomingSong:(SEL)a3;
- (NSSet)failedAudioAssets;
- (NSString)description;
- (PXStoryMusicPlayer)init;
- (PXStoryMusicPlayer)initWithModel:(id)a3 targetDurationMatchesTimeline:(BOOL)a4;
- (id)AVAudioSessionForPlayer:(id)a3;
- (id)diagnosticCueStringForSize:(CGSize)a3 withIndicatorTime:(id *)a4 rangeIndicatorTimeRange:(id *)a5;
- (id)diagnosticErrorsByComponentForHUDType:(int64_t)a3;
- (id)diagnosticTextForHUDType:(int64_t)a3;
- (id)diagnosticTextForHUDType:(int64_t)a3 displaySize:(CGSize)a4;
- (id)windowSceneID;
- (void)_handleAudioCues:(id)a3 asset:(id)a4 error:(id)a5 requestID:(int64_t)a6;
- (void)_handleDuckingDelayPassedForTouchingBeganDate:(id)a3;
- (void)_handlePlaybackFailureIfNeeded;
- (void)_handlePlaybackTimerFired:(id)a3;
- (void)_invalidateCueSource;
- (void)_invalidateCurrentAudioAsset;
- (void)_invalidateCurrentSongResource;
- (void)_invalidateDesiredPlayState;
- (void)_invalidateDucked;
- (void)_invalidateDuckingVolumeAnimator;
- (void)_invalidateError;
- (void)_invalidateFadeOutVolumeAnimator;
- (void)_invalidateFailedAudioAssets;
- (void)_invalidateFocusVolumeAnimator;
- (void)_invalidateModelProperties;
- (void)_invalidatePlaybackTimer;
- (void)_invalidatePlayerCurrentAsset;
- (void)_invalidatePlayerDesiredPlayState;
- (void)_invalidatePlayerVolume;
- (void)_invalidateReadinessStatus;
- (void)_invalidateTargetDuration;
- (void)_invalidateTouchingBeganDate;
- (void)_invalidateViewControllerTransitionVolumeAnimator;
- (void)_updateCueSource;
- (void)_updateCurrentAudioAsset;
- (void)_updateCurrentSongResource;
- (void)_updateDesiredPlayState;
- (void)_updateDucked;
- (void)_updateDuckingVolumeAnimator;
- (void)_updateError;
- (void)_updateFadeOutVolumeAnimator;
- (void)_updateFailedAudioAssets;
- (void)_updateFocusVolumeAnimator;
- (void)_updateModelProperties;
- (void)_updatePlaybackTimer;
- (void)_updatePlayerCurrentAsset;
- (void)_updatePlayerDesiredPlayState;
- (void)_updatePlayerVolume;
- (void)_updateReadinessStatus;
- (void)_updateTargetDuration;
- (void)_updateTouchingBeganDate;
- (void)_updateViewControllerTransitionVolumeAnimator;
- (void)didPerformChanges;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)replay;
- (void)setAudioDesiredPlayState:(int64_t)a3;
- (void)setCurrentAudioAsset:(id)a3;
- (void)setCurrentSongResource:(id)a3;
- (void)setDuckedVolume:(float)a3;
- (void)setIsActive:(BOOL)a3;
- (void)setIsDucked:(BOOL)a3;
- (void)setReadinessStatus:(int64_t)a3;
- (void)setShouldDuckForCurrentTouch:(BOOL)a3;
- (void)setTargetDuration:(id *)a3;
- (void)setTouchingBeganDate:(id)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation PXStoryMusicPlayer

- (NSSet)failedAudioAssets
{
  v2 = [(PXStoryMusicPlayer *)self internalFailedAudioAssets];
  v3 = [v2 copy];

  return v3;
}

- (void)_updateFailedAudioAssets
{
  v3 = [(PXStoryMusicPlayer *)self player];
  v4 = [v3 state];

  if (v4 == 5)
  {
    v5 = [(PXStoryMusicPlayer *)self player];
    v11 = [v5 currentAsset];

    if (!self->_internalFailedAudioAssets)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      internalFailedAudioAssets = self->_internalFailedAudioAssets;
      self->_internalFailedAudioAssets = v6;
    }

    v8 = [(PXStoryMusicPlayer *)self internalFailedAudioAssets];
    v9 = [v8 containsObject:v11];

    if ((v9 & 1) == 0)
    {
      v10 = [(PXStoryMusicPlayer *)self internalFailedAudioAssets];
      [v10 addObject:v11];

      [(PXStoryMusicPlayer *)self signalChange:4];
    }
  }
}

- (void)_invalidateFailedAudioAssets
{
  v2 = [(PXStoryMusicPlayer *)self updater];
  [v2 setNeedsUpdateOf:sel__updateFailedAudioAssets];
}

- (void)_handlePlaybackTimerFired:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__PXStoryMusicPlayer__handlePlaybackTimerFired___block_invoke;
  v3[3] = &unk_1E7747A70;
  v3[4] = self;
  [(PXStoryMusicPlayer *)self performChanges:v3];
}

- (void)setAudioDesiredPlayState:(int64_t)a3
{
  if (self->_audioDesiredPlayState != a3)
  {
    self->_audioDesiredPlayState = a3;
    [(PXStoryMusicPlayer *)self _invalidatePlayerDesiredPlayState];

    [(PXStoryMusicPlayer *)self _invalidatePlaybackTimer];
  }
}

- (void)_handlePlaybackFailureIfNeeded
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = [(PXStoryMusicPlayer *)self player];
  v4 = [v3 state];

  if (v4 == 5)
  {
    v5 = MEMORY[0x1E6991F28];
    v16[0] = *MEMORY[0x1E6991E20];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v16[1] = @"interactiveMemoryMusicCatalog";
    v17[0] = v7;
    v8 = [(PXStoryMusicPlayer *)self currentAudioAsset];
    v9 = [v8 catalog];
    if (v9 > 4)
    {
      v10 = @"Mock";
    }

    else
    {
      v10 = off_1E773ED58[v9];
    }

    v11 = v10;
    v17[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v13 = [(PXStoryMusicPlayer *)self player];
    v14 = [v13 error];
    v15 = [v12 px_dictionaryBySettingObject:v14 forKey:*MEMORY[0x1E6991E28]];
    [v5 sendEvent:@"com.apple.photos.memory.interactiveMemoryMusicFailed" withPayload:v15];

    [(PXStoryMusicPlayer *)self _invalidateError];
  }
}

- (void)setShouldDuckForCurrentTouch:(BOOL)a3
{
  if (self->_shouldDuckForCurrentTouch != a3)
  {
    self->_shouldDuckForCurrentTouch = a3;
    [(PXStoryMusicPlayer *)self _invalidateDucked];
  }
}

- (void)_handleDuckingDelayPassedForTouchingBeganDate:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryMusicPlayer *)self touchingBeganDate];
  v6 = [v4 isEqualToDate:v5];

  if (v6)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__PXStoryMusicPlayer__handleDuckingDelayPassedForTouchingBeganDate___block_invoke;
    v7[3] = &unk_1E7747A70;
    v7[4] = self;
    [(PXStoryMusicPlayer *)self performChanges:v7];
  }
}

- (void)setTouchingBeganDate:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_touchingBeganDate != v5 && ([(NSDate *)v5 isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_touchingBeganDate, a3);
    if (v6)
    {
      v7 = +[PXStorySettings sharedInstance];
      [v7 musicTouchDuckingDelay];
      v9 = v8;

      objc_initWeak(&location, self);
      v10 = dispatch_time(0, (v9 * 1000000000.0));
      v11 = [(PXStoryMusicPlayer *)self storyQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __43__PXStoryMusicPlayer_setTouchingBeganDate___block_invoke;
      block[3] = &unk_1E774B248;
      objc_copyWeak(&v15, &location);
      v14 = v6;
      dispatch_after(v10, v11, block);

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __43__PXStoryMusicPlayer_setTouchingBeganDate___block_invoke_2;
      v12[3] = &unk_1E7747A70;
      v12[4] = self;
      [(PXStoryMusicPlayer *)self performChanges:v12];
    }
  }
}

void __43__PXStoryMusicPlayer_setTouchingBeganDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleDuckingDelayPassedForTouchingBeganDate:*(a1 + 32)];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)playbackStartTimeForIncomingSong:(SEL)a3
{
  v6 = a4;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  retstr->var0 = 0;
  v7 = [(PXStoryMusicPlayer *)self model];
  v13 = 0uLL;
  v8 = [(PXStoryMusicPlayer *)self player];
  v9 = v8;
  if (v8)
  {
    [v8 currentTime];
  }

  else
  {
    v13 = 0uLL;
  }

  if ([v7 viewMode] == 4 && (objc_msgSend(v7, "isPresentingMusicEditor") & 1) == 0 && (BYTE12(v13) & 0x1D) == 1)
  {
    *&retstr->var0 = v13;
    retstr->var3 = 0;
  }

  else
  {
    v10 = PXAudioAssetDefaultEntryPoint(v6);
    [v10 time];
    CMTimeMakeWithSeconds(retstr, v11, 600);
  }

  return result;
}

- (id)windowSceneID
{
  v2 = [(PXStoryMusicPlayer *)self model];
  v3 = [v2 windowSceneID];

  return v3;
}

- (id)AVAudioSessionForPlayer:(id)a3
{
  v3 = [MEMORY[0x1E69C1B18] sharedInstanceWithKind:3];
  v4 = [v3 audioSession];

  return v4;
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v8 = a4;
  v5 = NSStringFromSelector(sel_musicTargetLoudnessLKFS);
  if (v5 == v8)
  {

    goto LABEL_5;
  }

  v6 = [v8 isEqualToString:v5];

  if (v6)
  {
LABEL_5:
    v7 = [(PXStoryMusicPlayer *)self player];
    [v7 performChanges:&__block_literal_global_191_224728];
  }
}

void __50__PXStoryMusicPlayer_settings_changedValueForKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[PXStorySettings sharedInstance];
  [v3 musicTargetLoudnessLKFS];
  [v2 setTargetLoudnessInLKFS:?];
}

- (id)diagnosticErrorsByComponentForHUDType:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  v5 = [(PXStoryMusicPlayer *)self player];
  v6 = [v5 error];
  [v4 setObject:v6 forKeyedSubscript:@"MusicPlayback"];

  v7 = [v4 copy];

  return v7;
}

- (id)diagnosticTextForHUDType:(int64_t)a3 displaySize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v9 = [(PXStoryMusicPlayer *)self player];
  v10 = [v9 desiredPlayState];
  if (a3 == 2)
  {
    v11 = v10;
    v12 = [(PXStoryMusicPlayer *)self currentSongResource];
    [v8 appendFormat:@"Song Resource: %@\n", v12];

    v13 = [(PXStoryMusicPlayer *)self currentSongResource];
    v14 = [v13 px_storyResourceSongAsset];
    v15 = PXAudioAssetDefaultEntryPoint(v14);
    [v15 time];
    [v8 appendFormat:@"   Start Time: %.0f\n", v16];

    v17 = [(PXStoryMusicPlayer *)self model];
    v18 = [v17 configuration];
    v19 = [v18 appleMusicStatusProvider];
    v20 = [v19 statusForCapability:1];
    if ((v20 - 1) > 2)
    {
      v21 = @"Unknown";
    }

    else
    {
      v21 = off_1E772D358[v20 - 1];
    }

    v22 = v21;
    [v8 appendFormat:@"Music Status: %@\n", v22];

    v23 = [(PXStoryMusicPlayer *)self duckingVolumeAnimator];
    [v23 presentationValue];
    if (v24 >= 1.0)
    {
      [v8 appendFormat:@"      Ducking: %@\n", @"Not Ducked"];
    }

    else
    {
      v25 = objc_alloc(MEMORY[0x1E696AEC0]);
      v26 = [(PXStoryMusicPlayer *)self duckingReason];
      v27 = v26;
      if (v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = @"Not Ducked";
      }

      v29 = [(PXStoryMusicPlayer *)self duckingVolumeAnimator];
      [v29 presentationValue];
      v31 = [v25 initWithFormat:@"%@ (%.2f)", v28, v30];
      [v8 appendFormat:@"      Ducking: %@\n", v31];
    }

    v32 = [(PXStoryMusicPlayer *)self fadeOutVolumeAnimator];
    [v32 presentationValue];
    if (v33 >= 1.0)
    {
      [v8 appendFormat:@"       Fading: %@\n", @"Not Fading"];
    }

    else
    {
      v34 = objc_alloc(MEMORY[0x1E696AEC0]);
      v35 = [(PXStoryMusicPlayer *)self fadeOutVolumeAnimator];
      [v35 presentationValue];
      v37 = [v34 initWithFormat:@"Fading Out (%.2f)", v36];
      [v8 appendFormat:@"       Fading: %@\n", v37];
    }

    v38 = [(PXStoryMusicPlayer *)self viewControllerTransitionVolumeAnimator];
    [v38 presentationValue];
    [v8 appendFormat:@" VCTransition: %0.2f\n", v39];

    [v9 volume];
    [v8 appendFormat:@"       Volume: %.1f\n", v40];
    v41 = @"Paused";
    if (v11 == 1)
    {
      v41 = @"Playing";
    }

    v42 = v41;
    [v8 appendFormat:@"Desired State: %@", v42];

    v43 = [(PXStoryMusicPlayer *)self failedAudioAssets];
    if ([v43 count])
    {
      [(PXStoryMusicPlayer *)self failedAudioAssets];
      objc_claimAutoreleasedReturnValue();
      PXMap();
    }

    if (!v11)
    {
      v44 = [(PXStoryMusicPlayer *)self pauseReason];
      [v8 appendFormat:@"(%@)", v44];
    }

    v45 = [(PXStoryMusicPlayer *)self cueSource];
    if (v45)
    {
      [(PXStoryMusicPlayer *)self currentTime];
      CMTimeMake(&duration, 3, 1);
      CMTimeRangeMake(&v54, start, &duration);
      duration = **&MEMORY[0x1E6960C70];
      v46 = *(MEMORY[0x1E6960C98] + 16);
      start[0] = *MEMORY[0x1E6960C98];
      start[1] = v46;
      start[2] = *(MEMORY[0x1E6960C98] + 32);
      v47 = [v45 diagnosticStringForTimeRange:&v54 indicatorTime:&duration rangeIndicatorTimeRange:start stringLength:50];
      [v8 appendFormat:@"\nCues: \n%@", v47];
    }

    else
    {
      [v8 appendString:@"\nCues: None"];
    }
  }

  [v8 appendString:@"\n\nPXAudioPlayer\n"];
  v48 = [(PXStoryMusicPlayer *)self player];
  v49 = [v48 lcdStringForSize:{width, height}];
  [v8 appendString:v49];

  v50 = [v8 copy];

  return v50;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__PXStoryMusicPlayer_observable_didChange_context___block_invoke;
  v5[3] = &unk_1E7747A08;
  v5[4] = self;
  v5[5] = a5;
  v5[6] = a4;
  v5[7] = a2;
  [(PXStoryMusicPlayer *)self performChanges:v5];
}

void __51__PXStoryMusicPlayer_observable_didChange_context___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 40);
  if (v3 == StyleManagerContext_224792)
  {
    if (*(a1 + 49))
    {
      [*(a1 + 32) _invalidateFocusVolumeAnimator];
    }

    goto LABEL_39;
  }

  if (v3 == ModelContext_224793)
  {
    v4 = *(a1 + 48);
    if ((v4 & 0x18000210002) != 0)
    {
      [*(a1 + 32) _invalidateDesiredPlayState];
      v4 = *(a1 + 48);
    }

    if ((v4 & 0x8000000000) != 0)
    {
      [*(a1 + 32) _invalidateCurrentAudioAsset];
      v4 = *(a1 + 48);
      if ((v4 & 0x800000000000) == 0)
      {
LABEL_13:
        if ((v4 & 0x400) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_31;
      }
    }

    else if ((v4 & 0x800000000000) == 0)
    {
      goto LABEL_13;
    }

    [*(a1 + 32) _invalidateDesiredPlayState];
    v4 = *(a1 + 48);
    if ((v4 & 0x400) == 0)
    {
LABEL_14:
      if ((v4 & 0x40000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_31:
    [*(a1 + 32) _invalidateCurrentSongResource];
    v4 = *(a1 + 48);
    if ((v4 & 0x40000000000) == 0)
    {
LABEL_16:
      if ((v4 & 0x10100) != 0)
      {
        [*(a1 + 32) _invalidateDucked];
        v4 = *(a1 + 48);
      }

      if ((v4 & 0x4000000) != 0)
      {
        [*(a1 + 32) _invalidateTouchingBeganDate];
        v4 = *(a1 + 48);
        if ((v4 & 0x10) == 0)
        {
LABEL_20:
          if ((v4 & 0x400000000000) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_35;
        }
      }

      else if ((v4 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      [*(a1 + 32) _invalidateTargetDuration];
      v4 = *(a1 + 48);
      if ((v4 & 0x400000000000) == 0)
      {
LABEL_21:
        if ((v4 & 0x200000000000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_36;
      }

LABEL_35:
      [*(a1 + 32) _invalidateFadeOutVolumeAnimator];
      v4 = *(a1 + 48);
      if ((v4 & 0x200000000000000) == 0)
      {
LABEL_22:
        if ((v4 & 0x10000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_37;
      }

LABEL_36:
      [*(a1 + 32) _invalidateViewControllerTransitionVolumeAnimator];
      v4 = *(a1 + 48);
      if ((v4 & 0x10000) == 0)
      {
LABEL_23:
        if ((v4 & 0x200000000000000) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

LABEL_37:
      [*(a1 + 32) _invalidateCurrentSongResource];
      if ((*(a1 + 48) & 0x200000000000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

LABEL_15:
    [*(a1 + 32) _invalidateDucked];
    v4 = *(a1 + 48);
    goto LABEL_16;
  }

  if (v3 != PlayerContext)
  {
    if (v3 != VolumeAnimatorContext)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PXStoryMusicPlayer.m" lineNumber:704 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((*(a1 + 48) & 2) == 0)
    {
      goto LABEL_39;
    }

LABEL_38:
    [*(a1 + 32) _invalidatePlayerVolume];
    goto LABEL_39;
  }

  v5 = *(a1 + 48);
  if ((v5 & 4) != 0)
  {
    [*(a1 + 32) _invalidateReadinessStatus];
    [*(a1 + 32) _invalidatePlayerDesiredPlayState];
    [*(a1 + 32) _invalidateFailedAudioAssets];
    [*(a1 + 32) _handlePlaybackFailureIfNeeded];
    v5 = *(a1 + 48);
  }

  if ((v5 & 0x20) != 0)
  {
    [*(a1 + 32) _invalidateError];
  }

LABEL_39:
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXStoryMusicPlayer;
  [(PXStoryMusicPlayer *)&v4 didPerformChanges];
  v3 = [(PXStoryMusicPlayer *)self updater];
  [v3 updateIfNeeded];
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXStoryMusicPlayer;
  [(PXStoryMusicPlayer *)&v3 performChanges:a3];
}

- (id)diagnosticCueStringForSize:(CGSize)a3 withIndicatorTime:(id *)a4 rangeIndicatorTimeRange:(id *)a5
{
  memset(&v16, 0, sizeof(v16));
  CMTimeMake(&v16, 3, 1);
  v8 = [(PXStoryMusicPlayer *)self cueSource];
  [(PXStoryMusicPlayer *)self currentTime];
  duration = v16;
  CMTimeRangeMake(&v15, v13, &duration);
  v9 = *&a4->var0;
  duration.epoch = a4->var3;
  v10 = *&a5->var0.var3;
  v13[0] = *&a5->var0.var0;
  v13[1] = v10;
  v13[2] = *&a5->var1.var1;
  *&duration.value = v9;
  v11 = [v8 diagnosticStringForTimeRange:&v15 indicatorTime:&duration rangeIndicatorTimeRange:v13 stringLength:45];

  return v11;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime
{
  v5 = [(PXStoryMusicPlayer *)self currentSongResource];

  if (v5)
  {
    v7 = [(PXStoryMusicPlayer *)self player];
    if (v7)
    {
      v9 = v7;
      [v7 currentTime];
      v7 = v9;
    }

    else
    {
      retstr->var0 = 0;
      *&retstr->var1 = 0;
      retstr->var3 = 0;
    }
  }

  else
  {
    v8 = MEMORY[0x1E6960C70];
    *&retstr->var0 = *MEMORY[0x1E6960C70];
    retstr->var3 = *(v8 + 16);
  }

  return result;
}

- (void)_updateError
{
  v3 = [(PXStoryMusicPlayer *)self player];
  v4 = [v3 error];

  if (v4)
  {
    v14 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(6, v4, @"Music playback failed.", v5, v6, v7, v8, v9, v13);
    v10 = [(PXStoryMusicPlayer *)self model];
    [v10 reportNetworkRelatedPlaybackFailure];
  }

  else
  {
    v14 = 0;
  }

  v11 = [(PXStoryMusicPlayer *)self model];
  v12 = [v11 errorReporter];
  [v12 setError:v14 forComponent:@"MusicPlayback"];
}

- (void)_invalidateError
{
  v2 = [(PXStoryMusicPlayer *)self updater];
  [v2 setNeedsUpdateOf:sel__updateError];
}

- (void)_updateViewControllerTransitionVolumeAnimator
{
  v3 = [(PXStoryMusicPlayer *)self model];
  [v3 volumeDuringViewControllerTransition];
  v5 = v4;

  if (v5 >= 0.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = [(PXStoryMusicPlayer *)self viewControllerTransitionVolumeAnimator];
  [v7 value];
  if (v6 != v8)
  {
    [v7 presentationValue];
    v10[1] = 3221225472;
    v10[0] = MEMORY[0x1E69E9820];
    v10[2] = __67__PXStoryMusicPlayer__updateViewControllerTransitionVolumeAnimator__block_invoke;
    v10[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
    *&v10[4] = v6;
    [v7 performChangesWithDuration:1 curve:v10 changes:{vabdd_f64(v6, v9) / 3.33333333}];
  }
}

- (void)_invalidateViewControllerTransitionVolumeAnimator
{
  v2 = [(PXStoryMusicPlayer *)self updater];
  [v2 setNeedsUpdateOf:sel__updateViewControllerTransitionVolumeAnimator];
}

- (void)_updateFocusVolumeAnimator
{
  v3 = [(PXStoryMusicPlayer *)self model];
  v4 = [v3 styleManager];
  [v4 selectionFocus];
  v6 = v5;

  v7 = vabdd_f64(v6, round(v6)) * -2.0 + 1.0;
  v8 = [(PXStoryMusicPlayer *)self focusVolumeAnimator];
  [v8 value];
  v10 = v9;

  v11 = [(PXStoryMusicPlayer *)self focusVolumeAnimator];
  v12 = v11;
  if (v10 >= v7)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48__PXStoryMusicPlayer__updateFocusVolumeAnimator__block_invoke_2;
    v14[3] = &__block_descriptor_36_e35_v16__0___PXMutableNumberAnimator__8l;
    v15 = v7;
    [v11 performChangesWithoutAnimation:v14];
  }

  else
  {
    v13 = +[PXStorySettings sharedInstance];
    [v13 focusChangeFadeDuration];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __48__PXStoryMusicPlayer__updateFocusVolumeAnimator__block_invoke;
    v16[3] = &__block_descriptor_36_e35_v16__0___PXMutableNumberAnimator__8l;
    v17 = v7;
    [v12 performChangesWithDuration:4 curve:v16 changes:?];
  }
}

- (void)_invalidateFocusVolumeAnimator
{
  v2 = [(PXStoryMusicPlayer *)self updater];
  [v2 setNeedsUpdateOf:sel__updateFocusVolumeAnimator];
}

- (void)_updateDuckingVolumeAnimator
{
  v3 = 1.0;
  if ([(PXStoryMusicPlayer *)self isDucked])
  {
    [(PXStoryMusicPlayer *)self duckedVolume];
    v3 = v4;
  }

  v5 = [(PXStoryMusicPlayer *)self duckingVolumeAnimator];
  v6 = +[PXStorySettings sharedInstance];
  [v6 duckingFadeDuration];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PXStoryMusicPlayer__updateDuckingVolumeAnimator__block_invoke;
  v7[3] = &__block_descriptor_36_e35_v16__0___PXMutableNumberAnimator__8l;
  v8 = v3;
  [v5 performChangesWithDuration:4 curve:v7 changes:?];
}

- (void)_invalidateDuckingVolumeAnimator
{
  v2 = [(PXStoryMusicPlayer *)self updater];
  [v2 setNeedsUpdateOf:sel__updateDuckingVolumeAnimator];
}

- (void)_updateFadeOutVolumeAnimator
{
  v3 = [(PXStoryMusicPlayer *)self model];
  [v3 outroFractionCompleted];
  v5 = v4;

  v6 = [(PXStoryMusicPlayer *)self fadeOutVolumeAnimator];
  v7 = v6;
  if (v5 <= 0.0)
  {
    [v6 performChangesWithDuration:4 curve:&__block_literal_global_224813 changes:0.3];
  }

  else
  {
    v8 = [(PXStoryMusicPlayer *)self model];
    v9 = [v8 configuration];
    v10 = 0.0;
    if (([v9 isPresentedForAirPlay] & 1) == 0)
    {
      v11 = +[PXStorySettings sharedInstance];
      [v11 musicFadeOutVolume];
      v10 = v12;
    }

    v13 = PXStoryVolumeForFadeOutFractionCompleted(v5);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__PXStoryMusicPlayer__updateFadeOutVolumeAnimator__block_invoke;
    v14[3] = &__block_descriptor_36_e35_v16__0___PXMutableNumberAnimator__8l;
    v15 = v10 + (v13 * (1.0 - v10));
    [v7 performChangesUsingDefaultSpringAnimationWithInitialVelocity:v14 changes:0.0];
  }
}

- (void)_invalidateFadeOutVolumeAnimator
{
  v2 = [(PXStoryMusicPlayer *)self updater];
  [v2 setNeedsUpdateOf:sel__updateFadeOutVolumeAnimator];
}

- (void)_updateDucked
{
  v15 = [(PXStoryMusicPlayer *)self model];
  v3 = [v15 viewMode];
  v4 = [(PXStoryMusicPlayer *)self model];
  v5 = [v4 isAtPlaybackEnd];

  if (v5)
  {
    v6 = +[PXStorySettings sharedInstance];
    [v6 musicFadeOutVolume];
    v8 = v7;
    v9 = @"Story Played To End";
LABEL_11:

    v13 = 1;
    goto LABEL_12;
  }

  if (v3 != 1 && v3 != 4)
  {
    v6 = +[PXStorySettings sharedInstance];
    [v6 musicBackgroundVolume];
    v8 = v12;
    v9 = @"View Mode";
    goto LABEL_11;
  }

  if ([(PXStoryMusicPlayer *)self shouldDuckForCurrentTouch]&& v3 == 1)
  {
    v6 = +[PXStorySettings sharedInstance];
    [v6 musicBackgroundVolume];
    v8 = v10;
    v9 = @"Touching Fullsize Player";
    goto LABEL_11;
  }

  if ([v15 wantsMusicDucked])
  {
    v6 = +[PXStorySettings sharedInstance];
    [v6 musicDuckedVolume];
    v8 = v11;
    v9 = @"Model";
    goto LABEL_11;
  }

  v13 = 0;
  v9 = 0;
  v8 = 1.0;
LABEL_12:
  [(PXStoryMusicPlayer *)self setIsDucked:v13];
  *&v14 = v8;
  [(PXStoryMusicPlayer *)self setDuckedVolume:v14];
  [(PXStoryMusicPlayer *)self setDuckingReason:v9];
}

- (void)_invalidateDucked
{
  v2 = [(PXStoryMusicPlayer *)self updater];
  [v2 setNeedsUpdateOf:sel__updateDucked];
}

- (void)_updateTouchingBeganDate
{
  v4 = [(PXStoryMusicPlayer *)self model];
  if ([v4 isTouching])
  {
    v3 = [MEMORY[0x1E695DF00] date];
    [(PXStoryMusicPlayer *)self setTouchingBeganDate:v3];
  }

  else
  {
    [(PXStoryMusicPlayer *)self setTouchingBeganDate:0];
  }
}

- (void)_invalidateTouchingBeganDate
{
  v2 = [(PXStoryMusicPlayer *)self updater];
  [v2 setNeedsUpdateOf:sel__updateTouchingBeganDate];
}

- (void)_updatePlayerVolume
{
  v3 = [(PXStoryMusicPlayer *)self duckingVolumeAnimator];
  [v3 presentationValue];
  v5 = v4;

  v6 = [(PXStoryMusicPlayer *)self focusVolumeAnimator];
  [v6 presentationValue];
  v8 = v7;

  v9 = [(PXStoryMusicPlayer *)self fadeOutVolumeAnimator];
  [v9 presentationValue];
  v11 = v10;

  if (v5 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v5;
  }

  v13 = v12 * v8;
  v14 = +[PXStorySettings sharedInstance];
  v15 = [v14 musicDemoVolumeAdjustment];

  memset(&v34, 0, sizeof(v34));
  v16 = [(PXStoryMusicPlayer *)self player];
  v17 = v16;
  if (v16)
  {
    [v16 currentTime];
  }

  else
  {
    memset(&v34, 0, sizeof(v34));
  }

  v18 = v13 * v15;

  if ((v34.flags & 0x1D) == 1)
  {
    time = v34;
    Seconds = CMTimeGetSeconds(&time);
    v20 = [(PXStoryMusicPlayer *)self currentAudioAsset];
    v21 = PXAudioAssetDefaultEntryPoint(v20);

    if (v21)
    {
      [v21 time];
      [v21 fadeInGainAtOffset:Seconds - v22];
      v18 = v18 * v23;
    }
  }

  v24 = [(PXStoryMusicPlayer *)self viewControllerTransitionVolumeAnimator];
  [v24 presentationValue];
  v26 = v25 * v18;

  v27 = [(PXStoryMusicPlayer *)self model];
  [v27 volume];
  v29 = v28 * v26;

  self->_volume = v29;
  v30 = [(PXStoryMusicPlayer *)self player];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __41__PXStoryMusicPlayer__updatePlayerVolume__block_invoke;
  v31[3] = &__block_descriptor_36_e32_v16__0___PXMutableAudioPlayer__8l;
  v32 = v29;
  [v30 performChanges:v31];
}

- (void)_invalidatePlayerVolume
{
  v2 = [(PXStoryMusicPlayer *)self updater];
  [v2 setNeedsUpdateOf:sel__updatePlayerVolume];
}

- (void)_updateModelProperties
{
  v3 = [(PXStoryMusicPlayer *)self readinessStatus];
  v4 = [(PXStoryMusicPlayer *)self model];
  v5 = [v4 storyQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__PXStoryMusicPlayer__updateModelProperties__block_invoke;
  v7[3] = &unk_1E77498A0;
  v8 = v4;
  v9 = v3;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __44__PXStoryMusicPlayer__updateModelProperties__block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__PXStoryMusicPlayer__updateModelProperties__block_invoke_2;
  v3[3] = &__block_descriptor_40_e31_v16__0___PXStoryMutableModel__8l;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 performChanges:v3];
}

- (void)_invalidateModelProperties
{
  v2 = [(PXStoryMusicPlayer *)self updater];
  [v2 setNeedsUpdateOf:sel__updateModelProperties];
}

- (void)_updateReadinessStatus
{
  v6 = [(PXStoryMusicPlayer *)self currentSongResource];
  if (PXStorySongResourceIsNullResource(v6))
  {
    v3 = 3;
  }

  else
  {
    v4 = [(PXStoryMusicPlayer *)self player];
    v5 = [v4 state];

    if ((v5 - 2) > 3)
    {
      v3 = 0;
    }

    else
    {
      v3 = qword_1A5383318[v5 - 2];
    }
  }

  [(PXStoryMusicPlayer *)self setReadinessStatus:v3];
}

- (void)_invalidateReadinessStatus
{
  v2 = [(PXStoryMusicPlayer *)self updater];
  [v2 setNeedsUpdateOf:sel__updateReadinessStatus];
}

- (void)_updatePlaybackTimer
{
  v3 = [(PXStoryMusicPlayer *)self audioDesiredPlayState];
  v4 = [(PXStoryMusicPlayer *)self playbackTimer];
  v5 = v4;
  if (v3 == 1)
  {

    if (!v5)
    {
      v6 = [MEMORY[0x1E695DFF0] px_scheduledTimerWithTimeInterval:self weakTarget:sel__handlePlaybackTimerFired_ selector:0 userInfo:1 repeats:0.0333333333];
      [(PXStoryMusicPlayer *)self setPlaybackTimer:v6];
    }
  }

  else
  {
    [v4 invalidate];

    [(PXStoryMusicPlayer *)self setPlaybackTimer:0];
  }
}

- (void)_invalidatePlaybackTimer
{
  v2 = [(PXStoryMusicPlayer *)self updater];
  [v2 setNeedsUpdateOf:sel__updatePlaybackTimer];
}

- (void)_updatePlayerDesiredPlayState
{
  v3 = [(PXStoryMusicPlayer *)self audioDesiredPlayState];
  v4 = [(PXStoryMusicPlayer *)self player];
  if ([v4 state] != 5)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __51__PXStoryMusicPlayer__updatePlayerDesiredPlayState__block_invoke;
    v5[3] = &unk_1E77479A0;
    v5[4] = self;
    v5[5] = v3;
    [v4 performChanges:v5];
  }
}

void __51__PXStoryMusicPlayer__updatePlayerDesiredPlayState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 40);
  if (v5)
  {
    if (v5 == 1 && [v3 desiredPlayState] != 1)
    {
      v6 = [*(a1 + 32) model];
      v7 = v6;
      if (v6)
      {
        [v6 nominalPlaybackTime];
      }

      else
      {
        memset(&v13, 0, sizeof(v13));
      }

      lhs = v13;
      v8 = [v4 currentAsset];
      v9 = PXAudioAssetDefaultEntryPoint(v8);
      [v9 time];
      CMTimeMakeWithSeconds(&rhs, v10, PXAudioDefaultCMTimeScale);
      CMTimeAdd(&v13, &lhs, &rhs);
      [v4 playFromStartTime:&v13];
    }
  }

  else
  {
    [v3 setDesiredPlayState:0];
  }
}

- (void)_invalidatePlayerDesiredPlayState
{
  v2 = [(PXStoryMusicPlayer *)self updater];
  [v2 setNeedsUpdateOf:sel__updatePlayerDesiredPlayState];
}

- (void)_updateDesiredPlayState
{
  v4 = [(PXStoryMusicPlayer *)self model];
  v5 = [v4 viewMode];
  v6 = 0;
  if (v5 <= 5)
  {
    if (((1 << v5) & 0x36) != 0)
    {
      v6 = 1;
    }

    else if (!v5)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"PXStoryMusicPlayer.m" lineNumber:333 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__PXStoryMusicPlayer__updateDesiredPlayState__block_invoke;
  aBlock[3] = &unk_1E7747978;
  v11 = v4;
  v12 = self;
  v13 = v6;
  v7 = v4;
  v8 = _Block_copy(aBlock);
  [(PXStoryMusicPlayer *)self setAudioDesiredPlayState:v8[2]() ^ 1];
}

uint64_t __45__PXStoryMusicPlayer__updateDesiredPlayState__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isPresentingMusicEditor] & 1) == 0)
  {
    if ([*(a1 + 32) desiredPlayState] != 1)
    {
      v2 = MEMORY[0x1E696AEC0];
      v3 = "model.desiredPlayState != PXStoryDesiredPlayStatePlaying";
      goto LABEL_13;
    }

    if ([*(a1 + 32) viewMode] != 4 && objc_msgSend(*(a1 + 32), "readinessStatus") != 3)
    {
      v2 = MEMORY[0x1E696AEC0];
      v3 = "model.readinessStatus != PXStoryPlaybackReadinessStatusReadyToPlay";
      goto LABEL_13;
    }
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = "!canPlayInCurrentViewMode";
    goto LABEL_13;
  }

  if (([*(a1 + 40) isActive] & 1) == 0)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = "!self.isActive";
    goto LABEL_13;
  }

  if ([*(a1 + 32) isPresentingColorGradeEditor])
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = "model.isPresentingColorGradeEditor";
LABEL_13:
    v4 = [v2 stringWithUTF8String:v3];
    [*(a1 + 40) setPauseReason:v4];

    return 1;
  }

  v6 = [*(a1 + 40) currentSongResource];
  IsNullResource = PXStorySongResourceIsNullResource(v6);

  if (IsNullResource)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = "songResourceIsNull";
    goto LABEL_13;
  }

  [*(a1 + 40) setPauseReason:0];
  return 0;
}

- (void)_invalidateDesiredPlayState
{
  v2 = [(PXStoryMusicPlayer *)self updater];
  [v2 setNeedsUpdateOf:sel__updateDesiredPlayState];
}

- (void)_updatePlayerCurrentAsset
{
  v3 = [(PXStoryMusicPlayer *)self currentAudioAsset];
  v10 = 0uLL;
  v11 = 0;
  [(PXStoryMusicPlayer *)self playbackStartTimeForIncomingSong:v3];
  v4 = [(PXStoryMusicPlayer *)self player];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__PXStoryMusicPlayer__updatePlayerCurrentAsset__block_invoke;
  v6[3] = &unk_1E7747950;
  v7 = v3;
  v8 = v10;
  v9 = v11;
  v5 = v3;
  [v4 performChanges:v6];
}

uint64_t __47__PXStoryMusicPlayer__updatePlayerCurrentAsset__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  return [a2 setCurrentAsset:v2 startTime:&v4];
}

- (void)_invalidatePlayerCurrentAsset
{
  v2 = [(PXStoryMusicPlayer *)self updater];
  [v2 setNeedsUpdateOf:sel__updatePlayerCurrentAsset];
}

- (void)_handleAudioCues:(id)a3 asset:(id)a4 error:(id)a5 requestID:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(PXStoryMusicPlayer *)self storyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PXStoryMusicPlayer__handleAudioCues_asset_error_requestID___block_invoke;
  block[3] = &unk_1E7747928;
  v20 = v12;
  v21 = a6;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

uint64_t __61__PXStoryMusicPlayer__handleAudioCues_asset_error_requestID___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  result = [*(a1 + 32) cueRequestID];
  if (v2 == result)
  {
    v4 = *(a1 + 40);
    if (!v4)
    {
      v5 = PLAudioPlaybackGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 48);
        v7 = *(a1 + 56);
        v8 = 138412546;
        v9 = v6;
        v10 = 2112;
        v11 = v7;
        _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Failed to retrieve audio cues for asset %@. Error: %@", &v8, 0x16u);
      }

      v4 = *(a1 + 40);
    }

    return [*(a1 + 32) setCueSource:v4];
  }

  return result;
}

- (void)_updateCueSource
{
  v3 = [(PXStoryMusicPlayer *)self currentAudioAsset];
  objc_initWeak(&location, self);
  [(PXStoryMusicPlayer *)self setCueRequestID:[(PXStoryMusicPlayer *)self cueRequestID]+ 1];
  v4 = [(PXStoryMusicPlayer *)self cueRequestID];
  v5 = [(PXStoryMusicPlayer *)self cueProvider];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__PXStoryMusicPlayer__updateCueSource__block_invoke;
  v8[3] = &unk_1E7747900;
  objc_copyWeak(v10, &location);
  v6 = v3;
  v9 = v6;
  v10[1] = v4;
  v7 = [v5 requestCuesForAudioAsset:v6 resultHandler:v8];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __38__PXStoryMusicPlayer__updateCueSource__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleAudioCues:v6 asset:*(a1 + 32) error:v5 requestID:*(a1 + 48)];
}

- (void)_invalidateCueSource
{
  [(PXStoryMusicPlayer *)self setCueSource:0];
  v3 = [(PXStoryMusicPlayer *)self updater];
  [v3 setNeedsUpdateOf:sel__updateCueSource];
}

- (void)_updateCurrentAudioAsset
{
  v4 = [(PXStoryMusicPlayer *)self currentSongResource];
  v3 = [v4 px_storyResourceSongAsset];
  [(PXStoryMusicPlayer *)self setCurrentAudioAsset:v3];
}

- (void)_invalidateCurrentAudioAsset
{
  v2 = [(PXStoryMusicPlayer *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCurrentAudioAsset];
}

- (void)_updateCurrentSongResource
{
  v4 = [(PXStoryMusicPlayer *)self model];
  v5 = [v4 activeSongResource];

  v6 = [v5 px_storyResourceSongAsset];
  if ([v6 catalog] == 4)
  {
    [(PXStoryMusicPlayer *)self targetDuration];
    if ((v14[36] & 0x1D) == 1)
    {
      v7 = v6;
      if (v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
LABEL_5:
          [(PXStoryMusicPlayer *)self targetDuration];
          v8 = [v7 assetWithTargetDuration:v14];

          v5 = v8;
          goto LABEL_6;
        }

        v9 = [MEMORY[0x1E696AAA8] currentHandler];
        v12 = objc_opt_class();
        v11 = NSStringFromClass(v12);
        v13 = [v7 px_descriptionForAssertionMessage];
        [v9 handleFailureInMethod:a2 object:self file:@"PXStoryMusicPlayer.m" lineNumber:268 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"asset", v11, v13}];
      }

      else
      {
        v9 = [MEMORY[0x1E696AAA8] currentHandler];
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        [v9 handleFailureInMethod:a2 object:self file:@"PXStoryMusicPlayer.m" lineNumber:268 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"asset", v11}];
      }

      goto LABEL_5;
    }
  }

LABEL_6:
  [(PXStoryMusicPlayer *)self setCurrentSongResource:v5];
}

- (void)_invalidateCurrentSongResource
{
  v2 = [(PXStoryMusicPlayer *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCurrentSongResource];
}

- (void)_updateTargetDuration
{
  if ([(PXStoryMusicPlayer *)self targetDurationMatchesTimeline])
  {
    v3 = [(PXStoryMusicPlayer *)self model];
    v4 = [v3 timeline];
    v5 = v4;
    if (v4)
    {
      [v4 timeRange];
    }

    else
    {
      memset(v9, 0, sizeof(v9));
      v8 = 0u;
    }

    v6 = *(v9 + 8);
    v7 = *(&v9[1] + 1);
    [(PXStoryMusicPlayer *)self setTargetDuration:&v6];
  }
}

- (void)_invalidateTargetDuration
{
  v2 = [(PXStoryMusicPlayer *)self updater];
  [v2 setNeedsUpdateOf:sel__updateTargetDuration];
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXStoryMusicPlayer *)self model];
  v7 = [v3 initWithFormat:@"<%@ %p; Model: %@>", v5, self, v6];

  return v7;
}

- (void)replay
{
  v3 = [(PXStoryMusicPlayer *)self player];
  v4 = [v3 currentAsset];

  memset(&v10, 0, sizeof(v10));
  v5 = PXAudioAssetDefaultEntryPoint(v4);
  [v5 time];
  CMTimeMakeWithSeconds(&v10, v6, 600);

  v7 = [(PXStoryMusicPlayer *)self player];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28__PXStoryMusicPlayer_replay__block_invoke;
  v8[3] = &__block_descriptor_56_e32_v16__0___PXMutableAudioPlayer__8l;
  v9 = v10;
  [v7 performChanges:v8];
}

uint64_t __28__PXStoryMusicPlayer_replay__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  return [a2 replayFromTime:&v3];
}

- (id)diagnosticTextForHUDType:(int64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  [(PXStoryMusicPlayer *)self currentTime];
  v5 = PXStoryTimeDescription(&v8);
  v6 = [v4 initWithFormat:@"Music Time: %@", v5];

  return v6;
}

- (void)setDuckedVolume:(float)a3
{
  if (self->_duckedVolume != a3)
  {
    self->_duckedVolume = a3;
    [(PXStoryMusicPlayer *)self _invalidateDuckingVolumeAnimator];
  }
}

- (void)setIsDucked:(BOOL)a3
{
  if (self->_isDucked != a3)
  {
    self->_isDucked = a3;
    [(PXStoryMusicPlayer *)self _invalidateDuckingVolumeAnimator];
  }
}

- (void)setTargetDuration:(id *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  p_targetDuration = &self->_targetDuration;
  time1 = *a3;
  targetDuration = self->_targetDuration;
  if (CMTimeCompare(&time1, &targetDuration))
  {
    v6 = *&a3->var0;
    p_targetDuration->epoch = a3->var3;
    *&p_targetDuration->value = v6;
    v7 = [(PXStoryMusicPlayer *)self log];
    v8 = os_signpost_id_make_with_pointer(v7, self);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(v7))
      {
        v10 = [(PXStoryMusicPlayer *)self logContext];
        LODWORD(time1.value) = 134217984;
        *(&time1.value + 4) = v10;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_END, v9, "PXStoryMusicPlayer.targetDuration", "Context=%{signpost.telemetry:string2}lu ", &time1, 0xCu);
      }
    }

    v11 = v7;
    v12 = os_signpost_id_make_with_pointer(v11, self);
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v13 = v12;
      if (os_signpost_enabled(v11))
      {
        v14 = [(PXStoryMusicPlayer *)self logContext];
        time1 = *a3;
        v15 = PXStoryTimeDescription(&time1);
        LODWORD(time1.value) = 134218242;
        *(&time1.value + 4) = v14;
        LOWORD(time1.flags) = 2114;
        *(&time1.flags + 2) = v15;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, OS_SIGNPOST_EVENT, v13, "PXStoryMusicPlayer.targetDuration", "Context=%{signpost.telemetry:string2}lu %{public}@", &time1, 0x16u);
      }
    }

    v16 = v11;
    v17 = os_signpost_id_make_with_pointer(v16, self);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v18 = v17;
      if (os_signpost_enabled(v16))
      {
        v19 = [(PXStoryMusicPlayer *)self logContext];
        time1 = *a3;
        v20 = PXStoryTimeDescription(&time1);
        LODWORD(time1.value) = 134218242;
        *(&time1.value + 4) = v19;
        LOWORD(time1.flags) = 2114;
        *(&time1.flags + 2) = v20;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v18, "PXStoryMusicPlayer.targetDuration", "Context=%{signpost.telemetry:string2}lu %{public}@", &time1, 0x16u);
      }
    }

    [(PXStoryMusicPlayer *)self _invalidateCurrentSongResource];
  }
}

- (void)setCurrentAudioAsset:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_currentAudioAsset != v5)
  {
    v8 = v5;
    v7 = [(PXAudioAsset *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_currentAudioAsset, a3);
      [(PXStoryMusicPlayer *)self _invalidatePlayerCurrentAsset];
      [(PXStoryMusicPlayer *)self _invalidateCueSource];
      [(PXStoryMusicPlayer *)self _invalidatePlayerVolume];
      v6 = v8;
    }
  }
}

- (void)setCurrentSongResource:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_currentSongResource, a3);
  v6 = [(PXStoryMusicPlayer *)self log];
  v7 = os_signpost_id_make_with_pointer(v6, self);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v6))
    {
      v17 = 134217984;
      v18 = [(PXStoryMusicPlayer *)self logContext];
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_END, v8, "PXStoryMusicPlayer.currentSongResource", "Context=%{signpost.telemetry:string2}lu ", &v17, 0xCu);
    }
  }

  v9 = v6;
  v10 = os_signpost_id_make_with_pointer(v9, self);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      v12 = [(PXStoryMusicPlayer *)self logContext];
      v17 = 134218242;
      v18 = v12;
      v19 = 2114;
      v20 = v5;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v9, OS_SIGNPOST_EVENT, v11, "PXStoryMusicPlayer.currentSongResource", "Context=%{signpost.telemetry:string2}lu %{public}@", &v17, 0x16u);
    }
  }

  v13 = v9;
  v14 = os_signpost_id_make_with_pointer(v13, self);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v15 = v14;
    if (os_signpost_enabled(v13))
    {
      v16 = [(PXStoryMusicPlayer *)self logContext];
      v17 = 134218242;
      v18 = v16;
      v19 = 2114;
      v20 = v5;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PXStoryMusicPlayer.currentSongResource", "Context=%{signpost.telemetry:string2}lu %{public}@", &v17, 0x16u);
    }
  }

  [(PXStoryMusicPlayer *)self setCuesVersion:[(PXStoryMusicPlayer *)self cuesVersion]+ 1];
  [(PXStoryMusicPlayer *)self _invalidateCurrentAudioAsset];
  [(PXStoryMusicPlayer *)self _invalidateReadinessStatus];
  [(PXStoryMusicPlayer *)self _invalidateDesiredPlayState];
}

- (void)setReadinessStatus:(int64_t)a3
{
  v40 = *MEMORY[0x1E69E9840];
  readinessStatus = self->_readinessStatus;
  if (readinessStatus == a3)
  {
    return;
  }

  if (a3 == 1)
  {
    [(PXStoryMusicPlayer *)self setBufferingEvents:[(PXStoryMusicPlayer *)self bufferingEvents]+ 1];
    v6 = [(PXStoryMusicPlayer *)self log];
    v7 = os_signpost_id_make_with_pointer(v6, self);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = v7;
      if (os_signpost_enabled(v6))
      {
        v9 = [(PXStoryMusicPlayer *)self logContext];
        v10 = [(PXStoryMusicPlayer *)self currentSongResource];
        *buf = 134218242;
        v33 = v9;
        v34 = 2112;
        v35 = v10;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PXStoryMusicPlayer.Buffering", "Context=%{signpost.telemetry:string2}lu %@", buf, 0x16u);
      }
    }
  }

  else
  {
    if (a3 != 3 || readinessStatus != 1)
    {
      goto LABEL_12;
    }

    v6 = [(PXStoryMusicPlayer *)self log];
    v11 = os_signpost_id_make_with_pointer(v6, self);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v6))
      {
        v31 = [(PXStoryMusicPlayer *)self logContext];
        v13 = +[PXNetworkStatusMonitor sharedInstance];
        v14 = [v13 bestAvailableNetworkType];
        v15 = [(PXStoryMusicPlayer *)self bufferingEvents];
        v16 = [(PXStoryMusicPlayer *)self currentSongResource];
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 134218754;
        v33 = v31;
        v34 = 2050;
        v35 = v14;
        v36 = 2050;
        v37 = v15;
        v38 = 2114;
        v39 = v18;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_END, v12, "PXStoryMusicPlayer.Buffering", "Context=%{signpost.telemetry:string2}lu  enableTelemetry=YES networkType=%{signpost.telemetry:number1,public}lu bufferingEvents=%{signpost.telemetry:number2,public}lu assetType=%{signpost.telemetry:string1,public}@ ", buf, 0x2Au);
      }
    }
  }

LABEL_12:
  self->_readinessStatus = a3;
  [(PXStoryMusicPlayer *)self signalChange:2];
  v19 = [(PXStoryMusicPlayer *)self log];
  v20 = os_signpost_id_make_with_pointer(v19, self);
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v21 = v20;
    if (os_signpost_enabled(v19))
    {
      v22 = [(PXStoryMusicPlayer *)self logContext];
      *buf = 134217984;
      v33 = v22;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v19, OS_SIGNPOST_INTERVAL_END, v21, "PXStoryMusicPlayerChangedReadinessStatus", "Context=%{signpost.telemetry:string2}lu ", buf, 0xCu);
    }
  }

  v23 = v19;
  v24 = os_signpost_id_make_with_pointer(v23, self);
  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v25 = v24;
    if (os_signpost_enabled(v23))
    {
      v26 = [(PXStoryMusicPlayer *)self logContext];
      *buf = 134218240;
      v33 = v26;
      v34 = 2048;
      v35 = a3;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v23, OS_SIGNPOST_EVENT, v25, "PXStoryMusicPlayerChangedReadinessStatus", "Context=%{signpost.telemetry:string2}lu %ld", buf, 0x16u);
    }
  }

  v27 = v23;
  v28 = os_signpost_id_make_with_pointer(v27, self);
  if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v29 = v28;
    if (os_signpost_enabled(v27))
    {
      v30 = [(PXStoryMusicPlayer *)self logContext];
      *buf = 134218240;
      v33 = v30;
      v34 = 2048;
      v35 = a3;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v29, "PXStoryMusicPlayerChangedReadinessStatus", "Context=%{signpost.telemetry:string2}lu %ld", buf, 0x16u);
    }
  }

  [(PXStoryMusicPlayer *)self _invalidateModelProperties];
}

- (void)setIsActive:(BOOL)a3
{
  if (self->_isActive != a3)
  {
    self->_isActive = a3;
    [(PXStoryMusicPlayer *)self signalChange:1];
    [(PXStoryMusicPlayer *)self _invalidateDesiredPlayState];

    [(PXStoryMusicPlayer *)self _invalidateCurrentAudioAsset];
  }
}

- (PXStoryMusicPlayer)initWithModel:(id)a3 targetDurationMatchesTimeline:(BOOL)a4
{
  v7 = a3;
  v46.receiver = self;
  v46.super_class = PXStoryMusicPlayer;
  v8 = [(PXStoryMusicPlayer *)&v46 init];
  v9 = v8;
  if (v8)
  {
    [(PXStoryMusicPlayer *)v8 copyLogConfigurationFrom:v7];
    v9->_targetDurationMatchesTimeline = a4;
    objc_storeStrong(&v9->_model, a3);
    [(PXStoryModel *)v9->_model registerChangeObserver:v9 context:ModelContext_224793];
    model = v9->_model;
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __66__PXStoryMusicPlayer_initWithModel_targetDurationMatchesTimeline___block_invoke;
    v44[3] = &unk_1E77485B0;
    v11 = v9;
    v45 = v11;
    [(PXStoryModel *)model performChanges:v44];
    v12 = [(PXStoryModel *)v9->_model styleManager];
    [v12 registerChangeObserver:v11 context:StyleManagerContext_224792];

    v13 = [PXAudioPlayer alloc];
    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 initWithFormat:@"%@; %@", v16, v9->_model];
    v18 = [(PXAudioPlayer *)v13 initWithName:v17];
    v19 = v11[17];
    v11[17] = v18;

    [v11[17] copyLogConfigurationFrom:v11];
    [v11[17] registerChangeObserver:v11 context:PlayerContext];
    v20 = v11[17];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __66__PXStoryMusicPlayer_initWithModel_targetDurationMatchesTimeline___block_invoke_2;
    v42[3] = &unk_1E7747890;
    v21 = v11;
    v43 = v21;
    [v20 performChanges:v42];
    v22 = [(PXStoryModel *)v9->_model storyQueue];
    v23 = v21[14];
    v21[14] = v22;

    v24 = [[off_1E7721940 alloc] initWithTarget:v21];
    v25 = v21[18];
    v21[18] = v24;

    [v21[18] addUpdateSelector:sel__updateTargetDuration needsUpdate:1];
    [v21[18] addUpdateSelector:sel__updateCurrentSongResource needsUpdate:1];
    [v21[18] addUpdateSelector:sel__updateCurrentAudioAsset];
    [v21[18] addUpdateSelector:sel__updateCueSource];
    [v21[18] addUpdateSelector:sel__updateTouchingBeganDate];
    [v21[18] addUpdateSelector:sel__updateDucked];
    [v21[18] addUpdateSelector:sel__updateDuckingVolumeAnimator needsUpdate:1];
    [v21[18] addUpdateSelector:sel__updateFocusVolumeAnimator needsUpdate:1];
    [v21[18] addUpdateSelector:sel__updateFadeOutVolumeAnimator];
    [v21[18] addUpdateSelector:sel__updateViewControllerTransitionVolumeAnimator];
    [v21[18] addUpdateSelector:sel__updatePlayerVolume needsUpdate:1];
    [v21[18] addUpdateSelector:sel__updatePlayerCurrentAsset];
    [v21[18] addUpdateSelector:sel__updateDesiredPlayState needsUpdate:1];
    [v21[18] addUpdateSelector:sel__updatePlaybackTimer];
    [v21[18] addUpdateSelector:sel__updatePlayerDesiredPlayState needsUpdate:1];
    [v21[18] addUpdateSelector:sel__updateError needsUpdate:1];
    [v21[18] addUpdateSelector:sel__updateReadinessStatus];
    [v21[18] addUpdateSelector:sel__updateModelProperties];
    [v21[18] addUpdateSelector:sel__updateFailedAudioAssets];
    v26 = objc_alloc_init(_PXDefaultAudioCueProvider);
    v27 = v21[36];
    v21[36] = v26;

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__PXStoryMusicPlayer_initWithModel_targetDurationMatchesTimeline___block_invoke_3;
    aBlock[3] = &unk_1E77478B8;
    v28 = v21;
    v41 = v28;
    v29 = _Block_copy(aBlock);
    v30 = v29[2](v29, @"ducking");
    v31 = v28[20];
    v28[20] = v30;

    v32 = v29[2](v29, @"focus");
    v33 = v28[21];
    v28[21] = v32;

    v34 = v29[2](v29, @"fadeOut");
    v35 = v28[22];
    v28[22] = v34;

    v36 = v29[2](v29, @"viewControllerTransition");
    v37 = v28[23];
    v28[23] = v36;

    v38 = +[PXStorySettings sharedInstance];
    [v38 addDeferredKeyObserver:v28];
  }

  return v9;
}

void __66__PXStoryMusicPlayer_initWithModel_targetDurationMatchesTimeline___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = +[PXStorySettings sharedInstance];
  [v3 musicTargetLoudnessLKFS];
  [v4 setTargetLoudnessInLKFS:?];

  [v4 setAudioSessionDelegate:*(a1 + 32)];
}

id __66__PXStoryMusicPlayer_initWithModel_targetDurationMatchesTimeline___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[off_1E77217D0 alloc] initWithValue:1.0];
  [v4 registerChangeObserver:*(a1 + 32) context:VolumeAnimatorContext];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v6 stringByAppendingFormat:@"-%@", v3];

  [v4 setLabel:v7];

  return v4;
}

- (PXStoryMusicPlayer)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryMusicPlayer.m" lineNumber:87 description:{@"%s is not available as initializer", "-[PXStoryMusicPlayer init]"}];

  abort();
}

@end