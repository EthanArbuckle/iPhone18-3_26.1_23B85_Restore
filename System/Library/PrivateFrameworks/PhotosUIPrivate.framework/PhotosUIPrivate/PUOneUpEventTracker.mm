@interface PUOneUpEventTracker
- (PUOneUpEventTracker)initWithViewModel:(id)model presentationOrigin:(int64_t)origin;
- (PUOneUpEventTracker)initWithViewName:(id)name;
- (void)_handleLongEnoughViewDurationWithGeneration:(int64_t)generation;
- (void)_incrementAssetViewCountIfNeeded:(id)needed;
- (void)_invalidateCurrentVideoPlayer;
- (void)_invalidateCurrentVideoProperties;
- (void)_invalidateCurrentlyViewedAsset;
- (void)_invalidateIsSessionActive;
- (void)_invalidateOneUpInfoPanelShowingSignpost;
- (void)_logDidEndPlayingVideoAsset:(id)asset duration:(double)duration;
- (void)_logDidEndSession;
- (void)_logDidStartActualPlaybackOfStreamedVideoAsset:(id)asset;
- (void)_logDidStartPlaybackOfStreamedVideoAsset:(id)asset;
- (void)_logDidStartPlayingVideoAsset:(id)asset;
- (void)_logDidStartSession;
- (void)_logInfoPanelChangeEventsIfNeededWithChange:(id)change;
- (void)_logWillEndPlaybackOfStreamedVideoAsset:(id)asset;
- (void)_sendMapSelectionEventToBiomeWithAssetUUID:(id)d;
- (void)_updateCurrentVideoPlayer;
- (void)_updateCurrentVideoProperties;
- (void)_updateCurrentlyViewedAsset;
- (void)_updateIsSessionActive;
- (void)_updateOneUpInfoPanelShowingSignpost;
- (void)endLoggingTimeInterval:(int64_t)interval event:(id)event;
- (void)logDidEndViewingMedia:(id)media mediaKind:(int64_t)kind duration:(double)duration;
- (void)logDidStartViewingMedia:(id)media mediaKind:(int64_t)kind;
- (void)logInfoPanelClosedBy:(int64_t)by;
- (void)logInfoPanelOpenedBy:(int64_t)by;
- (void)logInfoPanelRotatedToHorizontalView;
- (void)logInfoPanelShownAndSwipeToNewAsset;
- (void)logTipPresentedForType:(int64_t)type;
- (void)logUserDidPlayLivePhoto:(id)photo pressOnSubject:(BOOL)subject;
- (void)logUserWillPlayLivePhoto:(id)photo firstTimeWaitDuration:(double)duration;
- (void)logViewControllerDidAppear:(id)appear;
- (void)logVitalityDidEndForLivePhoto:(id)photo;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setCurrentVideoPlayer:(id)player;
- (void)setCurrentlyPlayingVideoAsset:(id)asset;
- (void)setCurrentlyStreamingVideoAsset:(id)asset;
- (void)setCurrentlyStreamingVideoIsActuallyPlaying:(BOOL)playing;
- (void)setCurrentlyStreamingVideoIsStalled:(BOOL)stalled;
- (void)setDisplayedAsset:(id)asset;
- (void)setIsSessionActive:(BOOL)active;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUOneUpEventTracker

- (void)viewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  viewModel = [(PUOneUpEventTracker *)self viewModel];

  if (viewModel == modelCopy)
  {
    v15 = changeCopy;
    if ([v15 browsingSpeedRegimeDidChange])
    {
      currentAssetDidChange = 1;
    }

    else
    {
      currentAssetDidChange = [v15 currentAssetDidChange];
    }

    videoPlayerDidChange = [v15 videoPlayerDidChange];
    [(PUOneUpEventTracker *)self _logInfoPanelChangeEventsIfNeededWithChange:v15];
    isStalledDidChange = 0;
  }

  else
  {
    currentVideoPlayer = [(PUOneUpEventTracker *)self currentVideoPlayer];

    if (currentVideoPlayer != modelCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:726 description:{@"unexpected view model %@", modelCopy}];

      abort();
    }

    v11 = changeCopy;
    if ([v11 desiredPlayStateDidChange] & 1) != 0 || (objc_msgSend(v11, "playerItemDidChange") & 1) != 0 || (objc_msgSend(v11, "playStateDidChange"))
    {

      currentAssetDidChange = 0;
      videoPlayerDidChange = 0;
      LOBYTE(isStalledDidChange) = 1;
LABEL_7:
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __43__PUOneUpEventTracker_viewModel_didChange___block_invoke;
      v17[3] = &unk_1E7B7D630;
      v18 = currentAssetDidChange;
      v17[4] = self;
      v19 = videoPlayerDidChange;
      v20 = isStalledDidChange;
      [(PUOneUpEventTracker *)self performChanges:v17];
      goto LABEL_15;
    }

    isStalledDidChange = [v11 isStalledDidChange];
    videoPlayerDidChange = 0;
    currentAssetDidChange = 0;
  }

  if ((currentAssetDidChange & 1) != 0 || (videoPlayerDidChange & 1) != 0 || isStalledDidChange)
  {
    goto LABEL_7;
  }

LABEL_15:
}

void __43__PUOneUpEventTracker_viewModel_didChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) _invalidateCurrentlyViewedAsset];
  }

  if (*(a1 + 41) == 1)
  {
    [*(a1 + 32) _invalidateCurrentVideoPlayer];
  }

  if (*(a1 + 42) == 1)
  {
    [*(a1 + 32) _invalidateCurrentVideoProperties];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (EventTrackerObservationContext == context)
  {
    if ((change & 8) != 0)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __52__PUOneUpEventTracker_observable_didChange_context___block_invoke;
      v9[3] = &unk_1E7B7D608;
      v9[4] = self;
      v10 = 16843009;
      [(PUOneUpEventTracker *)self performChanges:v9];
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PUOneUpEventTracker;
    [(PXMediaViewControllerEventTracker *)&v11 observable:observableCopy didChange:change context:context];
  }
}

