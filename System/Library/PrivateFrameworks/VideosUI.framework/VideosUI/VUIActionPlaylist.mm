@interface VUIActionPlaylist
- (VUIActionPlaylist)initWithContextData:(id)a3 appContext:(id)a4;
- (VUIAppContext)appContext;
- (id)_maxContentRating;
- (id)_ratingDomain;
- (id)_ratingValue;
- (void)_presentViewControllerAllowingCellular:(BOOL)a3 completion:(id)a4;
- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4;
@end

@implementation VUIActionPlaylist

- (VUIActionPlaylist)initWithContextData:(id)a3 appContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v26.receiver = self;
  v26.super_class = VUIActionPlaylist;
  v9 = [(VUIActionPlaylist *)&v26 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contextData, a3);
    objc_storeWeak(&v10->_appContext, v8);
    v11 = [v7 vui_arrayForKey:@"videosPlayables"];
    v12 = [v7 vui_dictionaryForKey:@"contentMetadata"];
    v13 = [VUIVideosPlayable videosPlayablesFromDictionaries:v11 andMetadataDictionary:v12];
    videosPlayable = v10->_videosPlayable;
    v10->_videosPlayable = v13;
    v15 = v13;

    v16 = [v7 vui_numberForKey:@"index"];
    v10->_index = [v16 integerValue];

    v17 = [v7 vui_arrayForKey:@"clipItems"];
    clipItems = v10->_clipItems;
    v10->_clipItems = v17;

    v19 = [v7 vui_arrayForKey:@"metadataViewModels"];
    metadataViewModels = v10->_metadataViewModels;
    v10->_metadataViewModels = v19;

    v10->_requiresAuthentication = [v7 vui_BOOLForKey:@"requiresAuthentication" defaultValue:0];
    v21 = [v7 vui_stringForKey:@"nextToken"];
    nextToken = v10->_nextToken;
    v10->_nextToken = v21;

    v23 = [v7 vui_stringForKey:@"trailerEndpoint"];
    trailerEndpoint = v10->_trailerEndpoint;
    v10->_trailerEndpoint = v23;
  }

  return v10;
}

- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VUIActionPlaylist *)self clipItems];
  if ([v8 count])
  {
    v9 = 9;
  }

  else
  {
    v9 = 7;
  }

  v10 = [VUIMediaInfo alloc];
  v11 = [(VUIActionPlaylist *)self videosPlayable];
  v12 = [(VUIMediaInfo *)v10 initWithPlaybackContext:v9 videosPlayables:v11 imageProxies:0 storeDictionary:0];

  v13 = +[VUIPlaybackManager sharedInstance];
  LODWORD(v11) = [v13 isFullscreenPlaybackUIBeingShown];

  if (v11)
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  v15 = [VUIPlaybackStartupCoordinator startupCoordinatorWithMediaInfo:v12 watchType:v14 isRentAndWatchNow:0];
  v16 = [(VUIActionPlaylist *)self videosPlayable];
  v17 = [v16 firstObject];

  v18 = [v17 sharedWatchUrl];
  if (v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = [v17 useSharedPlayableForCowatching];
  }

  if (+[VUIGroupActivitiesManagerObjC isEligibleForSession]&& v19)
  {
    [(VUIMediaInfo *)v12 setIntent:1];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __66__VUIActionPlaylist_performWithTargetResponder_completionHandler___block_invoke;
    v27[3] = &unk_1E872D7E0;
    v28 = v7;
    [VUIActionPlay playMediaInfo:v12 watchType:0 isRentAndWatchNow:0 completion:v27];
  }

  else
  {
    objc_initWeak(&location, self);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __66__VUIActionPlaylist_performWithTargetResponder_completionHandler___block_invoke_2;
    v20[3] = &unk_1E872EA18;
    v21 = v15;
    v22 = v12;
    v23 = v6;
    v24 = v7;
    objc_copyWeak(&v25, &location);
    [v21 performPlaybackStartupFlowWithCompletion:v20];
    objc_destroyWeak(&v25);

    objc_destroyWeak(&location);
  }
}

