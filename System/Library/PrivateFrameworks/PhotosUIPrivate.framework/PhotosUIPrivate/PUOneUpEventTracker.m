@interface PUOneUpEventTracker
- (PUOneUpEventTracker)initWithViewModel:(id)a3 presentationOrigin:(int64_t)a4;
- (PUOneUpEventTracker)initWithViewName:(id)a3;
- (void)_handleLongEnoughViewDurationWithGeneration:(int64_t)a3;
- (void)_incrementAssetViewCountIfNeeded:(id)a3;
- (void)_invalidateCurrentVideoPlayer;
- (void)_invalidateCurrentVideoProperties;
- (void)_invalidateCurrentlyViewedAsset;
- (void)_invalidateIsSessionActive;
- (void)_invalidateOneUpInfoPanelShowingSignpost;
- (void)_logDidEndPlayingVideoAsset:(id)a3 duration:(double)a4;
- (void)_logDidEndSession;
- (void)_logDidStartActualPlaybackOfStreamedVideoAsset:(id)a3;
- (void)_logDidStartPlaybackOfStreamedVideoAsset:(id)a3;
- (void)_logDidStartPlayingVideoAsset:(id)a3;
- (void)_logDidStartSession;
- (void)_logInfoPanelChangeEventsIfNeededWithChange:(id)a3;
- (void)_logWillEndPlaybackOfStreamedVideoAsset:(id)a3;
- (void)_sendMapSelectionEventToBiomeWithAssetUUID:(id)a3;
- (void)_updateCurrentVideoPlayer;
- (void)_updateCurrentVideoProperties;
- (void)_updateCurrentlyViewedAsset;
- (void)_updateIsSessionActive;
- (void)_updateOneUpInfoPanelShowingSignpost;
- (void)endLoggingTimeInterval:(int64_t)a3 event:(id)a4;
- (void)logDidEndViewingMedia:(id)a3 mediaKind:(int64_t)a4 duration:(double)a5;
- (void)logDidStartViewingMedia:(id)a3 mediaKind:(int64_t)a4;
- (void)logInfoPanelClosedBy:(int64_t)a3;
- (void)logInfoPanelOpenedBy:(int64_t)a3;
- (void)logInfoPanelRotatedToHorizontalView;
- (void)logInfoPanelShownAndSwipeToNewAsset;
- (void)logTipPresentedForType:(int64_t)a3;
- (void)logUserDidPlayLivePhoto:(id)a3 pressOnSubject:(BOOL)a4;
- (void)logUserWillPlayLivePhoto:(id)a3 firstTimeWaitDuration:(double)a4;
- (void)logViewControllerDidAppear:(id)a3;
- (void)logVitalityDidEndForLivePhoto:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setCurrentVideoPlayer:(id)a3;
- (void)setCurrentlyPlayingVideoAsset:(id)a3;
- (void)setCurrentlyStreamingVideoAsset:(id)a3;
- (void)setCurrentlyStreamingVideoIsActuallyPlaying:(BOOL)a3;
- (void)setCurrentlyStreamingVideoIsStalled:(BOOL)a3;
- (void)setDisplayedAsset:(id)a3;
- (void)setIsSessionActive:(BOOL)a3;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PUOneUpEventTracker

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PUOneUpEventTracker *)self viewModel];

  if (v9 == v7)
  {
    v15 = v8;
    if ([v15 browsingSpeedRegimeDidChange])
    {
      v12 = 1;
    }

    else
    {
      v12 = [v15 currentAssetDidChange];
    }

    v13 = [v15 videoPlayerDidChange];
    [(PUOneUpEventTracker *)self _logInfoPanelChangeEventsIfNeededWithChange:v15];
    v14 = 0;
  }

  else
  {
    v10 = [(PUOneUpEventTracker *)self currentVideoPlayer];

    if (v10 != v7)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:726 description:{@"unexpected view model %@", v7}];

      abort();
    }

    v11 = v8;
    if ([v11 desiredPlayStateDidChange] & 1) != 0 || (objc_msgSend(v11, "playerItemDidChange") & 1) != 0 || (objc_msgSend(v11, "playStateDidChange"))
    {

      v12 = 0;
      v13 = 0;
      LOBYTE(v14) = 1;
LABEL_7:
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __43__PUOneUpEventTracker_viewModel_didChange___block_invoke;
      v17[3] = &unk_1E7B7D630;
      v18 = v12;
      v17[4] = self;
      v19 = v13;
      v20 = v14;
      [(PUOneUpEventTracker *)self performChanges:v17];
      goto LABEL_15;
    }

    v14 = [v11 isStalledDidChange];
    v13 = 0;
    v12 = 0;
  }

  if ((v12 & 1) != 0 || (v13 & 1) != 0 || v14)
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v8 = a3;
  if (EventTrackerObservationContext == a5)
  {
    if ((a4 & 8) != 0)
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
    [(PXMediaViewControllerEventTracker *)&v11 observable:v8 didChange:a4 context:a5];
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

- (void)_logInfoPanelChangeEventsIfNeededWithChange:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUOneUpEventTracker *)self viewModel];
  v6 = [v5 currentAssetReference];
  v7 = [v4 assetViewModelChangesByAssetReference];
  v8 = [v7 objectForKeyedSubscript:v6];
  v9 = [v5 assetViewModelForCurrentAssetReference];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v17 = v6;
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
          v16 = [v9 lastAccessoryViewVisibilityChangeReason] - 1;
          if (v16 <= 4 && ((0x17u >> v16) & 1) != 0)
          {
            v13 = qword_1B3D0D658[v16];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);

    v6 = v17;
    if (v13)
    {
      if ([v9 isAccessoryViewVisible])
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

- (void)logInfoPanelClosedBy:(int64_t)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = [(PUOneUpEventTracker *)self currentlyShowingInfoPanelSignpost];
  v6 = MEMORY[0x1E6991E20];
  if (v5)
  {
    v7 = MEMORY[0x1E6991F28];
    v8 = [(PUOneUpEventTracker *)self currentlyShowingInfoPanelSignpost];
    v9 = *MEMORY[0x1E6991C98];
    v10 = *v6;
    v18[0] = *MEMORY[0x1E6991E40];
    v18[1] = v10;
    v19[0] = @"com.apple.photos.CPAnalytics.infoPanelViewingDuration";
    v11 = [(PXMediaViewControllerEventTracker *)self viewName];
    v19[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
    [v7 endSignpost:v8 forEventName:v9 withPayload:v12];

    [(PUOneUpEventTracker *)self setCurrentlyShowingInfoPanelSignpost:0];
  }

  if (a3 == 2)
  {
    v13 = MEMORY[0x1E6991F28];
    v16[0] = *v6;
    v14 = [(PXMediaViewControllerEventTracker *)self viewName];
    v16[1] = @"tapToOpen";
    v17[0] = v14;
    v17[1] = MEMORY[0x1E695E110];
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    [v13 sendEvent:@"com.apple.photos.CPAnalytics.oneUpAccessoryViewTapped" withPayload:v15];
  }
}

- (void)logInfoPanelOpenedBy:(int64_t)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (![(PUOneUpEventTracker *)self currentlyShowingInfoPanelSignpost])
  {
    -[PUOneUpEventTracker setCurrentlyShowingInfoPanelSignpost:](self, "setCurrentlyShowingInfoPanelSignpost:", [MEMORY[0x1E6991F28] startSignpost]);
    v5 = MEMORY[0x1E6991F28];
    v6 = *MEMORY[0x1E6991E20];
    v22 = *MEMORY[0x1E6991E20];
    v7 = [(PXMediaViewControllerEventTracker *)self viewName];
    v23[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    [v5 sendEvent:@"com.apple.photos.CPAnalytics.infoPanelViewed" withPayload:v8];

    v9 = [(PUOneUpEventTracker *)self viewModel];
    v10 = [v9 assetViewModelForCurrentAssetReference];

    v11 = [v10 visualImageAnalysis];
    v12 = [v11 hasVisualSearchResults];

    if (a3 == 2)
    {
      v13 = MEMORY[0x1E6991F28];
      v18[0] = v6;
      v14 = [(PXMediaViewControllerEventTracker *)self viewName];
      v19[0] = v14;
      v18[1] = @"hasVisualSearchResults";
      v15 = [MEMORY[0x1E696AD98] numberWithBool:v12];
      v18[2] = @"tapToOpen";
      v19[1] = v15;
      v19[2] = MEMORY[0x1E695E118];
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
      v17 = @"com.apple.photos.CPAnalytics.oneUpAccessoryViewTapped";
    }

    else
    {
      if (a3 != 1)
      {
LABEL_7:

        return;
      }

      v13 = MEMORY[0x1E6991F28];
      v20[0] = v6;
      v14 = [(PXMediaViewControllerEventTracker *)self viewName];
      v20[1] = @"hasVisualSearchResults";
      v21[0] = v14;
      v15 = [MEMORY[0x1E696AD98] numberWithBool:v12];
      v21[1] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
      v17 = @"com.apple.photos.CPAnalytics.oneUpAccessoryViewSwipedUp";
    }

    [v13 sendEvent:v17 withPayload:v16];

    goto LABEL_7;
  }
}

- (void)logTipPresentedForType:(int64_t)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  if ((a3 - 1) <= 3)
  {
    v4 = off_1E7B7D650[a3 - 1];
    v5 = [(PUOneUpEventTracker *)self viewModel];
    v6 = [v5 assetViewModelForCurrentAssetReference];
    v7 = [v6 asset];

    v8 = MEMORY[0x1E6991F28];
    v9 = *MEMORY[0x1E6991E18];
    v14[0] = v7;
    v10 = *MEMORY[0x1E6991E20];
    v13[0] = v9;
    v13[1] = v10;
    v11 = [(PXMediaViewControllerEventTracker *)self viewName];
    v14[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    [v8 sendEvent:v4 withPayload:v12];
  }
}

- (void)logInfoPanelShownAndSwipeToNewAsset
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = [(PUOneUpEventTracker *)self viewModel];
  v4 = [v3 assetBeforeLastViewedAssetReference];
  v5 = [v3 trailingAssetReference];
  v6 = v4 == v5;

  v7 = MEMORY[0x1E6991F28];
  v11[0] = *MEMORY[0x1E6991E20];
  v8 = [(PXMediaViewControllerEventTracker *)self viewName];
  v11[1] = @"swipeToPreviousAsset";
  v12[0] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  v12[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v7 sendEvent:@"com.apple.photos.CPAnalytics.infoPanelSwipedToNewPhoto" withPayload:v10];
}