void __52__PUOneUpEventTracker_observable_didChange_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) _invalidateIsSessionActive];
  }

  if (*(a1 + 41) == 1)
  {
    [*(a1 + 32) _invalidateCurrentlyViewedAsset];
  }

  if (*(a1 + 42) == 1)
  {
    [*(a1 + 32) _invalidateCurrentVideoPlayer];
  }

  if (*(a1 + 43) == 1)
  {
    [*(a1 + 32) _invalidateOneUpInfoPanelShowingSignpost];
  }
}

- (void)_logInfoPanelChangeEventsIfNeededWithChange:(id)change
{
  v23 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  viewModel = [(PUOneUpEventTracker *)self viewModel];
  currentAssetReference = [viewModel currentAssetReference];
  assetViewModelChangesByAssetReference = [changeCopy assetViewModelChangesByAssetReference];
  v8 = [assetViewModelChangesByAssetReference objectForKeyedSubscript:currentAssetReference];
  assetViewModelForCurrentAssetReference = [viewModel assetViewModelForCurrentAssetReference];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v17 = currentAssetReference;
    v13 = 0;
    v14 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v18 + 1) + 8 * i) accessoryViewVisibilityChanged])
        {
          v16 = [assetViewModelForCurrentAssetReference lastAccessoryViewVisibilityChangeReason] - 1;
          if (v16 <= 4 && ((0x17u >> v16) & 1) != 0)
          {
            v13 = qword_1B3D0D658[v16];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);

    currentAssetReference = v17;
    if (v13)
    {
      if ([assetViewModelForCurrentAssetReference isAccessoryViewVisible])
      {
        [(PUOneUpEventTracker *)self logInfoPanelOpenedBy:v13];
      }

      else
      {
        [(PUOneUpEventTracker *)self logInfoPanelClosedBy:v13];
      }
    }
  }

  else
  {
  }
}

- (void)logInfoPanelClosedBy:(int64_t)by
{
  v19[2] = *MEMORY[0x1E69E9840];
  currentlyShowingInfoPanelSignpost = [(PUOneUpEventTracker *)self currentlyShowingInfoPanelSignpost];
  v6 = MEMORY[0x1E6991E20];
  if (currentlyShowingInfoPanelSignpost)
  {
    v7 = MEMORY[0x1E6991F28];
    currentlyShowingInfoPanelSignpost2 = [(PUOneUpEventTracker *)self currentlyShowingInfoPanelSignpost];
    v9 = *MEMORY[0x1E6991C98];
    v10 = *v6;
    v18[0] = *MEMORY[0x1E6991E40];
    v18[1] = v10;
    v19[0] = @"com.apple.photos.CPAnalytics.infoPanelViewingDuration";
    viewName = [(PXMediaViewControllerEventTracker *)self viewName];
    v19[1] = viewName;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
    [v7 endSignpost:currentlyShowingInfoPanelSignpost2 forEventName:v9 withPayload:v12];

    [(PUOneUpEventTracker *)self setCurrentlyShowingInfoPanelSignpost:0];
  }

  if (by == 2)
  {
    v13 = MEMORY[0x1E6991F28];
    v16[0] = *v6;
    viewName2 = [(PXMediaViewControllerEventTracker *)self viewName];
    v16[1] = @"tapToOpen";
    v17[0] = viewName2;
    v17[1] = MEMORY[0x1E695E110];
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    [v13 sendEvent:@"com.apple.photos.CPAnalytics.oneUpAccessoryViewTapped" withPayload:v15];
  }
}

- (void)logInfoPanelOpenedBy:(int64_t)by
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (![(PUOneUpEventTracker *)self currentlyShowingInfoPanelSignpost])
  {
    -[PUOneUpEventTracker setCurrentlyShowingInfoPanelSignpost:](self, "setCurrentlyShowingInfoPanelSignpost:", [MEMORY[0x1E6991F28] startSignpost]);
    v5 = MEMORY[0x1E6991F28];
    v6 = *MEMORY[0x1E6991E20];
    v22 = *MEMORY[0x1E6991E20];
    viewName = [(PXMediaViewControllerEventTracker *)self viewName];
    v23[0] = viewName;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    [v5 sendEvent:@"com.apple.photos.CPAnalytics.infoPanelViewed" withPayload:v8];

    viewModel = [(PUOneUpEventTracker *)self viewModel];
    assetViewModelForCurrentAssetReference = [viewModel assetViewModelForCurrentAssetReference];

    visualImageAnalysis = [assetViewModelForCurrentAssetReference visualImageAnalysis];
    hasVisualSearchResults = [visualImageAnalysis hasVisualSearchResults];

    if (by == 2)
    {
      v13 = MEMORY[0x1E6991F28];
      v18[0] = v6;
      viewName2 = [(PXMediaViewControllerEventTracker *)self viewName];
      v19[0] = viewName2;
      v18[1] = @"hasVisualSearchResults";
      v15 = [MEMORY[0x1E696AD98] numberWithBool:hasVisualSearchResults];
      v18[2] = @"tapToOpen";
      v19[1] = v15;
      v19[2] = MEMORY[0x1E695E118];
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
      v17 = @"com.apple.photos.CPAnalytics.oneUpAccessoryViewTapped";
    }

    else
    {
      if (by != 1)
      {
LABEL_7:

        return;
      }

      v13 = MEMORY[0x1E6991F28];
      v20[0] = v6;
      viewName2 = [(PXMediaViewControllerEventTracker *)self viewName];
      v20[1] = @"hasVisualSearchResults";
      v21[0] = viewName2;
      v15 = [MEMORY[0x1E696AD98] numberWithBool:hasVisualSearchResults];
      v21[1] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
      v17 = @"com.apple.photos.CPAnalytics.oneUpAccessoryViewSwipedUp";
    }

    [v13 sendEvent:v17 withPayload:v16];

    goto LABEL_7;
  }
}

