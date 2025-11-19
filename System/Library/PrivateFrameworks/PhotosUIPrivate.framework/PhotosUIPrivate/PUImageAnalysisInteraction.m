@interface PUImageAnalysisInteraction
- (BOOL)_allowsSubjectLifting;
- (BOOL)actionInfoItemExistsAtLocation:(id)a3;
- (BOOL)allowsVKRemoveBackground;
- (BOOL)dataDetectorExistsAtLocation:(id)a3;
- (BOOL)hasActiveTextSelection;
- (BOOL)imageAnalysisInteraction:(id)a3 shouldBeginAtPoint:(CGPoint)a4 forAnalysisType:(unint64_t)a5;
- (BOOL)imageAnalysisInteraction:(id)a3 shouldShowLookupForItemFromCallout:(id)a4;
- (BOOL)imageInteractionHasAnalysisAndSubjectLiftingEnabled;
- (BOOL)imageSubjectExistsAtLocation:(id)a3;
- (BOOL)interactiveItemExistsAtLocation:(id)a3;
- (BOOL)isImageSubjectAnalysisAvailable;
- (BOOL)isImageSubjectAnalyzingFinished;
- (BOOL)isShowingLivePhotoForImageAnalysisInteraction:(id)a3;
- (BOOL)isSubjectInteractionInProgress;
- (BOOL)isVisualIntelligenceOverlayInitialized;
- (BOOL)subjectHighlightActive;
- (BOOL)textExistsAtLocation:(id)a3;
- (BOOL)visualImageInteractionEnabled;
- (BOOL)visualSearchExistsAtLocation:(id)a3;
- (CGRect)contentFrame;
- (CGRect)contentsRect;
- (CGRect)contentsRectForImageAnalysisInteraction:(id)a3;
- (PUAssetViewModel)assetViewModel;
- (PUBrowsingViewModel)browsingViewModel;
- (PUImageAnalysisInteraction)initWithInteractionCreator:(id)a3;
- (PUImageAnalysisInteractionDelegate)delegate;
- (PXEventCoalescer)sizeChangeCoalescer;
- (UICoordinateSpace)contentCoordinateSpace;
- (UIEdgeInsets)additionalActionInfoEdgeInsets;
- (id)contentImageForImageAnalysisInteraction:(id)a3;
- (id)contentViewForImageAnalysisInteraction:(id)a3;
- (id)presentingViewControllerForImageAnalysisInteraction:(id)a3;
- (void)_handleAssetViewModelChange:(id)a3;
- (void)_handleBrowsingViewModelChange:(id)a3;
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
- (void)imageAnalysisInteraction:(id)a3 didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)a4;
- (void)imageAnalysisInteraction:(id)a3 livePhotoShouldPlay:(BOOL)a4;
- (void)imageAnalysisInteractionDidDismissVisualSearchController:(id)a3;
- (void)imageAnalysisInteractionSubjectInteractionInProgressDidChange:(id)a3;
- (void)ppt_notifyWhenVKAnalysisIsReadyWithTimeout:(double)a3 completionHandler:(id)a4;
- (void)setAdditionalActionInfoEdgeInsets:(UIEdgeInsets)a3;
- (void)setAssetViewModel:(id)a3;
- (void)setBrowsingViewModel:(id)a3;
- (void)setContentsRect:(CGRect)a3;
- (void)setHostView:(id)a3;
- (void)setIsDrivingLivePhotoPlayback:(BOOL)a3;
- (void)viewModel:(id)a3 didChange:(id)a4;
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

