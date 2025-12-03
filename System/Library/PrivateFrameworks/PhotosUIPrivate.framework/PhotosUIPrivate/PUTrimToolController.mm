@interface PUTrimToolController
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_currentPlayerScaledTimeFromOriginalTime:(SEL)time;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_frameDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_originalTimeFromCurrentPlayerScaledTime:(SEL)time;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)adjustedStillFrameTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentStillFrameTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)playheadTime;
- (BOOL)_allowsKeyFrameCreation;
- (BOOL)_showKeyFrameSelection;
- (BOOL)slowMotionEditorRequestForceZoom:(id)zoom;
- (CGRect)_presentationRectFromLoupeRect;
- (PULivePhotoKeyFrameSelectionViewController)livePhotoKeyFramePicker;
- (PUTrimToolController)initWithPlayerWrapper:(id)wrapper playButtonEnabled:(BOOL)enabled slomoEnabled:(BOOL)slomoEnabled portraitVideoEnabled:(BOOL)videoEnabled;
- (PUTrimToolControllerDelegate)delegate;
- (UIButton)playPauseButton;
- (double)_frameRate;
- (id)_slomoMapperForCurrentConfiguration;
- (id)axDescriptionForFocusEventATime:(id *)time;
- (void)_createRendererIfNeeded;
- (void)_didCompleteInteractiveEditForElement:(int64_t)element atTime:(id *)time state:(unint64_t)state;
- (void)_dismissKeyFramePickerAndResetToStillFrame;
- (void)_handlePlayPauseButton:(id)button;
- (void)_handleScrubberTimelineOverlayButton:(id)button;
- (void)_hideScrubberTimelineOverlay;
- (void)_livePhotoKeyFramePickerDidDismiss:(id)dismiss;
- (void)_resetScrubberToStillPhotoFrame;
- (void)_seekToTimeForElement:(int64_t)element exact:(BOOL)exact forceSeek:(BOOL)seek;
- (void)_setPosterFrameTime:(id *)time onCompositionController:(id)controller;
- (void)_setState:(unint64_t)state;
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
- (void)_updateSlomoViewAnimated:(BOOL)animated;
- (void)_updateSnapStripController;
- (void)_updateSnappingDots;
- (void)_updateTimeCodeOverlay;
- (void)_updateVideo;
- (void)compositionControllerDidChangeForAdjustments:(id)adjustments;
- (void)didUpdateFocusEventsWithTimes:(id)times;
- (void)enableFocusTimeline:(BOOL)timeline;
- (void)focusTimeline:(id)timeline presentAction:(id)action locationInTimeline:(CGPoint)inTimeline;
- (void)focusTimeline:(id)timeline updateTrackingProgressShouldStop:(BOOL *)stop;
- (void)livePhotoRenderDidChange:(BOOL)change;
- (void)objectTrackingStartedAtTime:(id *)time;
- (void)pause;
- (void)play;
- (void)playerStatusChangedForPlayerWrapper:(id)wrapper;
- (void)popoverPresentationControllerDidDismissPopover:(id)popover;
- (void)releaseAVObjects;
- (void)setAdjustedStillFrameTime:(id *)time;
- (void)setCachedFrameDuration:(id *)duration;
- (void)setCompositionController:(id)controller;
- (void)setDebugPlayerTime:(id *)time;
- (void)setDisabled:(BOOL)disabled;
- (void)setEditSource:(id)source;
- (void)setInternalState:(unint64_t)state;
- (void)setLayoutOrientation:(int64_t)orientation;
- (void)setOriginalEndTime:(id *)time;
- (void)setOriginalStartTime:(id *)time;
- (void)setPlaceholderImage:(id)image;
- (void)setPlayheadStyle:(unint64_t)style;
- (void)setPlayheadTime:(id *)time forceSeek:(BOOL)seek;
- (void)setSlomoEnabled:(BOOL)enabled;
- (void)setSuggestedKeyFrameTime:(id *)time;
- (void)setUnadjustedAssetDuration:(id *)duration;
- (void)setUnadjustedStillImageTime:(id *)time;
- (void)showFocusTimeline:(BOOL)timeline;
- (void)slowMotionEditorDidBeginEditing:(id)editing withStartHandle:(BOOL)handle;
- (void)slowMotionEditorDidEndEditing:(id)editing;
- (void)slowMotionEditorEndValueChanged:(id)changed;
- (void)slowMotionEditorStartValueChanged:(id)changed;
- (void)stepByCount:(int64_t)count;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection;
- (void)trimScrubber:(id)scrubber debugEndOffset:(CGRect)offset;
- (void)trimScrubber:(id)scrubber debugEndRect:(CGRect)rect;
- (void)trimScrubber:(id)scrubber debugStartOffset:(CGRect)offset;
- (void)trimScrubber:(id)scrubber debugStartRect:(CGRect)rect;
- (void)trimScrubber:(id)scrubber didBeginInteractivelyEditingElement:(int64_t)element;
- (void)trimScrubber:(id)scrubber didChangeTimeForElement:(int64_t)element;
- (void)trimScrubber:(id)scrubber didEndInteractivelyEditingElement:(int64_t)element successful:(BOOL)successful;
- (void)trimScrubber:(id)scrubber didTapElement:(int64_t)element;
- (void)trimScrubber:(id)scrubber didTapTimelineAtTime:(id *)time;
- (void)trimScrubber:(id)scrubber didZoomToMinimumValue:(double)value maximumValue:(double)maximumValue;
- (void)trimScrubberAssetDurationDidChange:(id)change;
- (void)trimScrubberDidLayoutSubviews:(id)subviews;
- (void)trimScrubberDidUnzoom:(id)unzoom;
- (void)trimScrubberPausePlayer:(id)player;
- (void)updateFocusTimelineWithEvent:(id *)event userInitiated:(BOOL)initiated shouldAnimate:(BOOL)animate;
- (void)updateFocusTimelineWithTimeRange:(id *)range;
- (void)updateLivePortraitForKeyFrameChange:(id)change;
- (void)updateObjectTrackingProgressAtTime:(id *)time shouldStop:(BOOL *)stop;
- (void)userDidRequestToMakeKeyPhoto:(id)photo;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PUTrimToolController

- (void)setUnadjustedAssetDuration:(id *)duration
{
  var3 = duration->var3;
  *&self->_unadjustedAssetDuration.value = *&duration->var0;
  self->_unadjustedAssetDuration.epoch = var3;
}

- (void)setCachedFrameDuration:(id *)duration
{
  var3 = duration->var3;
  *&self->_cachedFrameDuration.value = *&duration->var0;
  self->_cachedFrameDuration.epoch = var3;
}

- (PULivePhotoKeyFrameSelectionViewController)livePhotoKeyFramePicker
{
  WeakRetained = objc_loadWeakRetained(&self->_livePhotoKeyFramePicker);

  return WeakRetained;
}

- (void)setSuggestedKeyFrameTime:(id *)time
{
  var3 = time->var3;
  *&self->_suggestedKeyFrameTime.value = *&time->var0;
  self->_suggestedKeyFrameTime.epoch = var3;
}

- (PUTrimToolControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)axDescriptionForFocusEventATime:(id *)time
{
  delegate = [(PUTrimToolController *)self delegate];
  v7 = *time;
  v5 = [delegate axDescriptionForFocusDecisionAtTime:&v7];

  return v5;
}

- (void)focusTimeline:(id)timeline updateTrackingProgressShouldStop:(BOOL *)stop
{
  if (self->_objectTrackingShouldStop)
  {
    *stop = 1;
  }
}