- (void)logTipPresentedForType:(int64_t)type
{
  v14[2] = *MEMORY[0x1E69E9840];
  if ((type - 1) <= 3)
  {
    v4 = off_1E7B7D650[type - 1];
    viewModel = [(PUOneUpEventTracker *)self viewModel];
    assetViewModelForCurrentAssetReference = [viewModel assetViewModelForCurrentAssetReference];
    asset = [assetViewModelForCurrentAssetReference asset];

    v8 = MEMORY[0x1E6991F28];
    v9 = *MEMORY[0x1E6991E18];
    v14[0] = asset;
    v10 = *MEMORY[0x1E6991E20];
    v13[0] = v9;
    v13[1] = v10;
    viewName = [(PXMediaViewControllerEventTracker *)self viewName];
    v14[1] = viewName;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    [v8 sendEvent:v4 withPayload:v12];
  }
}

- (void)logInfoPanelShownAndSwipeToNewAsset
{
  v12[2] = *MEMORY[0x1E69E9840];
  viewModel = [(PUOneUpEventTracker *)self viewModel];
  assetBeforeLastViewedAssetReference = [viewModel assetBeforeLastViewedAssetReference];
  trailingAssetReference = [viewModel trailingAssetReference];
  v6 = assetBeforeLastViewedAssetReference == trailingAssetReference;

  v7 = MEMORY[0x1E6991F28];
  v11[0] = *MEMORY[0x1E6991E20];
  viewName = [(PXMediaViewControllerEventTracker *)self viewName];
  v11[1] = @"swipeToPreviousAsset";
  v12[0] = viewName;
  v9 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  v12[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v7 sendEvent:@"com.apple.photos.CPAnalytics.infoPanelSwipedToNewPhoto" withPayload:v10];
}

- (void)endLoggingTimeInterval:(int64_t)interval event:(id)event
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E6991F28];
  v7 = *MEMORY[0x1E6991C98];
  v8 = *MEMORY[0x1E6991E40];
  v14[0] = event;
  v9 = *MEMORY[0x1E6991E20];
  v13[0] = v8;
  v13[1] = v9;
  eventCopy = event;
  viewName = [(PXMediaViewControllerEventTracker *)self viewName];
  v14[1] = viewName;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v6 endSignpost:interval forEventName:v7 withPayload:v12];
}

- (void)logInfoPanelRotatedToHorizontalView
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6991F28];
  v5 = *MEMORY[0x1E6991E20];
  viewName = [(PXMediaViewControllerEventTracker *)self viewName];
  v6[0] = viewName;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v2 sendEvent:@"com.apple.photos.CPAnalytics.infoPanelRotatedToHorizontalView" withPayload:v4];
}

- (void)_sendMapSelectionEventToBiomeWithAssetUUID:(id)d
{
  dCopy = d;
  biomeRequestQueue = self->_biomeRequestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PUOneUpEventTracker__sendMapSelectionEventToBiomeWithAssetUUID___block_invoke;
  block[3] = &unk_1E7B80DD0;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(biomeRequestQueue, block);
}

void __66__PUOneUpEventTracker__sendMapSelectionEventToBiomeWithAssetUUID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = BiomeLibrary();
    v5 = [v4 Photos];
    v6 = [v5 Map];

    v7 = [v6 source];
    v8 = [objc_alloc(MEMORY[0x1E698EDC0]) initWithIdentifier:*(a1 + 32) subset:v3 type:1];
    [v7 sendEvent:v8];
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_INFO, "[PXOneUpPresentationOriginPlacesAlbum] Sent photos-map-selection event to Biome Stream with asset uuid: %@", &v11, 0xCu);
    }
  }
}

- (void)logViewControllerDidAppear:(id)appear
{
  v22 = *MEMORY[0x1E69E9840];
  appearCopy = appear;
  v17.receiver = self;
  v17.super_class = PUOneUpEventTracker;
  [(PXViewControllerEventTracker *)&v17 logViewControllerDidAppear:appearCopy];
  currentViewController = [(PXViewControllerEventTracker *)self currentViewController];
  if (currentViewController)
  {
    v6 = currentViewController;
    currentViewController2 = [(PXViewControllerEventTracker *)self currentViewController];

    if (currentViewController2 != appearCopy)
    {
      v8 = PXAssertGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        currentViewController3 = [(PXViewControllerEventTracker *)self currentViewController];
        *buf = 138412546;
        v19 = appearCopy;
        v20 = 2112;
        v21 = currentViewController3;
        _os_log_error_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "viewController %@ appeared with unexpected currentViewController %@", buf, 0x16u);
      }
    }
  }

  if ([(PUOneUpEventTracker *)self presentationOrigin]== 7)
  {
    viewName = [(PXMediaViewControllerEventTracker *)self viewName];
    if (!viewName)
    {
LABEL_15:

      goto LABEL_16;
    }

    viewModel = [(PUOneUpEventTracker *)self viewModel];
    currentAssetReference = [viewModel currentAssetReference];
    asset = [currentAssetReference asset];

    v13 = asset;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v14 = v13;

      if (!v14)
      {
LABEL_14:

        goto LABEL_15;
      }

      uuid = [v14 uuid];
      [(PUOneUpEventTracker *)self _sendMapSelectionEventToBiomeWithAssetUUID:uuid];
    }

    else
    {
      v14 = 0;
      uuid = v13;
    }

    goto LABEL_14;
  }

LABEL_16:
}

