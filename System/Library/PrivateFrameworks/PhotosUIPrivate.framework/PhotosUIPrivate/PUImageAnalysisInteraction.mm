@interface PUImageAnalysisInteraction
- (BOOL)_allowsSubjectLifting;
- (BOOL)actionInfoItemExistsAtLocation:(id)location;
- (BOOL)allowsVKRemoveBackground;
- (BOOL)dataDetectorExistsAtLocation:(id)location;
- (BOOL)hasActiveTextSelection;
- (BOOL)imageAnalysisInteraction:(id)interaction shouldBeginAtPoint:(CGPoint)point forAnalysisType:(unint64_t)type;
- (BOOL)imageAnalysisInteraction:(id)interaction shouldShowLookupForItemFromCallout:(id)callout;
- (BOOL)imageInteractionHasAnalysisAndSubjectLiftingEnabled;
- (BOOL)imageSubjectExistsAtLocation:(id)location;
- (BOOL)interactiveItemExistsAtLocation:(id)location;
- (BOOL)isImageSubjectAnalysisAvailable;
- (BOOL)isImageSubjectAnalyzingFinished;
- (BOOL)isShowingLivePhotoForImageAnalysisInteraction:(id)interaction;
- (BOOL)isSubjectInteractionInProgress;
- (BOOL)isVisualIntelligenceOverlayInitialized;
- (BOOL)subjectHighlightActive;
- (BOOL)textExistsAtLocation:(id)location;
- (BOOL)visualImageInteractionEnabled;
- (BOOL)visualSearchExistsAtLocation:(id)location;
- (CGRect)contentFrame;
- (CGRect)contentsRect;
- (CGRect)contentsRectForImageAnalysisInteraction:(id)interaction;
- (PUAssetViewModel)assetViewModel;
- (PUBrowsingViewModel)browsingViewModel;
- (PUImageAnalysisInteraction)initWithInteractionCreator:(id)creator;
- (PUImageAnalysisInteractionDelegate)delegate;
- (PXEventCoalescer)sizeChangeCoalescer;
- (UICoordinateSpace)contentCoordinateSpace;
- (UIEdgeInsets)additionalActionInfoEdgeInsets;
- (id)contentImageForImageAnalysisInteraction:(id)interaction;
- (id)contentViewForImageAnalysisInteraction:(id)interaction;
- (id)presentingViewControllerForImageAnalysisInteraction:(id)interaction;
- (void)_handleAssetViewModelChange:(id)change;
- (void)_handleBrowsingViewModelChange:(id)change;
- (void)_invalidateInteraction;
- (void)_ppt_fireVKAnalysisWaitingTimer;
- (void)_ppt_resetVKAnalysisWaitingTimer;
- (void)_resetInteraction;
- (void)_updateAdditionalActionInfoEdgeInsets;
- (void)_updateContentsRect;
- (void)_updateInteraction;
- (void)_updateInteractionView;
- (void)_updateStatusCornerState;
- (void)beginImageSubjectAnalysisIfNecessary;
- (void)dealloc;
- (void)imageAnalysisInteraction:(id)interaction didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)box;
- (void)imageAnalysisInteraction:(id)interaction livePhotoShouldPlay:(BOOL)play;
- (void)imageAnalysisInteractionDidDismissVisualSearchController:(id)controller;
- (void)imageAnalysisInteractionSubjectInteractionInProgressDidChange:(id)change;
- (void)ppt_notifyWhenVKAnalysisIsReadyWithTimeout:(double)timeout completionHandler:(id)handler;
- (void)setAdditionalActionInfoEdgeInsets:(UIEdgeInsets)insets;
- (void)setAssetViewModel:(id)model;
- (void)setBrowsingViewModel:(id)model;
- (void)setContentsRect:(CGRect)rect;
- (void)setHostView:(id)view;
- (void)setIsDrivingLivePhotoPlayback:(BOOL)playback;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUImageAnalysisInteraction

- (CGRect)contentsRect
{
  x = self->_contentsRect.origin.x;
  y = self->_contentsRect.origin.y;
  width = self->_contentsRect.size.width;
  height = self->_contentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UICoordinateSpace)contentCoordinateSpace
{
  WeakRetained = objc_loadWeakRetained(&self->_contentCoordinateSpace);

  return WeakRetained;
}