- (void)endLoggingTimeInterval:(int64_t)a3 event:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E6991F28];
  v7 = *MEMORY[0x1E6991C98];
  v8 = *MEMORY[0x1E6991E40];
  v14[0] = a4;
  v9 = *MEMORY[0x1E6991E20];
  v13[0] = v8;
  v13[1] = v9;
  v10 = a4;
  v11 = [(PXMediaViewControllerEventTracker *)self viewName];
  v14[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v6 endSignpost:a3 forEventName:v7 withPayload:v12];
}

- (void)logInfoPanelRotatedToHorizontalView
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6991F28];
  v5 = *MEMORY[0x1E6991E20];
  v3 = [(PXMediaViewControllerEventTracker *)self viewName];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v2 sendEvent:@"com.apple.photos.CPAnalytics.infoPanelRotatedToHorizontalView" withPayload:v4];
}

- (void)_sendMapSelectionEventToBiomeWithAssetUUID:(id)a3
{
  v4 = a3;
  biomeRequestQueue = self->_biomeRequestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PUOneUpEventTracker__sendMapSelectionEventToBiomeWithAssetUUID___block_invoke;
  block[3] = &unk_1E7B80DD0;
  v8 = v4;
  v6 = v4;
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

- (void)logViewControllerDidAppear:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PUOneUpEventTracker;
  [(PXViewControllerEventTracker *)&v17 logViewControllerDidAppear:v4];
  v5 = [(PXViewControllerEventTracker *)self currentViewController];
  if (v5)
  {
    v6 = v5;
    v7 = [(PXViewControllerEventTracker *)self currentViewController];

    if (v7 != v4)
    {
      v8 = PXAssertGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v16 = [(PXViewControllerEventTracker *)self currentViewController];
        *buf = 138412546;
        v19 = v4;
        v20 = 2112;
        v21 = v16;
        _os_log_error_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "viewController %@ appeared with unexpected currentViewController %@", buf, 0x16u);
      }
    }
  }

  if ([(PUOneUpEventTracker *)self presentationOrigin]== 7)
  {
    v9 = [(PXMediaViewControllerEventTracker *)self viewName];
    if (!v9)
    {
LABEL_15:

      goto LABEL_16;
    }

    v10 = [(PUOneUpEventTracker *)self viewModel];
    v11 = [v10 currentAssetReference];
    v12 = [v11 asset];

    v13 = v12;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v14 = v13;

      if (!v14)
      {
LABEL_14:

        goto LABEL_15;
      }

      v15 = [v14 uuid];
      [(PUOneUpEventTracker *)self _sendMapSelectionEventToBiomeWithAssetUUID:v15];
    }

    else
    {
      v14 = 0;
      v15 = v13;
    }

    goto LABEL_14;
  }