uint64_t __66__VUIActionPlaylist_performWithTargetResponder_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void __66__VUIActionPlaylist_performWithTargetResponder_completionHandler___block_invoke_2(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v14 = a6;
  v15 = a7;
  v16 = a8;
  if (a2)
  {
    if (a3)
    {
      v17 = VUIDefaultLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "VUIActionPlaylist:: cowatching, skipping playlist feature", buf, 2u);
      }

      [*(a1 + 40) setIntent:1];
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __66__VUIActionPlaylist_performWithTargetResponder_completionHandler___block_invoke_31;
      v24[3] = &unk_1E872E9F0;
      v25 = *(a1 + 56);
      LOBYTE(v23) = a5;
      [VUIActionPlay presentPlaybackWithMediaInfo:v18 multiviewMediaInfos:MEMORY[0x1E695E0F0] extrasInfo:0 isCoWatching:1 watchType:0 playType:@"play" allowsCellular:v23 previewMetadata:v16 targetResponder:v19 completion:v24];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((a1 + 64));
      [WeakRetained _presentViewControllerAllowingCellular:a5 completion:*(a1 + 56)];
    }
  }

  else
  {
    v20 = VUIDefaultLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "VUIActionPlaylist:: start playback is false, failing playlist presentation", buf, 2u);
    }

    v21 = *(a1 + 56);
    if (v21)
    {
      (*(v21 + 16))(v21, 0);
    }
  }
}