- (CGRect)contentFrame
{
  x = self->_contentFrame.origin.x;
  y = self->_contentFrame.origin.y;
  width = self->_contentFrame.size.width;
  height = self->_contentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)additionalActionInfoEdgeInsets
{
  top = self->_additionalActionInfoEdgeInsets.top;
  left = self->_additionalActionInfoEdgeInsets.left;
  bottom = self->_additionalActionInfoEdgeInsets.bottom;
  right = self->_additionalActionInfoEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (PUImageAnalysisInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PUBrowsingViewModel)browsingViewModel
{
  WeakRetained = objc_loadWeakRetained(&self->_browsingViewModel);

  return WeakRetained;
}

- (PUAssetViewModel)assetViewModel
{
  WeakRetained = objc_loadWeakRetained(&self->_assetViewModel);

  return WeakRetained;
}

- (void)ppt_notifyWhenVKAnalysisIsReadyWithTimeout:(double)timeout completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    launchedToTest = [mEMORY[0x1E69DC668] launchedToTest];

    if (launchedToTest)
    {
      pptVKAnalysisWaitingTimer = [(PUImageAnalysisInteraction *)self pptVKAnalysisWaitingTimer];
      isValid = [pptVKAnalysisWaitingTimer isValid];

      if (isValid)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUImageAnalysisInteraction.m" lineNumber:637 description:{@"Should not request notification, when a request is already on going"}];
      }

      v12 = MEMORY[0x1E69C3C88];
      assetViewModel = [(PUImageAnalysisInteraction *)self assetViewModel];
      asset = [assetViewModel asset];
      v15 = [v12 canRequestVKImageAnalysisForAsset:asset];

      assetViewModel2 = [(PUImageAnalysisInteraction *)self assetViewModel];
      visualImageAnalysis = [assetViewModel2 visualImageAnalysis];

      if (visualImageAnalysis || (v15 & 1) == 0)
      {
        [(PUImageAnalysisInteraction *)self _ppt_resetVKAnalysisWaitingTimer];
        location[1] = MEMORY[0x1E69E9820];
        location[2] = 3221225472;
        location[3] = __91__PUImageAnalysisInteraction_ppt_notifyWhenVKAnalysisIsReadyWithTimeout_completionHandler___block_invoke;
        location[4] = &unk_1E7B80C88;
        v28 = handlerCopy;
        px_dispatch_on_main_queue();
      }

      else
      {
        objc_initWeak(location, self);
        v18 = MEMORY[0x1E695DFF0];
        v21 = MEMORY[0x1E69E9820];
        v22 = 3221225472;
        v23 = __91__PUImageAnalysisInteraction_ppt_notifyWhenVKAnalysisIsReadyWithTimeout_completionHandler___block_invoke_2;
        v24 = &unk_1E7B7B3B0;
        v25 = handlerCopy;
        objc_copyWeak(&v26, location);
        v19 = [v18 pu_scheduledTimerWithTimeInterval:0 repeats:&v21 block:timeout];
        [(PUImageAnalysisInteraction *)self setPptVKAnalysisWaitingTimer:v19, v21, v22, v23, v24];

        objc_destroyWeak(&v26);
        objc_destroyWeak(location);
      }
    }
  }
}

void __91__PUImageAnalysisInteraction_ppt_notifyWhenVKAnalysisIsReadyWithTimeout_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_copyWeak(&v3, (a1 + 40));
  px_dispatch_on_main_queue();
  objc_destroyWeak(&v3);
}

void __91__PUImageAnalysisInteraction_ppt_notifyWhenVKAnalysisIsReadyWithTimeout_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained assetViewModel];
  v3 = [v2 visualImageAnalysis];
  (*(v1 + 16))(v1, v3 != 0);
}

- (void)_ppt_fireVKAnalysisWaitingTimer
{
  pptVKAnalysisWaitingTimer = [(PUImageAnalysisInteraction *)self pptVKAnalysisWaitingTimer];
  [pptVKAnalysisWaitingTimer fire];

  [(PUImageAnalysisInteraction *)self _ppt_resetVKAnalysisWaitingTimer];
}

- (void)_ppt_resetVKAnalysisWaitingTimer
{
  pptVKAnalysisWaitingTimer = [(PUImageAnalysisInteraction *)self pptVKAnalysisWaitingTimer];
  [pptVKAnalysisWaitingTimer invalidate];

  [(PUImageAnalysisInteraction *)self setPptVKAnalysisWaitingTimer:0];
}

- (BOOL)allowsVKRemoveBackground
{
  v2 = +[PUOneUpSettings sharedInstance];
  allowsVisualIntelligenceRemoveBackground = [v2 allowsVisualIntelligenceRemoveBackground];

  return allowsVisualIntelligenceRemoveBackground;
}

- (void)_updateStatusCornerState
{
  assetViewModel = [(PUImageAnalysisInteraction *)self assetViewModel];
  if ([assetViewModel statusCornerState] != 1)
  {
    interaction = [(PUImageAnalysisInteraction *)self interaction];
    if (([interaction actionInfoViewHidden] & 1) != 0 || !objc_msgSend(interaction, "liveTextButtonVisible"))
    {
      if ([assetViewModel statusCornerState] != 2)
      {
LABEL_8:

        goto LABEL_9;
      }

      v5 = v8;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v6 = __54__PUImageAnalysisInteraction__updateStatusCornerState__block_invoke_2;
    }

    else
    {
      v5 = v9;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v6 = __54__PUImageAnalysisInteraction__updateStatusCornerState__block_invoke;
    }

    v5[2] = v6;
    v5[3] = &unk_1E7B80DD0;
    v7 = assetViewModel;
    v5[4] = v7;
    [v7 performChanges:v5];

    goto LABEL_8;
  }

LABEL_9:
}

