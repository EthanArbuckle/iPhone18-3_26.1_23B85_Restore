@interface PUAssetViewModel
+ (int64_t)imageAnalysisInteractionHostModeForAccessoryViewVisibility:(BOOL)visibility;
- (BOOL)allowAutoplayVideoForAsset:(id)asset;
- (BOOL)isHDR;
- (CGPoint)contentOffset;
- (CGPoint)contentOffsetForAccessoryFullyVisible;
- (CGPoint)overridingContentOffset;
- (CGPoint)preferredContentOffset;
- (CGRect)mainImageContentsRect;
- (NSMapTable)interactionHostViewsByMode;
- (PUAssetViewModel)initWithLowMemoryMode:(BOOL)mode mediaAnalyzer:(id)analyzer;
- (PUAssetViewModelChange)currentChange;
- (PUAssetViewModelChange)currentChangeIfExists;
- (PUVideoLayerSource)primaryVideoLayerSource;
- (PXVKCVisualSearchResultInfo)visualSearchResultInfo;
- (PXVKImageAnalysisInteraction)visualSearchImageAnalysisInteraction;
- (UIImage)bestImage;
- (id)debugDetailedDescription;
- (int64_t)fetchAssetSyndicationState;
- (void)_handleAssetSharedViewModel:(id)model didChange:(id)change;
- (void)_handleBrowsingAnimatedImage:(id)image didChange:(id)change;
- (void)_handleBrowsingIrisPlayer:(id)player didChange:(id)change;
- (void)_handleBrowsingVideoPlayer:(id)player didChange:(id)change;
- (void)_handleDidEndScrubbing;
- (void)_handleHighlightTimeRangesResult:(id)result forAsset:(id)asset;
- (void)_invalidateAccessoryViewVisibilityFraction;
- (void)_invalidateInteractionHostMode;
- (void)_invalidateMediaControllers;
- (void)_invalidateShouldShowHighlightTimeRanges;
- (void)_invalidateVideoPlayersLoadingAllowed;
- (void)_setAssetSyndicationState:(int64_t)state;
- (void)_setFavorite:(BOOL)favorite;
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
- (void)assetHighlightTimeRangesProducerDidChangeHighlights:(id)highlights;
- (void)dealloc;
- (void)didPerformChanges;
- (void)didUpdateDisplayedContent;
- (void)registerChangeObserver:(id)observer;
- (void)registerView:(id)view forImageAnalysisInteractionHostMode:(int64_t)mode;
- (void)resetContentOffset;
- (void)setAccessoryViewVisibilityFraction:(double)fraction;
- (void)setAccessoryViewVisible:(BOOL)visible changeReason:(int64_t)reason;
- (void)setAsset:(id)asset;
- (void)setAssetSharedViewModel:(id)model;
- (void)setAssetSyndicationStateOverride:(id)override;
- (void)setBadgeInfoPromise:(id)promise;
- (void)setBestImage:(id)image;
- (void)setContentOffsetForAccessoryFullyVisible:(CGPoint)visible;
- (void)setContentOffsetOverrideFactor:(double)factor;
- (void)setDisplayedContentUpdateCount:(int64_t)count;
- (void)setDisplayedContentUpdateGroup:(id)group;
- (void)setEditStyle:(int64_t)style changeReason:(int64_t)reason;
- (void)setFocusValue:(double)value;
- (void)setForceBadgesVisible:(BOOL)visible;
- (void)setHasVisualAnalysisFailed:(BOOL)failed;
- (void)setHighlightTimeRanges:(id)ranges;
- (void)setImageAnalysisInteraction:(id)interaction;
- (void)setImageAnalysisInteractionHostMode:(int64_t)mode;
- (void)setImportState:(int64_t)state;
- (void)setIrisPlayer:(id)player;
- (void)setIsBeingDismissed:(BOOL)dismissed;
- (void)setIsDisplayingHDRContent:(BOOL)content;
- (void)setIsDisplayingSearchQueryLabel:(BOOL)label;
- (void)setIsFavoriteOverride:(id)override;
- (void)setIsFullyInFocus:(BOOL)focus;
- (void)setIsFullyOutOfFocus:(BOOL)focus;
- (void)setIsIrisPlaying:(BOOL)playing;
- (void)setIsLivePhotoContentAllowed:(BOOL)allowed;
- (void)setIsPresentedForPreview:(BOOL)preview;
- (void)setIsScrubbing:(BOOL)scrubbing;
- (void)setIsUpdatingDisplayedContent:(BOOL)content;
- (void)setIsVisualSearchCardShowing:(BOOL)showing;
- (void)setIsZoomedIn:(BOOL)in;
- (void)setLoadingStatus:(id)status;
- (void)setMainImageContentsRect:(CGRect)rect;
- (void)setMediaProvider:(id)provider;
- (void)setModelTileTransform:(id)transform;
- (void)setNeedsResetVisualImageInteraction:(BOOL)interaction reason:(int64_t)reason;
- (void)setOverridingContentOffset:(CGPoint)offset;
- (void)setPPT_isDeferredProcessingDoneAndFinalImageDisplayed:(BOOL)displayed;
- (void)setPhototypeAccessoryViewSupport:(id)support;
- (void)setPhototypeInfoButtonSupport:(id)support;
- (void)setPreferredContentOffset:(CGPoint)offset changeReason:(int64_t)reason;
- (void)setRevealsGainMapImage:(BOOL)image;
- (void)setSaveProgress:(id)progress;
- (void)setSaveState:(int64_t)state;
- (void)setSearchContextualVideoThumbnailIdentifier:(id)identifier;
- (void)setSearchQueryMatchInfo:(id)info;
- (void)setShazamEventInfo:(id)info;
- (void)setShouldShowHighlightTimeRanges:(BOOL)ranges;
- (void)setStatusCornerState:(int64_t)state;
- (void)setUserTransformingTile:(BOOL)tile;
- (void)setVideoAutoplayPredicate:(id)predicate;
- (void)setVideoPlayer:(id)player;
- (void)setVisualImageAnalysis:(id)analysis;
- (void)setVisualIntelligenceAnalyzeRequestID:(int)d;
- (void)setVisualSearchImageAnalysisInteraction:(id)interaction;
- (void)unregisterChangeObserver:(id)observer;
- (void)unregisterView:(id)view forImageAnalysisInteractionHostMode:(int64_t)mode;
- (void)viewModel:(id)model didChange:(id)change;
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
  string = [MEMORY[0x1E696AD60] string];
  [(PUAssetViewModel *)self focusValue];
  [string appendFormat:@"Focus Value: %f\n", v4];
  modelTileTransform = [(PUAssetViewModel *)self modelTileTransform];
  [string appendFormat:@"Tile Transform: %@\n", modelTileTransform];

  [(PUAssetViewModel *)self contentOffset];
  v6 = NSStringFromCGPoint(v23);
  [string appendFormat:@"Content Offset: %@\n", v6];

  badgeInfoPromise = [(PUAssetViewModel *)self badgeInfoPromise];
  [string appendFormat:@"Badge Info: %@\n", badgeInfoPromise];

  loadingStatus = [(PUAssetViewModel *)self loadingStatus];
  [string appendFormat:@"Loading Status: %@\n", loadingStatus];

  videoPlayer = [(PUAssetViewModel *)self videoPlayer];
  debugDetailedDescription = [videoPlayer debugDetailedDescription];
  [string appendFormat:@"Video Player: %@\n", debugDetailedDescription];

  irisPlayer = [(PUAssetViewModel *)self irisPlayer];
  debugDetailedDescription2 = [irisPlayer debugDetailedDescription];
  [string appendFormat:@"Iris Player: %@\n", debugDetailedDescription2];

  animatedImagePlayer = [(PUAssetViewModel *)self animatedImagePlayer];
  debugDetailedDescription3 = [animatedImagePlayer debugDetailedDescription];
  [string appendFormat:@"Animated Image: %@\n", debugDetailedDescription3];

  searchQueryMatchInfo = [(PUAssetViewModel *)self searchQueryMatchInfo];
  [string appendFormat:@"Search Info: %@\n", searchQueryMatchInfo];

  if ([(PUAssetViewModel *)self isUserTransformingTile])
  {
    [string appendString:@"User Transforming Tile\n"];
  }

  v16 = MEMORY[0x1E696AEC0];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  pu_stringByIndentingNewLines = [string pu_stringByIndentingNewLines];
  v20 = [v16 stringWithFormat:@"<%@ %p> {\n\t%@}", v18, self, pu_stringByIndentingNewLines];

  return v20;
}