- (void)_logWillEndPlaybackOfStreamedVideoAsset:(id)asset
{
  v23[2] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:450 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];
  }

  v6 = MEMORY[0x1E6991F28];
  currentlyPlayingStreamedVideoSignpost = [(PUOneUpEventTracker *)self currentlyPlayingStreamedVideoSignpost];
  v8 = *MEMORY[0x1E6991C98];
  v9 = *MEMORY[0x1E6991E18];
  v22[0] = *MEMORY[0x1E6991E40];
  v22[1] = v9;
  v23[0] = @"com.apple.photos.CPAnalytics.oneUpStreamedVideoPlayed";
  v23[1] = assetCopy;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  [v6 endSignpost:currentlyPlayingStreamedVideoSignpost forEventName:v8 withPayload:v10];

  [(PUOneUpEventTracker *)self setCurrentlyPlayingStreamedVideoSignpost:0];
  v11 = MEMORY[0x1E6991F28];
  v20 = v9;
  v21 = assetCopy;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  [v11 sendEvent:@"com.apple.photos.CPAnalytics.oneUpStreamedVideoPlayed" withPayload:v12];

  if (![(PUOneUpEventTracker *)self currentlyStreamingVideoDidStartActualPlayback])
  {
    v16 = MEMORY[0x1E6991F28];
    v18 = v9;
    v19 = assetCopy;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    [v16 sendEvent:@"com.apple.photos.CPAnalytics.oneUpStreamedVideoPlaybackCancelled" withPayload:v14];
    goto LABEL_7;
  }

  currentlyStreamingVideoStallsCount = [(PUOneUpEventTracker *)self currentlyStreamingVideoStallsCount];
  if (currentlyStreamingVideoStallsCount >= 1)
  {
    v14 = [MEMORY[0x1E6991F28] bucketNameForInteger:currentlyStreamingVideoStallsCount bucketLimits:{1, 2, 3, 5, 10, 0}];
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.photos.CPAnalytics.oneUpStreamedVideoPlaybackStalled%@Times", v14];
    [MEMORY[0x1E6991F28] sendEvent:v15 withPayload:MEMORY[0x1E695E0F8]];

LABEL_7:
  }
}

- (void)_logDidStartActualPlaybackOfStreamedVideoAsset:(id)asset
{
  v13[2] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:441 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];
  }

  v6 = MEMORY[0x1E6991F28];
  currentlyPlayingStreamedVideoStartSignpost = [(PUOneUpEventTracker *)self currentlyPlayingStreamedVideoStartSignpost];
  v8 = *MEMORY[0x1E6991C98];
  v9 = *MEMORY[0x1E6991E18];
  v12[0] = *MEMORY[0x1E6991E40];
  v12[1] = v9;
  v13[0] = @"com.apple.photos.CPAnalytics.oneUpStreamedVideoPlaybackLatency";
  v13[1] = assetCopy;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v6 endSignpost:currentlyPlayingStreamedVideoStartSignpost forEventName:v8 withPayload:v10];

  [(PUOneUpEventTracker *)self setCurrentlyPlayingStreamedVideoStartSignpost:0];
}

- (void)_logDidStartPlaybackOfStreamedVideoAsset:(id)asset
{
  v10 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:434 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];
  }

  if ([(PUOneUpEventTracker *)self currentlyPlayingStreamedVideoSignpost])
  {
    v6 = PXAssertGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = assetCopy;
      _os_log_error_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Streamed video %@ did start playing before previous video did end playing", buf, 0xCu);
    }
  }

  -[PUOneUpEventTracker setCurrentlyPlayingStreamedVideoSignpost:](self, "setCurrentlyPlayingStreamedVideoSignpost:", [MEMORY[0x1E6991F28] startSignpost]);
  -[PUOneUpEventTracker setCurrentlyPlayingStreamedVideoStartSignpost:](self, "setCurrentlyPlayingStreamedVideoStartSignpost:", [MEMORY[0x1E6991F28] startSignpost]);
}

- (void)_logDidEndPlayingVideoAsset:(id)asset duration:(double)duration
{
  v19[2] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:416 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];
  }

  v8 = MEMORY[0x1E6991F28];
  currentlyPlayingVideoSignpost = [(PUOneUpEventTracker *)self currentlyPlayingVideoSignpost];
  v10 = *MEMORY[0x1E6991C98];
  v11 = *MEMORY[0x1E6991E18];
  v18[0] = *MEMORY[0x1E6991E40];
  v18[1] = v11;
  v19[0] = @"com.apple.photos.CPAnalytics.oneUpVideoPlayed";
  v19[1] = assetCopy;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  [v8 endSignpost:currentlyPlayingVideoSignpost forEventName:v10 withPayload:v12];

  [(PUOneUpEventTracker *)self setCurrentlyPlayingVideoSignpost:0];
  v13 = MEMORY[0x1E6991F28];
  v16 = v11;
  v17 = assetCopy;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  [v13 sendEvent:@"com.apple.photos.CPAnalytics.oneUpVideoPlayed" withPayload:v14];

  if (duration >= 0.5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PUOneUpEventTracker *)self _incrementAssetViewCountIfNeeded:assetCopy];
    }
  }
}

- (void)_logDidStartPlayingVideoAsset:(id)asset
{
  v10 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:410 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];
  }

  if ([(PUOneUpEventTracker *)self currentlyPlayingVideoSignpost])
  {
    v6 = PXAssertGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = assetCopy;
      _os_log_error_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Video %@ did start playing before previous video did end playing", buf, 0xCu);
    }
  }

  -[PUOneUpEventTracker setCurrentlyPlayingVideoSignpost:](self, "setCurrentlyPlayingVideoSignpost:", [MEMORY[0x1E6991F28] startSignpost]);
}

- (void)logVitalityDidEndForLivePhoto:(id)photo
{
  v10[1] = *MEMORY[0x1E69E9840];
  photoCopy = photo;
  if (!photoCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:403 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];
  }

  v6 = MEMORY[0x1E6991F28];
  v9 = *MEMORY[0x1E6991E18];
  v10[0] = photoCopy;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v6 sendEvent:@"com.apple.photos.CPAnalytics.oneUpLivePhotoVitalityPlayed" withPayload:v7];
}

