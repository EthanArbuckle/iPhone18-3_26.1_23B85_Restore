@interface PUAssetViewModel
+ (int64_t)imageAnalysisInteractionHostModeForAccessoryViewVisibility:(BOOL)a3;
- (BOOL)allowAutoplayVideoForAsset:(id)a3;
- (BOOL)isHDR;
- (CGPoint)contentOffset;
- (CGPoint)contentOffsetForAccessoryFullyVisible;
- (CGPoint)overridingContentOffset;
- (CGPoint)preferredContentOffset;
- (CGRect)mainImageContentsRect;
- (NSMapTable)interactionHostViewsByMode;
- (PUAssetViewModel)initWithLowMemoryMode:(BOOL)a3 mediaAnalyzer:(id)a4;
- (PUAssetViewModelChange)currentChange;
- (PUAssetViewModelChange)currentChangeIfExists;
- (PUVideoLayerSource)primaryVideoLayerSource;
- (PXVKCVisualSearchResultInfo)visualSearchResultInfo;
- (PXVKImageAnalysisInteraction)visualSearchImageAnalysisInteraction;
- (UIImage)bestImage;
- (id)debugDetailedDescription;
- (int64_t)fetchAssetSyndicationState;
- (void)_handleAssetSharedViewModel:(id)a3 didChange:(id)a4;
- (void)_handleBrowsingAnimatedImage:(id)a3 didChange:(id)a4;
- (void)_handleBrowsingIrisPlayer:(id)a3 didChange:(id)a4;
- (void)_handleBrowsingVideoPlayer:(id)a3 didChange:(id)a4;
- (void)_handleDidEndScrubbing;
- (void)_handleHighlightTimeRangesResult:(id)a3 forAsset:(id)a4;
- (void)_invalidateAccessoryViewVisibilityFraction;
- (void)_invalidateInteractionHostMode;
- (void)_invalidateMediaControllers;
- (void)_invalidateShouldShowHighlightTimeRanges;
- (void)_invalidateVideoPlayersLoadingAllowed;
- (void)_setAssetSyndicationState:(int64_t)a3;
- (void)_setFavorite:(BOOL)a3;
- (void)_updateAccessoryViewVisibilityFraction;
- (void)_updateFavoriteState;
- (void)_updateHighlightTimeRangesProducer;
- (void)_updateImageAnalysisInteractionHostView;
- (void)_updateInteractionHostMode;
- (void)_updateMediaControllers;
- (void)_updatePlayersLoadingAllowed;
- (void)_updatePropertiesFromAssetSharedViewModel;
- (void)_updateShouldShowHighlightTimeRanges;
- (void)_updateVideoPlaybackStartTime;
- (void)assetHighlightTimeRangesProducerDidChangeHighlights:(id)a3;
- (void)dealloc;
- (void)didPerformChanges;
- (void)didUpdateDisplayedContent;
- (void)registerChangeObserver:(id)a3;
- (void)registerView:(id)a3 forImageAnalysisInteractionHostMode:(int64_t)a4;
- (void)resetContentOffset;
- (void)setAccessoryViewVisibilityFraction:(double)a3;
- (void)setAccessoryViewVisible:(BOOL)a3 changeReason:(int64_t)a4;
- (void)setAsset:(id)a3;
- (void)setAssetSharedViewModel:(id)a3;
- (void)setAssetSyndicationStateOverride:(id)a3;
- (void)setBadgeInfoPromise:(id)a3;
- (void)setBestImage:(id)a3;
- (void)setContentOffsetForAccessoryFullyVisible:(CGPoint)a3;
- (void)setContentOffsetOverrideFactor:(double)a3;
- (void)setDisplayedContentUpdateCount:(int64_t)a3;
- (void)setDisplayedContentUpdateGroup:(id)a3;
- (void)setEditStyle:(int64_t)a3 changeReason:(int64_t)a4;
- (void)setFocusValue:(double)a3;
- (void)setForceBadgesVisible:(BOOL)a3;
- (void)setHasVisualAnalysisFailed:(BOOL)a3;
- (void)setHighlightTimeRanges:(id)a3;
- (void)setImageAnalysisInteraction:(id)a3;
- (void)setImageAnalysisInteractionHostMode:(int64_t)a3;
- (void)setImportState:(int64_t)a3;
- (void)setIrisPlayer:(id)a3;
- (void)setIsBeingDismissed:(BOOL)a3;
- (void)setIsDisplayingHDRContent:(BOOL)a3;
- (void)setIsDisplayingSearchQueryLabel:(BOOL)a3;
- (void)setIsFavoriteOverride:(id)a3;
- (void)setIsFullyInFocus:(BOOL)a3;
- (void)setIsFullyOutOfFocus:(BOOL)a3;
- (void)setIsIrisPlaying:(BOOL)a3;
- (void)setIsLivePhotoContentAllowed:(BOOL)a3;
- (void)setIsPresentedForPreview:(BOOL)a3;
- (void)setIsScrubbing:(BOOL)a3;
- (void)setIsUpdatingDisplayedContent:(BOOL)a3;
- (void)setIsVisualSearchCardShowing:(BOOL)a3;
- (void)setIsZoomedIn:(BOOL)a3;
- (void)setLoadingStatus:(id)a3;
- (void)setMainImageContentsRect:(CGRect)a3;
- (void)setMediaProvider:(id)a3;
- (void)setModelTileTransform:(id)a3;
- (void)setNeedsResetVisualImageInteraction:(BOOL)a3 reason:(int64_t)a4;
- (void)setOverridingContentOffset:(CGPoint)a3;
- (void)setPPT_isDeferredProcessingDoneAndFinalImageDisplayed:(BOOL)a3;
- (void)setPhototypeAccessoryViewSupport:(id)a3;
- (void)setPhototypeInfoButtonSupport:(id)a3;
- (void)setPreferredContentOffset:(CGPoint)a3 changeReason:(int64_t)a4;
- (void)setRevealsGainMapImage:(BOOL)a3;
- (void)setSaveProgress:(id)a3;
- (void)setSaveState:(int64_t)a3;
- (void)setSearchContextualVideoThumbnailIdentifier:(id)a3;
- (void)setSearchQueryMatchInfo:(id)a3;
- (void)setShazamEventInfo:(id)a3;
- (void)setShouldShowHighlightTimeRanges:(BOOL)a3;
- (void)setStatusCornerState:(int64_t)a3;
- (void)setUserTransformingTile:(BOOL)a3;
- (void)setVideoAutoplayPredicate:(id)a3;
- (void)setVideoPlayer:(id)a3;
- (void)setVisualImageAnalysis:(id)a3;
- (void)setVisualIntelligenceAnalyzeRequestID:(int)a3;
- (void)setVisualSearchImageAnalysisInteraction:(id)a3;
- (void)unregisterChangeObserver:(id)a3;
- (void)unregisterView:(id)a3 forImageAnalysisInteractionHostMode:(int64_t)a4;
- (void)viewModel:(id)a3 didChange:(id)a4;
- (void)willUpdateDisplayedContent;
@end

@implementation PUAssetViewModel

- (CGRect)mainImageContentsRect
{
  x = self->_mainImageContentsRect.origin.x;
  y = self->_mainImageContentsRect.origin.y;
  width = self->_mainImageContentsRect.size.width;
  height = self->_mainImageContentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIImage)bestImage
{
  WeakRetained = objc_loadWeakRetained(&self->_bestImage);

  return WeakRetained;
}

- (PXVKImageAnalysisInteraction)visualSearchImageAnalysisInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_visualSearchImageAnalysisInteraction);

  return WeakRetained;
}

