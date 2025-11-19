@interface PUTrimToolController
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_currentPlayerScaledTimeFromOriginalTime:(SEL)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_frameDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_originalTimeFromCurrentPlayerScaledTime:(SEL)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)adjustedStillFrameTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentStillFrameTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)playheadTime;
- (BOOL)_allowsKeyFrameCreation;
- (BOOL)_showKeyFrameSelection;
- (BOOL)slowMotionEditorRequestForceZoom:(id)a3;
- (CGRect)_presentationRectFromLoupeRect;
- (PULivePhotoKeyFrameSelectionViewController)livePhotoKeyFramePicker;
- (PUTrimToolController)initWithPlayerWrapper:(id)a3 playButtonEnabled:(BOOL)a4 slomoEnabled:(BOOL)a5 portraitVideoEnabled:(BOOL)a6;
- (PUTrimToolControllerDelegate)delegate;
- (UIButton)playPauseButton;
- (double)_frameRate;
- (id)_slomoMapperForCurrentConfiguration;
- (id)axDescriptionForFocusEventATime:(id *)a3;
- (void)_createRendererIfNeeded;
- (void)_didCompleteInteractiveEditForElement:(int64_t)a3 atTime:(id *)a4 state:(unint64_t)a5;
- (void)_dismissKeyFramePickerAndResetToStillFrame;
- (void)_handlePlayPauseButton:(id)a3;
- (void)_handleScrubberTimelineOverlayButton:(id)a3;
- (void)_hideScrubberTimelineOverlay;
- (void)_livePhotoKeyFramePickerDidDismiss:(id)a3;
- (void)_resetScrubberToStillPhotoFrame;
- (void)_seekToTimeForElement:(int64_t)a3 exact:(BOOL)a4 forceSeek:(BOOL)a5;
- (void)_setPosterFrameTime:(id *)a3 onCompositionController:(id)a4;
- (void)_setState:(unint64_t)a3;
- (void)_updateCompositionController;
- (void)_updateDebugPlayerTimeLabel;
- (void)_updateDebugPlayheadStyleLabel;
- (void)_updateDebugTimeCodeLabel;
- (void)_updateDebugTrimToolStateLabel;
- (void)_updatePlayPauseButton;
- (void)_updatePlayerWrapperTimeObserver;
- (void)_updatePlayerWrapperTrim;
- (void)_updatePlayheadStyle;
- (void)_updatePublicState;
- (void)_updateScrubberContents;
- (void)_updateScrubberFocusEventTimes;
- (void)_updateScrubberPresentedPlayhead;
- (void)_updateScrubberTimelineOverlayButtonOffset;
- (void)_updateScrubberTimes;
- (void)_updateSlomoViewAnimated:(BOOL)a3;
- (void)_updateSnapStripController;
- (void)_updateSnappingDots;
- (void)_updateTimeCodeOverlay;
- (void)_updateVideo;
- (void)compositionControllerDidChangeForAdjustments:(id)a3;
- (void)didUpdateFocusEventsWithTimes:(id)a3;
- (void)enableFocusTimeline:(BOOL)a3;
- (void)focusTimeline:(id)a3 presentAction:(id)a4 locationInTimeline:(CGPoint)a5;
- (void)focusTimeline:(id)a3 updateTrackingProgressShouldStop:(BOOL *)a4;
- (void)livePhotoRenderDidChange:(BOOL)a3;
- (void)objectTrackingStartedAtTime:(id *)a3;
- (void)pause;
- (void)play;
- (void)playerStatusChangedForPlayerWrapper:(id)a3;
- (void)popoverPresentationControllerDidDismissPopover:(id)a3;
- (void)releaseAVObjects;
- (void)setAdjustedStillFrameTime:(id *)a3;
- (void)setCachedFrameDuration:(id *)a3;
- (void)setCompositionController:(id)a3;
- (void)setDebugPlayerTime:(id *)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setEditSource:(id)a3;
- (void)setInternalState:(unint64_t)a3;
- (void)setLayoutOrientation:(int64_t)a3;
- (void)setOriginalEndTime:(id *)a3;
- (void)setOriginalStartTime:(id *)a3;
- (void)setPlaceholderImage:(id)a3;
- (void)setPlayheadStyle:(unint64_t)a3;
- (void)setPlayheadTime:(id *)a3 forceSeek:(BOOL)a4;
- (void)setSlomoEnabled:(BOOL)a3;
- (void)setSuggestedKeyFrameTime:(id *)a3;
- (void)setUnadjustedAssetDuration:(id *)a3;
- (void)setUnadjustedStillImageTime:(id *)a3;
- (void)showFocusTimeline:(BOOL)a3;
- (void)slowMotionEditorDidBeginEditing:(id)a3 withStartHandle:(BOOL)a4;
- (void)slowMotionEditorDidEndEditing:(id)a3;
- (void)slowMotionEditorEndValueChanged:(id)a3;
- (void)slowMotionEditorStartValueChanged:(id)a3;
- (void)stepByCount:(int64_t)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
- (void)trimScrubber:(id)a3 debugEndOffset:(CGRect)a4;
- (void)trimScrubber:(id)a3 debugEndRect:(CGRect)a4;
- (void)trimScrubber:(id)a3 debugStartOffset:(CGRect)a4;
- (void)trimScrubber:(id)a3 debugStartRect:(CGRect)a4;
- (void)trimScrubber:(id)a3 didBeginInteractivelyEditingElement:(int64_t)a4;
- (void)trimScrubber:(id)a3 didChangeTimeForElement:(int64_t)a4;
- (void)trimScrubber:(id)a3 didEndInteractivelyEditingElement:(int64_t)a4 successful:(BOOL)a5;
- (void)trimScrubber:(id)a3 didTapElement:(int64_t)a4;
- (void)trimScrubber:(id)a3 didTapTimelineAtTime:(id *)a4;
- (void)trimScrubber:(id)a3 didZoomToMinimumValue:(double)a4 maximumValue:(double)a5;
- (void)trimScrubberAssetDurationDidChange:(id)a3;
- (void)trimScrubberDidLayoutSubviews:(id)a3;
- (void)trimScrubberDidUnzoom:(id)a3;
- (void)trimScrubberPausePlayer:(id)a3;
- (void)updateFocusTimelineWithEvent:(id *)a3 userInitiated:(BOOL)a4 shouldAnimate:(BOOL)a5;
- (void)updateFocusTimelineWithTimeRange:(id *)a3;
- (void)updateLivePortraitForKeyFrameChange:(id)a3;
- (void)updateObjectTrackingProgressAtTime:(id *)a3 shouldStop:(BOOL *)a4;
- (void)userDidRequestToMakeKeyPhoto:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PUTrimToolController

- (void)setUnadjustedAssetDuration:(id *)a3
{
  var3 = a3->var3;
  *&self->_unadjustedAssetDuration.value = *&a3->var0;
  self->_unadjustedAssetDuration.epoch = var3;
}

- (void)setCachedFrameDuration:(id *)a3
{
  var3 = a3->var3;
  *&self->_cachedFrameDuration.value = *&a3->var0;
  self->_cachedFrameDuration.epoch = var3;
}

- (PULivePhotoKeyFrameSelectionViewController)livePhotoKeyFramePicker
{
  WeakRetained = objc_loadWeakRetained(&self->_livePhotoKeyFramePicker);

  return WeakRetained;
}

- (void)setSuggestedKeyFrameTime:(id *)a3
{
  var3 = a3->var3;
  *&self->_suggestedKeyFrameTime.value = *&a3->var0;
  self->_suggestedKeyFrameTime.epoch = var3;
}

- (PUTrimToolControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)axDescriptionForFocusEventATime:(id *)a3
{
  v4 = [(PUTrimToolController *)self delegate];
  v7 = *a3;
  v5 = [v4 axDescriptionForFocusDecisionAtTime:&v7];

  return v5;
}

- (void)focusTimeline:(id)a3 updateTrackingProgressShouldStop:(BOOL *)a4
{
  if (self->_objectTrackingShouldStop)
  {
    *a4 = 1;
  }
}

- (void)focusTimeline:(id)a3 presentAction:(id)a4 locationInTimeline:(CGPoint)a5
{
  v7 = a4;
  v8 = [(PUTrimToolController *)self playerWrapper];
  [v8 pause];

  v9 = [(PUTrimToolController *)self playerWrapper];
  if (v7)
  {
    [v7 time];
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  [v9 seekToTime:v19];

  if ([v7 kind] == 2)
  {
    [(PUTrimToolController *)self _hideScrubberTimelineOverlay];
  }

  else
  {
    objc_storeStrong(&self->_focusTimelineAction, a4);
    self->_objectTrackingShouldStop = 0;
    v10 = [v7 kind];
    v11 = @"xmark";
    if (!v10)
    {
      v11 = @"trash";
    }

    v12 = MEMORY[0x1E69DCAB8];
    v13 = MEMORY[0x1E69DCAD8];
    v14 = v11;
    v15 = [v13 configurationWithScale:1];
    v16 = [v12 systemImageNamed:v14 withConfiguration:v15];

    [(UIButton *)self->_trimScrubberTimelineOverlayButton setImage:v16 forState:0];
    [(PUTrimToolController *)self _updateScrubberTimelineOverlayButtonOffset];
    [(PXLivePhotoTrimScrubber *)self->_trimScrubber setPlayheadStyle:0];
    [(UIView *)self->_trimScrubberTimelineOverlayView setHidden:0];
    v17 = [(PUTrimToolController *)self playPauseButton];
    [v17 setEnabled:0];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __71__PUTrimToolController_focusTimeline_presentAction_locationInTimeline___block_invoke;
    v18[3] = &unk_1E7B80DD0;
    v18[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v18 animations:0.2];
  }
}

- (void)_hideScrubberTimelineOverlay
{
  if (![(UIView *)self->_trimScrubberTimelineOverlayView isHidden])
  {
    focusTimelineAction = self->_focusTimelineAction;
    self->_focusTimelineAction = 0;

    v4 = [(PUTrimToolController *)self playPauseButton];
    [v4 setEnabled:1];

    [(PUTrimToolController *)self _updateScrubberPresentedPlayhead];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __52__PUTrimToolController__hideScrubberTimelineOverlay__block_invoke;
    v5[3] = &unk_1E7B80DD0;
    v5[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:0.2];
  }
}

uint64_t __52__PUTrimToolController__hideScrubberTimelineOverlay__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1320) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 1320);

  return [v2 setHidden:1];
}

- (void)_updateScrubberTimelineOverlayButtonOffset
{
  if ([(PUTrimToolController *)self isPortraitVideo]&& self->_focusTimelineAction)
  {
    v3 = [(PXLivePhotoTrimScrubber *)self->_trimScrubber useMiniScrubber];
    [(PUTrimToolController *)self scrubberHeight];
    v5 = -4.0;
    if (v3)
    {
      v5 = -1.0;
    }

    v6 = v4 + v5 * 2.0;
    [(PXLivePhotoTrimScrubber *)self->_trimScrubber frame];
    MidY = CGRectGetMidY(v13);
    trimScrubber = self->_trimScrubber;
    focusTimelineAction = self->_focusTimelineAction;
    if (focusTimelineAction)
    {
      [(PXFocusTimelineAction *)focusTimelineAction time];
    }

    else
    {
      memset(v12, 0, sizeof(v12));
    }

    [(PXLivePhotoTrimScrubber *)trimScrubber offsetForTime:v12];
    [(UIButton *)self->_trimScrubberTimelineOverlayButton setFrame:v10 - v6 * 0.5, MidY - v6 * 0.5, v6, v6];
    v11 = [(UIButton *)self->_trimScrubberTimelineOverlayButton layer];
    [v11 setCornerRadius:v6 * 0.5];
  }
}

- (void)_handleScrubberTimelineOverlayButton:(id)a3
{
  focusTimelineAction = self->_focusTimelineAction;
  if (focusTimelineAction)
  {
    v5 = [(PXFocusTimelineAction *)focusTimelineAction kind];
    if (v5 == 1)
    {
      self->_objectTrackingShouldStop = 1;
    }

    else if (!v5)
    {
      v6 = [(PUTrimToolController *)self delegate];
      v7 = self->_focusTimelineAction;
      if (v7)
      {
        [(PXFocusTimelineAction *)v7 time];
      }

      else
      {
        memset(v8, 0, sizeof(v8));
      }

      [v6 removeFocusDecisionAtTime:v8];
    }

    [(PUTrimToolController *)self _hideScrubberTimelineOverlay];
  }
}

- (BOOL)slowMotionEditorRequestForceZoom:(id)a3
{
  v4 = [(PUTrimToolController *)self slomoDraggingStartHandle];
  slomoView = self->_slomoView;
  if (v4)
  {
    [(PXSlowMotionEditor *)slomoView startValue];
  }

  else
  {
    [(PXSlowMotionEditor *)slomoView endValue];
  }

  trimScrubber = self->_trimScrubber;
  CMTimeMakeWithSeconds(&v9, v6, [MEMORY[0x1E69C0890] preferredTimeScale]);
  return [(PXLivePhotoTrimScrubber *)trimScrubber tryZoomAtTime:&v9];
}

- (void)slowMotionEditorEndValueChanged:(id)a3
{
  [(PXSlowMotionEditor *)self->_slomoView endValue];
  CMTimeMakeWithSeconds(&v8, v4, [MEMORY[0x1E69C0890] preferredTimeScale]);
  v7 = v8;
  [(PUTrimToolController *)self setPlayheadTime:&v7];
  v5 = MEMORY[0x1E696AD98];
  [(PXSlowMotionEditor *)self->_slomoView endValue];
  v6 = [v5 numberWithDouble:?];
  [(PUTrimToolController *)self setSlomoTimeForPlayheadUpdate:v6];

  [(PUTrimToolController *)self _updateTimeCodeOverlay];
}

- (void)slowMotionEditorStartValueChanged:(id)a3
{
  [(PXSlowMotionEditor *)self->_slomoView startValue];
  CMTimeMakeWithSeconds(&v8, v4, [MEMORY[0x1E69C0890] preferredTimeScale]);
  v7 = v8;
  [(PUTrimToolController *)self setPlayheadTime:&v7];
  v5 = MEMORY[0x1E696AD98];
  [(PXSlowMotionEditor *)self->_slomoView startValue];
  v6 = [v5 numberWithDouble:?];
  [(PUTrimToolController *)self setSlomoTimeForPlayheadUpdate:v6];

  [(PUTrimToolController *)self _updateTimeCodeOverlay];
}

- (void)slowMotionEditorDidEndEditing:(id)a3
{
  [(PUTrimToolController *)self setInternalState:0];
  v4 = [(PUTrimToolController *)self compositionController];
  v5 = *MEMORY[0x1E69BE160];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__PUTrimToolController_slowMotionEditorDidEndEditing___block_invoke;
  v8[3] = &unk_1E7B7F748;
  v8[4] = self;
  [v4 modifyAdjustmentWithKey:v5 modificationBlock:v8];

  [(PUTrimToolController *)self _updateCompositionController];
  [(PUTrimToolController *)self _updateDebugTimeCodeLabel];
  PLSAggregateDictionaryAddValueForScalarKey();
  v6 = [(PUTrimToolController *)self delegate];
  v7 = PULocalizedString(@"PHOTOEDIT_SLOMO_ACTION_TITLE");
  [v6 didModifyAdjustmentWithLocalizedName:v7];
}