LABEL_16:
}

- (void)_logWillEndPlaybackOfStreamedVideoAsset:(id)a3
{
  v23[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:450 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];
  }

  v6 = MEMORY[0x1E6991F28];
  v7 = [(PUOneUpEventTracker *)self currentlyPlayingStreamedVideoSignpost];
  v8 = *MEMORY[0x1E6991C98];
  v9 = *MEMORY[0x1E6991E18];
  v22[0] = *MEMORY[0x1E6991E40];
  v22[1] = v9;
  v23[0] = @"com.apple.photos.CPAnalytics.oneUpStreamedVideoPlayed";
  v23[1] = v5;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  [v6 endSignpost:v7 forEventName:v8 withPayload:v10];

  [(PUOneUpEventTracker *)self setCurrentlyPlayingStreamedVideoSignpost:0];
  v11 = MEMORY[0x1E6991F28];
  v20 = v9;
  v21 = v5;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  [v11 sendEvent:@"com.apple.photos.CPAnalytics.oneUpStreamedVideoPlayed" withPayload:v12];

  if (![(PUOneUpEventTracker *)self currentlyStreamingVideoDidStartActualPlayback])
  {
    v16 = MEMORY[0x1E6991F28];
    v18 = v9;
    v19 = v5;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    [v16 sendEvent:@"com.apple.photos.CPAnalytics.oneUpStreamedVideoPlaybackCancelled" withPayload:v14];
    goto LABEL_7;
  }

  v13 = [(PUOneUpEventTracker *)self currentlyStreamingVideoStallsCount];
  if (v13 >= 1)
  {
    v14 = [MEMORY[0x1E6991F28] bucketNameForInteger:v13 bucketLimits:{1, 2, 3, 5, 10, 0}];
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.photos.CPAnalytics.oneUpStreamedVideoPlaybackStalled%@Times", v14];
    [MEMORY[0x1E6991F28] sendEvent:v15 withPayload:MEMORY[0x1E695E0F8]];

LABEL_7:
  }
}