- (CGPoint)overridingContentOffset
{
  x = self->_overridingContentOffset.x;
  y = self->_overridingContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)preferredContentOffset
{
  x = self->_preferredContentOffset.x;
  y = self->_preferredContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)contentOffsetForAccessoryFullyVisible
{
  x = self->_contentOffsetForAccessoryFullyVisible.x;
  y = self->_contentOffsetForAccessoryFullyVisible.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)debugDetailedDescription
{
  v3 = [MEMORY[0x1E696AD60] string];
  [(PUAssetViewModel *)self focusValue];
  [v3 appendFormat:@"Focus Value: %f\n", v4];
  v5 = [(PUAssetViewModel *)self modelTileTransform];
  [v3 appendFormat:@"Tile Transform: %@\n", v5];

  [(PUAssetViewModel *)self contentOffset];
  v6 = NSStringFromCGPoint(v23);
  [v3 appendFormat:@"Content Offset: %@\n", v6];

  v7 = [(PUAssetViewModel *)self badgeInfoPromise];
  [v3 appendFormat:@"Badge Info: %@\n", v7];

  v8 = [(PUAssetViewModel *)self loadingStatus];
  [v3 appendFormat:@"Loading Status: %@\n", v8];

  v9 = [(PUAssetViewModel *)self videoPlayer];
  v10 = [v9 debugDetailedDescription];
  [v3 appendFormat:@"Video Player: %@\n", v10];

  v11 = [(PUAssetViewModel *)self irisPlayer];
  v12 = [v11 debugDetailedDescription];
  [v3 appendFormat:@"Iris Player: %@\n", v12];

  v13 = [(PUAssetViewModel *)self animatedImagePlayer];
  v14 = [v13 debugDetailedDescription];
  [v3 appendFormat:@"Animated Image: %@\n", v14];

  v15 = [(PUAssetViewModel *)self searchQueryMatchInfo];
  [v3 appendFormat:@"Search Info: %@\n", v15];

  if ([(PUAssetViewModel *)self isUserTransformingTile])
  {
    [v3 appendString:@"User Transforming Tile\n"];
  }

  v16 = MEMORY[0x1E696AEC0];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = [v3 pu_stringByIndentingNewLines];
  v20 = [v16 stringWithFormat:@"<%@ %p> {\n\t%@}", v18, self, v19];

  return v20;
}

- (void)_updateInteractionHostMode
{
  v3 = [objc_opt_class() imageAnalysisInteractionHostModeForAccessoryViewVisibility:{-[PUAssetViewModel isAccessoryViewVisible](self, "isAccessoryViewVisible")}];

  [(PUAssetViewModel *)self setImageAnalysisInteractionHostMode:v3];
}

- (void)_invalidateInteractionHostMode
{
  v2 = [(PUAssetViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateInteractionHostMode];
}

- (void)_updateImageAnalysisInteractionHostView
{
  v3 = [(PUAssetViewModel *)self imageAnalysisInteractionHostMode];
  v4 = [(PUAssetViewModel *)self interactionHostViewsByMode];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  v7 = [v4 objectForKey:v5];

  v6 = [(PUAssetViewModel *)self imageAnalysisInteraction];
  [v6 setHostView:v7];
}

- (void)setImageAnalysisInteractionHostMode:(int64_t)a3
{
  if (self->_imageAnalysisInteractionHostMode != a3)
  {
    self->_imageAnalysisInteractionHostMode = a3;
    [(PUAssetViewModel *)self _updateImageAnalysisInteractionHostView];
  }
}

- (NSMapTable)interactionHostViewsByMode
{
  interactionHostViewsByMode = self->_interactionHostViewsByMode;
  if (!interactionHostViewsByMode)
  {
    v4 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v5 = self->_interactionHostViewsByMode;
    self->_interactionHostViewsByMode = v4;

    interactionHostViewsByMode = self->_interactionHostViewsByMode;
  }

  return interactionHostViewsByMode;
}

- (void)unregisterView:(id)a3 forImageAnalysisInteractionHostMode:(int64_t)a4
{
  v6 = a3;
  v7 = [(PUAssetViewModel *)self interactionHostViewsByMode];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v9 = [v7 objectForKey:v8];

  if (v9 == v6)
  {
    v10 = [(PUAssetViewModel *)self interactionHostViewsByMode];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [v10 removeObjectForKey:v11];

    [(PUAssetViewModel *)self _updateImageAnalysisInteractionHostView];
  }
}

- (void)registerView:(id)a3 forImageAnalysisInteractionHostMode:(int64_t)a4
{
  v6 = a3;
  v7 = [(PUAssetViewModel *)self interactionHostViewsByMode];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v7 setObject:v6 forKey:v8];

  [(PUAssetViewModel *)self _updateImageAnalysisInteractionHostView];
}

- (void)_handleBrowsingAnimatedImage:(id)a3 didChange:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__PUAssetViewModel__handleBrowsingAnimatedImage_didChange___block_invoke;
  v7[3] = &unk_1E7B80C38;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(PUViewModel *)self performChanges:v7];
}

void __59__PUAssetViewModel__handleBrowsingAnimatedImage_didChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentChange];
  [v2 _setAnimatedImageChange:*(a1 + 40)];
}

- (void)_handleBrowsingIrisPlayer:(id)a3 didChange:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__PUAssetViewModel__handleBrowsingIrisPlayer_didChange___block_invoke;
  v7[3] = &unk_1E7B80C38;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(PUViewModel *)self performChanges:v7];
}

void __56__PUAssetViewModel__handleBrowsingIrisPlayer_didChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentChange];
  [v2 _setIrisPlayerChange:*(a1 + 40)];
}

- (void)_handleBrowsingVideoPlayer:(id)a3 didChange:(id)a4
{
  v5 = a4;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __57__PUAssetViewModel__handleBrowsingVideoPlayer_didChange___block_invoke;
  v13 = &unk_1E7B80C38;
  v14 = self;
  v15 = v5;
  v6 = v5;
  v7 = _Block_copy(&v10);
  v8 = [(PUAssetViewModel *)self updater:v10];
  v9 = [v8 isPerformingUpdates];

  if (v9)
  {
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }

  else
  {
    v7[2](v7);
  }
}

void __57__PUAssetViewModel__handleBrowsingVideoPlayer_didChange___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__PUAssetViewModel__handleBrowsingVideoPlayer_didChange___block_invoke_2;
  v5[3] = &unk_1E7B80C38;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 performChanges:v5];
}

void __57__PUAssetViewModel__handleBrowsingVideoPlayer_didChange___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) durationDidChange])
  {
    [*(a1 + 40) _invalidateShouldShowHighlightTimeRanges];
  }

  v2 = [*(a1 + 40) currentChange];
  [v2 _setVideoPlayerChange:*(a1 + 32)];
}

- (void)_handleAssetSharedViewModel:(id)a3 didChange:(id)a4
{
  v5 = a4;
  if (([v5 loadingStatusChanged] & 1) != 0 || (objc_msgSend(v5, "saveProgressChanged") & 1) != 0 || objc_msgSend(v5, "saveStateChanged"))
  {
    [(PUAssetViewModel *)self _updatePropertiesFromAssetSharedViewModel];
  }
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v7 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PUAssetViewModel *)self _handleAssetSharedViewModel:v7 didChange:v6];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PUAssetViewModel *)self _handleBrowsingVideoPlayer:v7 didChange:v6];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(PUAssetViewModel *)self _handleBrowsingIrisPlayer:v7 didChange:v6];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(PUAssetViewModel *)self _handleBrowsingAnimatedImage:v7 didChange:v6];
        }
      }
    }
  }
}

- (void)assetHighlightTimeRangesProducerDidChangeHighlights:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__PUAssetViewModel_assetHighlightTimeRangesProducerDidChangeHighlights___block_invoke;
  v6[3] = &unk_1E7B80C38;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PUViewModel *)self performChanges:v6];
}

void __72__PUAssetViewModel_assetHighlightTimeRangesProducerDidChangeHighlights___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) highlightTimeRanges];
  [*(a1 + 32) setHighlightTimeRanges:v2];
}

- (int64_t)fetchAssetSyndicationState
{
  result = self->_assetSyndicationState;
  if (!result)
  {
    v4 = [(PUAssetViewModel *)self assetSyndicationStateOverride];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 integerValue];
    }

    else
    {
      v7 = [(PUAssetViewModel *)self asset];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
        if ([v8 px_isUnsavedSyndicatedAsset])
        {
          if (PXContentSyndicationCMMAssetIsBeingSaved())
          {
            [(PUAssetViewModel *)self setAssetSyndicationStateOverride:&unk_1F2B7DAF0];
            v6 = 1;
          }

          else
          {
            v6 = 2;
          }
        }

        else if ([v8 px_wasSavedThroughSyndication])
        {
          v6 = 4;
        }

        else
        {
          v6 = 1;
        }
      }

      else
      {
        v6 = 1;
      }
    }

    self->_assetSyndicationState = v6;
    v9 = [(PUAssetViewModel *)self currentChange];
    [v9 setAssetSyndicationStateChanged:1];

    return self->_assetSyndicationState;
  }

  return result;
}