- (BOOL)isSubjectInteractionInProgress
{
  interaction = [(PUImageAnalysisInteraction *)self interaction];
  subjectInteractionInProgress = [interaction subjectInteractionInProgress];

  return subjectInteractionInProgress;
}

- (BOOL)subjectHighlightActive
{
  interaction = [(PUImageAnalysisInteraction *)self interaction];
  subjectHighlightActive = [interaction subjectHighlightActive];

  return subjectHighlightActive;
}

- (BOOL)imageInteractionHasAnalysisAndSubjectLiftingEnabled
{
  if (-[PUImageAnalysisInteraction allowsVKRemoveBackground](self, "allowsVKRemoveBackground") && (-[PUImageAnalysisInteraction interaction](self, "interaction"), v3 = objc_claimAutoreleasedReturnValue(), [v3 analysis], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    interaction = [(PUImageAnalysisInteraction *)self interaction];
    v6 = ([interaction activeInteractionTypes] >> 3) & 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)beginImageSubjectAnalysisIfNecessary
{
  if ([(PUImageAnalysisInteraction *)self allowsVKRemoveBackground])
  {
    interaction = [(PUImageAnalysisInteraction *)self interaction];
    [interaction beginImageSubjectAnalysisIfNecessary];
  }
}

- (BOOL)isImageSubjectAnalysisAvailable
{
  interaction = [(PUImageAnalysisInteraction *)self interaction];
  isSubjectHighlightAvailable = [interaction isSubjectHighlightAvailable];

  return isSubjectHighlightAvailable;
}

- (BOOL)hasActiveTextSelection
{
  interaction = [(PUImageAnalysisInteraction *)self interaction];
  hasActiveTextSelection = [interaction hasActiveTextSelection];

  return hasActiveTextSelection;
}

- (BOOL)isVisualIntelligenceOverlayInitialized
{
  interaction = [(PUImageAnalysisInteraction *)self interaction];
  analysis = [interaction analysis];
  v4 = analysis != 0;

  return v4;
}

- (BOOL)imageSubjectExistsAtLocation:(id)location
{
  locationCopy = location;
  if ([(PUImageAnalysisInteraction *)self allowsVKRemoveBackground])
  {
    interaction = [(PUImageAnalysisInteraction *)self interaction];
    interaction2 = [(PUImageAnalysisInteraction *)self interaction];
    view = [interaction2 view];
    [locationCopy locationInView:view];
    v8 = [interaction imageSubjectExistsAtPoint:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)actionInfoItemExistsAtLocation:(id)location
{
  locationCopy = location;
  interaction = [(PUImageAnalysisInteraction *)self interaction];
  interaction2 = [(PUImageAnalysisInteraction *)self interaction];
  view = [interaction2 view];
  [locationCopy locationInView:view];
  v9 = v8;
  v11 = v10;

  LOBYTE(locationCopy) = [interaction actionInfoItemExistsAtPoint:{v9, v11}];
  return locationCopy;
}

- (BOOL)interactiveItemExistsAtLocation:(id)location
{
  locationCopy = location;
  interaction = [(PUImageAnalysisInteraction *)self interaction];
  interaction2 = [(PUImageAnalysisInteraction *)self interaction];
  view = [interaction2 view];
  [locationCopy locationInView:view];
  v9 = v8;
  v11 = v10;

  LOBYTE(locationCopy) = [interaction interactableItemExistsAtPoint:{v9, v11}];
  return locationCopy;
}

- (BOOL)dataDetectorExistsAtLocation:(id)location
{
  locationCopy = location;
  interaction = [(PUImageAnalysisInteraction *)self interaction];
  interaction2 = [(PUImageAnalysisInteraction *)self interaction];
  view = [interaction2 view];
  [locationCopy locationInView:view];
  v9 = v8;
  v11 = v10;

  LOBYTE(locationCopy) = [interaction dataDetectorExistsAtPoint:{v9, v11}];
  return locationCopy;
}

- (BOOL)textExistsAtLocation:(id)location
{
  locationCopy = location;
  interaction = [(PUImageAnalysisInteraction *)self interaction];
  interaction2 = [(PUImageAnalysisInteraction *)self interaction];
  view = [interaction2 view];
  [locationCopy locationInView:view];
  v9 = v8;
  v11 = v10;

  LOBYTE(locationCopy) = [interaction textExistsAtPoint:{v9, v11}];
  return locationCopy;
}

- (BOOL)visualImageInteractionEnabled
{
  selfCopy = self;
  delegate = [(PUImageAnalysisInteraction *)self delegate];
  LOBYTE(selfCopy) = [delegate analysisInteractionAllowedForImageAnalysisInteraction:selfCopy];

  return selfCopy;
}

- (void)setIsDrivingLivePhotoPlayback:(BOOL)playback
{
  if (self->_isDrivingLivePhotoPlayback != playback)
  {
    self->_isDrivingLivePhotoPlayback = playback;
    if (!playback && [(PUImageAnalysisInteraction *)self shouldResetInteractionWhenNotDrivingLivePhotoPlayback])
    {
      [(PUImageAnalysisInteraction *)self _resetInteraction];
    }

    delegate = [(PUImageAnalysisInteraction *)self delegate];
    [delegate imageAnalysisInteractionIsDrivingLivePhotoPlaybackDidChange:self];
  }
}

- (void)imageAnalysisInteractionDidDismissVisualSearchController:(id)controller
{
  assetViewModel = [(PUImageAnalysisInteraction *)self assetViewModel];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87__PUImageAnalysisInteraction_imageAnalysisInteractionDidDismissVisualSearchController___block_invoke;
  v5[3] = &unk_1E7B80DD0;
  v6 = assetViewModel;
  v4 = assetViewModel;
  [v4 performChanges:v5];
}

- (void)imageAnalysisInteraction:(id)interaction didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)box
{
  v4 = [(PUImageAnalysisInteraction *)self assetViewModel:interaction];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __108__PUImageAnalysisInteraction_imageAnalysisInteraction_didTapVisualSearchIndicatorWithNormalizedBoundingBox___block_invoke;
  v6[3] = &unk_1E7B80DD0;
  v7 = v4;
  v5 = v4;
  [v5 performChanges:v6];
}

- (id)presentingViewControllerForImageAnalysisInteraction:(id)interaction
{
  delegate = [(PUImageAnalysisInteraction *)self delegate];
  v5 = [delegate presentingViewControllerForImageAnalysisInteraction:self];

  return v5;
}

- (void)imageAnalysisInteraction:(id)interaction livePhotoShouldPlay:(BOOL)play
{
  playCopy = play;
  assetViewModel = [(PUImageAnalysisInteraction *)self assetViewModel];
  isAccessoryViewVisible = [assetViewModel isAccessoryViewVisible];

  if ((isAccessoryViewVisible & 1) == 0)
  {
    browsingViewModel = [(PUImageAnalysisInteraction *)self browsingViewModel];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __75__PUImageAnalysisInteraction_imageAnalysisInteraction_livePhotoShouldPlay___block_invoke;
    v9[3] = &unk_1E7B7FF98;
    v9[4] = self;
    v10 = playCopy;
    [browsingViewModel performChanges:v9];

    [(PUImageAnalysisInteraction *)self setIsDrivingLivePhotoPlayback:playCopy];
  }
}

void __75__PUImageAnalysisInteraction_imageAnalysisInteraction_livePhotoShouldPlay___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) browsingViewModel];
  [v2 setLivePhotoShouldPlay:v1];
}