- (void)_logDidStartActualPlaybackOfStreamedVideoAsset:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:441 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];
  }

  v6 = MEMORY[0x1E6991F28];
  v7 = [(PUOneUpEventTracker *)self currentlyPlayingStreamedVideoStartSignpost];
  v8 = *MEMORY[0x1E6991C98];
  v9 = *MEMORY[0x1E6991E18];
  v12[0] = *MEMORY[0x1E6991E40];
  v12[1] = v9;
  v13[0] = @"com.apple.photos.CPAnalytics.oneUpStreamedVideoPlaybackLatency";
  v13[1] = v5;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v6 endSignpost:v7 forEventName:v8 withPayload:v10];

  [(PUOneUpEventTracker *)self setCurrentlyPlayingStreamedVideoStartSignpost:0];
}

- (void)_logDidStartPlaybackOfStreamedVideoAsset:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:434 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];
  }

  if ([(PUOneUpEventTracker *)self currentlyPlayingStreamedVideoSignpost])
  {
    v6 = PXAssertGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_error_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Streamed video %@ did start playing before previous video did end playing", buf, 0xCu);
    }
  }

  -[PUOneUpEventTracker setCurrentlyPlayingStreamedVideoSignpost:](self, "setCurrentlyPlayingStreamedVideoSignpost:", [MEMORY[0x1E6991F28] startSignpost]);
  -[PUOneUpEventTracker setCurrentlyPlayingStreamedVideoStartSignpost:](self, "setCurrentlyPlayingStreamedVideoStartSignpost:", [MEMORY[0x1E6991F28] startSignpost]);
}

- (void)_logDidEndPlayingVideoAsset:(id)a3 duration:(double)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:416 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];
  }

  v8 = MEMORY[0x1E6991F28];
  v9 = [(PUOneUpEventTracker *)self currentlyPlayingVideoSignpost];
  v10 = *MEMORY[0x1E6991C98];
  v11 = *MEMORY[0x1E6991E18];
  v18[0] = *MEMORY[0x1E6991E40];
  v18[1] = v11;
  v19[0] = @"com.apple.photos.CPAnalytics.oneUpVideoPlayed";
  v19[1] = v7;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  [v8 endSignpost:v9 forEventName:v10 withPayload:v12];

  [(PUOneUpEventTracker *)self setCurrentlyPlayingVideoSignpost:0];
  v13 = MEMORY[0x1E6991F28];
  v16 = v11;
  v17 = v7;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  [v13 sendEvent:@"com.apple.photos.CPAnalytics.oneUpVideoPlayed" withPayload:v14];

  if (a4 >= 0.5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PUOneUpEventTracker *)self _incrementAssetViewCountIfNeeded:v7];
    }
  }
}

- (void)_logDidStartPlayingVideoAsset:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:410 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];
  }

  if ([(PUOneUpEventTracker *)self currentlyPlayingVideoSignpost])
  {
    v6 = PXAssertGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_error_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Video %@ did start playing before previous video did end playing", buf, 0xCu);
    }
  }

  -[PUOneUpEventTracker setCurrentlyPlayingVideoSignpost:](self, "setCurrentlyPlayingVideoSignpost:", [MEMORY[0x1E6991F28] startSignpost]);
}