void __54__PUTrimToolController_slowMotionEditorDidEndEditing___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1000);
  v4 = a2;
  [v3 startValue];
  CMTimeMakeWithSeconds(&v9, v5, [MEMORY[0x1E69C0890] preferredTimeScale]);
  v8 = v9;
  [v4 setStartTime:&v8];
  [*(*(a1 + 32) + 1000) endValue];
  CMTimeMakeWithSeconds(&v7, v6, [MEMORY[0x1E69C0890] preferredTimeScale]);
  v8 = v7;
  [v4 setEndTime:&v8];
}

- (void)slowMotionEditorDidBeginEditing:(id)a3 withStartHandle:(BOOL)a4
{
  v4 = a4;
  v6 = [(PUTrimToolController *)self delegate];
  [v6 willModifyAdjustment];

  [(PUTrimToolController *)self setInternalState:3];
  [(PXLivePhotoTrimScrubber *)self->_trimScrubber setPlayheadStyle:0];
  [(PUTrimToolController *)self setSlomoDraggingStartHandle:v4];
  [(PUTrimToolController *)self _updateTimeCodeOverlay];

  [(PUTrimToolController *)self _dismissKeyFramePickerAndResetToStillFrame];
}

- (void)updateLivePortraitForKeyFrameChange:(id)a3
{
  v6 = a3;
  v4 = [(PUTrimToolController *)self delegate];
  v5 = [v4 livePortraitBehaviorController];

  if (v5)
  {
    [v5 applySideEffectsForAction:5 compositionController:v6];
  }
}

- (void)userDidRequestToMakeKeyPhoto:(id)a3
{
  v4 = a3;
  v5 = [(PUTrimToolController *)self livePhotoKeyFramePicker];

  if (v5 == v4)
  {
    v6 = [(PUTrimToolController *)self delegate];
    [v6 willModifyAdjustment];

    trimScrubber = self->_trimScrubber;
    if (trimScrubber)
    {
      [(PXLivePhotoTrimScrubber *)trimScrubber keyTime];
    }

    else
    {
      memset(&v20, 0, sizeof(v20));
    }

    time1 = v20;
    [(PUTrimToolController *)self setAdjustedStillFrameTime:&time1];
    [(PUTrimToolController *)self _updateCompositionController];
    v8 = [(PUTrimToolController *)self compositionController];
    [(PUTrimToolController *)self updateLivePortraitForKeyFrameChange:v8];

    [(PUTrimToolController *)self _updateScrubberTimes];
    v9 = [(PUTrimToolController *)self delegate];
    v10 = PULocalizedString(@"PHOTOEDIT_MAKE_KEY_FRAME_ACTION_TITLE");
    [v9 didModifyAdjustmentWithLocalizedName:v10];

    v11 = self->_trimScrubber;
    if (v11)
    {
      [(PXLivePhotoTrimScrubber *)v11 keyTime];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    [(PUTrimToolController *)self unadjustedStillImageTime];
    v12 = CMTimeCompare(&time1, &time2);
    v13 = [(PUTrimToolController *)self delegate];
    v14 = v13;
    if (v12)
    {
      [v13 removeCropToolGainMap];
    }

    else
    {
      [v13 addCropToolGainMapIfNeeded];
    }

    objc_initWeak(&time1, self);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__PUTrimToolController_userDidRequestToMakeKeyPhoto___block_invoke;
    v15[3] = &unk_1E7B80610;
    objc_copyWeak(&v17, &time1);
    v16 = v4;
    [v16 dismissViewControllerAnimated:1 completion:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&time1);
  }
}

void __53__PUTrimToolController_userDidRequestToMakeKeyPhoto___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _livePhotoKeyFramePickerDidDismiss:*(a1 + 32)];
}

- (void)popoverPresentationControllerDidDismissPopover:(id)a3
{
  v4 = [a3 presentedViewController];
  v5 = [(PUTrimToolController *)self livePhotoKeyFramePicker];

  if (v4 == v5)
  {
    v6 = [(PUTrimToolController *)self livePhotoKeyFramePicker];
    [(PUTrimToolController *)self _livePhotoKeyFramePickerDidDismiss:v6];
  }
}

uint64_t __50__PUTrimToolController_playerWrapper_timeChanged___block_invoke(uint64_t a1)
{
  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  if (![*(*(a1 + 32) + 992) currentlyInteractingElement])
  {
    v7 = 0uLL;
    v8 = 0;
    v2 = *(a1 + 32);
    v5 = v9;
    v6 = v10;
    [v2 _originalTimeFromCurrentPlayerScaledTime:&v5];
    v3 = *(*(a1 + 32) + 992);
    v5 = v7;
    v6 = v8;
    [v3 setKeyTime:&v5];
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  return [*(a1 + 32) setDebugPlayerTime:&v7];
}

- (void)playerStatusChangedForPlayerWrapper:(id)a3
{
  v4 = a3;
  v3 = v4;
  px_dispatch_on_main_queue();
}

uint64_t __60__PUTrimToolController_playerStatusChangedForPlayerWrapper___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) state] != 2)
  {
    [*(a1 + 32) setInternalState:{objc_msgSend(*(a1 + 40), "isPlaying")}];
  }

  v2 = *(a1 + 32);

  return [v2 _updatePlayPauseButton];
}

void __61__PUTrimToolController_compositionDidUpdateForPlayerWrapper___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[1009] & 1) == 0)
  {
    v3 = [v2 currentVideoAsset];

    if (v3)
    {
      return;
    }

    v2 = *(a1 + 32);
  }

  v2[1009] = 0;
  v4 = *(*(a1 + 32) + 1048);

  [v4 update];
}

- (id)_slomoMapperForCurrentConfiguration
{
  v3 = [(PUTrimToolController *)self compositionController];
  v4 = [v3 slomoAdjustmentController];

  memset(&v22, 0, sizeof(v22));
  if (v4)
  {
    [v4 startTime];
    [v4 endTime];
  }

  else
  {
    memset(&start, 0, 24);
    memset(&end, 0, 24);
  }

  CMTimeRangeFromTimeToTime(&v22, &start.start, &end.start);
  v20 = 0uLL;
  v21 = 0;
  v5 = [(PUTrimToolController *)self currentVideoAsset];
  v6 = v5;
  if (v5)
  {
    [v5 duration];
  }

  else
  {
    v20 = 0uLL;
    v21 = 0;
  }

  v7 = [(PUTrimToolController *)self compositionController];
  v8 = [v7 trimAdjustmentController];

  if (v8)
  {
    v18 = 0uLL;
    v19 = 0;
    [v8 startTime];
    *&end.start.value = *&v22.start.value;
    end.start.epoch = v22.start.epoch;
    *&v15.start.value = v18;
    v15.start.epoch = v19;
    CMTimeSubtract(&start.start, &end.start, &v15.start);
    *&v22.start.value = *&start.start.value;
    v22.start.epoch = start.start.epoch;
    *&start.start.value = *MEMORY[0x1E6960CC0];
    start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
    *&v15.start.value = *MEMORY[0x1E6960C88];
    v15.start.epoch = *(MEMORY[0x1E6960C88] + 16);
    CMTimeRangeMake(&end, &start.start, &v15.start);
    v15 = v22;
    CMTimeRangeGetIntersection(&start, &v15, &end);
    v22 = start;
  }

  v9 = MEMORY[0x1E69C0890];
  *&start.start.value = v20;
  start.start.epoch = v21;
  Seconds = CMTimeGetSeconds(&start.start);
  [v4 rate];
  *&v12 = v11;
  start = v22;
  v13 = [v9 timeRangeMapperForSourceDuration:&start slowMotionRate:1 slowMotionTimeRange:Seconds forExport:v12];

  return v13;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_originalTimeFromCurrentPlayerScaledTime:(SEL)a3
{
  *retstr = *a4;
  result = [(PUTrimToolController *)self isSlomoEnabled];
  if (result && (a4->var2 & 0x1D) == 1)
  {
    v8 = [(PUTrimToolController *)self compositionController];
    v9 = [v8 trimAdjustmentController];

    if (v9)
    {
      [v9 startTime];
      v13 = *a4;
      CMTimeSubtract(&time, &v13, &rhs);
      *a4 = time;
    }

    v10 = [(PUTrimToolController *)self _slomoMapperForCurrentConfiguration];
    if (v10)
    {
      time = *a4;
      Seconds = CMTimeGetSeconds(&time);
      *&Seconds = Seconds;
      [v10 originalTimeForScaledTime:Seconds];
      CMTimeMakeWithSeconds(retstr, v12, [MEMORY[0x1E69C0890] preferredTimeScale]);
    }

    if (v9)
    {
      [v9 startTime];
      v13 = *retstr;
      CMTimeAdd(&time, &v13, &rhs);
      *retstr = time;
    }
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_currentPlayerScaledTimeFromOriginalTime:(SEL)a3
{
  *retstr = *a4;
  result = [(PUTrimToolController *)self isSlomoEnabled];
  if (result && (a4->var2 & 0x1D) == 1)
  {
    v8 = [(PUTrimToolController *)self compositionController];
    v9 = [v8 trimAdjustmentController];

    if (v9)
    {
      [v9 startTime];
      v13 = *a4;
      CMTimeSubtract(&time, &v13, &rhs);
      *a4 = time;
    }

    v10 = [(PUTrimToolController *)self _slomoMapperForCurrentConfiguration];
    if (v10)
    {
      time = *a4;
      Seconds = CMTimeGetSeconds(&time);
      *&Seconds = Seconds;
      [v10 scaledTimeForOriginalTime:Seconds];
      CMTimeMakeWithSeconds(retstr, v12, [MEMORY[0x1E69C0890] preferredTimeScale]);
    }

    if (v9)
    {
      [v9 startTime];
      v13 = *retstr;
      CMTimeAdd(&time, &v13, &rhs);
      *retstr = time;
    }
  }

  return result;
}

- (void)stepByCount:(int64_t)a3
{
  v5 = [(PUTrimToolController *)self playerWrapper];
  [(PUTrimToolController *)self playheadTime];
  [v5 stepByCount:a3 playheadTime:v10];
  v6 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__PUTrimToolController_stepByCount___block_invoke;
  block[3] = &unk_1E7B80C38;
  block[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_after(v6, MEMORY[0x1E69E96A0], block);
}

uint64_t __36__PUTrimToolController_stepByCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    [*(a1 + 40) currentTime];
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  return [v1 playerWrapper:v2 timeChanged:v4];
}

- (void)pause
{
  v2 = [(PUTrimToolController *)self playerWrapper];
  [v2 pause];
}

- (void)play
{
  v2 = [(PUTrimToolController *)self playerWrapper];
  [v2 play];
}

- (void)_handlePlayPauseButton:(id)a3
{
  v3 = [(PUTrimToolController *)self playerWrapper];
  if ([v3 isPlaying])
  {
    [v3 pause];
  }

  else
  {
    [v3 play];
  }
}

- (void)_updatePlayPauseButton
{
  v7 = [(PUTrimToolController *)self _playPauseButtonIfLoaded];
  if (v7)
  {
    v3 = [(PUTrimToolController *)self playerWrapper];
    if ([v3 isReadyToPlay])
    {
      [v7 setEnabled:1];
      if ([v3 isPlaying])
      {
        v4 = @"PUVideoEditPauseButton";
      }

      else
      {
        v4 = @"PUVideoEditPlayButton";
      }

      v5 = [MEMORY[0x1E69DCAB8] pu_PhotosUIImageNamed:v4];
      v6 = [v5 imageWithRenderingMode:2];

      [v7 setImage:v6 forState:0];
    }

    else
    {
      [v7 setEnabled:0];
    }
  }
}

- (void)_livePhotoKeyFramePickerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = [(PUTrimToolController *)self livePhotoKeyFramePicker];

  if (v5 == v4)
  {
    [(PUTrimToolController *)self setInternalState:0];
    [(PUTrimToolController *)self setLivePhotoKeyFramePicker:0];
    if ([(PXLivePhotoTrimScrubber *)self->_trimScrubber currentlyInteractingElement]!= 3)
    {
      v6 = [(PUTrimToolController *)self currentEditSource];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        [(PUTrimToolController *)self _resetScrubberToStillPhotoFrame];
      }
    }

    v8 = [(PUTrimToolController *)self snapStripController];
    [v8 updateSnapStripView];
  }
}

- (CGRect)_presentationRectFromLoupeRect
{
  [(PXLivePhotoTrimScrubber *)self->_trimScrubber loupeRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PXLivePhotoTrimScrubber *)self->_trimScrubber superview];
  [v11 convertPoint:self->_trimScrubber fromView:{v4, v6}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  v18 = v8;
  v19 = v10;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)_resetScrubberToStillPhotoFrame
{
  v3 = self->_trimScrubber;
  v17 = 0uLL;
  v18 = 0;
  [(PUTrimToolController *)self currentStillFrameTime];
  if (0 >> 96)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__PUTrimToolController__resetScrubberToStillPhotoFrame__block_invoke;
    v13[3] = &unk_1E7B7F720;
    v14 = v3;
    v15 = v17;
    v16 = v18;
    [(PXLivePhotoTrimScrubber *)v14 performAnimatedChanges:v13];
    v4 = [(PUTrimToolController *)self playerWrapper];
    v11 = *MEMORY[0x1E6960C70];
    v12 = *(MEMORY[0x1E6960C70] + 16);
    [v4 seekToTime:&v11];
  }

  v5 = [(PUTrimToolController *)self compositionController];
  v6 = [v5 trimAdjustmentController];

  v11 = 0uLL;
  v12 = 0;
  if (v6)
  {
    [v6 startTime];
    v9 = 0uLL;
    v10 = 0;
    [v6 endTime];
    if (BYTE12(v11))
    {
      v7 = v11;
      v8 = v12;
      [(PXLivePhotoTrimScrubber *)v3 setTrimStartTime:&v7];
    }
  }

  else
  {
    v9 = 0uLL;
    v10 = 0;
  }

  if (BYTE12(v9))
  {
    v7 = v9;
    v8 = v10;
    [(PXLivePhotoTrimScrubber *)v3 setTrimEndTime:&v7];
  }
}

uint64_t __55__PUTrimToolController__resetScrubberToStillPhotoFrame__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  return [*(a1 + 32) setKeyTime:&v2];
}