- (void)_updateFavoriteState
{
  v6 = [(PUAssetViewModel *)self asset];
  v3 = [(PUAssetViewModel *)self isFavoriteOverride];
  if (v3)
  {
    v4 = [(PUAssetViewModel *)self isFavoriteOverride];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = [v6 isFavorite];
  }

  [(PUAssetViewModel *)self _setFavorite:v5];
}

- (PXVKCVisualSearchResultInfo)visualSearchResultInfo
{
  v2 = [(PUAssetViewModel *)self visualImageAnalysis];
  v3 = [v2 resultItems];
  v4 = [v3 firstObject];

  return v4;
}

- (void)_updateVideoPlaybackStartTime
{
  v3 = [(PUAssetViewModel *)self videoPlayer];
  v4 = v3;
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __49__PUAssetViewModel__updateVideoPlaybackStartTime__block_invoke;
    v5[3] = &unk_1E7B80C38;
    v5[4] = self;
    v6 = v3;
    [v6 performChanges:v5];
  }
}

uint64_t __49__PUAssetViewModel__updateVideoPlaybackStartTime__block_invoke(uint64_t a1)
{
  v2 = +[PUOneUpSettings sharedInstance];
  v3 = [v2 videoStartAtFirstHighlight];

  if (v3)
  {
    v4 = [*(a1 + 32) highlightTimeRanges];
    v5 = [v4 firstObject];
    v6 = v5;
    if (v5)
    {
      [v5 CMTimeRangeValue];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
    }

    *&v19.value = v16;
    v19.epoch = v17;

    memset(&v15, 0, sizeof(v15));
    v9 = +[PUOneUpSettings sharedInstance];
    [v9 videoHighlightPreroll];
    CMTimeMakeWithSeconds(&rhs, v10, 600);
    v12 = v19;
    CMTimeSubtract(&time2, &v12, &rhs);
    rhs = **&MEMORY[0x1E6960CC0];
    CMTimeMaximum(&v15, &rhs, &time2);

    time2 = v15;
    v7 = *(a1 + 40);
    p_time2 = &time2;
  }

  else
  {
    v7 = *(a1 + 40);
    v19 = **&MEMORY[0x1E6960C70];
    p_time2 = &v19;
  }

  return [v7 setPlaybackStartTime:p_time2];
}

- (void)setPPT_isDeferredProcessingDoneAndFinalImageDisplayed:(BOOL)a3
{
  if (self->_PPT_isDeferredProcessingDoneAndFinalImageDisplayed != a3)
  {
    self->_PPT_isDeferredProcessingDoneAndFinalImageDisplayed = a3;
    v4 = [(PUAssetViewModel *)self currentChange];
    [v4 setPPT_isDeferredProcessingDoneAndFinalImageDisplayedChanged:1];
  }
}

- (void)setNeedsResetVisualImageInteraction:(BOOL)a3 reason:(int64_t)a4
{
  if (self->_needsResetVisualImageInteraction != a3)
  {
    self->_needsResetVisualImageInteraction = a3;
    self->_needsResetVisualImageInteractionReason = a4;
    v5 = [(PUAssetViewModel *)self currentChange];
    [v5 setNeedsResetVisualImageInteractionChanged:1];
  }
}

- (void)setStatusCornerState:(int64_t)a3
{
  if (self->_statusCornerState != a3)
  {
    self->_statusCornerState = a3;
    v4 = [(PUAssetViewModel *)self currentChange];
    [v4 setStatusCornerStateChanged:1];
  }
}

- (void)setBestImage:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_bestImage);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_bestImage, obj);
    v6 = [(PUAssetViewModel *)self currentChange];
    [v6 _setBestImageChanged:1];

    v5 = obj;
  }
}

- (void)setIsVisualSearchCardShowing:(BOOL)a3
{
  if (self->_isVisualSearchCardShowing != a3)
  {
    self->_isVisualSearchCardShowing = a3;
    v4 = [(PUAssetViewModel *)self currentChange];
    [v4 _setIsVisualSearchCardShowingChanged:1];
  }
}

- (void)setIsIrisPlaying:(BOOL)a3
{
  if (self->_isIrisPlaying != a3)
  {
    self->_isIrisPlaying = a3;
    v4 = [(PUAssetViewModel *)self currentChange];
    [v4 _setIsIrisPlayingChanged:1];
  }
}

- (void)setIsBeingDismissed:(BOOL)a3
{
  if (self->_isBeingDismissed != a3)
  {
    self->_isBeingDismissed = a3;
    v4 = [(PUAssetViewModel *)self currentChange];
    [v4 _setIsBeingDismissedChanged:1];
  }
}

- (void)setVisualIntelligenceAnalyzeRequestID:(int)a3
{
  if (self->_visualIntelligenceAnalyzeRequestID != a3)
  {
    self->_visualIntelligenceAnalyzeRequestID = a3;
    v4 = [(PUAssetViewModel *)self currentChange];
    [v4 setVisualIntelligenceAnalyzeRequestIDChanged:1];
  }
}

- (void)setMainImageContentsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_mainImageContentsRect = &self->_mainImageContentsRect;
  if (!CGRectEqualToRect(a3, self->_mainImageContentsRect))
  {
    p_mainImageContentsRect->origin.x = x;
    p_mainImageContentsRect->origin.y = y;
    p_mainImageContentsRect->size.width = width;
    p_mainImageContentsRect->size.height = height;
    v9 = [(PUAssetViewModel *)self currentChange];
    [v9 setMainImageContentsRectChanged:1];
  }
}

- (void)setShazamEventInfo:(id)a3
{
  v5 = a3;
  if (self->_shazamEventInfo != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_shazamEventInfo, a3);
    v6 = [(PUAssetViewModel *)self currentChange];
    [v6 _setShazamEventInfoChanged:1];

    v5 = v7;
  }
}

- (void)setPhototypeInfoButtonSupport:(id)a3
{
  v5 = a3;
  if (self->_phototypeInfoButtonSupport != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_phototypeInfoButtonSupport, a3);
    v6 = [(PUAssetViewModel *)self currentChange];
    [v6 setPhototypeInfoButtonSupportChanged:1];

    v5 = v7;
  }
}

- (void)setPhototypeAccessoryViewSupport:(id)a3
{
  v5 = a3;
  if (self->_phototypeAccessoryViewSupport != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_phototypeAccessoryViewSupport, a3);
    v6 = [(PUAssetViewModel *)self currentChange];
    [v6 setPhototypeAccessoryViewSupportChanged:1];

    v5 = v7;
  }
}

- (void)setHasVisualAnalysisFailed:(BOOL)a3
{
  if (self->_hasVisualAnalysisFailed != a3)
  {
    self->_hasVisualAnalysisFailed = a3;
    v4 = [(PUAssetViewModel *)self currentChange];
    [v4 setHasVisualAnalysisFailedChanged:1];
  }
}

- (void)setVisualImageAnalysis:(id)a3
{
  v5 = a3;
  visualImageAnalysis = self->_visualImageAnalysis;
  if (visualImageAnalysis != v5)
  {
    v8 = v5;
    PXDeferredDealloc();
    objc_storeStrong(&self->_visualImageAnalysis, a3);
    v7 = [(PUAssetViewModel *)self currentChange];
    [v7 _setVisualImageAnalysisChanged:1];

    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](visualImageAnalysis, v5);
}

- (void)setIsPresentedForPreview:(BOOL)a3
{
  if (self->_isPresentedForPreview != a3)
  {
    self->_isPresentedForPreview = a3;
    v4 = [(PUAssetViewModel *)self currentChange];
    [v4 _setIsPresentedForPreviewChanged:1];
  }
}

- (void)setDisplayedContentUpdateGroup:(id)a3
{
  v5 = a3;
  displayedContentUpdateGroup = self->_displayedContentUpdateGroup;
  v8 = v5;
  if (displayedContentUpdateGroup != v5)
  {
    if (displayedContentUpdateGroup)
    {
      dispatch_group_leave(displayedContentUpdateGroup);
    }

    objc_storeStrong(&self->_displayedContentUpdateGroup, a3);
    v7 = self->_displayedContentUpdateGroup;
    if (v7)
    {
      dispatch_group_enter(v7);
    }
  }
}