- (BOOL)isShowingLivePhotoForImageAnalysisInteraction:(id)interaction
{
  assetViewModel = [(PUImageAnalysisInteraction *)self assetViewModel];
  asset = [assetViewModel asset];
  v5 = [asset playbackStyle] == 3;

  return v5;
}

uint64_t __88__PUImageAnalysisInteraction_imageAnalysisInteraction_liveTextButtonDidChangeToVisible___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateStatusCornerState];
  v2 = *(a1 + 32);

  return [v2 _updateAdditionalActionInfoEdgeInsets];
}

- (BOOL)imageAnalysisInteraction:(id)interaction shouldShowLookupForItemFromCallout:(id)callout
{
  v5 = [PUOneUpSettings sharedInstance:interaction];
  allowsVisualIntelligenceVisualLookupInfoPanelMode = [v5 allowsVisualIntelligenceVisualLookupInfoPanelMode];

  if (allowsVisualIntelligenceVisualLookupInfoPanelMode)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 1 || (-[PUImageAnalysisInteraction browsingViewModel](self, "browsingViewModel"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 horizontalSizeClass], v9, v10 != 2))
    {
      objc_initWeak(&location, self);
      v11 = dispatch_time(0, 200000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __90__PUImageAnalysisInteraction_imageAnalysisInteraction_shouldShowLookupForItemFromCallout___block_invoke;
      block[3] = &unk_1E7B80610;
      objc_copyWeak(&v14, &location);
      block[4] = self;
      dispatch_after(v11, MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }

  return 1;
}

void __90__PUImageAnalysisInteraction_imageAnalysisInteraction_shouldShowLookupForItemFromCallout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 showDetailsViewForImageAnalysisInteraction:*(a1 + 32)];
}

- (void)imageAnalysisInteractionSubjectInteractionInProgressDidChange:(id)change
{
  delegate = [(PUImageAnalysisInteraction *)self delegate];
  [delegate imageAnalysisInteractionSubjectInteractionInProgressDidChange:self];
}