- (void)logVitalityDidEndForLivePhoto:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:403 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];
  }

  v6 = MEMORY[0x1E6991F28];
  v9 = *MEMORY[0x1E6991E18];
  v10[0] = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v6 sendEvent:@"com.apple.photos.CPAnalytics.oneUpLivePhotoVitalityPlayed" withPayload:v7];
}

- (void)logUserDidPlayLivePhoto:(id)a3 pressOnSubject:(BOOL)a4
{
  v4 = a4;
  v21[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:386 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];
  }

  v8 = MEMORY[0x1E6991F28];
  v9 = [(PUOneUpEventTracker *)self currentlyPlayingLivePhotoSignpost];
  v10 = *MEMORY[0x1E6991C98];
  v11 = *MEMORY[0x1E6991E18];
  v20[0] = *MEMORY[0x1E6991E40];
  v20[1] = v11;
  v21[0] = @"com.apple.photos.CPAnalytics.oneUpLivePhotoPlayed";
  v21[1] = v7;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  [v8 endSignpost:v9 forEventName:v10 withPayload:v12];

  [(PUOneUpEventTracker *)self setCurrentlyPlayingLivePhotoSignpost:0];
  [(PUOneUpEventTracker *)self livePhotoFirstPlayWaitDuration];
  v14 = v13;
  v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v7;
  }

  else
  {
    v16 = 0;
  }

  [v15 setObject:v16 forKeyedSubscript:v11];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:v4];
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

- (void)logUserWillPlayLivePhoto:(id)a3 firstTimeWaitDuration:(double)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:374 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];
  }

  if ([(PUOneUpEventTracker *)self currentlyPlayingLivePhotoSignpost])
  {
    v8 = PXAssertGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v7;
      _os_log_error_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "Live Photo %@ will start playing before previous Live Photo did end playing", buf, 0xCu);
    }
  }

  -[PUOneUpEventTracker setCurrentlyPlayingLivePhotoSignpost:](self, "setCurrentlyPlayingLivePhotoSignpost:", [MEMORY[0x1E6991F28] startSignpost]);
  [(PUOneUpEventTracker *)self setLivePhotoFirstPlayWaitDuration:a4];
}

- (void)_handleLongEnoughViewDurationWithGeneration:(int64_t)a3
{
  if (self->_currentlyViewedAssetGeneration == a3)
  {
    v10 = [(PXMediaViewControllerEventTracker *)self displayedAsset];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = v10;
    if (isKindOfClass)
    {
      v7 = v10;
      if (([v7 needsDeferredProcessing] & 1) == 0)
      {
        v8 = [(PUOneUpEventTracker *)self assetAnalyzer];
        [v8 analyzeAsset:v7 forWorkerType:0];
      }

      v9 = [(PUOneUpEventTracker *)self assetMetadataDonator];
      [v9 donateMetadataForAsset:v7];

      v6 = v10;
    }

    MEMORY[0x1EEE66BB8](isKindOfClass, v6);
  }
}

- (void)_logDidEndSession
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6991F28];
  v4 = [(PUOneUpEventTracker *)self sessionSignpost];
  v5 = *MEMORY[0x1E6991C98];
  v8 = *MEMORY[0x1E6991E40];
  v9[0] = @"com.apple.photos.CPAnalytics.oneUpBrowserDisplayed";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v7 = [(PXUserInterfaceElementEventTracker *)self finalPayloadWithPayload:v6];
  [v3 endSignpost:v4 forEventName:v5 withPayload:v7];

  [(PUOneUpEventTracker *)self setSessionSignpost:0];
}

- (void)_logDidStartSession
{
  if ([(PUOneUpEventTracker *)self sessionSignpost])
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:341 description:{@"Invalid parameter not satisfying: %@", @"self.sessionSignpost == CPAnalyticsSignpostIDNull"}];
  }

  v4 = [MEMORY[0x1E6991F28] startSignpost];

  [(PUOneUpEventTracker *)self setSessionSignpost:v4];
}

- (void)_incrementAssetViewCountIfNeeded:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUOneUpEventTracker *)self viewModel];
  v6 = [v5 currentAssetReference];

  if (v6)
  {
    v7 = [(PUOneUpEventTracker *)self viewModel];
    v8 = [v7 currentAssetReference];
    v9 = [v8 assetCollection];

    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
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
      v15[0] = v4;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      [v11 sendEvent:v12 withPayload:v13];
    }
  }
}