- (void)_updateInteractionHostMode
{
  v3 = [objc_opt_class() imageAnalysisInteractionHostModeForAccessoryViewVisibility:{-[PUAssetViewModel isAccessoryViewVisible](self, "isAccessoryViewVisible")}];

  [(PUAssetViewModel *)self setImageAnalysisInteractionHostMode:v3];
}

- (void)_invalidateInteractionHostMode
{
  updater = [(PUAssetViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateInteractionHostMode];
}

- (void)_updateImageAnalysisInteractionHostView
{
  imageAnalysisInteractionHostMode = [(PUAssetViewModel *)self imageAnalysisInteractionHostMode];
  interactionHostViewsByMode = [(PUAssetViewModel *)self interactionHostViewsByMode];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:imageAnalysisInteractionHostMode];
  v7 = [interactionHostViewsByMode objectForKey:v5];

  imageAnalysisInteraction = [(PUAssetViewModel *)self imageAnalysisInteraction];
  [imageAnalysisInteraction setHostView:v7];
}

- (void)setImageAnalysisInteractionHostMode:(int64_t)mode
{
  if (self->_imageAnalysisInteractionHostMode != mode)
  {
    self->_imageAnalysisInteractionHostMode = mode;
    [(PUAssetViewModel *)self _updateImageAnalysisInteractionHostView];
  }
}

- (NSMapTable)interactionHostViewsByMode
{
  interactionHostViewsByMode = self->_interactionHostViewsByMode;
  if (!interactionHostViewsByMode)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v5 = self->_interactionHostViewsByMode;
    self->_interactionHostViewsByMode = strongToWeakObjectsMapTable;

    interactionHostViewsByMode = self->_interactionHostViewsByMode;
  }

  return interactionHostViewsByMode;
}

- (void)unregisterView:(id)view forImageAnalysisInteractionHostMode:(int64_t)mode
{
  viewCopy = view;
  interactionHostViewsByMode = [(PUAssetViewModel *)self interactionHostViewsByMode];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  v9 = [interactionHostViewsByMode objectForKey:v8];

  if (v9 == viewCopy)
  {
    interactionHostViewsByMode2 = [(PUAssetViewModel *)self interactionHostViewsByMode];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
    [interactionHostViewsByMode2 removeObjectForKey:v11];

    [(PUAssetViewModel *)self _updateImageAnalysisInteractionHostView];
  }
}

- (void)registerView:(id)view forImageAnalysisInteractionHostMode:(int64_t)mode
{
  viewCopy = view;
  interactionHostViewsByMode = [(PUAssetViewModel *)self interactionHostViewsByMode];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  [interactionHostViewsByMode setObject:viewCopy forKey:v8];

  [(PUAssetViewModel *)self _updateImageAnalysisInteractionHostView];
}

- (void)_handleBrowsingAnimatedImage:(id)image didChange:(id)change
{
  changeCopy = change;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__PUAssetViewModel__handleBrowsingAnimatedImage_didChange___block_invoke;
  v7[3] = &unk_1E7B80C38;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  [(PUViewModel *)self performChanges:v7];
}

void __59__PUAssetViewModel__handleBrowsingAnimatedImage_didChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentChange];
  [v2 _setAnimatedImageChange:*(a1 + 40)];
}

- (void)_handleBrowsingIrisPlayer:(id)player didChange:(id)change
{
  changeCopy = change;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__PUAssetViewModel__handleBrowsingIrisPlayer_didChange___block_invoke;
  v7[3] = &unk_1E7B80C38;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  [(PUViewModel *)self performChanges:v7];
}

void __56__PUAssetViewModel__handleBrowsingIrisPlayer_didChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentChange];
  [v2 _setIrisPlayerChange:*(a1 + 40)];
}

- (void)_handleBrowsingVideoPlayer:(id)player didChange:(id)change
{
  changeCopy = change;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __57__PUAssetViewModel__handleBrowsingVideoPlayer_didChange___block_invoke;
  v13 = &unk_1E7B80C38;
  selfCopy = self;
  v15 = changeCopy;
  v6 = changeCopy;
  v7 = _Block_copy(&v10);
  v8 = [(PUAssetViewModel *)self updater:v10];
  isPerformingUpdates = [v8 isPerformingUpdates];

  if (isPerformingUpdates)
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

- (void)_handleAssetSharedViewModel:(id)model didChange:(id)change
{
  changeCopy = change;
  if (([changeCopy loadingStatusChanged] & 1) != 0 || (objc_msgSend(changeCopy, "saveProgressChanged") & 1) != 0 || objc_msgSend(changeCopy, "saveStateChanged"))
  {
    [(PUAssetViewModel *)self _updatePropertiesFromAssetSharedViewModel];
  }
}

- (void)viewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PUAssetViewModel *)self _handleAssetSharedViewModel:modelCopy didChange:changeCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PUAssetViewModel *)self _handleBrowsingVideoPlayer:modelCopy didChange:changeCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(PUAssetViewModel *)self _handleBrowsingIrisPlayer:modelCopy didChange:changeCopy];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(PUAssetViewModel *)self _handleBrowsingAnimatedImage:modelCopy didChange:changeCopy];
        }
      }
    }
  }
}