uint64_t __66__VUIActionPlaylist_performWithTargetResponder_completionHandler___block_invoke_31(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (id)_ratingDomain
{
  v2 = [(VUIActionPlaylist *)self videosPlayable];
  v3 = [v2 firstObject];
  v4 = [v3 metadata];
  v5 = [v4 ratingDomain];

  if ([v5 length])
  {
    if ([v5 isEqualToString:@"Show"])
    {
      v6 = MEMORY[0x1E69D5B18];
LABEL_6:
      v7 = *v6;
      goto LABEL_8;
    }

    if ([v5 isEqualToString:@"Movie"])
    {
      v6 = MEMORY[0x1E69D5B10];
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)_ratingValue
{
  v2 = [(VUIActionPlaylist *)self videosPlayable];
  v3 = [v2 firstObject];
  v4 = [v3 metadata];
  v5 = [v4 ratingValue];

  return v5;
}

- (id)_maxContentRating
{
  v3 = [(VUIActionPlaylist *)self _ratingDomain];
  v4 = [(VUIActionPlaylist *)self _ratingValue];
  if (![v3 length])
  {
    goto LABEL_18;
  }

  if ([v3 isEqualToString:*MEMORY[0x1E69D5B10]])
  {
    v5 = +[VUISettingsManager sharedInstance];
    v6 = [v5 maxMovieRank];
    goto LABEL_6;
  }

  if ([v3 isEqualToString:*MEMORY[0x1E69D5B18]])
  {
    v5 = +[VUISettingsManager sharedInstance];
    v6 = [v5 maxTVShowRank];
LABEL_6:
    v7 = v6;

    if (!v4)
    {
      if (!v7)
      {
        v8 = 0;
        v9 = 0;
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (![v4 integerValue] && v7)
  {
LABEL_12:

    v4 = &unk_1F5E5C9F0;
LABEL_14:
    v10 = [v4 integerValue];
    if (v10 <= [v7 integerValue])
    {
      v11 = v7;
    }

    else
    {
      v11 = v4;
    }

    v8 = v11;

    goto LABEL_19;
  }

  if (v7)
  {
    goto LABEL_14;
  }

LABEL_18:
  v8 = 0;
LABEL_19:
  v9 = v4;
LABEL_20:

  return v8;
}

- (void)_presentViewControllerAllowingCellular:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = +[VUIPlaybackManager sharedInstance];
  v8 = [v7 isFullscreenPlaybackUIBeingShown];

  v9 = +[VUIApplicationRouter currentNavigationController];
  v10 = [v9 topViewController];
  v11 = [v10 presentedViewController];
  v12 = v11;
  if (v8)
  {
    v13 = [v11 presentingViewController];
  }

  else if (v11)
  {
    goto LABEL_6;
  }

  v14 = +[VUITVAppLauncher sharedInstance];
  v15 = [v14 appWindow];

  v12 = [v15 rootViewController];

  if (!v12)
  {
    v16 = +[VUIInterfaceFactory sharedInstance];
    v12 = [v16 controllerPresenter];
  }

LABEL_6:
  v17 = [(VUIActionPlaylist *)self videosPlayable];
  v18 = [v17 firstObject];

  if (([v18 isKeyPlayAvailable] & 1) != 0 || (-[VUIActionPlaylist clipItems](self, "clipItems"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "count"), v19, v20))
  {
    v21 = +[VUIPlaybackManager sharedInstance];
    if ([v21 isFullscreenPlaybackUIBeingShown])
    {
      v22 = [(VUIActionPlaylist *)self videosPlayable];

      if (!v22)
      {
        objc_initWeak(location, self);
        v23 = +[VUIPlaybackManager sharedInstance];
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __71__VUIActionPlaylist__presentViewControllerAllowingCellular_completion___block_invoke_39;
        v55[3] = &unk_1E872EA40;
        objc_copyWeak(&v57, location);
        v55[4] = self;
        v56 = v6;
        [v23 transferPlaybackToBackgroundMediaController:v55];

        v24 = &v57;
LABEL_18:
        objc_destroyWeak(v24);
        objc_destroyWeak(location);
        goto LABEL_19;
      }
    }

    else
    {
    }

    v25 = VUIDefaultLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1E323F000, v25, OS_LOG_TYPE_DEFAULT, "VUIActionPlaylist:: Dismissing playback due to catch up to live", location, 2u);
    }

    objc_initWeak(location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__VUIActionPlaylist__presentViewControllerAllowingCellular_completion___block_invoke_41;
    aBlock[3] = &unk_1E872DE00;
    objc_copyWeak(&v54, location);
    v52 = v12;
    v53 = v6;
    v26 = _Block_copy(aBlock);
    v27 = +[VUIPlaybackManager sharedInstance];
    v28 = [v27 isFullscreenPlaybackUIBeingShown];

    if (v28)
    {
      v29 = +[VUIPlaybackManager sharedInstance];
      [v29 dismissPlaybackAnimated:1 leaveGroupActivitySession:1 completion:v26];
    }

    else
    {
      v26[2](v26);
    }

    v24 = &v54;
    goto LABEL_18;
  }

  v30 = VUIDefaultLogObject();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(location[0]) = 0;
    _os_log_impl(&dword_1E323F000, v30, OS_LOG_TYPE_DEFAULT, "VUIActionPlaylist:: no clip items, so assuming standard playlist", location, 2u);
  }

  v31 = [(VUIActionPlaylist *)self _ratingDomain];
  v32 = [v31 isEqualToString:*MEMORY[0x1E69D5B18]];

  v48 = v4;
  if (v32)
  {
    v33 = +[VUISettingsManager sharedInstance];
    v50 = [v33 maxMovieRank];

    v49 = [(VUIActionPlaylist *)self _maxContentRating];
  }

  else
  {
    v34 = [(VUIActionPlaylist *)self _ratingDomain];
    v35 = [v34 isEqualToString:*MEMORY[0x1E69D5B10]];

    if (v35)
    {
      v50 = [(VUIActionPlaylist *)self _maxContentRating];
    }

    else
    {
      v36 = +[VUISettingsManager sharedInstance];
      v50 = [v36 maxMovieRank];
    }

    v37 = +[VUISettingsManager sharedInstance];
    v49 = [v37 maxTVShowRank];
  }

  v38 = [(VUIActionPlaylist *)self trailerEndpoint];
  v39 = [v38 length];

  v40 = +[VUIInterfaceFactory sharedInstance];
  v41 = [v40 documentCreator];
  v42 = [(VUIActionPlaylist *)self index];
  if (v39)
  {
    v43 = [(VUIActionPlaylist *)self trailerEndpoint];
    [v41 clipsViewControllerWithIndex:v42 trailerEndpoint:v43 maxMovieContentRating:v50 maxTVContentRating:v49 allowsCellular:v48];
  }

  else
  {
    v43 = [(VUIActionPlaylist *)self collectionViewModel];
    [v41 clipsViewControllerWithIndex:v42 collectionData:v43 maxMovieContentRating:v50 maxTVContentRating:v49 allowsCellular:v48];
  }
  v44 = ;

  if (v12 && v44)
  {
    v45 = +[VUIPlaybackManager sharedInstance];
    [v45 dismissPlaybackAnimated:1 leaveGroupActivitySession:1 completion:0];

    v46 = +[VUIPlaybackManager sharedInstance];
    [v46 setBackgroundMediaControllerForPIP:0];

    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __71__VUIActionPlaylist__presentViewControllerAllowingCellular_completion___block_invoke;
    v59[3] = &unk_1E872D7E0;
    v60 = v6;
    [v12 presentViewController:v44 animated:1 completion:v59];
  }

  else
  {
    v47 = VUIDefaultLogObject();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      [VUIActionPlaylist _presentViewControllerAllowingCellular:v47 completion:?];
    }

    if (v6)
    {
      (*(v6 + 2))(v6, 0);
    }
  }

LABEL_19:
}

uint64_t __71__VUIActionPlaylist__presentViewControllerAllowingCellular_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void __71__VUIActionPlaylist__presentViewControllerAllowingCellular_completion___block_invoke_39(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v17 = [v6 currentMediaItem];
  v8 = [[VUIMediaInfo alloc] initWithPlaybackContext:9 storeAuxMediaItem:v17];
  v9 = +[VUIInterfaceFactory sharedInstance];
  v10 = [v9 documentCreator];
  v11 = [WeakRetained index];
  v12 = [*(a1 + 32) clipItems];
  v13 = [*(a1 + 32) metadataViewModels];
  v14 = [*(a1 + 32) nextToken];
  v15 = [v10 catchUpToLiveViewControllerWithIndex:v11 mediaInfo:v8 segments:v12 metadataViewModels:v13 nextToken:v14];

  [v7 embedCatchUpToLiveViewController:v15 reusingFullscreenPlaybackWithPlayer:v6];
  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, 1);
  }
}