- (void)logUserDidPlayLivePhoto:(id)photo pressOnSubject:(BOOL)subject
{
  subjectCopy = subject;
  v21[2] = *MEMORY[0x1E69E9840];
  photoCopy = photo;
  if (!photoCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:386 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];
  }

  v8 = MEMORY[0x1E6991F28];
  currentlyPlayingLivePhotoSignpost = [(PUOneUpEventTracker *)self currentlyPlayingLivePhotoSignpost];
  v10 = *MEMORY[0x1E6991C98];
  v11 = *MEMORY[0x1E6991E18];
  v20[0] = *MEMORY[0x1E6991E40];
  v20[1] = v11;
  v21[0] = @"com.apple.photos.CPAnalytics.oneUpLivePhotoPlayed";
  v21[1] = photoCopy;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  [v8 endSignpost:currentlyPlayingLivePhotoSignpost forEventName:v10 withPayload:v12];

  [(PUOneUpEventTracker *)self setCurrentlyPlayingLivePhotoSignpost:0];
  [(PUOneUpEventTracker *)self livePhotoFirstPlayWaitDuration];
  v14 = v13;
  v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = photoCopy;
  }

  else
  {
    v16 = 0;
  }

  [v15 setObject:v16 forKeyedSubscript:v11];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:subjectCopy];
  [v15 setObject:v17 forKeyedSubscript:@"pressOnSubject"];

  if (v14 <= 0.0 || v14 >= 120.0)
  {
    [v15 setObject:0 forKeyedSubscript:@"firstPlayWaitDuration"];
  }

  else
  {
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
    [v15 setObject:v18 forKeyedSubscript:@"firstPlayWaitDuration"];
  }

  [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.oneUpLivePhotoPlayed" withPayload:v15];
}

- (void)logUserWillPlayLivePhoto:(id)photo firstTimeWaitDuration:(double)duration
{
  v12 = *MEMORY[0x1E69E9840];
  photoCopy = photo;
  if (!photoCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:374 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];
  }

  if ([(PUOneUpEventTracker *)self currentlyPlayingLivePhotoSignpost])
  {
    v8 = PXAssertGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = photoCopy;
      _os_log_error_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "Live Photo %@ will start playing before previous Live Photo did end playing", buf, 0xCu);
    }
  }

  -[PUOneUpEventTracker setCurrentlyPlayingLivePhotoSignpost:](self, "setCurrentlyPlayingLivePhotoSignpost:", [MEMORY[0x1E6991F28] startSignpost]);
  [(PUOneUpEventTracker *)self setLivePhotoFirstPlayWaitDuration:duration];
}

- (void)_handleLongEnoughViewDurationWithGeneration:(int64_t)generation
{
  if (self->_currentlyViewedAssetGeneration == generation)
  {
    displayedAsset = [(PXMediaViewControllerEventTracker *)self displayedAsset];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = displayedAsset;
    if (isKindOfClass)
    {
      v7 = displayedAsset;
      if (([v7 needsDeferredProcessing] & 1) == 0)
      {
        assetAnalyzer = [(PUOneUpEventTracker *)self assetAnalyzer];
        [assetAnalyzer analyzeAsset:v7 forWorkerType:0];
      }

      assetMetadataDonator = [(PUOneUpEventTracker *)self assetMetadataDonator];
      [assetMetadataDonator donateMetadataForAsset:v7];

      v6 = displayedAsset;
    }

    MEMORY[0x1EEE66BB8](isKindOfClass, v6);
  }
}

- (void)_logDidEndSession
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6991F28];
  sessionSignpost = [(PUOneUpEventTracker *)self sessionSignpost];
  v5 = *MEMORY[0x1E6991C98];
  v8 = *MEMORY[0x1E6991E40];
  v9[0] = @"com.apple.photos.CPAnalytics.oneUpBrowserDisplayed";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v7 = [(PXUserInterfaceElementEventTracker *)self finalPayloadWithPayload:v6];
  [v3 endSignpost:sessionSignpost forEventName:v5 withPayload:v7];

  [(PUOneUpEventTracker *)self setSessionSignpost:0];
}

- (void)_logDidStartSession
{
  if ([(PUOneUpEventTracker *)self sessionSignpost])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:341 description:{@"Invalid parameter not satisfying: %@", @"self.sessionSignpost == CPAnalyticsSignpostIDNull"}];
  }

  startSignpost = [MEMORY[0x1E6991F28] startSignpost];

  [(PUOneUpEventTracker *)self setSessionSignpost:startSignpost];
}

- (void)_incrementAssetViewCountIfNeeded:(id)needed
{
  v15[1] = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  viewModel = [(PUOneUpEventTracker *)self viewModel];
  currentAssetReference = [viewModel currentAssetReference];

  if (currentAssetReference)
  {
    viewModel2 = [(PUOneUpEventTracker *)self viewModel];
    currentAssetReference2 = [viewModel2 currentAssetReference];
    assetCollection = [currentAssetReference2 assetCollection];

    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = assetCollection;
    }

    else
    {
      v10 = 0;
    }

    if (([v10 px_isRecentlyViewedCollection] & 1) == 0 && (objc_msgSend(v10, "px_isPrivacySensitiveAlbum") & 1) == 0)
    {
      v11 = MEMORY[0x1E6991F28];
      v12 = *MEMORY[0x1E69C3F48];
      v14 = *MEMORY[0x1E6991E18];
      v15[0] = neededCopy;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      [v11 sendEvent:v12 withPayload:v13];
    }
  }
}