- (void)assetHighlightTimeRangesProducerDidChangeHighlights:(id)highlights
{
  highlightsCopy = highlights;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__PUAssetViewModel_assetHighlightTimeRangesProducerDidChangeHighlights___block_invoke;
  v6[3] = &unk_1E7B80C38;
  v6[4] = self;
  v7 = highlightsCopy;
  v5 = highlightsCopy;
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
    assetSyndicationStateOverride = [(PUAssetViewModel *)self assetSyndicationStateOverride];
    v5 = assetSyndicationStateOverride;
    if (assetSyndicationStateOverride)
    {
      integerValue = [assetSyndicationStateOverride integerValue];
    }

    else
    {
      asset = [(PUAssetViewModel *)self asset];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = asset;
        if ([v8 px_isUnsavedSyndicatedAsset])
        {
          if (PXContentSyndicationCMMAssetIsBeingSaved())
          {
            [(PUAssetViewModel *)self setAssetSyndicationStateOverride:&unk_1F2B7DAF0];
            integerValue = 1;
          }

          else
          {
            integerValue = 2;
          }
        }

        else if ([v8 px_wasSavedThroughSyndication])
        {
          integerValue = 4;
        }

        else
        {
          integerValue = 1;
        }
      }

      else
      {
        integerValue = 1;
      }
    }

    self->_assetSyndicationState = integerValue;
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange setAssetSyndicationStateChanged:1];

    return self->_assetSyndicationState;
  }

  return result;
}

- (void)_updateFavoriteState
{
  asset = [(PUAssetViewModel *)self asset];
  isFavoriteOverride = [(PUAssetViewModel *)self isFavoriteOverride];
  if (isFavoriteOverride)
  {
    isFavoriteOverride2 = [(PUAssetViewModel *)self isFavoriteOverride];
    bOOLValue = [isFavoriteOverride2 BOOLValue];
  }

  else
  {
    bOOLValue = [asset isFavorite];
  }

  [(PUAssetViewModel *)self _setFavorite:bOOLValue];
}

- (PXVKCVisualSearchResultInfo)visualSearchResultInfo
{
  visualImageAnalysis = [(PUAssetViewModel *)self visualImageAnalysis];
  resultItems = [visualImageAnalysis resultItems];
  firstObject = [resultItems firstObject];

  return firstObject;
}

- (void)_updateVideoPlaybackStartTime
{
  videoPlayer = [(PUAssetViewModel *)self videoPlayer];
  v4 = videoPlayer;
  if (videoPlayer)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __49__PUAssetViewModel__updateVideoPlaybackStartTime__block_invoke;
    v5[3] = &unk_1E7B80C38;
    v5[4] = self;
    v6 = videoPlayer;
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

- (void)setPPT_isDeferredProcessingDoneAndFinalImageDisplayed:(BOOL)displayed
{
  if (self->_PPT_isDeferredProcessingDoneAndFinalImageDisplayed != displayed)
  {
    self->_PPT_isDeferredProcessingDoneAndFinalImageDisplayed = displayed;
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange setPPT_isDeferredProcessingDoneAndFinalImageDisplayedChanged:1];
  }
}

- (void)setNeedsResetVisualImageInteraction:(BOOL)interaction reason:(int64_t)reason
{
  if (self->_needsResetVisualImageInteraction != interaction)
  {
    self->_needsResetVisualImageInteraction = interaction;
    self->_needsResetVisualImageInteractionReason = reason;
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange setNeedsResetVisualImageInteractionChanged:1];
  }
}

- (void)setStatusCornerState:(int64_t)state
{
  if (self->_statusCornerState != state)
  {
    self->_statusCornerState = state;
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange setStatusCornerStateChanged:1];
  }
}

- (void)setBestImage:(id)image
{
  obj = image;
  WeakRetained = objc_loadWeakRetained(&self->_bestImage);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_bestImage, obj);
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange _setBestImageChanged:1];

    v5 = obj;
  }
}

- (void)setIsVisualSearchCardShowing:(BOOL)showing
{
  if (self->_isVisualSearchCardShowing != showing)
  {
    self->_isVisualSearchCardShowing = showing;
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange _setIsVisualSearchCardShowingChanged:1];
  }
}

- (void)setIsIrisPlaying:(BOOL)playing
{
  if (self->_isIrisPlaying != playing)
  {
    self->_isIrisPlaying = playing;
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange _setIsIrisPlayingChanged:1];
  }
}

- (void)setIsBeingDismissed:(BOOL)dismissed
{
  if (self->_isBeingDismissed != dismissed)
  {
    self->_isBeingDismissed = dismissed;
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange _setIsBeingDismissedChanged:1];
  }
}

- (void)setVisualIntelligenceAnalyzeRequestID:(int)d
{
  if (self->_visualIntelligenceAnalyzeRequestID != d)
  {
    self->_visualIntelligenceAnalyzeRequestID = d;
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange setVisualIntelligenceAnalyzeRequestIDChanged:1];
  }
}

- (void)setMainImageContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_mainImageContentsRect = &self->_mainImageContentsRect;
  if (!CGRectEqualToRect(rect, self->_mainImageContentsRect))
  {
    p_mainImageContentsRect->origin.x = x;
    p_mainImageContentsRect->origin.y = y;
    p_mainImageContentsRect->size.width = width;
    p_mainImageContentsRect->size.height = height;
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange setMainImageContentsRectChanged:1];
  }
}

- (void)setShazamEventInfo:(id)info
{
  infoCopy = info;
  if (self->_shazamEventInfo != infoCopy)
  {
    v7 = infoCopy;
    objc_storeStrong(&self->_shazamEventInfo, info);
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange _setShazamEventInfoChanged:1];

    infoCopy = v7;
  }
}

- (void)setPhototypeInfoButtonSupport:(id)support
{
  supportCopy = support;
  if (self->_phototypeInfoButtonSupport != supportCopy)
  {
    v7 = supportCopy;
    objc_storeStrong(&self->_phototypeInfoButtonSupport, support);
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange setPhototypeInfoButtonSupportChanged:1];

    supportCopy = v7;
  }
}

- (void)setPhototypeAccessoryViewSupport:(id)support
{
  supportCopy = support;
  if (self->_phototypeAccessoryViewSupport != supportCopy)
  {
    v7 = supportCopy;
    objc_storeStrong(&self->_phototypeAccessoryViewSupport, support);
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange setPhototypeAccessoryViewSupportChanged:1];

    supportCopy = v7;
  }
}

- (void)setHasVisualAnalysisFailed:(BOOL)failed
{
  if (self->_hasVisualAnalysisFailed != failed)
  {
    self->_hasVisualAnalysisFailed = failed;
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange setHasVisualAnalysisFailedChanged:1];
  }
}

