@interface PUAssetViewModelChange
- (BOOL)hasChanges;
- (BOOL)infoButtonPropertyChanged;
- (id)description;
@end

@implementation PUAssetViewModelChange

- (BOOL)infoButtonPropertyChanged
{
  result = 1;
  if (![(PUAssetViewModelChange *)self visualImageAnalysisChanged])
  {
    mEMORY[0x1E69C3650] = [MEMORY[0x1E69C3650] sharedInstance];
    enablePhototypes = [mEMORY[0x1E69C3650] enablePhototypes];

    if (!enablePhototypes || ![(PUAssetViewModelChange *)self hasVisualAnalysisFailedChanged]&& ![(PUAssetViewModelChange *)self phototypeInfoButtonSupportChanged])
    {
      return 0;
    }
  }

  return result;
}

- (id)description
{
  if ([(PUAssetViewModelChange *)self hasChanges])
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:40];
    if ([(PUAssetViewModelChange *)self assetChanged])
    {
      [v3 addObject:@"assetChanged"];
    }

    if ([(PUAssetViewModelChange *)self assetContentChanged])
    {
      [v3 addObject:@"assetContentChanged"];
    }

    if ([(PUAssetViewModelChange *)self modelTileTransformChanged])
    {
      [v3 addObject:@"modelTileTransformChanged"];
    }

    if ([(PUAssetViewModelChange *)self isUserTransformingTileDidChange])
    {
      [v3 addObject:@"isUserTransformingTileDidChange"];
    }

    if ([(PUAssetViewModelChange *)self focusValueChanged])
    {
      [v3 addObject:@"focusValueChanged"];
    }

    if ([(PUAssetViewModelChange *)self loadingStatusChanged])
    {
      [v3 addObject:@"loadingStatusChanged"];
    }

    if ([(PUAssetViewModelChange *)self saveProgressChanged])
    {
      [v3 addObject:@"saveProgressChanged"];
    }

    if ([(PUAssetViewModelChange *)self saveStateChanged])
    {
      [v3 addObject:@"saveStateChanged"];
    }

    if ([(PUAssetViewModelChange *)self importStateChanged])
    {
      [v3 addObject:@"importStateChanged"];
    }

    if ([(PUAssetViewModelChange *)self isUpdatingDisplayedContentChanged])
    {
      [v3 addObject:@"isUpdatingDisplayedContentChanged"];
    }

    if ([(PUAssetViewModelChange *)self isFavoriteChanged])
    {
      [v3 addObject:@"isFavoriteChanged"];
    }

    if ([(PUAssetViewModelChange *)self assetSyndicationStateChanged])
    {
      [v3 addObject:@"assetSyndicationStateChanged"];
    }

    videoPlayerChange = [(PUAssetViewModelChange *)self videoPlayerChange];

    if (videoPlayerChange)
    {
      [v3 addObject:@"videoPlayerChange"];
    }

    if ([(PUAssetViewModelChange *)self forceBadgesVisibleChanged])
    {
      [v3 addObject:@"forceBadgesVisibleChanged"];
    }

    irisPlayerChange = [(PUAssetViewModelChange *)self irisPlayerChange];

    if (irisPlayerChange)
    {
      [v3 addObject:@"irisPlayerChange"];
    }

    if ([(PUAssetViewModelChange *)self badgeInfoChanged])
    {
      [v3 addObject:@"badgeInfoChanged"];
    }

    if ([(PUAssetViewModelChange *)self accessoryViewVisibilityChanged])
    {
      [v3 addObject:@"accessoryViewVisibilityChanged"];
    }

    if ([(PUAssetViewModelChange *)self contentOffsetChanged])
    {
      [v3 addObject:@"contentOffsetChanged"];
    }

    if ([(PUAssetViewModelChange *)self isInEditModeChanged])
    {
      [v3 addObject:@"isInEditModeChanged"];
    }

    animatedImageChange = [(PUAssetViewModelChange *)self animatedImageChange];

    if (animatedImageChange)
    {
      [v3 addObject:@"animatedImageChange"];
    }

    if ([(PUAssetViewModelChange *)self revealsGainMapImageChanged])
    {
      [v3 addObject:@"revealsGainMapImageChanged"];
    }

    if ([(PUAssetViewModelChange *)self isPresentedForPreviewChanged])
    {
      [v3 addObject:@"isPresentedForPreviewChanged"];
    }

    if ([(PUAssetViewModelChange *)self visualImageAnalysisChanged])
    {
      [v3 addObject:@"visualImageAnalysisChanged"];
    }

    if ([(PUAssetViewModelChange *)self hasVisualAnalysisFailedChanged])
    {
      [v3 addObject:@"hasVisualAnalysisFailedChanged"];
    }

    if ([(PUAssetViewModelChange *)self phototypeAccessoryViewSupportChanged])
    {
      [v3 addObject:@"phototypeAccessoryViewSupportChanged"];
    }

    if ([(PUAssetViewModelChange *)self phototypeInfoButtonSupportChanged])
    {
      [v3 addObject:@"phototypeInfoButtonSupportChanged"];
    }

    if ([(PUAssetViewModelChange *)self shazamEventInfoChanged])
    {
      [v3 addObject:@"shazamEventInfoChanged"];
    }

    if ([(PUAssetViewModelChange *)self isBeingDismissedChanged])
    {
      [v3 addObject:@"isBeingDismissedChanged"];
    }

    if ([(PUAssetViewModelChange *)self isIrisPlayingChanged])
    {
      [v3 addObject:@"isIrisPlayingChanged"];
    }

    if ([(PUAssetViewModelChange *)self isVisualSearchCardShowingChanged])
    {
      [v3 addObject:@"isVisualSearchCardShowingChanged"];
    }

    if ([(PUAssetViewModelChange *)self statusCornerStateChanged])
    {
      [v3 addObject:@"statusCornerStateChanged"];
    }

    if ([(PUAssetViewModelChange *)self bestImageChanged])
    {
      [v3 addObject:@"bestImageChanged"];
    }

    if ([(PUAssetViewModelChange *)self videoPlayerDidChange])
    {
      [v3 addObject:@"videoPlayerDidChange"];
    }

    if ([(PUAssetViewModelChange *)self irisPlayerChanged])
    {
      [v3 addObject:@"irisPlayerChanged"];
    }

    if ([(PUAssetViewModelChange *)self highlightTimeRangesChanged])
    {
      [v3 addObject:@"highlightTimeRangesChanged"];
    }

    if ([(PUAssetViewModelChange *)self needsResetVisualImageInteractionChanged])
    {
      [v3 addObject:@"needsResetVisualImageInteractionChanged"];
    }

    if ([(PUAssetViewModelChange *)self PPT_isDeferredProcessingDoneAndFinalImageDisplayedChanged])
    {
      [v3 addObject:@"PPT_isDeferredProcessingDoneAndFinalImageDisplayedChanged"];
    }

    if ([(PUAssetViewModelChange *)self isDisplayingSearchQueryLabelChanged])
    {
      [v3 addObject:@"isDisplayingSearchQueryLabelChanged"];
    }

    if ([(PUAssetViewModelChange *)self visualIntelligenceAnalyzeRequestIDChanged])
    {
      [v3 addObject:@"visualIntelligenceAnalyzeRequestIDChanged"];
    }

    if ([(PUAssetViewModelChange *)self isFullyInFocusChanged])
    {
      [v3 addObject:@"isFullyInFocusChanged"];
    }

    if ([(PUAssetViewModelChange *)self isZoomedInChanged])
    {
      [v3 addObject:@"isZoomedInChanged"];
    }

    if ([(PUAssetViewModelChange *)self isFullyOutOfFocusChanged])
    {
      [v3 addObject:@"isFullyOutOfFocusChanged"];
    }

    if ([(PUAssetViewModelChange *)self accessoryViewVisibilityFractionChanged])
    {
      [v3 addObject:@"accessoryViewVisibilityFractionChanged"];
    }

    if ([(PUAssetViewModelChange *)self mainImageContentsRectChanged])
    {
      [v3 addObject:@"mainImageContentsRectChanged"];
    }

    if ([(PUAssetViewModelChange *)self isDisplayingHDRContentChanged])
    {
      [v3 addObject:@"isDisplayingHDRContentChanged"];
    }

    v12.receiver = self;
    v12.super_class = PUAssetViewModelChange;
    v7 = [(PUAssetViewModelChange *)&v12 description];
    v8 = [v3 componentsJoinedByString:{@", "}];
    v9 = [v7 stringByAppendingFormat:@"Changes: [%@]", v8];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PUAssetViewModelChange;
    v3 = [(PUAssetViewModelChange *)&v11 description];
    v9 = [v3 stringByAppendingString:@"(No changes)"];
  }

  return v9;
}