- (double)_frameRate
{
  [(PUTrimToolController *)self cachedFrameRate];
  v4 = v3;
  if (v3 == 0.0)
  {
    v5 = MEMORY[0x1E69C0708];
    v6 = *MEMORY[0x1E6987608];
    v7 = [(PUTrimToolController *)self currentVideoAsset];
    v8 = [v5 tracksWithMediaType:v6 forAsset:v7];
    v9 = [v8 firstObject];
    [v9 nominalFrameRate];
    v4 = v10;

    [(PUTrimToolController *)self setCachedFrameRate:v4];
  }

  return v4;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_frameDuration
{
  v13 = 0uLL;
  v14 = 0;
  result = [(PUTrimToolController *)self cachedFrameDuration];
  if (BYTE12(v13))
  {
    *&retstr->var0 = v13;
    retstr->var3 = v14;
  }

  else
  {
    v6 = MEMORY[0x1E69C0708];
    v7 = *MEMORY[0x1E6987608];
    v8 = [(PUTrimToolController *)self currentVideoAsset];
    v9 = [v6 tracksWithMediaType:v7 forAsset:v8];

    v10 = [v9 firstObject];
    *&retstr->var1 = 0;
    retstr->var3 = 0;
    retstr->var0 = 0;
    [MEMORY[0x1E69B3D40] minimumFrameDurationForAssetTrack:v10];
    v11 = *&retstr->var0;
    var3 = retstr->var3;
    [(PUTrimToolController *)self setCachedFrameDuration:&v11];
  }

  return result;
}

- (void)_updateSlomoViewAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(PUTrimToolController *)self isSlomoEnabled])
  {
    if (!self->_slomoView)
    {
      v5 = objc_alloc_init(MEMORY[0x1E69C3C20]);
      slomoView = self->_slomoView;
      self->_slomoView = v5;

      [(PXSlowMotionEditor *)self->_slomoView setClipsToBounds:1];
      [(PXSlowMotionEditor *)self->_slomoView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PXSlowMotionEditor *)self->_slomoView setDelegate:self];
      [(PXSlowMotionEditor *)self->_slomoView setRegionEditorStyle:1];
      [(PXSlowMotionEditor *)self->_slomoView setTrimHandleWidth:0.0];
      v7 = [(UIVisualEffectView *)self->_auxilaryContainerView contentView];
      [v7 addSubview:self->_slomoView];

      v8 = [(PXSlowMotionEditor *)self->_slomoView leftAnchor];
      v9 = [(UIVisualEffectView *)self->_auxilaryContainerView leftAnchor];
      v10 = 66.0;
      if (!self->_playButtonEnabled)
      {
        v10 = 24.0;
      }

      v11 = [v8 constraintEqualToAnchor:v9 constant:v10];
      [v11 setActive:1];

      v12 = [(PXSlowMotionEditor *)self->_slomoView rightAnchor];
      v13 = [(UIVisualEffectView *)self->_auxilaryContainerView rightAnchor];
      v14 = [v12 constraintEqualToAnchor:v13 constant:-18.0];
      [v14 setActive:1];

      v15 = [(PXSlowMotionEditor *)self->_slomoView centerYAnchor];
      v16 = [(UIVisualEffectView *)self->_auxilaryContainerView centerYAnchor];
      v17 = [v15 constraintEqualToAnchor:v16];
      [v17 setActive:1];
    }

    [(PUTrimToolController *)self _updateScrubberTimes];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__PUTrimToolController__updateSlomoViewAnimated___block_invoke;
  aBlock[3] = &unk_1E7B80DD0;
  aBlock[4] = self;
  v18 = _Block_copy(aBlock);
  v19 = v18;
  if (v3)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:v18 animations:0.2];
  }

  else
  {
    (*(v18 + 2))(v18);
  }
}

uint64_t __49__PUTrimToolController__updateSlomoViewAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isSlomoEnabled];
  v3 = 0.0;
  if (v2)
  {
    v3 = 1.0;
  }

  v4 = *(*(a1 + 32) + 1120);

  return [v4 setAlpha:v3];
}

- (void)_updateVideo
{
  v3 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "Trim Scrubber: Requesting video asset", buf, 2u);
  }

  v4 = [(PUTrimToolController *)self playerWrapper];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__PUTrimToolController__updateVideo__block_invoke;
  v5[3] = &unk_1E7B7F6F8;
  v5[4] = self;
  [v4 requestAssetWithCompletion:v5];
}

void __36__PUTrimToolController__updateVideo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "Trim Scrubber: Video asset retrieved: %@", buf, 0xCu);
  }

  v9 = v4;
  v7 = v5;
  v8 = v4;
  px_dispatch_on_main_queue();
}

void __36__PUTrimToolController__updateVideo__block_invoke_160(id *a1)
{
  if (a1[4])
  {
    v2 = [a1[5] currentVideoComposition];
    v3 = v2;
    if (v2 == a1[6])
    {
      v4 = [a1[5] currentVideoAsset];
      v5 = a1[4];

      if (v4 == v5)
      {
        return;
      }
    }

    else
    {
    }

    objc_storeStrong(a1[5] + 148, a1[6]);
    objc_storeStrong(a1[5] + 147, a1[4]);
    v6 = a1[5];
    v7 = *MEMORY[0x1E6960C70];
    v8 = *(MEMORY[0x1E6960C70] + 16);
    [v6 setCachedFrameDuration:&v7];
    [a1[5] setCachedFrameRate:0.0];
    [a1[5] _updateScrubberContents];
    [a1[5] _updateDebugTimeCodeLabel];
    [a1[5] _updateDebugPlayerTimeLabel];
    *(a1[5] + 1009) = 1;
  }
}

- (void)_updateSnappingDots
{
  if ([(PUTrimToolController *)self _allowsKeyFrameCreation])
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:2];
    [(PUTrimToolController *)self unadjustedStillImageTime];
    if ((v10[36] & 0x1D) == 1)
    {
      v4 = MEMORY[0x1E696B098];
      [(PUTrimToolController *)self unadjustedStillImageTime];
      v5 = [v4 valueWithCMTime:v10];
      [v3 addObject:v5];
    }

    [(PUTrimToolController *)self adjustedStillFrameTime];
    if ((v9 & 0x1D) == 1)
    {
      v6 = MEMORY[0x1E696B098];
      [(PUTrimToolController *)self adjustedStillFrameTime];
      v7 = [v6 valueWithCMTime:v10];
      [v3 addObject:v7];
    }

    if ([v3 count])
    {
      v8 = [v3 array];
      [(PXLivePhotoTrimScrubber *)self->_trimScrubber setSnapKeyTimes:v8];
    }
  }
}

- (void)_updateScrubberFocusEventTimes
{
  focusEventTimes = self->_focusEventTimes;
  v4 = [(PXLivePhotoTrimScrubber *)self->_trimScrubber focusEventTimes];
  if (focusEventTimes == v4)
  {

    MEMORY[0x1EEE66BB8](v4, v4);
  }

  else
  {
    v7 = v4;
    v5 = [(NSArray *)focusEventTimes isEqual:v4];

    if ((v5 & 1) == 0)
    {
      if ([(NSArray *)self->_focusEventTimes count]&& self->_isPortraitVideo && self->_portraitVideoEnabled)
      {
        v6 = self->_focusEventTimes;
      }

      else
      {
        v6 = 0;
      }

      [(PXLivePhotoTrimScrubber *)self->_trimScrubber setFocusEventTimes:v6];
      [(PUTrimToolController *)self _updateSnappingDots];

      [(PUTrimToolController *)self _hideScrubberTimelineOverlay];
    }
  }
}

- (void)_updateScrubberTimes
{
  v48[1] = *MEMORY[0x1E69E9840];
  v3 = [(PUTrimToolController *)self compositionController];
  v4 = [v3 trimAdjustmentController];

  memset(&v46[32], 0, 24);
  if (v4)
  {
    [v4 startTime];
    if ((v46[44] & 1) == 0)
    {
      *&v46[32] = **&MEMORY[0x1E6960CC0];
    }

    memset(v46, 0, 24);
    [v4 endTime];
  }

  else
  {
    *&v46[32] = **&MEMORY[0x1E6960CC0];
    memset(v46, 0, 24);
  }

  v5 = [(PUTrimToolController *)self currentVideoAsset];
  v6 = v5;
  if (v5)
  {
    [v5 duration];
  }

  else
  {
    memset(&v45, 0, sizeof(v45));
  }

  *v46 = v45;

  v45 = *&v46[32];
  [(PXLivePhotoTrimScrubber *)self->_trimScrubber setTrimStartTime:&v45];
  v45 = *v46;
  [(PXLivePhotoTrimScrubber *)self->_trimScrubber setTrimEndTime:&v45];
  memset(&v45, 0, sizeof(v45));
  [(PUTrimToolController *)self originalStartTime];
  v44 = v45;
  [(PXLivePhotoTrimScrubber *)self->_trimScrubber setOriginalStartTime:&v44];
  if (v45.flags)
  {
    v44 = v45;
    v7 = [MEMORY[0x1E696B098] valueWithCMTime:&v44];
    v48[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
    [(PXLivePhotoTrimScrubber *)self->_trimScrubber setSnapTrimStartTimes:v8];
  }

  else
  {
    [(PXLivePhotoTrimScrubber *)self->_trimScrubber setSnapTrimStartTimes:0];
  }

  memset(&v44, 0, sizeof(v44));
  [(PUTrimToolController *)self originalEndTime];
  time1 = v44;
  [(PXLivePhotoTrimScrubber *)self->_trimScrubber setOriginalEndTime:&time1];
  if (v44.flags)
  {
    time1 = v44;
    v9 = [MEMORY[0x1E696B098] valueWithCMTime:&time1];
    v47 = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
    [(PXLivePhotoTrimScrubber *)self->_trimScrubber setSnapTrimEndTimes:v10];
  }

  else
  {
    [(PXLivePhotoTrimScrubber *)self->_trimScrubber setSnapTrimEndTimes:0];
  }

  v11 = [(PUTrimToolController *)self compositionController];
  v12 = [v11 composition];
  v13 = [v12 mediaType];

  if (v13 != 2 && ([(PUTrimToolController *)self currentStillFrameTime], (v41 & 1) != 0))
  {
    [(PUTrimToolController *)self currentStillFrameTime];
  }

  else
  {
    [(PUTrimToolController *)self playheadTime];
  }

  trimScrubber = self->_trimScrubber;
  time1 = v42;
  [(PXLivePhotoTrimScrubber *)trimScrubber setKeyTime:&time1];
  v15 = [(PUTrimToolController *)self playheadStyle];
  if (v15 == 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2 * (v15 == 2);
  }

  [(PXLivePhotoTrimScrubber *)self->_trimScrubber setPlayheadStyle:v16];
  v17 = +[PUPhotoEditProtoSettings sharedInstance];
  v18 = [v17 disableVideoFilmstrip];

  if ((v18 & 1) == 0)
  {
    v19 = self->_trimScrubber;
    v20 = [(PUTrimToolController *)self playerWrapper];
    v21 = [v20 loupePlayerView];
    [(PXLivePhotoTrimScrubber *)v19 setLoupePlayerView:v21];
  }

  [(PUTrimToolController *)self _updateSnappingDots];
  [(PUTrimToolController *)self suggestedKeyFrameTime];
  if ((v40 & 1) == 0)
  {
    goto LABEL_31;
  }

  v22 = +[PUPhotoEditProtoSettings sharedInstance];
  v23 = [v22 showSuggestedKeyFrame];

  if (!v23)
  {
    goto LABEL_31;
  }

  v24 = self->_trimScrubber;
  if (v24)
  {
    [(PXLivePhotoTrimScrubber *)v24 suggestedKeyTime];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  [(PUTrimToolController *)self suggestedKeyFrameTime];
  if (CMTimeCompare(&time1, &time2))
  {
    [(PUTrimToolController *)self suggestedKeyFrameTime];
    v25 = self->_trimScrubber;
    time1 = v38;
    [(PXLivePhotoTrimScrubber *)v25 setSuggestedKeyTime:&time1];
    v26 = 1;
  }

  else
  {
LABEL_31:
    v26 = 0;
  }

  if ([(PUTrimToolController *)self isSlomoEnabled])
  {
    [(PXSlowMotionEditor *)self->_slomoView setMinValue:0.0];
    [(PUTrimToolController *)self unadjustedAssetDuration];
    Seconds = 1.0;
    if ((v37 & 0x1D) == 1)
    {
      [(PUTrimToolController *)self unadjustedAssetDuration];
      Seconds = CMTimeGetSeconds(&time1);
    }

    [(PXSlowMotionEditor *)self->_slomoView setMaxValue:Seconds];
    v28 = [(PUTrimToolController *)self compositionController];
    v29 = [v28 slomoAdjustmentController];

    memset(&time1, 0, sizeof(time1));
    if (v29)
    {
      [v29 startTime];
      if ((time1.flags & 0x1D) == 1)
      {
        time2 = time1;
        [(PXSlowMotionEditor *)self->_slomoView setStartValue:CMTimeGetSeconds(&time2)];
      }

      memset(&time2, 0, sizeof(time2));
      [v29 endTime];
      if ((time2.flags & 0x1D) == 1)
      {
        time = time2;
        [(PXSlowMotionEditor *)self->_slomoView setEndValue:CMTimeGetSeconds(&time)];
      }
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    v30 = [(PUTrimToolController *)self slomoTimeForPlayheadUpdate];

    if (v30)
    {
      v31 = [(PUTrimToolController *)self slomoTimeForPlayheadUpdate];
      [v31 floatValue];
      v33 = v32;

      CMTimeMakeWithSeconds(&v35, v33, 600);
      time = v35;
      [(PUTrimToolController *)self setPlayheadTime:&time];
    }

    [(PUTrimToolController *)self setSlomoTimeForPlayheadUpdate:0];
  }

  if (v26)
  {
    v34 = [(PUTrimToolController *)self snapStripController];
    [v34 updateSnapStripView];
  }
}

- (void)_updateScrubberContents
{
  trimScrubber = self->_trimScrubber;
  v4 = [(PUTrimToolController *)self currentVideoAsset];
  v5 = [(PUTrimToolController *)self currentVideoComposition];
  [(PXLivePhotoTrimScrubber *)trimScrubber setAsset:v4 videoComposition:v5];

  [(PUTrimToolController *)self _updateScrubberTimes];

  [(PUTrimToolController *)self _updateSnapStripController];
}

- (void)_updatePlayerWrapperTrim
{
  v3 = [(PUTrimToolController *)self compositionController];
  v4 = [v3 trimAdjustmentController];

  v5 = *(MEMORY[0x1E6960C98] + 16);
  v13 = *MEMORY[0x1E6960C98];
  v14 = v5;
  v15 = *(MEMORY[0x1E6960C98] + 32);
  if ([v4 enabled])
  {
    v7 = 0uLL;
    *&v8 = 0;
    if (v4)
    {
      [v4 startTime];
      memset(&v12, 0, sizeof(v12));
      [v4 endTime];
    }

    else
    {
      memset(&v12, 0, sizeof(v12));
    }

    v13 = v7;
    *&v14 = v8;
    lhs = v12;
    *&rhs.value = v7;
    rhs.epoch = v8;
    CMTimeSubtract((&v14 + 8), &lhs, &rhs);
  }

  v6 = [(PUTrimToolController *)self playerWrapper:v7];
  v7 = v13;
  v8 = v14;
  v9 = v15;
  [v6 applyTrimTimeRange:&v7];
}

- (void)_updateCompositionController
{
  v3 = [(PUTrimToolController *)self delegate];
  [v3 willModifyAdjustment];

  v4 = self->_trimScrubber;
  v5 = v4;
  v34 = 0uLL;
  v35 = 0;
  if (v4)
  {
    [(PXLivePhotoTrimScrubber *)v4 trimStartTime];
    memset(&v33, 0, sizeof(v33));
    [(PXLivePhotoTrimScrubber *)v5 trimEndTime];
  }

  else
  {
    memset(&v33, 0, sizeof(v33));
  }

  memset(&v32, 0, sizeof(v32));
  *&start.start.value = v34;
  start.start.epoch = v35;
  end = v33;
  CMTimeRangeFromTimeToTime(&v32, &start.start, &end);
  memset(&end, 0, sizeof(end));
  if (v5)
  {
    [(PXLivePhotoTrimScrubber *)v5 keyTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  start = v32;
  CMTimeClampToRange(&end, &time, &start);
  start.start = end;
  [(PXLivePhotoTrimScrubber *)v5 setKeyTime:&start];
  if (v5)
  {
    [(PXLivePhotoTrimScrubber *)v5 keyTime];
  }

  else
  {
    memset(&start, 0, 24);
  }

  time = v33;
  if (!CMTimeCompare(&start.start, &time))
  {
    memset(&start, 0, 24);
    [(PUTrimToolController *)self _frameDuration];
    if (v5)
    {
      [(PXLivePhotoTrimScrubber *)v5 keyTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    rhs = start.start;
    CMTimeSubtract(&v28, &time, &rhs);
    time = v28;
    [(PXLivePhotoTrimScrubber *)v5 setKeyTime:&time];
    if (v5)
    {
      [(PXLivePhotoTrimScrubber *)v5 keyTime];
    }

    else
    {
      memset(&v26, 0, sizeof(v26));
    }

    time = v26;
    [(PXLivePhotoTrimScrubber *)v5 setKeyTime:&time];
  }

  [(PUTrimToolController *)self currentStillFrameTime];
  start = v32;
  v6 = CMTimeRangeContainsTime(&start, &time);
  time = **&MEMORY[0x1E6960C70];
  if (!v6)
  {
    memset(&rhs, 0, sizeof(rhs));
    [(PUTrimToolController *)self currentStillFrameTime];
    start = v32;
    CMTimeClampToRange(&rhs, &time2, &start);
    time = rhs;
    start.start = rhs;
    time2 = v33;
    if (!CMTimeCompare(&start.start, &time2))
    {
      memset(&start, 0, 24);
      [(PUTrimToolController *)self _frameDuration];
      time2 = time;
      v24 = start.start;
      CMTimeSubtract(&time, &time2, &v24);
    }
  }

  v7 = v6 == 0;
  v8 = [(PXLivePhotoTrimScrubber *)v5 trimStatus];
  [(PUTrimToolController *)self _createRendererIfNeeded];
  v9 = [(PUTrimToolController *)self renderer];
  v10 = [(PUTrimToolController *)self currentEditSource];
  v11 = [(PUTrimToolController *)self compositionController];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__PUTrimToolController__updateCompositionController__block_invoke;
  v15[3] = &unk_1E7B7F6D0;
  v23 = v7;
  v19 = time;
  v16 = v10;
  v17 = self;
  v18 = v8;
  v20 = v34;
  v21 = v35;
  v22 = v33;
  v12 = v10;
  [v9 applySourceChangesToCompositionAsynchronously:v11 source:v12 withBlock:v15 completionBlock:0];

  [(PUTrimToolController *)self _updatePlayerWrapperTrim];
  [(PUTrimToolController *)self _updateSnappingDots];
  v13 = [(PUTrimToolController *)self delegate];
  v14 = PULocalizedString(@"PHOTOEDIT_TRIM_ACTION_TITLE");
  [v13 didModifyAdjustmentWithLocalizedName:v14];
}

void __52__PUTrimToolController__updateCompositionController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69BDEF0] adjustmentConstants];
  if (*(a1 + 128) == 1)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (*(a1 + 68))
      {
        v9 = *MEMORY[0x1E69BE030];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __52__PUTrimToolController__updateCompositionController__block_invoke_2;
        v23[3] = &unk_1E7B7F668;
        v24 = *(a1 + 56);
        v25 = *(a1 + 72);
        v23[4] = &v26;
        [v3 modifyAdjustmentWithKey:v9 modificationBlock:v23];
      }

      else
      {
        v5 = [v3 livePhotoKeyFrameAdjustmentController];

        if (v5)
        {
          *(v27 + 24) = 1;
        }

        [v3 removeAdjustmentWithKey:*MEMORY[0x1E69BE030]];
      }
    }

    else
    {
      v6 = +[PUPhotoEditProtoSettings sharedInstance];
      v7 = [v6 allowMakePosterFrameForVideo];

      if (v7)
      {
        v8 = *(a1 + 40);
        v21 = *(a1 + 56);
        v22 = *(a1 + 72);
        [v8 _setPosterFrameTime:&v21 onCompositionController:v3];
      }
    }

    if (*(v27 + 24) == 1)
    {
      [*(a1 + 40) updateLivePortraitForKeyFrameChange:v3];
    }

    _Block_object_dispose(&v26, 8);
  }

  if (*(a1 + 48) == 2)
  {
    if (*(a1 + 92) & 1) != 0 && (*(a1 + 116))
    {
      v14 = *MEMORY[0x1E69BE180];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __52__PUTrimToolController__updateCompositionController__block_invoke_3;
      v16[3] = &__block_descriptor_80_e36_v16__0__PITrimAdjustmentController_8l;
      v17 = *(a1 + 80);
      v18 = *(a1 + 96);
      v19 = *(a1 + 104);
      v20 = *(a1 + 120);
      [v3 modifyAdjustmentWithKey:v14 modificationBlock:v16];
    }

    else
    {
      [v3 removeAdjustmentWithKey:*MEMORY[0x1E69BE180]];
    }
  }

  else
  {
    v10 = [v4 PITrimAdjustmentKey];
    [v3 removeAdjustmentWithKey:v10];
  }

  v11 = [v4 PITrimAdjustmentKey];
  v12 = [v3 adjustmentControllerForKey:v11];

  if (v12)
  {
    v13 = [v4 PITrimAdjustmentKey];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __52__PUTrimToolController__updateCompositionController__block_invoke_4;
    v15[3] = &__block_descriptor_40_e32_v16__0__PIAdjustmentController_8l;
    v15[4] = *(a1 + 48);
    [v3 modifyAdjustmentWithKey:v13 modificationBlock:v15];
  }
}

void __52__PUTrimToolController__updateCompositionController__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 keyFrameTime];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  v5 = *(a1 + 40);
  if (CMTimeCompare(&time1, &v5))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  time1 = *(a1 + 40);
  [v4 setKeyFrameTime:&time1];
}