- (void)setIsUpdatingDisplayedContent:(BOOL)a3
{
  if (self->_isUpdatingDisplayedContent != a3)
  {
    self->_isUpdatingDisplayedContent = a3;
    kdebug_trace();
    v5 = [(PUAssetViewModel *)self currentChange];
    [v5 _setIsUpdatingDisplayedContentChanged:1];

    if (a3)
    {
      v6 = dispatch_group_create();
      [(PUAssetViewModel *)self setDisplayedContentUpdateGroup:v6];
    }

    else
    {

      [(PUAssetViewModel *)self setDisplayedContentUpdateGroup:0];
    }
  }
}

- (void)setDisplayedContentUpdateCount:(int64_t)a3
{
  if (self->_displayedContentUpdateCount != a3)
  {
    if (a3 < 0)
    {
      v4 = PLOneUpGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "displayedContentUpdateCount underflow", v5, 2u);
      }

      a3 = 0;
    }

    self->_displayedContentUpdateCount = a3;
    [(PUAssetViewModel *)self setIsUpdatingDisplayedContent:a3 != 0];
  }
}

- (void)didUpdateDisplayedContent
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __45__PUAssetViewModel_didUpdateDisplayedContent__block_invoke;
  v2[3] = &unk_1E7B80DD0;
  v2[4] = self;
  [(PUViewModel *)self performChanges:v2];
}

uint64_t __45__PUAssetViewModel_didUpdateDisplayedContent__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 displayedContentUpdateCount] - 1;

  return [v1 setDisplayedContentUpdateCount:v2];
}

- (void)willUpdateDisplayedContent
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __46__PUAssetViewModel_willUpdateDisplayedContent__block_invoke;
  v2[3] = &unk_1E7B80DD0;
  v2[4] = self;
  [(PUViewModel *)self performChanges:v2];
}

uint64_t __46__PUAssetViewModel_willUpdateDisplayedContent__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 displayedContentUpdateCount] + 1;

  return [v1 setDisplayedContentUpdateCount:v2];
}

- (void)_updatePropertiesFromAssetSharedViewModel
{
  v3 = [(PUAssetViewModel *)self assetSharedViewModel];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__PUAssetViewModel__updatePropertiesFromAssetSharedViewModel__block_invoke;
  v5[3] = &unk_1E7B80C38;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  [(PUViewModel *)self performChanges:v5];
}

uint64_t __61__PUAssetViewModel__updatePropertiesFromAssetSharedViewModel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) loadingStatus];
  [*(a1 + 32) setLoadingStatus:v2];

  v3 = [*(a1 + 40) saveProgress];
  [*(a1 + 32) setSaveProgress:v3];

  v4 = [*(a1 + 40) saveState];
  v5 = *(a1 + 32);

  return [v5 setSaveState:v4];
}

- (void)setAssetSharedViewModel:(id)a3
{
  v5 = a3;
  assetSharedViewModel = self->_assetSharedViewModel;
  if (assetSharedViewModel != v5)
  {
    v7 = v5;
    [(PUAssetSharedViewModel *)assetSharedViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_assetSharedViewModel, a3);
    [(PUAssetSharedViewModel *)self->_assetSharedViewModel registerChangeObserver:self];
    assetSharedViewModel = [(PUAssetViewModel *)self _updatePropertiesFromAssetSharedViewModel];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](assetSharedViewModel, v5);
}

- (void)setForceBadgesVisible:(BOOL)a3
{
  if (self->_forceBadgesVisible != a3)
  {
    self->_forceBadgesVisible = a3;
    v4 = [(PUAssetViewModel *)self currentChange];
    [v4 _setForceBadgesVisibleChanged:1];
  }
}

- (void)setRevealsGainMapImage:(BOOL)a3
{
  if (self->_revealsGainMapImage != a3)
  {
    self->_revealsGainMapImage = a3;
    v4 = [(PUAssetViewModel *)self currentChange];
    [v4 setRevealsGainMapImageChanged:1];
  }
}

- (void)setEditStyle:(int64_t)a3 changeReason:(int64_t)a4
{
  if (*&self->_editStyle != __PAIR128__(a4, a3))
  {
    v7 = [(PUAssetViewModel *)self isInEditMode];
    self->_editStyle = a3;
    self->_lastEditStyleChangeReason = a4;
    if (v7 != [(PUAssetViewModel *)self isInEditMode])
    {
      v8 = [(PUAssetViewModel *)self currentChange];
      [v8 _setIsInEditModeChanged:1];
    }
  }
}

- (void)setContentOffsetOverrideFactor:(double)a3
{
  if (self->_contentOffsetOverrideFactor != a3)
  {
    self->_contentOffsetOverrideFactor = a3;
    kdebug_trace();
    v5 = [(PUAssetViewModel *)self currentChange];
    [v5 _setContentOffsetChanged:1];

    [(PUAssetViewModel *)self _updateAccessoryViewVisibilityFraction];
  }
}

- (void)setOverridingContentOffset:(CGPoint)a3
{
  if (a3.x != self->_overridingContentOffset.x || a3.y != self->_overridingContentOffset.y)
  {
    self->_overridingContentOffset = a3;
    kdebug_trace();
    [(PUAssetViewModel *)self _setLastContentOffsetChangeReason:0];
    v6 = [(PUAssetViewModel *)self currentChange];
    [v6 _setContentOffsetChanged:1];

    [(PUAssetViewModel *)self _updateAccessoryViewVisibilityFraction];
  }
}

- (void)setPreferredContentOffset:(CGPoint)a3 changeReason:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  p_preferredContentOffset = &self->_preferredContentOffset;
  if ((PXPointApproximatelyEqualToPoint() & 1) == 0)
  {
    p_preferredContentOffset->x = x;
    p_preferredContentOffset->y = y;
    kdebug_trace();
    [(PUAssetViewModel *)self _setLastContentOffsetChangeReason:a4];
    v9 = [(PUAssetViewModel *)self currentChange];
    [v9 _setContentOffsetChanged:1];

    [(PUAssetViewModel *)self _updateAccessoryViewVisibilityFraction];
  }
}

- (void)resetContentOffset
{
  [(PUAssetViewModel *)self preferredContentOffset];
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  if (v6 != *MEMORY[0x1E695EFF8] || v3 != v5)
  {
    [(PUAssetViewModel *)self contentOffsetOverrideFactor];
    if (v8 != 0.0)
    {
      [(PUAssetViewModel *)self setPreferredContentOffset:v4, v5];
      [(PUAssetViewModel *)self setContentOffsetOverrideFactor:0.0];
      v9 = [(PUAssetViewModel *)self currentChange];
      [v9 _setContentOffsetChanged:1];
    }
  }
}

- (CGPoint)contentOffset
{
  [(PUAssetViewModel *)self preferredContentOffset];
  v4 = v3;
  v6 = v5;
  [(PUAssetViewModel *)self overridingContentOffset];
  v8 = v7;
  v10 = v9;
  [(PUAssetViewModel *)self contentOffsetOverrideFactor];
  v12 = v6 * (1.0 - v11);
  v13 = v10 * v11;
  v14 = v4 * (1.0 - v11) + v8 * v11;
  v15 = v12 + v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)setAccessoryViewVisible:(BOOL)a3 changeReason:(int64_t)a4
{
  if (self->_accessoryViewVisible != a3)
  {
    self->_accessoryViewVisible = a3;
    v7 = [(PUAssetViewModel *)self currentChange];
    [v7 _setAccessoryViewVisibilityChanged:1];

    [(PUAssetViewModel *)self _setLastAccessoryViewVisibilityChangeReason:a4];

    [(PUAssetViewModel *)self _invalidateAccessoryViewVisibilityFraction];
  }
}

- (void)setAccessoryViewVisibilityFraction:(double)a3
{
  if (self->_accessoryViewVisibilityFraction != a3)
  {
    self->_accessoryViewVisibilityFraction = a3;
    [(PUAssetViewModel *)self _invalidateInteractionHostMode];
    v5 = [(PUAssetViewModel *)self currentChange];
    [v5 setAccessoryViewVisibilityFractionChanged:1];
  }
}

- (void)_updateAccessoryViewVisibilityFraction
{
  [(PUAssetViewModel *)self contentOffsetForAccessoryFullyVisible];
  if (v4 == *MEMORY[0x1E695EFF8] && v3 == *(MEMORY[0x1E695EFF8] + 8))
  {
    v8 = [(PUAssetViewModel *)self isAccessoryViewVisible];
  }

  else
  {
    PXPointDistanceFromOrigin();
    v7 = v6;
    v8 = 0.0;
    if (v7 != 0.0)
    {
      [(PUAssetViewModel *)self contentOffset];
      PXPointDistanceFromOrigin();
      PXClamp();
    }
  }

  [(PUAssetViewModel *)self setAccessoryViewVisibilityFraction:v8];
}