- (void)setVisualImageAnalysis:(id)analysis
{
  analysisCopy = analysis;
  visualImageAnalysis = self->_visualImageAnalysis;
  if (visualImageAnalysis != analysisCopy)
  {
    v8 = analysisCopy;
    PXDeferredDealloc();
    objc_storeStrong(&self->_visualImageAnalysis, analysis);
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange _setVisualImageAnalysisChanged:1];

    analysisCopy = v8;
  }

  MEMORY[0x1EEE66BB8](visualImageAnalysis, analysisCopy);
}

- (void)setIsPresentedForPreview:(BOOL)preview
{
  if (self->_isPresentedForPreview != preview)
  {
    self->_isPresentedForPreview = preview;
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange _setIsPresentedForPreviewChanged:1];
  }
}

- (void)setDisplayedContentUpdateGroup:(id)group
{
  groupCopy = group;
  displayedContentUpdateGroup = self->_displayedContentUpdateGroup;
  v8 = groupCopy;
  if (displayedContentUpdateGroup != groupCopy)
  {
    if (displayedContentUpdateGroup)
    {
      dispatch_group_leave(displayedContentUpdateGroup);
    }

    objc_storeStrong(&self->_displayedContentUpdateGroup, group);
    v7 = self->_displayedContentUpdateGroup;
    if (v7)
    {
      dispatch_group_enter(v7);
    }
  }
}

- (void)setIsUpdatingDisplayedContent:(BOOL)content
{
  if (self->_isUpdatingDisplayedContent != content)
  {
    self->_isUpdatingDisplayedContent = content;
    kdebug_trace();
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange _setIsUpdatingDisplayedContentChanged:1];

    if (content)
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

- (void)setDisplayedContentUpdateCount:(int64_t)count
{
  if (self->_displayedContentUpdateCount != count)
  {
    if (count < 0)
    {
      v4 = PLOneUpGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "displayedContentUpdateCount underflow", v5, 2u);
      }

      count = 0;
    }

    self->_displayedContentUpdateCount = count;
    [(PUAssetViewModel *)self setIsUpdatingDisplayedContent:count != 0];
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
  assetSharedViewModel = [(PUAssetViewModel *)self assetSharedViewModel];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__PUAssetViewModel__updatePropertiesFromAssetSharedViewModel__block_invoke;
  v5[3] = &unk_1E7B80C38;
  v5[4] = self;
  v6 = assetSharedViewModel;
  v4 = assetSharedViewModel;
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

- (void)setAssetSharedViewModel:(id)model
{
  modelCopy = model;
  assetSharedViewModel = self->_assetSharedViewModel;
  if (assetSharedViewModel != modelCopy)
  {
    v7 = modelCopy;
    [(PUAssetSharedViewModel *)assetSharedViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_assetSharedViewModel, model);
    [(PUAssetSharedViewModel *)self->_assetSharedViewModel registerChangeObserver:self];
    assetSharedViewModel = [(PUAssetViewModel *)self _updatePropertiesFromAssetSharedViewModel];
    modelCopy = v7;
  }

  MEMORY[0x1EEE66BB8](assetSharedViewModel, modelCopy);
}

- (void)setForceBadgesVisible:(BOOL)visible
{
  if (self->_forceBadgesVisible != visible)
  {
    self->_forceBadgesVisible = visible;
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange _setForceBadgesVisibleChanged:1];
  }
}

- (void)setRevealsGainMapImage:(BOOL)image
{
  if (self->_revealsGainMapImage != image)
  {
    self->_revealsGainMapImage = image;
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange setRevealsGainMapImageChanged:1];
  }
}

- (void)setEditStyle:(int64_t)style changeReason:(int64_t)reason
{
  if (*&self->_editStyle != __PAIR128__(reason, style))
  {
    isInEditMode = [(PUAssetViewModel *)self isInEditMode];
    self->_editStyle = style;
    self->_lastEditStyleChangeReason = reason;
    if (isInEditMode != [(PUAssetViewModel *)self isInEditMode])
    {
      currentChange = [(PUAssetViewModel *)self currentChange];
      [currentChange _setIsInEditModeChanged:1];
    }
  }
}

- (void)setContentOffsetOverrideFactor:(double)factor
{
  if (self->_contentOffsetOverrideFactor != factor)
  {
    self->_contentOffsetOverrideFactor = factor;
    kdebug_trace();
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange _setContentOffsetChanged:1];

    [(PUAssetViewModel *)self _updateAccessoryViewVisibilityFraction];
  }
}

- (void)setOverridingContentOffset:(CGPoint)offset
{
  if (offset.x != self->_overridingContentOffset.x || offset.y != self->_overridingContentOffset.y)
  {
    self->_overridingContentOffset = offset;
    kdebug_trace();
    [(PUAssetViewModel *)self _setLastContentOffsetChangeReason:0];
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange _setContentOffsetChanged:1];

    [(PUAssetViewModel *)self _updateAccessoryViewVisibilityFraction];
  }
}

- (void)setPreferredContentOffset:(CGPoint)offset changeReason:(int64_t)reason
{
  y = offset.y;
  x = offset.x;
  p_preferredContentOffset = &self->_preferredContentOffset;
  if ((PXPointApproximatelyEqualToPoint() & 1) == 0)
  {
    p_preferredContentOffset->x = x;
    p_preferredContentOffset->y = y;
    kdebug_trace();
    [(PUAssetViewModel *)self _setLastContentOffsetChangeReason:reason];
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange _setContentOffsetChanged:1];

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
      currentChange = [(PUAssetViewModel *)self currentChange];
      [currentChange _setContentOffsetChanged:1];
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

- (void)setAccessoryViewVisible:(BOOL)visible changeReason:(int64_t)reason
{
  if (self->_accessoryViewVisible != visible)
  {
    self->_accessoryViewVisible = visible;
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange _setAccessoryViewVisibilityChanged:1];

    [(PUAssetViewModel *)self _setLastAccessoryViewVisibilityChangeReason:reason];

    [(PUAssetViewModel *)self _invalidateAccessoryViewVisibilityFraction];
  }
}

- (void)setAccessoryViewVisibilityFraction:(double)fraction
{
  if (self->_accessoryViewVisibilityFraction != fraction)
  {
    self->_accessoryViewVisibilityFraction = fraction;
    [(PUAssetViewModel *)self _invalidateInteractionHostMode];
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange setAccessoryViewVisibilityFractionChanged:1];
  }
}