- (void)logDidEndViewingMedia:(id)media mediaKind:(int64_t)kind duration:(double)duration
{
  v39[3] = *MEMORY[0x1E69E9840];
  mediaCopy = media;
  if (!mediaCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:295 description:{@"Invalid parameter not satisfying: %@", @"media != nil"}];
  }

  v33.receiver = self;
  v33.super_class = PUOneUpEventTracker;
  [(PXMediaViewControllerEventTracker *)&v33 logDidEndViewingMedia:mediaCopy mediaKind:kind duration:duration];
  if (kind == 1)
  {
    v10 = MEMORY[0x1E6991F28];
    currentAssetSignpost = [(PUOneUpEventTracker *)self currentAssetSignpost];
    v12 = *MEMORY[0x1E6991E90];
    v38[0] = *MEMORY[0x1E6991E20];
    v13 = v38[0];
    viewName = [(PXMediaViewControllerEventTracker *)self viewName];
    v15 = *MEMORY[0x1E6991E18];
    v39[0] = viewName;
    v39[1] = mediaCopy;
    v38[1] = v15;
    v38[2] = @"oneUpEngagement";
    v39[2] = MEMORY[0x1E695E118];
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:3];
    v17 = [(PXUserInterfaceElementEventTracker *)self finalPayloadWithPayload:v16];
    [v10 endSignpost:currentAssetSignpost forEventName:v12 withPayload:v17];

    v18 = MEMORY[0x1E6991F28];
    v19 = *MEMORY[0x1E6991CE0];
    v36[0] = v13;
    viewName2 = [(PXMediaViewControllerEventTracker *)self viewName];
    v37[0] = viewName2;
    v36[1] = *MEMORY[0x1E6991E58];
    v21 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PUOneUpEventTracker currentAssetSignpost](self, "currentAssetSignpost")}];
    v37[1] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
    v23 = [(PXUserInterfaceElementEventTracker *)self finalPayloadWithPayload:v22];
    [v18 sendEvent:v19 withPayload:v23];

    [(PUOneUpEventTracker *)self setCurrentAssetSignpost:0];
    v24 = MEMORY[0x1E6991F28];
    currentAssetDisplayIntervalSignpost = [(PUOneUpEventTracker *)self currentAssetDisplayIntervalSignpost];
    v26 = *MEMORY[0x1E6991C98];
    v34[0] = *MEMORY[0x1E6991E40];
    v34[1] = v15;
    v35[0] = @"com.apple.photos.CPAnalytics.oneUpAssetDisplayed";
    v35[1] = mediaCopy;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
    v28 = [(PXUserInterfaceElementEventTracker *)self finalPayloadWithPayload:v27];
    [v24 endSignpost:currentAssetDisplayIntervalSignpost forEventName:v26 withPayload:v28];

    [(PUOneUpEventTracker *)self setCurrentAssetDisplayIntervalSignpost:0];
    v29 = +[PUOneUpSettings sharedInstance];
    [v29 minimumDurationForIncrementingViewCount];
    if (v30 <= duration)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [(PUOneUpEventTracker *)self _incrementAssetViewCountIfNeeded:mediaCopy];
      }
    }

    else
    {
    }
  }
}

- (void)logDidStartViewingMedia:(id)media mediaKind:(int64_t)kind
{
  v19[2] = *MEMORY[0x1E69E9840];
  mediaCopy = media;
  if (!mediaCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:280 description:{@"Invalid parameter not satisfying: %@", @"media != nil"}];
  }

  v17.receiver = self;
  v17.super_class = PUOneUpEventTracker;
  [(PXMediaViewControllerEventTracker *)&v17 logDidStartViewingMedia:mediaCopy mediaKind:kind];
  if ([(PUOneUpEventTracker *)self currentAssetSignpost])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:283 description:{@"Invalid parameter not satisfying: %@", @"self.currentAssetSignpost == CPAnalyticsSignpostIDNull"}];
  }

  -[PUOneUpEventTracker setCurrentAssetSignpost:](self, "setCurrentAssetSignpost:", [MEMORY[0x1E6991F28] startSignpost]);
  v8 = MEMORY[0x1E6991F28];
  v9 = *MEMORY[0x1E6991CD8];
  v18[0] = *MEMORY[0x1E6991E20];
  viewName = [(PXMediaViewControllerEventTracker *)self viewName];
  v19[0] = viewName;
  v18[1] = *MEMORY[0x1E6991E58];
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PUOneUpEventTracker currentAssetSignpost](self, "currentAssetSignpost")}];
  v19[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v13 = [(PXUserInterfaceElementEventTracker *)self finalPayloadWithPayload:v12];
  [v8 sendEvent:v9 withPayload:v13];

  if ([(PUOneUpEventTracker *)self currentAssetDisplayIntervalSignpost])
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:290 description:{@"Invalid parameter not satisfying: %@", @"self.currentAssetDisplayIntervalSignpost == CPAnalyticsSignpostIDNull"}];
  }

  -[PUOneUpEventTracker setCurrentAssetDisplayIntervalSignpost:](self, "setCurrentAssetDisplayIntervalSignpost:", [MEMORY[0x1E6991F28] startSignpost]);
}