- (void)ppt_notifyWhenVKAnalysisIsReadyWithTimeout:(double)a3 completionHandler:(id)a4
{
  v7 = a4;
  if (v7)
  {
    v8 = [MEMORY[0x1E69DC668] sharedApplication];
    v9 = [v8 launchedToTest];

    if (v9)
    {
      v10 = [(PUImageAnalysisInteraction *)self pptVKAnalysisWaitingTimer];
      v11 = [v10 isValid];

      if (v11)
      {
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        [v20 handleFailureInMethod:a2 object:self file:@"PUImageAnalysisInteraction.m" lineNumber:637 description:{@"Should not request notification, when a request is already on going"}];
      }

      v12 = MEMORY[0x1E69C3C88];
      v13 = [(PUImageAnalysisInteraction *)self assetViewModel];
      v14 = [v13 asset];
      v15 = [v12 canRequestVKImageAnalysisForAsset:v14];

      v16 = [(PUImageAnalysisInteraction *)self assetViewModel];
      v17 = [v16 visualImageAnalysis];

      if (v17 || (v15 & 1) == 0)
      {
        [(PUImageAnalysisInteraction *)self _ppt_resetVKAnalysisWaitingTimer];
        location[1] = MEMORY[0x1E69E9820];
        location[2] = 3221225472;
        location[3] = __91__PUImageAnalysisInteraction_ppt_notifyWhenVKAnalysisIsReadyWithTimeout_completionHandler___block_invoke;
        location[4] = &unk_1E7B80C88;
        v28 = v7;
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
        v25 = v7;
        objc_copyWeak(&v26, location);
        v19 = [v18 pu_scheduledTimerWithTimeInterval:0 repeats:&v21 block:a3];
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
  v3 = [(PUImageAnalysisInteraction *)self pptVKAnalysisWaitingTimer];
  [v3 fire];

  [(PUImageAnalysisInteraction *)self _ppt_resetVKAnalysisWaitingTimer];
}

- (void)_ppt_resetVKAnalysisWaitingTimer
{
  v3 = [(PUImageAnalysisInteraction *)self pptVKAnalysisWaitingTimer];
  [v3 invalidate];

  [(PUImageAnalysisInteraction *)self setPptVKAnalysisWaitingTimer:0];
}

- (BOOL)allowsVKRemoveBackground
{
  v2 = +[PUOneUpSettings sharedInstance];
  v3 = [v2 allowsVisualIntelligenceRemoveBackground];

  return v3;
}

- (void)_updateStatusCornerState
{
  v3 = [(PUImageAnalysisInteraction *)self assetViewModel];
  if ([v3 statusCornerState] != 1)
  {
    v4 = [(PUImageAnalysisInteraction *)self interaction];
    if (([v4 actionInfoViewHidden] & 1) != 0 || !objc_msgSend(v4, "liveTextButtonVisible"))
    {
      if ([v3 statusCornerState] != 2)
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
    v7 = v3;
    v5[4] = v7;
    [v7 performChanges:v5];

    goto LABEL_8;
  }

LABEL_9:
}

- (BOOL)isSubjectInteractionInProgress
{
  v2 = [(PUImageAnalysisInteraction *)self interaction];
  v3 = [v2 subjectInteractionInProgress];

  return v3;
}

- (BOOL)subjectHighlightActive
{
  v2 = [(PUImageAnalysisInteraction *)self interaction];
  v3 = [v2 subjectHighlightActive];

  return v3;
}

- (BOOL)imageInteractionHasAnalysisAndSubjectLiftingEnabled
{
  if (-[PUImageAnalysisInteraction allowsVKRemoveBackground](self, "allowsVKRemoveBackground") && (-[PUImageAnalysisInteraction interaction](self, "interaction"), v3 = objc_claimAutoreleasedReturnValue(), [v3 analysis], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v5 = [(PUImageAnalysisInteraction *)self interaction];
    v6 = ([v5 activeInteractionTypes] >> 3) & 1;
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
    v3 = [(PUImageAnalysisInteraction *)self interaction];
    [v3 beginImageSubjectAnalysisIfNecessary];
  }
}

- (BOOL)isImageSubjectAnalysisAvailable
{
  v2 = [(PUImageAnalysisInteraction *)self interaction];
  v3 = [v2 isSubjectHighlightAvailable];

  return v3;
}

- (BOOL)hasActiveTextSelection
{
  v2 = [(PUImageAnalysisInteraction *)self interaction];
  v3 = [v2 hasActiveTextSelection];

  return v3;
}

- (BOOL)isVisualIntelligenceOverlayInitialized
{
  v2 = [(PUImageAnalysisInteraction *)self interaction];
  v3 = [v2 analysis];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)imageSubjectExistsAtLocation:(id)a3
{
  v4 = a3;
  if ([(PUImageAnalysisInteraction *)self allowsVKRemoveBackground])
  {
    v5 = [(PUImageAnalysisInteraction *)self interaction];
    v6 = [(PUImageAnalysisInteraction *)self interaction];
    v7 = [v6 view];
    [v4 locationInView:v7];
    v8 = [v5 imageSubjectExistsAtPoint:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)actionInfoItemExistsAtLocation:(id)a3
{
  v4 = a3;
  v5 = [(PUImageAnalysisInteraction *)self interaction];
  v6 = [(PUImageAnalysisInteraction *)self interaction];
  v7 = [v6 view];
  [v4 locationInView:v7];
  v9 = v8;
  v11 = v10;

  LOBYTE(v4) = [v5 actionInfoItemExistsAtPoint:{v9, v11}];
  return v4;
}

- (BOOL)interactiveItemExistsAtLocation:(id)a3
{
  v4 = a3;
  v5 = [(PUImageAnalysisInteraction *)self interaction];
  v6 = [(PUImageAnalysisInteraction *)self interaction];
  v7 = [v6 view];
  [v4 locationInView:v7];
  v9 = v8;
  v11 = v10;

  LOBYTE(v4) = [v5 interactableItemExistsAtPoint:{v9, v11}];
  return v4;
}

- (BOOL)dataDetectorExistsAtLocation:(id)a3
{
  v4 = a3;
  v5 = [(PUImageAnalysisInteraction *)self interaction];
  v6 = [(PUImageAnalysisInteraction *)self interaction];
  v7 = [v6 view];
  [v4 locationInView:v7];
  v9 = v8;
  v11 = v10;

  LOBYTE(v4) = [v5 dataDetectorExistsAtPoint:{v9, v11}];
  return v4;
}

- (BOOL)textExistsAtLocation:(id)a3
{
  v4 = a3;
  v5 = [(PUImageAnalysisInteraction *)self interaction];
  v6 = [(PUImageAnalysisInteraction *)self interaction];
  v7 = [v6 view];
  [v4 locationInView:v7];
  v9 = v8;
  v11 = v10;

  LOBYTE(v4) = [v5 textExistsAtPoint:{v9, v11}];
  return v4;
}

- (BOOL)visualImageInteractionEnabled
{
  v2 = self;
  v3 = [(PUImageAnalysisInteraction *)self delegate];
  LOBYTE(v2) = [v3 analysisInteractionAllowedForImageAnalysisInteraction:v2];

  return v2;
}

- (void)setIsDrivingLivePhotoPlayback:(BOOL)a3
{
  if (self->_isDrivingLivePhotoPlayback != a3)
  {
    self->_isDrivingLivePhotoPlayback = a3;
    if (!a3 && [(PUImageAnalysisInteraction *)self shouldResetInteractionWhenNotDrivingLivePhotoPlayback])
    {
      [(PUImageAnalysisInteraction *)self _resetInteraction];
    }

    v5 = [(PUImageAnalysisInteraction *)self delegate];
    [v5 imageAnalysisInteractionIsDrivingLivePhotoPlaybackDidChange:self];
  }
}

- (void)imageAnalysisInteractionDidDismissVisualSearchController:(id)a3
{
  v3 = [(PUImageAnalysisInteraction *)self assetViewModel];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87__PUImageAnalysisInteraction_imageAnalysisInteractionDidDismissVisualSearchController___block_invoke;
  v5[3] = &unk_1E7B80DD0;
  v6 = v3;
  v4 = v3;
  [v4 performChanges:v5];
}

- (void)imageAnalysisInteraction:(id)a3 didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)a4
{
  v4 = [(PUImageAnalysisInteraction *)self assetViewModel:a3];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __108__PUImageAnalysisInteraction_imageAnalysisInteraction_didTapVisualSearchIndicatorWithNormalizedBoundingBox___block_invoke;
  v6[3] = &unk_1E7B80DD0;
  v7 = v4;
  v5 = v4;
  [v5 performChanges:v6];
}

- (id)presentingViewControllerForImageAnalysisInteraction:(id)a3
{
  v4 = [(PUImageAnalysisInteraction *)self delegate];
  v5 = [v4 presentingViewControllerForImageAnalysisInteraction:self];

  return v5;
}

- (void)imageAnalysisInteraction:(id)a3 livePhotoShouldPlay:(BOOL)a4
{
  v4 = a4;
  v6 = [(PUImageAnalysisInteraction *)self assetViewModel];
  v7 = [v6 isAccessoryViewVisible];

  if ((v7 & 1) == 0)
  {
    v8 = [(PUImageAnalysisInteraction *)self browsingViewModel];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __75__PUImageAnalysisInteraction_imageAnalysisInteraction_livePhotoShouldPlay___block_invoke;
    v9[3] = &unk_1E7B7FF98;
    v9[4] = self;
    v10 = v4;
    [v8 performChanges:v9];

    [(PUImageAnalysisInteraction *)self setIsDrivingLivePhotoPlayback:v4];
  }
}

void __75__PUImageAnalysisInteraction_imageAnalysisInteraction_livePhotoShouldPlay___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) browsingViewModel];
  [v2 setLivePhotoShouldPlay:v1];
}

- (BOOL)isShowingLivePhotoForImageAnalysisInteraction:(id)a3
{
  v3 = [(PUImageAnalysisInteraction *)self assetViewModel];
  v4 = [v3 asset];
  v5 = [v4 playbackStyle] == 3;

  return v5;
}

uint64_t __88__PUImageAnalysisInteraction_imageAnalysisInteraction_liveTextButtonDidChangeToVisible___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateStatusCornerState];
  v2 = *(a1 + 32);

  return [v2 _updateAdditionalActionInfoEdgeInsets];
}

- (BOOL)imageAnalysisInteraction:(id)a3 shouldShowLookupForItemFromCallout:(id)a4
{
  v5 = [PUOneUpSettings sharedInstance:a3];
  v6 = [v5 allowsVisualIntelligenceVisualLookupInfoPanelMode];

  if (v6)
  {
    v7 = [MEMORY[0x1E69DC938] currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if (v8 != 1 || (-[PUImageAnalysisInteraction browsingViewModel](self, "browsingViewModel"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 horizontalSizeClass], v9, v10 != 2))
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

- (void)imageAnalysisInteractionSubjectInteractionInProgressDidChange:(id)a3
{
  v4 = [(PUImageAnalysisInteraction *)self delegate];
  [v4 imageAnalysisInteractionSubjectInteractionInProgressDidChange:self];
}

- (BOOL)imageAnalysisInteraction:(id)a3 shouldBeginAtPoint:(CGPoint)a4 forAnalysisType:(unint64_t)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = [(PUImageAnalysisInteraction *)self interaction];

  if (v10 != v9)
  {
    goto LABEL_2;
  }

  if ((v5 & 8) == 0)
  {
LABEL_4:
    v11 = 1;
    goto LABEL_5;
  }

  if ([(PUImageAnalysisInteraction *)self allowsVKRemoveBackground])
  {
    if (![v9 isSubjectHighlightAvailable])
    {
      goto LABEL_4;
    }

    if ([v9 imageSubjectExistsAtPoint:{x, y}])
    {
      v13 = MEMORY[0x1E69C3C88];
      v14 = [(PUImageAnalysisInteraction *)self assetViewModel];
      v15 = [v14 asset];
      [v13 preheatResourcesForSubjectExtractionOfAsset:v15];

      goto LABEL_4;
    }
  }

LABEL_2:
  v11 = 0;
LABEL_5:

  return v11;
}

- (CGRect)contentsRectForImageAnalysisInteraction:(id)a3
{
  [(PUImageAnalysisInteraction *)self contentsRect];
  v4 = [(PUImageAnalysisInteraction *)self hostView];
  [v4 bounds];

  v5 = [(PUImageAnalysisInteraction *)self assetViewModel];
  v6 = [v5 asset];
  [v6 aspectRatio];
  v8 = v7;

  if (v8 < 0.0 || v8 > 0.0)
  {
    v13 = [(PUImageAnalysisInteraction *)self hostView];
    v14 = [v13 traitCollection];
    [v14 displayScale];
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

- (id)contentImageForImageAnalysisInteraction:(id)a3
{
  v3 = [(PUImageAnalysisInteraction *)self assetViewModel];
  v4 = [v3 asset];
  v5 = [v4 mediaType];

  if (v5 != 2)
  {
    goto LABEL_6;
  }

  v6 = [v3 videoPlayer];
  v7 = [v6 videoSession];
  v8 = [v7 currentPixelBuffer];

  if (!v8)
  {
    goto LABEL_8;
  }

  imageOut = 0;
  VTCreateCGImageFromCVPixelBuffer(v8, 0, &imageOut);
  if (imageOut)
  {
    v9 = [v3 videoPlayer];
    v10 = [v9 videoSession];
    v11 = v10;
    if (v10)
    {
      [v10 preferredTransform];
    }

    v12 = PXVKImageOrientationFromPreferredTransform();

    v8 = [MEMORY[0x1E69DCAB8] imageWithCGImage:imageOut scale:v12 orientation:1.0];
    CGImageRelease(imageOut);
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

LABEL_8:

  return v8;
}

- (id)contentViewForImageAnalysisInteraction:(id)a3
{
  v4 = [(PUImageAnalysisInteraction *)self delegate];
  v5 = [v4 contentViewForImageAnalysisInteraction:self];

  if (!v5)
  {
    v5 = [(PUImageAnalysisInteraction *)self hostView];
  }

  return v5;
}

- (void)_updateAdditionalActionInfoEdgeInsets
{
  v3 = [(PUImageAnalysisInteraction *)self interaction];
  [(PUImageAnalysisInteraction *)self additionalActionInfoEdgeInsets];
  PXEdgeInsetsAdd();
  [v3 setActionInfoEdgeInsets:?];
}

- (void)setAdditionalActionInfoEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_additionalActionInfoEdgeInsets.top), vceqq_f64(v4, *&self->_additionalActionInfoEdgeInsets.bottom)))) & 1) == 0)
  {
    self->_additionalActionInfoEdgeInsets = a3;
    [(PUImageAnalysisInteraction *)self _updateAdditionalActionInfoEdgeInsets];
  }
}