void __71__VUIActionPlaylist__presentViewControllerAllowingCellular_completion___block_invoke_41(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = +[VUIPlaybackManager sharedInstance];
  [v3 setBackgroundMediaControllerForPIP:0];

  v4 = [WeakRetained videosPlayable];
  v5 = [v4 firstObject];

  v6 = +[VUIInterfaceFactory sharedInstance];
  v7 = [v6 documentCreator];
  v8 = [WeakRetained index];
  v9 = [WeakRetained clipItems];
  v10 = [WeakRetained metadataViewModels];
  v11 = [WeakRetained nextToken];
  v12 = [v7 catchUpToLiveViewControllerWithIndex:v8 playable:v5 segments:v9 metadataViewModels:v10 nextToken:v11];

  v13 = +[VUIInterfaceFactory sharedInstance];
  v14 = [v13 documentCreator];
  v15 = [v14 playbackContainerViewController];

  v16 = [v15 vuiView];
  v17 = [MEMORY[0x1E69DC888] blackColor];
  [v16 setBackgroundColor:v17];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __71__VUIActionPlaylist__presentViewControllerAllowingCellular_completion___block_invoke_2;
  v21[3] = &unk_1E872DF40;
  v22 = v15;
  v23 = v12;
  v18 = *(a1 + 32);
  v24 = *(a1 + 40);
  v19 = v12;
  v20 = v15;
  [v18 presentViewController:v20 animated:1 completion:v21];
}

uint64_t __71__VUIActionPlaylist__presentViewControllerAllowingCellular_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) embedCatchUpToLiveViewController:*(a1 + 40)];
  v2 = [*(a1 + 32) vuiView];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [v2 setBackgroundColor:v3];

  result = *(a1 + 48);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (VUIAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

@end