void __52__PUTrimToolController__updateCompositionController__block_invoke_3(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v3 = a2;
  [v3 setStartTime:&v4];
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  [v3 setEndTime:&v4];
}

uint64_t __52__PUTrimToolController__updateCompositionController__block_invoke_4(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    return [a2 setEnabled:v2 == 2];
  }

  return result;
}

- (void)_updateTimeCodeOverlay
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [(PUTrimToolController *)self internalState]== 2 || [(PUTrimToolController *)self internalState]== 3 || [(PUTrimToolController *)self internalState]== 4 || [(PUTrimToolController *)self internalState]== 5;
  v4 = [(PUTrimToolController *)self editSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  timeCodeOverlayView = self->_timeCodeOverlayView;
  if (v3 && (isKindOfClass & 1) != 0)
  {
    if (!timeCodeOverlayView)
    {
      v7 = objc_alloc_init(PUTimeCodeOverlayView);
      v8 = self->_timeCodeOverlayView;
      self->_timeCodeOverlayView = v7;

      v9 = [(PUTrimToolController *)self view];
      [v9 addSubview:self->_timeCodeOverlayView];

      v10 = [(PXLivePhotoTrimScrubber *)self->_trimScrubber topAnchor];
      v11 = [(PUTimeCodeOverlayView *)self->_timeCodeOverlayView bottomAnchor];
      v12 = [v10 constraintEqualToAnchor:v11 constant:4.0];
      [v12 setActive:1];

      v13 = [(PUTimeCodeOverlayView *)self->_timeCodeOverlayView centerXAnchor];
      v14 = [(PXLivePhotoTrimScrubber *)self->_trimScrubber leftAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];
      timeCodeHorizontalConstraint = self->_timeCodeHorizontalConstraint;
      self->_timeCodeHorizontalConstraint = v15;

      [(NSLayoutConstraint *)self->_timeCodeHorizontalConstraint setActive:1];
    }

    if ([(PUTrimToolController *)self internalState]== 3)
    {
      if ([(PUTrimToolController *)self slomoDraggingStartHandle])
      {
        [(PXSlowMotionEditor *)self->_slomoView startValue];
        CMTimeMakeWithSeconds(&v32, v17, [MEMORY[0x1E69C0890] preferredTimeScale]);
        value = v32.value;
        flags = v32.flags;
        timescale = v32.timescale;
        epoch = v32.epoch;
        [(PXSlowMotionEditor *)self->_slomoView startHandleFrame];
        MinX = CGRectGetMinX(v37);
        [(PXLivePhotoTrimScrubberSpec *)self->_spec handleWidth];
        v22 = -5.0;
      }

      else
      {
        [(PXSlowMotionEditor *)self->_slomoView endValue];
        CMTimeMakeWithSeconds(&v32, v27, [MEMORY[0x1E69C0890] preferredTimeScale]);
        value = v32.value;
        flags = v32.flags;
        timescale = v32.timescale;
        epoch = v32.epoch;
        [(PXSlowMotionEditor *)self->_slomoView endHandleFrame];
        MinX = CGRectGetMinX(v38);
        [(PXLivePhotoTrimScrubberSpec *)self->_spec handleWidth];
        v22 = -6.0;
      }

      v28 = MinX + v21 + v22;
    }

    else
    {
      v25 = [(PXLivePhotoTrimScrubber *)self->_trimScrubber currentlyInteractingElement];
      trimScrubber = self->_trimScrubber;
      if (trimScrubber)
      {
        [(PXLivePhotoTrimScrubber *)trimScrubber timeForElement:v25];
        flags = v32.flags;
        epoch = v32.epoch;
        trimScrubber = self->_trimScrubber;
      }

      else
      {
        epoch = 0;
        flags = 0;
        memset(&v32, 0, sizeof(v32));
      }

      v32.epoch = epoch;
      value = v32.value;
      timescale = v32.timescale;
      v32.flags = flags;
      [(PXLivePhotoTrimScrubber *)trimScrubber horizontalOffsetForTime:&v32];
      v28 = v29;
    }

    if ((flags & 0x1D) != 1)
    {
      value = *MEMORY[0x1E6960CC0];
      flags = *(MEMORY[0x1E6960CC0] + 12);
      timescale = *(MEMORY[0x1E6960CC0] + 8);
      epoch = *(MEMORY[0x1E6960CC0] + 16);
      v28 = 0.0;
    }

    v32.value = value;
    v32.timescale = timescale;
    v32.flags = flags;
    v32.epoch = epoch;
    [(PUTimeCodeOverlayView *)self->_timeCodeOverlayView setDisplayedTimeInterval:CMTimeGetSeconds(&v32)];
    v30 = +[PUPhotoEditProtoSettings sharedInstance];
    v31 = [v30 showFrameNumberOnVideoScrubber];

    if (v31)
    {
      [(PUTrimToolController *)self _frameRate];
      [(PUTimeCodeOverlayView *)self->_timeCodeOverlayView setFrameRate:?];
    }

    [(NSLayoutConstraint *)self->_timeCodeHorizontalConstraint setConstant:v28];
  }

  else if (timeCodeOverlayView)
  {
    [(PUTimeCodeOverlayView *)timeCodeOverlayView removeFromSuperview];
    v23 = self->_timeCodeOverlayView;
    self->_timeCodeOverlayView = 0;

    v24 = self->_timeCodeHorizontalConstraint;
    self->_timeCodeHorizontalConstraint = 0;
  }
}

- (void)_updateScrubberPresentedPlayhead
{
  v3 = [(PUTrimToolController *)self playheadStyle];
  if (v3 <= 2)
  {
    v4 = v3;
    trimScrubber = self->_trimScrubber;

    [(PXLivePhotoTrimScrubber *)trimScrubber setPlayheadStyle:v4];
  }
}

- (void)_updatePlayerWrapperTimeObserver
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PUTrimToolController__updatePlayerWrapperTimeObserver__block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __56__PUTrimToolController__updatePlayerWrapperTimeObserver__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playheadStyle];
  v3 = [*(a1 + 32) playerWrapper];
  v4 = v3;
  if (v2 == 1)
  {
    [v3 startPeriodicTimeObserver];
  }

  else
  {
    [v3 stopPeriodicTimeObserver];
  }
}

- (void)_updateSnapStripController
{
  v3 = [(PUTrimToolController *)self delegate];
  v6 = [v3 livePortraitBehaviorController];

  v4 = [v6 hasLivePortrait];
  v5 = [(PUTrimToolController *)self snapStripSpec];
  [v5 setLivePortraitStyle:v4];
}

- (void)_updatePlayheadStyle
{
  v3 = [(PUTrimToolController *)self currentEditSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    if ([(PUTrimToolController *)self internalState]== 2)
    {
      v6 = 0;
    }

    else
    {
      v7 = [(PUTrimToolController *)self compositionController];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 autoLoopAdjustmentController];
        v10 = [v9 flavor];
        v11 = PIAutoLoopFlavorFromString() == 0;

        v6 = 2 * v11;
      }

      else
      {
        v6 = 0;
      }
    }

    goto LABEL_15;
  }

  v5 = [(PUTrimToolController *)self state];
  if (v5 >= 2)
  {
    if (v5 == 3)
    {
      v6 = 2;
      goto LABEL_15;
    }

    if (v5 != 2)
    {
      return;
    }

    if ([(PUTrimToolController *)self internalState]!= 4)
    {
      v6 = [(PUTrimToolController *)self internalState]== 5;
      goto LABEL_15;
    }
  }

  v6 = 1;
LABEL_15:

  [(PUTrimToolController *)self setPlayheadStyle:v6];
}

- (void)_updatePublicState
{
  v3 = [(PUTrimToolController *)self internalState];
  if (v3 > 6)
  {
    v4 = 2;
  }

  else
  {
    v4 = qword_1B3D0D760[v3];
  }

  [(PUTrimToolController *)self _setState:v4];
}

- (void)_updateDebugPlayheadStyleLabel
{
  v3 = [(PUTrimToolController *)self debugTrimToolPlayheadStyleLabel];

  if (v3)
  {
    v4 = [(PUTrimToolController *)self playheadStyle];
    if (v4 <= 2)
    {
      v5 = off_1E7B7F788[v4];
      v6 = [(PUTrimToolController *)self debugTrimToolPlayheadStyleLabel];
      [v6 setText:v5];
    }
  }
}

- (void)_updateDebugTrimToolStateLabel
{
  v3 = [(PUTrimToolController *)self debugTrimToolStateLabel];

  if (v3)
  {
    v4 = [(PUTrimToolController *)self state];
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v9 = [(PUTrimToolController *)self internalState];
        if (v9 - 2 > 3)
        {
          v10 = @"Unknown";
        }

        else
        {
          v10 = off_1E7B7F768[v9 - 2];
        }

        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Interacting(%@)", v10];
        v12 = [(PUTrimToolController *)self debugTrimToolStateLabel];
        [v12 setText:v11];

        v6 = [MEMORY[0x1E69DC888] yellowColor];
      }

      else
      {
        if (v4 != 3)
        {
          return;
        }

        v7 = [(PUTrimToolController *)self debugTrimToolStateLabel];
        [v7 setText:@"Picking"];

        v6 = [MEMORY[0x1E69DC888] magentaColor];
      }
    }

    else if (v4)
    {
      if (v4 != 1)
      {
        return;
      }

      v5 = [(PUTrimToolController *)self debugTrimToolStateLabel];
      [v5 setText:@"Playing"];

      v6 = [MEMORY[0x1E69DC888] greenColor];
    }

    else
    {
      v8 = [(PUTrimToolController *)self debugTrimToolStateLabel];
      [v8 setText:@"Paused"];

      v6 = [MEMORY[0x1E69DC888] redColor];
    }

    v14 = v6;
    v13 = [(PUTrimToolController *)self debugTrimToolStateLabel];
    [v13 setTextColor:v14];
  }
}