- (BOOL)_allowsSubjectLifting
{
  v3 = [(PUImageAnalysisInteraction *)self assetViewModel];
  [v3 accessoryViewVisibilityFraction];
  v4 = PXFloatGreaterThanOrApproximatelyEqualToFloat();

  if (!v4)
  {
    return 1;
  }

  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  v7 = [(PUImageAnalysisInteraction *)self browsingViewModel];
  v8 = [v7 horizontalSizeClass];

  return !v6 || v8 == 1;
}

- (void)_updateInteraction
{
  v3 = [(PUImageAnalysisInteraction *)self interaction];
  if (!v3)
  {
    goto LABEL_47;
  }

  v4 = [(PUImageAnalysisInteraction *)self assetViewModel];
  v5 = [(PUImageAnalysisInteraction *)self browsingViewModel];
  v6 = [(PUImageAnalysisInteraction *)self delegate];
  if (![v4 isFullyInFocus] || (objc_msgSend(v4, "isBeingDismissed") & 1) != 0 || objc_msgSend(v4, "statusCornerState") == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 isInSelectionMode] ^ 1;
  }

  v8 = [v3 analysis];
  v9 = [v4 visualImageAnalysis];

  if (v8 != v9)
  {
    v10 = [v4 visualImageAnalysis];
    [v3 setAnalysis:v10];
  }

  v30 = v6;
  if (v7)
  {
    v11 = [v4 bestImage];
    v12 = [v6 textsToHighlightForImageAnalysisInteraction:self];
    if ([v5 isChromeVisible])
    {
      v13 = [(PUImageAnalysisInteraction *)self sizeChangeCoalescer];
      if ([v13 hasPendingEvent] && (objc_msgSend(v3, "hasActiveTextSelection") & 1) == 0)
      {
        v29 = [v3 highlightSelectableItems];
      }

      else
      {
        v29 = 1;
      }
    }

    else if ([v3 hasActiveTextSelection])
    {
      v29 = 1;
    }

    else
    {
      v29 = [v3 highlightSelectableItems];
    }

    v17 = [(PUImageAnalysisInteraction *)self _allowsSubjectLifting];
    v18 = [(PUImageAnalysisInteraction *)self assetViewModel];
    v19 = [v18 isAccessoryViewVisible];

    if (v19 && (-[PUImageAnalysisInteraction assetViewModel](self, "assetViewModel"), v20 = objc_claimAutoreleasedReturnValue(), [v20 accessoryViewVisibilityFraction], v21 = PXFloatGreaterThanOrApproximatelyEqualToFloat(), v20, v21))
    {
      if (v17)
      {
        v22 = [(PUImageAnalysisInteraction *)self sizeChangeCoalescer];
        if ([v22 hasPendingEvent])
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

      v26 = [v3 analysis];
      v27 = [v26 hasVisualSearchResults];

      v15 = 0;
      if (v27)
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
      if (v17)
      {
        v23 = 9;
      }

      else
      {
        v23 = 1;
      }
    }

LABEL_28:
    if ([v3 highlightSelectableItems])
    {
      v16 = v23 | 2;
    }

    else
    {
      v16 = v23;
    }

    if (v29)
    {
      [v3 updateActionInfoLayout];
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
  v11 = 0;
  v12 = 0;
  v16 = 0;
LABEL_34:
  if ([v3 activeInteractionTypes] != v16)
  {
    [v3 setActiveInteractionTypes:v16];
  }

  v24 = [v3 _photosImageForRemoveBackground];

  if (v24 != v11)
  {
    [v3 set_photosImageForRemoveBackground:v11];
  }

  if (v15 != [v3 _photosInfoSingleTapSubjectModeEnabled])
  {
    [v3 set_photosInfoSingleTapSubjectModeEnabled:v15];
  }

  if (v14 == [v3 actionInfoViewHidden])
  {
    [v3 setActionInfoViewHidden:v14 ^ 1u];
  }

  if (v7)
  {
    [v3 beginImageSubjectAnalysisIfNecessary];
  }

  if (v12)
  {
    [v3 highlightMatchesForStrings:v12 animated:1];
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __48__PUImageAnalysisInteraction__updateInteraction__block_invoke;
  v31[3] = &unk_1E7B80C38;
  v32 = v4;
  v33 = v3;
  v25 = v4;
  [v25 performChanges:v31];

LABEL_47:
}

- (void)_updateInteractionView
{
  v3 = [(PUImageAnalysisInteraction *)self interaction];
  if (v3)
  {
    v7 = v3;
    v4 = [(PUImageAnalysisInteraction *)self hostView];
    v5 = [v7 view];

    if (v4 != v5)
    {
      v6 = [v7 view];
      [v6 removeInteraction:v7];

      [v4 addInteraction:v7];
    }

    v3 = v7;
  }
}

- (void)setHostView:(id)a3
{
  v5 = a3;
  p_hostView = &self->_hostView;
  if (self->_hostView != v5)
  {
    v7 = v5;
    objc_storeStrong(p_hostView, a3);
    p_hostView = [(PUImageAnalysisInteraction *)self _resetInteraction];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](p_hostView, v5);
}

- (void)_handleBrowsingViewModelChange:(id)a3
{
  v4 = a3;
  if (([v4 chromeVisibilityDidChange] & 1) != 0 || (objc_msgSend(v4, "isInteractingWithVideoScrubberDidChange") & 1) != 0 || objc_msgSend(v4, "isInSelectionModeDidChange"))
  {
    [(PUImageAnalysisInteraction *)self _invalidateInteraction];
  }
}

- (void)_updateContentsRect
{
  v3 = [(PUImageAnalysisInteraction *)self assetViewModel];
  [v3 mainImageContentsRect];
  [(PUImageAnalysisInteraction *)self setContentsRect:?];
}

- (void)_handleAssetViewModelChange:(id)a3
{
  v5 = a3;
  if (([v5 accessoryViewVisibilityFractionChanged] & 1) != 0 || (objc_msgSend(v5, "modelTileTransformChanged") & 1) != 0 || objc_msgSend(v5, "isUserTransformingTileDidChange"))
  {
    v4 = [(PUImageAnalysisInteraction *)self sizeChangeCoalescer];
    [v4 inputEvent];
  }

  if ([v5 visualImageAnalysisChanged])
  {
    if ([(PUImageAnalysisInteraction *)self isDrivingLivePhotoPlayback])
    {
      [(PUImageAnalysisInteraction *)self setShouldResetInteractionWhenNotDrivingLivePhotoPlayback:1];
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (([v5 bestImageChanged] & 1) != 0 || (objc_msgSend(v5, "isFullyInFocusChanged") & 1) != 0 || (objc_msgSend(v5, "accessoryViewVisibilityFractionChanged") & 1) != 0 || (objc_msgSend(v5, "isBeingDismissedChanged") & 1) != 0 || objc_msgSend(v5, "statusCornerStateChanged"))
  {
LABEL_13:
    [(PUImageAnalysisInteraction *)self _invalidateInteraction];
    goto LABEL_14;
  }

  if ([v5 mainImageContentsRectChanged])
  {
    [(PUImageAnalysisInteraction *)self _updateContentsRect];
  }

LABEL_14:
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(PUImageAnalysisInteraction *)self assetViewModel];

  if (v7 == v9)
  {
    [(PUImageAnalysisInteraction *)self _handleAssetViewModelChange:v6];
  }

  else
  {
    v8 = [(PUImageAnalysisInteraction *)self browsingViewModel];

    if (v8 == v9)
    {
      [(PUImageAnalysisInteraction *)self _handleBrowsingViewModelChange:v6];
    }
  }
}

- (void)_invalidateInteraction
{
  v2 = [(PUImageAnalysisInteraction *)self updater];
  [v2 setNeedsUpdateOf:sel__updateInteraction];
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
    v4 = [(PUImageAnalysisInteraction *)self interactionCreator];
    v5 = v4[2]();
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
        v13 = self;
        _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "Creating VKC interaction: %@ on %@", &v10, 0x16u);
      }
    }
  }

  [(PXVKImageAnalysisInteraction *)self->_interaction setDelegate:self];
  v9 = [(PUImageAnalysisInteraction *)self sizeChangeCoalescer];
  [v9 inputEvent];

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

- (void)setContentsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(a3, self->_contentsRect))
  {
    self->_contentsRect.origin.x = x;
    self->_contentsRect.origin.y = y;
    self->_contentsRect.size.width = width;
    self->_contentsRect.size.height = height;
    v8 = [(PUImageAnalysisInteraction *)self interaction];
    [v8 updateContentsRect];
  }
}