- (void)_invalidateAccessoryViewVisibilityFraction
{
  v2 = [(PUAssetViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAccessoryViewVisibilityFraction];
}

- (void)setContentOffsetForAccessoryFullyVisible:(CGPoint)a3
{
  if (a3.x != self->_contentOffsetForAccessoryFullyVisible.x || a3.y != self->_contentOffsetForAccessoryFullyVisible.y)
  {
    self->_contentOffsetForAccessoryFullyVisible = a3;
    [(PUAssetViewModel *)self _updateAccessoryViewVisibilityFraction];
  }
}

- (void)setModelTileTransform:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_modelTileTransform != v4 && ![(PUModelTileTransform *)v4 isEqual:?])
  {
    v6 = [(PUModelTileTransform *)v5 copy];
    modelTileTransform = self->_modelTileTransform;
    self->_modelTileTransform = v6;

    v8 = PLOneUpGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = 134218242;
      v11 = self;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "%p modelTileTransform=%@", &v10, 0x16u);
    }

    v9 = [(PUAssetViewModel *)self currentChange];
    [v9 _setModelTileTransformChanged:1];
  }
}

- (void)setIsDisplayingHDRContent:(BOOL)a3
{
  if (self->_isDisplayingHDRContent != a3)
  {
    self->_isDisplayingHDRContent = a3;
    v4 = [(PUAssetViewModel *)self currentChange];
    [v4 setIsDisplayingHDRContentChanged:1];
  }
}

- (void)setIsZoomedIn:(BOOL)a3
{
  if (self->_isZoomedIn != a3)
  {
    self->_isZoomedIn = a3;
    v4 = [(PUAssetViewModel *)self currentChange];
    [v4 setIsZoomedInChanged:1];
  }
}

- (PUVideoLayerSource)primaryVideoLayerSource
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_registeredVideoLayerSources;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (![v6 isOnSecondScreen])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)setIsDisplayingSearchQueryLabel:(BOOL)a3
{
  if (self->_isDisplayingSearchQueryLabel != a3)
  {
    self->_isDisplayingSearchQueryLabel = a3;
    v4 = [(PUAssetViewModel *)self currentChange];
    [v4 setIsDisplayingSearchQueryLabelChanged:1];
  }
}

- (void)setSearchContextualVideoThumbnailIdentifier:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_searchContextualVideoThumbnailIdentifier != v5)
  {
    v7 = v5;
    v5 = [v5 isEqualToString:?];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_searchContextualVideoThumbnailIdentifier, a3);
      v5 = [(PUAssetViewModel *)self _invalidateHighlightTimeRangesProducer];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setSearchQueryMatchInfo:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_searchQueryMatchInfo != v5)
  {
    v7 = v5;
    v5 = [v5 isEqual:?];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_searchQueryMatchInfo, a3);
      v5 = [(PUAssetViewModel *)self _invalidateHighlightTimeRangesProducer];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setShouldShowHighlightTimeRanges:(BOOL)a3
{
  if (self->_shouldShowHighlightTimeRanges != a3)
  {
    self->_shouldShowHighlightTimeRanges = a3;
    v4 = [(PUAssetViewModel *)self currentChange];
    [v4 setShouldShowHighlightTimeRangesChanged:1];
  }
}

- (void)_updateShouldShowHighlightTimeRanges
{
  v3 = [(PUAssetViewModel *)self highlightTimeRanges];
  memset(&v12, 0, sizeof(v12));
  v4 = [(PUAssetViewModel *)self videoPlayer];
  v5 = v4;
  if (v4)
  {
    [v4 duration];
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  if ((v12.flags & 0x1D) == 1 && [v3 count])
  {
    v11 = v12;
    Seconds = CMTimeGetSeconds(&v11);
    PXCMTimeRangeCombinedDuration();
    v7 = CMTimeGetSeconds(&v11) / Seconds;
    v8 = [MEMORY[0x1E69C3C50] sharedInstance];
    [v8 maxHighlightFractionForDisplay];
    v10 = v7 <= v9;
  }

  else
  {
    v10 = 0;
  }

  [(PUAssetViewModel *)self setShouldShowHighlightTimeRanges:v10];
}

- (void)_invalidateShouldShowHighlightTimeRanges
{
  v2 = [(PUAssetViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateShouldShowHighlightTimeRanges];
}

- (void)setHighlightTimeRanges:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_highlightTimeRanges != v4 && ([(NSArray *)v4 isEqual:?]& 1) == 0)
  {
    v6 = [(PUAssetViewModel *)self asset];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = [(PUAssetViewModel *)self videoPlayer];
    if ([(NSArray *)v5 count]&& v7 && v8)
    {
      v9 = [v8 timeRangeMapper];
      if (v9)
      {
      }

      else if ([v7 px_isSloMo])
      {
        v10 = PLOneUpGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *v13 = 0;
          _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_ERROR, "Missing a timeRangeMapper – this is needed to correctly map video highlights and playback start time for slo mo videos.", v13, 2u);
        }

        goto LABEL_16;
      }
    }

    v11 = [(NSArray *)v5 copy];
    highlightTimeRanges = self->_highlightTimeRanges;
    self->_highlightTimeRanges = v11;

    [(PUAssetViewModel *)self _invalidateShouldShowHighlightTimeRanges];
    [(PUAssetViewModel *)self _updateVideoPlaybackStartTime];
    v10 = [(PUAssetViewModel *)self currentChange];
    [v10 setHighlightTimeRangesChanged:1];
LABEL_16:
  }
}

- (void)_handleHighlightTimeRangesResult:(id)a3 forAsset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUAssetViewModel *)self asset];

  if (v8 == v7)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__PUAssetViewModel__handleHighlightTimeRangesResult_forAsset___block_invoke;
    v9[3] = &unk_1E7B80C38;
    v9[4] = self;
    v10 = v6;
    [(PUViewModel *)self performChanges:v9];
  }
}

- (void)_updateHighlightTimeRangesProducer
{
  v3 = [(PUAssetViewModel *)self _pxDisplayAsset];
  v4 = [(PUAssetViewModel *)self highlightTimeRangesProducer];
  [v4 setAsset:v3];

  v5 = [(PUAssetViewModel *)self searchQueryMatchInfo];
  v6 = [(PUAssetViewModel *)self highlightTimeRangesProducer];
  [v6 setSearchQueryMatchInfo:v5];

  v8 = [(PUAssetViewModel *)self searchContextualVideoThumbnailIdentifier];
  v7 = [(PUAssetViewModel *)self highlightTimeRangesProducer];
  [v7 setSearchContextualVideoThumbnailIdentifier:v8];
}

- (void)setVisualSearchImageAnalysisInteraction:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_visualSearchImageAnalysisInteraction);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_visualSearchImageAnalysisInteraction, v4);
    if (PFOSVariantHasInternalUI())
    {
      v6 = PLVisualIntelligenceGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138412546;
        v8 = v4;
        v9 = 2112;
        v10 = self;
        _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "Did set visualSearchImageAnalysisInteraction: %@ on assetViewModel: %@", &v7, 0x16u);
      }
    }
  }
}

- (void)setImageAnalysisInteraction:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  imageAnalysisInteraction = self->_imageAnalysisInteraction;
  if (imageAnalysisInteraction != v5)
  {
    v7 = [(PUImageAnalysisInteraction *)imageAnalysisInteraction assetViewModel];

    if (v7 == self)
    {
      [(PUImageAnalysisInteraction *)self->_imageAnalysisInteraction setHostView:0];
      [(PUImageAnalysisInteraction *)self->_imageAnalysisInteraction setAssetViewModel:0];
    }

    objc_storeStrong(&self->_imageAnalysisInteraction, a3);
    [(PUImageAnalysisInteraction *)self->_imageAnalysisInteraction setAssetViewModel:self];
    if (PFOSVariantHasInternalUI())
    {
      v8 = PLVisualIntelligenceGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412546;
        v10 = v5;
        v11 = 2112;
        v12 = self;
        _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "Set imageAnalysisInteraction: %@ on assetViewModel: %@", &v9, 0x16u);
      }
    }

    [(PUAssetViewModel *)self _updateImageAnalysisInteractionHostView];
  }
}