- (void)_updateAccessoryViewVisibilityFraction
{
  [(PUAssetViewModel *)self contentOffsetForAccessoryFullyVisible];
  if (v4 == *MEMORY[0x1E695EFF8] && v3 == *(MEMORY[0x1E695EFF8] + 8))
  {
    isAccessoryViewVisible = [(PUAssetViewModel *)self isAccessoryViewVisible];
  }

  else
  {
    PXPointDistanceFromOrigin();
    v7 = v6;
    isAccessoryViewVisible = 0.0;
    if (v7 != 0.0)
    {
      [(PUAssetViewModel *)self contentOffset];
      PXPointDistanceFromOrigin();
      PXClamp();
    }
  }

  [(PUAssetViewModel *)self setAccessoryViewVisibilityFraction:isAccessoryViewVisible];
}

- (void)_invalidateAccessoryViewVisibilityFraction
{
  updater = [(PUAssetViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateAccessoryViewVisibilityFraction];
}

- (void)setContentOffsetForAccessoryFullyVisible:(CGPoint)visible
{
  if (visible.x != self->_contentOffsetForAccessoryFullyVisible.x || visible.y != self->_contentOffsetForAccessoryFullyVisible.y)
  {
    self->_contentOffsetForAccessoryFullyVisible = visible;
    [(PUAssetViewModel *)self _updateAccessoryViewVisibilityFraction];
  }
}

- (void)setModelTileTransform:(id)transform
{
  v14 = *MEMORY[0x1E69E9840];
  transformCopy = transform;
  v5 = transformCopy;
  if (self->_modelTileTransform != transformCopy && ![(PUModelTileTransform *)transformCopy isEqual:?])
  {
    v6 = [(PUModelTileTransform *)v5 copy];
    modelTileTransform = self->_modelTileTransform;
    self->_modelTileTransform = v6;

    v8 = PLOneUpGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = 134218242;
      selfCopy = self;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "%p modelTileTransform=%@", &v10, 0x16u);
    }

    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange _setModelTileTransformChanged:1];
  }
}

- (void)setIsDisplayingHDRContent:(BOOL)content
{
  if (self->_isDisplayingHDRContent != content)
  {
    self->_isDisplayingHDRContent = content;
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange setIsDisplayingHDRContentChanged:1];
  }
}

- (void)setIsZoomedIn:(BOOL)in
{
  if (self->_isZoomedIn != in)
  {
    self->_isZoomedIn = in;
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange setIsZoomedInChanged:1];
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

- (void)setIsDisplayingSearchQueryLabel:(BOOL)label
{
  if (self->_isDisplayingSearchQueryLabel != label)
  {
    self->_isDisplayingSearchQueryLabel = label;
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange setIsDisplayingSearchQueryLabelChanged:1];
  }
}

- (void)setSearchContextualVideoThumbnailIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = identifierCopy;
  if (self->_searchContextualVideoThumbnailIdentifier != identifierCopy)
  {
    v7 = identifierCopy;
    identifierCopy = [identifierCopy isEqualToString:?];
    v6 = v7;
    if ((identifierCopy & 1) == 0)
    {
      objc_storeStrong(&self->_searchContextualVideoThumbnailIdentifier, identifier);
      identifierCopy = [(PUAssetViewModel *)self _invalidateHighlightTimeRangesProducer];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](identifierCopy, v6);
}

- (void)setSearchQueryMatchInfo:(id)info
{
  infoCopy = info;
  v6 = infoCopy;
  if (self->_searchQueryMatchInfo != infoCopy)
  {
    v7 = infoCopy;
    infoCopy = [infoCopy isEqual:?];
    v6 = v7;
    if ((infoCopy & 1) == 0)
    {
      objc_storeStrong(&self->_searchQueryMatchInfo, info);
      infoCopy = [(PUAssetViewModel *)self _invalidateHighlightTimeRangesProducer];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](infoCopy, v6);
}

- (void)setShouldShowHighlightTimeRanges:(BOOL)ranges
{
  if (self->_shouldShowHighlightTimeRanges != ranges)
  {
    self->_shouldShowHighlightTimeRanges = ranges;
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange setShouldShowHighlightTimeRangesChanged:1];
  }
}

- (void)_updateShouldShowHighlightTimeRanges
{
  highlightTimeRanges = [(PUAssetViewModel *)self highlightTimeRanges];
  memset(&v12, 0, sizeof(v12));
  videoPlayer = [(PUAssetViewModel *)self videoPlayer];
  v5 = videoPlayer;
  if (videoPlayer)
  {
    [videoPlayer duration];
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  if ((v12.flags & 0x1D) == 1 && [highlightTimeRanges count])
  {
    v11 = v12;
    Seconds = CMTimeGetSeconds(&v11);
    PXCMTimeRangeCombinedDuration();
    v7 = CMTimeGetSeconds(&v11) / Seconds;
    mEMORY[0x1E69C3C50] = [MEMORY[0x1E69C3C50] sharedInstance];
    [mEMORY[0x1E69C3C50] maxHighlightFractionForDisplay];
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
  updater = [(PUAssetViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateShouldShowHighlightTimeRanges];
}

- (void)setHighlightTimeRanges:(id)ranges
{
  rangesCopy = ranges;
  v5 = rangesCopy;
  if (self->_highlightTimeRanges != rangesCopy && ([(NSArray *)rangesCopy isEqual:?]& 1) == 0)
  {
    asset = [(PUAssetViewModel *)self asset];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = asset;
    }

    else
    {
      v7 = 0;
    }

    videoPlayer = [(PUAssetViewModel *)self videoPlayer];
    if ([(NSArray *)v5 count]&& v7 && videoPlayer)
    {
      timeRangeMapper = [videoPlayer timeRangeMapper];
      if (timeRangeMapper)
      {
      }

      else if ([v7 px_isSloMo])
      {
        currentChange = PLOneUpGetLog();
        if (os_log_type_enabled(currentChange, OS_LOG_TYPE_ERROR))
        {
          *v13 = 0;
          _os_log_impl(&dword_1B36F3000, currentChange, OS_LOG_TYPE_ERROR, "Missing a timeRangeMapper – this is needed to correctly map video highlights and playback start time for slo mo videos.", v13, 2u);
        }

        goto LABEL_16;
      }
    }

    v11 = [(NSArray *)v5 copy];
    highlightTimeRanges = self->_highlightTimeRanges;
    self->_highlightTimeRanges = v11;

    [(PUAssetViewModel *)self _invalidateShouldShowHighlightTimeRanges];
    [(PUAssetViewModel *)self _updateVideoPlaybackStartTime];
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange setHighlightTimeRangesChanged:1];
LABEL_16:
  }
}

- (void)_handleHighlightTimeRangesResult:(id)result forAsset:(id)asset
{
  resultCopy = result;
  assetCopy = asset;
  asset = [(PUAssetViewModel *)self asset];

  if (asset == assetCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__PUAssetViewModel__handleHighlightTimeRangesResult_forAsset___block_invoke;
    v9[3] = &unk_1E7B80C38;
    v9[4] = self;
    v10 = resultCopy;
    [(PUViewModel *)self performChanges:v9];
  }
}

- (void)_updateHighlightTimeRangesProducer
{
  _pxDisplayAsset = [(PUAssetViewModel *)self _pxDisplayAsset];
  highlightTimeRangesProducer = [(PUAssetViewModel *)self highlightTimeRangesProducer];
  [highlightTimeRangesProducer setAsset:_pxDisplayAsset];

  searchQueryMatchInfo = [(PUAssetViewModel *)self searchQueryMatchInfo];
  highlightTimeRangesProducer2 = [(PUAssetViewModel *)self highlightTimeRangesProducer];
  [highlightTimeRangesProducer2 setSearchQueryMatchInfo:searchQueryMatchInfo];

  searchContextualVideoThumbnailIdentifier = [(PUAssetViewModel *)self searchContextualVideoThumbnailIdentifier];
  highlightTimeRangesProducer3 = [(PUAssetViewModel *)self highlightTimeRangesProducer];
  [highlightTimeRangesProducer3 setSearchContextualVideoThumbnailIdentifier:searchContextualVideoThumbnailIdentifier];
}

- (void)setVisualSearchImageAnalysisInteraction:(id)interaction
{
  v11 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  WeakRetained = objc_loadWeakRetained(&self->_visualSearchImageAnalysisInteraction);

  if (WeakRetained != interactionCopy)
  {
    objc_storeWeak(&self->_visualSearchImageAnalysisInteraction, interactionCopy);
    if (PFOSVariantHasInternalUI())
    {
      v6 = PLVisualIntelligenceGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138412546;
        v8 = interactionCopy;
        v9 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "Did set visualSearchImageAnalysisInteraction: %@ on assetViewModel: %@", &v7, 0x16u);
      }
    }
  }
}