- (BOOL)imageAnalysisInteraction:(id)interaction shouldBeginAtPoint:(CGPoint)point forAnalysisType:(unint64_t)type
{
  typeCopy = type;
  y = point.y;
  x = point.x;
  interactionCopy = interaction;
  interaction = [(PUImageAnalysisInteraction *)self interaction];

  if (interaction != interactionCopy)
  {
    goto LABEL_2;
  }

  if ((typeCopy & 8) == 0)
  {
LABEL_4:
    v11 = 1;
    goto LABEL_5;
  }

  if ([(PUImageAnalysisInteraction *)self allowsVKRemoveBackground])
  {
    if (![interactionCopy isSubjectHighlightAvailable])
    {
      goto LABEL_4;
    }

    if ([interactionCopy imageSubjectExistsAtPoint:{x, y}])
    {
      v13 = MEMORY[0x1E69C3C88];
      assetViewModel = [(PUImageAnalysisInteraction *)self assetViewModel];
      asset = [assetViewModel asset];
      [v13 preheatResourcesForSubjectExtractionOfAsset:asset];

      goto LABEL_4;
    }
  }

LABEL_2:
  v11 = 0;
LABEL_5:

  return v11;
}

- (CGRect)contentsRectForImageAnalysisInteraction:(id)interaction
{
  [(PUImageAnalysisInteraction *)self contentsRect];
  hostView = [(PUImageAnalysisInteraction *)self hostView];
  [hostView bounds];

  assetViewModel = [(PUImageAnalysisInteraction *)self assetViewModel];
  asset = [assetViewModel asset];
  [asset aspectRatio];
  v8 = v7;

  if (v8 < 0.0 || v8 > 0.0)
  {
    hostView2 = [(PUImageAnalysisInteraction *)self hostView];
    traitCollection = [hostView2 traitCollection];
    [traitCollection displayScale];
    PFFrameApplyingContentsRectInBounds();

    PXRectNormalize();
  }

  else
  {
    v9 = *MEMORY[0x1E69C48E0];
    v10 = *(MEMORY[0x1E69C48E0] + 8);
    v11 = *(MEMORY[0x1E69C48E0] + 16);
    v12 = *(MEMORY[0x1E69C48E0] + 24);
  }

  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (id)contentImageForImageAnalysisInteraction:(id)interaction
{
  assetViewModel = [(PUImageAnalysisInteraction *)self assetViewModel];
  asset = [assetViewModel asset];
  mediaType = [asset mediaType];

  if (mediaType != 2)
  {
    goto LABEL_6;
  }

  videoPlayer = [assetViewModel videoPlayer];
  videoSession = [videoPlayer videoSession];
  currentPixelBuffer = [videoSession currentPixelBuffer];

  if (!currentPixelBuffer)
  {
    goto LABEL_8;
  }

  imageOut = 0;
  VTCreateCGImageFromCVPixelBuffer(currentPixelBuffer, 0, &imageOut);
  if (imageOut)
  {
    videoPlayer2 = [assetViewModel videoPlayer];
    videoSession2 = [videoPlayer2 videoSession];
    v11 = videoSession2;
    if (videoSession2)
    {
      [videoSession2 preferredTransform];
    }

    v12 = PXVKImageOrientationFromPreferredTransform();

    currentPixelBuffer = [MEMORY[0x1E69DCAB8] imageWithCGImage:imageOut scale:v12 orientation:1.0];
    CGImageRelease(imageOut);
  }

  else
  {
LABEL_6:
    currentPixelBuffer = 0;
  }

LABEL_8:

  return currentPixelBuffer;
}

- (id)contentViewForImageAnalysisInteraction:(id)interaction
{
  delegate = [(PUImageAnalysisInteraction *)self delegate];
  hostView = [delegate contentViewForImageAnalysisInteraction:self];

  if (!hostView)
  {
    hostView = [(PUImageAnalysisInteraction *)self hostView];
  }

  return hostView;
}

- (void)_updateAdditionalActionInfoEdgeInsets
{
  interaction = [(PUImageAnalysisInteraction *)self interaction];
  [(PUImageAnalysisInteraction *)self additionalActionInfoEdgeInsets];
  PXEdgeInsetsAdd();
  [interaction setActionInfoEdgeInsets:?];
}

- (void)setAdditionalActionInfoEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_additionalActionInfoEdgeInsets.top), vceqq_f64(v4, *&self->_additionalActionInfoEdgeInsets.bottom)))) & 1) == 0)
  {
    self->_additionalActionInfoEdgeInsets = insets;
    [(PUImageAnalysisInteraction *)self _updateAdditionalActionInfoEdgeInsets];
  }
}