- (void)_updateDebugPlayerTimeLabel
{
  v3 = [(PUTrimToolController *)self debugPlayerTimeLabel];

  if (v3)
  {
    memset(&v31, 0, sizeof(v31));
    v4 = [(PUTrimToolController *)self currentVideoAsset];
    v5 = v4;
    if (v4)
    {
      [v4 duration];
    }

    else
    {
      memset(&v31, 0, sizeof(v31));
    }

    [(PUTrimToolController *)self debugPlayerTime];
    if ((v30 & 0x1D) == 1 && (v31.flags & 0x1D) == 1)
    {
      v6 = MEMORY[0x1E696AEC0];
      [(PUTrimToolController *)self debugPlayerTime];
      CMTimeGetSeconds(&time);
      v7 = PXTrimTimeCodeStringFromSecondsAndRound();
      time = v31;
      CMTimeGetSeconds(&time);
      v8 = PXTrimTimeCodeStringFromSecondsAndRound();
      v9 = [v6 stringWithFormat:@"P:%@/%@", v7, v8];
      v10 = [(PUTrimToolController *)self debugPlayerTimeLabel];
      [v10 setText:v9];

      memset(&time, 0, sizeof(time));
      [(PUTrimToolController *)self debugPlayerTime];
      [(PUTrimToolController *)self _originalTimeFromCurrentPlayerScaledTime:&v28];
      memset(&v28, 0, sizeof(v28));
      v27 = v31;
      [(PUTrimToolController *)self _originalTimeFromCurrentPlayerScaledTime:&v27];
      v11 = MEMORY[0x1E696AEC0];
      v27 = time;
      CMTimeGetSeconds(&v27);
      v12 = PXTrimTimeCodeStringFromSecondsAndRound();
      v27 = v28;
      CMTimeGetSeconds(&v27);
      v13 = PXTrimTimeCodeStringFromSecondsAndRound();
      v14 = [v11 stringWithFormat:@"O:%@/%@", v12, v13];
      v15 = [(PUTrimToolController *)self debugOriginalTimeLabel];
      [v15 setText:v14];
    }

    else
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = PXTrimTimeCodeStringFromSecondsAndRound();
      v18 = [v16 stringWithFormat:@"P:%@", v17];
      v19 = [(PUTrimToolController *)self debugPlayerTimeLabel];
      [v19 setText:v18];

      v20 = MEMORY[0x1E696AEC0];
      v12 = PXTrimTimeCodeStringFromSecondsAndRound();
      v21 = [v20 stringWithFormat:@"O:%@", v12];
      v22 = [(PUTrimToolController *)self debugOriginalTimeLabel];
      [v22 setText:v21];
    }

    v23 = [MEMORY[0x1E69DC888] greenColor];
    v24 = [(PUTrimToolController *)self debugPlayerTimeLabel];
    [v24 setTextColor:v23];

    v25 = [MEMORY[0x1E69DC888] whiteColor];
    v26 = [(PUTrimToolController *)self debugOriginalTimeLabel];
    [v26 setTextColor:v25];
  }
}

- (void)_updateDebugTimeCodeLabel
{
  v3 = [(PUTrimToolController *)self debugTimeCodeLabel];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v5 = [(PUTrimToolController *)self compositionController];
    v6 = [v5 trimAdjustmentController];

    if (v6)
    {
      [v6 startTime];
      Seconds = CMTimeGetSeconds(&time);
      [v6 endTime];
      v21 = CMTimeGetSeconds(&time);
      [v4 appendFormat:@"Trim(s:%.1f, e:%.1f, d:%.1f)", *&Seconds, *&v21, v21 - Seconds, time.value, *&time.timescale, time.epoch];
    }

    else
    {
      v8 = [(PUTrimToolController *)self currentVideoAsset];
      v9 = v8;
      if (v8)
      {
        [v8 duration];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      v10 = CMTimeGetSeconds(&time);

      [v4 appendFormat:@"Trim(s:%.1f, e:%.1f, d:%.1f)", 0, *&v10, *&v10, time.value, *&time.timescale, time.epoch];
    }

    v11 = [(PUTrimToolController *)self compositionController];
    v12 = [v11 slomoAdjustmentController];

    if (v12)
    {
      [v12 startTime];
      v13 = CMTimeGetSeconds(&time);
      [v12 endTime];
      v14 = CMTimeGetSeconds(&time);
      [v4 appendFormat:@" Slo(s:%.1f, e:%.1f, d:%.1f)", *&v13, *&v14, v14 - v13];
    }

    trimScrubber = self->_trimScrubber;
    if (trimScrubber)
    {
      [(PXLivePhotoTrimScrubber *)trimScrubber viewportMinTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v16 = CMTimeGetSeconds(&time);
    v17 = self->_trimScrubber;
    if (v17)
    {
      [(PXLivePhotoTrimScrubber *)v17 viewportMaxTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    [v4 appendFormat:@"VP(%.1f, %.1f)", *&v16, CMTimeGetSeconds(&time)];
    v18 = [(PUTrimToolController *)self debugTimeCodeLabel];
    [v18 setText:v4];

    v19 = [MEMORY[0x1E69DC888] whiteColor];
    v20 = [(PUTrimToolController *)self debugTimeCodeLabel];
    [v20 setTextColor:v19];
  }
}

- (void)setDebugPlayerTime:(id *)a3
{
  p_debugPlayerTime = &self->_debugPlayerTime;
  time1 = self->_debugPlayerTime;
  v7 = *a3;
  if (CMTimeCompare(&time1, &v7))
  {
    v6 = *&a3->var0;
    p_debugPlayerTime->epoch = a3->var3;
    *&p_debugPlayerTime->value = v6;
    [(PUTrimToolController *)self _updateDebugPlayerTimeLabel];
  }
}

- (void)_setPosterFrameTime:(id *)a3 onCompositionController:(id)a4
{
  v5 = a4;
  if ((a3->var2 & 1) != 0 && (time1 = *a3, time2 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1, &time2)))
  {
    v6 = *MEMORY[0x1E69BE188];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__PUTrimToolController__setPosterFrameTime_onCompositionController___block_invoke;
    v7[3] = &__block_descriptor_56_e48_v16__0__PIVideoPosterFrameAdjustmentController_8l;
    v8 = *&a3->var0;
    var3 = a3->var3;
    [v5 modifyAdjustmentWithKey:v6 modificationBlock:v7];
  }

  else
  {
    [v5 removeAdjustmentWithKey:*MEMORY[0x1E69BE188]];
  }
}

uint64_t __68__PUTrimToolController__setPosterFrameTime_onCompositionController___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  return [a2 setPosterFrameTime:&v3];
}

- (BOOL)_showKeyFrameSelection
{
  v3 = [(PUTrimToolController *)self _allowsKeyFrameCreation];
  if (v3)
  {
    v4 = [(PUTrimToolController *)self livePhotoKeyFramePickerAppearanceTimer];

    if (v4)
    {
      v5 = [(PUTrimToolController *)self livePhotoKeyFramePickerAppearanceTimer];
      [v5 invalidate];

      [(PUTrimToolController *)self setLivePhotoKeyFramePickerAppearanceTimer:0];
    }

    v6 = [(PUTrimToolController *)self livePhotoKeyFramePicker];

    if (v6)
    {
      v7 = [(PUTrimToolController *)self livePhotoKeyFramePicker];
      [v7 dismissViewControllerAnimated:0 completion:0];

      [(PUTrimToolController *)self setLivePhotoKeyFramePicker:0];
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__PUTrimToolController__showKeyFrameSelection__block_invoke;
    v10[3] = &unk_1E7B7F620;
    v10[4] = self;
    v8 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v10 block:1.0];
    [(PUTrimToolController *)self setLivePhotoKeyFramePickerAppearanceTimer:v8];
  }

  return v3;
}

void __46__PUTrimToolController__showKeyFrameSelection__block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 1056) == 1)
  {
    v2 = objc_alloc_init(PULivePhotoKeyFrameSelectionViewController);
    v3 = [*(a1 + 32) currentEditSource];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = @"PHOTOEDIT_MAKE_POSTER_FRAME";
    }

    else
    {
      v4 = @"PHOTOEDIT_MAKE_KEY_FRAME";
    }

    v5 = PULocalizedString(v4);
    [(PULivePhotoKeyFrameSelectionViewController *)v2 setSelectionTitle:v5];

    [(PULivePhotoKeyFrameSelectionViewController *)v2 setModalPresentationStyle:7];
    [(PULivePhotoKeyFrameSelectionViewController *)v2 setDelegate:*(a1 + 32)];
    [*(a1 + 32) _presentationRectFromLoupeRect];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(PULivePhotoKeyFrameSelectionViewController *)v2 popoverPresentationController];
    [v14 setPermittedArrowDirections:2];
    [v14 setSourceView:*(*(a1 + 32) + 992)];
    [v14 setSourceRect:{v7, v9, v11, v13}];
    [v14 setDelegate:*(a1 + 32)];
    v15 = [(PULivePhotoKeyFrameSelectionViewController *)v2 view];
    v16 = [v15 backgroundColor];
    [v14 setBackgroundColor:v16];

    v17 = [*(a1 + 32) view];
    v19[0] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [v14 setPassthroughViews:v18];

    [*(a1 + 32) setLivePhotoKeyFramePicker:v2];
    [*(a1 + 32) presentViewController:v2 animated:1 completion:0];
    [*(a1 + 32) setLivePhotoKeyFramePickerAppearanceTimer:0];
  }
}

- (BOOL)_allowsKeyFrameCreation
{
  v2 = [(PUTrimToolController *)self currentEditSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = +[PUPhotoEditProtoSettings sharedInstance];
    v4 = [v3 allowMakePosterFrameForVideo];
  }

  else
  {
    v4 = 0;
  }

  objc_opt_class();
  v5 = objc_opt_isKindOfClass() | v4;

  return v5 & 1;
}

- (void)setInternalState:(unint64_t)a3
{
  if (self->_internalState != a3)
  {
    self->_internalState = a3;
    [(PUTrimToolController *)self _updatePublicState];
    [(PUTrimToolController *)self _updatePlayheadStyle];
    [(PUTrimToolController *)self _updateDebugTrimToolStateLabel];

    [(PUTrimToolController *)self _updateTimeCodeOverlay];
  }
}

- (void)setPlayheadStyle:(unint64_t)a3
{
  if (self->_playheadStyle != a3)
  {
    self->_playheadStyle = a3;
    [(PUTrimToolController *)self _updateScrubberPresentedPlayhead];
    [(PUTrimToolController *)self _updatePlayerWrapperTimeObserver];

    [(PUTrimToolController *)self _updateDebugPlayheadStyleLabel];
  }
}

- (void)_setState:(unint64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    v6 = [(PUTrimToolController *)self delegate];
    [v6 trimToolControllerDidChange:self state:a3];
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)adjustedStillFrameTime
{
  v5 = [(PUTrimToolController *)self currentEditSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = [(PUTrimToolController *)self compositionController];
  v8 = v7;
  if (isKindOfClass)
  {
    v12 = [v7 livePhotoKeyFrameAdjustmentController];

    v9 = v12;
    if (v12)
    {
      [v12 keyFrameTime];
LABEL_6:
      v9 = v12;
      goto LABEL_8;
    }
  }

  else
  {
    v12 = [v7 videoPosterFrameAdjustmentController];

    v9 = v12;
    if (v12)
    {
      [v12 posterFrameTime];
      goto LABEL_6;
    }
  }

  v10 = MEMORY[0x1E6960C70];
  *&retstr->var0 = *MEMORY[0x1E6960C70];
  retstr->var3 = *(v10 + 16);
LABEL_8:

  return result;
}

- (void)setAdjustedStillFrameTime:(id *)a3
{
  v5 = [(PUTrimToolController *)self currentEditSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PUTrimToolController *)self unadjustedStillImageTime];
    time1 = *a3;
    if (CMTimeCompare(&time1, &time2))
    {
      var2 = a3->var2;
      v7 = [(PUTrimToolController *)self compositionController];
      v8 = v7;
      v9 = *MEMORY[0x1E69BE030];
      if (var2)
      {
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __50__PUTrimToolController_setAdjustedStillFrameTime___block_invoke;
        v13[3] = &__block_descriptor_56_e49_v16__0__PILivePhotoKeyFrameAdjustmentController_8l;
        v14 = *&a3->var0;
        var3 = a3->var3;
        [v7 modifyAdjustmentWithKey:v9 modificationBlock:v13];
      }

      else
      {
        [v7 removeAdjustmentWithKey:v9];
      }
    }

    else
    {
      v8 = [(PUTrimToolController *)self compositionController];
      v10 = [(PUTrimToolController *)self compositionController];
      v11 = [v10 adjustmentConstants];
      v12 = [v11 PILivePhotoKeyFrameAdjustmentKey];
      [v8 removeAdjustmentWithKey:v12];
    }
  }

  else
  {
    v8 = [(PUTrimToolController *)self compositionController];
    time2 = *a3;
    [(PUTrimToolController *)self _setPosterFrameTime:&time2 onCompositionController:v8];
  }
}

uint64_t __50__PUTrimToolController_setAdjustedStillFrameTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  return [a2 setKeyFrameTime:&v3];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentStillFrameTime
{
  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  result = [(PUTrimToolController *)self adjustedStillFrameTime];
  if ((retstr->var2 & 1) == 0)
  {
    result = [(PUTrimToolController *)self unadjustedStillImageTime];
    *&retstr->var0 = v6;
    retstr->var3 = v7;
  }

  return result;
}

- (void)updateObjectTrackingProgressAtTime:(id *)a3 shouldStop:(BOOL *)a4
{
  focusTimelineView = self->_focusTimelineView;
  v5 = *a3;
  [(PXFocusTimelineView *)focusTimelineView updateObjectTrackingProgressAtTime:&v5 shouldStop:a4];
}

- (void)objectTrackingStartedAtTime:(id *)a3
{
  focusTimelineView = self->_focusTimelineView;
  v4 = *a3;
  [(PXFocusTimelineView *)focusTimelineView objectTrackingStartedAtTime:&v4];
}

- (void)didUpdateFocusEventsWithTimes:(id)a3
{
  objc_storeStrong(&self->_focusEventTimes, a3);

  [(PUTrimToolController *)self _updateScrubberFocusEventTimes];
}

- (void)updateFocusTimelineWithEvent:(id *)a3 userInitiated:(BOOL)a4 shouldAnimate:(BOOL)a5
{
  focusTimelineView = self->_focusTimelineView;
  v6 = *a3;
  [(PXFocusTimelineView *)focusTimelineView addFocusEvent:&v6 userInitiated:a4 shouldAnimate:a5];
}

- (void)updateFocusTimelineWithTimeRange:(id *)a3
{
  v3 = *&a3->var0.var3;
  v4[0] = *&a3->var0.var0;
  v4[1] = v3;
  v4[2] = *&a3->var1.var1;
  [(PXFocusTimelineView *)self->_focusTimelineView setTimeRange:v4];
}

- (void)showFocusTimeline:(BOOL)a3
{
  v3 = 0.0;
  if (a3)
  {
    v3 = 1.0;
  }

  [(UIVisualEffectView *)self->_auxilaryContainerView setAlpha:v3];
}