- (void)setIrisPlayer:(id)a3
{
  v5 = a3;
  irisPlayer = self->_irisPlayer;
  if (irisPlayer != v5)
  {
    v8 = v5;
    [(PUBrowsingIrisPlayer *)irisPlayer unregisterChangeObserver:self];
    objc_storeStrong(&self->_irisPlayer, a3);
    [(PUBrowsingIrisPlayer *)self->_irisPlayer registerChangeObserver:self];
    v7 = [(PUAssetViewModel *)self currentChange];
    [v7 setIrisPlayerChanged:1];

    irisPlayer = [(PUAssetViewModel *)self _invalidateVideoPlayersLoadingAllowed];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](irisPlayer, v5);
}

- (void)setVideoPlayer:(id)a3
{
  v5 = a3;
  if (self->_videoPlayer != v5)
  {
    v7 = v5;
    [(PUAssetViewModel *)self setHasAutoplayedVideoSinceBecomingFocused:0];
    [(PUBrowsingVideoPlayer *)self->_videoPlayer unregisterChangeObserver:self];
    objc_storeStrong(&self->_videoPlayer, a3);
    [(PUBrowsingVideoPlayer *)self->_videoPlayer registerChangeObserver:self];
    v6 = [(PUAssetViewModel *)self currentChange];
    [v6 setVideoPlayerDidChange:1];

    [(PUAssetViewModel *)self _invalidateMediaControllers];
    [(PUAssetViewModel *)self _invalidateVideoPlayersLoadingAllowed];
    v5 = v7;
  }
}

- (void)_updateMediaControllers
{
  v3 = [(PUAssetViewModel *)self asset];
  [(PUAssetViewModel *)self focusValue];
  v5 = fabs(v4);
  v6 = v5 < 1.0 && [v3 playbackStyle] == 5;
  v7 = 0;
  if (![(PUAssetViewModel *)self lowMemoryMode]&& !v6)
  {
    v8 = [(PUAssetViewModel *)self mediaProvider];
    if (v8)
    {
      if ([v3 canPlayPhotoIris])
      {
        v7 = 1;
      }

      else
      {
        v7 = [v3 isPhotoIrisPlaceholder];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  if (v5 >= 1.0)
  {
    v11 = 0;
  }

  else
  {
    v9 = [(PUAssetViewModel *)self mediaProvider];
    if (v9 && [v3 isAnimatedImage])
    {
      v10 = +[PUOneUpSettings sharedInstance];
      v11 = [v10 allowGIFPlayback];
    }

    else
    {
      v11 = 0;
    }
  }

  v12 = +[PUOneUpSettings sharedInstance];
  v13 = [(PUAssetViewModel *)self videoPlayer];
  if (v13)
  {
    [v12 videoPauseThreshold];
    v15 = v5 / v14;
    if (v15 > 1.0)
    {
      v15 = 1.0;
    }

    v16 = 1.0 - v15;
    v17 = v16 * v16;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __43__PUAssetViewModel__updateMediaControllers__block_invoke;
    v31[3] = &unk_1E7B757E0;
    v32 = v13;
    v35 = v17;
    v33 = v3;
    v34 = self;
    [v32 performChanges:v31];
    [(PUAssetViewModel *)self _updateVideoPlaybackStartTime];
  }

  if (v7)
  {
    v18 = [(PUAssetViewModel *)self irisPlayer];

    if (!v18)
    {
      v19 = [PUBrowsingIrisPlayer alloc];
      v20 = [(PUAssetViewModel *)self mediaProvider];
      v21 = [(PUBrowsingIrisPlayer *)v19 initWithAsset:v3 mediaProvider:v20];

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __43__PUAssetViewModel__updateMediaControllers__block_invoke_3;
      v29[3] = &unk_1E7B80DD0;
      v30 = v21;
      v22 = v21;
      [(PUViewModel *)v22 performChanges:v29];
      [(PUAssetViewModel *)self setIrisPlayer:v22];
    }
  }

  else
  {
    [(PUAssetViewModel *)self setIrisPlayer:0];
  }

  animatedImagePlayer = self->_animatedImagePlayer;
  if (v11)
  {
    if (!animatedImagePlayer)
    {
      v24 = [PUBrowsingAnimatedImagePlayer alloc];
      v25 = [(PUAssetViewModel *)self mediaProvider];
      v26 = [(PUBrowsingAnimatedImagePlayer *)v24 initWithAsset:v3 mediaProvider:v25];
      v27 = self->_animatedImagePlayer;
      self->_animatedImagePlayer = v26;

      [(PUViewModel *)self->_animatedImagePlayer registerChangeObserver:self];
    }
  }

  else
  {
    [(PUViewModel *)animatedImagePlayer unregisterChangeObserver:self];
    v28 = self->_animatedImagePlayer;
    self->_animatedImagePlayer = 0;
  }
}

void __43__PUAssetViewModel__updateMediaControllers__block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = *(a1 + 56);
  [*(a1 + 32) setVolume:a2];
  v3 = [*(a1 + 40) playbackStyle];
  v4 = *(a1 + 32);
  if (v3 == 5)
  {

    [v4 setDesiredPlayState:4 reason:@"Automatic playback of looping video"];
  }

  else if (![v4 desiredPlayState])
  {
    v5 = *(a1 + 48);
    v8 = [*(a1 + 32) asset];
    if ([v5 allowAutoplayVideoForAsset:?] && (objc_msgSend(*(a1 + 48), "isFullyInFocus") & 1) != 0)
    {
      v6 = [*(a1 + 48) hasAutoplayedVideoSinceBecomingFocused];

      if ((v6 & 1) == 0)
      {
        [*(a1 + 48) setHasAutoplayedVideoSinceBecomingFocused:1];
        v7 = *(a1 + 32);
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __43__PUAssetViewModel__updateMediaControllers__block_invoke_2;
        v9[3] = &unk_1E7B80DD0;
        v10 = v7;
        [v10 performChanges:v9];
      }
    }

    else
    {
    }
  }
}

- (void)_invalidateMediaControllers
{
  v2 = [(PUAssetViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateMediaControllers];
}

- (void)setIsLivePhotoContentAllowed:(BOOL)a3
{
  if (self->_isLivePhotoContentAllowed != a3)
  {
    self->_isLivePhotoContentAllowed = a3;
    [(PUAssetViewModel *)self _updatePlayersLoadingAllowed];
  }
}

- (void)_updatePlayersLoadingAllowed
{
  [(PUAssetViewModel *)self focusValue];
  v4 = fabs(v3);
  if (v4 > 0.25)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [(PUAssetViewModel *)self irisPlayer];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__PUAssetViewModel__updatePlayersLoadingAllowed__block_invoke;
  v13[3] = &unk_1E7B757B8;
  v17 = v4 > 1.1;
  v14 = v6;
  v15 = self;
  v16 = v5;
  v7 = v6;
  [v7 performChanges:v13];
  v8 = [(PUAssetViewModel *)self animatedImagePlayer];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__PUAssetViewModel__updatePlayersLoadingAllowed__block_invoke_2;
  v10[3] = &unk_1E7B7FF98;
  v11 = v8;
  v12 = v4 > 0.25;
  v9 = v8;
  [v9 performChanges:v10];
}

uint64_t __48__PUAssetViewModel__updatePlayersLoadingAllowed__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setLivePhotoLoadingDisabled:*(a1 + 56) forReason:@"OutOfFocus"];
  [*(a1 + 32) setLivePhotoLoadingDisabled:objc_msgSend(*(a1 + 40) forReason:{"isLivePhotoContentAllowed") ^ 1, @"LivePhotoContentDisallowed"}];
  result = [*(a1 + 32) setLoadingTarget:*(a1 + 48)];
  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 unloadLivePhoto];
  }

  return result;
}

uint64_t __48__PUAssetViewModel__updatePlayersLoadingAllowed__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) setAnimatedImageLoadingDisabled:*(a1 + 40) forReason:@"OutOfFocus"];
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 unloadAnimatedImage];
  }

  return result;
}

- (void)_invalidateVideoPlayersLoadingAllowed
{
  v2 = [(PUAssetViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updatePlayersLoadingAllowed];
}

- (void)_handleDidEndScrubbing
{
  if (![(PUAssetViewModel *)self isScrubbing])
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __42__PUAssetViewModel__handleDidEndScrubbing__block_invoke;
    v3[3] = &unk_1E7B80DD0;
    v3[4] = self;
    [(PUViewModel *)self performChanges:v3];
  }
}