- (BOOL)_allowsSubjectLifting
{
  assetViewModel = [(PUImageAnalysisInteraction *)self assetViewModel];
  [assetViewModel accessoryViewVisibilityFraction];
  v4 = PXFloatGreaterThanOrApproximatelyEqualToFloat();

  if (!v4)
  {
    return 1;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  browsingViewModel = [(PUImageAnalysisInteraction *)self browsingViewModel];
  horizontalSizeClass = [browsingViewModel horizontalSizeClass];

  return !userInterfaceIdiom || horizontalSizeClass == 1;
}

- (void)_updateInteraction
{
  interaction = [(PUImageAnalysisInteraction *)self interaction];
  if (!interaction)
  {
    goto LABEL_47;
  }

  assetViewModel = [(PUImageAnalysisInteraction *)self assetViewModel];
  browsingViewModel = [(PUImageAnalysisInteraction *)self browsingViewModel];
  delegate = [(PUImageAnalysisInteraction *)self delegate];
  if (![assetViewModel isFullyInFocus] || (objc_msgSend(assetViewModel, "isBeingDismissed") & 1) != 0 || objc_msgSend(assetViewModel, "statusCornerState") == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [browsingViewModel isInSelectionMode] ^ 1;
  }

  analysis = [interaction analysis];
  visualImageAnalysis = [assetViewModel visualImageAnalysis];

  if (analysis != visualImageAnalysis)
  {
    visualImageAnalysis2 = [assetViewModel visualImageAnalysis];
    [interaction setAnalysis:visualImageAnalysis2];
  }

  v30 = delegate;
  if (v7)
  {
    bestImage = [assetViewModel bestImage];
    v12 = [delegate textsToHighlightForImageAnalysisInteraction:self];
    if ([browsingViewModel isChromeVisible])
    {
      sizeChangeCoalescer = [(PUImageAnalysisInteraction *)self sizeChangeCoalescer];
      if ([sizeChangeCoalescer hasPendingEvent] && (objc_msgSend(interaction, "hasActiveTextSelection") & 1) == 0)
      {
        highlightSelectableItems = [interaction highlightSelectableItems];
      }

      else
      {
        highlightSelectableItems = 1;
      }
    }

    else if ([interaction hasActiveTextSelection])
    {
      highlightSelectableItems = 1;
    }

    else
    {
      highlightSelectableItems = [interaction highlightSelectableItems];
    }

    _allowsSubjectLifting = [(PUImageAnalysisInteraction *)self _allowsSubjectLifting];
    assetViewModel2 = [(PUImageAnalysisInteraction *)self assetViewModel];
    isAccessoryViewVisible = [assetViewModel2 isAccessoryViewVisible];

    if (isAccessoryViewVisible && (-[PUImageAnalysisInteraction assetViewModel](self, "assetViewModel"), v20 = objc_claimAutoreleasedReturnValue(), [v20 accessoryViewVisibilityFraction], v21 = PXFloatGreaterThanOrApproximatelyEqualToFloat(), v20, v21))
    {
      if (_allowsSubjectLifting)
      {
        sizeChangeCoalescer2 = [(PUImageAnalysisInteraction *)self sizeChangeCoalescer];
        if ([sizeChangeCoalescer2 hasPendingEvent])
        {

LABEL_53:
          v23 = 0;
          v15 = 0;
          goto LABEL_28;
        }

        if (v30)
        {
          v28 = [v30 imageAnalysisInteractionShouldHighlightSubjectWhenAccessoryIsVisible:self];

          if ((v28 & 1) == 0)
          {
            goto LABEL_53;
          }
        }

        else
        {
        }

        v15 = 1;
        v23 = 8;
        goto LABEL_28;
      }

      analysis2 = [interaction analysis];
      hasVisualSearchResults = [analysis2 hasVisualSearchResults];

      v15 = 0;
      if (hasVisualSearchResults)
      {
        v23 = 4;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v15 = 0;
      if (_allowsSubjectLifting)
      {
        v23 = 9;
      }

      else
      {
        v23 = 1;
      }
    }

LABEL_28:
    if ([interaction highlightSelectableItems])
    {
      v16 = v23 | 2;
    }

    else
    {
      v16 = v23;
    }

    if (highlightSelectableItems)
    {
      [interaction updateActionInfoLayout];
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_34;
  }

  v14 = 0;
  v15 = 0;
  bestImage = 0;
  v12 = 0;
  v16 = 0;
LABEL_34:
  if ([interaction activeInteractionTypes] != v16)
  {
    [interaction setActiveInteractionTypes:v16];
  }

  _photosImageForRemoveBackground = [interaction _photosImageForRemoveBackground];

  if (_photosImageForRemoveBackground != bestImage)
  {
    [interaction set_photosImageForRemoveBackground:bestImage];
  }

  if (v15 != [interaction _photosInfoSingleTapSubjectModeEnabled])
  {
    [interaction set_photosInfoSingleTapSubjectModeEnabled:v15];
  }

  if (v14 == [interaction actionInfoViewHidden])
  {
    [interaction setActionInfoViewHidden:v14 ^ 1u];
  }

  if (v7)
  {
    [interaction beginImageSubjectAnalysisIfNecessary];
  }

  if (v12)
  {
    [interaction highlightMatchesForStrings:v12 animated:1];
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __48__PUImageAnalysisInteraction__updateInteraction__block_invoke;
  v31[3] = &unk_1E7B80C38;
  v32 = assetViewModel;
  v33 = interaction;
  v25 = assetViewModel;
  [v25 performChanges:v31];

LABEL_47:
}

- (void)_updateInteractionView
{
  interaction = [(PUImageAnalysisInteraction *)self interaction];
  if (interaction)
  {
    v7 = interaction;
    hostView = [(PUImageAnalysisInteraction *)self hostView];
    view = [v7 view];

    if (hostView != view)
    {
      view2 = [v7 view];
      [view2 removeInteraction:v7];

      [hostView addInteraction:v7];
    }

    interaction = v7;
  }
}

- (void)setHostView:(id)view
{
  viewCopy = view;
  p_hostView = &self->_hostView;
  if (self->_hostView != viewCopy)
  {
    v7 = viewCopy;
    objc_storeStrong(p_hostView, view);
    p_hostView = [(PUImageAnalysisInteraction *)self _resetInteraction];
    viewCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_hostView, viewCopy);
}

- (void)_handleBrowsingViewModelChange:(id)change
{
  changeCopy = change;
  if (([changeCopy chromeVisibilityDidChange] & 1) != 0 || (objc_msgSend(changeCopy, "isInteractingWithVideoScrubberDidChange") & 1) != 0 || objc_msgSend(changeCopy, "isInSelectionModeDidChange"))
  {
    [(PUImageAnalysisInteraction *)self _invalidateInteraction];
  }
}

- (void)_updateContentsRect
{
  assetViewModel = [(PUImageAnalysisInteraction *)self assetViewModel];
  [assetViewModel mainImageContentsRect];
  [(PUImageAnalysisInteraction *)self setContentsRect:?];
}

- (void)_handleAssetViewModelChange:(id)change
{
  changeCopy = change;
  if (([changeCopy accessoryViewVisibilityFractionChanged] & 1) != 0 || (objc_msgSend(changeCopy, "modelTileTransformChanged") & 1) != 0 || objc_msgSend(changeCopy, "isUserTransformingTileDidChange"))
  {
    sizeChangeCoalescer = [(PUImageAnalysisInteraction *)self sizeChangeCoalescer];
    [sizeChangeCoalescer inputEvent];
  }

  if ([changeCopy visualImageAnalysisChanged])
  {
    if ([(PUImageAnalysisInteraction *)self isDrivingLivePhotoPlayback])
    {
      [(PUImageAnalysisInteraction *)self setShouldResetInteractionWhenNotDrivingLivePhotoPlayback:1];
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (([changeCopy bestImageChanged] & 1) != 0 || (objc_msgSend(changeCopy, "isFullyInFocusChanged") & 1) != 0 || (objc_msgSend(changeCopy, "accessoryViewVisibilityFractionChanged") & 1) != 0 || (objc_msgSend(changeCopy, "isBeingDismissedChanged") & 1) != 0 || objc_msgSend(changeCopy, "statusCornerStateChanged"))
  {
LABEL_13:
    [(PUImageAnalysisInteraction *)self _invalidateInteraction];
    goto LABEL_14;
  }

  if ([changeCopy mainImageContentsRectChanged])
  {
    [(PUImageAnalysisInteraction *)self _updateContentsRect];
  }

LABEL_14:
}

- (void)viewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  assetViewModel = [(PUImageAnalysisInteraction *)self assetViewModel];

  if (assetViewModel == modelCopy)
  {
    [(PUImageAnalysisInteraction *)self _handleAssetViewModelChange:changeCopy];
  }

  else
  {
    browsingViewModel = [(PUImageAnalysisInteraction *)self browsingViewModel];

    if (browsingViewModel == modelCopy)
    {
      [(PUImageAnalysisInteraction *)self _handleBrowsingViewModelChange:changeCopy];
    }
  }
}

- (void)_invalidateInteraction
{
  updater = [(PUImageAnalysisInteraction *)self updater];
  [updater setNeedsUpdateOf:sel__updateInteraction];
}

void __45__PUImageAnalysisInteraction__scheduleUpdate__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) updater];
  [v1 updateIfNeeded];
}

- (void)_resetInteraction
{
  v14 = *MEMORY[0x1E69E9840];
  [(PUImageAnalysisInteraction *)self setShouldResetInteractionWhenNotDrivingLivePhotoPlayback:0];
  interaction = self->_interaction;
  if (interaction)
  {
    [(PXVKImageAnalysisInteraction *)interaction setAnalysis:0];
    [(PXVKImageAnalysisInteraction *)self->_interaction setActiveInteractionTypes:0];
    [(PXVKImageAnalysisInteraction *)self->_interaction set_photosImageForRemoveBackground:0];
  }

  else
  {
    interactionCreator = [(PUImageAnalysisInteraction *)self interactionCreator];
    v5 = interactionCreator[2]();
    v6 = self->_interaction;
    self->_interaction = v5;

    if (PFOSVariantHasInternalUI())
    {
      v7 = PLVisualIntelligenceGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_interaction;
        v10 = 138412546;
        v11 = v8;
        v12 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "Creating VKC interaction: %@ on %@", &v10, 0x16u);
      }
    }
  }

  [(PXVKImageAnalysisInteraction *)self->_interaction setDelegate:self];
  sizeChangeCoalescer = [(PUImageAnalysisInteraction *)self sizeChangeCoalescer];
  [sizeChangeCoalescer inputEvent];

  [(PUImageAnalysisInteraction *)self _updateInteractionView];
  [(PUImageAnalysisInteraction *)self _invalidateInteraction];
}