- (void)focusTimeline:(id)timeline presentAction:(id)action locationInTimeline:(CGPoint)inTimeline
{
  actionCopy = action;
  playerWrapper = [(PUTrimToolController *)self playerWrapper];
  [playerWrapper pause];

  playerWrapper2 = [(PUTrimToolController *)self playerWrapper];
  if (actionCopy)
  {
    [actionCopy time];
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  [playerWrapper2 seekToTime:v19];

  if ([actionCopy kind] == 2)
  {
    [(PUTrimToolController *)self _hideScrubberTimelineOverlay];
  }

  else
  {
    objc_storeStrong(&self->_focusTimelineAction, action);
    self->_objectTrackingShouldStop = 0;
    kind = [actionCopy kind];
    v11 = @"xmark";
    if (!kind)
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
    playPauseButton = [(PUTrimToolController *)self playPauseButton];
    [playPauseButton setEnabled:0];

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

    playPauseButton = [(PUTrimToolController *)self playPauseButton];
    [playPauseButton setEnabled:1];

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
    useMiniScrubber = [(PXLivePhotoTrimScrubber *)self->_trimScrubber useMiniScrubber];
    [(PUTrimToolController *)self scrubberHeight];
    v5 = -4.0;
    if (useMiniScrubber)
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
    layer = [(UIButton *)self->_trimScrubberTimelineOverlayButton layer];
    [layer setCornerRadius:v6 * 0.5];
  }
}

- (void)_handleScrubberTimelineOverlayButton:(id)button
{
  focusTimelineAction = self->_focusTimelineAction;
  if (focusTimelineAction)
  {
    kind = [(PXFocusTimelineAction *)focusTimelineAction kind];
    if (kind == 1)
    {
      self->_objectTrackingShouldStop = 1;
    }

    else if (!kind)
    {
      delegate = [(PUTrimToolController *)self delegate];
      v7 = self->_focusTimelineAction;
      if (v7)
      {
        [(PXFocusTimelineAction *)v7 time];
      }

      else
      {
        memset(v8, 0, sizeof(v8));
      }

      [delegate removeFocusDecisionAtTime:v8];
    }

    [(PUTrimToolController *)self _hideScrubberTimelineOverlay];
  }
}

- (BOOL)slowMotionEditorRequestForceZoom:(id)zoom
{
  slomoDraggingStartHandle = [(PUTrimToolController *)self slomoDraggingStartHandle];
  slomoView = self->_slomoView;
  if (slomoDraggingStartHandle)
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

- (void)slowMotionEditorEndValueChanged:(id)changed
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

- (void)slowMotionEditorStartValueChanged:(id)changed
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

- (void)slowMotionEditorDidEndEditing:(id)editing
{
  [(PUTrimToolController *)self setInternalState:0];
  compositionController = [(PUTrimToolController *)self compositionController];
  v5 = *MEMORY[0x1E69BE160];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__PUTrimToolController_slowMotionEditorDidEndEditing___block_invoke;
  v8[3] = &unk_1E7B7F748;
  v8[4] = self;
  [compositionController modifyAdjustmentWithKey:v5 modificationBlock:v8];

  [(PUTrimToolController *)self _updateCompositionController];
  [(PUTrimToolController *)self _updateDebugTimeCodeLabel];
  PLSAggregateDictionaryAddValueForScalarKey();
  delegate = [(PUTrimToolController *)self delegate];
  v7 = PULocalizedString(@"PHOTOEDIT_SLOMO_ACTION_TITLE");
  [delegate didModifyAdjustmentWithLocalizedName:v7];
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

- (void)slowMotionEditorDidBeginEditing:(id)editing withStartHandle:(BOOL)handle
{
  handleCopy = handle;
  delegate = [(PUTrimToolController *)self delegate];
  [delegate willModifyAdjustment];

  [(PUTrimToolController *)self setInternalState:3];
  [(PXLivePhotoTrimScrubber *)self->_trimScrubber setPlayheadStyle:0];
  [(PUTrimToolController *)self setSlomoDraggingStartHandle:handleCopy];
  [(PUTrimToolController *)self _updateTimeCodeOverlay];

  [(PUTrimToolController *)self _dismissKeyFramePickerAndResetToStillFrame];
}

- (void)updateLivePortraitForKeyFrameChange:(id)change
{
  changeCopy = change;
  delegate = [(PUTrimToolController *)self delegate];
  livePortraitBehaviorController = [delegate livePortraitBehaviorController];

  if (livePortraitBehaviorController)
  {
    [livePortraitBehaviorController applySideEffectsForAction:5 compositionController:changeCopy];
  }
}

- (void)userDidRequestToMakeKeyPhoto:(id)photo
{
  photoCopy = photo;
  livePhotoKeyFramePicker = [(PUTrimToolController *)self livePhotoKeyFramePicker];

  if (livePhotoKeyFramePicker == photoCopy)
  {
    delegate = [(PUTrimToolController *)self delegate];
    [delegate willModifyAdjustment];

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
    compositionController = [(PUTrimToolController *)self compositionController];
    [(PUTrimToolController *)self updateLivePortraitForKeyFrameChange:compositionController];

    [(PUTrimToolController *)self _updateScrubberTimes];
    delegate2 = [(PUTrimToolController *)self delegate];
    v10 = PULocalizedString(@"PHOTOEDIT_MAKE_KEY_FRAME_ACTION_TITLE");
    [delegate2 didModifyAdjustmentWithLocalizedName:v10];

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
    delegate3 = [(PUTrimToolController *)self delegate];
    v14 = delegate3;
    if (v12)
    {
      [delegate3 removeCropToolGainMap];
    }

    else
    {
      [delegate3 addCropToolGainMapIfNeeded];
    }

    objc_initWeak(&time1, self);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__PUTrimToolController_userDidRequestToMakeKeyPhoto___block_invoke;
    v15[3] = &unk_1E7B80610;
    objc_copyWeak(&v17, &time1);
    v16 = photoCopy;
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

- (void)popoverPresentationControllerDidDismissPopover:(id)popover
{
  presentedViewController = [popover presentedViewController];
  livePhotoKeyFramePicker = [(PUTrimToolController *)self livePhotoKeyFramePicker];

  if (presentedViewController == livePhotoKeyFramePicker)
  {
    livePhotoKeyFramePicker2 = [(PUTrimToolController *)self livePhotoKeyFramePicker];
    [(PUTrimToolController *)self _livePhotoKeyFramePickerDidDismiss:livePhotoKeyFramePicker2];
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

- (void)playerStatusChangedForPlayerWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v3 = wrapperCopy;
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
  compositionController = [(PUTrimToolController *)self compositionController];
  slomoAdjustmentController = [compositionController slomoAdjustmentController];

  memset(&v22, 0, sizeof(v22));
  if (slomoAdjustmentController)
  {
    [slomoAdjustmentController startTime];
    [slomoAdjustmentController endTime];
  }

  else
  {
    memset(&start, 0, 24);
    memset(&end, 0, 24);
  }

  CMTimeRangeFromTimeToTime(&v22, &start.start, &end.start);
  v20 = 0uLL;
  v21 = 0;
  currentVideoAsset = [(PUTrimToolController *)self currentVideoAsset];
  v6 = currentVideoAsset;
  if (currentVideoAsset)
  {
    [currentVideoAsset duration];
  }

  else
  {
    v20 = 0uLL;
    v21 = 0;
  }

  compositionController2 = [(PUTrimToolController *)self compositionController];
  trimAdjustmentController = [compositionController2 trimAdjustmentController];

  if (trimAdjustmentController)
  {
    v18 = 0uLL;
    v19 = 0;
    [trimAdjustmentController startTime];
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
  [slomoAdjustmentController rate];
  *&v12 = v11;
  start = v22;
  v13 = [v9 timeRangeMapperForSourceDuration:&start slowMotionRate:1 slowMotionTimeRange:Seconds forExport:v12];

  return v13;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_originalTimeFromCurrentPlayerScaledTime:(SEL)time
{
  *retstr = *a4;
  result = [(PUTrimToolController *)self isSlomoEnabled];
  if (result && (a4->var2 & 0x1D) == 1)
  {
    compositionController = [(PUTrimToolController *)self compositionController];
    trimAdjustmentController = [compositionController trimAdjustmentController];

    if (trimAdjustmentController)
    {
      [trimAdjustmentController startTime];
      v13 = *a4;
      CMTimeSubtract(&time, &v13, &rhs);
      *a4 = time;
    }

    _slomoMapperForCurrentConfiguration = [(PUTrimToolController *)self _slomoMapperForCurrentConfiguration];
    if (_slomoMapperForCurrentConfiguration)
    {
      time = *a4;
      Seconds = CMTimeGetSeconds(&time);
      *&Seconds = Seconds;
      [_slomoMapperForCurrentConfiguration originalTimeForScaledTime:Seconds];
      CMTimeMakeWithSeconds(retstr, v12, [MEMORY[0x1E69C0890] preferredTimeScale]);
    }

    if (trimAdjustmentController)
    {
      [trimAdjustmentController startTime];
      v13 = *retstr;
      CMTimeAdd(&time, &v13, &rhs);
      *retstr = time;
    }
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_currentPlayerScaledTimeFromOriginalTime:(SEL)time
{
  *retstr = *a4;
  result = [(PUTrimToolController *)self isSlomoEnabled];
  if (result && (a4->var2 & 0x1D) == 1)
  {
    compositionController = [(PUTrimToolController *)self compositionController];
    trimAdjustmentController = [compositionController trimAdjustmentController];

    if (trimAdjustmentController)
    {
      [trimAdjustmentController startTime];
      v13 = *a4;
      CMTimeSubtract(&time, &v13, &rhs);
      *a4 = time;
    }

    _slomoMapperForCurrentConfiguration = [(PUTrimToolController *)self _slomoMapperForCurrentConfiguration];
    if (_slomoMapperForCurrentConfiguration)
    {
      time = *a4;
      Seconds = CMTimeGetSeconds(&time);
      *&Seconds = Seconds;
      [_slomoMapperForCurrentConfiguration scaledTimeForOriginalTime:Seconds];
      CMTimeMakeWithSeconds(retstr, v12, [MEMORY[0x1E69C0890] preferredTimeScale]);
    }

    if (trimAdjustmentController)
    {
      [trimAdjustmentController startTime];
      v13 = *retstr;
      CMTimeAdd(&time, &v13, &rhs);
      *retstr = time;
    }
  }

  return result;
}

- (void)stepByCount:(int64_t)count
{
  playerWrapper = [(PUTrimToolController *)self playerWrapper];
  [(PUTrimToolController *)self playheadTime];
  [playerWrapper stepByCount:count playheadTime:v10];
  v6 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__PUTrimToolController_stepByCount___block_invoke;
  block[3] = &unk_1E7B80C38;
  block[4] = self;
  v9 = playerWrapper;
  v7 = playerWrapper;
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
  playerWrapper = [(PUTrimToolController *)self playerWrapper];
  [playerWrapper pause];
}

- (void)play
{
  playerWrapper = [(PUTrimToolController *)self playerWrapper];
  [playerWrapper play];
}

- (void)_handlePlayPauseButton:(id)button
{
  playerWrapper = [(PUTrimToolController *)self playerWrapper];
  if ([playerWrapper isPlaying])
  {
    [playerWrapper pause];
  }

  else
  {
    [playerWrapper play];
  }
}

- (void)_updatePlayPauseButton
{
  _playPauseButtonIfLoaded = [(PUTrimToolController *)self _playPauseButtonIfLoaded];
  if (_playPauseButtonIfLoaded)
  {
    playerWrapper = [(PUTrimToolController *)self playerWrapper];
    if ([playerWrapper isReadyToPlay])
    {
      [_playPauseButtonIfLoaded setEnabled:1];
      if ([playerWrapper isPlaying])
      {
        v4 = @"PUVideoEditPauseButton";
      }

      else
      {
        v4 = @"PUVideoEditPlayButton";
      }

      v5 = [MEMORY[0x1E69DCAB8] pu_PhotosUIImageNamed:v4];
      v6 = [v5 imageWithRenderingMode:2];

      [_playPauseButtonIfLoaded setImage:v6 forState:0];
    }

    else
    {
      [_playPauseButtonIfLoaded setEnabled:0];
    }
  }
}

- (void)_livePhotoKeyFramePickerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  livePhotoKeyFramePicker = [(PUTrimToolController *)self livePhotoKeyFramePicker];

  if (livePhotoKeyFramePicker == dismissCopy)
  {
    [(PUTrimToolController *)self setInternalState:0];
    [(PUTrimToolController *)self setLivePhotoKeyFramePicker:0];
    if ([(PXLivePhotoTrimScrubber *)self->_trimScrubber currentlyInteractingElement]!= 3)
    {
      currentEditSource = [(PUTrimToolController *)self currentEditSource];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        [(PUTrimToolController *)self _resetScrubberToStillPhotoFrame];
      }
    }

    snapStripController = [(PUTrimToolController *)self snapStripController];
    [snapStripController updateSnapStripView];
  }
}

- (CGRect)_presentationRectFromLoupeRect
{
  [(PXLivePhotoTrimScrubber *)self->_trimScrubber loupeRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  superview = [(PXLivePhotoTrimScrubber *)self->_trimScrubber superview];
  [superview convertPoint:self->_trimScrubber fromView:{v4, v6}];
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
    playerWrapper = [(PUTrimToolController *)self playerWrapper];
    v11 = *MEMORY[0x1E6960C70];
    v12 = *(MEMORY[0x1E6960C70] + 16);
    [playerWrapper seekToTime:&v11];
  }

  compositionController = [(PUTrimToolController *)self compositionController];
  trimAdjustmentController = [compositionController trimAdjustmentController];

  v11 = 0uLL;
  v12 = 0;
  if (trimAdjustmentController)
  {
    [trimAdjustmentController startTime];
    v9 = 0uLL;
    v10 = 0;
    [trimAdjustmentController endTime];
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
    currentVideoAsset = [(PUTrimToolController *)self currentVideoAsset];
    v8 = [v5 tracksWithMediaType:v6 forAsset:currentVideoAsset];
    firstObject = [v8 firstObject];
    [firstObject nominalFrameRate];
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
    currentVideoAsset = [(PUTrimToolController *)self currentVideoAsset];
    v9 = [v6 tracksWithMediaType:v7 forAsset:currentVideoAsset];

    firstObject = [v9 firstObject];
    *&retstr->var1 = 0;
    retstr->var3 = 0;
    retstr->var0 = 0;
    [MEMORY[0x1E69B3D40] minimumFrameDurationForAssetTrack:firstObject];
    v11 = *&retstr->var0;
    var3 = retstr->var3;
    [(PUTrimToolController *)self setCachedFrameDuration:&v11];
  }

  return result;
}

- (void)_updateSlomoViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
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
      contentView = [(UIVisualEffectView *)self->_auxilaryContainerView contentView];
      [contentView addSubview:self->_slomoView];

      leftAnchor = [(PXSlowMotionEditor *)self->_slomoView leftAnchor];
      leftAnchor2 = [(UIVisualEffectView *)self->_auxilaryContainerView leftAnchor];
      v10 = 66.0;
      if (!self->_playButtonEnabled)
      {
        v10 = 24.0;
      }

      v11 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v10];
      [v11 setActive:1];

      rightAnchor = [(PXSlowMotionEditor *)self->_slomoView rightAnchor];
      rightAnchor2 = [(UIVisualEffectView *)self->_auxilaryContainerView rightAnchor];
      v14 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-18.0];
      [v14 setActive:1];

      centerYAnchor = [(PXSlowMotionEditor *)self->_slomoView centerYAnchor];
      centerYAnchor2 = [(UIVisualEffectView *)self->_auxilaryContainerView centerYAnchor];
      v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
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
  if (animatedCopy)
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

  playerWrapper = [(PUTrimToolController *)self playerWrapper];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__PUTrimToolController__updateVideo__block_invoke;
  v5[3] = &unk_1E7B7F6F8;
  v5[4] = self;
  [playerWrapper requestAssetWithCompletion:v5];
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
      array = [v3 array];
      [(PXLivePhotoTrimScrubber *)self->_trimScrubber setSnapKeyTimes:array];
    }
  }
}

- (void)_updateScrubberFocusEventTimes
{
  focusEventTimes = self->_focusEventTimes;
  focusEventTimes = [(PXLivePhotoTrimScrubber *)self->_trimScrubber focusEventTimes];
  if (focusEventTimes == focusEventTimes)
  {

    MEMORY[0x1EEE66BB8](focusEventTimes, focusEventTimes);
  }

  else
  {
    v7 = focusEventTimes;
    v5 = [(NSArray *)focusEventTimes isEqual:focusEventTimes];

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
  compositionController = [(PUTrimToolController *)self compositionController];
  trimAdjustmentController = [compositionController trimAdjustmentController];

  memset(&v46[32], 0, 24);
  if (trimAdjustmentController)
  {
    [trimAdjustmentController startTime];
    if ((v46[44] & 1) == 0)
    {
      *&v46[32] = **&MEMORY[0x1E6960CC0];
    }

    memset(v46, 0, 24);
    [trimAdjustmentController endTime];
  }

  else
  {
    *&v46[32] = **&MEMORY[0x1E6960CC0];
    memset(v46, 0, 24);
  }

  currentVideoAsset = [(PUTrimToolController *)self currentVideoAsset];
  v6 = currentVideoAsset;
  if (currentVideoAsset)
  {
    [currentVideoAsset duration];
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

  compositionController2 = [(PUTrimToolController *)self compositionController];
  composition = [compositionController2 composition];
  mediaType = [composition mediaType];

  if (mediaType != 2 && ([(PUTrimToolController *)self currentStillFrameTime], (v41 & 1) != 0))
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
  playheadStyle = [(PUTrimToolController *)self playheadStyle];
  if (playheadStyle == 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2 * (playheadStyle == 2);
  }

  [(PXLivePhotoTrimScrubber *)self->_trimScrubber setPlayheadStyle:v16];
  v17 = +[PUPhotoEditProtoSettings sharedInstance];
  disableVideoFilmstrip = [v17 disableVideoFilmstrip];

  if ((disableVideoFilmstrip & 1) == 0)
  {
    v19 = self->_trimScrubber;
    playerWrapper = [(PUTrimToolController *)self playerWrapper];
    loupePlayerView = [playerWrapper loupePlayerView];
    [(PXLivePhotoTrimScrubber *)v19 setLoupePlayerView:loupePlayerView];
  }

  [(PUTrimToolController *)self _updateSnappingDots];
  [(PUTrimToolController *)self suggestedKeyFrameTime];
  if ((v40 & 1) == 0)
  {
    goto LABEL_31;
  }

  v22 = +[PUPhotoEditProtoSettings sharedInstance];
  showSuggestedKeyFrame = [v22 showSuggestedKeyFrame];

  if (!showSuggestedKeyFrame)
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
    compositionController3 = [(PUTrimToolController *)self compositionController];
    slomoAdjustmentController = [compositionController3 slomoAdjustmentController];

    memset(&time1, 0, sizeof(time1));
    if (slomoAdjustmentController)
    {
      [slomoAdjustmentController startTime];
      if ((time1.flags & 0x1D) == 1)
      {
        time2 = time1;
        [(PXSlowMotionEditor *)self->_slomoView setStartValue:CMTimeGetSeconds(&time2)];
      }

      memset(&time2, 0, sizeof(time2));
      [slomoAdjustmentController endTime];
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

    slomoTimeForPlayheadUpdate = [(PUTrimToolController *)self slomoTimeForPlayheadUpdate];

    if (slomoTimeForPlayheadUpdate)
    {
      slomoTimeForPlayheadUpdate2 = [(PUTrimToolController *)self slomoTimeForPlayheadUpdate];
      [slomoTimeForPlayheadUpdate2 floatValue];
      v33 = v32;

      CMTimeMakeWithSeconds(&v35, v33, 600);
      time = v35;
      [(PUTrimToolController *)self setPlayheadTime:&time];
    }

    [(PUTrimToolController *)self setSlomoTimeForPlayheadUpdate:0];
  }

  if (v26)
  {
    snapStripController = [(PUTrimToolController *)self snapStripController];
    [snapStripController updateSnapStripView];
  }
}

- (void)_updateScrubberContents
{
  trimScrubber = self->_trimScrubber;
  currentVideoAsset = [(PUTrimToolController *)self currentVideoAsset];
  currentVideoComposition = [(PUTrimToolController *)self currentVideoComposition];
  [(PXLivePhotoTrimScrubber *)trimScrubber setAsset:currentVideoAsset videoComposition:currentVideoComposition];

  [(PUTrimToolController *)self _updateScrubberTimes];

  [(PUTrimToolController *)self _updateSnapStripController];
}

- (void)_updatePlayerWrapperTrim
{
  compositionController = [(PUTrimToolController *)self compositionController];
  trimAdjustmentController = [compositionController trimAdjustmentController];

  v5 = *(MEMORY[0x1E6960C98] + 16);
  v13 = *MEMORY[0x1E6960C98];
  v14 = v5;
  v15 = *(MEMORY[0x1E6960C98] + 32);
  if ([trimAdjustmentController enabled])
  {
    v7 = 0uLL;
    *&v8 = 0;
    if (trimAdjustmentController)
    {
      [trimAdjustmentController startTime];
      memset(&v12, 0, sizeof(v12));
      [trimAdjustmentController endTime];
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
  delegate = [(PUTrimToolController *)self delegate];
  [delegate willModifyAdjustment];

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
  trimStatus = [(PXLivePhotoTrimScrubber *)v5 trimStatus];
  [(PUTrimToolController *)self _createRendererIfNeeded];
  renderer = [(PUTrimToolController *)self renderer];
  currentEditSource = [(PUTrimToolController *)self currentEditSource];
  compositionController = [(PUTrimToolController *)self compositionController];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__PUTrimToolController__updateCompositionController__block_invoke;
  v15[3] = &unk_1E7B7F6D0;
  v23 = v7;
  v19 = time;
  v16 = currentEditSource;
  selfCopy = self;
  v18 = trimStatus;
  v20 = v34;
  v21 = v35;
  v22 = v33;
  v12 = currentEditSource;
  [renderer applySourceChangesToCompositionAsynchronously:compositionController source:v12 withBlock:v15 completionBlock:0];

  [(PUTrimToolController *)self _updatePlayerWrapperTrim];
  [(PUTrimToolController *)self _updateSnappingDots];
  delegate2 = [(PUTrimToolController *)self delegate];
  v14 = PULocalizedString(@"PHOTOEDIT_TRIM_ACTION_TITLE");
  [delegate2 didModifyAdjustmentWithLocalizedName:v14];
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
  editSource = [(PUTrimToolController *)self editSource];
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

      view = [(PUTrimToolController *)self view];
      [view addSubview:self->_timeCodeOverlayView];

      topAnchor = [(PXLivePhotoTrimScrubber *)self->_trimScrubber topAnchor];
      bottomAnchor = [(PUTimeCodeOverlayView *)self->_timeCodeOverlayView bottomAnchor];
      v12 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:4.0];
      [v12 setActive:1];

      centerXAnchor = [(PUTimeCodeOverlayView *)self->_timeCodeOverlayView centerXAnchor];
      leftAnchor = [(PXLivePhotoTrimScrubber *)self->_trimScrubber leftAnchor];
      v15 = [centerXAnchor constraintEqualToAnchor:leftAnchor];
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
      currentlyInteractingElement = [(PXLivePhotoTrimScrubber *)self->_trimScrubber currentlyInteractingElement];
      trimScrubber = self->_trimScrubber;
      if (trimScrubber)
      {
        [(PXLivePhotoTrimScrubber *)trimScrubber timeForElement:currentlyInteractingElement];
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
    showFrameNumberOnVideoScrubber = [v30 showFrameNumberOnVideoScrubber];

    if (showFrameNumberOnVideoScrubber)
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
  playheadStyle = [(PUTrimToolController *)self playheadStyle];
  if (playheadStyle <= 2)
  {
    v4 = playheadStyle;
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
  delegate = [(PUTrimToolController *)self delegate];
  livePortraitBehaviorController = [delegate livePortraitBehaviorController];

  hasLivePortrait = [livePortraitBehaviorController hasLivePortrait];
  snapStripSpec = [(PUTrimToolController *)self snapStripSpec];
  [snapStripSpec setLivePortraitStyle:hasLivePortrait];
}

- (void)_updatePlayheadStyle
{
  currentEditSource = [(PUTrimToolController *)self currentEditSource];
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
      compositionController = [(PUTrimToolController *)self compositionController];
      v8 = compositionController;
      if (compositionController)
      {
        autoLoopAdjustmentController = [compositionController autoLoopAdjustmentController];
        flavor = [autoLoopAdjustmentController flavor];
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

  state = [(PUTrimToolController *)self state];
  if (state >= 2)
  {
    if (state == 3)
    {
      v6 = 2;
      goto LABEL_15;
    }

    if (state != 2)
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
  internalState = [(PUTrimToolController *)self internalState];
  if (internalState > 6)
  {
    v4 = 2;
  }

  else
  {
    v4 = qword_1B3D0D760[internalState];
  }

  [(PUTrimToolController *)self _setState:v4];
}

- (void)_updateDebugPlayheadStyleLabel
{
  debugTrimToolPlayheadStyleLabel = [(PUTrimToolController *)self debugTrimToolPlayheadStyleLabel];

  if (debugTrimToolPlayheadStyleLabel)
  {
    playheadStyle = [(PUTrimToolController *)self playheadStyle];
    if (playheadStyle <= 2)
    {
      v5 = off_1E7B7F788[playheadStyle];
      debugTrimToolPlayheadStyleLabel2 = [(PUTrimToolController *)self debugTrimToolPlayheadStyleLabel];
      [debugTrimToolPlayheadStyleLabel2 setText:v5];
    }
  }
}

- (void)_updateDebugTrimToolStateLabel
{
  debugTrimToolStateLabel = [(PUTrimToolController *)self debugTrimToolStateLabel];

  if (debugTrimToolStateLabel)
  {
    state = [(PUTrimToolController *)self state];
    if (state > 1)
    {
      if (state == 2)
      {
        internalState = [(PUTrimToolController *)self internalState];
        if (internalState - 2 > 3)
        {
          v10 = @"Unknown";
        }

        else
        {
          v10 = off_1E7B7F768[internalState - 2];
        }

        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Interacting(%@)", v10];
        debugTrimToolStateLabel2 = [(PUTrimToolController *)self debugTrimToolStateLabel];
        [debugTrimToolStateLabel2 setText:v11];

        yellowColor = [MEMORY[0x1E69DC888] yellowColor];
      }

      else
      {
        if (state != 3)
        {
          return;
        }

        debugTrimToolStateLabel3 = [(PUTrimToolController *)self debugTrimToolStateLabel];
        [debugTrimToolStateLabel3 setText:@"Picking"];

        yellowColor = [MEMORY[0x1E69DC888] magentaColor];
      }
    }

    else if (state)
    {
      if (state != 1)
      {
        return;
      }

      debugTrimToolStateLabel4 = [(PUTrimToolController *)self debugTrimToolStateLabel];
      [debugTrimToolStateLabel4 setText:@"Playing"];

      yellowColor = [MEMORY[0x1E69DC888] greenColor];
    }

    else
    {
      debugTrimToolStateLabel5 = [(PUTrimToolController *)self debugTrimToolStateLabel];
      [debugTrimToolStateLabel5 setText:@"Paused"];

      yellowColor = [MEMORY[0x1E69DC888] redColor];
    }

    v14 = yellowColor;
    debugTrimToolStateLabel6 = [(PUTrimToolController *)self debugTrimToolStateLabel];
    [debugTrimToolStateLabel6 setTextColor:v14];
  }
}

- (void)_updateDebugPlayerTimeLabel
{
  debugPlayerTimeLabel = [(PUTrimToolController *)self debugPlayerTimeLabel];

  if (debugPlayerTimeLabel)
  {
    memset(&v31, 0, sizeof(v31));
    currentVideoAsset = [(PUTrimToolController *)self currentVideoAsset];
    v5 = currentVideoAsset;
    if (currentVideoAsset)
    {
      [currentVideoAsset duration];
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
      debugPlayerTimeLabel2 = [(PUTrimToolController *)self debugPlayerTimeLabel];
      [debugPlayerTimeLabel2 setText:v9];

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
      debugOriginalTimeLabel = [(PUTrimToolController *)self debugOriginalTimeLabel];
      [debugOriginalTimeLabel setText:v14];
    }

    else
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = PXTrimTimeCodeStringFromSecondsAndRound();
      v18 = [v16 stringWithFormat:@"P:%@", v17];
      debugPlayerTimeLabel3 = [(PUTrimToolController *)self debugPlayerTimeLabel];
      [debugPlayerTimeLabel3 setText:v18];

      v20 = MEMORY[0x1E696AEC0];
      v12 = PXTrimTimeCodeStringFromSecondsAndRound();
      v21 = [v20 stringWithFormat:@"O:%@", v12];
      debugOriginalTimeLabel2 = [(PUTrimToolController *)self debugOriginalTimeLabel];
      [debugOriginalTimeLabel2 setText:v21];
    }

    greenColor = [MEMORY[0x1E69DC888] greenColor];
    debugPlayerTimeLabel4 = [(PUTrimToolController *)self debugPlayerTimeLabel];
    [debugPlayerTimeLabel4 setTextColor:greenColor];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    debugOriginalTimeLabel3 = [(PUTrimToolController *)self debugOriginalTimeLabel];
    [debugOriginalTimeLabel3 setTextColor:whiteColor];
  }
}

- (void)_updateDebugTimeCodeLabel
{
  debugTimeCodeLabel = [(PUTrimToolController *)self debugTimeCodeLabel];

  if (debugTimeCodeLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
    compositionController = [(PUTrimToolController *)self compositionController];
    trimAdjustmentController = [compositionController trimAdjustmentController];

    if (trimAdjustmentController)
    {
      [trimAdjustmentController startTime];
      Seconds = CMTimeGetSeconds(&time);
      [trimAdjustmentController endTime];
      v21 = CMTimeGetSeconds(&time);
      [v4 appendFormat:@"Trim(s:%.1f, e:%.1f, d:%.1f)", *&Seconds, *&v21, v21 - Seconds, time.value, *&time.timescale, time.epoch];
    }

    else
    {
      currentVideoAsset = [(PUTrimToolController *)self currentVideoAsset];
      v9 = currentVideoAsset;
      if (currentVideoAsset)
      {
        [currentVideoAsset duration];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      v10 = CMTimeGetSeconds(&time);

      [v4 appendFormat:@"Trim(s:%.1f, e:%.1f, d:%.1f)", 0, *&v10, *&v10, time.value, *&time.timescale, time.epoch];
    }

    compositionController2 = [(PUTrimToolController *)self compositionController];
    slomoAdjustmentController = [compositionController2 slomoAdjustmentController];

    if (slomoAdjustmentController)
    {
      [slomoAdjustmentController startTime];
      v13 = CMTimeGetSeconds(&time);
      [slomoAdjustmentController endTime];
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
    debugTimeCodeLabel2 = [(PUTrimToolController *)self debugTimeCodeLabel];
    [debugTimeCodeLabel2 setText:v4];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    debugTimeCodeLabel3 = [(PUTrimToolController *)self debugTimeCodeLabel];
    [debugTimeCodeLabel3 setTextColor:whiteColor];
  }
}

- (void)setDebugPlayerTime:(id *)time
{
  p_debugPlayerTime = &self->_debugPlayerTime;
  time1 = self->_debugPlayerTime;
  v7 = *time;
  if (CMTimeCompare(&time1, &v7))
  {
    v6 = *&time->var0;
    p_debugPlayerTime->epoch = time->var3;
    *&p_debugPlayerTime->value = v6;
    [(PUTrimToolController *)self _updateDebugPlayerTimeLabel];
  }
}

- (void)_setPosterFrameTime:(id *)time onCompositionController:(id)controller
{
  controllerCopy = controller;
  if ((time->var2 & 1) != 0 && (time1 = *time, time2 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1, &time2)))
  {
    v6 = *MEMORY[0x1E69BE188];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__PUTrimToolController__setPosterFrameTime_onCompositionController___block_invoke;
    v7[3] = &__block_descriptor_56_e48_v16__0__PIVideoPosterFrameAdjustmentController_8l;
    v8 = *&time->var0;
    var3 = time->var3;
    [controllerCopy modifyAdjustmentWithKey:v6 modificationBlock:v7];
  }

  else
  {
    [controllerCopy removeAdjustmentWithKey:*MEMORY[0x1E69BE188]];
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
  _allowsKeyFrameCreation = [(PUTrimToolController *)self _allowsKeyFrameCreation];
  if (_allowsKeyFrameCreation)
  {
    livePhotoKeyFramePickerAppearanceTimer = [(PUTrimToolController *)self livePhotoKeyFramePickerAppearanceTimer];

    if (livePhotoKeyFramePickerAppearanceTimer)
    {
      livePhotoKeyFramePickerAppearanceTimer2 = [(PUTrimToolController *)self livePhotoKeyFramePickerAppearanceTimer];
      [livePhotoKeyFramePickerAppearanceTimer2 invalidate];

      [(PUTrimToolController *)self setLivePhotoKeyFramePickerAppearanceTimer:0];
    }

    livePhotoKeyFramePicker = [(PUTrimToolController *)self livePhotoKeyFramePicker];

    if (livePhotoKeyFramePicker)
    {
      livePhotoKeyFramePicker2 = [(PUTrimToolController *)self livePhotoKeyFramePicker];
      [livePhotoKeyFramePicker2 dismissViewControllerAnimated:0 completion:0];

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

  return _allowsKeyFrameCreation;
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
  currentEditSource = [(PUTrimToolController *)self currentEditSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = +[PUPhotoEditProtoSettings sharedInstance];
    allowMakePosterFrameForVideo = [v3 allowMakePosterFrameForVideo];
  }

  else
  {
    allowMakePosterFrameForVideo = 0;
  }

  objc_opt_class();
  v5 = objc_opt_isKindOfClass() | allowMakePosterFrameForVideo;

  return v5 & 1;
}

- (void)setInternalState:(unint64_t)state
{
  if (self->_internalState != state)
  {
    self->_internalState = state;
    [(PUTrimToolController *)self _updatePublicState];
    [(PUTrimToolController *)self _updatePlayheadStyle];
    [(PUTrimToolController *)self _updateDebugTrimToolStateLabel];

    [(PUTrimToolController *)self _updateTimeCodeOverlay];
  }
}

- (void)setPlayheadStyle:(unint64_t)style
{
  if (self->_playheadStyle != style)
  {
    self->_playheadStyle = style;
    [(PUTrimToolController *)self _updateScrubberPresentedPlayhead];
    [(PUTrimToolController *)self _updatePlayerWrapperTimeObserver];

    [(PUTrimToolController *)self _updateDebugPlayheadStyleLabel];
  }
}

- (void)_setState:(unint64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    delegate = [(PUTrimToolController *)self delegate];
    [delegate trimToolControllerDidChange:self state:state];
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)adjustedStillFrameTime
{
  currentEditSource = [(PUTrimToolController *)self currentEditSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  compositionController = [(PUTrimToolController *)self compositionController];
  v8 = compositionController;
  if (isKindOfClass)
  {
    livePhotoKeyFrameAdjustmentController = [compositionController livePhotoKeyFrameAdjustmentController];

    v9 = livePhotoKeyFrameAdjustmentController;
    if (livePhotoKeyFrameAdjustmentController)
    {
      [livePhotoKeyFrameAdjustmentController keyFrameTime];
LABEL_6:
      v9 = livePhotoKeyFrameAdjustmentController;
      goto LABEL_8;
    }
  }

  else
  {
    livePhotoKeyFrameAdjustmentController = [compositionController videoPosterFrameAdjustmentController];

    v9 = livePhotoKeyFrameAdjustmentController;
    if (livePhotoKeyFrameAdjustmentController)
    {
      [livePhotoKeyFrameAdjustmentController posterFrameTime];
      goto LABEL_6;
    }
  }

  v10 = MEMORY[0x1E6960C70];
  *&retstr->var0 = *MEMORY[0x1E6960C70];
  retstr->var3 = *(v10 + 16);
LABEL_8:

  return result;
}

- (void)setAdjustedStillFrameTime:(id *)time
{
  currentEditSource = [(PUTrimToolController *)self currentEditSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PUTrimToolController *)self unadjustedStillImageTime];
    time1 = *time;
    if (CMTimeCompare(&time1, &time2))
    {
      var2 = time->var2;
      compositionController = [(PUTrimToolController *)self compositionController];
      compositionController2 = compositionController;
      v9 = *MEMORY[0x1E69BE030];
      if (var2)
      {
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __50__PUTrimToolController_setAdjustedStillFrameTime___block_invoke;
        v13[3] = &__block_descriptor_56_e49_v16__0__PILivePhotoKeyFrameAdjustmentController_8l;
        v14 = *&time->var0;
        var3 = time->var3;
        [compositionController modifyAdjustmentWithKey:v9 modificationBlock:v13];
      }

      else
      {
        [compositionController removeAdjustmentWithKey:v9];
      }
    }

    else
    {
      compositionController2 = [(PUTrimToolController *)self compositionController];
      compositionController3 = [(PUTrimToolController *)self compositionController];
      adjustmentConstants = [compositionController3 adjustmentConstants];
      pILivePhotoKeyFrameAdjustmentKey = [adjustmentConstants PILivePhotoKeyFrameAdjustmentKey];
      [compositionController2 removeAdjustmentWithKey:pILivePhotoKeyFrameAdjustmentKey];
    }
  }

  else
  {
    compositionController2 = [(PUTrimToolController *)self compositionController];
    time2 = *time;
    [(PUTrimToolController *)self _setPosterFrameTime:&time2 onCompositionController:compositionController2];
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

- (void)updateObjectTrackingProgressAtTime:(id *)time shouldStop:(BOOL *)stop
{
  focusTimelineView = self->_focusTimelineView;
  v5 = *time;
  [(PXFocusTimelineView *)focusTimelineView updateObjectTrackingProgressAtTime:&v5 shouldStop:stop];
}

- (void)objectTrackingStartedAtTime:(id *)time
{
  focusTimelineView = self->_focusTimelineView;
  v4 = *time;
  [(PXFocusTimelineView *)focusTimelineView objectTrackingStartedAtTime:&v4];
}

- (void)didUpdateFocusEventsWithTimes:(id)times
{
  objc_storeStrong(&self->_focusEventTimes, times);

  [(PUTrimToolController *)self _updateScrubberFocusEventTimes];
}

- (void)updateFocusTimelineWithEvent:(id *)event userInitiated:(BOOL)initiated shouldAnimate:(BOOL)animate
{
  focusTimelineView = self->_focusTimelineView;
  v6 = *event;
  [(PXFocusTimelineView *)focusTimelineView addFocusEvent:&v6 userInitiated:initiated shouldAnimate:animate];
}

- (void)updateFocusTimelineWithTimeRange:(id *)range
{
  v3 = *&range->var0.var3;
  v4[0] = *&range->var0.var0;
  v4[1] = v3;
  v4[2] = *&range->var1.var1;
  [(PXFocusTimelineView *)self->_focusTimelineView setTimeRange:v4];
}

- (void)showFocusTimeline:(BOOL)timeline
{
  v3 = 0.0;
  if (timeline)
  {
    v3 = 1.0;
  }

  [(UIVisualEffectView *)self->_auxilaryContainerView setAlpha:v3];
}

- (void)enableFocusTimeline:(BOOL)timeline
{
  self->_portraitVideoEnabled = timeline;
  v4 = !timeline;
  [(PXFocusTimelineView *)self->_focusTimelineView setDimmed:!timeline];
  if (v4)
  {

    [(PUTrimToolController *)self _hideScrubberTimelineOverlay];
  }

  else
  {

    [(PUTrimToolController *)self _updateScrubberFocusEventTimes];
  }
}

- (void)setDisabled:(BOOL)disabled
{
  if (self->_disabled != disabled)
  {
    disabledCopy = disabled;
    self->_disabled = disabled;
    view = [(PUTrimToolController *)self view];
    [view setUserInteractionEnabled:disabledCopy ^ 1];

    [(PXLivePhotoTrimScrubber *)self->_trimScrubber setDisabled:disabledCopy];
    snapStripController = [(PUTrimToolController *)self snapStripController];
    [snapStripController updateSnapStripView];
  }
}

- (void)setEditSource:(id)source
{
  sourceCopy = source;
  if (self->_editSource != sourceCopy)
  {
    objc_storeStrong(&self->_editSource, source);
    currentEditSource = [(PUTrimToolController *)self currentEditSource];
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
      videoEditSource = currentEditSource;
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

      videoEditSource = [currentEditSource videoEditSource];
    }

    v10 = videoEditSource;
    if (videoEditSource)
    {
      v11 = MEMORY[0x1E6987E28];
      videoURL = [videoEditSource videoURL];
      v13 = [v11 assetWithURL:videoURL];

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

- (void)setCompositionController:(id)controller
{
  controllerCopy = controller;
  if (self->_compositionController != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->_compositionController, controller);
    [(PUTrimToolController *)self _updatePlayheadStyle];
    [(PUTrimToolController *)self _updateScrubberContents];
    [(PUTrimToolController *)self _updatePlayerWrapperTrim];
    [(PUTrimToolController *)self _updateDebugTimeCodeLabel];
    [(PUTrimToolController *)self _updateSnapStripController];
    controllerCopy = v6;
  }
}

- (void)setUnadjustedStillImageTime:(id *)time
{
  p_unadjustedStillImageTime = &self->_unadjustedStillImageTime;
  time1 = *time;
  unadjustedStillImageTime = self->_unadjustedStillImageTime;
  if (CMTimeCompare(&time1, &unadjustedStillImageTime))
  {
    v6 = *&time->var0;
    p_unadjustedStillImageTime->epoch = time->var3;
    *&p_unadjustedStillImageTime->value = v6;
    [(PUTrimToolController *)self _updateScrubberContents];
    snapStripController = [(PUTrimToolController *)self snapStripController];
    [snapStripController updateSnapStripView];
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

- (void)trimScrubberDidLayoutSubviews:(id)subviews
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

- (void)trimScrubberPausePlayer:(id)player
{
  _playPauseButtonIfLoaded = [(PUTrimToolController *)self _playPauseButtonIfLoaded];
  window = [_playPauseButtonIfLoaded window];

  if (window)
  {
    playerWrapper = [(PUTrimToolController *)self playerWrapper];
    [playerWrapper pause];
  }
}

- (void)trimScrubberDidUnzoom:(id)unzoom
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

- (void)trimScrubber:(id)scrubber didZoomToMinimumValue:(double)value maximumValue:(double)maximumValue
{
  [(PXSlowMotionEditor *)self->_slomoView setZoomMinValue:scrubber maxValue:?];
  if ([(PUTrimToolController *)self isPortraitVideo])
  {
    [(PXFocusTimelineView *)self->_focusTimelineView setZoomMinValue:value maxValue:maximumValue];
  }

  [(PUTrimToolController *)self _updateDebugTimeCodeLabel];
}

- (void)trimScrubberAssetDurationDidChange:(id)change
{
  snapStripController = [(PUTrimToolController *)self snapStripController];
  [snapStripController updateSnapStripView];
}

- (void)trimScrubber:(id)scrubber didChangeTimeForElement:(int64_t)element
{
  if ([scrubber currentlyInteractingElement])
  {
    [(PUTrimToolController *)self _seekToTimeForElement:element exact:1];
    snapStripController = [(PUTrimToolController *)self snapStripController];
    [snapStripController updateSnapStripView];

    [(PUTrimToolController *)self _updateTimeCodeOverlay];
  }
}

- (void)_didCompleteInteractiveEditForElement:(int64_t)element atTime:(id *)time state:(unint64_t)state
{
  v9 = element - 1;
  currentEditSource = [(PUTrimToolController *)self currentEditSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (v9 <= 1 && (isKindOfClass & 1) != 0)
  {
    v13 = *&time->var0;
    var3 = time->var3;
    [(PUTrimToolController *)self setPlayheadTime:&v13 forceSeek:1];
  }

  self->_currentlyInteractingElement = 0;
  [(PUTrimToolController *)self setInternalState:state];
  delegate = [(PUTrimToolController *)self delegate];
  [delegate trimToolController:self didEndInteractivelyEditingElement:element];
}

- (void)trimScrubber:(id)scrubber didEndInteractivelyEditingElement:(int64_t)element successful:(BOOL)successful
{
  successfulCopy = successful;
  scrubberCopy = scrubber;
  if (element != 3)
  {
    _playPauseButtonIfLoaded = [(PUTrimToolController *)self _playPauseButtonIfLoaded];
    window = [_playPauseButtonIfLoaded window];

    if (element == 4)
    {
      if (window)
      {
        v11 = +[PUPhotoEditProtoSettings sharedInstance];
        pauseAfterMovingPlayhead = [v11 pauseAfterMovingPlayhead];

        if (pauseAfterMovingPlayhead)
        {
          playerWrapper = [(PUTrimToolController *)self playerWrapper];
          [playerWrapper pause];
        }

        [(PUTrimToolController *)self _seekToTimeForElement:4 exact:1 forceSeek:1];
      }
    }
  }

  memset(&location[1], 0, sizeof(CMTime));
  trimScrubber = self->_trimScrubber;
  if (trimScrubber)
  {
    [(PXLivePhotoTrimScrubber *)trimScrubber timeForElement:element];
  }

  if ((element - 1) > 1)
  {
    if ((element - 3) <= 1)
    {
      if (successfulCopy)
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
        requireTapToShowMakePosterFrame = [v22 requireTapToShowMakePosterFrame];

        v24 = 0;
        if (v21 && (requireTapToShowMakePosterFrame & 1) == 0)
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
    [(PUTrimToolController *)self _didCompleteInteractiveEditForElement:element atTime:location state:v24];
    goto LABEL_23;
  }

  [MEMORY[0x1E69B3C60] begin];
  [(PUTrimToolController *)self _updateCompositionController];
  playerWrapper2 = [(PUTrimToolController *)self playerWrapper];
  location[0] = **&MEMORY[0x1E6960C70];
  [playerWrapper2 seekToTime:location];

  objc_initWeak(location, self);
  v16 = MEMORY[0x1E69B3C60];
  v17 = MEMORY[0x1E69E96A0];
  v18 = MEMORY[0x1E69E96A0];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __82__PUTrimToolController_trimScrubber_didEndInteractivelyEditingElement_successful___block_invoke;
  v28[3] = &unk_1E7B7F5D8;
  objc_copyWeak(v29, location);
  v29[1] = element;
  v30 = location[1];
  [v16 commitAndNotifyOnQueue:v17 withBlock:v28];

  snapStripController = [(PUTrimToolController *)self snapStripController];
  [snapStripController updateSnapStripView];

  [(PUTrimToolController *)self _updateDebugTimeCodeLabel];
  objc_destroyWeak(v29);
  objc_destroyWeak(location);
LABEL_23:
  [(PUTrimToolController *)self setIsPerformingLiveInteraction:0];
  delegate = [(PUTrimToolController *)self delegate];
  [delegate trimToolController:self didChangeIsPerformingLiveInteraction:{-[PUTrimToolController isPerformingLiveInteraction](self, "isPerformingLiveInteraction")}];
}

void __82__PUTrimToolController_trimScrubber_didEndInteractivelyEditingElement_successful___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  [WeakRetained _didCompleteInteractiveEditForElement:v3 atTime:&v4 state:0];
}

- (void)trimScrubber:(id)scrubber didBeginInteractivelyEditingElement:(int64_t)element
{
  scrubberCopy = scrubber;
  v6 = 0;
  self->_currentlyInteractingElement = element;
  v7 = 1;
  if ((element - 1) < 2)
  {
    v8 = 2;
  }

  else if (element == 4)
  {
    v7 = 0;
    v6 = 1;
    v8 = 4;
  }

  else
  {
    if (element != 3)
    {
      goto LABEL_8;
    }

    v6 = 0;
    v8 = 5;
  }

  [(PUTrimToolController *)self setInternalState:v8];
LABEL_8:
  [(PUTrimToolController *)self _seekToTimeForElement:element exact:v7 forceSeek:v6];
  snapStripController = [(PUTrimToolController *)self snapStripController];
  [snapStripController updateSnapStripView];

  livePhotoKeyFramePickerAppearanceTimer = [(PUTrimToolController *)self livePhotoKeyFramePickerAppearanceTimer];

  if (livePhotoKeyFramePickerAppearanceTimer)
  {
    livePhotoKeyFramePickerAppearanceTimer2 = [(PUTrimToolController *)self livePhotoKeyFramePickerAppearanceTimer];
    [livePhotoKeyFramePickerAppearanceTimer2 invalidate];

    [(PUTrimToolController *)self setLivePhotoKeyFramePickerAppearanceTimer:0];
  }

  livePhotoKeyFramePicker = [(PUTrimToolController *)self livePhotoKeyFramePicker];

  if (livePhotoKeyFramePicker)
  {
    livePhotoKeyFramePicker2 = [(PUTrimToolController *)self livePhotoKeyFramePicker];
    [livePhotoKeyFramePicker2 dismissViewControllerAnimated:0 completion:0];
  }

  delegate = [(PUTrimToolController *)self delegate];
  [delegate trimToolController:self didBeginInteractivelyEditingElement:element];

  [(PUTrimToolController *)self setIsPerformingLiveInteraction:1];
  delegate2 = [(PUTrimToolController *)self delegate];
  [delegate2 trimToolController:self didChangeIsPerformingLiveInteraction:{-[PUTrimToolController isPerformingLiveInteraction](self, "isPerformingLiveInteraction")}];
}

- (void)trimScrubber:(id)scrubber didTapTimelineAtTime:(id *)time
{
  v6 = +[PUPhotoEditProtoSettings sharedInstance];
  tapTimelineToSeek = [v6 tapTimelineToSeek];

  if (tapTimelineToSeek)
  {
    v8 = *&time->var0;
    var3 = time->var3;
    [(PUTrimToolController *)self setPlayheadTime:&v8];
  }
}

- (void)trimScrubber:(id)scrubber didTapElement:(int64_t)element
{
  if ([(PUTrimToolController *)self internalState:scrubber]!= 6)
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

- (void)setSlomoEnabled:(BOOL)enabled
{
  if (self->_slomoEnabled != enabled)
  {
    self->_slomoEnabled = enabled;
    [(PUTrimToolController *)self _updateSlomoViewAnimated:1];
  }
}

- (void)_dismissKeyFramePickerAndResetToStillFrame
{
  livePhotoKeyFramePickerAppearanceTimer = [(PUTrimToolController *)self livePhotoKeyFramePickerAppearanceTimer];

  if (livePhotoKeyFramePickerAppearanceTimer)
  {
    livePhotoKeyFramePickerAppearanceTimer2 = [(PUTrimToolController *)self livePhotoKeyFramePickerAppearanceTimer];
    [livePhotoKeyFramePickerAppearanceTimer2 invalidate];

    [(PUTrimToolController *)self setLivePhotoKeyFramePickerAppearanceTimer:0];
    livePhotoKeyFramePicker = [(PUTrimToolController *)self livePhotoKeyFramePicker];

    if (!livePhotoKeyFramePicker)
    {
      [(PUTrimToolController *)self _resetScrubberToStillPhotoFrame];
    }
  }

  livePhotoKeyFramePicker2 = [(PUTrimToolController *)self livePhotoKeyFramePicker];

  if (livePhotoKeyFramePicker2)
  {
    objc_initWeak(&location, self);
    livePhotoKeyFramePicker3 = [(PUTrimToolController *)self livePhotoKeyFramePicker];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66__PUTrimToolController__dismissKeyFramePickerAndResetToStillFrame__block_invoke;
    v8[3] = &unk_1E7B80638;
    objc_copyWeak(&v9, &location);
    [livePhotoKeyFramePicker3 dismissViewControllerAnimated:0 completion:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __66__PUTrimToolController__dismissKeyFramePickerAndResetToStillFrame__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetScrubberToStillPhotoFrame];
}

- (void)setLayoutOrientation:(int64_t)orientation
{
  self->_layoutOrientation = orientation;
  [(PUTrimToolController *)self _dismissKeyFramePickerAndResetToStillFrame];

  [(PUTrimToolController *)self _resetScrubberToStillPhotoFrame];
}

- (void)_seekToTimeForElement:(int64_t)element exact:(BOOL)exact forceSeek:(BOOL)seek
{
  seekCopy = seek;
  exactCopy = exact;
  memset(&v15, 0, sizeof(v15));
  trimScrubber = self->_trimScrubber;
  if (trimScrubber)
  {
    [(PXLivePhotoTrimScrubber *)trimScrubber timeForElement:element];
  }

  if (element == 4)
  {
    time1 = v15;
    [(PUTrimToolController *)self _currentPlayerScaledTimeFromOriginalTime:&time1];
LABEL_11:
    v15 = time2;
    goto LABEL_12;
  }

  if (element == 3)
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
  playerWrapper = [(PUTrimToolController *)self playerWrapper];
  time2 = v15;
  [playerWrapper seekToTime:&time2 untrimmed:(element - 1) < 2 exact:exactCopy forceSeek:seekCopy];

  time2 = v15;
  [(PUTrimToolController *)self setDebugPlayerTime:&time2];
}

- (void)setPlayheadTime:(id *)time forceSeek:(BOOL)seek
{
  seekCopy = seek;
  v6 = *time;
  [(PXLivePhotoTrimScrubber *)self->_trimScrubber setKeyTime:&v6];
  [(PUTrimToolController *)self _seekToTimeForElement:4 exact:1 forceSeek:seekCopy];
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
    videoEditingToolbarToolButtonColor = [v6 videoEditingToolbarToolButtonColor];
    [(UIButton *)v5 setTintColor:videoEditingToolbarToolButtonColor];

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

- (void)setOriginalEndTime:(id *)time
{
  v11[1] = *MEMORY[0x1E69E9840];
  p_originalEndTime = &self->_originalEndTime;
  time1 = self->_originalEndTime;
  v9 = *time;
  if (CMTimeCompare(&time1, &v9))
  {
    v6 = *&time->var0;
    p_originalEndTime->epoch = time->var3;
    *&p_originalEndTime->value = v6;
    time1 = *time;
    [(PXLivePhotoTrimScrubber *)self->_trimScrubber setOriginalEndTime:&time1];
    if (time->var2)
    {
      time1 = *time;
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

- (void)setOriginalStartTime:(id *)time
{
  v11[1] = *MEMORY[0x1E69E9840];
  p_originalStartTime = &self->_originalStartTime;
  time1 = self->_originalStartTime;
  v9 = *time;
  if (CMTimeCompare(&time1, &v9))
  {
    v6 = *&time->var0;
    p_originalStartTime->epoch = time->var3;
    *&p_originalStartTime->value = v6;
    time1 = *time;
    [(PXLivePhotoTrimScrubber *)self->_trimScrubber setOriginalStartTime:&time1];
    if (time->var2)
    {
      time1 = *time;
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
  renderer = [(PUTrimToolController *)self renderer];

  if (!renderer)
  {
    v4 = objc_alloc(MEMORY[0x1E69BE658]);
    editSource = [(PUTrimToolController *)self editSource];
    v6 = [v4 initWithEditSource:editSource];

    [(PUTrimToolController *)self setRenderer:v6];
  }
}

- (void)setPlaceholderImage:(id)image
{
  imageCopy = image;
  v4 = +[PUPhotoEditProtoSettings sharedInstance];
  disableVideoFilmstrip = [v4 disableVideoFilmstrip];

  if ((disableVideoFilmstrip & 1) == 0)
  {
    [(PXLivePhotoTrimScrubber *)self->_trimScrubber setPlaceholderImage:imageCopy];
  }
}

- (void)livePhotoRenderDidChange:(BOOL)change
{
  if (change)
  {
    self->_needsUpdateRenderForVisualChanges = 1;
    playerWrapper = [(PUTrimToolController *)self playerWrapper];
    [playerWrapper invalidateComposition];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = PUTrimToolController;
  [(PUTrimToolController *)&v6 touchesBegan:began withEvent:event];
  focusTimelineAction = self->_focusTimelineAction;
  if (focusTimelineAction)
  {
    if (![(PXFocusTimelineAction *)focusTimelineAction kind])
    {
      [(PUTrimToolController *)self _hideScrubberTimelineOverlay];
    }
  }
}

- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection
{
  verticalSizeClass = [collection verticalSizeClass];
  traitCollection = [(PUTrimToolController *)self traitCollection];
  verticalSizeClass2 = [traitCollection verticalSizeClass];

  if (verticalSizeClass != verticalSizeClass2)
  {
    traitCollection2 = [(PUTrimToolController *)self traitCollection];
    v9 = [traitCollection2 verticalSizeClass] == 1;

    trimScrubber = self->_trimScrubber;

    [(PXLivePhotoTrimScrubber *)trimScrubber setUseMiniScrubber:v9];
  }
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = PUTrimToolController;
  [(PUTrimToolController *)&v8 viewDidLayoutSubviews];
  traitCollection = [(PUTrimToolController *)self traitCollection];
  -[PXLivePhotoTrimScrubber setUseMiniScrubber:](self->_trimScrubber, "setUseMiniScrubber:", [traitCollection verticalSizeClass] == 1);

  disableActions = [MEMORY[0x1E6979518] disableActions];
  [MEMORY[0x1E6979518] setDisableActions:0];
  snapStripController = [(PUTrimToolController *)self snapStripController];
  [snapStripController updateSnapStripView];

  [MEMORY[0x1E6979518] setDisableActions:disableActions];
  v6 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PUTrimToolController_viewDidLayoutSubviews__block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = self;
  dispatch_after(v6, MEMORY[0x1E69E96A0], block);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = PUTrimToolController;
  [(PUTrimToolController *)&v8 viewWillDisappear:disappear];
  livePhotoKeyFramePickerAppearanceTimer = [(PUTrimToolController *)self livePhotoKeyFramePickerAppearanceTimer];

  if (livePhotoKeyFramePickerAppearanceTimer)
  {
    livePhotoKeyFramePickerAppearanceTimer2 = [(PUTrimToolController *)self livePhotoKeyFramePickerAppearanceTimer];
    [livePhotoKeyFramePickerAppearanceTimer2 invalidate];

    [(PUTrimToolController *)self setLivePhotoKeyFramePickerAppearanceTimer:0];
  }

  livePhotoKeyFramePicker = [(PUTrimToolController *)self livePhotoKeyFramePicker];

  if (livePhotoKeyFramePicker)
  {
    livePhotoKeyFramePicker2 = [(PUTrimToolController *)self livePhotoKeyFramePicker];
    [livePhotoKeyFramePicker2 dismissViewControllerAnimated:0 completion:0];

    [(PUTrimToolController *)self setLivePhotoKeyFramePicker:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PUTrimToolController;
  [(PUTrimToolController *)&v4 viewWillAppear:appear];
  [(PUTrimToolController *)self _updatePlayheadStyle];
}

- (void)trimScrubber:(id)scrubber debugEndOffset:(CGRect)offset
{
  height = offset.size.height;
  width = offset.size.width;
  y = offset.origin.y;
  x = offset.origin.x;
  scrubberCopy = scrubber;
  view = [(PUTrimToolController *)self view];
  [scrubberCopy convertRect:view toView:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  debugEndOffsetView = self->_debugEndOffsetView;

  [(UIView *)debugEndOffsetView setFrame:v12, v14, v16, v18];
}

- (void)trimScrubber:(id)scrubber debugStartOffset:(CGRect)offset
{
  height = offset.size.height;
  width = offset.size.width;
  y = offset.origin.y;
  x = offset.origin.x;
  scrubberCopy = scrubber;
  view = [(PUTrimToolController *)self view];
  [scrubberCopy convertRect:view toView:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  debugStartOffsetView = self->_debugStartOffsetView;

  [(UIView *)debugStartOffsetView setFrame:v12, v14, v16, v18];
}

- (void)trimScrubber:(id)scrubber debugEndRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  scrubberCopy = scrubber;
  view = [(PUTrimToolController *)self view];
  [scrubberCopy convertRect:view toView:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  debugEndRectView = self->_debugEndRectView;

  [(UIView *)debugEndRectView setFrame:v12, v14, v16, v18];
}

- (void)trimScrubber:(id)scrubber debugStartRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  scrubberCopy = scrubber;
  view = [(PUTrimToolController *)self view];
  [scrubberCopy convertRect:view toView:{x, y, width, height}];
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
  playerWrapper = [(PUTrimToolController *)self playerWrapper];
  [playerWrapper setPlayerObserver:self];
  v3 = objc_alloc_init(MEMORY[0x1E69C3670]);
  spec = self->_spec;
  self->_spec = v3;

  v5 = +[PUInterfaceManager currentTheme];
  photoEditingAdjustmentsBarDisabledColor = [v5 photoEditingAdjustmentsBarDisabledColor];
  [(PXLivePhotoTrimScrubberSpec *)self->_spec setDisabledOverlayColor:photoEditingAdjustmentsBarDisabledColor];

  v7 = objc_alloc(MEMORY[0x1E69C3C10]);
  v8 = objc_opt_class();
  v9 = self->_spec;
  px_extendedTraitCollection = [(PUTrimToolController *)self px_extendedTraitCollection];
  v11 = [v7 initWithFilmStripViewClass:v8 spec:v9 traitCollection:px_extendedTraitCollection];
  trimScrubber = self->_trimScrubber;
  self->_trimScrubber = v11;

  [(PXLivePhotoTrimScrubber *)self->_trimScrubber setAllowZoom:[(PUTrimToolController *)self playButtonEnabled]];
  [(PXLivePhotoTrimScrubber *)self->_trimScrubber setDelegate:self];
  v13 = +[PUPhotoEditProtoSettings sharedInstance];
  showVideoScrubberDebugOverlay = [v13 showVideoScrubberDebugOverlay];

  v206 = showVideoScrubberDebugOverlay;
  [(PXLivePhotoTrimScrubber *)self->_trimScrubber setShowVideoScrubberDebugOverlay:showVideoScrubberDebugOverlay];
  v15 = +[PUInterfaceManager currentTheme];
  view = [(PUTrimToolController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = self->_trimScrubber;
  [(PXLivePhotoTrimScrubber *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [MEMORY[0x1E69DC730] effectWithStyle:6];
  v19 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v18];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  layer = [v19 layer];
  [layer setCornerRadius:5.0];

  [v19 setClipsToBounds:1];
  photoEditingTrimControllerBackgroundColor = [v15 photoEditingTrimControllerBackgroundColor];
  [v19 setBackgroundColor:photoEditingTrimControllerBackgroundColor];

  v22 = 0.0;
  [v19 setAlpha:0.0];
  objc_storeStrong(&self->_auxilaryContainerView, v19);
  [view addSubview:self->_auxilaryContainerView];
  v208 = v18;
  v23 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v18];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  layer2 = [v23 layer];
  [layer2 setCornerRadius:5.0];

  [v23 setClipsToBounds:1];
  v209 = v15;
  photoEditingTrimControllerBackgroundColor2 = [v15 photoEditingTrimControllerBackgroundColor];
  [v23 setBackgroundColor:photoEditingTrimControllerBackgroundColor2];

  objc_storeStrong(&self->_scrubberPlayButtonContainerView, v23);
  [view addSubview:v23];
  contentView = [v23 contentView];
  [contentView addSubview:v17];

  topAnchor = [v23 topAnchor];
  topAnchor2 = [(PXLivePhotoTrimScrubber *)v17 topAnchor];
  v29 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v29 setActive:1];

  bottomAnchor = [v23 bottomAnchor];
  bottomAnchor2 = [(PXLivePhotoTrimScrubber *)v17 bottomAnchor];
  v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v32 setActive:1];

  rightAnchor = [v23 rightAnchor];
  v212 = v17;
  rightAnchor2 = [(PXLivePhotoTrimScrubber *)v17 rightAnchor];
  v35 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v35 setActive:1];

  leftAnchor = [v23 leftAnchor];
  leftAnchor2 = [view leftAnchor];
  v38 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:10.0];
  [v38 setActive:1];

  rightAnchor3 = [v23 rightAnchor];
  rightAnchor4 = [view rightAnchor];
  v41 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4 constant:-10.0];
  [v41 setActive:1];

  leftAnchor3 = [v19 leftAnchor];
  leftAnchor4 = [v23 leftAnchor];
  v44 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  [v44 setActive:1];

  rightAnchor5 = [v19 rightAnchor];
  rightAnchor6 = [v23 rightAnchor];
  v47 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6];
  [v47 setActive:1];

  if (self->_playButtonEnabled)
  {
    v22 = *MEMORY[0x1E69C4050];
  }

  heightAnchor = [v19 heightAnchor];
  v49 = [heightAnchor constraintEqualToConstant:v22];
  [v49 setActive:1];

  bottomAnchor3 = [v19 bottomAnchor];
  bottomAnchor4 = [view bottomAnchor];
  v52 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [v52 setActive:1];

  v211 = v19;
  v53 = v19;
  v54 = v23;
  topAnchor3 = [v53 topAnchor];
  bottomAnchor5 = [v23 bottomAnchor];
  v57 = [topAnchor3 constraintEqualToAnchor:bottomAnchor5 constant:3.0];
  [v57 setActive:1];

  if (self->_playButtonEnabled)
  {
    playPauseButton = [(PUTrimToolController *)self playPauseButton];
    contentView2 = [v54 contentView];
    [contentView2 addSubview:playPauseButton];

    [playPauseButton setTranslatesAutoresizingMaskIntoConstraints:0];
    centerYAnchor = [v54 centerYAnchor];
    centerYAnchor2 = [playPauseButton centerYAnchor];
    v62 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:0.0];
    [v62 setActive:1];

    leftAnchor5 = [v54 leftAnchor];
    leftAnchor6 = [playPauseButton leftAnchor];
    v65 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6 constant:0.0];
    [v65 setActive:1];

    leftAnchor10 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [leftAnchor10 setTranslatesAutoresizingMaskIntoConstraints:0];
    widthAnchor = [leftAnchor10 widthAnchor];
    v68 = [widthAnchor constraintEqualToConstant:1.0];
    [v68 setActive:1];

    contentView3 = [v54 contentView];
    [contentView3 addSubview:leftAnchor10];

    leftAnchor7 = [leftAnchor10 leftAnchor];
    leftAnchor8 = [v54 leftAnchor];
    [leftAnchor7 constraintEqualToAnchor:leftAnchor8 constant:47.0];
    v73 = v72 = view;
    [v73 setActive:1];

    topAnchor4 = [leftAnchor10 topAnchor];
    topAnchor5 = [v54 topAnchor];
    v76 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:0.0];
    [v76 setActive:1];

    bottomAnchor6 = [leftAnchor10 bottomAnchor];
    bottomAnchor7 = [v54 bottomAnchor];
    v79 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:0.0];
    [v79 setActive:1];

    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [leftAnchor10 setBackgroundColor:systemBackgroundColor];

    leftAnchor9 = [(PXLivePhotoTrimScrubber *)v17 leftAnchor];
    rightAnchor7 = [leftAnchor10 rightAnchor];
    v83 = [leftAnchor9 constraintEqualToAnchor:rightAnchor7 constant:0.0];
    [v83 setActive:1];

    view = v72;
  }

  else
  {
    playPauseButton = [v23 leftAnchor];
    leftAnchor10 = [(PXLivePhotoTrimScrubber *)v17 leftAnchor];
    leftAnchor9 = [playPauseButton constraintEqualToAnchor:leftAnchor10];
    [leftAnchor9 setActive:1];
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
    contentView4 = [v211 contentView];
    [contentView4 addSubview:self->_focusTimelineView];

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

    leftAnchor11 = [(PXFocusTimelineView *)self->_focusTimelineView leftAnchor];
    leftAnchor12 = [v211 leftAnchor];
    v92 = [leftAnchor11 constraintEqualToAnchor:leftAnchor12 constant:v89 - v88];
    [v92 setActive:1];

    rightAnchor8 = [(PXFocusTimelineView *)self->_focusTimelineView rightAnchor];
    rightAnchor9 = [v211 rightAnchor];
    v95 = [rightAnchor8 constraintEqualToAnchor:rightAnchor9 constant:v88 + -18.0];
    [v95 setActive:1];

    topAnchor6 = [(PXFocusTimelineView *)self->_focusTimelineView topAnchor];
    topAnchor7 = [v211 topAnchor];
    v98 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
    [v98 setActive:1];

    bottomAnchor8 = [(PXFocusTimelineView *)self->_focusTimelineView bottomAnchor];
    bottomAnchor9 = [v211 bottomAnchor];
    v101 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
    [v101 setActive:1];

    v102 = objc_alloc_init(MEMORY[0x1E69DD250]);
    trimScrubberTimelineOverlayView = self->_trimScrubberTimelineOverlayView;
    self->_trimScrubberTimelineOverlayView = v102;

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v105 = [blackColor colorWithAlphaComponent:0.6];
    [(UIView *)self->_trimScrubberTimelineOverlayView setBackgroundColor:v105];

    [(UIView *)self->_trimScrubberTimelineOverlayView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_trimScrubberTimelineOverlayView setHidden:1];
    [(UIView *)self->_trimScrubberTimelineOverlayView setAlpha:0.0];
    [(PXLivePhotoTrimScrubber *)v17 addSubview:self->_trimScrubberTimelineOverlayView];
    v199 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UIView *)self->_trimScrubberTimelineOverlayView leadingAnchor];
    leadingAnchor2 = [(PXLivePhotoTrimScrubber *)v17 leadingAnchor];
    v201 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v214[0] = v201;
    trailingAnchor = [(UIView *)self->_trimScrubberTimelineOverlayView trailingAnchor];
    trailingAnchor2 = [(PXLivePhotoTrimScrubber *)v17 trailingAnchor];
    v197 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v214[1] = v197;
    topAnchor8 = [(UIView *)self->_trimScrubberTimelineOverlayView topAnchor];
    topAnchor9 = [(PXLivePhotoTrimScrubber *)v17 topAnchor];
    v108 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
    v214[2] = v108;
    [(UIView *)self->_trimScrubberTimelineOverlayView bottomAnchor];
    v109 = v204 = view;
    bottomAnchor10 = [(PXLivePhotoTrimScrubber *)v17 bottomAnchor];
    v111 = [v109 constraintEqualToAnchor:bottomAnchor10];
    v214[3] = v111;
    v112 = [MEMORY[0x1E695DEC8] arrayWithObjects:v214 count:4];
    [v199 activateConstraints:v112];

    v54 = v205;
    v113 = [MEMORY[0x1E69DC738] buttonWithType:0];
    trimScrubberTimelineOverlayButton = self->_trimScrubberTimelineOverlayButton;
    self->_trimScrubberTimelineOverlayButton = v113;

    blackColor2 = [MEMORY[0x1E69DC888] blackColor];
    v116 = [blackColor2 colorWithAlphaComponent:0.4];
    [(UIButton *)self->_trimScrubberTimelineOverlayButton setBackgroundColor:v116];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIButton *)self->_trimScrubberTimelineOverlayButton setTintColor:whiteColor];

    layer3 = [(UIButton *)self->_trimScrubberTimelineOverlayButton layer];
    [layer3 setMasksToBounds:1];

    v119 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.6];
    cGColor = [v119 CGColor];
    layer4 = [(UIButton *)self->_trimScrubberTimelineOverlayButton layer];
    [layer4 setBorderColor:cGColor];

    layer5 = [(UIButton *)self->_trimScrubberTimelineOverlayButton layer];
    [layer5 setBorderWidth:1.0];

    [(UIButton *)self->_trimScrubberTimelineOverlayButton addTarget:self action:sel__handleScrubberTimelineOverlayButton_ forControlEvents:64];
    view = v204;
    [(UIView *)self->_trimScrubberTimelineOverlayView addSubview:self->_trimScrubberTimelineOverlayButton];
  }

  v123 = objc_alloc_init(MEMORY[0x1E69C3A60]);
  [v123 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v123];
  leftAnchor13 = [v123 leftAnchor];
  leftAnchor14 = [view leftAnchor];
  v126 = [leftAnchor13 constraintEqualToAnchor:leftAnchor14];
  [v126 setActive:1];

  rightAnchor10 = [v123 rightAnchor];
  rightAnchor11 = [view rightAnchor];
  v129 = [rightAnchor10 constraintEqualToAnchor:rightAnchor11];
  [v129 setActive:1];

  topAnchor10 = [v123 topAnchor];
  topAnchor11 = [view topAnchor];
  v132 = [topAnchor10 constraintEqualToAnchor:topAnchor11];
  [v132 setActive:1];

  heightAnchor2 = [v123 heightAnchor];
  v134 = [heightAnchor2 constraintEqualToConstant:12.0];
  [v134 setActive:1];

  topAnchor12 = [v54 topAnchor];
  bottomAnchor11 = [v123 bottomAnchor];
  v137 = [topAnchor12 constraintEqualToAnchor:bottomAnchor11 constant:5.0];
  [v137 setActive:1];

  v138 = objc_opt_new();
  v139 = objc_opt_new();
  [(PUTrimToolController *)self setSnapStripSpec:v139];

  snapStripSpec = [(PUTrimToolController *)self snapStripSpec];
  [v138 setSpec:snapStripSpec];

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
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)self->_debugTrimToolPlayheadStyleLabel setTextColor:whiteColor2];

    [(UILabel *)self->_debugTrimToolPlayheadStyleLabel setFont:v142];
    v154 = objc_alloc_init(MEMORY[0x1E69DD250]);
    debugStartRectView = self->_debugStartRectView;
    self->_debugStartRectView = v154;

    magentaColor = [MEMORY[0x1E69DC888] magentaColor];
    [(UIView *)self->_debugStartRectView setBackgroundColor:magentaColor];

    v157 = objc_alloc_init(MEMORY[0x1E69DD250]);
    debugEndRectView = self->_debugEndRectView;
    self->_debugEndRectView = v157;

    systemTealColor = [MEMORY[0x1E69DC888] systemTealColor];
    v160 = [systemTealColor colorWithAlphaComponent:0.5];
    [(UIView *)self->_debugEndRectView setBackgroundColor:v160];

    v161 = objc_alloc_init(MEMORY[0x1E69DD250]);
    debugStartOffsetView = self->_debugStartOffsetView;
    self->_debugStartOffsetView = v161;

    redColor = [MEMORY[0x1E69DC888] redColor];
    [(UIView *)self->_debugStartOffsetView setBackgroundColor:redColor];

    v164 = objc_alloc_init(MEMORY[0x1E69DD250]);
    debugEndOffsetView = self->_debugEndOffsetView;
    self->_debugEndOffsetView = v164;

    blueColor = [MEMORY[0x1E69DC888] blueColor];
    [(UIView *)self->_debugEndOffsetView setBackgroundColor:blueColor];

    [view addSubview:self->_debugTimeCodeLabel];
    [view addSubview:self->_debugPlayerTimeLabel];
    [view addSubview:self->_debugOriginalTimeLabel];
    [view addSubview:self->_debugTrimToolStateLabel];
    [view addSubview:self->_debugTrimToolPlayheadStyleLabel];
    [view addSubview:self->_debugStartRectView];
    [view addSubview:self->_debugEndRectView];
    [view addSubview:self->_debugStartOffsetView];
    [view addSubview:self->_debugEndOffsetView];
    leadingAnchor3 = [(UILabel *)self->_debugTimeCodeLabel leadingAnchor];
    leadingAnchor4 = [(UILabel *)self->_debugTrimToolStateLabel leadingAnchor];
    v169 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v169 setActive:1];

    bottomAnchor12 = [(UILabel *)self->_debugTimeCodeLabel bottomAnchor];
    topAnchor13 = [(UILabel *)self->_debugTrimToolStateLabel topAnchor];
    v172 = [bottomAnchor12 constraintEqualToAnchor:topAnchor13 constant:-4.0];
    [v172 setActive:1];

    trailingAnchor3 = [(UILabel *)self->_debugPlayerTimeLabel trailingAnchor];
    trailingAnchor4 = [(UILabel *)self->_debugTrimToolPlayheadStyleLabel trailingAnchor];
    v175 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v175 setActive:1];

    bottomAnchor13 = [(UILabel *)self->_debugPlayerTimeLabel bottomAnchor];
    bottomAnchor14 = [(UILabel *)self->_debugTimeCodeLabel bottomAnchor];
    v178 = [bottomAnchor13 constraintEqualToAnchor:bottomAnchor14];
    [v178 setActive:1];

    trailingAnchor5 = [(UILabel *)self->_debugOriginalTimeLabel trailingAnchor];
    trailingAnchor6 = [(UILabel *)self->_debugPlayerTimeLabel trailingAnchor];
    v181 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    [v181 setActive:1];

    bottomAnchor15 = [(UILabel *)self->_debugOriginalTimeLabel bottomAnchor];
    topAnchor14 = [(UILabel *)self->_debugPlayerTimeLabel topAnchor];
    v184 = [bottomAnchor15 constraintEqualToAnchor:topAnchor14 constant:-4.0];
    [v184 setActive:1];

    leadingAnchor5 = [(UILabel *)self->_debugTrimToolStateLabel leadingAnchor];
    leadingAnchor6 = [view leadingAnchor];
    v187 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:10.0];
    [v187 setActive:1];

    bottomAnchor16 = [(UILabel *)self->_debugTrimToolStateLabel bottomAnchor];
    topAnchor15 = [view topAnchor];
    v190 = [bottomAnchor16 constraintEqualToAnchor:topAnchor15];
    [v190 setActive:1];

    trailingAnchor7 = [(UILabel *)self->_debugTrimToolPlayheadStyleLabel trailingAnchor];
    trailingAnchor8 = [view trailingAnchor];
    v193 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-10.0];
    [v193 setActive:1];

    bottomAnchor17 = [(UILabel *)self->_debugTrimToolPlayheadStyleLabel bottomAnchor];
    topAnchor16 = [view topAnchor];
    v196 = [bottomAnchor17 constraintEqualToAnchor:topAnchor16];
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

- (void)compositionControllerDidChangeForAdjustments:(id)adjustments
{
  adjustmentsCopy = adjustments;
  compositionController = [(PUTrimToolController *)self compositionController];
  adjustmentConstants = [compositionController adjustmentConstants];

  pITrimAdjustmentKey = [adjustmentConstants PITrimAdjustmentKey];
  if ([adjustmentsCopy containsObject:pITrimAdjustmentKey])
  {
    goto LABEL_4;
  }

  pILivePhotoKeyFrameAdjustmentKey = [adjustmentConstants PILivePhotoKeyFrameAdjustmentKey];
  if ([adjustmentsCopy containsObject:pILivePhotoKeyFrameAdjustmentKey])
  {

LABEL_4:
LABEL_5:
    [(PUTrimToolController *)self _updateScrubberTimes];
    goto LABEL_6;
  }

  pISlomoAdjustmentKey = [adjustmentConstants PISlomoAdjustmentKey];
  v9 = [adjustmentsCopy containsObject:pISlomoAdjustmentKey];

  if (v9)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (PUTrimToolController)initWithPlayerWrapper:(id)wrapper playButtonEnabled:(BOOL)enabled slomoEnabled:(BOOL)slomoEnabled portraitVideoEnabled:(BOOL)videoEnabled
{
  v20[2] = *MEMORY[0x1E69E9840];
  wrapperCopy = wrapper;
  v19.receiver = self;
  v19.super_class = PUTrimToolController;
  v12 = [(PUTrimToolController *)&v19 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    v12->_playButtonEnabled = enabled;
    objc_storeStrong(&v12->_playerWrapper, wrapper);
    v13->_slomoEnabled = slomoEnabled;
    v13->_isPortraitVideo = videoEnabled;
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