- (void)enableFocusTimeline:(BOOL)a3
{
  self->_portraitVideoEnabled = a3;
  v4 = !a3;
  [(PXFocusTimelineView *)self->_focusTimelineView setDimmed:!a3];
  if (v4)
  {

    [(PUTrimToolController *)self _hideScrubberTimelineOverlay];
  }

  else
  {

    [(PUTrimToolController *)self _updateScrubberFocusEventTimes];
  }
}

- (void)setDisabled:(BOOL)a3
{
  if (self->_disabled != a3)
  {
    v4 = a3;
    self->_disabled = a3;
    v6 = [(PUTrimToolController *)self view];
    [v6 setUserInteractionEnabled:v4 ^ 1];

    [(PXLivePhotoTrimScrubber *)self->_trimScrubber setDisabled:v4];
    v7 = [(PUTrimToolController *)self snapStripController];
    [v7 updateSnapStripView];
  }
}

- (void)setEditSource:(id)a3
{
  v5 = a3;
  if (self->_editSource != v5)
  {
    objc_storeStrong(&self->_editSource, a3);
    v6 = [(PUTrimToolController *)self currentEditSource];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      CMTimeMake(&v19, 1, 2);
      trimScrubber = self->_trimScrubber;
      v17 = *&v19.value;
      epoch = v19.epoch;
    }

    else
    {
      CMTimeMake(&v16, 1, 1);
      trimScrubber = self->_trimScrubber;
      v17 = *&v16.value;
      epoch = v16.epoch;
    }

    v18 = epoch;
    [(PXLivePhotoTrimScrubber *)trimScrubber setMinimumTrimLength:&v17];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v6;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_14:
        [(PUTrimToolController *)self _updatePlayheadStyle];

        goto LABEL_15;
      }

      v9 = [v6 videoEditSource];
    }

    v10 = v9;
    if (v9)
    {
      v11 = MEMORY[0x1E6987E28];
      v12 = [v9 videoURL];
      v13 = [v11 assetWithURL:v12];

      if (v13)
      {
        [v13 duration];
      }

      else
      {
        v14 = 0uLL;
        v15 = 0;
      }

      v17 = v14;
      v18 = v15;
      [(PUTrimToolController *)self setUnadjustedAssetDuration:&v17, v14, v15];
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (void)setCompositionController:(id)a3
{
  v5 = a3;
  if (self->_compositionController != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_compositionController, a3);
    [(PUTrimToolController *)self _updatePlayheadStyle];
    [(PUTrimToolController *)self _updateScrubberContents];
    [(PUTrimToolController *)self _updatePlayerWrapperTrim];
    [(PUTrimToolController *)self _updateDebugTimeCodeLabel];
    [(PUTrimToolController *)self _updateSnapStripController];
    v5 = v6;
  }
}

- (void)setUnadjustedStillImageTime:(id *)a3
{
  p_unadjustedStillImageTime = &self->_unadjustedStillImageTime;
  time1 = *a3;
  unadjustedStillImageTime = self->_unadjustedStillImageTime;
  if (CMTimeCompare(&time1, &unadjustedStillImageTime))
  {
    v6 = *&a3->var0;
    p_unadjustedStillImageTime->epoch = a3->var3;
    *&p_unadjustedStillImageTime->value = v6;
    [(PUTrimToolController *)self _updateScrubberContents];
    v7 = [(PUTrimToolController *)self snapStripController];
    [v7 updateSnapStripView];
  }
}

- (void)releaseAVObjects
{
  [(PXLivePhotoTrimScrubber *)self->_trimScrubber _releaseAVObjects];
  [(PXTrimToolPlayerWrapper *)self->_playerWrapper setPlayerObserver:0];
  playerWrapper = self->_playerWrapper;
  self->_playerWrapper = 0;

  currentVideoAsset = self->_currentVideoAsset;
  self->_currentVideoAsset = 0;

  currentVideoComposition = self->_currentVideoComposition;
  self->_currentVideoComposition = 0;
}

- (void)trimScrubberDidLayoutSubviews:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__PUTrimToolController_trimScrubberDidLayoutSubviews___block_invoke;
  v3[3] = &unk_1E7B80DD0;
  v3[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v3];
}

void __54__PUTrimToolController_trimScrubberDidLayoutSubviews___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) snapStripController];
  [v1 updateSnapStripView];
}

- (void)trimScrubberPausePlayer:(id)a3
{
  v4 = [(PUTrimToolController *)self _playPauseButtonIfLoaded];
  v5 = [v4 window];

  if (v5)
  {
    v6 = [(PUTrimToolController *)self playerWrapper];
    [v6 pause];
  }
}

- (void)trimScrubberDidUnzoom:(id)a3
{
  slomoView = self->_slomoView;
  [(PXSlowMotionEditor *)slomoView maxValue];
  [(PXSlowMotionEditor *)slomoView setZoomMinValue:0.0 maxValue:v5];
  if ([(PUTrimToolController *)self isPortraitVideo])
  {
    [(PXFocusTimelineView *)self->_focusTimelineView unzoom];
  }

  [(PUTrimToolController *)self _updateDebugTimeCodeLabel];
}

- (void)trimScrubber:(id)a3 didZoomToMinimumValue:(double)a4 maximumValue:(double)a5
{
  [(PXSlowMotionEditor *)self->_slomoView setZoomMinValue:a3 maxValue:?];
  if ([(PUTrimToolController *)self isPortraitVideo])
  {
    [(PXFocusTimelineView *)self->_focusTimelineView setZoomMinValue:a4 maxValue:a5];
  }

  [(PUTrimToolController *)self _updateDebugTimeCodeLabel];
}

- (void)trimScrubberAssetDurationDidChange:(id)a3
{
  v3 = [(PUTrimToolController *)self snapStripController];
  [v3 updateSnapStripView];
}

- (void)trimScrubber:(id)a3 didChangeTimeForElement:(int64_t)a4
{
  if ([a3 currentlyInteractingElement])
  {
    [(PUTrimToolController *)self _seekToTimeForElement:a4 exact:1];
    v6 = [(PUTrimToolController *)self snapStripController];
    [v6 updateSnapStripView];

    [(PUTrimToolController *)self _updateTimeCodeOverlay];
  }
}

- (void)_didCompleteInteractiveEditForElement:(int64_t)a3 atTime:(id *)a4 state:(unint64_t)a5
{
  v9 = a3 - 1;
  v10 = [(PUTrimToolController *)self currentEditSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (v9 <= 1 && (isKindOfClass & 1) != 0)
  {
    v13 = *&a4->var0;
    var3 = a4->var3;
    [(PUTrimToolController *)self setPlayheadTime:&v13 forceSeek:1];
  }

  self->_currentlyInteractingElement = 0;
  [(PUTrimToolController *)self setInternalState:a5];
  v12 = [(PUTrimToolController *)self delegate];
  [v12 trimToolController:self didEndInteractivelyEditingElement:a3];
}

- (void)trimScrubber:(id)a3 didEndInteractivelyEditingElement:(int64_t)a4 successful:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (a4 != 3)
  {
    v9 = [(PUTrimToolController *)self _playPauseButtonIfLoaded];
    v10 = [v9 window];

    if (a4 == 4)
    {
      if (v10)
      {
        v11 = +[PUPhotoEditProtoSettings sharedInstance];
        v12 = [v11 pauseAfterMovingPlayhead];

        if (v12)
        {
          v13 = [(PUTrimToolController *)self playerWrapper];
          [v13 pause];
        }

        [(PUTrimToolController *)self _seekToTimeForElement:4 exact:1 forceSeek:1];
      }
    }
  }

  memset(&location[1], 0, sizeof(CMTime));
  trimScrubber = self->_trimScrubber;
  if (trimScrubber)
  {
    [(PXLivePhotoTrimScrubber *)trimScrubber timeForElement:a4];
  }

  if ((a4 - 1) > 1)
  {
    if ((a4 - 3) <= 1)
    {
      if (v5)
      {
        memset(location, 0, 24);
        v20 = self->_trimScrubber;
        if (v20)
        {
          [(PXLivePhotoTrimScrubber *)v20 keyTime];
        }

        [(PUTrimToolController *)self currentStillFrameTime];
        v26 = location[0];
        v21 = CMTimeCompare(&v26, &time2);
        v22 = +[PUPhotoEditProtoSettings sharedInstance];
        v23 = [v22 requireTapToShowMakePosterFrame];

        v24 = 0;
        if (v21 && (v23 & 1) == 0)
        {
          if ([(PUTrimToolController *)self _showKeyFrameSelection])
          {
            v24 = 6;
          }

          else
          {
            v24 = 0;
          }
        }

        goto LABEL_22;
      }

      [(PUTrimToolController *)self _resetScrubberToStillPhotoFrame];
    }

    v24 = 0;
LABEL_22:
    location[0] = location[1];
    [(PUTrimToolController *)self _didCompleteInteractiveEditForElement:a4 atTime:location state:v24];
    goto LABEL_23;
  }

  [MEMORY[0x1E69B3C60] begin];
  [(PUTrimToolController *)self _updateCompositionController];
  v15 = [(PUTrimToolController *)self playerWrapper];
  location[0] = **&MEMORY[0x1E6960C70];
  [v15 seekToTime:location];

  objc_initWeak(location, self);
  v16 = MEMORY[0x1E69B3C60];
  v17 = MEMORY[0x1E69E96A0];
  v18 = MEMORY[0x1E69E96A0];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __82__PUTrimToolController_trimScrubber_didEndInteractivelyEditingElement_successful___block_invoke;
  v28[3] = &unk_1E7B7F5D8;
  objc_copyWeak(v29, location);
  v29[1] = a4;
  v30 = location[1];
  [v16 commitAndNotifyOnQueue:v17 withBlock:v28];

  v19 = [(PUTrimToolController *)self snapStripController];
  [v19 updateSnapStripView];

  [(PUTrimToolController *)self _updateDebugTimeCodeLabel];
  objc_destroyWeak(v29);
  objc_destroyWeak(location);
LABEL_23:
  [(PUTrimToolController *)self setIsPerformingLiveInteraction:0];
  v25 = [(PUTrimToolController *)self delegate];
  [v25 trimToolController:self didChangeIsPerformingLiveInteraction:{-[PUTrimToolController isPerformingLiveInteraction](self, "isPerformingLiveInteraction")}];
}

void __82__PUTrimToolController_trimScrubber_didEndInteractivelyEditingElement_successful___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  [WeakRetained _didCompleteInteractiveEditForElement:v3 atTime:&v4 state:0];
}

- (void)trimScrubber:(id)a3 didBeginInteractivelyEditingElement:(int64_t)a4
{
  v16 = a3;
  v6 = 0;
  self->_currentlyInteractingElement = a4;
  v7 = 1;
  if ((a4 - 1) < 2)
  {
    v8 = 2;
  }

  else if (a4 == 4)
  {
    v7 = 0;
    v6 = 1;
    v8 = 4;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v6 = 0;
    v8 = 5;
  }

  [(PUTrimToolController *)self setInternalState:v8];
LABEL_8:
  [(PUTrimToolController *)self _seekToTimeForElement:a4 exact:v7 forceSeek:v6];
  v9 = [(PUTrimToolController *)self snapStripController];
  [v9 updateSnapStripView];

  v10 = [(PUTrimToolController *)self livePhotoKeyFramePickerAppearanceTimer];

  if (v10)
  {
    v11 = [(PUTrimToolController *)self livePhotoKeyFramePickerAppearanceTimer];
    [v11 invalidate];

    [(PUTrimToolController *)self setLivePhotoKeyFramePickerAppearanceTimer:0];
  }

  v12 = [(PUTrimToolController *)self livePhotoKeyFramePicker];

  if (v12)
  {
    v13 = [(PUTrimToolController *)self livePhotoKeyFramePicker];
    [v13 dismissViewControllerAnimated:0 completion:0];
  }

  v14 = [(PUTrimToolController *)self delegate];
  [v14 trimToolController:self didBeginInteractivelyEditingElement:a4];

  [(PUTrimToolController *)self setIsPerformingLiveInteraction:1];
  v15 = [(PUTrimToolController *)self delegate];
  [v15 trimToolController:self didChangeIsPerformingLiveInteraction:{-[PUTrimToolController isPerformingLiveInteraction](self, "isPerformingLiveInteraction")}];
}

- (void)trimScrubber:(id)a3 didTapTimelineAtTime:(id *)a4
{
  v6 = +[PUPhotoEditProtoSettings sharedInstance];
  v7 = [v6 tapTimelineToSeek];

  if (v7)
  {
    v8 = *&a4->var0;
    var3 = a4->var3;
    [(PUTrimToolController *)self setPlayheadTime:&v8];
  }
}

- (void)trimScrubber:(id)a3 didTapElement:(int64_t)a4
{
  if ([(PUTrimToolController *)self internalState:a3]!= 6)
  {
    if ([(PUTrimToolController *)self _showKeyFrameSelection])
    {
      v5 = 6;
    }

    else
    {
      v5 = 0;
    }

    [(PUTrimToolController *)self setInternalState:v5];
  }
}

- (void)setSlomoEnabled:(BOOL)a3
{
  if (self->_slomoEnabled != a3)
  {
    self->_slomoEnabled = a3;
    [(PUTrimToolController *)self _updateSlomoViewAnimated:1];
  }
}