- (void)setImageAnalysisInteraction:(id)interaction
{
  v13 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  imageAnalysisInteraction = self->_imageAnalysisInteraction;
  if (imageAnalysisInteraction != interactionCopy)
  {
    assetViewModel = [(PUImageAnalysisInteraction *)imageAnalysisInteraction assetViewModel];

    if (assetViewModel == self)
    {
      [(PUImageAnalysisInteraction *)self->_imageAnalysisInteraction setHostView:0];
      [(PUImageAnalysisInteraction *)self->_imageAnalysisInteraction setAssetViewModel:0];
    }

    objc_storeStrong(&self->_imageAnalysisInteraction, interaction);
    [(PUImageAnalysisInteraction *)self->_imageAnalysisInteraction setAssetViewModel:self];
    if (PFOSVariantHasInternalUI())
    {
      v8 = PLVisualIntelligenceGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412546;
        v10 = interactionCopy;
        v11 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "Set imageAnalysisInteraction: %@ on assetViewModel: %@", &v9, 0x16u);
      }
    }

    [(PUAssetViewModel *)self _updateImageAnalysisInteractionHostView];
  }
}

- (void)setIrisPlayer:(id)player
{
  playerCopy = player;
  irisPlayer = self->_irisPlayer;
  if (irisPlayer != playerCopy)
  {
    v8 = playerCopy;
    [(PUBrowsingIrisPlayer *)irisPlayer unregisterChangeObserver:self];
    objc_storeStrong(&self->_irisPlayer, player);
    [(PUBrowsingIrisPlayer *)self->_irisPlayer registerChangeObserver:self];
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange setIrisPlayerChanged:1];

    irisPlayer = [(PUAssetViewModel *)self _invalidateVideoPlayersLoadingAllowed];
    playerCopy = v8;
  }

  MEMORY[0x1EEE66BB8](irisPlayer, playerCopy);
}

- (void)setVideoPlayer:(id)player
{
  playerCopy = player;
  if (self->_videoPlayer != playerCopy)
  {
    v7 = playerCopy;
    [(PUAssetViewModel *)self setHasAutoplayedVideoSinceBecomingFocused:0];
    [(PUBrowsingVideoPlayer *)self->_videoPlayer unregisterChangeObserver:self];
    objc_storeStrong(&self->_videoPlayer, player);
    [(PUBrowsingVideoPlayer *)self->_videoPlayer registerChangeObserver:self];
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange setVideoPlayerDidChange:1];

    [(PUAssetViewModel *)self _invalidateMediaControllers];
    [(PUAssetViewModel *)self _invalidateVideoPlayersLoadingAllowed];
    playerCopy = v7;
  }
}