- (BOOL)visualSearchExistsAtLocation:(id)a3
{
  v4 = a3;
  if (-[PUImageAnalysisInteraction visualImageInteractionEnabled](self, "visualImageInteractionEnabled") && (-[PUImageAnalysisInteraction interaction](self, "interaction"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 activeInteractionTypes], v5, (v6 & 4) != 0))
  {
    v8 = [(PUImageAnalysisInteraction *)self interaction];
    v9 = [(PUImageAnalysisInteraction *)self interaction];
    v10 = [v9 view];
    [v4 locationInView:v10];
    v7 = [v8 visualSearchExistsAtPoint:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isImageSubjectAnalyzingFinished
{
  v2 = [(PUImageAnalysisInteraction *)self interaction];
  v3 = [v2 isSubjectAnalysisComplete];

  return v3;
}

- (void)setBrowsingViewModel:(id)a3
{
  obj = a3;
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

- (void)setAssetViewModel:(id)a3
{
  obj = a3;
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

- (PUImageAnalysisInteraction)initWithInteractionCreator:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PUImageAnalysisInteraction;
  v5 = [(PUImageAnalysisInteraction *)&v12 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C4600]) initWithTarget:v5 needsUpdateSelector:sel__scheduleUpdate];
    updater = v5->_updater;
    v5->_updater = v6;

    [(PXUpdater *)v5->_updater addUpdateSelector:sel__updateInteraction];
    if (v4)
    {
      v8 = v4;
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
  v3 = [(PXVKImageAnalysisInteraction *)self->_interaction view];
  [v3 removeInteraction:self->_interaction];

  v4.receiver = self;
  v4.super_class = PUImageAnalysisInteraction;
  [(PUImageAnalysisInteraction *)&v4 dealloc];
}

@end