- (void)_dismissKeyFramePickerAndResetToStillFrame
{
  v3 = [(PUTrimToolController *)self livePhotoKeyFramePickerAppearanceTimer];

  if (v3)
  {
    v4 = [(PUTrimToolController *)self livePhotoKeyFramePickerAppearanceTimer];
    [v4 invalidate];

    [(PUTrimToolController *)self setLivePhotoKeyFramePickerAppearanceTimer:0];
    v5 = [(PUTrimToolController *)self livePhotoKeyFramePicker];

    if (!v5)
    {
      [(PUTrimToolController *)self _resetScrubberToStillPhotoFrame];
    }
  }

  v6 = [(PUTrimToolController *)self livePhotoKeyFramePicker];

  if (v6)
  {
    objc_initWeak(&location, self);
    v7 = [(PUTrimToolController *)self livePhotoKeyFramePicker];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66__PUTrimToolController__dismissKeyFramePickerAndResetToStillFrame__block_invoke;
    v8[3] = &unk_1E7B80638;
    objc_copyWeak(&v9, &location);
    [v7 dismissViewControllerAnimated:0 completion:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __66__PUTrimToolController__dismissKeyFramePickerAndResetToStillFrame__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetScrubberToStillPhotoFrame];
}

- (void)setLayoutOrientation:(int64_t)a3
{
  self->_layoutOrientation = a3;
  [(PUTrimToolController *)self _dismissKeyFramePickerAndResetToStillFrame];

  [(PUTrimToolController *)self _resetScrubberToStillPhotoFrame];
}

- (void)_seekToTimeForElement:(int64_t)a3 exact:(BOOL)a4 forceSeek:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  memset(&v15, 0, sizeof(v15));
  trimScrubber = self->_trimScrubber;
  if (trimScrubber)
  {
    [(PXLivePhotoTrimScrubber *)trimScrubber timeForElement:a3];
  }

  if (a3 == 4)
  {
    time1 = v15;
    [(PUTrimToolController *)self _currentPlayerScaledTimeFromOriginalTime:&time1];
LABEL_11:
    v15 = time2;
    goto LABEL_12;
  }

  if (a3 == 3)
  {
    v10 = self->_trimScrubber;
    if (v10)
    {
      [(PXLivePhotoTrimScrubber *)v10 trimEndTime];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = v15;
    if (!CMTimeCompare(&time1, &time2))
    {
      [(PUTrimToolController *)self _frameDuration];
      v12 = v15;
      CMTimeSubtract(&time2, &v12, &time1);
      goto LABEL_11;
    }
  }

LABEL_12:
  v11 = [(PUTrimToolController *)self playerWrapper];
  time2 = v15;
  [v11 seekToTime:&time2 untrimmed:(a3 - 1) < 2 exact:v6 forceSeek:v5];

  time2 = v15;
  [(PUTrimToolController *)self setDebugPlayerTime:&time2];
}

- (void)setPlayheadTime:(id *)a3 forceSeek:(BOOL)a4
{
  v4 = a4;
  v6 = *a3;
  [(PXLivePhotoTrimScrubber *)self->_trimScrubber setKeyTime:&v6];
  [(PUTrimToolController *)self _seekToTimeForElement:4 exact:1 forceSeek:v4];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)playheadTime
{
  result = self->_trimScrubber;
  if (result)
  {
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result keyTime];
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return result;
}

- (UIButton)playPauseButton
{
  playPauseButton = self->_playPauseButton;
  if (!playPauseButton)
  {
    v4 = objc_alloc(MEMORY[0x1E69DC738]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = +[PUInterfaceManager currentTheme];
    v7 = [v6 videoEditingToolbarToolButtonColor];
    [(UIButton *)v5 setTintColor:v7];

    v8 = [MEMORY[0x1E69DCAB8] pu_PhotosUIImageNamed:@"PUVideoEditPlayButton"];
    v9 = [v8 imageWithRenderingMode:2];

    [(UIButton *)v5 setImage:v9 forState:0];
    [(UIButton *)v5 addTarget:self action:sel__handlePlayPauseButton_ forControlEvents:64];
    v10 = self->_playPauseButton;
    self->_playPauseButton = v5;

    [(PUTrimToolController *)self _updatePlayPauseButton];
    playPauseButton = self->_playPauseButton;
  }

  return playPauseButton;
}

- (void)setOriginalEndTime:(id *)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  p_originalEndTime = &self->_originalEndTime;
  time1 = self->_originalEndTime;
  v9 = *a3;
  if (CMTimeCompare(&time1, &v9))
  {
    v6 = *&a3->var0;
    p_originalEndTime->epoch = a3->var3;
    *&p_originalEndTime->value = v6;
    time1 = *a3;
    [(PXLivePhotoTrimScrubber *)self->_trimScrubber setOriginalEndTime:&time1];
    if (a3->var2)
    {
      time1 = *a3;
      v7 = [MEMORY[0x1E696B098] valueWithCMTime:&time1];
      v11[0] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [(PXLivePhotoTrimScrubber *)self->_trimScrubber setSnapTrimEndTimes:v8];
    }

    else
    {
      [(PXLivePhotoTrimScrubber *)self->_trimScrubber setSnapTrimEndTimes:0];
    }
  }
}

- (void)setOriginalStartTime:(id *)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  p_originalStartTime = &self->_originalStartTime;
  time1 = self->_originalStartTime;
  v9 = *a3;
  if (CMTimeCompare(&time1, &v9))
  {
    v6 = *&a3->var0;
    p_originalStartTime->epoch = a3->var3;
    *&p_originalStartTime->value = v6;
    time1 = *a3;
    [(PXLivePhotoTrimScrubber *)self->_trimScrubber setOriginalStartTime:&time1];
    if (a3->var2)
    {
      time1 = *a3;
      v7 = [MEMORY[0x1E696B098] valueWithCMTime:&time1];
      v11[0] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [(PXLivePhotoTrimScrubber *)self->_trimScrubber setSnapTrimStartTimes:v8];
    }

    else
    {
      [(PXLivePhotoTrimScrubber *)self->_trimScrubber setSnapTrimStartTimes:0];
    }
  }
}

- (void)_createRendererIfNeeded
{
  v3 = [(PUTrimToolController *)self renderer];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69BE658]);
    v5 = [(PUTrimToolController *)self editSource];
    v6 = [v4 initWithEditSource:v5];

    [(PUTrimToolController *)self setRenderer:v6];
  }
}

- (void)setPlaceholderImage:(id)a3
{
  v6 = a3;
  v4 = +[PUPhotoEditProtoSettings sharedInstance];
  v5 = [v4 disableVideoFilmstrip];

  if ((v5 & 1) == 0)
  {
    [(PXLivePhotoTrimScrubber *)self->_trimScrubber setPlaceholderImage:v6];
  }
}