- (void)logDidEndViewingMedia:(id)a3 mediaKind:(int64_t)a4 duration:(double)a5
{
  v39[3] = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (!v9)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:295 description:{@"Invalid parameter not satisfying: %@", @"media != nil"}];
  }

  v33.receiver = self;
  v33.super_class = PUOneUpEventTracker;
  [(PXMediaViewControllerEventTracker *)&v33 logDidEndViewingMedia:v9 mediaKind:a4 duration:a5];
  if (a4 == 1)
  {
    v10 = MEMORY[0x1E6991F28];
    v11 = [(PUOneUpEventTracker *)self currentAssetSignpost];
    v12 = *MEMORY[0x1E6991E90];
    v38[0] = *MEMORY[0x1E6991E20];
    v13 = v38[0];
    v14 = [(PXMediaViewControllerEventTracker *)self viewName];
    v15 = *MEMORY[0x1E6991E18];
    v39[0] = v14;
    v39[1] = v9;
    v38[1] = v15;
    v38[2] = @"oneUpEngagement";
    v39[2] = MEMORY[0x1E695E118];
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:3];
    v17 = [(PXUserInterfaceElementEventTracker *)self finalPayloadWithPayload:v16];
    [v10 endSignpost:v11 forEventName:v12 withPayload:v17];

    v18 = MEMORY[0x1E6991F28];
    v19 = *MEMORY[0x1E6991CE0];
    v36[0] = v13;
    v20 = [(PXMediaViewControllerEventTracker *)self viewName];
    v37[0] = v20;
    v36[1] = *MEMORY[0x1E6991E58];
    v21 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PUOneUpEventTracker currentAssetSignpost](self, "currentAssetSignpost")}];
    v37[1] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
    v23 = [(PXUserInterfaceElementEventTracker *)self finalPayloadWithPayload:v22];
    [v18 sendEvent:v19 withPayload:v23];

    [(PUOneUpEventTracker *)self setCurrentAssetSignpost:0];
    v24 = MEMORY[0x1E6991F28];
    v25 = [(PUOneUpEventTracker *)self currentAssetDisplayIntervalSignpost];
    v26 = *MEMORY[0x1E6991C98];
    v34[0] = *MEMORY[0x1E6991E40];
    v34[1] = v15;
    v35[0] = @"com.apple.photos.CPAnalytics.oneUpAssetDisplayed";
    v35[1] = v9;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
    v28 = [(PXUserInterfaceElementEventTracker *)self finalPayloadWithPayload:v27];
    [v24 endSignpost:v25 forEventName:v26 withPayload:v28];

    [(PUOneUpEventTracker *)self setCurrentAssetDisplayIntervalSignpost:0];
    v29 = +[PUOneUpSettings sharedInstance];
    [v29 minimumDurationForIncrementingViewCount];
    if (v30 <= a5)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [(PUOneUpEventTracker *)self _incrementAssetViewCountIfNeeded:v9];
      }
    }

    else
    {
    }
  }
}

- (void)logDidStartViewingMedia:(id)a3 mediaKind:(int64_t)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:280 description:{@"Invalid parameter not satisfying: %@", @"media != nil"}];
  }

  v17.receiver = self;
  v17.super_class = PUOneUpEventTracker;
  [(PXMediaViewControllerEventTracker *)&v17 logDidStartViewingMedia:v7 mediaKind:a4];
  if ([(PUOneUpEventTracker *)self currentAssetSignpost])
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:283 description:{@"Invalid parameter not satisfying: %@", @"self.currentAssetSignpost == CPAnalyticsSignpostIDNull"}];
  }

  -[PUOneUpEventTracker setCurrentAssetSignpost:](self, "setCurrentAssetSignpost:", [MEMORY[0x1E6991F28] startSignpost]);
  v8 = MEMORY[0x1E6991F28];
  v9 = *MEMORY[0x1E6991CD8];
  v18[0] = *MEMORY[0x1E6991E20];
  v10 = [(PXMediaViewControllerEventTracker *)self viewName];
  v19[0] = v10;
  v18[1] = *MEMORY[0x1E6991E58];
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PUOneUpEventTracker currentAssetSignpost](self, "currentAssetSignpost")}];
  v19[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v13 = [(PXUserInterfaceElementEventTracker *)self finalPayloadWithPayload:v12];
  [v8 sendEvent:v9 withPayload:v13];

  if ([(PUOneUpEventTracker *)self currentAssetDisplayIntervalSignpost])
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:290 description:{@"Invalid parameter not satisfying: %@", @"self.currentAssetDisplayIntervalSignpost == CPAnalyticsSignpostIDNull"}];
  }

  -[PUOneUpEventTracker setCurrentAssetDisplayIntervalSignpost:](self, "setCurrentAssetDisplayIntervalSignpost:", [MEMORY[0x1E6991F28] startSignpost]);
}