- (void)_updateMediaControllers
{
  asset = [(PUAssetViewModel *)self asset];
  [(PUAssetViewModel *)self focusValue];
  v5 = fabs(v4);
  v6 = v5 < 1.0 && [asset playbackStyle] == 5;
  isPhotoIrisPlaceholder = 0;
  if (![(PUAssetViewModel *)self lowMemoryMode]&& !v6)
  {
    mediaProvider = [(PUAssetViewModel *)self mediaProvider];
    if (mediaProvider)
    {
      if ([asset canPlayPhotoIris])
      {
        isPhotoIrisPlaceholder = 1;
      }

      else
      {
        isPhotoIrisPlaceholder = [asset isPhotoIrisPlaceholder];
      }
    }

    else
    {
      isPhotoIrisPlaceholder = 0;
    }
  }

  if (v5 >= 1.0)
  {
    allowGIFPlayback = 0;
  }

  else
  {
    mediaProvider2 = [(PUAssetViewModel *)self mediaProvider];
    if (mediaProvider2 && [asset isAnimatedImage])
    {
      v10 = +[PUOneUpSettings sharedInstance];
      allowGIFPlayback = [v10 allowGIFPlayback];
    }

    else
    {
      allowGIFPlayback = 0;
    }
  }

  v12 = +[PUOneUpSettings sharedInstance];
  videoPlayer = [(PUAssetViewModel *)self videoPlayer];
  if (videoPlayer)
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
    v32 = videoPlayer;
    v35 = v17;
    v33 = asset;
    selfCopy = self;
    [v32 performChanges:v31];
    [(PUAssetViewModel *)self _updateVideoPlaybackStartTime];
  }

  if (isPhotoIrisPlaceholder)
  {
    irisPlayer = [(PUAssetViewModel *)self irisPlayer];

    if (!irisPlayer)
    {
      v19 = [PUBrowsingIrisPlayer alloc];
      mediaProvider3 = [(PUAssetViewModel *)self mediaProvider];
      v21 = [(PUBrowsingIrisPlayer *)v19 initWithAsset:asset mediaProvider:mediaProvider3];

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
  if (allowGIFPlayback)
  {
    if (!animatedImagePlayer)
    {
      v24 = [PUBrowsingAnimatedImagePlayer alloc];
      mediaProvider4 = [(PUAssetViewModel *)self mediaProvider];
      v26 = [(PUBrowsingAnimatedImagePlayer *)v24 initWithAsset:asset mediaProvider:mediaProvider4];
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
  updater = [(PUAssetViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateMediaControllers];
}

- (void)setIsLivePhotoContentAllowed:(BOOL)allowed
{
  if (self->_isLivePhotoContentAllowed != allowed)
  {
    self->_isLivePhotoContentAllowed = allowed;
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

  irisPlayer = [(PUAssetViewModel *)self irisPlayer];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__PUAssetViewModel__updatePlayersLoadingAllowed__block_invoke;
  v13[3] = &unk_1E7B757B8;
  v17 = v4 > 1.1;
  v14 = irisPlayer;
  selfCopy = self;
  v16 = v5;
  v7 = irisPlayer;
  [v7 performChanges:v13];
  animatedImagePlayer = [(PUAssetViewModel *)self animatedImagePlayer];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__PUAssetViewModel__updatePlayersLoadingAllowed__block_invoke_2;
  v10[3] = &unk_1E7B7FF98;
  v11 = animatedImagePlayer;
  v12 = v4 > 0.25;
  v9 = animatedImagePlayer;
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
  updater = [(PUAssetViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updatePlayersLoadingAllowed];
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

- (void)setIsScrubbing:(BOOL)scrubbing
{
  if (self->_isScrubbing != scrubbing)
  {
    self->_isScrubbing = scrubbing;
    if (scrubbing)
    {
      if (!self->_assetSyndicationState)
      {
        assetSyndicationStateOverride = [(PUAssetViewModel *)self assetSyndicationStateOverride];

        if (!assetSyndicationStateOverride)
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

- (void)setImportState:(int64_t)state
{
  if (self->_importState != state)
  {
    self->_importState = state;
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange _setImportStateChanged:1];
  }
}

- (void)setSaveState:(int64_t)state
{
  if (self->_saveState != state)
  {
    self->_saveState = state;
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange _setSaveStateChanged:1];
  }
}

- (void)setSaveProgress:(id)progress
{
  progressCopy = progress;
  if (self->_saveProgress != progressCopy)
  {
    v7 = progressCopy;
    kdebug_trace();
    objc_storeStrong(&self->_saveProgress, progress);
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange _setSaveProgressChanged:1];

    progressCopy = v7;
  }
}

- (void)setLoadingStatus:(id)status
{
  statusCopy = status;
  v5 = statusCopy;
  if (self->_loadingStatus != statusCopy)
  {
    v9 = statusCopy;
    statusCopy = [statusCopy isEqual:?];
    v5 = v9;
    if ((statusCopy & 1) == 0)
    {
      v6 = [v9 copy];
      loadingStatus = self->_loadingStatus;
      self->_loadingStatus = v6;

      currentChange = [(PUAssetViewModel *)self currentChange];
      [currentChange _setLoadingStatusChanged:1];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](statusCopy, v5);
}

- (void)_setAssetSyndicationState:(int64_t)state
{
  if (self->_assetSyndicationState != state)
  {
    self->_assetSyndicationState = state;
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange setAssetSyndicationStateChanged:1];
  }
}

- (void)_setFavorite:(BOOL)favorite
{
  if (self->_isFavorite != favorite)
  {
    self->_isFavorite = favorite;
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange _setIsFavoriteChanged:1];
  }
}

- (BOOL)isHDR
{
  asset = [(PUAssetViewModel *)self asset];
  v3 = ([asset mediaSubtypes] & 0x900202) != 0;

  return v3;
}

- (void)setAssetSyndicationStateOverride:(id)override
{
  v16 = *MEMORY[0x1E69E9840];
  overrideCopy = override;
  v6 = self->_assetSyndicationStateOverride;
  v7 = v6;
  if (v6 == overrideCopy)
  {
  }

  else
  {
    v8 = [(NSNumber *)v6 isEqual:overrideCopy];

    if ((v8 & 1) == 0)
    {
      if (!overrideCopy)
      {
        assetSyndicationStateOverride = self->_assetSyndicationStateOverride;
        self->_assetSyndicationStateOverride = 0;

        integerValue2 = 0;
        goto LABEL_8;
      }

      integerValue = [(NSNumber *)overrideCopy integerValue];
      if ((integerValue - 1) < 4)
      {
        objc_storeStrong(&self->_assetSyndicationStateOverride, override);
        integerValue2 = [(NSNumber *)overrideCopy integerValue];
LABEL_8:
        [(PUAssetViewModel *)self _setAssetSyndicationState:integerValue2];
        goto LABEL_12;
      }

      v12 = integerValue;
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

- (void)setIsFavoriteOverride:(id)override
{
  overrideCopy = override;
  isFavoriteOverride = self->_isFavoriteOverride;
  if (isFavoriteOverride != overrideCopy && ([(NSNumber *)isFavoriteOverride isEqual:overrideCopy]& 1) == 0)
  {
    v6 = [(NSNumber *)overrideCopy copy];
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

- (void)setBadgeInfoPromise:(id)promise
{
  promiseCopy = promise;
  v5 = promiseCopy;
  if (self->_badgeInfoPromise != promiseCopy)
  {
    v9 = promiseCopy;
    promiseCopy = [(PUBadgeInfoPromise *)promiseCopy isEqual:?];
    v5 = v9;
    if ((promiseCopy & 1) == 0)
    {
      v6 = [(PUBadgeInfoPromise *)v9 copy];
      badgeInfoPromise = self->_badgeInfoPromise;
      self->_badgeInfoPromise = v6;

      currentChange = [(PUAssetViewModel *)self currentChange];
      [currentChange _setBadgeInfoChanged:1];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](promiseCopy, v5);
}

- (void)setIsFullyOutOfFocus:(BOOL)focus
{
  if (self->_isFullyOutOfFocus != focus)
  {
    self->_isFullyOutOfFocus = focus;
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange setIsFullyOutOfFocusChanged:1];
  }
}

- (void)setIsFullyInFocus:(BOOL)focus
{
  if (self->_isFullyInFocus != focus)
  {
    self->_isFullyInFocus = focus;
    if (focus)
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

    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange setIsFullyInFocusChanged:1];
  }
}

- (void)setFocusValue:(double)value
{
  if (self->_focusValue == value)
  {
    return;
  }

  self->_focusValue = value;
  currentChange = [(PUAssetViewModel *)self currentChange];
  [currentChange _setFocusValueChanged:1];

  v6 = fabs(value);
  [(PUAssetViewModel *)self setIsFullyInFocus:v6 <= 0.01];
  [(PUAssetViewModel *)self setIsFullyOutOfFocus:v6 >= 0.9];
  irisPlayer = [(PUAssetViewModel *)self irisPlayer];
  v8 = irisPlayer;
  if (v6 >= 0.5 && irisPlayer != 0)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __34__PUAssetViewModel_setFocusValue___block_invoke;
    v12[3] = &unk_1E7B80DD0;
    v13 = irisPlayer;
    [v13 performChanges:v12];
  }

  if (value == 0.0)
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

- (void)setUserTransformingTile:(BOOL)tile
{
  if (self->_isUserTransformingTile != tile)
  {
    self->_isUserTransformingTile = tile;
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange _setUserTransformingTileDidChange:1];
  }
}

- (void)setMediaProvider:(id)provider
{
  providerCopy = provider;
  if (self->_mediaProvider != providerCopy)
  {
    v7 = providerCopy;
    objc_storeStrong(&self->_mediaProvider, provider);
    currentChange = [(PUAssetViewModel *)self currentChange];
    [currentChange setHasChanges];

    [(PUAssetViewModel *)self _invalidateMediaControllers];
    providerCopy = v7;
  }
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  asset = self->_asset;
  if (asset != assetCopy)
  {
    assetCopy2 = asset;
    v8 = [(PUDisplayAsset *)assetCopy isContentEqualTo:assetCopy2];
    if (!v8)
    {
      v8 = [(PUDisplayAsset *)assetCopy2 isContentEqualTo:assetCopy];
    }

    if (v8 != 2)
    {
      currentChange = [(PUAssetViewModel *)self currentChange];
      [currentChange _setAssetContentChanged:1];
    }

    objc_storeStrong(&self->_asset, asset);
    currentChange2 = [(PUAssetViewModel *)self currentChange];
    [currentChange2 _setAssetChanged:1];

    [(PUAssetViewModel *)self setIsFavoriteOverride:0];
    [(PUAssetViewModel *)self _updateFavoriteState];
    [(PUAssetViewModel *)self setAssetSyndicationStateOverride:0];
    [(PUAssetViewModel *)self _invalidateMediaControllers];
    videoPlayer = [(PUAssetViewModel *)self videoPlayer];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __29__PUAssetViewModel_setAsset___block_invoke;
    v28[3] = &unk_1E7B80C38;
    v29 = videoPlayer;
    v12 = assetCopy;
    v30 = v12;
    v13 = videoPlayer;
    [v13 performChanges:v28];
    irisPlayer = [(PUAssetViewModel *)self irisPlayer];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __29__PUAssetViewModel_setAsset___block_invoke_2;
    v25[3] = &unk_1E7B80C38;
    v26 = irisPlayer;
    v15 = v12;
    v27 = v15;
    v16 = irisPlayer;
    [v16 performChanges:v25];
    animatedImagePlayer = [(PUAssetViewModel *)self animatedImagePlayer];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __29__PUAssetViewModel_setAsset___block_invoke_3;
    v22 = &unk_1E7B80C38;
    v23 = animatedImagePlayer;
    v24 = v15;
    v18 = animatedImagePlayer;
    [v18 performChanges:&v19];
    [(PUAssetViewModel *)self _invalidateHighlightTimeRangesProducer:v19];
  }
}

- (void)unregisterChangeObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = PUAssetViewModel;
  [(PUViewModel *)&v3 unregisterChangeObserver:observer];
}

- (void)registerChangeObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = PUAssetViewModel;
  [(PUViewModel *)&v3 registerChangeObserver:observer];
}

- (void)didPerformChanges
{
  v5.receiver = self;
  v5.super_class = PUAssetViewModel;
  [(PUViewModel *)&v5 didPerformChanges];
  updater = [(PUAssetViewModel *)self updater];
  [updater updateIfNeeded];

  currentChangeIfExists = [(PUAssetViewModel *)self currentChangeIfExists];
  if ([currentChangeIfExists contentOffsetChanged])
  {
    [(PUAssetViewModel *)self contentOffset];
    kdebug_trace();
  }
}

- (PUAssetViewModelChange)currentChangeIfExists
{
  v4.receiver = self;
  v4.super_class = PUAssetViewModel;
  currentChangeIfExists = [(PUViewModel *)&v4 currentChangeIfExists];

  return currentChangeIfExists;
}

- (PUAssetViewModelChange)currentChange
{
  v4.receiver = self;
  v4.super_class = PUAssetViewModel;
  currentChange = [(PUViewModel *)&v4 currentChange];

  return currentChange;
}

- (BOOL)allowAutoplayVideoForAsset:(id)asset
{
  assetCopy = asset;
  videoAutoplayPredicate = [(PUAssetViewModel *)self videoAutoplayPredicate];

  if (videoAutoplayPredicate)
  {
    videoAutoplayPredicate2 = [(PUAssetViewModel *)self videoAutoplayPredicate];
    v7 = (videoAutoplayPredicate2)[2](videoAutoplayPredicate2, assetCopy);
  }

  else
  {
    videoAutoplayPredicate2 = +[PUOneUpSettings sharedInstance];
    v7 = [videoAutoplayPredicate2 allowAutoplayVideoForAsset:assetCopy];
  }

  v8 = v7;

  return v8;
}

- (void)setVideoAutoplayPredicate:(id)predicate
{
  if (self->_videoAutoplayPredicate != predicate)
  {
    v4 = _Block_copy(predicate);
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

- (PUAssetViewModel)initWithLowMemoryMode:(BOOL)mode mediaAnalyzer:(id)analyzer
{
  analyzerCopy = analyzer;
  v22.receiver = self;
  v22.super_class = PUAssetViewModel;
  v7 = [(PUViewModel *)&v22 init];
  v8 = v7;
  if (v7)
  {
    v7->_isZoomedIn = 0;
    initWithNoUserInput = [[PUModelTileTransform alloc] initWithNoUserInput];
    modelTileTransform = v8->_modelTileTransform;
    v8->_modelTileTransform = initWithNoUserInput;

    v8->_focusValue = 1.79769313e308;
    v8->_lowMemoryMode = mode;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    registeredVideoLayerSources = v8->_registeredVideoLayerSources;
    v8->_registeredVideoLayerSources = weakObjectsHashTable;

    highlightTimeRanges = v8->_highlightTimeRanges;
    v8->_highlightTimeRanges = MEMORY[0x1E695E0F0];

    if (!analyzerCopy)
    {
      v14 = +[PUOneUpSettings sharedInstance];
      insertDummyHighlightTimeRanges = [v14 insertDummyHighlightTimeRanges];

      if (insertDummyHighlightTimeRanges)
      {
        v16 = [objc_alloc(MEMORY[0x1E69C3770]) initWithTimeRangeProvider:&__block_literal_global_11620];
      }

      else
      {
        v16 = objc_alloc_init(MEMORY[0x1E69C3B70]);
      }

      analyzerCopy = v16;
    }

    v17 = [[PUAssetHighlightTimeRangesProducer alloc] initWithMediaAnalyzer:analyzerCopy];
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

+ (int64_t)imageAnalysisInteractionHostModeForAccessoryViewVisibility:(BOOL)visibility
{
  if (visibility)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end