- (void)livePhotoRenderDidChange:(BOOL)a3
{
  if (a3)
  {
    self->_needsUpdateRenderForVisualChanges = 1;
    v3 = [(PUTrimToolController *)self playerWrapper];
    [v3 invalidateComposition];
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = PUTrimToolController;
  [(PUTrimToolController *)&v6 touchesBegan:a3 withEvent:a4];
  focusTimelineAction = self->_focusTimelineAction;
  if (focusTimelineAction)
  {
    if (![(PXFocusTimelineAction *)focusTimelineAction kind])
    {
      [(PUTrimToolController *)self _hideScrubberTimelineOverlay];
    }
  }
}

- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  v5 = [a4 verticalSizeClass];
  v6 = [(PUTrimToolController *)self traitCollection];
  v7 = [v6 verticalSizeClass];

  if (v5 != v7)
  {
    v8 = [(PUTrimToolController *)self traitCollection];
    v9 = [v8 verticalSizeClass] == 1;

    trimScrubber = self->_trimScrubber;

    [(PXLivePhotoTrimScrubber *)trimScrubber setUseMiniScrubber:v9];
  }
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = PUTrimToolController;
  [(PUTrimToolController *)&v8 viewDidLayoutSubviews];
  v3 = [(PUTrimToolController *)self traitCollection];
  -[PXLivePhotoTrimScrubber setUseMiniScrubber:](self->_trimScrubber, "setUseMiniScrubber:", [v3 verticalSizeClass] == 1);

  v4 = [MEMORY[0x1E6979518] disableActions];
  [MEMORY[0x1E6979518] setDisableActions:0];
  v5 = [(PUTrimToolController *)self snapStripController];
  [v5 updateSnapStripView];

  [MEMORY[0x1E6979518] setDisableActions:v4];
  v6 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PUTrimToolController_viewDidLayoutSubviews__block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = self;
  dispatch_after(v6, MEMORY[0x1E69E96A0], block);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = PUTrimToolController;
  [(PUTrimToolController *)&v8 viewWillDisappear:a3];
  v4 = [(PUTrimToolController *)self livePhotoKeyFramePickerAppearanceTimer];

  if (v4)
  {
    v5 = [(PUTrimToolController *)self livePhotoKeyFramePickerAppearanceTimer];
    [v5 invalidate];

    [(PUTrimToolController *)self setLivePhotoKeyFramePickerAppearanceTimer:0];
  }

  v6 = [(PUTrimToolController *)self livePhotoKeyFramePicker];

  if (v6)
  {
    v7 = [(PUTrimToolController *)self livePhotoKeyFramePicker];
    [v7 dismissViewControllerAnimated:0 completion:0];

    [(PUTrimToolController *)self setLivePhotoKeyFramePicker:0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PUTrimToolController;
  [(PUTrimToolController *)&v4 viewWillAppear:a3];
  [(PUTrimToolController *)self _updatePlayheadStyle];
}

- (void)trimScrubber:(id)a3 debugEndOffset:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [(PUTrimToolController *)self view];
  [v9 convertRect:v10 toView:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  debugEndOffsetView = self->_debugEndOffsetView;

  [(UIView *)debugEndOffsetView setFrame:v12, v14, v16, v18];
}

- (void)trimScrubber:(id)a3 debugStartOffset:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [(PUTrimToolController *)self view];
  [v9 convertRect:v10 toView:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  debugStartOffsetView = self->_debugStartOffsetView;

  [(UIView *)debugStartOffsetView setFrame:v12, v14, v16, v18];
}

- (void)trimScrubber:(id)a3 debugEndRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [(PUTrimToolController *)self view];
  [v9 convertRect:v10 toView:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  debugEndRectView = self->_debugEndRectView;

  [(UIView *)debugEndRectView setFrame:v12, v14, v16, v18];
}

- (void)trimScrubber:(id)a3 debugStartRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [(PUTrimToolController *)self view];
  [v9 convertRect:v10 toView:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  debugStartRectView = self->_debugStartRectView;

  [(UIView *)debugStartRectView setFrame:v12, v14, v16, v18];
}

- (void)viewDidLoad
{
  v214[4] = *MEMORY[0x1E69E9840];
  v213.receiver = self;
  v213.super_class = PUTrimToolController;
  [(PUTrimToolController *)&v213 viewDidLoad];
  v210 = [(PUTrimToolController *)self playerWrapper];
  [v210 setPlayerObserver:self];
  v3 = objc_alloc_init(MEMORY[0x1E69C3670]);
  spec = self->_spec;
  self->_spec = v3;

  v5 = +[PUInterfaceManager currentTheme];
  v6 = [v5 photoEditingAdjustmentsBarDisabledColor];
  [(PXLivePhotoTrimScrubberSpec *)self->_spec setDisabledOverlayColor:v6];

  v7 = objc_alloc(MEMORY[0x1E69C3C10]);
  v8 = objc_opt_class();
  v9 = self->_spec;
  v10 = [(PUTrimToolController *)self px_extendedTraitCollection];
  v11 = [v7 initWithFilmStripViewClass:v8 spec:v9 traitCollection:v10];
  trimScrubber = self->_trimScrubber;
  self->_trimScrubber = v11;

  [(PXLivePhotoTrimScrubber *)self->_trimScrubber setAllowZoom:[(PUTrimToolController *)self playButtonEnabled]];
  [(PXLivePhotoTrimScrubber *)self->_trimScrubber setDelegate:self];
  v13 = +[PUPhotoEditProtoSettings sharedInstance];
  v14 = [v13 showVideoScrubberDebugOverlay];

  v206 = v14;
  [(PXLivePhotoTrimScrubber *)self->_trimScrubber setShowVideoScrubberDebugOverlay:v14];
  v15 = +[PUInterfaceManager currentTheme];
  v16 = [(PUTrimToolController *)self view];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = self->_trimScrubber;
  [(PXLivePhotoTrimScrubber *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [MEMORY[0x1E69DC730] effectWithStyle:6];
  v19 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v18];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = [v19 layer];
  [v20 setCornerRadius:5.0];

  [v19 setClipsToBounds:1];
  v21 = [v15 photoEditingTrimControllerBackgroundColor];
  [v19 setBackgroundColor:v21];

  v22 = 0.0;
  [v19 setAlpha:0.0];
  objc_storeStrong(&self->_auxilaryContainerView, v19);
  [v16 addSubview:self->_auxilaryContainerView];
  v208 = v18;
  v23 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v18];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = [v23 layer];
  [v24 setCornerRadius:5.0];

  [v23 setClipsToBounds:1];
  v209 = v15;
  v25 = [v15 photoEditingTrimControllerBackgroundColor];
  [v23 setBackgroundColor:v25];

  objc_storeStrong(&self->_scrubberPlayButtonContainerView, v23);
  [v16 addSubview:v23];
  v26 = [v23 contentView];
  [v26 addSubview:v17];

  v27 = [v23 topAnchor];
  v28 = [(PXLivePhotoTrimScrubber *)v17 topAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  [v29 setActive:1];

  v30 = [v23 bottomAnchor];
  v31 = [(PXLivePhotoTrimScrubber *)v17 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  [v32 setActive:1];

  v33 = [v23 rightAnchor];
  v212 = v17;
  v34 = [(PXLivePhotoTrimScrubber *)v17 rightAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  [v35 setActive:1];

  v36 = [v23 leftAnchor];
  v37 = [v16 leftAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:10.0];
  [v38 setActive:1];

  v39 = [v23 rightAnchor];
  v40 = [v16 rightAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:-10.0];
  [v41 setActive:1];

  v42 = [v19 leftAnchor];
  v43 = [v23 leftAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];
  [v44 setActive:1];

  v45 = [v19 rightAnchor];
  v46 = [v23 rightAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];
  [v47 setActive:1];

  if (self->_playButtonEnabled)
  {
    v22 = *MEMORY[0x1E69C4050];
  }

  v48 = [v19 heightAnchor];
  v49 = [v48 constraintEqualToConstant:v22];
  [v49 setActive:1];

  v50 = [v19 bottomAnchor];
  v51 = [v16 bottomAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];
  [v52 setActive:1];

  v211 = v19;
  v53 = v19;
  v54 = v23;
  v55 = [v53 topAnchor];
  v56 = [v23 bottomAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:3.0];
  [v57 setActive:1];

  if (self->_playButtonEnabled)
  {
    v58 = [(PUTrimToolController *)self playPauseButton];
    v59 = [v54 contentView];
    [v59 addSubview:v58];

    [v58 setTranslatesAutoresizingMaskIntoConstraints:0];
    v60 = [v54 centerYAnchor];
    v61 = [v58 centerYAnchor];
    v62 = [v60 constraintEqualToAnchor:v61 constant:0.0];
    [v62 setActive:1];

    v63 = [v54 leftAnchor];
    v64 = [v58 leftAnchor];
    v65 = [v63 constraintEqualToAnchor:v64 constant:0.0];
    [v65 setActive:1];

    v66 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v66 setTranslatesAutoresizingMaskIntoConstraints:0];
    v67 = [v66 widthAnchor];
    v68 = [v67 constraintEqualToConstant:1.0];
    [v68 setActive:1];

    v69 = [v54 contentView];
    [v69 addSubview:v66];

    v70 = [v66 leftAnchor];
    v71 = [v54 leftAnchor];
    [v70 constraintEqualToAnchor:v71 constant:47.0];
    v73 = v72 = v16;
    [v73 setActive:1];

    v74 = [v66 topAnchor];
    v75 = [v54 topAnchor];
    v76 = [v74 constraintEqualToAnchor:v75 constant:0.0];
    [v76 setActive:1];

    v77 = [v66 bottomAnchor];
    v78 = [v54 bottomAnchor];
    v79 = [v77 constraintEqualToAnchor:v78 constant:0.0];
    [v79 setActive:1];

    v80 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [v66 setBackgroundColor:v80];

    v81 = [(PXLivePhotoTrimScrubber *)v17 leftAnchor];
    v82 = [v66 rightAnchor];
    v83 = [v81 constraintEqualToAnchor:v82 constant:0.0];
    [v83 setActive:1];

    v16 = v72;
  }

  else
  {
    v58 = [v23 leftAnchor];
    v66 = [(PXLivePhotoTrimScrubber *)v17 leftAnchor];
    v81 = [v58 constraintEqualToAnchor:v66];
    [v81 setActive:1];
  }

  if ([(PUTrimToolController *)self isSlomoEnabled])
  {
    [(PUTrimToolController *)self _updateSlomoViewAnimated:0];
  }

  else if ([(PUTrimToolController *)self isPortraitVideo])
  {
    v84 = objc_alloc_init(MEMORY[0x1E69C3C08]);
    focusTimelineView = self->_focusTimelineView;
    self->_focusTimelineView = v84;

    [(PXFocusTimelineView *)self->_focusTimelineView setClipsToBounds:1];
    [(PXFocusTimelineView *)self->_focusTimelineView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PXFocusTimelineView *)self->_focusTimelineView setDelegate:self];
    v205 = v54;
    v86 = [v211 contentView];
    [v86 addSubview:self->_focusTimelineView];

    [v211 setAlpha:1.0];
    focusTimelineAction = self->_focusTimelineAction;
    self->_focusTimelineAction = 0;

    v88 = *MEMORY[0x1E69C4048] * 0.5;
    if (self->_playButtonEnabled)
    {
      v89 = 66.0;
    }

    else
    {
      v89 = 24.0;
    }

    v90 = [(PXFocusTimelineView *)self->_focusTimelineView leftAnchor];
    v91 = [v211 leftAnchor];
    v92 = [v90 constraintEqualToAnchor:v91 constant:v89 - v88];
    [v92 setActive:1];

    v93 = [(PXFocusTimelineView *)self->_focusTimelineView rightAnchor];
    v94 = [v211 rightAnchor];
    v95 = [v93 constraintEqualToAnchor:v94 constant:v88 + -18.0];
    [v95 setActive:1];

    v96 = [(PXFocusTimelineView *)self->_focusTimelineView topAnchor];
    v97 = [v211 topAnchor];
    v98 = [v96 constraintEqualToAnchor:v97];
    [v98 setActive:1];

    v99 = [(PXFocusTimelineView *)self->_focusTimelineView bottomAnchor];
    v100 = [v211 bottomAnchor];
    v101 = [v99 constraintEqualToAnchor:v100];
    [v101 setActive:1];

    v102 = objc_alloc_init(MEMORY[0x1E69DD250]);
    trimScrubberTimelineOverlayView = self->_trimScrubberTimelineOverlayView;
    self->_trimScrubberTimelineOverlayView = v102;

    v104 = [MEMORY[0x1E69DC888] blackColor];
    v105 = [v104 colorWithAlphaComponent:0.6];
    [(UIView *)self->_trimScrubberTimelineOverlayView setBackgroundColor:v105];

    [(UIView *)self->_trimScrubberTimelineOverlayView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_trimScrubberTimelineOverlayView setHidden:1];
    [(UIView *)self->_trimScrubberTimelineOverlayView setAlpha:0.0];
    [(PXLivePhotoTrimScrubber *)v17 addSubview:self->_trimScrubberTimelineOverlayView];
    v199 = MEMORY[0x1E696ACD8];
    v203 = [(UIView *)self->_trimScrubberTimelineOverlayView leadingAnchor];
    v202 = [(PXLivePhotoTrimScrubber *)v17 leadingAnchor];
    v201 = [v203 constraintEqualToAnchor:v202];
    v214[0] = v201;
    v200 = [(UIView *)self->_trimScrubberTimelineOverlayView trailingAnchor];
    v198 = [(PXLivePhotoTrimScrubber *)v17 trailingAnchor];
    v197 = [v200 constraintEqualToAnchor:v198];
    v214[1] = v197;
    v106 = [(UIView *)self->_trimScrubberTimelineOverlayView topAnchor];
    v107 = [(PXLivePhotoTrimScrubber *)v17 topAnchor];
    v108 = [v106 constraintEqualToAnchor:v107];
    v214[2] = v108;
    [(UIView *)self->_trimScrubberTimelineOverlayView bottomAnchor];
    v109 = v204 = v16;
    v110 = [(PXLivePhotoTrimScrubber *)v17 bottomAnchor];
    v111 = [v109 constraintEqualToAnchor:v110];
    v214[3] = v111;
    v112 = [MEMORY[0x1E695DEC8] arrayWithObjects:v214 count:4];
    [v199 activateConstraints:v112];

    v54 = v205;
    v113 = [MEMORY[0x1E69DC738] buttonWithType:0];
    trimScrubberTimelineOverlayButton = self->_trimScrubberTimelineOverlayButton;
    self->_trimScrubberTimelineOverlayButton = v113;

    v115 = [MEMORY[0x1E69DC888] blackColor];
    v116 = [v115 colorWithAlphaComponent:0.4];
    [(UIButton *)self->_trimScrubberTimelineOverlayButton setBackgroundColor:v116];

    v117 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIButton *)self->_trimScrubberTimelineOverlayButton setTintColor:v117];

    v118 = [(UIButton *)self->_trimScrubberTimelineOverlayButton layer];
    [v118 setMasksToBounds:1];

    v119 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.6];
    v120 = [v119 CGColor];
    v121 = [(UIButton *)self->_trimScrubberTimelineOverlayButton layer];
    [v121 setBorderColor:v120];

    v122 = [(UIButton *)self->_trimScrubberTimelineOverlayButton layer];
    [v122 setBorderWidth:1.0];

    [(UIButton *)self->_trimScrubberTimelineOverlayButton addTarget:self action:sel__handleScrubberTimelineOverlayButton_ forControlEvents:64];
    v16 = v204;
    [(UIView *)self->_trimScrubberTimelineOverlayView addSubview:self->_trimScrubberTimelineOverlayButton];
  }

  v123 = objc_alloc_init(MEMORY[0x1E69C3A60]);
  [v123 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 addSubview:v123];
  v124 = [v123 leftAnchor];
  v125 = [v16 leftAnchor];
  v126 = [v124 constraintEqualToAnchor:v125];
  [v126 setActive:1];

  v127 = [v123 rightAnchor];
  v128 = [v16 rightAnchor];
  v129 = [v127 constraintEqualToAnchor:v128];
  [v129 setActive:1];

  v130 = [v123 topAnchor];
  v131 = [v16 topAnchor];
  v132 = [v130 constraintEqualToAnchor:v131];
  [v132 setActive:1];

  v133 = [v123 heightAnchor];
  v134 = [v133 constraintEqualToConstant:12.0];
  [v134 setActive:1];

  v135 = [v54 topAnchor];
  v136 = [v123 bottomAnchor];
  v137 = [v135 constraintEqualToAnchor:v136 constant:5.0];
  [v137 setActive:1];

  v138 = objc_opt_new();
  v139 = objc_opt_new();
  [(PUTrimToolController *)self setSnapStripSpec:v139];

  v140 = [(PUTrimToolController *)self snapStripSpec];
  [v138 setSpec:v140];

  [v138 setTrimScrubber:self->_trimScrubber];
  [v138 setSnapStripView:v123];
  v141 = +[PUPhotoEditProtoSettings sharedInstance];
  [v138 setAllowStartEndTimeSnapIndicators:{objc_msgSend(v141, "loopBounceTrimAllowed")}];

  [(PUTrimToolController *)self setSnapStripController:v138];
  if (v206)
  {
    v142 = [MEMORY[0x1E69DB878] monospacedDigitSystemFontOfSize:12.0 weight:*MEMORY[0x1E69DB978]];
    v143 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    debugTimeCodeLabel = self->_debugTimeCodeLabel;
    self->_debugTimeCodeLabel = v143;

    [(UILabel *)self->_debugTimeCodeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_debugTimeCodeLabel setFont:v142];
    v145 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    debugPlayerTimeLabel = self->_debugPlayerTimeLabel;
    self->_debugPlayerTimeLabel = v145;

    [(UILabel *)self->_debugPlayerTimeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_debugPlayerTimeLabel setFont:v142];
    v147 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    debugOriginalTimeLabel = self->_debugOriginalTimeLabel;
    self->_debugOriginalTimeLabel = v147;

    [(UILabel *)self->_debugOriginalTimeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_debugOriginalTimeLabel setFont:v142];
    v149 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    debugTrimToolStateLabel = self->_debugTrimToolStateLabel;
    self->_debugTrimToolStateLabel = v149;

    [(UILabel *)self->_debugTrimToolStateLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v207 = v142;
    [(UILabel *)self->_debugTrimToolStateLabel setFont:v142];
    v151 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    debugTrimToolPlayheadStyleLabel = self->_debugTrimToolPlayheadStyleLabel;
    self->_debugTrimToolPlayheadStyleLabel = v151;

    [(UILabel *)self->_debugTrimToolPlayheadStyleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v153 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)self->_debugTrimToolPlayheadStyleLabel setTextColor:v153];

    [(UILabel *)self->_debugTrimToolPlayheadStyleLabel setFont:v142];
    v154 = objc_alloc_init(MEMORY[0x1E69DD250]);
    debugStartRectView = self->_debugStartRectView;
    self->_debugStartRectView = v154;

    v156 = [MEMORY[0x1E69DC888] magentaColor];
    [(UIView *)self->_debugStartRectView setBackgroundColor:v156];

    v157 = objc_alloc_init(MEMORY[0x1E69DD250]);
    debugEndRectView = self->_debugEndRectView;
    self->_debugEndRectView = v157;

    v159 = [MEMORY[0x1E69DC888] systemTealColor];
    v160 = [v159 colorWithAlphaComponent:0.5];
    [(UIView *)self->_debugEndRectView setBackgroundColor:v160];

    v161 = objc_alloc_init(MEMORY[0x1E69DD250]);
    debugStartOffsetView = self->_debugStartOffsetView;
    self->_debugStartOffsetView = v161;

    v163 = [MEMORY[0x1E69DC888] redColor];
    [(UIView *)self->_debugStartOffsetView setBackgroundColor:v163];

    v164 = objc_alloc_init(MEMORY[0x1E69DD250]);
    debugEndOffsetView = self->_debugEndOffsetView;
    self->_debugEndOffsetView = v164;

    v166 = [MEMORY[0x1E69DC888] blueColor];
    [(UIView *)self->_debugEndOffsetView setBackgroundColor:v166];

    [v16 addSubview:self->_debugTimeCodeLabel];
    [v16 addSubview:self->_debugPlayerTimeLabel];
    [v16 addSubview:self->_debugOriginalTimeLabel];
    [v16 addSubview:self->_debugTrimToolStateLabel];
    [v16 addSubview:self->_debugTrimToolPlayheadStyleLabel];
    [v16 addSubview:self->_debugStartRectView];
    [v16 addSubview:self->_debugEndRectView];
    [v16 addSubview:self->_debugStartOffsetView];
    [v16 addSubview:self->_debugEndOffsetView];
    v167 = [(UILabel *)self->_debugTimeCodeLabel leadingAnchor];
    v168 = [(UILabel *)self->_debugTrimToolStateLabel leadingAnchor];
    v169 = [v167 constraintEqualToAnchor:v168];
    [v169 setActive:1];

    v170 = [(UILabel *)self->_debugTimeCodeLabel bottomAnchor];
    v171 = [(UILabel *)self->_debugTrimToolStateLabel topAnchor];
    v172 = [v170 constraintEqualToAnchor:v171 constant:-4.0];
    [v172 setActive:1];

    v173 = [(UILabel *)self->_debugPlayerTimeLabel trailingAnchor];
    v174 = [(UILabel *)self->_debugTrimToolPlayheadStyleLabel trailingAnchor];
    v175 = [v173 constraintEqualToAnchor:v174];
    [v175 setActive:1];

    v176 = [(UILabel *)self->_debugPlayerTimeLabel bottomAnchor];
    v177 = [(UILabel *)self->_debugTimeCodeLabel bottomAnchor];
    v178 = [v176 constraintEqualToAnchor:v177];
    [v178 setActive:1];

    v179 = [(UILabel *)self->_debugOriginalTimeLabel trailingAnchor];
    v180 = [(UILabel *)self->_debugPlayerTimeLabel trailingAnchor];
    v181 = [v179 constraintEqualToAnchor:v180];
    [v181 setActive:1];

    v182 = [(UILabel *)self->_debugOriginalTimeLabel bottomAnchor];
    v183 = [(UILabel *)self->_debugPlayerTimeLabel topAnchor];
    v184 = [v182 constraintEqualToAnchor:v183 constant:-4.0];
    [v184 setActive:1];

    v185 = [(UILabel *)self->_debugTrimToolStateLabel leadingAnchor];
    v186 = [v16 leadingAnchor];
    v187 = [v185 constraintEqualToAnchor:v186 constant:10.0];
    [v187 setActive:1];

    v188 = [(UILabel *)self->_debugTrimToolStateLabel bottomAnchor];
    v189 = [v16 topAnchor];
    v190 = [v188 constraintEqualToAnchor:v189];
    [v190 setActive:1];

    v191 = [(UILabel *)self->_debugTrimToolPlayheadStyleLabel trailingAnchor];
    v192 = [v16 trailingAnchor];
    v193 = [v191 constraintEqualToAnchor:v192 constant:-10.0];
    [v193 setActive:1];

    v194 = [(UILabel *)self->_debugTrimToolPlayheadStyleLabel bottomAnchor];
    v195 = [v16 topAnchor];
    v196 = [v194 constraintEqualToAnchor:v195];
    [v196 setActive:1];

    [(PUTrimToolController *)self _updateDebugTimeCodeLabel];
    [(PUTrimToolController *)self _updateDebugPlayerTimeLabel];
    [(PUTrimToolController *)self _updateDebugTrimToolStateLabel];
    [(PUTrimToolController *)self _updateDebugPlayheadStyleLabel];
  }

  [(PUTrimToolController *)self _updateScrubberContents];
  [(PUTrimToolController *)self _updatePlayheadStyle];
  [(PUTrimToolController *)self _updateScrubberPresentedPlayhead];
}

- (void)compositionControllerDidChangeForAdjustments:(id)a3
{
  v10 = a3;
  v4 = [(PUTrimToolController *)self compositionController];
  v5 = [v4 adjustmentConstants];

  v6 = [v5 PITrimAdjustmentKey];
  if ([v10 containsObject:v6])
  {
    goto LABEL_4;
  }

  v7 = [v5 PILivePhotoKeyFrameAdjustmentKey];
  if ([v10 containsObject:v7])
  {

LABEL_4:
LABEL_5:
    [(PUTrimToolController *)self _updateScrubberTimes];
    goto LABEL_6;
  }

  v8 = [v5 PISlomoAdjustmentKey];
  v9 = [v10 containsObject:v8];

  if (v9)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (PUTrimToolController)initWithPlayerWrapper:(id)a3 playButtonEnabled:(BOOL)a4 slomoEnabled:(BOOL)a5 portraitVideoEnabled:(BOOL)a6
{
  v20[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v19.receiver = self;
  v19.super_class = PUTrimToolController;
  v12 = [(PUTrimToolController *)&v19 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    v12->_playButtonEnabled = a4;
    objc_storeStrong(&v12->_playerWrapper, a3);
    v13->_slomoEnabled = a5;
    v13->_isPortraitVideo = a6;
    v13->_currentlyInteractingElement = 0;
    v14 = [MEMORY[0x1E69BDD68] setCoalescerWithLabel:@"PUTrimToolController._updateVideoCoalescer" target:v13 queue:MEMORY[0x1E69E96A0] action:&__block_literal_global_90826];
    updateVideoCoalescer = v13->_updateVideoCoalescer;
    v13->_updateVideoCoalescer = v14;

    [(PUTrimToolController *)v13 px_enableExtendedTraitCollection];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v17 = [(PUTrimToolController *)v13 registerForTraitChanges:v16 withAction:sel_traitEnvironment_didChangeTraitCollection_];
  }

  return v13;
}

void __98__PUTrimToolController_initWithPlayerWrapper_playButtonEnabled_slomoEnabled_portraitVideoEnabled___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  [a4 delayNextInvocationByTimeInterval:0.5];
  [v5 _updateVideo];
}

@end