- (void)setDisplayedAsset:(id)a3
{
  v4 = a3;
  v5 = [(PXMediaViewControllerEventTracker *)self displayedAsset];
  v6 = v5;
  if (v5 == v4)
  {
  }

  else
  {
    v7 = [v4 isEqual:v5];

    if ((v7 & 1) == 0)
    {
      v14.receiver = self;
      v14.super_class = PUOneUpEventTracker;
      [(PXMediaViewControllerEventTracker *)&v14 setDisplayedAsset:v4];
      [(PXUserInterfaceElementEventTracker *)self currentTimestamp];
      self->_currentlyViewedAssetTimestamp = v8;
      ++self->_currentlyViewedAssetGeneration;
      if (v4)
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

- (void)setCurrentlyStreamingVideoIsStalled:(BOOL)a3
{
  if (self->_currentlyStreamingVideoIsStalled != a3)
  {
    self->_currentlyStreamingVideoIsStalled = a3;
    if (a3)
    {
      v4 = [(PUOneUpEventTracker *)self currentlyStreamingVideoStallsCount]+ 1;

      [(PUOneUpEventTracker *)self setCurrentlyStreamingVideoStallsCount:v4];
    }
  }
}

- (void)setCurrentlyStreamingVideoIsActuallyPlaying:(BOOL)a3
{
  if (self->_currentlyStreamingVideoIsActuallyPlaying != a3)
  {
    self->_currentlyStreamingVideoIsActuallyPlaying = a3;
    if (a3)
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

- (void)setCurrentlyStreamingVideoAsset:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_currentlyStreamingVideoAsset != v5)
  {
    v7 = v5;
    v5 = [v5 isEqual:?];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      if (self->_currentlyStreamingVideoAsset)
      {
        [(PUOneUpEventTracker *)self _logWillEndPlaybackOfStreamedVideoAsset:?];
      }

      objc_storeStrong(&self->_currentlyStreamingVideoAsset, a3);
      v6 = v7;
      if (self->_currentlyStreamingVideoAsset)
      {
        [(PUOneUpEventTracker *)self setCurrentlyStreamingVideoStallsCount:0];
        [(PUOneUpEventTracker *)self setCurrentlyStreamingVideoDidStartActualPlayback:0];
        v5 = [(PUOneUpEventTracker *)self _logDidStartPlaybackOfStreamedVideoAsset:self->_currentlyStreamingVideoAsset];
        v6 = v7;
      }
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setCurrentlyPlayingVideoAsset:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_currentlyPlayingVideoAsset != v5)
  {
    v8 = v5;
    v5 = [v5 isEqual:?];
    v6 = v8;
    if ((v5 & 1) == 0)
    {
      if (self->_currentlyPlayingVideoAsset)
      {
        [(PXUserInterfaceElementEventTracker *)self timeIntervalSinceTimestamp:self->_currentlyPlayingVideoAssetTimestamp];
        [(PUOneUpEventTracker *)self _logDidEndPlayingVideoAsset:self->_currentlyPlayingVideoAsset duration:?];
      }

      objc_storeStrong(&self->_currentlyPlayingVideoAsset, a3);
      v5 = [(PXUserInterfaceElementEventTracker *)self currentTimestamp];
      self->_currentlyPlayingVideoAssetTimestamp = v7;
      v6 = v8;
      if (self->_currentlyPlayingVideoAsset)
      {
        v5 = [(PUOneUpEventTracker *)self _logDidStartPlayingVideoAsset:?];
        v6 = v8;
      }
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setCurrentVideoPlayer:(id)a3
{
  v5 = a3;
  currentVideoPlayer = self->_currentVideoPlayer;
  if (currentVideoPlayer != v5)
  {
    v9 = v5;
    [(PUBrowsingVideoPlayer *)currentVideoPlayer unregisterChangeObserver:self];
    objc_storeStrong(&self->_currentVideoPlayer, a3);
    [(PUBrowsingVideoPlayer *)self->_currentVideoPlayer registerChangeObserver:self];
    v7 = [(PUBrowsingVideoPlayer *)self->_currentVideoPlayer asset];
    currentVideoAsset = self->_currentVideoAsset;
    self->_currentVideoAsset = v7;

    currentVideoPlayer = [(PUOneUpEventTracker *)self _invalidateCurrentVideoProperties];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](currentVideoPlayer, v5);
}

- (void)setIsSessionActive:(BOOL)a3
{
  if (self->_isSessionActive != a3)
  {
    v3 = a3;
    if (self->_isSessionActive)
    {
      [(PUOneUpEventTracker *)self _logDidEndSession];
    }

    self->_isSessionActive = v3;
    if (v3)
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
  v2 = [(PXUserInterfaceElementEventTracker *)self updater];
  [v2 setNeedsUpdateOf:sel__updateOneUpInfoPanelShowingSignpost];
}

- (void)_updateCurrentVideoProperties
{
  v15 = [(PUOneUpEventTracker *)self currentVideoPlayer];
  v3 = [v15 isPlaybackDesired];
  if (v3)
  {
    v4 = [v15 playerItem];
    v5 = [v4 asset];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 URL];
      v7 = [v6 isFileURL];

      if ((v7 & 1) == 0)
      {
        v8 = [v15 playState] == 3;
        v9 = [v15 isStalled];
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
  v9 = 0;
LABEL_7:
  v11 = [(PUOneUpEventTracker *)self currentVideoAsset];
  v12 = v11;
  if (v3)
  {
    v13 = v11;
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
  [(PUOneUpEventTracker *)self setCurrentlyStreamingVideoIsStalled:v9];
}

- (void)_invalidateCurrentVideoProperties
{
  v2 = [(PXUserInterfaceElementEventTracker *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCurrentVideoProperties];
}

- (void)_updateCurrentVideoPlayer
{
  if ([(PXViewControllerEventTracker *)self isViewVisible])
  {
    v3 = [(PUOneUpEventTracker *)self viewModel];
    v4 = [v3 videoPlayer];
  }

  else
  {
    v4 = 0;
  }

  [(PUOneUpEventTracker *)self setCurrentVideoPlayer:v4];
}

- (void)_invalidateCurrentVideoPlayer
{
  v2 = [(PXUserInterfaceElementEventTracker *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCurrentVideoPlayer];
}

- (void)_updateCurrentlyViewedAsset
{
  v6 = [(PUOneUpEventTracker *)self viewModel];
  v3 = [v6 browsingSpeedRegime];
  v4 = 0;
  if ([(PXViewControllerEventTracker *)self isViewVisible]&& v3 <= 1)
  {
    v5 = [v6 currentAssetReference];
    v4 = [v5 asset];
  }

  [(PUOneUpEventTracker *)self setDisplayedAsset:v4];
}

- (void)_invalidateCurrentlyViewedAsset
{
  v2 = [(PXUserInterfaceElementEventTracker *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCurrentlyViewedAsset];
}

- (void)_updateIsSessionActive
{
  v3 = [(PXViewControllerEventTracker *)self isViewVisible];

  [(PUOneUpEventTracker *)self setIsSessionActive:v3];
}

- (void)_invalidateIsSessionActive
{
  v2 = [(PXUserInterfaceElementEventTracker *)self updater];
  [v2 setNeedsUpdateOf:sel__updateIsSessionActive];
}

- (PUOneUpEventTracker)initWithViewModel:(id)a3 presentationOrigin:(int64_t)a4
{
  v7 = a3;
  if (a4 == 44)
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
    v9->_presentationOrigin = a4;
    [(PUOneUpEventTracker *)v9 registerChangeObserver:v9 context:EventTrackerObservationContext];
    v11 = [(PXUserInterfaceElementEventTracker *)v10 updater];
    [v11 addUpdateSelector:sel__updateIsSessionActive];
    [v11 addUpdateSelector:sel__updateCurrentlyViewedAsset];
    [v11 addUpdateSelector:sel__updateCurrentVideoPlayer];
    [v11 addUpdateSelector:sel__updateCurrentVideoProperties];
    [v11 addUpdateSelector:sel__updateOneUpInfoPanelShowingSignpost];
    objc_storeStrong(&v10->_viewModel, a3);
    [(PUBrowsingViewModel *)v10->_viewModel registerChangeObserver:v10];
    v12 = [MEMORY[0x1E69C3368] sharedDonator];
    assetMetadataDonator = v10->_assetMetadataDonator;
    v10->_assetMetadataDonator = v12;

    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v15 = dispatch_queue_create("com.apple.photosui.eventTracker.biome", v14);
    biomeRequestQueue = v10->_biomeRequestQueue;
    v10->_biomeRequestQueue = v15;
  }

  return v10;
}

- (PUOneUpEventTracker)initWithViewName:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PUOneUpEventTracker.m" lineNumber:80 description:{@"%s is not available as initializer", "-[PUOneUpEventTracker initWithViewName:]"}];

  abort();
}

@end