- (void)setDisplayedAsset:(id)asset
{
  assetCopy = asset;
  displayedAsset = [(PXMediaViewControllerEventTracker *)self displayedAsset];
  v6 = displayedAsset;
  if (displayedAsset == assetCopy)
  {
  }

  else
  {
    v7 = [assetCopy isEqual:displayedAsset];

    if ((v7 & 1) == 0)
    {
      v14.receiver = self;
      v14.super_class = PUOneUpEventTracker;
      [(PXMediaViewControllerEventTracker *)&v14 setDisplayedAsset:assetCopy];
      [(PXUserInterfaceElementEventTracker *)self currentTimestamp];
      self->_currentlyViewedAssetTimestamp = v8;
      ++self->_currentlyViewedAssetGeneration;
      if (assetCopy)
      {
        objc_initWeak(&location, self);
        currentlyViewedAssetGeneration = self->_currentlyViewedAssetGeneration;
        v10 = dispatch_time(0, 1000000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __41__PUOneUpEventTracker_setDisplayedAsset___block_invoke;
        block[3] = &unk_1E7B804A8;
        objc_copyWeak(v12, &location);
        v12[1] = currentlyViewedAssetGeneration;
        dispatch_after(v10, MEMORY[0x1E69E96A0], block);
        objc_destroyWeak(v12);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __41__PUOneUpEventTracker_setDisplayedAsset___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLongEnoughViewDurationWithGeneration:*(a1 + 40)];
}

- (void)setCurrentlyStreamingVideoIsStalled:(BOOL)stalled
{
  if (self->_currentlyStreamingVideoIsStalled != stalled)
  {
    self->_currentlyStreamingVideoIsStalled = stalled;
    if (stalled)
    {
      v4 = [(PUOneUpEventTracker *)self currentlyStreamingVideoStallsCount]+ 1;

      [(PUOneUpEventTracker *)self setCurrentlyStreamingVideoStallsCount:v4];
    }
  }
}

- (void)setCurrentlyStreamingVideoIsActuallyPlaying:(BOOL)playing
{
  if (self->_currentlyStreamingVideoIsActuallyPlaying != playing)
  {
    self->_currentlyStreamingVideoIsActuallyPlaying = playing;
    if (playing)
    {
      [(PUOneUpEventTracker *)self setCurrentlyStreamingVideoDidStartActualPlayback:1];
      if (self->_currentlyStreamingVideoAsset)
      {

        [(PUOneUpEventTracker *)self _logDidStartActualPlaybackOfStreamedVideoAsset:?];
      }

      else
      {
        v4 = PXAssertGetLog();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          *v5 = 0;
          _os_log_error_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_ERROR, "No currently streaming video asset when actual playback did start", v5, 2u);
        }
      }
    }
  }
}

- (void)setCurrentlyStreamingVideoAsset:(id)asset
{
  assetCopy = asset;
  v6 = assetCopy;
  if (self->_currentlyStreamingVideoAsset != assetCopy)
  {
    v7 = assetCopy;
    assetCopy = [assetCopy isEqual:?];
    v6 = v7;
    if ((assetCopy & 1) == 0)
    {
      if (self->_currentlyStreamingVideoAsset)
      {
        [(PUOneUpEventTracker *)self _logWillEndPlaybackOfStreamedVideoAsset:?];
      }

      objc_storeStrong(&self->_currentlyStreamingVideoAsset, asset);
      v6 = v7;
      if (self->_currentlyStreamingVideoAsset)
      {
        [(PUOneUpEventTracker *)self setCurrentlyStreamingVideoStallsCount:0];
        [(PUOneUpEventTracker *)self setCurrentlyStreamingVideoDidStartActualPlayback:0];
        assetCopy = [(PUOneUpEventTracker *)self _logDidStartPlaybackOfStreamedVideoAsset:self->_currentlyStreamingVideoAsset];
        v6 = v7;
      }
    }
  }

  MEMORY[0x1EEE66BB8](assetCopy, v6);
}

- (void)setCurrentlyPlayingVideoAsset:(id)asset
{
  assetCopy = asset;
  v6 = assetCopy;
  if (self->_currentlyPlayingVideoAsset != assetCopy)
  {
    v8 = assetCopy;
    assetCopy = [assetCopy isEqual:?];
    v6 = v8;
    if ((assetCopy & 1) == 0)
    {
      if (self->_currentlyPlayingVideoAsset)
      {
        [(PXUserInterfaceElementEventTracker *)self timeIntervalSinceTimestamp:self->_currentlyPlayingVideoAssetTimestamp];
        [(PUOneUpEventTracker *)self _logDidEndPlayingVideoAsset:self->_currentlyPlayingVideoAsset duration:?];
      }

      objc_storeStrong(&self->_currentlyPlayingVideoAsset, asset);
      assetCopy = [(PXUserInterfaceElementEventTracker *)self currentTimestamp];
      self->_currentlyPlayingVideoAssetTimestamp = v7;
      v6 = v8;
      if (self->_currentlyPlayingVideoAsset)
      {
        assetCopy = [(PUOneUpEventTracker *)self _logDidStartPlayingVideoAsset:?];
        v6 = v8;
      }
    }
  }

  MEMORY[0x1EEE66BB8](assetCopy, v6);
}

- (void)setCurrentVideoPlayer:(id)player
{
  playerCopy = player;
  currentVideoPlayer = self->_currentVideoPlayer;
  if (currentVideoPlayer != playerCopy)
  {
    v9 = playerCopy;
    [(PUBrowsingVideoPlayer *)currentVideoPlayer unregisterChangeObserver:self];
    objc_storeStrong(&self->_currentVideoPlayer, player);
    [(PUBrowsingVideoPlayer *)self->_currentVideoPlayer registerChangeObserver:self];
    asset = [(PUBrowsingVideoPlayer *)self->_currentVideoPlayer asset];
    currentVideoAsset = self->_currentVideoAsset;
    self->_currentVideoAsset = asset;

    currentVideoPlayer = [(PUOneUpEventTracker *)self _invalidateCurrentVideoProperties];
    playerCopy = v9;
  }

  MEMORY[0x1EEE66BB8](currentVideoPlayer, playerCopy);
}

- (void)setIsSessionActive:(BOOL)active
{
  if (self->_isSessionActive != active)
  {
    activeCopy = active;
    if (self->_isSessionActive)
    {
      [(PUOneUpEventTracker *)self _logDidEndSession];
    }

    self->_isSessionActive = activeCopy;
    if (activeCopy)
    {

      [(PUOneUpEventTracker *)self _logDidStartSession];
    }
  }
}

- (void)_updateOneUpInfoPanelShowingSignpost
{
  if (![(PUOneUpEventTracker *)self isSessionActive])
  {

    [(PUOneUpEventTracker *)self setCurrentlyShowingInfoPanelSignpost:0];
  }
}

- (void)_invalidateOneUpInfoPanelShowingSignpost
{
  updater = [(PXUserInterfaceElementEventTracker *)self updater];
  [updater setNeedsUpdateOf:sel__updateOneUpInfoPanelShowingSignpost];
}

- (void)_updateCurrentVideoProperties
{
  currentVideoPlayer = [(PUOneUpEventTracker *)self currentVideoPlayer];
  isPlaybackDesired = [currentVideoPlayer isPlaybackDesired];
  if (isPlaybackDesired)
  {
    playerItem = [currentVideoPlayer playerItem];
    asset = [playerItem asset];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [asset URL];
      isFileURL = [v6 isFileURL];

      if ((isFileURL & 1) == 0)
      {
        v8 = [currentVideoPlayer playState] == 3;
        isStalled = [currentVideoPlayer isStalled];
        v10 = 1;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v8 = 0;
  v10 = 0;
  isStalled = 0;
LABEL_7:
  currentVideoAsset = [(PUOneUpEventTracker *)self currentVideoAsset];
  v12 = currentVideoAsset;
  if (isPlaybackDesired)
  {
    v13 = currentVideoAsset;
  }

  else
  {
    v13 = 0;
  }

  [(PUOneUpEventTracker *)self setCurrentlyPlayingVideoAsset:v13];
  if (v10)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  [(PUOneUpEventTracker *)self setCurrentlyStreamingVideoAsset:v14];
  [(PUOneUpEventTracker *)self setCurrentlyStreamingVideoIsActuallyPlaying:v8];
  [(PUOneUpEventTracker *)self setCurrentlyStreamingVideoIsStalled:isStalled];
}

- (void)_invalidateCurrentVideoProperties
{
  updater = [(PXUserInterfaceElementEventTracker *)self updater];
  [updater setNeedsUpdateOf:sel__updateCurrentVideoProperties];
}

- (void)_updateCurrentVideoPlayer
{
  if ([(PXViewControllerEventTracker *)self isViewVisible])
  {
    viewModel = [(PUOneUpEventTracker *)self viewModel];
    videoPlayer = [viewModel videoPlayer];
  }

  else
  {
    videoPlayer = 0;
  }

  [(PUOneUpEventTracker *)self setCurrentVideoPlayer:videoPlayer];
}

- (void)_invalidateCurrentVideoPlayer
{
  updater = [(PXUserInterfaceElementEventTracker *)self updater];
  [updater setNeedsUpdateOf:sel__updateCurrentVideoPlayer];
}

- (void)_updateCurrentlyViewedAsset
{
  viewModel = [(PUOneUpEventTracker *)self viewModel];
  browsingSpeedRegime = [viewModel browsingSpeedRegime];
  asset = 0;
  if ([(PXViewControllerEventTracker *)self isViewVisible]&& browsingSpeedRegime <= 1)
  {
    currentAssetReference = [viewModel currentAssetReference];
    asset = [currentAssetReference asset];
  }

  [(PUOneUpEventTracker *)self setDisplayedAsset:asset];
}

- (void)_invalidateCurrentlyViewedAsset
{
  updater = [(PXUserInterfaceElementEventTracker *)self updater];
  [updater setNeedsUpdateOf:sel__updateCurrentlyViewedAsset];
}

- (void)_updateIsSessionActive
{
  isViewVisible = [(PXViewControllerEventTracker *)self isViewVisible];

  [(PUOneUpEventTracker *)self setIsSessionActive:isViewVisible];
}

- (void)_invalidateIsSessionActive
{
  updater = [(PXUserInterfaceElementEventTracker *)self updater];
  [updater setNeedsUpdateOf:sel__updateIsSessionActive];
}

- (PUOneUpEventTracker)initWithViewModel:(id)model presentationOrigin:(int64_t)origin
{
  modelCopy = model;
  if (origin == 44)
  {
    v8 = @"OneUp_DuplicatesAlbum";
  }

  else
  {
    v8 = @"OneUp";
  }

  v18.receiver = self;
  v18.super_class = PUOneUpEventTracker;
  v9 = [(PXMediaViewControllerEventTracker *)&v18 initWithViewName:v8];
  v10 = v9;
  if (v9)
  {
    v9->_presentationOrigin = origin;
    [(PUOneUpEventTracker *)v9 registerChangeObserver:v9 context:EventTrackerObservationContext];
    updater = [(PXUserInterfaceElementEventTracker *)v10 updater];
    [updater addUpdateSelector:sel__updateIsSessionActive];
    [updater addUpdateSelector:sel__updateCurrentlyViewedAsset];
    [updater addUpdateSelector:sel__updateCurrentVideoPlayer];
    [updater addUpdateSelector:sel__updateCurrentVideoProperties];
    [updater addUpdateSelector:sel__updateOneUpInfoPanelShowingSignpost];
    objc_storeStrong(&v10->_viewModel, model);
    [(PUBrowsingViewModel *)v10->_viewModel registerChangeObserver:v10];
    mEMORY[0x1E69C3368] = [MEMORY[0x1E69C3368] sharedDonator];
    assetMetadataDonator = v10->_assetMetadataDonator;
    v10->_assetMetadataDonator = mEMORY[0x1E69C3368];

    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v15 = dispatch_queue_create("com.apple.photosui.eventTracker.biome", v14);
    biomeRequestQueue = v10->_biomeRequestQueue;
    v10->_biomeRequestQueue = v15;
  }

  return v10;
}

- (PUOneUpEventTracker)initWithViewName:(id)name
{
  nameCopy = name;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:80 description:{@"%s is not available as initializer", "-[PUOneUpEventTracker initWithViewName:]"}];

  abort();
}

@end