- (void)setIsScrubbing:(BOOL)a3
{
  if (self->_isScrubbing != a3)
  {
    self->_isScrubbing = a3;
    if (a3)
    {
      if (!self->_assetSyndicationState)
      {
        v4 = [(PUAssetViewModel *)self assetSyndicationStateOverride];

        if (!v4)
        {

          [(PUAssetViewModel *)self setAssetSyndicationStateOverride:&unk_1F2B7DAD8];
        }
      }
    }

    else
    {
      objc_initWeak(&location, self);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __35__PUAssetViewModel_setIsScrubbing___block_invoke;
      v5[3] = &unk_1E7B80638;
      objc_copyWeak(&v6, &location);
      dispatch_async(MEMORY[0x1E69E96A0], v5);
      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }
  }
}

void __35__PUAssetViewModel_setIsScrubbing___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDidEndScrubbing];
}

- (void)setImportState:(int64_t)a3
{
  if (self->_importState != a3)
  {
    self->_importState = a3;
    v4 = [(PUAssetViewModel *)self currentChange];
    [v4 _setImportStateChanged:1];
  }
}

- (void)setSaveState:(int64_t)a3
{
  if (self->_saveState != a3)
  {
    self->_saveState = a3;
    v4 = [(PUAssetViewModel *)self currentChange];
    [v4 _setSaveStateChanged:1];
  }
}

- (void)setSaveProgress:(id)a3
{
  v5 = a3;
  if (self->_saveProgress != v5)
  {
    v7 = v5;
    kdebug_trace();
    objc_storeStrong(&self->_saveProgress, a3);
    v6 = [(PUAssetViewModel *)self currentChange];
    [v6 _setSaveProgressChanged:1];

    v5 = v7;
  }
}

- (void)setLoadingStatus:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_loadingStatus != v4)
  {
    v9 = v4;
    v4 = [v4 isEqual:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [v9 copy];
      loadingStatus = self->_loadingStatus;
      self->_loadingStatus = v6;

      v8 = [(PUAssetViewModel *)self currentChange];
      [v8 _setLoadingStatusChanged:1];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)_setAssetSyndicationState:(int64_t)a3
{
  if (self->_assetSyndicationState != a3)
  {
    self->_assetSyndicationState = a3;
    v4 = [(PUAssetViewModel *)self currentChange];
    [v4 setAssetSyndicationStateChanged:1];
  }
}

- (void)_setFavorite:(BOOL)a3
{
  if (self->_isFavorite != a3)
  {
    self->_isFavorite = a3;
    v4 = [(PUAssetViewModel *)self currentChange];
    [v4 _setIsFavoriteChanged:1];
  }
}

- (BOOL)isHDR
{
  v2 = [(PUAssetViewModel *)self asset];
  v3 = ([v2 mediaSubtypes] & 0x900202) != 0;

  return v3;
}

- (void)setAssetSyndicationStateOverride:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = self->_assetSyndicationStateOverride;
  v7 = v6;
  if (v6 == v5)
  {
  }

  else
  {
    v8 = [(NSNumber *)v6 isEqual:v5];

    if ((v8 & 1) == 0)
    {
      if (!v5)
      {
        assetSyndicationStateOverride = self->_assetSyndicationStateOverride;
        self->_assetSyndicationStateOverride = 0;

        v10 = 0;
        goto LABEL_8;
      }

      v9 = [(NSNumber *)v5 integerValue];
      if ((v9 - 1) < 4)
      {
        objc_storeStrong(&self->_assetSyndicationStateOverride, a3);
        v10 = [(NSNumber *)v5 integerValue];
LABEL_8:
        [(PUAssetViewModel *)self _setAssetSyndicationState:v10];
        goto LABEL_12;
      }

      v12 = v9;
      v13 = PXAssertGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = 134217984;
        v15 = v12;
        _os_log_error_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_ERROR, "PUAssetViewModel syndication state override is not valid: %ld", &v14, 0xCu);
      }
    }
  }

LABEL_12:
}

- (void)setIsFavoriteOverride:(id)a3
{
  v4 = a3;
  isFavoriteOverride = self->_isFavoriteOverride;
  if (isFavoriteOverride != v4 && ([(NSNumber *)isFavoriteOverride isEqual:v4]& 1) == 0)
  {
    v6 = [(NSNumber *)v4 copy];
    v7 = self->_isFavoriteOverride;
    self->_isFavoriteOverride = v6;

    [(PUAssetViewModel *)self _updateFavoriteState];
    v8 = ([(PUAssetViewModel *)self _currentFavoriteOverrideRequest]+ 1);
    [(PUAssetViewModel *)self _setCurrentFavoriteOverrideRequest:v8];
    objc_initWeak(&location, self);
    v9 = dispatch_time(0, 30000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__PUAssetViewModel_setIsFavoriteOverride___block_invoke;
    block[3] = &unk_1E7B804A8;
    objc_copyWeak(v11, &location);
    v11[1] = v8;
    dispatch_after(v9, MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(v11);
    objc_destroyWeak(&location);
  }
}

void __42__PUAssetViewModel_setIsFavoriteOverride___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _currentFavoriteOverrideRequest] == *(a1 + 40))
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __42__PUAssetViewModel_setIsFavoriteOverride___block_invoke_2;
    v3[3] = &unk_1E7B80DD0;
    v4 = WeakRetained;
    [v4 performChanges:v3];
  }
}

- (void)setBadgeInfoPromise:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_badgeInfoPromise != v4)
  {
    v9 = v4;
    v4 = [(PUBadgeInfoPromise *)v4 isEqual:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [(PUBadgeInfoPromise *)v9 copy];
      badgeInfoPromise = self->_badgeInfoPromise;
      self->_badgeInfoPromise = v6;

      v8 = [(PUAssetViewModel *)self currentChange];
      [v8 _setBadgeInfoChanged:1];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setIsFullyOutOfFocus:(BOOL)a3
{
  if (self->_isFullyOutOfFocus != a3)
  {
    self->_isFullyOutOfFocus = a3;
    v4 = [(PUAssetViewModel *)self currentChange];
    [v4 setIsFullyOutOfFocusChanged:1];
  }
}

- (void)setIsFullyInFocus:(BOOL)a3
{
  if (self->_isFullyInFocus != a3)
  {
    self->_isFullyInFocus = a3;
    if (a3)
    {
      v5 = self->_asset;
      if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      if ((-[PUDisplayAsset isEligibleForSpatialGenerationIncludingStereo:](v6, "isEligibleForSpatialGenerationIncludingStereo:", 1) & 1) == 0 && [MEMORY[0x1E69C3740] enabled])
      {
        [MEMORY[0x1E69C3740] disable];
      }
    }

    else
    {
      [(PUAssetViewModel *)self setHasAutoplayedVideoSinceBecomingFocused:0];
    }

    v7 = [(PUAssetViewModel *)self currentChange];
    [v7 setIsFullyInFocusChanged:1];
  }
}

- (void)setFocusValue:(double)a3
{
  if (self->_focusValue == a3)
  {
    return;
  }

  self->_focusValue = a3;
  v5 = [(PUAssetViewModel *)self currentChange];
  [v5 _setFocusValueChanged:1];

  v6 = fabs(a3);
  [(PUAssetViewModel *)self setIsFullyInFocus:v6 <= 0.01];
  [(PUAssetViewModel *)self setIsFullyOutOfFocus:v6 >= 0.9];
  v7 = [(PUAssetViewModel *)self irisPlayer];
  v8 = v7;
  if (v6 >= 0.5 && v7 != 0)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __34__PUAssetViewModel_setFocusValue___block_invoke;
    v12[3] = &unk_1E7B80DD0;
    v13 = v7;
    [v13 performChanges:v12];
  }

  if (a3 == 0.0)
  {
    [(PUAssetViewModel *)self focusValueAtZeroTimestamp];
    if (v10 == 0.0)
    {
      Current = CFAbsoluteTimeGetCurrent();
LABEL_11:
      [(PUAssetViewModel *)self setFocusValueAtZeroTimestamp:Current];
      goto LABEL_12;
    }
  }

  Current = 0.0;
  if (v6 > 0.75)
  {
    goto LABEL_11;
  }

LABEL_12:
  [(PUAssetViewModel *)self _invalidateVideoPlayersLoadingAllowed];
  [(PUAssetViewModel *)self _invalidateMediaControllers];
  if (v6 >= 2.0)
  {
    [(PUAssetViewModel *)self setVisualImageAnalysis:0];
    [(PUAssetViewModel *)self setBestImage:0];
  }
}

- (void)setUserTransformingTile:(BOOL)a3
{
  if (self->_isUserTransformingTile != a3)
  {
    self->_isUserTransformingTile = a3;
    v4 = [(PUAssetViewModel *)self currentChange];
    [v4 _setUserTransformingTileDidChange:1];
  }
}

- (void)setMediaProvider:(id)a3
{
  v5 = a3;
  if (self->_mediaProvider != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_mediaProvider, a3);
    v6 = [(PUAssetViewModel *)self currentChange];
    [v6 setHasChanges];

    [(PUAssetViewModel *)self _invalidateMediaControllers];
    v5 = v7;
  }
}