- (BOOL)hasChanges
{
  v7.receiver = self;
  v7.super_class = PUAssetViewModelChange;
  if ([(PUViewModelChange *)&v7 hasChanges])
  {
    return 1;
  }

  if ([(PUAssetViewModelChange *)self assetChanged])
  {
    return 1;
  }

  if ([(PUAssetViewModelChange *)self assetContentChanged])
  {
    return 1;
  }

  if ([(PUAssetViewModelChange *)self modelTileTransformChanged])
  {
    return 1;
  }

  if ([(PUAssetViewModelChange *)self isUserTransformingTileDidChange])
  {
    return 1;
  }

  if ([(PUAssetViewModelChange *)self focusValueChanged])
  {
    return 1;
  }

  if ([(PUAssetViewModelChange *)self loadingStatusChanged])
  {
    return 1;
  }

  if ([(PUAssetViewModelChange *)self saveProgressChanged])
  {
    return 1;
  }

  if ([(PUAssetViewModelChange *)self saveStateChanged])
  {
    return 1;
  }

  if ([(PUAssetViewModelChange *)self importStateChanged])
  {
    return 1;
  }

  if ([(PUAssetViewModelChange *)self isUpdatingDisplayedContentChanged])
  {
    return 1;
  }

  if ([(PUAssetViewModelChange *)self isFavoriteChanged])
  {
    return 1;
  }

  if ([(PUAssetViewModelChange *)self assetSyndicationStateChanged])
  {
    return 1;
  }

  videoPlayerChange = [(PUAssetViewModelChange *)self videoPlayerChange];

  if (videoPlayerChange)
  {
    return 1;
  }

  if ([(PUAssetViewModelChange *)self forceBadgesVisibleChanged])
  {
    return 1;
  }

  irisPlayerChange = [(PUAssetViewModelChange *)self irisPlayerChange];

  if (irisPlayerChange)
  {
    return 1;
  }

  if ([(PUAssetViewModelChange *)self badgeInfoChanged])
  {
    return 1;
  }

  if ([(PUAssetViewModelChange *)self accessoryViewVisibilityChanged])
  {
    return 1;
  }

  if ([(PUAssetViewModelChange *)self contentOffsetChanged])
  {
    return 1;
  }

  if ([(PUAssetViewModelChange *)self isInEditModeChanged])
  {
    return 1;
  }

  animatedImageChange = [(PUAssetViewModelChange *)self animatedImageChange];

  return animatedImageChange || [(PUAssetViewModelChange *)self revealsGainMapImageChanged]|| [(PUAssetViewModelChange *)self isPresentedForPreviewChanged]|| [(PUAssetViewModelChange *)self visualImageAnalysisChanged]|| [(PUAssetViewModelChange *)self hasVisualAnalysisFailedChanged]|| [(PUAssetViewModelChange *)self phototypeAccessoryViewSupportChanged]|| [(PUAssetViewModelChange *)self phototypeInfoButtonSupportChanged]|| [(PUAssetViewModelChange *)self shazamEventInfoChanged]|| [(PUAssetViewModelChange *)self isBeingDismissedChanged]|| [(PUAssetViewModelChange *)self isIrisPlayingChanged]|| [(PUAssetViewModelChange *)self isVisualSearchCardShowingChanged]|| [(PUAssetViewModelChange *)self statusCornerStateChanged]|| [(PUAssetViewModelChange *)self bestImageChanged]|| [(PUAssetViewModelChange *)self videoPlayerDidChange]|| [(PUAssetViewModelChange *)self irisPlayerChanged]|| [(PUAssetViewModelChange *)self highlightTimeRangesChanged]|| [(PUAssetViewModelChange *)self needsResetVisualImageInteractionChanged]|| [(PUAssetViewModelChange *)self PPT_isDeferredProcessingDoneAndFinalImageDisplayedChanged]|| [(PUAssetViewModelChange *)self isDisplayingSearchQueryLabelChanged]|| [(PUAssetViewModelChange *)self visualIntelligenceAnalyzeRequestIDChanged]|| [(PUAssetViewModelChange *)self isFullyInFocusChanged]|| [(PUAssetViewModelChange *)self isZoomedInChanged]|| [(PUAssetViewModelChange *)self isFullyOutOfFocusChanged]|| [(PUAssetViewModelChange *)self accessoryViewVisibilityFractionChanged]|| [(PUAssetViewModelChange *)self mainImageContentsRectChanged]|| [(PUAssetViewModelChange *)self isDisplayingHDRContentChanged];
}

@end