- (PXEventCoalescer)sizeChangeCoalescer
{
  sizeChangeCoalescer = self->_sizeChangeCoalescer;
  if (!sizeChangeCoalescer)
  {
    v4 = MEMORY[0x1E69C44E8];
    [objc_opt_class() interactionResetInterval];
    v5 = [v4 delayedCoalescerWithDelay:?];
    v6 = self->_sizeChangeCoalescer;
    self->_sizeChangeCoalescer = v5;

    [(PXEventCoalescer *)self->_sizeChangeCoalescer registerObserver:self];
    sizeChangeCoalescer = self->_sizeChangeCoalescer;
  }

  return sizeChangeCoalescer;
}

- (void)setContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectEqualToRect(rect, self->_contentsRect))
  {
    self->_contentsRect.origin.x = x;
    self->_contentsRect.origin.y = y;
    self->_contentsRect.size.width = width;
    self->_contentsRect.size.height = height;
    interaction = [(PUImageAnalysisInteraction *)self interaction];
    [interaction updateContentsRect];
  }
}

- (BOOL)visualSearchExistsAtLocation:(id)location
{
  locationCopy = location;
  if (-[PUImageAnalysisInteraction visualImageInteractionEnabled](self, "visualImageInteractionEnabled") && (-[PUImageAnalysisInteraction interaction](self, "interaction"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 activeInteractionTypes], v5, (v6 & 4) != 0))
  {
    interaction = [(PUImageAnalysisInteraction *)self interaction];
    interaction2 = [(PUImageAnalysisInteraction *)self interaction];
    view = [interaction2 view];
    [locationCopy locationInView:view];
    v7 = [interaction visualSearchExistsAtPoint:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isImageSubjectAnalyzingFinished
{
  interaction = [(PUImageAnalysisInteraction *)self interaction];
  isSubjectAnalysisComplete = [interaction isSubjectAnalysisComplete];

  return isSubjectAnalysisComplete;
}

- (void)setBrowsingViewModel:(id)model
{
  obj = model;
  WeakRetained = objc_loadWeakRetained(&self->_browsingViewModel);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_browsingViewModel);
    [v5 unregisterChangeObserver:self];

    v6 = objc_storeWeak(&self->_browsingViewModel, obj);
    [obj registerChangeObserver:self];

    [(PUImageAnalysisInteraction *)self _invalidateInteraction];
  }
}

- (void)setAssetViewModel:(id)model
{
  obj = model;
  WeakRetained = objc_loadWeakRetained(&self->_assetViewModel);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_assetViewModel);
    [v5 unregisterChangeObserver:self];

    v6 = objc_storeWeak(&self->_assetViewModel, obj);
    [obj registerChangeObserver:self];

    [(PUImageAnalysisInteraction *)self _updateContentsRect];
    [(PUImageAnalysisInteraction *)self _invalidateInteraction];
  }
}

- (PUImageAnalysisInteraction)initWithInteractionCreator:(id)creator
{
  creatorCopy = creator;
  v12.receiver = self;
  v12.super_class = PUImageAnalysisInteraction;
  v5 = [(PUImageAnalysisInteraction *)&v12 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C4600]) initWithTarget:v5 needsUpdateSelector:sel__scheduleUpdate];
    updater = v5->_updater;
    v5->_updater = v6;

    [(PXUpdater *)v5->_updater addUpdateSelector:sel__updateInteraction];
    if (creatorCopy)
    {
      v8 = creatorCopy;
    }

    else
    {
      v8 = &__block_literal_global_41681;
    }

    v9 = _Block_copy(v8);
    interactionCreator = v5->_interactionCreator;
    v5->_interactionCreator = v9;

    [(PUImageAnalysisInteraction *)v5 _resetInteraction];
  }

  return v5;
}

- (void)dealloc
{
  view = [(PXVKImageAnalysisInteraction *)self->_interaction view];
  [view removeInteraction:self->_interaction];

  v4.receiver = self;
  v4.super_class = PUImageAnalysisInteraction;
  [(PUImageAnalysisInteraction *)&v4 dealloc];
}

@end