- (void)setAsset:(id)a3
{
  v5 = a3;
  asset = self->_asset;
  if (asset != v5)
  {
    v7 = asset;
    v8 = [(PUDisplayAsset *)v5 isContentEqualTo:v7];
    if (!v8)
    {
      v8 = [(PUDisplayAsset *)v7 isContentEqualTo:v5];
    }

    if (v8 != 2)
    {
      v9 = [(PUAssetViewModel *)self currentChange];
      [v9 _setAssetContentChanged:1];
    }

    objc_storeStrong(&self->_asset, a3);
    v10 = [(PUAssetViewModel *)self currentChange];
    [v10 _setAssetChanged:1];

    [(PUAssetViewModel *)self setIsFavoriteOverride:0];
    [(PUAssetViewModel *)self _updateFavoriteState];
    [(PUAssetViewModel *)self setAssetSyndicationStateOverride:0];
    [(PUAssetViewModel *)self _invalidateMediaControllers];
    v11 = [(PUAssetViewModel *)self videoPlayer];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __29__PUAssetViewModel_setAsset___block_invoke;
    v28[3] = &unk_1E7B80C38;
    v29 = v11;
    v12 = v5;
    v30 = v12;
    v13 = v11;
    [v13 performChanges:v28];
    v14 = [(PUAssetViewModel *)self irisPlayer];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __29__PUAssetViewModel_setAsset___block_invoke_2;
    v25[3] = &unk_1E7B80C38;
    v26 = v14;
    v15 = v12;
    v27 = v15;
    v16 = v14;
    [v16 performChanges:v25];
    v17 = [(PUAssetViewModel *)self animatedImagePlayer];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __29__PUAssetViewModel_setAsset___block_invoke_3;
    v22 = &unk_1E7B80C38;
    v23 = v17;
    v24 = v15;
    v18 = v17;
    [v18 performChanges:&v19];
    [(PUAssetViewModel *)self _invalidateHighlightTimeRangesProducer:v19];
  }
}

- (void)unregisterChangeObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = PUAssetViewModel;
  [(PUViewModel *)&v3 unregisterChangeObserver:a3];
}

- (void)registerChangeObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = PUAssetViewModel;
  [(PUViewModel *)&v3 registerChangeObserver:a3];
}

- (void)didPerformChanges
{
  v5.receiver = self;
  v5.super_class = PUAssetViewModel;
  [(PUViewModel *)&v5 didPerformChanges];
  v3 = [(PUAssetViewModel *)self updater];
  [v3 updateIfNeeded];

  v4 = [(PUAssetViewModel *)self currentChangeIfExists];
  if ([v4 contentOffsetChanged])
  {
    [(PUAssetViewModel *)self contentOffset];
    kdebug_trace();
  }
}

- (PUAssetViewModelChange)currentChangeIfExists
{
  v4.receiver = self;
  v4.super_class = PUAssetViewModel;
  v2 = [(PUViewModel *)&v4 currentChangeIfExists];

  return v2;
}

- (PUAssetViewModelChange)currentChange
{
  v4.receiver = self;
  v4.super_class = PUAssetViewModel;
  v2 = [(PUViewModel *)&v4 currentChange];

  return v2;
}

- (BOOL)allowAutoplayVideoForAsset:(id)a3
{
  v4 = a3;
  v5 = [(PUAssetViewModel *)self videoAutoplayPredicate];

  if (v5)
  {
    v6 = [(PUAssetViewModel *)self videoAutoplayPredicate];
    v7 = (v6)[2](v6, v4);
  }

  else
  {
    v6 = +[PUOneUpSettings sharedInstance];
    v7 = [v6 allowAutoplayVideoForAsset:v4];
  }

  v8 = v7;

  return v8;
}

- (void)setVideoAutoplayPredicate:(id)a3
{
  if (self->_videoAutoplayPredicate != a3)
  {
    v4 = _Block_copy(a3);
    videoAutoplayPredicate = self->_videoAutoplayPredicate;
    self->_videoAutoplayPredicate = v4;

    [(PUAssetViewModel *)self _updateMediaControllers];
  }
}

- (void)dealloc
{
  PXDeferredDealloc();
  v3.receiver = self;
  v3.super_class = PUAssetViewModel;
  [(PUAssetViewModel *)&v3 dealloc];
}

- (PUAssetViewModel)initWithLowMemoryMode:(BOOL)a3 mediaAnalyzer:(id)a4
{
  v6 = a4;
  v22.receiver = self;
  v22.super_class = PUAssetViewModel;
  v7 = [(PUViewModel *)&v22 init];
  v8 = v7;
  if (v7)
  {
    v7->_isZoomedIn = 0;
    v9 = [[PUModelTileTransform alloc] initWithNoUserInput];
    modelTileTransform = v8->_modelTileTransform;
    v8->_modelTileTransform = v9;

    v8->_focusValue = 1.79769313e308;
    v8->_lowMemoryMode = a3;
    v11 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    registeredVideoLayerSources = v8->_registeredVideoLayerSources;
    v8->_registeredVideoLayerSources = v11;

    highlightTimeRanges = v8->_highlightTimeRanges;
    v8->_highlightTimeRanges = MEMORY[0x1E695E0F0];

    if (!v6)
    {
      v14 = +[PUOneUpSettings sharedInstance];
      v15 = [v14 insertDummyHighlightTimeRanges];

      if (v15)
      {
        v16 = [objc_alloc(MEMORY[0x1E69C3770]) initWithTimeRangeProvider:&__block_literal_global_11620];
      }

      else
      {
        v16 = objc_alloc_init(MEMORY[0x1E69C3B70]);
      }

      v6 = v16;
    }

    v17 = [[PUAssetHighlightTimeRangesProducer alloc] initWithMediaAnalyzer:v6];
    highlightTimeRangesProducer = v8->_highlightTimeRangesProducer;
    v8->_highlightTimeRangesProducer = v17;

    [(PUAssetHighlightTimeRangesProducer *)v8->_highlightTimeRangesProducer setDelegate:v8];
    v8->_imageAnalysisInteractionHostMode = 1;
    v19 = [objc_alloc(MEMORY[0x1E69C4600]) initWithTarget:v8];
    updater = v8->_updater;
    v8->_updater = v19;

    [(PXUpdater *)v8->_updater addUpdateSelector:sel__updateHighlightTimeRangesProducer needsUpdate:1];
    [(PXUpdater *)v8->_updater addUpdateSelector:sel__updateShouldShowHighlightTimeRanges needsUpdate:1];
    [(PXUpdater *)v8->_updater addUpdateSelector:sel__updateMediaControllers];
    [(PXUpdater *)v8->_updater addUpdateSelector:sel__updatePlayersLoadingAllowed];
    [(PXUpdater *)v8->_updater addUpdateSelector:sel__updateAccessoryViewVisibilityFraction];
    [(PXUpdater *)v8->_updater addUpdateSelector:sel__updateInteractionHostMode needsUpdate:1];
  }

  return v8;
}

id __56__PUAssetViewModel_initWithLowMemoryMode_mediaAnalyzer___block_invoke(double a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  memset(&v8, 0, sizeof(v8));
  CMTimeMakeWithSeconds(&v8, a1 * 0.33, 600);
  v1 = MEMORY[0x1E696B098];
  start = v8;
  v5 = v8;
  CMTimeRangeMake(&v7, &start, &v5);
  v2 = [v1 valueWithCMTimeRange:&v7];
  v9[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  return v3;
}

+ (int64_t)imageAnalysisInteractionHostModeForAccessoryViewVisibility:(BOOL)a3
{
  if (a3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end